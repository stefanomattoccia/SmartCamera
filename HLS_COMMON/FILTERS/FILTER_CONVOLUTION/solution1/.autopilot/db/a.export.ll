; ModuleID = 'D:/000_OFFICIAL_OV_VISION_PIPELINE_2016/HLS_COMMON/FILTERS/FILTER_CONVOLUTION/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@window_V_2_2 = internal unnamed_addr global i8 0
@window_V_2_1 = internal unnamed_addr global i8 0
@window_V_1_2 = internal unnamed_addr global i8 0
@window_V_1_1 = internal unnamed_addr global i8 0
@window_V_0_2 = internal unnamed_addr global i8 0
@window_V_0_1 = internal unnamed_addr global i8 0
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@line_buffer_V_1 = internal unnamed_addr global [640 x i8] zeroinitializer
@line_buffer_V_0 = internal unnamed_addr global [640 x i8] zeroinitializer
@SumF = internal unnamed_addr constant [8 x i5] [i5 1, i5 9, i5 5, i5 -16, i5 8, i5 8, i5 1, i5 10]
@Offset = internal unnamed_addr constant [8 x i8] c"\00\00\00\00\00\00\00\80"
@M_2_2 = internal unnamed_addr constant [8 x i2] [i2 0, i2 1, i2 0, i2 1, i2 1, i2 1, i2 0, i2 -2]
@M_2_1 = internal unnamed_addr constant [8 x i3] [i3 0, i3 1, i3 1, i3 2, i3 0, i3 2, i3 -1, i3 1]
@M_2_0 = internal unnamed_addr constant [8 x i2] [i2 0, i2 1, i2 0, i2 1, i2 -1, i2 1, i2 0, i2 0]
@M_1_2 = internal unnamed_addr constant [8 x i3] [i3 0, i3 1, i3 1, i3 2, i3 2, i3 0, i3 -1, i3 1]
@M_1_1 = internal unnamed_addr constant [8 x i3] [i3 1, i3 1, i3 1, i3 -4, i3 0, i3 0, i3 -3, i3 1]
@M_1_0 = internal unnamed_addr constant [8 x i3] [i3 0, i3 1, i3 1, i3 2, i3 -2, i3 0, i3 -1, i3 -1]
@M_0_2 = internal unnamed_addr constant [8 x i2] [i2 0, i2 1, i2 0, i2 1, i2 1, i2 -1, i2 0, i2 0]
@M_0_1 = internal unnamed_addr constant [8 x i3] [i3 0, i3 1, i3 1, i3 2, i3 0, i3 -2, i3 -1, i3 -1]
@M_0_0 = internal unnamed_addr constant [8 x i2] [i2 0, i2 1, i2 0, i2 1, i2 -1, i2 -1, i2 0, i2 -2]
@Loop_row_Loop_col_str = internal unnamed_addr constant [18 x i8] c"Loop_row_Loop_col\00"
@Filter_Convolution_str = internal unnamed_addr constant [19 x i8] c"Filter_Convolution\00"
@p_str7 = private unnamed_addr constant [9 x i8] c"Loop_col\00", align 1
@p_str4 = private unnamed_addr constant [5 x i8] c"axis\00", align 1
@p_str3 = private unnamed_addr constant [8 x i8] c"ap_none\00", align 1
@p_str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define weak void @_ssdm_op_Write.axis.volatile.i8P(i8*, i8) {
entry:
  store i8 %1, i8* %0
  ret void
}

define weak void @_ssdm_op_SpecTopModule(...) {
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

define weak void @_ssdm_op_SpecLoopName(...) nounwind {
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

define weak i8 @_ssdm_op_Read.axis.volatile.i8P(i8*) {
entry:
  %empty = load i8* %0
  ret i8 %empty
}

define weak i3 @_ssdm_op_Read.ap_none.i3(i3) {
entry:
  ret i3 %0
}

declare i8 @_ssdm_op_PartSelect.i8.i14.i32.i32(i14, i32, i32) nounwind readnone

declare void @_GLOBAL__I_a() nounwind

define void @Filter_Convolution(i3 %id_filter_V, i8* %in_img_V, i8* %out_img_V) {
.preheader55.preheader:
  %in_temp_V_1 = alloca i8
  %window_V_1_2_loc_1 = alloca i8
  %window_V_0_2_loc_1 = alloca i8
  call void (...)* @_ssdm_op_SpecBitsMap(i3 %id_filter_V), !map !7
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %in_img_V), !map !13
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %out_img_V), !map !19
  call void (...)* @_ssdm_op_SpecTopModule([19 x i8]* @Filter_Convolution_str) nounwind
  %id_filter_V_read = call i3 @_ssdm_op_Read.ap_none.i3(i3 %id_filter_V)
  call void (...)* @_ssdm_op_SpecInterface(i3 %id_filter_V, [8 x i8]* @p_str3, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %out_img_V, [5 x i8]* @p_str4, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i8* %in_img_V, [5 x i8]* @p_str4, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str)
  %window_V_0_2_load = load i8* @window_V_0_2, align 1
  %window_V_1_2_load = load i8* @window_V_1_2, align 1
  %window_V_2_2_load = load i8* @window_V_2_2, align 1
  %tmp_1 = zext i3 %id_filter_V_read to i64
  %M_0_0_addr = getelementptr [8 x i2]* @M_0_0, i64 0, i64 %tmp_1
  %M_0_0_load = load i2* %M_0_0_addr, align 1
  %tmp_7_cast = sext i2 %M_0_0_load to i10
  %M_0_1_addr = getelementptr [8 x i3]* @M_0_1, i64 0, i64 %tmp_1
  %M_0_1_load = load i3* %M_0_1_addr, align 1
  %tmp_28_0_1 = sext i3 %M_0_1_load to i11
  %M_0_2_addr = getelementptr [8 x i2]* @M_0_2, i64 0, i64 %tmp_1
  %M_0_2_load = load i2* %M_0_2_addr, align 1
  %tmp_28_0_2_cast = sext i2 %M_0_2_load to i10
  %M_1_0_addr = getelementptr [8 x i3]* @M_1_0, i64 0, i64 %tmp_1
  %M_1_0_load = load i3* %M_1_0_addr, align 1
  %tmp_28_1 = sext i3 %M_1_0_load to i11
  %M_1_1_addr = getelementptr [8 x i3]* @M_1_1, i64 0, i64 %tmp_1
  %M_1_1_load = load i3* %M_1_1_addr, align 1
  %tmp_28_1_1_cast = zext i3 %M_1_1_load to i11
  %M_1_2_addr = getelementptr [8 x i3]* @M_1_2, i64 0, i64 %tmp_1
  %M_1_2_load = load i3* %M_1_2_addr, align 1
  %tmp_28_1_2_cast = sext i3 %M_1_2_load to i11
  %M_2_0_addr = getelementptr [8 x i2]* @M_2_0, i64 0, i64 %tmp_1
  %M_2_0_load = load i2* %M_2_0_addr, align 1
  %tmp_28_2_cast = sext i2 %M_2_0_load to i10
  %M_2_1_addr = getelementptr [8 x i3]* @M_2_1, i64 0, i64 %tmp_1
  %M_2_1_load = load i3* %M_2_1_addr, align 1
  %tmp_28_2_1 = sext i3 %M_2_1_load to i11
  %M_2_2_addr = getelementptr [8 x i2]* @M_2_2, i64 0, i64 %tmp_1
  %M_2_2_load = load i2* %M_2_2_addr, align 1
  %tmp_28_2_2_cast = zext i2 %M_2_2_load to i10
  %SumF_addr = getelementptr [8 x i5]* @SumF, i64 0, i64 %tmp_1
  %SumF_load = load i5* %SumF_addr, align 1
  %i_op_assign_3_tr_tr_tr_cast = zext i5 %SumF_load to i14
  %Offset_addr = getelementptr [8 x i8]* @Offset, i64 0, i64 %tmp_1
  %Offset_load = load i8* %Offset_addr, align 1
  store i8 %window_V_0_2_load, i8* %window_V_0_2_loc_1
  store i8 %window_V_1_2_load, i8* %window_V_1_2_loc_1
  store i8 %window_V_2_2_load, i8* %in_temp_V_1
  br label %0

; <label>:0                                       ; preds = %.preheader55.preheader, %._crit_edge65
  %indvar_flatten = phi i19 [ 0, %.preheader55.preheader ], [ %indvar_flatten_next, %._crit_edge65 ]
  %row = phi i9 [ 0, %.preheader55.preheader ], [ %row_mid2, %._crit_edge65 ]
  %col = phi i10 [ 0, %.preheader55.preheader ], [ %col_1, %._crit_edge65 ]
  %in_temp_V_1_load = load i8* %in_temp_V_1
  %window_V_1_2_loc_1_load = load i8* %window_V_1_2_loc_1
  %window_V_0_2_loc_1_load = load i8* %window_V_0_2_loc_1
  %exitcond_flatten = icmp eq i19 %indvar_flatten, -215967
  %indvar_flatten_next = add i19 %indvar_flatten, 1
  br i1 %exitcond_flatten, label %2, label %.reset

.preheader47.preheader:                           ; preds = %.reset
  %tmp_6 = zext i10 %col_mid2 to i64
  %line_buffer_V_0_addr = getelementptr [640 x i8]* @line_buffer_V_0, i64 0, i64 %tmp_6
  %line_buffer_V_0_load = load i8* %line_buffer_V_0_addr, align 1
  %line_buffer_V_1_addr = getelementptr [640 x i8]* @line_buffer_V_1, i64 0, i64 %tmp_6
  %line_buffer_V_1_load = load i8* %line_buffer_V_1_addr, align 1
  store i8 %line_buffer_V_0_load, i8* @window_V_0_2, align 1
  store i8 %line_buffer_V_1_load, i8* @window_V_1_2, align 1
  store i8 %line_buffer_V_1_load, i8* %line_buffer_V_0_addr, align 1
  store i8 %line_buffer_V_0_load, i8* %window_V_0_2_loc_1
  store i8 %line_buffer_V_1_load, i8* %window_V_1_2_loc_1
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader47.preheader, %.reset
  %tmp_s = and i1 %tmp_4, %tmp_mid2
  br i1 %tmp_s, label %1, label %.loopexit._crit_edge

; <label>:1                                       ; preds = %.loopexit
  %in_temp_V = call i8 @_ssdm_op_Read.axis.volatile.i8P(i8* %in_img_V)
  store i8 %in_temp_V, i8* @window_V_2_2, align 1
  %tmp_9 = zext i10 %col_mid2 to i64
  %line_buffer_V_1_addr_1 = getelementptr [640 x i8]* @line_buffer_V_1, i64 0, i64 %tmp_9
  store i8 %in_temp_V, i8* %line_buffer_V_1_addr_1, align 1
  store i8 %in_temp_V, i8* %in_temp_V_1
  br label %.loopexit._crit_edge

.loopexit._crit_edge:                             ; preds = %1, %.loopexit
  %tmp_8 = icmp ne i10 %col_mid2, 0
  %or_cond = and i1 %tmp_2_mid2, %tmp_8
  br i1 %or_cond, label %mediaPixel.exit, label %._crit_edge65

mediaPixel.exit:                                  ; preds = %.loopexit._crit_edge
  %in_temp_V_1_load_1 = load i8* %in_temp_V_1
  %window_V_1_2_loc_1_load_1 = load i8* %window_V_1_2_loc_1
  %window_V_0_2_loc_1_load_1 = load i8* %window_V_0_2_loc_1
  %tmp_3_cast = zext i8 %window_V_0_1_load to i10
  %tmp_3 = mul i10 %tmp_3_cast, %tmp_7_cast
  %tmp_11_cast = sext i10 %tmp_3 to i11
  %tmp_27_0_1 = zext i8 %window_V_0_2_loc_1_load to i11
  %tmp_29_0_1 = mul i11 %tmp_27_0_1, %tmp_28_0_1
  %tmp_27_0_2_cast = zext i8 %window_V_0_2_loc_1_load_1 to i10
  %tmp_29_0_2 = mul i10 %tmp_27_0_2_cast, %tmp_28_0_2_cast
  %tmp_29_0_2_cast = sext i10 %tmp_29_0_2 to i11
  %tmp_27_1 = zext i8 %window_V_1_1_load to i11
  %tmp_29_1 = mul i11 %tmp_27_1, %tmp_28_1
  %tmp_27_1_1_cast = zext i8 %window_V_1_2_loc_1_load to i11
  %tmp_29_1_1 = mul i11 %tmp_27_1_1_cast, %tmp_28_1_1_cast
  %tmp_29_1_1_cast = zext i11 %tmp_29_1_1 to i12
  %tmp_27_1_2_cast = zext i8 %window_V_1_2_loc_1_load_1 to i11
  %tmp_29_1_2 = mul i11 %tmp_27_1_2_cast, %tmp_28_1_2_cast
  %tmp_29_1_2_cast = sext i11 %tmp_29_1_2 to i12
  %tmp_27_2_cast = zext i8 %window_V_2_1_load to i10
  %tmp_29_2 = mul i10 %tmp_27_2_cast, %tmp_28_2_cast
  %tmp_29_2_cast = sext i10 %tmp_29_2 to i12
  %tmp_27_2_1 = zext i8 %in_temp_V_1_load to i11
  %tmp_29_2_1 = mul i11 %tmp_27_2_1, %tmp_28_2_1
  %tmp_27_2_2_cast = zext i8 %in_temp_V_1_load_1 to i10
  %tmp_29_2_2 = mul i10 %tmp_27_2_2_cast, %tmp_28_2_2_cast
  %tmp_29_2_2_cast = zext i10 %tmp_29_2_2 to i11
  %tmp2 = add i11 %tmp_29_0_1, %tmp_11_cast
  %tmp2_cast = sext i11 %tmp2 to i12
  %tmp3 = add i11 %tmp_29_1, %tmp_29_0_2_cast
  %tmp3_cast = sext i11 %tmp3 to i12
  %tmp1 = add i12 %tmp2_cast, %tmp3_cast
  %tmp1_cast = sext i12 %tmp1 to i14
  %tmp5 = add i12 %tmp_29_1_2_cast, %tmp_29_1_1_cast
  %tmp5_cast = sext i12 %tmp5 to i13
  %tmp7 = add i11 %tmp_29_2_2_cast, %tmp_29_2_1
  %tmp7_cast = sext i11 %tmp7 to i12
  %tmp6 = add i12 %tmp_29_2_cast, %tmp7_cast
  %tmp6_cast = sext i12 %tmp6 to i13
  %tmp4 = add i13 %tmp5_cast, %tmp6_cast
  %tmp4_cast = sext i13 %tmp4 to i14
  %out_temp_V_215_2 = add i14 %tmp1_cast, %tmp4_cast
  %tmp_7 = sdiv i14 %out_temp_V_215_2, %i_op_assign_3_tr_tr_tr_cast
  %tmp = trunc i14 %tmp_7 to i8
  %tmp_10 = add i8 %tmp, %Offset_load
  call void @_ssdm_op_Write.axis.volatile.i8P(i8* %out_img_V, i8 %tmp_10)
  br label %._crit_edge65

._crit_edge65:                                    ; preds = %mediaPixel.exit, %.loopexit._crit_edge
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([9 x i8]* @p_str7, i32 %tmp_5)
  %col_1 = add i10 %col_mid2, 1
  br label %0

.reset:                                           ; preds = %0
  call void (...)* @_ssdm_op_SpecLoopName([18 x i8]* @Loop_row_Loop_col_str)
  %empty_3 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 308321, i64 308321, i64 308321)
  %exitcond = icmp eq i10 %col, -383
  %col_mid2 = select i1 %exitcond, i10 0, i10 %col
  %row_s = add i9 %row, 1
  %tmp_mid1 = icmp ult i9 %row_s, -32
  %tmp8 = icmp ult i9 %row, -32
  %tmp_mid2 = select i1 %exitcond, i1 %tmp_mid1, i1 %tmp8
  %tmp_2_mid1 = icmp ne i9 %row_s, 0
  %tmp_2 = icmp ne i9 %row, 0
  %tmp_2_mid2 = select i1 %exitcond, i1 %tmp_2_mid1, i1 %tmp_2
  %row_mid2 = select i1 %exitcond, i9 %row_s, i9 %row
  call void (...)* @_ssdm_op_SpecLoopName([9 x i8]* @p_str7) nounwind
  %tmp_5 = call i32 (...)* @_ssdm_op_SpecRegionBegin([9 x i8]* @p_str7)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind
  %window_V_0_1_load = load i8* @window_V_0_1, align 1
  store i8 %window_V_0_2_loc_1_load, i8* @window_V_0_1, align 1
  %window_V_1_1_load = load i8* @window_V_1_1, align 1
  store i8 %window_V_1_2_loc_1_load, i8* @window_V_1_1, align 1
  %window_V_2_1_load = load i8* @window_V_2_1, align 1
  store i8 %in_temp_V_1_load, i8* @window_V_2_1, align 1
  %tmp_4 = icmp ult i10 %col_mid2, -384
  br i1 %tmp_4, label %.preheader47.preheader, label %.loopexit

; <label>:2                                       ; preds = %0
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
!8 = metadata !{i32 0, i32 2, metadata !9}
!9 = metadata !{metadata !10}
!10 = metadata !{metadata !"id_filter.V", metadata !11, metadata !"uint3", i32 0, i32 2}
!11 = metadata !{metadata !12}
!12 = metadata !{i32 0, i32 0, i32 0}
!13 = metadata !{metadata !14}
!14 = metadata !{i32 0, i32 7, metadata !15}
!15 = metadata !{metadata !16}
!16 = metadata !{metadata !"in_img.V", metadata !17, metadata !"uint8", i32 0, i32 7}
!17 = metadata !{metadata !18}
!18 = metadata !{i32 0, i32 307199, i32 1}
!19 = metadata !{metadata !20}
!20 = metadata !{i32 0, i32 7, metadata !21}
!21 = metadata !{metadata !22}
!22 = metadata !{metadata !"out_img.V", metadata !17, metadata !"uint8", i32 0, i32 7}
