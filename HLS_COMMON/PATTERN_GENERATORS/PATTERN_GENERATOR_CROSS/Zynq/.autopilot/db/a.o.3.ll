; ModuleID = 'C:/Users/Riccardo/Documents/HLS_COMMON/PATTERN_GENERATORS/PATTERN_GENERATOR_CROSS/Zynq/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@pattern_generator_cross_str = internal unnamed_addr constant [24 x i8] c"pattern_generator_cross\00" ; [#uses=1 type=[24 x i8]*]
@lineY = internal unnamed_addr global i32 0, align 4 ; [#uses=3 type=i32*]
@lineX = internal unnamed_addr global i32 0, align 4 ; [#uses=3 type=i32*]
@dirY = internal unnamed_addr global i1 false, align 1 ; [#uses=4 type=i1*]
@dirX = internal unnamed_addr global i1 false, align 1 ; [#uses=4 type=i1*]
@p_str2 = private unnamed_addr constant [5 x i8] c"axis\00", align 1 ; [#uses=1 type=[5 x i8]*]
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=12 type=[1 x i8]*]
@p_str = private unnamed_addr constant [13 x i8] c"ap_ctrl_none\00", align 1 ; [#uses=1 type=[13 x i8]*]

; [#uses=0]
define void @pattern_generator_cross(i8* %outputStream_V) {
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %outputStream_V), !map !0
  call void (...)* @_ssdm_op_SpecTopModule([24 x i8]* @pattern_generator_cross_str) nounwind
  call void @llvm.dbg.value(metadata !{i8* %outputStream_V}, i64 0, metadata !6), !dbg !74 ; [debug line = 14:45] [debug variable = outputStream.V]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [13 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !75 ; [debug line = 16:1]
  call void (...)* @_ssdm_op_SpecInterface(i8* %outputStream_V, [5 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !77 ; [debug line = 17:1]
  call void (...)* @_ssdm_op_SpecReset(i32* @lineX, i32 1, [1 x i8]* @p_str1) nounwind, !dbg !78 ; [debug line = 25:1]
  call void (...)* @_ssdm_op_SpecReset(i1* @dirX, i32 1, [1 x i8]* @p_str1) nounwind, !dbg !79 ; [debug line = 26:1]
  call void (...)* @_ssdm_op_SpecReset(i32* @lineY, i32 1, [1 x i8]* @p_str1) nounwind, !dbg !80 ; [debug line = 27:1]
  call void (...)* @_ssdm_op_SpecReset(i1* @dirY, i32 1, [1 x i8]* @p_str1) nounwind, !dbg !81 ; [debug line = 28:1]
  %lineX_load = load i32* @lineX, align 4, !dbg !82 ; [#uses=4 type=i32] [debug line = 35:5]
  %lineY_load = load i32* @lineY, align 4, !dbg !82 ; [#uses=4 type=i32] [debug line = 35:5]
  br label %.loopexit, !dbg !87                   ; [debug line = 30:15]

.loopexit:                                        ; preds = %.preheader, %0
  %y = phi i9 [ 0, %0 ], [ %y_1, %.preheader ]    ; [#uses=4 type=i9]
  %y_cast2 = zext i9 %y to i32, !dbg !87          ; [#uses=1 type=i32] [debug line = 30:15]
  %exitcond5 = icmp eq i9 %y, -2, !dbg !87        ; [#uses=1 type=i1] [debug line = 30:15]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 510, i64 510, i64 510) ; [#uses=0 type=i32]
  %y_1 = add i9 %y, 1, !dbg !88                   ; [#uses=1 type=i9] [debug line = 30:31]
  call void @llvm.dbg.value(metadata !{i9 %y_1}, i64 0, metadata !89), !dbg !88 ; [debug line = 30:31] [debug variable = y]
  br i1 %exitcond5, label %6, label %.preheader.preheader, !dbg !87 ; [debug line = 30:15]

.preheader.preheader:                             ; preds = %.loopexit
  %tmp_3 = icmp ult i9 %y, -32, !dbg !91          ; [#uses=1 type=i1] [debug line = 33:4]
  %tmp_s = icmp eq i32 %y_cast2, %lineY_load, !dbg !82 ; [#uses=1 type=i1] [debug line = 35:5]
  br label %.preheader, !dbg !92                  ; [debug line = 31:16]

.preheader:                                       ; preds = %._crit_edge, %.preheader.preheader
  %x = phi i10 [ %x_1, %._crit_edge ], [ 0, %.preheader.preheader ] ; [#uses=4 type=i10]
  %x_cast1 = zext i10 %x to i32, !dbg !92         ; [#uses=1 type=i32] [debug line = 31:16]
  %exitcond = icmp eq i10 %x, -304, !dbg !92      ; [#uses=1 type=i1] [debug line = 31:16]
  %empty_2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 720, i64 720, i64 720) ; [#uses=0 type=i32]
  %x_1 = add i10 %x, 1, !dbg !93                  ; [#uses=1 type=i10] [debug line = 31:32]
  br i1 %exitcond, label %.loopexit, label %1, !dbg !92 ; [debug line = 31:16]

; <label>:1                                       ; preds = %.preheader
  %tmp_6 = icmp ult i10 %x, -384, !dbg !91        ; [#uses=1 type=i1] [debug line = 33:4]
  %or_cond = and i1 %tmp_3, %tmp_6, !dbg !91      ; [#uses=1 type=i1] [debug line = 33:4]
  br i1 %or_cond, label %2, label %._crit_edge, !dbg !91 ; [debug line = 33:4]

; <label>:2                                       ; preds = %1
  %tmp_9 = icmp eq i32 %x_cast1, %lineX_load, !dbg !82 ; [#uses=1 type=i1] [debug line = 35:5]
  %or_cond7 = or i1 %tmp_9, %tmp_s, !dbg !82      ; [#uses=1 type=i1] [debug line = 35:5]
  br i1 %or_cond7, label %3, label %4, !dbg !82   ; [debug line = 35:5]

; <label>:3                                       ; preds = %2
  call void @llvm.dbg.value(metadata !{i8* %outputStream_V}, i64 0, metadata !94), !dbg !99 ; [debug line = 144:48@36:6] [debug variable = stream<unsigned char>.V]
  call void @_ssdm_op_Write.axis.volatile.i8P(i8* %outputStream_V, i8 -63), !dbg !101 ; [debug line = 146:9@36:6]
  br label %5, !dbg !100                          ; [debug line = 36:6]

; <label>:4                                       ; preds = %2
  call void @llvm.dbg.value(metadata !{i8* %outputStream_V}, i64 0, metadata !94), !dbg !103 ; [debug line = 144:48@37:10] [debug variable = stream<unsigned char>.V]
  call void @_ssdm_op_Write.axis.volatile.i8P(i8* %outputStream_V, i8 62), !dbg !105 ; [debug line = 146:9@37:10]
  br label %5

; <label>:5                                       ; preds = %4, %3
  br label %._crit_edge, !dbg !106                ; [debug line = 38:4]

._crit_edge:                                      ; preds = %5, %1
  call void @llvm.dbg.value(metadata !{i10 %x_1}, i64 0, metadata !107), !dbg !93 ; [debug line = 31:32] [debug variable = x]
  br label %.preheader, !dbg !93                  ; [debug line = 31:32]

; <label>:6                                       ; preds = %.loopexit
  %tmp_2 = icmp eq i32 %lineX_load, 0, !dbg !108  ; [#uses=1 type=i1] [debug line = 44:2]
  br i1 %tmp_2, label %7, label %8, !dbg !108     ; [debug line = 44:2]

; <label>:7                                       ; preds = %6
  store i1 false, i1* @dirX, align 1, !dbg !109   ; [debug line = 45:3]
  br label %10, !dbg !109                         ; [debug line = 45:3]

; <label>:8                                       ; preds = %6
  %tmp_4 = icmp eq i32 %lineX_load, 639, !dbg !110 ; [#uses=1 type=i1] [debug line = 46:7]
  br i1 %tmp_4, label %9, label %._crit_edge8, !dbg !110 ; [debug line = 46:7]

; <label>:9                                       ; preds = %8
  store i1 true, i1* @dirX, align 1, !dbg !111    ; [debug line = 47:3]
  br label %._crit_edge8, !dbg !111               ; [debug line = 47:3]

._crit_edge8:                                     ; preds = %9, %8
  br label %10

; <label>:10                                      ; preds = %._crit_edge8, %7
  %tmp_7 = phi i32 [ %lineX_load, %._crit_edge8 ], [ 0, %7 ] ; [#uses=1 type=i32]
  %tmp_8 = icmp eq i32 %lineY_load, 0, !dbg !112  ; [#uses=1 type=i1] [debug line = 49:2]
  br i1 %tmp_8, label %11, label %12, !dbg !112   ; [debug line = 49:2]

; <label>:11                                      ; preds = %10
  store i1 false, i1* @dirY, align 1, !dbg !113   ; [debug line = 50:3]
  br label %14, !dbg !113                         ; [debug line = 50:3]

; <label>:12                                      ; preds = %10
  %tmp_1 = icmp eq i32 %lineY_load, 479, !dbg !114 ; [#uses=1 type=i1] [debug line = 51:7]
  br i1 %tmp_1, label %13, label %._crit_edge9, !dbg !114 ; [debug line = 51:7]

; <label>:13                                      ; preds = %12
  store i1 true, i1* @dirY, align 1, !dbg !115    ; [debug line = 52:3]
  br label %._crit_edge9, !dbg !115               ; [debug line = 52:3]

._crit_edge9:                                     ; preds = %13, %12
  br label %14

; <label>:14                                      ; preds = %._crit_edge9, %11
  %tmp_5 = phi i32 [ %lineY_load, %._crit_edge9 ], [ 0, %11 ] ; [#uses=1 type=i32]
  %dirX_load = load i1* @dirX, align 1, !dbg !116 ; [#uses=1 type=i1] [debug line = 58:2]
  %storemerge_v_cast_cast = select i1 %dirX_load, i32 -1, i32 1, !dbg !116 ; [#uses=1 type=i32] [debug line = 58:2]
  %storemerge = add i32 %tmp_7, %storemerge_v_cast_cast, !dbg !116 ; [#uses=1 type=i32] [debug line = 58:2]
  store i32 %storemerge, i32* @lineX, align 4, !dbg !117 ; [debug line = 59:3]
  %dirY_load = load i1* @dirY, align 1, !dbg !118 ; [#uses=1 type=i1] [debug line = 62:2]
  %storemerge4_v_cast_cast = select i1 %dirY_load, i32 -1, i32 1, !dbg !118 ; [#uses=1 type=i32] [debug line = 62:2]
  %storemerge4 = add i32 %tmp_5, %storemerge4_v_cast_cast, !dbg !118 ; [#uses=1 type=i32] [debug line = 62:2]
  store i32 %storemerge4, i32* @lineY, align 4, !dbg !119 ; [debug line = 63:3]
  ret void, !dbg !120                             ; [debug line = 66:1]
}

; [#uses=5]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=2]
define weak void @_ssdm_op_Write.axis.volatile.i8P(i8*, i8) {
entry:
  store i8 %1, i8* %0
  ret void
}

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=4]
define weak void @_ssdm_op_SpecReset(...) nounwind {
entry:
  ret void
}

; [#uses=2]
define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

; [#uses=2]
define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

; [#uses=1]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=0]
declare i16 @_ssdm_op_HSub(...)

; [#uses=0]
declare i16 @_ssdm_op_HMul(...)

; [#uses=0]
declare i16 @_ssdm_op_HDiv(...)

; [#uses=0]
declare i16 @_ssdm_op_HAdd(...)

!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{metadata !1}
!1 = metadata !{i32 0, i32 7, metadata !2}
!2 = metadata !{metadata !3}
!3 = metadata !{metadata !"outputStream.V", metadata !4, metadata !"unsigned char", i32 0, i32 7}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 0, i32 0, i32 1}
!6 = metadata !{i32 790531, metadata !7, metadata !"outputStream.V", null, i32 14, metadata !71, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!7 = metadata !{i32 786689, metadata !8, metadata !"outputStream", metadata !9, i32 16777230, metadata !12, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!8 = metadata !{i32 786478, i32 0, metadata !9, metadata !"pattern_generator_cross", metadata !"pattern_generator_cross", metadata !"_Z23pattern_generator_crossRN3hls6streamIhEE", metadata !9, i32 14, metadata !10, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !23, i32 15} ; [ DW_TAG_subprogram ]
!9 = metadata !{i32 786473, metadata !"PATTERN_GENERATOR_CROSS/pattern_generator.cpp", metadata !"c:/Users/Riccardo/Documents/HLS_COMMON/PATTERN_GENERATORS", null} ; [ DW_TAG_file_type ]
!10 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !11, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!11 = metadata !{null, metadata !12}
!12 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !13} ; [ DW_TAG_reference_type ]
!13 = metadata !{i32 786434, metadata !14, metadata !"stream<unsigned char>", metadata !15, i32 79, i64 8, i64 8, i32 0, i32 0, null, metadata !16, i32 0, null, metadata !69} ; [ DW_TAG_class_type ]
!14 = metadata !{i32 786489, null, metadata !"hls", metadata !15, i32 69} ; [ DW_TAG_namespace ]
!15 = metadata !{i32 786473, metadata !"C:/Xilinx/Vivado_HLS/2015.4/common/technology/autopilot\5Chls_stream.h", metadata !"c:/Users/Riccardo/Documents/HLS_COMMON/PATTERN_GENERATORS", null} ; [ DW_TAG_file_type ]
!16 = metadata !{metadata !17, metadata !19, metadata !25, metadata !31, metadata !36, metadata !39, metadata !43, metadata !48, metadata !53, metadata !54, metadata !55, metadata !58, metadata !61, metadata !62, metadata !65}
!17 = metadata !{i32 786445, metadata !13, metadata !"V", metadata !15, i32 163, i64 8, i64 8, i64 0, i32 1, metadata !18} ; [ DW_TAG_member ]
!18 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!19 = metadata !{i32 786478, i32 0, metadata !13, metadata !"stream", metadata !"stream", metadata !"", metadata !15, i32 83, metadata !20, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !23, i32 83} ; [ DW_TAG_subprogram ]
!20 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !21, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!21 = metadata !{null, metadata !22}
!22 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !13} ; [ DW_TAG_pointer_type ]
!23 = metadata !{metadata !24}
!24 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!25 = metadata !{i32 786478, i32 0, metadata !13, metadata !"stream", metadata !"stream", metadata !"", metadata !15, i32 86, metadata !26, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !23, i32 86} ; [ DW_TAG_subprogram ]
!26 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !27, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!27 = metadata !{null, metadata !22, metadata !28}
!28 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !29} ; [ DW_TAG_pointer_type ]
!29 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !30} ; [ DW_TAG_const_type ]
!30 = metadata !{i32 786468, null, metadata !"char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!31 = metadata !{i32 786478, i32 0, metadata !13, metadata !"stream", metadata !"stream", metadata !"", metadata !15, i32 91, metadata !32, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !23, i32 91} ; [ DW_TAG_subprogram ]
!32 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !33, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!33 = metadata !{null, metadata !22, metadata !34}
!34 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !35} ; [ DW_TAG_reference_type ]
!35 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !13} ; [ DW_TAG_const_type ]
!36 = metadata !{i32 786478, i32 0, metadata !13, metadata !"operator=", metadata !"operator=", metadata !"_ZN3hls6streamIhEaSERKS1_", metadata !15, i32 94, metadata !37, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !23, i32 94} ; [ DW_TAG_subprogram ]
!37 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !38, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!38 = metadata !{metadata !12, metadata !22, metadata !34}
!39 = metadata !{i32 786478, i32 0, metadata !13, metadata !"operator>>", metadata !"operator>>", metadata !"_ZN3hls6streamIhErsERh", metadata !15, i32 101, metadata !40, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !23, i32 101} ; [ DW_TAG_subprogram ]
!40 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !41, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!41 = metadata !{null, metadata !22, metadata !42}
!42 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !18} ; [ DW_TAG_reference_type ]
!43 = metadata !{i32 786478, i32 0, metadata !13, metadata !"operator<<", metadata !"operator<<", metadata !"_ZN3hls6streamIhElsERKh", metadata !15, i32 105, metadata !44, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !23, i32 105} ; [ DW_TAG_subprogram ]
!44 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !45, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!45 = metadata !{null, metadata !22, metadata !46}
!46 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !47} ; [ DW_TAG_reference_type ]
!47 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !18} ; [ DW_TAG_const_type ]
!48 = metadata !{i32 786478, i32 0, metadata !13, metadata !"empty", metadata !"empty", metadata !"_ZNK3hls6streamIhE5emptyEv", metadata !15, i32 112, metadata !49, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !23, i32 112} ; [ DW_TAG_subprogram ]
!49 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !50, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!50 = metadata !{metadata !51, metadata !52}
!51 = metadata !{i32 786468, null, metadata !"bool", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 2} ; [ DW_TAG_base_type ]
!52 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !35} ; [ DW_TAG_pointer_type ]
!53 = metadata !{i32 786478, i32 0, metadata !13, metadata !"full", metadata !"full", metadata !"_ZNK3hls6streamIhE4fullEv", metadata !15, i32 117, metadata !49, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !23, i32 117} ; [ DW_TAG_subprogram ]
!54 = metadata !{i32 786478, i32 0, metadata !13, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIhE4readERh", metadata !15, i32 123, metadata !40, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !23, i32 123} ; [ DW_TAG_subprogram ]
!55 = metadata !{i32 786478, i32 0, metadata !13, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIhE4readEv", metadata !15, i32 129, metadata !56, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !23, i32 129} ; [ DW_TAG_subprogram ]
!56 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !57, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!57 = metadata !{metadata !18, metadata !22}
!58 = metadata !{i32 786478, i32 0, metadata !13, metadata !"read_nb", metadata !"read_nb", metadata !"_ZN3hls6streamIhE7read_nbERh", metadata !15, i32 136, metadata !59, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !23, i32 136} ; [ DW_TAG_subprogram ]
!59 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !60, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!60 = metadata !{metadata !51, metadata !22, metadata !42}
!61 = metadata !{i32 786478, i32 0, metadata !13, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIhE5writeERKh", metadata !15, i32 144, metadata !44, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !23, i32 144} ; [ DW_TAG_subprogram ]
!62 = metadata !{i32 786478, i32 0, metadata !13, metadata !"write_nb", metadata !"write_nb", metadata !"_ZN3hls6streamIhE8write_nbERKh", metadata !15, i32 150, metadata !63, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !23, i32 150} ; [ DW_TAG_subprogram ]
!63 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !64, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!64 = metadata !{metadata !51, metadata !22, metadata !46}
!65 = metadata !{i32 786478, i32 0, metadata !13, metadata !"size", metadata !"size", metadata !"_ZN3hls6streamIhE4sizeEv", metadata !15, i32 157, metadata !66, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !23, i32 157} ; [ DW_TAG_subprogram ]
!66 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !67, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!67 = metadata !{metadata !68, metadata !22}
!68 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!69 = metadata !{metadata !70}
!70 = metadata !{i32 786479, null, metadata !"__STREAM_T__", metadata !18, null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!71 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !72} ; [ DW_TAG_pointer_type ]
!72 = metadata !{i32 786438, metadata !14, metadata !"stream<unsigned char>", metadata !15, i32 79, i64 8, i64 8, i32 0, i32 0, null, metadata !73, i32 0, null, metadata !69} ; [ DW_TAG_class_field_type ]
!73 = metadata !{metadata !17}
!74 = metadata !{i32 14, i32 45, metadata !8, null}
!75 = metadata !{i32 16, i32 1, metadata !76, null}
!76 = metadata !{i32 786443, metadata !8, i32 15, i32 1, metadata !9, i32 0} ; [ DW_TAG_lexical_block ]
!77 = metadata !{i32 17, i32 1, metadata !76, null}
!78 = metadata !{i32 25, i32 1, metadata !76, null}
!79 = metadata !{i32 26, i32 1, metadata !76, null}
!80 = metadata !{i32 27, i32 1, metadata !76, null}
!81 = metadata !{i32 28, i32 1, metadata !76, null}
!82 = metadata !{i32 35, i32 5, metadata !83, null}
!83 = metadata !{i32 786443, metadata !84, i32 34, i32 4, metadata !9, i32 4} ; [ DW_TAG_lexical_block ]
!84 = metadata !{i32 786443, metadata !85, i32 32, i32 3, metadata !9, i32 3} ; [ DW_TAG_lexical_block ]
!85 = metadata !{i32 786443, metadata !86, i32 31, i32 3, metadata !9, i32 2} ; [ DW_TAG_lexical_block ]
!86 = metadata !{i32 786443, metadata !76, i32 30, i32 2, metadata !9, i32 1} ; [ DW_TAG_lexical_block ]
!87 = metadata !{i32 30, i32 15, metadata !86, null}
!88 = metadata !{i32 30, i32 31, metadata !86, null}
!89 = metadata !{i32 786688, metadata !86, metadata !"y", metadata !9, i32 30, metadata !90, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!90 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!91 = metadata !{i32 33, i32 4, metadata !84, null}
!92 = metadata !{i32 31, i32 16, metadata !85, null}
!93 = metadata !{i32 31, i32 32, metadata !85, null}
!94 = metadata !{i32 790531, metadata !95, metadata !"stream<unsigned char>.V", null, i32 144, metadata !98, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!95 = metadata !{i32 786689, metadata !96, metadata !"this", metadata !15, i32 16777360, metadata !97, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!96 = metadata !{i32 786478, i32 0, metadata !14, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIhE5writeERKh", metadata !15, i32 144, metadata !44, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !61, metadata !23, i32 144} ; [ DW_TAG_subprogram ]
!97 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !13} ; [ DW_TAG_pointer_type ]
!98 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !72} ; [ DW_TAG_pointer_type ]
!99 = metadata !{i32 144, i32 48, metadata !96, metadata !100}
!100 = metadata !{i32 36, i32 6, metadata !83, null}
!101 = metadata !{i32 146, i32 9, metadata !102, metadata !100}
!102 = metadata !{i32 786443, metadata !96, i32 144, i32 79, metadata !15, i32 5} ; [ DW_TAG_lexical_block ]
!103 = metadata !{i32 144, i32 48, metadata !96, metadata !104}
!104 = metadata !{i32 37, i32 10, metadata !83, null}
!105 = metadata !{i32 146, i32 9, metadata !102, metadata !104}
!106 = metadata !{i32 38, i32 4, metadata !83, null}
!107 = metadata !{i32 786688, metadata !85, metadata !"x", metadata !9, i32 31, metadata !90, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!108 = metadata !{i32 44, i32 2, metadata !76, null}
!109 = metadata !{i32 45, i32 3, metadata !76, null}
!110 = metadata !{i32 46, i32 7, metadata !76, null}
!111 = metadata !{i32 47, i32 3, metadata !76, null}
!112 = metadata !{i32 49, i32 2, metadata !76, null}
!113 = metadata !{i32 50, i32 3, metadata !76, null}
!114 = metadata !{i32 51, i32 7, metadata !76, null}
!115 = metadata !{i32 52, i32 3, metadata !76, null}
!116 = metadata !{i32 58, i32 2, metadata !76, null}
!117 = metadata !{i32 59, i32 3, metadata !76, null}
!118 = metadata !{i32 62, i32 2, metadata !76, null}
!119 = metadata !{i32 63, i32 3, metadata !76, null}
!120 = metadata !{i32 66, i32 1, metadata !76, null}
