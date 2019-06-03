; ModuleID = 'C:/Users/Riccardo/Documents/Vision-pipeline-to-DDR/VIVADO_HLS/AXIS_TO_DDR_WRITER_AXILITE/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@memcpy_OC_base_ddr_addr_OC_buf = internal unnamed_addr constant [32 x i8] c"memcpy.base_ddr_addr.buffer.gep\00"
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@inner_index_V = internal global i8 0
@frame_count_inner = internal unnamed_addr global i32 0, align 4
@burstwrite_OC_region_str = internal unnamed_addr constant [18 x i8] c"burstwrite.region\00"
@axis_to_ddr_writer_str = internal unnamed_addr constant [19 x i8] c"axis_to_ddr_writer\00"
@FRAME_OFFSET = internal unnamed_addr global i32 307200, align 4
@FRAME_BUFFER_NUMBER_r = internal unnamed_addr global i8 8, align 1
@FRAME_BUFFER_DIM_r = internal unnamed_addr global i32 307200, align 4
@BASE_ADDRESS_r = internal global i29 0
@p_str7 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str6 = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1
@p_str5 = private unnamed_addr constant [12 x i8] c"RAM_2P_BRAM\00", align 1
@p_str4 = private unnamed_addr constant [8 x i8] c"ap_none\00", align 1
@p_str3 = private unnamed_addr constant [5 x i8] c"axis\00", align 1
@p_str2 = private unnamed_addr constant [6 x i8] c"m_axi\00", align 1
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1

declare i64 @llvm.part.select.i64(i64, i32, i32) nounwind readnone

declare i40 @llvm.part.select.i40(i40, i32, i32) nounwind readnone

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define void @axis_to_ddr_writer(i8* %inputStream_V, i64* %base_ddr_addr, i8* %frame_index_V, i32* %frame_count, i32 %base_address, i32 %frame_buffer_dim, i32 %frame_buffer_offset, i8 zeroext %frame_buffer_number, i1 zeroext %update_intr) {
codeRepl:
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %inputStream_V), !map !7
  call void (...)* @_ssdm_op_SpecBitsMap(i64* %base_ddr_addr), !map !11
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %frame_index_V), !map !17
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %frame_count), !map !21
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %base_address), !map !25
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %frame_buffer_dim), !map !31
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %frame_buffer_offset), !map !35
  call void (...)* @_ssdm_op_SpecBitsMap(i8 %frame_buffer_number), !map !39
  call void (...)* @_ssdm_op_SpecBitsMap(i1 %update_intr), !map !43
  call void (...)* @_ssdm_op_SpecTopModule([19 x i8]* @axis_to_ddr_writer_str) nounwind
  %update_intr_read = call i1 @_ssdm_op_Read.s_axilite.i1(i1 %update_intr)
  %frame_buffer_number_read = call i8 @_ssdm_op_Read.s_axilite.i8(i8 %frame_buffer_number)
  %frame_buffer_offset_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %frame_buffer_offset)
  %frame_buffer_dim_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %frame_buffer_dim)
  %base_address_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %base_address)
  %buffer = alloca [512 x i64], align 16
  call void (...)* @_ssdm_op_SpecInterface(i32 %base_address, [10 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i1 %update_intr, [10 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %frame_buffer_offset, [10 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %frame_buffer_dim, [10 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8 %frame_buffer_number, [10 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i64* %base_ddr_addr, [6 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 32, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %inputStream_V, [5 x i8]* @p_str3, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %frame_count, [8 x i8]* @p_str4, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %frame_index_V, [8 x i8]* @p_str4, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecMemCore([512 x i64]* %buffer, [1 x i8]* @p_str1, [12 x i8]* @p_str5, [1 x i8]* @p_str1, i32 -1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecReset(i8* @inner_index_V, i32 1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecReset(i32* @frame_count_inner, i32 1, [1 x i8]* @p_str1) nounwind
  %t_V = load i8* @inner_index_V, align 1
  call void @_ssdm_op_Write.ap_none.volatile.i8P(i8* %frame_index_V, i8 %t_V)
  call void (...)* @_ssdm_op_SpecReset(i32* @FRAME_BUFFER_DIM_r, i32 0, [1 x i8]* @p_str1) nounwind
  %FRAME_OFFSET_load = load i32* @FRAME_OFFSET, align 4
  call void (...)* @_ssdm_op_SpecReset(i32* @FRAME_OFFSET, i32 0, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecReset(i8* @FRAME_BUFFER_NUMBER_r, i32 0, [1 x i8]* @p_str1) nounwind
  %BASE_ADDRESS_load = load i29* @BASE_ADDRESS_r, align 4
  call void (...)* @_ssdm_op_SpecReset(i29* @BASE_ADDRESS_r, i32 0, [1 x i8]* @p_str1) nounwind
  br i1 %update_intr_read, label %0, label %._crit_edge99

; <label>:0                                       ; preds = %codeRepl
  store i32 %frame_buffer_dim_read, i32* @FRAME_BUFFER_DIM_r, align 4
  store i8 %frame_buffer_number_read, i8* @FRAME_BUFFER_NUMBER_r, align 1
  store i32 %frame_buffer_offset_read, i32* @FRAME_OFFSET, align 4
  %tmp_3_cast4 = call i29 @_ssdm_op_PartSelect.i29.i32.i32.i32(i32 %base_address_read, i32 3, i32 31)
  store i29 %tmp_3_cast4, i29* @BASE_ADDRESS_r, align 4
  br label %._crit_edge99

._crit_edge99:                                    ; preds = %0, %codeRepl
  %i_op_assign = phi i32 [ %frame_buffer_offset_read, %0 ], [ %FRAME_OFFSET_load, %codeRepl ]
  %i_op_assign_1 = phi i29 [ %tmp_3_cast4, %0 ], [ %BASE_ADDRESS_load, %codeRepl ]
  %i_op_assign_1_cast = zext i29 %i_op_assign_1 to i32
  %lhs_V = zext i8 %t_V to i40
  %rhs_V = zext i32 %i_op_assign to i40
  %r_V = mul i40 %rhs_V, %lhs_V
  %tmp_8 = call i32 @_ssdm_op_PartSelect.i32.i40.i32.i32(i40 %r_V, i32 3, i32 34)
  %offset = add i32 %tmp_8, %i_op_assign_1_cast
  br label %1

; <label>:1                                       ; preds = %burst.wr.end, %._crit_edge99
  %offset1 = phi i32 [ %offset, %._crit_edge99 ], [ %offset_1, %burst.wr.end ]
  %idx = phi i32 [ 0, %._crit_edge99 ], [ %idx_1, %burst.wr.end ]
  %FRAME_BUFFER_DIM_load = load i32* @FRAME_BUFFER_DIM_r, align 4
  %tmp_s = call i20 @_ssdm_op_PartSelect.i20.i32.i32.i32(i32 %FRAME_BUFFER_DIM_load, i32 12, i32 31)
  %tmp_3 = zext i20 %tmp_s to i32
  %tmp_1 = icmp ult i32 %idx, %tmp_3
  %idx_1 = add nsw i32 %idx, 1
  br i1 %tmp_1, label %.preheader, label %._crit_edge100

.preheader:                                       ; preds = %1, %ifFalse
  %indvar_flatten = phi i13 [ %indvar_flatten_next, %ifFalse ], [ 0, %1 ]
  %j = phi i10 [ %j_mid2, %ifFalse ], [ 0, %1 ]
  %temp = phi i64 [ %temp_2, %ifFalse ], [ 0, %1 ]
  %i = phi i4 [ %i_1, %ifFalse ], [ 0, %1 ]
  %exitcond_flatten = icmp eq i13 %indvar_flatten, -4096
  %indvar_flatten_next = add i13 %indvar_flatten, 1
  br i1 %exitcond_flatten, label %burst.wr.header.preheader, label %.preheader96

burst.wr.header.preheader:                        ; preds = %.preheader
  %tmp = sext i32 %offset1 to i64
  %base_ddr_addr_addr = getelementptr i64* %base_ddr_addr, i64 %tmp
  %p_wr_req = call i1 @_ssdm_op_WriteReq.m_axi.i64P(i64* %base_ddr_addr_addr, i32 512)
  br label %burst.wr.header

ifTrue:                                           ; preds = %.preheader96
  %tmp_4 = zext i10 %j_mid2 to i64
  %buffer_addr_1 = getelementptr inbounds [512 x i64]* %buffer, i64 0, i64 %tmp_4
  store i64 %temp_2, i64* %buffer_addr_1, align 8
  br label %ifFalse

ifFalse:                                          ; preds = %ifTrue, %.preheader96
  br label %.preheader

.preheader96:                                     ; preds = %.preheader
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4096, i64 4096, i64 4096)
  %j_s = add i10 %j, 1
  %exitcond5 = icmp eq i4 %i, -8
  %j_mid2 = select i1 %exitcond5, i10 %j_s, i10 %j
  %tmp_2 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str6)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind
  %tmp_10 = call i8 @_ssdm_op_Read.axis.volatile.i8P(i8* %inputStream_V)
  %tmp_11 = call i56 @_ssdm_op_PartSelect.i56.i64.i32.i32(i64 %temp, i32 8, i32 63)
  %temp_1 = select i1 %exitcond5, i56 0, i56 %tmp_11
  %temp_2 = call i64 @_ssdm_op_BitConcatenate.i64.i8.i56(i8 %tmp_10, i56 %temp_1)
  %empty_9 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str6, i32 %tmp_2)
  %i_op = add i4 %i, 1
  %i_1 = select i1 %exitcond5, i4 1, i4 %i_op
  %ifzero = icmp eq i4 %i_1, -8
  br i1 %ifzero, label %ifTrue, label %ifFalse

burst.wr.header:                                  ; preds = %burst.wr.header.preheader, %burst.wr.body
  %indvar = phi i10 [ %indvar_next, %burst.wr.body ], [ 0, %burst.wr.header.preheader ]
  %exitcond2 = icmp eq i10 %indvar, -512
  %empty_10 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 512, i64 512, i64 512)
  %indvar_next = add i10 %indvar, 1
  br i1 %exitcond2, label %burst.wr.end, label %burst.wr.body

burst.wr.body:                                    ; preds = %burst.wr.header
  %burstwrite_rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin([18 x i8]* @burstwrite_OC_region_str) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str7)
  %empty_11 = call i32 (...)* @_ssdm_op_SpecLoopName([32 x i8]* @memcpy_OC_base_ddr_addr_OC_buf) nounwind
  %tmp_9 = zext i10 %indvar to i64
  %buffer_addr = getelementptr [512 x i64]* %buffer, i64 0, i64 %tmp_9
  %buffer_load = load i64* %buffer_addr, align 8
  call void @_ssdm_op_Write.m_axi.i64P(i64* %base_ddr_addr_addr, i64 %buffer_load, i8 -1)
  %burstwrite_rend = call i32 (...)* @_ssdm_op_SpecRegionEnd([18 x i8]* @burstwrite_OC_region_str, i32 %burstwrite_rbegin) nounwind
  br label %burst.wr.header

burst.wr.end:                                     ; preds = %burst.wr.header
  %p_wr_resp = call i1 @_ssdm_op_WriteResp.m_axi.i64P(i64* %base_ddr_addr_addr)
  %offset_1 = add i32 %offset1, 512
  br label %1

._crit_edge100:                                   ; preds = %1
  %FRAME_BUFFER_NUMBER_load = load i8* @FRAME_BUFFER_NUMBER_r, align 1
  %tmp_2_cast = zext i8 %FRAME_BUFFER_NUMBER_load to i9
  %op2_assign = add i9 %tmp_2_cast, -1
  %tmp_4_cast = zext i8 %t_V to i9
  %tmp_5 = icmp eq i9 %tmp_4_cast, %op2_assign
  %tmp_6 = add i8 %t_V, 1
  %p_tmp_6 = select i1 %tmp_5, i8 0, i8 %tmp_6
  store i8 %p_tmp_6, i8* @inner_index_V, align 1
  %frame_count_inner_load = load i32* @frame_count_inner, align 4
  %tmp_7 = add nsw i32 %frame_count_inner_load, 1
  store i32 %tmp_7, i32* @frame_count_inner, align 4
  call void @_ssdm_op_Write.ap_none.i32P(i32* %frame_count, i32 %tmp_7)
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

define weak void @_ssdm_op_Write.ap_none.volatile.i8P(i8*, i8) {
entry:
  store i8 %1, i8* %0
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

define weak i8 @_ssdm_op_Read.s_axilite.i8(i8) {
entry:
  ret i8 %0
}

define weak i32 @_ssdm_op_Read.s_axilite.i32(i32) {
entry:
  ret i32 %0
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

define weak i56 @_ssdm_op_PartSelect.i56.i64.i32.i32(i64, i32, i32) nounwind readnone {
entry:
  %empty = call i64 @llvm.part.select.i64(i64 %0, i32 %1, i32 %2)
  %empty_12 = trunc i64 %empty to i56
  ret i56 %empty_12
}

define weak i32 @_ssdm_op_PartSelect.i32.i40.i32.i32(i40, i32, i32) nounwind readnone {
entry:
  %empty = call i40 @llvm.part.select.i40(i40 %0, i32 %1, i32 %2)
  %empty_13 = trunc i40 %empty to i32
  ret i32 %empty_13
}

define weak i29 @_ssdm_op_PartSelect.i29.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_14 = trunc i32 %empty to i29
  ret i29 %empty_14
}

define weak i20 @_ssdm_op_PartSelect.i20.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_15 = trunc i32 %empty to i20
  ret i20 %empty_15
}

declare i16 @_ssdm_op_HSub(...)

declare i16 @_ssdm_op_HMul(...)

declare i16 @_ssdm_op_HDiv(...)

declare i16 @_ssdm_op_HAdd(...)

define weak i64 @_ssdm_op_BitConcatenate.i64.i8.i56(i8, i56) nounwind readnone {
entry:
  %empty = zext i8 %0 to i64
  %empty_16 = zext i56 %1 to i64
  %empty_17 = shl i64 %empty, 56
  %empty_18 = or i64 %empty_17, %empty_16
  ret i64 %empty_18
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
!10 = metadata !{metadata !"inputStream.V", metadata !5, metadata !"unsigned char", i32 0, i32 7}
!11 = metadata !{metadata !12}
!12 = metadata !{i32 0, i32 63, metadata !13}
!13 = metadata !{metadata !14}
!14 = metadata !{metadata !"base_ddr_addr", metadata !15, metadata !"long long unsigned int", i32 0, i32 63}
!15 = metadata !{metadata !16}
!16 = metadata !{i32 0, i32 31, i32 1}
!17 = metadata !{metadata !18}
!18 = metadata !{i32 0, i32 7, metadata !19}
!19 = metadata !{metadata !20}
!20 = metadata !{metadata !"frame_index.V", metadata !5, metadata !"uint8", i32 0, i32 7}
!21 = metadata !{metadata !22}
!22 = metadata !{i32 0, i32 31, metadata !23}
!23 = metadata !{metadata !24}
!24 = metadata !{metadata !"frame_count", metadata !5, metadata !"unsigned int", i32 0, i32 31}
!25 = metadata !{metadata !26}
!26 = metadata !{i32 0, i32 31, metadata !27}
!27 = metadata !{metadata !28}
!28 = metadata !{metadata !"base_address", metadata !29, metadata !"unsigned int", i32 0, i32 31}
!29 = metadata !{metadata !30}
!30 = metadata !{i32 0, i32 0, i32 0}
!31 = metadata !{metadata !32}
!32 = metadata !{i32 0, i32 31, metadata !33}
!33 = metadata !{metadata !34}
!34 = metadata !{metadata !"frame_buffer_dim", metadata !29, metadata !"unsigned int", i32 0, i32 31}
!35 = metadata !{metadata !36}
!36 = metadata !{i32 0, i32 31, metadata !37}
!37 = metadata !{metadata !38}
!38 = metadata !{metadata !"frame_buffer_offset", metadata !29, metadata !"unsigned int", i32 0, i32 31}
!39 = metadata !{metadata !40}
!40 = metadata !{i32 0, i32 7, metadata !41}
!41 = metadata !{metadata !42}
!42 = metadata !{metadata !"frame_buffer_number", metadata !29, metadata !"unsigned char", i32 0, i32 7}
!43 = metadata !{metadata !44}
!44 = metadata !{i32 0, i32 0, metadata !45}
!45 = metadata !{metadata !46}
!46 = metadata !{metadata !"update_intr", metadata !29, metadata !"bool", i32 0, i32 0}
