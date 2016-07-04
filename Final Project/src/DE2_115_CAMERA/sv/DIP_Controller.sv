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
                        iNext,
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
input               iNext;
output	reg			oRequest;

logic   oRequest_r, oRequest_w;

assign  oRequest    =   oRequest_r;

logic   next_bounced_r, next_bounced_w;

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
parameter   DRAW_MODE           = 3'b100;

logic   [2:0]   state_r, state_w; // states

// Define DIP states
parameter   DIP_FILTER  =   3'b000;
parameter   DIP_ENHANCE =   3'b001;
parameter   DIP_HISTO   =   3'b010;
parameter   DIP_CLOSING =   3'b011;
parameter   DIP_NF      =   3'b100;
parameter   DIP_MAP     =   3'b101;
parameter   DIP_END     =   3'b110;

logic   [2:0]   dip_state_r, dip_state_w;

// Define Draw States
parameter   DRAW_INIT       =   3'b000;
parameter   DRAW_START      =   3'b001;
parameter   DRAW_FIND_PATH  =   3'b010;
parameter   DRAW_SEND       =   3'b011;
parameter   DRAW_END        =   3'b100;

parameter   DRAW_H_OFFSET   =   200;
parameter   DRAW_V_OFFSET   =   50;

logic   [2:0]   draw_state_r, draw_state_w;

logic   [19:0]  draw_start_pt_r, draw_start_pt_w;
logic   [19:0]  draw_end_pt_r, draw_end_pt_w;
logic   [7:0]   draw_dir_r, draw_dir_w;
logic   [19:0]  draw_energy_r, draw_energy_w;

// Control Signals
logic start_read_sdram_r, start_read_sdram_w;  //indicates whether screenshot is done and should start processing

// Counters
logic   [9:0]   h_counter_r, h_counter_w; // horizontal counter
logic   [8:0]   v_counter_r, v_counter_w; // vertical counter
logic   [9:0]   load_counter_r, load_counter_w; // counter for loading data

// Gaussian Filter Controller

// filter controller states
parameter FIL_INIT          = 3'b000;
parameter FIL_CHECK         = 3'b001;
parameter FIL_LOAD_BLOCK    = 3'b010;
parameter FIL_WRITE         = 3'b011;
parameter FIL_MERGE         = 3'b100;
parameter FIL_END           = 3'b101;

// filter parameters
parameter FIL_KERNEL_SIZE   = 25;
localparam FIL_BLOCK_SIZE   = FIL_KERNEL_SIZE * FIL_KERNEL_SIZE;
parameter bit [32:0] FIL_COEFFS [FIL_BLOCK_SIZE-1:0] = '{
0,0,0,0,0,0,0,0,0,2,2,2,2,2,2,2,0,0,0,0,0,0,0,0,0,
0,0,0,0,0,0,2,2,3,4,5,6,7,6,5,4,3,2,2,0,0,0,0,0,0,
0,0,0,0,0,2,3,6,9,14,20,25,27,25,20,14,9,6,3,2,0,0,0,0,0,
0,0,0,0,2,4,9,17,32,51,72,88,94,88,72,51,32,17,9,4,2,0,0,0,0,
0,0,0,2,5,11,26,55,100,161,226,276,295,276,226,161,100,55,26,11,5,2,0,0,0,
0,0,2,4,11,30,72,150,276,444,622,763,816,763,622,444,276,150,72,30,11,4,2,0,0,
0,2,3,9,26,72,172,362,666,1071,1503,1842,1971,1842,1503,1071,666,362,172,72,26,9,3,2,0,
0,2,6,17,55,150,362,763,1405,2257,3168,3882,4155,3882,3168,2257,1405,763,362,150,55,17,6,2,0,
0,3,9,32,100,276,666,1405,2585,4155,5832,7148,7649,7148,5832,4155,2585,1405,666,276,100,32,9,3,0,
2,4,14,51,161,444,1071,2257,4155,6679,9375,11489,12295,11489,9375,6679,4155,2257,1071,444,161,51,14,4,2,
2,5,20,72,226,622,1503,3168,5832,9375,13158,16126,17257,16126,13158,9375,5832,3168,1503,622,226,72,20,5,2,
2,6,25,88,276,763,1842,3882,7148,11489,16126,19763,21150,19763,16126,11489,7148,3882,1842,763,276,88,25,6,2,
2,7,27,94,295,816,1971,4155,7649,12295,17257,21150,22634,21150,17257,12295,7649,4155,1971,816,295,94,27,7,2,
2,6,25,88,276,763,1842,3882,7148,11489,16126,19763,21150,19763,16126,11489,7148,3882,1842,763,276,88,25,6,2,
2,5,20,72,226,622,1503,3168,5832,9375,13158,16126,17257,16126,13158,9375,5832,3168,1503,622,226,72,20,5,2,
2,4,14,51,161,444,1071,2257,4155,6679,9375,11489,12295,11489,9375,6679,4155,2257,1071,444,161,51,14,4,2,
0,3,9,32,100,276,666,1405,2585,4155,5832,7148,7649,7148,5832,4155,2585,1405,666,276,100,32,9,3,0,
0,2,6,17,55,150,362,763,1405,2257,3168,3882,4155,3882,3168,2257,1405,763,362,150,55,17,6,2,0,
0,2,3,9,26,72,172,362,666,1071,1503,1842,1971,1842,1503,1071,666,362,172,72,26,9,3,2,0,
0,0,2,4,11,30,72,150,276,444,622,763,816,763,622,444,276,150,72,30,11,4,2,0,0,
0,0,0,2,5,11,26,55,100,161,226,276,295,276,226,161,100,55,26,11,5,2,0,0,0,
0,0,0,0,2,4,9,17,32,51,72,88,94,88,72,51,32,17,9,4,2,0,0,0,0,
0,0,0,0,0,2,3,6,9,14,20,25,27,25,20,14,9,6,3,2,0,0,0,0,0,
0,0,0,0,0,0,2,2,3,4,5,6,7,6,5,4,3,2,2,0,0,0,0,0,0,
0,0,0,0,0,0,0,0,0,2,2,2,2,2,2,2,0,0,0,0,0,0,0,0,0
};


logic   [2:0]   fil_state_r, fil_state_w;
logic   [39:0]  fil_sum_r, fil_sum_w;
logic   [9:0]   fil_orig_val_r, fil_orig_val_w;

// Contrast Enhancement

parameter   EN_INIT         = 3'b000;
parameter   EN_COUNT_HISTO  = 3'b001;
parameter   EN_COUNT_CUMUL  = 3'b010;
parameter   EN_ENHANCE      = 3'b011;
parameter   EN_END          = 3'b100;

logic   [2:0]   en_state_r, en_state_w;
logic   [18:0]  histo_r [255:0], histo_w [255:0];

// Histogram Controller

parameter   HIS_INIT        = 3'b000;
parameter   HIS_COUNT_HISTO = 3'b001;
parameter   HIS_GET_MAX     = 3'b010;
parameter   HIS_ELIM        = 3'b011;
parameter   HIS_END         = 3'b100;

logic   [2:0]   his_state_r, his_state_w;
logic   [18:0]  his_max_value_r, his_max_value_w;
logic   [12:0]  his_max_idx_r, his_max_idx_w;

// Closing Controller

parameter   CL_INIT         =   3'b000;
parameter   CL_CHECK        =   3'b001;
parameter   CL_LOAD_BLOCK   =   3'b010;
parameter   CL_WRITE        =   3'b011;
parameter   CL_END          =   3'b100;

parameter   DILATION        =   1'b0;
parameter   EROSION         =   1'b1;
parameter   CL_KERNEL_SIZE  =   3;

logic   [2:0]   cl_state_r, cl_state_w;
logic   [9:0]   cl_output_r, cl_output_w;
logic           cl_mode_r, cl_mode_w;

// Novel Filter
parameter   NF_INIT         =   3'b000;
parameter   NF_CHECK        =   3'b001;
parameter   NF_LOAD_BLOCK   =   3'b010;
parameter   NF_WRITE        =   3'b011;
parameter   NF_END          =   3'b100;

logic   [2:0]   nf_state_r, nf_state_w;

// Generate Sketch Map

parameter   MAP_INIT        =   3'b000;
parameter   MAP_CHECK       =   3'b001;
parameter   MAP_LOAD_BLOCK  =   3'b010;
parameter   MAP_WRITE       =   3'b011;
parameter   MAP_END         =   3'b100;

parameter   MAP_KERNEL_SIZE =   9;
parameter   MAP_THRES       =   30;


logic   [2:0]   map_state_r, map_state_w;
logic   [7:0]   map_value_r, map_value_w;


assign v_mask = 13'd0 ;//iZOOM_MODE_SW ? 13'd0 : 13'd26;
////////////////////////////////////

////////////////////////////////////////////////////////

always_comb begin
    //////////////////////////////////
    //       Init signals           //
    //////////////////////////////////
    // request
    oRequest_w          =   oRequest_r;
    next_bounced_w      =   iNext;
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

    // Closing Controller
    cl_state_w      = cl_state_r;
    cl_output_w     = cl_output_r;
    cl_mode_w       = cl_mode_r;

    // novel filter
    nf_state_w      = nf_state_r;

    // mapping line thickness
    map_state_w     = map_state_r;
    map_value_w     = map_value_r;

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
                state_w = WRITE_BUFFER_MODE;
                dip_state_w = DIP_FILTER;
                fil_state_w = FIL_INIT;
            end
        end

        DIP_MODE: begin
            case(dip_state_r)
                DIP_FILTER: begin
                    case(fil_state_r)
                        FIL_INIT: begin
                            h_counter_w = 0;
                            v_counter_w = 0;
                            fil_state_w = FIL_CHECK;
                        end
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
                            state_w = WRITE_BUFFER_MODE;
                            dip_state_w = DIP_ENHANCE;
                            en_state_w = EN_INIT;
                        end
                    endcase
                end

                DIP_ENHANCE: begin
                    case(en_state_r)
                        EN_INIT: begin
                            sram_addr_w = FRONT_START_ADDR + 1;
                            en_state_w = EN_COUNT_HISTO;
                        end
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
                            state_w = WRITE_BUFFER_MODE;
                            dip_state_w = DIP_HISTO;
                            his_state_w = HIS_INIT;
                        end
                    endcase
                end

                DIP_HISTO: begin
                    case(his_state_r)
                        HIS_INIT: begin
                            sram_addr_w = FRONT_START_ADDR;
                            for (int i=0; i<255; i=i+1)
                                histo_w[i] = 0;
                            his_state_w = HIS_COUNT_HISTO;
                        end
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
                                his_max_value_w = histo_r[load_counter_r];
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
                                end else if (sram_addr_r == BACK_START_ADDR - 1) begin
                                    his_state_w = HIS_END;
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
                            state_w = WRITE_BUFFER_MODE;
                            // Map straight from histo
                            dip_state_w = DIP_MAP;
                            map_state_w = MAP_INIT;

                            // perform closing
                            //dip_state_w = DIP_CLOSING;
                            //cl_state_w = CL_INIT;
                        end
                    endcase
                end

                DIP_MAP: begin
                    case(map_state_r)
                        MAP_INIT: begin
                            sram_addr_w = FRONT_START_ADDR;
                            h_counter_w = 0;
                            v_counter_w = 0;
                            map_state_w = MAP_CHECK;
                        end
                        MAP_CHECK: begin
                            load_counter_w = 0;
                            if (h_counter_r < MAP_KERNEL_SIZE/2 || h_counter_r > H_SYNC_ACT-MAP_KERNEL_SIZE/2-1 ||
                                v_counter_r < MAP_KERNEL_SIZE/2 || v_counter_r > V_SYNC_ACT-MAP_KERNEL_SIZE/2-1 || ioSRAM_DQ[7:0]==255) begin
                                sram_write_buffer_w = ioSRAM_DQ[9:0];
                                sram_addr_w = BACK_START_ADDR + v_counter_r * H_SYNC_ACT + h_counter_r;
                                map_state_w = MAP_WRITE;
                            end else begin
                                sram_addr_w = FRONT_START_ADDR + (v_counter_r-MAP_KERNEL_SIZE/2) * H_SYNC_ACT + h_counter_r - MAP_KERNEL_SIZE/2;
                                map_state_w = MAP_LOAD_BLOCK;
                                map_value_w = 0;
                            end
                        end
                        MAP_LOAD_BLOCK: begin
                            if (load_counter_r < MAP_KERNEL_SIZE * MAP_KERNEL_SIZE - 1) begin
                                load_counter_w = load_counter_r + 1;
                                sram_addr_w = (v_counter_r-MAP_KERNEL_SIZE/2+(load_counter_w/MAP_KERNEL_SIZE)) * H_SYNC_ACT + (h_counter_r-MAP_KERNEL_SIZE/2+(load_counter_w%MAP_KERNEL_SIZE));
                                if (ioSRAM_DQ[7:0]!=255)
                                    map_value_w = map_value_r + 1;
                            end else begin
                                map_state_w = MAP_WRITE;
                                if (ioSRAM_DQ[7:0]!=255) begin
                                    if (map_value_r < MAP_THRES)
                                        sram_write_buffer_w = 0;
                                    else
                                        sram_write_buffer_w = (map_value_r + 1)*3 / 2;
                                end else if (map_value_r < MAP_THRES)
                                    sram_write_buffer_w = 0;
                                else
                                    sram_write_buffer_w = map_value_r * 3 / 2;
                                load_counter_w = 0;
                                sram_addr_w = BACK_START_ADDR + v_counter_r * H_SYNC_ACT + h_counter_r;
                            end
                        end
                        MAP_WRITE: begin
                            if (load_counter_r < 1) begin
                                we_w = 0;
                                load_counter_w = load_counter_r + 1;
                            end else begin
                                we_w = 1;
                                map_state_w = MAP_CHECK;
                                if (h_counter_r < H_SYNC_ACT-1) begin
                                    h_counter_w = h_counter_r + 1;
                                    sram_addr_w = FRONT_START_ADDR + v_counter_r * H_SYNC_ACT + h_counter_w;
                                end else if (h_counter_r == H_SYNC_ACT-1 && v_counter_r < V_SYNC_ACT-1) begin
                                    h_counter_w = 0;
                                    v_counter_w = v_counter_r + 1;
                                    sram_addr_w = FRONT_START_ADDR + v_counter_w * H_SYNC_ACT;
                                end else begin
                                    map_state_w = MAP_END;
                                end
                            end
                        end
                        MAP_END: begin
                            dip_state_w = DIP_END;
                        end
                    endcase
                end

                DIP_CLOSING: begin
                    case(cl_state_r)
                        CL_INIT: begin
                            cl_mode_w = DILATION;
                            h_counter_w = CL_KERNEL_SIZE/2;
                            v_counter_w = CL_KERNEL_SIZE/2;
                            cl_state_w = CL_CHECK;
                        end
                        CL_CHECK: begin
                            load_counter_w = 0;
                            if (cl_mode_r == DILATION)
                                sram_addr_w = FRONT_START_ADDR + (v_counter_r-CL_KERNEL_SIZE/2) * H_SYNC_ACT + h_counter_r - CL_KERNEL_SIZE/2;
                            else
                                sram_addr_w = BACK_START_ADDR + (v_counter_r-CL_KERNEL_SIZE/2) * H_SYNC_ACT + h_counter_r - CL_KERNEL_SIZE/2;
                            cl_state_w = CL_LOAD_BLOCK;
                        end
                        CL_LOAD_BLOCK: begin
                            load_counter_w = load_counter_r + 1;
                            if (load_counter_r == 1) begin
                                cl_output_w = ioSRAM_DQ[9:0];
                                sram_addr_w = sram_addr_r + 1;
                            end else if (load_counter_r == 0 || load_counter_r == 2 || load_counter_r == 6) begin
                                if (cl_mode_r == DILATION)
                                    sram_addr_w = FRONT_START_ADDR + (v_counter_r-CL_KERNEL_SIZE/2+(load_counter_w/CL_KERNEL_SIZE)) * H_SYNC_ACT + (h_counter_r-CL_KERNEL_SIZE/2+(load_counter_w%CL_KERNEL_SIZE));
                                else
                                    sram_addr_w = BACK_START_ADDR + (v_counter_r-CL_KERNEL_SIZE/2+(load_counter_w/CL_KERNEL_SIZE)) * H_SYNC_ACT + (h_counter_r-CL_KERNEL_SIZE/2+(load_counter_w%CL_KERNEL_SIZE));
                            end else if (load_counter_r == 8) begin
                                if (cl_mode_r == DILATION)
                                    sram_addr_w = BACK_START_ADDR + v_counter_r * H_SYNC_ACT + h_counter_r;
                                else
                                    sram_addr_w = FRONT_START_ADDR + v_counter_r * H_SYNC_ACT + h_counter_r;
                                cl_state_w = CL_WRITE;
                                load_counter_w = 0;
                                sram_write_buffer_w = cl_output_r;
                            end else begin
                                if (    (cl_mode_r == DILATION && cl_output_r > ioSRAM_DQ[9:0]) ||
                                        (cl_mode_r == EROSION &&  cl_output_r < ioSRAM_DQ[9:0])    ) begin
                                    cl_output_w = ioSRAM_DQ[9:0];
                                end 
                                if (load_counter_r < CL_KERNEL_SIZE * CL_KERNEL_SIZE - 1) begin
                                    if (cl_mode_r == DILATION)
                                        sram_addr_w = FRONT_START_ADDR + (v_counter_r-CL_KERNEL_SIZE/2+(load_counter_w/CL_KERNEL_SIZE)) * H_SYNC_ACT + (h_counter_r-CL_KERNEL_SIZE/2+(load_counter_w%CL_KERNEL_SIZE));
                                    else
                                        sram_addr_w = BACK_START_ADDR + (v_counter_r-CL_KERNEL_SIZE/2+(load_counter_w/CL_KERNEL_SIZE)) * H_SYNC_ACT + (h_counter_r-CL_KERNEL_SIZE/2+(load_counter_w%CL_KERNEL_SIZE));
                                end
                            end
                            //end else begin
                                //if (    (cl_mode_r == DILATION && cl_output_r > ioSRAM_DQ[9:0]) ||
                                        //(cl_mode_r == EROSION &&  cl_output_r < ioSRAM_DQ[9:0])    ) begin
                                    //cl_output_w = ioSRAM_DQ[9:0];
                                //end 
                                //if (load_counter_r < CL_KERNEL_SIZE * CL_KERNEL_SIZE - 1) begin
                                    //if (cl_mode_r == DILATION)
                                        //sram_addr_w = FRONT_START_ADDR + (v_counter_r-CL_KERNEL_SIZE/2+(load_counter_w/CL_KERNEL_SIZE)) * H_SYNC_ACT + (h_counter_r-CL_KERNEL_SIZE/2+(load_counter_w%CL_KERNEL_SIZE));
                                    //else
                                        //sram_addr_w = BACK_START_ADDR + (v_counter_r-CL_KERNEL_SIZE/2+(load_counter_w/CL_KERNEL_SIZE)) * H_SYNC_ACT + (h_counter_r-CL_KERNEL_SIZE/2+(load_counter_w%CL_KERNEL_SIZE));
                                //end else begin
                                    //if (cl_mode_r == DILATION)
                                        //sram_addr_w = BACK_START_ADDR + v_counter_r * H_SYNC_ACT + h_counter_r;
                                    //else
                                        //sram_addr_w = FRONT_START_ADDR + v_counter_r * H_SYNC_ACT + h_counter_r;
                                    //cl_state_w = CL_WRITE;
                                    //load_counter_w = 0;
                                    //sram_write_buffer_w = cl_output_r;
                                //end
                            //end
                        end
                        CL_WRITE: begin
                            if (load_counter_r < 1) begin
                                we_w = 0;
                                load_counter_w = load_counter_r + 1;
                            end else begin
                                we_w = 1;
                                cl_state_w = CL_CHECK;
                                if (h_counter_r < H_SYNC_ACT-CL_KERNEL_SIZE/2-1)
                                    h_counter_w = h_counter_r + 1;
                                else if (h_counter_r == H_SYNC_ACT-CL_KERNEL_SIZE/2-1 && v_counter_r < V_SYNC_ACT-CL_KERNEL_SIZE/2-1) begin
                                    h_counter_w = 0;
                                    v_counter_w = v_counter_r + 1;
                                end else if (cl_mode_r == DILATION) begin
                                    cl_mode_w = EROSION;
                                    h_counter_w = CL_KERNEL_SIZE/2;
                                    v_counter_w = CL_KERNEL_SIZE/2;
                                end else
                                    cl_state_w = CL_END;
                            end
                        end
                        CL_END: begin
                            state_w = WRITE_BUFFER_MODE;
                            dip_state_w = DIP_NF;
                            nf_state_w = NF_INIT;
                        end
                    endcase
                end

                DIP_NF: begin
                    case(nf_state_r)
                        NF_INIT: begin
                            h_counter_w = 1;
                            v_counter_w = 1;
                            sram_addr_w = FRONT_START_ADDR + H_SYNC_ACT + 1;
                            nf_state_w = NF_CHECK;
                        end
                        NF_CHECK: begin
                            load_counter_w = 0;
                            if (ioSRAM_DQ[7:0] == 255) begin
                                if (h_counter_r < H_SYNC_ACT-2) begin
                                    h_counter_w = h_counter_r + 1;
                                    sram_addr_w = FRONT_START_ADDR + v_counter_r * H_SYNC_ACT + h_counter_w;
                                end else if (h_counter_r == H_SYNC_ACT-2 && v_counter_r < V_SYNC_ACT-2) begin
                                    h_counter_w = 1;
                                    v_counter_w = v_counter_r + 1;
                                    sram_addr_w = FRONT_START_ADDR + v_counter_w * H_SYNC_ACT;
                                end else
                                    nf_state_w = NF_END;
                            end else begin
                                sram_addr_w = FRONT_START_ADDR + (v_counter_r-1) * H_SYNC_ACT + h_counter_r - 1;
                                nf_state_w = NF_LOAD_BLOCK;
                            end
                        end
                        NF_LOAD_BLOCK: begin
                            load_counter_w = load_counter_r + 1;
                            if (load_counter_r == 1 || load_counter_r == 3 || load_counter_r == 5) begin
                                if (ioSRAM_DQ[7:0] != 255) begin
                                    nf_state_w = NF_CHECK;
                                    load_counter_w = 0;
                                    if (h_counter_r < H_SYNC_ACT-2) begin
                                        h_counter_w = h_counter_r + 1;
                                        sram_addr_w = FRONT_START_ADDR + v_counter_r * H_SYNC_ACT + h_counter_w;
                                    end else if (h_counter_r == H_SYNC_ACT-2 && v_counter_r < V_SYNC_ACT-2) begin
                                        h_counter_w = 1;
                                        v_counter_w = v_counter_r + 1;
                                        sram_addr_w = FRONT_START_ADDR + v_counter_w * H_SYNC_ACT;
                                    end else
                                        nf_state_w = NF_END;
                                end else begin
                                    sram_addr_w = FRONT_START_ADDR + (v_counter_r-1+(load_counter_w/3)) * H_SYNC_ACT + (h_counter_r-1+(load_counter_w%3));
                                end
                            end else if (load_counter_r == 7) begin
                                if (ioSRAM_DQ[7:0] == 255) begin
                                    sram_addr_w = BACK_START_ADDR + v_counter_r * H_SYNC_ACT + h_counter_r;
                                    load_counter_w = 0;
                                    nf_state_w = NF_WRITE;
                                    sram_write_buffer_w = 255;
                                end else begin
                                    nf_state_w = NF_CHECK;
                                    load_counter_w = 0;
                                    if (h_counter_r < H_SYNC_ACT-2) begin
                                        h_counter_w = h_counter_r + 1;
                                        sram_addr_w = FRONT_START_ADDR + v_counter_r * H_SYNC_ACT + h_counter_w;
                                    end else if (h_counter_r == H_SYNC_ACT-2 && v_counter_r < V_SYNC_ACT-2) begin
                                        h_counter_w = 1;
                                        v_counter_w = v_counter_r + 1;
                                        sram_addr_w = FRONT_START_ADDR + v_counter_w * H_SYNC_ACT;
                                    end else
                                        nf_state_w = NF_END;
                                end
                            end else begin
                                sram_addr_w = FRONT_START_ADDR + (v_counter_r-1+(load_counter_w/3)) * H_SYNC_ACT + (h_counter_r-1+(load_counter_w%3));
                            end
                        end
                        NF_WRITE: begin
                            if (load_counter_r < 1) begin
                                we_w = 0;
                                load_counter_w = load_counter_r + 1;
                            end else begin
                                we_w = 1;
                                nf_state_w = NF_CHECK;
                                load_counter_w = 0;
                                if (h_counter_r < H_SYNC_ACT-2) begin
                                    h_counter_w = h_counter_r + 1;
                                    sram_addr_w = FRONT_START_ADDR + v_counter_r * H_SYNC_ACT + h_counter_w;
                                end else if (h_counter_r == H_SYNC_ACT-1 && v_counter_r < V_SYNC_ACT-2) begin
                                    h_counter_w = 1;
                                    v_counter_w = v_counter_r + 1;
                                    sram_addr_w = FRONT_START_ADDR + v_counter_w * H_SYNC_ACT;
                                end else
                                    nf_state_w = NF_END;
                            end
                        end
                        NF_END: begin
                            //dip_state_w = DIP_END;
                            state_w = WRITE_BUFFER_MODE;
                            dip_state_w = DIP_MAP;
                            map_state_w = MAP_INIT;
                        end
                    endcase
                end

                DIP_END: begin
                    state_w = WRITE_BUFFER_MODE;
                end
            endcase
        end
        WRITE_BUFFER_MODE:
            begin
                if (next_bounced_w != next_bounced_r && dip_state_r != DIP_END ) begin
                    state_w = DIP_MODE;
                end
                // set sram read address
                if(	H_Cont_r>=X_START-1 	&& H_Cont_r<X_START+H_SYNC_ACT-1 &&
                    V_Cont_r>=Y_START+v_mask 	&& V_Cont_r<Y_START+V_SYNC_ACT ) begin
                    //if (dip_state_r == DIP_END)
                        sram_addr_w = BACK_START_ADDR + (H_Cont_r - X_START + 1) + (V_Cont_r - Y_START) * H_SYNC_ACT;
                    //else
                        //sram_addr_w = (H_Cont_r - X_START + 1) + (V_Cont_r - Y_START) * H_SYNC_ACT;
                end
                // read data from sram
                if(	H_Cont_r>=X_START 	&& H_Cont_r<X_START+H_SYNC_ACT &&
                    V_Cont_r>=Y_START+v_mask 	&& V_Cont_r<Y_START+V_SYNC_ACT ) begin
                    //if (dip_state_r == DIP_END) begin
                        //mVGA_R_w[9:2] = 8'b11111111 - ioSRAM_DQ[7:0];
                        //mVGA_G_w[9:2] = 8'b11111111 - ioSRAM_DQ[7:0];
                        //mVGA_B_w[9:2] = 8'b11111111 - ioSRAM_DQ[7:0];
                    //end else begin
                        mVGA_R_w[9:2] = ioSRAM_DQ[7:0];
                        mVGA_G_w[9:2] = ioSRAM_DQ[7:0];
                        mVGA_B_w[9:2] = ioSRAM_DQ[7:0];
                    //end
                end else begin
                    mVGA_R_w = 0;
                    mVGA_G_w = 0;
                    mVGA_B_w = 0;
                end
            end
        DRAW_MODE: begin
            case(draw_state_r)
                DRAW_INIT: begin
                    draw_state_w = DRAW_START;
                    h_counter_w = 0;
                    v_counter_w = 0;
                    load_counter_
                end
                DRAW_START: begin
                    // find max

                end
                DRAW_FIND_PATH: begin
                end
                DRAW_SEND: begin
                end
                DRAW_END: begin
                end
            endcase
        end
    endcase
end

always_ff@(posedge iCLK or negedge iRST_N) begin
    if (!iRST_N) begin
        // request
        oRequest_r          <=  0;
        next_bounced_r      <=  0;
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
        fil_state_r         <=  FIL_INIT;
        fil_sum_r           <=  0;
        fil_orig_val_r      <=  0;
        // contrast enhancement
        en_state_r          <=  EN_INIT;
        for (int i=0; i < 255; i=i+1)
            histo_r[i]      <=  0;
        // histogram
        his_state_r         <=  HIS_INIT;
        his_max_value_r     <=  0;
        his_max_idx_r       <=  0;
        // closing
        cl_state_r          <=  CL_INIT;
        cl_output_r         <=  0;
        cl_mode_r           <=  DILATION;
        // novel filter
        nf_state_r          <=  NF_INIT;
        // mapping line thickness
        map_state_r         <=  MAP_INIT;
        map_value_r         <=  0;

    end else begin
        // request
        oRequest_r          <=  oRequest_w;
        next_bounced_r      <=  next_bounced_w;
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
        histo_r             <=  histo_w;
        // histogram
        his_state_r         <=  his_state_w;
        his_max_value_r     <=  his_max_value_w;
        his_max_idx_r       <=  his_max_idx_w;
        // closing
        cl_state_r          <=  cl_state_w;
        cl_output_r         <=  cl_output_w;
        cl_mode_r           <=  cl_mode_w;
        // novel filter
        nf_state_r          <=  nf_state_w;
        // mapping line thickness
        map_state_r         <=  map_state_w;
        map_value_r         <=  map_value_w;
    end
end

endmodule
