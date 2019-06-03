; ModuleID = 'C:/Users/Riccardo/Documents/HLS_COMMON/DDR/AXIS_TO_DDR_WRITER_VGA64/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@memcpy_OC_base_ddr_addr_OC_buf = internal unnamed_addr constant [32 x i8] c"memcpy.base_ddr_addr.buffer.gep\00"
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@inner_index_V = internal global i3 0
@frame_count_inner = internal unnamed_addr global i32 0, align 4
@burstwrite_OC_region_str = internal unnamed_addr constant [18 x i8] c"burstwrite.region\00"
@axis_to_ddr_writer_str = internal unnamed_addr constant [19 x i8] c"axis_to_ddr_writer\00"
@p_str6 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str5 = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1
@p_str4 = private unnamed_addr constant [12 x i8] c"RAM_2P_BRAM\00", align 1
@p_str3 = private unnamed_addr constant [8 x i8] c"ap_none\00", align 1
@p_str2 = private unnamed_addr constant [5 x i8] c"axis\00", align 1
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str = private unnamed_addr constant [6 x i8] c"m_axi\00", align 1

declare i22 @llvm.part.select.i22(i22, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define void @axis_to_ddr_writer(i8* %inputStream_V, i64* %base_ddr_addr, i3* %frame_index_V, i32* %frame_count) {
codeRepl:
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %inputStream_V), !map !7
  call void (...)* @_ssdm_op_SpecBitsMap(i64* %base_ddr_addr), !map !11
  call void (...)* @_ssdm_op_SpecBitsMap(i3* %frame_index_V), !map !17
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %frame_count), !map !21
  call void (...)* @_ssdm_op_SpecTopModule([19 x i8]* @axis_to_ddr_writer_str) nounwind
  %buffer = alloca [512 x i64], align 16
  call void (...)* @_ssdm_op_SpecInterface(i64* %base_ddr_addr, [6 x i8]* @p_str, i32 0, i32 0, i32 0, i32 32, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %inputStream_V, [5 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %frame_count, [8 x i8]* @p_str3, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i3* %frame_index_V, [8 x i8]* @p_str3, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecMemCore([512 x i64]* %buffer, [1 x i8]* @p_str1, [12 x i8]* @p_str4, [1 x i8]* @p_str1, i32 -1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecReset(i3* @inner_index_V, i32 1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecReset(i32* @frame_count_inner, i32 1, [1 x i8]* @p_str1) nounwind
  %inner_index_V_load = load i3* @inner_index_V, align 1
  call void @_ssdm_op_Write.ap_none.i3P(i3* %frame_index_V, i3 %inner_index_V_load)
  %tmp_cast = zext i3 %inner_index_V_load to i22
  %tmp_1 = mul i22 %tmp_cast, 307200
  %offset_cast = call i19 @_ssdm_op_PartSelect.i19.i22.i32.i32(i22 %tmp_1, i32 3, i32 21)
  br label %0

; <label>:0                                       ; preds = %burst.wr.end, %codeRepl
  %offset1 = phi i19 [ %offset_cast, %codeRepl ], [ %offset, %burst.wr.end ]
  %idx = phi i7 [ 0, %codeRepl ], [ %idx_1, %burst.wr.end ]
  %exitcond1 = icmp eq i7 %idx, -53
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 75, i64 75, i64 75)
  %idx_1 = add i7 %idx, 1
  br i1 %exitcond1, label %._crit_edge61, label %.preheader

.preheader:                                       ; preds = %0, %.preheader59
  %indvar_flatten = phi i13 [ %indvar_flatten_next, %.preheader59 ], [ 0, %0 ]
  %exitcond_flatten = icmp eq i13 %indvar_flatten, -4096
  %indvar_flatten_next = add i13 %indvar_flatten, 1
  br i1 %exitcond_flatten, label %burst.wr.header.preheader, label %.preheader59

burst.wr.header.preheader:                        ; preds = %.preheader
  %tmp = zext i19 %offset1 to i64
  %base_ddr_addr_addr = getelementptr i64* %base_ddr_addr, i64 %tmp
  %p_wr_req = call i1 @_ssdm_op_WriteReq.m_axi.i64P(i64* %base_ddr_addr_addr, i32 512)
  br label %burst.wr.header

.preheader59:                                     ; preds = %.preheader
  %empty_5 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4096, i64 4096, i64 4096)
  %tmp_3 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str5)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind
  %tmp_0 = call i8 @_ssdm_op_Read.axis.volatile.i8P(i8* %inputStream_V)
  %empty_6 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str5, i32 %tmp_3)
  br label %.preheader

burst.wr.header:                                  ; preds = %burst.wr.header.preheader, %burst.wr.body
  %indvar = phi i10 [ %indvar_next, %burst.wr.body ], [ 0, %burst.wr.header.preheader ]
  %exitcond3 = icmp eq i10 %indvar, -512
  %empty_7 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 512, i64 512, i64 512)
  %indvar_next = add i10 %indvar, 1
  br i1 %exitcond3, label %burst.wr.end, label %burst.wr.body

burst.wr.body:                                    ; preds = %burst.wr.header
  %burstwrite_rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin([18 x i8]* @burstwrite_OC_region_str) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str6)
  %empty_8 = call i32 (...)* @_ssdm_op_SpecLoopName([32 x i8]* @memcpy_OC_base_ddr_addr_OC_buf) nounwind
  %tmp_9 = zext i10 %indvar to i64
  %buffer_addr = getelementptr [512 x i64]* %buffer, i64 0, i64 %tmp_9
  %buffer_load = load i64* %buffer_addr, align 8
  call void @_ssdm_op_Write.m_axi.i64P(i64* %base_ddr_addr_addr, i64 %buffer_load, i8 -1)
  %burstwrite_rend = call i32 (...)* @_ssdm_op_SpecRegionEnd([18 x i8]* @burstwrite_OC_region_str, i32 %burstwrite_rbegin) nounwind
  br label %burst.wr.header

burst.wr.end:                                     ; preds = %burst.wr.header
  %p_wr_resp = call i1 @_ssdm_op_WriteResp.m_axi.i64P(i64* %base_ddr_addr_addr)
  %offset = add i19 %offset1, 512
  br label %0

._crit_edge61:                                    ; preds = %0
  %tmp_4 = add i3 %inner_index_V_load, 1
  store i3 %tmp_4, i3* @inner_index_V, align 1
  %frame_count_inner_load = load i32* @frame_count_inner, align 4
  %tmp_5 = add nsw i32 %frame_count_inner_load, 1
  store i32 %tmp_5, i32* @frame_count_inner, align 4
  call void @_ssdm_op_Write.ap_none.i32P(i32* %frame_count, i32 %tmp_5)
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
  %empty_9 = trunc i22 %empty to i19
  ret i19 %empty_9
}

declare i16 @_ssdm_op_HSub(...)

declare i16 @_ssdm_op_HMul(...)

declare i16 @_ssdm_op_HDiv(...)

declare i16 @_ssdm_op_HAdd(...)

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
!10 = metadata !{metadata !"inputStream.V", metadata !5, metadata !"unsigned char", i32 0, i32 7}
!11 = metadata !{metadata !12}
!12 = metadata !{i32 0, i32 63, metadata !13}
!13 = metadata !{metadata !14}
!14 = metadata !{metadata !"base_ddr_addr", metadata !15, metadata !"long long unsigned int", i32 0, i32 63}
!15 = metadata !{metadata !16}
!16 = metadata !{i32 0, i32 31, i32 1}
!17 = metadata !{metadata !18}
!18 = metadata !{i32 0, i32 2, metadata !19}
!19 = metadata !{metadata !20}
!20 = metadata !{metadata !"frame_index.V", metadata !5, metadata !"uint3", i32 0, i32 2}
!21 = metadata !{metadata !22}
!22 = metadata !{i32 0, i32 31, metadata !23}
!23 = metadata !{metadata !24}
!24 = metadata !{metadata !"frame_count", metadata !5, metadata !"unsigned int", i32 0, i32 31}
