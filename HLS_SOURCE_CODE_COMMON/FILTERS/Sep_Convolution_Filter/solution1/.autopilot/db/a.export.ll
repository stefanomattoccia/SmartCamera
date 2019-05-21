; ModuleID = 'C:/Users/Luca/Desktop/ProgettoVivado/OV_7670/HLS_COMMON/FILTERS/Sep_Convolution_Filter/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@window_V_6 = internal unnamed_addr global i8 0
@window_V_5 = internal unnamed_addr global i8 0
@window_V_4 = internal unnamed_addr global i8 0
@window_V_3 = internal unnamed_addr global i8 0
@window_V_2 = internal unnamed_addr global i8 0
@window_V_1 = internal unnamed_addr global i8 0
@window_V_0 = internal unnamed_addr global i8 0
@sep_convolution_filter_str = internal unnamed_addr constant [23 x i8] c"sep_convolution_filter\00"
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@line_buffer_V_5 = internal unnamed_addr global [640 x i8] zeroinitializer
@line_buffer_V_4 = internal unnamed_addr global [640 x i8] zeroinitializer
@line_buffer_V_3 = internal unnamed_addr global [640 x i8] zeroinitializer
@line_buffer_V_2 = internal unnamed_addr global [640 x i8] zeroinitializer
@line_buffer_V_1 = internal unnamed_addr global [640 x i8] zeroinitializer
@line_buffer_V_0 = internal unnamed_addr global [640 x i8] zeroinitializer
@kernel_v_V_6 = internal unnamed_addr global i8 0
@kernel_v_V_5 = internal unnamed_addr global i8 0
@kernel_v_V_4 = internal unnamed_addr global i8 0
@kernel_v_V_3 = internal unnamed_addr global i8 0
@kernel_v_V_2 = internal unnamed_addr global i8 0
@kernel_v_V_1 = internal unnamed_addr global i8 0
@kernel_v_V_0 = internal unnamed_addr global i8 0
@kernel_sum_V = internal unnamed_addr global i8 1
@kernel_off_V = internal unnamed_addr global i8 0
@kernel_h_V_6 = internal unnamed_addr global i8 0
@kernel_h_V_5 = internal unnamed_addr global i8 0
@kernel_h_V_4 = internal unnamed_addr global i8 0
@kernel_h_V_3 = internal unnamed_addr global i8 0
@kernel_h_V_2 = internal unnamed_addr global i8 0
@kernel_h_V_1 = internal unnamed_addr global i8 0
@kernel_h_V_0 = internal unnamed_addr global i8 0
@kernel_bit_shift_V = internal unnamed_addr global i8 0
@convolution_buffer_V_6 = internal unnamed_addr global i19 0
@convolution_buffer_V_5 = internal unnamed_addr global i19 0
@convolution_buffer_V_4 = internal unnamed_addr global i19 0
@convolution_buffer_V_3 = internal unnamed_addr global i19 0
@convolution_buffer_V_2 = internal unnamed_addr global i19 0
@convolution_buffer_V_1 = internal unnamed_addr global i19 0
@Loop_row_Loop_col_str = internal unnamed_addr constant [18 x i8] c"Loop_row_Loop_col\00"
@p_str7 = private unnamed_addr constant [9 x i8] c"Loop_col\00", align 1
@p_str4 = private unnamed_addr constant [5 x i8] c"axis\00", align 1
@p_str3 = private unnamed_addr constant [8 x i8] c"ap_ovld\00", align 1
@p_str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

define void @sep_convolution_filter([52 x i8]* %kernel_config_V, i8* %in_img_V, i8* %out_img_V) {
.preheader61.preheader:
  %kernel_h_V_0_loc_1 = alloca i8
  %sep_convolution_filter_ap_int_2 = alloca i32
  %sep_convolution_filter_ap_int_1 = alloca i32
  call void (...)* @_ssdm_op_SpecBitsMap([52 x i8]* %kernel_config_V), !map !7
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %in_img_V), !map !13
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %out_img_V), !map !19
  call void (...)* @_ssdm_op_SpecTopModule([23 x i8]* @sep_convolution_filter_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface([52 x i8]* %kernel_config_V, [8 x i8]* @p_str3, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %out_img_V, [5 x i8]* @p_str4, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str)
  call void (...)* @_ssdm_op_SpecInterface(i8* %in_img_V, [5 x i8]* @p_str4, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str, [1 x i8]* @p_str, [1 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str)
  %kernel_config_V_addr = getelementptr [52 x i8]* %kernel_config_V, i64 0, i64 49
  %kernel_config_V_addr_1 = getelementptr [52 x i8]* %kernel_config_V, i64 0, i64 50
  %kernel_config_V_addr_2 = getelementptr [52 x i8]* %kernel_config_V, i64 0, i64 51
  %kernel_h_V_0_load = load i8* @kernel_h_V_0, align 1
  store i32 0, i32* %sep_convolution_filter_ap_int_1
  store i32 0, i32* %sep_convolution_filter_ap_int_2
  store i8 %kernel_h_V_0_load, i8* %kernel_h_V_0_loc_1
  br label %0

; <label>:0                                       ; preds = %.preheader61.preheader, %._crit_edge84
  %indvar_flatten = phi i19 [ 0, %.preheader61.preheader ], [ %indvar_flatten_next, %._crit_edge84 ]
  %sep_mulconvolution_filter_ap_int = phi i19 [ 0, %.preheader61.preheader ], [ %sep_convolution_filter_ap_int_7, %._crit_edge84 ]
  %row = phi i9 [ 0, %.preheader61.preheader ], [ %row_mid2, %._crit_edge84 ]
  %sep_convolution_filter_ap_int_3 = phi i19 [ 0, %.preheader61.preheader ], [ %tmp_30, %._crit_edge84 ]
  %col = phi i10 [ 0, %.preheader61.preheader ], [ %col_1, %._crit_edge84 ]
  %exitcond_flatten = icmp eq i19 %indvar_flatten, -213719
  %indvar_flatten_next = add i19 %indvar_flatten, 1
  br i1 %exitcond_flatten, label %18, label %.reset

._crit_edge79:                                    ; preds = %.reset
  %sep_convolution_filter_ap_int_4 = load i32* %sep_convolution_filter_ap_int_2
  %sep_convolution_filter_ap_int_5 = load i32* %sep_convolution_filter_ap_int_1
  %tmp_5 = icmp sgt i32 %sep_convolution_filter_ap_int_4, 6
  %tmp_7 = add nsw i32 %sep_convolution_filter_ap_int_5, 1
  %sel_SEBB = select i1 %tmp_5, i32 %tmp_7, i32 %sep_convolution_filter_ap_int_5
  %sel_SEBB1 = select i1 %tmp_5, i32 0, i32 %sep_convolution_filter_ap_int_4
  %tmp_8 = icmp eq i32 %sel_SEBB, 0
  br i1 %tmp_8, label %1, label %4

; <label>:1                                       ; preds = %._crit_edge79
  %tmp_3 = zext i19 %sep_convolution_filter_ap_int_6 to i64
  %kernel_config_V_addr_3 = getelementptr [52 x i8]* %kernel_config_V, i64 0, i64 %tmp_3
  %kernel_config_V_load_1 = load i8* %kernel_config_V_addr_3, align 1
  %tmp_29 = trunc i32 %sel_SEBB1 to i3
  switch i3 %tmp_29, label %branch13 [
    i3 0, label %branch7
    i3 1, label %branch8
    i3 2, label %branch9
    i3 3, label %branch10
    i3 -4, label %branch11
    i3 -3, label %branch12
  ]

; <label>:2                                       ; preds = %branch13, %branch12, %branch11, %branch10, %branch9, %branch8, %branch7
  %tmp_10 = icmp eq i32 %sel_SEBB1, 0
  br i1 %tmp_10, label %3, label %._crit_edge80

; <label>:3                                       ; preds = %2
  %kernel_h_V_0_loc_1_load_1 = load i8* %kernel_h_V_0_loc_1
  store i8 %kernel_h_V_0_loc_1_load_1, i8* @kernel_v_V_0, align 1
  br label %._crit_edge80

._crit_edge80:                                    ; preds = %3, %2
  br label %7

; <label>:4                                       ; preds = %._crit_edge79
  %tmp_s = icmp eq i32 %sel_SEBB1, 0
  br i1 %tmp_s, label %5, label %._crit_edge81

; <label>:5                                       ; preds = %4
  %tmp_11 = zext i19 %sep_convolution_filter_ap_int_6 to i64
  %kernel_config_V_addr_4 = getelementptr [52 x i8]* %kernel_config_V, i64 0, i64 %tmp_11
  %kernel_config_V_load_3 = load i8* %kernel_config_V_addr_4, align 1
  %tmp_31 = trunc i32 %sel_SEBB to i3
  switch i3 %tmp_31, label %branch6 [
    i3 0, label %branch0
    i3 1, label %branch1
    i3 2, label %branch2
    i3 3, label %branch3
    i3 -4, label %branch4
    i3 -3, label %branch5
  ]

; <label>:6                                       ; preds = %branch6, %branch5, %branch4, %branch3, %branch2, %branch1, %branch0
  br label %._crit_edge81

._crit_edge81:                                    ; preds = %6, %4
  br label %7

; <label>:7                                       ; preds = %._crit_edge81, %._crit_edge80
  %tmp_14 = add nsw i32 %sel_SEBB1, 1
  store i32 %sel_SEBB, i32* %sep_convolution_filter_ap_int_1
  store i32 %tmp_14, i32* %sep_convolution_filter_ap_int_2
  br label %16

; <label>:8                                       ; preds = %.reset
  %tmp_6 = icmp eq i19 %sep_convolution_filter_ap_int_6, 49
  br i1 %tmp_6, label %9, label %10

; <label>:9                                       ; preds = %8
  %kernel_config_V_load = load i8* %kernel_config_V_addr, align 1
  store i8 %kernel_config_V_load, i8* @kernel_sum_V, align 1
  br label %15

; <label>:10                                      ; preds = %8
  %tmp_9 = icmp eq i19 %sep_convolution_filter_ap_int_6, 50
  br i1 %tmp_9, label %11, label %12

; <label>:11                                      ; preds = %10
  %kernel_config_V_load_2 = load i8* %kernel_config_V_addr_1, align 1
  store i8 %kernel_config_V_load_2, i8* @kernel_off_V, align 1
  br label %14

; <label>:12                                      ; preds = %10
  %tmp_12 = icmp eq i19 %sep_convolution_filter_ap_int_6, 51
  br i1 %tmp_12, label %13, label %._crit_edge82

; <label>:13                                      ; preds = %12
  %kernel_config_V_load_4 = load i8* %kernel_config_V_addr_2, align 1
  store i8 %kernel_config_V_load_4, i8* @kernel_bit_shift_V, align 1
  br label %._crit_edge82

._crit_edge82:                                    ; preds = %13, %12
  br label %14

; <label>:14                                      ; preds = %._crit_edge82, %11
  br label %15

; <label>:15                                      ; preds = %14, %9
  br label %16

; <label>:16                                      ; preds = %15, %7
  %tmp_15 = icmp ult i10 %col_mid2, -384
  br i1 %tmp_15, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %16
  %tmp_16 = zext i10 %col_mid2 to i64
  %line_buffer_V_0_addr = getelementptr [640 x i8]* @line_buffer_V_0, i64 0, i64 %tmp_16
  %line_buffer_V_0_load = load i8* %line_buffer_V_0_addr, align 1
  store i8 %line_buffer_V_0_load, i8* @window_V_0, align 1
  %line_buffer_V_1_addr = getelementptr [640 x i8]* @line_buffer_V_1, i64 0, i64 %tmp_16
  %line_buffer_V_1_load = load i8* %line_buffer_V_1_addr, align 1
  store i8 %line_buffer_V_1_load, i8* %line_buffer_V_0_addr, align 1
  store i8 %line_buffer_V_1_load, i8* @window_V_1, align 1
  %line_buffer_V_2_addr = getelementptr [640 x i8]* @line_buffer_V_2, i64 0, i64 %tmp_16
  %line_buffer_V_2_load = load i8* %line_buffer_V_2_addr, align 1
  store i8 %line_buffer_V_2_load, i8* %line_buffer_V_1_addr, align 1
  store i8 %line_buffer_V_2_load, i8* @window_V_2, align 1
  %line_buffer_V_3_addr = getelementptr [640 x i8]* @line_buffer_V_3, i64 0, i64 %tmp_16
  %line_buffer_V_3_load = load i8* %line_buffer_V_3_addr, align 1
  store i8 %line_buffer_V_3_load, i8* %line_buffer_V_2_addr, align 1
  store i8 %line_buffer_V_3_load, i8* @window_V_3, align 1
  %line_buffer_V_4_addr = getelementptr [640 x i8]* @line_buffer_V_4, i64 0, i64 %tmp_16
  %line_buffer_V_4_load = load i8* %line_buffer_V_4_addr, align 1
  store i8 %line_buffer_V_4_load, i8* %line_buffer_V_3_addr, align 1
  store i8 %line_buffer_V_4_load, i8* @window_V_4, align 1
  %line_buffer_V_5_addr = getelementptr [640 x i8]* @line_buffer_V_5, i64 0, i64 %tmp_16
  %line_buffer_V_5_load = load i8* %line_buffer_V_5_addr, align 1
  store i8 %line_buffer_V_5_load, i8* %line_buffer_V_4_addr, align 1
  store i8 %line_buffer_V_5_load, i8* @window_V_5, align 1
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.preheader, %16
  %or_cond = and i1 %tmp_15, %tmp_mid2
  br i1 %or_cond, label %17, label %.loopexit._crit_edge

; <label>:17                                      ; preds = %.loopexit
  %in_temp_V = call i8 @_ssdm_op_Read.axis.volatile.i8P(i8* %in_img_V)
  store i8 %in_temp_V, i8* @window_V_6, align 1
  %tmp_17 = zext i10 %col_mid2 to i64
  %line_buffer_V_5_addr_1 = getelementptr [640 x i8]* @line_buffer_V_5, i64 0, i64 %tmp_17
  store i8 %in_temp_V, i8* %line_buffer_V_5_addr_1, align 1
  br label %.loopexit._crit_edge

.loopexit._crit_edge:                             ; preds = %17, %.loopexit
  %tmp_18 = icmp ugt i10 %col_mid2, 2
  %or_cond1 = and i1 %tmp_2_mid2, %tmp_18
  br i1 %or_cond1, label %.preheader.i.preheader_ifconv, label %._crit_edge84

.preheader.i.preheader_ifconv:                    ; preds = %.loopexit._crit_edge
  %kernel_h_V_0_loc_1_load = load i8* %kernel_h_V_0_loc_1
  %kernel_sum_V_load = load i8* @kernel_sum_V, align 1
  %kernel_off_V_load = load i8* @kernel_off_V, align 1
  %p_Val2_s = load i8* @kernel_bit_shift_V, align 1
  %kernel_v_V_0_load = load i8* @kernel_v_V_0, align 1
  %lhs_V = sext i8 %kernel_v_V_0_load to i16
  %window_V_0_load = load i8* @window_V_0, align 1
  %rhs_V = zext i8 %window_V_0_load to i16
  %r_V = mul i16 %lhs_V, %rhs_V
  %tmp_20_cast = sext i16 %r_V to i17
  %kernel_v_V_1_load = load i8* @kernel_v_V_1, align 1
  %lhs_V_s = sext i8 %kernel_v_V_1_load to i16
  %window_V_1_load = load i8* @window_V_1, align 1
  %rhs_V_s = zext i8 %window_V_1_load to i16
  %r_V_s = mul i16 %lhs_V_s, %rhs_V_s
  %tmp_27_1_cast = sext i16 %r_V_s to i17
  %kernel_v_V_2_load = load i8* @kernel_v_V_2, align 1
  %lhs_V_2 = sext i8 %kernel_v_V_2_load to i16
  %window_V_2_load = load i8* @window_V_2, align 1
  %rhs_V_2 = zext i8 %window_V_2_load to i16
  %r_V_2 = mul i16 %lhs_V_2, %rhs_V_2
  %tmp_27_2_cast = sext i16 %r_V_2 to i17
  %kernel_v_V_3_load = load i8* @kernel_v_V_3, align 1
  %lhs_V_3 = sext i8 %kernel_v_V_3_load to i16
  %window_V_3_load = load i8* @window_V_3, align 1
  %rhs_V_3 = zext i8 %window_V_3_load to i16
  %r_V_3 = mul i16 %lhs_V_3, %rhs_V_3
  %tmp_27_3_cast = sext i16 %r_V_3 to i17
  %kernel_v_V_4_load = load i8* @kernel_v_V_4, align 1
  %lhs_V_4 = sext i8 %kernel_v_V_4_load to i16
  %window_V_4_load = load i8* @window_V_4, align 1
  %rhs_V_4 = zext i8 %window_V_4_load to i16
  %r_V_7 = mul i16 %lhs_V_4, %rhs_V_4
  %tmp_27_4_cast = sext i16 %r_V_7 to i18
  %kernel_v_V_5_load = load i8* @kernel_v_V_5, align 1
  %lhs_V_5 = sext i8 %kernel_v_V_5_load to i16
  %window_V_5_load = load i8* @window_V_5, align 1
  %rhs_V_5 = zext i8 %window_V_5_load to i16
  %r_V_5 = mul i16 %lhs_V_5, %rhs_V_5
  %tmp_27_5_cast = sext i16 %r_V_5 to i17
  %kernel_v_V_6_load = load i8* @kernel_v_V_6, align 1
  %lhs_V_6 = sext i8 %kernel_v_V_6_load to i16
  %window_V_6_load = load i8* @window_V_6, align 1
  %rhs_V_6 = zext i8 %window_V_6_load to i16
  %r_V_6 = mul i16 %lhs_V_6, %rhs_V_6
  %tmp_27_6_cast = sext i16 %r_V_6 to i17
  %tmp6 = add i17 %tmp_27_5_cast, %tmp_27_3_cast
  %tmp6_cast = sext i17 %tmp6 to i18
  %tmp5 = add i18 %tmp6_cast, %tmp_27_4_cast
  %tmp5_cast = sext i18 %tmp5 to i19
  %tmp8 = add i17 %tmp_20_cast, %tmp_27_2_cast
  %tmp8_cast = sext i17 %tmp8 to i18
  %tmp9 = add i17 %tmp_27_1_cast, %tmp_27_6_cast
  %tmp9_cast = sext i17 %tmp9 to i18
  %tmp7 = add i18 %tmp9_cast, %tmp8_cast
  %tmp7_cast = sext i18 %tmp7 to i19
  %temp_v_V_6 = add i19 %tmp7_cast, %tmp5_cast
  %convolution_buffer_V_1_load = load i19* @convolution_buffer_V_1, align 4
  %tmp_19 = sext i19 %convolution_buffer_V_1_load to i22
  %tmp_20 = sext i8 %kernel_h_V_0_loc_1_load to i22
  %tmp_21 = mul i22 %tmp_19, %tmp_20
  %convolution_buffer_V_2_load = load i19* @convolution_buffer_V_2, align 8
  store i19 %convolution_buffer_V_2_load, i19* @convolution_buffer_V_1, align 4
  %tmp_34_1 = sext i19 %convolution_buffer_V_2_load to i22
  %kernel_h_V_1_load = load i8* @kernel_h_V_1, align 1
  %tmp_35_1 = sext i8 %kernel_h_V_1_load to i22
  %tmp_36_1 = mul i22 %tmp_34_1, %tmp_35_1
  %convolution_buffer_V_3_load = load i19* @convolution_buffer_V_3, align 4
  store i19 %convolution_buffer_V_3_load, i19* @convolution_buffer_V_2, align 8
  %tmp_34_2 = sext i19 %convolution_buffer_V_3_load to i22
  %kernel_h_V_2_load = load i8* @kernel_h_V_2, align 1
  %tmp_35_2 = sext i8 %kernel_h_V_2_load to i22
  %tmp_36_2 = mul i22 %tmp_34_2, %tmp_35_2
  %convolution_buffer_V_4_load = load i19* @convolution_buffer_V_4, align 16
  store i19 %convolution_buffer_V_4_load, i19* @convolution_buffer_V_3, align 4
  %tmp_34_3 = sext i19 %convolution_buffer_V_4_load to i22
  %kernel_h_V_3_load = load i8* @kernel_h_V_3, align 1
  %tmp_35_3 = sext i8 %kernel_h_V_3_load to i22
  %tmp_36_3 = mul i22 %tmp_34_3, %tmp_35_3
  %convolution_buffer_V_5_load = load i19* @convolution_buffer_V_5, align 4
  store i19 %convolution_buffer_V_5_load, i19* @convolution_buffer_V_4, align 16
  %tmp_34_4 = sext i19 %convolution_buffer_V_5_load to i22
  %kernel_h_V_4_load = load i8* @kernel_h_V_4, align 1
  %tmp_35_4 = sext i8 %kernel_h_V_4_load to i22
  %tmp_36_4 = mul i22 %tmp_34_4, %tmp_35_4
  %convolution_buffer_V_6_load = load i19* @convolution_buffer_V_6, align 8
  store i19 %convolution_buffer_V_6_load, i19* @convolution_buffer_V_5, align 4
  %tmp_34_5 = sext i19 %convolution_buffer_V_6_load to i22
  %kernel_h_V_5_load = load i8* @kernel_h_V_5, align 1
  %tmp_35_5 = sext i8 %kernel_h_V_5_load to i22
  %tmp_36_5 = mul i22 %tmp_34_5, %tmp_35_5
  %tmp_22 = sext i19 %temp_v_V_6 to i22
  %kernel_h_V_6_load = load i8* @kernel_h_V_6, align 1
  %tmp_23 = sext i8 %kernel_h_V_6_load to i22
  %tmp_24 = mul i22 %tmp_22, %tmp_23
  %tmp1 = add i22 %tmp_36_1, %tmp_36_2
  %tmp2 = add i22 %tmp1, %tmp_21
  %tmp3 = add i22 %tmp_36_3, %tmp_36_4
  %tmp4 = add i22 %tmp_36_5, %tmp_24
  %tmp10 = add i22 %tmp4, %tmp3
  %temp_h_V = add i22 %tmp10, %tmp2
  store i19 %temp_v_V_6, i19* @convolution_buffer_V_6, align 8
  %tmp_32 = call i1 @_ssdm_op_BitSelect.i1.i8.i32(i8 %p_Val2_s, i32 7)
  %sh_V_1 = sub i8 0, %p_Val2_s
  %tmp_25 = sext i8 %kernel_sum_V_load to i32
  %tmp_26 = ashr i8 %kernel_sum_V_load, %sh_V_1
  %tmp_27 = zext i8 %p_Val2_s to i32
  %tmp_28 = shl i32 %tmp_25, %tmp_27
  %tmp_33 = trunc i32 %tmp_28 to i8
  %r_V_1 = select i1 %tmp_32, i8 %tmp_26, i8 %tmp_33
  %tmp_43_tr = sext i22 %temp_h_V to i23
  %tmp_44_tr = sext i8 %r_V_1 to i23
  %r_V_4 = sdiv i23 %tmp_43_tr, %tmp_44_tr
  %tmp_34 = trunc i23 %r_V_4 to i8
  %r_V_9 = add i8 %tmp_34, %kernel_off_V_load
  call void @_ssdm_op_Write.axis.volatile.i8P(i8* %out_img_V, i8 %r_V_9)
  br label %._crit_edge84

._crit_edge84:                                    ; preds = %.preheader.i.preheader_ifconv, %.loopexit._crit_edge
  %tmp_30 = add i19 %sep_convolution_filter_ap_int_6, 1
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([9 x i8]* @p_str7, i32 %tmp_13)
  %col_1 = add i10 %col_mid2, 1
  br label %0

.reset:                                           ; preds = %0
  call void (...)* @_ssdm_op_SpecLoopName([18 x i8]* @Loop_row_Loop_col_str)
  %empty_2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 310569, i64 310569, i64 310569)
  %tmp_1 = add i19 %sep_mulconvolution_filter_ap_int, 643
  %exitcond = icmp eq i10 %col, -381
  %sep_convolution_filter_ap_int_6 = select i1 %exitcond, i19 %tmp_1, i19 %sep_convolution_filter_ap_int_3
  %col_mid2 = select i1 %exitcond, i10 0, i10 %col
  %row_s = add i9 %row, 1
  %tmp_mid1 = icmp ult i9 %row_s, -32
  %tmp = icmp ult i9 %row, -32
  %tmp_mid2 = select i1 %exitcond, i1 %tmp_mid1, i1 %tmp
  %tmp_2_mid1 = icmp ugt i9 %row_s, 2
  %tmp_2 = icmp ugt i9 %row, 2
  %tmp_2_mid2 = select i1 %exitcond, i1 %tmp_2_mid1, i1 %tmp_2
  %sep_convolution_filter_ap_int_7 = select i1 %exitcond, i19 %tmp_1, i19 %sep_mulconvolution_filter_ap_int
  %row_mid2 = select i1 %exitcond, i9 %row_s, i9 %row
  call void (...)* @_ssdm_op_SpecLoopName([9 x i8]* @p_str7) nounwind
  %tmp_13 = call i32 (...)* @_ssdm_op_SpecRegionBegin([9 x i8]* @p_str7)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str) nounwind
  %tmp_4 = icmp ult i19 %sep_convolution_filter_ap_int_6, 49
  br i1 %tmp_4, label %._crit_edge79, label %8

; <label>:18                                      ; preds = %0
  ret void

branch0:                                          ; preds = %5
  store i8 %kernel_config_V_load_3, i8* @kernel_v_V_0, align 1
  br label %6

branch1:                                          ; preds = %5
  store i8 %kernel_config_V_load_3, i8* @kernel_v_V_1, align 1
  br label %6

branch2:                                          ; preds = %5
  store i8 %kernel_config_V_load_3, i8* @kernel_v_V_2, align 1
  br label %6

branch3:                                          ; preds = %5
  store i8 %kernel_config_V_load_3, i8* @kernel_v_V_3, align 1
  br label %6

branch4:                                          ; preds = %5
  store i8 %kernel_config_V_load_3, i8* @kernel_v_V_4, align 1
  br label %6

branch5:                                          ; preds = %5
  store i8 %kernel_config_V_load_3, i8* @kernel_v_V_5, align 1
  br label %6

branch6:                                          ; preds = %5
  store i8 %kernel_config_V_load_3, i8* @kernel_v_V_6, align 1
  br label %6

branch7:                                          ; preds = %1
  store i8 %kernel_config_V_load_1, i8* @kernel_h_V_0, align 1
  store i8 %kernel_config_V_load_1, i8* %kernel_h_V_0_loc_1
  br label %2

branch8:                                          ; preds = %1
  store i8 %kernel_config_V_load_1, i8* @kernel_h_V_1, align 1
  br label %2

branch9:                                          ; preds = %1
  store i8 %kernel_config_V_load_1, i8* @kernel_h_V_2, align 1
  br label %2

branch10:                                         ; preds = %1
  store i8 %kernel_config_V_load_1, i8* @kernel_h_V_3, align 1
  br label %2

branch11:                                         ; preds = %1
  store i8 %kernel_config_V_load_1, i8* @kernel_h_V_4, align 1
  br label %2

branch12:                                         ; preds = %1
  store i8 %kernel_config_V_load_1, i8* @kernel_h_V_5, align 1
  br label %2

branch13:                                         ; preds = %1
  store i8 %kernel_config_V_load_1, i8* @kernel_h_V_6, align 1
  br label %2
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

declare i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32, i32, i32) nounwind readnone

declare i8 @_ssdm_op_PartSelect.i8.i23.i32.i32(i23, i32, i32) nounwind readnone

declare i3 @_ssdm_op_PartSelect.i3.i32.i32.i32(i32, i32, i32) nounwind readnone

define weak i1 @_ssdm_op_BitSelect.i1.i8.i32(i8, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i8
  %empty_3 = shl i8 1, %empty
  %empty_4 = and i8 %0, %empty_3
  %empty_5 = icmp ne i8 %empty_4, 0
  ret i1 %empty_5
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
!10 = metadata !{metadata !"kernel_config.V", metadata !11, metadata !"int8", i32 0, i32 7}
!11 = metadata !{metadata !12}
!12 = metadata !{i32 0, i32 51, i32 1}
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
