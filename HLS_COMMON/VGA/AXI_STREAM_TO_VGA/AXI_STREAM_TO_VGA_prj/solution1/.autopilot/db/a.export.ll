; ModuleID = '/home/andrea/Documenti/vision/Ultrascale/hls/VGA/AXI_STREAM_TO_VGA/AXI_STREAM_TO_VGA_prj/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm_global_ctors_1 = appending global [0 x void ()*] zeroinitializer
@llvm_global_ctors_0 = appending global [0 x i32] zeroinitializer
@color_blinking_V = internal global i4 0
@axi_stream_to_vga_st = internal unnamed_addr constant [18 x i8] c"axi_stream_to_vga\00"
@p_str4 = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1
@p_str3 = private unnamed_addr constant [8 x i8] c"ap_none\00", align 1
@p_str2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str1 = private unnamed_addr constant [5 x i8] c"both\00", align 1
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
  call void (...)* @_ssdm_op_SpecBitsMap(i1 %selftest), !map !69
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %inStream_V_V), !map !75
  call void (...)* @_ssdm_op_SpecBitsMap(i4* %R_V), !map !79
  call void (...)* @_ssdm_op_SpecBitsMap(i4* %G_V), !map !83
  call void (...)* @_ssdm_op_SpecBitsMap(i4* %B_V), !map !87
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %V_SYNC_V), !map !91
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %H_SYNC_V), !map !95
  call void (...)* @_ssdm_op_SpecTopModule([18 x i8]* @axi_stream_to_vga_st) nounwind
  %selftest_read = call i1 @_ssdm_op_Read.ap_none.i1(i1 %selftest)
  call void (...)* @_ssdm_op_SpecInterface(i8* %inStream_V_V, [5 x i8]* @p_str, i32 1, i32 1, [5 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i1 %selftest, [8 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i4* %R_V, [8 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i4* %G_V, [8 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i4* %B_V, [8 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i1* %H_SYNC_V, [8 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i1* %V_SYNC_V, [8 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  call void (...)* @_ssdm_op_SpecReset(i4* @color_blinking_V, i32 1, [1 x i8]* @p_str2) nounwind
  %color_blinking_V_loa = load i4* @color_blinking_V, align 1
  %op2_V_read_assign = add i4 %color_blinking_V_loa, 1
  store i4 %op2_V_read_assign, i4* @color_blinking_V, align 1
  %tmp = call i1 @_ssdm_op_NbReadReq.axis.i8P(i8* %inStream_V_V, i32 1)
  %tmp_6_i = sub i4 -2, %color_blinking_V_loa
  br label %.preheader

.preheader:                                       ; preds = %codeRepl, %9
  %indvar_flatten = phi i19 [ 0, %codeRepl ], [ %indvar_flatten_next, %9 ]
  %y = phi i10 [ 0, %codeRepl ], [ %y_mid2, %9 ]
  %x = phi i10 [ 0, %codeRepl ], [ %x_1, %9 ]
  %tmp_4 = call i9 @_ssdm_op_PartSelect.i9.i10.i32.i32(i10 %y, i32 1, i32 9)
  %icmp = icmp ne i9 %tmp_4, 0
  %tmp_2 = icmp ugt i10 %y, 34
  %tmp_3 = icmp ult i10 %y, -509
  %tmp2 = and i1 %tmp_2, %tmp_3
  %exitcond_flatten = icmp eq i19 %indvar_flatten, -104288
  %indvar_flatten_next = add i19 %indvar_flatten, 1
  br i1 %exitcond_flatten, label %10, label %.preheader.preheader

; <label>:0                                       ; preds = %.preheader.preheader
  br i1 %selftest_read, label %3, label %1

; <label>:1                                       ; preds = %0
  br i1 %tmp, label %2, label %.get_checkerboard_color.exit_crit_edge

.get_checkerboard_color.exit_crit_edge:           ; preds = %1
  store i4 0, i4* %B_temp_V_read_assign
  store i4 0, i4* %G_temp_V_read_assign
  store i4 -1, i4* %R_temp_V_read_assign
  br label %get_checkerboard_color.exit

; <label>:2                                       ; preds = %1
  %tmp_V = call i8 @_ssdm_op_Read.axis.volatile.i8P(i8* %inStream_V_V)
  %R_temp_V = call i4 @_ssdm_op_PartSelect.i4.i8.i32.i32(i8 %tmp_V, i32 4, i32 7)
  store i4 %R_temp_V, i4* %B_temp_V_read_assign
  store i4 %R_temp_V, i4* %G_temp_V_read_assign
  store i4 %R_temp_V, i4* %R_temp_V_read_assign
  br label %get_checkerboard_color.exit

; <label>:3                                       ; preds = %0
  %tmp_8 = call i1 @_ssdm_op_BitSelect.i1.i10.i32(i10 %y_coordinate_V_mid2, i32 5)
  %tmp_9 = call i1 @_ssdm_op_BitSelect.i1.i11.i32(i11 %p_Val2_s, i32 5)
  %tmp_1_i = zext i1 %tmp_9 to i19
  %tmp_2_i = call i21 @_ssdm_op_BitConcatenate.i21.i1.i19.i1(i1 false, i19 %tmp_1_i, i1 %tmp_8)
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

get_checkerboard_color.exit:                      ; preds = %.get_checkerboard_color.exit_crit_edge, %7, %6, %5, %4, %3, %2
  %R_temp_V_read_assign_1 = load i4* %R_temp_V_read_assign
  %G_temp_V_read_assign_1 = load i4* %G_temp_V_read_assign
  %B_temp_V_read_assign_1 = load i4* %B_temp_V_read_assign
  call void @_ssdm_op_Write.ap_none.volatile.i4P(i4* %R_V, i4 %R_temp_V_read_assign_1)
  call void @_ssdm_op_Write.ap_none.volatile.i4P(i4* %G_V, i4 %G_temp_V_read_assign_1)
  call void @_ssdm_op_Write.ap_none.volatile.i4P(i4* %B_V, i4 %B_temp_V_read_assign_1)
  call void @_ssdm_op_Write.ap_none.volatile.i1P(i1* %V_SYNC_V, i1 %not_mid2)
  call void @_ssdm_op_Write.ap_none.volatile.i1P(i1* %H_SYNC_V, i1 %not_1)
  br label %9

; <label>:8                                       ; preds = %.preheader.preheader
  call void @_ssdm_op_Write.ap_none.volatile.i4P(i4* %R_V, i4 0)
  call void @_ssdm_op_Write.ap_none.volatile.i4P(i4* %G_V, i4 0)
  call void @_ssdm_op_Write.ap_none.volatile.i4P(i4* %B_V, i4 0)
  call void @_ssdm_op_Write.ap_none.volatile.i1P(i1* %V_SYNC_V, i1 %not_mid2)
  call void @_ssdm_op_Write.ap_none.volatile.i1P(i1* %H_SYNC_V, i1 %not_1)
  br label %9

; <label>:9                                       ; preds = %8, %get_checkerboard_color.exit
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str4, i32 %tmp_1)
  %x_1 = add i10 %x_mid2, 1
  br label %.preheader

.preheader.preheader:                             ; preds = %.preheader
  %tmp_s = icmp eq i10 %x, -224
  %x_mid2 = select i1 %tmp_s, i10 0, i10 %x
  %y_coordinate_V_mid2_s = select i1 %tmp_s, i10 -34, i10 -35
  %y_coordinate_V_mid2 = add i10 %y, %y_coordinate_V_mid2_s
  %y_s = add i10 %y, 1
  %tmp_5 = call i9 @_ssdm_op_PartSelect.i9.i10.i32.i32(i10 %y_s, i32 1, i32 9)
  %icmp1 = icmp ne i9 %tmp_5, 0
  %not_mid2 = select i1 %tmp_s, i1 %icmp1, i1 %icmp
  %tmp_2_mid1 = icmp ugt i10 %y_s, 34
  %tmp_3_mid1 = icmp ult i10 %y_s, -509
  %tmp2_mid1 = and i1 %tmp_2_mid1, %tmp_3_mid1
  %tmp2_mid2 = select i1 %tmp_s, i1 %tmp2_mid1, i1 %tmp2
  %y_mid2 = select i1 %tmp_s, i10 %y_s, i10 %y
  %tmp_1 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str4)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str2) nounwind
  %tmp_5_cast = zext i10 %x_mid2 to i11
  %p_Val2_s = add i11 %tmp_5_cast, -144
  %not_1 = icmp ugt i10 %x_mid2, 95
  %tmp_6 = icmp ugt i10 %x_mid2, 143
  %tmp_7 = icmp ult i10 %x_mid2, -240
  %tmp1 = and i1 %tmp_6, %tmp_7
  %or_cond2 = and i1 %tmp2_mid2, %tmp1
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
  %empty_7 = trunc i10 %empty to i9
  ret i9 %empty_7
}

define weak i4 @_ssdm_op_PartSelect.i4.i8.i32.i32(i8, i32, i32) nounwind readnone {
entry:
  %empty = call i8 @llvm.part.select.i8(i8 %0, i32 %1, i32 %2)
  %empty_8 = trunc i8 %empty to i4
  ret i4 %empty_8
}

define weak i1 @_ssdm_op_NbReadReq.axis.i8P(i8*, i32) {
entry:
  ret i1 true
}

define weak i1 @_ssdm_op_BitSelect.i1.i11.i32(i11, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i11
  %empty_9 = shl i11 1, %empty
  %empty_10 = and i11 %0, %empty_9
  %empty_11 = icmp ne i11 %empty_10, 0
  ret i1 %empty_11
}

define weak i1 @_ssdm_op_BitSelect.i1.i10.i32(i10, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i10
  %empty_12 = shl i10 1, %empty
  %empty_13 = and i10 %0, %empty_12
  %empty_14 = icmp ne i10 %empty_13, 0
  ret i1 %empty_14
}

define weak i21 @_ssdm_op_BitConcatenate.i21.i1.i19.i1(i1, i19, i1) nounwind readnone {
entry:
  %empty = zext i19 %1 to i20
  %empty_15 = zext i1 %2 to i20
  %empty_16 = shl i20 %empty, 1
  %empty_17 = or i20 %empty_16, %empty_15
  %empty_18 = zext i1 %0 to i21
  %empty_19 = zext i20 %empty_17 to i21
  %empty_20 = shl i21 %empty_18, 20
  %empty_21 = or i21 %empty_20, %empty_19
  ret i21 %empty_21
}

!opencl.kernels = !{!0, !7, !13, !15, !15, !18, !18, !24, !30, !30, !18, !32, !18, !18, !18, !18, !18, !18, !18, !18, !18, !18, !7, !35, !35, !18, !18, !18, !38, !30, !30, !18, !40, !42, !42, !18, !42, !42, !13, !43, !49, !52, !18, !18, !18, !54, !54, !56, !56, !58, !58, !60}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!62}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 1, i32 1, i32 1, i32 1, i32 1}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"_Bool", metadata !"hls::stream<PIXEL> &", metadata !"ap_uint<4>*", metadata !"ap_uint<4>*", metadata !"ap_uint<4>*", metadata !"ap_uint<1>*", metadata !"ap_uint<1>*"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"volatile", metadata !"volatile", metadata !"volatile", metadata !"volatile", metadata !"volatile"}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"selftest", metadata !"inStream", metadata !"R", metadata !"G", metadata !"B", metadata !"V_SYNC", metadata !"H_SYNC"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !6}
!8 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!9 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!10 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<1> &"}
!11 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!12 = metadata !{metadata !"kernel_arg_name", metadata !"op2"}
!13 = metadata !{null, metadata !8, metadata !9, metadata !14, metadata !11, metadata !12, metadata !6}
!14 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<4> &"}
!15 = metadata !{null, metadata !8, metadata !9, metadata !16, metadata !11, metadata !17, metadata !6}
!16 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<9, true> &"}
!17 = metadata !{metadata !"kernel_arg_name", metadata !"op"}
!18 = metadata !{null, metadata !19, metadata !20, metadata !21, metadata !22, metadata !23, metadata !6}
!19 = metadata !{metadata !"kernel_arg_addr_space"}
!20 = metadata !{metadata !"kernel_arg_access_qual"}
!21 = metadata !{metadata !"kernel_arg_type"}
!22 = metadata !{metadata !"kernel_arg_type_qual"}
!23 = metadata !{metadata !"kernel_arg_name"}
!24 = metadata !{null, metadata !25, metadata !26, metadata !27, metadata !28, metadata !29, metadata !6}
!25 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!26 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!27 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, false> &", metadata !"int"}
!28 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!29 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"i_op"}
!30 = metadata !{null, metadata !8, metadata !9, metadata !31, metadata !11, metadata !17, metadata !6}
!31 = metadata !{metadata !"kernel_arg_type", metadata !"int"}
!32 = metadata !{null, metadata !25, metadata !26, metadata !33, metadata !28, metadata !34, metadata !6}
!33 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, false> &", metadata !"const ap_int_base<32, true> &"}
!34 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"op2"}
!35 = metadata !{null, metadata !8, metadata !9, metadata !36, metadata !11, metadata !37, metadata !6}
!36 = metadata !{metadata !"kernel_arg_type", metadata !"uint"}
!37 = metadata !{metadata !"kernel_arg_name", metadata !"val"}
!38 = metadata !{null, metadata !8, metadata !9, metadata !31, metadata !11, metadata !39, metadata !6}
!39 = metadata !{metadata !"kernel_arg_name", metadata !""}
!40 = metadata !{null, metadata !8, metadata !9, metadata !41, metadata !11, metadata !12, metadata !6}
!41 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1, false> &"}
!42 = metadata !{null, metadata !8, metadata !9, metadata !31, metadata !11, metadata !37, metadata !6}
!43 = metadata !{null, metadata !44, metadata !45, metadata !46, metadata !47, metadata !48, metadata !6}
!44 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 1, i32 0}
!45 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!46 = metadata !{metadata !"kernel_arg_type", metadata !"ap_uint<20>", metadata !"ap_uint<20>", metadata !"uint", metadata !"uint", metadata !"ap_uint<4>*", metadata !"ap_uint<4>*", metadata !"ap_uint<4>*", metadata !"ap_uint<4>"}
!47 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!48 = metadata !{metadata !"kernel_arg_name", metadata !"x_coord", metadata !"y_coord", metadata !"size_x", metadata !"size_y", metadata !"R_temp", metadata !"G_temp", metadata !"B_temp", metadata !"color_blinking"}
!49 = metadata !{null, metadata !25, metadata !26, metadata !50, metadata !28, metadata !51, metadata !6}
!50 = metadata !{metadata !"kernel_arg_type", metadata !"int", metadata !"const ap_int_base<4, false> &"}
!51 = metadata !{metadata !"kernel_arg_name", metadata !"i_op", metadata !"op"}
!52 = metadata !{null, metadata !25, metadata !26, metadata !53, metadata !28, metadata !34, metadata !6}
!53 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &", metadata !"const ap_int_base<4, false> &"}
!54 = metadata !{null, metadata !8, metadata !9, metadata !55, metadata !11, metadata !17, metadata !6}
!55 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<4, false> &"}
!56 = metadata !{null, metadata !8, metadata !9, metadata !57, metadata !11, metadata !17, metadata !6}
!57 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &"}
!58 = metadata !{null, metadata !8, metadata !9, metadata !59, metadata !11, metadata !17, metadata !6}
!59 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<33, true> &"}
!60 = metadata !{null, metadata !8, metadata !9, metadata !31, metadata !11, metadata !61, metadata !6}
!61 = metadata !{metadata !"kernel_arg_name", metadata !"i"}
!62 = metadata !{metadata !63, [0 x i32]* @llvm_global_ctors_0}
!63 = metadata !{metadata !64}
!64 = metadata !{i32 0, i32 31, metadata !65}
!65 = metadata !{metadata !66}
!66 = metadata !{metadata !"llvm.global_ctors.0", metadata !67, metadata !"", i32 0, i32 31}
!67 = metadata !{metadata !68}
!68 = metadata !{i32 0, i32 0, i32 1}
!69 = metadata !{metadata !70}
!70 = metadata !{i32 0, i32 0, metadata !71}
!71 = metadata !{metadata !72}
!72 = metadata !{metadata !"selftest", metadata !73, metadata !"bool", i32 0, i32 0}
!73 = metadata !{metadata !74}
!74 = metadata !{i32 0, i32 0, i32 0}
!75 = metadata !{metadata !76}
!76 = metadata !{i32 0, i32 7, metadata !77}
!77 = metadata !{metadata !78}
!78 = metadata !{metadata !"inStream.V.V", metadata !67, metadata !"uint8", i32 0, i32 7}
!79 = metadata !{metadata !80}
!80 = metadata !{i32 0, i32 3, metadata !81}
!81 = metadata !{metadata !82}
!82 = metadata !{metadata !"R.V", metadata !67, metadata !"uint4", i32 0, i32 3}
!83 = metadata !{metadata !84}
!84 = metadata !{i32 0, i32 3, metadata !85}
!85 = metadata !{metadata !86}
!86 = metadata !{metadata !"G.V", metadata !67, metadata !"uint4", i32 0, i32 3}
!87 = metadata !{metadata !88}
!88 = metadata !{i32 0, i32 3, metadata !89}
!89 = metadata !{metadata !90}
!90 = metadata !{metadata !"B.V", metadata !67, metadata !"uint4", i32 0, i32 3}
!91 = metadata !{metadata !92}
!92 = metadata !{i32 0, i32 0, metadata !93}
!93 = metadata !{metadata !94}
!94 = metadata !{metadata !"V_SYNC.V", metadata !67, metadata !"uint1", i32 0, i32 0}
!95 = metadata !{metadata !96}
!96 = metadata !{i32 0, i32 0, metadata !97}
!97 = metadata !{metadata !98}
!98 = metadata !{metadata !"H_SYNC.V", metadata !67, metadata !"uint1", i32 0, i32 0}
