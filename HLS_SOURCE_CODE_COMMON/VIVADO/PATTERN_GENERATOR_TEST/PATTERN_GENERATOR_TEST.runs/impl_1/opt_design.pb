
O
Command: %s
53*	vivadotcl2

opt_design2default:defaultZ4-113h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2"
Implementation2default:default2
xc7z0202default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2"
Implementation2default:default2
xc7z0202default:defaultZ17-349h px� 
n
,Running DRC as a precondition to command %s
22*	vivadotcl2

opt_design2default:defaultZ4-22h px� 
R

Starting %s Task
103*constraints2
DRC2default:defaultZ18-103h px� 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px� 
U
DRC finished with %s
272*project2
0 Errors2default:defaultZ1-461h px� 
d
BPlease refer to the DRC report (report_drc) for more information.
274*projectZ1-462h px� 
�

%s
*constraints2r
^Time (s): cpu = 00:00:01 ; elapsed = 00:00:00.191 . Memory (MB): peak = 978.738 ; gain = 3.7152default:defaulth px� 
a

Starting %s Task
103*constraints2&
Logic Optimization2default:defaultZ18-103h px� 
�

Phase %s%s
101*constraints2
1 2default:default27
#Generate And Synthesize Debug Cores2default:defaultZ18-101h px� 
>
Refreshing IP repositories
234*coregenZ19-234h px� 
�
 Loaded user IP repository '%s'.
1135*coregen2x
dc:/Users/Riccardo/Documents/HLS_COMMON/VIVADO/PATTERN_GENERATOR_TEST/PATTERN_GENERATOR_TEST.cache/ip2default:defaultZ19-1700h px� 
�
 Loaded user IP repository '%s'.
1135*coregen2P
<c:/Users/Riccardo/Documents/HLS_COMMON/VGA/AXI_STREAM_TO_VGA2default:defaultZ19-1700h px� 
�
 Loaded user IP repository '%s'.
1135*coregen2e
Qc:/Users/Riccardo/Documents/HLS_COMMON/PATTERN_GENERATORS/PATTERN_GENERATOR_CROSS2default:defaultZ19-1700h px� 
�
 Loaded user IP repository '%s'.
1135*coregen2W
Cc:/Users/Riccardo/Documents/HLS_COMMON/DDR/AXIS_TO_DDR_WRITER_VGA642default:defaultZ19-1700h px� 
�
 Loaded user IP repository '%s'.
1135*coregen2W
Cc:/Users/Riccardo/Documents/HLS_COMMON/DDR/DDR_TO_AXIS_READER_VGA642default:defaultZ19-1700h px� 
|
"Loaded Vivado IP repository '%s'.
1332*coregen23
C:/Xilinx/Vivado/2015.4/data/ip2default:defaultZ19-2313h px� 
�
Generating IP %s for %s.
1712*coregen2+
xilinx.com:ip:xsdbm:1.12default:default2

dbg_hub_CV2default:defaultZ19-3806h px� 
�
Generating IP %s for %s.
1712*coregen2)
xilinx.com:ip:ila:6.02default:default2

u_ila_0_CV2default:defaultZ19-3806h px� 
�
Generating IP %s for %s.
1712*coregen2)
xilinx.com:ip:ila:6.02default:default2

u_ila_1_CV2default:defaultZ19-3806h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0752default:default2
1030.3592default:default2
0.0002default:defaultZ17-268h px� 
W
BPhase 1 Generate And Synthesize Debug Cores | Checksum: 1856e0784
*commonh px� 
�

%s
*constraints2p
\Time (s): cpu = 00:00:04 ; elapsed = 00:08:50 . Memory (MB): peak = 1030.359 ; gain = 51.6212default:defaulth px� 
A
,Implement Debug Cores | Checksum: 218278fcf
*commonh px� 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px� 
i

Phase %s%s
101*constraints2
2 2default:default2
Retarget2default:defaultZ18-101h px� 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px� 
K
Retargeted %s cell(s).
49*opt2
02default:defaultZ31-49h px� 
<
'Phase 2 Retarget | Checksum: 25c8bf631
*commonh px� 
�

%s
*constraints2p
\Time (s): cpu = 00:00:06 ; elapsed = 00:08:51 . Memory (MB): peak = 1055.715 ; gain = 76.9772default:defaulth px� 
u

Phase %s%s
101*constraints2
3 2default:default2(
Constant Propagation2default:defaultZ18-101h px� 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px� 
K
Eliminated %s cells.
10*opt2
6692default:defaultZ31-10h px� 
H
3Phase 3 Constant Propagation | Checksum: 150dd9a8e
*commonh px� 
�

%s
*constraints2p
\Time (s): cpu = 00:00:08 ; elapsed = 00:08:53 . Memory (MB): peak = 1055.715 ; gain = 76.9772default:defaulth px� 
f

Phase %s%s
101*constraints2
4 2default:default2
Sweep2default:defaultZ18-101h px� 
W
 Eliminated %s unconnected nets.
12*opt2
20032default:defaultZ31-12h px� 
X
!Eliminated %s unconnected cells.
11*opt2
10042default:defaultZ31-11h px� 
9
$Phase 4 Sweep | Checksum: 122ecb0a7
*commonh px� 
�

%s
*constraints2p
\Time (s): cpu = 00:00:11 ; elapsed = 00:08:56 . Memory (MB): peak = 1055.715 ; gain = 76.9772default:defaulth px� 
a

Starting %s Task
103*constraints2&
Connectivity Check2default:defaultZ18-103h px� 
�

%s
*constraints2s
_Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.026 . Memory (MB): peak = 1055.715 ; gain = 0.0002default:defaulth px� 
J
5Ending Logic Optimization Task | Checksum: 122ecb0a7
*commonh px� 
�

%s
*constraints2p
\Time (s): cpu = 00:00:11 ; elapsed = 00:08:56 . Memory (MB): peak = 1055.715 ; gain = 76.9772default:defaulth px� 
a

Starting %s Task
103*constraints2&
Power Optimization2default:defaultZ18-103h px� 
s
7Will skip clock gating for clocks with period < %s ns.
114*pwropt2
2.002default:defaultZ34-132h px� 
=
Applying IDT optimizations ...
9*pwroptZ34-9h px� 
?
Applying ODC optimizations ...
10*pwroptZ34-10h px� 
E
%Done setting XDC timing constraints.
35*timingZ38-35h px� 
K
,Running Vector-less Activity Propagation...
51*powerZ33-51h px� 
P
3
Finished Running Vector-less Activity Propagation
1*powerZ33-1h px� 


*pwropth px� 
e

Starting %s Task
103*constraints2*
PowerOpt Patch Enables2default:defaultZ18-103h px� 
�
�WRITE_MODE attribute of %s BRAM(s) out of a total of %s has been updated to save power.
    Run report_power_opt to get a complete listing of the BRAMs updated.
129*pwropt2
22default:default2
52default:defaultZ34-162h px� 
d
+Structural ODC has moved %s WE to EN ports
155*pwropt2
02default:defaultZ34-201h px� 
�
CNumber of BRAM Ports augmented: %s newly gated: %s Total Ports: %s
65*pwropt2
02default:default2
02default:default2
102default:defaultZ34-65h px� 
N
9Ending PowerOpt Patch Enables Task | Checksum: 122ecb0a7
*commonh px� 
�

%s
*constraints2s
_Time (s): cpu = 00:00:00 ; elapsed = 00:00:00.035 . Memory (MB): peak = 1236.430 ; gain = 0.0002default:defaulth px� 
J
5Ending Power Optimization Task | Checksum: 122ecb0a7
*commonh px� 
�

%s
*constraints2q
]Time (s): cpu = 00:00:05 ; elapsed = 00:00:03 . Memory (MB): peak = 1236.430 ; gain = 180.7152default:defaulth px� 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
442default:default2
02default:default2
02default:default2
02default:defaultZ4-41h px� 
\
%s completed successfully
29*	vivadotcl2

opt_design2default:defaultZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2 
opt_design: 2default:default2
00:00:172default:default2
00:09:002default:default2
1236.4302default:default2
261.4062default:defaultZ17-268h px� 
D
Writing placer database...
1603*designutilsZ20-1893h px� 
=
Writing XDEF routing.
211*designutilsZ20-211h px� 
J
#Writing XDEF routing logical nets.
209*designutilsZ20-209h px� 
J
#Writing XDEF routing special nets.
210*designutilsZ20-210h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2)
Write XDEF Complete: 2default:default2
00:00:002default:default2 
00:00:00.0842default:default2
1236.4302default:default2
0.0002default:defaultZ17-268h px� 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px� 
�
#The results of DRC are in file %s.
168*coretcl2�
�C:/Users/Riccardo/Documents/HLS_COMMON/VIVADO/PATTERN_GENERATOR_TEST/PATTERN_GENERATOR_TEST.runs/impl_1/design_1_wrapper_drc_opted.rpt�C:/Users/Riccardo/Documents/HLS_COMMON/VIVADO/PATTERN_GENERATOR_TEST/PATTERN_GENERATOR_TEST.runs/impl_1/design_1_wrapper_drc_opted.rpt2default:default8Z2-168h px� 


End Record