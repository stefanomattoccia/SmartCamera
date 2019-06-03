; ModuleID = '/home/andrea/Documenti/vision/Ultrascale/hls/DDR/DDR_TO_AXIS_READER_AXILITE/DDR_TO_AXIS_READER_AXILITE_prj/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@memcpy_OC_buffer_OC_s = internal unnamed_addr constant [28 x i8] c"memcpy.buffer.base_ddr_addr\00"
@llvm_global_ctors_1 = appending global [0 x void ()*] zeroinitializer
@llvm_global_ctors_0 = appending global [0 x i32] zeroinitializer
@ddr_to_axis_reader_s = internal unnamed_addr constant [19 x i8] c"ddr_to_axis_reader\00"
@burstread_OC_region_s = internal unnamed_addr constant [17 x i8] c"burstread.region\00"
@FRAME_OFFSET = internal unnamed_addr global i32 307200, align 4
@FRAME_BUFFER_NUMBER_r = internal unnamed_addr global i32 8, align 4
@FRAME_BUFFER_DIM_r = internal unnamed_addr global i32 307200, align 4
@BASE_ADDRESS_r = internal unnamed_addr global i32 8, align 4
@p_str8 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str7 = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1
@p_str6 = private unnamed_addr constant [12 x i8] c"RAM_2P_BRAM\00", align 1
@p_str5 = private unnamed_addr constant [8 x i8] c"ap_none\00", align 1
@p_str4 = private unnamed_addr constant [6 x i8] c"m_axi\00", align 1
@p_str3 = private unnamed_addr constant [5 x i8] c"both\00", align 1
@p_str2 = private unnamed_addr constant [5 x i8] c"axis\00", align 1
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1

declare i64 @llvm.part.select.i64(i64, i32, i32) nounwind readnone

declare i35 @llvm.part.select.i35(i35, i32, i32) nounwind readnone

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare i13 @llvm.part.select.i13(i13, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define void @ddr_to_axis_reader(i8* %outStream_V, i64* %base_ddr_addr, i8* %frame_index_V, i32 %base_address, i32 %frame_buffer_dim, i32 %frame_buffer_offset, i8 zeroext %frame_buffer_number, i1 zeroext %update_intr) {
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %outStream_V), !map !70
  call void (...)* @_ssdm_op_SpecBitsMap(i64* %base_ddr_addr), !map !74
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %frame_index_V), !map !80
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %base_address), !map !84
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %frame_buffer_dim), !map !90
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %frame_buffer_offset), !map !94
  call void (...)* @_ssdm_op_SpecBitsMap(i8 %frame_buffer_number), !map !98
  call void (...)* @_ssdm_op_SpecBitsMap(i1 %update_intr), !map !102
  call void (...)* @_ssdm_op_SpecTopModule([19 x i8]* @ddr_to_axis_reader_s) nounwind
  %update_intr_read = call i1 @_ssdm_op_Read.s_axilite.i1(i1 %update_intr)
  %frame_buffer_number_s = call i8 @_ssdm_op_Read.s_axilite.i8(i8 %frame_buffer_number)
  %frame_buffer_offset_s = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %frame_buffer_offset)
  %frame_buffer_dim_rea = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %frame_buffer_dim)
  %base_address_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %base_address)
  %buffer = alloca [512 x i64], align 16
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %base_address, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i1 %update_intr, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  %tmp_1 = zext i8 %frame_buffer_number_s to i32
  call void (...)* @_ssdm_op_SpecInterface(i8 %frame_buffer_number, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %frame_buffer_offset, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %frame_buffer_dim, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %outStream_V, [5 x i8]* @p_str2, i32 1, i32 1, [5 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i64* %base_ddr_addr, [6 x i8]* @p_str4, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 128, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %frame_index_V, [8 x i8]* @p_str5, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecMemCore([512 x i64]* %buffer, [1 x i8]* @p_str1, [12 x i8]* @p_str6, [1 x i8]* @p_str1, i32 -1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecReset(i32* @FRAME_BUFFER_DIM_r, i32 0, [1 x i8]* @p_str1) nounwind
  %FRAME_OFFSET_load = load i32* @FRAME_OFFSET, align 4
  call void (...)* @_ssdm_op_SpecReset(i32* @FRAME_OFFSET, i32 0, [1 x i8]* @p_str1) nounwind
  %FRAME_BUFFER_NUMBER_s = load i32* @FRAME_BUFFER_NUMBER_r, align 4
  call void (...)* @_ssdm_op_SpecReset(i32* @FRAME_BUFFER_NUMBER_r, i32 0, [1 x i8]* @p_str1) nounwind
  %BASE_ADDRESS_load = load i32* @BASE_ADDRESS_r, align 4
  call void (...)* @_ssdm_op_SpecReset(i32* @BASE_ADDRESS_r, i32 0, [1 x i8]* @p_str1) nounwind
  br i1 %update_intr_read, label %1, label %._crit_edge

; <label>:1                                       ; preds = %0
  store i32 %frame_buffer_dim_rea, i32* @FRAME_BUFFER_DIM_r, align 4
  store i32 %tmp_1, i32* @FRAME_BUFFER_NUMBER_r, align 4
  store i32 %frame_buffer_offset_s, i32* @FRAME_OFFSET, align 4
  %tmp_2 = call i29 @_ssdm_op_PartSelect.i29.i32.i32.i32(i32 %base_address_read, i32 3, i32 31)
  %tmp_5 = zext i29 %tmp_2 to i32
  store i32 %tmp_5, i32* @BASE_ADDRESS_r, align 4
  br label %._crit_edge

._crit_edge:                                      ; preds = %1, %0
  %i_op_assign = phi i32 [ %frame_buffer_offset_s, %1 ], [ %FRAME_OFFSET_load, %0 ]
  %i_op_assign_1 = phi i32 [ %tmp_5, %1 ], [ %BASE_ADDRESS_load, %0 ]
  %tmp_3 = phi i32 [ %tmp_1, %1 ], [ %FRAME_BUFFER_NUMBER_s, %0 ]
  %t_V_2 = call i8 @_ssdm_op_Read.ap_none.i8P(i8* %frame_index_V)
  %tmp_4 = icmp eq i8 %t_V_2, 0
  %tmp = trunc i32 %tmp_3 to i8
  %t_V = select i1 %tmp_4, i8 %tmp, i8 %t_V_2
  %inner_index_V_1 = add i8 -1, %t_V
  %lhs_V_cast = zext i8 %inner_index_V_1 to i35
  %rhs_V_cast = zext i32 %i_op_assign to i35
  %r_V = mul i35 %lhs_V_cast, %rhs_V_cast
  %tmp_s = call i32 @_ssdm_op_PartSelect.i32.i35.i32.i32(i35 %r_V, i32 3, i32 34)
  %offset = add i32 %i_op_assign_1, %tmp_s
  br label %2

; <label>:2                                       ; preds = %5, %._crit_edge
  %offset1 = phi i32 [ %offset, %._crit_edge ], [ %offset_1, %5 ]
  %i = phi i32 [ 0, %._crit_edge ], [ %i_1, %5 ]
  %FRAME_BUFFER_DIM_loa = load i32* @FRAME_BUFFER_DIM_r, align 4
  %tmp_6 = call i20 @_ssdm_op_PartSelect.i20.i32.i32.i32(i32 %FRAME_BUFFER_DIM_loa, i32 12, i32 31)
  %tmp_10 = zext i20 %tmp_6 to i32
  %tmp_7 = icmp ult i32 %i, %tmp_10
  %i_1 = add nsw i32 %i, 1
  br i1 %tmp_7, label %3, label %6

; <label>:3                                       ; preds = %2
  %tmp_8 = sext i32 %offset1 to i64
  %base_ddr_addr_addr = getelementptr inbounds i64* %base_ddr_addr, i64 %tmp_8
  %base_ddr_addr_addr_1 = call i1 @_ssdm_op_ReadReq.m_axi.i64P(i64* %base_ddr_addr_addr, i32 512)
  br label %burst.rd.header

burst.rd.header:                                  ; preds = %burst.rd.body, %3
  %indvar = phi i10 [ 0, %3 ], [ %indvar_next, %burst.rd.body ]
  %exitcond = icmp eq i10 %indvar, -512
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 512, i64 512, i64 512)
  %indvar_next = add i10 %indvar, 1
  br i1 %exitcond, label %burst.rd.end.preheader, label %burst.rd.body

burst.rd.end.preheader:                           ; preds = %burst.rd.header
  br label %burst.rd.end

burst.rd.body:                                    ; preds = %burst.rd.header
  %burstread_rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin([17 x i8]* @burstread_OC_region_s) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str8)
  %empty_11 = call i32 (...)* @_ssdm_op_SpecLoopName([28 x i8]* @memcpy_OC_buffer_OC_s) nounwind
  %indvar1 = zext i10 %indvar to i64
  %base_ddr_addr_addr_r = call i64 @_ssdm_op_Read.m_axi.i64P(i64* %base_ddr_addr_addr)
  %buffer_addr = getelementptr [512 x i64]* %buffer, i64 0, i64 %indvar1
  store i64 %base_ddr_addr_addr_r, i64* %buffer_addr, align 8
  %burstread_rend = call i32 (...)* @_ssdm_op_SpecRegionEnd([17 x i8]* @burstread_OC_region_s, i32 %burstread_rbegin) nounwind
  br label %burst.rd.header

burst.rd.end:                                     ; preds = %burst.rd.end.preheader, %4
  %j = phi i13 [ %j_1, %4 ], [ 0, %burst.rd.end.preheader ]
  %tmp_9 = icmp eq i13 %j, -4096
  %empty_12 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4096, i64 4096, i64 4096)
  %j_1 = add i13 %j, 1
  br i1 %tmp_9, label %5, label %4

; <label>:4                                       ; preds = %burst.rd.end
  %tmp_11 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str7)
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
  %empty_13 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str7, i32 %tmp_11)
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

define weak i32 @_ssdm_op_PartSelect.i32.i35.i32.i32(i35, i32, i32) nounwind readnone {
entry:
  %empty = call i35 @llvm.part.select.i35(i35 %0, i32 %1, i32 %2)
  %empty_15 = trunc i35 %empty to i32
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

!opencl.kernels = !{!0, !7, !13, !19, !25, !25, !13, !28, !13, !13, !13, !31, !31, !33, !33, !35, !38, !38, !13, !40, !13, !13, !13, !42, !44, !33, !33, !46, !46, !48, !51, !51, !13, !52, !55, !55, !13, !13, !57, !51, !51, !13, !59, !61, !13, !13}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!63}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"hls::stream<DATA_OUT> &", metadata !"u64*", metadata !"ap_uint<8>*", metadata !"u32", metadata !"u32", metadata !"u32", metadata !"u8", metadata !"_Bool"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"volatile", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"outStream", metadata !"base_ddr_addr", metadata !"frame_index", metadata !"base_address", metadata !"frame_buffer_dim", metadata !"frame_buffer_offset", metadata !"frame_buffer_number", metadata !"update_intr"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !6}
!8 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!9 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!10 = metadata !{metadata !"kernel_arg_type", metadata !"const uchar &"}
!11 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!12 = metadata !{metadata !"kernel_arg_name", metadata !"din"}
!13 = metadata !{null, metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !6}
!14 = metadata !{metadata !"kernel_arg_addr_space"}
!15 = metadata !{metadata !"kernel_arg_access_qual"}
!16 = metadata !{metadata !"kernel_arg_type"}
!17 = metadata !{metadata !"kernel_arg_type_qual"}
!18 = metadata !{metadata !"kernel_arg_name"}
!19 = metadata !{null, metadata !20, metadata !21, metadata !22, metadata !23, metadata !24, metadata !6}
!20 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!21 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!22 = metadata !{metadata !"kernel_arg_type", metadata !"uint", metadata !"const ap_int_base<40, false> &"}
!23 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!24 = metadata !{metadata !"kernel_arg_name", metadata !"i_op", metadata !"op"}
!25 = metadata !{null, metadata !8, metadata !9, metadata !26, metadata !11, metadata !27, metadata !6}
!26 = metadata !{metadata !"kernel_arg_type", metadata !"uint"}
!27 = metadata !{metadata !"kernel_arg_name", metadata !"op"}
!28 = metadata !{null, metadata !20, metadata !21, metadata !29, metadata !23, metadata !30, metadata !6}
!29 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, false> &", metadata !"const ap_int_base<40, false> &"}
!30 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"op2"}
!31 = metadata !{null, metadata !8, metadata !9, metadata !32, metadata !11, metadata !27, metadata !6}
!32 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<40, false> &"}
!33 = metadata !{null, metadata !8, metadata !9, metadata !34, metadata !11, metadata !27, metadata !6}
!34 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, false> &"}
!35 = metadata !{null, metadata !20, metadata !21, metadata !36, metadata !23, metadata !37, metadata !6}
!36 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<40, false> &", metadata !"ulong"}
!37 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"i_op"}
!38 = metadata !{null, metadata !8, metadata !9, metadata !39, metadata !11, metadata !27, metadata !6}
!39 = metadata !{metadata !"kernel_arg_type", metadata !"ulong"}
!40 = metadata !{null, metadata !20, metadata !21, metadata !41, metadata !23, metadata !30, metadata !6}
!41 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<40, false> &", metadata !"const ap_int_base<64, false> &"}
!42 = metadata !{null, metadata !20, metadata !21, metadata !43, metadata !23, metadata !37, metadata !6}
!43 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, false> &", metadata !"uint"}
!44 = metadata !{null, metadata !20, metadata !21, metadata !45, metadata !23, metadata !30, metadata !6}
!45 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, false> &", metadata !"const ap_int_base<32, false> &"}
!46 = metadata !{null, metadata !8, metadata !9, metadata !47, metadata !11, metadata !27, metadata !6}
!47 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, false> &"}
!48 = metadata !{null, metadata !8, metadata !9, metadata !49, metadata !11, metadata !50, metadata !6}
!49 = metadata !{metadata !"kernel_arg_type", metadata !"int"}
!50 = metadata !{metadata !"kernel_arg_name", metadata !""}
!51 = metadata !{null, metadata !8, metadata !9, metadata !49, metadata !11, metadata !27, metadata !6}
!52 = metadata !{null, metadata !8, metadata !9, metadata !53, metadata !11, metadata !54, metadata !6}
!53 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1, false> &"}
!54 = metadata !{metadata !"kernel_arg_name", metadata !"op2"}
!55 = metadata !{null, metadata !8, metadata !9, metadata !26, metadata !11, metadata !56, metadata !6}
!56 = metadata !{metadata !"kernel_arg_name", metadata !"val"}
!57 = metadata !{null, metadata !20, metadata !21, metadata !58, metadata !23, metadata !30, metadata !6}
!58 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<8, false> &", metadata !"int"}
!59 = metadata !{null, metadata !8, metadata !9, metadata !60, metadata !11, metadata !54, metadata !6}
!60 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &"}
!61 = metadata !{null, metadata !8, metadata !9, metadata !62, metadata !11, metadata !54, metadata !6}
!62 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<8> &"}
!63 = metadata !{metadata !64, [0 x i32]* @llvm_global_ctors_0}
!64 = metadata !{metadata !65}
!65 = metadata !{i32 0, i32 31, metadata !66}
!66 = metadata !{metadata !67}
!67 = metadata !{metadata !"llvm.global_ctors.0", metadata !68, metadata !"", i32 0, i32 31}
!68 = metadata !{metadata !69}
!69 = metadata !{i32 0, i32 0, i32 1}
!70 = metadata !{metadata !71}
!71 = metadata !{i32 0, i32 7, metadata !72}
!72 = metadata !{metadata !73}
!73 = metadata !{metadata !"outStream.V", metadata !68, metadata !"unsigned char", i32 0, i32 7}
!74 = metadata !{metadata !75}
!75 = metadata !{i32 0, i32 63, metadata !76}
!76 = metadata !{metadata !77}
!77 = metadata !{metadata !"base_ddr_addr", metadata !78, metadata !"long long unsigned int", i32 0, i32 63}
!78 = metadata !{metadata !79}
!79 = metadata !{i32 0, i32 127, i32 1}
!80 = metadata !{metadata !81}
!81 = metadata !{i32 0, i32 7, metadata !82}
!82 = metadata !{metadata !83}
!83 = metadata !{metadata !"frame_index.V", metadata !68, metadata !"uint8", i32 0, i32 7}
!84 = metadata !{metadata !85}
!85 = metadata !{i32 0, i32 31, metadata !86}
!86 = metadata !{metadata !87}
!87 = metadata !{metadata !"base_address", metadata !88, metadata !"unsigned int", i32 0, i32 31}
!88 = metadata !{metadata !89}
!89 = metadata !{i32 0, i32 0, i32 0}
!90 = metadata !{metadata !91}
!91 = metadata !{i32 0, i32 31, metadata !92}
!92 = metadata !{metadata !93}
!93 = metadata !{metadata !"frame_buffer_dim", metadata !88, metadata !"unsigned int", i32 0, i32 31}
!94 = metadata !{metadata !95}
!95 = metadata !{i32 0, i32 31, metadata !96}
!96 = metadata !{metadata !97}
!97 = metadata !{metadata !"frame_buffer_offset", metadata !88, metadata !"unsigned int", i32 0, i32 31}
!98 = metadata !{metadata !99}
!99 = metadata !{i32 0, i32 7, metadata !100}
!100 = metadata !{metadata !101}
!101 = metadata !{metadata !"frame_buffer_number", metadata !88, metadata !"unsigned char", i32 0, i32 7}
!102 = metadata !{metadata !103}
!103 = metadata !{i32 0, i32 0, metadata !104}
!104 = metadata !{metadata !105}
!105 = metadata !{metadata !"update_intr", metadata !88, metadata !"bool", i32 0, i32 0}
