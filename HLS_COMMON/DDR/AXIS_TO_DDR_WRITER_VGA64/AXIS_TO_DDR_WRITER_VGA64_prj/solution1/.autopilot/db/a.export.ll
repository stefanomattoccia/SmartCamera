; ModuleID = '/home/andrea/Documenti/vision/Ultrascale/hls/DDR/AXIS_TO_DDR_WRITER_VGA64/AXIS_TO_DDR_WRITER_VGA64_prj/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@memcpy_OC_base_ddr_a = internal unnamed_addr constant [32 x i8] c"memcpy.base_ddr_addr.buffer.gep\00"
@llvm_global_ctors_1 = appending global [0 x void ()*] zeroinitializer
@llvm_global_ctors_0 = appending global [0 x i32] zeroinitializer
@inner_index_V = internal global i3 0
@frame_count_inner = internal unnamed_addr global i32 0, align 4
@burstwrite_OC_region = internal unnamed_addr constant [18 x i8] c"burstwrite.region\00"
@axis_to_ddr_writer_s = internal unnamed_addr constant [19 x i8] c"axis_to_ddr_writer\00"
@p_str7 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str6 = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1
@p_str5 = private unnamed_addr constant [12 x i8] c"RAM_2P_BRAM\00", align 1
@p_str4 = private unnamed_addr constant [8 x i8] c"ap_none\00", align 1
@p_str3 = private unnamed_addr constant [5 x i8] c"both\00", align 1
@p_str2 = private unnamed_addr constant [5 x i8] c"axis\00", align 1
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str = private unnamed_addr constant [6 x i8] c"m_axi\00", align 1

declare i22 @llvm.part.select.i22(i22, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define void @axis_to_ddr_writer(i8* %inputStream_V, i64* %base_ddr_addr, i3* %frame_index_V, i32* %frame_count) {
codeRepl:
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %inputStream_V), !map !56
  call void (...)* @_ssdm_op_SpecBitsMap(i64* %base_ddr_addr), !map !60
  call void (...)* @_ssdm_op_SpecBitsMap(i3* %frame_index_V), !map !66
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %frame_count), !map !70
  call void (...)* @_ssdm_op_SpecTopModule([19 x i8]* @axis_to_ddr_writer_s) nounwind
  %buffer = alloca [512 x i64], align 16
  call void (...)* @_ssdm_op_SpecInterface(i64* %base_ddr_addr, [6 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 32, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %inputStream_V, [5 x i8]* @p_str2, i32 1, i32 1, [5 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %frame_count, [8 x i8]* @p_str4, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i3* %frame_index_V, [8 x i8]* @p_str4, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecMemCore([512 x i64]* %buffer, [1 x i8]* @p_str1, [12 x i8]* @p_str5, [1 x i8]* @p_str1, i32 -1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecReset(i3* @inner_index_V, i32 1, [1 x i8]* @p_str1) nounwind
  %inner_index_V_load = load i3* @inner_index_V, align 1
  call void @_ssdm_op_Write.ap_none.i3P(i3* %frame_index_V, i3 %inner_index_V_load)
  %tmp_cast = zext i3 %inner_index_V_load to i22
  %tmp_1 = mul i22 %tmp_cast, 307200
  %offset_cast = call i19 @_ssdm_op_PartSelect.i19.i22.i32.i32(i22 %tmp_1, i32 3, i32 21)
  br label %0

; <label>:0                                       ; preds = %memcpy.tail, %codeRepl
  %offset1 = phi i19 [ %offset_cast, %codeRepl ], [ %offset, %memcpy.tail ]
  %idx = phi i7 [ 0, %codeRepl ], [ %idx_1, %memcpy.tail ]
  %exitcond = icmp eq i7 %idx, -53
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 75, i64 75, i64 75)
  %idx_1 = add i7 %idx, 1
  br i1 %exitcond, label %._crit_edge59, label %.preheader.preheader

.preheader.preheader:                             ; preds = %0
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %.preheader57
  %indvar_flatten = phi i13 [ %indvar_flatten_next, %.preheader57 ], [ 0, %.preheader.preheader ]
  %exitcond_flatten = icmp eq i13 %indvar_flatten, -4096
  %indvar_flatten_next = add i13 %indvar_flatten, 1
  br i1 %exitcond_flatten, label %1, label %.preheader57

.preheader57:                                     ; preds = %.preheader
  %tmp_3 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str6)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind
  %tmp_0 = call i8 @_ssdm_op_Read.axis.volatile.i8P(i8* %inputStream_V)
  %empty_5 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str6, i32 %tmp_3)
  br label %.preheader

; <label>:1                                       ; preds = %.preheader
  %tmp_7 = zext i19 %offset1 to i64
  %base_ddr_addr_addr = getelementptr inbounds i64* %base_ddr_addr, i64 %tmp_7
  %base_ddr_addr_addr_1 = call i1 @_ssdm_op_WriteReq.m_axi.i64P(i64* %base_ddr_addr_addr, i32 512)
  br label %burst.wr.header

burst.wr.header:                                  ; preds = %burst.wr.body, %1
  %indvar = phi i10 [ 0, %1 ], [ %indvar_next, %burst.wr.body ]
  %exitcond1 = icmp eq i10 %indvar, -512
  %empty_6 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 512, i64 512, i64 512)
  %indvar_next = add i10 %indvar, 1
  br i1 %exitcond1, label %memcpy.tail, label %burst.wr.body

burst.wr.body:                                    ; preds = %burst.wr.header
  %burstwrite_rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin([18 x i8]* @burstwrite_OC_region) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str7)
  %empty_7 = call i32 (...)* @_ssdm_op_SpecLoopName([32 x i8]* @memcpy_OC_base_ddr_a) nounwind
  %indvar1 = zext i10 %indvar to i64
  %buffer_addr = getelementptr [512 x i64]* %buffer, i64 0, i64 %indvar1
  %buffer_load = load i64* %buffer_addr, align 8
  call void @_ssdm_op_Write.m_axi.i64P(i64* %base_ddr_addr_addr, i64 %buffer_load, i8 -1)
  %burstwrite_rend = call i32 (...)* @_ssdm_op_SpecRegionEnd([18 x i8]* @burstwrite_OC_region, i32 %burstwrite_rbegin) nounwind
  br label %burst.wr.header

memcpy.tail:                                      ; preds = %burst.wr.header
  %base_ddr_addr_addr_1_1 = call i1 @_ssdm_op_WriteResp.m_axi.i64P(i64* %base_ddr_addr_addr)
  %offset = add i19 %offset1, 512
  br label %0

._crit_edge59:                                    ; preds = %0
  %tmp_4 = add i3 %inner_index_V_load, 1
  store i3 %tmp_4, i3* @inner_index_V, align 1
  %frame_count_inner_lo = load i32* @frame_count_inner, align 4
  %tmp_6 = add nsw i32 %frame_count_inner_lo, 1
  store i32 %tmp_6, i32* @frame_count_inner, align 4
  call void @_ssdm_op_Write.ap_none.i32P(i32* %frame_count, i32 %tmp_6)
  ret void
}

define weak i1 @_ssdm_op_WriteResp.m_axi.i64P(i64*) {
entry:
  ret i1 true
}

define weak i1 @_ssdm_op_WriteReq.m_axi.i64P(i64*, i32) {
entry:
  ret i1 true
}

define weak void @_ssdm_op_Write.m_axi.i64P(i64*, i64, i8) {
entry:
  ret void
}

define weak void @_ssdm_op_Write.ap_none.i3P(i3*, i3) {
entry:
  store i3 %1, i3* %0
  ret void
}

define weak void @_ssdm_op_Write.ap_none.i32P(i32*, i32) {
entry:
  store i32 %1, i32* %0
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

define weak void @_ssdm_op_SpecMemCore(...) {
entry:
  ret void
}

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

define weak i32 @_ssdm_op_SpecLoopName(...) {
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

define weak i19 @_ssdm_op_PartSelect.i19.i22.i32.i32(i22, i32, i32) nounwind readnone {
entry:
  %empty = call i22 @llvm.part.select.i22(i22 %0, i32 %1, i32 %2)
  %empty_8 = trunc i22 %empty to i19
  ret i19 %empty_8
}

!opencl.kernels = !{!0, !7, !13, !13, !15, !21, !24, !13, !13, !15, !30, !15, !15, !32, !35, !35, !15, !37, !15, !15, !15, !39, !40, !42, !42, !43, !43, !45, !47, !47, !15, !15}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!49}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 1, i32 1, i32 1}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"hls::stream<DATA_IN> &", metadata !"u64*", metadata !"ap_uint<3>*", metadata !"uint*"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"volatile", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"inputStream", metadata !"base_ddr_addr", metadata !"frame_index", metadata !"frame_count"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !6}
!8 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!9 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!10 = metadata !{metadata !"kernel_arg_type", metadata !"int"}
!11 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!12 = metadata !{metadata !"kernel_arg_name", metadata !""}
!13 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !14, metadata !6}
!14 = metadata !{metadata !"kernel_arg_name", metadata !"op"}
!15 = metadata !{null, metadata !16, metadata !17, metadata !18, metadata !19, metadata !20, metadata !6}
!16 = metadata !{metadata !"kernel_arg_addr_space"}
!17 = metadata !{metadata !"kernel_arg_access_qual"}
!18 = metadata !{metadata !"kernel_arg_type"}
!19 = metadata !{metadata !"kernel_arg_type_qual"}
!20 = metadata !{metadata !"kernel_arg_name"}
!21 = metadata !{null, metadata !8, metadata !9, metadata !22, metadata !11, metadata !23, metadata !6}
!22 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1, false> &"}
!23 = metadata !{metadata !"kernel_arg_name", metadata !"op2"}
!24 = metadata !{null, metadata !25, metadata !26, metadata !27, metadata !28, metadata !29, metadata !6}
!25 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!26 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!27 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<3, false> &", metadata !"int"}
!28 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!29 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"op2"}
!30 = metadata !{null, metadata !8, metadata !9, metadata !31, metadata !11, metadata !23, metadata !6}
!31 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &"}
!32 = metadata !{null, metadata !25, metadata !26, metadata !33, metadata !28, metadata !34, metadata !6}
!33 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<35, true> &", metadata !"ulong"}
!34 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"i_op"}
!35 = metadata !{null, metadata !8, metadata !9, metadata !36, metadata !11, metadata !14, metadata !6}
!36 = metadata !{metadata !"kernel_arg_type", metadata !"ulong"}
!37 = metadata !{null, metadata !25, metadata !26, metadata !38, metadata !28, metadata !29, metadata !6}
!38 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<35, true> &", metadata !"const ap_int_base<64, false> &"}
!39 = metadata !{null, metadata !25, metadata !26, metadata !27, metadata !28, metadata !34, metadata !6}
!40 = metadata !{null, metadata !25, metadata !26, metadata !41, metadata !28, metadata !29, metadata !6}
!41 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<3, false> &", metadata !"const ap_int_base<32, true> &"}
!42 = metadata !{null, metadata !8, metadata !9, metadata !31, metadata !11, metadata !14, metadata !6}
!43 = metadata !{null, metadata !8, metadata !9, metadata !44, metadata !11, metadata !14, metadata !6}
!44 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<3, false> &"}
!45 = metadata !{null, metadata !8, metadata !9, metadata !46, metadata !11, metadata !23, metadata !6}
!46 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<3> &"}
!47 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !48, metadata !6}
!48 = metadata !{metadata !"kernel_arg_name", metadata !"val"}
!49 = metadata !{metadata !50, [0 x i32]* @llvm_global_ctors_0}
!50 = metadata !{metadata !51}
!51 = metadata !{i32 0, i32 31, metadata !52}
!52 = metadata !{metadata !53}
!53 = metadata !{metadata !"llvm.global_ctors.0", metadata !54, metadata !"", i32 0, i32 31}
!54 = metadata !{metadata !55}
!55 = metadata !{i32 0, i32 0, i32 1}
!56 = metadata !{metadata !57}
!57 = metadata !{i32 0, i32 7, metadata !58}
!58 = metadata !{metadata !59}
!59 = metadata !{metadata !"inputStream.V", metadata !54, metadata !"unsigned char", i32 0, i32 7}
!60 = metadata !{metadata !61}
!61 = metadata !{i32 0, i32 63, metadata !62}
!62 = metadata !{metadata !63}
!63 = metadata !{metadata !"base_ddr_addr", metadata !64, metadata !"long long unsigned int", i32 0, i32 63}
!64 = metadata !{metadata !65}
!65 = metadata !{i32 0, i32 31, i32 1}
!66 = metadata !{metadata !67}
!67 = metadata !{i32 0, i32 2, metadata !68}
!68 = metadata !{metadata !69}
!69 = metadata !{metadata !"frame_index.V", metadata !54, metadata !"uint3", i32 0, i32 2}
!70 = metadata !{metadata !71}
!71 = metadata !{i32 0, i32 31, metadata !72}
!72 = metadata !{metadata !73}
!73 = metadata !{metadata !"frame_count", metadata !54, metadata !"unsigned int", i32 0, i32 31}
