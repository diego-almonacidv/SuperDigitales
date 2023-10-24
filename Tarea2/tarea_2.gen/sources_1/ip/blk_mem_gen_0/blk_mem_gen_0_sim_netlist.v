// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Wed Oct 11 19:17:10 2023
// Host        : DESKTOP-U8QJIBE running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/documentos/projectos_vivado/tarea_2/tarea_2.gen/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0_sim_netlist.v
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
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [1:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DIN" *) input [7:0]dina;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [7:0]douta;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTB, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clkb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB EN" *) input enb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB WE" *) input [0:0]web;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB ADDR" *) input [1:0]addrb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DIN" *) input [7:0]dinb;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTB DOUT" *) output [7:0]doutb;

  wire [1:0]addra;
  wire [1:0]addrb;
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
  wire [1:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "2" *) 
  (* C_ADDRB_WIDTH = "2" *) 
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
  (* C_READ_DEPTH_A = "4" *) 
  (* C_READ_DEPTH_B = "4" *) 
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
  (* C_WRITE_DEPTH_A = "4" *) 
  (* C_WRITE_DEPTH_B = "4" *) 
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
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[1:0]),
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
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[1:0]),
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 21264)
`pragma protect data_block
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
mFrx
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
