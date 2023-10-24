// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Wed Oct 11 19:17:09 2023
// Host        : DESKTOP-U8QJIBE running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_6,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_6,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_6 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 21296)
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
