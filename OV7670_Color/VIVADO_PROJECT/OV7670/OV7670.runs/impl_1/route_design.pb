
Q
Command: %s
53*	vivadotcl2 
route_design2default:defaultZ4-113h px� 
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
p
,Running DRC as a precondition to command %s
22*	vivadotcl2 
route_design2default:defaultZ4-22h px� 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px� 
�	
Rule violation (%s) %s - %s
20*drc2
PLCK-122default:default2'
Clock Placer Checks2default:default2�
�Poor placement for routing between an IO pin and BUFG. 
Resolution: Poor placement of an IO pin and a BUFG has resulted in the router using a non-dedicated path between the two.  There are several things that could trigger this DRC, each of which can cause unpredictable clock insertion delays that result in poor timing.  This DRC could be caused by any of the following: (a) a clock port was placed on a pin that is not a CCIO-pin (b)the BUFG has not been placed in the same half of the device or SLR as the CCIO-pin (c) a single ended clock has been placed on the N-Side of a differential pair CCIO-pin.
 This is normally an ERROR but the CLOCK_DEDICATED_ROUTE constraint is set to FALSE allowing your design to continue. The use of this override is highly discouraged as it may lead to very poor timing results. It is recommended that this error condition be corrected in the design.

	PCLK_IBUF_inst (IBUF.O) is locked to W10
	PCLK_IBUF_BUFG_inst (BUFG.I) is provisionally placed by clockplacer on BUFGCTRL_X0Y0
2default:defaultZ23-20h px� 
�
Rule violation (%s) %s - %s
20*drc2
PLIO-72default:default2B
.Placement Constraints Check for IO constraints2default:default2�
�An IO Bus FIXED_IO_mio[53:0] with more than one IO standard is found. Components associated with this bus are: LVCMOS18 (FIXED_IO_mio[53], FIXED_IO_mio[52], FIXED_IO_mio[51], FIXED_IO_mio[50], FIXED_IO_mio[49], FIXED_IO_mio[48], FIXED_IO_mio[47], FIXED_IO_mio[46], FIXED_IO_mio[45], FIXED_IO_mio[44], FIXED_IO_mio[43], FIXED_IO_mio[42], FIXED_IO_mio[41], FIXED_IO_mio[40], FIXED_IO_mio[39] (the first 15 of 38 listed)); LVCMOS33 (FIXED_IO_mio[15], FIXED_IO_mio[14], FIXED_IO_mio[13], FIXED_IO_mio[12], FIXED_IO_mio[11], FIXED_IO_mio[10], FIXED_IO_mio[9], FIXED_IO_mio[8], FIXED_IO_mio[7], FIXED_IO_mio[6], FIXED_IO_mio[5], FIXED_IO_mio[4], FIXED_IO_mio[3], FIXED_IO_mio[2], FIXED_IO_mio[1] (the first 15 of 16 listed)); 2default:defaultZ23-20h px� 
b
DRC finished with %s
79*	vivadotcl2(
0 Errors, 2 Warnings2default:defaultZ4-198h px� 
e
BPlease refer to the DRC report (report_drc) for more information.
80*	vivadotclZ4-199h px� 
V

Starting %s Task
103*constraints2
Routing2default:defaultZ18-103h px� 
y
BMultithreading enabled for route_design using a maximum of %s CPUs97*route2
22default:defaultZ35-254h px� 
p

Phase %s%s
101*constraints2
1 2default:default2#
Build RT Design2default:defaultZ18-101h px� 
C
.Phase 1 Build RT Design | Checksum: 1219c558b
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:01:56 ; elapsed = 00:02:07 . Memory (MB): peak = 1362.398 ; gain = 0.0002default:defaulth px� 
v

Phase %s%s
101*constraints2
2 2default:default2)
Router Initialization2default:defaultZ18-101h px� 
o

Phase %s%s
101*constraints2
2.1 2default:default2 
Create Timer2default:defaultZ18-101h px� 
B
-Phase 2.1 Create Timer | Checksum: 1219c558b
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:01:58 ; elapsed = 00:02:10 . Memory (MB): peak = 1362.398 ; gain = 0.0002default:defaulth px� 
{

Phase %s%s
101*constraints2
2.2 2default:default2,
Fix Topology Constraints2default:defaultZ18-101h px� 
N
9Phase 2.2 Fix Topology Constraints | Checksum: 1219c558b
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:01:58 ; elapsed = 00:02:10 . Memory (MB): peak = 1362.398 ; gain = 0.0002default:defaulth px� 
t

Phase %s%s
101*constraints2
2.3 2default:default2%
Pre Route Cleanup2default:defaultZ18-101h px� 
G
2Phase 2.3 Pre Route Cleanup | Checksum: 1219c558b
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:01:59 ; elapsed = 00:02:10 . Memory (MB): peak = 1362.398 ; gain = 0.0002default:defaulth px� 
p

Phase %s%s
101*constraints2
2.4 2default:default2!
Update Timing2default:defaultZ18-101h px� 
C
.Phase 2.4 Update Timing | Checksum: 1bbc45b22
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:02:40 ; elapsed = 00:02:40 . Memory (MB): peak = 1362.398 ; gain = 0.0002default:defaulth px� 
�
Intermediate Timing Summary %s164*route2K
7| WNS=1.376  | TNS=0.000  | WHS=-0.223 | THS=-171.950|
2default:defaultZ35-416h px� 
I
4Phase 2 Router Initialization | Checksum: 123f7536d
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:02:54 ; elapsed = 00:02:49 . Memory (MB): peak = 1365.789 ; gain = 3.3912default:defaulth px� 
p

Phase %s%s
101*constraints2
3 2default:default2#
Initial Routing2default:defaultZ18-101h px� 
C
.Phase 3 Initial Routing | Checksum: 2435f502b
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:03:06 ; elapsed = 00:02:55 . Memory (MB): peak = 1365.789 ; gain = 3.3912default:defaulth px� 
s

Phase %s%s
101*constraints2
4 2default:default2&
Rip-up And Reroute2default:defaultZ18-101h px� 
u

Phase %s%s
101*constraints2
4.1 2default:default2&
Global Iteration 02default:defaultZ18-101h px� 
r

Phase %s%s
101*constraints2
4.1.1 2default:default2!
Update Timing2default:defaultZ18-101h px� 
E
0Phase 4.1.1 Update Timing | Checksum: 16b376479
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:03:38 ; elapsed = 00:03:14 . Memory (MB): peak = 1365.789 ; gain = 3.3912default:defaulth px� 
�
Intermediate Timing Summary %s164*route2J
6| WNS=1.040  | TNS=0.000  | WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px� 
H
3Phase 4.1 Global Iteration 0 | Checksum: 110753395
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:03:39 ; elapsed = 00:03:14 . Memory (MB): peak = 1365.789 ; gain = 3.3912default:defaulth px� 
u

Phase %s%s
101*constraints2
4.2 2default:default2&
Global Iteration 12default:defaultZ18-101h px� 
r

Phase %s%s
101*constraints2
4.2.1 2default:default2!
Update Timing2default:defaultZ18-101h px� 
E
0Phase 4.2.1 Update Timing | Checksum: 1cc7d8a85
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:03:40 ; elapsed = 00:03:15 . Memory (MB): peak = 1365.789 ; gain = 3.3912default:defaulth px� 
�
Intermediate Timing Summary %s164*route2J
6| WNS=1.058  | TNS=0.000  | WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px� 
H
3Phase 4.2 Global Iteration 1 | Checksum: 1c4372c14
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:03:41 ; elapsed = 00:03:16 . Memory (MB): peak = 1365.789 ; gain = 3.3912default:defaulth px� 
F
1Phase 4 Rip-up And Reroute | Checksum: 1c4372c14
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:03:41 ; elapsed = 00:03:16 . Memory (MB): peak = 1365.789 ; gain = 3.3912default:defaulth px� 
|

Phase %s%s
101*constraints2
5 2default:default2/
Delay and Skew Optimization2default:defaultZ18-101h px� 
p

Phase %s%s
101*constraints2
5.1 2default:default2!
Delay CleanUp2default:defaultZ18-101h px� 
r

Phase %s%s
101*constraints2
5.1.1 2default:default2!
Update Timing2default:defaultZ18-101h px� 
E
0Phase 5.1.1 Update Timing | Checksum: 182545910
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:03:44 ; elapsed = 00:03:18 . Memory (MB): peak = 1365.789 ; gain = 3.3912default:defaulth px� 
�
Intermediate Timing Summary %s164*route2J
6| WNS=1.173  | TNS=0.000  | WHS=N/A    | THS=N/A    |
2default:defaultZ35-416h px� 
C
.Phase 5.1 Delay CleanUp | Checksum: 182545910
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:03:44 ; elapsed = 00:03:18 . Memory (MB): peak = 1365.789 ; gain = 3.3912default:defaulth px� 
z

Phase %s%s
101*constraints2
5.2 2default:default2+
Clock Skew Optimization2default:defaultZ18-101h px� 
M
8Phase 5.2 Clock Skew Optimization | Checksum: 182545910
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:03:44 ; elapsed = 00:03:18 . Memory (MB): peak = 1365.789 ; gain = 3.3912default:defaulth px� 
O
:Phase 5 Delay and Skew Optimization | Checksum: 182545910
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:03:44 ; elapsed = 00:03:18 . Memory (MB): peak = 1365.789 ; gain = 3.3912default:defaulth px� 
n

Phase %s%s
101*constraints2
6 2default:default2!
Post Hold Fix2default:defaultZ18-101h px� 
p

Phase %s%s
101*constraints2
6.1 2default:default2!
Hold Fix Iter2default:defaultZ18-101h px� 
r

Phase %s%s
101*constraints2
6.1.1 2default:default2!
Update Timing2default:defaultZ18-101h px� 
E
0Phase 6.1.1 Update Timing | Checksum: 1e8aabc26
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:03:49 ; elapsed = 00:03:21 . Memory (MB): peak = 1365.789 ; gain = 3.3912default:defaulth px� 
�
Intermediate Timing Summary %s164*route2J
6| WNS=1.173  | TNS=0.000  | WHS=0.017  | THS=0.000  |
2default:defaultZ35-416h px� 
C
.Phase 6.1 Hold Fix Iter | Checksum: 1bef538f9
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:03:49 ; elapsed = 00:03:21 . Memory (MB): peak = 1365.789 ; gain = 3.3912default:defaulth px� 
A
,Phase 6 Post Hold Fix | Checksum: 1bef538f9
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:03:49 ; elapsed = 00:03:22 . Memory (MB): peak = 1365.789 ; gain = 3.3912default:defaulth px� 
o

Phase %s%s
101*constraints2
7 2default:default2"
Route finalize2default:defaultZ18-101h px� 
B
-Phase 7 Route finalize | Checksum: 15415fa4a
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:03:50 ; elapsed = 00:03:22 . Memory (MB): peak = 1365.789 ; gain = 3.3912default:defaulth px� 
v

Phase %s%s
101*constraints2
8 2default:default2)
Verifying routed nets2default:defaultZ18-101h px� 
I
4Phase 8 Verifying routed nets | Checksum: 15415fa4a
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:03:50 ; elapsed = 00:03:22 . Memory (MB): peak = 1365.789 ; gain = 3.3912default:defaulth px� 
r

Phase %s%s
101*constraints2
9 2default:default2%
Depositing Routes2default:defaultZ18-101h px� 
E
0Phase 9 Depositing Routes | Checksum: 146e5b7ee
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:03:55 ; elapsed = 00:03:27 . Memory (MB): peak = 1365.789 ; gain = 3.3912default:defaulth px� 
t

Phase %s%s
101*constraints2
10 2default:default2&
Post Router Timing2default:defaultZ18-101h px� 
�
Estimated Timing Summary %s
57*route2J
6| WNS=1.173  | TNS=0.000  | WHS=0.017  | THS=0.000  |
2default:defaultZ35-57h px� 
�
�The final timing numbers are based on the router estimated timing analysis. For a complete and accurate timing signoff, please run report_timing_summary.
127*routeZ35-327h px� 
G
2Phase 10 Post Router Timing | Checksum: 146e5b7ee
*commonh px� 
�

%s
*constraints2o
[Time (s): cpu = 00:03:55 ; elapsed = 00:03:27 . Memory (MB): peak = 1365.789 ; gain = 3.3912default:defaulth px� 
=
Router Completed Successfully
16*routeZ35-16h px� 
�

%s
*constraints2o
[Time (s): cpu = 00:03:55 ; elapsed = 00:03:27 . Memory (MB): peak = 1365.789 ; gain = 3.3912default:defaulth px� 
Z
Releasing license: %s
83*common2"
Implementation2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
632default:default2
1402default:default2
272default:default2
02default:defaultZ4-41h px� 
^
%s completed successfully
29*	vivadotcl2 
route_design2default:defaultZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
route_design: 2default:default2
00:04:062default:default2
00:03:332default:default2
1365.7892default:default2
3.3912default:defaultZ17-268h px� 
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
00:00:382default:default2
00:00:162default:default2
1365.7892default:default2
0.0002default:defaultZ17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2&
write_checkpoint: 2default:default2
00:00:412default:default2
00:00:192default:default2
1365.7892default:default2
0.0002default:defaultZ17-268h px� 
P
Running DRC with %s threads
24*drc2
22default:defaultZ23-27h px� 
�
#The results of DRC are in file %s.
168*coretcl2�
{F:/Progetti_Vivado_Tesi/Test_7_Tesi_2/OV7670_Color/VIVADO_PROJECT/OV7670/OV7670.runs/impl_1/design_1_wrapper_drc_routed.rpt{F:/Progetti_Vivado_Tesi/Test_7_Tesi_2/OV7670_Color/VIVADO_PROJECT/OV7670/OV7670.runs/impl_1/design_1_wrapper_drc_routed.rpt2default:default8Z2-168h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2 
report_drc: 2default:default2
00:00:232default:default2
00:00:132default:default2
1365.7892default:default2
0.0002default:defaultZ17-268h px� 
r
UpdateTimingParams:%s.
91*timing29
% Speed grade: -1, Delay Type: min_max2default:defaultZ38-91h px� 
|
CMultithreading enabled for timing update using a maximum of %s CPUs155*timing2
22default:defaultZ38-191h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2+
report_timing_summary: 2default:default2
00:00:402default:default2
00:00:232default:default2
1365.7892default:default2
0.0002default:defaultZ17-268h px� 
K
,Running Vector-less Activity Propagation...
51*powerZ33-51h px� 
P
3
Finished Running Vector-less Activity Propagation
1*powerZ33-1h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
report_power: 2default:default2
00:00:262default:default2
00:00:172default:default2
1387.7662default:default2
21.9772default:defaultZ17-268h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
report_clock_utilization: 2default:default2
00:00:052default:default2
00:00:052default:default2
1387.7662default:default2
0.0002default:defaultZ17-268h px� 


End Record