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
						iZOOM_MODE_SW,
                        oData,
                        oStart
							);




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
output  reg [335:0] oData;
output  reg         oStart;
logic [355:0]       out_data_r, out_data_w;
logic               out_start_r, out_start_w;
assign  oData = out_data_r;
assign  oStart = out_start_r;

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

// Define draw states
parameter   DRAW_INIT       =   3'b000;
parameter   DRAW_START      =   3'b001;
parameter   DRAW_FIND_DIR   =   3'b010;
parameter   DRAW_FIND_PATH  =   3'b011;
parameter   DRAW_PROCESS    =   3'b100;
parameter   DRAW_SEND       =   3'b101;
parameter   DRAW_END        =   3'b110;

parameter   DRAW_H_OFFSET   =   200;
parameter   DRAW_V_OFFSET   =   50;

parameter   DRAW_TIMEOUT    =   200000000;

logic   [2:0]   draw_state_r, draw_state_w;

logic   [19:0]  draw_start_pt_r, draw_start_pt_w;
logic   [19:0]  draw_end_pt_r, draw_end_pt_w;
logic   [19:0]  draw_pos_r, draw_pos_w;
logic   [7:0]   draw_dir_r, draw_dir_w;
logic   [24:0]  draw_energy_r, draw_energy_w;
logic   [9:0]   draw_max_r, draw_max_w;
logic   [9:0]   draw_dir_max_r, draw_dir_max_w;
logic   [31:0]  draw_timeout_r, draw_timeout_w;
logic [9:0] draw_640;
logic [8:0] draw_480;
logic [5:0] h24, v38;
logic [5:0] h1, h2, v1, v2;
logic [9:0] idx1, idx2, idx3, idx4;
logic [12:0] real_x, real_y, real_z;

// (19 * 12) * 3 = 684
parameter bit [32:0] COEF [683:0] = '{
4669,181,5244,4578,197,5200,4491,180,5232,4377,234,5208,4290,243,5198,4161,252,5207,4117,250,5207,3988,239,5198,3901,221,5187,3770,221,5189,3704,209,5189,3590,174,5223,
4669,181,5244,4578,197,5200,4491,180,5232,4377,234,5208,4290,243,5198,4161,252,5207,4117,250,5207,3988,239,5198,3901,221,5187,3770,221,5189,3704,209,5189,3590,174,5223,
4641,376,5194,4574,396,5213,4448,405,5192,4363,432,5192,4280,439,5191,4177,450,5201,4117,427,5153,3993,422,5163,3910,396,5173,3808,418,5182,3703,403,5203,3599,407,5184,
4629,588,5181,4551,574,5200,4472,569,5228,4371,599,5163,4272,592,5163,4175,588,5163,4096,622,5200,3979,602,5163,3919,584,5172,3802,592,5172,3701,573,5209,3618,555,5181,
4629,715,5155,4535,701,5155,4513,720,5146,4358,746,5148,4264,751,5166,4171,751,5148,4096,769,5158,3984,760,5140,3909,747,5157,3795,733,5166,3719,738,5182,3621,712,5164,
4601,896,5159,4532,866,5134,4439,875,5201,4349,874,5152,4257,906,5145,4167,913,5178,4096,902,5145,3988,889,5144,3898,885,5152,3809,883,5160,3737,890,5160,3627,888,5177,
4616,1016,5139,4512,1012,5155,4424,1013,5189,4334,1057,5158,4249,1041,5166,4165,1045,5175,4096,1040,5150,3993,1026,5149,3909,1050,5175,3805,1041,5134,3751,1020,5157,3594,1025,5155,
4591,1169,5162,4494,1148,5154,4422,1187,5209,4323,1187,5149,4257,1214,5166,4161,1182,5134,4096,1189,5143,3983,1214,5152,3884,1180,5141,3816,1166,5155,3749,1150,5146,3619,1180,5178,
4587,1291,5139,4490,1297,5162,4362,1312,5141,4328,1333,5150,4252,1313,5135,4158,1319,5128,4096,1309,5135,3987,1310,5135,3893,1315,5135,3832,1318,5149,3749,1286,5139,3639,1295,5131,
4581,1414,5132,4486,1427,5127,4467,1459,5130,4317,1460,5131,4244,1445,5137,4156,1451,5131,4096,1464,5159,3962,1436,5130,3905,1468,5172,3832,1477,5159,3751,1429,5121,3648,1447,5155,
4547,1596,5153,4478,1579,5132,4404,1603,5148,4304,1620,5157,4236,1596,5111,4138,1611,5112,4081,1607,5125,3970,1593,5122,3900,1592,5148,3814,1584,5134,3742,1578,5120,3656,1585,5145,
4552,1722,5143,4458,1715,5150,4390,1711,5126,4308,1729,5135,4227,1742,5136,4149,1722,5122,4083,1721,5122,3976,1725,5122,3897,1728,5135,3831,1734,5135,3763,1724,5132,3650,1707,5117,
4540,1857,5144,4437,1848,5150,4387,1840,5109,4307,1875,5131,4220,1880,5127,4145,1902,5146,4071,1876,5127,3983,1854,5107,3909,1864,5125,3833,1862,5130,3752,1836,5114,3660,1827,5135,
4533,1950,5125,4442,1973,5128,4378,1941,5154,4294,2014,5136,4224,2026,5148,4154,2005,5136,4072,2032,5144,3989,1984,5107,3907,1987,5117,3843,1957,5102,3754,1999,5148,3660,1962,5121,
4501,2104,5143,4430,2123,5141,4362,2123,5137,4285,2112,5112,4217,2126,5114,4139,2137,5136,4074,2133,5112,3985,2114,5118,3919,2119,5118,3852,2123,5127,3770,2104,5128,3664,2092,5130,
4515,2200,5114,4422,2233,5117,4363,2272,5137,4281,2255,5122,4209,2257,5128,4148,2248,5113,4075,2274,5131,3982,2240,5117,3912,2272,5135,3850,2268,5137,3769,2227,5102,3680,2216,5126,
4487,2370,5135,4431,2352,5121,4359,2361,5123,4280,2365,5113,4208,2415,5139,4143,2402,5134,4076,2375,5116,3971,2380,5116,3920,2352,5116,3855,2378,5127,3796,2382,5143,3681,2360,5114,
4473,2475,5143,4418,2466,5134,4336,2515,5144,4264,2508,5136,4202,2511,5143,4140,2517,5148,4069,2469,5127,3987,2472,5127,3915,2488,5134,3854,2506,5139,3782,2461,5113,3691,2444,5120,
4460,2608,5140,4398,2612,5152,4323,2649,5137,4250,2649,5144,4200,2656,5141,4136,2616,5121,4071,2653,5141,3998,5553,5131,3930,2622,5127,3861,2611,5123,3779,2630,5143,3712,2600,5143
};

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

parameter   EN_COUNT_HISTO  = 2'b00;
parameter   EN_COUNT_CUMUL  = 2'b01;
parameter   EN_ENHANCE      = 2'b10;
parameter   EN_END          = 2'b11;

logic   [1:0]   en_state_r, en_state_w;
logic   [18:0]  histo_r [255:0], histo_w [255:0];

// Histogram Controller

parameter   HIS_COUNT_HISTO = 2'b00;
parameter   HIS_GET_MAX     = 2'b01;
parameter   HIS_ELIM        = 2'b10;
parameter   HIS_END         = 2'b11;

logic   [1:0]   his_state_r, his_state_w;
logic   [18:0]  his_max_value_r, his_max_value_w;
logic   [12:0]  his_max_idx_r, his_max_idx_w;

// Closing Controller

parameter   CL_CHECK        =   2'b00;
parameter   CL_LOAD_BLOCK   =   2'b01;
parameter   CL_WRITE        =   2'b10;
parameter   CL_END          =   2'b11;

parameter   DILATION        =   1'b0;
parameter   EROSION         =   1'b1;
parameter   CL_KERNEL_SIZE  =   3;

logic   [1:0]   cl_state_r, cl_state_w;
logic   [9:0]   cl_output_r, cl_output_w;
logic           cl_mode_r, cl_mode_w;

// Novel Filter
parameter   NF_CHECK        =   2'b00;
parameter   NF_LOAD_BLOCK   =   2'b01;
parameter   NF_WRITE        =   2'b10;
parameter   NF_END          =   2'b11;

logic   [1:0]   nf_state_r, nf_state_w;

// Generate Sketch Map

parameter   MAP_CHECK       =   2'b00;
parameter   MAP_LOAD_BLOCK  =   2'b01;
parameter   MAP_WRITE       =   2'b10;
parameter   MAP_END         =   2'b11;

parameter   MAP_KERNEL_SIZE =   11;
parameter   MAP_THRES       =   30;

logic   [1:0]   map_state_r, map_state_w;
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

    // draw
    draw_start_pt_w = draw_start_pt_r;
    draw_end_pt_w   = draw_end_pt_r;
    draw_dir_w      = draw_dir_r;
    draw_energy_w   = draw_energy_r;
    draw_max_w      = draw_max_r;
    draw_dir_max_w  = draw_dir_max_r;

    ////////////////////////////

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
                            // Map straight from histo
                            dip_state_w = DIP_MAP;
                            map_state_w = MAP_CHECK;
                            sram_addr_w = FRONT_START_ADDR;
                            h_counter_w = 0;
                            v_counter_w = 0;

                            // perform closing
                            //dip_state_w = DIP_CLOSING;
                            //cl_state_w = CL_CHECK;
                            //cl_mode_w = DILATION;
                            //h_counter_w = CL_KERNEL_SIZE/2;
                            //v_counter_w = CL_KERNEL_SIZE/2;
                        end
                    endcase
                end

                DIP_MAP: begin
                    case(map_state_r)
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
                                if (h_counter_r < H_SYNC_ACT-1)
                                    h_counter_w = h_counter_r + 1;
                                else if (h_counter_r == H_SYNC_ACT-1 && v_counter_r < V_SYNC_ACT-1) begin
                                    h_counter_w = 0;
                                    v_counter_w = v_counter_r + 1;
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
                            dip_state_w = DIP_NF;
                            nf_state_w = NF_CHECK;
                            h_counter_w = 1;
                            v_counter_w = 1;
                            load_counter_w = 0;
                        end
                    endcase
                end

                DIP_NF: begin
                    case(nf_state_r)
                        NF_CHECK: begin
                            if (load_counter_r == 0) begin
                                sram_addr_w = FRONT_START_ADDR + v_counter_r * H_SYNC_ACT + h_counter_r;
                                load_counter_w = load_counter_r + 1;
                            end else begin
                                load_counter_w = 0;
                                if (ioSRAM_DQ[7:0] == 255) begin
                                    if (h_counter_r < H_SYNC_ACT-2)
                                        h_counter_w = h_counter_r + 1;
                                    else if (h_counter_r == H_SYNC_ACT-2 && v_counter_r < V_SYNC_ACT-2) begin
                                        h_counter_w = 0;
                                        v_counter_w = v_counter_r + 1;
                                    end else
                                        nf_state_w = NF_END;
                                end else begin
                                    sram_addr_w = FRONT_START_ADDR + (v_counter_r-1) * H_SYNC_ACT + h_counter_r - 1;
                                    nf_state_w = NF_LOAD_BLOCK;
                                end
                            end
                        end
                        NF_LOAD_BLOCK: begin
                            load_counter_w = load_counter_r + 1;
                            if (load_counter_r == 1 || load_counter_r == 3 || load_counter_r == 5) begin
                                if (ioSRAM_DQ[7:0] != 255) begin
                                    nf_state_w = NF_CHECK;
                                    load_counter_w = 0;
                                    if (h_counter_r < H_SYNC_ACT-2)
                                        h_counter_w = h_counter_r + 1;
                                    else if (h_counter_r == H_SYNC_ACT-2 && v_counter_r < V_SYNC_ACT-2) begin
                                        h_counter_w = 0;
                                        v_counter_w = v_counter_r + 1;
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
                                    if (h_counter_r < H_SYNC_ACT-2)
                                        h_counter_w = h_counter_r + 1;
                                    else if (h_counter_r == H_SYNC_ACT-2 && v_counter_r < V_SYNC_ACT-2) begin
                                        h_counter_w = 0;
                                        v_counter_w = v_counter_r + 1;
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
                                if (h_counter_r < H_SYNC_ACT-2)
                                    h_counter_w = h_counter_r + 1;
                                else if (h_counter_r == H_SYNC_ACT-1 && v_counter_r < V_SYNC_ACT-2) begin
                                    h_counter_w = 0;
                                    v_counter_w = v_counter_r + 1;
                                end else
                                    nf_state_w = NF_END;
                            end
                        end
                        NF_END: begin
                            dip_state_w = DIP_END;
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
                if(iNext && dip_state_r == DIP_END)
                    state_w = DRAW_MODE;
                // set sram read address
                if(	H_Cont_r>=X_START-1 	&& H_Cont_r<X_START+H_SYNC_ACT-1 &&
                    V_Cont_r>=Y_START+v_mask 	&& V_Cont_r<Y_START+V_SYNC_ACT ) begin
                    sram_addr_w = BACK_START_ADDR + (H_Cont_r - X_START + 1) + (V_Cont_r - Y_START) * H_SYNC_ACT;
                    //sram_addr_w = (H_Cont_r - X_START + 1) + (V_Cont_r - Y_START) * H_SYNC_ACT;
                end
                // read data from sram
                if(	H_Cont_r>=X_START 	&& H_Cont_r<X_START+H_SYNC_ACT &&
                    V_Cont_r>=Y_START+v_mask 	&& V_Cont_r<Y_START+V_SYNC_ACT ) begin
                    //mVGA_R_w[9:2] = ioSRAM_DQ[7:0];
                    //mVGA_G_w[9:2] = ioSRAM_DQ[7:0];
                    //mVGA_B_w[9:2] = ioSRAM_DQ[7:0];
                    mVGA_R_w[9:2] = 8'b11111111 - ioSRAM_DQ[7:0];
                    mVGA_G_w[9:2] = 8'b11111111 - ioSRAM_DQ[7:0];
                    mVGA_B_w[9:2] = 8'b11111111 - ioSRAM_DQ[7:0];
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
                    h_counter_w = DRAW_H_OFFSET+1;
                    v_counter_w = DRAW_H_OFFSET+1;
                    draw_max_w = 0;
                    sram_addr_w = v_counter_w * H_SYNC_ACT + h_counter_w;
                    draw_start_pt_w = sram_addr_w;
                    draw_energy_w = 0;
                end
                DRAW_START: begin
                    // find max
                    draw_energy_w = draw_energy_r + ioSRAM_DQ[9:0];
                    if (ioSRAM_DQ[9:0] > draw_max_r) begin
                        draw_max_w = ioSRAM_DQ[9:0];
                        draw_start_pt_w = sram_addr_r;
                    end
                    if (h_counter_r < H_SYNC_ACT - DRAW_H_OFFSET - 2) begin
                        h_counter_w = h_counter_r + 1;
                    end else if (h_counter_r == H_SYNC_ACT - DRAW_H_OFFSET - 2 && v_counter_r < V_SYNC_ACT - DRAW_V_OFFSET - 2) begin
                        h_counter_w = DRAW_H_OFFSET + 1;
                        v_counter_w = v_counter_r + 1;
                    end else begin
                        draw_state_w = DRAW_FIND_DIR;
                        load_counter_w = 0;
                        sram_addr_w = draw_start_pt_r-H_SYNC_ACT-1;
                        draw_dir_max_w = 0;
                        draw_energy_w = draw_energy_w - draw_max_w;
                    end
                end
                DRAW_FIND_DIR: begin
                    load_counter_w = load_counter_r + 1;
                    if (load_counter_r == 0) begin
                        if (ioSRAM_DQ[9:0] > draw_dir_max_r) begin
                            draw_dir_w = 0;
                            draw_dir_max_w = ioSRAM_DQ[9:0];
                        end
                        sram_addr_w = sram_addr_r + 1;
                    end else if (load_counter_r == 1) begin
                        if (ioSRAM_DQ[9:0] > draw_dir_max_r) begin
                            draw_dir_w = 1;
                            draw_dir_max_w = ioSRAM_DQ[9:0];
                        end
                        sram_addr_w = sram_addr_r + 1;
                    end else if (load_counter_r == 2) begin
                        if (ioSRAM_DQ[9:0] > draw_dir_max_r) begin
                            draw_dir_w = 2;
                            draw_dir_max_w = ioSRAM_DQ[9:0];
                        end
                        sram_addr_w = sram_addr_r + H_SYNC_ACT - 2;
                    end else if (load_counter_r == 3) begin
                        if (ioSRAM_DQ[9:0] > draw_dir_max_r) begin
                            draw_dir_w = 3;
                            draw_dir_max_w = ioSRAM_DQ[9:0];
                        end
                        sram_addr_w = sram_addr_r + 2;
                    end else if (load_counter_r == 4) begin
                        if (ioSRAM_DQ[9:0] > draw_dir_max_r) begin
                            draw_dir_w = 4;
                            draw_dir_max_w = ioSRAM_DQ[9:0];
                        end
                        sram_addr_w = sram_addr_r + H_SYNC_ACT - 2;
                    end else if (load_counter_r == 5) begin
                        if (ioSRAM_DQ[9:0] > draw_dir_max_r) begin
                            draw_dir_w = 5;
                            draw_dir_max_w = ioSRAM_DQ[9:0];
                        end
                        sram_addr_w = sram_addr_r + 1;
                    end else if (load_counter_r == 6) begin
                        if (ioSRAM_DQ[9:0] > draw_dir_max_r) begin
                            draw_dir_w = 6;
                            draw_dir_max_w = ioSRAM_DQ[9:0];
                        end
                        sram_addr_w = sram_addr_r + 1;
                    end else begin
                        if (ioSRAM_DQ[9:0] > draw_dir_max_r) begin
                            draw_dir_w = 7;
                            draw_dir_max_w = ioSRAM_DQ[9:0];
                        end
                        draw_state_w = DRAW_FIND_PATH;
                        if (draw_dir_w == 0) begin
                            sram_addr_w = draw_start_pt_r - H_SYNC_ACT - 1;
                        end else if (draw_dir_w == 1) begin
                            sram_addr_w = draw_start_pt_r - H_SYNC_ACT;
                        end else if (draw_dir_w == 2) begin
                            sram_addr_w = draw_start_pt_r - H_SYNC_ACT + 1;
                        end else if (draw_dir_w == 3) begin
                            sram_addr_w = draw_start_pt_r - 1;
                        end else if (draw_dir_w == 4) begin
                            sram_addr_w = draw_start_pt_r + 1;
                        end else if (draw_dir_w == 5) begin
                            sram_addr_w = draw_start_pt_r + H_SYNC_ACT - 1;
                        end else if (draw_dir_w == 6) begin
                            sram_addr_w = draw_start_pt_r + H_SYNC_ACT;
                        end else begin
                            sram_addr_w = draw_start_pt_r + H_SYNC_ACT + 1;
                        end
                    end
                end
                DRAW_FIND_PATH: begin
                    draw_energy_w = draw_energy_r - ioSRAM_DQ[7:0];
                    if (draw_dir_w == 0) begin
                        if (sram_addr_r/H_SYNC_ACT-1 == DRAW_V_OFFSET ||
                            sram_addr_r%H_SYNC_ACT-1 == DRAW_H_OFFSET ||
                            ioSRAM_DQ[7:0] == 0) begin
                            draw_end_pt_w = sram_addr_r;
                            draw_state_w = DRAW_PROCESS;
                        end else
                            sram_addr_w = sram_addr_r - H_SYNC_ACT - 1;
                    end else if (draw_dir_w == 1) begin
                        if (sram_addr_r/H_SYNC_ACT-1 == DRAW_V_OFFSET ||
                            ioSRAM_DQ[7:0] == 0) begin
                            draw_end_pt_w = sram_addr_r;
                            draw_state_w = DRAW_PROCESS;
                        end else
                            sram_addr_w = sram_addr_r - H_SYNC_ACT;
                    end else if (draw_dir_w == 2) begin
                        if (sram_addr_r/H_SYNC_ACT-1 == DRAW_V_OFFSET ||
                            sram_addr_r%H_SYNC_ACT+1 == H_SYNC_ACT - DRAW_H_OFFSET - 1 ||
                            ioSRAM_DQ[7:0] == 0) begin
                            draw_end_pt_w = sram_addr_r;
                            draw_state_w = DRAW_PROCESS;
                        end else
                            sram_addr_w = sram_addr_r - H_SYNC_ACT + 1;
                    end else if (draw_dir_w == 3) begin
                        if (sram_addr_r%H_SYNC_ACT-1 == DRAW_H_OFFSET ||
                            ioSRAM_DQ[7:0] == 0) begin
                            draw_end_pt_w = sram_addr_r;
                            draw_state_w = DRAW_PROCESS;
                        end else
                            sram_addr_w = sram_addr_r - 1;
                    end else if (draw_dir_w == 4) begin
                        if (sram_addr_r%H_SYNC_ACT-1 == H_SYNC_ACT - DRAW_H_OFFSET - 1 ||
                            ioSRAM_DQ[7:0] == 0) begin
                            draw_end_pt_w = sram_addr_r;
                            draw_state_w = DRAW_PROCESS;
                        end else
                            sram_addr_w = sram_addr_r + 1;
                    end else if (draw_dir_w == 5) begin
                        if (sram_addr_r/H_SYNC_ACT+1 == V_SYNC_ACT - DRAW_V_OFFSET - 1 ||
                            sram_addr_r%H_SYNC_ACT-1 == DRAW_H_OFFSET ||
                            ioSRAM_DQ[7:0] == 0) begin
                            draw_end_pt_w = sram_addr_r;
                            draw_state_w = DRAW_PROCESS;
                        end else
                            sram_addr_w = sram_addr_r + H_SYNC_ACT - 1;
                    end else if (draw_dir_w == 6) begin
                        if (sram_addr_r/H_SYNC_ACT+1 == V_SYNC_ACT - DRAW_V_OFFSET - 1 ||
                            ioSRAM_DQ[7:0] == 0) begin
                            draw_end_pt_w = sram_addr_r;
                            draw_state_w = DRAW_PROCESS;
                        end else
                            sram_addr_w = sram_addr_r + H_SYNC_ACT;
                    end else begin
                        if (sram_addr_r/H_SYNC_ACT+1 == V_SYNC_ACT - DRAW_V_OFFSET - 1 ||
                            sram_addr_r%H_SYNC_ACT+1 == H_SYNC_ACT - DRAW_H_OFFSET - 1 ||
                            ioSRAM_DQ[7:0] == 0) begin
                            draw_end_pt_w = sram_addr_r;
                            draw_state_w = DRAW_PROCESS;
                            load_counter_w = 0;
                        end else
                            sram_addr_w = sram_addr_r + H_SYNC_ACT + 1;
                    end
                end
                DRAW_PROCESS: begin
                    if (load_counter_r == 0) begin
                        draw_640 = draw_start_pt_r % H_SYNC_ACT;
                        draw_480 = draw_start_pt_r / H_SYNC_ACT;
                    end else begin
                        draw_640 = draw_end_pt_r % H_SYNC_ACT;
                        draw_480 = draw_end_pt_r / H_SYNC_ACT;
                    end

                    h24 = draw_640 / 20;
                    v38 = draw_480 / 20;

                    if (h24[0]==1) begin
                        h1 = h24/2;
                        h2 = h24/2 + 1;
                    end else begin
                        h1 = h24/2;
                        h2 = h24/21;
                    end
                    if (v38[0]==1) begin
                        v1 = v38/2;
                        v2 = v38/2 + 1;
                    end else begin
                        v1 = v38/2;
                        v2 = v38/2;
                    end
                    idx1 = 3 * h1 + 36 * v1;
                    idx2 = 3 * h2 + 36 * v1;
                    idx3 = 3 * h1 + 36 * v2;
                    idx4 = 3 * h2 + 36 * v2;
                    real_x = (COEF[idx1]+COEF[idx2]+COEF[idx3]+COEF[idx4])/4;
                    real_y = (COEF[idx1+1]+COEF[idx2+1]+COEF[idx3+1]+COEF[idx4+1])/4;
                    real_z = (COEF[idx1+2]+COEF[idx2+2]+COEF[idx3+2]+COEF[idx4+2])/4;

                    load_counter_w = load_counter_r + 1;

                    if (load_counter_r == 0) begin
                        out_data_w[311:-32] = real_x;
                        out_data_w[263:-32] = real_y;
                        out_data_w[215:-32] = real_z;
                    end else begin
                        out_data_w[335:-8] = 8'b00001111; //{
                        out_data_w[327:-8] = 8'b00110011; //[
                        out_data_w[319:-8] = 8'b01010101; //(
                        out_data_w[279:-8] = 8'b10101010; //)
                        out_data_w[271:-8] = 8'b01010101; //(
                        out_data_w[231:-8] = 8'b10101010; //)
                        out_data_w[223:-8] = 8'b01010101; //(
                        out_data_w[183:-8] = 8'b10101010; //)
                        out_data_w[175:-8] = 8'b11001100; //]
                        out_data_w[167:-8] = 8'b00110011; //[
                        out_data_w[159:-8] = 8'b01010101;
                        out_data_w[151:-32] = real_x;
                        out_data_w[119:-8] = 8'b10101010;
                        out_data_w[111:-8] = 8'b01010101;
                        out_data_w[103:-32] = real_y;
                        out_data_w[71:-8] = 8'b10101010;
                        out_data_w[63:-8] = 8'b01010101;
                        out_data_w[55:-32] = real_z;
                        out_data_w[23:-8] = 8'b10101010;
                        out_data_w[15:-8] = 8'b11001100; //]
                        out_data_w[7:-8] = 8'b11110000;
                        draw_state_w = DRAW_SEND;
                        out_start_w = 1;
                    end
                end
                DRAW_SEND: begin
                    out_start_w = 0;
                    draw_timeout_w = draw_timeout_r + 1;
                    if (draw_timeout_r == DRAW_TIMEOUT) begin
                        draw_state_w = DRAW_START;
                        h_counter_w = DRAW_H_OFFSET+1;
                        v_counter_w = DRAW_H_OFFSET+1;
                        draw_max_w = 0;
                        sram_addr_w = v_counter_w * H_SYNC_ACT + h_counter_w;
                        draw_start_pt_w = sram_addr_w;
                    end
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
        for (int i=0; i < 255; i=i+1)
            histo_r[i]      <=  0;
        // histogram
        his_state_r         <=  HIS_COUNT_HISTO;
        his_max_value_r     <=  0;
        his_max_idx_r       <=  0;
        // closing
        cl_state_r          <=  CL_CHECK;
        cl_output_r         <=  0;
        cl_mode_r           <=  DILATION;
        // novel filter
        nf_state_r          <=  NF_CHECK;
        // mapping line thickness
        map_state_r         <=  MAP_CHECK;
        map_value_r         <=  0;
        // draw
        draw_start_pt_r     <=  0;
        draw_end_pt_r       <=  0;
        draw_dir_r          <=  0;
        draw_energy_r       <=  '1;
        draw_max_r          <=  0;
        draw_dir_max_r      <=  0;

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
        // draw
        draw_start_pt_r     <=  draw_start_pt_w;
        draw_end_pt_r       <=  draw_end_pt_w;
        draw_dir_r          <=  draw_dir_w;
        draw_energy_r       <=  draw_energy_w;
        draw_max_r          <=  draw_max_w;
        draw_dir_max_r      <=  draw_dir_max_w;
    end
end

endmodule
