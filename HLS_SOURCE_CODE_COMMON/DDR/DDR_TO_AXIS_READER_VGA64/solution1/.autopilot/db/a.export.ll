; ModuleID = 'C:/Users/Riccardo/Documents/HLS_COMMON/DDR/DDR_TO_AXIS_READER_VGA64/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@memcpy_OC_buffer_OC_base_ddr_a = internal unnamed_addr constant [28 x i8] c"memcpy.buffer.base_ddr_addr\00"
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535]
@index_old = internal unnamed_addr global i32 -1, align 4
@frame_count_inner = internal unnamed_addr global i32 0, align 4
@frame_count_equals_inner = internal unnamed_addr global i32 0, align 4
@ddr_to_axis_reader_str = internal unnamed_addr constant [19 x i8] c"ddr_to_axis_reader\00"
@burstread_OC_region_str = internal unnamed_addr constant [17 x i8] c"burstread.region\00"
@p_str6 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str5 = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1
@p_str4 = private unnamed_addr constant [12 x i8] c"RAM_2P_BRAM\00", align 1
@p_str3 = private unnamed_addr constant [6 x i8] c"m_axi\00", align 1
@p_str2 = private unnamed_addr constant [5 x i8] c"axis\00", align 1
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str = private unnamed_addr constant [8 x i8] c"ap_none\00", align 1

declare i64 @llvm.part.select.i64(i64, i32, i32) nounwind readnone

declare i22 @llvm.part.select.i22(i22, i32, i32) nounwind readnone

declare i13 @llvm.part.select.i13(i13, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define void @ddr_to_axis_reader(i8* %outStream_V, i64* %base_ddr_addr, i3* %frame_index_V, i32* %frame_count, i32* %frame_count_equals) {
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %outStream_V), !map !7
  call void (...)* @_ssdm_op_SpecBitsMap(i64* %base_ddr_addr), !map !11
  call void (...)* @_ssdm_op_SpecBitsMap(i3* %frame_index_V), !map !17
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %frame_count), !map !21
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %frame_count_equals), !map !25
  call void (...)* @_ssdm_op_SpecTopModule([19 x i8]* @ddr_to_axis_reader_str) nounwind
  %buffer = alloca [512 x i64], align 16
  call void (...)* @_ssdm_op_SpecInterface(i32* %frame_count_equals, [8 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %frame_count, [8 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %outStream_V, [5 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i64* %base_ddr_addr, [6 x i8]* @p_str3, i32 0, i32 0, i32 0, i32 128, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i3* %frame_index_V, [8 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecMemCore([512 x i64]* %buffer, [1 x i8]* @p_str1, [12 x i8]* @p_str4, [1 x i8]* @p_str1, i32 -1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  call void (...)* @_ssdm_op_SpecReset(i32* @frame_count_inner, i32 1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecReset(i32* @index_old, i32 1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecReset(i32* @frame_count_equals_inner, i32 1, [1 x i8]* @p_str1) nounwind
  %inner_index_V = call i3 @_ssdm_op_Read.ap_none.i3P(i3* %frame_index_V)
  %inner_index_V_2 = add i3 %inner_index_V, -1
  %tmp = zext i3 %inner_index_V_2 to i32
  %tmp_cast = zext i3 %inner_index_V_2 to i22
  %tmp_1 = mul i22 %tmp_cast, 307200
  %offset_cast = call i19 @_ssdm_op_PartSelect.i19.i22.i32.i32(i22 %tmp_1, i32 3, i32 21)
  br label %1

; <label>:1                                       ; preds = %3, %0
  %offset1 = phi i19 [ %offset_cast, %0 ], [ %offset, %3 ]
  %i = phi i7 [ 0, %0 ], [ %i_1, %3 ]
  %exitcond1 = icmp eq i7 %i, -53
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 75, i64 75, i64 75)
  %i_1 = add i7 %i, 1
  br i1 %exitcond1, label %4, label %burst.rd.header.preheader

burst.rd.header.preheader:                        ; preds = %1
  %tmp_2 = zext i19 %offset1 to i64
  %base_ddr_addr_addr = getelementptr i64* %base_ddr_addr, i64 %tmp_2
  %p_rd_req = call i1 @_ssdm_op_ReadReq.m_axi.i64P(i64* %base_ddr_addr_addr, i32 512)
  br label %burst.rd.header

burst.rd.header:                                  ; preds = %burst.rd.header.preheader, %burst.rd.body
  %indvar = phi i10 [ %indvar_next, %burst.rd.body ], [ 0, %burst.rd.header.preheader ]
  %exitcond2 = icmp eq i10 %indvar, -512
  %empty_9 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 512, i64 512, i64 512)
  %indvar_next = add i10 %indvar, 1
  br i1 %exitcond2, label %burst.rd.end, label %burst.rd.body

burst.rd.body:                                    ; preds = %burst.rd.header
  %burstread_rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin([17 x i8]* @burstread_OC_region_str) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str6)
  %empty_10 = call i32 (...)* @_ssdm_op_SpecLoopName([28 x i8]* @memcpy_OC_buffer_OC_base_ddr_a) nounwind
  %base_ddr_addr_addr_read = call i64 @_ssdm_op_Read.m_axi.i64P(i64* %base_ddr_addr_addr)
  %tmp_7 = zext i10 %indvar to i64
  %buffer_addr = getelementptr [512 x i64]* %buffer, i64 0, i64 %tmp_7
  store i64 %base_ddr_addr_addr_read, i64* %buffer_addr, align 8
  %burstread_rend = call i32 (...)* @_ssdm_op_SpecRegionEnd([17 x i8]* @burstread_OC_region_str, i32 %burstread_rbegin) nounwind
  br label %burst.rd.header

burst.rd.end:                                     ; preds = %burst.rd.header, %2
  %j = phi i13 [ %j_1, %2 ], [ 0, %burst.rd.header ]
  %exitcond = icmp eq i13 %j, -4096
  %j_1 = add i13 %j, 1
  br i1 %exitcond, label %3, label %2

; <label>:2                                       ; preds = %burst.rd.end
  %empty_11 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4096, i64 4096, i64 4096)
  %tmp_9 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str5)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind
  %tmp_6 = trunc i13 %j to i3
  %gepindex_cast = call i9 @_ssdm_op_PartSelect.i9.i13.i32.i32(i13 %j, i32 3, i32 11)
  %gepindex2_cast = zext i9 %gepindex_cast to i64
  %buffer_addr_1 = getelementptr [512 x i64]* %buffer, i64 0, i64 %gepindex2_cast
  %buffer_load = load i64* %buffer_addr_1, align 8
  %start_pos = call i6 @_ssdm_op_BitConcatenate.i6.i3.i3(i3 %tmp_6, i3 0)
  %end_pos = or i6 %start_pos, 7
  %tmp_8 = icmp ugt i6 %start_pos, %end_pos
  %tmp_10 = zext i6 %start_pos to i7
  %tmp_11 = zext i6 %end_pos to i7
  %tmp_12 = call i64 @llvm.part.select.i64(i64 %buffer_load, i32 63, i32 0)
  %tmp_13 = sub i7 %tmp_10, %tmp_11
  %tmp_14 = xor i7 %tmp_10, 63
  %tmp_15 = sub i7 %tmp_11, %tmp_10
  %tmp_16 = select i1 %tmp_8, i7 %tmp_13, i7 %tmp_15
  %tmp_17 = select i1 %tmp_8, i64 %tmp_12, i64 %buffer_load
  %tmp_18 = select i1 %tmp_8, i7 %tmp_14, i7 %tmp_10
  %tmp_19 = sub i7 63, %tmp_16
  %tmp_20 = zext i7 %tmp_18 to i64
  %tmp_21 = zext i7 %tmp_19 to i64
  %tmp_22 = lshr i64 %tmp_17, %tmp_20
  %tmp_23 = lshr i64 -1, %tmp_21
  %tmp_24 = and i64 %tmp_22, %tmp_23
  %tmp_25 = trunc i64 %tmp_24 to i8
  call void @_ssdm_op_Write.axis.volatile.i8P(i8* %outStream_V, i8 %tmp_25)
  %empty_12 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str5, i32 %tmp_9)
  br label %burst.rd.end

; <label>:3                                       ; preds = %burst.rd.end
  %offset = add i19 %offset1, 512
  br label %1

; <label>:4                                       ; preds = %1
  %frame_count_inner_load = load i32* @frame_count_inner, align 4
  %tmp_3 = add nsw i32 %frame_count_inner_load, 1
  store i32 %tmp_3, i32* @frame_count_inner, align 4
  call void @_ssdm_op_Write.ap_none.i32P(i32* %frame_count, i32 %tmp_3)
  %index_old_load = load i32* @index_old, align 4
  %tmp_4 = icmp eq i32 %tmp, %index_old_load
  br i1 %tmp_4, label %5, label %._crit_edge

; <label>:5                                       ; preds = %4
  %frame_count_equals_inner_load = load i32* @frame_count_equals_inner, align 4
  %tmp_5 = add nsw i32 %frame_count_equals_inner_load, 1
  store i32 %tmp_5, i32* @frame_count_equals_inner, align 4
  call void @_ssdm_op_Write.ap_none.i32P(i32* %frame_count_equals, i32 %tmp_5)
  br label %._crit_edge

._crit_edge:                                      ; preds = %5, %4
  store i32 %tmp, i32* @index_old, align 4
  ret void
}

define weak void @_ssdm_op_Write.axis.volatile.i8P(i8*, i8) {
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

define weak i1 @_ssdm_op_ReadReq.m_axi.i64P(i64*, i32) {
entry:
  ret i1 true
}

define weak i64 @_ssdm_op_Read.m_axi.i64P(i64*) {
entry:
  %empty = load i64* %0
  ret i64 %empty
}

define weak i3 @_ssdm_op_Read.ap_none.i3P(i3*) {
entry:
  %empty = load i3* %0
  ret i3 %empty
}

define weak i9 @_ssdm_op_PartSelect.i9.i13.i32.i32(i13, i32, i32) nounwind readnone {
entry:
  %empty = call i13 @llvm.part.select.i13(i13 %0, i32 %1, i32 %2)
  %empty_13 = trunc i13 %empty to i9
  ret i9 %empty_13
}

declare i8 @_ssdm_op_PartSelect.i8.i64.i32.i32(i64, i32, i32) nounwind readnone

declare i3 @_ssdm_op_PartSelect.i3.i13.i32.i32(i13, i32, i32) nounwind readnone

define weak i19 @_ssdm_op_PartSelect.i19.i22.i32.i32(i22, i32, i32) nounwind readnone {
entry:
  %empty = call i22 @llvm.part.select.i22(i22 %0, i32 %1, i32 %2)
  %empty_14 = trunc i22 %empty to i19
  ret i19 %empty_14
}

declare i16 @_ssdm_op_HSub(...)

declare i16 @_ssdm_op_HMul(...)

declare i16 @_ssdm_op_HDiv(...)

declare i16 @_ssdm_op_HAdd(...)

define weak i6 @_ssdm_op_BitConcatenate.i6.i3.i3(i3, i3) nounwind readnone {
entry:
  %empty = zext i3 %0 to i6
  %empty_15 = zext i3 %1 to i6
  %empty_16 = shl i6 %empty, 3
  %empty_17 = or i6 %empty_16, %empty_15
  ret i6 %empty_17
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
!18 = metadata !{i32 0, i32 2, metadata !19}
!19 = metadata !{metadata !20}
!20 = metadata !{metadata !"frame_index.V", metadata !5, metadata !"uint3", i32 0, i32 2}
!21 = metadata !{metadata !22}
!22 = metadata !{i32 0, i32 31, metadata !23}
!23 = metadata !{metadata !24}
!24 = metadata !{metadata !"frame_count", metadata !5, metadata !"unsigned int", i32 0, i32 31}
!25 = metadata !{metadata !26}
!26 = metadata !{i32 0, i32 31, metadata !27}
!27 = metadata !{metadata !28}
!28 = metadata !{metadata !"frame_count_equals", metadata !5, metadata !"unsigned int", i32 0, i32 31}
