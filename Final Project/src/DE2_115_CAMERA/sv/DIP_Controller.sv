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


// Address
parameter   FRONT_START_ADDR    = 0;
parameter   BACK_START_ADDR     = 640 * 480;


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
inout   wire [15:0]  ioSRAM_DQ;
output  reg         oSRAM_LB_N;
output  reg         oSRAM_OE_N;
output  reg         oSRAM_UB_N;
output  reg         oSRAM_WE_N;

logic [19:0] sram_addr_r, sram_addr_w;                                  // sram address
logic we_r, we_w;                                                        // sram write flag
logic [15:0] sram_write_buffer_r, sram_write_buffer_w;                  // buffer for writing to sram

assign  oSRAM_CE_N  =   0;
assign  oSRAM_OE_N  =   0;
assign  oSRAM_WE_N  =   we_r;
assign  oSRAM_UB_N  =   0;
assign  oSRAM_LB_N  =   0;
assign  oSRAM_ADDR  =   sram_addr_r;
assign  ioSRAM_DQ   =   oSRAM_WE_N ? 'z : sram_write_buffer_r;
//	Control Signal
input				iCLK;
input				iRST_N;
input 				iZOOM_MODE_SW;

//	Internal Registers and Wires
logic	[12:0]		H_Cont_r, H_Cont_w;
logic	[12:0]		V_Cont_r, V_Cont_w;

logic	[12:0]		v_mask;

///////////////////////////////////
//        Our Own Modules        //
///////////////////////////////////

// Define FSM states
parameter   VIDEO_MODE          = 3'b000;
parameter   READ_BUFFER_MODE    = 3'b001;
parameter   DIP_MODE            = 3'b010;
parameter   WRITE_BUFFER_MODE   = 3'b011;

logic   [2:0]   state_r, state_w; // states

// Define DIP states
parameter   DIP_FILTER  =   3'b000;
parameter   DIP_ENHANCE =   3'b001;
parameter   DIP_HISTO   =   3'b010;
parameter   DIP_CLOSING =   3'b011;
parameter   DIP_END     =   3'b100;

logic   [2:0]   dip_state_r, dip_state_w;

// Control Signals
logic start_read_sdram_r, start_read_sdram_w;  //indicates whether screenshot is done and should start processing

// Counters
logic   [9:0]   h_counter_r, h_counter_w; // horizontal counter
logic   [8:0]   v_counter_r, v_counter_w; // vertical counter
logic   [9:0]   load_counter_r, load_counter_w; // counter for loading data

// Gaussian Filter Controller

// filter controller states
parameter FIL_CHECK         = 3'b000;
parameter FIL_LOAD_BLOCK    = 3'b001;
parameter FIL_WRITE         = 3'b010;
parameter FIL_MERGE         = 3'b011;
parameter FIL_END           = 3'b100;

// filter parameters
parameter FIL_KERNEL_SIZE   = 625;
parameter bit [32:0] FIL_COEFFS [624:0] = '{
92,126,169,221,279,343,412,480,543,598,641,668,678,668,641,598,543,480,412,343,279,221,169,126,92,
126,174,233,304,384,472,566,659,747,823,882,920,933,920,882,823,747,659,566,472,384,304,233,174,126,
169,233,312,405,513,633,758,882,1000,1102,1180,1231,1247,1231,1180,1102,1000,882,758,633,513,405,312,233,169,
221,304,405,528,668,823,986,1148,1301,1433,1536,1602,1624,1602,1536,1433,1301,1148,986,823,668,528,405,304,221,
279,384,513,668,847,1042,1247,1453,1646,1814,1945,2026,2055,2026,1945,1814,1646,1453,1247,1042,847,668,513,384,279,
343,472,633,823,1042,1283,1536,1789,2026,2233,2393,2495,2530,2495,2393,2233,2026,1789,1536,1283,1042,823,633,472,343,
412,566,758,986,1247,1536,1840,2142,2427,2674,2866,2988,3029,2988,2866,2674,2427,2142,1840,1536,1247,986,758,566,412,
480,659,882,1148,1453,1789,2142,2495,2826,3115,3338,3480,3528,3480,3338,3115,2826,2495,2142,1789,1453,1148,882,659,480,
543,747,1000,1301,1646,2026,2427,2826,3202,3528,3782,3942,3997,3942,3782,3528,3202,2826,2427,2026,1646,1301,1000,747,543,
598,823,1102,1433,1814,2233,2674,3115,3528,3888,4167,4344,4404,4344,4167,3888,3528,3115,2674,2233,1814,1433,1102,823,598,
641,882,1180,1536,1945,2393,2866,3338,3782,4167,4465,4655,4720,4655,4465,4167,3782,3338,2866,2393,1945,1536,1180,882,641,
668,920,1231,1602,2026,2495,2988,3480,3942,4344,4655,4852,4920,4852,4655,4344,3942,3480,2988,2495,2026,1602,1231,920,668,
678,933,1247,1624,2055,2530,3029,3528,3997,4404,4720,4920,4989,4920,4720,4404,3997,3528,3029,2530,2055,1624,1247,933,678,
668,920,1231,1602,2026,2495,2988,3480,3942,4344,4655,4852,4920,4852,4655,4344,3942,3480,2988,2495,2026,1602,1231,920,668,
641,882,1180,1536,1945,2393,2866,3338,3782,4167,4465,4655,4720,4655,4465,4167,3782,3338,2866,2393,1945,1536,1180,882,641,
598,823,1102,1433,1814,2233,2674,3115,3528,3888,4167,4344,4404,4344,4167,3888,3528,3115,2674,2233,1814,1433,1102,823,598,
543,747,1000,1301,1646,2026,2427,2826,3202,3528,3782,3942,3997,3942,3782,3528,3202,2826,2427,2026,1646,1301,1000,747,543,
480,659,882,1148,1453,1789,2142,2495,2826,3115,3338,3480,3528,3480,3338,3115,2826,2495,2142,1789,1453,1148,882,659,480,
412,566,758,986,1247,1536,1840,2142,2427,2674,2866,2988,3029,2988,2866,2674,2427,2142,1840,1536,1247,986,758,566,412,
343,472,633,823,1042,1283,1536,1789,2026,2233,2393,2495,2530,2495,2393,2233,2026,1789,1536,1283,1042,823,633,472,343,
279,384,513,668,847,1042,1247,1453,1646,1814,1945,2026,2055,2026,1945,1814,1646,1453,1247,1042,847,668,513,384,279,
221,304,405,528,668,823,986,1148,1301,1433,1536,1602,1624,1602,1536,1433,1301,1148,986,823,668,528,405,304,221,
169,233,312,405,513,633,758,882,1000,1102,1180,1231,1247,1231,1180,1102,1000,882,758,633,513,405,312,233,169,
126,174,233,304,384,472,566,659,747,823,882,920,933,920,882,823,747,659,566,472,384,304,233,174,126,
92,126,169,221,279,343,412,480,543,598,641,668,678,668,641,598,543,480,412,343,279,221,169,126,92
};

logic   [2:0]   fil_state_r, fil_state_w;
logic   [39:0]  fil_sum_r, fil_sum_w;
logic           fil_orig_val_r, fil_orig_val_w;

// Contrast Enhancement

// contrast enhancement states
parameter   EN_COUNT_HISTO  = 2'b00;
parameter   EN_COUNT_CUMUL  = 2'b01;
parameter   EN_ENHANCE      = 2'b10;
parameter   EN_END          = 2'b11;

// contrast enhancement logics
logic   [1:0]   en_state_r, en_state_w;
//logic   [27:0]  en_value_r, en_value_w;
logic   [18:0]  histo_r [255:0], histo_w [255:0];


assign v_mask = 13'd0 ;//iZOOM_MODE_SW ? 13'd0 : 13'd26;
////////////////////////////////////

////////////////////////////////////////////////////////

always_comb begin
    //////////////////////////////////
    //       Init signals           //
    //////////////////////////////////
    // request
    oRequest_w          =   oRequest_r;
    // H & V control
    H_Cont_w            =   H_Cont_r;
    V_Cont_w            =   V_Cont_r;
    // VGA
    mVGA_R_w            =   mVGA_R_r;
    mVGA_G_w            =   mVGA_R_r;
    mVGA_B_w            =   mVGA_R_r;
    mVGA_BLANK_w        =   mVGA_BLANK_r;
    mVGA_SYNC_w         =   mVGA_SYNC_r;
    mVGA_H_SYNC_w       =   mVGA_H_SYNC_r;
    mVGA_V_SYNC_w       =   mVGA_V_SYNC_r;
    // SRAM
    sram_addr_w         =   sram_addr_r;
    we_w                =   we_r;
    sram_write_buffer_w =   sram_write_buffer_r;
    // states
    state_w             =   state_r;
    dip_state_w         =   dip_state_r;
    // control signals
    start_read_sdram_w  =   start_read_sdram_r;
    // counters
    h_counter_w         =   h_counter_r;
    v_counter_w         =   v_counter_r;
    load_counter_w      =   load_counter_r;

    ////////////////////////////////////
    //           Modules              //
    ////////////////////////////////////

    // Gaussian Filter Controller
    fil_state_w     = fil_state_r;
    fil_sum_w       = fil_sum_r;
    fil_orig_val_w  = fil_orig_val_r;

    // Contrast Enhancement
    en_state_w      = en_state_r;
    histo_w         = histo_r;

    // check whether to start DIP
    if( iDraw )
        start_read_sdram_w = 1;

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
        VIDEO_MODE: begin
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
            if(start_read_sdram_r && H_Cont_r == 0 && V_Cont_r == 0) begin
                state_w = READ_BUFFER_MODE;
            end
        end

        READ_BUFFER_MODE: begin
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
                fil_state_w = DIP_FILTER;
                h_counter_w = 0;
                v_counter_w = 0;
            end
        end

        DIP_MODE: begin
            case(dip_state_r)
                DIP_FILTER: begin
                    case(fil_state_r)
                        FIL_CHECK: begin
                            load_counter_w = 0;
                            if (h_counter_r < 12 || h_counter_r > H_SYNC_ACT-13 ||
                                v_counter_r < 12 || v_counter_r > V_SYNC_ACT-13) begin
                                sram_write_buffer_w = 128;
                                sram_addr_w = BACK_START_ADDR + v_counter_r * H_SYNC_ACT + h_counter_r;
                                fil_state_w = FIL_WRITE;
                            end else begin
                                sram_addr_w = FRONT_START_ADDR + (v_counter_r-12) * H_SYNC_ACT + h_counter_r - 12;
                                fil_state_w = FIL_LOAD_BLOCK;
                                fil_sum_w = 0;
                            end
                        end
                        FIL_LOAD_BLOCK: begin
                            if (load_counter_r < 624) begin
                                load_counter_w = load_counter_r + 1;
                                sram_addr_w = (v_counter_r-12+(load_counter_w/25)) * H_SYNC_ACT + (h_counter_r-12+(load_counter_w%25));
                                fil_sum_w = fil_sum_r + FIL_COEFFS[load_counter_r] * ioSRAM_DQ[9:0];
                            end else begin
                                fil_state_w = FIL_WRITE;
                                sram_write_buffer_w = ((fil_sum_r + FIL_COEFFS[load_counter_r] * ioSRAM_DQ[9:0]) >> 20);
                                load_counter_w = 0;
                                sram_addr_w = BACK_START_ADDR + v_counter_r * H_SYNC_ACT + h_counter_r;
                            end
                        end
                        FIL_WRITE: begin
                            if (load_counter_r < 1) begin
                                we_w = 0;
                                load_counter_w = load_counter_r + 1;
                            end else begin
                                we_w = 1;
                                fil_state_w = FIL_CHECK;
                                if (h_counter_r < H_SYNC_ACT-1)
                                    h_counter_w = h_counter_r + 1;
                                else if (h_counter_r == H_SYNC_ACT-1 && v_counter_r < V_SYNC_ACT-1) begin
                                    h_counter_w = 0;
                                    v_counter_w = v_counter_r + 1;
                                end else begin
                                    fil_state_w = FIL_MERGE;
                                    sram_addr_w = FRONT_START_ADDR;
                                    load_counter_w = 0;
                                end
                            end
                        end
                        FIL_MERGE: begin
                            load_counter_w = load_counter_r + 1;
                            if (load_counter_r < 1) begin
                                fil_orig_val_w = ioSRAM_DQ[9:0];
                                sram_addr_w = BACK_START_ADDR + sram_addr_r;
                            end else if (load_counter_r < 2) begin
                                //sram_write_buffer_w = fil_orig_val_r/2 + (255 - ioSRAM_DQ[9:0])/2;
                                sram_write_buffer_w = ioSRAM_DQ[9:0]/2;
                                sram_addr_w = sram_addr_r - BACK_START_ADDR;
                            end else if (load_counter_r < 3) begin
                                we_w = 0;
                            end else begin
                                we_w = 1;
                                if (sram_addr_r >= BACK_START_ADDR - 1) begin
                                    fil_state_w = FIL_END;
                                end else begin
                                    load_counter_w = 0;
                                    sram_addr_w = sram_addr_r + 1;
                                end
                            end
                        end
                        FIL_END: begin
                            dip_state_w = DIP_ENHANCE;
                            en_state_w = EN_COUNT_HISTO;
                            sram_addr_w = FRONT_START_ADDR + 1;
                        end
                    endcase
                end

                DIP_ENHANCE: begin
                    case(en_state_r)
                        EN_COUNT_HISTO: begin
                            if(sram_addr_r < BACK_START_ADDR)  begin
                                histo_w[ioSRAM_DQ[9:0]] = histo_r[ioSRAM_DQ[9:0]] + 1;
                                sram_addr_w = sram_addr_r + 1;
                            end else begin
                                en_state_w = EN_COUNT_CUMUL;
                                load_counter_w = 1;
                            end
                        end
                        EN_COUNT_CUMUL: begin
                            if(load_counter_r < 255) begin
                                histo_w[load_counter_r] = histo_r[load_counter_r] + histo_r[load_counter_r-1];
                                load_counter_w = load_counter_r + 1;
                            end else begin
                                histo_w[load_counter_r] = histo_r[load_counter_r] + histo_r[load_counter_r-1];
                                load_counter_w = 0;
                                en_state_w = EN_ENHANCE;
                                sram_addr_w = FRONT_START_ADDR;
                            end
                        end
                        EN_ENHANCE: begin
                            load_counter_w = load_counter_r + 1;
                            if (load_counter_r == 0) begin
                                sram_write_buffer_w = ioSRAM_DQ[9:0] * histo_r[ioSRAM_DQ[9:0]] / BACK_START_ADDR;
                            end else if (load_counter_r == 1) begin
                                we_w = 0;
                            end else begin
                                we_w = 1;
                                if (sram_addr_r == BACK_START_ADDR - 1) begin
                                    en_state_w = EN_END;
                                end else begin
                                    load_counter_w = 0;
                                    sram_addr_w = sram_addr_r + 1;
                                end
                            end
                        end
                        EN_END: begin
                            dip_state_w = DIP_HISTO;
                        end
                    endcase
                end

                DIP_HISTO: begin
                    dip_state_w = DIP_CLOSING;
                end

                DIP_CLOSING: begin
                    dip_state_w = DIP_END;
                end

                DIP_END: begin
                    state_w = WRITE_BUFFER_MODE;
                end
            endcase
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
                    mVGA_R_w[9:2] = ioSRAM_DQ[7:0];
                    mVGA_G_w[9:2] = ioSRAM_DQ[7:0];
                    mVGA_B_w[9:2] = ioSRAM_DQ[7:0];
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
        we_r                <=  1;
        sram_write_buffer_r <=  0;
        // H & V control
        H_Cont_r            <=  0;
        V_Cont_r            <=  0;
        // states
        state_r             <=  VIDEO_MODE;
        dip_state_r         <=  DIP_FILTER;
        // counters
        h_counter_r         <=  0;
        v_counter_r         <=  0;
        load_counter_r      <=  0;
        // control signals
        start_read_sdram_r  <=  0;
        /////////////
        // modules //
        /////////////
        // filter
        fil_state_r         <=  FIL_CHECK;
        fil_sum_r           <=  0;
        fil_orig_val_r      <=  0;
        // contrast enhancement
        en_state_r          <=  EN_COUNT_HISTO;
        //en_value_r          <=  0;
        for (int i=0; i < 255; i=i+1)
            histo_r[i]      <=  0;

    end else begin
        // request
        oRequest_r          <=  oRequest_w;
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
        we_r                <=  we_w;
        sram_write_buffer_r <=  sram_write_buffer_w;
        // H & V control
        H_Cont_r            <=  H_Cont_w;
        V_Cont_r            <=  V_Cont_w;
        // states
        state_r             <=  state_w;
        dip_state_r         <=  dip_state_w;
        // counters
        h_counter_r         <=  h_counter_w;
        v_counter_r         <=  v_counter_w;
        load_counter_r      <=  load_counter_w;
        // control signals
        start_read_sdram_r  <=  start_read_sdram_w;
        /////////////
        // modules //
        /////////////
        // filter
        fil_state_r         <=  fil_state_w;
        fil_sum_r           <=  fil_sum_w;
        fil_orig_val_r      <=  fil_orig_val_w;
        // contrast enhancement
        en_state_r          <=  en_state_w;
        //en_value_r          <=  en_value_w;
        histo_r             <=  histo_w;
    end
end

endmodule
