// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Mon Oct 30 20:36:24 2023
// Host        : LAPTOP-TD654SF1 running 64-bit major release  (build 9200)
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 21856)
`pragma protect data_block
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
WYVfFvqOId6tunPwypzk35a9ISrNxqRwMw==
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
