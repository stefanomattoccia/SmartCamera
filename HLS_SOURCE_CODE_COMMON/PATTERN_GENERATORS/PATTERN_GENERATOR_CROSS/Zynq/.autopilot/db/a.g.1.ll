; ModuleID = 'C:/Users/Riccardo/Documents/HLS_COMMON/PATTERN_GENERATORS/PATTERN_GENERATOR_CROSS/Zynq/.autopilot/db/a.g.1.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

%"class.hls::stream.0" = type { i8 }

@pattern_generator_cross.str = internal unnamed_addr constant [24 x i8] c"pattern_generator_cross\00" ; [#uses=1 type=[24 x i8]*]
@lineY = internal unnamed_addr global i32 0, align 4 ; [#uses=4 type=i32*]
@lineX = internal unnamed_addr global i32 0, align 4 ; [#uses=4 type=i32*]
@dirY = internal unnamed_addr global i1 false, align 1 ; [#uses=4 type=i1*]
@dirX = internal unnamed_addr global i1 false, align 1 ; [#uses=4 type=i1*]
@.str2 = private unnamed_addr constant [5 x i8] c"axis\00", align 1 ; [#uses=1 type=[5 x i8]*]
@.str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=1 type=[1 x i8]*]
@.str = private unnamed_addr constant [13 x i8] c"ap_ctrl_none\00", align 1 ; [#uses=1 type=[13 x i8]*]

; [#uses=0]
define void @pattern_generator_cross(%"class.hls::stream.0"* %outputStream) nounwind uwtable {
  call void (...)* @_ssdm_op_SpecTopModule([24 x i8]* @pattern_generator_cross.str) nounwind
  %tmp.13 = alloca i8, align 1                    ; [#uses=2 type=i8*]
  %tmp.12 = alloca i8, align 1                    ; [#uses=2 type=i8*]
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.0"* %outputStream}, i64 0, metadata !83), !dbg !84 ; [debug line = 14:45] [debug variable = outputStream]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, i8* getelementptr inbounds ([13 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !85 ; [debug line = 16:1]
  call void (...)* @_ssdm_op_SpecInterface(%"class.hls::stream.0"* %outputStream, i8* getelementptr inbounds ([5 x i8]* @.str2, i64 0, i64 0), i32 0, i32 0, i32 0, i32 0, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !87 ; [debug line = 17:1]
  %lineX.load = load i32* @lineX, align 4, !dbg !88 ; [#uses=1 type=i32] [debug line = 25:1]
  call void (...)* @_ssdm_op_SpecReset(i32 %lineX.load, i32 1, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !88 ; [debug line = 25:1]
  %dirX.load = load i1* @dirX, align 1, !dbg !89  ; [#uses=1 type=i1] [debug line = 26:1]
  %tmp = zext i1 %dirX.load to i32, !dbg !89      ; [#uses=1 type=i32] [debug line = 26:1]
  call void (...)* @_ssdm_op_SpecReset(i32 %tmp, i32 1, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !89 ; [debug line = 26:1]
  %lineY.load = load i32* @lineY, align 4, !dbg !90 ; [#uses=1 type=i32] [debug line = 27:1]
  call void (...)* @_ssdm_op_SpecReset(i32 %lineY.load, i32 1, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !90 ; [debug line = 27:1]
  %dirY.load = load i1* @dirY, align 1, !dbg !91  ; [#uses=1 type=i1] [debug line = 28:1]
  %tmp.1 = zext i1 %dirY.load to i32, !dbg !91    ; [#uses=1 type=i32] [debug line = 28:1]
  call void (...)* @_ssdm_op_SpecReset(i32 %tmp.1, i32 1, i8* getelementptr inbounds ([1 x i8]* @.str1, i64 0, i64 0)) nounwind, !dbg !91 ; [debug line = 28:1]
  %outputStream.addr = getelementptr inbounds %"class.hls::stream.0"* %outputStream, i64 0, i32 0, !dbg !92 ; [#uses=2 type=i8*] [debug line = 146:9@36:6]
  br label %1, !dbg !99                           ; [debug line = 30:15]

; <label>:1                                       ; preds = %7, %0
  %y = phi i32 [ 0, %0 ], [ %y.1, %7 ]            ; [#uses=4 type=i32]
  %exitcond5 = icmp eq i32 %y, 510, !dbg !99      ; [#uses=1 type=i1] [debug line = 30:15]
  br i1 %exitcond5, label %8, label %.preheader.preheader, !dbg !99 ; [debug line = 30:15]

.preheader.preheader:                             ; preds = %1
  %tmp.3 = icmp slt i32 %y, 480, !dbg !100        ; [#uses=1 type=i1] [debug line = 33:4]
  br label %.preheader, !dbg !101                 ; [debug line = 31:16]

.preheader:                                       ; preds = %._crit_edge, %.preheader.preheader
  %x = phi i32 [ %x.1, %._crit_edge ], [ 0, %.preheader.preheader ] ; [#uses=4 type=i32]
  %exitcond = icmp eq i32 %x, 720, !dbg !101      ; [#uses=1 type=i1] [debug line = 31:16]
  br i1 %exitcond, label %7, label %2, !dbg !101  ; [debug line = 31:16]

; <label>:2                                       ; preds = %.preheader
  %tmp.6 = icmp slt i32 %x, 640, !dbg !100        ; [#uses=1 type=i1] [debug line = 33:4]
  %or.cond = and i1 %tmp.3, %tmp.6, !dbg !100     ; [#uses=1 type=i1] [debug line = 33:4]
  br i1 %or.cond, label %3, label %._crit_edge, !dbg !100 ; [debug line = 33:4]

; <label>:3                                       ; preds = %2
  %lineX.load.2 = load i32* @lineX, align 4, !dbg !102 ; [#uses=1 type=i32] [debug line = 35:5]
  %tmp.9 = icmp eq i32 %x, %lineX.load.2, !dbg !102 ; [#uses=1 type=i1] [debug line = 35:5]
  %lineY.load.2 = load i32* @lineY, align 4, !dbg !102 ; [#uses=1 type=i32] [debug line = 35:5]
  %tmp.10 = icmp eq i32 %y, %lineY.load.2, !dbg !102 ; [#uses=1 type=i1] [debug line = 35:5]
  %or.cond7 = or i1 %tmp.9, %tmp.10, !dbg !102    ; [#uses=1 type=i1] [debug line = 35:5]
  br i1 %or.cond7, label %4, label %5, !dbg !102  ; [debug line = 35:5]

; <label>:4                                       ; preds = %3
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.0"* %outputStream}, i64 0, metadata !103), !dbg !105 ; [debug line = 144:48@36:6] [debug variable = this]
  call void @llvm.dbg.declare(metadata !{i8* %tmp.12}, metadata !106) nounwind, !dbg !107 ; [debug line = 145:22@36:6] [debug variable = tmp]
  store i8 -63, i8* %tmp.12, align 1, !dbg !108   ; [debug line = 145:31@36:6]
  call void @_ssdm_op_IfWrite.Stream.i8P.i8P(i8* %outputStream.addr, i8* %tmp.12) nounwind, !dbg !92 ; [debug line = 146:9@36:6]
  br label %6, !dbg !94                           ; [debug line = 36:6]

; <label>:5                                       ; preds = %3
  call void @llvm.dbg.value(metadata !{%"class.hls::stream.0"* %outputStream}, i64 0, metadata !103), !dbg !109 ; [debug line = 144:48@37:10] [debug variable = this]
  call void @llvm.dbg.declare(metadata !{i8* %tmp.13}, metadata !106) nounwind, !dbg !111 ; [debug line = 145:22@37:10] [debug variable = tmp]
  store i8 62, i8* %tmp.13, align 1, !dbg !112    ; [debug line = 145:31@37:10]
  call void @_ssdm_op_IfWrite.Stream.i8P.i8P(i8* %outputStream.addr, i8* %tmp.13) nounwind, !dbg !113 ; [debug line = 146:9@37:10]
  br label %6

; <label>:6                                       ; preds = %5, %4
  br label %._crit_edge, !dbg !114                ; [debug line = 38:4]

._crit_edge:                                      ; preds = %6, %2
  %x.1 = add nsw i32 %x, 1, !dbg !115             ; [#uses=1 type=i32] [debug line = 31:32]
  call void @llvm.dbg.value(metadata !{i32 %x.1}, i64 0, metadata !116), !dbg !115 ; [debug line = 31:32] [debug variable = x]
  br label %.preheader, !dbg !115                 ; [debug line = 31:32]

; <label>:7                                       ; preds = %.preheader
  %y.1 = add nsw i32 %y, 1, !dbg !117             ; [#uses=1 type=i32] [debug line = 30:31]
  call void @llvm.dbg.value(metadata !{i32 %y.1}, i64 0, metadata !118), !dbg !117 ; [debug line = 30:31] [debug variable = y]
  br label %1, !dbg !117                          ; [debug line = 30:31]

; <label>:8                                       ; preds = %1
  %lineX.load.1 = load i32* @lineX, align 4, !dbg !119 ; [#uses=3 type=i32] [debug line = 44:2]
  %tmp.2 = icmp eq i32 %lineX.load.1, 0, !dbg !119 ; [#uses=1 type=i1] [debug line = 44:2]
  br i1 %tmp.2, label %9, label %10, !dbg !119    ; [debug line = 44:2]

; <label>:9                                       ; preds = %8
  store i1 false, i1* @dirX, align 1, !dbg !120   ; [debug line = 45:3]
  br label %12, !dbg !120                         ; [debug line = 45:3]

; <label>:10                                      ; preds = %8
  %tmp.4 = icmp eq i32 %lineX.load.1, 639, !dbg !121 ; [#uses=1 type=i1] [debug line = 46:7]
  br i1 %tmp.4, label %11, label %._crit_edge8, !dbg !121 ; [debug line = 46:7]

; <label>:11                                      ; preds = %10
  store i1 true, i1* @dirX, align 1, !dbg !122    ; [debug line = 47:3]
  br label %._crit_edge8, !dbg !122               ; [debug line = 47:3]

._crit_edge8:                                     ; preds = %11, %10
  br label %12

; <label>:12                                      ; preds = %._crit_edge8, %9
  %tmp.7 = phi i32 [ %lineX.load.1, %._crit_edge8 ], [ 0, %9 ] ; [#uses=1 type=i32]
  %lineY.load.1 = load i32* @lineY, align 4, !dbg !123 ; [#uses=3 type=i32] [debug line = 49:2]
  %tmp.8 = icmp eq i32 %lineY.load.1, 0, !dbg !123 ; [#uses=1 type=i1] [debug line = 49:2]
  br i1 %tmp.8, label %13, label %14, !dbg !123   ; [debug line = 49:2]

; <label>:13                                      ; preds = %12
  store i1 false, i1* @dirY, align 1, !dbg !124   ; [debug line = 50:3]
  br label %16, !dbg !124                         ; [debug line = 50:3]

; <label>:14                                      ; preds = %12
  %tmp.11 = icmp eq i32 %lineY.load.1, 479, !dbg !125 ; [#uses=1 type=i1] [debug line = 51:7]
  br i1 %tmp.11, label %15, label %._crit_edge9, !dbg !125 ; [debug line = 51:7]

; <label>:15                                      ; preds = %14
  store i1 true, i1* @dirY, align 1, !dbg !126    ; [debug line = 52:3]
  br label %._crit_edge9, !dbg !126               ; [debug line = 52:3]

._crit_edge9:                                     ; preds = %15, %14
  br label %16

; <label>:16                                      ; preds = %._crit_edge9, %13
  %tmp.14 = phi i32 [ %lineY.load.1, %._crit_edge9 ], [ 0, %13 ] ; [#uses=1 type=i32]
  %dirX.load.1 = load i1* @dirX, align 1, !dbg !127 ; [#uses=1 type=i1] [debug line = 58:2]
  %storemerge.v = select i1 %dirX.load.1, i32 -1, i32 1, !dbg !127 ; [#uses=1 type=i32] [debug line = 58:2]
  %storemerge = add i32 %storemerge.v, %tmp.7, !dbg !127 ; [#uses=1 type=i32] [debug line = 58:2]
  store i32 %storemerge, i32* @lineX, align 4, !dbg !128 ; [debug line = 59:3]
  %dirY.load.1 = load i1* @dirY, align 1, !dbg !129 ; [#uses=1 type=i1] [debug line = 62:2]
  %storemerge4.v = select i1 %dirY.load.1, i32 -1, i32 1, !dbg !129 ; [#uses=1 type=i32] [debug line = 62:2]
  %storemerge4 = add i32 %storemerge4.v, %tmp.14, !dbg !129 ; [#uses=1 type=i32] [debug line = 62:2]
  store i32 %storemerge4, i32* @lineY, align 4, !dbg !130 ; [debug line = 63:3]
  ret void, !dbg !131                             ; [debug line = 66:1]
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
declare void @_ssdm_op_SpecInterface(...) nounwind

; [#uses=2]
declare void @_ssdm_op_IfWrite.Stream.i8P.i8P(i8*, i8*)

!llvm.dbg.cu = !{!0}
!hls.encrypted.func = !{}

!0 = metadata !{i32 786449, i32 0, i32 4, metadata !"C:/Users/Riccardo/Documents/HLS_COMMON/PATTERN_GENERATORS/PATTERN_GENERATOR_CROSS/Zynq/.autopilot/db/pattern_generator.pragma.2.cpp", metadata !"c:/Users/Riccardo/Documents/HLS_COMMON/PATTERN_GENERATORS", metadata !"clang version 3.1 ", i1 true, i1 false, metadata !"", i32 0, metadata !1, metadata !8, metadata !10, metadata !75} ; [ DW_TAG_compile_unit ]
!1 = metadata !{metadata !2}
!2 = metadata !{metadata !3, metadata !3, metadata !3, metadata !3, metadata !3, metadata !3, metadata !3}
!3 = metadata !{i32 786436, null, metadata !"", metadata !4, i32 6, i64 1, i64 1, i32 0, i32 0, null, metadata !5, i32 0, i32 0} ; [ DW_TAG_enumeration_type ]
!4 = metadata !{i32 786473, metadata !"PATTERN_GENERATOR_CROSS/pattern_generator.cpp", metadata !"c:/Users/Riccardo/Documents/HLS_COMMON/PATTERN_GENERATORS", null} ; [ DW_TAG_file_type ]
!5 = metadata !{metadata !6, metadata !7}
!6 = metadata !{i32 786472, metadata !"AVANTI", i64 0} ; [ DW_TAG_enumerator ]
!7 = metadata !{i32 786472, metadata !"INDIETRO", i64 1} ; [ DW_TAG_enumerator ]
!8 = metadata !{metadata !9}
!9 = metadata !{i32 0}
!10 = metadata !{metadata !11}
!11 = metadata !{metadata !12, metadata !74}
!12 = metadata !{i32 786478, i32 0, metadata !4, metadata !"pattern_generator_cross", metadata !"pattern_generator_cross", metadata !"_Z23pattern_generator_crossRN3hls6streamIhEE", metadata !4, i32 14, metadata !13, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (%"class.hls::stream.0"*)* @pattern_generator_cross, null, null, metadata !26, i32 15} ; [ DW_TAG_subprogram ]
!13 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !14, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!14 = metadata !{null, metadata !15}
!15 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !16} ; [ DW_TAG_reference_type ]
!16 = metadata !{i32 786434, metadata !17, metadata !"stream<unsigned char>", metadata !18, i32 79, i64 8, i64 8, i32 0, i32 0, null, metadata !19, i32 0, null, metadata !72} ; [ DW_TAG_class_type ]
!17 = metadata !{i32 786489, null, metadata !"hls", metadata !18, i32 69} ; [ DW_TAG_namespace ]
!18 = metadata !{i32 786473, metadata !"C:/Xilinx/Vivado_HLS/2015.4/common/technology/autopilot\5Chls_stream.h", metadata !"c:/Users/Riccardo/Documents/HLS_COMMON/PATTERN_GENERATORS", null} ; [ DW_TAG_file_type ]
!19 = metadata !{metadata !20, metadata !22, metadata !28, metadata !34, metadata !39, metadata !42, metadata !46, metadata !51, metadata !56, metadata !57, metadata !58, metadata !61, metadata !64, metadata !65, metadata !68}
!20 = metadata !{i32 786445, metadata !16, metadata !"V", metadata !18, i32 163, i64 8, i64 8, i64 0, i32 1, metadata !21} ; [ DW_TAG_member ]
!21 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!22 = metadata !{i32 786478, i32 0, metadata !16, metadata !"stream", metadata !"stream", metadata !"", metadata !18, i32 83, metadata !23, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !26, i32 83} ; [ DW_TAG_subprogram ]
!23 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !24, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!24 = metadata !{null, metadata !25}
!25 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !16} ; [ DW_TAG_pointer_type ]
!26 = metadata !{metadata !27}
!27 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!28 = metadata !{i32 786478, i32 0, metadata !16, metadata !"stream", metadata !"stream", metadata !"", metadata !18, i32 86, metadata !29, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !26, i32 86} ; [ DW_TAG_subprogram ]
!29 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !30, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!30 = metadata !{null, metadata !25, metadata !31}
!31 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !32} ; [ DW_TAG_pointer_type ]
!32 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !33} ; [ DW_TAG_const_type ]
!33 = metadata !{i32 786468, null, metadata !"char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!34 = metadata !{i32 786478, i32 0, metadata !16, metadata !"stream", metadata !"stream", metadata !"", metadata !18, i32 91, metadata !35, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !26, i32 91} ; [ DW_TAG_subprogram ]
!35 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !36, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!36 = metadata !{null, metadata !25, metadata !37}
!37 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !38} ; [ DW_TAG_reference_type ]
!38 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !16} ; [ DW_TAG_const_type ]
!39 = metadata !{i32 786478, i32 0, metadata !16, metadata !"operator=", metadata !"operator=", metadata !"_ZN3hls6streamIhEaSERKS1_", metadata !18, i32 94, metadata !40, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !26, i32 94} ; [ DW_TAG_subprogram ]
!40 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !41, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!41 = metadata !{metadata !15, metadata !25, metadata !37}
!42 = metadata !{i32 786478, i32 0, metadata !16, metadata !"operator>>", metadata !"operator>>", metadata !"_ZN3hls6streamIhErsERh", metadata !18, i32 101, metadata !43, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !26, i32 101} ; [ DW_TAG_subprogram ]
!43 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !44, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!44 = metadata !{null, metadata !25, metadata !45}
!45 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !21} ; [ DW_TAG_reference_type ]
!46 = metadata !{i32 786478, i32 0, metadata !16, metadata !"operator<<", metadata !"operator<<", metadata !"_ZN3hls6streamIhElsERKh", metadata !18, i32 105, metadata !47, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !26, i32 105} ; [ DW_TAG_subprogram ]
!47 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !48, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!48 = metadata !{null, metadata !25, metadata !49}
!49 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !50} ; [ DW_TAG_reference_type ]
!50 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !21} ; [ DW_TAG_const_type ]
!51 = metadata !{i32 786478, i32 0, metadata !16, metadata !"empty", metadata !"empty", metadata !"_ZNK3hls6streamIhE5emptyEv", metadata !18, i32 112, metadata !52, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !26, i32 112} ; [ DW_TAG_subprogram ]
!52 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !53, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!53 = metadata !{metadata !54, metadata !55}
!54 = metadata !{i32 786468, null, metadata !"bool", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 2} ; [ DW_TAG_base_type ]
!55 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !38} ; [ DW_TAG_pointer_type ]
!56 = metadata !{i32 786478, i32 0, metadata !16, metadata !"full", metadata !"full", metadata !"_ZNK3hls6streamIhE4fullEv", metadata !18, i32 117, metadata !52, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !26, i32 117} ; [ DW_TAG_subprogram ]
!57 = metadata !{i32 786478, i32 0, metadata !16, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIhE4readERh", metadata !18, i32 123, metadata !43, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !26, i32 123} ; [ DW_TAG_subprogram ]
!58 = metadata !{i32 786478, i32 0, metadata !16, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIhE4readEv", metadata !18, i32 129, metadata !59, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !26, i32 129} ; [ DW_TAG_subprogram ]
!59 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !60, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!60 = metadata !{metadata !21, metadata !25}
!61 = metadata !{i32 786478, i32 0, metadata !16, metadata !"read_nb", metadata !"read_nb", metadata !"_ZN3hls6streamIhE7read_nbERh", metadata !18, i32 136, metadata !62, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !26, i32 136} ; [ DW_TAG_subprogram ]
!62 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !63, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!63 = metadata !{metadata !54, metadata !25, metadata !45}
!64 = metadata !{i32 786478, i32 0, metadata !16, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIhE5writeERKh", metadata !18, i32 144, metadata !47, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !26, i32 144} ; [ DW_TAG_subprogram ]
!65 = metadata !{i32 786478, i32 0, metadata !16, metadata !"write_nb", metadata !"write_nb", metadata !"_ZN3hls6streamIhE8write_nbERKh", metadata !18, i32 150, metadata !66, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !26, i32 150} ; [ DW_TAG_subprogram ]
!66 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !67, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!67 = metadata !{metadata !54, metadata !25, metadata !49}
!68 = metadata !{i32 786478, i32 0, metadata !16, metadata !"size", metadata !"size", metadata !"_ZN3hls6streamIhE4sizeEv", metadata !18, i32 157, metadata !69, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !26, i32 157} ; [ DW_TAG_subprogram ]
!69 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !70, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!70 = metadata !{metadata !71, metadata !25}
!71 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!72 = metadata !{metadata !73}
!73 = metadata !{i32 786479, null, metadata !"__STREAM_T__", metadata !21, null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!74 = metadata !{i32 786478, i32 0, metadata !17, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIhE5writeERKh", metadata !18, i32 144, metadata !47, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !64, metadata !26, i32 144} ; [ DW_TAG_subprogram ]
!75 = metadata !{metadata !76}
!76 = metadata !{metadata !77, metadata !79, metadata !80, metadata !82}
!77 = metadata !{i32 786484, i32 0, metadata !12, metadata !"lineX", metadata !"lineX", metadata !"", metadata !4, i32 19, metadata !78, i32 1, i32 1, i32* @lineX} ; [ DW_TAG_variable ]
!78 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!79 = metadata !{i32 786484, i32 0, metadata !12, metadata !"lineY", metadata !"lineY", metadata !"", metadata !4, i32 20, metadata !78, i32 1, i32 1, i32* @lineY} ; [ DW_TAG_variable ]
!80 = metadata !{i32 786484, i32 0, metadata !12, metadata !"dirX", metadata !"dirX", metadata !"", metadata !4, i32 22, metadata !81, i32 1, i32 1, i1* @dirX} ; [ DW_TAG_variable ]
!81 = metadata !{i32 786454, null, metadata !"DIREZIONE", metadata !4, i32 6, i64 0, i64 0, i64 0, i32 0, metadata !3} ; [ DW_TAG_typedef ]
!82 = metadata !{i32 786484, i32 0, metadata !12, metadata !"dirY", metadata !"dirY", metadata !"", metadata !4, i32 23, metadata !81, i32 1, i32 1, i1* @dirY} ; [ DW_TAG_variable ]
!83 = metadata !{i32 786689, metadata !12, metadata !"outputStream", metadata !4, i32 16777230, metadata !15, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!84 = metadata !{i32 14, i32 45, metadata !12, null}
!85 = metadata !{i32 16, i32 1, metadata !86, null}
!86 = metadata !{i32 786443, metadata !12, i32 15, i32 1, metadata !4, i32 0} ; [ DW_TAG_lexical_block ]
!87 = metadata !{i32 17, i32 1, metadata !86, null}
!88 = metadata !{i32 25, i32 1, metadata !86, null}
!89 = metadata !{i32 26, i32 1, metadata !86, null}
!90 = metadata !{i32 27, i32 1, metadata !86, null}
!91 = metadata !{i32 28, i32 1, metadata !86, null}
!92 = metadata !{i32 146, i32 9, metadata !93, metadata !94}
!93 = metadata !{i32 786443, metadata !74, i32 144, i32 79, metadata !18, i32 5} ; [ DW_TAG_lexical_block ]
!94 = metadata !{i32 36, i32 6, metadata !95, null}
!95 = metadata !{i32 786443, metadata !96, i32 34, i32 4, metadata !4, i32 4} ; [ DW_TAG_lexical_block ]
!96 = metadata !{i32 786443, metadata !97, i32 32, i32 3, metadata !4, i32 3} ; [ DW_TAG_lexical_block ]
!97 = metadata !{i32 786443, metadata !98, i32 31, i32 3, metadata !4, i32 2} ; [ DW_TAG_lexical_block ]
!98 = metadata !{i32 786443, metadata !86, i32 30, i32 2, metadata !4, i32 1} ; [ DW_TAG_lexical_block ]
!99 = metadata !{i32 30, i32 15, metadata !98, null}
!100 = metadata !{i32 33, i32 4, metadata !96, null}
!101 = metadata !{i32 31, i32 16, metadata !97, null}
!102 = metadata !{i32 35, i32 5, metadata !95, null}
!103 = metadata !{i32 786689, metadata !74, metadata !"this", metadata !18, i32 16777360, metadata !104, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!104 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !16} ; [ DW_TAG_pointer_type ]
!105 = metadata !{i32 144, i32 48, metadata !74, metadata !94}
!106 = metadata !{i32 786688, metadata !93, metadata !"tmp", metadata !18, i32 145, metadata !21, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!107 = metadata !{i32 145, i32 22, metadata !93, metadata !94}
!108 = metadata !{i32 145, i32 31, metadata !93, metadata !94}
!109 = metadata !{i32 144, i32 48, metadata !74, metadata !110}
!110 = metadata !{i32 37, i32 10, metadata !95, null}
!111 = metadata !{i32 145, i32 22, metadata !93, metadata !110}
!112 = metadata !{i32 145, i32 31, metadata !93, metadata !110}
!113 = metadata !{i32 146, i32 9, metadata !93, metadata !110}
!114 = metadata !{i32 38, i32 4, metadata !95, null}
!115 = metadata !{i32 31, i32 32, metadata !97, null}
!116 = metadata !{i32 786688, metadata !97, metadata !"x", metadata !4, i32 31, metadata !78, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!117 = metadata !{i32 30, i32 31, metadata !98, null}
!118 = metadata !{i32 786688, metadata !98, metadata !"y", metadata !4, i32 30, metadata !78, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!119 = metadata !{i32 44, i32 2, metadata !86, null}
!120 = metadata !{i32 45, i32 3, metadata !86, null}
!121 = metadata !{i32 46, i32 7, metadata !86, null}
!122 = metadata !{i32 47, i32 3, metadata !86, null}
!123 = metadata !{i32 49, i32 2, metadata !86, null}
!124 = metadata !{i32 50, i32 3, metadata !86, null}
!125 = metadata !{i32 51, i32 7, metadata !86, null}
!126 = metadata !{i32 52, i32 3, metadata !86, null}
!127 = metadata !{i32 58, i32 2, metadata !86, null}
!128 = metadata !{i32 59, i32 3, metadata !86, null}
!129 = metadata !{i32 62, i32 2, metadata !86, null}
!130 = metadata !{i32 63, i32 3, metadata !86, null}
!131 = metadata !{i32 66, i32 1, metadata !86, null}
