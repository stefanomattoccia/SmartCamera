; ModuleID = '/home/andrea/Documenti/vision/Ultrascale/hls/OV7670_INTERFACE/OV7670_INTERFACE_prj/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ov7670_interface_str = internal unnamed_addr constant [17 x i8] c"ov7670_interface\00"
@llvm_global_ctors_1 = appending global [0 x void ()*] zeroinitializer
@llvm_global_ctors_0 = appending global [0 x i32] zeroinitializer
@first = internal unnamed_addr global i1 true, align 1
@count_readings = internal unnamed_addr global i32 0, align 4
@count_lines = internal unnamed_addr global i32 0, align 4
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str = private unnamed_addr constant [8 x i8] c"ap_none\00", align 1

define void @ov7670_interface(i8 %data_in_V, i1 %href_V, i1 %vsync_V, i8* %data_out_V, i1* %line_valid_V, i1* %frame_valid_V) {
  call void (...)* @_ssdm_op_SpecBitsMap(i8 %data_in_V), !map !41
  call void (...)* @_ssdm_op_SpecBitsMap(i1 %href_V), !map !47
  call void (...)* @_ssdm_op_SpecBitsMap(i1 %vsync_V), !map !51
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %data_out_V), !map !55
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %line_valid_V), !map !59
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %frame_valid_V), !map !63
  call void (...)* @_ssdm_op_SpecTopModule([17 x i8]* @ov7670_interface_str) nounwind
  %vsync_V_read = call i1 @_ssdm_op_Read.ap_none.i1(i1 %vsync_V)
  %href_V_read = call i1 @_ssdm_op_Read.ap_none.i1(i1 %href_V)
  %data_in_V_read = call i8 @_ssdm_op_Read.ap_none.i8(i8 %data_in_V)
  call void (...)* @_ssdm_op_SpecInterface(i8 %data_in_V, [8 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i1 %href_V, [8 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i1 %vsync_V, [8 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %data_out_V, [8 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i1* %line_valid_V, [8 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i1* %frame_valid_V, [8 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
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

; <label>:6                                       ; preds = %5, %4
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

; <label>:10                                      ; preds = %9, %8
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

!opencl.kernels = !{!0, !7, !7, !13, !13, !19, !7, !7, !13, !13, !22, !24, !30, !30, !13, !32}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!34}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 1, i32 1, i32 1}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"byte", metadata !"bit", metadata !"bit", metadata !"byte*", metadata !"bit*", metadata !"bit*"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"volatile", metadata !"volatile", metadata !"volatile"}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"data_in", metadata !"href", metadata !"vsync", metadata !"data_out", metadata !"line_valid", metadata !"frame_valid"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !6}
!8 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!9 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!10 = metadata !{metadata !"kernel_arg_type", metadata !"int"}
!11 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!12 = metadata !{metadata !"kernel_arg_name", metadata !"val"}
!13 = metadata !{null, metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !6}
!14 = metadata !{metadata !"kernel_arg_addr_space"}
!15 = metadata !{metadata !"kernel_arg_access_qual"}
!16 = metadata !{metadata !"kernel_arg_type"}
!17 = metadata !{metadata !"kernel_arg_type_qual"}
!18 = metadata !{metadata !"kernel_arg_name"}
!19 = metadata !{null, metadata !8, metadata !9, metadata !20, metadata !11, metadata !21, metadata !6}
!20 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<8> &"}
!21 = metadata !{metadata !"kernel_arg_name", metadata !"op2"}
!22 = metadata !{null, metadata !8, metadata !9, metadata !23, metadata !11, metadata !21, metadata !6}
!23 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<1> &"}
!24 = metadata !{null, metadata !25, metadata !26, metadata !27, metadata !28, metadata !29, metadata !6}
!25 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!26 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!27 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1, false> &", metadata !"int"}
!28 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!29 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"op2"}
!30 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !31, metadata !6}
!31 = metadata !{metadata !"kernel_arg_name", metadata !"op"}
!32 = metadata !{null, metadata !8, metadata !9, metadata !33, metadata !11, metadata !21, metadata !6}
!33 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &"}
!34 = metadata !{metadata !35, [0 x i32]* @llvm_global_ctors_0}
!35 = metadata !{metadata !36}
!36 = metadata !{i32 0, i32 31, metadata !37}
!37 = metadata !{metadata !38}
!38 = metadata !{metadata !"llvm.global_ctors.0", metadata !39, metadata !"", i32 0, i32 31}
!39 = metadata !{metadata !40}
!40 = metadata !{i32 0, i32 0, i32 1}
!41 = metadata !{metadata !42}
!42 = metadata !{i32 0, i32 7, metadata !43}
!43 = metadata !{metadata !44}
!44 = metadata !{metadata !"data_in.V", metadata !45, metadata !"uint8", i32 0, i32 7}
!45 = metadata !{metadata !46}
!46 = metadata !{i32 0, i32 0, i32 0}
!47 = metadata !{metadata !48}
!48 = metadata !{i32 0, i32 0, metadata !49}
!49 = metadata !{metadata !50}
!50 = metadata !{metadata !"href.V", metadata !45, metadata !"uint1", i32 0, i32 0}
!51 = metadata !{metadata !52}
!52 = metadata !{i32 0, i32 0, metadata !53}
!53 = metadata !{metadata !54}
!54 = metadata !{metadata !"vsync.V", metadata !45, metadata !"uint1", i32 0, i32 0}
!55 = metadata !{metadata !56}
!56 = metadata !{i32 0, i32 7, metadata !57}
!57 = metadata !{metadata !58}
!58 = metadata !{metadata !"data_out.V", metadata !39, metadata !"uint8", i32 0, i32 7}
!59 = metadata !{metadata !60}
!60 = metadata !{i32 0, i32 0, metadata !61}
!61 = metadata !{metadata !62}
!62 = metadata !{metadata !"line_valid.V", metadata !39, metadata !"uint1", i32 0, i32 0}
!63 = metadata !{metadata !64}
!64 = metadata !{i32 0, i32 0, metadata !65}
!65 = metadata !{metadata !66}
!66 = metadata !{metadata !"frame_valid.V", metadata !39, metadata !"uint1", i32 0, i32 0}
