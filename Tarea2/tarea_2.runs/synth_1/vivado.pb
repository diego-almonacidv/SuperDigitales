
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2$
create_project: 2default:default2
00:00:162default:default2
00:00:162default:default2
428.6372default:default2
161.4962default:defaultZ17-268h px� 
�
Command: %s
1870*	planAhead2�
�read_checkpoint -auto_incremental -incremental D:/documentos/projectos_vivado/tarea_2/tarea_2.srcs/utils_1/imports/synth_1/UartRxHandler.dcp2default:defaultZ12-2866h px� 
�
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2q
]D:/documentos/projectos_vivado/tarea_2/tarea_2.srcs/utils_1/imports/synth_1/UartRxHandler.dcp2default:defaultZ12-5825h px� 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px� 
{
Command: %s
53*	vivadotcl2J
6synth_design -top UartRxHandler -part xc7a100tcsg324-12default:defaultZ4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xc7a100t2default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xc7a100t2default:defaultZ17-349h px� 
W
Loading part %s157*device2$
xc7a100tcsg324-12default:defaultZ21-403h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
�
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
22default:defaultZ8-7079h px� 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px� 
_
#Helper process launched with PID %s4824*oasys2
86762default:defaultZ8-7075h px� 
�
%s*synth2�
yStarting RTL Elaboration : Time (s): cpu = 00:00:13 ; elapsed = 00:00:16 . Memory (MB): peak = 1272.098 ; gain = 410.375
2default:defaulth px� 
�
synthesizing module '%s'%s4497*oasys2!
UartRxHandler2default:default2
 2default:default2n
XD:/documentos/projectos_vivado/tarea_2/tarea_2.srcs/sources_1/imports/new/UartRxLogic.sv2default:default2
232default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2

uart_basic2default:default2
 2default:default2l
VD:/documentos/projectos_vivado/tarea_2/tarea_2.srcs/sources_1/imports/new/uart_basic.v2default:default2
232default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2&
uart_baud_tick_gen2default:default2
 2default:default2t
^D:/documentos/projectos_vivado/tarea_2/tarea_2.srcs/sources_1/imports/new/uart_baud_tick_gen.v2default:default2
172default:default8@Z8-6157h px� 
j
%s
*synth2R
>	Parameter CLK_FREQUENCY bound to: 100000000 - type: integer 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter BAUD_RATE bound to: 115200 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter OVERSAMPLING bound to: 8 - type: integer 
2default:defaulth p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2&
uart_baud_tick_gen2default:default2
 2default:default2
02default:default2
12default:default2t
^D:/documentos/projectos_vivado/tarea_2/tarea_2.srcs/sources_1/imports/new/uart_baud_tick_gen.v2default:default2
172default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
uart_rx2default:default2
 2default:default2i
SD:/documentos/projectos_vivado/tarea_2/tarea_2.srcs/sources_1/imports/new/uart_rx.v2default:default2
222default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2
	data_sync2default:default2
 2default:default2k
UD:/documentos/projectos_vivado/tarea_2/tarea_2.srcs/sources_1/imports/new/data_sync.v2default:default2
222default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
	data_sync2default:default2
 2default:default2
02default:default2
12default:default2k
UD:/documentos/projectos_vivado/tarea_2/tarea_2.srcs/sources_1/imports/new/data_sync.v2default:default2
222default:default8@Z8-6155h px� 
�
-case statement is not full and has no default155*oasys2i
SD:/documentos/projectos_vivado/tarea_2/tarea_2.srcs/sources_1/imports/new/uart_rx.v2default:default2
972default:default8@Z8-155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
uart_rx2default:default2
 2default:default2
02default:default2
12default:default2i
SD:/documentos/projectos_vivado/tarea_2/tarea_2.srcs/sources_1/imports/new/uart_rx.v2default:default2
222default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys26
"uart_baud_tick_gen__parameterized02default:default2
 2default:default2t
^D:/documentos/projectos_vivado/tarea_2/tarea_2.srcs/sources_1/imports/new/uart_baud_tick_gen.v2default:default2
172default:default8@Z8-6157h px� 
j
%s
*synth2R
>	Parameter CLK_FREQUENCY bound to: 100000000 - type: integer 
2default:defaulth p
x
� 
c
%s
*synth2K
7	Parameter BAUD_RATE bound to: 115200 - type: integer 
2default:defaulth p
x
� 
a
%s
*synth2I
5	Parameter OVERSAMPLING bound to: 1 - type: integer 
2default:defaulth p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys26
"uart_baud_tick_gen__parameterized02default:default2
 2default:default2
02default:default2
12default:default2t
^D:/documentos/projectos_vivado/tarea_2/tarea_2.srcs/sources_1/imports/new/uart_baud_tick_gen.v2default:default2
172default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
uart_tx2default:default2
 2default:default2i
SD:/documentos/projectos_vivado/tarea_2/tarea_2.srcs/sources_1/imports/new/uart_tx.v2default:default2
232default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
uart_tx2default:default2
 2default:default2
02default:default2
12default:default2i
SD:/documentos/projectos_vivado/tarea_2/tarea_2.srcs/sources_1/imports/new/uart_tx.v2default:default2
232default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2

uart_basic2default:default2
 2default:default2
02default:default2
12default:default2l
VD:/documentos/projectos_vivado/tarea_2/tarea_2.srcs/sources_1/imports/new/uart_basic.v2default:default2
232default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2$
first_comand_dec2default:default2
 2default:default2s
]D:/documentos/projectos_vivado/tarea_2/tarea_2.srcs/sources_1/imports/new/first_comand_dec.sv2default:default2
232default:default8@Z8-6157h px� 
�
-case statement is not full and has no default155*oasys2s
]D:/documentos/projectos_vivado/tarea_2/tarea_2.srcs/sources_1/imports/new/first_comand_dec.sv2default:default2
562default:default8@Z8-155h px� 
�
synthesizing module '%s'%s4497*oasys2
Counter2default:default2
 2default:default2j
TD:/documentos/projectos_vivado/tarea_2/tarea_2.srcs/sources_1/imports/new/Counter.sv2default:default2
232default:default8@Z8-6157h px� 
^
%s
*synth2F
2	Parameter max_count bound to: 3 - type: integer 
2default:defaulth p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
Counter2default:default2
 2default:default2
02default:default2
12default:default2j
TD:/documentos/projectos_vivado/tarea_2/tarea_2.srcs/sources_1/imports/new/Counter.sv2default:default2
232default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2$
first_comand_dec2default:default2
 2default:default2
02default:default2
12default:default2s
]D:/documentos/projectos_vivado/tarea_2/tarea_2.srcs/sources_1/imports/new/first_comand_dec.sv2default:default2
232default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
driver_7seg2default:default2
 2default:default2n
XD:/documentos/projectos_vivado/tarea_2/tarea_2.srcs/sources_1/imports/new/driver_7seg.sv2default:default2
232default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2 
counter_3bit2default:default2
 2default:default2o
YD:/documentos/projectos_vivado/tarea_2/tarea_2.srcs/sources_1/imports/new/counter_3bit.sv2default:default2
232default:default8@Z8-6157h px� 
�
default block is never used226*oasys2o
YD:/documentos/projectos_vivado/tarea_2/tarea_2.srcs/sources_1/imports/new/counter_3bit.sv2default:default2
382default:default8@Z8-226h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2 
counter_3bit2default:default2
 2default:default2
02default:default2
12default:default2o
YD:/documentos/projectos_vivado/tarea_2/tarea_2.srcs/sources_1/imports/new/counter_3bit.sv2default:default2
232default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
mux_3bit2default:default2
 2default:default2k
UD:/documentos/projectos_vivado/tarea_2/tarea_2.srcs/sources_1/imports/new/mux_3bit.sv2default:default2
232default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
mux_3bit2default:default2
 2default:default2
02default:default2
12default:default2k
UD:/documentos/projectos_vivado/tarea_2/tarea_2.srcs/sources_1/imports/new/mux_3bit.sv2default:default2
232default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
hex_to_7seg2default:default2
 2default:default2n
XD:/documentos/projectos_vivado/tarea_2/tarea_2.srcs/sources_1/imports/new/hex_to_7seg.sv2default:default2
232default:default8@Z8-6157h px� 
�
default block is never used226*oasys2n
XD:/documentos/projectos_vivado/tarea_2/tarea_2.srcs/sources_1/imports/new/hex_to_7seg.sv2default:default2
282default:default8@Z8-226h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
hex_to_7seg2default:default2
 2default:default2
02default:default2
12default:default2n
XD:/documentos/projectos_vivado/tarea_2/tarea_2.srcs/sources_1/imports/new/hex_to_7seg.sv2default:default2
232default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2&
divisor_frecuencia2default:default2
 2default:default2u
_D:/documentos/projectos_vivado/tarea_2/tarea_2.srcs/sources_1/imports/new/divisor_frecuencia.sv2default:default2
232default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2&
divisor_frecuencia2default:default2
 2default:default2
02default:default2
12default:default2u
_D:/documentos/projectos_vivado/tarea_2/tarea_2.srcs/sources_1/imports/new/divisor_frecuencia.sv2default:default2
232default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
driver_7seg2default:default2
 2default:default2
02default:default2
12default:default2n
XD:/documentos/projectos_vivado/tarea_2/tarea_2.srcs/sources_1/imports/new/driver_7seg.sv2default:default2
232default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2!
blk_mem_gen_02default:default2
 2default:default2�
zD:/documentos/projectos_vivado/tarea_2/tarea_2.runs/synth_1/.Xil/Vivado-7884-DESKTOP-U8QJIBE/realtime/blk_mem_gen_0_stub.v2default:default2
62default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2!
blk_mem_gen_02default:default2
 2default:default2
02default:default2
12default:default2�
zD:/documentos/projectos_vivado/tarea_2/tarea_2.runs/synth_1/.Xil/Vivado-7884-DESKTOP-U8QJIBE/realtime/blk_mem_gen_0_stub.v2default:default2
62default:default8@Z8-6155h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
douta2default:default2!
blk_mem_gen_02default:default2
BRAMA2default:default2n
XD:/documentos/projectos_vivado/tarea_2/tarea_2.srcs/sources_1/imports/new/UartRxLogic.sv2default:default2
922default:default8@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
BRAMA2default:default2!
blk_mem_gen_02default:default2
122default:default2
112default:default2n
XD:/documentos/projectos_vivado/tarea_2/tarea_2.srcs/sources_1/imports/new/UartRxLogic.sv2default:default2
922default:default8@Z8-7023h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
douta2default:default2!
blk_mem_gen_02default:default2
BRAMB2default:default2n
XD:/documentos/projectos_vivado/tarea_2/tarea_2.srcs/sources_1/imports/new/UartRxLogic.sv2default:default2
1062default:default8@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
BRAMB2default:default2!
blk_mem_gen_02default:default2
122default:default2
112default:default2n
XD:/documentos/projectos_vivado/tarea_2/tarea_2.srcs/sources_1/imports/new/UartRxLogic.sv2default:default2
1062default:default8@Z8-7023h px� 
�
synthesizing module '%s'%s4497*oasys2"
procesing_core2default:default2
 2default:default2i
SD:/documentos/projectos_vivado/tarea_2/tarea_2.srcs/sources_1/new/procesing_core.sv2default:default2
232default:default8@Z8-6157h px� 
�
9port '%s' of module '%s' is unconnected for instance '%s'4818*oasys2
count2default:default2
Counter2default:default2
DELAY2default:default2i
SD:/documentos/projectos_vivado/tarea_2/tarea_2.srcs/sources_1/new/procesing_core.sv2default:default2
3012default:default8@Z8-7071h px� 
�
Kinstance '%s' of module '%s' has %s connections declared, but only %s given4757*oasys2
DELAY2default:default2
Counter2default:default2
62default:default2
52default:default2i
SD:/documentos/projectos_vivado/tarea_2/tarea_2.srcs/sources_1/new/procesing_core.sv2default:default2
3012default:default8@Z8-7023h px� 
�
synthesizing module '%s'%s4497*oasys2
promedio2default:default2
 2default:default2c
MD:/documentos/projectos_vivado/tarea_2/tarea_2.srcs/sources_1/new/promedio.sv2default:default2
232default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
promedio2default:default2
 2default:default2
02default:default2
12default:default2c
MD:/documentos/projectos_vivado/tarea_2/tarea_2.srcs/sources_1/new/promedio.sv2default:default2
232default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
abs_res2default:default2
 2default:default2b
LD:/documentos/projectos_vivado/tarea_2/tarea_2.srcs/sources_1/new/abs_res.sv2default:default2
232default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
abs_res2default:default2
 2default:default2
02default:default2
12default:default2b
LD:/documentos/projectos_vivado/tarea_2/tarea_2.srcs/sources_1/new/abs_res.sv2default:default2
232default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2
cordic_02default:default2
 2default:default2�
uD:/documentos/projectos_vivado/tarea_2/tarea_2.runs/synth_1/.Xil/Vivado-7884-DESKTOP-U8QJIBE/realtime/cordic_0_stub.v2default:default2
62default:default8@Z8-6157h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2
cordic_02default:default2
 2default:default2
02default:default2
12default:default2�
uD:/documentos/projectos_vivado/tarea_2/tarea_2.runs/synth_1/.Xil/Vivado-7884-DESKTOP-U8QJIBE/realtime/cordic_0_stub.v2default:default2
62default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2"
procesing_core2default:default2
 2default:default2
02default:default2
12default:default2i
SD:/documentos/projectos_vivado/tarea_2/tarea_2.srcs/sources_1/new/procesing_core.sv2default:default2
232default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2!
UartRxHandler2default:default2
 2default:default2
02default:default2
12default:default2n
XD:/documentos/projectos_vivado/tarea_2/tarea_2.srcs/sources_1/imports/new/UartRxLogic.sv2default:default2
232default:default8@Z8-6155h px� 
�
%s*synth2�
yFinished RTL Elaboration : Time (s): cpu = 00:00:18 ; elapsed = 00:00:21 . Memory (MB): peak = 1370.246 ; gain = 508.523
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:18 ; elapsed = 00:00:21 . Memory (MB): peak = 1370.246 ; gain = 508.523
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:18 ; elapsed = 00:00:21 . Memory (MB): peak = 1370.246 ; gain = 508.523
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0262default:default2
1370.2462default:default2
0.0002default:defaultZ17-268h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
>

Processing XDC Constraints
244*projectZ1-262h px� 
=
Initializing timing engine
348*projectZ1-569h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
xd:/documentos/projectos_vivado/tarea_2/tarea_2.gen/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0/blk_mem_gen_0_in_context.xdc2default:default2
BRAMA	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
xd:/documentos/projectos_vivado/tarea_2/tarea_2.gen/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0/blk_mem_gen_0_in_context.xdc2default:default2
BRAMA	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2�
xd:/documentos/projectos_vivado/tarea_2/tarea_2.gen/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0/blk_mem_gen_0_in_context.xdc2default:default2
BRAMB	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2�
xd:/documentos/projectos_vivado/tarea_2/tarea_2.gen/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0/blk_mem_gen_0_in_context.xdc2default:default2
BRAMB	2default:default8Z20-847h px� 
�
$Parsing XDC File [%s] for cell '%s'
848*designutils2
id:/documentos/projectos_vivado/tarea_2/tarea_2.gen/sources_1/ip/cordic_0/cordic_0/cordic_0_in_context.xdc2default:default2!
CORE/CORDIC	2default:default8Z20-848h px� 
�
-Finished Parsing XDC File [%s] for cell '%s'
847*designutils2
id:/documentos/projectos_vivado/tarea_2/tarea_2.gen/sources_1/ip/cordic_0/cordic_0/cordic_0_in_context.xdc2default:default2!
CORE/CORDIC	2default:default8Z20-847h px� 
�
Parsing XDC File [%s]
179*designutils2�
oD:/documentos/projectos_vivado/tarea_2/tarea_2.srcs/constrs_1/imports/projectos_vivado/Nexys-A7-100T-Master.xdc2default:default8Z20-179h px� 
�
Finished Parsing XDC File [%s]
178*designutils2�
oD:/documentos/projectos_vivado/tarea_2/tarea_2.srcs/constrs_1/imports/projectos_vivado/Nexys-A7-100T-Master.xdc2default:default8Z20-178h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project2�
oD:/documentos/projectos_vivado/tarea_2/tarea_2.srcs/constrs_1/imports/projectos_vivado/Nexys-A7-100T-Master.xdc2default:default23
.Xil/UartRxHandler_propImpl.xdc2default:defaultZ1-236h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0012default:default2
1449.8322default:default2
0.0002default:defaultZ17-268h px� 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common24
 Constraint Validation Runtime : 2default:default2
00:00:002default:default2 
00:00:00.0102default:default2
1449.8322default:default2
0.0002default:defaultZ17-268h px� 
�
�Clock period '%s' specified during out-of-context synthesis of instance '%s' at clock pin '%s' is different from the actual clock period '%s', this can lead to different synthesis results.
203*timing2
20.0002default:default2
BRAMA2default:default2
clka2default:default2
10.0002default:defaultZ38-316h px� 
�
�Clock period '%s' specified during out-of-context synthesis of instance '%s' at clock pin '%s' is different from the actual clock period '%s', this can lead to different synthesis results.
203*timing2
20.0002default:default2
BRAMB2default:default2
clka2default:default2
10.0002default:defaultZ38-316h px� 
�
�Clock period '%s' specified during out-of-context synthesis of instance '%s' at clock pin '%s' is different from the actual clock period '%s', this can lead to different synthesis results.
203*timing2
1000.0002default:default2
CORE/CORDIC2default:default2
aclk2default:default2
10.0002default:defaultZ38-316h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
Finished Constraint Validation : Time (s): cpu = 00:00:38 ; elapsed = 00:00:41 . Memory (MB): peak = 1449.832 ; gain = 588.109
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Loading part: xc7a100tcsg324-1
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:38 ; elapsed = 00:00:41 . Memory (MB): peak = 1449.832 ; gain = 588.109
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Z
%s
*synth2B
.Start Applying 'set_property' XDC Constraints
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:38 ; elapsed = 00:00:41 . Memory (MB): peak = 1449.832 ; gain = 588.109
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
3inferred FSM for state register '%s' in module '%s'802*oasys2
	state_reg2default:default2
uart_rx2default:defaultZ8-802h px� 
�
3inferred FSM for state register '%s' in module '%s'802*oasys2
	state_reg2default:default2
uart_tx2default:defaultZ8-802h px� 
�
3inferred FSM for state register '%s' in module '%s'802*oasys2
	state_reg2default:default2$
first_comand_dec2default:defaultZ8-802h px� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2s
_                 RX_IDLE |                              000 |                              000
2default:defaulth p
x
� 
�
%s
*synth2s
_                RX_START |                              001 |                              001
2default:defaulth p
x
� 
�
%s
*synth2s
_                 RX_RECV |                              010 |                              010
2default:defaulth p
x
� 
�
%s
*synth2s
_                 RX_STOP |                              011 |                              011
2default:defaulth p
x
� 
�
%s
*synth2s
_                RX_READY |                              100 |                              100
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
	state_reg2default:default2

sequential2default:default2
uart_rx2default:defaultZ8-3354h px� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2s
_                 TX_IDLE |                               00 |                               00
2default:defaulth p
x
� 
�
%s
*synth2s
_                TX_START |                               01 |                               01
2default:defaulth p
x
� 
�
%s
*synth2s
_                 TX_SEND |                               10 |                               10
2default:defaulth p
x
� 
�
%s
*synth2s
_                 TX_STOP |                               11 |                               11
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
	state_reg2default:default2

sequential2default:default2
uart_tx2default:defaultZ8-3354h px� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2t
`                   State |                     New Encoding |                Previous Encoding 
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2s
_                    idle |                               00 |                               00
2default:defaulth p
x
� 
�
%s
*synth2s
_               writing_b |                               01 |                               10
2default:defaulth p
x
� 
�
%s
*synth2s
_               writing_a |                               10 |                               01
2default:defaulth p
x
� 
�
%s
*synth2x
d---------------------------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
	state_reg2default:default2

sequential2default:default2$
first_comand_dec2default:defaultZ8-3354h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:39 ; elapsed = 00:00:43 . Memory (MB): peak = 1449.832 ; gain = 588.109
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input   19 Bit       Adders := 2     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input   18 Bit       Adders := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input   17 Bit       Adders := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    9 Bit       Adders := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   3 Input    8 Bit       Adders := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    3 Bit       Adders := 4     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    2 Bit       Adders := 7     
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               32 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               26 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               19 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               18 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                8 Bit    Registers := 2     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                5 Bit    Registers := 1     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                3 Bit    Registers := 4     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                2 Bit    Registers := 5     
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 4     
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
X
%s
*synth2@
,	  20 Input   26 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	  20 Input   18 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input   17 Bit        Muxes := 2     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   8 Input    8 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    8 Bit        Muxes := 2     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    6 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   3 Input    6 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    5 Bit        Muxes := 3     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   3 Input    4 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    4 Bit        Muxes := 5     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   4 Input    3 Bit        Muxes := 3     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   5 Input    3 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    3 Bit        Muxes := 6     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   3 Input    3 Bit        Muxes := 2     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    2 Bit        Muxes := 21    
2default:defaulth p
x
� 
X
%s
*synth2@
,	   4 Input    2 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   3 Input    2 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    1 Bit        Muxes := 7     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   3 Input    1 Bit        Muxes := 7     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   4 Input    1 Bit        Muxes := 7     
2default:defaulth p
x
� 
X
%s
*synth2@
,	   5 Input    1 Bit        Muxes := 1     
2default:defaulth p
x
� 
X
%s
*synth2@
,	  20 Input    1 Bit        Muxes := 6     
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2k
WPart Resources:
DSPs: 240 (col length:80)
BRAMs: 270 (col length: RAMB18 80 RAMB36 40)
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px� 
�
+design %s has port %s driven by constant %s3447*oasys2!
UartRxHandler2default:default2
dp2default:default2
12default:defaultZ8-3917h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:48 ; elapsed = 00:00:52 . Memory (MB): peak = 1449.832 ; gain = 588.109
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
2default:defaulth px� 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px� 
M
%s*synth25
!
ROM: Preliminary Mapping Report
2default:defaulth px� 
r
%s*synth2Z
F+---------------+------------------+---------------+----------------+
2default:defaulth px� 
s
%s*synth2[
G|Module Name    | RTL Object       | Depth x Width | Implemented As | 
2default:defaulth px� 
r
%s*synth2Z
F+---------------+------------------+---------------+----------------+
2default:defaulth px� 
s
%s*synth2[
G|procesing_core | rst_counter      | 32x1          | LUT            | 
2default:defaulth px� 
s
%s*synth2[
G|UartRxHandler  | CORE/rst_counter | 32x1          | LUT            | 
2default:defaulth px� 
s
%s*synth2[
G+---------------+------------------+---------------+----------------+

2default:defaulth px� 
�
%s*synth2�
�---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
2default:defaulth px� 
~
%s*synth2f
R---------------------------------------------------------------------------------
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
R
%s
*synth2:
&Start Applying XDC Timing Constraints
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:01:02 ; elapsed = 00:01:07 . Memory (MB): peak = 1449.832 ; gain = 588.109
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
}Finished Timing Optimization : Time (s): cpu = 00:01:06 ; elapsed = 00:01:10 . Memory (MB): peak = 1449.832 ; gain = 588.109
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
|Finished Technology Mapping : Time (s): cpu = 00:01:06 ; elapsed = 00:01:10 . Memory (MB): peak = 1449.832 ; gain = 588.109
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
vFinished IO Insertion : Time (s): cpu = 00:01:18 ; elapsed = 00:01:22 . Memory (MB): peak = 1449.832 ; gain = 588.109
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:01:18 ; elapsed = 00:01:22 . Memory (MB): peak = 1449.832 ; gain = 588.109
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:01:18 ; elapsed = 00:01:22 . Memory (MB): peak = 1449.832 ; gain = 588.109
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:01:18 ; elapsed = 00:01:22 . Memory (MB): peak = 1449.832 ; gain = 588.109
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:01:18 ; elapsed = 00:01:22 . Memory (MB): peak = 1449.832 ; gain = 588.109
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:01:18 ; elapsed = 00:01:22 . Memory (MB): peak = 1449.832 ; gain = 588.109
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
� 
O
%s
*synth27
#+------+--------------+----------+
2default:defaulth p
x
� 
O
%s
*synth27
#|      |BlackBox name |Instances |
2default:defaulth p
x
� 
O
%s
*synth27
#+------+--------------+----------+
2default:defaulth p
x
� 
O
%s
*synth27
#|1     |blk_mem_gen_0 |         2|
2default:defaulth p
x
� 
O
%s
*synth27
#|2     |cordic_0      |         1|
2default:defaulth p
x
� 
O
%s
*synth27
#+------+--------------+----------+
2default:defaulth p
x
� 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px� 
K
%s*synth23
+------+--------------+------+
2default:defaulth px� 
K
%s*synth23
|      |Cell          |Count |
2default:defaulth px� 
K
%s*synth23
+------+--------------+------+
2default:defaulth px� 
K
%s*synth23
|1     |blk_mem_gen   |     1|
2default:defaulth px� 
K
%s*synth23
|2     |blk_mem_gen_0 |     1|
2default:defaulth px� 
K
%s*synth23
|3     |cordic        |     1|
2default:defaulth px� 
K
%s*synth23
|4     |BUFG          |     1|
2default:defaulth px� 
K
%s*synth23
|5     |CARRY4        |    41|
2default:defaulth px� 
K
%s*synth23
|6     |LUT1          |    12|
2default:defaulth px� 
K
%s*synth23
|7     |LUT2          |    76|
2default:defaulth px� 
K
%s*synth23
|8     |LUT3          |    55|
2default:defaulth px� 
K
%s*synth23
|9     |LUT4          |    32|
2default:defaulth px� 
K
%s*synth23
|10    |LUT5          |    98|
2default:defaulth px� 
K
%s*synth23
|11    |LUT6          |    95|
2default:defaulth px� 
K
%s*synth23
|12    |MUXF7         |     1|
2default:defaulth px� 
K
%s*synth23
|13    |FDCE          |    21|
2default:defaulth px� 
K
%s*synth23
|14    |FDRE          |   127|
2default:defaulth px� 
K
%s*synth23
|15    |FDSE          |     5|
2default:defaulth px� 
K
%s*synth23
|16    |IBUF          |     3|
2default:defaulth px� 
K
%s*synth23
|17    |OBUF          |    19|
2default:defaulth px� 
K
%s*synth23
+------+--------------+------+
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:01:18 ; elapsed = 00:01:22 . Memory (MB): peak = 1449.832 ; gain = 588.109
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
r
%s
*synth2Z
FSynthesis finished with 0 errors, 0 critical warnings and 2 warnings.
2default:defaulth p
x
� 
�
%s
*synth2�
Synthesis Optimization Runtime : Time (s): cpu = 00:00:55 ; elapsed = 00:01:17 . Memory (MB): peak = 1449.832 ; gain = 508.523
2default:defaulth p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:01:18 ; elapsed = 00:01:22 . Memory (MB): peak = 1449.832 ; gain = 588.109
2default:defaulth p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0222default:default2
1449.8322default:default2
0.0002default:defaultZ17-268h px� 
f
-Analyzing %s Unisim elements for replacement
17*netlist2
422default:defaultZ29-17h px� 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
02default:defaultZ29-28h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2
00:00:002default:default2
1449.8322default:default2
0.0002default:defaultZ17-268h px� 
~
!Unisim Transformation Summary:
%s111*project29
%No Unisim elements were transformed.
2default:defaultZ1-111h px� 
h
%Synth Design complete | Checksum: %s
562*	vivadotcl2
c3ef1bf12default:defaultZ4-1430h px� 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
692default:default2
112default:default2
02default:default2
02default:defaultZ4-41h px� 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:01:302default:default2
00:01:352default:default2
1449.8322default:default2
987.3632default:defaultZ17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2a
MD:/documentos/projectos_vivado/tarea_2/tarea_2.runs/synth_1/UartRxHandler.dcp2default:defaultZ17-1381h px� 
�
%s4*runtcl2�
pExecuting : report_utilization -file UartRxHandler_utilization_synth.rpt -pb UartRxHandler_utilization_synth.pb
2default:defaulth px� 
�
Exiting %s at %s...
206*common2
Vivado2default:default2,
Sat Oct 21 23:18:44 20232default:defaultZ17-206h px� 


End Record