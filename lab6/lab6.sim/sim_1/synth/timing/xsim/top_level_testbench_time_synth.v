// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.2 (win64) Build 4029153 Fri Oct 13 20:14:34 MDT 2023
// Date        : Thu Oct 17 21:00:58 2024
// Host        : EGR-REMOTE-02 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode timesim -nolib -sdf_anno true -force -file
//               H:/EGRE365/lab6/lab6.sim/sim_1/synth/timing/xsim/top_level_testbench_time_synth.v
// Design      : top_level
// Purpose     : This verilog netlist is a timing simulation representation of the design and should not be modified or
//               synthesized. Please ensure that this netlist is used with the corresponding SDF file.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps
`define XIL_TIMING

module clock_divider
   (LED_OBUF,
    CLK);
  output [0:0]LED_OBUF;
  input CLK;

  wire CLK;
  wire [0:0]LED_OBUF;
  wire [4:0]count;
  wire \div_clk.count[4]_i_1_n_0 ;
  wire [4:0]p_1_in;
  wire sclki_i_1_n_0;

  LUT1 #(
    .INIT(2'h1)) 
    \div_clk.count[0]_i_1 
       (.I0(count[0]),
        .O(p_1_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \div_clk.count[1]_i_1 
       (.I0(count[0]),
        .I1(count[1]),
        .O(p_1_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \div_clk.count[2]_i_1 
       (.I0(count[0]),
        .I1(count[1]),
        .I2(count[2]),
        .O(p_1_in[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \div_clk.count[3]_i_1 
       (.I0(count[1]),
        .I1(count[0]),
        .I2(count[2]),
        .I3(count[3]),
        .O(p_1_in[3]));
  LUT5 #(
    .INIT(32'h01000000)) 
    \div_clk.count[4]_i_1 
       (.I0(count[2]),
        .I1(count[1]),
        .I2(count[0]),
        .I3(count[4]),
        .I4(count[3]),
        .O(\div_clk.count[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \div_clk.count[4]_i_2 
       (.I0(count[2]),
        .I1(count[0]),
        .I2(count[1]),
        .I3(count[3]),
        .I4(count[4]),
        .O(p_1_in[4]));
  FDRE #(
    .INIT(1'b0)) 
    \div_clk.count_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[0]),
        .Q(count[0]),
        .R(\div_clk.count[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \div_clk.count_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[1]),
        .Q(count[1]),
        .R(\div_clk.count[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \div_clk.count_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[2]),
        .Q(count[2]),
        .R(\div_clk.count[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \div_clk.count_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[3]),
        .Q(count[3]),
        .R(\div_clk.count[4]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \div_clk.count_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(p_1_in[4]),
        .Q(count[4]),
        .R(\div_clk.count[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFF700000008)) 
    sclki_i_1
       (.I0(count[3]),
        .I1(count[4]),
        .I2(count[0]),
        .I3(count[1]),
        .I4(count[2]),
        .I5(LED_OBUF),
        .O(sclki_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sclki_reg
       (.C(CLK),
        .CE(1'b1),
        .D(sclki_i_1_n_0),
        .Q(LED_OBUF),
        .R(1'b0));
endmodule

module counter
   (LED_OBUF,
    CPU_RESETN_IBUF,
    \hold_reg[3]_0 );
  output [4:0]LED_OBUF;
  input CPU_RESETN_IBUF;
  input [0:0]\hold_reg[3]_0 ;

  wire CPU_RESETN_IBUF;
  wire [4:0]LED_OBUF;
  wire \hold[0]_i_1_n_0 ;
  wire \hold[1]_i_1_n_0 ;
  wire \hold[2]_i_1_n_0 ;
  wire \hold[3]_i_1_n_0 ;
  wire [0:0]\hold_reg[3]_0 ;

  LUT1 #(
    .INIT(2'h1)) 
    \LED_OBUF[7]_inst_i_1 
       (.I0(CPU_RESETN_IBUF),
        .O(LED_OBUF[4]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \hold[0]_i_1 
       (.I0(LED_OBUF[0]),
        .O(\hold[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \hold[1]_i_1 
       (.I0(LED_OBUF[1]),
        .I1(LED_OBUF[0]),
        .O(\hold[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \hold[2]_i_1 
       (.I0(LED_OBUF[1]),
        .I1(LED_OBUF[0]),
        .I2(LED_OBUF[2]),
        .O(\hold[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \hold[3]_i_1 
       (.I0(LED_OBUF[1]),
        .I1(LED_OBUF[0]),
        .I2(LED_OBUF[2]),
        .I3(LED_OBUF[3]),
        .O(\hold[3]_i_1_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \hold_reg[0] 
       (.C(\hold_reg[3]_0 ),
        .CE(1'b1),
        .CLR(LED_OBUF[4]),
        .D(\hold[0]_i_1_n_0 ),
        .Q(LED_OBUF[0]));
  FDCE #(
    .INIT(1'b0)) 
    \hold_reg[1] 
       (.C(\hold_reg[3]_0 ),
        .CE(1'b1),
        .CLR(LED_OBUF[4]),
        .D(\hold[1]_i_1_n_0 ),
        .Q(LED_OBUF[1]));
  FDCE #(
    .INIT(1'b0)) 
    \hold_reg[2] 
       (.C(\hold_reg[3]_0 ),
        .CE(1'b1),
        .CLR(LED_OBUF[4]),
        .D(\hold[2]_i_1_n_0 ),
        .Q(LED_OBUF[2]));
  FDCE #(
    .INIT(1'b0)) 
    \hold_reg[3] 
       (.C(\hold_reg[3]_0 ),
        .CE(1'b1),
        .CLR(LED_OBUF[4]),
        .D(\hold[3]_i_1_n_0 ),
        .Q(LED_OBUF[3]));
endmodule

module d_ff_en
   (LED_OBUF,
    SW_IBUF,
    qn_reg_0,
    CPU_RESETN_IBUF);
  output [1:0]LED_OBUF;
  input [1:0]SW_IBUF;
  input [0:0]qn_reg_0;
  input CPU_RESETN_IBUF;

  wire CPU_RESETN_IBUF;
  wire [1:0]LED_OBUF;
  wire [1:0]SW_IBUF;
  wire q_i_1_n_0;
  wire qn_i_1_n_0;
  wire [0:0]qn_reg_0;

  LUT2 #(
    .INIT(4'h2)) 
    q_i_1
       (.I0(SW_IBUF[1]),
        .I1(CPU_RESETN_IBUF),
        .O(q_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    q_reg
       (.C(qn_reg_0),
        .CE(SW_IBUF[1]),
        .D(SW_IBUF[0]),
        .Q(LED_OBUF[0]),
        .R(q_i_1_n_0));
  LUT2 #(
    .INIT(4'h7)) 
    qn_i_1
       (.I0(CPU_RESETN_IBUF),
        .I1(SW_IBUF[0]),
        .O(qn_i_1_n_0));
  FDSE #(
    .INIT(1'b1)) 
    qn_reg
       (.C(qn_reg_0),
        .CE(SW_IBUF[1]),
        .D(qn_i_1_n_0),
        .Q(LED_OBUF[1]),
        .S(1'b0));
endmodule

(* NotValidForBitStream *)
module top_level
   (SW,
    CLK100MHZ,
    CPU_RESETN,
    LED);
  input [15:0]SW;
  input CLK100MHZ;
  input CPU_RESETN;
  output [15:0]LED;

  wire CLK100MHZ;
  wire CLK100MHZ_IBUF;
  wire CLK100MHZ_IBUF_BUFG;
  wire CPU_RESETN;
  wire CPU_RESETN_IBUF;
  wire [15:0]LED;
  wire [15:0]LED_OBUF;
  wire [15:0]SW;
  wire [5:4]SW_IBUF;

initial begin
 $sdf_annotate("top_level_testbench_time_synth.sdf",,,,"tool_control");
end
  BUFG CLK100MHZ_IBUF_BUFG_inst
       (.I(CLK100MHZ_IBUF),
        .O(CLK100MHZ_IBUF_BUFG));
  IBUF CLK100MHZ_IBUF_inst
       (.I(CLK100MHZ),
        .O(CLK100MHZ_IBUF));
  clock_divider CLK_DIV
       (.CLK(CLK100MHZ_IBUF_BUFG),
        .LED_OBUF(LED_OBUF[6]));
  IBUF CPU_RESETN_IBUF_inst
       (.I(CPU_RESETN),
        .O(CPU_RESETN_IBUF));
  d_ff_en D_FF
       (.CPU_RESETN_IBUF(CPU_RESETN_IBUF),
        .LED_OBUF(LED_OBUF[5:4]),
        .SW_IBUF(SW_IBUF),
        .qn_reg_0(LED_OBUF[6]));
  OBUF \LED_OBUF[0]_inst 
       (.I(LED_OBUF[0]),
        .O(LED[0]));
  OBUF \LED_OBUF[10]_inst 
       (.I(LED_OBUF[10]),
        .O(LED[10]));
  OBUF \LED_OBUF[11]_inst 
       (.I(LED_OBUF[11]),
        .O(LED[11]));
  OBUF \LED_OBUF[12]_inst 
       (.I(LED_OBUF[12]),
        .O(LED[12]));
  OBUF \LED_OBUF[13]_inst 
       (.I(LED_OBUF[13]),
        .O(LED[13]));
  OBUF \LED_OBUF[14]_inst 
       (.I(LED_OBUF[14]),
        .O(LED[14]));
  OBUF \LED_OBUF[15]_inst 
       (.I(LED_OBUF[15]),
        .O(LED[15]));
  OBUF \LED_OBUF[1]_inst 
       (.I(LED_OBUF[1]),
        .O(LED[1]));
  OBUF \LED_OBUF[2]_inst 
       (.I(LED_OBUF[2]),
        .O(LED[2]));
  OBUF \LED_OBUF[3]_inst 
       (.I(LED_OBUF[3]),
        .O(LED[3]));
  OBUF \LED_OBUF[4]_inst 
       (.I(LED_OBUF[4]),
        .O(LED[4]));
  OBUF \LED_OBUF[5]_inst 
       (.I(LED_OBUF[5]),
        .O(LED[5]));
  OBUF \LED_OBUF[6]_inst 
       (.I(LED_OBUF[6]),
        .O(LED[6]));
  OBUF \LED_OBUF[7]_inst 
       (.I(LED_OBUF[7]),
        .O(LED[7]));
  OBUF \LED_OBUF[8]_inst 
       (.I(LED_OBUF[8]),
        .O(LED[8]));
  OBUF \LED_OBUF[9]_inst 
       (.I(LED_OBUF[9]),
        .O(LED[9]));
  IBUF \SW_IBUF[10]_inst 
       (.I(SW[10]),
        .O(LED_OBUF[10]));
  IBUF \SW_IBUF[11]_inst 
       (.I(SW[11]),
        .O(LED_OBUF[11]));
  IBUF \SW_IBUF[12]_inst 
       (.I(SW[12]),
        .O(LED_OBUF[12]));
  IBUF \SW_IBUF[13]_inst 
       (.I(SW[13]),
        .O(LED_OBUF[13]));
  IBUF \SW_IBUF[14]_inst 
       (.I(SW[14]),
        .O(LED_OBUF[14]));
  IBUF \SW_IBUF[15]_inst 
       (.I(SW[15]),
        .O(LED_OBUF[15]));
  IBUF \SW_IBUF[4]_inst 
       (.I(SW[4]),
        .O(SW_IBUF[4]));
  IBUF \SW_IBUF[5]_inst 
       (.I(SW[5]),
        .O(SW_IBUF[5]));
  IBUF \SW_IBUF[8]_inst 
       (.I(SW[8]),
        .O(LED_OBUF[8]));
  IBUF \SW_IBUF[9]_inst 
       (.I(SW[9]),
        .O(LED_OBUF[9]));
  counter UP_CTR
       (.CPU_RESETN_IBUF(CPU_RESETN_IBUF),
        .LED_OBUF({LED_OBUF[7],LED_OBUF[3:0]}),
        .\hold_reg[3]_0 (LED_OBUF[6]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
