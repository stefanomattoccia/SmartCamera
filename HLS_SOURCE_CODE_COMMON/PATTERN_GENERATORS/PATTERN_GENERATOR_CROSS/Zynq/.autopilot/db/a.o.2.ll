; ModuleID = 'C:/Users/Riccardo/Documents/HLS_COMMON/PATTERN_GENERATORS/PATTERN_GENERATOR_CROSS/Zynq/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@pattern_generator_cross.str = internal unnamed_addr constant [24 x i8] c"pattern_generator_cross\00" ; [#uses=1 type=[24 x i8]*]
@lineY = internal unnamed_addr global i32 0, align 4 ; [#uses=3 type=i32*]
@lineX = internal unnamed_addr global i32 0, align 4 ; [#uses=3 type=i32*]
@dirY = internal unnamed_addr global i1 false, align 1 ; [#uses=4 type=i1*]
@dirX = internal unnamed_addr global i1 false, align 1 ; [#uses=4 type=i1*]
@.str2 = private unnamed_addr constant [5 x i8] c"axis\00", align 1 ; [#uses=1 type=[5 x i8]*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=12 type=[1 x i8]*]
@.str = private unnamed_addr constant [13 x i8] c"ap_ctrl_none\00", align 1 ; [#uses=1 type=[13 x i8]*]

; [#uses=0]
define void @pattern_generator_cross(i8* %outputStream.V) {
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %outputStream.V), !map !76
  call void (...)* @_ssdm_op_SpecTopModule([24 x i8]* @pattern_generator_cross.str) nounwind
  %tmp.5 = alloca i8, align 1                     ; [#uses=2 type=i8*]
  %tmp = alloca i8, align 1                       ; [#uses=2 type=i8*]
  call void @llvm.dbg.value(metadata !{i8* %outputStream.V}, i64 0, metadata !82), !dbg !87 ; [debug line = 14:45] [debug variable = outputStream.V]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [13 x i8]* @.str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !88 ; [debug line = 16:1]
  call void (...)* @_ssdm_op_SpecInterface(i8* %outputStream.V, [5 x i8]* @.str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1, [1 x i8]* @.str1) nounwind, !dbg !90 ; [debug line = 17:1]
  call void (...)* @_ssdm_op_SpecReset(i32* @lineX, i32 1, [1 x i8]* @.str1) nounwind, !dbg !91 ; [debug line = 25:1]
  call void (...)* @_ssdm_op_SpecReset(i1* @dirX, i32 1, [1 x i8]* @.str1) nounwind, !dbg !92 ; [debug line = 26:1]
  call void (...)* @_ssdm_op_SpecReset(i32* @lineY, i32 1, [1 x i8]* @.str1) nounwind, !dbg !93 ; [debug line = 27:1]
  call void (...)* @_ssdm_op_SpecReset(i1* @dirY, i32 1, [1 x i8]* @.str1) nounwind, !dbg !94 ; [debug line = 28:1]
  %lineX.load = load i32* @lineX, align 4, !dbg !95 ; [#uses=4 type=i32] [debug line = 35:5]
  %lineY.load = load i32* @lineY, align 4, !dbg !95 ; [#uses=4 type=i32] [debug line = 35:5]
  br label %1, !dbg !100                          ; [debug line = 30:15]

; <label>:1                                       ; preds = %9, %0
  %y = phi i9 [ 0, %0 ], [ %y.1, %9 ]             ; [#uses=4 type=i9]
  %y.cast2 = zext i9 %y to i32, !dbg !100         ; [#uses=1 type=i32] [debug line = 30:15]
  %exitcond5 = icmp eq i9 %y, -2, !dbg !100       ; [#uses=1 type=i1] [debug line = 30:15]
  %2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 510, i64 510, i64 510) ; [#uses=0 type=i32]
  br i1 %exitcond5, label %10, label %.preheader.preheader, !dbg !100 ; [debug line = 30:15]

.preheader.preheader:                             ; preds = %1
  %tmp.3 = icmp ult i9 %y, -32, !dbg !101         ; [#uses=1 type=i1] [debug line = 33:4]
  %tmp. = icmp eq i32 %y.cast2, %lineY.load, !dbg !95 ; [#uses=1 type=i1] [debug line = 35:5]
  br label %.preheader, !dbg !102                 ; [debug line = 31:16]

.preheader:                                       ; preds = %._crit_edge, %.preheader.preheader
  %x = phi i10 [ %x.1, %._crit_edge ], [ 0, %.preheader.preheader ] ; [#uses=4 type=i10]
  %x.cast1 = zext i10 %x to i32, !dbg !102        ; [#uses=1 type=i32] [debug line = 31:16]
  %exitcond = icmp eq i10 %x, -304, !dbg !102     ; [#uses=1 type=i1] [debug line = 31:16]
  %3 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 720, i64 720, i64 720) ; [#uses=0 type=i32]
  br i1 %exitcond, label %9, label %4, !dbg !102  ; [debug line = 31:16]

; <label>:4                                       ; preds = %.preheader
  %tmp.6 = icmp ult i10 %x, -384, !dbg !101       ; [#uses=1 type=i1] [debug line = 33:4]
  %or.cond = and i1 %tmp.3, %tmp.6, !dbg !101     ; [#uses=1 type=i1] [debug line = 33:4]
  br i1 %or.cond, label %5, label %._crit_edge, !dbg !101 ; [debug line = 33:4]

; <label>:5                                       ; preds = %4
  %tmp.9 = icmp eq i32 %x.cast1, %lineX.load, !dbg !95 ; [#uses=1 type=i1] [debug line = 35:5]
  %or.cond7 = or i1 %tmp.9, %tmp., !dbg !95       ; [#uses=1 type=i1] [debug line = 35:5]
  br i1 %or.cond7, label %6, label %7, !dbg !95   ; [debug line = 35:5]

; <label>:6                                       ; preds = %5
  call void @llvm.dbg.value(metadata !{i8* %outputStream.V}, i64 0, metadata !103), !dbg !108 ; [debug line = 144:48@36:6] [debug variable = stream<unsigned char>.V]
  call void @llvm.dbg.declare(metadata !{i8* %tmp}, metadata !110) nounwind, !dbg !112 ; [debug line = 145:22@36:6] [debug variable = tmp]
  store i8 -63, i8* %tmp, align 1, !dbg !113      ; [debug line = 145:31@36:6]
  call void @_ssdm_op_IfWrite.Stream.i8P.i8P(i8* %outputStream.V, i8* %tmp) nounwind, !dbg !114 ; [debug line = 146:9@36:6]
  br label %8, !dbg !109                          ; [debug line = 36:6]

; <label>:7                                       ; preds = %5
  call void @llvm.dbg.value(metadata !{i8* %outputStream.V}, i64 0, metadata !103), !dbg !115 ; [debug line = 144:48@37:10] [debug variable = stream<unsigned char>.V]
  call void @llvm.dbg.declare(metadata !{i8* %tmp.5}, metadata !110) nounwind, !dbg !117 ; [debug line = 145:22@37:10] [debug variable = tmp]
  store i8 62, i8* %tmp.5, align 1, !dbg !118     ; [debug line = 145:31@37:10]
  call void @_ssdm_op_IfWrite.Stream.i8P.i8P(i8* %outputStream.V, i8* %tmp.5) nounwind, !dbg !119 ; [debug line = 146:9@37:10]
  br label %8

; <label>:8                                       ; preds = %7, %6
  br label %._crit_edge, !dbg !120                ; [debug line = 38:4]

._crit_edge:                                      ; preds = %8, %4
  %x.1 = add i10 %x, 1, !dbg !121                 ; [#uses=1 type=i10] [debug line = 31:32]
  call void @llvm.dbg.value(metadata !{i10 %x.1}, i64 0, metadata !122), !dbg !121 ; [debug line = 31:32] [debug variable = x]
  br label %.preheader, !dbg !121                 ; [debug line = 31:32]

; <label>:9                                       ; preds = %.preheader
  %y.1 = add i9 %y, 1, !dbg !123                  ; [#uses=1 type=i9] [debug line = 30:31]
  call void @llvm.dbg.value(metadata !{i9 %y.1}, i64 0, metadata !124), !dbg !123 ; [debug line = 30:31] [debug variable = y]
  br label %1, !dbg !123                          ; [debug line = 30:31]

; <label>:10                                      ; preds = %1
  %tmp.2 = icmp eq i32 %lineX.load, 0, !dbg !125  ; [#uses=1 type=i1] [debug line = 44:2]
  br i1 %tmp.2, label %11, label %12, !dbg !125   ; [debug line = 44:2]

; <label>:11                                      ; preds = %10
  store i1 false, i1* @dirX, align 1, !dbg !126   ; [debug line = 45:3]
  br label %14, !dbg !126                         ; [debug line = 45:3]

; <label>:12                                      ; preds = %10
  %tmp.4 = icmp eq i32 %lineX.load, 639, !dbg !127 ; [#uses=1 type=i1] [debug line = 46:7]
  br i1 %tmp.4, label %13, label %._crit_edge8, !dbg !127 ; [debug line = 46:7]

; <label>:13                                      ; preds = %12
  store i1 true, i1* @dirX, align 1, !dbg !128    ; [debug line = 47:3]
  br label %._crit_edge8, !dbg !128               ; [debug line = 47:3]

._crit_edge8:                                     ; preds = %13, %12
  br label %14

; <label>:14                                      ; preds = %._crit_edge8, %11
  %tmp.7 = phi i32 [ %lineX.load, %._crit_edge8 ], [ 0, %11 ] ; [#uses=1 type=i32]
  %tmp.8 = icmp eq i32 %lineY.load, 0, !dbg !129  ; [#uses=1 type=i1] [debug line = 49:2]
  br i1 %tmp.8, label %15, label %16, !dbg !129   ; [debug line = 49:2]

; <label>:15                                      ; preds = %14
  store i1 false, i1* @dirY, align 1, !dbg !130   ; [debug line = 50:3]
  br label %18, !dbg !130                         ; [debug line = 50:3]

; <label>:16                                      ; preds = %14
  %tmp.1 = icmp eq i32 %lineY.load, 479, !dbg !131 ; [#uses=1 type=i1] [debug line = 51:7]
  br i1 %tmp.1, label %17, label %._crit_edge9, !dbg !131 ; [debug line = 51:7]

; <label>:17                                      ; preds = %16
  store i1 true, i1* @dirY, align 1, !dbg !132    ; [debug line = 52:3]
  br label %._crit_edge9, !dbg !132               ; [debug line = 52:3]

._crit_edge9:                                     ; preds = %17, %16
  br label %18

; <label>:18                                      ; preds = %._crit_edge9, %15
  %tmp.10 = phi i32 [ %lineY.load, %._crit_edge9 ], [ 0, %15 ] ; [#uses=1 type=i32]
  %dirX.load = load i1* @dirX, align 1, !dbg !133 ; [#uses=1 type=i1] [debug line = 58:2]
  %storemerge.v.cast = select i1 %dirX.load, i32 -1, i32 1, !dbg !133 ; [#uses=1 type=i32] [debug line = 58:2]
  %storemerge = add i32 %tmp.7, %storemerge.v.cast, !dbg !133 ; [#uses=1 type=i32] [debug line = 58:2]
  store i32 %storemerge, i32* @lineX, align 4, !dbg !134 ; [debug line = 59:3]
  %dirY.load = load i1* @dirY, align 1, !dbg !135 ; [#uses=1 type=i1] [debug line = 62:2]
  %storemerge4.v.cast = select i1 %dirY.load, i32 -1, i32 1, !dbg !135 ; [#uses=1 type=i32] [debug line = 62:2]
  %storemerge4 = add i32 %tmp.10, %storemerge4.v.cast, !dbg !135 ; [#uses=1 type=i32] [debug line = 62:2]
  store i32 %storemerge4, i32* @lineY, align 4, !dbg !136 ; [debug line = 63:3]
  ret void, !dbg !137                             ; [debug line = 66:1]
}

; [#uses=5]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=2]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=1]
declare void @_ssdm_op_SpecTopModule(...)

; [#uses=4]
declare void @_ssdm_op_SpecReset(...) nounwind

; [#uses=2]
declare i32 @_ssdm_op_SpecLoopTripCount(...)

; [#uses=2]
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=1]
declare void @_ssdm_op_SpecBitsMap(...)

; [#uses=2]
declare void @_ssdm_op_IfWrite.Stream.i8P.i8P(i8*, i8*)

!hls.encrypted.func = !{}
!llvm.map.gv = !{}
!llvm.dbg.cu = !{!0}

!0 = metadata !{i32 786449, i32 0, i32 4, metadata !"C:/Users/Riccardo/Documents/HLS_COMMON/PATTERN_GENERATORS/PATTERN_GENERATOR_CROSS/Zynq/.autopilot/db/pattern_generator.pragma.2.cpp", metadata !"c:/Users/Riccardo/Documents/HLS_COMMON/PATTERN_GENERATORS", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, null, null, null, metadata !1} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{metadata !3, metadata !72, metadata !73, metadata !75}
!3 = metadata !{i32 786484, i32 0, metadata !4, metadata !"dirY", metadata !"dirY", metadata !"", metadata !5, i32 23, metadata !67, i32 1, i32 1, i1* @dirY} ; [ DW_TAG_variable ]
!4 = metadata !{i32 786478, i32 0, metadata !5, metadata !"pattern_generator_cross", metadata !"pattern_generator_cross", metadata !"_Z23pattern_generator_crossRN3hls6streamIhEE", metadata !5, i32 14, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !19, i32 15} ; [ DW_TAG_subprogram ]
!5 = metadata !{i32 786473, metadata !"PATTERN_GENERATOR_CROSS/pattern_generator.cpp", metadata !"c:/Users/Riccardo/Documents/HLS_COMMON/PATTERN_GENERATORS", null} ; [ DW_TAG_file_type ]
!6 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!7 = metadata !{null, metadata !8}
!8 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !9} ; [ DW_TAG_reference_type ]
!9 = metadata !{i32 786434, metadata !10, metadata !"stream<unsigned char>", metadata !11, i32 79, i64 8, i64 8, i32 0, i32 0, null, metadata !12, i32 0, null, metadata !65} ; [ DW_TAG_class_type ]
!10 = metadata !{i32 786489, null, metadata !"hls", metadata !11, i32 69} ; [ DW_TAG_namespace ]
!11 = metadata !{i32 786473, metadata !"C:/Xilinx/Vivado_HLS/2015.4/common/technology/autopilot\5Chls_stream.h", metadata !"c:/Users/Riccardo/Documents/HLS_COMMON/PATTERN_GENERATORS", null} ; [ DW_TAG_file_type ]
!12 = metadata !{metadata !13, metadata !15, metadata !21, metadata !27, metadata !32, metadata !35, metadata !39, metadata !44, metadata !49, metadata !50, metadata !51, metadata !54, metadata !57, metadata !58, metadata !61}
!13 = metadata !{i32 786445, metadata !9, metadata !"V", metadata !11, i32 163, i64 8, i64 8, i64 0, i32 1, metadata !14} ; [ DW_TAG_member ]
!14 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!15 = metadata !{i32 786478, i32 0, metadata !9, metadata !"stream", metadata !"stream", metadata !"", metadata !11, i32 83, metadata !16, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !19, i32 83} ; [ DW_TAG_subprogram ]
!16 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !17, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!17 = metadata !{null, metadata !18}
!18 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !9} ; [ DW_TAG_pointer_type ]
!19 = metadata !{metadata !20}
!20 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!21 = metadata !{i32 786478, i32 0, metadata !9, metadata !"stream", metadata !"stream", metadata !"", metadata !11, i32 86, metadata !22, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !19, i32 86} ; [ DW_TAG_subprogram ]
!22 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !23, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!23 = metadata !{null, metadata !18, metadata !24}
!24 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !25} ; [ DW_TAG_pointer_type ]
!25 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !26} ; [ DW_TAG_const_type ]
!26 = metadata !{i32 786468, null, metadata !"char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!27 = metadata !{i32 786478, i32 0, metadata !9, metadata !"stream", metadata !"stream", metadata !"", metadata !11, i32 91, metadata !28, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !19, i32 91} ; [ DW_TAG_subprogram ]
!28 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !29, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!29 = metadata !{null, metadata !18, metadata !30}
!30 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !31} ; [ DW_TAG_reference_type ]
!31 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !9} ; [ DW_TAG_const_type ]
!32 = metadata !{i32 786478, i32 0, metadata !9, metadata !"operator=", metadata !"operator=", metadata !"_ZN3hls6streamIhEaSERKS1_", metadata !11, i32 94, metadata !33, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !19, i32 94} ; [ DW_TAG_subprogram ]
!33 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !34, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!34 = metadata !{metadata !8, metadata !18, metadata !30}
!35 = metadata !{i32 786478, i32 0, metadata !9, metadata !"operator>>", metadata !"operator>>", metadata !"_ZN3hls6streamIhErsERh", metadata !11, i32 101, metadata !36, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !19, i32 101} ; [ DW_TAG_subprogram ]
!36 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !37, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!37 = metadata !{null, metadata !18, metadata !38}
!38 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !14} ; [ DW_TAG_reference_type ]
!39 = metadata !{i32 786478, i32 0, metadata !9, metadata !"operator<<", metadata !"operator<<", metadata !"_ZN3hls6streamIhElsERKh", metadata !11, i32 105, metadata !40, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !19, i32 105} ; [ DW_TAG_subprogram ]
!40 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !41, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!41 = metadata !{null, metadata !18, metadata !42}
!42 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !43} ; [ DW_TAG_reference_type ]
!43 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !14} ; [ DW_TAG_const_type ]
!44 = metadata !{i32 786478, i32 0, metadata !9, metadata !"empty", metadata !"empty", metadata !"_ZNK3hls6streamIhE5emptyEv", metadata !11, i32 112, metadata !45, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !19, i32 112} ; [ DW_TAG_subprogram ]
!45 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !46, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!46 = metadata !{metadata !47, metadata !48}
!47 = metadata !{i32 786468, null, metadata !"bool", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 2} ; [ DW_TAG_base_type ]
!48 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !31} ; [ DW_TAG_pointer_type ]
!49 = metadata !{i32 786478, i32 0, metadata !9, metadata !"full", metadata !"full", metadata !"_ZNK3hls6streamIhE4fullEv", metadata !11, i32 117, metadata !45, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !19, i32 117} ; [ DW_TAG_subprogram ]
!50 = metadata !{i32 786478, i32 0, metadata !9, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIhE4readERh", metadata !11, i32 123, metadata !36, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !19, i32 123} ; [ DW_TAG_subprogram ]
!51 = metadata !{i32 786478, i32 0, metadata !9, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIhE4readEv", metadata !11, i32 129, metadata !52, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !19, i32 129} ; [ DW_TAG_subprogram ]
!52 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !53, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!53 = metadata !{metadata !14, metadata !18}
!54 = metadata !{i32 786478, i32 0, metadata !9, metadata !"read_nb", metadata !"read_nb", metadata !"_ZN3hls6streamIhE7read_nbERh", metadata !11, i32 136, metadata !55, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !19, i32 136} ; [ DW_TAG_subprogram ]
!55 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !56, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!56 = metadata !{metadata !47, metadata !18, metadata !38}
!57 = metadata !{i32 786478, i32 0, metadata !9, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIhE5writeERKh", metadata !11, i32 144, metadata !40, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !19, i32 144} ; [ DW_TAG_subprogram ]
!58 = metadata !{i32 786478, i32 0, metadata !9, metadata !"write_nb", metadata !"write_nb", metadata !"_ZN3hls6streamIhE8write_nbERKh", metadata !11, i32 150, metadata !59, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !19, i32 150} ; [ DW_TAG_subprogram ]
!59 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !60, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!60 = metadata !{metadata !47, metadata !18, metadata !42}
!61 = metadata !{i32 786478, i32 0, metadata !9, metadata !"size", metadata !"size", metadata !"_ZN3hls6streamIhE4sizeEv", metadata !11, i32 157, metadata !62, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !19, i32 157} ; [ DW_TAG_subprogram ]
!62 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !63, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!63 = metadata !{metadata !64, metadata !18}
!64 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!65 = metadata !{metadata !66}
!66 = metadata !{i32 786479, null, metadata !"__STREAM_T__", metadata !14, null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!67 = metadata !{i32 786454, null, metadata !"DIREZIONE", metadata !5, i32 6, i64 0, i64 0, i64 0, i32 0, metadata !68} ; [ DW_TAG_typedef ]
!68 = metadata !{i32 786436, null, metadata !"", metadata !5, i32 6, i64 1, i64 1, i32 0, i32 0, null, metadata !69, i32 0, i32 0} ; [ DW_TAG_enumeration_type ]
!69 = metadata !{metadata !70, metadata !71}
!70 = metadata !{i32 786472, metadata !"AVANTI", i64 0} ; [ DW_TAG_enumerator ]
!71 = metadata !{i32 786472, metadata !"INDIETRO", i64 1} ; [ DW_TAG_enumerator ]
!72 = metadata !{i32 786484, i32 0, metadata !4, metadata !"dirX", metadata !"dirX", metadata !"", metadata !5, i32 22, metadata !67, i32 1, i32 1, i1* @dirX} ; [ DW_TAG_variable ]
!73 = metadata !{i32 786484, i32 0, metadata !4, metadata !"lineY", metadata !"lineY", metadata !"", metadata !5, i32 20, metadata !74, i32 1, i32 1, i32* @lineY} ; [ DW_TAG_variable ]
!74 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!75 = metadata !{i32 786484, i32 0, metadata !4, metadata !"lineX", metadata !"lineX", metadata !"", metadata !5, i32 19, metadata !74, i32 1, i32 1, i32* @lineX} ; [ DW_TAG_variable ]
!76 = metadata !{metadata !77}
!77 = metadata !{i32 0, i32 7, metadata !78}
!78 = metadata !{metadata !79}
!79 = metadata !{metadata !"outputStream.V", metadata !80, metadata !"unsigned char", i32 0, i32 7}
!80 = metadata !{metadata !81}
!81 = metadata !{i32 0, i32 0, i32 1}
!82 = metadata !{i32 790531, metadata !83, metadata !"outputStream.V", null, i32 14, metadata !84, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!83 = metadata !{i32 786689, metadata !4, metadata !"outputStream", metadata !5, i32 16777230, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!84 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !85} ; [ DW_TAG_pointer_type ]
!85 = metadata !{i32 786438, metadata !10, metadata !"stream<unsigned char>", metadata !11, i32 79, i64 8, i64 8, i32 0, i32 0, null, metadata !86, i32 0, null, metadata !65} ; [ DW_TAG_class_field_type ]
!86 = metadata !{metadata !13}
!87 = metadata !{i32 14, i32 45, metadata !4, null}
!88 = metadata !{i32 16, i32 1, metadata !89, null}
!89 = metadata !{i32 786443, metadata !4, i32 15, i32 1, metadata !5, i32 0} ; [ DW_TAG_lexical_block ]
!90 = metadata !{i32 17, i32 1, metadata !89, null}
!91 = metadata !{i32 25, i32 1, metadata !89, null}
!92 = metadata !{i32 26, i32 1, metadata !89, null}
!93 = metadata !{i32 27, i32 1, metadata !89, null}
!94 = metadata !{i32 28, i32 1, metadata !89, null}
!95 = metadata !{i32 35, i32 5, metadata !96, null}
!96 = metadata !{i32 786443, metadata !97, i32 34, i32 4, metadata !5, i32 4} ; [ DW_TAG_lexical_block ]
!97 = metadata !{i32 786443, metadata !98, i32 32, i32 3, metadata !5, i32 3} ; [ DW_TAG_lexical_block ]
!98 = metadata !{i32 786443, metadata !99, i32 31, i32 3, metadata !5, i32 2} ; [ DW_TAG_lexical_block ]
!99 = metadata !{i32 786443, metadata !89, i32 30, i32 2, metadata !5, i32 1} ; [ DW_TAG_lexical_block ]
!100 = metadata !{i32 30, i32 15, metadata !99, null}
!101 = metadata !{i32 33, i32 4, metadata !97, null}
!102 = metadata !{i32 31, i32 16, metadata !98, null}
!103 = metadata !{i32 790531, metadata !104, metadata !"stream<unsigned char>.V", null, i32 144, metadata !107, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!104 = metadata !{i32 786689, metadata !105, metadata !"this", metadata !11, i32 16777360, metadata !106, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!105 = metadata !{i32 786478, i32 0, metadata !10, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIhE5writeERKh", metadata !11, i32 144, metadata !40, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !57, metadata !19, i32 144} ; [ DW_TAG_subprogram ]
!106 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !9} ; [ DW_TAG_pointer_type ]
!107 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !85} ; [ DW_TAG_pointer_type ]
!108 = metadata !{i32 144, i32 48, metadata !105, metadata !109}
!109 = metadata !{i32 36, i32 6, metadata !96, null}
!110 = metadata !{i32 786688, metadata !111, metadata !"tmp", metadata !11, i32 145, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!111 = metadata !{i32 786443, metadata !105, i32 144, i32 79, metadata !11, i32 5} ; [ DW_TAG_lexical_block ]
!112 = metadata !{i32 145, i32 22, metadata !111, metadata !109}
!113 = metadata !{i32 145, i32 31, metadata !111, metadata !109}
!114 = metadata !{i32 146, i32 9, metadata !111, metadata !109}
!115 = metadata !{i32 144, i32 48, metadata !105, metadata !116}
!116 = metadata !{i32 37, i32 10, metadata !96, null}
!117 = metadata !{i32 145, i32 22, metadata !111, metadata !116}
!118 = metadata !{i32 145, i32 31, metadata !111, metadata !116}
!119 = metadata !{i32 146, i32 9, metadata !111, metadata !116}
!120 = metadata !{i32 38, i32 4, metadata !96, null}
!121 = metadata !{i32 31, i32 32, metadata !98, null}
!122 = metadata !{i32 786688, metadata !98, metadata !"x", metadata !5, i32 31, metadata !74, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!123 = metadata !{i32 30, i32 31, metadata !99, null}
!124 = metadata !{i32 786688, metadata !99, metadata !"y", metadata !5, i32 30, metadata !74, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!125 = metadata !{i32 44, i32 2, metadata !89, null}
!126 = metadata !{i32 45, i32 3, metadata !89, null}
!127 = metadata !{i32 46, i32 7, metadata !89, null}
!128 = metadata !{i32 47, i32 3, metadata !89, null}
!129 = metadata !{i32 49, i32 2, metadata !89, null}
!130 = metadata !{i32 50, i32 3, metadata !89, null}
!131 = metadata !{i32 51, i32 7, metadata !89, null}
!132 = metadata !{i32 52, i32 3, metadata !89, null}
!133 = metadata !{i32 58, i32 2, metadata !89, null}
!134 = metadata !{i32 59, i32 3, metadata !89, null}
!135 = metadata !{i32 62, i32 2, metadata !89, null}
!136 = metadata !{i32 63, i32 3, metadata !89, null}
!137 = metadata !{i32 66, i32 1, metadata !89, null}
