; ModuleID = '/home/andrea/Documenti/vision/Ultrascale/hls/DDR/DDR_TO_AXIS_READER_AXILITE_SD/DDR_TO_AXIS_READER_AXILITE_SD_prj/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@memcpy_OC_buffer_OC_s = internal unnamed_addr constant [28 x i8] c"memcpy.buffer.base_ddr_addr\00" ; [#uses=1 type=[28 x i8]*]
@luma_chroma_switch = internal unnamed_addr global i32 0, align 4 ; [#uses=4 type=i32*]
@llvm_global_ctors_1 = appending global [0 x void ()*] zeroinitializer ; [#uses=0 type=[0 x void ()*]*]
@llvm_global_ctors_0 = appending global [0 x i32] zeroinitializer ; [#uses=0 type=[0 x i32]*]
@inner_index = internal unnamed_addr global i32 0, align 4 ; [#uses=3 type=i32*]
@guard_variable_for_d_3 = internal unnamed_addr global i1 false ; [#uses=2 type=i1*]
@guard_variable_for_d_2 = internal unnamed_addr global i1 false ; [#uses=2 type=i1*]
@guard_variable_for_d_1 = internal unnamed_addr global i1 false ; [#uses=2 type=i1*]
@guard_variable_for_d = internal unnamed_addr global i1 false ; [#uses=2 type=i1*]
@ddr_to_axis_reader_S = internal unnamed_addr constant [22 x i8] c"ddr_to_axis_reader_SD\00" ; [#uses=1 type=[22 x i8]*]
@burstread_OC_region_s = internal unnamed_addr constant [17 x i8] c"burstread.region\00" ; [#uses=2 type=[17 x i8]*]
@FRAME_OFFSET = internal unnamed_addr global i32 0, align 4 ; [#uses=3 type=i32*]
@FRAME_BUFFER_NUMBER = internal global i8 0       ; [#uses=3 type=i8*]
@FRAME_BUFFER_DIM = internal unnamed_addr global i32 0, align 4 ; [#uses=3 type=i32*]
@BASE_ADDRESS = internal unnamed_addr global i32 0, align 4 ; [#uses=3 type=i32*]
@p_str8 = internal unnamed_addr constant [1 x i8] zeroinitializer ; [#uses=1 type=[1 x i8]*]
@p_str7 = private unnamed_addr constant [12 x i8] c"hls_label_1\00", align 1 ; [#uses=2 type=[12 x i8]*]
@p_str6 = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1 ; [#uses=2 type=[12 x i8]*]
@p_str5 = private unnamed_addr constant [12 x i8] c"RAM_2P_BRAM\00", align 1 ; [#uses=1 type=[12 x i8]*]
@p_str4 = private unnamed_addr constant [6 x i8] c"m_axi\00", align 1 ; [#uses=1 type=[6 x i8]*]
@p_str3 = private unnamed_addr constant [5 x i8] c"both\00", align 1 ; [#uses=2 type=[5 x i8]*]
@p_str2 = private unnamed_addr constant [5 x i8] c"axis\00", align 1 ; [#uses=2 type=[5 x i8]*]
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=73 type=[1 x i8]*]
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
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %outStream_channel_1_V), !map !20
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %outstream_channel_2_V), !map !24
  call void (...)* @_ssdm_op_SpecBitsMap(i64* %base_ddr_addr), !map !28
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %base_address), !map !34
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %frame_buffer_dim), !map !40
  call void (...)* @_ssdm_op_SpecBitsMap(i32 %frame_buffer_offset), !map !44
  call void (...)* @_ssdm_op_SpecBitsMap(i8 %frame_buffer_number), !map !48
  call void (...)* @_ssdm_op_SpecBitsMap(i1 %update_intr), !map !52
  call void (...)* @_ssdm_op_SpecBitsMap(i1 %stereo_enabler), !map !56
  call void (...)* @_ssdm_op_SpecTopModule([22 x i8]* @ddr_to_axis_reader_S) nounwind
  %stereo_enabler_read = call i1 @_ssdm_op_Read.s_axilite.i1(i1 %stereo_enabler) ; [#uses=1 type=i1]
  call void @llvm.dbg.value(metadata !{i1 %stereo_enabler_read}, i64 0, metadata !60), !dbg !130 ; [debug line = 4:115] [debug variable = stereo_enabler]
  %update_intr_read = call i1 @_ssdm_op_Read.s_axilite.i1(i1 %update_intr) ; [#uses=9 type=i1]
  call void @llvm.dbg.value(metadata !{i1 %update_intr_read}, i64 0, metadata !131), !dbg !132 ; [debug line = 4:97] [debug variable = update_intr]
  %frame_buffer_number_s = call i8 @_ssdm_op_Read.s_axilite.i8(i8 %frame_buffer_number) ; [#uses=3 type=i8]
  call void @llvm.dbg.value(metadata !{i8 %frame_buffer_number_s}, i64 0, metadata !133), !dbg !134 ; [debug line = 4:71] [debug variable = frame_buffer_number]
  %frame_buffer_offset_1 = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %frame_buffer_offset) ; [#uses=3 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %frame_buffer_offset_1}, i64 0, metadata !135), !dbg !136 ; [debug line = 4:47] [debug variable = frame_buffer_offset]
  %frame_buffer_dim_rea = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %frame_buffer_dim) ; [#uses=3 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %frame_buffer_dim_rea}, i64 0, metadata !137), !dbg !138 ; [debug line = 4:25] [debug variable = frame_buffer_dim]
  %base_address_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %base_address) ; [#uses=3 type=i32]
  call void @llvm.dbg.value(metadata !{i32 %base_address_read}, i64 0, metadata !139), !dbg !140 ; [debug line = 4:7] [debug variable = base_address]
  %buffer = alloca [512 x i64], align 16          ; [#uses=5 type=[512 x i64]*]
  call void @llvm.dbg.value(metadata !{i8* %outStream_channel_1_V}, i64 0, metadata !141), !dbg !146 ; [debug line = 3:51] [debug variable = outStream_channel_1.V]
  call void @llvm.dbg.value(metadata !{i8* %outstream_channel_2_V}, i64 0, metadata !147), !dbg !149 ; [debug line = 3:95] [debug variable = outstream_channel_2.V]
  call void @llvm.dbg.value(metadata !{i64* %base_ddr_addr}, i64 0, metadata !150), !dbg !151 ; [debug line = 3:130] [debug variable = base_ddr_addr]
  call void @llvm.dbg.value(metadata !{i32 %base_address}, i64 0, metadata !139), !dbg !140 ; [debug line = 4:7] [debug variable = base_address]
  call void @llvm.dbg.value(metadata !{i32 %frame_buffer_dim}, i64 0, metadata !137), !dbg !138 ; [debug line = 4:25] [debug variable = frame_buffer_dim]
  call void @llvm.dbg.value(metadata !{i32 %frame_buffer_offset}, i64 0, metadata !135), !dbg !136 ; [debug line = 4:47] [debug variable = frame_buffer_offset]
  call void @llvm.dbg.value(metadata !{i8 %frame_buffer_number}, i64 0, metadata !133), !dbg !134 ; [debug line = 4:71] [debug variable = frame_buffer_number]
  call void @llvm.dbg.value(metadata !{i1 %update_intr}, i64 0, metadata !131), !dbg !132 ; [debug line = 4:97] [debug variable = update_intr]
  call void @llvm.dbg.value(metadata !{i1 %stereo_enabler}, i64 0, metadata !60), !dbg !130 ; [debug line = 4:115] [debug variable = stereo_enabler]
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !152 ; [debug line = 6:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %base_address, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !154 ; [debug line = 7:1]
  call void (...)* @_ssdm_op_SpecInterface(i1 %update_intr, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !155 ; [debug line = 8:1]
  call void (...)* @_ssdm_op_SpecInterface(i8 %frame_buffer_number, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !156 ; [debug line = 9:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %frame_buffer_offset, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !157 ; [debug line = 10:1]
  call void (...)* @_ssdm_op_SpecInterface(i32 %frame_buffer_dim, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !158 ; [debug line = 11:1]
  call void (...)* @_ssdm_op_SpecInterface(i1 %stereo_enabler, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !159 ; [debug line = 12:1]
  call void (...)* @_ssdm_op_SpecInterface(i8* %outStream_channel_1_V, [5 x i8]* @p_str2, i32 1, i32 1, [5 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !160 ; [debug line = 13:1]
  call void (...)* @_ssdm_op_SpecInterface(i8* %outstream_channel_2_V, [5 x i8]* @p_str2, i32 1, i32 1, [5 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !161 ; [debug line = 14:1]
  call void (...)* @_ssdm_op_SpecInterface(i64* %base_ddr_addr, [6 x i8]* @p_str4, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 128, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !162 ; [debug line = 15:1]
  call void @llvm.dbg.declare(metadata !{[512 x i64]* %buffer}, metadata !163), !dbg !167 ; [debug line = 17:6] [debug variable = buffer]
  call void (...)* @_ssdm_op_SpecMemCore([512 x i64]* %buffer, [1 x i8]* @p_str1, [12 x i8]* @p_str5, [1 x i8]* @p_str1, i32 -1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1), !dbg !168 ; [debug line = 18:1]
  %inner_index_load = load i32* @inner_index, align 4, !dbg !169 ; [#uses=3 type=i32] [debug line = 22:1]
  call void (...)* @_ssdm_op_SpecReset(i32* @inner_index, i32 1, [1 x i8]* @p_str1) nounwind, !dbg !169 ; [debug line = 22:1]
  call void (...)* @_ssdm_op_SpecReset(i32* @luma_chroma_switch, i32 1, [1 x i8]* @p_str1) nounwind, !dbg !170 ; [debug line = 25:1]
  %guard_variable_for_d_4 = load i1* @guard_variable_for_d_2, align 1 ; [#uses=1 type=i1]
  %FRAME_BUFFER_DIM_loa = load i32* @FRAME_BUFFER_DIM, align 4, !dbg !171 ; [#uses=1 type=i32] [debug line = 50:16]
  br i1 %guard_variable_for_d_4, label %._crit_edge, label %codeRepl1, !dbg !173 ; [debug line = 27:48]

codeRepl1:                                        ; preds = %0
  store i1 true, i1* @guard_variable_for_d_2, align 1, !dbg !173 ; [debug line = 27:48]
  br label %._crit_edge

._crit_edge:                                      ; preds = %codeRepl1, %0
  %FRAME_BUFFER_DIM_fla = phi i1 [ true, %codeRepl1 ], [ false, %0 ] ; [#uses=1 type=i1]
  %FRAME_BUFFER_DIM_loc = phi i32 [ %frame_buffer_dim_rea, %codeRepl1 ], [ %FRAME_BUFFER_DIM_loa, %0 ] ; [#uses=1 type=i32]
  call void (...)* @_ssdm_op_SpecReset(i32* @FRAME_BUFFER_DIM, i32 1, [1 x i8]* @p_str1) nounwind, !dbg !174 ; [debug line = 28:1]
  %guard_variable_for_d_5 = load i1* @guard_variable_for_d, align 1 ; [#uses=1 type=i1]
  %FRAME_OFFSET_load = load i32* @FRAME_OFFSET, align 4, !dbg !175 ; [#uses=1 type=i32] [debug line = 31:1]
  br i1 %guard_variable_for_d_5, label %._crit_edge14, label %codeRepl, !dbg !176 ; [debug line = 30:47]

codeRepl:                                         ; preds = %._crit_edge
  store i1 true, i1* @guard_variable_for_d, align 1, !dbg !176 ; [debug line = 30:47]
  br label %._crit_edge14

._crit_edge14:                                    ; preds = %codeRepl, %._crit_edge
  %FRAME_OFFSET_flag = phi i1 [ true, %codeRepl ], [ false, %._crit_edge ] ; [#uses=1 type=i1]
  %FRAME_OFFSET_loc = phi i32 [ %frame_buffer_offset_1, %codeRepl ], [ %FRAME_OFFSET_load, %._crit_edge ] ; [#uses=1 type=i32]
  call void (...)* @_ssdm_op_SpecReset(i32* @FRAME_OFFSET, i32 1, [1 x i8]* @p_str1) nounwind, !dbg !175 ; [debug line = 31:1]
  %guard_variable_for_d_6 = load i1* @guard_variable_for_d_1, align 1 ; [#uses=1 type=i1]
  %FRAME_BUFFER_NUMBER_s = load i8* @FRAME_BUFFER_NUMBER, align 1 ; [#uses=1 type=i8]
  br i1 %guard_variable_for_d_6, label %._crit_edge15, label %codeRepl2, !dbg !177 ; [debug line = 33:54]

codeRepl2:                                        ; preds = %._crit_edge14
  store i1 true, i1* @guard_variable_for_d_1, align 1, !dbg !177 ; [debug line = 33:54]
  br label %._crit_edge15

._crit_edge15:                                    ; preds = %codeRepl2, %._crit_edge14
  %FRAME_BUFFER_NUMBER_1 = phi i1 [ true, %codeRepl2 ], [ false, %._crit_edge14 ] ; [#uses=1 type=i1]
  %FRAME_BUFFER_NUMBER_2 = phi i8 [ %frame_buffer_number_s, %codeRepl2 ], [ %FRAME_BUFFER_NUMBER_s, %._crit_edge14 ] ; [#uses=1 type=i8]
  call void (...)* @_ssdm_op_SpecReset(i8* @FRAME_BUFFER_NUMBER, i32 1, [1 x i8]* @p_str1) nounwind, !dbg !178 ; [debug line = 34:1]
  %guard_variable_for_d_7 = load i1* @guard_variable_for_d_3, align 1 ; [#uses=1 type=i1]
  %BASE_ADDRESS_load = load i32* @BASE_ADDRESS, align 4, !dbg !179 ; [#uses=1 type=i32] [debug line = 37:1]
  br i1 %guard_variable_for_d_7, label %._crit_edge16, label %codeRepl3, !dbg !180 ; [debug line = 36:40]

codeRepl3:                                        ; preds = %._crit_edge15
  store i1 true, i1* @guard_variable_for_d_3, align 1, !dbg !180 ; [debug line = 36:40]
  br label %._crit_edge16

._crit_edge16:                                    ; preds = %codeRepl3, %._crit_edge15
  %BASE_ADDRESS_flag = phi i1 [ true, %codeRepl3 ], [ false, %._crit_edge15 ] ; [#uses=1 type=i1]
  %BASE_ADDRESS_loc = phi i32 [ %base_address_read, %codeRepl3 ], [ %BASE_ADDRESS_load, %._crit_edge15 ] ; [#uses=1 type=i32]
  call void (...)* @_ssdm_op_SpecReset(i32* @BASE_ADDRESS, i32 1, [1 x i8]* @p_str1) nounwind, !dbg !179 ; [debug line = 37:1]
  %tmp_7 = call i29 @_ssdm_op_PartSelect.i29.i32.i32.i32(i32 %base_address_read, i32 3, i32 31), !dbg !181 ; [#uses=1 type=i29] [debug line = 45:6]
  %tmp_8 = zext i29 %tmp_7 to i32, !dbg !181      ; [#uses=2 type=i32] [debug line = 45:6]
  %p_FRAME_BUFFER_DIM_fl = or i1 %FRAME_BUFFER_DIM_fla, %update_intr_read, !dbg !183 ; [#uses=1 type=i1] [debug line = 39:2]
  %frame_buffer_dim_FRA = select i1 %update_intr_read, i32 %frame_buffer_dim_rea, i32 %FRAME_BUFFER_DIM_loc, !dbg !183 ; [#uses=1 type=i32] [debug line = 39:2]
  %p_FRAME_OFFSET_flag = or i1 %FRAME_OFFSET_flag, %update_intr_read, !dbg !183 ; [#uses=1 type=i1] [debug line = 39:2]
  %p_FRAME_BUFFER_NUMBER = or i1 %FRAME_BUFFER_NUMBER_1, %update_intr_read, !dbg !183 ; [#uses=1 type=i1] [debug line = 39:2]
  %tmp_1_FRAME_BUFFER_N = select i1 %update_intr_read, i8 %frame_buffer_number_s, i8 %FRAME_BUFFER_NUMBER_2, !dbg !183 ; [#uses=1 type=i8] [debug line = 39:2]
  %tmp_1_FRAME_BUFFER_N_1 = zext i8 %tmp_1_FRAME_BUFFER_N to i32, !dbg !183 ; [#uses=1 type=i32] [debug line = 39:2]
  %p_BASE_ADDRESS_flag = or i1 %BASE_ADDRESS_flag, %update_intr_read, !dbg !183 ; [#uses=1 type=i1] [debug line = 39:2]
  %tmp_7_base_address = select i1 %update_intr_read, i32 %tmp_8, i32 %base_address_read, !dbg !183 ; [#uses=1 type=i32] [debug line = 39:2]
  %frame_buffer_offset_s = select i1 %update_intr_read, i32 %frame_buffer_offset_1, i32 %FRAME_OFFSET_loc, !dbg !183 ; [#uses=1 type=i32] [debug line = 39:2]
  %tmp_7_BASE_ADDRESS_l = select i1 %update_intr_read, i32 %tmp_8, i32 %BASE_ADDRESS_loc, !dbg !183 ; [#uses=1 type=i32] [debug line = 39:2]
  %tmp_s = mul i32 %inner_index_load, %frame_buffer_offset_s, !dbg !184 ; [#uses=1 type=i32] [debug line = 49:71]
  %tmp_2 = call i29 @_ssdm_op_PartSelect.i29.i32.i32.i32(i32 %tmp_s, i32 3, i32 31), !dbg !184 ; [#uses=1 type=i29] [debug line = 49:71]
  %tmp_9 = zext i29 %tmp_2 to i32, !dbg !184      ; [#uses=1 type=i32] [debug line = 49:71]
  %offset = add i32 %tmp_9, %tmp_7_BASE_ADDRESS_l, !dbg !184 ; [#uses=1 type=i32] [debug line = 49:71]
  call void @llvm.dbg.value(metadata !{i32 %offset}, i64 0, metadata !185), !dbg !184 ; [debug line = 49:71] [debug variable = offset]
  br i1 %p_BASE_ADDRESS_flag, label %mergeST20, label %._crit_edge17.new21

; <label>:1                                       ; preds = %._crit_edge17.new, %.loopexit
  %offset1 = phi i32 [ %offset, %._crit_edge17.new ], [ %offset_1, %.loopexit ] ; [#uses=2 type=i32]
  %i = phi i20 [ 0, %._crit_edge17.new ], [ %i_1, %.loopexit ] ; [#uses=2 type=i20]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 0, i64 1048575, i64 0) ; [#uses=0 type=i32]
  %exitcond1 = icmp eq i20 %i, %tmp_5, !dbg !171  ; [#uses=1 type=i1] [debug line = 50:16]
  %i_1 = add i20 %i, 1, !dbg !187                 ; [#uses=1 type=i20] [debug line = 50:47]
  br i1 %exitcond1, label %._crit_edge18, label %2, !dbg !171 ; [debug line = 50:16]

; <label>:2                                       ; preds = %1
  %tmp_1 = sext i32 %offset1 to i64, !dbg !188    ; [#uses=1 type=i64] [debug line = 52:4]
  %base_ddr_addr_addr = getelementptr inbounds i64* %base_ddr_addr, i64 %tmp_1, !dbg !188 ; [#uses=2 type=i64*] [debug line = 52:4]
  %base_ddr_addr_addr_1 = call i1 @_ssdm_op_ReadReq.m_axi.i64P(i64* %base_ddr_addr_addr, i32 512), !dbg !188 ; [#uses=0 type=i1] [debug line = 52:4]
  br label %burst.rd.header

burst.rd.header:                                  ; preds = %burst.rd.body, %2
  %indvar = phi i10 [ 0, %2 ], [ %indvar_next, %burst.rd.body ] ; [#uses=3 type=i10]
  %exitcond = icmp eq i10 %indvar, -512           ; [#uses=1 type=i1]
  %empty_9 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 512, i64 512, i64 512) ; [#uses=0 type=i32]
  %indvar_next = add i10 %indvar, 1               ; [#uses=1 type=i10]
  br i1 %exitcond, label %burst.rd.end, label %burst.rd.body

burst.rd.body:                                    ; preds = %burst.rd.header
  %burstread_rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin([17 x i8]* @burstread_OC_region_s) nounwind ; [#uses=1 type=i32]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str8)
  %empty_10 = call i32 (...)* @_ssdm_op_SpecLoopName([28 x i8]* @memcpy_OC_buffer_OC_s) nounwind ; [#uses=0 type=i32]
  %indvar1 = zext i10 %indvar to i64              ; [#uses=1 type=i64]
  %base_ddr_addr_addr_r = call i64 @_ssdm_op_Read.m_axi.i64P(i64* %base_ddr_addr_addr), !dbg !188 ; [#uses=1 type=i64] [debug line = 52:4]
  %buffer_addr = getelementptr [512 x i64]* %buffer, i64 0, i64 %indvar1, !dbg !188 ; [#uses=1 type=i64*] [debug line = 52:4]
  store i64 %base_ddr_addr_addr_r, i64* %buffer_addr, align 8, !dbg !188 ; [debug line = 52:4]
  %burstread_rend = call i32 (...)* @_ssdm_op_SpecRegionEnd([17 x i8]* @burstread_OC_region_s, i32 %burstread_rbegin) nounwind ; [#uses=0 type=i32]
  br label %burst.rd.header

burst.rd.end:                                     ; preds = %burst.rd.header
  br i1 %stereo_enabler_read, label %.preheader.preheader, label %.preheader9.preheader, !dbg !190 ; [debug line = 53:4]

.preheader9.preheader:                            ; preds = %burst.rd.end
  br label %.preheader9, !dbg !191                ; [debug line = 55:18]

.preheader.preheader:                             ; preds = %burst.rd.end
  br label %.preheader, !dbg !194                 ; [debug line = 73:18]

.preheader9:                                      ; preds = %6, %.preheader9.preheader
  %j = phi i13 [ %j_4, %6 ], [ 0, %.preheader9.preheader ] ; [#uses=5 type=i13]
  %tmp_6 = call i1 @_ssdm_op_BitSelect.i1.i13.i32(i13 %j, i32 12), !dbg !191 ; [#uses=1 type=i1] [debug line = 55:18]
  br i1 %tmp_6, label %.loopexit.loopexit119, label %3, !dbg !191 ; [debug line = 55:18]

; <label>:3                                       ; preds = %.preheader9
  %tmp_14 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str6), !dbg !197 ; [#uses=1 type=i32] [debug line = 56:6]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind, !dbg !199 ; [debug line = 57:1]
  %luma_chroma_switch_l = load i32* @luma_chroma_switch, align 4, !dbg !200 ; [#uses=2 type=i32] [debug line = 58:2]
  %tmp_16 = icmp eq i32 %luma_chroma_switch_l, 1, !dbg !200 ; [#uses=1 type=i1] [debug line = 58:2]
  br i1 %tmp_16, label %4, label %5, !dbg !200    ; [debug line = 58:2]

; <label>:4                                       ; preds = %3
  store i32 0, i32* @luma_chroma_switch, align 4, !dbg !201 ; [debug line = 60:7]
  %j_3 = add i13 -1, %j, !dbg !203                ; [#uses=3 type=i13] [debug line = 61:7]
  call void @llvm.dbg.value(metadata !{i13 %j_3}, i64 0, metadata !204), !dbg !203 ; [debug line = 61:7] [debug variable = j]
  %tmp_51 = trunc i13 %j_3 to i3                  ; [#uses=1 type=i3]
  %tmp_52 = call i10 @_ssdm_op_PartSelect.i10.i13.i32.i32(i13 %j_3, i32 3, i32 12) ; [#uses=2 type=i10]
  %adjSize = sext i10 %tmp_52 to i14              ; [#uses=1 type=i14]
  %mem_index_gep = add i14 4, %adjSize            ; [#uses=2 type=i14]
  %adjSize55_cast = zext i14 %mem_index_gep to i15, !dbg !205 ; [#uses=1 type=i15] [debug line = 144:48@62:7]
  call void @llvm.dbg.value(metadata !{i8* %outStream_channel_1_V}, i64 0, metadata !208), !dbg !205 ; [debug line = 144:48@62:7] [debug variable = stream<unsigned char>.V]
  %addrCmp = icmp ult i10 %tmp_52, -4             ; [#uses=1 type=i1]
  %addrCmp1 = icmp ult i14 %mem_index_gep, 516    ; [#uses=1 type=i1]
  %gepindex = add i15 -4, %adjSize55_cast         ; [#uses=1 type=i15]
  %gepindex1 = select i1 %addrCmp, i15 %gepindex, i15 511 ; [#uses=1 type=i15]
  %gepindex2 = select i1 %addrCmp1, i15 %gepindex1, i15 511 ; [#uses=1 type=i15]
  %gepindex2_cast = sext i15 %gepindex2 to i64    ; [#uses=1 type=i64]
  %buffer_addr_2 = getelementptr [512 x i64]* %buffer, i64 0, i64 %gepindex2_cast ; [#uses=1 type=i64*]
  %buffer_load_2 = load i64* %buffer_addr_2, align 8 ; [#uses=2 type=i64]
  %start_pos = call i6 @_ssdm_op_BitConcatenate.i6.i3.i3(i3 %tmp_51, i3 0) ; [#uses=3 type=i6]
  %end_pos2 = or i6 %start_pos, 7                 ; [#uses=2 type=i6]
  %tmp_53 = icmp ugt i6 %start_pos, %end_pos2     ; [#uses=3 type=i1]
  %tmp_54 = zext i6 %start_pos to i7              ; [#uses=4 type=i7]
  %tmp_55 = zext i6 %end_pos2 to i7               ; [#uses=2 type=i7]
  %tmp_56 = call i64 @llvm.part.select.i64(i64 %buffer_load_2, i32 63, i32 0) ; [#uses=1 type=i64]
  %tmp_57 = sub i7 %tmp_54, %tmp_55               ; [#uses=1 type=i7]
  %tmp_58 = xor i7 %tmp_54, 63                    ; [#uses=1 type=i7]
  %tmp_59 = sub i7 %tmp_55, %tmp_54               ; [#uses=1 type=i7]
  %tmp_60 = select i1 %tmp_53, i7 %tmp_57, i7 %tmp_59 ; [#uses=1 type=i7]
  %tmp_61 = select i1 %tmp_53, i64 %tmp_56, i64 %buffer_load_2 ; [#uses=1 type=i64]
  %tmp_62 = select i1 %tmp_53, i7 %tmp_58, i7 %tmp_54 ; [#uses=1 type=i7]
  %tmp_63 = sub i7 63, %tmp_60                    ; [#uses=1 type=i7]
  %tmp_64 = zext i7 %tmp_62 to i64                ; [#uses=1 type=i64]
  %tmp_65 = zext i7 %tmp_63 to i64                ; [#uses=1 type=i64]
  %tmp_66 = lshr i64 %tmp_61, %tmp_64             ; [#uses=1 type=i64]
  %tmp_67 = lshr i64 -1, %tmp_65                  ; [#uses=1 type=i64]
  %tmp_68 = and i64 %tmp_66, %tmp_67              ; [#uses=1 type=i64]
  %tmp_69 = trunc i64 %tmp_68 to i8               ; [#uses=1 type=i8]
  call void @llvm.dbg.value(metadata !{i8 %tmp_69}, i64 0, metadata !212), !dbg !214 ; [debug line = 145:31@62:7] [debug variable = tmp]
  call void @_ssdm_op_Write.axis.volatile.i8P(i8* %outStream_channel_1_V, i8 %tmp_69), !dbg !215 ; [debug line = 146:9@62:7]
  br label %6, !dbg !216                          ; [debug line = 63:6]

; <label>:5                                       ; preds = %3
  %tmp_18 = add nsw i32 1, %luma_chroma_switch_l, !dbg !217 ; [#uses=1 type=i32] [debug line = 66:7]
  store i32 %tmp_18, i32* @luma_chroma_switch, align 4, !dbg !217 ; [debug line = 66:7]
  %tmp_70 = trunc i13 %j to i3                    ; [#uses=1 type=i3]
  call void @llvm.dbg.value(metadata !{i8* %outStream_channel_1_V}, i64 0, metadata !208), !dbg !219 ; [debug line = 144:48@67:7] [debug variable = stream<unsigned char>.V]
  %gepindex62_cast = call i9 @_ssdm_op_PartSelect.i9.i13.i32.i32(i13 %j, i32 3, i32 11) ; [#uses=1 type=i9]
  %gepindex264_cast = zext i9 %gepindex62_cast to i64 ; [#uses=1 type=i64]
  %buffer_addr_3 = getelementptr [512 x i64]* %buffer, i64 0, i64 %gepindex264_cast ; [#uses=1 type=i64*]
  %buffer_load_3 = load i64* %buffer_addr_3, align 8 ; [#uses=2 type=i64]
  %start_pos3 = call i6 @_ssdm_op_BitConcatenate.i6.i3.i3(i3 %tmp_70, i3 0) ; [#uses=3 type=i6]
  %end_pos3 = or i6 %start_pos3, 7                ; [#uses=2 type=i6]
  %tmp_71 = icmp ugt i6 %start_pos3, %end_pos3    ; [#uses=3 type=i1]
  %tmp_72 = zext i6 %start_pos3 to i7             ; [#uses=4 type=i7]
  %tmp_73 = zext i6 %end_pos3 to i7               ; [#uses=2 type=i7]
  %tmp_74 = call i64 @llvm.part.select.i64(i64 %buffer_load_3, i32 63, i32 0) ; [#uses=1 type=i64]
  %tmp_75 = sub i7 %tmp_72, %tmp_73               ; [#uses=1 type=i7]
  %tmp_76 = xor i7 %tmp_72, 63                    ; [#uses=1 type=i7]
  %tmp_77 = sub i7 %tmp_73, %tmp_72               ; [#uses=1 type=i7]
  %tmp_78 = select i1 %tmp_71, i7 %tmp_75, i7 %tmp_77 ; [#uses=1 type=i7]
  %tmp_79 = select i1 %tmp_71, i64 %tmp_74, i64 %buffer_load_3 ; [#uses=1 type=i64]
  %tmp_80 = select i1 %tmp_71, i7 %tmp_76, i7 %tmp_72 ; [#uses=1 type=i7]
  %tmp_81 = sub i7 63, %tmp_78                    ; [#uses=1 type=i7]
  %tmp_82 = zext i7 %tmp_80 to i64                ; [#uses=1 type=i64]
  %tmp_83 = zext i7 %tmp_81 to i64                ; [#uses=1 type=i64]
  %tmp_84 = lshr i64 %tmp_79, %tmp_82             ; [#uses=1 type=i64]
  %tmp_85 = lshr i64 -1, %tmp_83                  ; [#uses=1 type=i64]
  %tmp_86 = and i64 %tmp_84, %tmp_85              ; [#uses=1 type=i64]
  %tmp_87 = trunc i64 %tmp_86 to i8               ; [#uses=1 type=i8]
  call void @llvm.dbg.value(metadata !{i8 %tmp_87}, i64 0, metadata !212), !dbg !221 ; [debug line = 145:31@67:7] [debug variable = tmp]
  call void @_ssdm_op_Write.axis.volatile.i8P(i8* %outStream_channel_1_V, i8 %tmp_87), !dbg !222 ; [debug line = 146:9@67:7]
  br label %6

; <label>:6                                       ; preds = %5, %4
  %j_1 = phi i13 [ %j_3, %4 ], [ %j, %5 ]         ; [#uses=1 type=i13]
  %empty_11 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str6, i32 %tmp_14), !dbg !223 ; [#uses=0 type=i32] [debug line = 69:5]
  %j_4 = add i13 %j_1, 1, !dbg !224               ; [#uses=1 type=i13] [debug line = 55:50]
  call void @llvm.dbg.value(metadata !{i13 %j_4}, i64 0, metadata !204), !dbg !224 ; [debug line = 55:50] [debug variable = j]
  br label %.preheader9, !dbg !224                ; [debug line = 55:50]

.preheader:                                       ; preds = %7, %.preheader.preheader
  %j1 = phi i13 [ %j_2, %7 ], [ 0, %.preheader.preheader ] ; [#uses=5 type=i13]
  %tmp = call i1 @_ssdm_op_BitSelect.i1.i13.i32(i13 %j1, i32 12), !dbg !194 ; [#uses=1 type=i1] [debug line = 73:18]
  %empty_12 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2048, i64 2048, i64 2048) ; [#uses=0 type=i32]
  br i1 %tmp, label %.loopexit.loopexit, label %7, !dbg !194 ; [debug line = 73:18]

; <label>:7                                       ; preds = %.preheader
  %tmp_11 = trunc i13 %j1 to i3                   ; [#uses=1 type=i3]
  %tmp_10 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str7), !dbg !225 ; [#uses=1 type=i32] [debug line = 74:6]
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind, !dbg !227 ; [debug line = 75:1]
  call void @llvm.dbg.value(metadata !{i8* %outStream_channel_1_V}, i64 0, metadata !208), !dbg !228 ; [debug line = 144:48@76:2] [debug variable = stream<unsigned char>.V]
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
  %tmp_20 = call i64 @llvm.part.select.i64(i64 %buffer_load, i32 63, i32 0) ; [#uses=1 type=i64]
  %tmp_21 = sub i7 %tmp_17, %tmp_19               ; [#uses=1 type=i7]
  %tmp_22 = xor i7 %tmp_17, 63                    ; [#uses=1 type=i7]
  %tmp_23 = sub i7 %tmp_19, %tmp_17               ; [#uses=1 type=i7]
  %tmp_24 = select i1 %tmp_15, i7 %tmp_21, i7 %tmp_23 ; [#uses=1 type=i7]
  %tmp_25 = select i1 %tmp_15, i64 %tmp_20, i64 %buffer_load ; [#uses=1 type=i64]
  %tmp_26 = select i1 %tmp_15, i7 %tmp_22, i7 %tmp_17 ; [#uses=1 type=i7]
  %tmp_27 = sub i7 63, %tmp_24                    ; [#uses=1 type=i7]
  %tmp_28 = zext i7 %tmp_26 to i64                ; [#uses=1 type=i64]
  %tmp_29 = zext i7 %tmp_27 to i64                ; [#uses=1 type=i64]
  %tmp_30 = lshr i64 %tmp_25, %tmp_28             ; [#uses=1 type=i64]
  %tmp_31 = lshr i64 -1, %tmp_29                  ; [#uses=1 type=i64]
  %tmp_32 = and i64 %tmp_30, %tmp_31              ; [#uses=1 type=i64]
  %tmp_33 = trunc i64 %tmp_32 to i8               ; [#uses=1 type=i8]
  call void @llvm.dbg.value(metadata !{i8 %tmp_33}, i64 0, metadata !212), !dbg !230 ; [debug line = 145:31@76:2] [debug variable = tmp]
  call void @_ssdm_op_Write.axis.volatile.i8P(i8* %outStream_channel_1_V, i8 %tmp_33), !dbg !231 ; [debug line = 146:9@76:2]
  %tmp_12 = or i3 %tmp_11, 1                      ; [#uses=1 type=i3]
  call void @llvm.dbg.value(metadata !{i8* %outstream_channel_2_V}, i64 0, metadata !208), !dbg !232 ; [debug line = 144:48@77:6] [debug variable = stream<unsigned char>.V]
  %buffer_load_1 = load i64* %buffer_addr_1, align 8 ; [#uses=2 type=i64]
  %start_pos2 = call i6 @_ssdm_op_BitConcatenate.i6.i3.i3(i3 %tmp_12, i3 0) ; [#uses=3 type=i6]
  %end_pos1 = or i6 %start_pos2, 7                ; [#uses=2 type=i6]
  %tmp_34 = icmp ugt i6 %start_pos2, %end_pos1    ; [#uses=3 type=i1]
  %tmp_35 = zext i6 %start_pos2 to i7             ; [#uses=4 type=i7]
  %tmp_36 = zext i6 %end_pos1 to i7               ; [#uses=2 type=i7]
  %tmp_37 = call i64 @llvm.part.select.i64(i64 %buffer_load_1, i32 63, i32 0) ; [#uses=1 type=i64]
  %tmp_38 = sub i7 %tmp_35, %tmp_36               ; [#uses=1 type=i7]
  %tmp_39 = xor i7 %tmp_35, 63                    ; [#uses=1 type=i7]
  %tmp_40 = sub i7 %tmp_36, %tmp_35               ; [#uses=1 type=i7]
  %tmp_41 = select i1 %tmp_34, i7 %tmp_38, i7 %tmp_40 ; [#uses=1 type=i7]
  %tmp_42 = select i1 %tmp_34, i64 %tmp_37, i64 %buffer_load_1 ; [#uses=1 type=i64]
  %tmp_43 = select i1 %tmp_34, i7 %tmp_39, i7 %tmp_35 ; [#uses=1 type=i7]
  %tmp_44 = sub i7 63, %tmp_41                    ; [#uses=1 type=i7]
  %tmp_45 = zext i7 %tmp_43 to i64                ; [#uses=1 type=i64]
  %tmp_46 = zext i7 %tmp_44 to i64                ; [#uses=1 type=i64]
  %tmp_47 = lshr i64 %tmp_42, %tmp_45             ; [#uses=1 type=i64]
  %tmp_48 = lshr i64 -1, %tmp_46                  ; [#uses=1 type=i64]
  %tmp_49 = and i64 %tmp_47, %tmp_48              ; [#uses=1 type=i64]
  %tmp_50 = trunc i64 %tmp_49 to i8               ; [#uses=1 type=i8]
  call void @llvm.dbg.value(metadata !{i8 %tmp_50}, i64 0, metadata !212), !dbg !234 ; [debug line = 145:31@77:6] [debug variable = tmp]
  call void @_ssdm_op_Write.axis.volatile.i8P(i8* %outstream_channel_2_V, i8 %tmp_50), !dbg !235 ; [debug line = 146:9@77:6]
  %empty_13 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str7, i32 %tmp_10), !dbg !236 ; [#uses=0 type=i32] [debug line = 78:5]
  %j_2 = add i13 2, %j1, !dbg !237                ; [#uses=1 type=i13] [debug line = 73:50]
  call void @llvm.dbg.value(metadata !{i13 %j_2}, i64 0, metadata !238), !dbg !237 ; [debug line = 73:50] [debug variable = j]
  br label %.preheader, !dbg !237                 ; [debug line = 73:50]

.loopexit.loopexit:                               ; preds = %.preheader
  br label %.loopexit

.loopexit.loopexit119:                            ; preds = %.preheader9
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit119, %.loopexit.loopexit
  %offset_1 = add i32 %offset1, 512, !dbg !239    ; [#uses=1 type=i32] [debug line = 81:4]
  call void @llvm.dbg.value(metadata !{i32 %offset_1}, i64 0, metadata !185), !dbg !239 ; [debug line = 81:4] [debug variable = offset]
  call void @llvm.dbg.value(metadata !{i20 %i_1}, i64 0, metadata !240), !dbg !187 ; [debug line = 50:47] [debug variable = i]
  br label %1, !dbg !187                          ; [debug line = 50:47]

._crit_edge18:                                    ; preds = %1
  %tmp_3 = icmp eq i32 %inner_index_load, %tmp_1_FRAME_BUFFER_N_1, !dbg !241 ; [#uses=1 type=i1] [debug line = 84:3]
  %tmp_4 = add nsw i32 %inner_index_load, 1, !dbg !242 ; [#uses=1 type=i32] [debug line = 87:4]
  %storemerge = select i1 %tmp_3, i32 0, i32 %tmp_4, !dbg !241 ; [#uses=1 type=i32] [debug line = 84:3]
  store i32 %storemerge, i32* @inner_index, align 4, !dbg !243 ; [debug line = 85:4]
  ret void, !dbg !244                             ; [debug line = 89:1]

mergeST:                                          ; preds = %._crit_edge17.new17
  store i32 %frame_buffer_dim_rea, i32* @FRAME_BUFFER_DIM, align 4, !dbg !173 ; [debug line = 27:48]
  br label %._crit_edge17.new

._crit_edge17.new:                                ; preds = %._crit_edge17.new17, %mergeST
  %tmp_5 = call i20 @_ssdm_op_PartSelect.i20.i32.i32.i32(i32 %frame_buffer_dim_FRA, i32 12, i32 31) ; [#uses=1 type=i20]
  br label %1, !dbg !171                          ; [debug line = 50:16]

mergeST16:                                        ; preds = %._crit_edge17.new19
  store i32 %frame_buffer_offset_1, i32* @FRAME_OFFSET, align 4, !dbg !176 ; [debug line = 30:47]
  br label %._crit_edge17.new17

._crit_edge17.new17:                              ; preds = %._crit_edge17.new19, %mergeST16
  br i1 %p_FRAME_BUFFER_DIM_fl, label %mergeST, label %._crit_edge17.new

mergeST18:                                        ; preds = %._crit_edge17.new21
  store i8 %frame_buffer_number_s, i8* @FRAME_BUFFER_NUMBER, align 1, !dbg !177 ; [debug line = 33:54]
  br label %._crit_edge17.new19

._crit_edge17.new19:                              ; preds = %._crit_edge17.new21, %mergeST18
  br i1 %p_FRAME_OFFSET_flag, label %mergeST16, label %._crit_edge17.new17

mergeST20:                                        ; preds = %._crit_edge16
  store i32 %tmp_7_base_address, i32* @BASE_ADDRESS, align 4, !dbg !180 ; [debug line = 36:40]
  br label %._crit_edge17.new21

._crit_edge17.new21:                              ; preds = %mergeST20, %._crit_edge16
  br i1 %p_FRAME_BUFFER_NUMBER, label %mergeST18, label %._crit_edge17.new19
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

!opencl.kernels = !{!0, !7}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!13}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"hls::stream<DATA_OUT> &", metadata !"hls::stream<DATA_OUT> &", metadata !"u64*", metadata !"u32", metadata !"u32", metadata !"u32", metadata !"u8", metadata !"_Bool", metadata !"_Bool"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"volatile", metadata !"", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"outStream_channel_1", metadata !"outstream_channel_2", metadata !"base_ddr_addr", metadata !"base_address", metadata !"frame_buffer_dim", metadata !"frame_buffer_offset", metadata !"frame_buffer_number", metadata !"update_intr", metadata !"stereo_enabler"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !6}
!8 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!9 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!10 = metadata !{metadata !"kernel_arg_type", metadata !"const uchar &"}
!11 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!12 = metadata !{metadata !"kernel_arg_name", metadata !"din"}
!13 = metadata !{metadata !14, [0 x i32]* @llvm_global_ctors_0}
!14 = metadata !{metadata !15}
!15 = metadata !{i32 0, i32 31, metadata !16}
!16 = metadata !{metadata !17}
!17 = metadata !{metadata !"llvm.global_ctors.0", metadata !18, metadata !"", i32 0, i32 31}
!18 = metadata !{metadata !19}
!19 = metadata !{i32 0, i32 0, i32 1}
!20 = metadata !{metadata !21}
!21 = metadata !{i32 0, i32 7, metadata !22}
!22 = metadata !{metadata !23}
!23 = metadata !{metadata !"outStream_channel_1.V", metadata !18, metadata !"unsigned char", i32 0, i32 7}
!24 = metadata !{metadata !25}
!25 = metadata !{i32 0, i32 7, metadata !26}
!26 = metadata !{metadata !27}
!27 = metadata !{metadata !"outstream_channel_2.V", metadata !18, metadata !"unsigned char", i32 0, i32 7}
!28 = metadata !{metadata !29}
!29 = metadata !{i32 0, i32 63, metadata !30}
!30 = metadata !{metadata !31}
!31 = metadata !{metadata !"base_ddr_addr", metadata !32, metadata !"long long unsigned int", i32 0, i32 63}
!32 = metadata !{metadata !33}
!33 = metadata !{i32 0, i32 127, i32 1}
!34 = metadata !{metadata !35}
!35 = metadata !{i32 0, i32 31, metadata !36}
!36 = metadata !{metadata !37}
!37 = metadata !{metadata !"base_address", metadata !38, metadata !"unsigned int", i32 0, i32 31}
!38 = metadata !{metadata !39}
!39 = metadata !{i32 0, i32 0, i32 0}
!40 = metadata !{metadata !41}
!41 = metadata !{i32 0, i32 31, metadata !42}
!42 = metadata !{metadata !43}
!43 = metadata !{metadata !"frame_buffer_dim", metadata !38, metadata !"unsigned int", i32 0, i32 31}
!44 = metadata !{metadata !45}
!45 = metadata !{i32 0, i32 31, metadata !46}
!46 = metadata !{metadata !47}
!47 = metadata !{metadata !"frame_buffer_offset", metadata !38, metadata !"unsigned int", i32 0, i32 31}
!48 = metadata !{metadata !49}
!49 = metadata !{i32 0, i32 7, metadata !50}
!50 = metadata !{metadata !51}
!51 = metadata !{metadata !"frame_buffer_number", metadata !38, metadata !"unsigned char", i32 0, i32 7}
!52 = metadata !{metadata !53}
!53 = metadata !{i32 0, i32 0, metadata !54}
!54 = metadata !{metadata !55}
!55 = metadata !{metadata !"update_intr", metadata !38, metadata !"bool", i32 0, i32 0}
!56 = metadata !{metadata !57}
!57 = metadata !{i32 0, i32 0, metadata !58}
!58 = metadata !{metadata !59}
!59 = metadata !{metadata !"stereo_enabler", metadata !38, metadata !"bool", i32 0, i32 0}
!60 = metadata !{i32 786689, metadata !61, metadata !"stereo_enabler", metadata !62, i32 150994948, metadata !104, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!61 = metadata !{i32 786478, i32 0, metadata !62, metadata !"ddr_to_axis_reader_SD", metadata !"ddr_to_axis_reader_SD", metadata !"_Z21ddr_to_axis_reader_SDRN3hls6streamIhEES2_PVyjjjhbb", metadata !62, i32 3, metadata !63, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !76, i32 5} ; [ DW_TAG_subprogram ]
!62 = metadata !{i32 786473, metadata !"ddr_to_axis_reader_SD.cpp", metadata !"/home/andrea/Documenti/vision/Ultrascale/hls/DDR/DDR_TO_AXIS_READER_AXILITE_SD", null} ; [ DW_TAG_file_type ]
!63 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !64, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!64 = metadata !{null, metadata !65, metadata !65, metadata !124, metadata !128, metadata !128, metadata !128, metadata !129, metadata !104, metadata !104}
!65 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !66} ; [ DW_TAG_reference_type ]
!66 = metadata !{i32 786434, metadata !67, metadata !"stream<unsigned char>", metadata !68, i32 79, i64 8, i64 8, i32 0, i32 0, null, metadata !69, i32 0, null, metadata !122} ; [ DW_TAG_class_type ]
!67 = metadata !{i32 786489, null, metadata !"hls", metadata !68, i32 69} ; [ DW_TAG_namespace ]
!68 = metadata !{i32 786473, metadata !"/opt/Xilinx/Vivado/2018.1/common/technology/autopilot/hls_stream.h", metadata !"/home/andrea/Documenti/vision/Ultrascale/hls/DDR/DDR_TO_AXIS_READER_AXILITE_SD", null} ; [ DW_TAG_file_type ]
!69 = metadata !{metadata !70, metadata !72, metadata !78, metadata !84, metadata !89, metadata !92, metadata !96, metadata !101, metadata !106, metadata !107, metadata !108, metadata !111, metadata !114, metadata !115, metadata !118}
!70 = metadata !{i32 786445, metadata !66, metadata !"V", metadata !68, i32 163, i64 8, i64 8, i64 0, i32 0, metadata !71} ; [ DW_TAG_member ]
!71 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!72 = metadata !{i32 786478, i32 0, metadata !66, metadata !"stream", metadata !"stream", metadata !"", metadata !68, i32 83, metadata !73, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 83} ; [ DW_TAG_subprogram ]
!73 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !74, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!74 = metadata !{null, metadata !75}
!75 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !66} ; [ DW_TAG_pointer_type ]
!76 = metadata !{metadata !77}
!77 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!78 = metadata !{i32 786478, i32 0, metadata !66, metadata !"stream", metadata !"stream", metadata !"", metadata !68, i32 86, metadata !79, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 86} ; [ DW_TAG_subprogram ]
!79 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !80, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!80 = metadata !{null, metadata !75, metadata !81}
!81 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !82} ; [ DW_TAG_pointer_type ]
!82 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !83} ; [ DW_TAG_const_type ]
!83 = metadata !{i32 786468, null, metadata !"char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!84 = metadata !{i32 786478, i32 0, metadata !66, metadata !"stream", metadata !"stream", metadata !"", metadata !68, i32 91, metadata !85, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !76, i32 91} ; [ DW_TAG_subprogram ]
!85 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !86, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!86 = metadata !{null, metadata !75, metadata !87}
!87 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !88} ; [ DW_TAG_reference_type ]
!88 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !66} ; [ DW_TAG_const_type ]
!89 = metadata !{i32 786478, i32 0, metadata !66, metadata !"operator=", metadata !"operator=", metadata !"_ZN3hls6streamIhEaSERKS1_", metadata !68, i32 94, metadata !90, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !76, i32 94} ; [ DW_TAG_subprogram ]
!90 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !91, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!91 = metadata !{metadata !65, metadata !75, metadata !87}
!92 = metadata !{i32 786478, i32 0, metadata !66, metadata !"operator>>", metadata !"operator>>", metadata !"_ZN3hls6streamIhErsERh", metadata !68, i32 101, metadata !93, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 101} ; [ DW_TAG_subprogram ]
!93 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !94, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!94 = metadata !{null, metadata !75, metadata !95}
!95 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !71} ; [ DW_TAG_reference_type ]
!96 = metadata !{i32 786478, i32 0, metadata !66, metadata !"operator<<", metadata !"operator<<", metadata !"_ZN3hls6streamIhElsERKh", metadata !68, i32 105, metadata !97, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 105} ; [ DW_TAG_subprogram ]
!97 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !98, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!98 = metadata !{null, metadata !75, metadata !99}
!99 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !100} ; [ DW_TAG_reference_type ]
!100 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !71} ; [ DW_TAG_const_type ]
!101 = metadata !{i32 786478, i32 0, metadata !66, metadata !"empty", metadata !"empty", metadata !"_ZNK3hls6streamIhE5emptyEv", metadata !68, i32 112, metadata !102, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 112} ; [ DW_TAG_subprogram ]
!102 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !103, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!103 = metadata !{metadata !104, metadata !105}
!104 = metadata !{i32 786468, null, metadata !"bool", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 2} ; [ DW_TAG_base_type ]
!105 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !88} ; [ DW_TAG_pointer_type ]
!106 = metadata !{i32 786478, i32 0, metadata !66, metadata !"full", metadata !"full", metadata !"_ZNK3hls6streamIhE4fullEv", metadata !68, i32 117, metadata !102, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 117} ; [ DW_TAG_subprogram ]
!107 = metadata !{i32 786478, i32 0, metadata !66, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIhE4readERh", metadata !68, i32 123, metadata !93, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 123} ; [ DW_TAG_subprogram ]
!108 = metadata !{i32 786478, i32 0, metadata !66, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamIhE4readEv", metadata !68, i32 129, metadata !109, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 129} ; [ DW_TAG_subprogram ]
!109 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !110, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!110 = metadata !{metadata !71, metadata !75}
!111 = metadata !{i32 786478, i32 0, metadata !66, metadata !"read_nb", metadata !"read_nb", metadata !"_ZN3hls6streamIhE7read_nbERh", metadata !68, i32 136, metadata !112, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 136} ; [ DW_TAG_subprogram ]
!112 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !113, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!113 = metadata !{metadata !104, metadata !75, metadata !95}
!114 = metadata !{i32 786478, i32 0, metadata !66, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIhE5writeERKh", metadata !68, i32 144, metadata !97, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 144} ; [ DW_TAG_subprogram ]
!115 = metadata !{i32 786478, i32 0, metadata !66, metadata !"write_nb", metadata !"write_nb", metadata !"_ZN3hls6streamIhE8write_nbERKh", metadata !68, i32 150, metadata !116, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 150} ; [ DW_TAG_subprogram ]
!116 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !117, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!117 = metadata !{metadata !104, metadata !75, metadata !99}
!118 = metadata !{i32 786478, i32 0, metadata !66, metadata !"size", metadata !"size", metadata !"_ZN3hls6streamIhE4sizeEv", metadata !68, i32 157, metadata !119, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 157} ; [ DW_TAG_subprogram ]
!119 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !120, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!120 = metadata !{metadata !121, metadata !75}
!121 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!122 = metadata !{metadata !123}
!123 = metadata !{i32 786479, null, metadata !"__STREAM_T__", metadata !71, null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!124 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !125} ; [ DW_TAG_pointer_type ]
!125 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !126} ; [ DW_TAG_volatile_type ]
!126 = metadata !{i32 786454, null, metadata !"u64", metadata !62, i32 5, i64 0, i64 0, i64 0, i32 0, metadata !127} ; [ DW_TAG_typedef ]
!127 = metadata !{i32 786468, null, metadata !"long long unsigned int", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!128 = metadata !{i32 786454, null, metadata !"u32", metadata !62, i32 6, i64 0, i64 0, i64 0, i32 0, metadata !121} ; [ DW_TAG_typedef ]
!129 = metadata !{i32 786454, null, metadata !"u8", metadata !62, i32 7, i64 0, i64 0, i64 0, i32 0, metadata !71} ; [ DW_TAG_typedef ]
!130 = metadata !{i32 4, i32 115, metadata !61, null}
!131 = metadata !{i32 786689, metadata !61, metadata !"update_intr", metadata !62, i32 134217732, metadata !104, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!132 = metadata !{i32 4, i32 97, metadata !61, null}
!133 = metadata !{i32 786689, metadata !61, metadata !"frame_buffer_number", metadata !62, i32 117440516, metadata !129, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!134 = metadata !{i32 4, i32 71, metadata !61, null}
!135 = metadata !{i32 786689, metadata !61, metadata !"frame_buffer_offset", metadata !62, i32 100663300, metadata !128, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!136 = metadata !{i32 4, i32 47, metadata !61, null}
!137 = metadata !{i32 786689, metadata !61, metadata !"frame_buffer_dim", metadata !62, i32 83886084, metadata !128, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!138 = metadata !{i32 4, i32 25, metadata !61, null}
!139 = metadata !{i32 786689, metadata !61, metadata !"base_address", metadata !62, i32 67108868, metadata !128, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!140 = metadata !{i32 4, i32 7, metadata !61, null}
!141 = metadata !{i32 790531, metadata !142, metadata !"outStream_channel_1.V", null, i32 3, metadata !143, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!142 = metadata !{i32 786689, metadata !61, metadata !"outStream_channel_1", metadata !62, i32 16777219, metadata !65, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!143 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !144} ; [ DW_TAG_pointer_type ]
!144 = metadata !{i32 786438, metadata !67, metadata !"stream<unsigned char>", metadata !68, i32 79, i64 8, i64 8, i32 0, i32 0, null, metadata !145, i32 0, null, metadata !122} ; [ DW_TAG_class_field_type ]
!145 = metadata !{metadata !70}
!146 = metadata !{i32 3, i32 51, metadata !61, null}
!147 = metadata !{i32 790531, metadata !148, metadata !"outstream_channel_2.V", null, i32 3, metadata !143, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!148 = metadata !{i32 786689, metadata !61, metadata !"outstream_channel_2", metadata !62, i32 33554435, metadata !65, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!149 = metadata !{i32 3, i32 95, metadata !61, null}
!150 = metadata !{i32 786689, metadata !61, metadata !"base_ddr_addr", metadata !62, i32 50331651, metadata !124, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!151 = metadata !{i32 3, i32 130, metadata !61, null}
!152 = metadata !{i32 6, i32 1, metadata !153, null}
!153 = metadata !{i32 786443, metadata !61, i32 5, i32 1, metadata !62, i32 0} ; [ DW_TAG_lexical_block ]
!154 = metadata !{i32 7, i32 1, metadata !153, null}
!155 = metadata !{i32 8, i32 1, metadata !153, null}
!156 = metadata !{i32 9, i32 1, metadata !153, null}
!157 = metadata !{i32 10, i32 1, metadata !153, null}
!158 = metadata !{i32 11, i32 1, metadata !153, null}
!159 = metadata !{i32 12, i32 1, metadata !153, null}
!160 = metadata !{i32 13, i32 1, metadata !153, null}
!161 = metadata !{i32 14, i32 1, metadata !153, null}
!162 = metadata !{i32 15, i32 1, metadata !153, null}
!163 = metadata !{i32 786688, metadata !153, metadata !"buffer", metadata !62, i32 17, metadata !164, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!164 = metadata !{i32 786433, null, metadata !"", null, i32 0, i64 32768, i64 64, i32 0, i32 0, metadata !126, metadata !165, i32 0, i32 0} ; [ DW_TAG_array_type ]
!165 = metadata !{metadata !166}
!166 = metadata !{i32 786465, i64 0, i64 511}     ; [ DW_TAG_subrange_type ]
!167 = metadata !{i32 17, i32 6, metadata !153, null}
!168 = metadata !{i32 18, i32 1, metadata !153, null}
!169 = metadata !{i32 22, i32 1, metadata !153, null}
!170 = metadata !{i32 25, i32 1, metadata !153, null}
!171 = metadata !{i32 50, i32 16, metadata !172, null}
!172 = metadata !{i32 786443, metadata !153, i32 50, i32 3, metadata !62, i32 2} ; [ DW_TAG_lexical_block ]
!173 = metadata !{i32 27, i32 48, metadata !153, null}
!174 = metadata !{i32 28, i32 1, metadata !153, null}
!175 = metadata !{i32 31, i32 1, metadata !153, null}
!176 = metadata !{i32 30, i32 47, metadata !153, null}
!177 = metadata !{i32 33, i32 54, metadata !153, null}
!178 = metadata !{i32 34, i32 1, metadata !153, null}
!179 = metadata !{i32 37, i32 1, metadata !153, null}
!180 = metadata !{i32 36, i32 40, metadata !153, null}
!181 = metadata !{i32 45, i32 6, metadata !182, null}
!182 = metadata !{i32 786443, metadata !153, i32 40, i32 4, metadata !62, i32 1} ; [ DW_TAG_lexical_block ]
!183 = metadata !{i32 39, i32 2, metadata !153, null}
!184 = metadata !{i32 49, i32 71, metadata !153, null}
!185 = metadata !{i32 786688, metadata !153, metadata !"offset", metadata !62, i32 49, metadata !186, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!186 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!187 = metadata !{i32 50, i32 47, metadata !172, null}
!188 = metadata !{i32 52, i32 4, metadata !189, null}
!189 = metadata !{i32 786443, metadata !172, i32 51, i32 3, metadata !62, i32 3} ; [ DW_TAG_lexical_block ]
!190 = metadata !{i32 53, i32 4, metadata !189, null}
!191 = metadata !{i32 55, i32 18, metadata !192, null}
!192 = metadata !{i32 786443, metadata !193, i32 55, i32 5, metadata !62, i32 5} ; [ DW_TAG_lexical_block ]
!193 = metadata !{i32 786443, metadata !189, i32 54, i32 4, metadata !62, i32 4} ; [ DW_TAG_lexical_block ]
!194 = metadata !{i32 73, i32 18, metadata !195, null}
!195 = metadata !{i32 786443, metadata !196, i32 73, i32 5, metadata !62, i32 10} ; [ DW_TAG_lexical_block ]
!196 = metadata !{i32 786443, metadata !189, i32 72, i32 4, metadata !62, i32 9} ; [ DW_TAG_lexical_block ]
!197 = metadata !{i32 56, i32 6, metadata !198, null}
!198 = metadata !{i32 786443, metadata !192, i32 56, i32 5, metadata !62, i32 6} ; [ DW_TAG_lexical_block ]
!199 = metadata !{i32 57, i32 1, metadata !198, null}
!200 = metadata !{i32 58, i32 2, metadata !198, null}
!201 = metadata !{i32 60, i32 7, metadata !202, null}
!202 = metadata !{i32 786443, metadata !198, i32 59, i32 6, metadata !62, i32 7} ; [ DW_TAG_lexical_block ]
!203 = metadata !{i32 61, i32 7, metadata !202, null}
!204 = metadata !{i32 786688, metadata !192, metadata !"j", metadata !62, i32 55, metadata !186, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!205 = metadata !{i32 144, i32 48, metadata !206, metadata !207}
!206 = metadata !{i32 786478, i32 0, metadata !67, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamIhE5writeERKh", metadata !68, i32 144, metadata !97, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !114, metadata !76, i32 144} ; [ DW_TAG_subprogram ]
!207 = metadata !{i32 62, i32 7, metadata !202, null}
!208 = metadata !{i32 790531, metadata !209, metadata !"stream<unsigned char>.V", null, i32 144, metadata !211, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!209 = metadata !{i32 786689, metadata !206, metadata !"this", metadata !68, i32 16777360, metadata !210, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!210 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !66} ; [ DW_TAG_pointer_type ]
!211 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !144} ; [ DW_TAG_pointer_type ]
!212 = metadata !{i32 786688, metadata !213, metadata !"tmp", metadata !68, i32 145, metadata !71, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!213 = metadata !{i32 786443, metadata !206, i32 144, i32 79, metadata !68, i32 12} ; [ DW_TAG_lexical_block ]
!214 = metadata !{i32 145, i32 31, metadata !213, metadata !207}
!215 = metadata !{i32 146, i32 9, metadata !213, metadata !207}
!216 = metadata !{i32 63, i32 6, metadata !202, null}
!217 = metadata !{i32 66, i32 7, metadata !218, null}
!218 = metadata !{i32 786443, metadata !198, i32 65, i32 6, metadata !62, i32 8} ; [ DW_TAG_lexical_block ]
!219 = metadata !{i32 144, i32 48, metadata !206, metadata !220}
!220 = metadata !{i32 67, i32 7, metadata !218, null}
!221 = metadata !{i32 145, i32 31, metadata !213, metadata !220}
!222 = metadata !{i32 146, i32 9, metadata !213, metadata !220}
!223 = metadata !{i32 69, i32 5, metadata !198, null}
!224 = metadata !{i32 55, i32 50, metadata !192, null}
!225 = metadata !{i32 74, i32 6, metadata !226, null}
!226 = metadata !{i32 786443, metadata !195, i32 74, i32 5, metadata !62, i32 11} ; [ DW_TAG_lexical_block ]
!227 = metadata !{i32 75, i32 1, metadata !226, null}
!228 = metadata !{i32 144, i32 48, metadata !206, metadata !229}
!229 = metadata !{i32 76, i32 2, metadata !226, null}
!230 = metadata !{i32 145, i32 31, metadata !213, metadata !229}
!231 = metadata !{i32 146, i32 9, metadata !213, metadata !229}
!232 = metadata !{i32 144, i32 48, metadata !206, metadata !233}
!233 = metadata !{i32 77, i32 6, metadata !226, null}
!234 = metadata !{i32 145, i32 31, metadata !213, metadata !233}
!235 = metadata !{i32 146, i32 9, metadata !213, metadata !233}
!236 = metadata !{i32 78, i32 5, metadata !226, null}
!237 = metadata !{i32 73, i32 50, metadata !195, null}
!238 = metadata !{i32 786688, metadata !195, metadata !"j", metadata !62, i32 73, metadata !186, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!239 = metadata !{i32 81, i32 4, metadata !189, null}
!240 = metadata !{i32 786688, metadata !172, metadata !"i", metadata !62, i32 50, metadata !186, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!241 = metadata !{i32 84, i32 3, metadata !153, null}
!242 = metadata !{i32 87, i32 4, metadata !153, null}
!243 = metadata !{i32 85, i32 4, metadata !153, null}
!244 = metadata !{i32 89, i32 1, metadata !153, null}
