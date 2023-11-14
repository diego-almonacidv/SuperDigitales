// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Mon Oct 30 20:36:25 2023
// Host        : LAPTOP-TD654SF1 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/SuperDigitales/Tarea2/tarea_2.gen/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_6,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_6,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module blk_mem_gen_0
   (clka,
    ena,
    wea,
    addra,
    dina,
    douta,
    clkb,
    enb,
    web,
    addrb,
    dinb,
    doutb);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA EN" *) input ena;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA WE" *) input [0:0]wea;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [9:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [7:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [7:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [0:0]web;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [9:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [7:0]dinb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [7:0]doutb;

  wire [9:0]addra;
  wire [9:0]addrb;
  wire clka;
  wire [7:0]dina;
  wire [7:0]dinb;
  wire [7:0]douta;
  wire [7:0]doutb;
  wire ena;
  wire enb;
  wire [0:0]wea;
  wire [0:0]web;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [9:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [9:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "10" *) 
  (* C_ADDRB_WIDTH = "10" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "1" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.7033 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "1" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "1" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "1" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "blk_mem_gen_0.mem" *) 
  (* C_INIT_FILE_NAME = "no_coe_file_loaded" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "0" *) 
  (* C_MEM_TYPE = "2" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "1024" *) 
  (* C_READ_DEPTH_B = "1024" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "8" *) 
  (* C_READ_WIDTH_B = "8" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "1024" *) 
  (* C_WRITE_DEPTH_B = "1024" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "8" *) 
  (* C_WRITE_WIDTH_B = "8" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  blk_mem_gen_0_blk_mem_gen_v8_4_6 U0
       (.addra(addra),
        .addrb(addrb),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina(dina),
        .dinb(dinb),
        .douta(douta),
        .doutb(doutb),
        .eccpipece(1'b0),
        .ena(ena),
        .enb(enb),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[9:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[9:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[7:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(wea),
        .web(web));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2023.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
aMT3usC6uizzcwnzOCX4OsS16Ob+YxFcsGovFpFklbnaIaD1S0lVdxenTwHPp6ByIEi+ehwr6Rgg
z/3AlTheI5NFTM8ihiMA18/wmUxI7EbaftJACA1LykUKCuj5myy0T+DACuv3sGYIZS38TZTZnnBC
FGAlvTZmRWs+JzneH3o=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lR9ZerhYSAb39nzEkeYvhnwEs5t9y/+yTDf8KuoUtR1BGeHZq8pA/YxtjzQLtaOW1R1IQUb0FtSI
e3CYAb7WHYbIjcpw3vKHvW1SqcGn9CMGa556CYKmD2oF12Kow8xRaFvMSBUVxX7HsHxNWnRd+PU1
+C0YayU2KFIY/7Yl6cZ5luAzhw/6SW3PFYUIyyqWy5MCIXweHOwQR2IpQEdlDur5nluN7i7BeB+i
fxwwHh8TU/g7T4mhZFkiTuBKdLAtQOjxWxzqTMxgcuAjlTylY16FgMFOASdvvSbqBZJjbxMdVloU
rYjS8O/8rWktv8GXcaIdBJ2BRj01q7jsChsbwA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
Qvl63GHz9mq2xOB7elt/vAQ7URLGdD1Lkcz7f3Wtw31dwjjjbP62Ny/Jr6OmBIheWlgejx38qxAT
TrHiiEyjKmGcnPn1Tn2n+cH4RAxCbOFnCI9n6+YsYMTe9JkplGhGGr39SkFgJz0I2IKpPsuqTjCj
rhf49TAryNMQeRpREJA=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
MA+9Ro+dh339m0iZrkKbqTKN8gQ5xkxN/SPCfhkOn+5jjgCTS5IOKLHil+HsZDjX333ebxnornwG
MOBxyEdFfLM8SA+bs2r41J/j0af2VVMmCM3hOh8JmZxB4X9Jg/glegNCbvwzqxMbOQNEy+zt7j5t
TFVD82RtPFmYVVYZZyll/WvAA+0aVpyjzLCIM1GznFky0RWLv65Wp4MJJnNRRrtG3muMznVO/u2s
tACsJ9jzv9M0IlMYjYH9BixhG6cZX02I4LEXXaPkhdOINlMMhsbArXtc9NphzmS4bY1/1yF1D6YD
EKLyS2Sr3HDl0O/lefN+jvfG8iKuVl55PNNrVQ==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
wpMTg7STjFkUDhOqdNPa0FHXTnHQgKmhvqDv+rRVBvMiQ8O7u8oj7ibITq3o+jugJsMJ60B410gQ
JFTcqCJKYmYJvqi8rPLLOYDmFG6ZLP/Ixr3n62IyIaCeDltBahi3yV009QN0X+iuzuFCL+Y7g9ff
IvAgyBly+Z3Itv2H9EJMZPMl17Sa7IkgjmWqzVXIKNMKn0iDVYsQw6ZgzQDYQ8N8IvTIEggU3/lh
6Nf0hV0ev3qOv/2P+4w0U766Ux3yLuzPJSI7bKm3/ip9NjhOytxOiKKqVXhKG8dzbbuS5u3EE/eq
q6YxkL7gpvNltVqqBnJB6vHSyWrD6+MqsCtR9A==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2022_10", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Q7Q4SSp70lxFryaopuic9VVP/Ire0pSsPEIMYdURBAczC7ShkuYeV02U7L3BlAiyBE4vBKcwYSQd
cWiaj8sVP7q4kxoRHKxLV1R5PIO6l4DsLWE2E+1MLyUPME0w5KTular/oX8EPCJ5n/8VCtW7x4Vf
dpeyki1/IAPJkAyi3zVZKHzgKhEwnZaZZtZYuMWoPZMt4V38sAcE42Raf+7yfFWG5HO74JY6iEnW
gJeRk58K+avB/XLF2/j2RQZfjTYizrprT2tUMBK6e7DRWZZtk8AOcsMhUikev44IFGNbNXjP8BXC
0J3y3P7pCFT6l+saU83nRwi/H25fSA34diJtNw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
a/8ooC+s+6nfvfa1+oBhsvYWLJjFgp83DI1kNyOi5Am+ugPbGRmgGZudfyo6yw6Yd5gGbLm5aToQ
5G4cGF5HaXD5TU6A0ZZFMTIbzFLE76JMjjIxX8JcaJIZpSmrXqlru8l5gDINUEAmwUY3mRQnjcGJ
0Z+kMRH8iAEF+gEviPiFZSBbJeOPqivIS217kimQJX3BeNbNPQTP+GUidcRywpGMh5avxtA0kDRO
F9SoCSyTm9hr2v9hsK1IUAYQLb7n2/R+z5YNKNzt1oN4qgJH1wZfdI8if2K8+ohyOdnxrrgJOWdj
cOqr7cGqEOYfBMTIQeHVZzb7NGWVN+9B8XSUaQ==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
FLPvOUNRWNW2GU+FEGmt2XWthOT5bY/31DRbol2cUmEGNF6b2XzpCosNKGx/o2n6sQvGP39KRFCs
nJu0ihe2dUGee9nEZZUcpwPjnEfXVI3yJaRVYy8iL+rm59lXq0jX4sjAPieDvv8shgAnoXLTZGlq
K+2c1JhaHt+nFi27TDrYar/+P8nP1MhocOS7BjzCvSs0foEXj92/qD+71Sm/LqGr8cjlH2qTJJ8B
ynxoH6iT+bksVA2VbtPT9o6h1kJ/zwP4wcsL9l+qSlJhd4GI11JPux26DlNyIi41WmufQcfiT0PB
r6O9+0E9lV9ODwKdjaxfZRK29rjKeq2yr0jWhMV38XKKqHAJli7MIypGRXcCo+u89H87KgYt+ebw
s3foIqCe0JKR57WzI8VD6XdNtOL8eBxK539oemx4vkE0cGYECZKYru6A2hPeZOYDD5eyWSUlQl1R
EciK49WM8HnssyRVcmE6di6bISMbVi0TZG/v98bz+9UZa8DtqMVYH0tz

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
fphquQOeFuqByo36Gh2C1zEC1J6u9swSMbMzsKldIvLm+SZ6/hr/N8KJ/G2vBABzX6UtbVuP1ZXx
AxdftP4Aqis1B3Bs6989aQG9eo0SOHA7r6aFLtFb3qoD5Pvqw4aVNU4z4EtTpFpn/jCWD21lKROf
q5X32HRfFq1jwqod+9vIbUNRRzz5y9VHvXfacZlxDazSPmcCF4hxB1KqWqT44KmYVkDedgkgnYgb
ZGidHnTb3W7C8tSqC9ac4kNJCL429QndtddweESJNlpX+65pt9Irok9pkOodwoj0QScswOIFjhBZ
/GrzZLQcFWiD3gXRU4DazzxQnGdRH4qEIRWziw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
1lUYYHPCt1BUJOvcBbgMU2GSQiqfxItz4ntieMaenjrtsE9SLwaU6xB0tBl8Atw5yP/RRNww1kX/
9uZbTz5He3r9mPVt+mGxB4N3f9BbCrQRb4USVPgKO/+vWUfMQERGklScy0+fz75WuxH74CjRUoDI
8iyssb2cUNnfDe13jIoI8gM1w4w/Pkxkmb6Mef53QMxacHAWEZeytcH3fuL/adO263D8P90U3XJv
vBXJmbjkRVi9qzjBzfMxuOy2KbZaZgR3BLzaffIfFnMwg/Rb8sGls5pQsZv5jL2wk3+Bj3OXBYdd
pDyjGoalJBzObKzd/t15kNHwY4FXYFcZLQPncw==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
YRmSEzaa2WFVvMH1BwWc1TIUpVbzSEIP0VbI6n0sEgct/X4PiTfMQmK1jBVCaISIzwBxscKQwZOt
mb/nmINGg6I7ih39LSbBMtx6cdCUiyaLkPeRbqfyPpKhvnUIFmdKVvTd1dYzxeOeuDnhSVaBaAcN
3lngSg7lIbmhLIGjC29yQrBTiLArbVZi6IRGronMK51e3UrYa6GspsznhiuRcXjEb4bHKrJ2CM5Z
BUwA+E9949sQgyOagFZbLVle2ESbwBaoxcAPn2gxfRHlT0leqyLgUGDZLsfArzGzw9BTGzyEG2TR
XOrKFNYRfMXMrnGsBM7acIelY4LdAMgsKgDH/A==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 21824)
`pragma protect data_block
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
`pragma protect end_protected
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
