; ModuleID = 'C:/Users/Riccardo/Documents/Vision-pipeline-to-DDR/VIVADO_HLS/AXI_STREAM_TO_VGA/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@color_blinking_V = internal global i4 0
@axi_stream_to_vga_str = internal unnamed_addr constant [18 x i8] c"axi_stream_to_vga\00"
@p_str3 = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1
@p_str2 = private unnamed_addr constant [8 x i8] c"ap_none\00", align 1
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str = private unnamed_addr constant [5 x i8] c"axis\00", align 1

declare i8 @llvm.part.select.i8(i8, i32, i32) nounwind readnone

declare i10 @llvm.part.select.i10(i10, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define void @axi_stream_to_vga(i1 zeroext %selftest, i8* %inStream_V_V, i4* %R_V, i4* %G_V, i4* %B_V, i1* %V_SYNC_V, i1* %H_SYNC_V) {
codeRepl:
  %R_temp_V_read_assign = alloca i4
  %G_temp_V_read_assign = alloca i4
  %B_temp_V_read_assign = alloca i4
  call void (...)* @_ssdm_op_SpecBitsMap(i1 %selftest), !map !7
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %inStream_V_V), !map !13
  call void (...)* @_ssdm_op_SpecBitsMap(i4* %R_V), !map !17
  call void (...)* @_ssdm_op_SpecBitsMap(i4* %G_V), !map !21
  call void (...)* @_ssdm_op_SpecBitsMap(i4* %B_V), !map !25
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %V_SYNC_V), !map !29
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %H_SYNC_V), !map !33
  call void (...)* @_ssdm_op_SpecTopModule([18 x i8]* @axi_stream_to_vga_str) nounwind
  %selftest_read = call i1 @_ssdm_op_Read.ap_none.i1(i1 %selftest)
  call void (...)* @_ssdm_op_SpecInterface(i8* %inStream_V_V, [5 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i1 %selftest, [8 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i4* %R_V, [8 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i4* %G_V, [8 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i4* %B_V, [8 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i1* %H_SYNC_V, [8 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i1* %V_SYNC_V, [8 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecReset(i4* @color_blinking_V, i32 1, [1 x i8]* @p_str1) nounwind
  %color_blinking_V_load = load i4* @color_blinking_V, align 1
  %op2_V_read_assign = add i4 %color_blinking_V_load, 1
  store i4 %op2_V_read_assign, i4* @color_blinking_V, align 1
  %tmp = call i1 @_ssdm_op_NbReadReq.axis.i8P(i8* %inStream_V_V, i32 1)
  %tmp_6_i = sub i4 -2, %color_blinking_V_load
  br label %.preheader

.preheader:                                       ; preds = %codeRepl, %9
  %indvar_flatten = phi i19 [ 0, %codeRepl ], [ %indvar_flatten_next, %9 ]
  %y = phi i10 [ 0, %codeRepl ], [ %y_mid2, %9 ]
  %x = phi i10 [ 0, %codeRepl ], [ %x_1, %9 ]
  %exitcond_flatten = icmp eq i19 %indvar_flatten, -104288
  %indvar_flatten_next = add i19 %indvar_flatten, 1
  br i1 %exitcond_flatten, label %10, label %.preheader.preheader

; <label>:0                                       ; preds = %.preheader.preheader
  br i1 %selftest_read, label %3, label %1

; <label>:1                                       ; preds = %0
  br i1 %tmp, label %2, label %get_checkerboard_color.exit.pre

; <label>:2                                       ; preds = %1
  %tmp_V = call i8 @_ssdm_op_Read.axis.volatile.i8P(i8* %inStream_V_V)
  %R_temp_V = call i4 @_ssdm_op_PartSelect.i4.i8.i32.i32(i8 %tmp_V, i32 4, i32 7)
  store i4 %R_temp_V, i4* %B_temp_V_read_assign
  store i4 %R_temp_V, i4* %G_temp_V_read_assign
  store i4 %R_temp_V, i4* %R_temp_V_read_assign
  br label %get_checkerboard_color.exit

; <label>:3                                       ; preds = %0
  %tmp_6 = call i1 @_ssdm_op_BitSelect.i1.i10.i32(i10 %p_Val2_1, i32 5)
  %tmp_7 = call i1 @_ssdm_op_BitSelect.i1.i11.i32(i11 %p_Val2_s, i32 5)
  %tmp_1_i = zext i1 %tmp_7 to i19
  %tmp_2_i = call i21 @_ssdm_op_BitConcatenate.i21.i1.i19.i1(i1 false, i19 %tmp_1_i, i1 %tmp_6)
  switch i21 %tmp_2_i, label %get_checkerboard_color.exit [
    i21 0, label %4
    i21 1, label %5
    i21 2, label %6
    i21 3, label %7
  ]

; <label>:4                                       ; preds = %3
  store i4 0, i4* %B_temp_V_read_assign
  store i4 0, i4* %G_temp_V_read_assign
  store i4 %op2_V_read_assign, i4* %R_temp_V_read_assign
  br label %get_checkerboard_color.exit

; <label>:5                                       ; preds = %3
  store i4 %tmp_6_i, i4* %B_temp_V_read_assign
  store i4 0, i4* %G_temp_V_read_assign
  store i4 0, i4* %R_temp_V_read_assign
  br label %get_checkerboard_color.exit

; <label>:6                                       ; preds = %3
  store i4 %tmp_6_i, i4* %B_temp_V_read_assign
  store i4 0, i4* %G_temp_V_read_assign
  store i4 0, i4* %R_temp_V_read_assign
  br label %get_checkerboard_color.exit

; <label>:7                                       ; preds = %3
  store i4 0, i4* %B_temp_V_read_assign
  store i4 0, i4* %G_temp_V_read_assign
  store i4 %op2_V_read_assign, i4* %R_temp_V_read_assign
  br label %get_checkerboard_color.exit

get_checkerboard_color.exit.pre:                  ; preds = %1
  store i4 0, i4* %B_temp_V_read_assign
  store i4 0, i4* %G_temp_V_read_assign
  store i4 -1, i4* %R_temp_V_read_assign
  br label %get_checkerboard_color.exit

get_checkerboard_color.exit:                      ; preds = %get_checkerboard_color.exit.pre, %7, %6, %5, %4, %3, %2
  %R_temp_V_read_assign_load = load i4* %R_temp_V_read_assign
  %G_temp_V_read_assign_load = load i4* %G_temp_V_read_assign
  %B_temp_V_read_assign_load = load i4* %B_temp_V_read_assign
  call void @_ssdm_op_Write.ap_none.volatile.i4P(i4* %R_V, i4 %R_temp_V_read_assign_load)
  call void @_ssdm_op_Write.ap_none.volatile.i4P(i4* %G_V, i4 %G_temp_V_read_assign_load)
  call void @_ssdm_op_Write.ap_none.volatile.i4P(i4* %B_V, i4 %B_temp_V_read_assign_load)
  call void @_ssdm_op_Write.ap_none.volatile.i1P(i1* %V_SYNC_V, i1 %icmp)
  call void @_ssdm_op_Write.ap_none.volatile.i1P(i1* %H_SYNC_V, i1 %not_1)
  br label %9

; <label>:8                                       ; preds = %.preheader.preheader
  call void @_ssdm_op_Write.ap_none.volatile.i4P(i4* %R_V, i4 0)
  call void @_ssdm_op_Write.ap_none.volatile.i4P(i4* %G_V, i4 0)
  call void @_ssdm_op_Write.ap_none.volatile.i4P(i4* %B_V, i4 0)
  call void @_ssdm_op_Write.ap_none.volatile.i1P(i1* %V_SYNC_V, i1 %icmp)
  call void @_ssdm_op_Write.ap_none.volatile.i1P(i1* %H_SYNC_V, i1 %not_1)
  br label %9

; <label>:9                                       ; preds = %8, %get_checkerboard_color.exit
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str3, i32 %tmp_9)
  %x_1 = add i10 %x_mid2, 1
  br label %.preheader

.preheader.preheader:                             ; preds = %.preheader
  %empty_7 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 420000, i64 420000, i64 420000)
  %exitcond4 = icmp eq i10 %x, -224
  %x_mid2 = select i1 %exitcond4, i10 0, i10 %x
  %y_s = add i10 %y, 1
  %y_mid2 = select i1 %exitcond4, i10 %y_s, i10 %y
  %p_Val2_1 = add i10 %y_mid2, -35
  %tmp_3 = call i9 @_ssdm_op_PartSelect.i9.i10.i32.i32(i10 %y_mid2, i32 1, i32 9)
  %icmp = icmp ne i9 %tmp_3, 0
  %tmp_1 = icmp ugt i10 %y_mid2, 34
  %tmp_2 = icmp ult i10 %y_mid2, -509
  %tmp2 = and i1 %tmp_1, %tmp_2
  %tmp_9 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str3)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind
  %tmp_3_cast = zext i10 %x_mid2 to i11
  %p_Val2_s = add i11 %tmp_3_cast, -144
  %not_1 = icmp ugt i10 %x_mid2, 95
  %tmp_4 = icmp ugt i10 %x_mid2, 143
  %tmp_5 = icmp ult i10 %x_mid2, -240
  %tmp1 = and i1 %tmp_4, %tmp_5
  %or_cond2 = and i1 %tmp2, %tmp1
  br i1 %or_cond2, label %0, label %8

; <label>:10                                      ; preds = %.preheader
  ret void
}

define weak void @_ssdm_op_Write.ap_none.volatile.i4P(i4*, i4) {
entry:
  store i4 %1, i4* %0
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

define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

define weak i8 @_ssdm_op_Read.axis.volatile.i8P(i8*) {
entry:
  %empty = load i8* %0
  ret i8 %empty
}

define weak i1 @_ssdm_op_Read.ap_none.i1(i1) {
entry:
  ret i1 %0
}

define weak i9 @_ssdm_op_PartSelect.i9.i10.i32.i32(i10, i32, i32) nounwind readnone {
entry:
  %empty = call i10 @llvm.part.select.i10(i10 %0, i32 %1, i32 %2)
  %empty_8 = trunc i10 %empty to i9
  ret i9 %empty_8
}

define weak i4 @_ssdm_op_PartSelect.i4.i8.i32.i32(i8, i32, i32) nounwind readnone {
entry:
  %empty = call i8 @llvm.part.select.i8(i8 %0, i32 %1, i32 %2)
  %empty_9 = trunc i8 %empty to i4
  ret i4 %empty_9
}

define weak i1 @_ssdm_op_NbReadReq.axis.i8P(i8*, i32) {
entry:
  ret i1 true
}

declare i16 @_ssdm_op_HSub(...)

declare i16 @_ssdm_op_HMul(...)

declare i16 @_ssdm_op_HDiv(...)

declare i16 @_ssdm_op_HAdd(...)

define weak i1 @_ssdm_op_BitSelect.i1.i11.i32(i11, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i11
  %empty_10 = shl i11 1, %empty
  %empty_11 = and i11 %0, %empty_10
  %empty_12 = icmp ne i11 %empty_11, 0
  ret i1 %empty_12
}

define weak i1 @_ssdm_op_BitSelect.i1.i10.i32(i10, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i10
  %empty_13 = shl i10 1, %empty
  %empty_14 = and i10 %0, %empty_13
  %empty_15 = icmp ne i10 %empty_14, 0
  ret i1 %empty_15
}

define weak i21 @_ssdm_op_BitConcatenate.i21.i1.i19.i1(i1, i19, i1) nounwind readnone {
entry:
  %empty = zext i19 %1 to i20
  %empty_16 = zext i1 %2 to i20
  %empty_17 = shl i20 %empty, 1
  %empty_18 = or i20 %empty_17, %empty_16
  %empty_19 = zext i1 %0 to i21
  %empty_20 = zext i20 %empty_18 to i21
  %empty_21 = shl i21 %empty_19, 20
  %empty_22 = or i21 %empty_21, %empty_20
  ret i21 %empty_22
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
!10 = metadata !{metadata !"selftest", metadata !11, metadata !"bool", i32 0, i32 0}
!11 = metadata !{metadata !12}
!12 = metadata !{i32 0, i32 0, i32 0}
!13 = metadata !{metadata !14}
!14 = metadata !{i32 0, i32 7, metadata !15}
!15 = metadata !{metadata !16}
!16 = metadata !{metadata !"inStream.V.V", metadata !5, metadata !"uint8", i32 0, i32 7}
!17 = metadata !{metadata !18}
!18 = metadata !{i32 0, i32 3, metadata !19}
!19 = metadata !{metadata !20}
!20 = metadata !{metadata !"R.V", metadata !5, metadata !"uint4", i32 0, i32 3}
!21 = metadata !{metadata !22}
!22 = metadata !{i32 0, i32 3, metadata !23}
!23 = metadata !{metadata !24}
!24 = metadata !{metadata !"G.V", metadata !5, metadata !"uint4", i32 0, i32 3}
!25 = metadata !{metadata !26}
!26 = metadata !{i32 0, i32 3, metadata !27}
!27 = metadata !{metadata !28}
!28 = metadata !{metadata !"B.V", metadata !5, metadata !"uint4", i32 0, i32 3}
!29 = metadata !{metadata !30}
!30 = metadata !{i32 0, i32 0, metadata !31}
!31 = metadata !{metadata !32}
!32 = metadata !{metadata !"V_SYNC.V", metadata !5, metadata !"uint1", i32 0, i32 0}
!33 = metadata !{metadata !34}
!34 = metadata !{i32 0, i32 0, metadata !35}
!35 = metadata !{metadata !36}
!36 = metadata !{metadata !"H_SYNC.V", metadata !5, metadata !"uint1", i32 0, i32 0}
