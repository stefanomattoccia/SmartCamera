; ModuleID = 'D:/000_OFFICIAL_OV_VISION_PIPELINE_COLOR_2017/OV_7670/OV7670_Color/VIVADO_HLS/OV7670_INTERFACE/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@ov7670_interface_str = internal unnamed_addr constant [17 x i8] c"ov7670_interface\00"
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@first = internal unnamed_addr global i1 true, align 1
@count_readings = internal unnamed_addr global i32 0, align 4
@count_lines = internal unnamed_addr global i32 0, align 4
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str = private unnamed_addr constant [8 x i8] c"ap_none\00", align 1

define void @ov7670_interface(i8 %data_in_V, i1 %href_V, i1 %vsync_V, i8* %data_out_V, i1* %line_valid_V, i1* %frame_valid_V) {
  call void (...)* @_ssdm_op_SpecBitsMap(i8 %data_in_V), !map !7
  call void (...)* @_ssdm_op_SpecBitsMap(i1 %href_V), !map !13
  call void (...)* @_ssdm_op_SpecBitsMap(i1 %vsync_V), !map !17
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %data_out_V), !map !21
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %line_valid_V), !map !25
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %frame_valid_V), !map !29
  call void (...)* @_ssdm_op_SpecTopModule([17 x i8]* @ov7670_interface_str) nounwind
  %vsync_V_read = call i1 @_ssdm_op_Read.ap_none.i1(i1 %vsync_V)
  %href_V_read = call i1 @_ssdm_op_Read.ap_none.i1(i1 %href_V)
  %data_in_V_read = call i8 @_ssdm_op_Read.ap_none.i8(i8 %data_in_V)
  call void (...)* @_ssdm_op_SpecInterface(i8 %data_in_V, [8 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i1 %href_V, [8 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i1 %vsync_V, [8 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %data_out_V, [8 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i1* %line_valid_V, [8 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i1* %frame_valid_V, [8 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1) nounwind
  %count_lines_load = load i32* @count_lines, align 4
  call void (...)* @_ssdm_op_SpecReset(i32* @count_lines, i32 1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecReset(i32* @count_readings, i32 1, [1 x i8]* @p_str1) nounwind
  %first_load = load i1* @first, align 1
  call void (...)* @_ssdm_op_SpecReset(i1* @first, i32 1, [1 x i8]* @p_str1) nounwind
  %p_not1 = xor i1 %first_load, true
  %brmerge = or i1 %vsync_V_read, %p_not1
  br i1 %brmerge, label %._crit_edge, label %1

; <label>:1                                       ; preds = %0
  call void @_ssdm_op_Write.ap_none.volatile.i1P(i1* %frame_valid_V, i1 false)
  call void @_ssdm_op_Write.ap_none.volatile.i1P(i1* %line_valid_V, i1 false)
  call void @_ssdm_op_Write.ap_none.volatile.i8P(i8* %data_out_V, i8 0)
  br label %12

._crit_edge:                                      ; preds = %0
  store i1 false, i1* @first, align 1
  %p_not = xor i1 %vsync_V_read, true
  %tmp_1 = icmp ult i32 %count_lines_load, 480
  %or_cond = and i1 %tmp_1, %p_not
  br i1 %or_cond, label %2, label %8

; <label>:2                                       ; preds = %._crit_edge
  call void @_ssdm_op_Write.ap_none.volatile.i1P(i1* %frame_valid_V, i1 true)
  %count_readings_load = load i32* @count_readings, align 4
  br i1 %href_V_read, label %3, label %4

; <label>:3                                       ; preds = %2
  call void @_ssdm_op_Write.ap_none.volatile.i8P(i8* %data_out_V, i8 %data_in_V_read)
  call void @_ssdm_op_Write.ap_none.volatile.i1P(i1* %line_valid_V, i1 true)
  %tmp_3 = add i32 %count_readings_load, 1
  store i32 %tmp_3, i32* @count_readings, align 4
  br label %7

; <label>:4                                       ; preds = %2
  %tmp_4 = icmp eq i32 %count_readings_load, 1280
  call void @_ssdm_op_Write.ap_none.volatile.i1P(i1* %line_valid_V, i1 false)
  br i1 %tmp_4, label %5, label %6

; <label>:5                                       ; preds = %4
  store i32 0, i32* @count_readings, align 4
  %tmp_5 = add i32 %count_lines_load, 1
  store i32 %tmp_5, i32* @count_lines, align 4
  br label %6

; <label>:6                                       ; preds = %4, %5
  br label %7

; <label>:7                                       ; preds = %6, %3
  br label %11

; <label>:8                                       ; preds = %._crit_edge
  %tmp_2 = icmp eq i32 %count_lines_load, 480
  %or_cond1 = and i1 %tmp_2, %p_not
  call void @_ssdm_op_Write.ap_none.volatile.i1P(i1* %frame_valid_V, i1 false)
  br i1 %or_cond1, label %10, label %9

; <label>:9                                       ; preds = %8
  store i32 0, i32* @count_lines, align 4
  br label %10

; <label>:10                                      ; preds = %8, %9
  br label %11

; <label>:11                                      ; preds = %10, %7
  br label %12

; <label>:12                                      ; preds = %11, %1
  ret void
}

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

define weak void @_ssdm_op_Write.ap_none.volatile.i8P(i8*, i8) {
entry:
  store i8 %1, i8* %0
  ret void
}

define weak void @_ssdm_op_Write.ap_none.volatile.i1P(i1*, i1) {
entry:
  store i1 %1, i1* %0
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

define weak i8 @_ssdm_op_Read.ap_none.i8(i8) {
entry:
  ret i8 %0
}

define weak i1 @_ssdm_op_Read.ap_none.i1(i1) {
entry:
  ret i1 %0
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
!8 = metadata !{i32 0, i32 7, metadata !9}
!9 = metadata !{metadata !10}
!10 = metadata !{metadata !"data_in.V", metadata !11, metadata !"uint8", i32 0, i32 7}
!11 = metadata !{metadata !12}
!12 = metadata !{i32 0, i32 0, i32 0}
!13 = metadata !{metadata !14}
!14 = metadata !{i32 0, i32 0, metadata !15}
!15 = metadata !{metadata !16}
!16 = metadata !{metadata !"href.V", metadata !11, metadata !"uint1", i32 0, i32 0}
!17 = metadata !{metadata !18}
!18 = metadata !{i32 0, i32 0, metadata !19}
!19 = metadata !{metadata !20}
!20 = metadata !{metadata !"vsync.V", metadata !11, metadata !"uint1", i32 0, i32 0}
!21 = metadata !{metadata !22}
!22 = metadata !{i32 0, i32 7, metadata !23}
!23 = metadata !{metadata !24}
!24 = metadata !{metadata !"data_out.V", metadata !5, metadata !"uint8", i32 0, i32 7}
!25 = metadata !{metadata !26}
!26 = metadata !{i32 0, i32 0, metadata !27}
!27 = metadata !{metadata !28}
!28 = metadata !{metadata !"line_valid.V", metadata !5, metadata !"uint1", i32 0, i32 0}
!29 = metadata !{metadata !30}
!30 = metadata !{i32 0, i32 0, metadata !31}
!31 = metadata !{metadata !32}
!32 = metadata !{metadata !"frame_valid.V", metadata !5, metadata !"uint1", i32 0, i32 0}
