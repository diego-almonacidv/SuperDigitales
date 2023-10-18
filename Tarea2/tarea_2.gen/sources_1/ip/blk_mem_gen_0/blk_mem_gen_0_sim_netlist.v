// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Tue Oct 17 20:19:02 2023
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
4noB
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
