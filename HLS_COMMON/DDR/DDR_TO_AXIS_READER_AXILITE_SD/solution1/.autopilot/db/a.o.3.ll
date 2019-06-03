; ModuleID = 'F:/Progetti_Vivado_Tesi/Test_7_Tesi/HLS_COMMON/DDR/DDR_TO_AXIS_READER_AXILITE_SD/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@memcpy_OC_buffer_OC_base_ddr_a = internal unnamed_addr constant [28 x i8] c"memcpy.buffer.base_ddr_addr\00" ; [#uses=1 type=[28 x i8]*]
@luma_chroma_switch = internal unnamed_addr global i32 0, align 4 ; [#uses=4 type=i32*]
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a] ; [#uses=0 type=[1 x void ()*]*]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535] ; [#uses=0 type=[1 x i32]*]
@inner_index = internal unnamed_addr global i32 0, align 4 ; [#uses=3 type=i32*]
@guard_variable_for_ddr_to_axis_3 = internal unnamed_addr global i1 false ; [#uses=2 type=i1*]
@guard_variable_for_ddr_to_axis_2 = internal unnamed_addr global i1 false ; [#uses=2 type=i1*]
@guard_variable_for_ddr_to_axis_1 = internal unnamed_addr global i1 false ; [#uses=2 type=i1*]
@guard_variable_for_ddr_to_axis = internal unnamed_addr global i1 false ; [#uses=2 type=i1*]
@ddr_to_axis_reader_SD_str = internal unnamed_addr constant [22 x i8] c"ddr_to_axis_reader_SD\00" ; [#uses=1 type=[22 x i8]*]
@burstread_OC_region_str = internal unnamed_addr constant [17 x i8] c"burstread.region\00" ; [#uses=2 type=[17 x i8]*]
@FRAME_OFFSET = internal unnamed_addr global i32 0, align 4 ; [#uses=3 type=i32*]
@FRAME_BUFFER_NUMBER = internal global i8 0       ; [#uses=3 type=i8*]
@FRAME_BUFFER_DIM = internal unnamed_addr global i32 0, align 4 ; [#uses=3 type=i32*]
@BASE_ADDRESS = internal unnamed_addr global i32 0, align 4 ; [#uses=3 type=i32*]
@p_str7 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@p_str6 = private unnamed_addr constant [12 x i8] c"hls_label_1\00", align 1 ; [#uses=2 type=[12 x i8]*]
@p_str5 = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1 ; [#uses=2 type=[12 x i8]*]
@p_str4 = private unnamed_addr constant [12 x i8] c"RAM_2P_BRAM\00", align 1 ; [#uses=1 type=[12 x i8]*]
@p_str3 = private unnamed_addr constant [6 x i8] c"m_axi\00", align 1 ; [#uses=1 type=[6 x i8]*]
@p_str2 = private unnamed_addr constant [5 x i8] c"axis\00", align 1 ; [#uses=2 type=[5 x i8]*]
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=55 type=[1 x i8]*]
@p_str = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1 ; [#uses=7 type=[10 x i8]*]

; [#uses=4]
declare i64 @llvm.part.select.i64(i64, i32, i32) nounwind readnone

; [#uses=2]
declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

; [#uses=3]
declare i13 @llvm.part.select.i13(i13, i32, i32) nounwind readnone

; [#uses=29]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=1]
declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

; [#uses=0]
define void @ddr_to_axis_reader_SD(i8* %outStream_channel_1_V, i8* %outstream_channel_2_V, i64* %base_ddr_addr, i32 %base_address, i32 %frame_buffer_dim, i32 %frame_buffer_offset, i8 zeroext %frame_buffer_number, i1 zeroext %update_intr, i1 zeroext %stereo_enabler) {
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %outStream_channel_1_V), !map !7
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %outstream_channel_2_V), !map !11
  call void (...)* @_ssdm_op_SpecBitsMap(i64* %base_ddr_addr), !map !15
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %base_address), !map !21
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %frame_buffer_dim), !map !27
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %frame_buffer_offset), !map !31
  call void (...)* @_ssdm_op_SpecBitsMap(i8 %frame_buffer_number), !map !35
  call void (...)* @_ssdm_op_SpecBitsMap(i1 %update_intr), !map !39
  call void (...)* @_ssdm_op_SpecBitsMap(i1 %stereo_enabler), !map !43
  call void (...)* @_ssdm_op_SpecTopModule([22 x i8]* @ddr_to_axis_reader_SD_str) nounwind
  %stereo_enabler_read = call i1 @_ssdm_op_Read.s_axilite.i1(i1 %stereo_enabler) ; [#uses=1 type=i1]
  call void @llvm.dbg.value(metadata !{i1 %stereo_enabler_read}, i64 0, metadata !47), !dbg !117 ; [debug line = 4:115] [debug variable = stereo_enabler]
  %update_intr_read = call i1 @_ssdm_op_Read.s_axilite.i1(i1 %update_intr) ; [#uses=9 type=i1]
  call void @llvm.dbg.value(metadata !{i1 %update_intr_read}, i64 0, metadata !118), !dbg !119 ; [debug line = 4:97] [debug variable = update_intr]
  %frame_buffer_number_read = call i8 @_ssdm_op_Read.s_axilite.i8(i8 %frame_buffer_number) ; [#uses=3 type=i8]
  call void @llvm.dbg.value(metadata !{i8 %frame_buffer_number_read}, i64 0, metadata !120), !dbg !121 ; [debug line = 4:71] [debug variable = frame_buffer_number]
  %frame_buffer_offset_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %frame_buffer_offset) ; [#uses=3 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %frame_buffer_offset_read}, i64 0, metadata !122), !dbg !123 ; [debug line = 4:47] [debug variable = frame_buffer_offset]
  %frame_buffer_dim_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %frame_buffer_dim) ; [#uses=3 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %frame_buffer_dim_read}, i64 0, metadata !124), !dbg !125 ; [debug line = 4:25] [debug variable = frame_buffer_dim]
  %base_address_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %base_address) ; [#uses=3 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %base_address_read}, i64 0, metadata !126), !dbg !127 ; [debug line = 4:7] [debug variable = base_address]
  %buffer = alloca [512 x i64], align 16          ; [#uses=5 type=[512 x i64]*]
  call void @llvm.dbg.value(metadata !{i8* %outStream_channel_1_V}, i64 0, metadata !128), !dbg !133 ; [debug line = 3:51] [debug variable = outStream_channel_1.V]
  call void @llvm.dbg.value(metadata !{i8* %outstream_channel_2_V}, i64 0, metadata !134), !dbg !136 ; [debug line = 3:95] [debug variable = outstream_channel_2.V]
  call void @llvm.dbg.value(metadata !{i64* %base_ddr_addr}, i64 0, metadata !137), !dbg !138 ; [debug line = 3:130] [debug variable = base_ddr_addr]
  call void @llvm.dbg.value(metadata !{i32 %base_address}, i64 0, metadata !126), !dbg !127 ; [debug line = 4:7] [debug variable = base_address]
  call void @llvm.dbg.value(metadata !{i32 %frame_buffer_dim}, i64 0, metadata !124), !dbg !125 ; [debug line = 4:25] [debug variable = frame_buffer_dim]
  call void @llvm.dbg.value(metadata !{i32 %frame_buffer_offset}, i64 0, metadata !122), !dbg !123 ; [debug line = 4:47] [debug variable = frame_buffer_offset]
  call void @llvm.dbg.value(metadata !{i8 %frame_buffer_number}, i64 0, metadata !120), !dbg !121 ; [debug line = 4:71] [debug variable = frame_buffer_number]
  call void @llvm.dbg.value(metadata !{i1 %update_intr}, i64 0, metadata !118), !dbg !119 ; [debug line = 4:97] [debug variable = update_intr]
  call void @llvm.dbg.value(metadata !{i1 %stereo_enabler}, i64 0, metadata !47), !dbg !117 ; [debug line = 4:115] [debug variable = stereo_enabler]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1) nounwind, !dbg !139 ; [debug line = 6:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %base_address, [10 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1) nounwind, !dbg !141 ; [debug line = 7:1]
  call void (...)* @_ssdm_op_SpecInterface(i1 %update_intr, [10 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1) nounwind, !dbg !142 ; [debug line = 8:1]
  call void (...)* @_ssdm_op_SpecInterface(i8 %frame_buffer_number, [10 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1) nounwind, !dbg !143 ; [debug line = 9:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %frame_buffer_offset, [10 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1) nounwind, !dbg !144 ; [debug line = 10:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %frame_buffer_dim, [10 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1) nounwind, !dbg !145 ; [debug line = 11:1]
  call void (...)* @_ssdm_op_SpecInterface(i1 %stereo_enabler, [10 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1) nounwind, !dbg !146 ; [debug line = 12:1]
  call void (...)* @_ssdm_op_SpecInterface(i8* %outStream_channel_1_V, [5 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1) nounwind, !dbg !147 ; [debug line = 13:1]
  call void (...)* @_ssdm_op_SpecInterface(i8* %outstream_channel_2_V, [5 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1) nounwind, !dbg !148 ; [debug line = 14:1]
  call void (...)* @_ssdm_op_SpecInterface(i64* %base_ddr_addr, [6 x i8]* @p_str3, i32 0, i32 0, i32 0, i32 128, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str1) nounwind, !dbg !149 ; [debug line = 15:1]
  call void @llvm.dbg.declare(metadata !{[512 x i64]* %buffer}, metadata !150), !dbg !154 ; [debug line = 17:6] [debug variable = buffer]
  call void (...)* @_ssdm_op_SpecMemCore([512 x i64]* %buffer, [1 x i8]* @p_str1, [12 x i8]* @p_str4, [1 x i8]* @p_str1, i32 -1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1), !dbg !155 ; [debug line = 18:1]
  %inner_index_load = load i32* @inner_index, align 4, !dbg !156 ; [#uses=3 type=i32] [debug line = 22:1]
  call void (...)* @_ssdm_op_SpecReset(i32* @inner_index, i32 1, [1 x i8]* @p_str1) nounwind, !dbg !156 ; [debug line = 22:1]
  call void (...)* @_ssdm_op_SpecReset(i32* @luma_chroma_switch, i32 1, [1 x i8]* @p_str1) nounwind, !dbg !157 ; [debug line = 25:1]
  %guard_variable_for_ddr_to_axis = load i1* @guard_variable_for_ddr_to_axis_2, align 1 ; [#uses=1 type=i1]
  %FRAME_BUFFER_DIM_load = load i32* @FRAME_BUFFER_DIM, align 4, !dbg !158 ; [#uses=1 type=i32] [debug line = 50:16]
  br i1 %guard_variable_for_ddr_to_axis, label %._crit_edge, label %codeRepl1, !dbg !160 ; [debug line = 27:48]

codeRepl1:                                        ; preds = %0
  store i1 true, i1* @guard_variable_for_ddr_to_axis_2, align 1, !dbg !160 ; [debug line = 27:48]
  br label %._crit_edge

._crit_edge:                                      ; preds = %codeRepl1, %0
  %FRAME_BUFFER_DIM_flag = phi i1 [ true, %codeRepl1 ], [ false, %0 ] ; [#uses=1 type=i1]
  %FRAME_BUFFER_DIM_loc = phi i32 [ %frame_buffer_dim_read, %codeRepl1 ], [ %FRAME_BUFFER_DIM_load, %0 ] ; [#uses=1 type=i32]
  call void (...)* @_ssdm_op_SpecReset(i32* @FRAME_BUFFER_DIM, i32 1, [1 x i8]* @p_str1) nounwind, !dbg !161 ; [debug line = 28:1]
  %guard_variable_for_ddr_to_axis_1 = load i1* @guard_variable_for_ddr_to_axis, align 1 ; [#uses=1 type=i1]
  %FRAME_OFFSET_load = load i32* @FRAME_OFFSET, align 4, !dbg !162 ; [#uses=1 type=i32] [debug line = 31:1]
  br i1 %guard_variable_for_ddr_to_axis_1, label %._crit_edge14, label %codeRepl, !dbg !163 ; [debug line = 30:47]

codeRepl:                                         ; preds = %._crit_edge
  store i1 true, i1* @guard_variable_for_ddr_to_axis, align 1, !dbg !163 ; [debug line = 30:47]
  br label %._crit_edge14

._crit_edge14:                                    ; preds = %codeRepl, %._crit_edge
  %FRAME_OFFSET_flag = phi i1 [ true, %codeRepl ], [ false, %._crit_edge ] ; [#uses=1 type=i1]
  %FRAME_OFFSET_loc = phi i32 [ %frame_buffer_offset_read, %codeRepl ], [ %FRAME_OFFSET_load, %._crit_edge ] ; [#uses=1 type=i32]
  call void (...)* @_ssdm_op_SpecReset(i32* @FRAME_OFFSET, i32 1, [1 x i8]* @p_str1) nounwind, !dbg !162 ; [debug line = 31:1]
  %guard_variable_for_ddr_to_axis_2 = load i1* @guard_variable_for_ddr_to_axis_1, align 1 ; [#uses=1 type=i1]
  %FRAME_BUFFER_NUMBER_load = load i8* @FRAME_BUFFER_NUMBER, align 1 ; [#uses=1 type=i8]
  br i1 %guard_variable_for_ddr_to_axis_2, label %._crit_edge15, label %codeRepl2, !dbg !164 ; [debug line = 33:54]

codeRepl2:                                        ; preds = %._crit_edge14
  store i1 true, i1* @guard_variable_for_ddr_to_axis_1, align 1, !dbg !164 ; [debug line = 33:54]
  br label %._crit_edge15

._crit_edge15:                                    ; preds = %codeRepl2, %._crit_edge14
  %FRAME_BUFFER_NUMBER_flag = phi i1 [ true, %codeRepl2 ], [ false, %._crit_edge14 ] ; [#uses=1 type=i1]
  %FRAME_BUFFER_NUMBER_loc = phi i8 [ %frame_buffer_number_read, %codeRepl2 ], [ %FRAME_BUFFER_NUMBER_load, %._crit_edge14 ] ; [#uses=1 type=i8]
  call void (...)* @_ssdm_op_SpecReset(i8* @FRAME_BUFFER_NUMBER, i32 1, [1 x i8]* @p_str1) nounwind, !dbg !165 ; [debug line = 34:1]
  %guard_variable_for_ddr_to_axis_3 = load i1* @guard_variable_for_ddr_to_axis_3, align 1 ; [#uses=1 type=i1]
  %BASE_ADDRESS_load = load i32* @BASE_ADDRESS, align 4, !dbg !166 ; [#uses=1 type=i32] [debug line = 37:1]
  br i1 %guard_variable_for_ddr_to_axis_3, label %._crit_edge16, label %codeRepl3, !dbg !167 ; [debug line = 36:40]

codeRepl3:                                        ; preds = %._crit_edge15
  store i1 true, i1* @guard_variable_for_ddr_to_axis_3, align 1, !dbg !167 ; [debug line = 36:40]
  br label %._crit_edge16

._crit_edge16:                                    ; preds = %codeRepl3, %._crit_edge15
  %BASE_ADDRESS_flag = phi i1 [ true, %codeRepl3 ], [ false, %._crit_edge15 ] ; [#uses=1 type=i1]
  %BASE_ADDRESS_loc = phi i32 [ %base_address_read, %codeRepl3 ], [ %BASE_ADDRESS_load, %._crit_edge15 ] ; [#uses=1 type=i32]
  call void (...)* @_ssdm_op_SpecReset(i32* @BASE_ADDRESS, i32 1, [1 x i8]* @p_str1) nounwind, !dbg !166 ; [debug line = 37:1]
  %tmp_7 = call i29 @_ssdm_op_PartSelect.i29.i32.i32.i32(i32 %base_address_read, i32 3, i32 31), !dbg !168 ; [#uses=1 type=i29] [debug line = 45:6]
  %tmp_8 = zext i29 %tmp_7 to i32, !dbg !168      ; [#uses=2 type=i32] [debug line = 45:6]
  %p_FRAME_BUFFER_DIM_flag = or i1 %FRAME_BUFFER_DIM_flag, %update_intr_read, !dbg !170 ; [#uses=1 type=i1] [debug line = 39:2]
  %frame_buffer_dim_FRAME_BUFFER_s = select i1 %update_intr_read, i32 %frame_buffer_dim_read, i32 %FRAME_BUFFER_DIM_loc, !dbg !170 ; [#uses=1 type=i32] [debug line = 39:2]
  %p_FRAME_OFFSET_flag = or i1 %FRAME_OFFSET_flag, %update_intr_read, !dbg !170 ; [#uses=1 type=i1] [debug line = 39:2]
  %p_FRAME_BUFFER_NUMBER_flag = or i1 %FRAME_BUFFER_NUMBER_flag, %update_intr_read, !dbg !170 ; [#uses=1 type=i1] [debug line = 39:2]
  %tmp_1_FRAME_BUFFER_NUMBER_loc = select i1 %update_intr_read, i8 %frame_buffer_number_read, i8 %FRAME_BUFFER_NUMBER_loc, !dbg !170 ; [#uses=1 type=i8] [debug line = 39:2]
  %tmp_1_FRAME_BUFFER_NUMBER_loc_s = zext i8 %tmp_1_FRAME_BUFFER_NUMBER_loc to i32, !dbg !170 ; [#uses=1 type=i32] [debug line = 39:2]
  %p_BASE_ADDRESS_flag = or i1 %BASE_ADDRESS_flag, %update_intr_read, !dbg !170 ; [#uses=1 type=i1] [debug line = 39:2]
  %tmp_7_base_address = select i1 %update_intr_read, i32 %tmp_8, i32 %base_address_read, !dbg !170 ; [#uses=1 type=i32] [debug line = 39:2]
  %frame_buffer_offset_FRAME_OFFS = select i1 %update_intr_read, i32 %frame_buffer_offset_read, i32 %FRAME_OFFSET_loc, !dbg !170 ; [#uses=1 type=i32] [debug line = 39:2]
  %tmp_7_BASE_ADDRESS_loc = select i1 %update_intr_read, i32 %tmp_8, i32 %BASE_ADDRESS_loc, !dbg !170 ; [#uses=1 type=i32] [debug line = 39:2]
  %tmp_s = mul i32 %inner_index_load, %frame_buffer_offset_FRAME_OFFS, !dbg !171 ; [#uses=1 type=i32] [debug line = 49:71]
  %tmp_2 = call i29 @_ssdm_op_PartSelect.i29.i32.i32.i32(i32 %tmp_s, i32 3, i32 31), !dbg !171 ; [#uses=1 type=i29] [debug line = 49:71]
  %tmp_9 = zext i29 %tmp_2 to i32, !dbg !171      ; [#uses=1 type=i32] [debug line = 49:71]
  %offset = add i32 %tmp_9, %tmp_7_BASE_ADDRESS_loc, !dbg !171 ; [#uses=1 type=i32] [debug line = 49:71]
  call void @llvm.dbg.value(metadata !{i32 %offset}, i64 0, metadata !172), !dbg !171 ; [debug line = 49:71] [debug variable = offset]
  br i1 %p_BASE_ADDRESS_flag, label %mergeST21, label %._crit_edge17.new22

; <label>:1                                       ; preds = %._crit_edge17.new, %.loopexit
  %offset1 = phi i32 [ %offset, %._crit_edge17.new ], [ %offset_1, %.loopexit ] ; [#uses=2 type=i32]
  %i = phi i20 [ 0, %._crit_edge17.new ], [ %i_1, %.loopexit ] ; [#uses=2 type=i20]
  %exitcond1 = icmp eq i20 %i, %tmp_5, !dbg !158  ; [#uses=1 type=i1] [debug line = 50:16]
  %i_1 = add i20 %i, 1, !dbg !174                 ; [#uses=1 type=i20] [debug line = 50:90]
  br i1 %exitcond1, label %._crit_edge18, label %2, !dbg !158 ; [debug line = 50:16]

; <label>:2                                       ; preds = %1
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 0, i64 1048575, i64 0) ; [#uses=0 type=i32]
  %tmp_1 = sext i32 %offset1 to i64, !dbg !175    ; [#uses=1 type=i64] [debug line = 52:4]
  %base_ddr_addr_addr = getelementptr inbounds i64* %base_ddr_addr, i64 %tmp_1, !dbg !175 ; [#uses=2 type=i64*] [debug line = 52:4]
  %base_ddr_addr_addr_1_rd_req = call i1 @_ssdm_op_ReadReq.m_axi.i64P(i64* %base_ddr_addr_addr, i32 512), !dbg !175 ; [#uses=0 type=i1] [debug line = 52:4]
  br label %burst.rd.header

burst.rd.header:                                  ; preds = %burst.rd.body, %2
  %indvar = phi i10 [ 0, %2 ], [ %indvar_next, %burst.rd.body ] ; [#uses=3 type=i10]
  %exitcond = icmp eq i10 %indvar, -512           ; [#uses=1 type=i1]
  %indvar_next = add i10 %indvar, 1               ; [#uses=1 type=i10]
  br i1 %exitcond, label %burst.rd.end, label %burst.rd.body

burst.rd.body:                                    ; preds = %burst.rd.header
  %empty_9 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 512, i64 512, i64 512) ; [#uses=0 type=i32]
  %burstread_rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin([17 x i8]* @burstread_OC_region_str) nounwind ; [#uses=1 type=i32]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str7)
  %empty_10 = call i32 (...)* @_ssdm_op_SpecLoopName([28 x i8]* @memcpy_OC_buffer_OC_base_ddr_a) nounwind ; [#uses=0 type=i32]
  %base_ddr_addr_addr_read = call i64 @_ssdm_op_Read.m_axi.i64P(i64* %base_ddr_addr_addr), !dbg !175 ; [#uses=1 type=i64] [debug line = 52:4]
  %tmp_6 = zext i10 %indvar to i64, !dbg !175     ; [#uses=1 type=i64] [debug line = 52:4]
  %buffer_addr = getelementptr [512 x i64]* %buffer, i64 0, i64 %tmp_6, !dbg !175 ; [#uses=1 type=i64*] [debug line = 52:4]
  store i64 %base_ddr_addr_addr_read, i64* %buffer_addr, align 8, !dbg !175 ; [debug line = 52:4]
  %burstread_rend = call i32 (...)* @_ssdm_op_SpecRegionEnd([17 x i8]* @burstread_OC_region_str, i32 %burstread_rbegin) nounwind ; [#uses=0 type=i32]
  br label %burst.rd.header

burst.rd.end:                                     ; preds = %burst.rd.header
  br i1 %stereo_enabler_read, label %.preheader, label %.preheader9, !dbg !177 ; [debug line = 53:4]

.preheader9:                                      ; preds = %6, %burst.rd.end
  %j = phi i13 [ %j_4, %6 ], [ 0, %burst.rd.end ] ; [#uses=5 type=i13]
  %tmp_10 = call i1 @_ssdm_op_BitSelect.i1.i13.i32(i13 %j, i32 12), !dbg !178 ; [#uses=1 type=i1] [debug line = 55:18]
  br i1 %tmp_10, label %.loopexit, label %3, !dbg !178 ; [debug line = 55:18]

; <label>:3                                       ; preds = %.preheader9
  %tmp_16 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str5), !dbg !181 ; [#uses=1 type=i32] [debug line = 56:6]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind, !dbg !183 ; [debug line = 57:1]
  %luma_chroma_switch_load = load i32* @luma_chroma_switch, align 4, !dbg !184 ; [#uses=2 type=i32] [debug line = 58:2]
  %tmp_18 = icmp eq i32 %luma_chroma_switch_load, 1, !dbg !184 ; [#uses=1 type=i1] [debug line = 58:2]
  br i1 %tmp_18, label %4, label %5, !dbg !184    ; [debug line = 58:2]

; <label>:4                                       ; preds = %3
  store i32 0, i32* @luma_chroma_switch, align 4, !dbg !185 ; [debug line = 60:7]
  %j_3 = add i13 -1, %j, !dbg !187                ; [#uses=3 type=i13] [debug line = 61:7]
  call void @llvm.dbg.value(metadata !{i13 %j_3}, i64 0, metadata !188), !dbg !187 ; [debug line = 61:7] [debug variable = j]
  %tmp_52 = trunc i13 %j_3 to i3                  ; [#uses=1 type=i3]
  %tmp_53 = call i10 @_ssdm_op_PartSelect.i10.i13.i32.i32(i13 %j_3, i32 3, i32 12) ; [#uses=2 type=i10]
  %adjSize = sext i10 %tmp_53 to i14              ; [#uses=1 type=i14]
  %mem_index_gep = add i14 4, %adjSize            ; [#uses=2 type=i14]
  %adjSize55_cast = zext i14 %mem_index_gep to i15, !dbg !189 ; [#uses=1 type=i15] [debug line = 144:48@62:7]
  call void @llvm.dbg.value(metadata !{i8* %outStream_channel_1_V}, i64 0, metadata !192), !dbg !189 ; [debug line = 144:48@62:7] [debug variable = stream<unsigned char>.V]
  %addrCmp = icmp ult i10 %tmp_53, -4             ; [#uses=1 type=i1]
  %addrCmp1 = icmp ult i14 %mem_index_gep, 516    ; [#uses=1 type=i1]
  %gepindex = add i15 -4, %adjSize55_cast         ; [#uses=1 type=i15]
  %gepindex1 = select i1 %addrCmp, i15 %gepindex, i15 511 ; [#uses=1 type=i15]
  %gepindex2 = select i1 %addrCmp1, i15 %gepindex1, i15 511 ; [#uses=1 type=i15]
  %gepindex2_cast = sext i15 %gepindex2 to i64    ; [#uses=1 type=i64]
  %buffer_addr_2 = getelementptr [512 x i64]* %buffer, i64 0, i64 %gepindex2_cast ; [#uses=1 type=i64*]
  %buffer_load_2 = load i64* %buffer_addr_2, align 8 ; [#uses=2 type=i64]
  %start_pos = call i6 @_ssdm_op_BitConcatenate.i6.i3.i3(i3 %tmp_52, i3 0) ; [#uses=3 type=i6]
  %end_pos2 = or i6 %start_pos, 7                 ; [#uses=2 type=i6]
  %tmp_54 = icmp ugt i6 %start_pos, %end_pos2     ; [#uses=3 type=i1]
  %tmp_55 = zext i6 %start_pos to i7              ; [#uses=4 type=i7]
  %tmp_56 = zext i6 %end_pos2 to i7               ; [#uses=2 type=i7]
  %tmp_57 = call i64 @llvm.part.select.i64(i64 %buffer_load_2, i32 63, i32 0) ; [#uses=1 type=i64]
  %tmp_58 = sub i7 %tmp_55, %tmp_56               ; [#uses=1 type=i7]
  %tmp_59 = xor i7 %tmp_55, 63                    ; [#uses=1 type=i7]
  %tmp_60 = sub i7 %tmp_56, %tmp_55               ; [#uses=1 type=i7]
  %tmp_61 = select i1 %tmp_54, i7 %tmp_58, i7 %tmp_60 ; [#uses=1 type=i7]
  %tmp_62 = select i1 %tmp_54, i64 %tmp_57, i64 %buffer_load_2 ; [#uses=1 type=i64]
  %tmp_63 = select i1 %tmp_54, i7 %tmp_59, i7 %tmp_55 ; [#uses=1 type=i7]
  %tmp_64 = sub i7 63, %tmp_61                    ; [#uses=1 type=i7]
  %tmp_65 = zext i7 %tmp_63 to i64                ; [#uses=1 type=i64]
  %tmp_66 = zext i7 %tmp_64 to i64                ; [#uses=1 type=i64]
  %tmp_67 = lshr i64 %tmp_62, %tmp_65             ; [#uses=1 type=i64]
  %tmp_68 = lshr i64 -1, %tmp_66                  ; [#uses=1 type=i64]
  %tmp_69 = and i64 %tmp_67, %tmp_68              ; [#uses=1 type=i64]
  %tmp_70 = trunc i64 %tmp_69 to i8               ; [#uses=1 type=i8]
  call void @llvm.dbg.value(metadata !{i8 %tmp_70}, i64 0, metadata !196), !dbg !198 ; [debug line = 145:31@62:7] [debug variable = tmp]
  call void @_ssdm_op_Write.axis.volatile.i8P(i8* %outStream_channel_1_V, i8 %tmp_70), !dbg !199 ; [debug line = 146:9@62:7]
  br label %6, !dbg !200                          ; [debug line = 63:6]

; <label>:5                                       ; preds = %3
  %tmp_20 = add nsw i32 1, %luma_chroma_switch_load, !dbg !201 ; [#uses=1 type=i32] [debug line = 66:7]
  store i32 %tmp_20, i32* @luma_chroma_switch, align 4, !dbg !201 ; [debug line = 66:7]
  %tmp_71 = trunc i13 %j to i3                    ; [#uses=1 type=i3]
  call void @llvm.dbg.value(metadata !{i8* %outStream_channel_1_V}, i64 0, metadata !192), !dbg !203 ; [debug line = 144:48@67:7] [debug variable = stream<unsigned char>.V]
  %gepindex62_cast = call i9 @_ssdm_op_PartSelect.i9.i13.i32.i32(i13 %j, i32 3, i32 11) ; [#uses=1 type=i9]
  %gepindex264_cast = zext i9 %gepindex62_cast to i64 ; [#uses=1 type=i64]
  %buffer_addr_3 = getelementptr [512 x i64]* %buffer, i64 0, i64 %gepindex264_cast ; [#uses=1 type=i64*]
  %buffer_load_3 = load i64* %buffer_addr_3, align 8 ; [#uses=2 type=i64]
  %start_pos3 = call i6 @_ssdm_op_BitConcatenate.i6.i3.i3(i3 %tmp_71, i3 0) ; [#uses=3 type=i6]
  %end_pos3 = or i6 %start_pos3, 7                ; [#uses=2 type=i6]
  %tmp_72 = icmp ugt i6 %start_pos3, %end_pos3    ; [#uses=3 type=i1]
  %tmp_73 = zext i6 %start_pos3 to i7             ; [#uses=4 type=i7]
  %tmp_74 = zext i6 %end_pos3 to i7               ; [#uses=2 type=i7]
  %tmp_75 = call i64 @llvm.part.select.i64(i64 %buffer_load_3, i32 63, i32 0) ; [#uses=1 type=i64]
  %tmp_76 = sub i7 %tmp_73, %tmp_74               ; [#uses=1 type=i7]
  %tmp_77 = xor i7 %tmp_73, 63                    ; [#uses=1 type=i7]
  %tmp_78 = sub i7 %tmp_74, %tmp_73               ; [#uses=1 type=i7]
  %tmp_79 = select i1 %tmp_72, i7 %tmp_76, i7 %tmp_78 ; [#uses=1 type=i7]
  %tmp_80 = select i1 %tmp_72, i64 %tmp_75, i64 %buffer_load_3 ; [#uses=1 type=i64]
  %tmp_81 = select i1 %tmp_72, i7 %tmp_77, i7 %tmp_73 ; [#uses=1 type=i7]
  %tmp_82 = sub i7 63, %tmp_79                    ; [#uses=1 type=i7]
  %tmp_83 = zext i7 %tmp_81 to i64                ; [#uses=1 type=i64]
  %tmp_84 = zext i7 %tmp_82 to i64                ; [#uses=1 type=i64]
  %tmp_85 = lshr i64 %tmp_80, %tmp_83             ; [#uses=1 type=i64]
  %tmp_86 = lshr i64 -1, %tmp_84                  ; [#uses=1 type=i64]
  %tmp_87 = and i64 %tmp_85, %tmp_86              ; [#uses=1 type=i64]
  %tmp_88 = trunc i64 %tmp_87 to i8               ; [#uses=1 type=i8]
  call void @llvm.dbg.value(metadata !{i8 %tmp_88}, i64 0, metadata !196), !dbg !205 ; [debug line = 145:31@67:7] [debug variable = tmp]
  call void @_ssdm_op_Write.axis.volatile.i8P(i8* %outStream_channel_1_V, i8 %tmp_88), !dbg !206 ; [debug line = 146:9@67:7]
  br label %6

; <label>:6                                       ; preds = %5, %4
  %j_1 = phi i13 [ %j_3, %4 ], [ %j, %5 ]         ; [#uses=1 type=i13]
  %empty_11 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str5, i32 %tmp_16), !dbg !207 ; [#uses=0 type=i32] [debug line = 69:5]
  %j_4 = add i13 %j_1, 1, !dbg !208               ; [#uses=1 type=i13] [debug line = 55:93]
  call void @llvm.dbg.value(metadata !{i13 %j_4}, i64 0, metadata !188), !dbg !208 ; [debug line = 55:93] [debug variable = j]
  br label %.preheader9, !dbg !208                ; [debug line = 55:93]

.preheader:                                       ; preds = %7, %burst.rd.end
  %j1 = phi i13 [ %j_2, %7 ], [ 0, %burst.rd.end ] ; [#uses=5 type=i13]
  %tmp = call i1 @_ssdm_op_BitSelect.i1.i13.i32(i13 %j1, i32 12), !dbg !209 ; [#uses=1 type=i1] [debug line = 73:18]
  br i1 %tmp, label %.loopexit, label %7, !dbg !209 ; [debug line = 73:18]

; <label>:7                                       ; preds = %.preheader
  %tmp_11 = trunc i13 %j1 to i3                   ; [#uses=1 type=i3]
  %empty_12 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2048, i64 2048, i64 2048) ; [#uses=0 type=i32]
  %tmp_12 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str6), !dbg !212 ; [#uses=1 type=i32] [debug line = 74:6]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind, !dbg !214 ; [debug line = 75:1]
  call void @llvm.dbg.value(metadata !{i8* %outStream_channel_1_V}, i64 0, metadata !192), !dbg !215 ; [debug line = 144:48@76:2] [debug variable = stream<unsigned char>.V]
  %gepindex74_cast = call i9 @_ssdm_op_PartSelect.i9.i13.i32.i32(i13 %j1, i32 3, i32 11) ; [#uses=1 type=i9]
  %gepindex276_cast = zext i9 %gepindex74_cast to i64 ; [#uses=1 type=i64]
  %buffer_addr_1 = getelementptr [512 x i64]* %buffer, i64 0, i64 %gepindex276_cast ; [#uses=2 type=i64*]
  %buffer_load = load i64* %buffer_addr_1, align 8 ; [#uses=2 type=i64]
  %tmp_13 = call i2 @_ssdm_op_PartSelect.i2.i13.i32.i32(i13 %j1, i32 1, i32 2) ; [#uses=1 type=i2]
  %start_pos1 = call i6 @_ssdm_op_BitConcatenate.i6.i2.i4(i2 %tmp_13, i4 0) ; [#uses=3 type=i6]
  %end_pos = or i6 %start_pos1, 7                 ; [#uses=2 type=i6]
  %tmp_15 = icmp ugt i6 %start_pos1, %end_pos     ; [#uses=3 type=i1]
  %tmp_17 = zext i6 %start_pos1 to i7             ; [#uses=4 type=i7]
  %tmp_19 = zext i6 %end_pos to i7                ; [#uses=2 type=i7]
  %tmp_21 = call i64 @llvm.part.select.i64(i64 %buffer_load, i32 63, i32 0) ; [#uses=1 type=i64]
  %tmp_22 = sub i7 %tmp_17, %tmp_19               ; [#uses=1 type=i7]
  %tmp_23 = xor i7 %tmp_17, 63                    ; [#uses=1 type=i7]
  %tmp_24 = sub i7 %tmp_19, %tmp_17               ; [#uses=1 type=i7]
  %tmp_25 = select i1 %tmp_15, i7 %tmp_22, i7 %tmp_24 ; [#uses=1 type=i7]
  %tmp_26 = select i1 %tmp_15, i64 %tmp_21, i64 %buffer_load ; [#uses=1 type=i64]
  %tmp_27 = select i1 %tmp_15, i7 %tmp_23, i7 %tmp_17 ; [#uses=1 type=i7]
  %tmp_28 = sub i7 63, %tmp_25                    ; [#uses=1 type=i7]
  %tmp_29 = zext i7 %tmp_27 to i64                ; [#uses=1 type=i64]
  %tmp_30 = zext i7 %tmp_28 to i64                ; [#uses=1 type=i64]
  %tmp_31 = lshr i64 %tmp_26, %tmp_29             ; [#uses=1 type=i64]
  %tmp_32 = lshr i64 -1, %tmp_30                  ; [#uses=1 type=i64]
  %tmp_33 = and i64 %tmp_31, %tmp_32              ; [#uses=1 type=i64]
  %tmp_34 = trunc i64 %tmp_33 to i8               ; [#uses=1 type=i8]
  call void @llvm.dbg.value(metadata !{i8 %tmp_34}, i64 0, metadata !196), !dbg !217 ; [debug line = 145:31@76:2] [debug variable = tmp]
  call void @_ssdm_op_Write.axis.volatile.i8P(i8* %outStream_channel_1_V, i8 %tmp_34), !dbg !218 ; [debug line = 146:9@76:2]
  %tmp_14 = or i3 %tmp_11, 1                      ; [#uses=1 type=i3]
  call void @llvm.dbg.value(metadata !{i8* %outstream_channel_2_V}, i64 0, metadata !192), !dbg !219 ; [debug line = 144:48@77:6] [debug variable = stream<unsigned char>.V]
  %buffer_load_1 = load i64* %buffer_addr_1, align 8 ; [#uses=2 type=i64]
  %start_pos2 = call i6 @_ssdm_op_BitConcatenate.i6.i3.i3(i3 %tmp_14, i3 0) ; [#uses=3 type=i6]
  %end_pos1 = or i6 %start_pos2, 7                ; [#uses=2 type=i6]
  %tmp_35 = icmp ugt i6 %start_pos2, %end_pos1    ; [#uses=3 type=i1]
  %tmp_36 = zext i6 %start_pos2 to i7             ; [#uses=4 type=i7]
  %tmp_37 = zext i6 %end_pos1 to i7               ; [#uses=2 type=i7]
  %tmp_38 = call i64 @llvm.part.select.i64(i64 %buffer_load_1, i32 63, i32 0) ; [#uses=1 type=i64]
  %tmp_39 = sub i7 %tmp_36, %tmp_37               ; [#uses=1 type=i7]
  %tmp_40 = xor i7 %tmp_36, 63                    ; [#uses=1 type=i7]
  %tmp_41 = sub i7 %tmp_37, %tmp_36               ; [#uses=1 type=i7]
  %tmp_42 = select i1 %tmp_35, i7 %tmp_39, i7 %tmp_41 ; [#uses=1 type=i7]
  %tmp_43 = select i1 %tmp_35, i64 %tmp_38, i64 %buffer_load_1 ; [#uses=1 type=i64]
  %tmp_44 = select i1 %tmp_35, i7 %tmp_40, i7 %tmp_36 ; [#uses=1 type=i7]
  %tmp_45 = sub i7 63, %tmp_42                    ; [#uses=1 type=i7]
  %tmp_46 = zext i7 %tmp_44 to i64                ; [#uses=1 type=i64]
  %tmp_47 = zext i7 %tmp_45 to i64                ; [#uses=1 type=i64]
  %tmp_48 = lshr i64 %tmp_43, %tmp_46             ; [#uses=1 type=i64]
  %tmp_49 = lshr i64 -1, %tmp_47                  ; [#uses=1 type=i64]
  %tmp_50 = and i64 %tmp_48, %tmp_49              ; [#uses=1 type=i64]
  %tmp_51 = trunc i64 %tmp_50 to i8               ; [#uses=1 type=i8]
  call void @llvm.dbg.value(metadata !{i8 %tmp_51}, i64 0, metadata !196), !dbg !221 ; [debug line = 145:31@77:6] [debug variable = tmp]
  call void @_ssdm_op_Write.axis.volatile.i8P(i8* %outstream_channel_2_V, i8 %tmp_51), !dbg !222 ; [debug line = 146:9@77:6]
  %empty_13 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str6, i32 %tmp_12), !dbg !223 ; [#uses=0 type=i32] [debug line = 78:5]
  %j_2 = add i13 2, %j1, !dbg !224                ; [#uses=1 type=i13] [debug line = 73:93]
  call void @llvm.dbg.value(metadata !{i13 %j_2}, i64 0, metadata !225), !dbg !224 ; [debug line = 73:93] [debug variable = j]
  br label %.preheader, !dbg !224                 ; [debug line = 73:93]

.loopexit:                                        ; preds = %.preheader, %.preheader9
  %offset_1 = add i32 %offset1, 512, !dbg !226    ; [#uses=1 type=i32] [debug line = 81:4]
  call void @llvm.dbg.value(metadata !{i32 %offset_1}, i64 0, metadata !172), !dbg !226 ; [debug line = 81:4] [debug variable = offset]
  call void @llvm.dbg.value(metadata !{i20 %i_1}, i64 0, metadata !227), !dbg !174 ; [debug line = 50:90] [debug variable = i]
  br label %1, !dbg !174                          ; [debug line = 50:90]

._crit_edge18:                                    ; preds = %1
  %tmp_3 = icmp eq i32 %inner_index_load, %tmp_1_FRAME_BUFFER_NUMBER_loc_s, !dbg !228 ; [#uses=1 type=i1] [debug line = 84:3]
  %tmp_4 = add nsw i32 %inner_index_load, 1, !dbg !229 ; [#uses=1 type=i32] [debug line = 87:4]
  %storemerge = select i1 %tmp_3, i32 0, i32 %tmp_4, !dbg !228 ; [#uses=1 type=i32] [debug line = 84:3]
  store i32 %storemerge, i32* @inner_index, align 4, !dbg !230 ; [debug line = 85:4]
  ret void, !dbg !231                             ; [debug line = 89:1]

mergeST:                                          ; preds = %._crit_edge17.new18
  store i32 %frame_buffer_dim_read, i32* @FRAME_BUFFER_DIM, align 4, !dbg !160 ; [debug line = 27:48]
  br label %._crit_edge17.new

._crit_edge17.new:                                ; preds = %._crit_edge17.new18, %mergeST
  %tmp_5 = call i20 @_ssdm_op_PartSelect.i20.i32.i32.i32(i32 %frame_buffer_dim_FRAME_BUFFER_s, i32 12, i32 31) ; [#uses=1 type=i20]
  br label %1, !dbg !158                          ; [debug line = 50:16]

mergeST17:                                        ; preds = %._crit_edge17.new20
  store i32 %frame_buffer_offset_read, i32* @FRAME_OFFSET, align 4, !dbg !163 ; [debug line = 30:47]
  br label %._crit_edge17.new18

._crit_edge17.new18:                              ; preds = %._crit_edge17.new20, %mergeST17
  br i1 %p_FRAME_BUFFER_DIM_flag, label %mergeST, label %._crit_edge17.new

mergeST19:                                        ; preds = %._crit_edge17.new22
  store i8 %frame_buffer_number_read, i8* @FRAME_BUFFER_NUMBER, align 1, !dbg !164 ; [debug line = 33:54]
  br label %._crit_edge17.new20

._crit_edge17.new20:                              ; preds = %._crit_edge17.new22, %mergeST19
  br i1 %p_FRAME_OFFSET_flag, label %mergeST17, label %._crit_edge17.new18

mergeST21:                                        ; preds = %._crit_edge16
  store i32 %tmp_7_base_address, i32* @BASE_ADDRESS, align 4, !dbg !167 ; [debug line = 36:40]
  br label %._crit_edge17.new22

._crit_edge17.new22:                              ; preds = %mergeST21, %._crit_edge16
  br i1 %p_FRAME_BUFFER_NUMBER_flag, label %mergeST19, label %._crit_edge17.new20
}

; [#uses=4]
define weak void @_ssdm_op_Write.axis.volatile.i8P(i8*, i8) {
entry:
  store i8 %1, i8* %0
  ret void
}

; [#uses=1]
define weak void @_ssdm_op_SpecTopModule(...) {
entry:
  ret void
}

; [#uses=6]
define weak void @_ssdm_op_SpecReset(...) nounwind {
entry:
  ret void
}

; [#uses=3]
define weak i32 @_ssdm_op_SpecRegionEnd(...) {
entry:
  ret i32 0
}

; [#uses=3]
define weak i32 @_ssdm_op_SpecRegionBegin(...) {
entry:
  ret i32 0
}

; [#uses=3]
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

; [#uses=10]
define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

; [#uses=9]
define weak void @_ssdm_op_SpecBitsMap(...) {
entry:
  ret void
}

; [#uses=1]
define weak i1 @_ssdm_op_ReadReq.m_axi.i64P(i64*, i32) {
entry:
  ret i1 true
}

; [#uses=1]
define weak i8 @_ssdm_op_Read.s_axilite.i8(i8) {
entry:
  ret i8 %0
}

; [#uses=3]
define weak i32 @_ssdm_op_Read.s_axilite.i32(i32) {
entry:
  ret i32 %0
}

; [#uses=2]
define weak i1 @_ssdm_op_Read.s_axilite.i1(i1) {
entry:
  ret i1 %0
}

; [#uses=1]
define weak i64 @_ssdm_op_Read.m_axi.i64P(i64*) {
entry:
  %empty = load i64* %0                           ; [#uses=1 type=i64]
  ret i64 %empty
}

; [#uses=2]
define weak i9 @_ssdm_op_PartSelect.i9.i13.i32.i32(i13, i32, i32) nounwind readnone {
entry:
  %empty = call i13 @llvm.part.select.i13(i13 %0, i32 %1, i32 %2) ; [#uses=1 type=i13]
  %empty_14 = trunc i13 %empty to i9              ; [#uses=1 type=i9]
  ret i9 %empty_14
}

; [#uses=0]
declare i8 @_ssdm_op_PartSelect.i8.i64.i32.i32(i64, i32, i32) nounwind readnone

; [#uses=0]
declare i3 @_ssdm_op_PartSelect.i3.i13.i32.i32(i13, i32, i32) nounwind readnone

; [#uses=2]
define weak i29 @_ssdm_op_PartSelect.i29.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2) ; [#uses=1 type=i32]
  %empty_15 = trunc i32 %empty to i29             ; [#uses=1 type=i29]
  ret i29 %empty_15
}

; [#uses=1]
define weak i20 @_ssdm_op_PartSelect.i20.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2) ; [#uses=1 type=i32]
  %empty_16 = trunc i32 %empty to i20             ; [#uses=1 type=i20]
  ret i20 %empty_16
}

; [#uses=1]
define weak i2 @_ssdm_op_PartSelect.i2.i13.i32.i32(i13, i32, i32) nounwind readnone {
entry:
  %empty = call i13 @llvm.part.select.i13(i13 %0, i32 %1, i32 %2) ; [#uses=1 type=i13]
  %empty_17 = trunc i13 %empty to i2              ; [#uses=1 type=i2]
  ret i2 %empty_17
}

; [#uses=1]
define weak i10 @_ssdm_op_PartSelect.i10.i13.i32.i32(i13, i32, i32) nounwind readnone {
entry:
  %empty = call i13 @llvm.part.select.i13(i13 %0, i32 %1, i32 %2) ; [#uses=1 type=i13]
  %empty_18 = trunc i13 %empty to i10             ; [#uses=1 type=i10]
  ret i10 %empty_18
}

; [#uses=2]
define weak i1 @_ssdm_op_BitSelect.i1.i13.i32(i13, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i13                    ; [#uses=1 type=i13]
  %empty_19 = shl i13 1, %empty                   ; [#uses=1 type=i13]
  %empty_20 = and i13 %0, %empty_19               ; [#uses=1 type=i13]
  %empty_21 = icmp ne i13 %empty_20, 0            ; [#uses=1 type=i1]
  ret i1 %empty_21
}

; [#uses=3]
define weak i6 @_ssdm_op_BitConcatenate.i6.i3.i3(i3, i3) nounwind readnone {
entry:
  %empty = zext i3 %0 to i6                       ; [#uses=1 type=i6]
  %empty_22 = zext i3 %1 to i6                    ; [#uses=1 type=i6]
  %empty_23 = shl i6 %empty, 3                    ; [#uses=1 type=i6]
  %empty_24 = or i6 %empty_23, %empty_22          ; [#uses=1 type=i6]
  ret i6 %empty_24
}

; [#uses=1]
define weak i6 @_ssdm_op_BitConcatenate.i6.i2.i4(i2, i4) nounwind readnone {
entry:
  %empty = zext i2 %0 to i6                       ; [#uses=1 type=i6]
  %empty_25 = zext i4 %1 to i6                    ; [#uses=1 type=i6]
  %empty_26 = shl i6 %empty, 4                    ; [#uses=1 type=i6]
  %empty_27 = or i6 %empty_26, %empty_25          ; [#uses=1 type=i6]
  ret i6 %empty_27
}

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
!10 = metadata !{metadata !"outStream_channel_1.V", metadata !5, metadata !"unsigned char", i32 0, i32 7}
!11 = metadata !{metadata !12}
!12 = metadata !{i32 0, i32 7, metadata !13}
!13 = metadata !{metadata !14}
!14 = metadata !{metadata !"outstream_channel_2.V", metadata !5, metadata !"unsigned char", i32 0, i32 7}
!15 = metadata !{metadata !16}
!16 = metadata !{i32 0, i32 63, metadata !17}
!17 = metadata !{metadata !18}
!18 = metadata !{metadata !"base_ddr_addr", metadata !19, metadata !"long long unsigned int", i32 0, i32 63}
!19 = metadata !{metadata !20}
!20 = metadata !{i32 0, i32 127, i32 1}
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
!43 = metadata !{metadata !44}
!44 = metadata !{i32 0, i32 0, metadata !45}
!45 = metadata !{metadata !46}
!46 = metadata !{metadata !"stereo_enabler", metadata !25, metadata !"bool", i32 0, i32 0}
!47 = metadata !{i32 786689, metadata !48, metadata !"stereo_enabler", metadata !49, i32 150994948, metadata !91, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!48 = metadata !{i32 786478, i32 0, metadata !49, metadata !"ddr_to_axis_reader_SD", metadata !"ddr_to_axis_reader_SD", metadata !"_Z21ddr_to_axis_reader_SDRN3hls6streamIhEES2_PVyjjjhbb", metadata !49, i32 3, metadata !50, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !63, i32 5} ; [ DW_TAG_subprogram ]
!49 = metadata !{i32 786473, metadata !"DDR_TO_AXIS_READER_AXILITE_SD/ddr_to_axis_reader_SD.cpp", metadata !"F:\5CProgetti_Vivado_Tesi\5CTest_7_Tesi\5CHLS_COMMON\5CDDR", null} ; [ DW_TAG_file_type ]
!50 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !51, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!51 = metadata !{null, metadata !52, metadata !52, metadata !111, metadata !115, metadata !115, metadata !115, metadata !116, metadata !91, metadata !91}
!52 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !53} ; [ DW_TAG_reference_type ]
!53 = metadata !{i32 786434, metadata !54, metadata !"stream<unsigned char>", metadata !55, i32 79, i64 8, i64 8, i32 0, i32 0, null, metadata !56, i32 0, null, metadata !109} ; [ DW_TAG_class_type ]
!54 = metadata !{i32 786489, null, metadata !"hls", metadata !55, i32 69} ; [ DW_TAG_namespace ]
!55 = metadata !{i32 786473, metadata !"F:/Vivado_old/Vivado_HLS/2016.2/common/technology/autopilot\5Chls_stream.h", metadata !"F:\5CProgetti_Vivado_Tesi\5CTest_7_Tesi\5CHLS_COMMON\5CDDR", null} ; [ DW_TAG_file_type ]
!56 = metadata !{metadata !57, metadata !59, metadata !65, metadata !71, metadata !76, metadata !79, metadata !83, metadata !88, metadata !93, metadata !94, metadata !95, metadata !98, metadata !101, metadata !102, metadata !105}
!57 = metadata !{i32 786445, metadata !53, metadata !"V", metadata !55, i32 163, i64 8, i64 8, i64 0, i32 0, metadata !58} ; [ DW_TAG_member ]
!58 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!59 = metadata !{i32 786478, i32 0, metadata !53, metadata !"stream", metadata !"stream", metadata !"", metadata !55, i32 83, metadata !60, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !63, i32 83} ; [ DW_TAG_subprogram ]
!60 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !61, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!61 = metadata !{null, metadata !62}
!62 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !53} ; [ DW_TAG_pointer_type ]
!63 = metadata !{metadata !64}
!64 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!65 = metadata !{i32 786478, i32 0, metadata !53, metadata !"stream", metadata !"stream", metadata !"", metadata !55, i32 86, metadata !66, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !63, i32 86} ; [ DW_TAG_subprogram ]
!66 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !67, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!67 = metadata !{null, metadata !62, metadata !68}
!68 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !69} ; [ DW_TAG_pointer_type ]
!69 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !70} ; [ DW_TAG_const_type ]
!70 = metadata !{i32 786468, null, metadata !"char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!71 = metadata !{i32 786478, i32 0, metadata !53, metadata !"stream", metadata !"stream", metadata !"", metadata !55, i32 91, metadata !72, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !63, i32 91} ; [ DW_TAG_subprogram ]
!72 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !73, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!73 = metadata !{null, metadata !62, metadata !74}
!74 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !75} ; [ DW_TAG_reference_type ]
!75 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !53} ; [ DW_TAG_const_type ]
!76 = metadata !{i32 786478, i32 0, metadata !53, metadata !"operator=", metadata !"operator=", metadata !"_ZN3hls6streamIhEaSERKS1_", metadata !55, i32 94, metadata !77, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !63, i32 94} ; [ DW_TAG_subprogram ]
!77 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !78, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!78 = metadata !{metadata !52, metadata !62, metadata !74}
!79 = metadata !{i32 786478, i32 0, metadata !53, metadata !"operator>>", metadata !"operator>>", metadata !"_ZN3hls6streamIhErsERh", metadata !55, i32 101, metadata !80, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !63, i32 101} ; [ DW_TAG_subprogram ]
!80 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !81, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!81 = metadata !{null, metadata !62, metadata !82}
!82 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !58} ; [ DW_TAG_reference_type ]
!83 = metadata !{i32 786478, i32 0, metadata !53, metadata !"operator<<", metadata !"operator<<", metadata !"_ZN3hls6streamIhElsERKh", metadata !55, i32 105, metadata !84, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !63, i32 105} ; [ DW_TAG_subprogram ]
!84 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !85, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!85 = metadata !{null, metadata !62, metadata !86}
!86 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !87} ; [ DW_TAG_reference_type ]
!87 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !58} ; [ DW_TAG_const_type ]
!88 = metadata !{i32 786478, i32 0, metadata !53, metadata !"empty", metadata !"empty", metadata !"_ZNK3hls6streamIhE5emptyEv", metadata !55, i32 112, metadata !89, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !63, i32 112} ; [ DW_TAG_subprogram ]
!89 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !90, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!90 = metadata !{metadata !91, metadata !92}
!91 = metadata !{i32 786468, null, metadata !"bool", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 2} ; [ DW_TAG_base_type ]
!92 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !75} ; [ DW_TAG_pointer_type ]
!93 = metadata !{i32 786478, i32 0, metadata !53, metadata !"full", metadata !"full", metadata !"_ZNK3hls6streamIhE4fullEv", metadata !55, i32 117, metadata !89, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !63, i32 117} ; [ DW_TAG_subprogram ]
!94 = metadata !{i32 786478, i32 0, metadata !53, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIhE4readERh", metadata !55, i32 123, metadata !80, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !63, i32 123} ; [ DW_TAG_subprogram ]
!95 = metadata !{i32 786478, i32 0, metadata !53, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIhE4readEv", metadata !55, i32 129, metadata !96, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !63, i32 129} ; [ DW_TAG_subprogram ]
!96 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !97, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!97 = metadata !{metadata !58, metadata !62}
!98 = metadata !{i32 786478, i32 0, metadata !53, metadata !"read_nb", metadata !"read_nb", metadata !"_ZN3hls6streamIhE7read_nbERh", metadata !55, i32 136, metadata !99, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !63, i32 136} ; [ DW_TAG_subprogram ]
!99 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !100, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!100 = metadata !{metadata !91, metadata !62, metadata !82}
!101 = metadata !{i32 786478, i32 0, metadata !53, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIhE5writeERKh", metadata !55, i32 144, metadata !84, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !63, i32 144} ; [ DW_TAG_subprogram ]
!102 = metadata !{i32 786478, i32 0, metadata !53, metadata !"write_nb", metadata !"write_nb", metadata !"_ZN3hls6streamIhE8write_nbERKh", metadata !55, i32 150, metadata !103, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !63, i32 150} ; [ DW_TAG_subprogram ]
!103 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !104, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!104 = metadata !{metadata !91, metadata !62, metadata !86}
!105 = metadata !{i32 786478, i32 0, metadata !53, metadata !"size", metadata !"size", metadata !"_ZN3hls6streamIhE4sizeEv", metadata !55, i32 157, metadata !106, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !63, i32 157} ; [ DW_TAG_subprogram ]
!106 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !107, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!107 = metadata !{metadata !108, metadata !62}
!108 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!109 = metadata !{metadata !110}
!110 = metadata !{i32 786479, null, metadata !"__STREAM_T__", metadata !58, null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!111 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !112} ; [ DW_TAG_pointer_type ]
!112 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !113} ; [ DW_TAG_volatile_type ]
!113 = metadata !{i32 786454, null, metadata !"u64", metadata !49, i32 4, i64 0, i64 0, i64 0, i32 0, metadata !114} ; [ DW_TAG_typedef ]
!114 = metadata !{i32 786468, null, metadata !"long long unsigned int", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!115 = metadata !{i32 786454, null, metadata !"u32", metadata !49, i32 5, i64 0, i64 0, i64 0, i32 0, metadata !108} ; [ DW_TAG_typedef ]
!116 = metadata !{i32 786454, null, metadata !"u8", metadata !49, i32 6, i64 0, i64 0, i64 0, i32 0, metadata !58} ; [ DW_TAG_typedef ]
!117 = metadata !{i32 4, i32 115, metadata !48, null}
!118 = metadata !{i32 786689, metadata !48, metadata !"update_intr", metadata !49, i32 134217732, metadata !91, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!119 = metadata !{i32 4, i32 97, metadata !48, null}
!120 = metadata !{i32 786689, metadata !48, metadata !"frame_buffer_number", metadata !49, i32 117440516, metadata !116, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!121 = metadata !{i32 4, i32 71, metadata !48, null}
!122 = metadata !{i32 786689, metadata !48, metadata !"frame_buffer_offset", metadata !49, i32 100663300, metadata !115, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!123 = metadata !{i32 4, i32 47, metadata !48, null}
!124 = metadata !{i32 786689, metadata !48, metadata !"frame_buffer_dim", metadata !49, i32 83886084, metadata !115, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!125 = metadata !{i32 4, i32 25, metadata !48, null}
!126 = metadata !{i32 786689, metadata !48, metadata !"base_address", metadata !49, i32 67108868, metadata !115, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!127 = metadata !{i32 4, i32 7, metadata !48, null}
!128 = metadata !{i32 790531, metadata !129, metadata !"outStream_channel_1.V", null, i32 3, metadata !130, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!129 = metadata !{i32 786689, metadata !48, metadata !"outStream_channel_1", metadata !49, i32 16777219, metadata !52, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!130 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !131} ; [ DW_TAG_pointer_type ]
!131 = metadata !{i32 786438, metadata !54, metadata !"stream<unsigned char>", metadata !55, i32 79, i64 8, i64 8, i32 0, i32 0, null, metadata !132, i32 0, null, metadata !109} ; [ DW_TAG_class_field_type ]
!132 = metadata !{metadata !57}
!133 = metadata !{i32 3, i32 51, metadata !48, null}
!134 = metadata !{i32 790531, metadata !135, metadata !"outstream_channel_2.V", null, i32 3, metadata !130, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!135 = metadata !{i32 786689, metadata !48, metadata !"outstream_channel_2", metadata !49, i32 33554435, metadata !52, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!136 = metadata !{i32 3, i32 95, metadata !48, null}
!137 = metadata !{i32 786689, metadata !48, metadata !"base_ddr_addr", metadata !49, i32 50331651, metadata !111, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!138 = metadata !{i32 3, i32 130, metadata !48, null}
!139 = metadata !{i32 6, i32 1, metadata !140, null}
!140 = metadata !{i32 786443, metadata !48, i32 5, i32 1, metadata !49, i32 0} ; [ DW_TAG_lexical_block ]
!141 = metadata !{i32 7, i32 1, metadata !140, null}
!142 = metadata !{i32 8, i32 1, metadata !140, null}
!143 = metadata !{i32 9, i32 1, metadata !140, null}
!144 = metadata !{i32 10, i32 1, metadata !140, null}
!145 = metadata !{i32 11, i32 1, metadata !140, null}
!146 = metadata !{i32 12, i32 1, metadata !140, null}
!147 = metadata !{i32 13, i32 1, metadata !140, null}
!148 = metadata !{i32 14, i32 1, metadata !140, null}
!149 = metadata !{i32 15, i32 1, metadata !140, null}
!150 = metadata !{i32 786688, metadata !140, metadata !"buffer", metadata !49, i32 17, metadata !151, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!151 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 32768, i64 64, i32 0, i32 0, metadata !113, metadata !152, i32 0, i32 0} ; [ DW_TAG_array_type ]
!152 = metadata !{metadata !153}
!153 = metadata !{i32 786465, i64 0, i64 511}     ; [ DW_TAG_subrange_type ]
!154 = metadata !{i32 17, i32 6, metadata !140, null}
!155 = metadata !{i32 18, i32 1, metadata !140, null}
!156 = metadata !{i32 22, i32 1, metadata !140, null}
!157 = metadata !{i32 25, i32 1, metadata !140, null}
!158 = metadata !{i32 50, i32 16, metadata !159, null}
!159 = metadata !{i32 786443, metadata !140, i32 50, i32 3, metadata !49, i32 2} ; [ DW_TAG_lexical_block ]
!160 = metadata !{i32 27, i32 48, metadata !140, null}
!161 = metadata !{i32 28, i32 1, metadata !140, null}
!162 = metadata !{i32 31, i32 1, metadata !140, null}
!163 = metadata !{i32 30, i32 47, metadata !140, null}
!164 = metadata !{i32 33, i32 54, metadata !140, null}
!165 = metadata !{i32 34, i32 1, metadata !140, null}
!166 = metadata !{i32 37, i32 1, metadata !140, null}
!167 = metadata !{i32 36, i32 40, metadata !140, null}
!168 = metadata !{i32 45, i32 6, metadata !169, null}
!169 = metadata !{i32 786443, metadata !140, i32 40, i32 4, metadata !49, i32 1} ; [ DW_TAG_lexical_block ]
!170 = metadata !{i32 39, i32 2, metadata !140, null}
!171 = metadata !{i32 49, i32 71, metadata !140, null}
!172 = metadata !{i32 786688, metadata !140, metadata !"offset", metadata !49, i32 49, metadata !173, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!173 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!174 = metadata !{i32 50, i32 90, metadata !159, null}
!175 = metadata !{i32 52, i32 4, metadata !176, null}
!176 = metadata !{i32 786443, metadata !159, i32 51, i32 3, metadata !49, i32 3} ; [ DW_TAG_lexical_block ]
!177 = metadata !{i32 53, i32 4, metadata !176, null}
!178 = metadata !{i32 55, i32 18, metadata !179, null}
!179 = metadata !{i32 786443, metadata !180, i32 55, i32 5, metadata !49, i32 5} ; [ DW_TAG_lexical_block ]
!180 = metadata !{i32 786443, metadata !176, i32 54, i32 4, metadata !49, i32 4} ; [ DW_TAG_lexical_block ]
!181 = metadata !{i32 56, i32 6, metadata !182, null}
!182 = metadata !{i32 786443, metadata !179, i32 56, i32 5, metadata !49, i32 6} ; [ DW_TAG_lexical_block ]
!183 = metadata !{i32 57, i32 1, metadata !182, null}
!184 = metadata !{i32 58, i32 2, metadata !182, null}
!185 = metadata !{i32 60, i32 7, metadata !186, null}
!186 = metadata !{i32 786443, metadata !182, i32 59, i32 6, metadata !49, i32 7} ; [ DW_TAG_lexical_block ]
!187 = metadata !{i32 61, i32 7, metadata !186, null}
!188 = metadata !{i32 786688, metadata !179, metadata !"j", metadata !49, i32 55, metadata !173, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!189 = metadata !{i32 144, i32 48, metadata !190, metadata !191}
!190 = metadata !{i32 786478, i32 0, metadata !54, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIhE5writeERKh", metadata !55, i32 144, metadata !84, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !101, metadata !63, i32 144} ; [ DW_TAG_subprogram ]
!191 = metadata !{i32 62, i32 7, metadata !186, null}
!192 = metadata !{i32 790531, metadata !193, metadata !"stream<unsigned char>.V", null, i32 144, metadata !195, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!193 = metadata !{i32 786689, metadata !190, metadata !"this", metadata !55, i32 16777360, metadata !194, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!194 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !53} ; [ DW_TAG_pointer_type ]
!195 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !131} ; [ DW_TAG_pointer_type ]
!196 = metadata !{i32 786688, metadata !197, metadata !"tmp", metadata !55, i32 145, metadata !58, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!197 = metadata !{i32 786443, metadata !190, i32 144, i32 79, metadata !55, i32 12} ; [ DW_TAG_lexical_block ]
!198 = metadata !{i32 145, i32 31, metadata !197, metadata !191}
!199 = metadata !{i32 146, i32 9, metadata !197, metadata !191}
!200 = metadata !{i32 63, i32 6, metadata !186, null}
!201 = metadata !{i32 66, i32 7, metadata !202, null}
!202 = metadata !{i32 786443, metadata !182, i32 65, i32 6, metadata !49, i32 8} ; [ DW_TAG_lexical_block ]
!203 = metadata !{i32 144, i32 48, metadata !190, metadata !204}
!204 = metadata !{i32 67, i32 7, metadata !202, null}
!205 = metadata !{i32 145, i32 31, metadata !197, metadata !204}
!206 = metadata !{i32 146, i32 9, metadata !197, metadata !204}
!207 = metadata !{i32 69, i32 5, metadata !182, null}
!208 = metadata !{i32 55, i32 93, metadata !179, null}
!209 = metadata !{i32 73, i32 18, metadata !210, null}
!210 = metadata !{i32 786443, metadata !211, i32 73, i32 5, metadata !49, i32 10} ; [ DW_TAG_lexical_block ]
!211 = metadata !{i32 786443, metadata !176, i32 72, i32 4, metadata !49, i32 9} ; [ DW_TAG_lexical_block ]
!212 = metadata !{i32 74, i32 6, metadata !213, null}
!213 = metadata !{i32 786443, metadata !210, i32 74, i32 5, metadata !49, i32 11} ; [ DW_TAG_lexical_block ]
!214 = metadata !{i32 75, i32 1, metadata !213, null}
!215 = metadata !{i32 144, i32 48, metadata !190, metadata !216}
!216 = metadata !{i32 76, i32 2, metadata !213, null}
!217 = metadata !{i32 145, i32 31, metadata !197, metadata !216}
!218 = metadata !{i32 146, i32 9, metadata !197, metadata !216}
!219 = metadata !{i32 144, i32 48, metadata !190, metadata !220}
!220 = metadata !{i32 77, i32 6, metadata !213, null}
!221 = metadata !{i32 145, i32 31, metadata !197, metadata !220}
!222 = metadata !{i32 146, i32 9, metadata !197, metadata !220}
!223 = metadata !{i32 78, i32 5, metadata !213, null}
!224 = metadata !{i32 73, i32 93, metadata !210, null}
!225 = metadata !{i32 786688, metadata !210, metadata !"j", metadata !49, i32 73, metadata !173, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!226 = metadata !{i32 81, i32 4, metadata !176, null}
!227 = metadata !{i32 786688, metadata !159, metadata !"i", metadata !49, i32 50, metadata !173, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!228 = metadata !{i32 84, i32 3, metadata !140, null}
!229 = metadata !{i32 87, i32 4, metadata !140, null}
!230 = metadata !{i32 85, i32 4, metadata !140, null}
!231 = metadata !{i32 89, i32 1, metadata !140, null}
