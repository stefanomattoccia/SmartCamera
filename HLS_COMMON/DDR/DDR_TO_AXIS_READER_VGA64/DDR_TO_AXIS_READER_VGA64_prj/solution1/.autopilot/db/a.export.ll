; ModuleID = '/home/andrea/Documenti/vision/Ultrascale/hls/DDR/DDR_TO_AXIS_READER_VGA64/DDR_TO_AXIS_READER_VGA64_prj/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@memcpy_OC_buffer_OC_s = internal unnamed_addr constant [28 x i8] c"memcpy.buffer.base_ddr_addr\00"
@llvm_global_ctors_1 = appending global [0 x void ()*] zeroinitializer
@llvm_global_ctors_0 = appending global [0 x i32] zeroinitializer
@index_old = internal unnamed_addr global i32 -1, align 4
@frame_count_inner = internal unnamed_addr global i32 0, align 4
@frame_count_equals_i = internal unnamed_addr global i32 0, align 4
@ddr_to_axis_reader_s = internal unnamed_addr constant [19 x i8] c"ddr_to_axis_reader\00"
@burstread_OC_region_s = internal unnamed_addr constant [17 x i8] c"burstread.region\00"
@p_str7 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str6 = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1
@p_str5 = private unnamed_addr constant [12 x i8] c"RAM_2P_BRAM\00", align 1
@p_str4 = private unnamed_addr constant [6 x i8] c"m_axi\00", align 1
@p_str3 = private unnamed_addr constant [5 x i8] c"both\00", align 1
@p_str2 = private unnamed_addr constant [5 x i8] c"axis\00", align 1
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str = private unnamed_addr constant [8 x i8] c"ap_none\00", align 1

declare i64 @llvm.part.select.i64(i64, i32, i32) nounwind readnone

declare i22 @llvm.part.select.i22(i22, i32, i32) nounwind readnone

declare i13 @llvm.part.select.i13(i13, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

define void @ddr_to_axis_reader(i8* %outStream_V, i64* %base_ddr_addr, i3* %frame_index_V, i32* %frame_count, i32* %frame_count_equals) {
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %outStream_V), !map !59
  call void (...)* @_ssdm_op_SpecBitsMap(i64* %base_ddr_addr), !map !63
  call void (...)* @_ssdm_op_SpecBitsMap(i3* %frame_index_V), !map !69
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %frame_count), !map !73
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %frame_count_equals), !map !77
  call void (...)* @_ssdm_op_SpecTopModule([19 x i8]* @ddr_to_axis_reader_s) nounwind
  %buffer = alloca [512 x i64], align 16
  call void (...)* @_ssdm_op_SpecInterface(i32* %frame_count_equals, [8 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32* %frame_count, [8 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %outStream_V, [5 x i8]* @p_str2, i32 1, i32 1, [5 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i64* %base_ddr_addr, [6 x i8]* @p_str4, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 128, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i3* %frame_index_V, [8 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecMemCore([512 x i64]* %buffer, [1 x i8]* @p_str1, [12 x i8]* @p_str5, [1 x i8]* @p_str1, i32 -1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  %inner_index_V = call i3 @_ssdm_op_Read.ap_none.i3P(i3* %frame_index_V)
  %inner_index_V_2 = add i3 %inner_index_V, -1
  %tmp = zext i3 %inner_index_V_2 to i32
  %tmp_cast3 = zext i3 %inner_index_V_2 to i22
  %tmp_cast = zext i3 %inner_index_V_2 to i4
  %tmp_1 = mul i22 %tmp_cast3, 307200
  %offset_cast = call i19 @_ssdm_op_PartSelect.i19.i22.i32.i32(i22 %tmp_1, i32 3, i32 21)
  br label %1

; <label>:1                                       ; preds = %4, %0
  %offset1 = phi i19 [ %offset_cast, %0 ], [ %offset, %4 ]
  %i = phi i7 [ 0, %0 ], [ %i_1, %4 ]
  %exitcond = icmp eq i7 %i, -53
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 75, i64 75, i64 75)
  %i_1 = add i7 %i, 1
  br i1 %exitcond, label %5, label %2

; <label>:2                                       ; preds = %1
  %tmp_5 = zext i19 %offset1 to i64
  %base_ddr_addr_addr = getelementptr inbounds i64* %base_ddr_addr, i64 %tmp_5
  %base_ddr_addr_addr_1 = call i1 @_ssdm_op_ReadReq.m_axi.i64P(i64* %base_ddr_addr_addr, i32 512)
  br label %burst.rd.header

burst.rd.header:                                  ; preds = %burst.rd.body, %2
  %indvar = phi i10 [ 0, %2 ], [ %indvar_next, %burst.rd.body ]
  %exitcond1 = icmp eq i10 %indvar, -512
  %empty_9 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 512, i64 512, i64 512)
  %indvar_next = add i10 %indvar, 1
  br i1 %exitcond1, label %burst.rd.end.preheader, label %burst.rd.body

burst.rd.end.preheader:                           ; preds = %burst.rd.header
  br label %burst.rd.end

burst.rd.body:                                    ; preds = %burst.rd.header
  %burstread_rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin([17 x i8]* @burstread_OC_region_s) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str7)
  %empty_10 = call i32 (...)* @_ssdm_op_SpecLoopName([28 x i8]* @memcpy_OC_buffer_OC_s) nounwind
  %indvar1 = zext i10 %indvar to i64
  %base_ddr_addr_addr_r = call i64 @_ssdm_op_Read.m_axi.i64P(i64* %base_ddr_addr_addr)
  %buffer_addr = getelementptr [512 x i64]* %buffer, i64 0, i64 %indvar1
  store i64 %base_ddr_addr_addr_r, i64* %buffer_addr, align 8
  %burstread_rend = call i32 (...)* @_ssdm_op_SpecRegionEnd([17 x i8]* @burstread_OC_region_s, i32 %burstread_rbegin) nounwind
  br label %burst.rd.header

burst.rd.end:                                     ; preds = %burst.rd.end.preheader, %3
  %j = phi i13 [ %j_1, %3 ], [ 0, %burst.rd.end.preheader ]
  %tmp_7 = icmp eq i13 %j, -4096
  %empty_11 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4096, i64 4096, i64 4096)
  %j_1 = add i13 %j, 1
  br i1 %tmp_7, label %4, label %3

; <label>:3                                       ; preds = %burst.rd.end
  %tmp_9 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str6)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind
  %tmp_8 = trunc i13 %j to i3
  %gepindex_cast = call i9 @_ssdm_op_PartSelect.i9.i13.i32.i32(i13 %j, i32 3, i32 11)
  %gepindex2_cast = zext i9 %gepindex_cast to i64
  %buffer_addr_1 = getelementptr [512 x i64]* %buffer, i64 0, i64 %gepindex2_cast
  %buffer_load = load i64* %buffer_addr_1, align 8
  %start_pos = call i6 @_ssdm_op_BitConcatenate.i6.i3.i3(i3 %tmp_8, i3 0)
  %end_pos = or i6 %start_pos, 7
  %tmp_10 = icmp ugt i6 %start_pos, %end_pos
  %tmp_11 = zext i6 %start_pos to i7
  %tmp_12 = zext i6 %end_pos to i7
  %tmp_13 = call i64 @llvm.part.select.i64(i64 %buffer_load, i32 63, i32 0)
  %tmp_14 = sub i7 %tmp_11, %tmp_12
  %tmp_15 = xor i7 %tmp_11, 63
  %tmp_16 = sub i7 %tmp_12, %tmp_11
  %tmp_17 = select i1 %tmp_10, i7 %tmp_14, i7 %tmp_16
  %tmp_18 = select i1 %tmp_10, i64 %tmp_13, i64 %buffer_load
  %tmp_19 = select i1 %tmp_10, i7 %tmp_15, i7 %tmp_11
  %tmp_20 = sub i7 63, %tmp_17
  %tmp_21 = zext i7 %tmp_19 to i64
  %tmp_22 = zext i7 %tmp_20 to i64
  %tmp_23 = lshr i64 %tmp_18, %tmp_21
  %tmp_24 = lshr i64 -1, %tmp_22
  %tmp_25 = and i64 %tmp_23, %tmp_24
  %tmp_26 = trunc i64 %tmp_25 to i8
  call void @_ssdm_op_Write.axis.volatile.i8P(i8* %outStream_V, i8 %tmp_26)
  %empty_12 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str6, i32 %tmp_9)
  br label %burst.rd.end

; <label>:4                                       ; preds = %burst.rd.end
  %offset = add i19 %offset1, 512
  br label %1

; <label>:5                                       ; preds = %1
  %frame_count_inner_lo = load i32* @frame_count_inner, align 4
  %tmp_3 = add nsw i32 1, %frame_count_inner_lo
  store i32 %tmp_3, i32* @frame_count_inner, align 4
  call void @_ssdm_op_Write.ap_none.i32P(i32* %frame_count, i32 %tmp_3)
  %index_old_load = load i32* @index_old, align 4
  %tmp_2 = trunc i32 %index_old_load to i4
  %tmp_4 = icmp eq i4 %tmp_cast, %tmp_2
  br i1 %tmp_4, label %6, label %._crit_edge

; <label>:6                                       ; preds = %5
  %frame_count_equals_i_1 = load i32* @frame_count_equals_i, align 4
  %tmp_6 = add nsw i32 %frame_count_equals_i_1, 1
  store i32 %tmp_6, i32* @frame_count_equals_i, align 4
  call void @_ssdm_op_Write.ap_none.i32P(i32* %frame_count_equals, i32 %tmp_6)
  br label %._crit_edge

._crit_edge:                                      ; preds = %6, %5
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

declare i4 @_ssdm_op_PartSelect.i4.i32.i32.i32(i32, i32, i32) nounwind readnone

declare i3 @_ssdm_op_PartSelect.i3.i13.i32.i32(i13, i32, i32) nounwind readnone

define weak i19 @_ssdm_op_PartSelect.i19.i22.i32.i32(i22, i32, i32) nounwind readnone {
entry:
  %empty = call i22 @llvm.part.select.i22(i22 %0, i32 %1, i32 %2)
  %empty_14 = trunc i22 %empty to i19
  ret i19 %empty_14
}

define weak i6 @_ssdm_op_BitConcatenate.i6.i3.i3(i3, i3) nounwind readnone {
entry:
  %empty = zext i3 %0 to i6
  %empty_15 = zext i3 %1 to i6
  %empty_16 = shl i6 %empty, 3
  %empty_17 = or i6 %empty_16, %empty_15
  ret i6 %empty_17
}

!opencl.kernels = !{!0, !7, !13, !7, !19, !25, !25, !7, !28, !7, !7, !7, !31, !33, !33, !7, !35, !37, !37, !39, !39, !41, !33, !33, !7, !43, !46, !46, !7, !7, !48, !49, !50, !7, !7}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!52}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 1, i32 1, i32 1, i32 1}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"hls::stream<DATA_OUT> &", metadata !"u64*", metadata !"ap_uint<3>*", metadata !"uint*", metadata !"uint*"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"volatile", metadata !"", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"outStream", metadata !"base_ddr_addr", metadata !"frame_index", metadata !"frame_count", metadata !"frame_count_equals"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !6}
!8 = metadata !{metadata !"kernel_arg_addr_space"}
!9 = metadata !{metadata !"kernel_arg_access_qual"}
!10 = metadata !{metadata !"kernel_arg_type"}
!11 = metadata !{metadata !"kernel_arg_type_qual"}
!12 = metadata !{metadata !"kernel_arg_name"}
!13 = metadata !{null, metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !6}
!14 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!15 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!16 = metadata !{metadata !"kernel_arg_type", metadata !"const uchar &"}
!17 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!18 = metadata !{metadata !"kernel_arg_name", metadata !"din"}
!19 = metadata !{null, metadata !20, metadata !21, metadata !22, metadata !23, metadata !24, metadata !6}
!20 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0}
!21 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none"}
!22 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<35, true> &", metadata !"ulong"}
!23 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !""}
!24 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"i_op"}
!25 = metadata !{null, metadata !14, metadata !15, metadata !26, metadata !17, metadata !27, metadata !6}
!26 = metadata !{metadata !"kernel_arg_type", metadata !"ulong"}
!27 = metadata !{metadata !"kernel_arg_name", metadata !"op"}
!28 = metadata !{null, metadata !20, metadata !21, metadata !29, metadata !23, metadata !30, metadata !6}
!29 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<35, true> &", metadata !"const ap_int_base<64, false> &"}
!30 = metadata !{metadata !"kernel_arg_name", metadata !"op", metadata !"op2"}
!31 = metadata !{null, metadata !20, metadata !21, metadata !32, metadata !23, metadata !24, metadata !6}
!32 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<3, false> &", metadata !"int"}
!33 = metadata !{null, metadata !14, metadata !15, metadata !34, metadata !17, metadata !27, metadata !6}
!34 = metadata !{metadata !"kernel_arg_type", metadata !"int"}
!35 = metadata !{null, metadata !20, metadata !21, metadata !36, metadata !23, metadata !30, metadata !6}
!36 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<3, false> &", metadata !"const ap_int_base<32, true> &"}
!37 = metadata !{null, metadata !14, metadata !15, metadata !38, metadata !17, metadata !27, metadata !6}
!38 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<32, true> &"}
!39 = metadata !{null, metadata !14, metadata !15, metadata !40, metadata !17, metadata !27, metadata !6}
!40 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<3, false> &"}
!41 = metadata !{null, metadata !14, metadata !15, metadata !34, metadata !17, metadata !42, metadata !6}
!42 = metadata !{metadata !"kernel_arg_name", metadata !""}
!43 = metadata !{null, metadata !14, metadata !15, metadata !44, metadata !17, metadata !45, metadata !6}
!44 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_int_base<1, false> &"}
!45 = metadata !{metadata !"kernel_arg_name", metadata !"op2"}
!46 = metadata !{null, metadata !14, metadata !15, metadata !34, metadata !17, metadata !47, metadata !6}
!47 = metadata !{metadata !"kernel_arg_name", metadata !"val"}
!48 = metadata !{null, metadata !20, metadata !21, metadata !32, metadata !23, metadata !30, metadata !6}
!49 = metadata !{null, metadata !14, metadata !15, metadata !38, metadata !17, metadata !45, metadata !6}
!50 = metadata !{null, metadata !14, metadata !15, metadata !51, metadata !17, metadata !45, metadata !6}
!51 = metadata !{metadata !"kernel_arg_type", metadata !"const ap_uint<3> &"}
!52 = metadata !{metadata !53, [0 x i32]* @llvm_global_ctors_0}
!53 = metadata !{metadata !54}
!54 = metadata !{i32 0, i32 31, metadata !55}
!55 = metadata !{metadata !56}
!56 = metadata !{metadata !"llvm.global_ctors.0", metadata !57, metadata !"", i32 0, i32 31}
!57 = metadata !{metadata !58}
!58 = metadata !{i32 0, i32 0, i32 1}
!59 = metadata !{metadata !60}
!60 = metadata !{i32 0, i32 7, metadata !61}
!61 = metadata !{metadata !62}
!62 = metadata !{metadata !"outStream.V", metadata !57, metadata !"unsigned char", i32 0, i32 7}
!63 = metadata !{metadata !64}
!64 = metadata !{i32 0, i32 63, metadata !65}
!65 = metadata !{metadata !66}
!66 = metadata !{metadata !"base_ddr_addr", metadata !67, metadata !"long long unsigned int", i32 0, i32 63}
!67 = metadata !{metadata !68}
!68 = metadata !{i32 0, i32 127, i32 1}
!69 = metadata !{metadata !70}
!70 = metadata !{i32 0, i32 2, metadata !71}
!71 = metadata !{metadata !72}
!72 = metadata !{metadata !"frame_index.V", metadata !57, metadata !"uint3", i32 0, i32 2}
!73 = metadata !{metadata !74}
!74 = metadata !{i32 0, i32 31, metadata !75}
!75 = metadata !{metadata !76}
!76 = metadata !{metadata !"frame_count", metadata !57, metadata !"unsigned int", i32 0, i32 31}
!77 = metadata !{metadata !78}
!78 = metadata !{i32 0, i32 31, metadata !79}
!79 = metadata !{metadata !80}
!80 = metadata !{metadata !"frame_count_equals", metadata !57, metadata !"unsigned int", i32 0, i32 31}
