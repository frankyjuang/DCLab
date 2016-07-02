// --------------------------------------------------------------------
// Copyright (c) 2010 by Terasic Technologies Inc.
// --------------------------------------------------------------------
//
// Permission:
//
//   Terasic grants permission to use and modify this code for use
//   in synthesis for all Terasic Development Boards and Altera Development
//   Kits made by Terasic.  Other use of this code, including the selling
//   ,duplication, or modification of any portion is strictly prohibited.
//
// Disclaimer:
//
//   This VHDL/Verilog or C/C++ source code is intended as a design reference
//   which illustrates how these types of functions can be implemented.
//   It is the user's responsibility to verify their design for
//   consistency and functionality through the use of formal
//   verification methods.  Terasic provides no warranty regarding the use
//   or functionality of this code.
//
// --------------------------------------------------------------------
//
//                     Terasic Technologies Inc
//                     356 Fu-Shin E. Rd Sec. 1. JhuBei City,
//                     HsinChu County, Taiwan
//                     302
//
//                     web: http://www.terasic.com/
//                     email: support@terasic.com
//
// --------------------------------------------------------------------
//
// Major Functions:	DIP_Controller
//
// --------------------------------------------------------------------
//
// Revision History :
// --------------------------------------------------------------------
//   Ver  :| Author            :| Mod. Date :| Changes Made:
//   V1.0 :| WEI FANG, FUYU CHUANG, FRANKY JUANG:| 30/06/2016:| Initial Revision
// --------------------------------------------------------------------

module	DIP_Controller(	//	Host Side
						iRed,
						iGreen,
						iBlue,
						oRequest,
                        iDraw,
						//	VGA Side
						oVGA_R,
						oVGA_G,
						oVGA_B,
						oVGA_H_SYNC,
						oVGA_V_SYNC,
						oVGA_SYNC,
						oVGA_BLANK,
                        //  SRAM Side
                        oSRAM_ADDR,
                        oSRAM_CE_N,
                        ioSRAM_DQ,
                        oSRAM_LB_N,
                        oSRAM_OE_N,
                        oSRAM_UB_N,
                        oSRAM_WE_N,

						//	Control Signal
						iCLK,
						iRST_N,
						iZOOM_MODE_SW
							);



`include "VGA_Param.h"

`ifdef VGA_640x480p60
//	Horizontal Parameter	( Pixel )
parameter	H_SYNC_CYC	=	96;
parameter	H_SYNC_BACK	=	48;
parameter	H_SYNC_ACT	=	640;
parameter	H_SYNC_FRONT=	16;
parameter	H_SYNC_TOTAL=	800;

//	Vertical Parameter		( Line )
parameter	V_SYNC_CYC	=	2;
parameter	V_SYNC_BACK	=	33;
parameter	V_SYNC_ACT	=	480;
parameter	V_SYNC_FRONT=	10;
parameter	V_SYNC_TOTAL=	525;

`else
 // SVGA_800x600p60
////	Horizontal Parameter	( Pixel )
parameter	H_SYNC_CYC	=	128;         //Peli
parameter	H_SYNC_BACK	=	88;
parameter	H_SYNC_ACT	=	800;
parameter	H_SYNC_FRONT=	40;
parameter	H_SYNC_TOTAL=	1056;
//	Vertical Parameter		( Line )
parameter	V_SYNC_CYC	=	4;
parameter	V_SYNC_BACK	=	23;
parameter	V_SYNC_ACT	=	600;
parameter	V_SYNC_FRONT=	1;
parameter	V_SYNC_TOTAL=	628;

`endif
//	Start Offset
parameter	X_START		=	H_SYNC_CYC+H_SYNC_BACK;
parameter	Y_START		=	V_SYNC_CYC+V_SYNC_BACK;

// Define FSM states
parameter   VIDEO_MODE          = 4'b0000;
parameter   READ_BUFFER_MODE    = 4'b0001;
parameter   DIP_MODE            = 4'b0010;
parameter   WRITE_BUFFER_MODE   = 4'b0011;

parameter   FINAL_START_ADDR    = 640 * 480;

//	Host Side
input		[9:0]	iRed;
input		[9:0]	iGreen;
input		[9:0]	iBlue;
input               iDraw;

output	reg			oRequest;
logic   oRequest_r, oRequest_w;
assign  oRequest    =   oRequest_r;
//	VGA Side
output	reg	[9:0]	oVGA_R;
output	reg	[9:0]	oVGA_G;
output	reg	[9:0]	oVGA_B;
output	reg			oVGA_H_SYNC;
output	reg			oVGA_V_SYNC;
output	reg			oVGA_SYNC;
output	reg			oVGA_BLANK;

logic		[9:0]	mVGA_R_r, mVGA_R_w;
logic		[9:0]	mVGA_G_r, mVGA_G_w;
logic		[9:0]	mVGA_B_r, mVGA_B_w;
logic				mVGA_H_SYNC_r, mVGA_H_SYNC_w;
logic				mVGA_V_SYNC_r, mVGA_V_SYNC_w;
logic				mVGA_SYNC_r, mVGA_SYNC_w;
logic				mVGA_BLANK_r, mVGA_BLANK_w;

assign  oVGA_R          =   mVGA_R_r; assign  oVGA_G          =   mVGA_G_r; assign  oVGA_B          =   mVGA_B_r;
assign  oVGA_H_SYNC     =   mVGA_H_SYNC_r;
assign  oVGA_V_SYNC     =   mVGA_V_SYNC_r;
assign  oVGA_SYNC       =   mVGA_SYNC_r;
assign  oVGA_BLANK      =   mVGA_BLANK_r;

//  SRAM Side
output  reg [19:0]  oSRAM_ADDR;
output  reg         oSRAM_CE_N;
inout   wire [15:0]  ioSRAM_DQ;
output  reg         oSRAM_LB_N;
output  reg         oSRAM_OE_N;
output  reg         oSRAM_UB_N;
output  reg         oSRAM_WE_N;

//	Control Signal
input				iCLK;
input				iRST_N;
input 				iZOOM_MODE_SW;

//	Internal Registers and Wires
logic	[12:0]		H_Cont_r, H_Cont_w;
logic	[12:0]		V_Cont_r, V_Cont_w;

logic	[12:0]		v_mask;

///////////////////////////////////
//      Our Own Definitions      //
///////////////////////////////////

// buffers
logic out_ce, out_oe, out_we, out_ub, out_lb;       // sram flags for output
logic [19:0] out_sram_addr;                                  // sram address
wire [15:0] out_sram_dq;

// sram
logic [19:0] sram_addr_r, sram_addr_w;                                  // sram address
logic ce_r, ce_w, oe_r, oe_w, we_r, we_w, ub_r, ub_w, lb_r, lb_w;       // sram flags
logic [15:0] sram_write_buffer_r, sram_write_buffer_w;                  // buffer for writing to sram
logic [15:0] sram_read_buffer_r, sram_read_buffer_w;                    // buffer for reading from sram

// filter controller
logic [19:0] fc_sram_addr;
logic [15:0] fc_sram_dq_r, fc_sram_dq_w;
logic fc_ce, fc_oe, fc_we, fc_ub, fc_lb;
logic fc_start_r, fc_start_w;
logic fc_done;

Filter_Controller filter_controller (
    .iStart(fc_start_r),
    .iRst(iRST_N),
    .iClk(iCLK),
    .iSram_dq(fc_sram_dq_r),
    .oSram_dq(fc_sram_dq_w),
    .oSram_addr(fc_sram_addr),
    .oSram_ce_n(fc_ce),
    .oSram_we_n(fc_we),
    .oSram_oe_n(fc_oe),
    .oSram_ub_n(fc_ub),
    .oSram_lb_n(fc_lb),
    .oDone(fc_done)
);

// other
logic [3:0] state_r, state_w; // states
logic [19:0] rw_counter_r, rw_counter_w;                                // counter for reading and writing
logic start_dip_r, start_dip_w;  //indicates whether screenshot is done and should start processing
//logic dip_done_r, dip_done_w;                                           // indicates whether DIP is done


assign v_mask = 13'd0 ;//iZOOM_MODE_SW ? 13'd0 : 13'd26;
////////////////////////////////////
assign  oSRAM_CE_N  =   out_ce;
assign  oSRAM_OE_N  =   out_oe;
assign  oSRAM_WE_N  =   out_we;
assign  oSRAM_UB_N  =   out_ub;
assign  oSRAM_LB_N  =   out_lb;
assign  oSRAM_ADDR  =   out_sram_addr;
assign  ioSRAM_DQ   =   out_sram_dq;

////////////////////////////////////////////////////////


always_ff @(posedge iCLK or negedge iRST_N) begin
    if (!iRST_N)
        fc_sram_dq_r <= 0;
    else if (fc_we)
        fc_sram_dq_r <= out_sram_dq;
    else 
        fc_sram_dq_r <= fc_sram_dq_w;
end

always_comb begin
    //////////////////////////////////
    //    Multiplex SRAM Signals    //
    //////////////////////////////////
    if (state_r != DIP_MODE) begin
        out_ce = ce_r;
        out_oe = oe_r;
        out_we = we_r;
        out_ub = ub_r;
        out_lb = lb_r;
        out_sram_addr = sram_addr_r;
        out_sram_dq = (out_we) ? 'z : sram_write_buffer_r;
    end else begin
        out_ce = fc_ce;
        out_oe = fc_oe;
        out_we = fc_we;
        out_ub = fc_ub;
        out_lb = fc_lb;
        out_sram_addr = fc_sram_addr;
        out_sram_dq = (out_we) ? 'z : fc_sram_dq_r;
    end
    //////////////////////////////////
    //       Init signals           //
    //////////////////////////////////
    // request
    oRequest_w          =  oRequest_r;
    // H & V control
    H_Cont_w            =  H_Cont_r;
    V_Cont_w            =  V_Cont_r;
    // VGA
    mVGA_R_w            =  mVGA_R_r;
    mVGA_G_w            =  mVGA_R_r;
    mVGA_B_w            =  mVGA_R_r;
    mVGA_BLANK_w        =  mVGA_BLANK_r;
    mVGA_SYNC_w         =  mVGA_SYNC_r;
    mVGA_H_SYNC_w       =  mVGA_H_SYNC_r;
    mVGA_V_SYNC_w       =  mVGA_V_SYNC_r;
    // SRAM
    sram_addr_w         =  sram_addr_r;
    ce_w                =  ce_r;
    oe_w                =  oe_r;
    we_w                =  we_r;
    ub_w                =  ub_r;
    lb_w                =  lb_r;
    sram_write_buffer_w =  sram_write_buffer_r;
    sram_read_buffer_w  =  sram_read_buffer_r;
    // other
    state_w             =  state_r;
    rw_counter_w        =  rw_counter_r;
    start_dip_w         =  start_dip_r;
    fc_start_w          =  fc_start_r;

    // check whether to start DIP
    if( iDraw )
        start_dip_w = 1;

    ////////////////////////////////////
    //       VGA Sync Signals         //
    ////////////////////////////////////
    // H_Sync Generator, Ref. 40 MHz Clock
    // H_Sync Counter
    if( H_Cont_r < H_SYNC_TOTAL )
        H_Cont_w = H_Cont_r + 1;
    else
        H_Cont_w = 0;
    //	H_Sync Generator
    if( H_Cont_r < H_SYNC_CYC )
        mVGA_H_SYNC_w = 0;
    else
        mVGA_H_SYNC_w = 1;

    //	V_Sync Generator, Ref. H_Sync
    //	When H_Sync Re-start
    if(H_Cont_r == 0) begin
        //	V_Sync Counter
        if( V_Cont_r < V_SYNC_TOTAL )
            V_Cont_w = V_Cont_r + 1;
        else
            V_Cont_w = 0;
        //	V_Sync Generator
        if(	V_Cont_r < V_SYNC_CYC )
            mVGA_V_SYNC_w = 0;
        else
            mVGA_V_SYNC_w = 1;
    end

    //////////////////////////////////
    //      State Operations        //
    //////////////////////////////////
    case(state_r)
        VIDEO_MODE:
            begin
                // assign VGA outputs
                mVGA_BLANK_w	=	mVGA_H_SYNC_r & mVGA_V_SYNC_r;   
                mVGA_SYNC_w	    =	1'b0;

                mVGA_R_w	    =	(	H_Cont_r>=X_START 	&& H_Cont_r<X_START+H_SYNC_ACT &&
						V_Cont_r>=Y_START+v_mask 	&& V_Cont_r<Y_START+V_SYNC_ACT )
						?	iRed	:	0;
                mVGA_G_w	    =	(	H_Cont_r>=X_START 	&& H_Cont_r<X_START+H_SYNC_ACT &&
						V_Cont_r>=Y_START+v_mask 	&& V_Cont_r<Y_START+V_SYNC_ACT )
						?	iGreen	:	0;
                mVGA_B_w	    =	(	H_Cont_r>=X_START 	&& H_Cont_r<X_START+H_SYNC_ACT &&
						V_Cont_r>=Y_START+v_mask 	&& V_Cont_r<Y_START+V_SYNC_ACT )
						?	iBlue	:	0;

                // Pixel LUT Address Generator
                if( H_Cont_r>=X_START-2 && H_Cont_r<X_START+H_SYNC_ACT-2 &&
                    V_Cont_r>=Y_START && V_Cont_r<Y_START+V_SYNC_ACT )
		            oRequest_w = 1;
		        else
		            oRequest_w = 0;

                // Switch to Read buffer state
                if(start_dip_r && H_Cont_r == 0 && V_Cont_r == 0) begin
                    state_w = READ_BUFFER_MODE;
                end
            end
        READ_BUFFER_MODE:
            begin
                // Pixel LUT Address Generator
                if( H_Cont_r>=X_START-2 && H_Cont_r<X_START+H_SYNC_ACT-2 &&
                    V_Cont_r>=Y_START && V_Cont_r<Y_START+V_SYNC_ACT ) begin
		            oRequest_w = 1;
                end else begin
		            oRequest_w = 0;
                end

                // prepare data and address for writing to sram
                if(	H_Cont_r>=X_START 	&& H_Cont_r<X_START+H_SYNC_ACT &&
                    V_Cont_r>=Y_START+v_mask 	&& V_Cont_r<Y_START+V_SYNC_ACT ) begin
                    sram_write_buffer_w = (299 * iRed[9:2] + 587 * iGreen[9:2] + 114 * iBlue[9:2]) / 1000;
                    sram_addr_w = (H_Cont_r - X_START) + (V_Cont_r - Y_START) * H_SYNC_ACT;
                end

                // write to sram
                if( H_Cont_r>=X_START+1 && H_Cont_r<X_START+H_SYNC_ACT+1 &&
                    V_Cont_r>=Y_START+v_mask    && V_Cont_r<Y_START+V_SYNC_ACT )
                    we_w = 0;
                else
                    we_w = 1;

                // transition to DIP state
                if( H_Cont_r>=X_START+H_SYNC_ACT+1 && V_Cont_r>=Y_START+V_SYNC_ACT ) begin
                    state_w = DIP_MODE;
                    fc_start_w = 1;
                end
            end
        DIP_MODE:
            begin
                if (fc_start_r)
                    fc_start_w = 0;
                if (fc_done)
                    state_w = WRITE_BUFFER_MODE;
            end
        WRITE_BUFFER_MODE:
            begin
                // set sram read address
                if(	H_Cont_r>=X_START-1 	&& H_Cont_r<X_START+H_SYNC_ACT-1 &&
                    V_Cont_r>=Y_START+v_mask 	&& V_Cont_r<Y_START+V_SYNC_ACT ) begin
                    //sram_addr_w = FINAL_START_ADDR + (H_Cont_r - X_START + 1) + (V_Cont_r - Y_START) * H_SYNC_ACT;
                    sram_addr_w = (H_Cont_r - X_START + 1) + (V_Cont_r - Y_START) * H_SYNC_ACT;
                end
                // read data from sram
                if(	H_Cont_r>=X_START 	&& H_Cont_r<X_START+H_SYNC_ACT &&
                    V_Cont_r>=Y_START+v_mask 	&& V_Cont_r<Y_START+V_SYNC_ACT ) begin
                    mVGA_R_w[9:2] = out_sram_dq[7:0];
                    mVGA_G_w[9:2] = out_sram_dq[7:0];
                    mVGA_B_w[9:2] = out_sram_dq[7:0];
                end else begin
                    mVGA_R_w = 0;
                    mVGA_G_w = 0;
                    mVGA_B_w = 0;
                end
            end
    endcase
end

always_ff@(posedge iCLK or negedge iRST_N) begin
    if (!iRST_N) begin
        // request
        oRequest_r          <=  0;
        // H & V control
        H_Cont_r            <=  0;
        V_Cont_r            <=  0;
        // VGA
        mVGA_R_r            <=  0;
        mVGA_G_r            <=  0;
        mVGA_B_r            <=  0;
        mVGA_BLANK_r        <=  0;
        mVGA_SYNC_r         <=  0;
        mVGA_H_SYNC_r       <=  0;
        mVGA_V_SYNC_r       <=  0;
        // SRAM
        sram_addr_r         <=  0;
        ce_r                <=  0;
        oe_r                <=  0;
        we_r                <=  1;
        ub_r                <=  0;
        lb_r                <=  0;
        sram_write_buffer_r <=  0;
        sram_read_buffer_r  <=  0;
        // other
        state_r             <=  0;
        rw_counter_r        <=  0;
        start_dip_r         <=  0;
        // modules
        fc_start_r          <=  0;

    end else begin
        // request
        oRequest_r          <=  oRequest_w;
        // H & V control
        H_Cont_r            <=  H_Cont_w;
        V_Cont_r            <=  V_Cont_w;
        // VGA
        mVGA_R_r            <=  mVGA_R_w;
        mVGA_G_r            <=  mVGA_G_w;
        mVGA_B_r            <=  mVGA_B_w;
        mVGA_BLANK_r        <=  mVGA_BLANK_w;
        mVGA_SYNC_r         <=  mVGA_SYNC_w;
        mVGA_H_SYNC_r       <=  mVGA_H_SYNC_w;
        mVGA_V_SYNC_r       <=  mVGA_V_SYNC_w;
        // SRAM
        sram_addr_r         <=  sram_addr_w;
        ce_r                <=  ce_w;
        oe_r                <=  oe_w;
        we_r                <=  we_w;
        ub_r                <=  ub_w;
        lb_r                <=  lb_w;
        sram_write_buffer_r <=  sram_write_buffer_w;
        sram_read_buffer_r  <=  sram_read_buffer_w;
        // other
        state_r             <=  state_w;
        rw_counter_r        <=  rw_counter_w;
        start_dip_r         <=  start_dip_w;
        // modules
        fc_start_r          <=  fc_start_w;
    end
end

endmodule
