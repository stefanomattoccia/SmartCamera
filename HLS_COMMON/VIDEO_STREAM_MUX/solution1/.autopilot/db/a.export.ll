; ModuleID = 'F:/Progetti_Vivado_Tesi/Test_7_Tesi/HLS_COMMON/VIDEO_STREAM_MUX/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@mux_sd_ov_str = internal unnamed_addr constant [10 x i8] c"mux_sd_ov\00"
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@p_str2 = private unnamed_addr constant [5 x i8] c"axis\00", align 1
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1

define void @mux_sd_ov(i1 zeroext %switch_stream, i8* %data_in_sd_V_V, i8* %data_in_ov7670_V_V, i8* %outputStream_V_V) {
  call void (...)* @_ssdm_op_SpecBitsMap(i1 %switch_stream), !map !7
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %data_in_sd_V_V), !map !13
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %data_in_ov7670_V_V), !map !17
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %outputStream_V_V), !map !21
  call void (...)* @_ssdm_op_SpecTopModule([10 x i8]* @mux_sd_ov_str) nounwind
  %switch_stream_read = call i1 @_ssdm_op_Read.s_axilite.i1(i1 %switch_stream)
  call void (...)* @_ssdm_op_SpecInterface(i1 %switch_stream, [10 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %outputStream_V_V, [5 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %data_in_sd_V_V, [5 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %data_in_ov7670_V_V, [5 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1) nounwind
  br i1 %switch_stream_read, label %2, label %1

; <label>:1                                       ; preds = %0
  %tmp_V_1 = call i8 @_ssdm_op_Read.axis.volatile.i8P(i8* %data_in_ov7670_V_V)
  call void @_ssdm_op_Write.axis.volatile.i8P(i8* %outputStream_V_V, i8 %tmp_V_1)
  br label %3

; <label>:2                                       ; preds = %0
  %tmp_V = call i8 @_ssdm_op_Read.axis.volatile.i8P(i8* %data_in_sd_V_V)
  call void @_ssdm_op_Write.axis.volatile.i8P(i8* %outputStream_V_V, i8 %tmp_V)
  br label %3

; <label>:3                                       ; preds = %2, %1
  ret void
}

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

define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i1 @_ssdm_op_Read.s_axilite.i1(i1) {
entry:
  ret i1 %0
}

define weak i8 @_ssdm_op_Read.axis.volatile.i8P(i8*) {
entry:
  %empty = load i8* %0
  ret i8 %empty
}

declare void @_GLOBAL__I_a() nounwind

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
!8 = metadata !{i32 0, i32 0, metadata !9}
!9 = metadata !{metadata !10}
!10 = metadata !{metadata !"switch_stream", metadata !11, metadata !"bool", i32 0, i32 0}
!11 = metadata !{metadata !12}
!12 = metadata !{i32 0, i32 0, i32 0}
!13 = metadata !{metadata !14}
!14 = metadata !{i32 0, i32 7, metadata !15}
!15 = metadata !{metadata !16}
!16 = metadata !{metadata !"data_in_sd.V.V", metadata !5, metadata !"uint8", i32 0, i32 7}
!17 = metadata !{metadata !18}
!18 = metadata !{i32 0, i32 7, metadata !19}
!19 = metadata !{metadata !20}
!20 = metadata !{metadata !"data_in_ov7670.V.V", metadata !5, metadata !"uint8", i32 0, i32 7}
!21 = metadata !{metadata !22}
!22 = metadata !{i32 0, i32 7, metadata !23}
!23 = metadata !{metadata !24}
!24 = metadata !{metadata !"outputStream.V.V", metadata !5, metadata !"uint8", i32 0, i32 7}
