
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
create_project: 2

00:00:062

00:00:072	
556.5432	
181.844Z17-268h px� 
�
Command: %s
1870*	planAhead2u
sread_checkpoint -auto_incremental -incremental H:/EGRE365/lab7/lab7.srcs/utils_1/imports/synth_1/roomController.dcpZ12-2866h px� 
�
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2F
DH:/EGRE365/lab7/lab7.srcs/utils_1/imports/synth_1/roomController.dcpZ12-5825h px� 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px� 
e
Command: %s
53*	vivadotcl24
2synth_design -top top_level -part xc7a100tcsg324-1Z4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
{
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2

xc7a100tZ17-347h px� 
k
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2

xc7a100tZ17-349h px� 
E
Loading part %s157*device2
xc7a100tcsg324-1Z21-403h px� 
o
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
2Z8-7079h px� 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px� 
N
#Helper process launched with PID %s4824*oasys2
13780Z8-7075h px� 
�
%s*synth2{
yStarting RTL Elaboration : Time (s): cpu = 00:00:05 ; elapsed = 00:00:06 . Memory (MB): peak = 1406.465 ; gain = 440.012
h px� 
�
synthesizing module '%s'638*oasys2
	top_level2/
+H:/EGRE365/lab7/givenSources/top_level .vhd2
498@Z8-638h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
clock_divider20
.H:/EGRE365/lab7/givenSources/clock_divider.vhd2
232
	clockCalc2
clock_divider2/
+H:/EGRE365/lab7/givenSources/top_level .vhd2
778@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
clock_divider22
.H:/EGRE365/lab7/givenSources/clock_divider.vhd2
348@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
clock_divider2
02
122
.H:/EGRE365/lab7/givenSources/clock_divider.vhd2
348@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
SwitchDebouncer23
1H:/EGRE365/lab7/givenSources/switch_debouncer.vhd2
52
leftSwitchCalc2
switchDebouncer2/
+H:/EGRE365/lab7/givenSources/top_level .vhd2
808@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
SwitchDebouncer25
1H:/EGRE365/lab7/givenSources/switch_debouncer.vhd2
138@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
SwitchDebouncer2
02
125
1H:/EGRE365/lab7/givenSources/switch_debouncer.vhd2
138@Z8-256h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
SwitchDebouncer23
1H:/EGRE365/lab7/givenSources/switch_debouncer.vhd2
52
rightSwitchCalc2
switchDebouncer2/
+H:/EGRE365/lab7/givenSources/top_level .vhd2
838@Z8-3491h px� 
�
Hmodule '%s' declared at '%s:%s' bound to instance '%s' of component '%s'3392*oasys2
roomController2<
:H:/EGRE365/lab7/lab7.srcs/sources_1/new/roomController.vhd2
252
roomControllerCalc2
roomController2/
+H:/EGRE365/lab7/givenSources/top_level .vhd2
878@Z8-3491h px� 
�
synthesizing module '%s'638*oasys2
roomController2>
:H:/EGRE365/lab7/lab7.srcs/sources_1/new/roomController.vhd2
338@Z8-638h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
roomController2
02
12>
:H:/EGRE365/lab7/lab7.srcs/sources_1/new/roomController.vhd2
338@Z8-256h px� 
�
%done synthesizing module '%s' (%s#%s)256*oasys2
	top_level2
02
12/
+H:/EGRE365/lab7/givenSources/top_level .vhd2
498@Z8-256h px� 
s
9Port %s in module %s is either unconnected or has no load4866*oasys2	
LED[15]2
	top_levelZ8-7129h px� 
s
9Port %s in module %s is either unconnected or has no load4866*oasys2	
LED[14]2
	top_levelZ8-7129h px� 
s
9Port %s in module %s is either unconnected or has no load4866*oasys2	
LED[13]2
	top_levelZ8-7129h px� 
s
9Port %s in module %s is either unconnected or has no load4866*oasys2	
LED[12]2
	top_levelZ8-7129h px� 
s
9Port %s in module %s is either unconnected or has no load4866*oasys2	
LED[11]2
	top_levelZ8-7129h px� 
s
9Port %s in module %s is either unconnected or has no load4866*oasys2	
LED[10]2
	top_levelZ8-7129h px� 
r
9Port %s in module %s is either unconnected or has no load4866*oasys2
LED[9]2
	top_levelZ8-7129h px� 
r
9Port %s in module %s is either unconnected or has no load4866*oasys2
LED[8]2
	top_levelZ8-7129h px� 
r
9Port %s in module %s is either unconnected or has no load4866*oasys2
LED[7]2
	top_levelZ8-7129h px� 
r
9Port %s in module %s is either unconnected or has no load4866*oasys2
LED[6]2
	top_levelZ8-7129h px� 
r
9Port %s in module %s is either unconnected or has no load4866*oasys2
LED[5]2
	top_levelZ8-7129h px� 
r
9Port %s in module %s is either unconnected or has no load4866*oasys2
LED[4]2
	top_levelZ8-7129h px� 
r
9Port %s in module %s is either unconnected or has no load4866*oasys2
LED[3]2
	top_levelZ8-7129h px� 
r
9Port %s in module %s is either unconnected or has no load4866*oasys2
LED[2]2
	top_levelZ8-7129h px� 
r
9Port %s in module %s is either unconnected or has no load4866*oasys2
LED[1]2
	top_levelZ8-7129h px� 
�
%s*synth2{
yFinished RTL Elaboration : Time (s): cpu = 00:00:06 ; elapsed = 00:00:08 . Memory (MB): peak = 1514.793 ; gain = 548.340
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:07 ; elapsed = 00:00:09 . Memory (MB): peak = 1514.793 ; gain = 548.340
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 1 : Time (s): cpu = 00:00:07 ; elapsed = 00:00:09 . Memory (MB): peak = 1514.793 ; gain = 548.340
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0012

1514.7932
0.000Z17-268h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
>

Processing XDC Constraints
244*projectZ1-262h px� 
=
Initializing timing engine
348*projectZ1-569h px� 
v
Parsing XDC File [%s]
179*designutils25
1H:/EGRE365/lab7/givenSources/Nexys4DDR_Master.xdc8Z20-179h px� 

Finished Parsing XDC File [%s]
178*designutils25
1H:/EGRE365/lab7/givenSources/Nexys4DDR_Master.xdc8Z20-178h px� 
�
�Implementation specific constraints were found while reading constraint file [%s]. These constraints will be ignored for synthesis but will be used in implementation. Impacted constraints are listed in the file [%s].
233*project23
1H:/EGRE365/lab7/givenSources/Nexys4DDR_Master.xdc2
.Xil/top_level_propImpl.xdcZ1-236h px� 
H
&Completed Processing XDC Constraints

245*projectZ1-263h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002

00:00:002

1609.4142
0.000Z17-268h px� 
l
!Unisim Transformation Summary:
%s111*project2'
%No Unisim elements were transformed.
Z1-111h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
 Constraint Validation Runtime : 2

00:00:002
00:00:00.0332

1609.4142
0.000Z17-268h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
Finished Constraint Validation : Time (s): cpu = 00:00:14 ; elapsed = 00:00:18 . Memory (MB): peak = 1609.414 ; gain = 642.961
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
D
%s
*synth2,
*Start Loading Part and Timing Information
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Loading part: xc7a100tcsg324-1
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:14 ; elapsed = 00:00:18 . Memory (MB): peak = 1609.414 ; gain = 642.961
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
%s
*synth20
.Start Applying 'set_property' XDC Constraints
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished applying 'set_property' XDC Constraints : Time (s): cpu = 00:00:14 ; elapsed = 00:00:18 . Memory (MB): peak = 1609.414 ; gain = 642.961
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
7
%s
*synth2
Start Preparing Guide Design
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
�The reference checkpoint %s is not suitable for use with incremental synthesis for this design. Please regenerate the checkpoint for this design with -incremental_synth switch in the same Vivado session that synth_design has been run. Synthesis will continue with the default flow4740*oasys2F
DH:/EGRE365/lab7/lab7.srcs/utils_1/imports/synth_1/roomController.dcpZ8-6895h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2~
|Finished Doing Graph Differ : Time (s): cpu = 00:00:14 ; elapsed = 00:00:19 . Memory (MB): peak = 1609.414 ; gain = 642.961
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Preparing Guide Design : Time (s): cpu = 00:00:14 ; elapsed = 00:00:19 . Memory (MB): peak = 1609.414 ; gain = 642.961
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
y
3inferred FSM for state register '%s' in module '%s'802*oasys2
presentState_reg2
roomControllerZ8-802h px� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
z
%s
*synth2b
`                   State |                     New Encoding |                Previous Encoding 
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
y
%s
*synth2a
_              zeroinroom |                       0000000001 |                             0000
h p
x
� 
y
%s
*synth2a
_           firstentering |                       0000000010 |                             0001
h p
x
� 
y
%s
*synth2a
_               oneinroom |                       0000000100 |                             0010
h p
x
� 
y
%s
*synth2a
_            firstexiting |                       0000001000 |                             0011
h p
x
� 
y
%s
*synth2a
_          secondentering |                       0000010000 |                             0100
h p
x
� 
y
%s
*synth2a
_               twoinroom |                       0000100000 |                             0101
h p
x
� 
y
%s
*synth2a
_           thirdentering |                       0001000000 |                             0111
h p
x
� 
y
%s
*synth2a
_             threeinroom |                       0010000000 |                             1000
h p
x
� 
y
%s
*synth2a
_        thirdleavingroom |                       0100000000 |                             1001
h p
x
� 
y
%s
*synth2a
_           secondleaving |                       1000000000 |                             0110
h p
x
� 
~
%s
*synth2f
d---------------------------------------------------------------------------------------------------
h p
x
� 
�
Gencoded FSM with state register '%s' using encoding '%s' in module '%s'3353*oasys2
presentState_reg2	
one-hot2
roomControllerZ8-3354h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:14 ; elapsed = 00:00:19 . Memory (MB): peak = 1609.414 ; gain = 642.961
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
C
%s
*synth2+
)

Incremental Synthesis Report Summary:

h p
x
� 
<
%s
*synth2$
"1. Incremental synthesis run: no

h p
x
� 
O
%s
*synth27
5   Reason for not running incremental synthesis : 


h p
x
� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}4868*oasysZ8-7130h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Detailed RTL Component Info : 
h p
x
� 
(
%s
*synth2
+---Adders : 
h p
x
� 
F
%s
*synth2.
,	   2 Input   23 Bit       Adders := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input   15 Bit       Adders := 2     
h p
x
� 
F
%s
*synth2.
,	   2 Input    5 Bit       Adders := 2     
h p
x
� 
+
%s
*synth2
+---Registers : 
h p
x
� 
H
%s
*synth20
.	               23 Bit    Registers := 1     
h p
x
� 
H
%s
*synth20
.	               15 Bit    Registers := 2     
h p
x
� 
H
%s
*synth20
.	                5 Bit    Registers := 2     
h p
x
� 
H
%s
*synth20
.	                2 Bit    Registers := 2     
h p
x
� 
H
%s
*synth20
.	                1 Bit    Registers := 5     
h p
x
� 
'
%s
*synth2
+---Muxes : 
h p
x
� 
F
%s
*synth2.
,	   2 Input   15 Bit        Muxes := 2     
h p
x
� 
F
%s
*synth2.
,	  10 Input   10 Bit        Muxes := 1     
h p
x
� 
F
%s
*synth2.
,	   2 Input   10 Bit        Muxes := 21    
h p
x
� 
F
%s
*synth2.
,	   2 Input    1 Bit        Muxes := 8     
h p
x
� 
F
%s
*synth2.
,	   5 Input    1 Bit        Muxes := 3     
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Finished RTL Component Statistics 
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
q
%s
*synth2Y
WPart Resources:
DSPs: 240 (col length:80)
BRAMs: 270 (col length: RAMB18 80 RAMB36 40)
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Part Resource Summary
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
E
%s
*synth2-
+Start Cross Boundary and Area Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
H
&Parallel synthesis criteria is not met4829*oasysZ8-7080h px� 
s
9Port %s in module %s is either unconnected or has no load4866*oasys2	
LED[15]2
	top_levelZ8-7129h px� 
s
9Port %s in module %s is either unconnected or has no load4866*oasys2	
LED[14]2
	top_levelZ8-7129h px� 
s
9Port %s in module %s is either unconnected or has no load4866*oasys2	
LED[13]2
	top_levelZ8-7129h px� 
s
9Port %s in module %s is either unconnected or has no load4866*oasys2	
LED[12]2
	top_levelZ8-7129h px� 
s
9Port %s in module %s is either unconnected or has no load4866*oasys2	
LED[11]2
	top_levelZ8-7129h px� 
s
9Port %s in module %s is either unconnected or has no load4866*oasys2	
LED[10]2
	top_levelZ8-7129h px� 
r
9Port %s in module %s is either unconnected or has no load4866*oasys2
LED[9]2
	top_levelZ8-7129h px� 
r
9Port %s in module %s is either unconnected or has no load4866*oasys2
LED[8]2
	top_levelZ8-7129h px� 
r
9Port %s in module %s is either unconnected or has no load4866*oasys2
LED[7]2
	top_levelZ8-7129h px� 
r
9Port %s in module %s is either unconnected or has no load4866*oasys2
LED[6]2
	top_levelZ8-7129h px� 
r
9Port %s in module %s is either unconnected or has no load4866*oasys2
LED[5]2
	top_levelZ8-7129h px� 
r
9Port %s in module %s is either unconnected or has no load4866*oasys2
LED[4]2
	top_levelZ8-7129h px� 
r
9Port %s in module %s is either unconnected or has no load4866*oasys2
LED[3]2
	top_levelZ8-7129h px� 
r
9Port %s in module %s is either unconnected or has no load4866*oasys2
LED[2]2
	top_levelZ8-7129h px� 
r
9Port %s in module %s is either unconnected or has no load4866*oasys2
LED[1]2
	top_levelZ8-7129h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:00:16 ; elapsed = 00:00:23 . Memory (MB): peak = 1609.414 ; gain = 642.961
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
@
%s
*synth2(
&Start Applying XDC Timing Constraints
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Applying XDC Timing Constraints : Time (s): cpu = 00:00:21 ; elapsed = 00:00:28 . Memory (MB): peak = 1609.414 ; gain = 642.961
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
4
%s
*synth2
Start Timing Optimization
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2
}Finished Timing Optimization : Time (s): cpu = 00:00:22 ; elapsed = 00:00:28 . Memory (MB): peak = 1609.414 ; gain = 642.961
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
3
%s
*synth2
Start Technology Mapping
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2~
|Finished Technology Mapping : Time (s): cpu = 00:00:22 ; elapsed = 00:00:29 . Memory (MB): peak = 1609.414 ; gain = 642.961
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
-
%s
*synth2
Start IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
?
%s
*synth2'
%Start Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
B
%s
*synth2*
(Finished Flattening Before IO Insertion
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
6
%s
*synth2
Start Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Finished Final Netlist Cleanup
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2x
vFinished IO Insertion : Time (s): cpu = 00:00:26 ; elapsed = 00:00:33 . Memory (MB): peak = 1609.414 ; gain = 642.961
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
=
%s
*synth2%
#Start Renaming Generated Instances
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:00:26 ; elapsed = 00:00:33 . Memory (MB): peak = 1609.414 ; gain = 642.961
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
:
%s
*synth2"
 Start Rebuilding User Hierarchy
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:00:26 ; elapsed = 00:00:33 . Memory (MB): peak = 1609.414 ; gain = 642.961
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Renaming Generated Ports
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:00:26 ; elapsed = 00:00:33 . Memory (MB): peak = 1609.414 ; gain = 642.961
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
;
%s
*synth2#
!Start Handling Custom Attributes
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:00:26 ; elapsed = 00:00:33 . Memory (MB): peak = 1609.414 ; gain = 642.961
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
8
%s
*synth2 
Start Renaming Generated Nets
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:00:26 ; elapsed = 00:00:33 . Memory (MB): peak = 1609.414 ; gain = 642.961
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
9
%s
*synth2!
Start Writing Synthesis Report
h p
x
� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
/
%s
*synth2

Report BlackBoxes: 
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
8
%s
*synth2 
| |BlackBox name |Instances |
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
8
%s
*synth2 
+-+--------------+----------+
h p
x
� 
/
%s*synth2

Report Cell Usage: 
h px� 
2
%s*synth2
+------+-------+------+
h px� 
2
%s*synth2
|      |Cell   |Count |
h px� 
2
%s*synth2
+------+-------+------+
h px� 
2
%s*synth2
|1     |BUFG   |     1|
h px� 
2
%s*synth2
|2     |CARRY4 |    14|
h px� 
2
%s*synth2
|3     |LUT1   |     8|
h px� 
2
%s*synth2
|4     |LUT2   |    34|
h px� 
2
%s*synth2
|5     |LUT3   |     3|
h px� 
2
%s*synth2
|6     |LUT4   |    25|
h px� 
2
%s*synth2
|7     |LUT5   |     4|
h px� 
2
%s*synth2
|8     |LUT6   |     7|
h px� 
2
%s*synth2
|9     |FDCE   |     9|
h px� 
2
%s*synth2
|10    |FDPE   |     1|
h px� 
2
%s*synth2
|11    |FDRE   |    72|
h px� 
2
%s*synth2
|12    |IBUF   |     4|
h px� 
2
%s*synth2
|13    |OBUF   |     3|
h px� 
2
%s*synth2
|14    |OBUFT  |    15|
h px� 
2
%s*synth2
+------+-------+------+
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:00:26 ; elapsed = 00:00:33 . Memory (MB): peak = 1609.414 ; gain = 642.961
h px� 
l
%s
*synth2T
R---------------------------------------------------------------------------------
h p
x
� 
a
%s
*synth2I
GSynthesis finished with 0 errors, 1 critical warnings and 16 warnings.
h p
x
� 
�
%s
*synth2�
Synthesis Optimization Runtime : Time (s): cpu = 00:00:18 ; elapsed = 00:00:31 . Memory (MB): peak = 1609.414 ; gain = 548.340
h p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:00:26 ; elapsed = 00:00:34 . Memory (MB): peak = 1609.414 ; gain = 642.961
h p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002
00:00:00.0012

1609.4142
0.000Z17-268h px� 
T
-Analyzing %s Unisim elements for replacement
17*netlist2
14Z29-17h px� 
X
2Unisim Transformation completed in %s CPU seconds
28*netlist2
0Z29-28h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
Q
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02
0Z31-138h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Netlist sorting complete. 2

00:00:002

00:00:002

1609.4142
0.000Z17-268h px� 
l
!Unisim Transformation Summary:
%s111*project2'
%No Unisim elements were transformed.
Z1-111h px� 
V
%Synth Design complete | Checksum: %s
562*	vivadotcl2

1fe89eceZ4-1430h px� 
C
Releasing license: %s
83*common2
	SynthesisZ17-83h px� 

G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
322
312
12
0Z4-41h px� 
L
%s completed successfully
29*	vivadotcl2
synth_designZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
synth_design: 2

00:00:302

00:00:412

1609.4142

1049.914Z17-268h px� 
c
%s6*runtcl2G
ESynthesis results are not added to the cache due to CRITICAL_WARNING
h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2
Write ShapeDB Complete: 2

00:00:002
00:00:00.0112

1609.4142
0.000Z17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint21
/H:/EGRE365/lab7/lab7.runs/synth_1/top_level.dcpZ17-1381h px� 
�
%s4*runtcl2j
hExecuting : report_utilization -file top_level_utilization_synth.rpt -pb top_level_utilization_synth.pb
h px� 
\
Exiting %s at %s...
206*common2
Vivado2
Mon Oct 28 14:46:06 2024Z17-206h px� 


End Record