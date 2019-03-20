// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Tue Feb  5 14:54:17 2019
// Host        : DESKTOP-P52MVK7 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/vivado_proj/lab_2/lab_2.srcs/sources_1/bd/design_1/ip/design_1_PmodAD1_0_0/design_1_PmodAD1_0_0_sim_netlist.v
// Design      : design_1_PmodAD1_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z010clg400-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_PmodAD1_0_0,PmodAD1_v1_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "PmodAD1_v1_0,Vivado 2018.3" *) 
(* NotValidForBitStream *)
module design_1_PmodAD1_0_0
   (Pmod_out_pin10_i,
    Pmod_out_pin10_o,
    Pmod_out_pin10_t,
    Pmod_out_pin1_i,
    Pmod_out_pin1_o,
    Pmod_out_pin1_t,
    Pmod_out_pin2_i,
    Pmod_out_pin2_o,
    Pmod_out_pin2_t,
    Pmod_out_pin3_i,
    Pmod_out_pin3_o,
    Pmod_out_pin3_t,
    Pmod_out_pin4_i,
    Pmod_out_pin4_o,
    Pmod_out_pin4_t,
    Pmod_out_pin7_i,
    Pmod_out_pin7_o,
    Pmod_out_pin7_t,
    Pmod_out_pin8_i,
    Pmod_out_pin8_o,
    Pmod_out_pin8_t,
    Pmod_out_pin9_i,
    Pmod_out_pin9_o,
    Pmod_out_pin9_t,
    s00_axi_awaddr,
    s00_axi_awprot,
    s00_axi_awvalid,
    s00_axi_awready,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_wvalid,
    s00_axi_wready,
    s00_axi_bresp,
    s00_axi_bvalid,
    s00_axi_bready,
    s00_axi_araddr,
    s00_axi_arprot,
    s00_axi_arvalid,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rresp,
    s00_axi_rvalid,
    s00_axi_rready,
    s00_axi_aclk,
    s00_axi_aresetn);
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN10_I" *) input Pmod_out_pin10_i;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN10_O" *) output Pmod_out_pin10_o;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN10_T" *) output Pmod_out_pin10_t;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN1_I" *) input Pmod_out_pin1_i;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN1_O" *) output Pmod_out_pin1_o;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN1_T" *) output Pmod_out_pin1_t;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN2_I" *) input Pmod_out_pin2_i;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN2_O" *) output Pmod_out_pin2_o;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN2_T" *) output Pmod_out_pin2_t;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN3_I" *) input Pmod_out_pin3_i;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN3_O" *) output Pmod_out_pin3_o;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN3_T" *) output Pmod_out_pin3_t;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN4_I" *) input Pmod_out_pin4_i;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN4_O" *) output Pmod_out_pin4_o;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN4_T" *) output Pmod_out_pin4_t;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN7_I" *) input Pmod_out_pin7_i;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN7_O" *) output Pmod_out_pin7_o;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN7_T" *) output Pmod_out_pin7_t;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN8_I" *) input Pmod_out_pin8_i;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN8_O" *) output Pmod_out_pin8_o;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN8_T" *) output Pmod_out_pin8_t;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN9_I" *) input Pmod_out_pin9_i;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN9_O" *) output Pmod_out_pin9_o;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN9_T" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME Pmod_out, BOARD.ASSOCIATED_PARAM PMOD" *) output Pmod_out_pin9_t;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE_SAMPLE AWADDR" *) input [3:0]s00_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE_SAMPLE AWPROT" *) input [2:0]s00_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE_SAMPLE AWVALID" *) input s00_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE_SAMPLE AWREADY" *) output s00_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE_SAMPLE WDATA" *) input [31:0]s00_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE_SAMPLE WSTRB" *) input [3:0]s00_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE_SAMPLE WVALID" *) input s00_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE_SAMPLE WREADY" *) output s00_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE_SAMPLE BRESP" *) output [1:0]s00_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE_SAMPLE BVALID" *) output s00_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE_SAMPLE BREADY" *) input s00_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE_SAMPLE ARADDR" *) input [3:0]s00_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE_SAMPLE ARPROT" *) input [2:0]s00_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE_SAMPLE ARVALID" *) input s00_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE_SAMPLE ARREADY" *) output s00_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE_SAMPLE RDATA" *) output [31:0]s00_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE_SAMPLE RRESP" *) output [1:0]s00_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE_SAMPLE RVALID" *) output s00_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 AXI_LITE_SAMPLE RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME AXI_LITE_SAMPLE, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s00_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 AXI_LITE_SAMPLE_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME AXI_LITE_SAMPLE_CLK, ASSOCIATED_BUSIF AXI_LITE_SAMPLE, ASSOCIATED_RESET s00_axi_aresetn, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0" *) input s00_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 AXI_LITE_SAMPLE_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME AXI_LITE_SAMPLE_RST, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s00_axi_aresetn;

  wire Pmod_out_pin10_i;
  wire Pmod_out_pin10_o;
  wire Pmod_out_pin10_t;
  wire Pmod_out_pin1_i;
  wire Pmod_out_pin1_o;
  wire Pmod_out_pin1_t;
  wire Pmod_out_pin2_i;
  wire Pmod_out_pin2_o;
  wire Pmod_out_pin2_t;
  wire Pmod_out_pin3_i;
  wire Pmod_out_pin3_o;
  wire Pmod_out_pin3_t;
  wire Pmod_out_pin4_i;
  wire Pmod_out_pin4_o;
  wire Pmod_out_pin4_t;
  wire Pmod_out_pin7_i;
  wire Pmod_out_pin7_o;
  wire Pmod_out_pin7_t;
  wire Pmod_out_pin8_i;
  wire Pmod_out_pin8_o;
  wire Pmod_out_pin8_t;
  wire Pmod_out_pin9_i;
  wire Pmod_out_pin9_o;
  wire Pmod_out_pin9_t;
  wire s00_axi_aclk;
  wire [3:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire [2:0]s00_axi_arprot;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [3:0]s00_axi_awaddr;
  wire [2:0]s00_axi_awprot;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire [1:0]s00_axi_bresp;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire [1:0]s00_axi_rresp;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire [1:0]NLW_inst_led_UNCONNECTED;

  (* AD1_CLOCKS_AFTER_DATA = "500" *) 
  (* AD1_CLOCKS_BEFORE_DATA = "60" *) 
  (* AD1_CLOCKS_BETWEEN_TRANSACTIONS = "400" *) 
  (* AD1_CLOCKS_PER_BIT = "20" *) 
  (* C_S00_AXI_ADDR_WIDTH = "4" *) 
  (* C_S00_AXI_DATA_WIDTH = "32" *) 
  (* INCLUDE_DEBUG_INTERFACE = "1'b0" *) 
  design_1_PmodAD1_0_0_PmodAD1_v1_0 inst
       (.Pmod_out_pin10_i(Pmod_out_pin10_i),
        .Pmod_out_pin10_o(Pmod_out_pin10_o),
        .Pmod_out_pin10_t(Pmod_out_pin10_t),
        .Pmod_out_pin1_i(Pmod_out_pin1_i),
        .Pmod_out_pin1_o(Pmod_out_pin1_o),
        .Pmod_out_pin1_t(Pmod_out_pin1_t),
        .Pmod_out_pin2_i(Pmod_out_pin2_i),
        .Pmod_out_pin2_o(Pmod_out_pin2_o),
        .Pmod_out_pin2_t(Pmod_out_pin2_t),
        .Pmod_out_pin3_i(Pmod_out_pin3_i),
        .Pmod_out_pin3_o(Pmod_out_pin3_o),
        .Pmod_out_pin3_t(Pmod_out_pin3_t),
        .Pmod_out_pin4_i(Pmod_out_pin4_i),
        .Pmod_out_pin4_o(Pmod_out_pin4_o),
        .Pmod_out_pin4_t(Pmod_out_pin4_t),
        .Pmod_out_pin7_i(Pmod_out_pin7_i),
        .Pmod_out_pin7_o(Pmod_out_pin7_o),
        .Pmod_out_pin7_t(Pmod_out_pin7_t),
        .Pmod_out_pin8_i(Pmod_out_pin8_i),
        .Pmod_out_pin8_o(Pmod_out_pin8_o),
        .Pmod_out_pin8_t(Pmod_out_pin8_t),
        .Pmod_out_pin9_i(Pmod_out_pin9_i),
        .Pmod_out_pin9_o(Pmod_out_pin9_o),
        .Pmod_out_pin9_t(Pmod_out_pin9_t),
        .led(NLW_inst_led_UNCONNECTED[1:0]),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arprot(s00_axi_arprot),
        .s00_axi_arready(s00_axi_arready),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr),
        .s00_axi_awprot(s00_axi_awprot),
        .s00_axi_awready(s00_axi_awready),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bresp(s00_axi_bresp),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rresp(s00_axi_rresp),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wready(s00_axi_wready),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

(* AD1_CLOCKS_AFTER_DATA = "500" *) (* AD1_CLOCKS_BEFORE_DATA = "60" *) (* AD1_CLOCKS_BETWEEN_TRANSACTIONS = "400" *) 
(* AD1_CLOCKS_PER_BIT = "20" *) (* C_S00_AXI_ADDR_WIDTH = "4" *) (* C_S00_AXI_DATA_WIDTH = "32" *) 
(* INCLUDE_DEBUG_INTERFACE = "1'b0" *) (* ORIG_REF_NAME = "PmodAD1_v1_0" *) 
module design_1_PmodAD1_0_0_PmodAD1_v1_0
   (Pmod_out_pin10_i,
    Pmod_out_pin10_o,
    Pmod_out_pin10_t,
    Pmod_out_pin1_i,
    Pmod_out_pin1_o,
    Pmod_out_pin1_t,
    Pmod_out_pin2_i,
    Pmod_out_pin2_o,
    Pmod_out_pin2_t,
    Pmod_out_pin3_i,
    Pmod_out_pin3_o,
    Pmod_out_pin3_t,
    Pmod_out_pin4_i,
    Pmod_out_pin4_o,
    Pmod_out_pin4_t,
    Pmod_out_pin7_i,
    Pmod_out_pin7_o,
    Pmod_out_pin7_t,
    Pmod_out_pin8_i,
    Pmod_out_pin8_o,
    Pmod_out_pin8_t,
    Pmod_out_pin9_i,
    Pmod_out_pin9_o,
    Pmod_out_pin9_t,
    led,
    s00_axi_aclk,
    s00_axi_aresetn,
    s00_axi_awaddr,
    s00_axi_awprot,
    s00_axi_awvalid,
    s00_axi_awready,
    s00_axi_wdata,
    s00_axi_wstrb,
    s00_axi_wvalid,
    s00_axi_wready,
    s00_axi_bresp,
    s00_axi_bvalid,
    s00_axi_bready,
    s00_axi_araddr,
    s00_axi_arprot,
    s00_axi_arvalid,
    s00_axi_arready,
    s00_axi_rdata,
    s00_axi_rresp,
    s00_axi_rvalid,
    s00_axi_rready);
  input Pmod_out_pin10_i;
  output Pmod_out_pin10_o;
  output Pmod_out_pin10_t;
  input Pmod_out_pin1_i;
  output Pmod_out_pin1_o;
  output Pmod_out_pin1_t;
  input Pmod_out_pin2_i;
  output Pmod_out_pin2_o;
  output Pmod_out_pin2_t;
  input Pmod_out_pin3_i;
  output Pmod_out_pin3_o;
  output Pmod_out_pin3_t;
  input Pmod_out_pin4_i;
  output Pmod_out_pin4_o;
  output Pmod_out_pin4_t;
  input Pmod_out_pin7_i;
  output Pmod_out_pin7_o;
  output Pmod_out_pin7_t;
  input Pmod_out_pin8_i;
  output Pmod_out_pin8_o;
  output Pmod_out_pin8_t;
  input Pmod_out_pin9_i;
  output Pmod_out_pin9_o;
  output Pmod_out_pin9_t;
  output [1:0]led;
  input s00_axi_aclk;
  input s00_axi_aresetn;
  input [3:0]s00_axi_awaddr;
  input [2:0]s00_axi_awprot;
  input s00_axi_awvalid;
  output s00_axi_awready;
  input [31:0]s00_axi_wdata;
  input [3:0]s00_axi_wstrb;
  input s00_axi_wvalid;
  output s00_axi_wready;
  output [1:0]s00_axi_bresp;
  output s00_axi_bvalid;
  input s00_axi_bready;
  input [3:0]s00_axi_araddr;
  input [2:0]s00_axi_arprot;
  input s00_axi_arvalid;
  output s00_axi_arready;
  output [31:0]s00_axi_rdata;
  output [1:0]s00_axi_rresp;
  output s00_axi_rvalid;
  input s00_axi_rready;

  wire \<const0> ;
  wire Pmod_out_pin10_i;
  wire Pmod_out_pin10_o;
  wire Pmod_out_pin10_t;
  wire Pmod_out_pin1_i;
  wire Pmod_out_pin1_o;
  wire Pmod_out_pin1_t;
  wire Pmod_out_pin2_i;
  wire Pmod_out_pin2_o;
  wire Pmod_out_pin2_t;
  wire Pmod_out_pin3_i;
  wire Pmod_out_pin3_o;
  wire Pmod_out_pin3_t;
  wire Pmod_out_pin4_i;
  wire Pmod_out_pin4_o;
  wire Pmod_out_pin4_t;
  wire Pmod_out_pin7_i;
  wire Pmod_out_pin7_o;
  wire Pmod_out_pin7_t;
  wire Pmod_out_pin8_i;
  wire Pmod_out_pin8_o;
  wire Pmod_out_pin8_t;
  wire Pmod_out_pin9_i;
  wire Pmod_out_pin9_o;
  wire Pmod_out_pin9_t;
  wire ad1_cs;
  wire ad1_sclk;
  wire ad1_sdin0;
  wire ad1_sdin1;
  wire s00_axi_aclk;
  wire [3:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arready;
  wire s00_axi_arvalid;
  wire [3:0]s00_axi_awaddr;
  wire s00_axi_awready;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire s00_axi_wready;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire NLW_PmodAD1_pmod_bridge_0_0_in0_I_UNCONNECTED;
  wire NLW_PmodAD1_pmod_bridge_0_0_in3_I_UNCONNECTED;

  assign led[1] = \<const0> ;
  assign led[0] = \<const0> ;
  assign s00_axi_bresp[1] = \<const0> ;
  assign s00_axi_bresp[0] = \<const0> ;
  assign s00_axi_rresp[1] = \<const0> ;
  assign s00_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* CHECK_LICENSE_TYPE = "pmod_bridge_0,pmod_concat,{}" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* X_CORE_INFO = "pmod_concat,Vivado 2018.3" *) 
  design_1_PmodAD1_0_0_pmod_bridge_0 PmodAD1_pmod_bridge_0_0
       (.in0_I(NLW_PmodAD1_pmod_bridge_0_0_in0_I_UNCONNECTED),
        .in0_O(ad1_cs),
        .in0_T(1'b0),
        .in1_I(ad1_sdin0),
        .in1_O(1'b0),
        .in1_T(1'b1),
        .in2_I(ad1_sdin1),
        .in2_O(1'b0),
        .in2_T(1'b1),
        .in3_I(NLW_PmodAD1_pmod_bridge_0_0_in3_I_UNCONNECTED),
        .in3_O(ad1_sclk),
        .in3_T(1'b0),
        .out0_I(Pmod_out_pin1_i),
        .out0_O(Pmod_out_pin1_o),
        .out0_T(Pmod_out_pin1_t),
        .out1_I(Pmod_out_pin2_i),
        .out1_O(Pmod_out_pin2_o),
        .out1_T(Pmod_out_pin2_t),
        .out2_I(Pmod_out_pin3_i),
        .out2_O(Pmod_out_pin3_o),
        .out2_T(Pmod_out_pin3_t),
        .out3_I(Pmod_out_pin4_i),
        .out3_O(Pmod_out_pin4_o),
        .out3_T(Pmod_out_pin4_t),
        .out4_I(Pmod_out_pin7_i),
        .out4_O(Pmod_out_pin7_o),
        .out4_T(Pmod_out_pin7_t),
        .out5_I(Pmod_out_pin8_i),
        .out5_O(Pmod_out_pin8_o),
        .out5_T(Pmod_out_pin8_t),
        .out6_I(Pmod_out_pin9_i),
        .out6_O(Pmod_out_pin9_o),
        .out6_T(Pmod_out_pin9_t),
        .out7_I(Pmod_out_pin10_i),
        .out7_O(Pmod_out_pin10_o),
        .out7_T(Pmod_out_pin10_t));
  design_1_PmodAD1_0_0_PmodAD1_v1_0_S00_AXI PmodAD1_v1_0_S00_AXI_inst
       (.S_AXI_ARREADY(s00_axi_arready),
        .S_AXI_AWREADY(s00_axi_awready),
        .S_AXI_WREADY(s00_axi_wready),
        .in0_O(ad1_cs),
        .in1_I(ad1_sdin0),
        .in2_I(ad1_sdin1),
        .in3_O(ad1_sclk),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_araddr(s00_axi_araddr[3:2]),
        .s00_axi_aresetn(s00_axi_aresetn),
        .s00_axi_arvalid(s00_axi_arvalid),
        .s00_axi_awaddr(s00_axi_awaddr[3:2]),
        .s00_axi_awvalid(s00_axi_awvalid),
        .s00_axi_bready(s00_axi_bready),
        .s00_axi_bvalid(s00_axi_bvalid),
        .s00_axi_rdata(s00_axi_rdata),
        .s00_axi_rready(s00_axi_rready),
        .s00_axi_rvalid(s00_axi_rvalid),
        .s00_axi_wdata(s00_axi_wdata),
        .s00_axi_wstrb(s00_axi_wstrb),
        .s00_axi_wvalid(s00_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "PmodAD1_v1_0_S00_AXI" *) 
module design_1_PmodAD1_0_0_PmodAD1_v1_0_S00_AXI
   (S_AXI_AWREADY,
    S_AXI_WREADY,
    S_AXI_ARREADY,
    s00_axi_rdata,
    in0_O,
    in3_O,
    s00_axi_rvalid,
    s00_axi_bvalid,
    s00_axi_aclk,
    s00_axi_araddr,
    s00_axi_arvalid,
    s00_axi_awaddr,
    s00_axi_awvalid,
    s00_axi_wvalid,
    s00_axi_wdata,
    in1_I,
    in2_I,
    s00_axi_wstrb,
    s00_axi_aresetn,
    s00_axi_bready,
    s00_axi_rready);
  output S_AXI_AWREADY;
  output S_AXI_WREADY;
  output S_AXI_ARREADY;
  output [31:0]s00_axi_rdata;
  output in0_O;
  output in3_O;
  output s00_axi_rvalid;
  output s00_axi_bvalid;
  input s00_axi_aclk;
  input [1:0]s00_axi_araddr;
  input s00_axi_arvalid;
  input [1:0]s00_axi_awaddr;
  input s00_axi_awvalid;
  input s00_axi_wvalid;
  input [31:0]s00_axi_wdata;
  input in1_I;
  input in2_I;
  input [3:0]s00_axi_wstrb;
  input s00_axi_aresetn;
  input s00_axi_bready;
  input s00_axi_rready;

  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire S_AXI_WREADY;
  wire [31:0]ad1_data;
  wire [31:0]ad1_data_r;
  wire [3:2]axi_araddr;
  wire \axi_araddr[2]_i_1_n_0 ;
  wire \axi_araddr[3]_i_1_n_0 ;
  wire axi_arready0;
  wire \axi_awaddr[2]_i_1_n_0 ;
  wire \axi_awaddr[3]_i_1_n_0 ;
  wire axi_awready0;
  wire axi_bvalid_i_1_n_0;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready0;
  wire drdy;
  wire in0_O;
  wire in1_I;
  wire in2_I;
  wire in3_O;
  wire m_ad1_spi_n_1;
  wire [1:0]p_0_in;
  wire [31:7]p_1_in;
  wire [31:0]reg_data_out;
  wire s00_axi_aclk;
  wire [1:0]s00_axi_araddr;
  wire s00_axi_aresetn;
  wire s00_axi_arvalid;
  wire [1:0]s00_axi_awaddr;
  wire s00_axi_awvalid;
  wire s00_axi_bready;
  wire s00_axi_bvalid;
  wire [31:0]s00_axi_rdata;
  wire s00_axi_rready;
  wire s00_axi_rvalid;
  wire [31:0]s00_axi_wdata;
  wire [3:0]s00_axi_wstrb;
  wire s00_axi_wvalid;
  wire [31:0]slv_reg1;
  wire \slv_reg1[15]_i_1_n_0 ;
  wire \slv_reg1[23]_i_1_n_0 ;
  wire \slv_reg1[31]_i_1_n_0 ;
  wire \slv_reg1[7]_i_1_n_0 ;
  wire [31:0]slv_reg2;
  wire \slv_reg2[15]_i_1_n_0 ;
  wire \slv_reg2[23]_i_1_n_0 ;
  wire \slv_reg2[31]_i_1_n_0 ;
  wire \slv_reg2[7]_i_1_n_0 ;
  wire [31:0]slv_reg3;
  wire slv_reg_rden__0;
  wire slv_reg_wren__0;

  FDRE \ad1_data_r_reg[0] 
       (.C(s00_axi_aclk),
        .CE(drdy),
        .D(ad1_data[0]),
        .Q(ad1_data_r[0]),
        .R(1'b0));
  FDRE \ad1_data_r_reg[10] 
       (.C(s00_axi_aclk),
        .CE(drdy),
        .D(ad1_data[10]),
        .Q(ad1_data_r[10]),
        .R(1'b0));
  FDRE \ad1_data_r_reg[11] 
       (.C(s00_axi_aclk),
        .CE(drdy),
        .D(ad1_data[11]),
        .Q(ad1_data_r[11]),
        .R(1'b0));
  FDRE \ad1_data_r_reg[12] 
       (.C(s00_axi_aclk),
        .CE(drdy),
        .D(ad1_data[12]),
        .Q(ad1_data_r[12]),
        .R(1'b0));
  FDRE \ad1_data_r_reg[13] 
       (.C(s00_axi_aclk),
        .CE(drdy),
        .D(ad1_data[13]),
        .Q(ad1_data_r[13]),
        .R(1'b0));
  FDRE \ad1_data_r_reg[14] 
       (.C(s00_axi_aclk),
        .CE(drdy),
        .D(ad1_data[14]),
        .Q(ad1_data_r[14]),
        .R(1'b0));
  FDRE \ad1_data_r_reg[15] 
       (.C(s00_axi_aclk),
        .CE(drdy),
        .D(ad1_data[15]),
        .Q(ad1_data_r[15]),
        .R(1'b0));
  FDRE \ad1_data_r_reg[16] 
       (.C(s00_axi_aclk),
        .CE(drdy),
        .D(ad1_data[16]),
        .Q(ad1_data_r[16]),
        .R(1'b0));
  FDRE \ad1_data_r_reg[17] 
       (.C(s00_axi_aclk),
        .CE(drdy),
        .D(ad1_data[17]),
        .Q(ad1_data_r[17]),
        .R(1'b0));
  FDRE \ad1_data_r_reg[18] 
       (.C(s00_axi_aclk),
        .CE(drdy),
        .D(ad1_data[18]),
        .Q(ad1_data_r[18]),
        .R(1'b0));
  FDRE \ad1_data_r_reg[19] 
       (.C(s00_axi_aclk),
        .CE(drdy),
        .D(ad1_data[19]),
        .Q(ad1_data_r[19]),
        .R(1'b0));
  FDRE \ad1_data_r_reg[1] 
       (.C(s00_axi_aclk),
        .CE(drdy),
        .D(ad1_data[1]),
        .Q(ad1_data_r[1]),
        .R(1'b0));
  FDRE \ad1_data_r_reg[20] 
       (.C(s00_axi_aclk),
        .CE(drdy),
        .D(ad1_data[20]),
        .Q(ad1_data_r[20]),
        .R(1'b0));
  FDRE \ad1_data_r_reg[21] 
       (.C(s00_axi_aclk),
        .CE(drdy),
        .D(ad1_data[21]),
        .Q(ad1_data_r[21]),
        .R(1'b0));
  FDRE \ad1_data_r_reg[22] 
       (.C(s00_axi_aclk),
        .CE(drdy),
        .D(ad1_data[22]),
        .Q(ad1_data_r[22]),
        .R(1'b0));
  FDRE \ad1_data_r_reg[23] 
       (.C(s00_axi_aclk),
        .CE(drdy),
        .D(ad1_data[23]),
        .Q(ad1_data_r[23]),
        .R(1'b0));
  FDRE \ad1_data_r_reg[24] 
       (.C(s00_axi_aclk),
        .CE(drdy),
        .D(ad1_data[24]),
        .Q(ad1_data_r[24]),
        .R(1'b0));
  FDRE \ad1_data_r_reg[25] 
       (.C(s00_axi_aclk),
        .CE(drdy),
        .D(ad1_data[25]),
        .Q(ad1_data_r[25]),
        .R(1'b0));
  FDRE \ad1_data_r_reg[26] 
       (.C(s00_axi_aclk),
        .CE(drdy),
        .D(ad1_data[26]),
        .Q(ad1_data_r[26]),
        .R(1'b0));
  FDRE \ad1_data_r_reg[27] 
       (.C(s00_axi_aclk),
        .CE(drdy),
        .D(ad1_data[27]),
        .Q(ad1_data_r[27]),
        .R(1'b0));
  FDRE \ad1_data_r_reg[28] 
       (.C(s00_axi_aclk),
        .CE(drdy),
        .D(ad1_data[28]),
        .Q(ad1_data_r[28]),
        .R(1'b0));
  FDRE \ad1_data_r_reg[29] 
       (.C(s00_axi_aclk),
        .CE(drdy),
        .D(ad1_data[29]),
        .Q(ad1_data_r[29]),
        .R(1'b0));
  FDRE \ad1_data_r_reg[2] 
       (.C(s00_axi_aclk),
        .CE(drdy),
        .D(ad1_data[2]),
        .Q(ad1_data_r[2]),
        .R(1'b0));
  FDRE \ad1_data_r_reg[30] 
       (.C(s00_axi_aclk),
        .CE(drdy),
        .D(ad1_data[30]),
        .Q(ad1_data_r[30]),
        .R(1'b0));
  FDRE \ad1_data_r_reg[31] 
       (.C(s00_axi_aclk),
        .CE(drdy),
        .D(ad1_data[31]),
        .Q(ad1_data_r[31]),
        .R(1'b0));
  FDRE \ad1_data_r_reg[3] 
       (.C(s00_axi_aclk),
        .CE(drdy),
        .D(ad1_data[3]),
        .Q(ad1_data_r[3]),
        .R(1'b0));
  FDRE \ad1_data_r_reg[4] 
       (.C(s00_axi_aclk),
        .CE(drdy),
        .D(ad1_data[4]),
        .Q(ad1_data_r[4]),
        .R(1'b0));
  FDRE \ad1_data_r_reg[5] 
       (.C(s00_axi_aclk),
        .CE(drdy),
        .D(ad1_data[5]),
        .Q(ad1_data_r[5]),
        .R(1'b0));
  FDRE \ad1_data_r_reg[6] 
       (.C(s00_axi_aclk),
        .CE(drdy),
        .D(ad1_data[6]),
        .Q(ad1_data_r[6]),
        .R(1'b0));
  FDRE \ad1_data_r_reg[7] 
       (.C(s00_axi_aclk),
        .CE(drdy),
        .D(ad1_data[7]),
        .Q(ad1_data_r[7]),
        .R(1'b0));
  FDRE \ad1_data_r_reg[8] 
       (.C(s00_axi_aclk),
        .CE(drdy),
        .D(ad1_data[8]),
        .Q(ad1_data_r[8]),
        .R(1'b0));
  FDRE \ad1_data_r_reg[9] 
       (.C(s00_axi_aclk),
        .CE(drdy),
        .D(ad1_data[9]),
        .Q(ad1_data_r[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[2]_i_1 
       (.I0(s00_axi_araddr[0]),
        .I1(s00_axi_arvalid),
        .I2(S_AXI_ARREADY),
        .I3(axi_araddr[2]),
        .O(\axi_araddr[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[3]_i_1 
       (.I0(s00_axi_araddr[1]),
        .I1(s00_axi_arvalid),
        .I2(S_AXI_ARREADY),
        .I3(axi_araddr[3]),
        .O(\axi_araddr[3]_i_1_n_0 ));
  FDRE \axi_araddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[2]_i_1_n_0 ),
        .Q(axi_araddr[2]),
        .R(m_ad1_spi_n_1));
  FDRE \axi_araddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[3]_i_1_n_0 ),
        .Q(axi_araddr[3]),
        .R(m_ad1_spi_n_1));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(s00_axi_arvalid),
        .I1(S_AXI_ARREADY),
        .O(axi_arready0));
  FDRE axi_arready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_arready0),
        .Q(S_AXI_ARREADY),
        .R(m_ad1_spi_n_1));
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \axi_awaddr[2]_i_1 
       (.I0(s00_axi_awaddr[0]),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_wvalid),
        .I3(S_AXI_AWREADY),
        .I4(p_0_in[0]),
        .O(\axi_awaddr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT5 #(
    .INIT(32'hFFBF0080)) 
    \axi_awaddr[3]_i_1 
       (.I0(s00_axi_awaddr[1]),
        .I1(s00_axi_awvalid),
        .I2(s00_axi_wvalid),
        .I3(S_AXI_AWREADY),
        .I4(p_0_in[1]),
        .O(\axi_awaddr[3]_i_1_n_0 ));
  FDRE \axi_awaddr_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[2]_i_1_n_0 ),
        .Q(p_0_in[0]),
        .R(m_ad1_spi_n_1));
  FDRE \axi_awaddr_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\axi_awaddr[3]_i_1_n_0 ),
        .Q(p_0_in[1]),
        .R(m_ad1_spi_n_1));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT3 #(
    .INIT(8'h08)) 
    axi_awready_i_2
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(S_AXI_AWREADY),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(S_AXI_AWREADY),
        .R(m_ad1_spi_n_1));
  LUT6 #(
    .INIT(64'h0000FFFF80008000)) 
    axi_bvalid_i_1
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(S_AXI_AWREADY),
        .I3(S_AXI_WREADY),
        .I4(s00_axi_bready),
        .I5(s00_axi_bvalid),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(s00_axi_bvalid),
        .R(m_ad1_spi_n_1));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[0]_i_1 
       (.I0(slv_reg1[0]),
        .I1(ad1_data_r[0]),
        .I2(slv_reg3[0]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[0]),
        .O(reg_data_out[0]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[10]_i_1 
       (.I0(slv_reg1[10]),
        .I1(ad1_data_r[10]),
        .I2(slv_reg3[10]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[10]),
        .O(reg_data_out[10]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[11]_i_1 
       (.I0(slv_reg1[11]),
        .I1(ad1_data_r[11]),
        .I2(slv_reg3[11]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[11]),
        .O(reg_data_out[11]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[12]_i_1 
       (.I0(slv_reg1[12]),
        .I1(ad1_data_r[12]),
        .I2(slv_reg3[12]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[12]),
        .O(reg_data_out[12]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[13]_i_1 
       (.I0(slv_reg1[13]),
        .I1(ad1_data_r[13]),
        .I2(slv_reg3[13]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[13]),
        .O(reg_data_out[13]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[14]_i_1 
       (.I0(slv_reg1[14]),
        .I1(ad1_data_r[14]),
        .I2(slv_reg3[14]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[14]),
        .O(reg_data_out[14]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[15]_i_1 
       (.I0(slv_reg1[15]),
        .I1(ad1_data_r[15]),
        .I2(slv_reg3[15]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[15]),
        .O(reg_data_out[15]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[16]_i_1 
       (.I0(slv_reg1[16]),
        .I1(ad1_data_r[16]),
        .I2(slv_reg3[16]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[16]),
        .O(reg_data_out[16]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[17]_i_1 
       (.I0(slv_reg1[17]),
        .I1(ad1_data_r[17]),
        .I2(slv_reg3[17]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[17]),
        .O(reg_data_out[17]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[18]_i_1 
       (.I0(slv_reg1[18]),
        .I1(ad1_data_r[18]),
        .I2(slv_reg3[18]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[18]),
        .O(reg_data_out[18]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[19]_i_1 
       (.I0(slv_reg1[19]),
        .I1(ad1_data_r[19]),
        .I2(slv_reg3[19]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[19]),
        .O(reg_data_out[19]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[1]_i_1 
       (.I0(slv_reg1[1]),
        .I1(ad1_data_r[1]),
        .I2(slv_reg3[1]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[1]),
        .O(reg_data_out[1]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[20]_i_1 
       (.I0(slv_reg1[20]),
        .I1(ad1_data_r[20]),
        .I2(slv_reg3[20]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[20]),
        .O(reg_data_out[20]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[21]_i_1 
       (.I0(slv_reg1[21]),
        .I1(ad1_data_r[21]),
        .I2(slv_reg3[21]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[21]),
        .O(reg_data_out[21]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[22]_i_1 
       (.I0(slv_reg1[22]),
        .I1(ad1_data_r[22]),
        .I2(slv_reg3[22]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[22]),
        .O(reg_data_out[22]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[23]_i_1 
       (.I0(slv_reg1[23]),
        .I1(ad1_data_r[23]),
        .I2(slv_reg3[23]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[23]),
        .O(reg_data_out[23]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[24]_i_1 
       (.I0(slv_reg1[24]),
        .I1(ad1_data_r[24]),
        .I2(slv_reg3[24]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[24]),
        .O(reg_data_out[24]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[25]_i_1 
       (.I0(slv_reg1[25]),
        .I1(ad1_data_r[25]),
        .I2(slv_reg3[25]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[25]),
        .O(reg_data_out[25]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[26]_i_1 
       (.I0(slv_reg1[26]),
        .I1(ad1_data_r[26]),
        .I2(slv_reg3[26]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[26]),
        .O(reg_data_out[26]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[27]_i_1 
       (.I0(slv_reg1[27]),
        .I1(ad1_data_r[27]),
        .I2(slv_reg3[27]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[27]),
        .O(reg_data_out[27]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[28]_i_1 
       (.I0(slv_reg1[28]),
        .I1(ad1_data_r[28]),
        .I2(slv_reg3[28]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[28]),
        .O(reg_data_out[28]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[29]_i_1 
       (.I0(slv_reg1[29]),
        .I1(ad1_data_r[29]),
        .I2(slv_reg3[29]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[29]),
        .O(reg_data_out[29]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[2]_i_1 
       (.I0(slv_reg1[2]),
        .I1(ad1_data_r[2]),
        .I2(slv_reg3[2]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[2]),
        .O(reg_data_out[2]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[30]_i_1 
       (.I0(slv_reg1[30]),
        .I1(ad1_data_r[30]),
        .I2(slv_reg3[30]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[30]),
        .O(reg_data_out[30]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[31]_i_1 
       (.I0(slv_reg1[31]),
        .I1(ad1_data_r[31]),
        .I2(slv_reg3[31]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[31]),
        .O(reg_data_out[31]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[3]_i_1 
       (.I0(slv_reg1[3]),
        .I1(ad1_data_r[3]),
        .I2(slv_reg3[3]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[3]),
        .O(reg_data_out[3]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[4]_i_1 
       (.I0(slv_reg1[4]),
        .I1(ad1_data_r[4]),
        .I2(slv_reg3[4]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[4]),
        .O(reg_data_out[4]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[5]_i_1 
       (.I0(slv_reg1[5]),
        .I1(ad1_data_r[5]),
        .I2(slv_reg3[5]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[5]),
        .O(reg_data_out[5]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[6]_i_1 
       (.I0(slv_reg1[6]),
        .I1(ad1_data_r[6]),
        .I2(slv_reg3[6]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[6]),
        .O(reg_data_out[6]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[7]_i_1 
       (.I0(slv_reg1[7]),
        .I1(ad1_data_r[7]),
        .I2(slv_reg3[7]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[7]),
        .O(reg_data_out[7]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[8]_i_1 
       (.I0(slv_reg1[8]),
        .I1(ad1_data_r[8]),
        .I2(slv_reg3[8]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[8]),
        .O(reg_data_out[8]));
  LUT6 #(
    .INIT(64'hF0AAFFCCF0AA00CC)) 
    \axi_rdata[9]_i_1 
       (.I0(slv_reg1[9]),
        .I1(ad1_data_r[9]),
        .I2(slv_reg3[9]),
        .I3(axi_araddr[3]),
        .I4(axi_araddr[2]),
        .I5(slv_reg2[9]),
        .O(reg_data_out[9]));
  FDRE \axi_rdata_reg[0] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[0]),
        .Q(s00_axi_rdata[0]),
        .R(m_ad1_spi_n_1));
  FDRE \axi_rdata_reg[10] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[10]),
        .Q(s00_axi_rdata[10]),
        .R(m_ad1_spi_n_1));
  FDRE \axi_rdata_reg[11] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[11]),
        .Q(s00_axi_rdata[11]),
        .R(m_ad1_spi_n_1));
  FDRE \axi_rdata_reg[12] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[12]),
        .Q(s00_axi_rdata[12]),
        .R(m_ad1_spi_n_1));
  FDRE \axi_rdata_reg[13] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[13]),
        .Q(s00_axi_rdata[13]),
        .R(m_ad1_spi_n_1));
  FDRE \axi_rdata_reg[14] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[14]),
        .Q(s00_axi_rdata[14]),
        .R(m_ad1_spi_n_1));
  FDRE \axi_rdata_reg[15] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[15]),
        .Q(s00_axi_rdata[15]),
        .R(m_ad1_spi_n_1));
  FDRE \axi_rdata_reg[16] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[16]),
        .Q(s00_axi_rdata[16]),
        .R(m_ad1_spi_n_1));
  FDRE \axi_rdata_reg[17] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[17]),
        .Q(s00_axi_rdata[17]),
        .R(m_ad1_spi_n_1));
  FDRE \axi_rdata_reg[18] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[18]),
        .Q(s00_axi_rdata[18]),
        .R(m_ad1_spi_n_1));
  FDRE \axi_rdata_reg[19] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[19]),
        .Q(s00_axi_rdata[19]),
        .R(m_ad1_spi_n_1));
  FDRE \axi_rdata_reg[1] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[1]),
        .Q(s00_axi_rdata[1]),
        .R(m_ad1_spi_n_1));
  FDRE \axi_rdata_reg[20] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[20]),
        .Q(s00_axi_rdata[20]),
        .R(m_ad1_spi_n_1));
  FDRE \axi_rdata_reg[21] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[21]),
        .Q(s00_axi_rdata[21]),
        .R(m_ad1_spi_n_1));
  FDRE \axi_rdata_reg[22] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[22]),
        .Q(s00_axi_rdata[22]),
        .R(m_ad1_spi_n_1));
  FDRE \axi_rdata_reg[23] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[23]),
        .Q(s00_axi_rdata[23]),
        .R(m_ad1_spi_n_1));
  FDRE \axi_rdata_reg[24] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[24]),
        .Q(s00_axi_rdata[24]),
        .R(m_ad1_spi_n_1));
  FDRE \axi_rdata_reg[25] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[25]),
        .Q(s00_axi_rdata[25]),
        .R(m_ad1_spi_n_1));
  FDRE \axi_rdata_reg[26] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[26]),
        .Q(s00_axi_rdata[26]),
        .R(m_ad1_spi_n_1));
  FDRE \axi_rdata_reg[27] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[27]),
        .Q(s00_axi_rdata[27]),
        .R(m_ad1_spi_n_1));
  FDRE \axi_rdata_reg[28] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[28]),
        .Q(s00_axi_rdata[28]),
        .R(m_ad1_spi_n_1));
  FDRE \axi_rdata_reg[29] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[29]),
        .Q(s00_axi_rdata[29]),
        .R(m_ad1_spi_n_1));
  FDRE \axi_rdata_reg[2] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[2]),
        .Q(s00_axi_rdata[2]),
        .R(m_ad1_spi_n_1));
  FDRE \axi_rdata_reg[30] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[30]),
        .Q(s00_axi_rdata[30]),
        .R(m_ad1_spi_n_1));
  FDRE \axi_rdata_reg[31] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[31]),
        .Q(s00_axi_rdata[31]),
        .R(m_ad1_spi_n_1));
  FDRE \axi_rdata_reg[3] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[3]),
        .Q(s00_axi_rdata[3]),
        .R(m_ad1_spi_n_1));
  FDRE \axi_rdata_reg[4] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[4]),
        .Q(s00_axi_rdata[4]),
        .R(m_ad1_spi_n_1));
  FDRE \axi_rdata_reg[5] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[5]),
        .Q(s00_axi_rdata[5]),
        .R(m_ad1_spi_n_1));
  FDRE \axi_rdata_reg[6] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[6]),
        .Q(s00_axi_rdata[6]),
        .R(m_ad1_spi_n_1));
  FDRE \axi_rdata_reg[7] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[7]),
        .Q(s00_axi_rdata[7]),
        .R(m_ad1_spi_n_1));
  FDRE \axi_rdata_reg[8] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[8]),
        .Q(s00_axi_rdata[8]),
        .R(m_ad1_spi_n_1));
  FDRE \axi_rdata_reg[9] 
       (.C(s00_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[9]),
        .Q(s00_axi_rdata[9]),
        .R(m_ad1_spi_n_1));
  LUT4 #(
    .INIT(16'h0F88)) 
    axi_rvalid_i_1
       (.I0(S_AXI_ARREADY),
        .I1(s00_axi_arvalid),
        .I2(s00_axi_rready),
        .I3(s00_axi_rvalid),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(s00_axi_rvalid),
        .R(m_ad1_spi_n_1));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT3 #(
    .INIT(8'h08)) 
    axi_wready_i_1
       (.I0(s00_axi_awvalid),
        .I1(s00_axi_wvalid),
        .I2(S_AXI_WREADY),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(S_AXI_WREADY),
        .R(m_ad1_spi_n_1));
  design_1_PmodAD1_0_0_ad1_spi m_ad1_spi
       (.D(ad1_data),
        .E(drdy),
        .SR(m_ad1_spi_n_1),
        .in0_O(in0_O),
        .in1_I(in1_I),
        .in2_I(in2_I),
        .in3_O(in3_O),
        .s00_axi_aclk(s00_axi_aclk),
        .s00_axi_aresetn(s00_axi_aresetn));
  LUT4 #(
    .INIT(16'h2000)) 
    \slv_reg1[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[1]),
        .I3(p_0_in[0]),
        .O(\slv_reg1[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \slv_reg1[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[2]),
        .I3(p_0_in[0]),
        .O(\slv_reg1[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \slv_reg1[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[3]),
        .I3(p_0_in[0]),
        .O(\slv_reg1[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h2000)) 
    \slv_reg1[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[0]),
        .I3(p_0_in[0]),
        .O(\slv_reg1[7]_i_1_n_0 ));
  FDRE \slv_reg1_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg1[0]),
        .R(m_ad1_spi_n_1));
  FDRE \slv_reg1_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg1[10]),
        .R(m_ad1_spi_n_1));
  FDRE \slv_reg1_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg1[11]),
        .R(m_ad1_spi_n_1));
  FDRE \slv_reg1_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg1[12]),
        .R(m_ad1_spi_n_1));
  FDRE \slv_reg1_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg1[13]),
        .R(m_ad1_spi_n_1));
  FDRE \slv_reg1_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg1[14]),
        .R(m_ad1_spi_n_1));
  FDRE \slv_reg1_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg1[15]),
        .R(m_ad1_spi_n_1));
  FDRE \slv_reg1_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg1[16]),
        .R(m_ad1_spi_n_1));
  FDRE \slv_reg1_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg1[17]),
        .R(m_ad1_spi_n_1));
  FDRE \slv_reg1_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg1[18]),
        .R(m_ad1_spi_n_1));
  FDRE \slv_reg1_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg1[19]),
        .R(m_ad1_spi_n_1));
  FDRE \slv_reg1_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg1[1]),
        .R(m_ad1_spi_n_1));
  FDRE \slv_reg1_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg1[20]),
        .R(m_ad1_spi_n_1));
  FDRE \slv_reg1_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg1[21]),
        .R(m_ad1_spi_n_1));
  FDRE \slv_reg1_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg1[22]),
        .R(m_ad1_spi_n_1));
  FDRE \slv_reg1_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg1[23]),
        .R(m_ad1_spi_n_1));
  FDRE \slv_reg1_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg1[24]),
        .R(m_ad1_spi_n_1));
  FDRE \slv_reg1_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg1[25]),
        .R(m_ad1_spi_n_1));
  FDRE \slv_reg1_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg1[26]),
        .R(m_ad1_spi_n_1));
  FDRE \slv_reg1_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg1[27]),
        .R(m_ad1_spi_n_1));
  FDRE \slv_reg1_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg1[28]),
        .R(m_ad1_spi_n_1));
  FDRE \slv_reg1_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg1[29]),
        .R(m_ad1_spi_n_1));
  FDRE \slv_reg1_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg1[2]),
        .R(m_ad1_spi_n_1));
  FDRE \slv_reg1_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg1[30]),
        .R(m_ad1_spi_n_1));
  FDRE \slv_reg1_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg1[31]),
        .R(m_ad1_spi_n_1));
  FDRE \slv_reg1_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg1[3]),
        .R(m_ad1_spi_n_1));
  FDRE \slv_reg1_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg1[4]),
        .R(m_ad1_spi_n_1));
  FDRE \slv_reg1_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg1[5]),
        .R(m_ad1_spi_n_1));
  FDRE \slv_reg1_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg1[6]),
        .R(m_ad1_spi_n_1));
  FDRE \slv_reg1_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg1[7]),
        .R(m_ad1_spi_n_1));
  FDRE \slv_reg1_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg1[8]),
        .R(m_ad1_spi_n_1));
  FDRE \slv_reg1_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg1[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg1[9]),
        .R(m_ad1_spi_n_1));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[1]),
        .I3(p_0_in[0]),
        .O(\slv_reg2[15]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[2]),
        .I3(p_0_in[0]),
        .O(\slv_reg2[23]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[3]),
        .I3(p_0_in[0]),
        .O(\slv_reg2[31]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h0080)) 
    \slv_reg2[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(p_0_in[1]),
        .I2(s00_axi_wstrb[0]),
        .I3(p_0_in[0]),
        .O(\slv_reg2[7]_i_1_n_0 ));
  FDRE \slv_reg2_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg2[0]),
        .R(m_ad1_spi_n_1));
  FDRE \slv_reg2_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg2[10]),
        .R(m_ad1_spi_n_1));
  FDRE \slv_reg2_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg2[11]),
        .R(m_ad1_spi_n_1));
  FDRE \slv_reg2_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg2[12]),
        .R(m_ad1_spi_n_1));
  FDRE \slv_reg2_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg2[13]),
        .R(m_ad1_spi_n_1));
  FDRE \slv_reg2_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg2[14]),
        .R(m_ad1_spi_n_1));
  FDRE \slv_reg2_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg2[15]),
        .R(m_ad1_spi_n_1));
  FDRE \slv_reg2_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg2[16]),
        .R(m_ad1_spi_n_1));
  FDRE \slv_reg2_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg2[17]),
        .R(m_ad1_spi_n_1));
  FDRE \slv_reg2_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg2[18]),
        .R(m_ad1_spi_n_1));
  FDRE \slv_reg2_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg2[19]),
        .R(m_ad1_spi_n_1));
  FDRE \slv_reg2_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg2[1]),
        .R(m_ad1_spi_n_1));
  FDRE \slv_reg2_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg2[20]),
        .R(m_ad1_spi_n_1));
  FDRE \slv_reg2_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg2[21]),
        .R(m_ad1_spi_n_1));
  FDRE \slv_reg2_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg2[22]),
        .R(m_ad1_spi_n_1));
  FDRE \slv_reg2_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[23]_i_1_n_0 ),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg2[23]),
        .R(m_ad1_spi_n_1));
  FDRE \slv_reg2_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg2[24]),
        .R(m_ad1_spi_n_1));
  FDRE \slv_reg2_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg2[25]),
        .R(m_ad1_spi_n_1));
  FDRE \slv_reg2_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg2[26]),
        .R(m_ad1_spi_n_1));
  FDRE \slv_reg2_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg2[27]),
        .R(m_ad1_spi_n_1));
  FDRE \slv_reg2_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg2[28]),
        .R(m_ad1_spi_n_1));
  FDRE \slv_reg2_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg2[29]),
        .R(m_ad1_spi_n_1));
  FDRE \slv_reg2_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg2[2]),
        .R(m_ad1_spi_n_1));
  FDRE \slv_reg2_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg2[30]),
        .R(m_ad1_spi_n_1));
  FDRE \slv_reg2_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[31]_i_1_n_0 ),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg2[31]),
        .R(m_ad1_spi_n_1));
  FDRE \slv_reg2_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg2[3]),
        .R(m_ad1_spi_n_1));
  FDRE \slv_reg2_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg2[4]),
        .R(m_ad1_spi_n_1));
  FDRE \slv_reg2_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg2[5]),
        .R(m_ad1_spi_n_1));
  FDRE \slv_reg2_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg2[6]),
        .R(m_ad1_spi_n_1));
  FDRE \slv_reg2_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[7]_i_1_n_0 ),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg2[7]),
        .R(m_ad1_spi_n_1));
  FDRE \slv_reg2_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg2[8]),
        .R(m_ad1_spi_n_1));
  FDRE \slv_reg2_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\slv_reg2[15]_i_1_n_0 ),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg2[9]),
        .R(m_ad1_spi_n_1));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[15]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[1]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(p_1_in[15]));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[23]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[2]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(p_1_in[23]));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[31]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[3]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(p_1_in[31]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[31]_i_2 
       (.I0(S_AXI_WREADY),
        .I1(S_AXI_AWREADY),
        .I2(s00_axi_awvalid),
        .I3(s00_axi_wvalid),
        .O(slv_reg_wren__0));
  LUT4 #(
    .INIT(16'h8000)) 
    \slv_reg3[7]_i_1 
       (.I0(slv_reg_wren__0),
        .I1(s00_axi_wstrb[0]),
        .I2(p_0_in[0]),
        .I3(p_0_in[1]),
        .O(p_1_in[7]));
  FDRE \slv_reg3_reg[0] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[0]),
        .Q(slv_reg3[0]),
        .R(m_ad1_spi_n_1));
  FDRE \slv_reg3_reg[10] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[10]),
        .Q(slv_reg3[10]),
        .R(m_ad1_spi_n_1));
  FDRE \slv_reg3_reg[11] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[11]),
        .Q(slv_reg3[11]),
        .R(m_ad1_spi_n_1));
  FDRE \slv_reg3_reg[12] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[12]),
        .Q(slv_reg3[12]),
        .R(m_ad1_spi_n_1));
  FDRE \slv_reg3_reg[13] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[13]),
        .Q(slv_reg3[13]),
        .R(m_ad1_spi_n_1));
  FDRE \slv_reg3_reg[14] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[14]),
        .Q(slv_reg3[14]),
        .R(m_ad1_spi_n_1));
  FDRE \slv_reg3_reg[15] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[15]),
        .Q(slv_reg3[15]),
        .R(m_ad1_spi_n_1));
  FDRE \slv_reg3_reg[16] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[16]),
        .Q(slv_reg3[16]),
        .R(m_ad1_spi_n_1));
  FDRE \slv_reg3_reg[17] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[17]),
        .Q(slv_reg3[17]),
        .R(m_ad1_spi_n_1));
  FDRE \slv_reg3_reg[18] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[18]),
        .Q(slv_reg3[18]),
        .R(m_ad1_spi_n_1));
  FDRE \slv_reg3_reg[19] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[19]),
        .Q(slv_reg3[19]),
        .R(m_ad1_spi_n_1));
  FDRE \slv_reg3_reg[1] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[1]),
        .Q(slv_reg3[1]),
        .R(m_ad1_spi_n_1));
  FDRE \slv_reg3_reg[20] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[20]),
        .Q(slv_reg3[20]),
        .R(m_ad1_spi_n_1));
  FDRE \slv_reg3_reg[21] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[21]),
        .Q(slv_reg3[21]),
        .R(m_ad1_spi_n_1));
  FDRE \slv_reg3_reg[22] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[22]),
        .Q(slv_reg3[22]),
        .R(m_ad1_spi_n_1));
  FDRE \slv_reg3_reg[23] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[23]),
        .D(s00_axi_wdata[23]),
        .Q(slv_reg3[23]),
        .R(m_ad1_spi_n_1));
  FDRE \slv_reg3_reg[24] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[24]),
        .Q(slv_reg3[24]),
        .R(m_ad1_spi_n_1));
  FDRE \slv_reg3_reg[25] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[25]),
        .Q(slv_reg3[25]),
        .R(m_ad1_spi_n_1));
  FDRE \slv_reg3_reg[26] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[26]),
        .Q(slv_reg3[26]),
        .R(m_ad1_spi_n_1));
  FDRE \slv_reg3_reg[27] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[27]),
        .Q(slv_reg3[27]),
        .R(m_ad1_spi_n_1));
  FDRE \slv_reg3_reg[28] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[28]),
        .Q(slv_reg3[28]),
        .R(m_ad1_spi_n_1));
  FDRE \slv_reg3_reg[29] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[29]),
        .Q(slv_reg3[29]),
        .R(m_ad1_spi_n_1));
  FDRE \slv_reg3_reg[2] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[2]),
        .Q(slv_reg3[2]),
        .R(m_ad1_spi_n_1));
  FDRE \slv_reg3_reg[30] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[30]),
        .Q(slv_reg3[30]),
        .R(m_ad1_spi_n_1));
  FDRE \slv_reg3_reg[31] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[31]),
        .D(s00_axi_wdata[31]),
        .Q(slv_reg3[31]),
        .R(m_ad1_spi_n_1));
  FDRE \slv_reg3_reg[3] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[3]),
        .Q(slv_reg3[3]),
        .R(m_ad1_spi_n_1));
  FDRE \slv_reg3_reg[4] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[4]),
        .Q(slv_reg3[4]),
        .R(m_ad1_spi_n_1));
  FDRE \slv_reg3_reg[5] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[5]),
        .Q(slv_reg3[5]),
        .R(m_ad1_spi_n_1));
  FDRE \slv_reg3_reg[6] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[6]),
        .Q(slv_reg3[6]),
        .R(m_ad1_spi_n_1));
  FDRE \slv_reg3_reg[7] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[7]),
        .D(s00_axi_wdata[7]),
        .Q(slv_reg3[7]),
        .R(m_ad1_spi_n_1));
  FDRE \slv_reg3_reg[8] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[8]),
        .Q(slv_reg3[8]),
        .R(m_ad1_spi_n_1));
  FDRE \slv_reg3_reg[9] 
       (.C(s00_axi_aclk),
        .CE(p_1_in[15]),
        .D(s00_axi_wdata[9]),
        .Q(slv_reg3[9]),
        .R(m_ad1_spi_n_1));
  LUT3 #(
    .INIT(8'h20)) 
    slv_reg_rden
       (.I0(s00_axi_arvalid),
        .I1(s00_axi_rvalid),
        .I2(S_AXI_ARREADY),
        .O(slv_reg_rden__0));
endmodule

(* ORIG_REF_NAME = "ad1_spi" *) 
module design_1_PmodAD1_0_0_ad1_spi
   (E,
    SR,
    D,
    in0_O,
    in3_O,
    s00_axi_aclk,
    s00_axi_aresetn,
    in1_I,
    in2_I);
  output [0:0]E;
  output [0:0]SR;
  output [31:0]D;
  output in0_O;
  output in3_O;
  input s00_axi_aclk;
  input s00_axi_aresetn;
  input in1_I;
  input in2_I;

  wire [31:0]D;
  wire [0:0]E;
  wire \FSM_sequential_state[0]_i_1_n_0 ;
  wire \FSM_sequential_state[0]_i_2_n_0 ;
  wire \FSM_sequential_state[0]_i_3_n_0 ;
  wire \FSM_sequential_state[0]_i_4_n_0 ;
  wire \FSM_sequential_state[0]_i_5_n_0 ;
  wire \FSM_sequential_state[0]_i_6_n_0 ;
  wire \FSM_sequential_state[1]_i_1_n_0 ;
  wire \FSM_sequential_state[1]_i_2_n_0 ;
  wire \FSM_sequential_state[1]_i_3_n_0 ;
  wire \FSM_sequential_state[1]_i_4_n_0 ;
  wire \FSM_sequential_state[1]_i_5_n_0 ;
  wire \FSM_sequential_state[1]_i_6_n_0 ;
  wire \FSM_sequential_state[1]_i_7_n_0 ;
  wire PmodAD1_pmod_bridge_0_0_i_10_n_0;
  wire PmodAD1_pmod_bridge_0_0_i_11_n_0;
  wire PmodAD1_pmod_bridge_0_0_i_3_n_0;
  wire PmodAD1_pmod_bridge_0_0_i_4_n_0;
  wire PmodAD1_pmod_bridge_0_0_i_5_n_0;
  wire PmodAD1_pmod_bridge_0_0_i_6_n_0;
  wire PmodAD1_pmod_bridge_0_0_i_7_n_0;
  wire PmodAD1_pmod_bridge_0_0_i_8_n_0;
  wire PmodAD1_pmod_bridge_0_0_i_9_n_0;
  wire [0:0]SR;
  wire [31:1]count0;
  wire \count0[0]_i_1_n_0 ;
  wire \count0[31]_i_2_n_0 ;
  wire \count0[31]_i_3_n_0 ;
  wire \count0[31]_i_5_n_0 ;
  wire \count0[31]_i_6_n_0 ;
  wire \count0_reg[12]_i_2_n_0 ;
  wire \count0_reg[12]_i_2_n_1 ;
  wire \count0_reg[12]_i_2_n_2 ;
  wire \count0_reg[12]_i_2_n_3 ;
  wire \count0_reg[16]_i_2_n_0 ;
  wire \count0_reg[16]_i_2_n_1 ;
  wire \count0_reg[16]_i_2_n_2 ;
  wire \count0_reg[16]_i_2_n_3 ;
  wire \count0_reg[20]_i_2_n_0 ;
  wire \count0_reg[20]_i_2_n_1 ;
  wire \count0_reg[20]_i_2_n_2 ;
  wire \count0_reg[20]_i_2_n_3 ;
  wire \count0_reg[24]_i_2_n_0 ;
  wire \count0_reg[24]_i_2_n_1 ;
  wire \count0_reg[24]_i_2_n_2 ;
  wire \count0_reg[24]_i_2_n_3 ;
  wire \count0_reg[28]_i_2_n_0 ;
  wire \count0_reg[28]_i_2_n_1 ;
  wire \count0_reg[28]_i_2_n_2 ;
  wire \count0_reg[28]_i_2_n_3 ;
  wire \count0_reg[31]_i_4_n_2 ;
  wire \count0_reg[31]_i_4_n_3 ;
  wire \count0_reg[4]_i_2_n_0 ;
  wire \count0_reg[4]_i_2_n_1 ;
  wire \count0_reg[4]_i_2_n_2 ;
  wire \count0_reg[4]_i_2_n_3 ;
  wire \count0_reg[8]_i_2_n_0 ;
  wire \count0_reg[8]_i_2_n_1 ;
  wire \count0_reg[8]_i_2_n_2 ;
  wire \count0_reg[8]_i_2_n_3 ;
  wire \count0_reg_n_0_[0] ;
  wire \count0_reg_n_0_[10] ;
  wire \count0_reg_n_0_[11] ;
  wire \count0_reg_n_0_[12] ;
  wire \count0_reg_n_0_[13] ;
  wire \count0_reg_n_0_[14] ;
  wire \count0_reg_n_0_[15] ;
  wire \count0_reg_n_0_[16] ;
  wire \count0_reg_n_0_[17] ;
  wire \count0_reg_n_0_[18] ;
  wire \count0_reg_n_0_[19] ;
  wire \count0_reg_n_0_[1] ;
  wire \count0_reg_n_0_[20] ;
  wire \count0_reg_n_0_[21] ;
  wire \count0_reg_n_0_[22] ;
  wire \count0_reg_n_0_[23] ;
  wire \count0_reg_n_0_[24] ;
  wire \count0_reg_n_0_[25] ;
  wire \count0_reg_n_0_[26] ;
  wire \count0_reg_n_0_[27] ;
  wire \count0_reg_n_0_[28] ;
  wire \count0_reg_n_0_[29] ;
  wire \count0_reg_n_0_[2] ;
  wire \count0_reg_n_0_[30] ;
  wire \count0_reg_n_0_[31] ;
  wire \count0_reg_n_0_[3] ;
  wire \count0_reg_n_0_[4] ;
  wire \count0_reg_n_0_[5] ;
  wire \count0_reg_n_0_[6] ;
  wire \count0_reg_n_0_[7] ;
  wire \count0_reg_n_0_[8] ;
  wire \count0_reg_n_0_[9] ;
  wire [0:0]count1;
  wire \count1[10]_i_1_n_0 ;
  wire \count1[11]_i_1_n_0 ;
  wire \count1[12]_i_1_n_0 ;
  wire \count1[13]_i_1_n_0 ;
  wire \count1[14]_i_1_n_0 ;
  wire \count1[15]_i_1_n_0 ;
  wire \count1[16]_i_1_n_0 ;
  wire \count1[17]_i_1_n_0 ;
  wire \count1[18]_i_1_n_0 ;
  wire \count1[19]_i_1_n_0 ;
  wire \count1[1]_i_1_n_0 ;
  wire \count1[20]_i_1_n_0 ;
  wire \count1[21]_i_1_n_0 ;
  wire \count1[22]_i_1_n_0 ;
  wire \count1[23]_i_1_n_0 ;
  wire \count1[24]_i_1_n_0 ;
  wire \count1[25]_i_1_n_0 ;
  wire \count1[26]_i_1_n_0 ;
  wire \count1[27]_i_1_n_0 ;
  wire \count1[28]_i_1_n_0 ;
  wire \count1[29]_i_1_n_0 ;
  wire \count1[2]_i_1_n_0 ;
  wire \count1[30]_i_1_n_0 ;
  wire \count1[31]_i_10_n_0 ;
  wire \count1[31]_i_11_n_0 ;
  wire \count1[31]_i_12_n_0 ;
  wire \count1[31]_i_13_n_0 ;
  wire \count1[31]_i_14_n_0 ;
  wire \count1[31]_i_15_n_0 ;
  wire \count1[31]_i_1_n_0 ;
  wire \count1[31]_i_2_n_0 ;
  wire \count1[31]_i_3_n_0 ;
  wire \count1[31]_i_4_n_0 ;
  wire \count1[31]_i_5_n_0 ;
  wire \count1[31]_i_7_n_0 ;
  wire \count1[31]_i_8_n_0 ;
  wire \count1[31]_i_9_n_0 ;
  wire \count1[3]_i_1_n_0 ;
  wire \count1[4]_i_1_n_0 ;
  wire \count1[5]_i_1_n_0 ;
  wire \count1[6]_i_1_n_0 ;
  wire \count1[7]_i_1_n_0 ;
  wire \count1[8]_i_1_n_0 ;
  wire \count1[9]_i_1_n_0 ;
  wire \count1_reg[12]_i_2_n_0 ;
  wire \count1_reg[12]_i_2_n_1 ;
  wire \count1_reg[12]_i_2_n_2 ;
  wire \count1_reg[12]_i_2_n_3 ;
  wire \count1_reg[16]_i_2_n_0 ;
  wire \count1_reg[16]_i_2_n_1 ;
  wire \count1_reg[16]_i_2_n_2 ;
  wire \count1_reg[16]_i_2_n_3 ;
  wire \count1_reg[20]_i_2_n_0 ;
  wire \count1_reg[20]_i_2_n_1 ;
  wire \count1_reg[20]_i_2_n_2 ;
  wire \count1_reg[20]_i_2_n_3 ;
  wire \count1_reg[24]_i_2_n_0 ;
  wire \count1_reg[24]_i_2_n_1 ;
  wire \count1_reg[24]_i_2_n_2 ;
  wire \count1_reg[24]_i_2_n_3 ;
  wire \count1_reg[28]_i_2_n_0 ;
  wire \count1_reg[28]_i_2_n_1 ;
  wire \count1_reg[28]_i_2_n_2 ;
  wire \count1_reg[28]_i_2_n_3 ;
  wire \count1_reg[31]_i_6_n_2 ;
  wire \count1_reg[31]_i_6_n_3 ;
  wire \count1_reg[4]_i_2_n_0 ;
  wire \count1_reg[4]_i_2_n_1 ;
  wire \count1_reg[4]_i_2_n_2 ;
  wire \count1_reg[4]_i_2_n_3 ;
  wire \count1_reg[8]_i_2_n_0 ;
  wire \count1_reg[8]_i_2_n_1 ;
  wire \count1_reg[8]_i_2_n_2 ;
  wire \count1_reg[8]_i_2_n_3 ;
  wire \count1_reg_n_0_[0] ;
  wire \count1_reg_n_0_[10] ;
  wire \count1_reg_n_0_[11] ;
  wire \count1_reg_n_0_[12] ;
  wire \count1_reg_n_0_[13] ;
  wire \count1_reg_n_0_[14] ;
  wire \count1_reg_n_0_[15] ;
  wire \count1_reg_n_0_[16] ;
  wire \count1_reg_n_0_[17] ;
  wire \count1_reg_n_0_[18] ;
  wire \count1_reg_n_0_[19] ;
  wire \count1_reg_n_0_[1] ;
  wire \count1_reg_n_0_[20] ;
  wire \count1_reg_n_0_[21] ;
  wire \count1_reg_n_0_[22] ;
  wire \count1_reg_n_0_[23] ;
  wire \count1_reg_n_0_[24] ;
  wire \count1_reg_n_0_[25] ;
  wire \count1_reg_n_0_[26] ;
  wire \count1_reg_n_0_[27] ;
  wire \count1_reg_n_0_[28] ;
  wire \count1_reg_n_0_[29] ;
  wire \count1_reg_n_0_[2] ;
  wire \count1_reg_n_0_[30] ;
  wire \count1_reg_n_0_[31] ;
  wire \count1_reg_n_0_[3] ;
  wire \count1_reg_n_0_[4] ;
  wire \count1_reg_n_0_[5] ;
  wire \count1_reg_n_0_[6] ;
  wire \count1_reg_n_0_[7] ;
  wire \count1_reg_n_0_[8] ;
  wire \count1_reg_n_0_[9] ;
  wire [31:1]data0;
  wire \dout0[15]_i_1_n_0 ;
  wire \dout0[15]_i_2_n_0 ;
  wire drdy_i_1_n_0;
  wire drdy_i_2_n_0;
  wire drdy_i_3_n_0;
  wire in0_O;
  wire [31:1]in11;
  wire in1_I;
  wire in2_I;
  wire in3_O;
  wire s00_axi_aclk;
  wire s00_axi_aresetn;
  wire [15:0]shft0;
  wire \shft0[15]_i_1_n_0 ;
  wire \shft0[15]_i_3_n_0 ;
  wire \shft0[15]_i_4_n_0 ;
  wire \shft0[15]_i_5_n_0 ;
  wire \shft0_reg_n_0_[0] ;
  wire \shft0_reg_n_0_[10] ;
  wire \shft0_reg_n_0_[11] ;
  wire \shft0_reg_n_0_[12] ;
  wire \shft0_reg_n_0_[13] ;
  wire \shft0_reg_n_0_[14] ;
  wire \shft0_reg_n_0_[15] ;
  wire \shft0_reg_n_0_[1] ;
  wire \shft0_reg_n_0_[2] ;
  wire \shft0_reg_n_0_[3] ;
  wire \shft0_reg_n_0_[4] ;
  wire \shft0_reg_n_0_[5] ;
  wire \shft0_reg_n_0_[6] ;
  wire \shft0_reg_n_0_[7] ;
  wire \shft0_reg_n_0_[8] ;
  wire \shft0_reg_n_0_[9] ;
  wire [15:0]shft1;
  wire \shft1_reg_n_0_[0] ;
  wire \shft1_reg_n_0_[10] ;
  wire \shft1_reg_n_0_[11] ;
  wire \shft1_reg_n_0_[12] ;
  wire \shft1_reg_n_0_[13] ;
  wire \shft1_reg_n_0_[14] ;
  wire \shft1_reg_n_0_[15] ;
  wire \shft1_reg_n_0_[1] ;
  wire \shft1_reg_n_0_[2] ;
  wire \shft1_reg_n_0_[3] ;
  wire \shft1_reg_n_0_[4] ;
  wire \shft1_reg_n_0_[5] ;
  wire \shft1_reg_n_0_[6] ;
  wire \shft1_reg_n_0_[7] ;
  wire \shft1_reg_n_0_[8] ;
  wire \shft1_reg_n_0_[9] ;
  wire [1:0]state__0;
  wire [3:2]\NLW_count0_reg[31]_i_4_CO_UNCONNECTED ;
  wire [3:3]\NLW_count0_reg[31]_i_4_O_UNCONNECTED ;
  wire [3:2]\NLW_count1_reg[31]_i_6_CO_UNCONNECTED ;
  wire [3:3]\NLW_count1_reg[31]_i_6_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h0000007FFFFFFF80)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(\FSM_sequential_state[0]_i_2_n_0 ),
        .I1(\FSM_sequential_state[0]_i_3_n_0 ),
        .I2(\count0_reg_n_0_[6] ),
        .I3(\dout0[15]_i_1_n_0 ),
        .I4(\FSM_sequential_state[0]_i_4_n_0 ),
        .I5(state__0[0]),
        .O(\FSM_sequential_state[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \FSM_sequential_state[0]_i_2 
       (.I0(\count0_reg_n_0_[4] ),
        .I1(\count0_reg_n_0_[1] ),
        .I2(PmodAD1_pmod_bridge_0_0_i_4_n_0),
        .I3(\count0_reg_n_0_[0] ),
        .O(\FSM_sequential_state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h1000000000000000)) 
    \FSM_sequential_state[0]_i_3 
       (.I0(\shft0[15]_i_5_n_0 ),
        .I1(\count0_reg_n_0_[3] ),
        .I2(\count0_reg_n_0_[5] ),
        .I3(\count0_reg_n_0_[7] ),
        .I4(\count0_reg_n_0_[8] ),
        .I5(state__0[0]),
        .O(\FSM_sequential_state[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h08080F0808080808)) 
    \FSM_sequential_state[0]_i_4 
       (.I0(\FSM_sequential_state[0]_i_5_n_0 ),
        .I1(\FSM_sequential_state[0]_i_6_n_0 ),
        .I2(\count0[31]_i_3_n_0 ),
        .I3(\count0_reg_n_0_[4] ),
        .I4(PmodAD1_pmod_bridge_0_0_i_3_n_0),
        .I5(\FSM_sequential_state[1]_i_5_n_0 ),
        .O(\FSM_sequential_state[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    \FSM_sequential_state[0]_i_5 
       (.I0(\count0_reg_n_0_[7] ),
        .I1(\count0_reg_n_0_[8] ),
        .I2(\count0_reg_n_0_[4] ),
        .I3(\count0_reg_n_0_[6] ),
        .I4(state__0[0]),
        .I5(\count0_reg_n_0_[5] ),
        .O(\FSM_sequential_state[0]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \FSM_sequential_state[0]_i_6 
       (.I0(state__0[1]),
        .I1(\count0_reg_n_0_[3] ),
        .I2(\count0_reg_n_0_[2] ),
        .O(\FSM_sequential_state[0]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \FSM_sequential_state[1]_i_1 
       (.I0(state__0[0]),
        .I1(\FSM_sequential_state[1]_i_2_n_0 ),
        .I2(state__0[1]),
        .O(\FSM_sequential_state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFEAEAEEEA)) 
    \FSM_sequential_state[1]_i_2 
       (.I0(\FSM_sequential_state[1]_i_3_n_0 ),
        .I1(\FSM_sequential_state[1]_i_4_n_0 ),
        .I2(\FSM_sequential_state[1]_i_5_n_0 ),
        .I3(\FSM_sequential_state[1]_i_6_n_0 ),
        .I4(\count1[31]_i_4_n_0 ),
        .I5(\FSM_sequential_state[1]_i_7_n_0 ),
        .O(\FSM_sequential_state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    \FSM_sequential_state[1]_i_3 
       (.I0(\count0_reg_n_0_[2] ),
        .I1(\count1[31]_i_11_n_0 ),
        .I2(\count0_reg_n_0_[0] ),
        .I3(PmodAD1_pmod_bridge_0_0_i_4_n_0),
        .I4(\count0_reg_n_0_[1] ),
        .I5(\FSM_sequential_state[0]_i_5_n_0 ),
        .O(\FSM_sequential_state[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'h00002000)) 
    \FSM_sequential_state[1]_i_4 
       (.I0(\count0_reg_n_0_[0] ),
        .I1(PmodAD1_pmod_bridge_0_0_i_4_n_0),
        .I2(\count0_reg_n_0_[1] ),
        .I3(\count0_reg_n_0_[4] ),
        .I4(PmodAD1_pmod_bridge_0_0_i_3_n_0),
        .O(\FSM_sequential_state[1]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00400000)) 
    \FSM_sequential_state[1]_i_5 
       (.I0(\count0_reg_n_0_[2] ),
        .I1(\count0_reg_n_0_[5] ),
        .I2(state__0[0]),
        .I3(state__0[1]),
        .I4(\count0_reg_n_0_[3] ),
        .O(\FSM_sequential_state[1]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00000004)) 
    \FSM_sequential_state[1]_i_6 
       (.I0(\count0_reg_n_0_[2] ),
        .I1(state__0[1]),
        .I2(\count0_reg_n_0_[5] ),
        .I3(state__0[0]),
        .I4(\count0_reg_n_0_[3] ),
        .O(\FSM_sequential_state[1]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0800000000000000)) 
    \FSM_sequential_state[1]_i_7 
       (.I0(\count0_reg_n_0_[4] ),
        .I1(\count0_reg_n_0_[1] ),
        .I2(PmodAD1_pmod_bridge_0_0_i_4_n_0),
        .I3(\count0_reg_n_0_[0] ),
        .I4(\FSM_sequential_state[0]_i_3_n_0 ),
        .I5(\count0_reg_n_0_[6] ),
        .O(\FSM_sequential_state[1]_i_7_n_0 ));
  (* FSM_ENCODED_STATES = "S_HOLD:00,S_FRONT_PORCH:01,S_SHIFTING:10,S_BACK_PORCH:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_state[0]_i_1_n_0 ),
        .Q(state__0[0]),
        .R(SR));
  (* FSM_ENCODED_STATES = "S_HOLD:00,S_FRONT_PORCH:01,S_SHIFTING:10,S_BACK_PORCH:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\FSM_sequential_state[1]_i_1_n_0 ),
        .Q(state__0[1]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h1)) 
    PmodAD1_pmod_bridge_0_0_i_1
       (.I0(state__0[0]),
        .I1(state__0[1]),
        .O(in0_O));
  LUT4 #(
    .INIT(16'hFFFE)) 
    PmodAD1_pmod_bridge_0_0_i_10
       (.I0(\count0_reg_n_0_[15] ),
        .I1(\count0_reg_n_0_[14] ),
        .I2(\count0_reg_n_0_[17] ),
        .I3(\count0_reg_n_0_[16] ),
        .O(PmodAD1_pmod_bridge_0_0_i_10_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    PmodAD1_pmod_bridge_0_0_i_11
       (.I0(\count0_reg_n_0_[11] ),
        .I1(\count0_reg_n_0_[10] ),
        .I2(\count0_reg_n_0_[13] ),
        .I3(\count0_reg_n_0_[12] ),
        .O(PmodAD1_pmod_bridge_0_0_i_11_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEEE)) 
    PmodAD1_pmod_bridge_0_0_i_2
       (.I0(PmodAD1_pmod_bridge_0_0_i_3_n_0),
        .I1(\count0_reg_n_0_[4] ),
        .I2(\count0_reg_n_0_[3] ),
        .I3(\count0_reg_n_0_[2] ),
        .I4(PmodAD1_pmod_bridge_0_0_i_4_n_0),
        .I5(PmodAD1_pmod_bridge_0_0_i_5_n_0),
        .O(in3_O));
  LUT3 #(
    .INIT(8'hFE)) 
    PmodAD1_pmod_bridge_0_0_i_3
       (.I0(\count0_reg_n_0_[8] ),
        .I1(\count0_reg_n_0_[7] ),
        .I2(\count0_reg_n_0_[6] ),
        .O(PmodAD1_pmod_bridge_0_0_i_3_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    PmodAD1_pmod_bridge_0_0_i_4
       (.I0(PmodAD1_pmod_bridge_0_0_i_6_n_0),
        .I1(PmodAD1_pmod_bridge_0_0_i_7_n_0),
        .I2(PmodAD1_pmod_bridge_0_0_i_8_n_0),
        .I3(PmodAD1_pmod_bridge_0_0_i_9_n_0),
        .I4(PmodAD1_pmod_bridge_0_0_i_10_n_0),
        .I5(PmodAD1_pmod_bridge_0_0_i_11_n_0),
        .O(PmodAD1_pmod_bridge_0_0_i_4_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hFFFDFDFD)) 
    PmodAD1_pmod_bridge_0_0_i_5
       (.I0(state__0[1]),
        .I1(\count0_reg_n_0_[5] ),
        .I2(state__0[0]),
        .I3(\count0_reg_n_0_[3] ),
        .I4(\count0_reg_n_0_[1] ),
        .O(PmodAD1_pmod_bridge_0_0_i_5_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    PmodAD1_pmod_bridge_0_0_i_6
       (.I0(\count0_reg_n_0_[27] ),
        .I1(\count0_reg_n_0_[26] ),
        .I2(\count0_reg_n_0_[29] ),
        .I3(\count0_reg_n_0_[28] ),
        .O(PmodAD1_pmod_bridge_0_0_i_6_n_0));
  LUT3 #(
    .INIT(8'hFE)) 
    PmodAD1_pmod_bridge_0_0_i_7
       (.I0(\count0_reg_n_0_[31] ),
        .I1(\count0_reg_n_0_[30] ),
        .I2(\count0_reg_n_0_[9] ),
        .O(PmodAD1_pmod_bridge_0_0_i_7_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    PmodAD1_pmod_bridge_0_0_i_8
       (.I0(\count0_reg_n_0_[19] ),
        .I1(\count0_reg_n_0_[18] ),
        .I2(\count0_reg_n_0_[21] ),
        .I3(\count0_reg_n_0_[20] ),
        .O(PmodAD1_pmod_bridge_0_0_i_8_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    PmodAD1_pmod_bridge_0_0_i_9
       (.I0(\count0_reg_n_0_[23] ),
        .I1(\count0_reg_n_0_[22] ),
        .I2(\count0_reg_n_0_[25] ),
        .I3(\count0_reg_n_0_[24] ),
        .O(PmodAD1_pmod_bridge_0_0_i_9_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(s00_axi_aresetn),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \count0[0]_i_1 
       (.I0(\count0[31]_i_2_n_0 ),
        .I1(\count0[31]_i_3_n_0 ),
        .I2(\count0_reg_n_0_[0] ),
        .O(\count0[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \count0[10]_i_1 
       (.I0(\count0[31]_i_2_n_0 ),
        .I1(\count0[31]_i_3_n_0 ),
        .I2(data0[10]),
        .O(count0[10]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \count0[11]_i_1 
       (.I0(\count0[31]_i_2_n_0 ),
        .I1(\count0[31]_i_3_n_0 ),
        .I2(data0[11]),
        .O(count0[11]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \count0[12]_i_1 
       (.I0(\count0[31]_i_2_n_0 ),
        .I1(\count0[31]_i_3_n_0 ),
        .I2(data0[12]),
        .O(count0[12]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \count0[13]_i_1 
       (.I0(\count0[31]_i_2_n_0 ),
        .I1(\count0[31]_i_3_n_0 ),
        .I2(data0[13]),
        .O(count0[13]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \count0[14]_i_1 
       (.I0(\count0[31]_i_2_n_0 ),
        .I1(\count0[31]_i_3_n_0 ),
        .I2(data0[14]),
        .O(count0[14]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \count0[15]_i_1 
       (.I0(\count0[31]_i_2_n_0 ),
        .I1(\count0[31]_i_3_n_0 ),
        .I2(data0[15]),
        .O(count0[15]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \count0[16]_i_1 
       (.I0(\count0[31]_i_2_n_0 ),
        .I1(\count0[31]_i_3_n_0 ),
        .I2(data0[16]),
        .O(count0[16]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \count0[17]_i_1 
       (.I0(\count0[31]_i_2_n_0 ),
        .I1(\count0[31]_i_3_n_0 ),
        .I2(data0[17]),
        .O(count0[17]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \count0[18]_i_1 
       (.I0(\count0[31]_i_2_n_0 ),
        .I1(\count0[31]_i_3_n_0 ),
        .I2(data0[18]),
        .O(count0[18]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \count0[19]_i_1 
       (.I0(\count0[31]_i_2_n_0 ),
        .I1(\count0[31]_i_3_n_0 ),
        .I2(data0[19]),
        .O(count0[19]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \count0[1]_i_1 
       (.I0(\count0[31]_i_2_n_0 ),
        .I1(\count0[31]_i_3_n_0 ),
        .I2(data0[1]),
        .O(count0[1]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \count0[20]_i_1 
       (.I0(\count0[31]_i_2_n_0 ),
        .I1(\count0[31]_i_3_n_0 ),
        .I2(data0[20]),
        .O(count0[20]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \count0[21]_i_1 
       (.I0(\count0[31]_i_2_n_0 ),
        .I1(\count0[31]_i_3_n_0 ),
        .I2(data0[21]),
        .O(count0[21]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \count0[22]_i_1 
       (.I0(\count0[31]_i_2_n_0 ),
        .I1(\count0[31]_i_3_n_0 ),
        .I2(data0[22]),
        .O(count0[22]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \count0[23]_i_1 
       (.I0(\count0[31]_i_2_n_0 ),
        .I1(\count0[31]_i_3_n_0 ),
        .I2(data0[23]),
        .O(count0[23]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \count0[24]_i_1 
       (.I0(\count0[31]_i_2_n_0 ),
        .I1(\count0[31]_i_3_n_0 ),
        .I2(data0[24]),
        .O(count0[24]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \count0[25]_i_1 
       (.I0(\count0[31]_i_2_n_0 ),
        .I1(\count0[31]_i_3_n_0 ),
        .I2(data0[25]),
        .O(count0[25]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \count0[26]_i_1 
       (.I0(\count0[31]_i_2_n_0 ),
        .I1(\count0[31]_i_3_n_0 ),
        .I2(data0[26]),
        .O(count0[26]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \count0[27]_i_1 
       (.I0(\count0[31]_i_2_n_0 ),
        .I1(\count0[31]_i_3_n_0 ),
        .I2(data0[27]),
        .O(count0[27]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \count0[28]_i_1 
       (.I0(\count0[31]_i_2_n_0 ),
        .I1(\count0[31]_i_3_n_0 ),
        .I2(data0[28]),
        .O(count0[28]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \count0[29]_i_1 
       (.I0(\count0[31]_i_2_n_0 ),
        .I1(\count0[31]_i_3_n_0 ),
        .I2(data0[29]),
        .O(count0[29]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \count0[2]_i_1 
       (.I0(\count0[31]_i_2_n_0 ),
        .I1(\count0[31]_i_3_n_0 ),
        .I2(data0[2]),
        .O(count0[2]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \count0[30]_i_1 
       (.I0(\count0[31]_i_2_n_0 ),
        .I1(\count0[31]_i_3_n_0 ),
        .I2(data0[30]),
        .O(count0[30]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \count0[31]_i_1 
       (.I0(\count0[31]_i_2_n_0 ),
        .I1(\count0[31]_i_3_n_0 ),
        .I2(data0[31]),
        .O(count0[31]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFF9FF9)) 
    \count0[31]_i_2 
       (.I0(\count0_reg_n_0_[4] ),
        .I1(\count0_reg_n_0_[2] ),
        .I2(state__0[0]),
        .I3(\count0_reg_n_0_[5] ),
        .I4(\count0[31]_i_5_n_0 ),
        .I5(\count0[31]_i_6_n_0 ),
        .O(\count0[31]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'hDF)) 
    \count0[31]_i_3 
       (.I0(\count0_reg_n_0_[0] ),
        .I1(PmodAD1_pmod_bridge_0_0_i_4_n_0),
        .I2(\count0_reg_n_0_[1] ),
        .O(\count0[31]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFADFFBFD)) 
    \count0[31]_i_5 
       (.I0(state__0[1]),
        .I1(\count0_reg_n_0_[2] ),
        .I2(\count0_reg_n_0_[6] ),
        .I3(\count0_reg_n_0_[3] ),
        .I4(\count0_reg_n_0_[5] ),
        .O(\count0[31]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFF77E7EE)) 
    \count0[31]_i_6 
       (.I0(\count0_reg_n_0_[8] ),
        .I1(\count0_reg_n_0_[7] ),
        .I2(\count0_reg_n_0_[3] ),
        .I3(\count0_reg_n_0_[5] ),
        .I4(\count0_reg_n_0_[2] ),
        .O(\count0[31]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \count0[3]_i_1 
       (.I0(\count0[31]_i_2_n_0 ),
        .I1(\count0[31]_i_3_n_0 ),
        .I2(data0[3]),
        .O(count0[3]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \count0[4]_i_1 
       (.I0(\count0[31]_i_2_n_0 ),
        .I1(\count0[31]_i_3_n_0 ),
        .I2(data0[4]),
        .O(count0[4]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \count0[5]_i_1 
       (.I0(\count0[31]_i_2_n_0 ),
        .I1(\count0[31]_i_3_n_0 ),
        .I2(data0[5]),
        .O(count0[5]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \count0[6]_i_1 
       (.I0(\count0[31]_i_2_n_0 ),
        .I1(\count0[31]_i_3_n_0 ),
        .I2(data0[6]),
        .O(count0[6]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \count0[7]_i_1 
       (.I0(\count0[31]_i_2_n_0 ),
        .I1(\count0[31]_i_3_n_0 ),
        .I2(data0[7]),
        .O(count0[7]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \count0[8]_i_1 
       (.I0(\count0[31]_i_2_n_0 ),
        .I1(\count0[31]_i_3_n_0 ),
        .I2(data0[8]),
        .O(count0[8]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'hE0)) 
    \count0[9]_i_1 
       (.I0(\count0[31]_i_2_n_0 ),
        .I1(\count0[31]_i_3_n_0 ),
        .I2(data0[9]),
        .O(count0[9]));
  FDRE #(
    .INIT(1'b0)) 
    \count0_reg[0] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(\count0[0]_i_1_n_0 ),
        .Q(\count0_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count0_reg[10] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(count0[10]),
        .Q(\count0_reg_n_0_[10] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count0_reg[11] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(count0[11]),
        .Q(\count0_reg_n_0_[11] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count0_reg[12] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(count0[12]),
        .Q(\count0_reg_n_0_[12] ),
        .R(SR));
  CARRY4 \count0_reg[12]_i_2 
       (.CI(\count0_reg[8]_i_2_n_0 ),
        .CO({\count0_reg[12]_i_2_n_0 ,\count0_reg[12]_i_2_n_1 ,\count0_reg[12]_i_2_n_2 ,\count0_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S({\count0_reg_n_0_[12] ,\count0_reg_n_0_[11] ,\count0_reg_n_0_[10] ,\count0_reg_n_0_[9] }));
  FDRE #(
    .INIT(1'b0)) 
    \count0_reg[13] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(count0[13]),
        .Q(\count0_reg_n_0_[13] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count0_reg[14] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(count0[14]),
        .Q(\count0_reg_n_0_[14] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count0_reg[15] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(count0[15]),
        .Q(\count0_reg_n_0_[15] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count0_reg[16] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(count0[16]),
        .Q(\count0_reg_n_0_[16] ),
        .R(SR));
  CARRY4 \count0_reg[16]_i_2 
       (.CI(\count0_reg[12]_i_2_n_0 ),
        .CO({\count0_reg[16]_i_2_n_0 ,\count0_reg[16]_i_2_n_1 ,\count0_reg[16]_i_2_n_2 ,\count0_reg[16]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S({\count0_reg_n_0_[16] ,\count0_reg_n_0_[15] ,\count0_reg_n_0_[14] ,\count0_reg_n_0_[13] }));
  FDRE #(
    .INIT(1'b0)) 
    \count0_reg[17] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(count0[17]),
        .Q(\count0_reg_n_0_[17] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count0_reg[18] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(count0[18]),
        .Q(\count0_reg_n_0_[18] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count0_reg[19] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(count0[19]),
        .Q(\count0_reg_n_0_[19] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count0_reg[1] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(count0[1]),
        .Q(\count0_reg_n_0_[1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count0_reg[20] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(count0[20]),
        .Q(\count0_reg_n_0_[20] ),
        .R(SR));
  CARRY4 \count0_reg[20]_i_2 
       (.CI(\count0_reg[16]_i_2_n_0 ),
        .CO({\count0_reg[20]_i_2_n_0 ,\count0_reg[20]_i_2_n_1 ,\count0_reg[20]_i_2_n_2 ,\count0_reg[20]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[20:17]),
        .S({\count0_reg_n_0_[20] ,\count0_reg_n_0_[19] ,\count0_reg_n_0_[18] ,\count0_reg_n_0_[17] }));
  FDRE #(
    .INIT(1'b0)) 
    \count0_reg[21] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(count0[21]),
        .Q(\count0_reg_n_0_[21] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count0_reg[22] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(count0[22]),
        .Q(\count0_reg_n_0_[22] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count0_reg[23] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(count0[23]),
        .Q(\count0_reg_n_0_[23] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count0_reg[24] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(count0[24]),
        .Q(\count0_reg_n_0_[24] ),
        .R(SR));
  CARRY4 \count0_reg[24]_i_2 
       (.CI(\count0_reg[20]_i_2_n_0 ),
        .CO({\count0_reg[24]_i_2_n_0 ,\count0_reg[24]_i_2_n_1 ,\count0_reg[24]_i_2_n_2 ,\count0_reg[24]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[24:21]),
        .S({\count0_reg_n_0_[24] ,\count0_reg_n_0_[23] ,\count0_reg_n_0_[22] ,\count0_reg_n_0_[21] }));
  FDRE #(
    .INIT(1'b0)) 
    \count0_reg[25] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(count0[25]),
        .Q(\count0_reg_n_0_[25] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count0_reg[26] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(count0[26]),
        .Q(\count0_reg_n_0_[26] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count0_reg[27] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(count0[27]),
        .Q(\count0_reg_n_0_[27] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count0_reg[28] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(count0[28]),
        .Q(\count0_reg_n_0_[28] ),
        .R(SR));
  CARRY4 \count0_reg[28]_i_2 
       (.CI(\count0_reg[24]_i_2_n_0 ),
        .CO({\count0_reg[28]_i_2_n_0 ,\count0_reg[28]_i_2_n_1 ,\count0_reg[28]_i_2_n_2 ,\count0_reg[28]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[28:25]),
        .S({\count0_reg_n_0_[28] ,\count0_reg_n_0_[27] ,\count0_reg_n_0_[26] ,\count0_reg_n_0_[25] }));
  FDRE #(
    .INIT(1'b0)) 
    \count0_reg[29] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(count0[29]),
        .Q(\count0_reg_n_0_[29] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count0_reg[2] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(count0[2]),
        .Q(\count0_reg_n_0_[2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count0_reg[30] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(count0[30]),
        .Q(\count0_reg_n_0_[30] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count0_reg[31] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(count0[31]),
        .Q(\count0_reg_n_0_[31] ),
        .R(SR));
  CARRY4 \count0_reg[31]_i_4 
       (.CI(\count0_reg[28]_i_2_n_0 ),
        .CO({\NLW_count0_reg[31]_i_4_CO_UNCONNECTED [3:2],\count0_reg[31]_i_4_n_2 ,\count0_reg[31]_i_4_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_count0_reg[31]_i_4_O_UNCONNECTED [3],data0[31:29]}),
        .S({1'b0,\count0_reg_n_0_[31] ,\count0_reg_n_0_[30] ,\count0_reg_n_0_[29] }));
  FDRE #(
    .INIT(1'b0)) 
    \count0_reg[3] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(count0[3]),
        .Q(\count0_reg_n_0_[3] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count0_reg[4] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(count0[4]),
        .Q(\count0_reg_n_0_[4] ),
        .R(SR));
  CARRY4 \count0_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\count0_reg[4]_i_2_n_0 ,\count0_reg[4]_i_2_n_1 ,\count0_reg[4]_i_2_n_2 ,\count0_reg[4]_i_2_n_3 }),
        .CYINIT(\count0_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S({\count0_reg_n_0_[4] ,\count0_reg_n_0_[3] ,\count0_reg_n_0_[2] ,\count0_reg_n_0_[1] }));
  FDRE #(
    .INIT(1'b0)) 
    \count0_reg[5] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(count0[5]),
        .Q(\count0_reg_n_0_[5] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count0_reg[6] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(count0[6]),
        .Q(\count0_reg_n_0_[6] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count0_reg[7] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(count0[7]),
        .Q(\count0_reg_n_0_[7] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count0_reg[8] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(count0[8]),
        .Q(\count0_reg_n_0_[8] ),
        .R(SR));
  CARRY4 \count0_reg[8]_i_2 
       (.CI(\count0_reg[4]_i_2_n_0 ),
        .CO({\count0_reg[8]_i_2_n_0 ,\count0_reg[8]_i_2_n_1 ,\count0_reg[8]_i_2_n_2 ,\count0_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S({\count0_reg_n_0_[8] ,\count0_reg_n_0_[7] ,\count0_reg_n_0_[6] ,\count0_reg_n_0_[5] }));
  FDRE #(
    .INIT(1'b0)) 
    \count0_reg[9] 
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(count0[9]),
        .Q(\count0_reg_n_0_[9] ),
        .R(SR));
  LUT2 #(
    .INIT(4'h2)) 
    \count1[0]_i_1 
       (.I0(state__0[1]),
        .I1(\count1_reg_n_0_[0] ),
        .O(count1));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count1[10]_i_1 
       (.I0(state__0[1]),
        .I1(in11[10]),
        .O(\count1[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count1[11]_i_1 
       (.I0(state__0[1]),
        .I1(in11[11]),
        .O(\count1[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count1[12]_i_1 
       (.I0(state__0[1]),
        .I1(in11[12]),
        .O(\count1[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count1[13]_i_1 
       (.I0(state__0[1]),
        .I1(in11[13]),
        .O(\count1[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count1[14]_i_1 
       (.I0(state__0[1]),
        .I1(in11[14]),
        .O(\count1[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count1[15]_i_1 
       (.I0(state__0[1]),
        .I1(in11[15]),
        .O(\count1[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count1[16]_i_1 
       (.I0(state__0[1]),
        .I1(in11[16]),
        .O(\count1[16]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count1[17]_i_1 
       (.I0(state__0[1]),
        .I1(in11[17]),
        .O(\count1[17]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count1[18]_i_1 
       (.I0(state__0[1]),
        .I1(in11[18]),
        .O(\count1[18]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count1[19]_i_1 
       (.I0(state__0[1]),
        .I1(in11[19]),
        .O(\count1[19]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count1[1]_i_1 
       (.I0(state__0[1]),
        .I1(in11[1]),
        .O(\count1[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count1[20]_i_1 
       (.I0(state__0[1]),
        .I1(in11[20]),
        .O(\count1[20]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count1[21]_i_1 
       (.I0(state__0[1]),
        .I1(in11[21]),
        .O(\count1[21]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count1[22]_i_1 
       (.I0(state__0[1]),
        .I1(in11[22]),
        .O(\count1[22]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count1[23]_i_1 
       (.I0(state__0[1]),
        .I1(in11[23]),
        .O(\count1[23]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count1[24]_i_1 
       (.I0(state__0[1]),
        .I1(in11[24]),
        .O(\count1[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count1[25]_i_1 
       (.I0(state__0[1]),
        .I1(in11[25]),
        .O(\count1[25]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count1[26]_i_1 
       (.I0(state__0[1]),
        .I1(in11[26]),
        .O(\count1[26]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count1[27]_i_1 
       (.I0(state__0[1]),
        .I1(in11[27]),
        .O(\count1[27]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count1[28]_i_1 
       (.I0(state__0[1]),
        .I1(in11[28]),
        .O(\count1[28]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count1[29]_i_1 
       (.I0(state__0[1]),
        .I1(in11[29]),
        .O(\count1[29]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count1[2]_i_1 
       (.I0(state__0[1]),
        .I1(in11[2]),
        .O(\count1[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count1[30]_i_1 
       (.I0(state__0[1]),
        .I1(in11[30]),
        .O(\count1[30]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'hF8)) 
    \count1[31]_i_1 
       (.I0(\count1[31]_i_3_n_0 ),
        .I1(\count1[31]_i_4_n_0 ),
        .I2(\count1[31]_i_5_n_0 ),
        .O(\count1[31]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \count1[31]_i_10 
       (.I0(\count1_reg_n_0_[18] ),
        .I1(\count1_reg_n_0_[19] ),
        .I2(\count1_reg_n_0_[16] ),
        .I3(\count1_reg_n_0_[17] ),
        .I4(\count1[31]_i_15_n_0 ),
        .O(\count1[31]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \count1[31]_i_11 
       (.I0(\count0_reg_n_0_[3] ),
        .I1(state__0[1]),
        .O(\count1[31]_i_11_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \count1[31]_i_12 
       (.I0(\count1_reg_n_0_[13] ),
        .I1(\count1_reg_n_0_[12] ),
        .I2(\count1_reg_n_0_[15] ),
        .I3(\count1_reg_n_0_[14] ),
        .O(\count1[31]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \count1[31]_i_13 
       (.I0(\count1_reg_n_0_[5] ),
        .I1(\count1_reg_n_0_[4] ),
        .I2(\count1_reg_n_0_[7] ),
        .I3(\count1_reg_n_0_[6] ),
        .O(\count1[31]_i_13_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \count1[31]_i_14 
       (.I0(\count1_reg_n_0_[29] ),
        .I1(\count1_reg_n_0_[28] ),
        .I2(\count1_reg_n_0_[31] ),
        .I3(\count1_reg_n_0_[30] ),
        .O(\count1[31]_i_14_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \count1[31]_i_15 
       (.I0(\count1_reg_n_0_[21] ),
        .I1(\count1_reg_n_0_[20] ),
        .I2(\count1_reg_n_0_[23] ),
        .I3(\count1_reg_n_0_[22] ),
        .O(\count1[31]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count1[31]_i_2 
       (.I0(state__0[1]),
        .I1(in11[31]),
        .O(\count1[31]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000400000000)) 
    \count1[31]_i_3 
       (.I0(\count0_reg_n_0_[3] ),
        .I1(\dout0[15]_i_2_n_0 ),
        .I2(\count0_reg_n_0_[8] ),
        .I3(\count0_reg_n_0_[7] ),
        .I4(\count0_reg_n_0_[6] ),
        .I5(\FSM_sequential_state[0]_i_2_n_0 ),
        .O(\count1[31]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \count1[31]_i_4 
       (.I0(\count1[31]_i_7_n_0 ),
        .I1(\count1[31]_i_8_n_0 ),
        .I2(\count1[31]_i_9_n_0 ),
        .I3(\count1[31]_i_10_n_0 ),
        .O(\count1[31]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000008000000000)) 
    \count1[31]_i_5 
       (.I0(\count1[31]_i_11_n_0 ),
        .I1(state__0[0]),
        .I2(\count0_reg_n_0_[5] ),
        .I3(\count0_reg_n_0_[2] ),
        .I4(PmodAD1_pmod_bridge_0_0_i_3_n_0),
        .I5(\FSM_sequential_state[0]_i_2_n_0 ),
        .O(\count1[31]_i_5_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \count1[31]_i_7 
       (.I0(\count1_reg_n_0_[10] ),
        .I1(\count1_reg_n_0_[11] ),
        .I2(\count1_reg_n_0_[8] ),
        .I3(\count1_reg_n_0_[9] ),
        .I4(\count1[31]_i_12_n_0 ),
        .O(\count1[31]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF7FFF)) 
    \count1[31]_i_8 
       (.I0(\count1_reg_n_0_[2] ),
        .I1(\count1_reg_n_0_[3] ),
        .I2(\count1_reg_n_0_[0] ),
        .I3(\count1_reg_n_0_[1] ),
        .I4(\count1[31]_i_13_n_0 ),
        .O(\count1[31]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \count1[31]_i_9 
       (.I0(\count1_reg_n_0_[26] ),
        .I1(\count1_reg_n_0_[27] ),
        .I2(\count1_reg_n_0_[24] ),
        .I3(\count1_reg_n_0_[25] ),
        .I4(\count1[31]_i_14_n_0 ),
        .O(\count1[31]_i_9_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count1[3]_i_1 
       (.I0(state__0[1]),
        .I1(in11[3]),
        .O(\count1[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count1[4]_i_1 
       (.I0(state__0[1]),
        .I1(in11[4]),
        .O(\count1[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count1[5]_i_1 
       (.I0(state__0[1]),
        .I1(in11[5]),
        .O(\count1[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count1[6]_i_1 
       (.I0(state__0[1]),
        .I1(in11[6]),
        .O(\count1[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count1[7]_i_1 
       (.I0(state__0[1]),
        .I1(in11[7]),
        .O(\count1[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count1[8]_i_1 
       (.I0(state__0[1]),
        .I1(in11[8]),
        .O(\count1[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \count1[9]_i_1 
       (.I0(state__0[1]),
        .I1(in11[9]),
        .O(\count1[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\count1[31]_i_1_n_0 ),
        .D(count1),
        .Q(\count1_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\count1[31]_i_1_n_0 ),
        .D(\count1[10]_i_1_n_0 ),
        .Q(\count1_reg_n_0_[10] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\count1[31]_i_1_n_0 ),
        .D(\count1[11]_i_1_n_0 ),
        .Q(\count1_reg_n_0_[11] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\count1[31]_i_1_n_0 ),
        .D(\count1[12]_i_1_n_0 ),
        .Q(\count1_reg_n_0_[12] ),
        .R(SR));
  CARRY4 \count1_reg[12]_i_2 
       (.CI(\count1_reg[8]_i_2_n_0 ),
        .CO({\count1_reg[12]_i_2_n_0 ,\count1_reg[12]_i_2_n_1 ,\count1_reg[12]_i_2_n_2 ,\count1_reg[12]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in11[12:9]),
        .S({\count1_reg_n_0_[12] ,\count1_reg_n_0_[11] ,\count1_reg_n_0_[10] ,\count1_reg_n_0_[9] }));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\count1[31]_i_1_n_0 ),
        .D(\count1[13]_i_1_n_0 ),
        .Q(\count1_reg_n_0_[13] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\count1[31]_i_1_n_0 ),
        .D(\count1[14]_i_1_n_0 ),
        .Q(\count1_reg_n_0_[14] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\count1[31]_i_1_n_0 ),
        .D(\count1[15]_i_1_n_0 ),
        .Q(\count1_reg_n_0_[15] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[16] 
       (.C(s00_axi_aclk),
        .CE(\count1[31]_i_1_n_0 ),
        .D(\count1[16]_i_1_n_0 ),
        .Q(\count1_reg_n_0_[16] ),
        .R(SR));
  CARRY4 \count1_reg[16]_i_2 
       (.CI(\count1_reg[12]_i_2_n_0 ),
        .CO({\count1_reg[16]_i_2_n_0 ,\count1_reg[16]_i_2_n_1 ,\count1_reg[16]_i_2_n_2 ,\count1_reg[16]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in11[16:13]),
        .S({\count1_reg_n_0_[16] ,\count1_reg_n_0_[15] ,\count1_reg_n_0_[14] ,\count1_reg_n_0_[13] }));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[17] 
       (.C(s00_axi_aclk),
        .CE(\count1[31]_i_1_n_0 ),
        .D(\count1[17]_i_1_n_0 ),
        .Q(\count1_reg_n_0_[17] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[18] 
       (.C(s00_axi_aclk),
        .CE(\count1[31]_i_1_n_0 ),
        .D(\count1[18]_i_1_n_0 ),
        .Q(\count1_reg_n_0_[18] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[19] 
       (.C(s00_axi_aclk),
        .CE(\count1[31]_i_1_n_0 ),
        .D(\count1[19]_i_1_n_0 ),
        .Q(\count1_reg_n_0_[19] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\count1[31]_i_1_n_0 ),
        .D(\count1[1]_i_1_n_0 ),
        .Q(\count1_reg_n_0_[1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[20] 
       (.C(s00_axi_aclk),
        .CE(\count1[31]_i_1_n_0 ),
        .D(\count1[20]_i_1_n_0 ),
        .Q(\count1_reg_n_0_[20] ),
        .R(SR));
  CARRY4 \count1_reg[20]_i_2 
       (.CI(\count1_reg[16]_i_2_n_0 ),
        .CO({\count1_reg[20]_i_2_n_0 ,\count1_reg[20]_i_2_n_1 ,\count1_reg[20]_i_2_n_2 ,\count1_reg[20]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in11[20:17]),
        .S({\count1_reg_n_0_[20] ,\count1_reg_n_0_[19] ,\count1_reg_n_0_[18] ,\count1_reg_n_0_[17] }));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[21] 
       (.C(s00_axi_aclk),
        .CE(\count1[31]_i_1_n_0 ),
        .D(\count1[21]_i_1_n_0 ),
        .Q(\count1_reg_n_0_[21] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[22] 
       (.C(s00_axi_aclk),
        .CE(\count1[31]_i_1_n_0 ),
        .D(\count1[22]_i_1_n_0 ),
        .Q(\count1_reg_n_0_[22] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[23] 
       (.C(s00_axi_aclk),
        .CE(\count1[31]_i_1_n_0 ),
        .D(\count1[23]_i_1_n_0 ),
        .Q(\count1_reg_n_0_[23] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[24] 
       (.C(s00_axi_aclk),
        .CE(\count1[31]_i_1_n_0 ),
        .D(\count1[24]_i_1_n_0 ),
        .Q(\count1_reg_n_0_[24] ),
        .R(SR));
  CARRY4 \count1_reg[24]_i_2 
       (.CI(\count1_reg[20]_i_2_n_0 ),
        .CO({\count1_reg[24]_i_2_n_0 ,\count1_reg[24]_i_2_n_1 ,\count1_reg[24]_i_2_n_2 ,\count1_reg[24]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in11[24:21]),
        .S({\count1_reg_n_0_[24] ,\count1_reg_n_0_[23] ,\count1_reg_n_0_[22] ,\count1_reg_n_0_[21] }));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[25] 
       (.C(s00_axi_aclk),
        .CE(\count1[31]_i_1_n_0 ),
        .D(\count1[25]_i_1_n_0 ),
        .Q(\count1_reg_n_0_[25] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[26] 
       (.C(s00_axi_aclk),
        .CE(\count1[31]_i_1_n_0 ),
        .D(\count1[26]_i_1_n_0 ),
        .Q(\count1_reg_n_0_[26] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[27] 
       (.C(s00_axi_aclk),
        .CE(\count1[31]_i_1_n_0 ),
        .D(\count1[27]_i_1_n_0 ),
        .Q(\count1_reg_n_0_[27] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[28] 
       (.C(s00_axi_aclk),
        .CE(\count1[31]_i_1_n_0 ),
        .D(\count1[28]_i_1_n_0 ),
        .Q(\count1_reg_n_0_[28] ),
        .R(SR));
  CARRY4 \count1_reg[28]_i_2 
       (.CI(\count1_reg[24]_i_2_n_0 ),
        .CO({\count1_reg[28]_i_2_n_0 ,\count1_reg[28]_i_2_n_1 ,\count1_reg[28]_i_2_n_2 ,\count1_reg[28]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in11[28:25]),
        .S({\count1_reg_n_0_[28] ,\count1_reg_n_0_[27] ,\count1_reg_n_0_[26] ,\count1_reg_n_0_[25] }));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[29] 
       (.C(s00_axi_aclk),
        .CE(\count1[31]_i_1_n_0 ),
        .D(\count1[29]_i_1_n_0 ),
        .Q(\count1_reg_n_0_[29] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\count1[31]_i_1_n_0 ),
        .D(\count1[2]_i_1_n_0 ),
        .Q(\count1_reg_n_0_[2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[30] 
       (.C(s00_axi_aclk),
        .CE(\count1[31]_i_1_n_0 ),
        .D(\count1[30]_i_1_n_0 ),
        .Q(\count1_reg_n_0_[30] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[31] 
       (.C(s00_axi_aclk),
        .CE(\count1[31]_i_1_n_0 ),
        .D(\count1[31]_i_2_n_0 ),
        .Q(\count1_reg_n_0_[31] ),
        .R(SR));
  CARRY4 \count1_reg[31]_i_6 
       (.CI(\count1_reg[28]_i_2_n_0 ),
        .CO({\NLW_count1_reg[31]_i_6_CO_UNCONNECTED [3:2],\count1_reg[31]_i_6_n_2 ,\count1_reg[31]_i_6_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_count1_reg[31]_i_6_O_UNCONNECTED [3],in11[31:29]}),
        .S({1'b0,\count1_reg_n_0_[31] ,\count1_reg_n_0_[30] ,\count1_reg_n_0_[29] }));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\count1[31]_i_1_n_0 ),
        .D(\count1[3]_i_1_n_0 ),
        .Q(\count1_reg_n_0_[3] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\count1[31]_i_1_n_0 ),
        .D(\count1[4]_i_1_n_0 ),
        .Q(\count1_reg_n_0_[4] ),
        .R(SR));
  CARRY4 \count1_reg[4]_i_2 
       (.CI(1'b0),
        .CO({\count1_reg[4]_i_2_n_0 ,\count1_reg[4]_i_2_n_1 ,\count1_reg[4]_i_2_n_2 ,\count1_reg[4]_i_2_n_3 }),
        .CYINIT(\count1_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in11[4:1]),
        .S({\count1_reg_n_0_[4] ,\count1_reg_n_0_[3] ,\count1_reg_n_0_[2] ,\count1_reg_n_0_[1] }));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\count1[31]_i_1_n_0 ),
        .D(\count1[5]_i_1_n_0 ),
        .Q(\count1_reg_n_0_[5] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\count1[31]_i_1_n_0 ),
        .D(\count1[6]_i_1_n_0 ),
        .Q(\count1_reg_n_0_[6] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\count1[31]_i_1_n_0 ),
        .D(\count1[7]_i_1_n_0 ),
        .Q(\count1_reg_n_0_[7] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\count1[31]_i_1_n_0 ),
        .D(\count1[8]_i_1_n_0 ),
        .Q(\count1_reg_n_0_[8] ),
        .R(SR));
  CARRY4 \count1_reg[8]_i_2 
       (.CI(\count1_reg[4]_i_2_n_0 ),
        .CO({\count1_reg[8]_i_2_n_0 ,\count1_reg[8]_i_2_n_1 ,\count1_reg[8]_i_2_n_2 ,\count1_reg[8]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(in11[8:5]),
        .S({\count1_reg_n_0_[8] ,\count1_reg_n_0_[7] ,\count1_reg_n_0_[6] ,\count1_reg_n_0_[5] }));
  FDRE #(
    .INIT(1'b0)) 
    \count1_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\count1[31]_i_1_n_0 ),
        .D(\count1[9]_i_1_n_0 ),
        .Q(\count1_reg_n_0_[9] ),
        .R(SR));
  LUT5 #(
    .INIT(32'h00000020)) 
    \dout0[15]_i_1 
       (.I0(\FSM_sequential_state[0]_i_2_n_0 ),
        .I1(PmodAD1_pmod_bridge_0_0_i_3_n_0),
        .I2(\dout0[15]_i_2_n_0 ),
        .I3(\count0_reg_n_0_[3] ),
        .I4(\count1[31]_i_4_n_0 ),
        .O(\dout0[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \dout0[15]_i_2 
       (.I0(state__0[0]),
        .I1(\count0_reg_n_0_[5] ),
        .I2(state__0[1]),
        .I3(\count0_reg_n_0_[2] ),
        .O(\dout0[15]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \dout0_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\dout0[15]_i_1_n_0 ),
        .D(\shft0_reg_n_0_[0] ),
        .Q(D[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \dout0_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\dout0[15]_i_1_n_0 ),
        .D(\shft0_reg_n_0_[10] ),
        .Q(D[10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \dout0_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\dout0[15]_i_1_n_0 ),
        .D(\shft0_reg_n_0_[11] ),
        .Q(D[11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \dout0_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\dout0[15]_i_1_n_0 ),
        .D(\shft0_reg_n_0_[12] ),
        .Q(D[12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \dout0_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\dout0[15]_i_1_n_0 ),
        .D(\shft0_reg_n_0_[13] ),
        .Q(D[13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \dout0_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\dout0[15]_i_1_n_0 ),
        .D(\shft0_reg_n_0_[14] ),
        .Q(D[14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \dout0_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\dout0[15]_i_1_n_0 ),
        .D(\shft0_reg_n_0_[15] ),
        .Q(D[15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \dout0_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\dout0[15]_i_1_n_0 ),
        .D(\shft0_reg_n_0_[1] ),
        .Q(D[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \dout0_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\dout0[15]_i_1_n_0 ),
        .D(\shft0_reg_n_0_[2] ),
        .Q(D[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \dout0_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\dout0[15]_i_1_n_0 ),
        .D(\shft0_reg_n_0_[3] ),
        .Q(D[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \dout0_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\dout0[15]_i_1_n_0 ),
        .D(\shft0_reg_n_0_[4] ),
        .Q(D[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \dout0_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\dout0[15]_i_1_n_0 ),
        .D(\shft0_reg_n_0_[5] ),
        .Q(D[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \dout0_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\dout0[15]_i_1_n_0 ),
        .D(\shft0_reg_n_0_[6] ),
        .Q(D[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \dout0_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\dout0[15]_i_1_n_0 ),
        .D(\shft0_reg_n_0_[7] ),
        .Q(D[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \dout0_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\dout0[15]_i_1_n_0 ),
        .D(\shft0_reg_n_0_[8] ),
        .Q(D[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \dout0_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\dout0[15]_i_1_n_0 ),
        .D(\shft0_reg_n_0_[9] ),
        .Q(D[9]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \dout1_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\dout0[15]_i_1_n_0 ),
        .D(\shft1_reg_n_0_[0] ),
        .Q(D[16]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \dout1_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\dout0[15]_i_1_n_0 ),
        .D(\shft1_reg_n_0_[10] ),
        .Q(D[26]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \dout1_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\dout0[15]_i_1_n_0 ),
        .D(\shft1_reg_n_0_[11] ),
        .Q(D[27]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \dout1_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\dout0[15]_i_1_n_0 ),
        .D(\shft1_reg_n_0_[12] ),
        .Q(D[28]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \dout1_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\dout0[15]_i_1_n_0 ),
        .D(\shft1_reg_n_0_[13] ),
        .Q(D[29]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \dout1_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\dout0[15]_i_1_n_0 ),
        .D(\shft1_reg_n_0_[14] ),
        .Q(D[30]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \dout1_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\dout0[15]_i_1_n_0 ),
        .D(\shft1_reg_n_0_[15] ),
        .Q(D[31]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \dout1_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\dout0[15]_i_1_n_0 ),
        .D(\shft1_reg_n_0_[1] ),
        .Q(D[17]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \dout1_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\dout0[15]_i_1_n_0 ),
        .D(\shft1_reg_n_0_[2] ),
        .Q(D[18]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \dout1_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\dout0[15]_i_1_n_0 ),
        .D(\shft1_reg_n_0_[3] ),
        .Q(D[19]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \dout1_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\dout0[15]_i_1_n_0 ),
        .D(\shft1_reg_n_0_[4] ),
        .Q(D[20]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \dout1_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\dout0[15]_i_1_n_0 ),
        .D(\shft1_reg_n_0_[5] ),
        .Q(D[21]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \dout1_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\dout0[15]_i_1_n_0 ),
        .D(\shft1_reg_n_0_[6] ),
        .Q(D[22]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \dout1_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\dout0[15]_i_1_n_0 ),
        .D(\shft1_reg_n_0_[7] ),
        .Q(D[23]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \dout1_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\dout0[15]_i_1_n_0 ),
        .D(\shft1_reg_n_0_[8] ),
        .Q(D[24]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \dout1_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\dout0[15]_i_1_n_0 ),
        .D(\shft1_reg_n_0_[9] ),
        .Q(D[25]),
        .R(SR));
  LUT4 #(
    .INIT(16'h5754)) 
    drdy_i_1
       (.I0(state__0[0]),
        .I1(drdy_i_2_n_0),
        .I2(\dout0[15]_i_1_n_0 ),
        .I3(E),
        .O(drdy_i_1_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    drdy_i_2
       (.I0(\count0_reg_n_0_[7] ),
        .I1(\count0_reg_n_0_[6] ),
        .I2(state__0[0]),
        .I3(\count0_reg_n_0_[8] ),
        .I4(drdy_i_3_n_0),
        .I5(\FSM_sequential_state[0]_i_2_n_0 ),
        .O(drdy_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'h0020)) 
    drdy_i_3
       (.I0(\count0_reg_n_0_[5] ),
        .I1(\count0_reg_n_0_[3] ),
        .I2(state__0[1]),
        .I3(\count0_reg_n_0_[2] ),
        .O(drdy_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    drdy_reg
       (.C(s00_axi_aclk),
        .CE(1'b1),
        .D(drdy_i_1_n_0),
        .Q(E),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \shft0[0]_i_1 
       (.I0(state__0[1]),
        .I1(in1_I),
        .O(shft0[0]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \shft0[10]_i_1 
       (.I0(state__0[1]),
        .I1(\shft0_reg_n_0_[9] ),
        .O(shft0[10]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \shft0[11]_i_1 
       (.I0(state__0[1]),
        .I1(\shft0_reg_n_0_[10] ),
        .O(shft0[11]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \shft0[12]_i_1 
       (.I0(state__0[1]),
        .I1(\shft0_reg_n_0_[11] ),
        .O(shft0[12]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \shft0[13]_i_1 
       (.I0(state__0[1]),
        .I1(\shft0_reg_n_0_[12] ),
        .O(shft0[13]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \shft0[14]_i_1 
       (.I0(state__0[1]),
        .I1(\shft0_reg_n_0_[13] ),
        .O(shft0[14]));
  LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAABA)) 
    \shft0[15]_i_1 
       (.I0(\count1[31]_i_5_n_0 ),
        .I1(\shft0[15]_i_3_n_0 ),
        .I2(\shft0[15]_i_4_n_0 ),
        .I3(\shft0[15]_i_5_n_0 ),
        .I4(\count0_reg_n_0_[5] ),
        .I5(state__0[0]),
        .O(\shft0[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \shft0[15]_i_2 
       (.I0(state__0[1]),
        .I1(\shft0_reg_n_0_[14] ),
        .O(shft0[15]));
  LUT2 #(
    .INIT(4'hB)) 
    \shft0[15]_i_3 
       (.I0(PmodAD1_pmod_bridge_0_0_i_4_n_0),
        .I1(\count0_reg_n_0_[0] ),
        .O(\shft0[15]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \shft0[15]_i_4 
       (.I0(\count0_reg_n_0_[1] ),
        .I1(\count0_reg_n_0_[3] ),
        .I2(\count0_reg_n_0_[4] ),
        .I3(\count0_reg_n_0_[6] ),
        .I4(\count0_reg_n_0_[7] ),
        .I5(\count0_reg_n_0_[8] ),
        .O(\shft0[15]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \shft0[15]_i_5 
       (.I0(\count0_reg_n_0_[2] ),
        .I1(state__0[1]),
        .O(\shft0[15]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \shft0[1]_i_1 
       (.I0(state__0[1]),
        .I1(\shft0_reg_n_0_[0] ),
        .O(shft0[1]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \shft0[2]_i_1 
       (.I0(state__0[1]),
        .I1(\shft0_reg_n_0_[1] ),
        .O(shft0[2]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \shft0[3]_i_1 
       (.I0(state__0[1]),
        .I1(\shft0_reg_n_0_[2] ),
        .O(shft0[3]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \shft0[4]_i_1 
       (.I0(state__0[1]),
        .I1(\shft0_reg_n_0_[3] ),
        .O(shft0[4]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \shft0[5]_i_1 
       (.I0(state__0[1]),
        .I1(\shft0_reg_n_0_[4] ),
        .O(shft0[5]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \shft0[6]_i_1 
       (.I0(state__0[1]),
        .I1(\shft0_reg_n_0_[5] ),
        .O(shft0[6]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \shft0[7]_i_1 
       (.I0(state__0[1]),
        .I1(\shft0_reg_n_0_[6] ),
        .O(shft0[7]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \shft0[8]_i_1 
       (.I0(state__0[1]),
        .I1(\shft0_reg_n_0_[7] ),
        .O(shft0[8]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \shft0[9]_i_1 
       (.I0(state__0[1]),
        .I1(\shft0_reg_n_0_[8] ),
        .O(shft0[9]));
  FDRE #(
    .INIT(1'b0)) 
    \shft0_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\shft0[15]_i_1_n_0 ),
        .D(shft0[0]),
        .Q(\shft0_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \shft0_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\shft0[15]_i_1_n_0 ),
        .D(shft0[10]),
        .Q(\shft0_reg_n_0_[10] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \shft0_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\shft0[15]_i_1_n_0 ),
        .D(shft0[11]),
        .Q(\shft0_reg_n_0_[11] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \shft0_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\shft0[15]_i_1_n_0 ),
        .D(shft0[12]),
        .Q(\shft0_reg_n_0_[12] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \shft0_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\shft0[15]_i_1_n_0 ),
        .D(shft0[13]),
        .Q(\shft0_reg_n_0_[13] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \shft0_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\shft0[15]_i_1_n_0 ),
        .D(shft0[14]),
        .Q(\shft0_reg_n_0_[14] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \shft0_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\shft0[15]_i_1_n_0 ),
        .D(shft0[15]),
        .Q(\shft0_reg_n_0_[15] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \shft0_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\shft0[15]_i_1_n_0 ),
        .D(shft0[1]),
        .Q(\shft0_reg_n_0_[1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \shft0_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\shft0[15]_i_1_n_0 ),
        .D(shft0[2]),
        .Q(\shft0_reg_n_0_[2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \shft0_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\shft0[15]_i_1_n_0 ),
        .D(shft0[3]),
        .Q(\shft0_reg_n_0_[3] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \shft0_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\shft0[15]_i_1_n_0 ),
        .D(shft0[4]),
        .Q(\shft0_reg_n_0_[4] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \shft0_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\shft0[15]_i_1_n_0 ),
        .D(shft0[5]),
        .Q(\shft0_reg_n_0_[5] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \shft0_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\shft0[15]_i_1_n_0 ),
        .D(shft0[6]),
        .Q(\shft0_reg_n_0_[6] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \shft0_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\shft0[15]_i_1_n_0 ),
        .D(shft0[7]),
        .Q(\shft0_reg_n_0_[7] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \shft0_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\shft0[15]_i_1_n_0 ),
        .D(shft0[8]),
        .Q(\shft0_reg_n_0_[8] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \shft0_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\shft0[15]_i_1_n_0 ),
        .D(shft0[9]),
        .Q(\shft0_reg_n_0_[9] ),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \shft1[0]_i_1 
       (.I0(state__0[1]),
        .I1(in2_I),
        .O(shft1[0]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \shft1[10]_i_1 
       (.I0(state__0[1]),
        .I1(\shft1_reg_n_0_[9] ),
        .O(shft1[10]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \shft1[11]_i_1 
       (.I0(state__0[1]),
        .I1(\shft1_reg_n_0_[10] ),
        .O(shft1[11]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \shft1[12]_i_1 
       (.I0(state__0[1]),
        .I1(\shft1_reg_n_0_[11] ),
        .O(shft1[12]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \shft1[13]_i_1 
       (.I0(state__0[1]),
        .I1(\shft1_reg_n_0_[12] ),
        .O(shft1[13]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \shft1[14]_i_1 
       (.I0(state__0[1]),
        .I1(\shft1_reg_n_0_[13] ),
        .O(shft1[14]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \shft1[15]_i_1 
       (.I0(state__0[1]),
        .I1(\shft1_reg_n_0_[14] ),
        .O(shft1[15]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \shft1[1]_i_1 
       (.I0(state__0[1]),
        .I1(\shft1_reg_n_0_[0] ),
        .O(shft1[1]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \shft1[2]_i_1 
       (.I0(state__0[1]),
        .I1(\shft1_reg_n_0_[1] ),
        .O(shft1[2]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \shft1[3]_i_1 
       (.I0(state__0[1]),
        .I1(\shft1_reg_n_0_[2] ),
        .O(shft1[3]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \shft1[4]_i_1 
       (.I0(state__0[1]),
        .I1(\shft1_reg_n_0_[3] ),
        .O(shft1[4]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \shft1[5]_i_1 
       (.I0(state__0[1]),
        .I1(\shft1_reg_n_0_[4] ),
        .O(shft1[5]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \shft1[6]_i_1 
       (.I0(state__0[1]),
        .I1(\shft1_reg_n_0_[5] ),
        .O(shft1[6]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \shft1[7]_i_1 
       (.I0(state__0[1]),
        .I1(\shft1_reg_n_0_[6] ),
        .O(shft1[7]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \shft1[8]_i_1 
       (.I0(state__0[1]),
        .I1(\shft1_reg_n_0_[7] ),
        .O(shft1[8]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \shft1[9]_i_1 
       (.I0(state__0[1]),
        .I1(\shft1_reg_n_0_[8] ),
        .O(shft1[9]));
  FDRE #(
    .INIT(1'b0)) 
    \shft1_reg[0] 
       (.C(s00_axi_aclk),
        .CE(\shft0[15]_i_1_n_0 ),
        .D(shft1[0]),
        .Q(\shft1_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \shft1_reg[10] 
       (.C(s00_axi_aclk),
        .CE(\shft0[15]_i_1_n_0 ),
        .D(shft1[10]),
        .Q(\shft1_reg_n_0_[10] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \shft1_reg[11] 
       (.C(s00_axi_aclk),
        .CE(\shft0[15]_i_1_n_0 ),
        .D(shft1[11]),
        .Q(\shft1_reg_n_0_[11] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \shft1_reg[12] 
       (.C(s00_axi_aclk),
        .CE(\shft0[15]_i_1_n_0 ),
        .D(shft1[12]),
        .Q(\shft1_reg_n_0_[12] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \shft1_reg[13] 
       (.C(s00_axi_aclk),
        .CE(\shft0[15]_i_1_n_0 ),
        .D(shft1[13]),
        .Q(\shft1_reg_n_0_[13] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \shft1_reg[14] 
       (.C(s00_axi_aclk),
        .CE(\shft0[15]_i_1_n_0 ),
        .D(shft1[14]),
        .Q(\shft1_reg_n_0_[14] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \shft1_reg[15] 
       (.C(s00_axi_aclk),
        .CE(\shft0[15]_i_1_n_0 ),
        .D(shft1[15]),
        .Q(\shft1_reg_n_0_[15] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \shft1_reg[1] 
       (.C(s00_axi_aclk),
        .CE(\shft0[15]_i_1_n_0 ),
        .D(shft1[1]),
        .Q(\shft1_reg_n_0_[1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \shft1_reg[2] 
       (.C(s00_axi_aclk),
        .CE(\shft0[15]_i_1_n_0 ),
        .D(shft1[2]),
        .Q(\shft1_reg_n_0_[2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \shft1_reg[3] 
       (.C(s00_axi_aclk),
        .CE(\shft0[15]_i_1_n_0 ),
        .D(shft1[3]),
        .Q(\shft1_reg_n_0_[3] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \shft1_reg[4] 
       (.C(s00_axi_aclk),
        .CE(\shft0[15]_i_1_n_0 ),
        .D(shft1[4]),
        .Q(\shft1_reg_n_0_[4] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \shft1_reg[5] 
       (.C(s00_axi_aclk),
        .CE(\shft0[15]_i_1_n_0 ),
        .D(shft1[5]),
        .Q(\shft1_reg_n_0_[5] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \shft1_reg[6] 
       (.C(s00_axi_aclk),
        .CE(\shft0[15]_i_1_n_0 ),
        .D(shft1[6]),
        .Q(\shft1_reg_n_0_[6] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \shft1_reg[7] 
       (.C(s00_axi_aclk),
        .CE(\shft0[15]_i_1_n_0 ),
        .D(shft1[7]),
        .Q(\shft1_reg_n_0_[7] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \shft1_reg[8] 
       (.C(s00_axi_aclk),
        .CE(\shft0[15]_i_1_n_0 ),
        .D(shft1[8]),
        .Q(\shft1_reg_n_0_[8] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \shft1_reg[9] 
       (.C(s00_axi_aclk),
        .CE(\shft0[15]_i_1_n_0 ),
        .D(shft1[9]),
        .Q(\shft1_reg_n_0_[9] ),
        .R(SR));
endmodule

(* CHECK_LICENSE_TYPE = "pmod_bridge_0,pmod_concat,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "pmod_bridge_0" *) 
(* X_CORE_INFO = "pmod_concat,Vivado 2018.3" *) 
module design_1_PmodAD1_0_0_pmod_bridge_0
   (in0_I,
    in1_I,
    in2_I,
    in3_I,
    in0_O,
    in1_O,
    in2_O,
    in3_O,
    in0_T,
    in1_T,
    in2_T,
    in3_T,
    out0_I,
    out1_I,
    out2_I,
    out3_I,
    out4_I,
    out5_I,
    out6_I,
    out7_I,
    out0_O,
    out1_O,
    out2_O,
    out3_O,
    out4_O,
    out5_O,
    out6_O,
    out7_O,
    out0_T,
    out1_T,
    out2_T,
    out3_T,
    out4_T,
    out5_T,
    out6_T,
    out7_T);
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SPI_Top_Row SS_I" *) output in0_I;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SPI_Top_Row IO0_I" *) output in1_I;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SPI_Top_Row IO1_I" *) output in2_I;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SPI_Top_Row SCK_I" *) output in3_I;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SPI_Top_Row SS_O" *) input in0_O;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SPI_Top_Row IO0_O" *) input in1_O;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SPI_Top_Row IO1_O" *) input in2_O;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SPI_Top_Row SCK_O" *) input in3_O;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SPI_Top_Row SS_T" *) input in0_T;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SPI_Top_Row IO0_T" *) input in1_T;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SPI_Top_Row IO1_T" *) input in2_T;
  (* X_INTERFACE_INFO = "xilinx.com:interface:spi:1.0 SPI_Top_Row SCK_T" *) input in3_T;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN1_I" *) input out0_I;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN2_I" *) input out1_I;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN3_I" *) input out2_I;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN4_I" *) input out3_I;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN7_I" *) input out4_I;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN8_I" *) input out5_I;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN9_I" *) input out6_I;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN10_I" *) input out7_I;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN1_O" *) output out0_O;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN2_O" *) output out1_O;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN3_O" *) output out2_O;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN4_O" *) output out3_O;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN7_O" *) output out4_O;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN8_O" *) output out5_O;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN9_O" *) output out6_O;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN10_O" *) output out7_O;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN1_T" *) output out0_T;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN2_T" *) output out1_T;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN3_T" *) output out2_T;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN4_T" *) output out3_T;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN7_T" *) output out4_T;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN8_T" *) output out5_T;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN9_T" *) output out6_T;
  (* X_INTERFACE_INFO = "digilentinc.com:interface:pmod:1.0 Pmod_out PIN10_T" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME Pmod_out, BOARD.ASSOCIATED_PARAM PMOD" *) output out7_T;

  wire in0_I;
  wire in0_O;
  wire in0_T;
  wire in1_I;
  wire in1_O;
  wire in1_T;
  wire in2_I;
  wire in2_O;
  wire in2_T;
  wire in3_I;
  wire in3_O;
  wire in3_T;
  wire out0_I;
  wire out0_O;
  wire out0_T;
  wire out1_I;
  wire out1_O;
  wire out1_T;
  wire out2_I;
  wire out2_O;
  wire out2_T;
  wire out3_I;
  wire out3_O;
  wire out3_T;
  wire out4_I;
  wire out4_O;
  wire out4_T;
  wire out5_I;
  wire out5_O;
  wire out5_T;
  wire out6_I;
  wire out6_O;
  wire out6_T;
  wire out7_I;
  wire out7_O;
  wire out7_T;
  wire NLW_inst_in4_I_UNCONNECTED;
  wire NLW_inst_in5_I_UNCONNECTED;
  wire NLW_inst_in6_I_UNCONNECTED;
  wire NLW_inst_in7_I_UNCONNECTED;
  wire [3:0]NLW_inst_in_bottom_bus_I_UNCONNECTED;
  wire [1:0]NLW_inst_in_bottom_i2c_gpio_bus_I_UNCONNECTED;
  wire [1:0]NLW_inst_in_bottom_uart_gpio_bus_I_UNCONNECTED;
  wire [3:0]NLW_inst_in_top_bus_I_UNCONNECTED;
  wire [1:0]NLW_inst_in_top_i2c_gpio_bus_I_UNCONNECTED;
  wire [1:0]NLW_inst_in_top_uart_gpio_bus_I_UNCONNECTED;

  (* Bottom_Row_Interface = "Disabled" *) 
  (* Top_Row_Interface = "SPI" *) 
  design_1_PmodAD1_0_0_pmod_concat inst
       (.in0_I(in0_I),
        .in0_O(in0_O),
        .in0_T(in0_T),
        .in1_I(in1_I),
        .in1_O(in1_O),
        .in1_T(in1_T),
        .in2_I(in2_I),
        .in2_O(in2_O),
        .in2_T(in2_T),
        .in3_I(in3_I),
        .in3_O(in3_O),
        .in3_T(in3_T),
        .in4_I(NLW_inst_in4_I_UNCONNECTED),
        .in4_O(1'b1),
        .in4_T(1'b1),
        .in5_I(NLW_inst_in5_I_UNCONNECTED),
        .in5_O(1'b1),
        .in5_T(1'b1),
        .in6_I(NLW_inst_in6_I_UNCONNECTED),
        .in6_O(1'b1),
        .in6_T(1'b1),
        .in7_I(NLW_inst_in7_I_UNCONNECTED),
        .in7_O(1'b1),
        .in7_T(1'b1),
        .in_bottom_bus_I(NLW_inst_in_bottom_bus_I_UNCONNECTED[3:0]),
        .in_bottom_bus_O({1'b0,1'b0,1'b0,1'b1}),
        .in_bottom_bus_T({1'b0,1'b0,1'b0,1'b1}),
        .in_bottom_i2c_gpio_bus_I(NLW_inst_in_bottom_i2c_gpio_bus_I_UNCONNECTED[1:0]),
        .in_bottom_i2c_gpio_bus_O({1'b0,1'b1}),
        .in_bottom_i2c_gpio_bus_T({1'b0,1'b1}),
        .in_bottom_uart_gpio_bus_I(NLW_inst_in_bottom_uart_gpio_bus_I_UNCONNECTED[1:0]),
        .in_bottom_uart_gpio_bus_O({1'b0,1'b1}),
        .in_bottom_uart_gpio_bus_T({1'b0,1'b1}),
        .in_top_bus_I(NLW_inst_in_top_bus_I_UNCONNECTED[3:0]),
        .in_top_bus_O({1'b0,1'b0,1'b0,1'b0}),
        .in_top_bus_T({1'b0,1'b0,1'b0,1'b0}),
        .in_top_i2c_gpio_bus_I(NLW_inst_in_top_i2c_gpio_bus_I_UNCONNECTED[1:0]),
        .in_top_i2c_gpio_bus_O({1'b0,1'b1}),
        .in_top_i2c_gpio_bus_T({1'b0,1'b1}),
        .in_top_uart_gpio_bus_I(NLW_inst_in_top_uart_gpio_bus_I_UNCONNECTED[1:0]),
        .in_top_uart_gpio_bus_O({1'b0,1'b1}),
        .in_top_uart_gpio_bus_T({1'b0,1'b1}),
        .out0_I(out0_I),
        .out0_O(out0_O),
        .out0_T(out0_T),
        .out1_I(out1_I),
        .out1_O(out1_O),
        .out1_T(out1_T),
        .out2_I(out2_I),
        .out2_O(out2_O),
        .out2_T(out2_T),
        .out3_I(out3_I),
        .out3_O(out3_O),
        .out3_T(out3_T),
        .out4_I(out4_I),
        .out4_O(out4_O),
        .out4_T(out4_T),
        .out5_I(out5_I),
        .out5_O(out5_O),
        .out5_T(out5_T),
        .out6_I(out6_I),
        .out6_O(out6_O),
        .out6_T(out6_T),
        .out7_I(out7_I),
        .out7_O(out7_O),
        .out7_T(out7_T));
endmodule

(* Bottom_Row_Interface = "Disabled" *) (* ORIG_REF_NAME = "pmod_concat" *) (* Top_Row_Interface = "SPI" *) 
module design_1_PmodAD1_0_0_pmod_concat
   (in_top_bus_I,
    in_top_bus_O,
    in_top_bus_T,
    in_top_uart_gpio_bus_I,
    in_top_uart_gpio_bus_O,
    in_top_uart_gpio_bus_T,
    in_top_i2c_gpio_bus_I,
    in_top_i2c_gpio_bus_O,
    in_top_i2c_gpio_bus_T,
    in_bottom_bus_I,
    in_bottom_bus_O,
    in_bottom_bus_T,
    in_bottom_uart_gpio_bus_I,
    in_bottom_uart_gpio_bus_O,
    in_bottom_uart_gpio_bus_T,
    in_bottom_i2c_gpio_bus_I,
    in_bottom_i2c_gpio_bus_O,
    in_bottom_i2c_gpio_bus_T,
    in0_I,
    in1_I,
    in2_I,
    in3_I,
    in4_I,
    in5_I,
    in6_I,
    in7_I,
    in0_O,
    in1_O,
    in2_O,
    in3_O,
    in4_O,
    in5_O,
    in6_O,
    in7_O,
    in0_T,
    in1_T,
    in2_T,
    in3_T,
    in4_T,
    in5_T,
    in6_T,
    in7_T,
    out0_I,
    out1_I,
    out2_I,
    out3_I,
    out4_I,
    out5_I,
    out6_I,
    out7_I,
    out0_O,
    out1_O,
    out2_O,
    out3_O,
    out4_O,
    out5_O,
    out6_O,
    out7_O,
    out0_T,
    out1_T,
    out2_T,
    out3_T,
    out4_T,
    out5_T,
    out6_T,
    out7_T);
  output [3:0]in_top_bus_I;
  input [3:0]in_top_bus_O;
  input [3:0]in_top_bus_T;
  output [1:0]in_top_uart_gpio_bus_I;
  input [1:0]in_top_uart_gpio_bus_O;
  input [1:0]in_top_uart_gpio_bus_T;
  output [1:0]in_top_i2c_gpio_bus_I;
  input [1:0]in_top_i2c_gpio_bus_O;
  input [1:0]in_top_i2c_gpio_bus_T;
  output [3:0]in_bottom_bus_I;
  input [3:0]in_bottom_bus_O;
  input [3:0]in_bottom_bus_T;
  output [1:0]in_bottom_uart_gpio_bus_I;
  input [1:0]in_bottom_uart_gpio_bus_O;
  input [1:0]in_bottom_uart_gpio_bus_T;
  output [1:0]in_bottom_i2c_gpio_bus_I;
  input [1:0]in_bottom_i2c_gpio_bus_O;
  input [1:0]in_bottom_i2c_gpio_bus_T;
  output in0_I;
  output in1_I;
  output in2_I;
  output in3_I;
  output in4_I;
  output in5_I;
  output in6_I;
  output in7_I;
  input in0_O;
  input in1_O;
  input in2_O;
  input in3_O;
  input in4_O;
  input in5_O;
  input in6_O;
  input in7_O;
  input in0_T;
  input in1_T;
  input in2_T;
  input in3_T;
  input in4_T;
  input in5_T;
  input in6_T;
  input in7_T;
  input out0_I;
  input out1_I;
  input out2_I;
  input out3_I;
  input out4_I;
  input out5_I;
  input out6_I;
  input out7_I;
  output out0_O;
  output out1_O;
  output out2_O;
  output out3_O;
  output out4_O;
  output out5_O;
  output out6_O;
  output out7_O;
  output out0_T;
  output out1_T;
  output out2_T;
  output out3_T;
  output out4_T;
  output out5_T;
  output out6_T;
  output out7_T;

  wire \<const0> ;
  wire in0_O;
  wire in0_T;
  wire in1_O;
  wire in1_T;
  wire in2_O;
  wire in2_T;
  wire in3_O;
  wire in3_T;
  wire in4_O;
  wire in4_T;
  wire in5_O;
  wire in5_T;
  wire in6_O;
  wire in6_T;
  wire in7_O;
  wire in7_T;
  wire out0_I;
  wire out1_I;
  wire out2_I;
  wire out3_I;
  wire out4_I;
  wire out5_I;
  wire out6_I;
  wire out7_I;

  assign in0_I = out0_I;
  assign in1_I = out1_I;
  assign in2_I = out2_I;
  assign in3_I = out3_I;
  assign in4_I = out4_I;
  assign in5_I = out5_I;
  assign in6_I = out6_I;
  assign in7_I = out7_I;
  assign in_bottom_bus_I[3] = \<const0> ;
  assign in_bottom_bus_I[2] = \<const0> ;
  assign in_bottom_bus_I[1] = \<const0> ;
  assign in_bottom_bus_I[0] = \<const0> ;
  assign in_bottom_i2c_gpio_bus_I[1] = \<const0> ;
  assign in_bottom_i2c_gpio_bus_I[0] = \<const0> ;
  assign in_bottom_uart_gpio_bus_I[1] = \<const0> ;
  assign in_bottom_uart_gpio_bus_I[0] = \<const0> ;
  assign in_top_bus_I[3] = \<const0> ;
  assign in_top_bus_I[2] = \<const0> ;
  assign in_top_bus_I[1] = \<const0> ;
  assign in_top_bus_I[0] = \<const0> ;
  assign in_top_i2c_gpio_bus_I[1] = \<const0> ;
  assign in_top_i2c_gpio_bus_I[0] = \<const0> ;
  assign in_top_uart_gpio_bus_I[1] = \<const0> ;
  assign in_top_uart_gpio_bus_I[0] = \<const0> ;
  assign out0_O = in0_O;
  assign out0_T = in0_T;
  assign out1_O = in1_O;
  assign out1_T = in1_T;
  assign out2_O = in2_O;
  assign out2_T = in2_T;
  assign out3_O = in3_O;
  assign out3_T = in3_T;
  assign out4_O = in4_O;
  assign out4_T = in4_T;
  assign out5_O = in5_O;
  assign out5_T = in5_T;
  assign out6_O = in6_O;
  assign out6_T = in6_T;
  assign out7_O = in7_O;
  assign out7_T = in7_T;
  GND GND
       (.G(\<const0> ));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
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

endmodule
`endif
