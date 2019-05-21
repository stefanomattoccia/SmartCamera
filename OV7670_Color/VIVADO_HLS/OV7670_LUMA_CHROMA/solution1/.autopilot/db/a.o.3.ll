; ModuleID = 'D:/000_OFFICIAL_OV_VISION_PIPELINE_COLOR_2017/OV_7670/OV7670_Color/VIVADO_HLS/OV7670_LUMA_CHROMA/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@ov7670_LUMA_CHROMA_str = internal unnamed_addr constant [19 x i8] c"ov7670_LUMA_CHROMA\00" ; [#uses=1 type=[19 x i8]*]
@llvm_global_ctors_1 = appending global [1 x void ()*] [void ()* @_GLOBAL__I_a] ; [#uses=0 type=[1 x void ()*]*]
@llvm_global_ctors_0 = appending global [1 x i32] [i32 65535] ; [#uses=0 type=[1 x i32]*]
@grayscale_valid = internal unnamed_addr global i1 false, align 1 ; [#uses=3 type=i1*]
@p_str2 = private unnamed_addr constant [5 x i8] c"axis\00", align 1 ; [#uses=4 type=[5 x i8]*]
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=21 type=[1 x i8]*]
@p_str = private unnamed_addr constant [8 x i8] c"ap_none\00", align 1 ; [#uses=1 type=[8 x i8]*]

; [#uses=0]
define void @ov7670_LUMA_CHROMA(i8* %inStream_V_V, i8* %outStream_grayscale_V_V, i1 zeroext %enable_raw_stream, i8* %outStream_LUMA_V_V, i8* %outStream_CHROMA_V_V) {
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %inStream_V_V), !map !7
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %outStream_grayscale_V_V), !map !11
  call void (...)* @_ssdm_op_SpecBitsMap(i1 %enable_raw_stream), !map !15
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %outStream_LUMA_V_V), !map !21
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %outStream_CHROMA_V_V), !map !25
  call void (...)* @_ssdm_op_SpecTopModule([19 x i8]* @ov7670_LUMA_CHROMA_str) nounwind
  %enable_raw_stream_read = call i1 @_ssdm_op_Read.ap_none.i1(i1 %enable_raw_stream) ; [#uses=2 type=i1]
  call void @llvm.dbg.value(metadata !{i1 %enable_raw_stream_read}, i64 0, metadata !29), !dbg !734 ; [debug line = 3:89] [debug variable = enable_raw_stream]
  call void @llvm.dbg.value(metadata !{i8* %inStream_V_V}, i64 0, metadata !735), !dbg !746 ; [debug line = 3:39] [debug variable = inStream.V.V]
  call void @llvm.dbg.value(metadata !{i8* %outStream_grayscale_V_V}, i64 0, metadata !747), !dbg !749 ; [debug line = 3:63] [debug variable = outStream_grayscale.V.V]
  call void @llvm.dbg.value(metadata !{i1 %enable_raw_stream}, i64 0, metadata !29), !dbg !734 ; [debug line = 3:89] [debug variable = enable_raw_stream]
  call void @llvm.dbg.value(metadata !{i8* %outStream_LUMA_V_V}, i64 0, metadata !750), !dbg !752 ; [debug line = 3:122] [debug variable = outStream_LUMA.V.V]
  call void @llvm.dbg.value(metadata !{i8* %outStream_CHROMA_V_V}, i64 0, metadata !753), !dbg !755 ; [debug line = 3:152] [debug variable = outStream_CHROMA.V.V]
  call void (...)* @_ssdm_op_SpecInterface(i1 %enable_raw_stream, [8 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1) nounwind, !dbg !756 ; [debug line = 5:1]
  call void (...)* @_ssdm_op_SpecInterface(i8* %inStream_V_V, [5 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1) nounwind, !dbg !758 ; [debug line = 6:1]
  call void (...)* @_ssdm_op_SpecInterface(i8* %outStream_grayscale_V_V, [5 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1) nounwind, !dbg !759 ; [debug line = 7:1]
  call void (...)* @_ssdm_op_SpecInterface(i8* %outStream_LUMA_V_V, [5 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1) nounwind, !dbg !760 ; [debug line = 8:1]
  call void (...)* @_ssdm_op_SpecInterface(i8* %outStream_CHROMA_V_V, [5 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1) nounwind, !dbg !761 ; [debug line = 9:1]
  call void (...)* @_ssdm_op_SpecReset(i1* @grayscale_valid, i32 1, [1 x i8]* @p_str1) nounwind, !dbg !762 ; [debug line = 12:1]
  call void @llvm.dbg.value(metadata !{i8* %inStream_V_V}, i64 0, metadata !763), !dbg !768 ; [debug line = 129:56@15:14] [debug variable = stream<ap_uint<8> >.V.V]
  %tmp_V = call i8 @_ssdm_op_Read.axis.volatile.i8P(i8* %inStream_V_V), !dbg !770 ; [#uses=3 type=i8] [debug line = 131:9@15:14]
  call void @llvm.dbg.value(metadata !{i8 %tmp_V}, i64 0, metadata !772), !dbg !770 ; [debug line = 131:9@15:14] [debug variable = tmp.V]
  %grayscale_valid_load = load i1* @grayscale_valid, align 1, !dbg !774 ; [#uses=2 type=i1] [debug line = 16:2]
  br i1 %grayscale_valid_load, label %1, label %3, !dbg !774 ; [debug line = 16:2]

; <label>:1                                       ; preds = %0
  call void @llvm.dbg.value(metadata !{i8* %outStream_grayscale_V_V}, i64 0, metadata !775), !dbg !778 ; [debug line = 144:48@18:3] [debug variable = stream<ap_uint<8> >.V.V]
  call void @llvm.dbg.value(metadata !{i8 %tmp_V}, i64 0, metadata !781), !dbg !784 ; [debug line = 145:31@18:3] [debug variable = tmp.V]
  call void @_ssdm_op_Write.axis.volatile.i8P(i8* %outStream_grayscale_V_V, i8 %tmp_V), !dbg !785 ; [debug line = 146:9@18:3]
  br i1 %enable_raw_stream_read, label %2, label %._crit_edge, !dbg !786 ; [debug line = 20:3]

; <label>:2                                       ; preds = %1
  call void @llvm.dbg.value(metadata !{i8* %outStream_LUMA_V_V}, i64 0, metadata !775), !dbg !787 ; [debug line = 144:48@21:4] [debug variable = stream<ap_uint<8> >.V.V]
  call void @llvm.dbg.value(metadata !{i8 %tmp_V}, i64 0, metadata !781), !dbg !789 ; [debug line = 145:31@21:4] [debug variable = tmp.V]
  call void @_ssdm_op_Write.axis.volatile.i8P(i8* %outStream_LUMA_V_V, i8 %tmp_V), !dbg !790 ; [debug line = 146:9@21:4]
  br label %._crit_edge, !dbg !788                ; [debug line = 21:4]

._crit_edge:                                      ; preds = %2, %1
  br label %5, !dbg !791                          ; [debug line = 23:2]

; <label>:3                                       ; preds = %0
  br i1 %enable_raw_stream_read, label %4, label %._crit_edge5, !dbg !792 ; [debug line = 26:3]

; <label>:4                                       ; preds = %3
  call void @llvm.dbg.value(metadata !{i8* %outStream_CHROMA_V_V}, i64 0, metadata !775), !dbg !794 ; [debug line = 144:48@27:4] [debug variable = stream<ap_uint<8> >.V.V]
  call void @llvm.dbg.value(metadata !{i8 %tmp_V}, i64 0, metadata !781), !dbg !796 ; [debug line = 145:31@27:4] [debug variable = tmp.V]
  call void @_ssdm_op_Write.axis.volatile.i8P(i8* %outStream_CHROMA_V_V, i8 %tmp_V), !dbg !797 ; [debug line = 146:9@27:4]
  br label %._crit_edge5, !dbg !795               ; [debug line = 27:4]

._crit_edge5:                                     ; preds = %4, %3
  br label %5

; <label>:5                                       ; preds = %._crit_edge5, %._crit_edge
  %tmp_6 = xor i1 %grayscale_valid_load, true, !dbg !798 ; [#uses=1 type=i1] [debug line = 30:2]
  store i1 %tmp_6, i1* @grayscale_valid, align 1, !dbg !798 ; [debug line = 30:2]
  ret void, !dbg !799                             ; [debug line = 32:1]
}

; [#uses=14]
declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

; [#uses=3]
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

; [#uses=1]
define weak void @_ssdm_op_SpecReset(...) nounwind {
entry:
  ret void
}

; [#uses=5]
define weak void @_ssdm_op_SpecInterface(...) nounwind {
entry:
  ret void
}

; [#uses=5]
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
define weak i1 @_ssdm_op_Read.ap_none.i1(i1) {
entry:
  ret i1 %0
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
!10 = metadata !{metadata !"inStream.V.V", metadata !5, metadata !"uint8", i32 0, i32 7}
!11 = metadata !{metadata !12}
!12 = metadata !{i32 0, i32 7, metadata !13}
!13 = metadata !{metadata !14}
!14 = metadata !{metadata !"outStream_grayscale.V.V", metadata !5, metadata !"uint8", i32 0, i32 7}
!15 = metadata !{metadata !16}
!16 = metadata !{i32 0, i32 0, metadata !17}
!17 = metadata !{metadata !18}
!18 = metadata !{metadata !"enable_raw_stream", metadata !19, metadata !"bool", i32 0, i32 0}
!19 = metadata !{metadata !20}
!20 = metadata !{i32 0, i32 0, i32 0}
!21 = metadata !{metadata !22}
!22 = metadata !{i32 0, i32 7, metadata !23}
!23 = metadata !{metadata !24}
!24 = metadata !{metadata !"outStream_LUMA.V.V", metadata !5, metadata !"uint8", i32 0, i32 7}
!25 = metadata !{metadata !26}
!26 = metadata !{i32 0, i32 7, metadata !27}
!27 = metadata !{metadata !28}
!28 = metadata !{metadata !"outStream_CHROMA.V.V", metadata !5, metadata !"uint8", i32 0, i32 7}
!29 = metadata !{i32 786689, metadata !30, metadata !"enable_raw_stream", metadata !31, i32 50331651, metadata !68, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!30 = metadata !{i32 786478, i32 0, metadata !31, metadata !"ov7670_LUMA_CHROMA", metadata !"ov7670_LUMA_CHROMA", metadata !"_Z18ov7670_LUMA_CHROMARN3hls6streamI7ap_uintILi8EEEES4_bS4_S4_", metadata !31, i32 3, metadata !32, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !57, i32 4} ; [ DW_TAG_subprogram ]
!31 = metadata !{i32 786473, metadata !"OV7670_LUMA_CHROMA/ov7670_LUMA_CHROMA.cpp", metadata !"D:\5C000_OFFICIAL_OV_VISION_PIPELINE_COLOR_2017\5COV_7670\5COV7670_Color\5CVIVADO_HLS", null} ; [ DW_TAG_file_type ]
!32 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !33, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!33 = metadata !{null, metadata !34, metadata !34, metadata !68, metadata !34, metadata !34}
!34 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !35} ; [ DW_TAG_reference_type ]
!35 = metadata !{i32 786434, metadata !36, metadata !"stream<ap_uint<8> >", metadata !37, i32 79, i64 8, i64 8, i32 0, i32 0, null, metadata !38, i32 0, null, metadata !732} ; [ DW_TAG_class_type ]
!36 = metadata !{i32 786489, null, metadata !"hls", metadata !37, i32 69} ; [ DW_TAG_namespace ]
!37 = metadata !{i32 786473, metadata !"D:/Xilinx/Vivado_HLS/2016.2/common/technology/autopilot\5Chls_stream.h", metadata !"D:\5C000_OFFICIAL_OV_VISION_PIPELINE_COLOR_2017\5COV_7670\5COV7670_Color\5CVIVADO_HLS", null} ; [ DW_TAG_file_type ]
!38 = metadata !{metadata !39, metadata !692, metadata !696, metadata !699, metadata !704, metadata !707, metadata !710, metadata !713, metadata !717, metadata !718, metadata !719, metadata !722, metadata !725, metadata !726, metadata !729}
!39 = metadata !{i32 786445, metadata !35, metadata !"V", metadata !37, i32 163, i64 8, i64 8, i64 0, i32 0, metadata !40} ; [ DW_TAG_member ]
!40 = metadata !{i32 786434, null, metadata !"ap_uint<8>", metadata !41, i32 180, i64 8, i64 8, i32 0, i32 0, null, metadata !42, i32 0, null, metadata !691} ; [ DW_TAG_class_type ]
!41 = metadata !{i32 786473, metadata !"D:/Xilinx/Vivado_HLS/2016.2/common/technology/autopilot\5Cap_int.h", metadata !"D:\5C000_OFFICIAL_OV_VISION_PIPELINE_COLOR_2017\5COV_7670\5COV7670_Color\5CVIVADO_HLS", null} ; [ DW_TAG_file_type ]
!42 = metadata !{metadata !43, metadata !611, metadata !615, metadata !621, metadata !627, metadata !630, metadata !633, metadata !636, metadata !639, metadata !642, metadata !645, metadata !648, metadata !651, metadata !654, metadata !657, metadata !660, metadata !663, metadata !666, metadata !669, metadata !672, metadata !675, metadata !679, metadata !682, metadata !686, metadata !689, metadata !690}
!43 = metadata !{i32 786460, metadata !40, null, metadata !41, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !44} ; [ DW_TAG_inheritance ]
!44 = metadata !{i32 786434, null, metadata !"ap_int_base<8, false, true>", metadata !45, i32 1397, i64 8, i64 8, i32 0, i32 0, null, metadata !46, i32 0, null, metadata !609} ; [ DW_TAG_class_type ]
!45 = metadata !{i32 786473, metadata !"D:/Xilinx/Vivado_HLS/2016.2/common/technology/autopilot/ap_int_syn.h", metadata !"D:\5C000_OFFICIAL_OV_VISION_PIPELINE_COLOR_2017\5COV_7670\5COV7670_Color\5CVIVADO_HLS", null} ; [ DW_TAG_file_type ]
!46 = metadata !{metadata !47, metadata !69, metadata !73, metadata !81, metadata !87, metadata !90, metadata !94, metadata !98, metadata !102, metadata !106, metadata !109, metadata !113, metadata !117, metadata !121, metadata !126, metadata !131, metadata !135, metadata !139, metadata !145, metadata !148, metadata !152, metadata !155, metadata !158, metadata !159, metadata !163, metadata !166, metadata !169, metadata !172, metadata !175, metadata !178, metadata !181, metadata !184, metadata !187, metadata !190, metadata !193, metadata !196, metadata !206, metadata !209, metadata !212, metadata !215, metadata !218, metadata !221, metadata !224, metadata !227, metadata !230, metadata !233, metadata !236, metadata !239, metadata !242, metadata !243, metadata !247, metadata !250, metadata !251, metadata !252, metadata !253, metadata !254, metadata !255, metadata !258, metadata !259, metadata !262, metadata !263, metadata !264, metadata !265, metadata !266, metadata !267, metadata !270, metadata !271, metadata !272, metadata !275, metadata !276, metadata !279, metadata !280, metadata !569, metadata !573, metadata !574, metadata !577, metadata !578, metadata !582, metadata !583, metadata !584, metadata !585, metadata !588, metadata !589, metadata !590, metadata !591, metadata !592, metadata !593, metadata !594, metadata !595, metadata !596, metadata !597, metadata !598, metadata !599, metadata !602, metadata !605, metadata !608}
!47 = metadata !{i32 786460, metadata !44, null, metadata !45, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !48} ; [ DW_TAG_inheritance ]
!48 = metadata !{i32 786434, null, metadata !"ssdm_int<8 + 1024 * 0, false>", metadata !49, i32 10, i64 8, i64 8, i32 0, i32 0, null, metadata !50, i32 0, null, metadata !64} ; [ DW_TAG_class_type ]
!49 = metadata !{i32 786473, metadata !"D:/Xilinx/Vivado_HLS/2016.2/common/technology/autopilot/etc/autopilot_dt.def", metadata !"D:\5C000_OFFICIAL_OV_VISION_PIPELINE_COLOR_2017\5COV_7670\5COV7670_Color\5CVIVADO_HLS", null} ; [ DW_TAG_file_type ]
!50 = metadata !{metadata !51, metadata !53, metadata !59}
!51 = metadata !{i32 786445, metadata !48, metadata !"V", metadata !49, i32 10, i64 8, i64 8, i64 0, i32 0, metadata !52} ; [ DW_TAG_member ]
!52 = metadata !{i32 786468, null, metadata !"uint8", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!53 = metadata !{i32 786478, i32 0, metadata !48, metadata !"ssdm_int", metadata !"ssdm_int", metadata !"", metadata !49, i32 10, metadata !54, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 10} ; [ DW_TAG_subprogram ]
!54 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !55, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!55 = metadata !{null, metadata !56}
!56 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !48} ; [ DW_TAG_pointer_type ]
!57 = metadata !{metadata !58}
!58 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!59 = metadata !{i32 786478, i32 0, metadata !48, metadata !"ssdm_int", metadata !"ssdm_int", metadata !"", metadata !49, i32 10, metadata !60, i1 false, i1 false, i32 0, i32 0, null, i32 320, i1 false, null, null, i32 0, metadata !57, i32 10} ; [ DW_TAG_subprogram ]
!60 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !61, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!61 = metadata !{null, metadata !56, metadata !62}
!62 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !63} ; [ DW_TAG_reference_type ]
!63 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !48} ; [ DW_TAG_const_type ]
!64 = metadata !{metadata !65, metadata !67}
!65 = metadata !{i32 786480, null, metadata !"_AP_N", metadata !66, i64 8, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!66 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!67 = metadata !{i32 786480, null, metadata !"_AP_S", metadata !68, i64 0, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!68 = metadata !{i32 786468, null, metadata !"bool", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 2} ; [ DW_TAG_base_type ]
!69 = metadata !{i32 786478, i32 0, metadata !44, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !45, i32 1438, metadata !70, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 1438} ; [ DW_TAG_subprogram ]
!70 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !71, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!71 = metadata !{null, metadata !72}
!72 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !44} ; [ DW_TAG_pointer_type ]
!73 = metadata !{i32 786478, i32 0, metadata !44, metadata !"ap_int_base<8, false>", metadata !"ap_int_base<8, false>", metadata !"", metadata !45, i32 1450, metadata !74, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !78, i32 0, metadata !57, i32 1450} ; [ DW_TAG_subprogram ]
!74 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !75, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!75 = metadata !{null, metadata !72, metadata !76}
!76 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !77} ; [ DW_TAG_reference_type ]
!77 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !44} ; [ DW_TAG_const_type ]
!78 = metadata !{metadata !79, metadata !80}
!79 = metadata !{i32 786480, null, metadata !"_AP_W2", metadata !66, i64 8, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!80 = metadata !{i32 786480, null, metadata !"_AP_S2", metadata !68, i64 0, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!81 = metadata !{i32 786478, i32 0, metadata !44, metadata !"ap_int_base<8, false>", metadata !"ap_int_base<8, false>", metadata !"", metadata !45, i32 1453, metadata !82, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !78, i32 0, metadata !57, i32 1453} ; [ DW_TAG_subprogram ]
!82 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !83, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!83 = metadata !{null, metadata !72, metadata !84}
!84 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !85} ; [ DW_TAG_reference_type ]
!85 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !86} ; [ DW_TAG_const_type ]
!86 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !44} ; [ DW_TAG_volatile_type ]
!87 = metadata !{i32 786478, i32 0, metadata !44, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !45, i32 1460, metadata !88, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !57, i32 1460} ; [ DW_TAG_subprogram ]
!88 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !89, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!89 = metadata !{null, metadata !72, metadata !68}
!90 = metadata !{i32 786478, i32 0, metadata !44, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !45, i32 1461, metadata !91, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !57, i32 1461} ; [ DW_TAG_subprogram ]
!91 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !92, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!92 = metadata !{null, metadata !72, metadata !93}
!93 = metadata !{i32 786468, null, metadata !"signed char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!94 = metadata !{i32 786478, i32 0, metadata !44, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !45, i32 1462, metadata !95, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !57, i32 1462} ; [ DW_TAG_subprogram ]
!95 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !96, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!96 = metadata !{null, metadata !72, metadata !97}
!97 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!98 = metadata !{i32 786478, i32 0, metadata !44, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !45, i32 1463, metadata !99, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !57, i32 1463} ; [ DW_TAG_subprogram ]
!99 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !100, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!100 = metadata !{null, metadata !72, metadata !101}
!101 = metadata !{i32 786468, null, metadata !"short", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!102 = metadata !{i32 786478, i32 0, metadata !44, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !45, i32 1464, metadata !103, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !57, i32 1464} ; [ DW_TAG_subprogram ]
!103 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !104, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!104 = metadata !{null, metadata !72, metadata !105}
!105 = metadata !{i32 786468, null, metadata !"unsigned short", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!106 = metadata !{i32 786478, i32 0, metadata !44, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !45, i32 1465, metadata !107, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !57, i32 1465} ; [ DW_TAG_subprogram ]
!107 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !108, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!108 = metadata !{null, metadata !72, metadata !66}
!109 = metadata !{i32 786478, i32 0, metadata !44, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !45, i32 1466, metadata !110, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !57, i32 1466} ; [ DW_TAG_subprogram ]
!110 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !111, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!111 = metadata !{null, metadata !72, metadata !112}
!112 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!113 = metadata !{i32 786478, i32 0, metadata !44, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !45, i32 1467, metadata !114, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !57, i32 1467} ; [ DW_TAG_subprogram ]
!114 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !115, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!115 = metadata !{null, metadata !72, metadata !116}
!116 = metadata !{i32 786468, null, metadata !"long int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!117 = metadata !{i32 786478, i32 0, metadata !44, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !45, i32 1468, metadata !118, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !57, i32 1468} ; [ DW_TAG_subprogram ]
!118 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !119, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!119 = metadata !{null, metadata !72, metadata !120}
!120 = metadata !{i32 786468, null, metadata !"long unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!121 = metadata !{i32 786478, i32 0, metadata !44, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !45, i32 1469, metadata !122, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !57, i32 1469} ; [ DW_TAG_subprogram ]
!122 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !123, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!123 = metadata !{null, metadata !72, metadata !124}
!124 = metadata !{i32 786454, null, metadata !"ap_slong", metadata !45, i32 111, i64 0, i64 0, i64 0, i32 0, metadata !125} ; [ DW_TAG_typedef ]
!125 = metadata !{i32 786468, null, metadata !"long long int", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!126 = metadata !{i32 786478, i32 0, metadata !44, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !45, i32 1470, metadata !127, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !57, i32 1470} ; [ DW_TAG_subprogram ]
!127 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !128, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!128 = metadata !{null, metadata !72, metadata !129}
!129 = metadata !{i32 786454, null, metadata !"ap_ulong", metadata !45, i32 110, i64 0, i64 0, i64 0, i32 0, metadata !130} ; [ DW_TAG_typedef ]
!130 = metadata !{i32 786468, null, metadata !"long long unsigned int", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!131 = metadata !{i32 786478, i32 0, metadata !44, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !45, i32 1471, metadata !132, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !57, i32 1471} ; [ DW_TAG_subprogram ]
!132 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !133, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!133 = metadata !{null, metadata !72, metadata !134}
!134 = metadata !{i32 786468, null, metadata !"float", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!135 = metadata !{i32 786478, i32 0, metadata !44, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !45, i32 1472, metadata !136, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !57, i32 1472} ; [ DW_TAG_subprogram ]
!136 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !137, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!137 = metadata !{null, metadata !72, metadata !138}
!138 = metadata !{i32 786468, null, metadata !"double", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!139 = metadata !{i32 786478, i32 0, metadata !44, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !45, i32 1499, metadata !140, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 1499} ; [ DW_TAG_subprogram ]
!140 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !141, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!141 = metadata !{null, metadata !72, metadata !142}
!142 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !143} ; [ DW_TAG_pointer_type ]
!143 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !144} ; [ DW_TAG_const_type ]
!144 = metadata !{i32 786468, null, metadata !"char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!145 = metadata !{i32 786478, i32 0, metadata !44, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !45, i32 1506, metadata !146, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 1506} ; [ DW_TAG_subprogram ]
!146 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !147, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!147 = metadata !{null, metadata !72, metadata !142, metadata !93}
!148 = metadata !{i32 786478, i32 0, metadata !44, metadata !"read", metadata !"read", metadata !"_ZNV11ap_int_baseILi8ELb0ELb1EE4readEv", metadata !45, i32 1527, metadata !149, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 1527} ; [ DW_TAG_subprogram ]
!149 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !150, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!150 = metadata !{metadata !44, metadata !151}
!151 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !86} ; [ DW_TAG_pointer_type ]
!152 = metadata !{i32 786478, i32 0, metadata !44, metadata !"write", metadata !"write", metadata !"_ZNV11ap_int_baseILi8ELb0ELb1EE5writeERKS0_", metadata !45, i32 1533, metadata !153, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 1533} ; [ DW_TAG_subprogram ]
!153 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !154, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!154 = metadata !{null, metadata !151, metadata !76}
!155 = metadata !{i32 786478, i32 0, metadata !44, metadata !"operator=", metadata !"operator=", metadata !"_ZNV11ap_int_baseILi8ELb0ELb1EEaSERVKS0_", metadata !45, i32 1545, metadata !156, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 1545} ; [ DW_TAG_subprogram ]
!156 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !157, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!157 = metadata !{null, metadata !151, metadata !84}
!158 = metadata !{i32 786478, i32 0, metadata !44, metadata !"operator=", metadata !"operator=", metadata !"_ZNV11ap_int_baseILi8ELb0ELb1EEaSERKS0_", metadata !45, i32 1554, metadata !153, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 1554} ; [ DW_TAG_subprogram ]
!159 = metadata !{i32 786478, i32 0, metadata !44, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi8ELb0ELb1EEaSERVKS0_", metadata !45, i32 1577, metadata !160, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 1577} ; [ DW_TAG_subprogram ]
!160 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !161, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!161 = metadata !{metadata !162, metadata !72, metadata !84}
!162 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !44} ; [ DW_TAG_reference_type ]
!163 = metadata !{i32 786478, i32 0, metadata !44, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi8ELb0ELb1EEaSERKS0_", metadata !45, i32 1582, metadata !164, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 1582} ; [ DW_TAG_subprogram ]
!164 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !165, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!165 = metadata !{metadata !162, metadata !72, metadata !76}
!166 = metadata !{i32 786478, i32 0, metadata !44, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi8ELb0ELb1EEaSEPKc", metadata !45, i32 1586, metadata !167, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 1586} ; [ DW_TAG_subprogram ]
!167 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !168, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!168 = metadata !{metadata !162, metadata !72, metadata !142}
!169 = metadata !{i32 786478, i32 0, metadata !44, metadata !"set", metadata !"set", metadata !"_ZN11ap_int_baseILi8ELb0ELb1EE3setEPKca", metadata !45, i32 1594, metadata !170, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 1594} ; [ DW_TAG_subprogram ]
!170 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !171, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!171 = metadata !{metadata !162, metadata !72, metadata !142, metadata !93}
!172 = metadata !{i32 786478, i32 0, metadata !44, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi8ELb0ELb1EEaSEa", metadata !45, i32 1608, metadata !173, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 1608} ; [ DW_TAG_subprogram ]
!173 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !174, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!174 = metadata !{metadata !162, metadata !72, metadata !93}
!175 = metadata !{i32 786478, i32 0, metadata !44, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi8ELb0ELb1EEaSEh", metadata !45, i32 1609, metadata !176, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 1609} ; [ DW_TAG_subprogram ]
!176 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !177, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!177 = metadata !{metadata !162, metadata !72, metadata !97}
!178 = metadata !{i32 786478, i32 0, metadata !44, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi8ELb0ELb1EEaSEs", metadata !45, i32 1610, metadata !179, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 1610} ; [ DW_TAG_subprogram ]
!179 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !180, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!180 = metadata !{metadata !162, metadata !72, metadata !101}
!181 = metadata !{i32 786478, i32 0, metadata !44, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi8ELb0ELb1EEaSEt", metadata !45, i32 1611, metadata !182, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 1611} ; [ DW_TAG_subprogram ]
!182 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !183, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!183 = metadata !{metadata !162, metadata !72, metadata !105}
!184 = metadata !{i32 786478, i32 0, metadata !44, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi8ELb0ELb1EEaSEi", metadata !45, i32 1612, metadata !185, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 1612} ; [ DW_TAG_subprogram ]
!185 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !186, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!186 = metadata !{metadata !162, metadata !72, metadata !66}
!187 = metadata !{i32 786478, i32 0, metadata !44, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi8ELb0ELb1EEaSEj", metadata !45, i32 1613, metadata !188, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 1613} ; [ DW_TAG_subprogram ]
!188 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !189, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!189 = metadata !{metadata !162, metadata !72, metadata !112}
!190 = metadata !{i32 786478, i32 0, metadata !44, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi8ELb0ELb1EEaSEx", metadata !45, i32 1614, metadata !191, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 1614} ; [ DW_TAG_subprogram ]
!191 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !192, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!192 = metadata !{metadata !162, metadata !72, metadata !124}
!193 = metadata !{i32 786478, i32 0, metadata !44, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi8ELb0ELb1EEaSEy", metadata !45, i32 1615, metadata !194, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 1615} ; [ DW_TAG_subprogram ]
!194 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !195, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!195 = metadata !{metadata !162, metadata !72, metadata !129}
!196 = metadata !{i32 786478, i32 0, metadata !44, metadata !"operator unsigned char", metadata !"operator unsigned char", metadata !"_ZNK11ap_int_baseILi8ELb0ELb1EEcvhEv", metadata !45, i32 1653, metadata !197, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 1653} ; [ DW_TAG_subprogram ]
!197 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !198, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!198 = metadata !{metadata !199, metadata !205}
!199 = metadata !{i32 786454, metadata !44, metadata !"RetType", metadata !45, i32 1402, i64 0, i64 0, i64 0, i32 0, metadata !200} ; [ DW_TAG_typedef ]
!200 = metadata !{i32 786454, metadata !201, metadata !"Type", metadata !45, i32 1370, i64 0, i64 0, i64 0, i32 0, metadata !97} ; [ DW_TAG_typedef ]
!201 = metadata !{i32 786434, null, metadata !"retval<1, false>", metadata !45, i32 1369, i64 8, i64 8, i32 0, i32 0, null, metadata !202, i32 0, null, metadata !203} ; [ DW_TAG_class_type ]
!202 = metadata !{i32 0}
!203 = metadata !{metadata !204, metadata !67}
!204 = metadata !{i32 786480, null, metadata !"_AP_N", metadata !66, i64 1, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!205 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !77} ; [ DW_TAG_pointer_type ]
!206 = metadata !{i32 786478, i32 0, metadata !44, metadata !"to_bool", metadata !"to_bool", metadata !"_ZNK11ap_int_baseILi8ELb0ELb1EE7to_boolEv", metadata !45, i32 1659, metadata !207, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 1659} ; [ DW_TAG_subprogram ]
!207 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !208, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!208 = metadata !{metadata !68, metadata !205}
!209 = metadata !{i32 786478, i32 0, metadata !44, metadata !"to_uchar", metadata !"to_uchar", metadata !"_ZNK11ap_int_baseILi8ELb0ELb1EE8to_ucharEv", metadata !45, i32 1660, metadata !210, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 1660} ; [ DW_TAG_subprogram ]
!210 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !211, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!211 = metadata !{metadata !97, metadata !205}
!212 = metadata !{i32 786478, i32 0, metadata !44, metadata !"to_char", metadata !"to_char", metadata !"_ZNK11ap_int_baseILi8ELb0ELb1EE7to_charEv", metadata !45, i32 1661, metadata !213, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 1661} ; [ DW_TAG_subprogram ]
!213 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !214, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!214 = metadata !{metadata !93, metadata !205}
!215 = metadata !{i32 786478, i32 0, metadata !44, metadata !"to_ushort", metadata !"to_ushort", metadata !"_ZNK11ap_int_baseILi8ELb0ELb1EE9to_ushortEv", metadata !45, i32 1662, metadata !216, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 1662} ; [ DW_TAG_subprogram ]
!216 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !217, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!217 = metadata !{metadata !105, metadata !205}
!218 = metadata !{i32 786478, i32 0, metadata !44, metadata !"to_short", metadata !"to_short", metadata !"_ZNK11ap_int_baseILi8ELb0ELb1EE8to_shortEv", metadata !45, i32 1663, metadata !219, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 1663} ; [ DW_TAG_subprogram ]
!219 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !220, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!220 = metadata !{metadata !101, metadata !205}
!221 = metadata !{i32 786478, i32 0, metadata !44, metadata !"to_int", metadata !"to_int", metadata !"_ZNK11ap_int_baseILi8ELb0ELb1EE6to_intEv", metadata !45, i32 1664, metadata !222, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 1664} ; [ DW_TAG_subprogram ]
!222 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !223, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!223 = metadata !{metadata !66, metadata !205}
!224 = metadata !{i32 786478, i32 0, metadata !44, metadata !"to_uint", metadata !"to_uint", metadata !"_ZNK11ap_int_baseILi8ELb0ELb1EE7to_uintEv", metadata !45, i32 1665, metadata !225, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 1665} ; [ DW_TAG_subprogram ]
!225 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !226, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!226 = metadata !{metadata !112, metadata !205}
!227 = metadata !{i32 786478, i32 0, metadata !44, metadata !"to_long", metadata !"to_long", metadata !"_ZNK11ap_int_baseILi8ELb0ELb1EE7to_longEv", metadata !45, i32 1666, metadata !228, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 1666} ; [ DW_TAG_subprogram ]
!228 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !229, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!229 = metadata !{metadata !116, metadata !205}
!230 = metadata !{i32 786478, i32 0, metadata !44, metadata !"to_ulong", metadata !"to_ulong", metadata !"_ZNK11ap_int_baseILi8ELb0ELb1EE8to_ulongEv", metadata !45, i32 1667, metadata !231, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 1667} ; [ DW_TAG_subprogram ]
!231 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !232, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!232 = metadata !{metadata !120, metadata !205}
!233 = metadata !{i32 786478, i32 0, metadata !44, metadata !"to_int64", metadata !"to_int64", metadata !"_ZNK11ap_int_baseILi8ELb0ELb1EE8to_int64Ev", metadata !45, i32 1668, metadata !234, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 1668} ; [ DW_TAG_subprogram ]
!234 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !235, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!235 = metadata !{metadata !124, metadata !205}
!236 = metadata !{i32 786478, i32 0, metadata !44, metadata !"to_uint64", metadata !"to_uint64", metadata !"_ZNK11ap_int_baseILi8ELb0ELb1EE9to_uint64Ev", metadata !45, i32 1669, metadata !237, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 1669} ; [ DW_TAG_subprogram ]
!237 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !238, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!238 = metadata !{metadata !129, metadata !205}
!239 = metadata !{i32 786478, i32 0, metadata !44, metadata !"to_double", metadata !"to_double", metadata !"_ZNK11ap_int_baseILi8ELb0ELb1EE9to_doubleEv", metadata !45, i32 1670, metadata !240, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 1670} ; [ DW_TAG_subprogram ]
!240 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !241, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!241 = metadata !{metadata !138, metadata !205}
!242 = metadata !{i32 786478, i32 0, metadata !44, metadata !"length", metadata !"length", metadata !"_ZNK11ap_int_baseILi8ELb0ELb1EE6lengthEv", metadata !45, i32 1684, metadata !222, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 1684} ; [ DW_TAG_subprogram ]
!243 = metadata !{i32 786478, i32 0, metadata !44, metadata !"length", metadata !"length", metadata !"_ZNVK11ap_int_baseILi8ELb0ELb1EE6lengthEv", metadata !45, i32 1685, metadata !244, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 1685} ; [ DW_TAG_subprogram ]
!244 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !245, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!245 = metadata !{metadata !66, metadata !246}
!246 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !85} ; [ DW_TAG_pointer_type ]
!247 = metadata !{i32 786478, i32 0, metadata !44, metadata !"reverse", metadata !"reverse", metadata !"_ZN11ap_int_baseILi8ELb0ELb1EE7reverseEv", metadata !45, i32 1690, metadata !248, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 1690} ; [ DW_TAG_subprogram ]
!248 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !249, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!249 = metadata !{metadata !162, metadata !72}
!250 = metadata !{i32 786478, i32 0, metadata !44, metadata !"iszero", metadata !"iszero", metadata !"_ZNK11ap_int_baseILi8ELb0ELb1EE6iszeroEv", metadata !45, i32 1696, metadata !207, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 1696} ; [ DW_TAG_subprogram ]
!251 = metadata !{i32 786478, i32 0, metadata !44, metadata !"is_zero", metadata !"is_zero", metadata !"_ZNK11ap_int_baseILi8ELb0ELb1EE7is_zeroEv", metadata !45, i32 1701, metadata !207, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 1701} ; [ DW_TAG_subprogram ]
!252 = metadata !{i32 786478, i32 0, metadata !44, metadata !"sign", metadata !"sign", metadata !"_ZNK11ap_int_baseILi8ELb0ELb1EE4signEv", metadata !45, i32 1706, metadata !207, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 1706} ; [ DW_TAG_subprogram ]
!253 = metadata !{i32 786478, i32 0, metadata !44, metadata !"clear", metadata !"clear", metadata !"_ZN11ap_int_baseILi8ELb0ELb1EE5clearEi", metadata !45, i32 1714, metadata !107, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 1714} ; [ DW_TAG_subprogram ]
!254 = metadata !{i32 786478, i32 0, metadata !44, metadata !"invert", metadata !"invert", metadata !"_ZN11ap_int_baseILi8ELb0ELb1EE6invertEi", metadata !45, i32 1720, metadata !107, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 1720} ; [ DW_TAG_subprogram ]
!255 = metadata !{i32 786478, i32 0, metadata !44, metadata !"test", metadata !"test", metadata !"_ZNK11ap_int_baseILi8ELb0ELb1EE4testEi", metadata !45, i32 1728, metadata !256, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 1728} ; [ DW_TAG_subprogram ]
!256 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !257, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!257 = metadata !{metadata !68, metadata !205, metadata !66}
!258 = metadata !{i32 786478, i32 0, metadata !44, metadata !"set", metadata !"set", metadata !"_ZN11ap_int_baseILi8ELb0ELb1EE3setEi", metadata !45, i32 1734, metadata !107, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 1734} ; [ DW_TAG_subprogram ]
!259 = metadata !{i32 786478, i32 0, metadata !44, metadata !"set", metadata !"set", metadata !"_ZN11ap_int_baseILi8ELb0ELb1EE3setEib", metadata !45, i32 1740, metadata !260, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 1740} ; [ DW_TAG_subprogram ]
!260 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !261, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!261 = metadata !{null, metadata !72, metadata !66, metadata !68}
!262 = metadata !{i32 786478, i32 0, metadata !44, metadata !"lrotate", metadata !"lrotate", metadata !"_ZN11ap_int_baseILi8ELb0ELb1EE7lrotateEi", metadata !45, i32 1747, metadata !107, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 1747} ; [ DW_TAG_subprogram ]
!263 = metadata !{i32 786478, i32 0, metadata !44, metadata !"rrotate", metadata !"rrotate", metadata !"_ZN11ap_int_baseILi8ELb0ELb1EE7rrotateEi", metadata !45, i32 1756, metadata !107, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 1756} ; [ DW_TAG_subprogram ]
!264 = metadata !{i32 786478, i32 0, metadata !44, metadata !"set_bit", metadata !"set_bit", metadata !"_ZN11ap_int_baseILi8ELb0ELb1EE7set_bitEib", metadata !45, i32 1764, metadata !260, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 1764} ; [ DW_TAG_subprogram ]
!265 = metadata !{i32 786478, i32 0, metadata !44, metadata !"get_bit", metadata !"get_bit", metadata !"_ZNK11ap_int_baseILi8ELb0ELb1EE7get_bitEi", metadata !45, i32 1769, metadata !256, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 1769} ; [ DW_TAG_subprogram ]
!266 = metadata !{i32 786478, i32 0, metadata !44, metadata !"b_not", metadata !"b_not", metadata !"_ZN11ap_int_baseILi8ELb0ELb1EE5b_notEv", metadata !45, i32 1774, metadata !70, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 1774} ; [ DW_TAG_subprogram ]
!267 = metadata !{i32 786478, i32 0, metadata !44, metadata !"countLeadingZeros", metadata !"countLeadingZeros", metadata !"_ZN11ap_int_baseILi8ELb0ELb1EE17countLeadingZerosEv", metadata !45, i32 1781, metadata !268, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 1781} ; [ DW_TAG_subprogram ]
!268 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !269, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!269 = metadata !{metadata !66, metadata !72}
!270 = metadata !{i32 786478, i32 0, metadata !44, metadata !"operator++", metadata !"operator++", metadata !"_ZN11ap_int_baseILi8ELb0ELb1EEppEv", metadata !45, i32 1838, metadata !248, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 1838} ; [ DW_TAG_subprogram ]
!271 = metadata !{i32 786478, i32 0, metadata !44, metadata !"operator--", metadata !"operator--", metadata !"_ZN11ap_int_baseILi8ELb0ELb1EEmmEv", metadata !45, i32 1842, metadata !248, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 1842} ; [ DW_TAG_subprogram ]
!272 = metadata !{i32 786478, i32 0, metadata !44, metadata !"operator++", metadata !"operator++", metadata !"_ZN11ap_int_baseILi8ELb0ELb1EEppEi", metadata !45, i32 1850, metadata !273, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 1850} ; [ DW_TAG_subprogram ]
!273 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !274, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!274 = metadata !{metadata !77, metadata !72, metadata !66}
!275 = metadata !{i32 786478, i32 0, metadata !44, metadata !"operator--", metadata !"operator--", metadata !"_ZN11ap_int_baseILi8ELb0ELb1EEmmEi", metadata !45, i32 1855, metadata !273, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 1855} ; [ DW_TAG_subprogram ]
!276 = metadata !{i32 786478, i32 0, metadata !44, metadata !"operator+", metadata !"operator+", metadata !"_ZNK11ap_int_baseILi8ELb0ELb1EEpsEv", metadata !45, i32 1864, metadata !277, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 1864} ; [ DW_TAG_subprogram ]
!277 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !278, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!278 = metadata !{metadata !44, metadata !205}
!279 = metadata !{i32 786478, i32 0, metadata !44, metadata !"operator!", metadata !"operator!", metadata !"_ZNK11ap_int_baseILi8ELb0ELb1EEntEv", metadata !45, i32 1870, metadata !207, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 1870} ; [ DW_TAG_subprogram ]
!280 = metadata !{i32 786478, i32 0, metadata !44, metadata !"operator-", metadata !"operator-", metadata !"_ZNK11ap_int_baseILi8ELb0ELb1EEngEv", metadata !45, i32 1875, metadata !281, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 1875} ; [ DW_TAG_subprogram ]
!281 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !282, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!282 = metadata !{metadata !283, metadata !205}
!283 = metadata !{i32 786434, null, metadata !"ap_int_base<9, true, true>", metadata !45, i32 1397, i64 16, i64 16, i32 0, i32 0, null, metadata !284, i32 0, null, metadata !567} ; [ DW_TAG_class_type ]
!284 = metadata !{metadata !285, metadata !297, metadata !301, metadata !304, metadata !307, metadata !310, metadata !313, metadata !316, metadata !319, metadata !322, metadata !325, metadata !328, metadata !331, metadata !334, metadata !337, metadata !340, metadata !343, metadata !346, metadata !351, metadata !356, metadata !361, metadata !362, metadata !366, metadata !369, metadata !372, metadata !375, metadata !378, metadata !381, metadata !384, metadata !387, metadata !390, metadata !393, metadata !396, metadata !399, metadata !408, metadata !411, metadata !414, metadata !417, metadata !420, metadata !423, metadata !426, metadata !429, metadata !432, metadata !435, metadata !438, metadata !441, metadata !444, metadata !445, metadata !449, metadata !452, metadata !453, metadata !454, metadata !455, metadata !456, metadata !457, metadata !460, metadata !461, metadata !464, metadata !465, metadata !466, metadata !467, metadata !468, metadata !469, metadata !472, metadata !473, metadata !474, metadata !477, metadata !478, metadata !481, metadata !482, metadata !486, metadata !490, metadata !491, metadata !494, metadata !495, metadata !534, metadata !535, metadata !536, metadata !537, metadata !540, metadata !541, metadata !542, metadata !543, metadata !544, metadata !545, metadata !546, metadata !547, metadata !548, metadata !549, metadata !550, metadata !551, metadata !561, metadata !564}
!285 = metadata !{i32 786460, metadata !283, null, metadata !45, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !286} ; [ DW_TAG_inheritance ]
!286 = metadata !{i32 786434, null, metadata !"ssdm_int<9 + 1024 * 0, true>", metadata !49, i32 11, i64 16, i64 16, i32 0, i32 0, null, metadata !287, i32 0, null, metadata !294} ; [ DW_TAG_class_type ]
!287 = metadata !{metadata !288, metadata !290}
!288 = metadata !{i32 786445, metadata !286, metadata !"V", metadata !49, i32 11, i64 9, i64 16, i64 0, i32 0, metadata !289} ; [ DW_TAG_member ]
!289 = metadata !{i32 786468, null, metadata !"int9", null, i32 0, i64 9, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!290 = metadata !{i32 786478, i32 0, metadata !286, metadata !"ssdm_int", metadata !"ssdm_int", metadata !"", metadata !49, i32 11, metadata !291, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 11} ; [ DW_TAG_subprogram ]
!291 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !292, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!292 = metadata !{null, metadata !293}
!293 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !286} ; [ DW_TAG_pointer_type ]
!294 = metadata !{metadata !295, metadata !296}
!295 = metadata !{i32 786480, null, metadata !"_AP_N", metadata !66, i64 9, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!296 = metadata !{i32 786480, null, metadata !"_AP_S", metadata !68, i64 1, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!297 = metadata !{i32 786478, i32 0, metadata !283, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !45, i32 1438, metadata !298, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 1438} ; [ DW_TAG_subprogram ]
!298 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !299, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!299 = metadata !{null, metadata !300}
!300 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !283} ; [ DW_TAG_pointer_type ]
!301 = metadata !{i32 786478, i32 0, metadata !283, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !45, i32 1460, metadata !302, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !57, i32 1460} ; [ DW_TAG_subprogram ]
!302 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !303, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!303 = metadata !{null, metadata !300, metadata !68}
!304 = metadata !{i32 786478, i32 0, metadata !283, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !45, i32 1461, metadata !305, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !57, i32 1461} ; [ DW_TAG_subprogram ]
!305 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !306, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!306 = metadata !{null, metadata !300, metadata !93}
!307 = metadata !{i32 786478, i32 0, metadata !283, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !45, i32 1462, metadata !308, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !57, i32 1462} ; [ DW_TAG_subprogram ]
!308 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !309, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!309 = metadata !{null, metadata !300, metadata !97}
!310 = metadata !{i32 786478, i32 0, metadata !283, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !45, i32 1463, metadata !311, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !57, i32 1463} ; [ DW_TAG_subprogram ]
!311 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !312, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!312 = metadata !{null, metadata !300, metadata !101}
!313 = metadata !{i32 786478, i32 0, metadata !283, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !45, i32 1464, metadata !314, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !57, i32 1464} ; [ DW_TAG_subprogram ]
!314 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !315, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!315 = metadata !{null, metadata !300, metadata !105}
!316 = metadata !{i32 786478, i32 0, metadata !283, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !45, i32 1465, metadata !317, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !57, i32 1465} ; [ DW_TAG_subprogram ]
!317 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !318, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!318 = metadata !{null, metadata !300, metadata !66}
!319 = metadata !{i32 786478, i32 0, metadata !283, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !45, i32 1466, metadata !320, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !57, i32 1466} ; [ DW_TAG_subprogram ]
!320 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !321, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!321 = metadata !{null, metadata !300, metadata !112}
!322 = metadata !{i32 786478, i32 0, metadata !283, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !45, i32 1467, metadata !323, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !57, i32 1467} ; [ DW_TAG_subprogram ]
!323 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !324, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!324 = metadata !{null, metadata !300, metadata !116}
!325 = metadata !{i32 786478, i32 0, metadata !283, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !45, i32 1468, metadata !326, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !57, i32 1468} ; [ DW_TAG_subprogram ]
!326 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !327, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!327 = metadata !{null, metadata !300, metadata !120}
!328 = metadata !{i32 786478, i32 0, metadata !283, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !45, i32 1469, metadata !329, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !57, i32 1469} ; [ DW_TAG_subprogram ]
!329 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !330, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!330 = metadata !{null, metadata !300, metadata !124}
!331 = metadata !{i32 786478, i32 0, metadata !283, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !45, i32 1470, metadata !332, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !57, i32 1470} ; [ DW_TAG_subprogram ]
!332 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !333, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!333 = metadata !{null, metadata !300, metadata !129}
!334 = metadata !{i32 786478, i32 0, metadata !283, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !45, i32 1471, metadata !335, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !57, i32 1471} ; [ DW_TAG_subprogram ]
!335 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !336, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!336 = metadata !{null, metadata !300, metadata !134}
!337 = metadata !{i32 786478, i32 0, metadata !283, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !45, i32 1472, metadata !338, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !57, i32 1472} ; [ DW_TAG_subprogram ]
!338 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !339, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!339 = metadata !{null, metadata !300, metadata !138}
!340 = metadata !{i32 786478, i32 0, metadata !283, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !45, i32 1499, metadata !341, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 1499} ; [ DW_TAG_subprogram ]
!341 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !342, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!342 = metadata !{null, metadata !300, metadata !142}
!343 = metadata !{i32 786478, i32 0, metadata !283, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !45, i32 1506, metadata !344, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 1506} ; [ DW_TAG_subprogram ]
!344 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !345, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!345 = metadata !{null, metadata !300, metadata !142, metadata !93}
!346 = metadata !{i32 786478, i32 0, metadata !283, metadata !"read", metadata !"read", metadata !"_ZNV11ap_int_baseILi9ELb1ELb1EE4readEv", metadata !45, i32 1527, metadata !347, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 1527} ; [ DW_TAG_subprogram ]
!347 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !348, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!348 = metadata !{metadata !283, metadata !349}
!349 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !350} ; [ DW_TAG_pointer_type ]
!350 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !283} ; [ DW_TAG_volatile_type ]
!351 = metadata !{i32 786478, i32 0, metadata !283, metadata !"write", metadata !"write", metadata !"_ZNV11ap_int_baseILi9ELb1ELb1EE5writeERKS0_", metadata !45, i32 1533, metadata !352, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 1533} ; [ DW_TAG_subprogram ]
!352 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !353, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!353 = metadata !{null, metadata !349, metadata !354}
!354 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !355} ; [ DW_TAG_reference_type ]
!355 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !283} ; [ DW_TAG_const_type ]
!356 = metadata !{i32 786478, i32 0, metadata !283, metadata !"operator=", metadata !"operator=", metadata !"_ZNV11ap_int_baseILi9ELb1ELb1EEaSERVKS0_", metadata !45, i32 1545, metadata !357, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 1545} ; [ DW_TAG_subprogram ]
!357 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !358, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!358 = metadata !{null, metadata !349, metadata !359}
!359 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !360} ; [ DW_TAG_reference_type ]
!360 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !350} ; [ DW_TAG_const_type ]
!361 = metadata !{i32 786478, i32 0, metadata !283, metadata !"operator=", metadata !"operator=", metadata !"_ZNV11ap_int_baseILi9ELb1ELb1EEaSERKS0_", metadata !45, i32 1554, metadata !352, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 1554} ; [ DW_TAG_subprogram ]
!362 = metadata !{i32 786478, i32 0, metadata !283, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi9ELb1ELb1EEaSERVKS0_", metadata !45, i32 1577, metadata !363, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 1577} ; [ DW_TAG_subprogram ]
!363 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !364, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!364 = metadata !{metadata !365, metadata !300, metadata !359}
!365 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !283} ; [ DW_TAG_reference_type ]
!366 = metadata !{i32 786478, i32 0, metadata !283, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi9ELb1ELb1EEaSERKS0_", metadata !45, i32 1582, metadata !367, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 1582} ; [ DW_TAG_subprogram ]
!367 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !368, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!368 = metadata !{metadata !365, metadata !300, metadata !354}
!369 = metadata !{i32 786478, i32 0, metadata !283, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi9ELb1ELb1EEaSEPKc", metadata !45, i32 1586, metadata !370, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 1586} ; [ DW_TAG_subprogram ]
!370 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !371, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!371 = metadata !{metadata !365, metadata !300, metadata !142}
!372 = metadata !{i32 786478, i32 0, metadata !283, metadata !"set", metadata !"set", metadata !"_ZN11ap_int_baseILi9ELb1ELb1EE3setEPKca", metadata !45, i32 1594, metadata !373, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 1594} ; [ DW_TAG_subprogram ]
!373 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !374, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!374 = metadata !{metadata !365, metadata !300, metadata !142, metadata !93}
!375 = metadata !{i32 786478, i32 0, metadata !283, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi9ELb1ELb1EEaSEa", metadata !45, i32 1608, metadata !376, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 1608} ; [ DW_TAG_subprogram ]
!376 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !377, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!377 = metadata !{metadata !365, metadata !300, metadata !93}
!378 = metadata !{i32 786478, i32 0, metadata !283, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi9ELb1ELb1EEaSEh", metadata !45, i32 1609, metadata !379, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 1609} ; [ DW_TAG_subprogram ]
!379 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !380, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!380 = metadata !{metadata !365, metadata !300, metadata !97}
!381 = metadata !{i32 786478, i32 0, metadata !283, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi9ELb1ELb1EEaSEs", metadata !45, i32 1610, metadata !382, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 1610} ; [ DW_TAG_subprogram ]
!382 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !383, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!383 = metadata !{metadata !365, metadata !300, metadata !101}
!384 = metadata !{i32 786478, i32 0, metadata !283, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi9ELb1ELb1EEaSEt", metadata !45, i32 1611, metadata !385, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 1611} ; [ DW_TAG_subprogram ]
!385 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !386, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!386 = metadata !{metadata !365, metadata !300, metadata !105}
!387 = metadata !{i32 786478, i32 0, metadata !283, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi9ELb1ELb1EEaSEi", metadata !45, i32 1612, metadata !388, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 1612} ; [ DW_TAG_subprogram ]
!388 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !389, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!389 = metadata !{metadata !365, metadata !300, metadata !66}
!390 = metadata !{i32 786478, i32 0, metadata !283, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi9ELb1ELb1EEaSEj", metadata !45, i32 1613, metadata !391, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 1613} ; [ DW_TAG_subprogram ]
!391 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !392, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!392 = metadata !{metadata !365, metadata !300, metadata !112}
!393 = metadata !{i32 786478, i32 0, metadata !283, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi9ELb1ELb1EEaSEx", metadata !45, i32 1614, metadata !394, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 1614} ; [ DW_TAG_subprogram ]
!394 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !395, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!395 = metadata !{metadata !365, metadata !300, metadata !124}
!396 = metadata !{i32 786478, i32 0, metadata !283, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi9ELb1ELb1EEaSEy", metadata !45, i32 1615, metadata !397, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 1615} ; [ DW_TAG_subprogram ]
!397 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !398, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!398 = metadata !{metadata !365, metadata !300, metadata !129}
!399 = metadata !{i32 786478, i32 0, metadata !283, metadata !"operator short", metadata !"operator short", metadata !"_ZNK11ap_int_baseILi9ELb1ELb1EEcvsEv", metadata !45, i32 1653, metadata !400, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 1653} ; [ DW_TAG_subprogram ]
!400 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !401, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!401 = metadata !{metadata !402, metadata !407}
!402 = metadata !{i32 786454, metadata !283, metadata !"RetType", metadata !45, i32 1402, i64 0, i64 0, i64 0, i32 0, metadata !403} ; [ DW_TAG_typedef ]
!403 = metadata !{i32 786454, metadata !404, metadata !"Type", metadata !45, i32 1373, i64 0, i64 0, i64 0, i32 0, metadata !101} ; [ DW_TAG_typedef ]
!404 = metadata !{i32 786434, null, metadata !"retval<2, true>", metadata !45, i32 1372, i64 8, i64 8, i32 0, i32 0, null, metadata !202, i32 0, null, metadata !405} ; [ DW_TAG_class_type ]
!405 = metadata !{metadata !406, metadata !296}
!406 = metadata !{i32 786480, null, metadata !"_AP_N", metadata !66, i64 2, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!407 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !355} ; [ DW_TAG_pointer_type ]
!408 = metadata !{i32 786478, i32 0, metadata !283, metadata !"to_bool", metadata !"to_bool", metadata !"_ZNK11ap_int_baseILi9ELb1ELb1EE7to_boolEv", metadata !45, i32 1659, metadata !409, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 1659} ; [ DW_TAG_subprogram ]
!409 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !410, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!410 = metadata !{metadata !68, metadata !407}
!411 = metadata !{i32 786478, i32 0, metadata !283, metadata !"to_uchar", metadata !"to_uchar", metadata !"_ZNK11ap_int_baseILi9ELb1ELb1EE8to_ucharEv", metadata !45, i32 1660, metadata !412, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 1660} ; [ DW_TAG_subprogram ]
!412 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !413, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!413 = metadata !{metadata !97, metadata !407}
!414 = metadata !{i32 786478, i32 0, metadata !283, metadata !"to_char", metadata !"to_char", metadata !"_ZNK11ap_int_baseILi9ELb1ELb1EE7to_charEv", metadata !45, i32 1661, metadata !415, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 1661} ; [ DW_TAG_subprogram ]
!415 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !416, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!416 = metadata !{metadata !93, metadata !407}
!417 = metadata !{i32 786478, i32 0, metadata !283, metadata !"to_ushort", metadata !"to_ushort", metadata !"_ZNK11ap_int_baseILi9ELb1ELb1EE9to_ushortEv", metadata !45, i32 1662, metadata !418, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 1662} ; [ DW_TAG_subprogram ]
!418 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !419, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!419 = metadata !{metadata !105, metadata !407}
!420 = metadata !{i32 786478, i32 0, metadata !283, metadata !"to_short", metadata !"to_short", metadata !"_ZNK11ap_int_baseILi9ELb1ELb1EE8to_shortEv", metadata !45, i32 1663, metadata !421, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 1663} ; [ DW_TAG_subprogram ]
!421 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !422, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!422 = metadata !{metadata !101, metadata !407}
!423 = metadata !{i32 786478, i32 0, metadata !283, metadata !"to_int", metadata !"to_int", metadata !"_ZNK11ap_int_baseILi9ELb1ELb1EE6to_intEv", metadata !45, i32 1664, metadata !424, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 1664} ; [ DW_TAG_subprogram ]
!424 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !425, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!425 = metadata !{metadata !66, metadata !407}
!426 = metadata !{i32 786478, i32 0, metadata !283, metadata !"to_uint", metadata !"to_uint", metadata !"_ZNK11ap_int_baseILi9ELb1ELb1EE7to_uintEv", metadata !45, i32 1665, metadata !427, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 1665} ; [ DW_TAG_subprogram ]
!427 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !428, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!428 = metadata !{metadata !112, metadata !407}
!429 = metadata !{i32 786478, i32 0, metadata !283, metadata !"to_long", metadata !"to_long", metadata !"_ZNK11ap_int_baseILi9ELb1ELb1EE7to_longEv", metadata !45, i32 1666, metadata !430, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 1666} ; [ DW_TAG_subprogram ]
!430 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !431, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!431 = metadata !{metadata !116, metadata !407}
!432 = metadata !{i32 786478, i32 0, metadata !283, metadata !"to_ulong", metadata !"to_ulong", metadata !"_ZNK11ap_int_baseILi9ELb1ELb1EE8to_ulongEv", metadata !45, i32 1667, metadata !433, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 1667} ; [ DW_TAG_subprogram ]
!433 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !434, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!434 = metadata !{metadata !120, metadata !407}
!435 = metadata !{i32 786478, i32 0, metadata !283, metadata !"to_int64", metadata !"to_int64", metadata !"_ZNK11ap_int_baseILi9ELb1ELb1EE8to_int64Ev", metadata !45, i32 1668, metadata !436, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 1668} ; [ DW_TAG_subprogram ]
!436 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !437, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!437 = metadata !{metadata !124, metadata !407}
!438 = metadata !{i32 786478, i32 0, metadata !283, metadata !"to_uint64", metadata !"to_uint64", metadata !"_ZNK11ap_int_baseILi9ELb1ELb1EE9to_uint64Ev", metadata !45, i32 1669, metadata !439, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 1669} ; [ DW_TAG_subprogram ]
!439 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !440, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!440 = metadata !{metadata !129, metadata !407}
!441 = metadata !{i32 786478, i32 0, metadata !283, metadata !"to_double", metadata !"to_double", metadata !"_ZNK11ap_int_baseILi9ELb1ELb1EE9to_doubleEv", metadata !45, i32 1670, metadata !442, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 1670} ; [ DW_TAG_subprogram ]
!442 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !443, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!443 = metadata !{metadata !138, metadata !407}
!444 = metadata !{i32 786478, i32 0, metadata !283, metadata !"length", metadata !"length", metadata !"_ZNK11ap_int_baseILi9ELb1ELb1EE6lengthEv", metadata !45, i32 1684, metadata !424, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 1684} ; [ DW_TAG_subprogram ]
!445 = metadata !{i32 786478, i32 0, metadata !283, metadata !"length", metadata !"length", metadata !"_ZNVK11ap_int_baseILi9ELb1ELb1EE6lengthEv", metadata !45, i32 1685, metadata !446, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 1685} ; [ DW_TAG_subprogram ]
!446 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !447, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!447 = metadata !{metadata !66, metadata !448}
!448 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !360} ; [ DW_TAG_pointer_type ]
!449 = metadata !{i32 786478, i32 0, metadata !283, metadata !"reverse", metadata !"reverse", metadata !"_ZN11ap_int_baseILi9ELb1ELb1EE7reverseEv", metadata !45, i32 1690, metadata !450, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 1690} ; [ DW_TAG_subprogram ]
!450 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !451, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!451 = metadata !{metadata !365, metadata !300}
!452 = metadata !{i32 786478, i32 0, metadata !283, metadata !"iszero", metadata !"iszero", metadata !"_ZNK11ap_int_baseILi9ELb1ELb1EE6iszeroEv", metadata !45, i32 1696, metadata !409, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 1696} ; [ DW_TAG_subprogram ]
!453 = metadata !{i32 786478, i32 0, metadata !283, metadata !"is_zero", metadata !"is_zero", metadata !"_ZNK11ap_int_baseILi9ELb1ELb1EE7is_zeroEv", metadata !45, i32 1701, metadata !409, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 1701} ; [ DW_TAG_subprogram ]
!454 = metadata !{i32 786478, i32 0, metadata !283, metadata !"sign", metadata !"sign", metadata !"_ZNK11ap_int_baseILi9ELb1ELb1EE4signEv", metadata !45, i32 1706, metadata !409, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 1706} ; [ DW_TAG_subprogram ]
!455 = metadata !{i32 786478, i32 0, metadata !283, metadata !"clear", metadata !"clear", metadata !"_ZN11ap_int_baseILi9ELb1ELb1EE5clearEi", metadata !45, i32 1714, metadata !317, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 1714} ; [ DW_TAG_subprogram ]
!456 = metadata !{i32 786478, i32 0, metadata !283, metadata !"invert", metadata !"invert", metadata !"_ZN11ap_int_baseILi9ELb1ELb1EE6invertEi", metadata !45, i32 1720, metadata !317, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 1720} ; [ DW_TAG_subprogram ]
!457 = metadata !{i32 786478, i32 0, metadata !283, metadata !"test", metadata !"test", metadata !"_ZNK11ap_int_baseILi9ELb1ELb1EE4testEi", metadata !45, i32 1728, metadata !458, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 1728} ; [ DW_TAG_subprogram ]
!458 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !459, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!459 = metadata !{metadata !68, metadata !407, metadata !66}
!460 = metadata !{i32 786478, i32 0, metadata !283, metadata !"set", metadata !"set", metadata !"_ZN11ap_int_baseILi9ELb1ELb1EE3setEi", metadata !45, i32 1734, metadata !317, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 1734} ; [ DW_TAG_subprogram ]
!461 = metadata !{i32 786478, i32 0, metadata !283, metadata !"set", metadata !"set", metadata !"_ZN11ap_int_baseILi9ELb1ELb1EE3setEib", metadata !45, i32 1740, metadata !462, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 1740} ; [ DW_TAG_subprogram ]
!462 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !463, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!463 = metadata !{null, metadata !300, metadata !66, metadata !68}
!464 = metadata !{i32 786478, i32 0, metadata !283, metadata !"lrotate", metadata !"lrotate", metadata !"_ZN11ap_int_baseILi9ELb1ELb1EE7lrotateEi", metadata !45, i32 1747, metadata !317, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 1747} ; [ DW_TAG_subprogram ]
!465 = metadata !{i32 786478, i32 0, metadata !283, metadata !"rrotate", metadata !"rrotate", metadata !"_ZN11ap_int_baseILi9ELb1ELb1EE7rrotateEi", metadata !45, i32 1756, metadata !317, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 1756} ; [ DW_TAG_subprogram ]
!466 = metadata !{i32 786478, i32 0, metadata !283, metadata !"set_bit", metadata !"set_bit", metadata !"_ZN11ap_int_baseILi9ELb1ELb1EE7set_bitEib", metadata !45, i32 1764, metadata !462, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 1764} ; [ DW_TAG_subprogram ]
!467 = metadata !{i32 786478, i32 0, metadata !283, metadata !"get_bit", metadata !"get_bit", metadata !"_ZNK11ap_int_baseILi9ELb1ELb1EE7get_bitEi", metadata !45, i32 1769, metadata !458, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 1769} ; [ DW_TAG_subprogram ]
!468 = metadata !{i32 786478, i32 0, metadata !283, metadata !"b_not", metadata !"b_not", metadata !"_ZN11ap_int_baseILi9ELb1ELb1EE5b_notEv", metadata !45, i32 1774, metadata !298, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 1774} ; [ DW_TAG_subprogram ]
!469 = metadata !{i32 786478, i32 0, metadata !283, metadata !"countLeadingZeros", metadata !"countLeadingZeros", metadata !"_ZN11ap_int_baseILi9ELb1ELb1EE17countLeadingZerosEv", metadata !45, i32 1781, metadata !470, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 1781} ; [ DW_TAG_subprogram ]
!470 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !471, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!471 = metadata !{metadata !66, metadata !300}
!472 = metadata !{i32 786478, i32 0, metadata !283, metadata !"operator++", metadata !"operator++", metadata !"_ZN11ap_int_baseILi9ELb1ELb1EEppEv", metadata !45, i32 1838, metadata !450, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 1838} ; [ DW_TAG_subprogram ]
!473 = metadata !{i32 786478, i32 0, metadata !283, metadata !"operator--", metadata !"operator--", metadata !"_ZN11ap_int_baseILi9ELb1ELb1EEmmEv", metadata !45, i32 1842, metadata !450, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 1842} ; [ DW_TAG_subprogram ]
!474 = metadata !{i32 786478, i32 0, metadata !283, metadata !"operator++", metadata !"operator++", metadata !"_ZN11ap_int_baseILi9ELb1ELb1EEppEi", metadata !45, i32 1850, metadata !475, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 1850} ; [ DW_TAG_subprogram ]
!475 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !476, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!476 = metadata !{metadata !355, metadata !300, metadata !66}
!477 = metadata !{i32 786478, i32 0, metadata !283, metadata !"operator--", metadata !"operator--", metadata !"_ZN11ap_int_baseILi9ELb1ELb1EEmmEi", metadata !45, i32 1855, metadata !475, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 1855} ; [ DW_TAG_subprogram ]
!478 = metadata !{i32 786478, i32 0, metadata !283, metadata !"operator+", metadata !"operator+", metadata !"_ZNK11ap_int_baseILi9ELb1ELb1EEpsEv", metadata !45, i32 1864, metadata !479, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 1864} ; [ DW_TAG_subprogram ]
!479 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !480, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!480 = metadata !{metadata !283, metadata !407}
!481 = metadata !{i32 786478, i32 0, metadata !283, metadata !"operator!", metadata !"operator!", metadata !"_ZNK11ap_int_baseILi9ELb1ELb1EEntEv", metadata !45, i32 1870, metadata !409, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 1870} ; [ DW_TAG_subprogram ]
!482 = metadata !{i32 786478, i32 0, metadata !283, metadata !"operator-", metadata !"operator-", metadata !"_ZNK11ap_int_baseILi9ELb1ELb1EEngEv", metadata !45, i32 1875, metadata !483, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 1875} ; [ DW_TAG_subprogram ]
!483 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !484, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!484 = metadata !{metadata !485, metadata !407}
!485 = metadata !{i32 786434, null, metadata !"ap_int_base<10, true, true>", metadata !45, i32 650, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!486 = metadata !{i32 786478, i32 0, metadata !283, metadata !"range", metadata !"range", metadata !"_ZN11ap_int_baseILi9ELb1ELb1EE5rangeEii", metadata !45, i32 2005, metadata !487, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 2005} ; [ DW_TAG_subprogram ]
!487 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !488, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!488 = metadata !{metadata !489, metadata !300, metadata !66, metadata !66}
!489 = metadata !{i32 786434, null, metadata !"ap_range_ref<9, true>", metadata !45, i32 923, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!490 = metadata !{i32 786478, i32 0, metadata !283, metadata !"operator()", metadata !"operator()", metadata !"_ZN11ap_int_baseILi9ELb1ELb1EEclEii", metadata !45, i32 2011, metadata !487, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 2011} ; [ DW_TAG_subprogram ]
!491 = metadata !{i32 786478, i32 0, metadata !283, metadata !"range", metadata !"range", metadata !"_ZNK11ap_int_baseILi9ELb1ELb1EE5rangeEii", metadata !45, i32 2017, metadata !492, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 2017} ; [ DW_TAG_subprogram ]
!492 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !493, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!493 = metadata !{metadata !489, metadata !407, metadata !66, metadata !66}
!494 = metadata !{i32 786478, i32 0, metadata !283, metadata !"operator()", metadata !"operator()", metadata !"_ZNK11ap_int_baseILi9ELb1ELb1EEclEii", metadata !45, i32 2023, metadata !492, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 2023} ; [ DW_TAG_subprogram ]
!495 = metadata !{i32 786478, i32 0, metadata !283, metadata !"operator[]", metadata !"operator[]", metadata !"_ZN11ap_int_baseILi9ELb1ELb1EEixEi", metadata !45, i32 2042, metadata !496, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 2042} ; [ DW_TAG_subprogram ]
!496 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !497, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!497 = metadata !{metadata !498, metadata !300, metadata !66}
!498 = metadata !{i32 786434, null, metadata !"ap_bit_ref<9, true>", metadata !45, i32 1193, i64 128, i64 64, i32 0, i32 0, null, metadata !499, i32 0, null, metadata !532} ; [ DW_TAG_class_type ]
!499 = metadata !{metadata !500, metadata !501, metadata !502, metadata !508, metadata !512, metadata !516, metadata !517, metadata !521, metadata !524, metadata !525, metadata !528, metadata !529}
!500 = metadata !{i32 786445, metadata !498, metadata !"d_bv", metadata !45, i32 1194, i64 64, i64 64, i64 0, i32 0, metadata !365} ; [ DW_TAG_member ]
!501 = metadata !{i32 786445, metadata !498, metadata !"d_index", metadata !45, i32 1195, i64 32, i64 32, i64 64, i32 0, metadata !66} ; [ DW_TAG_member ]
!502 = metadata !{i32 786478, i32 0, metadata !498, metadata !"ap_bit_ref", metadata !"ap_bit_ref", metadata !"", metadata !45, i32 1198, metadata !503, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 1198} ; [ DW_TAG_subprogram ]
!503 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !504, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!504 = metadata !{null, metadata !505, metadata !506}
!505 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !498} ; [ DW_TAG_pointer_type ]
!506 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !507} ; [ DW_TAG_reference_type ]
!507 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !498} ; [ DW_TAG_const_type ]
!508 = metadata !{i32 786478, i32 0, metadata !498, metadata !"ap_bit_ref", metadata !"ap_bit_ref", metadata !"", metadata !45, i32 1201, metadata !509, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 1201} ; [ DW_TAG_subprogram ]
!509 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !510, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!510 = metadata !{null, metadata !505, metadata !511, metadata !66}
!511 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !283} ; [ DW_TAG_pointer_type ]
!512 = metadata !{i32 786478, i32 0, metadata !498, metadata !"operator _Bool", metadata !"operator _Bool", metadata !"_ZNK10ap_bit_refILi9ELb1EEcvbEv", metadata !45, i32 1203, metadata !513, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 1203} ; [ DW_TAG_subprogram ]
!513 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !514, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!514 = metadata !{metadata !68, metadata !515}
!515 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !507} ; [ DW_TAG_pointer_type ]
!516 = metadata !{i32 786478, i32 0, metadata !498, metadata !"to_bool", metadata !"to_bool", metadata !"_ZNK10ap_bit_refILi9ELb1EE7to_boolEv", metadata !45, i32 1204, metadata !513, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 1204} ; [ DW_TAG_subprogram ]
!517 = metadata !{i32 786478, i32 0, metadata !498, metadata !"operator=", metadata !"operator=", metadata !"_ZN10ap_bit_refILi9ELb1EEaSEy", metadata !45, i32 1206, metadata !518, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 1206} ; [ DW_TAG_subprogram ]
!518 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !519, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!519 = metadata !{metadata !520, metadata !505, metadata !130}
!520 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !498} ; [ DW_TAG_reference_type ]
!521 = metadata !{i32 786478, i32 0, metadata !498, metadata !"operator=", metadata !"operator=", metadata !"_ZN10ap_bit_refILi9ELb1EEaSERKS0_", metadata !45, i32 1226, metadata !522, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 1226} ; [ DW_TAG_subprogram ]
!522 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !523, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!523 = metadata !{metadata !520, metadata !505, metadata !506}
!524 = metadata !{i32 786478, i32 0, metadata !498, metadata !"get", metadata !"get", metadata !"_ZNK10ap_bit_refILi9ELb1EE3getEv", metadata !45, i32 1334, metadata !513, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 1334} ; [ DW_TAG_subprogram ]
!525 = metadata !{i32 786478, i32 0, metadata !498, metadata !"get", metadata !"get", metadata !"_ZN10ap_bit_refILi9ELb1EE3getEv", metadata !45, i32 1338, metadata !526, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 1338} ; [ DW_TAG_subprogram ]
!526 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !527, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!527 = metadata !{metadata !68, metadata !505}
!528 = metadata !{i32 786478, i32 0, metadata !498, metadata !"operator~", metadata !"operator~", metadata !"_ZNK10ap_bit_refILi9ELb1EEcoEv", metadata !45, i32 1347, metadata !513, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 1347} ; [ DW_TAG_subprogram ]
!529 = metadata !{i32 786478, i32 0, metadata !498, metadata !"length", metadata !"length", metadata !"_ZNK10ap_bit_refILi9ELb1EE6lengthEv", metadata !45, i32 1352, metadata !530, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 1352} ; [ DW_TAG_subprogram ]
!530 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !531, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!531 = metadata !{metadata !66, metadata !515}
!532 = metadata !{metadata !533, metadata !296}
!533 = metadata !{i32 786480, null, metadata !"_AP_W", metadata !66, i64 9, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!534 = metadata !{i32 786478, i32 0, metadata !283, metadata !"operator[]", metadata !"operator[]", metadata !"_ZNK11ap_int_baseILi9ELb1ELb1EEixEi", metadata !45, i32 2056, metadata !458, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 2056} ; [ DW_TAG_subprogram ]
!535 = metadata !{i32 786478, i32 0, metadata !283, metadata !"bit", metadata !"bit", metadata !"_ZN11ap_int_baseILi9ELb1ELb1EE3bitEi", metadata !45, i32 2070, metadata !496, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 2070} ; [ DW_TAG_subprogram ]
!536 = metadata !{i32 786478, i32 0, metadata !283, metadata !"bit", metadata !"bit", metadata !"_ZNK11ap_int_baseILi9ELb1ELb1EE3bitEi", metadata !45, i32 2084, metadata !458, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 2084} ; [ DW_TAG_subprogram ]
!537 = metadata !{i32 786478, i32 0, metadata !283, metadata !"and_reduce", metadata !"and_reduce", metadata !"_ZN11ap_int_baseILi9ELb1ELb1EE10and_reduceEv", metadata !45, i32 2264, metadata !538, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 2264} ; [ DW_TAG_subprogram ]
!538 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !539, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!539 = metadata !{metadata !68, metadata !300}
!540 = metadata !{i32 786478, i32 0, metadata !283, metadata !"nand_reduce", metadata !"nand_reduce", metadata !"_ZN11ap_int_baseILi9ELb1ELb1EE11nand_reduceEv", metadata !45, i32 2267, metadata !538, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 2267} ; [ DW_TAG_subprogram ]
!541 = metadata !{i32 786478, i32 0, metadata !283, metadata !"or_reduce", metadata !"or_reduce", metadata !"_ZN11ap_int_baseILi9ELb1ELb1EE9or_reduceEv", metadata !45, i32 2270, metadata !538, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 2270} ; [ DW_TAG_subprogram ]
!542 = metadata !{i32 786478, i32 0, metadata !283, metadata !"nor_reduce", metadata !"nor_reduce", metadata !"_ZN11ap_int_baseILi9ELb1ELb1EE10nor_reduceEv", metadata !45, i32 2273, metadata !538, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 2273} ; [ DW_TAG_subprogram ]
!543 = metadata !{i32 786478, i32 0, metadata !283, metadata !"xor_reduce", metadata !"xor_reduce", metadata !"_ZN11ap_int_baseILi9ELb1ELb1EE10xor_reduceEv", metadata !45, i32 2276, metadata !538, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 2276} ; [ DW_TAG_subprogram ]
!544 = metadata !{i32 786478, i32 0, metadata !283, metadata !"xnor_reduce", metadata !"xnor_reduce", metadata !"_ZN11ap_int_baseILi9ELb1ELb1EE11xnor_reduceEv", metadata !45, i32 2279, metadata !538, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 2279} ; [ DW_TAG_subprogram ]
!545 = metadata !{i32 786478, i32 0, metadata !283, metadata !"and_reduce", metadata !"and_reduce", metadata !"_ZNK11ap_int_baseILi9ELb1ELb1EE10and_reduceEv", metadata !45, i32 2283, metadata !409, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 2283} ; [ DW_TAG_subprogram ]
!546 = metadata !{i32 786478, i32 0, metadata !283, metadata !"nand_reduce", metadata !"nand_reduce", metadata !"_ZNK11ap_int_baseILi9ELb1ELb1EE11nand_reduceEv", metadata !45, i32 2286, metadata !409, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 2286} ; [ DW_TAG_subprogram ]
!547 = metadata !{i32 786478, i32 0, metadata !283, metadata !"or_reduce", metadata !"or_reduce", metadata !"_ZNK11ap_int_baseILi9ELb1ELb1EE9or_reduceEv", metadata !45, i32 2289, metadata !409, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 2289} ; [ DW_TAG_subprogram ]
!548 = metadata !{i32 786478, i32 0, metadata !283, metadata !"nor_reduce", metadata !"nor_reduce", metadata !"_ZNK11ap_int_baseILi9ELb1ELb1EE10nor_reduceEv", metadata !45, i32 2292, metadata !409, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 2292} ; [ DW_TAG_subprogram ]
!549 = metadata !{i32 786478, i32 0, metadata !283, metadata !"xor_reduce", metadata !"xor_reduce", metadata !"_ZNK11ap_int_baseILi9ELb1ELb1EE10xor_reduceEv", metadata !45, i32 2295, metadata !409, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 2295} ; [ DW_TAG_subprogram ]
!550 = metadata !{i32 786478, i32 0, metadata !283, metadata !"xnor_reduce", metadata !"xnor_reduce", metadata !"_ZNK11ap_int_baseILi9ELb1ELb1EE11xnor_reduceEv", metadata !45, i32 2298, metadata !409, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 2298} ; [ DW_TAG_subprogram ]
!551 = metadata !{i32 786478, i32 0, metadata !283, metadata !"to_string", metadata !"to_string", metadata !"_ZNK11ap_int_baseILi9ELb1ELb1EE9to_stringEPci8BaseModeb", metadata !45, i32 2305, metadata !552, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 2305} ; [ DW_TAG_subprogram ]
!552 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !553, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!553 = metadata !{null, metadata !407, metadata !554, metadata !66, metadata !555, metadata !68}
!554 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !144} ; [ DW_TAG_pointer_type ]
!555 = metadata !{i32 786436, null, metadata !"BaseMode", metadata !45, i32 602, i64 5, i64 8, i32 0, i32 0, null, metadata !556, i32 0, i32 0} ; [ DW_TAG_enumeration_type ]
!556 = metadata !{metadata !557, metadata !558, metadata !559, metadata !560}
!557 = metadata !{i32 786472, metadata !"SC_BIN", i64 2} ; [ DW_TAG_enumerator ]
!558 = metadata !{i32 786472, metadata !"SC_OCT", i64 8} ; [ DW_TAG_enumerator ]
!559 = metadata !{i32 786472, metadata !"SC_DEC", i64 10} ; [ DW_TAG_enumerator ]
!560 = metadata !{i32 786472, metadata !"SC_HEX", i64 16} ; [ DW_TAG_enumerator ]
!561 = metadata !{i32 786478, i32 0, metadata !283, metadata !"to_string", metadata !"to_string", metadata !"_ZNK11ap_int_baseILi9ELb1ELb1EE9to_stringE8BaseModeb", metadata !45, i32 2332, metadata !562, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 2332} ; [ DW_TAG_subprogram ]
!562 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !563, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!563 = metadata !{metadata !554, metadata !407, metadata !555, metadata !68}
!564 = metadata !{i32 786478, i32 0, metadata !283, metadata !"to_string", metadata !"to_string", metadata !"_ZNK11ap_int_baseILi9ELb1ELb1EE9to_stringEab", metadata !45, i32 2336, metadata !565, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 2336} ; [ DW_TAG_subprogram ]
!565 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !566, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!566 = metadata !{metadata !554, metadata !407, metadata !93, metadata !68}
!567 = metadata !{metadata !533, metadata !296, metadata !568}
!568 = metadata !{i32 786480, null, metadata !"_AP_C", metadata !68, i64 1, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!569 = metadata !{i32 786478, i32 0, metadata !44, metadata !"range", metadata !"range", metadata !"_ZN11ap_int_baseILi8ELb0ELb1EE5rangeEii", metadata !45, i32 2005, metadata !570, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 2005} ; [ DW_TAG_subprogram ]
!570 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !571, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!571 = metadata !{metadata !572, metadata !72, metadata !66, metadata !66}
!572 = metadata !{i32 786434, null, metadata !"ap_range_ref<8, false>", metadata !45, i32 923, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!573 = metadata !{i32 786478, i32 0, metadata !44, metadata !"operator()", metadata !"operator()", metadata !"_ZN11ap_int_baseILi8ELb0ELb1EEclEii", metadata !45, i32 2011, metadata !570, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 2011} ; [ DW_TAG_subprogram ]
!574 = metadata !{i32 786478, i32 0, metadata !44, metadata !"range", metadata !"range", metadata !"_ZNK11ap_int_baseILi8ELb0ELb1EE5rangeEii", metadata !45, i32 2017, metadata !575, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 2017} ; [ DW_TAG_subprogram ]
!575 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !576, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!576 = metadata !{metadata !572, metadata !205, metadata !66, metadata !66}
!577 = metadata !{i32 786478, i32 0, metadata !44, metadata !"operator()", metadata !"operator()", metadata !"_ZNK11ap_int_baseILi8ELb0ELb1EEclEii", metadata !45, i32 2023, metadata !575, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 2023} ; [ DW_TAG_subprogram ]
!578 = metadata !{i32 786478, i32 0, metadata !44, metadata !"operator[]", metadata !"operator[]", metadata !"_ZN11ap_int_baseILi8ELb0ELb1EEixEi", metadata !45, i32 2042, metadata !579, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 2042} ; [ DW_TAG_subprogram ]
!579 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !580, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!580 = metadata !{metadata !581, metadata !72, metadata !66}
!581 = metadata !{i32 786434, null, metadata !"ap_bit_ref<8, false>", metadata !45, i32 1193, i32 0, i32 0, i32 0, i32 4, null, null, i32 0} ; [ DW_TAG_class_type ]
!582 = metadata !{i32 786478, i32 0, metadata !44, metadata !"operator[]", metadata !"operator[]", metadata !"_ZNK11ap_int_baseILi8ELb0ELb1EEixEi", metadata !45, i32 2056, metadata !256, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 2056} ; [ DW_TAG_subprogram ]
!583 = metadata !{i32 786478, i32 0, metadata !44, metadata !"bit", metadata !"bit", metadata !"_ZN11ap_int_baseILi8ELb0ELb1EE3bitEi", metadata !45, i32 2070, metadata !579, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 2070} ; [ DW_TAG_subprogram ]
!584 = metadata !{i32 786478, i32 0, metadata !44, metadata !"bit", metadata !"bit", metadata !"_ZNK11ap_int_baseILi8ELb0ELb1EE3bitEi", metadata !45, i32 2084, metadata !256, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 2084} ; [ DW_TAG_subprogram ]
!585 = metadata !{i32 786478, i32 0, metadata !44, metadata !"and_reduce", metadata !"and_reduce", metadata !"_ZN11ap_int_baseILi8ELb0ELb1EE10and_reduceEv", metadata !45, i32 2264, metadata !586, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 2264} ; [ DW_TAG_subprogram ]
!586 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !587, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!587 = metadata !{metadata !68, metadata !72}
!588 = metadata !{i32 786478, i32 0, metadata !44, metadata !"nand_reduce", metadata !"nand_reduce", metadata !"_ZN11ap_int_baseILi8ELb0ELb1EE11nand_reduceEv", metadata !45, i32 2267, metadata !586, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 2267} ; [ DW_TAG_subprogram ]
!589 = metadata !{i32 786478, i32 0, metadata !44, metadata !"or_reduce", metadata !"or_reduce", metadata !"_ZN11ap_int_baseILi8ELb0ELb1EE9or_reduceEv", metadata !45, i32 2270, metadata !586, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 2270} ; [ DW_TAG_subprogram ]
!590 = metadata !{i32 786478, i32 0, metadata !44, metadata !"nor_reduce", metadata !"nor_reduce", metadata !"_ZN11ap_int_baseILi8ELb0ELb1EE10nor_reduceEv", metadata !45, i32 2273, metadata !586, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 2273} ; [ DW_TAG_subprogram ]
!591 = metadata !{i32 786478, i32 0, metadata !44, metadata !"xor_reduce", metadata !"xor_reduce", metadata !"_ZN11ap_int_baseILi8ELb0ELb1EE10xor_reduceEv", metadata !45, i32 2276, metadata !586, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 2276} ; [ DW_TAG_subprogram ]
!592 = metadata !{i32 786478, i32 0, metadata !44, metadata !"xnor_reduce", metadata !"xnor_reduce", metadata !"_ZN11ap_int_baseILi8ELb0ELb1EE11xnor_reduceEv", metadata !45, i32 2279, metadata !586, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 2279} ; [ DW_TAG_subprogram ]
!593 = metadata !{i32 786478, i32 0, metadata !44, metadata !"and_reduce", metadata !"and_reduce", metadata !"_ZNK11ap_int_baseILi8ELb0ELb1EE10and_reduceEv", metadata !45, i32 2283, metadata !207, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 2283} ; [ DW_TAG_subprogram ]
!594 = metadata !{i32 786478, i32 0, metadata !44, metadata !"nand_reduce", metadata !"nand_reduce", metadata !"_ZNK11ap_int_baseILi8ELb0ELb1EE11nand_reduceEv", metadata !45, i32 2286, metadata !207, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 2286} ; [ DW_TAG_subprogram ]
!595 = metadata !{i32 786478, i32 0, metadata !44, metadata !"or_reduce", metadata !"or_reduce", metadata !"_ZNK11ap_int_baseILi8ELb0ELb1EE9or_reduceEv", metadata !45, i32 2289, metadata !207, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 2289} ; [ DW_TAG_subprogram ]
!596 = metadata !{i32 786478, i32 0, metadata !44, metadata !"nor_reduce", metadata !"nor_reduce", metadata !"_ZNK11ap_int_baseILi8ELb0ELb1EE10nor_reduceEv", metadata !45, i32 2292, metadata !207, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 2292} ; [ DW_TAG_subprogram ]
!597 = metadata !{i32 786478, i32 0, metadata !44, metadata !"xor_reduce", metadata !"xor_reduce", metadata !"_ZNK11ap_int_baseILi8ELb0ELb1EE10xor_reduceEv", metadata !45, i32 2295, metadata !207, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 2295} ; [ DW_TAG_subprogram ]
!598 = metadata !{i32 786478, i32 0, metadata !44, metadata !"xnor_reduce", metadata !"xnor_reduce", metadata !"_ZNK11ap_int_baseILi8ELb0ELb1EE11xnor_reduceEv", metadata !45, i32 2298, metadata !207, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 2298} ; [ DW_TAG_subprogram ]
!599 = metadata !{i32 786478, i32 0, metadata !44, metadata !"to_string", metadata !"to_string", metadata !"_ZNK11ap_int_baseILi8ELb0ELb1EE9to_stringEPci8BaseModeb", metadata !45, i32 2305, metadata !600, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 2305} ; [ DW_TAG_subprogram ]
!600 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !601, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!601 = metadata !{null, metadata !205, metadata !554, metadata !66, metadata !555, metadata !68}
!602 = metadata !{i32 786478, i32 0, metadata !44, metadata !"to_string", metadata !"to_string", metadata !"_ZNK11ap_int_baseILi8ELb0ELb1EE9to_stringE8BaseModeb", metadata !45, i32 2332, metadata !603, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 2332} ; [ DW_TAG_subprogram ]
!603 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !604, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!604 = metadata !{metadata !554, metadata !205, metadata !555, metadata !68}
!605 = metadata !{i32 786478, i32 0, metadata !44, metadata !"to_string", metadata !"to_string", metadata !"_ZNK11ap_int_baseILi8ELb0ELb1EE9to_stringEab", metadata !45, i32 2336, metadata !606, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 2336} ; [ DW_TAG_subprogram ]
!606 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !607, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!607 = metadata !{metadata !554, metadata !205, metadata !93, metadata !68}
!608 = metadata !{i32 786478, i32 0, metadata !44, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !45, i32 1397, metadata !74, i1 false, i1 false, i32 0, i32 0, null, i32 320, i1 false, null, null, i32 0, metadata !57, i32 1397} ; [ DW_TAG_subprogram ]
!609 = metadata !{metadata !610, metadata !67, metadata !568}
!610 = metadata !{i32 786480, null, metadata !"_AP_W", metadata !66, i64 8, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!611 = metadata !{i32 786478, i32 0, metadata !40, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !41, i32 183, metadata !612, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 183} ; [ DW_TAG_subprogram ]
!612 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !613, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!613 = metadata !{null, metadata !614}
!614 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !40} ; [ DW_TAG_pointer_type ]
!615 = metadata !{i32 786478, i32 0, metadata !40, metadata !"ap_uint<8>", metadata !"ap_uint<8>", metadata !"", metadata !41, i32 185, metadata !616, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !620, i32 0, metadata !57, i32 185} ; [ DW_TAG_subprogram ]
!616 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !617, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!617 = metadata !{null, metadata !614, metadata !618}
!618 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !619} ; [ DW_TAG_reference_type ]
!619 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !40} ; [ DW_TAG_const_type ]
!620 = metadata !{metadata !79}
!621 = metadata !{i32 786478, i32 0, metadata !40, metadata !"ap_uint<8>", metadata !"ap_uint<8>", metadata !"", metadata !41, i32 191, metadata !622, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !620, i32 0, metadata !57, i32 191} ; [ DW_TAG_subprogram ]
!622 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !623, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!623 = metadata !{null, metadata !614, metadata !624}
!624 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !625} ; [ DW_TAG_reference_type ]
!625 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !626} ; [ DW_TAG_const_type ]
!626 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !40} ; [ DW_TAG_volatile_type ]
!627 = metadata !{i32 786478, i32 0, metadata !40, metadata !"ap_uint<8, false>", metadata !"ap_uint<8, false>", metadata !"", metadata !41, i32 226, metadata !628, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !78, i32 0, metadata !57, i32 226} ; [ DW_TAG_subprogram ]
!628 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !629, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!629 = metadata !{null, metadata !614, metadata !76}
!630 = metadata !{i32 786478, i32 0, metadata !40, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !41, i32 245, metadata !631, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 245} ; [ DW_TAG_subprogram ]
!631 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !632, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!632 = metadata !{null, metadata !614, metadata !68}
!633 = metadata !{i32 786478, i32 0, metadata !40, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !41, i32 246, metadata !634, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 246} ; [ DW_TAG_subprogram ]
!634 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !635, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!635 = metadata !{null, metadata !614, metadata !93}
!636 = metadata !{i32 786478, i32 0, metadata !40, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !41, i32 247, metadata !637, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 247} ; [ DW_TAG_subprogram ]
!637 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !638, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!638 = metadata !{null, metadata !614, metadata !97}
!639 = metadata !{i32 786478, i32 0, metadata !40, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !41, i32 248, metadata !640, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 248} ; [ DW_TAG_subprogram ]
!640 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !641, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!641 = metadata !{null, metadata !614, metadata !101}
!642 = metadata !{i32 786478, i32 0, metadata !40, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !41, i32 249, metadata !643, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 249} ; [ DW_TAG_subprogram ]
!643 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !644, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!644 = metadata !{null, metadata !614, metadata !105}
!645 = metadata !{i32 786478, i32 0, metadata !40, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !41, i32 250, metadata !646, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 250} ; [ DW_TAG_subprogram ]
!646 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !647, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!647 = metadata !{null, metadata !614, metadata !66}
!648 = metadata !{i32 786478, i32 0, metadata !40, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !41, i32 251, metadata !649, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 251} ; [ DW_TAG_subprogram ]
!649 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !650, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!650 = metadata !{null, metadata !614, metadata !112}
!651 = metadata !{i32 786478, i32 0, metadata !40, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !41, i32 252, metadata !652, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 252} ; [ DW_TAG_subprogram ]
!652 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !653, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!653 = metadata !{null, metadata !614, metadata !116}
!654 = metadata !{i32 786478, i32 0, metadata !40, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !41, i32 253, metadata !655, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 253} ; [ DW_TAG_subprogram ]
!655 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !656, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!656 = metadata !{null, metadata !614, metadata !120}
!657 = metadata !{i32 786478, i32 0, metadata !40, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !41, i32 254, metadata !658, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 254} ; [ DW_TAG_subprogram ]
!658 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !659, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!659 = metadata !{null, metadata !614, metadata !130}
!660 = metadata !{i32 786478, i32 0, metadata !40, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !41, i32 255, metadata !661, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 255} ; [ DW_TAG_subprogram ]
!661 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !662, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!662 = metadata !{null, metadata !614, metadata !125}
!663 = metadata !{i32 786478, i32 0, metadata !40, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !41, i32 256, metadata !664, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 256} ; [ DW_TAG_subprogram ]
!664 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !665, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!665 = metadata !{null, metadata !614, metadata !134}
!666 = metadata !{i32 786478, i32 0, metadata !40, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !41, i32 257, metadata !667, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 257} ; [ DW_TAG_subprogram ]
!667 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !668, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!668 = metadata !{null, metadata !614, metadata !138}
!669 = metadata !{i32 786478, i32 0, metadata !40, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !41, i32 259, metadata !670, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 259} ; [ DW_TAG_subprogram ]
!670 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !671, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!671 = metadata !{null, metadata !614, metadata !142}
!672 = metadata !{i32 786478, i32 0, metadata !40, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !41, i32 260, metadata !673, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 260} ; [ DW_TAG_subprogram ]
!673 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !674, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!674 = metadata !{null, metadata !614, metadata !142, metadata !93}
!675 = metadata !{i32 786478, i32 0, metadata !40, metadata !"operator=", metadata !"operator=", metadata !"_ZNV7ap_uintILi8EEaSERKS0_", metadata !41, i32 263, metadata !676, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 263} ; [ DW_TAG_subprogram ]
!676 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !677, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!677 = metadata !{null, metadata !678, metadata !618}
!678 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !626} ; [ DW_TAG_pointer_type ]
!679 = metadata !{i32 786478, i32 0, metadata !40, metadata !"operator=", metadata !"operator=", metadata !"_ZNV7ap_uintILi8EEaSERVKS0_", metadata !41, i32 267, metadata !680, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 267} ; [ DW_TAG_subprogram ]
!680 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !681, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!681 = metadata !{null, metadata !678, metadata !624}
!682 = metadata !{i32 786478, i32 0, metadata !40, metadata !"operator=", metadata !"operator=", metadata !"_ZN7ap_uintILi8EEaSERVKS0_", metadata !41, i32 271, metadata !683, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 271} ; [ DW_TAG_subprogram ]
!683 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !684, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!684 = metadata !{metadata !685, metadata !614, metadata !624}
!685 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !40} ; [ DW_TAG_reference_type ]
!686 = metadata !{i32 786478, i32 0, metadata !40, metadata !"operator=", metadata !"operator=", metadata !"_ZN7ap_uintILi8EEaSERKS0_", metadata !41, i32 276, metadata !687, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 276} ; [ DW_TAG_subprogram ]
!687 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !688, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!688 = metadata !{metadata !685, metadata !614, metadata !618}
!689 = metadata !{i32 786478, i32 0, metadata !40, metadata !"~ap_uint", metadata !"~ap_uint", metadata !"", metadata !41, i32 180, metadata !612, i1 false, i1 false, i32 0, i32 0, null, i32 320, i1 false, null, null, i32 0, metadata !57, i32 180} ; [ DW_TAG_subprogram ]
!690 = metadata !{i32 786478, i32 0, metadata !40, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !41, i32 180, metadata !616, i1 false, i1 false, i32 0, i32 0, null, i32 320, i1 false, null, null, i32 0, metadata !57, i32 180} ; [ DW_TAG_subprogram ]
!691 = metadata !{metadata !610}
!692 = metadata !{i32 786478, i32 0, metadata !35, metadata !"stream", metadata !"stream", metadata !"", metadata !37, i32 83, metadata !693, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 83} ; [ DW_TAG_subprogram ]
!693 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !694, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!694 = metadata !{null, metadata !695}
!695 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !35} ; [ DW_TAG_pointer_type ]
!696 = metadata !{i32 786478, i32 0, metadata !35, metadata !"stream", metadata !"stream", metadata !"", metadata !37, i32 86, metadata !697, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 86} ; [ DW_TAG_subprogram ]
!697 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !698, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!698 = metadata !{null, metadata !695, metadata !142}
!699 = metadata !{i32 786478, i32 0, metadata !35, metadata !"stream", metadata !"stream", metadata !"", metadata !37, i32 91, metadata !700, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !57, i32 91} ; [ DW_TAG_subprogram ]
!700 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !701, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!701 = metadata !{null, metadata !695, metadata !702}
!702 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !703} ; [ DW_TAG_reference_type ]
!703 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !35} ; [ DW_TAG_const_type ]
!704 = metadata !{i32 786478, i32 0, metadata !35, metadata !"operator=", metadata !"operator=", metadata !"_ZN3hls6streamI7ap_uintILi8EEEaSERKS3_", metadata !37, i32 94, metadata !705, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !57, i32 94} ; [ DW_TAG_subprogram ]
!705 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !706, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!706 = metadata !{metadata !34, metadata !695, metadata !702}
!707 = metadata !{i32 786478, i32 0, metadata !35, metadata !"operator>>", metadata !"operator>>", metadata !"_ZN3hls6streamI7ap_uintILi8EEErsERS2_", metadata !37, i32 101, metadata !708, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 101} ; [ DW_TAG_subprogram ]
!708 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !709, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!709 = metadata !{null, metadata !695, metadata !685}
!710 = metadata !{i32 786478, i32 0, metadata !35, metadata !"operator<<", metadata !"operator<<", metadata !"_ZN3hls6streamI7ap_uintILi8EEElsERKS2_", metadata !37, i32 105, metadata !711, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 105} ; [ DW_TAG_subprogram ]
!711 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !712, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!712 = metadata !{null, metadata !695, metadata !618}
!713 = metadata !{i32 786478, i32 0, metadata !35, metadata !"empty", metadata !"empty", metadata !"_ZNK3hls6streamI7ap_uintILi8EEE5emptyEv", metadata !37, i32 112, metadata !714, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 112} ; [ DW_TAG_subprogram ]
!714 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !715, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!715 = metadata !{metadata !68, metadata !716}
!716 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !703} ; [ DW_TAG_pointer_type ]
!717 = metadata !{i32 786478, i32 0, metadata !35, metadata !"full", metadata !"full", metadata !"_ZNK3hls6streamI7ap_uintILi8EEE4fullEv", metadata !37, i32 117, metadata !714, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 117} ; [ DW_TAG_subprogram ]
!718 = metadata !{i32 786478, i32 0, metadata !35, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamI7ap_uintILi8EEE4readERS2_", metadata !37, i32 123, metadata !708, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 123} ; [ DW_TAG_subprogram ]
!719 = metadata !{i32 786478, i32 0, metadata !35, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamI7ap_uintILi8EEE4readEv", metadata !37, i32 129, metadata !720, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 129} ; [ DW_TAG_subprogram ]
!720 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !721, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!721 = metadata !{metadata !40, metadata !695}
!722 = metadata !{i32 786478, i32 0, metadata !35, metadata !"read_nb", metadata !"read_nb", metadata !"_ZN3hls6streamI7ap_uintILi8EEE7read_nbERS2_", metadata !37, i32 136, metadata !723, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 136} ; [ DW_TAG_subprogram ]
!723 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !724, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!724 = metadata !{metadata !68, metadata !695, metadata !685}
!725 = metadata !{i32 786478, i32 0, metadata !35, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamI7ap_uintILi8EEE5writeERKS2_", metadata !37, i32 144, metadata !711, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 144} ; [ DW_TAG_subprogram ]
!726 = metadata !{i32 786478, i32 0, metadata !35, metadata !"write_nb", metadata !"write_nb", metadata !"_ZN3hls6streamI7ap_uintILi8EEE8write_nbERKS2_", metadata !37, i32 150, metadata !727, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 150} ; [ DW_TAG_subprogram ]
!727 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !728, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!728 = metadata !{metadata !68, metadata !695, metadata !618}
!729 = metadata !{i32 786478, i32 0, metadata !35, metadata !"size", metadata !"size", metadata !"_ZN3hls6streamI7ap_uintILi8EEE4sizeEv", metadata !37, i32 157, metadata !730, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !57, i32 157} ; [ DW_TAG_subprogram ]
!730 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !731, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!731 = metadata !{metadata !112, metadata !695}
!732 = metadata !{metadata !733}
!733 = metadata !{i32 786479, null, metadata !"__STREAM_T__", metadata !40, null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!734 = metadata !{i32 3, i32 89, metadata !30, null}
!735 = metadata !{i32 790531, metadata !736, metadata !"inStream.V.V", null, i32 3, metadata !737, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!736 = metadata !{i32 786689, metadata !30, metadata !"inStream", metadata !31, i32 16777219, metadata !34, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!737 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !738} ; [ DW_TAG_pointer_type ]
!738 = metadata !{i32 786438, metadata !36, metadata !"stream<ap_uint<8> >", metadata !37, i32 79, i64 8, i64 8, i32 0, i32 0, null, metadata !739, i32 0, null, metadata !732} ; [ DW_TAG_class_field_type ]
!739 = metadata !{metadata !740}
!740 = metadata !{i32 786438, null, metadata !"ap_uint<8>", metadata !41, i32 180, i64 8, i64 8, i32 0, i32 0, null, metadata !741, i32 0, null, metadata !691} ; [ DW_TAG_class_field_type ]
!741 = metadata !{metadata !742}
!742 = metadata !{i32 786438, null, metadata !"ap_int_base<8, false, true>", metadata !45, i32 1397, i64 8, i64 8, i32 0, i32 0, null, metadata !743, i32 0, null, metadata !609} ; [ DW_TAG_class_field_type ]
!743 = metadata !{metadata !744}
!744 = metadata !{i32 786438, null, metadata !"ssdm_int<8 + 1024 * 0, false>", metadata !49, i32 10, i64 8, i64 8, i32 0, i32 0, null, metadata !745, i32 0, null, metadata !64} ; [ DW_TAG_class_field_type ]
!745 = metadata !{metadata !51}
!746 = metadata !{i32 3, i32 39, metadata !30, null}
!747 = metadata !{i32 790531, metadata !748, metadata !"outStream_grayscale.V.V", null, i32 3, metadata !737, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!748 = metadata !{i32 786689, metadata !30, metadata !"outStream_grayscale", metadata !31, i32 33554435, metadata !34, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!749 = metadata !{i32 3, i32 63, metadata !30, null}
!750 = metadata !{i32 790531, metadata !751, metadata !"outStream_LUMA.V.V", null, i32 3, metadata !737, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!751 = metadata !{i32 786689, metadata !30, metadata !"outStream_LUMA", metadata !31, i32 67108867, metadata !34, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!752 = metadata !{i32 3, i32 122, metadata !30, null}
!753 = metadata !{i32 790531, metadata !754, metadata !"outStream_CHROMA.V.V", null, i32 3, metadata !737, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!754 = metadata !{i32 786689, metadata !30, metadata !"outStream_CHROMA", metadata !31, i32 83886083, metadata !34, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!755 = metadata !{i32 3, i32 152, metadata !30, null}
!756 = metadata !{i32 5, i32 1, metadata !757, null}
!757 = metadata !{i32 786443, metadata !30, i32 4, i32 1, metadata !31, i32 0} ; [ DW_TAG_lexical_block ]
!758 = metadata !{i32 6, i32 1, metadata !757, null}
!759 = metadata !{i32 7, i32 1, metadata !757, null}
!760 = metadata !{i32 8, i32 1, metadata !757, null}
!761 = metadata !{i32 9, i32 1, metadata !757, null}
!762 = metadata !{i32 12, i32 1, metadata !757, null}
!763 = metadata !{i32 790531, metadata !764, metadata !"stream<ap_uint<8> >.V.V", null, i32 129, metadata !767, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!764 = metadata !{i32 786689, metadata !765, metadata !"this", metadata !37, i32 16777345, metadata !766, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!765 = metadata !{i32 786478, i32 0, metadata !36, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamI7ap_uintILi8EEE4readEv", metadata !37, i32 129, metadata !720, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !719, metadata !57, i32 129} ; [ DW_TAG_subprogram ]
!766 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !35} ; [ DW_TAG_pointer_type ]
!767 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !738} ; [ DW_TAG_pointer_type ]
!768 = metadata !{i32 129, i32 56, metadata !765, metadata !769}
!769 = metadata !{i32 15, i32 14, metadata !757, null}
!770 = metadata !{i32 131, i32 9, metadata !771, metadata !769}
!771 = metadata !{i32 786443, metadata !765, i32 129, i32 63, metadata !37, i32 4} ; [ DW_TAG_lexical_block ]
!772 = metadata !{i32 790529, metadata !773, metadata !"tmp.V", null, i32 130, metadata !740, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!773 = metadata !{i32 786688, metadata !771, metadata !"tmp", metadata !37, i32 130, metadata !685, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!774 = metadata !{i32 16, i32 2, metadata !757, null}
!775 = metadata !{i32 790531, metadata !776, metadata !"stream<ap_uint<8> >.V.V", null, i32 144, metadata !767, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!776 = metadata !{i32 786689, metadata !777, metadata !"this", metadata !37, i32 16777360, metadata !766, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!777 = metadata !{i32 786478, i32 0, metadata !36, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamI7ap_uintILi8EEE5writeERKS2_", metadata !37, i32 144, metadata !711, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !725, metadata !57, i32 144} ; [ DW_TAG_subprogram ]
!778 = metadata !{i32 144, i32 48, metadata !777, metadata !779}
!779 = metadata !{i32 18, i32 3, metadata !780, null}
!780 = metadata !{i32 786443, metadata !757, i32 17, i32 2, metadata !31, i32 1} ; [ DW_TAG_lexical_block ]
!781 = metadata !{i32 790529, metadata !782, metadata !"tmp.V", null, i32 145, metadata !740, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!782 = metadata !{i32 786688, metadata !783, metadata !"tmp", metadata !37, i32 145, metadata !40, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!783 = metadata !{i32 786443, metadata !777, i32 144, i32 79, metadata !37, i32 3} ; [ DW_TAG_lexical_block ]
!784 = metadata !{i32 145, i32 31, metadata !783, metadata !779}
!785 = metadata !{i32 146, i32 9, metadata !783, metadata !779}
!786 = metadata !{i32 20, i32 3, metadata !780, null}
!787 = metadata !{i32 144, i32 48, metadata !777, metadata !788}
!788 = metadata !{i32 21, i32 4, metadata !780, null}
!789 = metadata !{i32 145, i32 31, metadata !783, metadata !788}
!790 = metadata !{i32 146, i32 9, metadata !783, metadata !788}
!791 = metadata !{i32 23, i32 2, metadata !780, null}
!792 = metadata !{i32 26, i32 3, metadata !793, null}
!793 = metadata !{i32 786443, metadata !757, i32 24, i32 6, metadata !31, i32 2} ; [ DW_TAG_lexical_block ]
!794 = metadata !{i32 144, i32 48, metadata !777, metadata !795}
!795 = metadata !{i32 27, i32 4, metadata !793, null}
!796 = metadata !{i32 145, i32 31, metadata !783, metadata !795}
!797 = metadata !{i32 146, i32 9, metadata !783, metadata !795}
!798 = metadata !{i32 30, i32 2, metadata !757, null}
!799 = metadata !{i32 32, i32 1, metadata !757, null}
