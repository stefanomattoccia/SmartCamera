; ModuleID = 'C:/Users/Riccardo/Documents/HLS_COMMON/DDR/AXIS_TO_DDR_WRITER_VGA64/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@memcpy_OC_base_ddr_addr_OC_buf = internal unnamed_addr constant [32 x i8] c"memcpy.base_ddr_addr.buffer.gep\00" ; [#uses=1 type=[32 x i8]*]
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a] ; [#uses=0 type=[1 x void ()*]*]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535] ; [#uses=0 type=[1 x i32]*]
@inner_index_V = internal global i3 0             ; [#uses=3 type=i3*]
@frame_count_inner = internal unnamed_addr global i32 0, align 4 ; [#uses=3 type=i32*]
@burstwrite_OC_region_str = internal unnamed_addr constant [18 x i8] c"burstwrite.region\00" ; [#uses=2 type=[18 x i8]*]
@axis_to_ddr_writer_str = internal unnamed_addr constant [19 x i8] c"axis_to_ddr_writer\00" ; [#uses=1 type=[19 x i8]*]
@p_str6 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@p_str5 = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1 ; [#uses=2 type=[12 x i8]*]
@p_str4 = private unnamed_addr constant [12 x i8] c"RAM_2P_BRAM\00", align 1 ; [#uses=1 type=[12 x i8]*]
@p_str3 = private unnamed_addr constant [8 x i8] c"ap_none\00", align 1 ; [#uses=2 type=[8 x i8]*]
@p_str2 = private unnamed_addr constant [5 x i8] c"axis\00", align 1 ; [#uses=1 type=[5 x i8]*]
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=24 type=[1 x i8]*]
@p_str = private unnamed_addr constant [6 x i8] c"m_axi\00", align 1 ; [#uses=1 type=[6 x i8]*]

; [#uses=1]
declare i22 @llvm.part.select.i22(i22, i32, i32) nounwind readnone

; [#uses=9]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=0]
define void @axis_to_ddr_writer(i8* %inputStream_V, i64* %base_ddr_addr, i3* %frame_index_V, i32* %frame_count) {
codeRepl:
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %inputStream_V), !map !7
  call void (...)* @_ssdm_op_SpecBitsMap(i64* %base_ddr_addr), !map !11
  call void (...)* @_ssdm_op_SpecBitsMap(i3* %frame_index_V), !map !17
  call void (...)* @_ssdm_op_SpecBitsMap(i32* %frame_count), !map !21
  call void (...)* @_ssdm_op_SpecTopModule([19 x i8]* @axis_to_ddr_writer_str) nounwind
  %buffer = alloca [512 x i64], align 16          ; [#uses=2 type=[512 x i64]*]
  call void @llvm.dbg.value(metadata !{i8* %inputStream_V}, i64 0, metadata !25), !dbg !458 ; [debug line = 5:47] [debug variable = inputStream.V]
  call void @llvm.dbg.value(metadata !{i64* %base_ddr_addr}, i64 0, metadata !459), !dbg !460 ; [debug line = 5:74] [debug variable = base_ddr_addr]
  call void @llvm.dbg.value(metadata !{i3* %frame_index_V}, i64 0, metadata !461), !dbg !470 ; [debug line = 5:185] [debug variable = frame_index.V]
  call void @llvm.dbg.value(metadata !{i32* %frame_count}, i64 0, metadata !471), !dbg !472 ; [debug line = 5:212] [debug variable = frame_count]
  call void (...)* @_ssdm_op_SpecInterface(i64* %base_ddr_addr, [6 x i8]* @p_str, i32 0, i32 0, i32 0, i32 32, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !473 ; [debug line = 16:1]
  call void (...)* @_ssdm_op_SpecInterface(i8* %inputStream_V, [5 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !475 ; [debug line = 17:1]
  call void (...)* @_ssdm_op_SpecInterface(i32* %frame_count, [8 x i8]* @p_str3, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !476 ; [debug line = 18:1]
  call void (...)* @_ssdm_op_SpecInterface(i3* %frame_index_V, [8 x i8]* @p_str3, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !477 ; [debug line = 19:1]
  call void @llvm.dbg.declare(metadata !{[512 x i64]* %buffer}, metadata !478), !dbg !482 ; [debug line = 39:6] [debug variable = buffer]
  call void (...)* @_ssdm_op_SpecMemCore([512 x i64]* %buffer, [1 x i8]* @p_str1, [12 x i8]* @p_str4, [1 x i8]* @p_str1, i32 -1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1), !dbg !483 ; [debug line = 40:1]
  call void (...)* @_ssdm_op_SpecReset(i3* @inner_index_V, i32 1, [1 x i8]* @p_str1) nounwind, !dbg !484 ; [debug line = 45:1]
  call void (...)* @_ssdm_op_SpecReset(i32* @frame_count_inner, i32 1, [1 x i8]* @p_str1) nounwind, !dbg !485 ; [debug line = 48:1]
  call void @llvm.dbg.value(metadata !{i3* %frame_index_V}, i64 0, metadata !486), !dbg !489 ; [debug line = 276:53@52:2] [debug variable = ssdm_int<3 + 1024 * 0, false>.V]
  %inner_index_V_load = load i3* @inner_index_V, align 1, !dbg !491 ; [#uses=3 type=i3] [debug line = 277:10@52:2]
  call void @_ssdm_op_Write.ap_none.i3P(i3* %frame_index_V, i3 %inner_index_V_load), !dbg !491 ; [debug line = 277:10@52:2]
  %tmp_cast = zext i3 %inner_index_V_load to i22, !dbg !493 ; [#uses=1 type=i22] [debug line = 55:15]
  %tmp_1 = mul i22 %tmp_cast, 307200, !dbg !493   ; [#uses=1 type=i22] [debug line = 55:15]
  %offset_cast = call i19 @_ssdm_op_PartSelect.i19.i22.i32.i32(i22 %tmp_1, i32 3, i32 21), !dbg !493 ; [#uses=1 type=i19] [debug line = 55:15]
  br label %0, !dbg !494                          ; [debug line = 63:17]

; <label>:0                                       ; preds = %burst.wr.end, %codeRepl
  %offset1 = phi i19 [ %offset_cast, %codeRepl ], [ %offset, %burst.wr.end ] ; [#uses=2 type=i19]
  %idx = phi i7 [ 0, %codeRepl ], [ %idx_1, %burst.wr.end ] ; [#uses=2 type=i7]
  %exitcond1 = icmp eq i7 %idx, -53, !dbg !494    ; [#uses=1 type=i1] [debug line = 63:17]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 75, i64 75, i64 75) ; [#uses=0 type=i32]
  %idx_1 = add i7 %idx, 1, !dbg !496              ; [#uses=1 type=i7] [debug line = 63:146]
  br i1 %exitcond1, label %._crit_edge61, label %.preheader, !dbg !494 ; [debug line = 63:17]

.preheader:                                       ; preds = %.preheader59, %0
  %indvar_flatten = phi i13 [ %indvar_flatten_next, %.preheader59 ], [ 0, %0 ] ; [#uses=2 type=i13]
  %exitcond_flatten = icmp eq i13 %indvar_flatten, -4096 ; [#uses=1 type=i1]
  %indvar_flatten_next = add i13 %indvar_flatten, 1 ; [#uses=1 type=i13]
  br i1 %exitcond_flatten, label %burst.wr.header.preheader, label %.preheader59

burst.wr.header.preheader:                        ; preds = %.preheader
  %tmp = zext i19 %offset1 to i64, !dbg !497      ; [#uses=1 type=i64] [debug line = 116:3]
  %base_ddr_addr_addr = getelementptr i64* %base_ddr_addr, i64 %tmp, !dbg !497 ; [#uses=3 type=i64*] [debug line = 116:3]
  %p_wr_req = call i1 @_ssdm_op_WriteReq.m_axi.i64P(i64* %base_ddr_addr_addr, i32 512), !dbg !497 ; [#uses=0 type=i1] [debug line = 116:3]
  br label %burst.wr.header

.preheader59:                                     ; preds = %.preheader
  %empty_5 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 4096, i64 4096, i64 4096) ; [#uses=0 type=i32]
  %tmp_3 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str5), !dbg !499 ; [#uses=1 type=i32] [debug line = 79:5]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind, !dbg !504 ; [debug line = 97:1]
  call void @llvm.dbg.value(metadata !{i8* %inputStream_V}, i64 0, metadata !505), !dbg !510 ; [debug line = 129:56@98:28] [debug variable = stream<unsigned char>.V]
  %tmp_0 = call i8 @_ssdm_op_Read.axis.volatile.i8P(i8* %inputStream_V), !dbg !512 ; [#uses=0 type=i8] [debug line = 131:9@98:28]
  call void @llvm.dbg.value(metadata !{i8 %tmp_0}, i64 0, metadata !514), !dbg !512 ; [debug line = 131:9@98:28] [debug variable = tmp]
  %empty_6 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str5, i32 %tmp_3), !dbg !515 ; [#uses=0 type=i32] [debug line = 111:4]
  br label %.preheader, !dbg !516                 ; [debug line = 78:54]

burst.wr.header:                                  ; preds = %burst.wr.body, %burst.wr.header.preheader
  %indvar = phi i10 [ %indvar_next, %burst.wr.body ], [ 0, %burst.wr.header.preheader ] ; [#uses=3 type=i10]
  %exitcond3 = icmp eq i10 %indvar, -512          ; [#uses=1 type=i1]
  %empty_7 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 512, i64 512, i64 512) ; [#uses=0 type=i32]
  %indvar_next = add i10 %indvar, 1               ; [#uses=1 type=i10]
  br i1 %exitcond3, label %burst.wr.end, label %burst.wr.body

burst.wr.body:                                    ; preds = %burst.wr.header
  %burstwrite_rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin([18 x i8]* @burstwrite_OC_region_str) nounwind ; [#uses=1 type=i32]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str6)
  %empty_8 = call i32 (...)* @_ssdm_op_SpecLoopName([32 x i8]* @memcpy_OC_base_ddr_addr_OC_buf) nounwind ; [#uses=0 type=i32]
  %tmp_9 = zext i10 %indvar to i64, !dbg !497     ; [#uses=1 type=i64] [debug line = 116:3]
  %buffer_addr = getelementptr [512 x i64]* %buffer, i64 0, i64 %tmp_9, !dbg !497 ; [#uses=1 type=i64*] [debug line = 116:3]
  %buffer_load = load i64* %buffer_addr, align 8, !dbg !497 ; [#uses=1 type=i64] [debug line = 116:3]
  call void @_ssdm_op_Write.m_axi.i64P(i64* %base_ddr_addr_addr, i64 %buffer_load, i8 -1), !dbg !497 ; [debug line = 116:3]
  %burstwrite_rend = call i32 (...)* @_ssdm_op_SpecRegionEnd([18 x i8]* @burstwrite_OC_region_str, i32 %burstwrite_rbegin) nounwind ; [#uses=0 type=i32]
  br label %burst.wr.header

burst.wr.end:                                     ; preds = %burst.wr.header
  %p_wr_resp = call i1 @_ssdm_op_WriteResp.m_axi.i64P(i64* %base_ddr_addr_addr), !dbg !497 ; [#uses=0 type=i1] [debug line = 116:3]
  %offset = add i19 %offset1, 512, !dbg !517      ; [#uses=1 type=i19] [debug line = 118:3]
  call void @llvm.dbg.value(metadata !{i19 %offset}, i64 0, metadata !518), !dbg !517 ; [debug line = 118:3] [debug variable = offset]
  call void @llvm.dbg.value(metadata !{i7 %idx_1}, i64 0, metadata !519), !dbg !496 ; [debug line = 63:146] [debug variable = idx]
  br label %0, !dbg !496                          ; [debug line = 63:146]

._crit_edge61:                                    ; preds = %0
  %tmp_4 = add i3 %inner_index_V_load, 1, !dbg !520 ; [#uses=1 type=i3] [debug line = 1820:147@1850:9@124:7]
  store i3 %tmp_4, i3* @inner_index_V, align 1, !dbg !767 ; [debug line = 277:10@123:3]
  %frame_count_inner_load = load i32* @frame_count_inner, align 4, !dbg !769 ; [#uses=1 type=i32] [debug line = 131:2]
  %tmp_5 = add nsw i32 %frame_count_inner_load, 1, !dbg !769 ; [#uses=2 type=i32] [debug line = 131:2]
  store i32 %tmp_5, i32* @frame_count_inner, align 4, !dbg !769 ; [debug line = 131:2]
  call void @_ssdm_op_Write.ap_none.i32P(i32* %frame_count, i32 %tmp_5), !dbg !770 ; [debug line = 132:2]
  ret void, !dbg !771                             ; [debug line = 134:1]
}

; [#uses=1]
define weak i1 @_ssdm_op_WriteResp.m_axi.i64P(i64*) {
entry:
  ret i1 true
}

; [#uses=1]
define weak i1 @_ssdm_op_WriteReq.m_axi.i64P(i64*, i32) {
entry:
  ret i1 true
}

; [#uses=1]
define weak void @_ssdm_op_Write.m_axi.i64P(i64*, i64, i8) {
entry:
  ret void
}

; [#uses=1]
define weak void @_ssdm_op_Write.ap_none.i3P(i3*, i3) {
entry:
  store i3 %1, i3* %0
  ret void
}

; [#uses=1]
define weak void @_ssdm_op_Write.ap_none.i32P(i32*, i32) {
entry:
  store i32 %1, i32* %0
  ret void
}

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=2]
define weak void @_ssdm_op_SpecReset(...) nounwind {
entry:
  ret void
}

; [#uses=2]
define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

; [#uses=2]
define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

; [#uses=2]
define weak void @_ssdm_op_SpecPipeline(...) nounwind {
entry:
  ret void
}

; [#uses=1]
define weak void @_ssdm_op_SpecMemCore(...) {
entry:
  ret void
}

; [#uses=3]
define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
entry:
  ret i32 0
}

; [#uses=1]
define weak i32 @_ssdm_op_SpecLoopName(...) {
entry:
  ret i32 0
}

; [#uses=4]
define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

; [#uses=4]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=1]
define weak i8 @_ssdm_op_Read.axis.volatile.i8P(i8*) {
entry:
  %empty = load i8* %0                            ; [#uses=1 type=i8]
  ret i8 %empty
}

; [#uses=1]
define weak i19 @_ssdm_op_PartSelect.i19.i22.i32.i32(i22, i32, i32) nounwind readnone {
entry:
  %empty = call i22 @llvm.part.select.i22(i22 %0, i32 %1, i32 %2) ; [#uses=1 type=i22]
  %empty_9 = trunc i22 %empty to i19              ; [#uses=1 type=i19]
  ret i19 %empty_9
}

; [#uses=0]
declare i16 @_ssdm_op_HSub(...)

; [#uses=0]
declare i16 @_ssdm_op_HMul(...)

; [#uses=0]
declare i16 @_ssdm_op_HDiv(...)

; [#uses=0]
declare i16 @_ssdm_op_HAdd(...)

; [#uses=1]
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
!25 = metadata !{i32 790531, metadata !26, metadata !"inputStream.V", null, i32 5, metadata !455, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!26 = metadata !{i32 786689, metadata !27, metadata !"inputStream", metadata !28, i32 16777221, metadata !31, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!27 = metadata !{i32 786478, i32 0, metadata !28, metadata !"axis_to_ddr_writer", metadata !"axis_to_ddr_writer", metadata !"_Z18axis_to_ddr_writerRN3hls6streamIhEEPVyP7ap_uintILi3EEPj", metadata !28, i32 5, metadata !29, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !42, i32 6} ; [ DW_TAG_subprogram ]
!28 = metadata !{i32 786473, metadata !"AXIS_TO_DDR_WRITER_VGA64/axis_to_ddr_writer.cpp", metadata !"c:/Users/Riccardo/Documents/HLS_COMMON/DDR", null} ; [ DW_TAG_file_type ]
!29 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !30, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!30 = metadata !{null, metadata !31, metadata !90, metadata !94, metadata !454}
!31 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !32} ; [ DW_TAG_reference_type ]
!32 = metadata !{i32 786434, metadata !33, metadata !"stream<unsigned char>", metadata !34, i32 79, i64 8, i64 8, i32 0, i32 0, null, metadata !35, i32 0, null, metadata !88} ; [ DW_TAG_class_type ]
!33 = metadata !{i32 786489, null, metadata !"hls", metadata !34, i32 69} ; [ DW_TAG_namespace ]
!34 = metadata !{i32 786473, metadata !"C:/Xilinx/Vivado_HLS/2015.4/common/technology/autopilot\5Chls_stream.h", metadata !"c:/Users/Riccardo/Documents/HLS_COMMON/DDR", null} ; [ DW_TAG_file_type ]
!35 = metadata !{metadata !36, metadata !38, metadata !44, metadata !50, metadata !55, metadata !58, metadata !62, metadata !67, metadata !72, metadata !73, metadata !74, metadata !77, metadata !80, metadata !81, metadata !84}
!36 = metadata !{i32 786445, metadata !32, metadata !"V", metadata !34, i32 163, i64 8, i64 8, i64 0, i32 1, metadata !37} ; [ DW_TAG_member ]
!37 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!38 = metadata !{i32 786478, i32 0, metadata !32, metadata !"stream", metadata !"stream", metadata !"", metadata !34, i32 83, metadata !39, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 83} ; [ DW_TAG_subprogram ]
!39 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !40, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!40 = metadata !{null, metadata !41}
!41 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !32} ; [ DW_TAG_pointer_type ]
!42 = metadata !{metadata !43}
!43 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!44 = metadata !{i32 786478, i32 0, metadata !32, metadata !"stream", metadata !"stream", metadata !"", metadata !34, i32 86, metadata !45, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 86} ; [ DW_TAG_subprogram ]
!45 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !46, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!46 = metadata !{null, metadata !41, metadata !47}
!47 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !48} ; [ DW_TAG_pointer_type ]
!48 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !49} ; [ DW_TAG_const_type ]
!49 = metadata !{i32 786468, null, metadata !"char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!50 = metadata !{i32 786478, i32 0, metadata !32, metadata !"stream", metadata !"stream", metadata !"", metadata !34, i32 91, metadata !51, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !42, i32 91} ; [ DW_TAG_subprogram ]
!51 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !52, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!52 = metadata !{null, metadata !41, metadata !53}
!53 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !54} ; [ DW_TAG_reference_type ]
!54 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !32} ; [ DW_TAG_const_type ]
!55 = metadata !{i32 786478, i32 0, metadata !32, metadata !"operator=", metadata !"operator=", metadata !"_ZN3hls6streamIhEaSERKS1_", metadata !34, i32 94, metadata !56, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !42, i32 94} ; [ DW_TAG_subprogram ]
!56 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !57, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!57 = metadata !{metadata !31, metadata !41, metadata !53}
!58 = metadata !{i32 786478, i32 0, metadata !32, metadata !"operator>>", metadata !"operator>>", metadata !"_ZN3hls6streamIhErsERh", metadata !34, i32 101, metadata !59, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 101} ; [ DW_TAG_subprogram ]
!59 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !60, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!60 = metadata !{null, metadata !41, metadata !61}
!61 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !37} ; [ DW_TAG_reference_type ]
!62 = metadata !{i32 786478, i32 0, metadata !32, metadata !"operator<<", metadata !"operator<<", metadata !"_ZN3hls6streamIhElsERKh", metadata !34, i32 105, metadata !63, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 105} ; [ DW_TAG_subprogram ]
!63 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !64, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!64 = metadata !{null, metadata !41, metadata !65}
!65 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !66} ; [ DW_TAG_reference_type ]
!66 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !37} ; [ DW_TAG_const_type ]
!67 = metadata !{i32 786478, i32 0, metadata !32, metadata !"empty", metadata !"empty", metadata !"_ZNK3hls6streamIhE5emptyEv", metadata !34, i32 112, metadata !68, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 112} ; [ DW_TAG_subprogram ]
!68 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !69, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!69 = metadata !{metadata !70, metadata !71}
!70 = metadata !{i32 786468, null, metadata !"bool", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 2} ; [ DW_TAG_base_type ]
!71 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !54} ; [ DW_TAG_pointer_type ]
!72 = metadata !{i32 786478, i32 0, metadata !32, metadata !"full", metadata !"full", metadata !"_ZNK3hls6streamIhE4fullEv", metadata !34, i32 117, metadata !68, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 117} ; [ DW_TAG_subprogram ]
!73 = metadata !{i32 786478, i32 0, metadata !32, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIhE4readERh", metadata !34, i32 123, metadata !59, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 123} ; [ DW_TAG_subprogram ]
!74 = metadata !{i32 786478, i32 0, metadata !32, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIhE4readEv", metadata !34, i32 129, metadata !75, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 129} ; [ DW_TAG_subprogram ]
!75 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !76, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!76 = metadata !{metadata !37, metadata !41}
!77 = metadata !{i32 786478, i32 0, metadata !32, metadata !"read_nb", metadata !"read_nb", metadata !"_ZN3hls6streamIhE7read_nbERh", metadata !34, i32 136, metadata !78, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 136} ; [ DW_TAG_subprogram ]
!78 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !79, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!79 = metadata !{metadata !70, metadata !41, metadata !61}
!80 = metadata !{i32 786478, i32 0, metadata !32, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIhE5writeERKh", metadata !34, i32 144, metadata !63, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 144} ; [ DW_TAG_subprogram ]
!81 = metadata !{i32 786478, i32 0, metadata !32, metadata !"write_nb", metadata !"write_nb", metadata !"_ZN3hls6streamIhE8write_nbERKh", metadata !34, i32 150, metadata !82, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 150} ; [ DW_TAG_subprogram ]
!82 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !83, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!83 = metadata !{metadata !70, metadata !41, metadata !65}
!84 = metadata !{i32 786478, i32 0, metadata !32, metadata !"size", metadata !"size", metadata !"_ZN3hls6streamIhE4sizeEv", metadata !34, i32 157, metadata !85, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 157} ; [ DW_TAG_subprogram ]
!85 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !86, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!86 = metadata !{metadata !87, metadata !41}
!87 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!88 = metadata !{metadata !89}
!89 = metadata !{i32 786479, null, metadata !"__STREAM_T__", metadata !37, null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!90 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !91} ; [ DW_TAG_pointer_type ]
!91 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !92} ; [ DW_TAG_volatile_type ]
!92 = metadata !{i32 786454, null, metadata !"u64", metadata !28, i32 25, i64 0, i64 0, i64 0, i32 0, metadata !93} ; [ DW_TAG_typedef ]
!93 = metadata !{i32 786468, null, metadata !"long long unsigned int", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!94 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !95} ; [ DW_TAG_pointer_type ]
!95 = metadata !{i32 786434, null, metadata !"ap_uint<3>", metadata !96, i32 180, i64 8, i64 8, i32 0, i32 0, null, metadata !97, i32 0, null, metadata !453} ; [ DW_TAG_class_type ]
!96 = metadata !{i32 786473, metadata !"C:/Xilinx/Vivado_HLS/2015.4/common/technology/autopilot\5Cap_int.h", metadata !"c:/Users/Riccardo/Documents/HLS_COMMON/DDR", null} ; [ DW_TAG_file_type ]
!97 = metadata !{metadata !98, metadata !373, metadata !377, metadata !383, metadata !389, metadata !392, metadata !395, metadata !398, metadata !401, metadata !404, metadata !407, metadata !410, metadata !413, metadata !416, metadata !419, metadata !422, metadata !425, metadata !428, metadata !431, metadata !434, metadata !437, metadata !441, metadata !444, metadata !448, metadata !451, metadata !452}
!98 = metadata !{i32 786460, metadata !95, null, metadata !96, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !99} ; [ DW_TAG_inheritance ]
!99 = metadata !{i32 786434, null, metadata !"ap_int_base<3, false, true>", metadata !100, i32 1396, i64 8, i64 8, i32 0, i32 0, null, metadata !101, i32 0, null, metadata !370} ; [ DW_TAG_class_type ]
!100 = metadata !{i32 786473, metadata !"C:/Xilinx/Vivado_HLS/2015.4/common/technology/autopilot/ap_int_syn.h", metadata !"c:/Users/Riccardo/Documents/HLS_COMMON/DDR", null} ; [ DW_TAG_file_type ]
!101 = metadata !{metadata !102, metadata !121, metadata !125, metadata !133, metadata !139, metadata !142, metadata !146, metadata !149, metadata !153, metadata !157, metadata !160, metadata !163, metadata !167, metadata !171, metadata !176, metadata !180, metadata !184, metadata !188, metadata !191, metadata !194, metadata !198, metadata !201, metadata !204, metadata !205, metadata !209, metadata !212, metadata !215, metadata !218, metadata !221, metadata !224, metadata !227, metadata !230, metadata !233, metadata !236, metadata !239, metadata !242, metadata !252, metadata !255, metadata !256, metadata !257, metadata !258, metadata !259, metadata !262, metadata !265, metadata !268, metadata !271, metadata !274, metadata !277, metadata !280, metadata !281, metadata !285, metadata !288, metadata !289, metadata !290, metadata !291, metadata !292, metadata !293, metadata !296, metadata !297, metadata !300, metadata !301, metadata !302, metadata !303, metadata !304, metadata !305, metadata !308, metadata !309, metadata !310, metadata !313, metadata !314, metadata !317, metadata !318, metadata !322, metadata !326, metadata !327, metadata !330, metadata !331, metadata !335, metadata !336, metadata !337, metadata !338, metadata !341, metadata !342, metadata !343, metadata !344, metadata !345, metadata !346, metadata !347, metadata !348, metadata !349, metadata !350, metadata !351, metadata !352, metadata !362, metadata !365, metadata !368, metadata !369}
!102 = metadata !{i32 786460, metadata !99, null, metadata !100, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !103} ; [ DW_TAG_inheritance ]
!103 = metadata !{i32 786434, null, metadata !"ssdm_int<3 + 1024 * 0, false>", metadata !104, i32 5, i64 8, i64 8, i32 0, i32 0, null, metadata !105, i32 0, null, metadata !117} ; [ DW_TAG_class_type ]
!104 = metadata !{i32 786473, metadata !"C:/Xilinx/Vivado_HLS/2015.4/common/technology/autopilot/etc/autopilot_dt.def", metadata !"c:/Users/Riccardo/Documents/HLS_COMMON/DDR", null} ; [ DW_TAG_file_type ]
!105 = metadata !{metadata !106, metadata !108, metadata !112}
!106 = metadata !{i32 786445, metadata !103, metadata !"V", metadata !104, i32 5, i64 3, i64 4, i64 0, i32 0, metadata !107} ; [ DW_TAG_member ]
!107 = metadata !{i32 786468, null, metadata !"uint3", null, i32 0, i64 3, i64 4, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!108 = metadata !{i32 786478, i32 0, metadata !103, metadata !"ssdm_int", metadata !"ssdm_int", metadata !"", metadata !104, i32 5, metadata !109, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 5} ; [ DW_TAG_subprogram ]
!109 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !110, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!110 = metadata !{null, metadata !111}
!111 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !103} ; [ DW_TAG_pointer_type ]
!112 = metadata !{i32 786478, i32 0, metadata !103, metadata !"ssdm_int", metadata !"ssdm_int", metadata !"", metadata !104, i32 5, metadata !113, i1 false, i1 false, i32 0, i32 0, null, i32 320, i1 false, null, null, i32 0, metadata !42, i32 5} ; [ DW_TAG_subprogram ]
!113 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !114, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!114 = metadata !{null, metadata !111, metadata !115}
!115 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !116} ; [ DW_TAG_reference_type ]
!116 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !103} ; [ DW_TAG_const_type ]
!117 = metadata !{metadata !118, metadata !120}
!118 = metadata !{i32 786480, null, metadata !"_AP_N", metadata !119, i64 3, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!119 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!120 = metadata !{i32 786480, null, metadata !"_AP_S", metadata !70, i64 0, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!121 = metadata !{i32 786478, i32 0, metadata !99, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !100, i32 1437, metadata !122, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 1437} ; [ DW_TAG_subprogram ]
!122 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !123, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!123 = metadata !{null, metadata !124}
!124 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !99} ; [ DW_TAG_pointer_type ]
!125 = metadata !{i32 786478, i32 0, metadata !99, metadata !"ap_int_base<3, false>", metadata !"ap_int_base<3, false>", metadata !"", metadata !100, i32 1449, metadata !126, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !130, i32 0, metadata !42, i32 1449} ; [ DW_TAG_subprogram ]
!126 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !127, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!127 = metadata !{null, metadata !124, metadata !128}
!128 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !129} ; [ DW_TAG_reference_type ]
!129 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !99} ; [ DW_TAG_const_type ]
!130 = metadata !{metadata !131, metadata !132}
!131 = metadata !{i32 786480, null, metadata !"_AP_W2", metadata !119, i64 3, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!132 = metadata !{i32 786480, null, metadata !"_AP_S2", metadata !70, i64 0, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!133 = metadata !{i32 786478, i32 0, metadata !99, metadata !"ap_int_base<3, false>", metadata !"ap_int_base<3, false>", metadata !"", metadata !100, i32 1452, metadata !134, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !130, i32 0, metadata !42, i32 1452} ; [ DW_TAG_subprogram ]
!134 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !135, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!135 = metadata !{null, metadata !124, metadata !136}
!136 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !137} ; [ DW_TAG_reference_type ]
!137 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !138} ; [ DW_TAG_const_type ]
!138 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !99} ; [ DW_TAG_volatile_type ]
!139 = metadata !{i32 786478, i32 0, metadata !99, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !100, i32 1459, metadata !140, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !42, i32 1459} ; [ DW_TAG_subprogram ]
!140 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !141, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!141 = metadata !{null, metadata !124, metadata !70}
!142 = metadata !{i32 786478, i32 0, metadata !99, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !100, i32 1460, metadata !143, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !42, i32 1460} ; [ DW_TAG_subprogram ]
!143 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !144, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!144 = metadata !{null, metadata !124, metadata !145}
!145 = metadata !{i32 786468, null, metadata !"signed char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!146 = metadata !{i32 786478, i32 0, metadata !99, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !100, i32 1461, metadata !147, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !42, i32 1461} ; [ DW_TAG_subprogram ]
!147 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !148, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!148 = metadata !{null, metadata !124, metadata !37}
!149 = metadata !{i32 786478, i32 0, metadata !99, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !100, i32 1462, metadata !150, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !42, i32 1462} ; [ DW_TAG_subprogram ]
!150 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !151, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!151 = metadata !{null, metadata !124, metadata !152}
!152 = metadata !{i32 786468, null, metadata !"short", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!153 = metadata !{i32 786478, i32 0, metadata !99, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !100, i32 1463, metadata !154, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !42, i32 1463} ; [ DW_TAG_subprogram ]
!154 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !155, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!155 = metadata !{null, metadata !124, metadata !156}
!156 = metadata !{i32 786468, null, metadata !"unsigned short", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!157 = metadata !{i32 786478, i32 0, metadata !99, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !100, i32 1464, metadata !158, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !42, i32 1464} ; [ DW_TAG_subprogram ]
!158 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !159, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!159 = metadata !{null, metadata !124, metadata !119}
!160 = metadata !{i32 786478, i32 0, metadata !99, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !100, i32 1465, metadata !161, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !42, i32 1465} ; [ DW_TAG_subprogram ]
!161 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !162, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!162 = metadata !{null, metadata !124, metadata !87}
!163 = metadata !{i32 786478, i32 0, metadata !99, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !100, i32 1466, metadata !164, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !42, i32 1466} ; [ DW_TAG_subprogram ]
!164 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !165, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!165 = metadata !{null, metadata !124, metadata !166}
!166 = metadata !{i32 786468, null, metadata !"long int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!167 = metadata !{i32 786478, i32 0, metadata !99, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !100, i32 1467, metadata !168, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !42, i32 1467} ; [ DW_TAG_subprogram ]
!168 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !169, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!169 = metadata !{null, metadata !124, metadata !170}
!170 = metadata !{i32 786468, null, metadata !"long unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!171 = metadata !{i32 786478, i32 0, metadata !99, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !100, i32 1468, metadata !172, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !42, i32 1468} ; [ DW_TAG_subprogram ]
!172 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !173, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!173 = metadata !{null, metadata !124, metadata !174}
!174 = metadata !{i32 786454, null, metadata !"ap_slong", metadata !100, i32 110, i64 0, i64 0, i64 0, i32 0, metadata !175} ; [ DW_TAG_typedef ]
!175 = metadata !{i32 786468, null, metadata !"long long int", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!176 = metadata !{i32 786478, i32 0, metadata !99, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !100, i32 1469, metadata !177, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !42, i32 1469} ; [ DW_TAG_subprogram ]
!177 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !178, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!178 = metadata !{null, metadata !124, metadata !179}
!179 = metadata !{i32 786454, null, metadata !"ap_ulong", metadata !100, i32 109, i64 0, i64 0, i64 0, i32 0, metadata !93} ; [ DW_TAG_typedef ]
!180 = metadata !{i32 786478, i32 0, metadata !99, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !100, i32 1470, metadata !181, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !42, i32 1470} ; [ DW_TAG_subprogram ]
!181 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !182, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!182 = metadata !{null, metadata !124, metadata !183}
!183 = metadata !{i32 786468, null, metadata !"float", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!184 = metadata !{i32 786478, i32 0, metadata !99, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !100, i32 1471, metadata !185, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !42, i32 1471} ; [ DW_TAG_subprogram ]
!185 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !186, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!186 = metadata !{null, metadata !124, metadata !187}
!187 = metadata !{i32 786468, null, metadata !"double", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!188 = metadata !{i32 786478, i32 0, metadata !99, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !100, i32 1498, metadata !189, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 1498} ; [ DW_TAG_subprogram ]
!189 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !190, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!190 = metadata !{null, metadata !124, metadata !47}
!191 = metadata !{i32 786478, i32 0, metadata !99, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !100, i32 1505, metadata !192, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 1505} ; [ DW_TAG_subprogram ]
!192 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !193, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!193 = metadata !{null, metadata !124, metadata !47, metadata !145}
!194 = metadata !{i32 786478, i32 0, metadata !99, metadata !"read", metadata !"read", metadata !"_ZNV11ap_int_baseILi3ELb0ELb1EE4readEv", metadata !100, i32 1526, metadata !195, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 1526} ; [ DW_TAG_subprogram ]
!195 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !196, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!196 = metadata !{metadata !99, metadata !197}
!197 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !138} ; [ DW_TAG_pointer_type ]
!198 = metadata !{i32 786478, i32 0, metadata !99, metadata !"write", metadata !"write", metadata !"_ZNV11ap_int_baseILi3ELb0ELb1EE5writeERKS0_", metadata !100, i32 1532, metadata !199, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 1532} ; [ DW_TAG_subprogram ]
!199 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !200, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!200 = metadata !{null, metadata !197, metadata !128}
!201 = metadata !{i32 786478, i32 0, metadata !99, metadata !"operator=", metadata !"operator=", metadata !"_ZNV11ap_int_baseILi3ELb0ELb1EEaSERVKS0_", metadata !100, i32 1544, metadata !202, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 1544} ; [ DW_TAG_subprogram ]
!202 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !203, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!203 = metadata !{null, metadata !197, metadata !136}
!204 = metadata !{i32 786478, i32 0, metadata !99, metadata !"operator=", metadata !"operator=", metadata !"_ZNV11ap_int_baseILi3ELb0ELb1EEaSERKS0_", metadata !100, i32 1553, metadata !199, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 1553} ; [ DW_TAG_subprogram ]
!205 = metadata !{i32 786478, i32 0, metadata !99, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi3ELb0ELb1EEaSERVKS0_", metadata !100, i32 1576, metadata !206, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 1576} ; [ DW_TAG_subprogram ]
!206 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !207, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!207 = metadata !{metadata !208, metadata !124, metadata !136}
!208 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !99} ; [ DW_TAG_reference_type ]
!209 = metadata !{i32 786478, i32 0, metadata !99, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi3ELb0ELb1EEaSERKS0_", metadata !100, i32 1581, metadata !210, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 1581} ; [ DW_TAG_subprogram ]
!210 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !211, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!211 = metadata !{metadata !208, metadata !124, metadata !128}
!212 = metadata !{i32 786478, i32 0, metadata !99, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi3ELb0ELb1EEaSEPKc", metadata !100, i32 1585, metadata !213, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 1585} ; [ DW_TAG_subprogram ]
!213 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !214, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!214 = metadata !{metadata !208, metadata !124, metadata !47}
!215 = metadata !{i32 786478, i32 0, metadata !99, metadata !"set", metadata !"set", metadata !"_ZN11ap_int_baseILi3ELb0ELb1EE3setEPKca", metadata !100, i32 1593, metadata !216, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 1593} ; [ DW_TAG_subprogram ]
!216 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !217, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!217 = metadata !{metadata !208, metadata !124, metadata !47, metadata !145}
!218 = metadata !{i32 786478, i32 0, metadata !99, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi3ELb0ELb1EEaSEc", metadata !100, i32 1607, metadata !219, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 1607} ; [ DW_TAG_subprogram ]
!219 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !220, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!220 = metadata !{metadata !208, metadata !124, metadata !49}
!221 = metadata !{i32 786478, i32 0, metadata !99, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi3ELb0ELb1EEaSEh", metadata !100, i32 1608, metadata !222, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 1608} ; [ DW_TAG_subprogram ]
!222 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !223, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!223 = metadata !{metadata !208, metadata !124, metadata !37}
!224 = metadata !{i32 786478, i32 0, metadata !99, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi3ELb0ELb1EEaSEs", metadata !100, i32 1609, metadata !225, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 1609} ; [ DW_TAG_subprogram ]
!225 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !226, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!226 = metadata !{metadata !208, metadata !124, metadata !152}
!227 = metadata !{i32 786478, i32 0, metadata !99, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi3ELb0ELb1EEaSEt", metadata !100, i32 1610, metadata !228, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 1610} ; [ DW_TAG_subprogram ]
!228 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !229, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!229 = metadata !{metadata !208, metadata !124, metadata !156}
!230 = metadata !{i32 786478, i32 0, metadata !99, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi3ELb0ELb1EEaSEi", metadata !100, i32 1611, metadata !231, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 1611} ; [ DW_TAG_subprogram ]
!231 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !232, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!232 = metadata !{metadata !208, metadata !124, metadata !119}
!233 = metadata !{i32 786478, i32 0, metadata !99, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi3ELb0ELb1EEaSEj", metadata !100, i32 1612, metadata !234, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 1612} ; [ DW_TAG_subprogram ]
!234 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !235, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!235 = metadata !{metadata !208, metadata !124, metadata !87}
!236 = metadata !{i32 786478, i32 0, metadata !99, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi3ELb0ELb1EEaSEx", metadata !100, i32 1613, metadata !237, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 1613} ; [ DW_TAG_subprogram ]
!237 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !238, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!238 = metadata !{metadata !208, metadata !124, metadata !174}
!239 = metadata !{i32 786478, i32 0, metadata !99, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi3ELb0ELb1EEaSEy", metadata !100, i32 1614, metadata !240, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 1614} ; [ DW_TAG_subprogram ]
!240 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !241, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!241 = metadata !{metadata !208, metadata !124, metadata !179}
!242 = metadata !{i32 786478, i32 0, metadata !99, metadata !"operator unsigned char", metadata !"operator unsigned char", metadata !"_ZNK11ap_int_baseILi3ELb0ELb1EEcvhEv", metadata !100, i32 1652, metadata !243, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 1652} ; [ DW_TAG_subprogram ]
!243 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !244, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!244 = metadata !{metadata !245, metadata !251}
!245 = metadata !{i32 786454, metadata !99, metadata !"RetType", metadata !100, i32 1401, i64 0, i64 0, i64 0, i32 0, metadata !246} ; [ DW_TAG_typedef ]
!246 = metadata !{i32 786454, metadata !247, metadata !"Type", metadata !100, i32 1369, i64 0, i64 0, i64 0, i32 0, metadata !37} ; [ DW_TAG_typedef ]
!247 = metadata !{i32 786434, null, metadata !"retval<1, false>", metadata !100, i32 1368, i64 8, i64 8, i32 0, i32 0, null, metadata !248, i32 0, null, metadata !249} ; [ DW_TAG_class_type ]
!248 = metadata !{i32 0}
!249 = metadata !{metadata !250, metadata !120}
!250 = metadata !{i32 786480, null, metadata !"_AP_N", metadata !119, i64 1, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!251 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !129} ; [ DW_TAG_pointer_type ]
!252 = metadata !{i32 786478, i32 0, metadata !99, metadata !"to_bool", metadata !"to_bool", metadata !"_ZNK11ap_int_baseILi3ELb0ELb1EE7to_boolEv", metadata !100, i32 1658, metadata !253, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 1658} ; [ DW_TAG_subprogram ]
!253 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !254, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!254 = metadata !{metadata !70, metadata !251}
!255 = metadata !{i32 786478, i32 0, metadata !99, metadata !"to_uchar", metadata !"to_uchar", metadata !"_ZNK11ap_int_baseILi3ELb0ELb1EE8to_ucharEv", metadata !100, i32 1659, metadata !253, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 1659} ; [ DW_TAG_subprogram ]
!256 = metadata !{i32 786478, i32 0, metadata !99, metadata !"to_char", metadata !"to_char", metadata !"_ZNK11ap_int_baseILi3ELb0ELb1EE7to_charEv", metadata !100, i32 1660, metadata !253, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 1660} ; [ DW_TAG_subprogram ]
!257 = metadata !{i32 786478, i32 0, metadata !99, metadata !"to_ushort", metadata !"to_ushort", metadata !"_ZNK11ap_int_baseILi3ELb0ELb1EE9to_ushortEv", metadata !100, i32 1661, metadata !253, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 1661} ; [ DW_TAG_subprogram ]
!258 = metadata !{i32 786478, i32 0, metadata !99, metadata !"to_short", metadata !"to_short", metadata !"_ZNK11ap_int_baseILi3ELb0ELb1EE8to_shortEv", metadata !100, i32 1662, metadata !253, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 1662} ; [ DW_TAG_subprogram ]
!259 = metadata !{i32 786478, i32 0, metadata !99, metadata !"to_int", metadata !"to_int", metadata !"_ZNK11ap_int_baseILi3ELb0ELb1EE6to_intEv", metadata !100, i32 1663, metadata !260, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 1663} ; [ DW_TAG_subprogram ]
!260 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !261, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!261 = metadata !{metadata !119, metadata !251}
!262 = metadata !{i32 786478, i32 0, metadata !99, metadata !"to_uint", metadata !"to_uint", metadata !"_ZNK11ap_int_baseILi3ELb0ELb1EE7to_uintEv", metadata !100, i32 1664, metadata !263, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 1664} ; [ DW_TAG_subprogram ]
!263 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !264, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!264 = metadata !{metadata !87, metadata !251}
!265 = metadata !{i32 786478, i32 0, metadata !99, metadata !"to_long", metadata !"to_long", metadata !"_ZNK11ap_int_baseILi3ELb0ELb1EE7to_longEv", metadata !100, i32 1665, metadata !266, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 1665} ; [ DW_TAG_subprogram ]
!266 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !267, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!267 = metadata !{metadata !166, metadata !251}
!268 = metadata !{i32 786478, i32 0, metadata !99, metadata !"to_ulong", metadata !"to_ulong", metadata !"_ZNK11ap_int_baseILi3ELb0ELb1EE8to_ulongEv", metadata !100, i32 1666, metadata !269, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 1666} ; [ DW_TAG_subprogram ]
!269 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !270, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!270 = metadata !{metadata !170, metadata !251}
!271 = metadata !{i32 786478, i32 0, metadata !99, metadata !"to_int64", metadata !"to_int64", metadata !"_ZNK11ap_int_baseILi3ELb0ELb1EE8to_int64Ev", metadata !100, i32 1667, metadata !272, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 1667} ; [ DW_TAG_subprogram ]
!272 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !273, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!273 = metadata !{metadata !174, metadata !251}
!274 = metadata !{i32 786478, i32 0, metadata !99, metadata !"to_uint64", metadata !"to_uint64", metadata !"_ZNK11ap_int_baseILi3ELb0ELb1EE9to_uint64Ev", metadata !100, i32 1668, metadata !275, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 1668} ; [ DW_TAG_subprogram ]
!275 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !276, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!276 = metadata !{metadata !179, metadata !251}
!277 = metadata !{i32 786478, i32 0, metadata !99, metadata !"to_double", metadata !"to_double", metadata !"_ZNK11ap_int_baseILi3ELb0ELb1EE9to_doubleEv", metadata !100, i32 1669, metadata !278, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 1669} ; [ DW_TAG_subprogram ]
!278 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !279, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!279 = metadata !{metadata !187, metadata !251}
!280 = metadata !{i32 786478, i32 0, metadata !99, metadata !"length", metadata !"length", metadata !"_ZNK11ap_int_baseILi3ELb0ELb1EE6lengthEv", metadata !100, i32 1682, metadata !260, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 1682} ; [ DW_TAG_subprogram ]
!281 = metadata !{i32 786478, i32 0, metadata !99, metadata !"length", metadata !"length", metadata !"_ZNVK11ap_int_baseILi3ELb0ELb1EE6lengthEv", metadata !100, i32 1683, metadata !282, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 1683} ; [ DW_TAG_subprogram ]
!282 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !283, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!283 = metadata !{metadata !119, metadata !284}
!284 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !137} ; [ DW_TAG_pointer_type ]
!285 = metadata !{i32 786478, i32 0, metadata !99, metadata !"reverse", metadata !"reverse", metadata !"_ZN11ap_int_baseILi3ELb0ELb1EE7reverseEv", metadata !100, i32 1688, metadata !286, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 1688} ; [ DW_TAG_subprogram ]
!286 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !287, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!287 = metadata !{metadata !208, metadata !124}
!288 = metadata !{i32 786478, i32 0, metadata !99, metadata !"iszero", metadata !"iszero", metadata !"_ZNK11ap_int_baseILi3ELb0ELb1EE6iszeroEv", metadata !100, i32 1694, metadata !253, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 1694} ; [ DW_TAG_subprogram ]
!289 = metadata !{i32 786478, i32 0, metadata !99, metadata !"is_zero", metadata !"is_zero", metadata !"_ZNK11ap_int_baseILi3ELb0ELb1EE7is_zeroEv", metadata !100, i32 1699, metadata !253, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 1699} ; [ DW_TAG_subprogram ]
!290 = metadata !{i32 786478, i32 0, metadata !99, metadata !"sign", metadata !"sign", metadata !"_ZNK11ap_int_baseILi3ELb0ELb1EE4signEv", metadata !100, i32 1704, metadata !253, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 1704} ; [ DW_TAG_subprogram ]
!291 = metadata !{i32 786478, i32 0, metadata !99, metadata !"clear", metadata !"clear", metadata !"_ZN11ap_int_baseILi3ELb0ELb1EE5clearEi", metadata !100, i32 1712, metadata !158, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 1712} ; [ DW_TAG_subprogram ]
!292 = metadata !{i32 786478, i32 0, metadata !99, metadata !"invert", metadata !"invert", metadata !"_ZN11ap_int_baseILi3ELb0ELb1EE6invertEi", metadata !100, i32 1718, metadata !158, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 1718} ; [ DW_TAG_subprogram ]
!293 = metadata !{i32 786478, i32 0, metadata !99, metadata !"test", metadata !"test", metadata !"_ZNK11ap_int_baseILi3ELb0ELb1EE4testEi", metadata !100, i32 1726, metadata !294, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 1726} ; [ DW_TAG_subprogram ]
!294 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !295, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!295 = metadata !{metadata !70, metadata !251, metadata !119}
!296 = metadata !{i32 786478, i32 0, metadata !99, metadata !"set", metadata !"set", metadata !"_ZN11ap_int_baseILi3ELb0ELb1EE3setEi", metadata !100, i32 1732, metadata !158, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 1732} ; [ DW_TAG_subprogram ]
!297 = metadata !{i32 786478, i32 0, metadata !99, metadata !"set", metadata !"set", metadata !"_ZN11ap_int_baseILi3ELb0ELb1EE3setEib", metadata !100, i32 1738, metadata !298, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 1738} ; [ DW_TAG_subprogram ]
!298 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !299, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!299 = metadata !{null, metadata !124, metadata !119, metadata !70}
!300 = metadata !{i32 786478, i32 0, metadata !99, metadata !"lrotate", metadata !"lrotate", metadata !"_ZN11ap_int_baseILi3ELb0ELb1EE7lrotateEi", metadata !100, i32 1745, metadata !158, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 1745} ; [ DW_TAG_subprogram ]
!301 = metadata !{i32 786478, i32 0, metadata !99, metadata !"rrotate", metadata !"rrotate", metadata !"_ZN11ap_int_baseILi3ELb0ELb1EE7rrotateEi", metadata !100, i32 1754, metadata !158, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 1754} ; [ DW_TAG_subprogram ]
!302 = metadata !{i32 786478, i32 0, metadata !99, metadata !"set_bit", metadata !"set_bit", metadata !"_ZN11ap_int_baseILi3ELb0ELb1EE7set_bitEib", metadata !100, i32 1762, metadata !298, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 1762} ; [ DW_TAG_subprogram ]
!303 = metadata !{i32 786478, i32 0, metadata !99, metadata !"get_bit", metadata !"get_bit", metadata !"_ZNK11ap_int_baseILi3ELb0ELb1EE7get_bitEi", metadata !100, i32 1767, metadata !294, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 1767} ; [ DW_TAG_subprogram ]
!304 = metadata !{i32 786478, i32 0, metadata !99, metadata !"b_not", metadata !"b_not", metadata !"_ZN11ap_int_baseILi3ELb0ELb1EE5b_notEv", metadata !100, i32 1772, metadata !122, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 1772} ; [ DW_TAG_subprogram ]
!305 = metadata !{i32 786478, i32 0, metadata !99, metadata !"countLeadingZeros", metadata !"countLeadingZeros", metadata !"_ZN11ap_int_baseILi3ELb0ELb1EE17countLeadingZerosEv", metadata !100, i32 1779, metadata !306, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 1779} ; [ DW_TAG_subprogram ]
!306 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !307, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!307 = metadata !{metadata !119, metadata !124}
!308 = metadata !{i32 786478, i32 0, metadata !99, metadata !"operator++", metadata !"operator++", metadata !"_ZN11ap_int_baseILi3ELb0ELb1EEppEv", metadata !100, i32 1836, metadata !286, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 1836} ; [ DW_TAG_subprogram ]
!309 = metadata !{i32 786478, i32 0, metadata !99, metadata !"operator--", metadata !"operator--", metadata !"_ZN11ap_int_baseILi3ELb0ELb1EEmmEv", metadata !100, i32 1840, metadata !286, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 1840} ; [ DW_TAG_subprogram ]
!310 = metadata !{i32 786478, i32 0, metadata !99, metadata !"operator++", metadata !"operator++", metadata !"_ZN11ap_int_baseILi3ELb0ELb1EEppEi", metadata !100, i32 1848, metadata !311, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 1848} ; [ DW_TAG_subprogram ]
!311 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !312, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!312 = metadata !{metadata !129, metadata !124, metadata !119}
!313 = metadata !{i32 786478, i32 0, metadata !99, metadata !"operator--", metadata !"operator--", metadata !"_ZN11ap_int_baseILi3ELb0ELb1EEmmEi", metadata !100, i32 1853, metadata !311, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 1853} ; [ DW_TAG_subprogram ]
!314 = metadata !{i32 786478, i32 0, metadata !99, metadata !"operator+", metadata !"operator+", metadata !"_ZNK11ap_int_baseILi3ELb0ELb1EEpsEv", metadata !100, i32 1862, metadata !315, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 1862} ; [ DW_TAG_subprogram ]
!315 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !316, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!316 = metadata !{metadata !99, metadata !251}
!317 = metadata !{i32 786478, i32 0, metadata !99, metadata !"operator!", metadata !"operator!", metadata !"_ZNK11ap_int_baseILi3ELb0ELb1EEntEv", metadata !100, i32 1868, metadata !253, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 1868} ; [ DW_TAG_subprogram ]
!318 = metadata !{i32 786478, i32 0, metadata !99, metadata !"operator-", metadata !"operator-", metadata !"_ZNK11ap_int_baseILi3ELb0ELb1EEngEv", metadata !100, i32 1873, metadata !319, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 1873} ; [ DW_TAG_subprogram ]
!319 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !320, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!320 = metadata !{metadata !321, metadata !251}
!321 = metadata !{i32 786434, null, metadata !"ap_int_base<4, true, true>", metadata !100, i32 649, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!322 = metadata !{i32 786478, i32 0, metadata !99, metadata !"range", metadata !"range", metadata !"_ZN11ap_int_baseILi3ELb0ELb1EE5rangeEii", metadata !100, i32 2003, metadata !323, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 2003} ; [ DW_TAG_subprogram ]
!323 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !324, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!324 = metadata !{metadata !325, metadata !124, metadata !119, metadata !119}
!325 = metadata !{i32 786434, null, metadata !"ap_range_ref<3, false>", metadata !100, i32 922, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!326 = metadata !{i32 786478, i32 0, metadata !99, metadata !"operator()", metadata !"operator()", metadata !"_ZN11ap_int_baseILi3ELb0ELb1EEclEii", metadata !100, i32 2009, metadata !323, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 2009} ; [ DW_TAG_subprogram ]
!327 = metadata !{i32 786478, i32 0, metadata !99, metadata !"range", metadata !"range", metadata !"_ZNK11ap_int_baseILi3ELb0ELb1EE5rangeEii", metadata !100, i32 2015, metadata !328, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 2015} ; [ DW_TAG_subprogram ]
!328 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !329, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!329 = metadata !{metadata !325, metadata !251, metadata !119, metadata !119}
!330 = metadata !{i32 786478, i32 0, metadata !99, metadata !"operator()", metadata !"operator()", metadata !"_ZNK11ap_int_baseILi3ELb0ELb1EEclEii", metadata !100, i32 2021, metadata !328, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 2021} ; [ DW_TAG_subprogram ]
!331 = metadata !{i32 786478, i32 0, metadata !99, metadata !"operator[]", metadata !"operator[]", metadata !"_ZN11ap_int_baseILi3ELb0ELb1EEixEi", metadata !100, i32 2040, metadata !332, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 2040} ; [ DW_TAG_subprogram ]
!332 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !333, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!333 = metadata !{metadata !334, metadata !124, metadata !119}
!334 = metadata !{i32 786434, null, metadata !"ap_bit_ref<3, false>", metadata !100, i32 1192, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!335 = metadata !{i32 786478, i32 0, metadata !99, metadata !"operator[]", metadata !"operator[]", metadata !"_ZNK11ap_int_baseILi3ELb0ELb1EEixEi", metadata !100, i32 2054, metadata !294, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 2054} ; [ DW_TAG_subprogram ]
!336 = metadata !{i32 786478, i32 0, metadata !99, metadata !"bit", metadata !"bit", metadata !"_ZN11ap_int_baseILi3ELb0ELb1EE3bitEi", metadata !100, i32 2068, metadata !332, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 2068} ; [ DW_TAG_subprogram ]
!337 = metadata !{i32 786478, i32 0, metadata !99, metadata !"bit", metadata !"bit", metadata !"_ZNK11ap_int_baseILi3ELb0ELb1EE3bitEi", metadata !100, i32 2082, metadata !294, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 2082} ; [ DW_TAG_subprogram ]
!338 = metadata !{i32 786478, i32 0, metadata !99, metadata !"and_reduce", metadata !"and_reduce", metadata !"_ZN11ap_int_baseILi3ELb0ELb1EE10and_reduceEv", metadata !100, i32 2262, metadata !339, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 2262} ; [ DW_TAG_subprogram ]
!339 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !340, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!340 = metadata !{metadata !70, metadata !124}
!341 = metadata !{i32 786478, i32 0, metadata !99, metadata !"nand_reduce", metadata !"nand_reduce", metadata !"_ZN11ap_int_baseILi3ELb0ELb1EE11nand_reduceEv", metadata !100, i32 2265, metadata !339, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 2265} ; [ DW_TAG_subprogram ]
!342 = metadata !{i32 786478, i32 0, metadata !99, metadata !"or_reduce", metadata !"or_reduce", metadata !"_ZN11ap_int_baseILi3ELb0ELb1EE9or_reduceEv", metadata !100, i32 2268, metadata !339, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 2268} ; [ DW_TAG_subprogram ]
!343 = metadata !{i32 786478, i32 0, metadata !99, metadata !"nor_reduce", metadata !"nor_reduce", metadata !"_ZN11ap_int_baseILi3ELb0ELb1EE10nor_reduceEv", metadata !100, i32 2271, metadata !339, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 2271} ; [ DW_TAG_subprogram ]
!344 = metadata !{i32 786478, i32 0, metadata !99, metadata !"xor_reduce", metadata !"xor_reduce", metadata !"_ZN11ap_int_baseILi3ELb0ELb1EE10xor_reduceEv", metadata !100, i32 2274, metadata !339, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 2274} ; [ DW_TAG_subprogram ]
!345 = metadata !{i32 786478, i32 0, metadata !99, metadata !"xnor_reduce", metadata !"xnor_reduce", metadata !"_ZN11ap_int_baseILi3ELb0ELb1EE11xnor_reduceEv", metadata !100, i32 2277, metadata !339, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 2277} ; [ DW_TAG_subprogram ]
!346 = metadata !{i32 786478, i32 0, metadata !99, metadata !"and_reduce", metadata !"and_reduce", metadata !"_ZNK11ap_int_baseILi3ELb0ELb1EE10and_reduceEv", metadata !100, i32 2281, metadata !253, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 2281} ; [ DW_TAG_subprogram ]
!347 = metadata !{i32 786478, i32 0, metadata !99, metadata !"nand_reduce", metadata !"nand_reduce", metadata !"_ZNK11ap_int_baseILi3ELb0ELb1EE11nand_reduceEv", metadata !100, i32 2284, metadata !253, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 2284} ; [ DW_TAG_subprogram ]
!348 = metadata !{i32 786478, i32 0, metadata !99, metadata !"or_reduce", metadata !"or_reduce", metadata !"_ZNK11ap_int_baseILi3ELb0ELb1EE9or_reduceEv", metadata !100, i32 2287, metadata !253, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 2287} ; [ DW_TAG_subprogram ]
!349 = metadata !{i32 786478, i32 0, metadata !99, metadata !"nor_reduce", metadata !"nor_reduce", metadata !"_ZNK11ap_int_baseILi3ELb0ELb1EE10nor_reduceEv", metadata !100, i32 2290, metadata !253, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 2290} ; [ DW_TAG_subprogram ]
!350 = metadata !{i32 786478, i32 0, metadata !99, metadata !"xor_reduce", metadata !"xor_reduce", metadata !"_ZNK11ap_int_baseILi3ELb0ELb1EE10xor_reduceEv", metadata !100, i32 2293, metadata !253, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 2293} ; [ DW_TAG_subprogram ]
!351 = metadata !{i32 786478, i32 0, metadata !99, metadata !"xnor_reduce", metadata !"xnor_reduce", metadata !"_ZNK11ap_int_baseILi3ELb0ELb1EE11xnor_reduceEv", metadata !100, i32 2296, metadata !253, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 2296} ; [ DW_TAG_subprogram ]
!352 = metadata !{i32 786478, i32 0, metadata !99, metadata !"to_string", metadata !"to_string", metadata !"_ZNK11ap_int_baseILi3ELb0ELb1EE9to_stringEPci8BaseModeb", metadata !100, i32 2303, metadata !353, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 2303} ; [ DW_TAG_subprogram ]
!353 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !354, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!354 = metadata !{null, metadata !251, metadata !355, metadata !119, metadata !356, metadata !70}
!355 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !49} ; [ DW_TAG_pointer_type ]
!356 = metadata !{i32 786436, null, metadata !"BaseMode", metadata !100, i32 601, i64 5, i64 8, i32 0, i32 0, null, metadata !357, i32 0, i32 0} ; [ DW_TAG_enumeration_type ]
!357 = metadata !{metadata !358, metadata !359, metadata !360, metadata !361}
!358 = metadata !{i32 786472, metadata !"SC_BIN", i64 2} ; [ DW_TAG_enumerator ]
!359 = metadata !{i32 786472, metadata !"SC_OCT", i64 8} ; [ DW_TAG_enumerator ]
!360 = metadata !{i32 786472, metadata !"SC_DEC", i64 10} ; [ DW_TAG_enumerator ]
!361 = metadata !{i32 786472, metadata !"SC_HEX", i64 16} ; [ DW_TAG_enumerator ]
!362 = metadata !{i32 786478, i32 0, metadata !99, metadata !"to_string", metadata !"to_string", metadata !"_ZNK11ap_int_baseILi3ELb0ELb1EE9to_stringE8BaseModeb", metadata !100, i32 2330, metadata !363, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 2330} ; [ DW_TAG_subprogram ]
!363 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !364, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!364 = metadata !{metadata !355, metadata !251, metadata !356, metadata !70}
!365 = metadata !{i32 786478, i32 0, metadata !99, metadata !"to_string", metadata !"to_string", metadata !"_ZNK11ap_int_baseILi3ELb0ELb1EE9to_stringEab", metadata !100, i32 2334, metadata !366, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 2334} ; [ DW_TAG_subprogram ]
!366 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !367, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!367 = metadata !{metadata !355, metadata !251, metadata !145, metadata !70}
!368 = metadata !{i32 786478, i32 0, metadata !99, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !100, i32 1396, metadata !126, i1 false, i1 false, i32 0, i32 0, null, i32 320, i1 false, null, null, i32 0, metadata !42, i32 1396} ; [ DW_TAG_subprogram ]
!369 = metadata !{i32 786478, i32 0, metadata !99, metadata !"~ap_int_base", metadata !"~ap_int_base", metadata !"", metadata !100, i32 1396, metadata !122, i1 false, i1 false, i32 0, i32 0, null, i32 320, i1 false, null, null, i32 0, metadata !42, i32 1396} ; [ DW_TAG_subprogram ]
!370 = metadata !{metadata !371, metadata !120, metadata !372}
!371 = metadata !{i32 786480, null, metadata !"_AP_W", metadata !119, i64 3, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!372 = metadata !{i32 786480, null, metadata !"_AP_C", metadata !70, i64 1, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!373 = metadata !{i32 786478, i32 0, metadata !95, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !96, i32 183, metadata !374, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 183} ; [ DW_TAG_subprogram ]
!374 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !375, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!375 = metadata !{null, metadata !376}
!376 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !95} ; [ DW_TAG_pointer_type ]
!377 = metadata !{i32 786478, i32 0, metadata !95, metadata !"ap_uint<3>", metadata !"ap_uint<3>", metadata !"", metadata !96, i32 185, metadata !378, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !382, i32 0, metadata !42, i32 185} ; [ DW_TAG_subprogram ]
!378 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !379, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!379 = metadata !{null, metadata !376, metadata !380}
!380 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !381} ; [ DW_TAG_reference_type ]
!381 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !95} ; [ DW_TAG_const_type ]
!382 = metadata !{metadata !131}
!383 = metadata !{i32 786478, i32 0, metadata !95, metadata !"ap_uint<3>", metadata !"ap_uint<3>", metadata !"", metadata !96, i32 191, metadata !384, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !382, i32 0, metadata !42, i32 191} ; [ DW_TAG_subprogram ]
!384 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !385, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!385 = metadata !{null, metadata !376, metadata !386}
!386 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !387} ; [ DW_TAG_reference_type ]
!387 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !388} ; [ DW_TAG_const_type ]
!388 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !95} ; [ DW_TAG_volatile_type ]
!389 = metadata !{i32 786478, i32 0, metadata !95, metadata !"ap_uint<3, false>", metadata !"ap_uint<3, false>", metadata !"", metadata !96, i32 226, metadata !390, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !130, i32 0, metadata !42, i32 226} ; [ DW_TAG_subprogram ]
!390 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !391, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!391 = metadata !{null, metadata !376, metadata !128}
!392 = metadata !{i32 786478, i32 0, metadata !95, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !96, i32 245, metadata !393, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 245} ; [ DW_TAG_subprogram ]
!393 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !394, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!394 = metadata !{null, metadata !376, metadata !70}
!395 = metadata !{i32 786478, i32 0, metadata !95, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !96, i32 246, metadata !396, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 246} ; [ DW_TAG_subprogram ]
!396 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !397, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!397 = metadata !{null, metadata !376, metadata !145}
!398 = metadata !{i32 786478, i32 0, metadata !95, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !96, i32 247, metadata !399, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 247} ; [ DW_TAG_subprogram ]
!399 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !400, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!400 = metadata !{null, metadata !376, metadata !37}
!401 = metadata !{i32 786478, i32 0, metadata !95, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !96, i32 248, metadata !402, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 248} ; [ DW_TAG_subprogram ]
!402 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !403, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!403 = metadata !{null, metadata !376, metadata !152}
!404 = metadata !{i32 786478, i32 0, metadata !95, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !96, i32 249, metadata !405, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 249} ; [ DW_TAG_subprogram ]
!405 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !406, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!406 = metadata !{null, metadata !376, metadata !156}
!407 = metadata !{i32 786478, i32 0, metadata !95, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !96, i32 250, metadata !408, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 250} ; [ DW_TAG_subprogram ]
!408 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !409, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!409 = metadata !{null, metadata !376, metadata !119}
!410 = metadata !{i32 786478, i32 0, metadata !95, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !96, i32 251, metadata !411, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 251} ; [ DW_TAG_subprogram ]
!411 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !412, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!412 = metadata !{null, metadata !376, metadata !87}
!413 = metadata !{i32 786478, i32 0, metadata !95, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !96, i32 252, metadata !414, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 252} ; [ DW_TAG_subprogram ]
!414 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !415, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!415 = metadata !{null, metadata !376, metadata !166}
!416 = metadata !{i32 786478, i32 0, metadata !95, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !96, i32 253, metadata !417, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 253} ; [ DW_TAG_subprogram ]
!417 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !418, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!418 = metadata !{null, metadata !376, metadata !170}
!419 = metadata !{i32 786478, i32 0, metadata !95, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !96, i32 254, metadata !420, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 254} ; [ DW_TAG_subprogram ]
!420 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !421, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!421 = metadata !{null, metadata !376, metadata !93}
!422 = metadata !{i32 786478, i32 0, metadata !95, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !96, i32 255, metadata !423, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 255} ; [ DW_TAG_subprogram ]
!423 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !424, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!424 = metadata !{null, metadata !376, metadata !175}
!425 = metadata !{i32 786478, i32 0, metadata !95, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !96, i32 256, metadata !426, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 256} ; [ DW_TAG_subprogram ]
!426 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !427, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!427 = metadata !{null, metadata !376, metadata !183}
!428 = metadata !{i32 786478, i32 0, metadata !95, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !96, i32 257, metadata !429, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 257} ; [ DW_TAG_subprogram ]
!429 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !430, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!430 = metadata !{null, metadata !376, metadata !187}
!431 = metadata !{i32 786478, i32 0, metadata !95, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !96, i32 259, metadata !432, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 259} ; [ DW_TAG_subprogram ]
!432 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !433, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!433 = metadata !{null, metadata !376, metadata !47}
!434 = metadata !{i32 786478, i32 0, metadata !95, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !96, i32 260, metadata !435, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 260} ; [ DW_TAG_subprogram ]
!435 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !436, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!436 = metadata !{null, metadata !376, metadata !47, metadata !145}
!437 = metadata !{i32 786478, i32 0, metadata !95, metadata !"operator=", metadata !"operator=", metadata !"_ZNV7ap_uintILi3EEaSERKS0_", metadata !96, i32 263, metadata !438, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 263} ; [ DW_TAG_subprogram ]
!438 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !439, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!439 = metadata !{null, metadata !440, metadata !380}
!440 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !388} ; [ DW_TAG_pointer_type ]
!441 = metadata !{i32 786478, i32 0, metadata !95, metadata !"operator=", metadata !"operator=", metadata !"_ZNV7ap_uintILi3EEaSERVKS0_", metadata !96, i32 267, metadata !442, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 267} ; [ DW_TAG_subprogram ]
!442 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !443, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!443 = metadata !{null, metadata !440, metadata !386}
!444 = metadata !{i32 786478, i32 0, metadata !95, metadata !"operator=", metadata !"operator=", metadata !"_ZN7ap_uintILi3EEaSERVKS0_", metadata !96, i32 271, metadata !445, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 271} ; [ DW_TAG_subprogram ]
!445 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !446, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!446 = metadata !{metadata !447, metadata !376, metadata !386}
!447 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !95} ; [ DW_TAG_reference_type ]
!448 = metadata !{i32 786478, i32 0, metadata !95, metadata !"operator=", metadata !"operator=", metadata !"_ZN7ap_uintILi3EEaSERKS0_", metadata !96, i32 276, metadata !449, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 276} ; [ DW_TAG_subprogram ]
!449 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !450, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!450 = metadata !{metadata !447, metadata !376, metadata !380}
!451 = metadata !{i32 786478, i32 0, metadata !95, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !96, i32 180, metadata !378, i1 false, i1 false, i32 0, i32 0, null, i32 320, i1 false, null, null, i32 0, metadata !42, i32 180} ; [ DW_TAG_subprogram ]
!452 = metadata !{i32 786478, i32 0, metadata !95, metadata !"~ap_uint", metadata !"~ap_uint", metadata !"", metadata !96, i32 180, metadata !374, i1 false, i1 false, i32 0, i32 0, null, i32 320, i1 false, null, null, i32 0, metadata !42, i32 180} ; [ DW_TAG_subprogram ]
!453 = metadata !{metadata !371}
!454 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !87} ; [ DW_TAG_pointer_type ]
!455 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !456} ; [ DW_TAG_pointer_type ]
!456 = metadata !{i32 786438, metadata !33, metadata !"stream<unsigned char>", metadata !34, i32 79, i64 8, i64 8, i32 0, i32 0, null, metadata !457, i32 0, null, metadata !88} ; [ DW_TAG_class_field_type ]
!457 = metadata !{metadata !36}
!458 = metadata !{i32 5, i32 47, metadata !27, null}
!459 = metadata !{i32 786689, metadata !27, metadata !"base_ddr_addr", metadata !28, i32 33554437, metadata !90, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!460 = metadata !{i32 5, i32 74, metadata !27, null}
!461 = metadata !{i32 790531, metadata !462, metadata !"frame_index.V", null, i32 5, metadata !463, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!462 = metadata !{i32 786689, metadata !27, metadata !"frame_index", metadata !28, i32 50331653, metadata !94, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!463 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !464} ; [ DW_TAG_pointer_type ]
!464 = metadata !{i32 786438, null, metadata !"ap_uint<3>", metadata !96, i32 180, i64 3, i64 8, i32 0, i32 0, null, metadata !465, i32 0, null, metadata !453} ; [ DW_TAG_class_field_type ]
!465 = metadata !{metadata !466}
!466 = metadata !{i32 786438, null, metadata !"ap_int_base<3, false, true>", metadata !100, i32 1396, i64 3, i64 8, i32 0, i32 0, null, metadata !467, i32 0, null, metadata !370} ; [ DW_TAG_class_field_type ]
!467 = metadata !{metadata !468}
!468 = metadata !{i32 786438, null, metadata !"ssdm_int<3 + 1024 * 0, false>", metadata !104, i32 5, i64 3, i64 8, i32 0, i32 0, null, metadata !469, i32 0, null, metadata !117} ; [ DW_TAG_class_field_type ]
!469 = metadata !{metadata !106}
!470 = metadata !{i32 5, i32 185, metadata !27, null}
!471 = metadata !{i32 786689, metadata !27, metadata !"frame_count", metadata !28, i32 67108869, metadata !454, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!472 = metadata !{i32 5, i32 212, metadata !27, null}
!473 = metadata !{i32 16, i32 1, metadata !474, null}
!474 = metadata !{i32 786443, metadata !27, i32 6, i32 1, metadata !28, i32 0} ; [ DW_TAG_lexical_block ]
!475 = metadata !{i32 17, i32 1, metadata !474, null}
!476 = metadata !{i32 18, i32 1, metadata !474, null}
!477 = metadata !{i32 19, i32 1, metadata !474, null}
!478 = metadata !{i32 786688, metadata !474, metadata !"buffer", metadata !28, i32 39, metadata !479, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!479 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 32768, i64 64, i32 0, i32 0, metadata !92, metadata !480, i32 0, i32 0} ; [ DW_TAG_array_type ]
!480 = metadata !{metadata !481}
!481 = metadata !{i32 786465, i64 0, i64 511}     ; [ DW_TAG_subrange_type ]
!482 = metadata !{i32 39, i32 6, metadata !474, null}
!483 = metadata !{i32 40, i32 1, metadata !474, null}
!484 = metadata !{i32 45, i32 1, metadata !474, null}
!485 = metadata !{i32 48, i32 1, metadata !474, null}
!486 = metadata !{i32 790531, metadata !487, metadata !"ssdm_int<3 + 1024 * 0, false>.V", null, i32 276, metadata !463, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!487 = metadata !{i32 786689, metadata !488, metadata !"this", metadata !96, i32 16777492, metadata !94, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!488 = metadata !{i32 786478, i32 0, null, metadata !"operator=", metadata !"operator=", metadata !"_ZN7ap_uintILi3EEaSERKS0_", metadata !96, i32 276, metadata !449, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !448, metadata !42, i32 276} ; [ DW_TAG_subprogram ]
!489 = metadata !{i32 276, i32 53, metadata !488, metadata !490}
!490 = metadata !{i32 52, i32 2, metadata !474, null}
!491 = metadata !{i32 277, i32 10, metadata !492, metadata !490}
!492 = metadata !{i32 786443, metadata !488, i32 276, i32 92, metadata !96, i32 28} ; [ DW_TAG_lexical_block ]
!493 = metadata !{i32 55, i32 15, metadata !474, null}
!494 = metadata !{i32 63, i32 17, metadata !495, null}
!495 = metadata !{i32 786443, metadata !474, i32 63, i32 2, metadata !28, i32 1} ; [ DW_TAG_lexical_block ]
!496 = metadata !{i32 63, i32 146, metadata !495, null}
!497 = metadata !{i32 116, i32 3, metadata !498, null}
!498 = metadata !{i32 786443, metadata !495, i32 64, i32 2, metadata !28, i32 2} ; [ DW_TAG_lexical_block ]
!499 = metadata !{i32 79, i32 5, metadata !500, null}
!500 = metadata !{i32 786443, metadata !501, i32 79, i32 4, metadata !28, i32 6} ; [ DW_TAG_lexical_block ]
!501 = metadata !{i32 786443, metadata !502, i32 78, i32 4, metadata !28, i32 5} ; [ DW_TAG_lexical_block ]
!502 = metadata !{i32 786443, metadata !503, i32 71, i32 3, metadata !28, i32 4} ; [ DW_TAG_lexical_block ]
!503 = metadata !{i32 786443, metadata !498, i32 70, i32 3, metadata !28, i32 3} ; [ DW_TAG_lexical_block ]
!504 = metadata !{i32 97, i32 1, metadata !500, null}
!505 = metadata !{i32 790531, metadata !506, metadata !"stream<unsigned char>.V", null, i32 129, metadata !509, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!506 = metadata !{i32 786689, metadata !507, metadata !"this", metadata !34, i32 16777345, metadata !508, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!507 = metadata !{i32 786478, i32 0, metadata !33, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIhE4readEv", metadata !34, i32 129, metadata !75, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !74, metadata !42, i32 129} ; [ DW_TAG_subprogram ]
!508 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !32} ; [ DW_TAG_pointer_type ]
!509 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !456} ; [ DW_TAG_pointer_type ]
!510 = metadata !{i32 129, i32 56, metadata !507, metadata !511}
!511 = metadata !{i32 98, i32 28, metadata !500, null}
!512 = metadata !{i32 131, i32 9, metadata !513, metadata !511}
!513 = metadata !{i32 786443, metadata !507, i32 129, i32 63, metadata !34, i32 16} ; [ DW_TAG_lexical_block ]
!514 = metadata !{i32 786688, metadata !513, metadata !"tmp", metadata !34, i32 130, metadata !37, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!515 = metadata !{i32 111, i32 4, metadata !500, null}
!516 = metadata !{i32 78, i32 54, metadata !501, null}
!517 = metadata !{i32 118, i32 3, metadata !498, null}
!518 = metadata !{i32 786688, metadata !474, metadata !"offset", metadata !28, i32 55, metadata !119, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!519 = metadata !{i32 786688, metadata !495, metadata !"idx", metadata !28, i32 63, metadata !119, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!520 = metadata !{i32 1820, i32 147, metadata !521, metadata !763}
!521 = metadata !{i32 786443, metadata !522, i32 1820, i32 143, metadata !100, i32 11} ; [ DW_TAG_lexical_block ]
!522 = metadata !{i32 786478, i32 0, null, metadata !"operator+=<1, false>", metadata !"operator+=<1, false>", metadata !"_ZN11ap_int_baseILi3ELb0ELb1EEpLILi1ELb0EEERS0_RKS_IXT_EXT0_EXleT_Li64EEE", metadata !100, i32 1820, metadata !523, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, metadata !545, null, metadata !42, i32 1820} ; [ DW_TAG_subprogram ]
!523 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !524, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!524 = metadata !{metadata !208, metadata !124, metadata !525}
!525 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !526} ; [ DW_TAG_reference_type ]
!526 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !527} ; [ DW_TAG_const_type ]
!527 = metadata !{i32 786434, null, metadata !"ap_int_base<1, false, true>", metadata !100, i32 1396, i64 8, i64 8, i32 0, i32 0, null, metadata !528, i32 0, null, metadata !761} ; [ DW_TAG_class_type ]
!528 = metadata !{metadata !529, metadata !538, metadata !542, metadata !547, metadata !553, metadata !556, metadata !559, metadata !562, metadata !565, metadata !568, metadata !571, metadata !574, metadata !577, metadata !580, metadata !583, metadata !586, metadata !589, metadata !592, metadata !595, metadata !598, metadata !602, metadata !605, metadata !608, metadata !609, metadata !613, metadata !616, metadata !619, metadata !622, metadata !625, metadata !628, metadata !631, metadata !634, metadata !637, metadata !640, metadata !643, metadata !646, metadata !651, metadata !654, metadata !655, metadata !656, metadata !657, metadata !658, metadata !661, metadata !664, metadata !667, metadata !670, metadata !673, metadata !676, metadata !679, metadata !680, metadata !684, metadata !687, metadata !688, metadata !689, metadata !690, metadata !691, metadata !692, metadata !695, metadata !696, metadata !699, metadata !700, metadata !701, metadata !702, metadata !703, metadata !704, metadata !707, metadata !708, metadata !709, metadata !712, metadata !713, metadata !716, metadata !717, metadata !721, metadata !725, metadata !726, metadata !729, metadata !730, metadata !734, metadata !735, metadata !736, metadata !737, metadata !740, metadata !741, metadata !742, metadata !743, metadata !744, metadata !745, metadata !746, metadata !747, metadata !748, metadata !749, metadata !750, metadata !751, metadata !754, metadata !757, metadata !760}
!529 = metadata !{i32 786460, metadata !527, null, metadata !100, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !530} ; [ DW_TAG_inheritance ]
!530 = metadata !{i32 786434, null, metadata !"ssdm_int<1 + 1024 * 0, false>", metadata !104, i32 3, i64 8, i64 8, i32 0, i32 0, null, metadata !531, i32 0, null, metadata !249} ; [ DW_TAG_class_type ]
!531 = metadata !{metadata !532, metadata !534}
!532 = metadata !{i32 786445, metadata !530, metadata !"V", metadata !104, i32 3, i64 1, i64 1, i64 0, i32 0, metadata !533} ; [ DW_TAG_member ]
!533 = metadata !{i32 786468, null, metadata !"uint1", null, i32 0, i64 1, i64 1, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!534 = metadata !{i32 786478, i32 0, metadata !530, metadata !"ssdm_int", metadata !"ssdm_int", metadata !"", metadata !104, i32 3, metadata !535, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 3} ; [ DW_TAG_subprogram ]
!535 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !536, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!536 = metadata !{null, metadata !537}
!537 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !530} ; [ DW_TAG_pointer_type ]
!538 = metadata !{i32 786478, i32 0, metadata !527, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !100, i32 1437, metadata !539, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 1437} ; [ DW_TAG_subprogram ]
!539 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !540, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!540 = metadata !{null, metadata !541}
!541 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !527} ; [ DW_TAG_pointer_type ]
!542 = metadata !{i32 786478, i32 0, metadata !527, metadata !"ap_int_base<1, false>", metadata !"ap_int_base<1, false>", metadata !"", metadata !100, i32 1449, metadata !543, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !545, i32 0, metadata !42, i32 1449} ; [ DW_TAG_subprogram ]
!543 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !544, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!544 = metadata !{null, metadata !541, metadata !525}
!545 = metadata !{metadata !546, metadata !132}
!546 = metadata !{i32 786480, null, metadata !"_AP_W2", metadata !119, i64 1, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!547 = metadata !{i32 786478, i32 0, metadata !527, metadata !"ap_int_base<1, false>", metadata !"ap_int_base<1, false>", metadata !"", metadata !100, i32 1452, metadata !548, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !545, i32 0, metadata !42, i32 1452} ; [ DW_TAG_subprogram ]
!548 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !549, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!549 = metadata !{null, metadata !541, metadata !550}
!550 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !551} ; [ DW_TAG_reference_type ]
!551 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !552} ; [ DW_TAG_const_type ]
!552 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !527} ; [ DW_TAG_volatile_type ]
!553 = metadata !{i32 786478, i32 0, metadata !527, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !100, i32 1459, metadata !554, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !42, i32 1459} ; [ DW_TAG_subprogram ]
!554 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !555, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!555 = metadata !{null, metadata !541, metadata !70}
!556 = metadata !{i32 786478, i32 0, metadata !527, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !100, i32 1460, metadata !557, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !42, i32 1460} ; [ DW_TAG_subprogram ]
!557 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !558, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!558 = metadata !{null, metadata !541, metadata !145}
!559 = metadata !{i32 786478, i32 0, metadata !527, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !100, i32 1461, metadata !560, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !42, i32 1461} ; [ DW_TAG_subprogram ]
!560 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !561, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!561 = metadata !{null, metadata !541, metadata !37}
!562 = metadata !{i32 786478, i32 0, metadata !527, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !100, i32 1462, metadata !563, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !42, i32 1462} ; [ DW_TAG_subprogram ]
!563 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !564, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!564 = metadata !{null, metadata !541, metadata !152}
!565 = metadata !{i32 786478, i32 0, metadata !527, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !100, i32 1463, metadata !566, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !42, i32 1463} ; [ DW_TAG_subprogram ]
!566 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !567, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!567 = metadata !{null, metadata !541, metadata !156}
!568 = metadata !{i32 786478, i32 0, metadata !527, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !100, i32 1464, metadata !569, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !42, i32 1464} ; [ DW_TAG_subprogram ]
!569 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !570, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!570 = metadata !{null, metadata !541, metadata !119}
!571 = metadata !{i32 786478, i32 0, metadata !527, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !100, i32 1465, metadata !572, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !42, i32 1465} ; [ DW_TAG_subprogram ]
!572 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !573, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!573 = metadata !{null, metadata !541, metadata !87}
!574 = metadata !{i32 786478, i32 0, metadata !527, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !100, i32 1466, metadata !575, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !42, i32 1466} ; [ DW_TAG_subprogram ]
!575 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !576, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!576 = metadata !{null, metadata !541, metadata !166}
!577 = metadata !{i32 786478, i32 0, metadata !527, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !100, i32 1467, metadata !578, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !42, i32 1467} ; [ DW_TAG_subprogram ]
!578 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !579, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!579 = metadata !{null, metadata !541, metadata !170}
!580 = metadata !{i32 786478, i32 0, metadata !527, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !100, i32 1468, metadata !581, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !42, i32 1468} ; [ DW_TAG_subprogram ]
!581 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !582, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!582 = metadata !{null, metadata !541, metadata !174}
!583 = metadata !{i32 786478, i32 0, metadata !527, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !100, i32 1469, metadata !584, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !42, i32 1469} ; [ DW_TAG_subprogram ]
!584 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !585, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!585 = metadata !{null, metadata !541, metadata !179}
!586 = metadata !{i32 786478, i32 0, metadata !527, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !100, i32 1470, metadata !587, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !42, i32 1470} ; [ DW_TAG_subprogram ]
!587 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !588, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!588 = metadata !{null, metadata !541, metadata !183}
!589 = metadata !{i32 786478, i32 0, metadata !527, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !100, i32 1471, metadata !590, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !42, i32 1471} ; [ DW_TAG_subprogram ]
!590 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !591, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!591 = metadata !{null, metadata !541, metadata !187}
!592 = metadata !{i32 786478, i32 0, metadata !527, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !100, i32 1498, metadata !593, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 1498} ; [ DW_TAG_subprogram ]
!593 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !594, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!594 = metadata !{null, metadata !541, metadata !47}
!595 = metadata !{i32 786478, i32 0, metadata !527, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !100, i32 1505, metadata !596, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 1505} ; [ DW_TAG_subprogram ]
!596 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !597, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!597 = metadata !{null, metadata !541, metadata !47, metadata !145}
!598 = metadata !{i32 786478, i32 0, metadata !527, metadata !"read", metadata !"read", metadata !"_ZNV11ap_int_baseILi1ELb0ELb1EE4readEv", metadata !100, i32 1526, metadata !599, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 1526} ; [ DW_TAG_subprogram ]
!599 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !600, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!600 = metadata !{metadata !527, metadata !601}
!601 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !552} ; [ DW_TAG_pointer_type ]
!602 = metadata !{i32 786478, i32 0, metadata !527, metadata !"write", metadata !"write", metadata !"_ZNV11ap_int_baseILi1ELb0ELb1EE5writeERKS0_", metadata !100, i32 1532, metadata !603, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 1532} ; [ DW_TAG_subprogram ]
!603 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !604, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!604 = metadata !{null, metadata !601, metadata !525}
!605 = metadata !{i32 786478, i32 0, metadata !527, metadata !"operator=", metadata !"operator=", metadata !"_ZNV11ap_int_baseILi1ELb0ELb1EEaSERVKS0_", metadata !100, i32 1544, metadata !606, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 1544} ; [ DW_TAG_subprogram ]
!606 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !607, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!607 = metadata !{null, metadata !601, metadata !550}
!608 = metadata !{i32 786478, i32 0, metadata !527, metadata !"operator=", metadata !"operator=", metadata !"_ZNV11ap_int_baseILi1ELb0ELb1EEaSERKS0_", metadata !100, i32 1553, metadata !603, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 1553} ; [ DW_TAG_subprogram ]
!609 = metadata !{i32 786478, i32 0, metadata !527, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EEaSERVKS0_", metadata !100, i32 1576, metadata !610, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 1576} ; [ DW_TAG_subprogram ]
!610 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !611, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!611 = metadata !{metadata !612, metadata !541, metadata !550}
!612 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !527} ; [ DW_TAG_reference_type ]
!613 = metadata !{i32 786478, i32 0, metadata !527, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EEaSERKS0_", metadata !100, i32 1581, metadata !614, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 1581} ; [ DW_TAG_subprogram ]
!614 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !615, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!615 = metadata !{metadata !612, metadata !541, metadata !525}
!616 = metadata !{i32 786478, i32 0, metadata !527, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EEaSEPKc", metadata !100, i32 1585, metadata !617, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 1585} ; [ DW_TAG_subprogram ]
!617 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !618, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!618 = metadata !{metadata !612, metadata !541, metadata !47}
!619 = metadata !{i32 786478, i32 0, metadata !527, metadata !"set", metadata !"set", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EE3setEPKca", metadata !100, i32 1593, metadata !620, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 1593} ; [ DW_TAG_subprogram ]
!620 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !621, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!621 = metadata !{metadata !612, metadata !541, metadata !47, metadata !145}
!622 = metadata !{i32 786478, i32 0, metadata !527, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EEaSEc", metadata !100, i32 1607, metadata !623, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 1607} ; [ DW_TAG_subprogram ]
!623 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !624, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!624 = metadata !{metadata !612, metadata !541, metadata !49}
!625 = metadata !{i32 786478, i32 0, metadata !527, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EEaSEh", metadata !100, i32 1608, metadata !626, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 1608} ; [ DW_TAG_subprogram ]
!626 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !627, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!627 = metadata !{metadata !612, metadata !541, metadata !37}
!628 = metadata !{i32 786478, i32 0, metadata !527, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EEaSEs", metadata !100, i32 1609, metadata !629, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 1609} ; [ DW_TAG_subprogram ]
!629 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !630, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!630 = metadata !{metadata !612, metadata !541, metadata !152}
!631 = metadata !{i32 786478, i32 0, metadata !527, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EEaSEt", metadata !100, i32 1610, metadata !632, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 1610} ; [ DW_TAG_subprogram ]
!632 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !633, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!633 = metadata !{metadata !612, metadata !541, metadata !156}
!634 = metadata !{i32 786478, i32 0, metadata !527, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EEaSEi", metadata !100, i32 1611, metadata !635, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 1611} ; [ DW_TAG_subprogram ]
!635 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !636, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!636 = metadata !{metadata !612, metadata !541, metadata !119}
!637 = metadata !{i32 786478, i32 0, metadata !527, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EEaSEj", metadata !100, i32 1612, metadata !638, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 1612} ; [ DW_TAG_subprogram ]
!638 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !639, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!639 = metadata !{metadata !612, metadata !541, metadata !87}
!640 = metadata !{i32 786478, i32 0, metadata !527, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EEaSEx", metadata !100, i32 1613, metadata !641, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 1613} ; [ DW_TAG_subprogram ]
!641 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !642, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!642 = metadata !{metadata !612, metadata !541, metadata !174}
!643 = metadata !{i32 786478, i32 0, metadata !527, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EEaSEy", metadata !100, i32 1614, metadata !644, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 1614} ; [ DW_TAG_subprogram ]
!644 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !645, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!645 = metadata !{metadata !612, metadata !541, metadata !179}
!646 = metadata !{i32 786478, i32 0, metadata !527, metadata !"operator unsigned char", metadata !"operator unsigned char", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EEcvhEv", metadata !100, i32 1652, metadata !647, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 1652} ; [ DW_TAG_subprogram ]
!647 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !648, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!648 = metadata !{metadata !649, metadata !650}
!649 = metadata !{i32 786454, metadata !527, metadata !"RetType", metadata !100, i32 1401, i64 0, i64 0, i64 0, i32 0, metadata !246} ; [ DW_TAG_typedef ]
!650 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !526} ; [ DW_TAG_pointer_type ]
!651 = metadata !{i32 786478, i32 0, metadata !527, metadata !"to_bool", metadata !"to_bool", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE7to_boolEv", metadata !100, i32 1658, metadata !652, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 1658} ; [ DW_TAG_subprogram ]
!652 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !653, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!653 = metadata !{metadata !70, metadata !650}
!654 = metadata !{i32 786478, i32 0, metadata !527, metadata !"to_uchar", metadata !"to_uchar", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE8to_ucharEv", metadata !100, i32 1659, metadata !652, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 1659} ; [ DW_TAG_subprogram ]
!655 = metadata !{i32 786478, i32 0, metadata !527, metadata !"to_char", metadata !"to_char", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE7to_charEv", metadata !100, i32 1660, metadata !652, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 1660} ; [ DW_TAG_subprogram ]
!656 = metadata !{i32 786478, i32 0, metadata !527, metadata !"to_ushort", metadata !"to_ushort", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE9to_ushortEv", metadata !100, i32 1661, metadata !652, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 1661} ; [ DW_TAG_subprogram ]
!657 = metadata !{i32 786478, i32 0, metadata !527, metadata !"to_short", metadata !"to_short", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE8to_shortEv", metadata !100, i32 1662, metadata !652, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 1662} ; [ DW_TAG_subprogram ]
!658 = metadata !{i32 786478, i32 0, metadata !527, metadata !"to_int", metadata !"to_int", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE6to_intEv", metadata !100, i32 1663, metadata !659, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 1663} ; [ DW_TAG_subprogram ]
!659 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !660, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!660 = metadata !{metadata !119, metadata !650}
!661 = metadata !{i32 786478, i32 0, metadata !527, metadata !"to_uint", metadata !"to_uint", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE7to_uintEv", metadata !100, i32 1664, metadata !662, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 1664} ; [ DW_TAG_subprogram ]
!662 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !663, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!663 = metadata !{metadata !87, metadata !650}
!664 = metadata !{i32 786478, i32 0, metadata !527, metadata !"to_long", metadata !"to_long", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE7to_longEv", metadata !100, i32 1665, metadata !665, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 1665} ; [ DW_TAG_subprogram ]
!665 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !666, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!666 = metadata !{metadata !166, metadata !650}
!667 = metadata !{i32 786478, i32 0, metadata !527, metadata !"to_ulong", metadata !"to_ulong", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE8to_ulongEv", metadata !100, i32 1666, metadata !668, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 1666} ; [ DW_TAG_subprogram ]
!668 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !669, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!669 = metadata !{metadata !170, metadata !650}
!670 = metadata !{i32 786478, i32 0, metadata !527, metadata !"to_int64", metadata !"to_int64", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE8to_int64Ev", metadata !100, i32 1667, metadata !671, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 1667} ; [ DW_TAG_subprogram ]
!671 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !672, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!672 = metadata !{metadata !174, metadata !650}
!673 = metadata !{i32 786478, i32 0, metadata !527, metadata !"to_uint64", metadata !"to_uint64", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE9to_uint64Ev", metadata !100, i32 1668, metadata !674, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 1668} ; [ DW_TAG_subprogram ]
!674 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !675, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!675 = metadata !{metadata !179, metadata !650}
!676 = metadata !{i32 786478, i32 0, metadata !527, metadata !"to_double", metadata !"to_double", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE9to_doubleEv", metadata !100, i32 1669, metadata !677, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 1669} ; [ DW_TAG_subprogram ]
!677 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !678, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!678 = metadata !{metadata !187, metadata !650}
!679 = metadata !{i32 786478, i32 0, metadata !527, metadata !"length", metadata !"length", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE6lengthEv", metadata !100, i32 1682, metadata !659, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 1682} ; [ DW_TAG_subprogram ]
!680 = metadata !{i32 786478, i32 0, metadata !527, metadata !"length", metadata !"length", metadata !"_ZNVK11ap_int_baseILi1ELb0ELb1EE6lengthEv", metadata !100, i32 1683, metadata !681, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 1683} ; [ DW_TAG_subprogram ]
!681 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !682, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!682 = metadata !{metadata !119, metadata !683}
!683 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !551} ; [ DW_TAG_pointer_type ]
!684 = metadata !{i32 786478, i32 0, metadata !527, metadata !"reverse", metadata !"reverse", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EE7reverseEv", metadata !100, i32 1688, metadata !685, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 1688} ; [ DW_TAG_subprogram ]
!685 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !686, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!686 = metadata !{metadata !612, metadata !541}
!687 = metadata !{i32 786478, i32 0, metadata !527, metadata !"iszero", metadata !"iszero", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE6iszeroEv", metadata !100, i32 1694, metadata !652, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 1694} ; [ DW_TAG_subprogram ]
!688 = metadata !{i32 786478, i32 0, metadata !527, metadata !"is_zero", metadata !"is_zero", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE7is_zeroEv", metadata !100, i32 1699, metadata !652, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 1699} ; [ DW_TAG_subprogram ]
!689 = metadata !{i32 786478, i32 0, metadata !527, metadata !"sign", metadata !"sign", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE4signEv", metadata !100, i32 1704, metadata !652, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 1704} ; [ DW_TAG_subprogram ]
!690 = metadata !{i32 786478, i32 0, metadata !527, metadata !"clear", metadata !"clear", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EE5clearEi", metadata !100, i32 1712, metadata !569, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 1712} ; [ DW_TAG_subprogram ]
!691 = metadata !{i32 786478, i32 0, metadata !527, metadata !"invert", metadata !"invert", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EE6invertEi", metadata !100, i32 1718, metadata !569, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 1718} ; [ DW_TAG_subprogram ]
!692 = metadata !{i32 786478, i32 0, metadata !527, metadata !"test", metadata !"test", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE4testEi", metadata !100, i32 1726, metadata !693, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 1726} ; [ DW_TAG_subprogram ]
!693 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !694, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!694 = metadata !{metadata !70, metadata !650, metadata !119}
!695 = metadata !{i32 786478, i32 0, metadata !527, metadata !"set", metadata !"set", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EE3setEi", metadata !100, i32 1732, metadata !569, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 1732} ; [ DW_TAG_subprogram ]
!696 = metadata !{i32 786478, i32 0, metadata !527, metadata !"set", metadata !"set", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EE3setEib", metadata !100, i32 1738, metadata !697, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 1738} ; [ DW_TAG_subprogram ]
!697 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !698, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!698 = metadata !{null, metadata !541, metadata !119, metadata !70}
!699 = metadata !{i32 786478, i32 0, metadata !527, metadata !"lrotate", metadata !"lrotate", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EE7lrotateEi", metadata !100, i32 1745, metadata !569, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 1745} ; [ DW_TAG_subprogram ]
!700 = metadata !{i32 786478, i32 0, metadata !527, metadata !"rrotate", metadata !"rrotate", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EE7rrotateEi", metadata !100, i32 1754, metadata !569, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 1754} ; [ DW_TAG_subprogram ]
!701 = metadata !{i32 786478, i32 0, metadata !527, metadata !"set_bit", metadata !"set_bit", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EE7set_bitEib", metadata !100, i32 1762, metadata !697, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 1762} ; [ DW_TAG_subprogram ]
!702 = metadata !{i32 786478, i32 0, metadata !527, metadata !"get_bit", metadata !"get_bit", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE7get_bitEi", metadata !100, i32 1767, metadata !693, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 1767} ; [ DW_TAG_subprogram ]
!703 = metadata !{i32 786478, i32 0, metadata !527, metadata !"b_not", metadata !"b_not", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EE5b_notEv", metadata !100, i32 1772, metadata !539, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 1772} ; [ DW_TAG_subprogram ]
!704 = metadata !{i32 786478, i32 0, metadata !527, metadata !"countLeadingZeros", metadata !"countLeadingZeros", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EE17countLeadingZerosEv", metadata !100, i32 1779, metadata !705, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 1779} ; [ DW_TAG_subprogram ]
!705 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !706, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!706 = metadata !{metadata !119, metadata !541}
!707 = metadata !{i32 786478, i32 0, metadata !527, metadata !"operator++", metadata !"operator++", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EEppEv", metadata !100, i32 1836, metadata !685, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 1836} ; [ DW_TAG_subprogram ]
!708 = metadata !{i32 786478, i32 0, metadata !527, metadata !"operator--", metadata !"operator--", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EEmmEv", metadata !100, i32 1840, metadata !685, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 1840} ; [ DW_TAG_subprogram ]
!709 = metadata !{i32 786478, i32 0, metadata !527, metadata !"operator++", metadata !"operator++", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EEppEi", metadata !100, i32 1848, metadata !710, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 1848} ; [ DW_TAG_subprogram ]
!710 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !711, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!711 = metadata !{metadata !526, metadata !541, metadata !119}
!712 = metadata !{i32 786478, i32 0, metadata !527, metadata !"operator--", metadata !"operator--", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EEmmEi", metadata !100, i32 1853, metadata !710, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 1853} ; [ DW_TAG_subprogram ]
!713 = metadata !{i32 786478, i32 0, metadata !527, metadata !"operator+", metadata !"operator+", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EEpsEv", metadata !100, i32 1862, metadata !714, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 1862} ; [ DW_TAG_subprogram ]
!714 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !715, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!715 = metadata !{metadata !527, metadata !650}
!716 = metadata !{i32 786478, i32 0, metadata !527, metadata !"operator!", metadata !"operator!", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EEntEv", metadata !100, i32 1868, metadata !652, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 1868} ; [ DW_TAG_subprogram ]
!717 = metadata !{i32 786478, i32 0, metadata !527, metadata !"operator-", metadata !"operator-", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EEngEv", metadata !100, i32 1873, metadata !718, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 1873} ; [ DW_TAG_subprogram ]
!718 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !719, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!719 = metadata !{metadata !720, metadata !650}
!720 = metadata !{i32 786434, null, metadata !"ap_int_base<2, true, true>", metadata !100, i32 649, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!721 = metadata !{i32 786478, i32 0, metadata !527, metadata !"range", metadata !"range", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EE5rangeEii", metadata !100, i32 2003, metadata !722, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 2003} ; [ DW_TAG_subprogram ]
!722 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !723, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!723 = metadata !{metadata !724, metadata !541, metadata !119, metadata !119}
!724 = metadata !{i32 786434, null, metadata !"ap_range_ref<1, false>", metadata !100, i32 922, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!725 = metadata !{i32 786478, i32 0, metadata !527, metadata !"operator()", metadata !"operator()", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EEclEii", metadata !100, i32 2009, metadata !722, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 2009} ; [ DW_TAG_subprogram ]
!726 = metadata !{i32 786478, i32 0, metadata !527, metadata !"range", metadata !"range", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE5rangeEii", metadata !100, i32 2015, metadata !727, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 2015} ; [ DW_TAG_subprogram ]
!727 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !728, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!728 = metadata !{metadata !724, metadata !650, metadata !119, metadata !119}
!729 = metadata !{i32 786478, i32 0, metadata !527, metadata !"operator()", metadata !"operator()", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EEclEii", metadata !100, i32 2021, metadata !727, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 2021} ; [ DW_TAG_subprogram ]
!730 = metadata !{i32 786478, i32 0, metadata !527, metadata !"operator[]", metadata !"operator[]", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EEixEi", metadata !100, i32 2040, metadata !731, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 2040} ; [ DW_TAG_subprogram ]
!731 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !732, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!732 = metadata !{metadata !733, metadata !541, metadata !119}
!733 = metadata !{i32 786434, null, metadata !"ap_bit_ref<1, false>", metadata !100, i32 1192, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!734 = metadata !{i32 786478, i32 0, metadata !527, metadata !"operator[]", metadata !"operator[]", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EEixEi", metadata !100, i32 2054, metadata !693, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 2054} ; [ DW_TAG_subprogram ]
!735 = metadata !{i32 786478, i32 0, metadata !527, metadata !"bit", metadata !"bit", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EE3bitEi", metadata !100, i32 2068, metadata !731, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 2068} ; [ DW_TAG_subprogram ]
!736 = metadata !{i32 786478, i32 0, metadata !527, metadata !"bit", metadata !"bit", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE3bitEi", metadata !100, i32 2082, metadata !693, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 2082} ; [ DW_TAG_subprogram ]
!737 = metadata !{i32 786478, i32 0, metadata !527, metadata !"and_reduce", metadata !"and_reduce", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EE10and_reduceEv", metadata !100, i32 2262, metadata !738, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 2262} ; [ DW_TAG_subprogram ]
!738 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !739, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!739 = metadata !{metadata !70, metadata !541}
!740 = metadata !{i32 786478, i32 0, metadata !527, metadata !"nand_reduce", metadata !"nand_reduce", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EE11nand_reduceEv", metadata !100, i32 2265, metadata !738, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 2265} ; [ DW_TAG_subprogram ]
!741 = metadata !{i32 786478, i32 0, metadata !527, metadata !"or_reduce", metadata !"or_reduce", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EE9or_reduceEv", metadata !100, i32 2268, metadata !738, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 2268} ; [ DW_TAG_subprogram ]
!742 = metadata !{i32 786478, i32 0, metadata !527, metadata !"nor_reduce", metadata !"nor_reduce", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EE10nor_reduceEv", metadata !100, i32 2271, metadata !738, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 2271} ; [ DW_TAG_subprogram ]
!743 = metadata !{i32 786478, i32 0, metadata !527, metadata !"xor_reduce", metadata !"xor_reduce", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EE10xor_reduceEv", metadata !100, i32 2274, metadata !738, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 2274} ; [ DW_TAG_subprogram ]
!744 = metadata !{i32 786478, i32 0, metadata !527, metadata !"xnor_reduce", metadata !"xnor_reduce", metadata !"_ZN11ap_int_baseILi1ELb0ELb1EE11xnor_reduceEv", metadata !100, i32 2277, metadata !738, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 2277} ; [ DW_TAG_subprogram ]
!745 = metadata !{i32 786478, i32 0, metadata !527, metadata !"and_reduce", metadata !"and_reduce", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE10and_reduceEv", metadata !100, i32 2281, metadata !652, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 2281} ; [ DW_TAG_subprogram ]
!746 = metadata !{i32 786478, i32 0, metadata !527, metadata !"nand_reduce", metadata !"nand_reduce", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE11nand_reduceEv", metadata !100, i32 2284, metadata !652, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 2284} ; [ DW_TAG_subprogram ]
!747 = metadata !{i32 786478, i32 0, metadata !527, metadata !"or_reduce", metadata !"or_reduce", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE9or_reduceEv", metadata !100, i32 2287, metadata !652, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 2287} ; [ DW_TAG_subprogram ]
!748 = metadata !{i32 786478, i32 0, metadata !527, metadata !"nor_reduce", metadata !"nor_reduce", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE10nor_reduceEv", metadata !100, i32 2290, metadata !652, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 2290} ; [ DW_TAG_subprogram ]
!749 = metadata !{i32 786478, i32 0, metadata !527, metadata !"xor_reduce", metadata !"xor_reduce", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE10xor_reduceEv", metadata !100, i32 2293, metadata !652, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 2293} ; [ DW_TAG_subprogram ]
!750 = metadata !{i32 786478, i32 0, metadata !527, metadata !"xnor_reduce", metadata !"xnor_reduce", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE11xnor_reduceEv", metadata !100, i32 2296, metadata !652, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 2296} ; [ DW_TAG_subprogram ]
!751 = metadata !{i32 786478, i32 0, metadata !527, metadata !"to_string", metadata !"to_string", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE9to_stringEPci8BaseModeb", metadata !100, i32 2303, metadata !752, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 2303} ; [ DW_TAG_subprogram ]
!752 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !753, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!753 = metadata !{null, metadata !650, metadata !355, metadata !119, metadata !356, metadata !70}
!754 = metadata !{i32 786478, i32 0, metadata !527, metadata !"to_string", metadata !"to_string", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE9to_stringE8BaseModeb", metadata !100, i32 2330, metadata !755, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 2330} ; [ DW_TAG_subprogram ]
!755 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !756, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!756 = metadata !{metadata !355, metadata !650, metadata !356, metadata !70}
!757 = metadata !{i32 786478, i32 0, metadata !527, metadata !"to_string", metadata !"to_string", metadata !"_ZNK11ap_int_baseILi1ELb0ELb1EE9to_stringEab", metadata !100, i32 2334, metadata !758, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !42, i32 2334} ; [ DW_TAG_subprogram ]
!758 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !759, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!759 = metadata !{metadata !355, metadata !650, metadata !145, metadata !70}
!760 = metadata !{i32 786478, i32 0, metadata !527, metadata !"~ap_int_base", metadata !"~ap_int_base", metadata !"", metadata !100, i32 1396, metadata !539, i1 false, i1 false, i32 0, i32 0, null, i32 320, i1 false, null, null, i32 0, metadata !42, i32 1396} ; [ DW_TAG_subprogram ]
!761 = metadata !{metadata !762, metadata !120, metadata !372}
!762 = metadata !{i32 786480, null, metadata !"_AP_W", metadata !119, i64 1, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!763 = metadata !{i32 1850, i32 9, metadata !764, metadata !766}
!764 = metadata !{i32 786443, metadata !765, i32 1848, i32 78, metadata !100, i32 8} ; [ DW_TAG_lexical_block ]
!765 = metadata !{i32 786478, i32 0, null, metadata !"operator++", metadata !"operator++", metadata !"_ZN11ap_int_baseILi3ELb0ELb1EEppEi", metadata !100, i32 1848, metadata !311, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !310, metadata !42, i32 1848} ; [ DW_TAG_subprogram ]
!766 = metadata !{i32 124, i32 7, metadata !474, null}
!767 = metadata !{i32 277, i32 10, metadata !492, metadata !768}
!768 = metadata !{i32 123, i32 3, metadata !474, null}
!769 = metadata !{i32 131, i32 2, metadata !474, null}
!770 = metadata !{i32 132, i32 2, metadata !474, null}
!771 = metadata !{i32 134, i32 1, metadata !474, null}
