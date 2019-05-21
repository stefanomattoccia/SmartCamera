; ModuleID = 'D:/000_OFFICIAL_OV_VISION_PIPELINE_2016/HLS_COMMON/LF_VALID_TO_AXIS/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@res = internal unnamed_addr global i1 true, align 1
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@LF_valid_to_AXIS_str = internal unnamed_addr constant [17 x i8] c"LF_valid_to_AXIS\00"
@p_str2 = private unnamed_addr constant [8 x i8] c"ap_none\00", align 1
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str = private unnamed_addr constant [5 x i8] c"axis\00", align 1

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define weak void @_ssdm_op_Write.axis.volatile.i8P(i8*, i8) {
entry:
  store i8 %1, i8* %0
  ret void
}

define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

define weak void @_ssdm_op_SpecReset(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i8 @_ssdm_op_Read.ap_none.volatile.i8P(i8*) {
entry:
  %empty = load i8* %0
  ret i8 %empty
}

define weak i1 @_ssdm_op_Read.ap_none.volatile.i1P(i1*) {
entry:
  %empty = load i1* %0
  ret i1 %empty
}

declare void @_GLOBAL__I_a() nounwind

define void @LF_valid_to_AXIS(i8* %data_in_V, i1* %frame_valid, i1* %line_valid, i8* %outputStream_V_V) {
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %data_in_V), !map !7
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %frame_valid), !map !11
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %line_valid), !map !15
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %outputStream_V_V), !map !19
  call void (...)* @_ssdm_op_SpecTopModule([17 x i8]* @LF_valid_to_AXIS_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %outputStream_V_V, [5 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %data_in_V, [8 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i1* %frame_valid, [8 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i1* %line_valid, [8 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1) nounwind
  %res_load = load i1* @res, align 1
  call void (...)* @_ssdm_op_SpecReset(i1* @res, i32 1, [1 x i8]* @p_str1) nounwind
  %frame_valid_read = call i1 @_ssdm_op_Read.ap_none.volatile.i1P(i1* %frame_valid)
  br i1 %res_load, label %1, label %3

; <label>:1                                       ; preds = %0
  br i1 %frame_valid_read, label %._crit_edge, label %2

; <label>:2                                       ; preds = %1
  store i1 false, i1* @res, align 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %2, %1
  br label %6

; <label>:3                                       ; preds = %0
  br i1 %frame_valid_read, label %4, label %._crit_edge4

; <label>:4                                       ; preds = %3
  %line_valid_read = call i1 @_ssdm_op_Read.ap_none.volatile.i1P(i1* %line_valid)
  br i1 %line_valid_read, label %5, label %._crit_edge4

; <label>:5                                       ; preds = %4
  %tmp_V = call i8 @_ssdm_op_Read.ap_none.volatile.i8P(i8* %data_in_V)
  call void @_ssdm_op_Write.axis.volatile.i8P(i8* %outputStream_V_V, i8 %tmp_V)
  br label %._crit_edge4

._crit_edge4:                                     ; preds = %5, %4, %3
  br label %6

; <label>:6                                       ; preds = %._crit_edge4, %._crit_edge
  ret void
}

!hls.encrypted.func = !{}
!llvm.map.gv = !{!0}

!0 = metadata !{metadata !1, [1 x i32]* @llvm_global_ctors_0}
!1 = metadata !{metadata !2}
!2 = metadata !{i32 0, i32 31, metadata !3}
!3 = metadata !{metadata !4}
!4 = metadata !{metadata !"llvm.global_ctors.0", metadata !5, metadata !"", i32 0, i32 31}
!5 = metadata !{metadata !6}
!6 = metadata !{i32 0, i32 0, i32 1}
!7 = metadata !{metadata !8}
!8 = metadata !{i32 0, i32 7, metadata !9}
!9 = metadata !{metadata !10}
!10 = metadata !{metadata !"data_in.V", metadata !5, metadata !"uint8", i32 0, i32 7}
!11 = metadata !{metadata !12}
!12 = metadata !{i32 0, i32 0, metadata !13}
!13 = metadata !{metadata !14}
!14 = metadata !{metadata !"frame_valid", metadata !5, metadata !"bool", i32 0, i32 0}
!15 = metadata !{metadata !16}
!16 = metadata !{i32 0, i32 0, metadata !17}
!17 = metadata !{metadata !18}
!18 = metadata !{metadata !"line_valid", metadata !5, metadata !"bool", i32 0, i32 0}
!19 = metadata !{metadata !20}
!20 = metadata !{i32 0, i32 7, metadata !21}
!21 = metadata !{metadata !22}
!22 = metadata !{metadata !"outputStream.V.V", metadata !5, metadata !"uint8", i32 0, i32 7}
