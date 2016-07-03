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
parameter FIL_KERNEL_SIZE   = 23;
localparam FIL_BLOCK_SIZE   = FIL_KERNEL_SIZE * FIL_KERNEL_SIZE;
parameter bit [32:0] FIL_COEFFS [FIL_BLOCK_SIZE-1:0] = '{
56,85,124,175,235,305,379,453,521,575,611,623,611,575,521,453,379,305,235,175,124,85,56,
85,129,189,265,357,462,575,688,791,875,928,947,928,875,791,688,575,462,357,265,189,129,85,
124,189,275,386,521,675,840,1005,1156,1277,1355,1383,1355,1277,1156,1005,840,675,521,386,275,189,124,
175,265,386,543,731,947,1179,1411,1622,1791,1903,1940,1903,1791,1622,1411,1179,947,731,543,386,265,175,
235,357,521,731,985,1277,1590,1903,2187,2416,2565,2617,2565,2416,2187,1903,1590,1277,985,731,521,357,235,
305,462,675,947,1277,1654,2060,2465,2834,3130,3323,3391,3323,3130,2834,2465,2060,1654,1277,947,675,462,305,
379,575,840,1179,1590,2060,2565,3069,3529,3898,4138,4222,4138,3898,3529,3069,2565,2060,1590,1179,840,575,379,
453,688,1005,1411,1903,2465,3069,3672,4222,4665,4952,5051,4952,4665,4222,3672,3069,2465,1903,1411,1005,688,453,
521,791,1156,1622,2187,2834,3529,4222,4853,5363,5693,5808,5693,5363,4853,4222,3529,2834,2187,1622,1156,791,521,
575,875,1277,1791,2416,3130,3898,4665,5363,5924,6290,6416,6290,5924,5363,4665,3898,3130,2416,1791,1277,875,575,
611,928,1355,1903,2565,3323,4138,4952,5693,6290,6677,6811,6677,6290,5693,4952,4138,3323,2565,1903,1355,928,611,
623,947,1383,1940,2617,3391,4222,5051,5808,6416,6811,6948,6811,6416,5808,5051,4222,3391,2617,1940,1383,947,623,
611,928,1355,1903,2565,3323,4138,4952,5693,6290,6677,6811,6677,6290,5693,4952,4138,3323,2565,1903,1355,928,611,
575,875,1277,1791,2416,3130,3898,4665,5363,5924,6290,6416,6290,5924,5363,4665,3898,3130,2416,1791,1277,875,575,
521,791,1156,1622,2187,2834,3529,4222,4853,5363,5693,5808,5693,5363,4853,4222,3529,2834,2187,1622,1156,791,521,
453,688,1005,1411,1903,2465,3069,3672,4222,4665,4952,5051,4952,4665,4222,3672,3069,2465,1903,1411,1005,688,453,
379,575,840,1179,1590,2060,2565,3069,3529,3898,4138,4222,4138,3898,3529,3069,2565,2060,1590,1179,840,575,379,
305,462,675,947,1277,1654,2060,2465,2834,3130,3323,3391,3323,3130,2834,2465,2060,1654,1277,947,675,462,305,
235,357,521,731,985,1277,1590,1903,2187,2416,2565,2617,2565,2416,2187,1903,1590,1277,985,731,521,357,235,
175,265,386,543,731,947,1179,1411,1622,1791,1903,1940,1903,1791,1622,1411,1179,947,731,543,386,265,175,
124,189,275,386,521,675,840,1005,1156,1277,1355,1383,1355,1277,1156,1005,840,675,521,386,275,189,124,
85,129,189,265,357,462,575,688,791,875,928,947,928,875,791,688,575,462,357,265,189,129,85,
56,85,124,175,235,305,379,453,521,575,611,623,611,575,521,453,379,305,235,175,124,85,56
};


logic   [2:0]   fil_state_r, fil_state_w;
logic   [39:0]  fil_sum_r, fil_sum_w;
logic   [9:0]   fil_orig_val_r, fil_orig_val_w;

// Contrast Enhancement

parameter   EN_COUNT_HISTO  = 2'b00;
parameter   EN_COUNT_CUMUL  = 2'b01;
parameter   EN_ENHANCE      = 2'b10;
parameter   EN_END          = 2'b11;

logic   [1:0]   en_state_r, en_state_w;
//logic   [27:0]  en_value_r, en_value_w;
logic   [18:0]  histo_r [255:0], histo_w [255:0];

// Histogram Controller

parameter   HIS_COUNT_HISTO = 2'b00;
parameter   HIS_GET_MAX     = 2'b01;
parameter   HIS_ELIM        = 2'b10;
parameter   HIS_END         = 2'b11;

logic   [1:0]   his_state_r, his_state_w;
logic   [18:0]  his_max_value_r, his_max_value_w;
logic   [12:0]  his_max_idx_r, his_max_idx_w;


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

    // Histogram Controller
    his_state_w     = his_state_r;
    his_max_value_w = his_max_value_r;
    his_max_idx_w   = his_max_idx_r;

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
                            if (h_counter_r < FIL_KERNEL_SIZE/2 || h_counter_r > H_SYNC_ACT-FIL_KERNEL_SIZE/2-1 ||
                                v_counter_r < FIL_KERNEL_SIZE/2 || v_counter_r > V_SYNC_ACT-FIL_KERNEL_SIZE/2-1) begin
                                sram_write_buffer_w = 128;
                                sram_addr_w = BACK_START_ADDR + v_counter_r * H_SYNC_ACT + h_counter_r;
                                fil_state_w = FIL_WRITE;
                            end else begin
                                sram_addr_w = FRONT_START_ADDR + (v_counter_r-FIL_KERNEL_SIZE/2) * H_SYNC_ACT + h_counter_r - FIL_KERNEL_SIZE/2;
                                fil_state_w = FIL_LOAD_BLOCK;
                                fil_sum_w = 0;
                            end
                        end
                        FIL_LOAD_BLOCK: begin
                            if (load_counter_r < FIL_BLOCK_SIZE-1) begin
                                load_counter_w = load_counter_r + 1;
                                sram_addr_w = (v_counter_r-FIL_KERNEL_SIZE/2+(load_counter_w/FIL_KERNEL_SIZE)) * H_SYNC_ACT + (h_counter_r-FIL_KERNEL_SIZE/2+(load_counter_w%FIL_KERNEL_SIZE));
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
                            if (load_counter_r < 1) begin
                                fil_orig_val_w = ioSRAM_DQ[9:0];
                                sram_addr_w = BACK_START_ADDR + sram_addr_r;
                                load_counter_w = load_counter_r + 1;
                            end else if (load_counter_r < 2) begin
                                sram_write_buffer_w = fil_orig_val_r/2 + (255 - ioSRAM_DQ[9:0])/2;
                                sram_addr_w = sram_addr_r - BACK_START_ADDR;
                                load_counter_w = load_counter_r + 1;
                            end else if (load_counter_r < 3) begin
                                we_w = 0;
                                load_counter_w = load_counter_r + 1;
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
                            his_state_w = HIS_COUNT_HISTO;
                            sram_addr_w = FRONT_START_ADDR;
                            for (int i=0; i<255; i=i+1)
                                histo_w[i] = 0;
                        end
                    endcase
                end

                DIP_HISTO: begin
                    case(his_state_r)
                        HIS_COUNT_HISTO: begin
                            if (sram_addr_r < BACK_START_ADDR) begin
                                histo_w[ioSRAM_DQ[9:0]] = histo_r[ioSRAM_DQ[9:0]] + 1;
                                sram_addr_w = sram_addr_r + 1;
                            end else begin
                                his_state_w = HIS_GET_MAX;
                                load_counter_w = 0;
                                his_max_value_w = 0;
                                his_max_idx_w = 0;
                            end
                        end
                        HIS_GET_MAX: begin
                            load_counter_w = load_counter_r + 1;
                            if (load_counter_r < 255 && histo_r[load_counter_r] > his_max_value_r) begin
                                his_max_value_w = histo[load_counter_r];
                                his_max_idx_w = load_counter_r;
                            end else if (load_counter_r >= 255) begin
                                load_counter_w = 0;
                                his_state_w = HIS_ELIM;
                                sram_addr_w = FRONT_START_ADDR;
                                his_max_idx_w = 17 * his_max_idx_r / 20;
                            end
                        end
                        HIS_ELIM: begin
                            load_counter_w = load_counter_r + 1;
                            if (load_counter_r == 0) begin
                                if (ioSRAM_DQ[9:0] > his_max_idx_r) begin
                                    sram_write_buffer_w = 255;
                                end else begin
                                    load_counter_w = 0;
                                    sram_addr_w = sram_addr_r + 1;
                                end
                            end else if (load_counter_r == 1) begin
                                we_w = 0;
                            end else begin
                                we_w = 1;
                                if (sram_addr_r == BACK_START_ADDR - 1) begin
                                    his_state_w = HIS_END;
                                end else begin
                                    load_counter_w = 0;
                                    sram_addr_w = sram_addr_r + 1;
                                end
                            end
                        end
                        HIS_END: begin
                            dip_state_w = DIP_CLOSING;
                        end
                    endcase
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
        // histogram
        his_state_r         <=  HIS_COUNT_HISTO;
        his_max_value_r     <=  0;
        his_max_idx_r       <=  0;

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
        // histogram
        his_state_r         <=  his_state_w;
        his_max_value_r     <=  his_max_value_w;
        his_max_idx_r       <=  his_max_idx_w;
    end
end

endmodule
