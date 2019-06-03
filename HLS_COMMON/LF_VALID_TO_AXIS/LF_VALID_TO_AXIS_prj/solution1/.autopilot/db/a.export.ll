; ModuleID = '/home/andrea/Documenti/vision/Ultrascale/hls/LF_VALID_TO_AXIS/LF_VALID_TO_AXIS_prj/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@res = internal unnamed_addr global i1 true, align 1
@llvm_global_ctors_1 = appending global [0 x void ()*] zeroinitializer
@llvm_global_ctors_0 = appending global [0 x i32] zeroinitializer
@LF_valid_to_AXIS_str = internal unnamed_addr constant [17 x i8] c"LF_valid_to_AXIS\00"
@p_str3 = private unnamed_addr constant [8 x i8] c"ap_none\00", align 1
@p_str2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str1 = private unnamed_addr constant [5 x i8] c"both\00", align 1
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

define void @LF_valid_to_AXIS(i8* %data_in_V, i1* %frame_valid, i1* %line_valid, i8* %outputStream_V_V) {
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %data_in_V), !map !29
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %frame_valid), !map !33
  call void (...)* @_ssdm_op_SpecBitsMap(i1* %line_valid), !map !37
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %outputStream_V_V), !map !41
  call void (...)* @_ssdm_op_SpecTopModule([17 x i8]* @LF_valid_to_AXIS_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %outputStream_V_V, [5 x i8]* @p_str, i32 1, i32 1, [5 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %data_in_V, [8 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i1* %frame_valid, [8 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i1* %line_valid, [8 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2, [1 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str2, [1 x i8]* @p_str2) nounwind
  %res_load = load i1* @res, align 1
  call void (...)* @_ssdm_op_SpecReset(i1* @res, i32 1, [1 x i8]* @p_str2) nounwind
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

!opencl.kernels = !{!0, !7, !7, !13, !13, !19}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!22}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 1, i32 1, i32 1, i32 0}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"byte*", metadata !"_Bool*", metadata !"_Bool*", metadata !"hls::stream<byte> &"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"volatile", metadata !"volatile", metadata !"volatile", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"data_in", metadata !"frame_valid", metadata !"line_valid", metadata !"outputStream"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !6}
!8 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!9 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!10 = metadata !{metadata !"kernel_arg_type", metadata !"const volatile ap_uint<8> &"}
!11 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!12 = metadata !{metadata !"kernel_arg_name", metadata !"op"}
!13 = metadata !{null, metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !6}
!14 = metadata !{metadata !"kernel_arg_addr_space"}
!15 = metadata !{metadata !"kernel_arg_access_qual"}
!16 = metadata !{metadata !"kernel_arg_type"}
!17 = metadata !{metadata !"kernel_arg_type_qual"}
!18 = metadata !{metadata !"kernel_arg_name"}
!19 = metadata !{null, metadata !8, metadata !9, metadata !20, metadata !11, metadata !21, metadata !6}
!20 = metadata !{metadata !"kernel_arg_type", metadata !"const struct ap_uint<8> &"}
!21 = metadata !{metadata !"kernel_arg_name", metadata !"din"}
!22 = metadata !{metadata !23, [0 x i32]* @llvm_global_ctors_0}
!23 = metadata !{metadata !24}
!24 = metadata !{i32 0, i32 31, metadata !25}
!25 = metadata !{metadata !26}
!26 = metadata !{metadata !"llvm.global_ctors.0", metadata !27, metadata !"", i32 0, i32 31}
!27 = metadata !{metadata !28}
!28 = metadata !{i32 0, i32 0, i32 1}
!29 = metadata !{metadata !30}
!30 = metadata !{i32 0, i32 7, metadata !31}
!31 = metadata !{metadata !32}
!32 = metadata !{metadata !"data_in.V", metadata !27, metadata !"uint8", i32 0, i32 7}
!33 = metadata !{metadata !34}
!34 = metadata !{i32 0, i32 0, metadata !35}
!35 = metadata !{metadata !36}
!36 = metadata !{metadata !"frame_valid", metadata !27, metadata !"bool", i32 0, i32 0}
!37 = metadata !{metadata !38}
!38 = metadata !{i32 0, i32 0, metadata !39}
!39 = metadata !{metadata !40}
!40 = metadata !{metadata !"line_valid", metadata !27, metadata !"bool", i32 0, i32 0}
!41 = metadata !{metadata !42}
!42 = metadata !{i32 0, i32 7, metadata !43}
!43 = metadata !{metadata !44}
!44 = metadata !{metadata !"outputStream.V.V", metadata !27, metadata !"uint8", i32 0, i32 7}
