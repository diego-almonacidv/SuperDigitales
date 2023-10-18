// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Tue Oct 17 20:19:02 2023
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
