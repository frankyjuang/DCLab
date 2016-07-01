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

assign  oVGA_R          =   mVGA_R_r;
assign  oVGA_G          =   mVGA_G_r;
assign  oVGA_B          =   mVGA_B_r;
assign  oVGA_H_SYNC     =   mVGA_H_SYNC_r;
assign  oVGA_V_SYNC     =   mVGA_V_SYNC_r;
assign  oVGA_SYNC       =   mVGA_SYNC_r;
assign  oVGA_BLANK      =   mVGA_BLANK_r;

//  SRAM Side
output  reg [19:0]  oSRAM_ADDR;
output  reg         oSRAM_CE_N;
inout   reg [15:0]  ioSRAM_DQ;
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
logic [9:0] buffer_gray_r[NUM_PIXELS:0], buffer_gray_w[NUM_PIXELS:0];   // gray buffer for output

// sram
logic [20:0] sram_addr_r, sram_addr_w;                                  // sram address
logic ce_r, ce_w, oe_r, oe_w, we_r, we_w, ub_r, ub_w, lb_r, lb_w;       // sram flags
logic [15:0] sram_write_buffer_r, sram_write_buffer_w;                  // buffer for writing to sram
logic [15:0] sram_read_buffer_r, sram_read_buffer_w;                    // buffer for reading from sram

// other
logic [3:0] state_r, state_w; // states
logic [19:0] rw_counter_r, rw_counter_w;                                // counter for reading and writing
//logic dip_done_r, dip_done_w;                                           // indicates whether DIP is done


assign v_mask = 13'd0 ;//iZOOM_MODE_SW ? 13'd0 : 13'd26;
////////////////////////////////////
assign  oSRAM_CE_N  =   ce_r;
assign  oSRAM_OE_N  =   oe_r;
assign  oSRAM_WE_N  =   we_r;
assign  oSRAM_UB_N  =   ub_r;
assign  oSRAM_LB_N  =   lb_r;
assign  oSRAM_ADDR  =   sram_addr_r;
assign  ioSRAM_DQ   =   (oSRAM_WE_N) ? 'z : sram_write_buffer_r;

////////////////////////////////////////////////////////

assign	mVGA_BLANK	=	mVGA_H_SYNC_r & mVGA_V_SYNC_r;
assign	mVGA_SYNC	=	1'b0;

assign	mVGA_R	=	(	H_Cont>=X_START 	&& H_Cont<X_START+H_SYNC_ACT &&
						V_Cont>=Y_START+v_mask 	&& V_Cont<Y_START+V_SYNC_ACT )
						?	iRed	:	0;
assign	mVGA_G	=	(	H_Cont>=X_START 	&& H_Cont<X_START+H_SYNC_ACT &&
						V_Cont>=Y_START+v_mask 	&& V_Cont<Y_START+V_SYNC_ACT )
						?	iGreen	:	0;
assign	mVGA_B	=	(	H_Cont>=X_START 	&& H_Cont<X_START+H_SYNC_ACT &&
						V_Cont>=Y_START+v_mask 	&& V_Cont<Y_START+V_SYNC_ACT )
						?	iBlue	:	0;

/*
always@(posedge iCLK or negedge iRST_N)
	begin
		if (!iRST_N)
			begin
				oVGA_R <= 0;
				oVGA_G <= 0;
                oVGA_B <= 0;
				oVGA_BLANK <= 0;
				oVGA_SYNC <= 0;
				oVGA_H_SYNC <= 0;
				oVGA_V_SYNC <= 0;
			end
		else
			begin
				oVGA_R <= mVGA_R;
				oVGA_G <= mVGA_G;
                oVGA_B <= mVGA_B;
				oVGA_BLANK <= mVGA_BLANK;
				oVGA_SYNC <= mVGA_SYNC;
				oVGA_H_SYNC <= mVGA_H_SYNC;
				oVGA_V_SYNC <= mVGA_V_SYNC;
			end
	end

//	Pixel LUT Address Generator
always@(posedge iCLK or negedge iRST_N)
begin
	if(!iRST_N)
	oRequest	<=	0;
	else
	begin
		if(	H_Cont>=X_START-2 && H_Cont<X_START+H_SYNC_ACT-2 &&
			V_Cont>=Y_START && V_Cont<Y_START+V_SYNC_ACT )
		oRequest	<=	1;
		else
		oRequest	<=	0;
	end
end

//	H_Sync Generator, Ref. 40 MHz Clock
always@(posedge iCLK or negedge iRST_N)
begin
	if(!iRST_N)
	begin
		H_Cont		<=	0;
		mVGA_H_SYNC	<=	0;
	end
	else
	begin
		//	H_Sync Counter
		if( H_Cont < H_SYNC_TOTAL )
		H_Cont	<=	H_Cont+1;
		else
		H_Cont	<=	0;
		//	H_Sync Generator
		if( H_Cont < H_SYNC_CYC )
		mVGA_H_SYNC	<=	0;
		else
		mVGA_H_SYNC	<=	1;
	end
end

//	V_Sync Generator, Ref. H_Sync
always@(posedge iCLK or negedge iRST_N)
begin
	if(!iRST_N)
	begin
		V_Cont		<=	0;
		mVGA_V_SYNC	<=	0;
	end
	else
	begin
		//	When H_Sync Re-start
		if(H_Cont==0)
		begin
			//	V_Sync Counter
			if( V_Cont < V_SYNC_TOTAL )
			V_Cont	<=	V_Cont+1;
			else
			V_Cont	<=	0;
			//	V_Sync Generator
			if(	V_Cont < V_SYNC_CYC )
			mVGA_V_SYNC	<=	0;
			else
			mVGA_V_SYNC	<=	1;
		end
	end
end
*/

always_comb begin
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

    case(state_r)
        VIDEO_MODE:
            begin
                // Pixel LUT Address Generator
                if( H_Cont_r>=X_START 2 && H_Cont_r<X_START+H_SYNC_ACT  2 &&
                    V_Cont_r>=Y_START && V_Cont_r<Y_START+V_SYNC_ACT )
		            oRequest_w = 1;
		        else
		            oRequest_w = 0;
                end
                // H_Sync Generator, Ref. 40 MHz Clock
                //
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

    end else begin
        // request
        oRequest_r          <=  oRequest_w;
        // H & V control
        H_Cont_r            <=  H_Cont_w;
        V_Cont_r            <=  V_Cont_w;
        // VGA
        mVGA_R_r            <=  mVGA_R_w;
        mVGA_G_r            <=  mVGA_R_w;
        mVGA_B_r            <=  mVGA_R_w;
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
    end
end

endmodule
