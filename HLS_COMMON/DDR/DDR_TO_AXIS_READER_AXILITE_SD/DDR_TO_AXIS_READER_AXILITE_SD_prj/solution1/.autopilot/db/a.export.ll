; ModuleID = '/home/andrea/Documenti/vision/Ultrascale/hls/DDR/DDR_TO_AXIS_READER_AXILITE_SD/DDR_TO_AXIS_READER_AXILITE_SD_prj/solution1/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@memcpy_OC_buffer_OC_s = internal unnamed_addr constant [28 x i8] c"memcpy.buffer.base_ddr_addr\00"
@luma_chroma_switch = internal unnamed_addr global i32 0, align 4
@llvm_global_ctors_1 = appending global [0 x void ()*] zeroinitializer
@llvm_global_ctors_0 = appending global [0 x i32] zeroinitializer
@inner_index = internal unnamed_addr global i32 0, align 4
@guard_variable_for_d_3 = internal unnamed_addr global i1 false
@guard_variable_for_d_2 = internal unnamed_addr global i1 false
@guard_variable_for_d_1 = internal unnamed_addr global i1 false
@guard_variable_for_d = internal unnamed_addr global i1 false
@ddr_to_axis_reader_S = internal unnamed_addr constant [22 x i8] c"ddr_to_axis_reader_SD\00"
@burstread_OC_region_s = internal unnamed_addr constant [17 x i8] c"burstread.region\00"
@FRAME_OFFSET = internal unnamed_addr global i32 0, align 4
@FRAME_BUFFER_NUMBER_r = internal global i8 0
@FRAME_BUFFER_DIM_r = internal unnamed_addr global i32 0, align 4
@BASE_ADDRESS_r = internal unnamed_addr global i32 0, align 4
@p_str8 = internal unnamed_addr constant [1 x i8] zeroinitializer
@p_str7 = private unnamed_addr constant [12 x i8] c"hls_label_1\00", align 1
@p_str6 = private unnamed_addr constant [12 x i8] c"hls_label_0\00", align 1
@p_str5 = private unnamed_addr constant [12 x i8] c"RAM_2P_BRAM\00", align 1
@p_str4 = private unnamed_addr constant [6 x i8] c"m_axi\00", align 1
@p_str3 = private unnamed_addr constant [5 x i8] c"both\00", align 1
@p_str2 = private unnamed_addr constant [5 x i8] c"axis\00", align 1
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str = private unnamed_addr constant [10 x i8] c"s_axilite\00", align 1

declare i64 @llvm.part.select.i64(i64, i32, i32) nounwind readnone

declare i32 @llvm.part.select.i32(i32, i32, i32) nounwind readnone

declare i13 @llvm.part.select.i13(i13, i32, i32) nounwind readnone

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

declare void @llvm.dbg.declare(metadata, metadata) nounwind readnone

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
  %stereo_enabler_read = call i1 @_ssdm_op_Read.s_axilite.i1(i1 %stereo_enabler)
  %update_intr_read = call i1 @_ssdm_op_Read.s_axilite.i1(i1 %update_intr)
  %frame_buffer_number_s = call i8 @_ssdm_op_Read.s_axilite.i8(i8 %frame_buffer_number)
  %frame_buffer_offset_1 = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %frame_buffer_offset)
  %frame_buffer_dim_rea = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %frame_buffer_dim)
  %base_address_read = call i32 @_ssdm_op_Read.s_axilite.i32(i32 %base_address)
  %buffer = alloca [512 x i64], align 16
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %base_address, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i1 %update_intr, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8 %frame_buffer_number, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %frame_buffer_offset, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 %frame_buffer_dim, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i1 %stereo_enabler, [10 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %outStream_channel_1_V, [5 x i8]* @p_str2, i32 1, i32 1, [5 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %outstream_channel_2_V, [5 x i8]* @p_str2, i32 1, i32 1, [5 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i64* %base_ddr_addr, [6 x i8]* @p_str4, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 128, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 16, i32 16, i32 16, i32 16, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecMemCore([512 x i64]* %buffer, [1 x i8]* @p_str1, [12 x i8]* @p_str5, [1 x i8]* @p_str1, i32 -1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1)
  %inner_index_load = load i32* @inner_index, align 4
  call void (...)* @_ssdm_op_SpecReset(i32* @inner_index, i32 1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecReset(i32* @luma_chroma_switch, i32 1, [1 x i8]* @p_str1) nounwind
  %guard_variable_for_d_4 = load i1* @guard_variable_for_d_2, align 1
  %FRAME_BUFFER_DIM_loa = load i32* @FRAME_BUFFER_DIM_r, align 4
  br i1 %guard_variable_for_d_4, label %._crit_edge, label %codeRepl1

codeRepl1:                                        ; preds = %0
  store i1 true, i1* @guard_variable_for_d_2, align 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %codeRepl1, %0
  %FRAME_BUFFER_DIM_fla = phi i1 [ true, %codeRepl1 ], [ false, %0 ]
  %FRAME_BUFFER_DIM_loc = phi i32 [ %frame_buffer_dim_rea, %codeRepl1 ], [ %FRAME_BUFFER_DIM_loa, %0 ]
  call void (...)* @_ssdm_op_SpecReset(i32* @FRAME_BUFFER_DIM_r, i32 1, [1 x i8]* @p_str1) nounwind
  %guard_variable_for_d_5 = load i1* @guard_variable_for_d, align 1
  %FRAME_OFFSET_load = load i32* @FRAME_OFFSET, align 4
  br i1 %guard_variable_for_d_5, label %._crit_edge14, label %codeRepl

codeRepl:                                         ; preds = %._crit_edge
  store i1 true, i1* @guard_variable_for_d, align 1
  br label %._crit_edge14

._crit_edge14:                                    ; preds = %codeRepl, %._crit_edge
  %FRAME_OFFSET_flag = phi i1 [ true, %codeRepl ], [ false, %._crit_edge ]
  %FRAME_OFFSET_loc = phi i32 [ %frame_buffer_offset_1, %codeRepl ], [ %FRAME_OFFSET_load, %._crit_edge ]
  call void (...)* @_ssdm_op_SpecReset(i32* @FRAME_OFFSET, i32 1, [1 x i8]* @p_str1) nounwind
  %guard_variable_for_d_6 = load i1* @guard_variable_for_d_1, align 1
  %FRAME_BUFFER_NUMBER_s = load i8* @FRAME_BUFFER_NUMBER_r, align 1
  br i1 %guard_variable_for_d_6, label %._crit_edge15, label %codeRepl2

codeRepl2:                                        ; preds = %._crit_edge14
  store i1 true, i1* @guard_variable_for_d_1, align 1
  br label %._crit_edge15

._crit_edge15:                                    ; preds = %codeRepl2, %._crit_edge14
  %FRAME_BUFFER_NUMBER_1 = phi i1 [ true, %codeRepl2 ], [ false, %._crit_edge14 ]
  %FRAME_BUFFER_NUMBER_2 = phi i8 [ %frame_buffer_number_s, %codeRepl2 ], [ %FRAME_BUFFER_NUMBER_s, %._crit_edge14 ]
  call void (...)* @_ssdm_op_SpecReset(i8* @FRAME_BUFFER_NUMBER_r, i32 1, [1 x i8]* @p_str1) nounwind
  %guard_variable_for_d_7 = load i1* @guard_variable_for_d_3, align 1
  %BASE_ADDRESS_load = load i32* @BASE_ADDRESS_r, align 4
  br i1 %guard_variable_for_d_7, label %._crit_edge16, label %codeRepl3

codeRepl3:                                        ; preds = %._crit_edge15
  store i1 true, i1* @guard_variable_for_d_3, align 1
  br label %._crit_edge16

._crit_edge16:                                    ; preds = %codeRepl3, %._crit_edge15
  %BASE_ADDRESS_flag = phi i1 [ true, %codeRepl3 ], [ false, %._crit_edge15 ]
  %BASE_ADDRESS_loc = phi i32 [ %base_address_read, %codeRepl3 ], [ %BASE_ADDRESS_load, %._crit_edge15 ]
  call void (...)* @_ssdm_op_SpecReset(i32* @BASE_ADDRESS_r, i32 1, [1 x i8]* @p_str1) nounwind
  %tmp_7 = call i29 @_ssdm_op_PartSelect.i29.i32.i32.i32(i32 %base_address_read, i32 3, i32 31)
  %tmp_8 = zext i29 %tmp_7 to i32
  %p_FRAME_BUFFER_DIM_fl = or i1 %FRAME_BUFFER_DIM_fla, %update_intr_read
  %frame_buffer_dim_FRA = select i1 %update_intr_read, i32 %frame_buffer_dim_rea, i32 %FRAME_BUFFER_DIM_loc
  %p_FRAME_OFFSET_flag = or i1 %FRAME_OFFSET_flag, %update_intr_read
  %p_FRAME_BUFFER_NUMBER = or i1 %FRAME_BUFFER_NUMBER_1, %update_intr_read
  %tmp_1_FRAME_BUFFER_N = select i1 %update_intr_read, i8 %frame_buffer_number_s, i8 %FRAME_BUFFER_NUMBER_2
  %tmp_1_FRAME_BUFFER_N_1 = zext i8 %tmp_1_FRAME_BUFFER_N to i32
  %p_BASE_ADDRESS_flag = or i1 %BASE_ADDRESS_flag, %update_intr_read
  %tmp_7_base_address = select i1 %update_intr_read, i32 %tmp_8, i32 %base_address_read
  %frame_buffer_offset_s = select i1 %update_intr_read, i32 %frame_buffer_offset_1, i32 %FRAME_OFFSET_loc
  %tmp_7_BASE_ADDRESS_l = select i1 %update_intr_read, i32 %tmp_8, i32 %BASE_ADDRESS_loc
  %tmp_s = mul i32 %inner_index_load, %frame_buffer_offset_s
  %tmp_2 = call i29 @_ssdm_op_PartSelect.i29.i32.i32.i32(i32 %tmp_s, i32 3, i32 31)
  %tmp_9 = zext i29 %tmp_2 to i32
  %offset = add i32 %tmp_9, %tmp_7_BASE_ADDRESS_l
  br i1 %p_BASE_ADDRESS_flag, label %mergeST20, label %._crit_edge17.new21

; <label>:1                                       ; preds = %._crit_edge17.new, %.loopexit
  %offset1 = phi i32 [ %offset, %._crit_edge17.new ], [ %offset_1, %.loopexit ]
  %i = phi i20 [ 0, %._crit_edge17.new ], [ %i_1, %.loopexit ]
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 0, i64 1048575, i64 0)
  %exitcond1 = icmp eq i20 %i, %tmp_5
  %i_1 = add i20 %i, 1
  br i1 %exitcond1, label %._crit_edge18, label %2

; <label>:2                                       ; preds = %1
  %tmp_1 = sext i32 %offset1 to i64
  %base_ddr_addr_addr = getelementptr inbounds i64* %base_ddr_addr, i64 %tmp_1
  %base_ddr_addr_addr_1 = call i1 @_ssdm_op_ReadReq.m_axi.i64P(i64* %base_ddr_addr_addr, i32 512)
  br label %burst.rd.header

burst.rd.header:                                  ; preds = %burst.rd.body, %2
  %indvar = phi i10 [ 0, %2 ], [ %indvar_next, %burst.rd.body ]
  %exitcond = icmp eq i10 %indvar, -512
  %empty_9 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 512, i64 512, i64 512)
  %indvar_next = add i10 %indvar, 1
  br i1 %exitcond, label %burst.rd.end, label %burst.rd.body

burst.rd.body:                                    ; preds = %burst.rd.header
  %burstread_rbegin = call i32 (...)* @_ssdm_op_SpecRegionBegin([17 x i8]* @burstread_OC_region_s) nounwind
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str8)
  %empty_10 = call i32 (...)* @_ssdm_op_SpecLoopName([28 x i8]* @memcpy_OC_buffer_OC_s) nounwind
  %indvar1 = zext i10 %indvar to i64
  %base_ddr_addr_addr_r = call i64 @_ssdm_op_Read.m_axi.i64P(i64* %base_ddr_addr_addr)
  %buffer_addr = getelementptr [512 x i64]* %buffer, i64 0, i64 %indvar1
  store i64 %base_ddr_addr_addr_r, i64* %buffer_addr, align 8
  %burstread_rend = call i32 (...)* @_ssdm_op_SpecRegionEnd([17 x i8]* @burstread_OC_region_s, i32 %burstread_rbegin) nounwind
  br label %burst.rd.header

burst.rd.end:                                     ; preds = %burst.rd.header
  br i1 %stereo_enabler_read, label %.preheader.preheader, label %.preheader9.preheader

.preheader9.preheader:                            ; preds = %burst.rd.end
  br label %.preheader9

.preheader.preheader:                             ; preds = %burst.rd.end
  br label %.preheader

.preheader9:                                      ; preds = %.preheader9.preheader, %6
  %j = phi i13 [ %j_4, %6 ], [ 0, %.preheader9.preheader ]
  %tmp_6 = call i1 @_ssdm_op_BitSelect.i1.i13.i32(i13 %j, i32 12)
  br i1 %tmp_6, label %.loopexit.loopexit119, label %3

; <label>:3                                       ; preds = %.preheader9
  %tmp_14 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str6)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind
  %luma_chroma_switch_l = load i32* @luma_chroma_switch, align 4
  %tmp_16 = icmp eq i32 %luma_chroma_switch_l, 1
  br i1 %tmp_16, label %4, label %5

; <label>:4                                       ; preds = %3
  store i32 0, i32* @luma_chroma_switch, align 4
  %j_3 = add i13 -1, %j
  %tmp_51 = trunc i13 %j_3 to i3
  %tmp_52 = call i10 @_ssdm_op_PartSelect.i10.i13.i32.i32(i13 %j_3, i32 3, i32 12)
  %adjSize = sext i10 %tmp_52 to i14
  %mem_index_gep = add i14 4, %adjSize
  %adjSize55_cast = zext i14 %mem_index_gep to i15
  %addrCmp = icmp ult i10 %tmp_52, -4
  %addrCmp1 = icmp ult i14 %mem_index_gep, 516
  %gepindex = add i15 -4, %adjSize55_cast
  %gepindex1 = select i1 %addrCmp, i15 %gepindex, i15 511
  %gepindex2 = select i1 %addrCmp1, i15 %gepindex1, i15 511
  %gepindex2_cast = sext i15 %gepindex2 to i64
  %buffer_addr_2 = getelementptr [512 x i64]* %buffer, i64 0, i64 %gepindex2_cast
  %buffer_load_2 = load i64* %buffer_addr_2, align 8
  %start_pos = call i6 @_ssdm_op_BitConcatenate.i6.i3.i3(i3 %tmp_51, i3 0)
  %end_pos2 = or i6 %start_pos, 7
  %tmp_53 = icmp ugt i6 %start_pos, %end_pos2
  %tmp_54 = zext i6 %start_pos to i7
  %tmp_55 = zext i6 %end_pos2 to i7
  %tmp_56 = call i64 @llvm.part.select.i64(i64 %buffer_load_2, i32 63, i32 0)
  %tmp_57 = sub i7 %tmp_54, %tmp_55
  %tmp_58 = xor i7 %tmp_54, 63
  %tmp_59 = sub i7 %tmp_55, %tmp_54
  %tmp_60 = select i1 %tmp_53, i7 %tmp_57, i7 %tmp_59
  %tmp_61 = select i1 %tmp_53, i64 %tmp_56, i64 %buffer_load_2
  %tmp_62 = select i1 %tmp_53, i7 %tmp_58, i7 %tmp_54
  %tmp_63 = sub i7 63, %tmp_60
  %tmp_64 = zext i7 %tmp_62 to i64
  %tmp_65 = zext i7 %tmp_63 to i64
  %tmp_66 = lshr i64 %tmp_61, %tmp_64
  %tmp_67 = lshr i64 -1, %tmp_65
  %tmp_68 = and i64 %tmp_66, %tmp_67
  %tmp_69 = trunc i64 %tmp_68 to i8
  call void @_ssdm_op_Write.axis.volatile.i8P(i8* %outStream_channel_1_V, i8 %tmp_69)
  br label %6

; <label>:5                                       ; preds = %3
  %tmp_18 = add nsw i32 1, %luma_chroma_switch_l
  store i32 %tmp_18, i32* @luma_chroma_switch, align 4
  %tmp_70 = trunc i13 %j to i3
  %gepindex62_cast = call i9 @_ssdm_op_PartSelect.i9.i13.i32.i32(i13 %j, i32 3, i32 11)
  %gepindex264_cast = zext i9 %gepindex62_cast to i64
  %buffer_addr_3 = getelementptr [512 x i64]* %buffer, i64 0, i64 %gepindex264_cast
  %buffer_load_3 = load i64* %buffer_addr_3, align 8
  %start_pos3 = call i6 @_ssdm_op_BitConcatenate.i6.i3.i3(i3 %tmp_70, i3 0)
  %end_pos3 = or i6 %start_pos3, 7
  %tmp_71 = icmp ugt i6 %start_pos3, %end_pos3
  %tmp_72 = zext i6 %start_pos3 to i7
  %tmp_73 = zext i6 %end_pos3 to i7
  %tmp_74 = call i64 @llvm.part.select.i64(i64 %buffer_load_3, i32 63, i32 0)
  %tmp_75 = sub i7 %tmp_72, %tmp_73
  %tmp_76 = xor i7 %tmp_72, 63
  %tmp_77 = sub i7 %tmp_73, %tmp_72
  %tmp_78 = select i1 %tmp_71, i7 %tmp_75, i7 %tmp_77
  %tmp_79 = select i1 %tmp_71, i64 %tmp_74, i64 %buffer_load_3
  %tmp_80 = select i1 %tmp_71, i7 %tmp_76, i7 %tmp_72
  %tmp_81 = sub i7 63, %tmp_78
  %tmp_82 = zext i7 %tmp_80 to i64
  %tmp_83 = zext i7 %tmp_81 to i64
  %tmp_84 = lshr i64 %tmp_79, %tmp_82
  %tmp_85 = lshr i64 -1, %tmp_83
  %tmp_86 = and i64 %tmp_84, %tmp_85
  %tmp_87 = trunc i64 %tmp_86 to i8
  call void @_ssdm_op_Write.axis.volatile.i8P(i8* %outStream_channel_1_V, i8 %tmp_87)
  br label %6

; <label>:6                                       ; preds = %5, %4
  %j_1 = phi i13 [ %j_3, %4 ], [ %j, %5 ]
  %empty_11 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str6, i32 %tmp_14)
  %j_4 = add i13 %j_1, 1
  br label %.preheader9

.preheader:                                       ; preds = %.preheader.preheader, %7
  %j1 = phi i13 [ %j_2, %7 ], [ 0, %.preheader.preheader ]
  %tmp = call i1 @_ssdm_op_BitSelect.i1.i13.i32(i13 %j1, i32 12)
  %empty_12 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 2048, i64 2048, i64 2048)
  br i1 %tmp, label %.loopexit.loopexit, label %7

; <label>:7                                       ; preds = %.preheader
  %tmp_11 = trunc i13 %j1 to i3
  %tmp_10 = call i32 (...)* @_ssdm_op_SpecRegionBegin([12 x i8]* @p_str7)
  call void (...)* @_ssdm_op_SpecPipeline(i32 1, i32 1, i32 1, i32 0, [1 x i8]* @p_str1) nounwind
  %gepindex74_cast = call i9 @_ssdm_op_PartSelect.i9.i13.i32.i32(i13 %j1, i32 3, i32 11)
  %gepindex276_cast = zext i9 %gepindex74_cast to i64
  %buffer_addr_1 = getelementptr [512 x i64]* %buffer, i64 0, i64 %gepindex276_cast
  %buffer_load = load i64* %buffer_addr_1, align 8
  %tmp_13 = call i2 @_ssdm_op_PartSelect.i2.i13.i32.i32(i13 %j1, i32 1, i32 2)
  %start_pos1 = call i6 @_ssdm_op_BitConcatenate.i6.i2.i4(i2 %tmp_13, i4 0)
  %end_pos = or i6 %start_pos1, 7
  %tmp_15 = icmp ugt i6 %start_pos1, %end_pos
  %tmp_17 = zext i6 %start_pos1 to i7
  %tmp_19 = zext i6 %end_pos to i7
  %tmp_20 = call i64 @llvm.part.select.i64(i64 %buffer_load, i32 63, i32 0)
  %tmp_21 = sub i7 %tmp_17, %tmp_19
  %tmp_22 = xor i7 %tmp_17, 63
  %tmp_23 = sub i7 %tmp_19, %tmp_17
  %tmp_24 = select i1 %tmp_15, i7 %tmp_21, i7 %tmp_23
  %tmp_25 = select i1 %tmp_15, i64 %tmp_20, i64 %buffer_load
  %tmp_26 = select i1 %tmp_15, i7 %tmp_22, i7 %tmp_17
  %tmp_27 = sub i7 63, %tmp_24
  %tmp_28 = zext i7 %tmp_26 to i64
  %tmp_29 = zext i7 %tmp_27 to i64
  %tmp_30 = lshr i64 %tmp_25, %tmp_28
  %tmp_31 = lshr i64 -1, %tmp_29
  %tmp_32 = and i64 %tmp_30, %tmp_31
  %tmp_33 = trunc i64 %tmp_32 to i8
  call void @_ssdm_op_Write.axis.volatile.i8P(i8* %outStream_channel_1_V, i8 %tmp_33)
  %tmp_12 = or i3 %tmp_11, 1
  %buffer_load_1 = load i64* %buffer_addr_1, align 8
  %start_pos2 = call i6 @_ssdm_op_BitConcatenate.i6.i3.i3(i3 %tmp_12, i3 0)
  %end_pos1 = or i6 %start_pos2, 7
  %tmp_34 = icmp ugt i6 %start_pos2, %end_pos1
  %tmp_35 = zext i6 %start_pos2 to i7
  %tmp_36 = zext i6 %end_pos1 to i7
  %tmp_37 = call i64 @llvm.part.select.i64(i64 %buffer_load_1, i32 63, i32 0)
  %tmp_38 = sub i7 %tmp_35, %tmp_36
  %tmp_39 = xor i7 %tmp_35, 63
  %tmp_40 = sub i7 %tmp_36, %tmp_35
  %tmp_41 = select i1 %tmp_34, i7 %tmp_38, i7 %tmp_40
  %tmp_42 = select i1 %tmp_34, i64 %tmp_37, i64 %buffer_load_1
  %tmp_43 = select i1 %tmp_34, i7 %tmp_39, i7 %tmp_35
  %tmp_44 = sub i7 63, %tmp_41
  %tmp_45 = zext i7 %tmp_43 to i64
  %tmp_46 = zext i7 %tmp_44 to i64
  %tmp_47 = lshr i64 %tmp_42, %tmp_45
  %tmp_48 = lshr i64 -1, %tmp_46
  %tmp_49 = and i64 %tmp_47, %tmp_48
  %tmp_50 = trunc i64 %tmp_49 to i8
  call void @_ssdm_op_Write.axis.volatile.i8P(i8* %outstream_channel_2_V, i8 %tmp_50)
  %empty_13 = call i32 (...)* @_ssdm_op_SpecRegionEnd([12 x i8]* @p_str7, i32 %tmp_10)
  %j_2 = add i13 2, %j1
  br label %.preheader

.loopexit.loopexit:                               ; preds = %.preheader
  br label %.loopexit

.loopexit.loopexit119:                            ; preds = %.preheader9
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit119, %.loopexit.loopexit
  %offset_1 = add i32 %offset1, 512
  br label %1

._crit_edge18:                                    ; preds = %1
  %tmp_3 = icmp eq i32 %inner_index_load, %tmp_1_FRAME_BUFFER_N_1
  %tmp_4 = add nsw i32 %inner_index_load, 1
  %storemerge = select i1 %tmp_3, i32 0, i32 %tmp_4
  store i32 %storemerge, i32* @inner_index, align 4
  ret void

mergeST:                                          ; preds = %._crit_edge17.new17
  store i32 %frame_buffer_dim_rea, i32* @FRAME_BUFFER_DIM_r, align 4
  br label %._crit_edge17.new

._crit_edge17.new:                                ; preds = %._crit_edge17.new17, %mergeST
  %tmp_5 = call i20 @_ssdm_op_PartSelect.i20.i32.i32.i32(i32 %frame_buffer_dim_FRA, i32 12, i32 31)
  br label %1

mergeST16:                                        ; preds = %._crit_edge17.new19
  store i32 %frame_buffer_offset_1, i32* @FRAME_OFFSET, align 4
  br label %._crit_edge17.new17

._crit_edge17.new17:                              ; preds = %._crit_edge17.new19, %mergeST16
  br i1 %p_FRAME_BUFFER_DIM_fl, label %mergeST, label %._crit_edge17.new

mergeST18:                                        ; preds = %._crit_edge17.new21
  store i8 %frame_buffer_number_s, i8* @FRAME_BUFFER_NUMBER_r, align 1
  br label %._crit_edge17.new19

._crit_edge17.new19:                              ; preds = %._crit_edge17.new21, %mergeST18
  br i1 %p_FRAME_OFFSET_flag, label %mergeST16, label %._crit_edge17.new17

mergeST20:                                        ; preds = %._crit_edge16
  store i32 %tmp_7_base_address, i32* @BASE_ADDRESS_r, align 4
  br label %._crit_edge17.new21

._crit_edge17.new21:                              ; preds = %mergeST20, %._crit_edge16
  br i1 %p_FRAME_BUFFER_NUMBER, label %mergeST18, label %._crit_edge17.new19
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

define weak i9 @_ssdm_op_PartSelect.i9.i13.i32.i32(i13, i32, i32) nounwind readnone {
entry:
  %empty = call i13 @llvm.part.select.i13(i13 %0, i32 %1, i32 %2)
  %empty_14 = trunc i13 %empty to i9
  ret i9 %empty_14
}

declare i8 @_ssdm_op_PartSelect.i8.i64.i32.i32(i64, i32, i32) nounwind readnone

declare i3 @_ssdm_op_PartSelect.i3.i13.i32.i32(i13, i32, i32) nounwind readnone

define weak i29 @_ssdm_op_PartSelect.i29.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_15 = trunc i32 %empty to i29
  ret i29 %empty_15
}

define weak i20 @_ssdm_op_PartSelect.i20.i32.i32.i32(i32, i32, i32) nounwind readnone {
entry:
  %empty = call i32 @llvm.part.select.i32(i32 %0, i32 %1, i32 %2)
  %empty_16 = trunc i32 %empty to i20
  ret i20 %empty_16
}

define weak i2 @_ssdm_op_PartSelect.i2.i13.i32.i32(i13, i32, i32) nounwind readnone {
entry:
  %empty = call i13 @llvm.part.select.i13(i13 %0, i32 %1, i32 %2)
  %empty_17 = trunc i13 %empty to i2
  ret i2 %empty_17
}

define weak i10 @_ssdm_op_PartSelect.i10.i13.i32.i32(i13, i32, i32) nounwind readnone {
entry:
  %empty = call i13 @llvm.part.select.i13(i13 %0, i32 %1, i32 %2)
  %empty_18 = trunc i13 %empty to i10
  ret i10 %empty_18
}

define weak i1 @_ssdm_op_BitSelect.i1.i13.i32(i13, i32) nounwind readnone {
entry:
  %empty = trunc i32 %1 to i13
  %empty_19 = shl i13 1, %empty
  %empty_20 = and i13 %0, %empty_19
  %empty_21 = icmp ne i13 %empty_20, 0
  ret i1 %empty_21
}

define weak i6 @_ssdm_op_BitConcatenate.i6.i3.i3(i3, i3) nounwind readnone {
entry:
  %empty = zext i3 %0 to i6
  %empty_22 = zext i3 %1 to i6
  %empty_23 = shl i6 %empty, 3
  %empty_24 = or i6 %empty_23, %empty_22
  ret i6 %empty_24
}

define weak i6 @_ssdm_op_BitConcatenate.i6.i2.i4(i2, i4) nounwind readnone {
entry:
  %empty = zext i2 %0 to i6
  %empty_25 = zext i4 %1 to i6
  %empty_26 = shl i6 %empty, 4
  %empty_27 = or i6 %empty_26, %empty_25
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
