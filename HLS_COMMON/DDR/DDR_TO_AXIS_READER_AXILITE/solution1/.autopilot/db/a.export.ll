; ModuleID = 'C:/Test_3_Tesi/HLS_COMMON/DDR/DDR_TO_AXIS_READER_AXILITE/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@memcpy_OC_buffer_OC_base_ddr_a = internal unnamed_addr constant [28 x i8] c"memcpy.buffer.base_ddr_addr\00"
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@ddr_to_axis_reader_str = internal unnamed_addr constant [19 x i8] c"ddr_to_axis_reader\00"
@burstread_OC_region_str = internal unnamed_addr constant [17 x i8] c"burstread.region\00"
@FRAME_OFFSET = internal unnamed_addr global i32 307200, align 4
@FRAME_BUFFER_NUMBER_r = internal unnamed_addr global i32 8, align 4
@FRAME_BUFFER_DIM_r = internal unnamed_addr global i32 307200, align 4
@BASE_ADDRESS_r = internal unnamed_addr global i32 8, align 4
@p_str7 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str6 = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1
@p_str5 = private unnamed_addr constant [12 x i8] c"RAM_2P_BRAM\00", align 1
@p_str4 = private unnamed_addr constant [8 x i8] c"ap_none\00", align 1
@p_str3 = private unnamed_addr constant [6 x i8] c"m_axi\00", align 1
@p_str2 = private unnamed_addr constant [5 x i8] c"axis\00", align 1
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1

declare i64 @llvm.part.select.i64(i64, i32, i32) nounwind readnone

declare i40 @llvm.part.select.i40(i40, i32, i32) nounwind readnone

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare i13 @llvm.part.select.i13(i13, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define void @ddr_to_axis_reader(i8* %outStream_V, i64* %base_ddr_addr, i8* %frame_index_V, i32 %base_address, i32 %frame_buffer_dim, i32 %frame_buffer_offset, i8 zeroext %frame_buffer_number, i1 zeroext %update_intr) {
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %outStream_V), !map !7
  call void (...)* @_ssdm_op_SpecBitsMap(i64* %base_ddr_addr), !map !11
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %frame_index_V), !map !17
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %base_address), !map !21
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %frame_buffer_dim), !map !27
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %frame_buffer_offset), !map !31
  call void (...)* @_ssdm_op_SpecBitsMap(i8 %frame_buffer_number), !map !35
  call void (...)* @_ssdm_op_SpecBitsMap(i1 %update_intr), !map !39
  call void (...)* @_ssdm_op_SpecTopModule([19 x i8]* @ddr_to_axis_reader_str) nounwind
  %update_intr_read = call i1 @_ssdm_op_Read.s_axilite.i1(i1 %update_intr)
  %frame_buffer_number_read = call i8 @_ssdm_op_Read.s_axilite.i8(i8 %frame_buffer_number)
  %frame_buffer_offset_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %frame_buffer_offset)
  %frame_buffer_dim_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %frame_buffer_dim)
  %base_address_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %base_address)
  %buffer = alloca [512 x i64], align 16
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %base_address, [10 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i1 %update_intr, [10 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1) nounwind
  %tmp_1 = zext i8 %frame_buffer_number_read to i32
  call void (...)* @_ssdm_op_SpecInterface(i8 %frame_buffer_number, [10 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %frame_buffer_offset, [10 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %frame_buffer_dim, [10 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %outStream_V, [5 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i64* %base_ddr_addr, [6 x i8]* @p_str3, i32 0, i32 0, i32 0, i32 128, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %frame_index_V, [8 x i8]* @p_str4, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecMemCore([512 x i64]* %buffer, [1 x i8]* @p_str1, [12 x i8]* @p_str5, [1 x i8]* @p_str1, i32 -1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecReset(i32* @FRAME_BUFFER_DIM_r, i32 0, [1 x i8]* @p_str1) nounwind
  %FRAME_OFFSET_load = load i32* @FRAME_OFFSET, align 4
  call void (...)* @_ssdm_op_SpecReset(i32* @FRAME_OFFSET, i32 0, [1 x i8]* @p_str1) nounwind
  %FRAME_BUFFER_NUMBER_load = load i32* @FRAME_BUFFER_NUMBER_r, align 4
  call void (...)* @_ssdm_op_SpecReset(i32* @FRAME_BUFFER_NUMBER_r, i32 0, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecReset(i32* @BASE_ADDRESS_r, i32 0, [1 x i8]* @p_str1) nounwind
  br i1 %update_intr_read, label %1, label %._crit_edge

; <label>:1                                       ; preds = %0
  store i32 %frame_buffer_dim_read, i32* @FRAME_BUFFER_DIM_r, align 4
  store i32 %tmp_1, i32* @FRAME_BUFFER_NUMBER_r, align 4
  store i32 %frame_buffer_offset_read, i32* @FRAME_OFFSET, align 4
  %tmp_2 = call i29 @_ssdm_op_PartSelect.i29.i32.i32.i32(i32 %base_address_read, i32 3, i32 31)
  %tmp_5 = zext i29 %tmp_2 to i32
  store i32 %tmp_5, i32* @BASE_ADDRESS_r, align 4
  br label %._crit_edge

._crit_edge:                                      ; preds = %1, %0
  %i_op_assign = phi i32 [ %frame_buffer_offset_read, %1 ], [ %FRAME_OFFSET_load, %0 ]
  %tmp_3 = phi i32 [ %tmp_1, %1 ], [ %FRAME_BUFFER_NUMBER_load, %0 ]
  %t_V_2 = call i8 @_ssdm_op_Read.ap_none.i8P(i8* %frame_index_V)
  %tmp_4 = icmp eq i8 %t_V_2, 0
  %tmp = trunc i32 %tmp_3 to i8
  %t_V = select i1 %tmp_4, i8 %tmp, i8 %t_V_2
  %inner_index_V_1 = add i8 -1, %t_V
  %lhs_V = zext i8 %inner_index_V_1 to i40
  %rhs_V = zext i32 %i_op_assign to i40
  %r_V = mul i40 %lhs_V, %rhs_V
  %tmp_s = call i32 @_ssdm_op_PartSelect.i32.i40.i32.i32(i40 %r_V, i32 3, i32 34)
  %offset = add i32 134217728, %tmp_s
  br label %2

; <label>:2                                       ; preds = %5, %._crit_edge
  %offset1 = phi i32 [ %offset, %._crit_edge ], [ %offset_1, %5 ]
  %i = phi i32 [ 0, %._crit_edge ], [ %i_1, %5 ]
  %FRAME_BUFFER_DIM_load = load i32* @FRAME_BUFFER_DIM_r, align 4
  %tmp_6 = call i20 @_ssdm_op_PartSelect.i20.i32.i32.i32(i32 %FRAME_BUFFER_DIM_load, i32 12, i32 31)
  %tmp_9 = zext i20 %tmp_6 to i32
  %tmp_7 = icmp ult i32 %i, %tmp_9
  %i_1 = add nsw i32 %i, 1
  br i1 %tmp_7, label %3, label %6

; <label>:3                                       ; preds = %2
  %tmp_8 = sext i32 %offset1 to i64
  %base_ddr_addr_addr = getelementptr inbounds i64* %base_ddr_addr, i64 %tmp_8
  %base_ddr_addr_addr_1_rd_req = call i1 @_ssdm_op_ReadReq.m_axi.i64P(i64* %base_ddr_addr_addr, i32 512)
  br label %burst.rd.header

burst.rd.header:                                  ; preds = %burst.rd.body, %3
  %indvar = phi i10 [ 0, %3 ], [ %indvar_next, %burst.rd.body ]
  %exitcond1 = icmp eq i10 %indvar, -512
  %indvar_next = add i10 %indvar, 1
  br i1 %exitcond1, label %burst.rd.end, label %burst.rd.body

burst.rd.body:                                    ; preds = %burst.rd.header
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 512, i64 512, i64 512)
  %burstread_rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin([17 x i8]* @burstread_OC_region_str) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str7)
  %empty_11 = call i32 (...)* @_ssdm_op_SpecLoopName([28 x i8]* @memcpy_OC_buffer_OC_base_ddr_a) nounwind
  %base_ddr_addr_addr_read = call i64 @_ssdm_op_Read.m_axi.i64P(i64* %base_ddr_addr_addr)
  %tmp_10 = zext i10 %indvar to i64
  %buffer_addr = getelementptr [512 x i64]* %buffer, i64 0, i64 %tmp_10
  store i64 %base_ddr_addr_addr_read, i64* %buffer_addr, align 8
  %burstread_rend = call i32 (...)* @_ssdm_op_SpecRegionEnd([17 x i8]* @burstread_OC_region_str, i32 %burstread_rbegin) nounwind
  br label %burst.rd.header

burst.rd.end:                                     ; preds = %burst.rd.header, %4
  %j = phi i13 [ %j_1, %4 ], [ 0, %burst.rd.header ]
  %exitcond = icmp eq i13 %j, -4096
  %j_1 = add i13 %j, 1
  br i1 %exitcond, label %5, label %4

; <label>:4                                       ; preds = %burst.rd.end
  %empty_12 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4096, i64 4096, i64 4096)
  %tmp_11 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str6)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind
  %tmp_12 = trunc i13 %j to i3
  %gepindex_cast = call i9 @_ssdm_op_PartSelect.i9.i13.i32.i32(i13 %j, i32 3, i32 11)
  %gepindex2_cast = zext i9 %gepindex_cast to i64
  %buffer_addr_1 = getelementptr [512 x i64]* %buffer, i64 0, i64 %gepindex2_cast
  %buffer_load = load i64* %buffer_addr_1, align 8
  %start_pos = call i6 @_ssdm_op_BitConcatenate.i6.i3.i3(i3 %tmp_12, i3 0)
  %end_pos = or i6 %start_pos, 7
  %tmp_13 = icmp ugt i6 %start_pos, %end_pos
  %tmp_14 = zext i6 %start_pos to i7
  %tmp_15 = zext i6 %end_pos to i7
  %tmp_16 = call i64 @llvm.part.select.i64(i64 %buffer_load, i32 63, i32 0)
  %tmp_17 = sub i7 %tmp_14, %tmp_15
  %tmp_18 = xor i7 %tmp_14, 63
  %tmp_19 = sub i7 %tmp_15, %tmp_14
  %tmp_20 = select i1 %tmp_13, i7 %tmp_17, i7 %tmp_19
  %tmp_21 = select i1 %tmp_13, i64 %tmp_16, i64 %buffer_load
  %tmp_22 = select i1 %tmp_13, i7 %tmp_18, i7 %tmp_14
  %tmp_23 = sub i7 63, %tmp_20
  %tmp_24 = zext i7 %tmp_22 to i64
  %tmp_25 = zext i7 %tmp_23 to i64
  %tmp_26 = lshr i64 %tmp_21, %tmp_24
  %tmp_27 = lshr i64 -1, %tmp_25
  %tmp_28 = and i64 %tmp_26, %tmp_27
  %tmp_29 = trunc i64 %tmp_28 to i8
  call void @_ssdm_op_Write.axis.volatile.i8P(i8* %outStream_V, i8 %tmp_29)
  %empty_13 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str6, i32 %tmp_11)
  br label %burst.rd.end

; <label>:5                                       ; preds = %burst.rd.end
  %offset_1 = add i32 %offset1, 512
  br label %2

; <label>:6                                       ; preds = %2
  ret void
}

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

define weak i1 @_ssdm_op_ReadReq.m_axi.i64P(i64*, i32) {
entry:
  ret i1 true
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

define weak i64 @_ssdm_op_Read.m_axi.i64P(i64*) {
entry:
  %empty = load i64* %0
  ret i64 %empty
}

define weak i8 @_ssdm_op_Read.ap_none.i8P(i8*) {
entry:
  %empty = load i8* %0
  ret i8 %empty
}

define weak i9 @_ssdm_op_PartSelect.i9.i13.i32.i32(i13, i32, i32) nounwind readnone {
entry:
  %empty = call i13 @llvm.part.select.i13(i13 %0, i32 %1, i32 %2)
  %empty_14 = trunc i13 %empty to i9
  ret i9 %empty_14
}

declare i8 @_ssdm_op_PartSelect.i8.i64.i32.i32(i64, i32, i32) nounwind readnone

declare i8 @_ssdm_op_PartSelect.i8.i32.i32.i32(i32, i32, i32) nounwind readnone

define weak i32 @_ssdm_op_PartSelect.i32.i40.i32.i32(i40, i32, i32) nounwind readnone {
entry:
  %empty = call i40 @llvm.part.select.i40(i40 %0, i32 %1, i32 %2)
  %empty_15 = trunc i40 %empty to i32
  ret i32 %empty_15
}

declare i3 @_ssdm_op_PartSelect.i3.i13.i32.i32(i13, i32, i32) nounwind readnone

define weak i29 @_ssdm_op_PartSelect.i29.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_16 = trunc i32 %empty to i29
  ret i29 %empty_16
}

define weak i20 @_ssdm_op_PartSelect.i20.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_17 = trunc i32 %empty to i20
  ret i20 %empty_17
}

define weak i6 @_ssdm_op_BitConcatenate.i6.i3.i3(i3, i3) nounwind readnone {
entry:
  %empty = zext i3 %0 to i6
  %empty_18 = zext i3 %1 to i6
  %empty_19 = shl i6 %empty, 3
  %empty_20 = or i6 %empty_19, %empty_18
  ret i6 %empty_20
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
!10 = metadata !{metadata !"outStream.V", metadata !5, metadata !"unsigned char", i32 0, i32 7}
!11 = metadata !{metadata !12}
!12 = metadata !{i32 0, i32 63, metadata !13}
!13 = metadata !{metadata !14}
!14 = metadata !{metadata !"base_ddr_addr", metadata !15, metadata !"long long unsigned int", i32 0, i32 63}
!15 = metadata !{metadata !16}
!16 = metadata !{i32 0, i32 127, i32 1}
!17 = metadata !{metadata !18}
!18 = metadata !{i32 0, i32 7, metadata !19}
!19 = metadata !{metadata !20}
!20 = metadata !{metadata !"frame_index.V", metadata !5, metadata !"uint8", i32 0, i32 7}
!21 = metadata !{metadata !22}
!22 = metadata !{i32 0, i32 31, metadata !23}
!23 = metadata !{metadata !24}
!24 = metadata !{metadata !"base_address", metadata !25, metadata !"unsigned int", i32 0, i32 31}
!25 = metadata !{metadata !26}
!26 = metadata !{i32 0, i32 0, i32 0}
!27 = metadata !{metadata !28}
!28 = metadata !{i32 0, i32 31, metadata !29}
!29 = metadata !{metadata !30}
!30 = metadata !{metadata !"frame_buffer_dim", metadata !25, metadata !"unsigned int", i32 0, i32 31}
!31 = metadata !{metadata !32}
!32 = metadata !{i32 0, i32 31, metadata !33}
!33 = metadata !{metadata !34}
!34 = metadata !{metadata !"frame_buffer_offset", metadata !25, metadata !"unsigned int", i32 0, i32 31}
!35 = metadata !{metadata !36}
!36 = metadata !{i32 0, i32 7, metadata !37}
!37 = metadata !{metadata !38}
!38 = metadata !{metadata !"frame_buffer_number", metadata !25, metadata !"unsigned char", i32 0, i32 7}
!39 = metadata !{metadata !40}
!40 = metadata !{i32 0, i32 0, metadata !41}
!41 = metadata !{metadata !42}
!42 = metadata !{metadata !"update_intr", metadata !25, metadata !"bool", i32 0, i32 0}
