; ModuleID = '/home/andrea/Documenti/vision/Ultrascale/hls/DDR/AXIS_TO_DDR_WRITER_AXILITE/AXIS_TO_DDR_WRITER_AXILITE_prj/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@memcpy_OC_base_ddr_a = internal unnamed_addr constant [32 x i8] c"memcpy.base_ddr_addr.buffer.gep\00"
@llvm_global_ctors_1 = appending global [0 x void ()*] zeroinitializer
@llvm_global_ctors_0 = appending global [0 x i32] zeroinitializer
@inner_index_V = internal global i8 0
@frame_count_inner = internal unnamed_addr global i32 0, align 4
@burstwrite_OC_region = internal unnamed_addr constant [18 x i8] c"burstwrite.region\00"
@axis_to_ddr_writer_s = internal unnamed_addr constant [19 x i8] c"axis_to_ddr_writer\00"
@FRAME_OFFSET = internal unnamed_addr global i32 307200, align 4
@FRAME_BUFFER_NUMBER_r = internal unnamed_addr global i8 8, align 1
@FRAME_BUFFER_DIM_r = internal unnamed_addr global i32 307200, align 4
@BASE_ADDRESS_r = internal global i29 0
@p_str8 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str7 = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1
@p_str6 = private unnamed_addr constant [12 x i8] c"RAM_2P_BRAM\00", align 1
@p_str5 = private unnamed_addr constant [8 x i8] c"ap_none\00", align 1
@p_str4 = private unnamed_addr constant [5 x i8] c"both\00", align 1
@p_str3 = private unnamed_addr constant [5 x i8] c"axis\00", align 1
@p_str2 = private unnamed_addr constant [6 x i8] c"m_axi\00", align 1
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1

declare i64 @llvm.part.select.i64(i64, i32, i32) nounwind readnone

declare i35 @llvm.part.select.i35(i35, i32, i32) nounwind readnone

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define void @axis_to_ddr_writer(i8* %inputStream_V, i64* %base_ddr_addr, i8* %frame_index_V, i32* %frame_count, i32 %base_address, i32 %frame_buffer_dim, i32 %frame_buffer_offset, i8 zeroext %frame_buffer_number, i1 zeroext %update_intr) {
codeRepl:
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %inputStream_V), !map !67
  call void (...)* @_ssdm_op_SpecBitsMap(i64* %base_ddr_addr), !map !71
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %frame_index_V), !map !77
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %frame_count), !map !81
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %base_address), !map !85
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %frame_buffer_dim), !map !91
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %frame_buffer_offset), !map !95
  call void (...)* @_ssdm_op_SpecBitsMap(i8 %frame_buffer_number), !map !99
  call void (...)* @_ssdm_op_SpecBitsMap(i1 %update_intr), !map !103
  call void (...)* @_ssdm_op_SpecTopModule([19 x i8]* @axis_to_ddr_writer_s) nounwind
  %update_intr_read = call i1 @_ssdm_op_Read.s_axilite.i1(i1 %update_intr)
  %frame_buffer_number_s = call i8 @_ssdm_op_Read.s_axilite.i8(i8 %frame_buffer_number)
  %frame_buffer_offset_s = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %frame_buffer_offset)
  %frame_buffer_dim_rea = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %frame_buffer_dim)
  %base_address_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %base_address)
  %buffer = alloca [512 x i64], align 16
  call void (...)* @_ssdm_op_SpecInterface(i32 %base_address, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i1 %update_intr, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %frame_buffer_offset, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %frame_buffer_dim, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8 %frame_buffer_number, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i64* %base_ddr_addr, [6 x i8]* @p_str2, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 32, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %inputStream_V, [5 x i8]* @p_str3, i32 1, i32 1, [5 x i8]* @p_str4, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %frame_count, [8 x i8]* @p_str5, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %frame_index_V, [8 x i8]* @p_str5, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecMemCore([512 x i64]* %buffer, [1 x i8]* @p_str1, [12 x i8]* @p_str6, [1 x i8]* @p_str1, i32 -1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecReset(i8* @inner_index_V, i32 1, [1 x i8]* @p_str1) nounwind
  %t_V = load i8* @inner_index_V, align 1
  call void @_ssdm_op_Write.ap_none.volatile.i8P(i8* %frame_index_V, i8 %t_V)
  call void (...)* @_ssdm_op_SpecReset(i32* @FRAME_BUFFER_DIM_r, i32 0, [1 x i8]* @p_str1) nounwind
  %FRAME_OFFSET_load = load i32* @FRAME_OFFSET, align 4
  call void (...)* @_ssdm_op_SpecReset(i32* @FRAME_OFFSET, i32 0, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecReset(i8* @FRAME_BUFFER_NUMBER_r, i32 0, [1 x i8]* @p_str1) nounwind
  %BASE_ADDRESS_load = load i29* @BASE_ADDRESS_r, align 4
  call void (...)* @_ssdm_op_SpecReset(i29* @BASE_ADDRESS_r, i32 0, [1 x i8]* @p_str1) nounwind
  br i1 %update_intr_read, label %0, label %._crit_edge98

; <label>:0                                       ; preds = %codeRepl
  store i32 %frame_buffer_dim_rea, i32* @FRAME_BUFFER_DIM_r, align 4
  store i8 %frame_buffer_number_s, i8* @FRAME_BUFFER_NUMBER_r, align 1
  store i32 %frame_buffer_offset_s, i32* @FRAME_OFFSET, align 4
  %tmp_3_cast4 = call i29 @_ssdm_op_PartSelect.i29.i32.i32.i32(i32 %base_address_read, i32 3, i32 31)
  store i29 %tmp_3_cast4, i29* @BASE_ADDRESS_r, align 4
  br label %._crit_edge98

._crit_edge98:                                    ; preds = %0, %codeRepl
  %i_op_assign = phi i32 [ %frame_buffer_offset_s, %0 ], [ %FRAME_OFFSET_load, %codeRepl ]
  %i_op_assign_1 = phi i29 [ %tmp_3_cast4, %0 ], [ %BASE_ADDRESS_load, %codeRepl ]
  %i_op_assign_1_cast = zext i29 %i_op_assign_1 to i32
  %lhs_V_cast = zext i8 %t_V to i35
  %rhs_V_cast = zext i32 %i_op_assign to i35
  %r_V = mul i35 %rhs_V_cast, %lhs_V_cast
  %tmp_8 = call i32 @_ssdm_op_PartSelect.i32.i35.i32.i32(i35 %r_V, i32 3, i32 34)
  %offset = add i32 %tmp_8, %i_op_assign_1_cast
  br label %1

; <label>:1                                       ; preds = %memcpy.tail, %._crit_edge98
  %offset1 = phi i32 [ %offset, %._crit_edge98 ], [ %offset_1, %memcpy.tail ]
  %idx = phi i32 [ 0, %._crit_edge98 ], [ %idx_1, %memcpy.tail ]
  %FRAME_BUFFER_DIM_loa = load i32* @FRAME_BUFFER_DIM_r, align 4
  %tmp_s = call i20 @_ssdm_op_PartSelect.i20.i32.i32.i32(i32 %FRAME_BUFFER_DIM_loa, i32 12, i32 31)
  %tmp_3 = zext i20 %tmp_s to i32
  %tmp_1 = icmp ult i32 %idx, %tmp_3
  %idx_1 = add nsw i32 %idx, 1
  br i1 %tmp_1, label %.preheader.preheader, label %._crit_edge99

.preheader.preheader:                             ; preds = %1
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %ifFalse
  %indvar_flatten = phi i13 [ %indvar_flatten_next, %ifFalse ], [ 0, %.preheader.preheader ]
  %j = phi i10 [ %j_mid2, %ifFalse ], [ 0, %.preheader.preheader ]
  %temp = phi i64 [ %temp_2, %ifFalse ], [ 0, %.preheader.preheader ]
  %i = phi i4 [ %i_1, %ifFalse ], [ 0, %.preheader.preheader ]
  %exitcond_flatten = icmp eq i13 %indvar_flatten, -4096
  %indvar_flatten_next = add i13 %indvar_flatten, 1
  br i1 %exitcond_flatten, label %2, label %.preheader95

ifTrue:                                           ; preds = %.preheader95
  %tmp_10 = zext i10 %j_mid2 to i64
  %buffer_addr = getelementptr inbounds [512 x i64]* %buffer, i64 0, i64 %tmp_10
  store i64 %temp_2, i64* %buffer_addr, align 8
  br label %ifFalse

ifFalse:                                          ; preds = %ifTrue, %.preheader95
  br label %.preheader

.preheader95:                                     ; preds = %.preheader
  %j_s = add i10 %j, 1
  %tmp_4 = icmp eq i4 %i, -8
  %j_mid2 = select i1 %tmp_4, i10 %j_s, i10 %j
  %tmp_6 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str7)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind
  %tmp = call i8 @_ssdm_op_Read.axis.volatile.i8P(i8* %inputStream_V)
  %tmp_11 = call i56 @_ssdm_op_PartSelect.i56.i64.i32.i32(i64 %temp, i32 8, i32 63)
  %temp_1 = select i1 %tmp_4, i56 0, i56 %tmp_11
  %temp_2 = call i64 @_ssdm_op_BitConcatenate.i64.i8.i56(i8 %tmp, i56 %temp_1)
  %empty = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str7, i32 %tmp_6)
  %i_op = add i4 %i, 1
  %i_1 = select i1 %tmp_4, i4 1, i4 %i_op
  %ifzero = icmp eq i4 %i_1, -8
  br i1 %ifzero, label %ifTrue, label %ifFalse

; <label>:2                                       ; preds = %.preheader
  %tmp_9 = sext i32 %offset1 to i64
  %base_ddr_addr_addr = getelementptr inbounds i64* %base_ddr_addr, i64 %tmp_9
  %base_ddr_addr_addr_1 = call i1 @_ssdm_op_WriteReq.m_axi.i64P(i64* %base_ddr_addr_addr, i32 512)
  br label %burst.wr.header

burst.wr.header:                                  ; preds = %burst.wr.body, %2
  %indvar = phi i10 [ 0, %2 ], [ %indvar_next, %burst.wr.body ]
  %exitcond = icmp eq i10 %indvar, -512
  %empty_9 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 512, i64 512, i64 512)
  %indvar_next = add i10 %indvar, 1
  br i1 %exitcond, label %memcpy.tail, label %burst.wr.body

burst.wr.body:                                    ; preds = %burst.wr.header
  %burstwrite_rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin([18 x i8]* @burstwrite_OC_region) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str8)
  %empty_10 = call i32 (...)* @_ssdm_op_SpecLoopName([32 x i8]* @memcpy_OC_base_ddr_a) nounwind
  %indvar1 = zext i10 %indvar to i64
  %buffer_addr_1 = getelementptr [512 x i64]* %buffer, i64 0, i64 %indvar1
  %buffer_load = load i64* %buffer_addr_1, align 8
  call void @_ssdm_op_Write.m_axi.i64P(i64* %base_ddr_addr_addr, i64 %buffer_load, i8 -1)
  %burstwrite_rend = call i32 (...)* @_ssdm_op_SpecRegionEnd([18 x i8]* @burstwrite_OC_region, i32 %burstwrite_rbegin) nounwind
  br label %burst.wr.header

memcpy.tail:                                      ; preds = %burst.wr.header
  %base_ddr_addr_addr_1_1 = call i1 @_ssdm_op_WriteResp.m_axi.i64P(i64* %base_ddr_addr_addr)
  %offset_1 = add i32 %offset1, 512
  br label %1

._crit_edge99:                                    ; preds = %1
  %FRAME_BUFFER_NUMBER_s = load i8* @FRAME_BUFFER_NUMBER_r, align 1
  %tmp_2_cast = zext i8 %FRAME_BUFFER_NUMBER_s to i9
  %op2_assign = add i9 %tmp_2_cast, -1
  %tmp_4_cast = zext i8 %t_V to i9
  %tmp_5 = icmp eq i9 %tmp_4_cast, %op2_assign
  %tmp_7 = add i8 %t_V, 1
  %p_tmp_7 = select i1 %tmp_5, i8 0, i8 %tmp_7
  store i8 %p_tmp_7, i8* @inner_index_V, align 1
  %frame_count_inner_lo = load i32* @frame_count_inner, align 4
  %tmp_2 = add nsw i32 %frame_count_inner_lo, 1
  store i32 %tmp_2, i32* @frame_count_inner, align 4
  call void @_ssdm_op_Write.ap_none.i32P(i32* %frame_count, i32 %tmp_2)
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
  %empty_11 = trunc i64 %empty to i56
  ret i56 %empty_11
}

define weak i32 @_ssdm_op_PartSelect.i32.i35.i32.i32(i35, i32, i32) nounwind readnone {
entry:
  %empty = call i35 @llvm.part.select.i35(i35 %0, i32 %1, i32 %2)
  %empty_12 = trunc i35 %empty to i32
  ret i32 %empty_12
}

define weak i29 @_ssdm_op_PartSelect.i29.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_13 = trunc i32 %empty to i29
  ret i29 %empty_13
}

define weak i20 @_ssdm_op_PartSelect.i20.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_14 = trunc i32 %empty to i20
  ret i20 %empty_14
}

define weak i64 @_ssdm_op_BitConcatenate.i64.i8.i56(i8, i56) nounwind readnone {
entry:
  %empty = zext i8 %0 to i64
  %empty_15 = zext i56 %1 to i64
  %empty_16 = shl i64 %empty, 56
  %empty_17 = or i64 %empty_16, %empty_15
  ret i64 %empty_17
}

!opencl.kernels = !{!0, !7, !13, !13, !15, !21, !24, !26, !13, !13, !15, !32, !15, !15, !34, !37, !37, !15, !39, !15, !15, !15, !41, !41, !43, !43, !45, !48, !48, !15, !50, !15, !15, !15, !52, !54, !43, !43, !56, !56, !24, !58, !58, !15, !15}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!60}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 1, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"hls::stream<DATA_IN> &", metadata !"u64*", metadata !"ap_uint<8>*", metadata !"uint*", metadata !"u32", metadata !"u32", metadata !"u32", metadata !"u8", metadata !"_Bool"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"volatile", metadata !"volatile", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"inputStream", metadata !"base_ddr_addr", metadata !"frame_index", metadata !"frame_count", metadata !"base_address", metadata !"frame_buffer_dim", metadata !"frame_buffer_offset", metadata !"frame_buffer_number", metadata !"update_intr"}
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
!24 = metadata !{null, metadata !8, metadata !9, metadata !25, metadata !11, metadata !23, metadata !6}
!25 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<8> &"}
!26 = metadata !{null, metadata !27, metadata !28, metadata !29, metadata !30, metadata !31, metadata !6}
!27 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!28 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!29 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, false> &", metadata !"int"}
!30 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!31 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"op2"}
!32 = metadata !{null, metadata !8, metadata !9, metadata !33, metadata !11, metadata !23, metadata !6}
!33 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &"}
!34 = metadata !{null, metadata !27, metadata !28, metadata !35, metadata !30, metadata !36, metadata !6}
!35 = metadata !{metadata !"kernel_arg_type", metadata !"uint", metadata !"const ap_int_base<40, false> &"}
!36 = metadata !{metadata !"kernel_arg_name", metadata !"i_op", metadata !"op"}
!37 = metadata !{null, metadata !8, metadata !9, metadata !38, metadata !11, metadata !14, metadata !6}
!38 = metadata !{metadata !"kernel_arg_type", metadata !"uint"}
!39 = metadata !{null, metadata !27, metadata !28, metadata !40, metadata !30, metadata !31, metadata !6}
!40 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, false> &", metadata !"const ap_int_base<40, false> &"}
!41 = metadata !{null, metadata !8, metadata !9, metadata !42, metadata !11, metadata !14, metadata !6}
!42 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<40, false> &"}
!43 = metadata !{null, metadata !8, metadata !9, metadata !44, metadata !11, metadata !14, metadata !6}
!44 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, false> &"}
!45 = metadata !{null, metadata !27, metadata !28, metadata !46, metadata !30, metadata !47, metadata !6}
!46 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<40, false> &", metadata !"ulong"}
!47 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"i_op"}
!48 = metadata !{null, metadata !8, metadata !9, metadata !49, metadata !11, metadata !14, metadata !6}
!49 = metadata !{metadata !"kernel_arg_type", metadata !"ulong"}
!50 = metadata !{null, metadata !27, metadata !28, metadata !51, metadata !30, metadata !31, metadata !6}
!51 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<40, false> &", metadata !"const ap_int_base<64, false> &"}
!52 = metadata !{null, metadata !27, metadata !28, metadata !53, metadata !30, metadata !47, metadata !6}
!53 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, false> &", metadata !"uint"}
!54 = metadata !{null, metadata !27, metadata !28, metadata !55, metadata !30, metadata !31, metadata !6}
!55 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, false> &", metadata !"const ap_int_base<32, false> &"}
!56 = metadata !{null, metadata !8, metadata !9, metadata !57, metadata !11, metadata !14, metadata !6}
!57 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, false> &"}
!58 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !59, metadata !6}
!59 = metadata !{metadata !"kernel_arg_name", metadata !"val"}
!60 = metadata !{metadata !61, [0 x i32]* @llvm_global_ctors_0}
!61 = metadata !{metadata !62}
!62 = metadata !{i32 0, i32 31, metadata !63}
!63 = metadata !{metadata !64}
!64 = metadata !{metadata !"llvm.global_ctors.0", metadata !65, metadata !"", i32 0, i32 31}
!65 = metadata !{metadata !66}
!66 = metadata !{i32 0, i32 0, i32 1}
!67 = metadata !{metadata !68}
!68 = metadata !{i32 0, i32 7, metadata !69}
!69 = metadata !{metadata !70}
!70 = metadata !{metadata !"inputStream.V", metadata !65, metadata !"unsigned char", i32 0, i32 7}
!71 = metadata !{metadata !72}
!72 = metadata !{i32 0, i32 63, metadata !73}
!73 = metadata !{metadata !74}
!74 = metadata !{metadata !"base_ddr_addr", metadata !75, metadata !"long long unsigned int", i32 0, i32 63}
!75 = metadata !{metadata !76}
!76 = metadata !{i32 0, i32 31, i32 1}
!77 = metadata !{metadata !78}
!78 = metadata !{i32 0, i32 7, metadata !79}
!79 = metadata !{metadata !80}
!80 = metadata !{metadata !"frame_index.V", metadata !65, metadata !"uint8", i32 0, i32 7}
!81 = metadata !{metadata !82}
!82 = metadata !{i32 0, i32 31, metadata !83}
!83 = metadata !{metadata !84}
!84 = metadata !{metadata !"frame_count", metadata !65, metadata !"unsigned int", i32 0, i32 31}
!85 = metadata !{metadata !86}
!86 = metadata !{i32 0, i32 31, metadata !87}
!87 = metadata !{metadata !88}
!88 = metadata !{metadata !"base_address", metadata !89, metadata !"unsigned int", i32 0, i32 31}
!89 = metadata !{metadata !90}
!90 = metadata !{i32 0, i32 0, i32 0}
!91 = metadata !{metadata !92}
!92 = metadata !{i32 0, i32 31, metadata !93}
!93 = metadata !{metadata !94}
!94 = metadata !{metadata !"frame_buffer_dim", metadata !89, metadata !"unsigned int", i32 0, i32 31}
!95 = metadata !{metadata !96}
!96 = metadata !{i32 0, i32 31, metadata !97}
!97 = metadata !{metadata !98}
!98 = metadata !{metadata !"frame_buffer_offset", metadata !89, metadata !"unsigned int", i32 0, i32 31}
!99 = metadata !{metadata !100}
!100 = metadata !{i32 0, i32 7, metadata !101}
!101 = metadata !{metadata !102}
!102 = metadata !{metadata !"frame_buffer_number", metadata !89, metadata !"unsigned char", i32 0, i32 7}
!103 = metadata !{metadata !104}
!104 = metadata !{i32 0, i32 0, metadata !105}
!105 = metadata !{metadata !106}
!106 = metadata !{metadata !"update_intr", metadata !89, metadata !"bool", i32 0, i32 0}
