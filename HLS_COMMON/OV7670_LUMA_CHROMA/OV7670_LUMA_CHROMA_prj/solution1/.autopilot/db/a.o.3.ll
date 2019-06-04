; ModuleID = '/home/andrea/Documenti/vision/Ultrascale/hls/OV7670_LUMA_CHROMA/OV7670_LUMA_CHROMA_prj/solution1/.autopilot/db/a.o.3.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ov7670_LUMA_CHROMA_s = internal unnamed_addr constant [19 x i8] c"ov7670_LUMA_CHROMA\00" ; [#uses=1 type=[19 x i8]*]
@llvm_global_ctors_1 = appending global [0 x void ()*] zeroinitializer ; [#uses=0 type=[0 x void ()*]*]
@llvm_global_ctors_0 = appending global [0 x i32] zeroinitializer ; [#uses=0 type=[0 x i32]*]
@grayscale_valid = internal unnamed_addr global i1 false, align 1 ; [#uses=3 type=i1*]
@p_str3 = private unnamed_addr constant [5 x i8] c"both\00", align 1 ; [#uses=4 type=[5 x i8]*]
@p_str2 = private unnamed_addr constant [5 x i8] c"axis\00", align 1 ; [#uses=4 type=[5 x i8]*]
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1 ; [#uses=27 type=[1 x i8]*]
@p_str = private unnamed_addr constant [8 x i8] c"ap_none\00", align 1 ; [#uses=1 type=[8 x i8]*]

; [#uses=0]
define void @ov7670_LUMA_CHROMA(i8* %inStream_V_V, i8* %outStream_grayscale_V_V, i1 zeroext %enable_raw_stream, i8* %outStream_LUMA_V_V, i8* %outStream_CHROMA_V_V) {
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %inStream_V_V), !map !26
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %outStream_grayscale_V_V), !map !30
  call void (...)* @_ssdm_op_SpecBitsMap(i1 %enable_raw_stream), !map !34
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %outStream_LUMA_V_V), !map !40
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %outStream_CHROMA_V_V), !map !44
  call void (...)* @_ssdm_op_SpecTopModule([19 x i8]* @ov7670_LUMA_CHROMA_s) nounwind
  %enable_raw_stream_re = call i1 @_ssdm_op_Read.ap_none.i1(i1 %enable_raw_stream) ; [#uses=2 type=i1]
  call void @llvm.dbg.value(metadata !{i1 %enable_raw_stream_re}, i64 0, metadata !48), !dbg !767 ; [debug line = 3:89] [debug variable = enable_raw_stream]
  call void @llvm.dbg.value(metadata !{i8* %inStream_V_V}, i64 0, metadata !768), !dbg !779 ; [debug line = 3:39] [debug variable = inStream.V.V]
  call void @llvm.dbg.value(metadata !{i8* %outStream_grayscale_V_V}, i64 0, metadata !780), !dbg !782 ; [debug line = 3:63] [debug variable = outStream_grayscale.V.V]
  call void @llvm.dbg.value(metadata !{i1 %enable_raw_stream}, i64 0, metadata !48), !dbg !767 ; [debug line = 3:89] [debug variable = enable_raw_stream]
  call void @llvm.dbg.value(metadata !{i8* %outStream_LUMA_V_V}, i64 0, metadata !783), !dbg !785 ; [debug line = 3:122] [debug variable = outStream_LUMA.V.V]
  call void @llvm.dbg.value(metadata !{i8* %outStream_CHROMA_V_V}, i64 0, metadata !786), !dbg !788 ; [debug line = 3:152] [debug variable = outStream_CHROMA.V.V]
  call void (...)* @_ssdm_op_SpecInterface(i1 %enable_raw_stream, [8 x i8]* @p_str, i32 0, i32 0, [1 x i8]* @p_str1, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !789 ; [debug line = 5:1]
  call void (...)* @_ssdm_op_SpecInterface(i8* %inStream_V_V, [5 x i8]* @p_str2, i32 1, i32 1, [5 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !791 ; [debug line = 6:1]
  call void (...)* @_ssdm_op_SpecInterface(i8* %outStream_grayscale_V_V, [5 x i8]* @p_str2, i32 1, i32 1, [5 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !792 ; [debug line = 7:1]
  call void (...)* @_ssdm_op_SpecInterface(i8* %outStream_LUMA_V_V, [5 x i8]* @p_str2, i32 1, i32 1, [5 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !793 ; [debug line = 8:1]
  call void (...)* @_ssdm_op_SpecInterface(i8* %outStream_CHROMA_V_V, [5 x i8]* @p_str2, i32 1, i32 1, [5 x i8]* @p_str3, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind, !dbg !794 ; [debug line = 9:1]
  call void (...)* @_ssdm_op_SpecReset(i1* @grayscale_valid, i32 1, [1 x i8]* @p_str1) nounwind, !dbg !795 ; [debug line = 12:1]
  call void @llvm.dbg.value(metadata !{i8* %inStream_V_V}, i64 0, metadata !796), !dbg !801 ; [debug line = 129:56@15:14] [debug variable = stream<ap_uint<8> >.V.V]
  %tmp_V = call i8 @_ssdm_op_Read.axis.volatile.i8P(i8* %inStream_V_V), !dbg !803 ; [#uses=3 type=i8] [debug line = 131:9@15:14]
  call void @llvm.dbg.value(metadata !{i8 %tmp_V}, i64 0, metadata !805), !dbg !803 ; [debug line = 131:9@15:14] [debug variable = tmp.V]
  %grayscale_valid_load = load i1* @grayscale_valid, align 1, !dbg !807 ; [#uses=2 type=i1] [debug line = 16:2]
  br i1 %grayscale_valid_load, label %1, label %3, !dbg !807 ; [debug line = 16:2]

; <label>:1                                       ; preds = %0
  call void @llvm.dbg.value(metadata !{i8* %outStream_grayscale_V_V}, i64 0, metadata !808), !dbg !811 ; [debug line = 144:48@18:3] [debug variable = stream<ap_uint<8> >.V.V]
  call void @llvm.dbg.value(metadata !{i8 %tmp_V}, i64 0, metadata !814), !dbg !817 ; [debug line = 145:31@18:3] [debug variable = tmp.V]
  call void @_ssdm_op_Write.axis.volatile.i8P(i8* %outStream_grayscale_V_V, i8 %tmp_V), !dbg !818 ; [debug line = 146:9@18:3]
  br i1 %enable_raw_stream_re, label %2, label %._crit_edge, !dbg !819 ; [debug line = 20:3]

; <label>:2                                       ; preds = %1
  call void @llvm.dbg.value(metadata !{i8* %outStream_LUMA_V_V}, i64 0, metadata !808), !dbg !820 ; [debug line = 144:48@21:4] [debug variable = stream<ap_uint<8> >.V.V]
  call void @llvm.dbg.value(metadata !{i8 %tmp_V}, i64 0, metadata !814), !dbg !822 ; [debug line = 145:31@21:4] [debug variable = tmp.V]
  call void @_ssdm_op_Write.axis.volatile.i8P(i8* %outStream_LUMA_V_V, i8 %tmp_V), !dbg !823 ; [debug line = 146:9@21:4]
  br label %._crit_edge, !dbg !821                ; [debug line = 21:4]

._crit_edge:                                      ; preds = %2, %1
  br label %5, !dbg !824                          ; [debug line = 23:2]

; <label>:3                                       ; preds = %0
  br i1 %enable_raw_stream_re, label %4, label %._crit_edge5, !dbg !825 ; [debug line = 26:3]

; <label>:4                                       ; preds = %3
  call void @llvm.dbg.value(metadata !{i8* %outStream_CHROMA_V_V}, i64 0, metadata !808), !dbg !827 ; [debug line = 144:48@27:4] [debug variable = stream<ap_uint<8> >.V.V]
  call void @llvm.dbg.value(metadata !{i8 %tmp_V}, i64 0, metadata !814), !dbg !829 ; [debug line = 145:31@27:4] [debug variable = tmp.V]
  call void @_ssdm_op_Write.axis.volatile.i8P(i8* %outStream_CHROMA_V_V, i8 %tmp_V), !dbg !830 ; [debug line = 146:9@27:4]
  br label %._crit_edge5, !dbg !828               ; [debug line = 27:4]

._crit_edge5:                                     ; preds = %4, %3
  br label %5

; <label>:5                                       ; preds = %._crit_edge5, %._crit_edge
  %tmp_6 = xor i1 %grayscale_valid_load, true, !dbg !831 ; [#uses=1 type=i1] [debug line = 30:2]
  store i1 %tmp_6, i1* @grayscale_valid, align 1, !dbg !831 ; [debug line = 30:2]
  ret void, !dbg !832                             ; [debug line = 32:1]
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

!opencl.kernels = !{!0, !7, !13, !13, !13, !13, !13}
!hls.encrypted.func = !{}
!llvm.map.gv = !{!19}

!0 = metadata !{null, metadata !1, metadata !2, metadata !3, metadata !4, metadata !5, metadata !6}
!1 = metadata !{metadata !"kernel_arg_addr_space", i32 0, i32 0, i32 0, i32 0, i32 0}
!2 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none", metadata !"none", metadata !"none", metadata !"none", metadata !"none"}
!3 = metadata !{metadata !"kernel_arg_type", metadata !"stream<byte> &", metadata !"stream<byte> &", metadata !"_Bool", metadata !"stream<byte> &", metadata !"stream<byte> &"}
!4 = metadata !{metadata !"kernel_arg_type_qual", metadata !"", metadata !"", metadata !"", metadata !"", metadata !""}
!5 = metadata !{metadata !"kernel_arg_name", metadata !"inStream", metadata !"outStream_grayscale", metadata !"enable_raw_stream", metadata !"outStream_LUMA", metadata !"outStream_CHROMA"}
!6 = metadata !{metadata !"reqd_work_group_size", i32 1, i32 1, i32 1}
!7 = metadata !{null, metadata !8, metadata !9, metadata !10, metadata !11, metadata !12, metadata !6}
!8 = metadata !{metadata !"kernel_arg_addr_space", i32 0}
!9 = metadata !{metadata !"kernel_arg_access_qual", metadata !"none"}
!10 = metadata !{metadata !"kernel_arg_type", metadata !"const struct ap_uint<8> &"}
!11 = metadata !{metadata !"kernel_arg_type_qual", metadata !""}
!12 = metadata !{metadata !"kernel_arg_name", metadata !"din"}
!13 = metadata !{null, metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !6}
!14 = metadata !{metadata !"kernel_arg_addr_space"}
!15 = metadata !{metadata !"kernel_arg_access_qual"}
!16 = metadata !{metadata !"kernel_arg_type"}
!17 = metadata !{metadata !"kernel_arg_type_qual"}
!18 = metadata !{metadata !"kernel_arg_name"}
!19 = metadata !{metadata !20, [0 x i32]* @llvm_global_ctors_0}
!20 = metadata !{metadata !21}
!21 = metadata !{i32 0, i32 31, metadata !22}
!22 = metadata !{metadata !23}
!23 = metadata !{metadata !"llvm.global_ctors.0", metadata !24, metadata !"", i32 0, i32 31}
!24 = metadata !{metadata !25}
!25 = metadata !{i32 0, i32 0, i32 1}
!26 = metadata !{metadata !27}
!27 = metadata !{i32 0, i32 7, metadata !28}
!28 = metadata !{metadata !29}
!29 = metadata !{metadata !"inStream.V.V", metadata !24, metadata !"uint8", i32 0, i32 7}
!30 = metadata !{metadata !31}
!31 = metadata !{i32 0, i32 7, metadata !32}
!32 = metadata !{metadata !33}
!33 = metadata !{metadata !"outStream_grayscale.V.V", metadata !24, metadata !"uint8", i32 0, i32 7}
!34 = metadata !{metadata !35}
!35 = metadata !{i32 0, i32 0, metadata !36}
!36 = metadata !{metadata !37}
!37 = metadata !{metadata !"enable_raw_stream", metadata !38, metadata !"bool", i32 0, i32 0}
!38 = metadata !{metadata !39}
!39 = metadata !{i32 0, i32 0, i32 0}
!40 = metadata !{metadata !41}
!41 = metadata !{i32 0, i32 7, metadata !42}
!42 = metadata !{metadata !43}
!43 = metadata !{metadata !"outStream_LUMA.V.V", metadata !24, metadata !"uint8", i32 0, i32 7}
!44 = metadata !{metadata !45}
!45 = metadata !{i32 0, i32 7, metadata !46}
!46 = metadata !{metadata !47}
!47 = metadata !{metadata !"outStream_CHROMA.V.V", metadata !24, metadata !"uint8", i32 0, i32 7}
!48 = metadata !{i32 786689, metadata !49, metadata !"enable_raw_stream", metadata !50, i32 50331651, metadata !87, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!49 = metadata !{i32 786478, i32 0, metadata !50, metadata !"ov7670_LUMA_CHROMA", metadata !"ov7670_LUMA_CHROMA", metadata !"_Z18ov7670_LUMA_CHROMARN3hls6streamI7ap_uintILi8EEEES4_bS4_S4_", metadata !50, i32 3, metadata !51, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, null, metadata !76, i32 4} ; [ DW_TAG_subprogram ]
!50 = metadata !{i32 786473, metadata !"ov7670_LUMA_CHROMA.cpp", metadata !"/home/andrea/Documenti/vision/Ultrascale/hls/OV7670_LUMA_CHROMA", null} ; [ DW_TAG_file_type ]
!51 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !52, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!52 = metadata !{null, metadata !53, metadata !53, metadata !87, metadata !53, metadata !53}
!53 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !54} ; [ DW_TAG_reference_type ]
!54 = metadata !{i32 786434, metadata !55, metadata !"stream<ap_uint<8> >", metadata !56, i32 79, i64 8, i64 8, i32 0, i32 0, null, metadata !57, i32 0, null, metadata !765} ; [ DW_TAG_class_type ]
!55 = metadata !{i32 786489, null, metadata !"hls", metadata !56, i32 69} ; [ DW_TAG_namespace ]
!56 = metadata !{i32 786473, metadata !"/opt/Xilinx/Vivado/2018.1/common/technology/autopilot/hls_stream.h", metadata !"/home/andrea/Documenti/vision/Ultrascale/hls/OV7670_LUMA_CHROMA", null} ; [ DW_TAG_file_type ]
!57 = metadata !{metadata !58, metadata !725, metadata !729, metadata !732, metadata !737, metadata !740, metadata !743, metadata !746, metadata !750, metadata !751, metadata !752, metadata !755, metadata !758, metadata !759, metadata !762}
!58 = metadata !{i32 786445, metadata !54, metadata !"V", metadata !56, i32 163, i64 8, i64 8, i64 0, i32 0, metadata !59} ; [ DW_TAG_member ]
!59 = metadata !{i32 786434, null, metadata !"ap_uint<8>", metadata !60, i32 183, i64 8, i64 8, i32 0, i32 0, null, metadata !61, i32 0, null, metadata !724} ; [ DW_TAG_class_type ]
!60 = metadata !{i32 786473, metadata !"/opt/Xilinx/Vivado/2018.1/common/technology/autopilot/ap_int.h", metadata !"/home/andrea/Documenti/vision/Ultrascale/hls/OV7670_LUMA_CHROMA", null} ; [ DW_TAG_file_type ]
!61 = metadata !{metadata !62, metadata !641, metadata !645, metadata !651, metadata !657, metadata !660, metadata !663, metadata !666, metadata !669, metadata !672, metadata !675, metadata !678, metadata !681, metadata !684, metadata !687, metadata !690, metadata !693, metadata !696, metadata !699, metadata !702, metadata !705, metadata !708, metadata !712, metadata !715, metadata !719, metadata !722, metadata !723}
!62 = metadata !{i32 786460, metadata !59, null, metadata !60, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !63} ; [ DW_TAG_inheritance ]
!63 = metadata !{i32 786434, null, metadata !"ap_int_base<8, false, true>", metadata !64, i32 1453, i64 8, i64 8, i32 0, i32 0, null, metadata !65, i32 0, null, metadata !640} ; [ DW_TAG_class_type ]
!64 = metadata !{i32 786473, metadata !"/opt/Xilinx/Vivado/2018.1/common/technology/autopilot/ap_int_syn.h", metadata !"/home/andrea/Documenti/vision/Ultrascale/hls/OV7670_LUMA_CHROMA", null} ; [ DW_TAG_file_type ]
!65 = metadata !{metadata !66, metadata !88, metadata !92, metadata !100, metadata !106, metadata !109, metadata !113, metadata !117, metadata !121, metadata !125, metadata !128, metadata !132, metadata !136, metadata !140, metadata !145, metadata !150, metadata !155, metadata !159, metadata !163, metadata !169, metadata !172, metadata !176, metadata !179, metadata !182, metadata !183, metadata !187, metadata !190, metadata !193, metadata !196, metadata !199, metadata !202, metadata !205, metadata !208, metadata !211, metadata !214, metadata !217, metadata !220, metadata !230, metadata !233, metadata !236, metadata !239, metadata !242, metadata !245, metadata !248, metadata !251, metadata !254, metadata !257, metadata !260, metadata !263, metadata !266, metadata !267, metadata !271, metadata !274, metadata !275, metadata !276, metadata !277, metadata !278, metadata !279, metadata !282, metadata !283, metadata !286, metadata !287, metadata !288, metadata !289, metadata !290, metadata !291, metadata !294, metadata !295, metadata !296, metadata !299, metadata !300, metadata !303, metadata !304, metadata !598, metadata !604, metadata !605, metadata !608, metadata !609, metadata !613, metadata !614, metadata !615, metadata !616, metadata !619, metadata !620, metadata !621, metadata !622, metadata !623, metadata !624, metadata !625, metadata !626, metadata !627, metadata !628, metadata !629, metadata !630, metadata !633, metadata !636, metadata !639}
!66 = metadata !{i32 786460, metadata !63, null, metadata !64, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !67} ; [ DW_TAG_inheritance ]
!67 = metadata !{i32 786434, null, metadata !"ssdm_int<8 + 1024 * 0, false>", metadata !68, i32 10, i64 8, i64 8, i32 0, i32 0, null, metadata !69, i32 0, null, metadata !83} ; [ DW_TAG_class_type ]
!68 = metadata !{i32 786473, metadata !"/opt/Xilinx/Vivado/2018.1/common/technology/autopilot/etc/autopilot_dt.def", metadata !"/home/andrea/Documenti/vision/Ultrascale/hls/OV7670_LUMA_CHROMA", null} ; [ DW_TAG_file_type ]
!69 = metadata !{metadata !70, metadata !72, metadata !78}
!70 = metadata !{i32 786445, metadata !67, metadata !"V", metadata !68, i32 10, i64 8, i64 8, i64 0, i32 0, metadata !71} ; [ DW_TAG_member ]
!71 = metadata !{i32 786468, null, metadata !"uint8", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!72 = metadata !{i32 786478, i32 0, metadata !67, metadata !"ssdm_int", metadata !"ssdm_int", metadata !"", metadata !68, i32 10, metadata !73, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 10} ; [ DW_TAG_subprogram ]
!73 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !74, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!74 = metadata !{null, metadata !75}
!75 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !67} ; [ DW_TAG_pointer_type ]
!76 = metadata !{metadata !77}
!77 = metadata !{i32 786468}                      ; [ DW_TAG_base_type ]
!78 = metadata !{i32 786478, i32 0, metadata !67, metadata !"ssdm_int", metadata !"ssdm_int", metadata !"", metadata !68, i32 10, metadata !79, i1 false, i1 false, i32 0, i32 0, null, i32 320, i1 false, null, null, i32 0, metadata !76, i32 10} ; [ DW_TAG_subprogram ]
!79 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !80, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!80 = metadata !{null, metadata !75, metadata !81}
!81 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !82} ; [ DW_TAG_reference_type ]
!82 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !67} ; [ DW_TAG_const_type ]
!83 = metadata !{metadata !84, metadata !86}
!84 = metadata !{i32 786480, null, metadata !"_AP_N", metadata !85, i64 8, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!85 = metadata !{i32 786468, null, metadata !"int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!86 = metadata !{i32 786480, null, metadata !"_AP_S", metadata !87, i64 0, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!87 = metadata !{i32 786468, null, metadata !"bool", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 2} ; [ DW_TAG_base_type ]
!88 = metadata !{i32 786478, i32 0, metadata !63, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !64, i32 1494, metadata !89, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 1494} ; [ DW_TAG_subprogram ]
!89 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !90, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!90 = metadata !{null, metadata !91}
!91 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !63} ; [ DW_TAG_pointer_type ]
!92 = metadata !{i32 786478, i32 0, metadata !63, metadata !"ap_int_base<8, false>", metadata !"ap_int_base<8, false>", metadata !"", metadata !64, i32 1506, metadata !93, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !97, i32 0, metadata !76, i32 1506} ; [ DW_TAG_subprogram ]
!93 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !94, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!94 = metadata !{null, metadata !91, metadata !95}
!95 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !96} ; [ DW_TAG_reference_type ]
!96 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !63} ; [ DW_TAG_const_type ]
!97 = metadata !{metadata !98, metadata !99}
!98 = metadata !{i32 786480, null, metadata !"_AP_W2", metadata !85, i64 8, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!99 = metadata !{i32 786480, null, metadata !"_AP_S2", metadata !87, i64 0, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!100 = metadata !{i32 786478, i32 0, metadata !63, metadata !"ap_int_base<8, false>", metadata !"ap_int_base<8, false>", metadata !"", metadata !64, i32 1509, metadata !101, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !97, i32 0, metadata !76, i32 1509} ; [ DW_TAG_subprogram ]
!101 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !102, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!102 = metadata !{null, metadata !91, metadata !103}
!103 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !104} ; [ DW_TAG_reference_type ]
!104 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !105} ; [ DW_TAG_const_type ]
!105 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !63} ; [ DW_TAG_volatile_type ]
!106 = metadata !{i32 786478, i32 0, metadata !63, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !64, i32 1516, metadata !107, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !76, i32 1516} ; [ DW_TAG_subprogram ]
!107 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !108, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!108 = metadata !{null, metadata !91, metadata !87}
!109 = metadata !{i32 786478, i32 0, metadata !63, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !64, i32 1517, metadata !110, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !76, i32 1517} ; [ DW_TAG_subprogram ]
!110 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !111, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!111 = metadata !{null, metadata !91, metadata !112}
!112 = metadata !{i32 786468, null, metadata !"signed char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!113 = metadata !{i32 786478, i32 0, metadata !63, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !64, i32 1518, metadata !114, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !76, i32 1518} ; [ DW_TAG_subprogram ]
!114 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !115, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!115 = metadata !{null, metadata !91, metadata !116}
!116 = metadata !{i32 786468, null, metadata !"unsigned char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 8} ; [ DW_TAG_base_type ]
!117 = metadata !{i32 786478, i32 0, metadata !63, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !64, i32 1519, metadata !118, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !76, i32 1519} ; [ DW_TAG_subprogram ]
!118 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !119, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!119 = metadata !{null, metadata !91, metadata !120}
!120 = metadata !{i32 786468, null, metadata !"short", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!121 = metadata !{i32 786478, i32 0, metadata !63, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !64, i32 1520, metadata !122, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !76, i32 1520} ; [ DW_TAG_subprogram ]
!122 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !123, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!123 = metadata !{null, metadata !91, metadata !124}
!124 = metadata !{i32 786468, null, metadata !"unsigned short", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!125 = metadata !{i32 786478, i32 0, metadata !63, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !64, i32 1521, metadata !126, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !76, i32 1521} ; [ DW_TAG_subprogram ]
!126 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !127, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!127 = metadata !{null, metadata !91, metadata !85}
!128 = metadata !{i32 786478, i32 0, metadata !63, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !64, i32 1522, metadata !129, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !76, i32 1522} ; [ DW_TAG_subprogram ]
!129 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !130, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!130 = metadata !{null, metadata !91, metadata !131}
!131 = metadata !{i32 786468, null, metadata !"unsigned int", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!132 = metadata !{i32 786478, i32 0, metadata !63, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !64, i32 1523, metadata !133, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !76, i32 1523} ; [ DW_TAG_subprogram ]
!133 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !134, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!134 = metadata !{null, metadata !91, metadata !135}
!135 = metadata !{i32 786468, null, metadata !"long int", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!136 = metadata !{i32 786478, i32 0, metadata !63, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !64, i32 1524, metadata !137, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !76, i32 1524} ; [ DW_TAG_subprogram ]
!137 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !138, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!138 = metadata !{null, metadata !91, metadata !139}
!139 = metadata !{i32 786468, null, metadata !"long unsigned int", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!140 = metadata !{i32 786478, i32 0, metadata !63, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !64, i32 1525, metadata !141, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !76, i32 1525} ; [ DW_TAG_subprogram ]
!141 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !142, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!142 = metadata !{null, metadata !91, metadata !143}
!143 = metadata !{i32 786454, null, metadata !"ap_slong", metadata !64, i32 112, i64 0, i64 0, i64 0, i32 0, metadata !144} ; [ DW_TAG_typedef ]
!144 = metadata !{i32 786468, null, metadata !"long long int", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!145 = metadata !{i32 786478, i32 0, metadata !63, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !64, i32 1526, metadata !146, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !76, i32 1526} ; [ DW_TAG_subprogram ]
!146 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !147, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!147 = metadata !{null, metadata !91, metadata !148}
!148 = metadata !{i32 786454, null, metadata !"ap_ulong", metadata !64, i32 111, i64 0, i64 0, i64 0, i32 0, metadata !149} ; [ DW_TAG_typedef ]
!149 = metadata !{i32 786468, null, metadata !"long long unsigned int", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ]
!150 = metadata !{i32 786478, i32 0, metadata !63, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !64, i32 1527, metadata !151, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !76, i32 1527} ; [ DW_TAG_subprogram ]
!151 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !152, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!152 = metadata !{null, metadata !91, metadata !153}
!153 = metadata !{i32 786454, null, metadata !"half", metadata !64, i32 54, i64 0, i64 0, i64 0, i32 0, metadata !154} ; [ DW_TAG_typedef ]
!154 = metadata !{i32 786468, null, metadata !"half", null, i32 0, i64 16, i64 16, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!155 = metadata !{i32 786478, i32 0, metadata !63, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !64, i32 1528, metadata !156, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !76, i32 1528} ; [ DW_TAG_subprogram ]
!156 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !157, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!157 = metadata !{null, metadata !91, metadata !158}
!158 = metadata !{i32 786468, null, metadata !"float", null, i32 0, i64 32, i64 32, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!159 = metadata !{i32 786478, i32 0, metadata !63, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !64, i32 1529, metadata !160, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !76, i32 1529} ; [ DW_TAG_subprogram ]
!160 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !161, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!161 = metadata !{null, metadata !91, metadata !162}
!162 = metadata !{i32 786468, null, metadata !"double", null, i32 0, i64 64, i64 64, i64 0, i32 0, i32 4} ; [ DW_TAG_base_type ]
!163 = metadata !{i32 786478, i32 0, metadata !63, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !64, i32 1556, metadata !164, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 1556} ; [ DW_TAG_subprogram ]
!164 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !165, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!165 = metadata !{null, metadata !91, metadata !166}
!166 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !167} ; [ DW_TAG_pointer_type ]
!167 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !168} ; [ DW_TAG_const_type ]
!168 = metadata !{i32 786468, null, metadata !"char", null, i32 0, i64 8, i64 8, i64 0, i32 0, i32 6} ; [ DW_TAG_base_type ]
!169 = metadata !{i32 786478, i32 0, metadata !63, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !64, i32 1563, metadata !170, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 1563} ; [ DW_TAG_subprogram ]
!170 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !171, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!171 = metadata !{null, metadata !91, metadata !166, metadata !112}
!172 = metadata !{i32 786478, i32 0, metadata !63, metadata !"read", metadata !"read", metadata !"_ZNV11ap_int_baseILi8ELb0ELb1EE4readEv", metadata !64, i32 1584, metadata !173, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 1584} ; [ DW_TAG_subprogram ]
!173 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !174, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!174 = metadata !{metadata !63, metadata !175}
!175 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !105} ; [ DW_TAG_pointer_type ]
!176 = metadata !{i32 786478, i32 0, metadata !63, metadata !"write", metadata !"write", metadata !"_ZNV11ap_int_baseILi8ELb0ELb1EE5writeERKS0_", metadata !64, i32 1590, metadata !177, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 1590} ; [ DW_TAG_subprogram ]
!177 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !178, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!178 = metadata !{null, metadata !175, metadata !95}
!179 = metadata !{i32 786478, i32 0, metadata !63, metadata !"operator=", metadata !"operator=", metadata !"_ZNV11ap_int_baseILi8ELb0ELb1EEaSERVKS0_", metadata !64, i32 1602, metadata !180, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 1602} ; [ DW_TAG_subprogram ]
!180 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !181, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!181 = metadata !{null, metadata !175, metadata !103}
!182 = metadata !{i32 786478, i32 0, metadata !63, metadata !"operator=", metadata !"operator=", metadata !"_ZNV11ap_int_baseILi8ELb0ELb1EEaSERKS0_", metadata !64, i32 1611, metadata !177, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 1611} ; [ DW_TAG_subprogram ]
!183 = metadata !{i32 786478, i32 0, metadata !63, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi8ELb0ELb1EEaSERVKS0_", metadata !64, i32 1634, metadata !184, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 1634} ; [ DW_TAG_subprogram ]
!184 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !185, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!185 = metadata !{metadata !186, metadata !91, metadata !103}
!186 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !63} ; [ DW_TAG_reference_type ]
!187 = metadata !{i32 786478, i32 0, metadata !63, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi8ELb0ELb1EEaSERKS0_", metadata !64, i32 1639, metadata !188, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 1639} ; [ DW_TAG_subprogram ]
!188 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !189, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!189 = metadata !{metadata !186, metadata !91, metadata !95}
!190 = metadata !{i32 786478, i32 0, metadata !63, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi8ELb0ELb1EEaSEPKc", metadata !64, i32 1643, metadata !191, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 1643} ; [ DW_TAG_subprogram ]
!191 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !192, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!192 = metadata !{metadata !186, metadata !91, metadata !166}
!193 = metadata !{i32 786478, i32 0, metadata !63, metadata !"set", metadata !"set", metadata !"_ZN11ap_int_baseILi8ELb0ELb1EE3setEPKca", metadata !64, i32 1651, metadata !194, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 1651} ; [ DW_TAG_subprogram ]
!194 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !195, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!195 = metadata !{metadata !186, metadata !91, metadata !166, metadata !112}
!196 = metadata !{i32 786478, i32 0, metadata !63, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi8ELb0ELb1EEaSEa", metadata !64, i32 1665, metadata !197, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 1665} ; [ DW_TAG_subprogram ]
!197 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !198, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!198 = metadata !{metadata !186, metadata !91, metadata !112}
!199 = metadata !{i32 786478, i32 0, metadata !63, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi8ELb0ELb1EEaSEh", metadata !64, i32 1666, metadata !200, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 1666} ; [ DW_TAG_subprogram ]
!200 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !201, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!201 = metadata !{metadata !186, metadata !91, metadata !116}
!202 = metadata !{i32 786478, i32 0, metadata !63, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi8ELb0ELb1EEaSEs", metadata !64, i32 1667, metadata !203, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 1667} ; [ DW_TAG_subprogram ]
!203 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !204, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!204 = metadata !{metadata !186, metadata !91, metadata !120}
!205 = metadata !{i32 786478, i32 0, metadata !63, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi8ELb0ELb1EEaSEt", metadata !64, i32 1668, metadata !206, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 1668} ; [ DW_TAG_subprogram ]
!206 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !207, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!207 = metadata !{metadata !186, metadata !91, metadata !124}
!208 = metadata !{i32 786478, i32 0, metadata !63, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi8ELb0ELb1EEaSEi", metadata !64, i32 1669, metadata !209, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 1669} ; [ DW_TAG_subprogram ]
!209 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !210, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!210 = metadata !{metadata !186, metadata !91, metadata !85}
!211 = metadata !{i32 786478, i32 0, metadata !63, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi8ELb0ELb1EEaSEj", metadata !64, i32 1670, metadata !212, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 1670} ; [ DW_TAG_subprogram ]
!212 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !213, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!213 = metadata !{metadata !186, metadata !91, metadata !131}
!214 = metadata !{i32 786478, i32 0, metadata !63, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi8ELb0ELb1EEaSEx", metadata !64, i32 1671, metadata !215, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 1671} ; [ DW_TAG_subprogram ]
!215 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !216, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!216 = metadata !{metadata !186, metadata !91, metadata !143}
!217 = metadata !{i32 786478, i32 0, metadata !63, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi8ELb0ELb1EEaSEy", metadata !64, i32 1672, metadata !218, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 1672} ; [ DW_TAG_subprogram ]
!218 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !219, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!219 = metadata !{metadata !186, metadata !91, metadata !148}
!220 = metadata !{i32 786478, i32 0, metadata !63, metadata !"operator unsigned char", metadata !"operator unsigned char", metadata !"_ZNK11ap_int_baseILi8ELb0ELb1EEcvhEv", metadata !64, i32 1710, metadata !221, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 1710} ; [ DW_TAG_subprogram ]
!221 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !222, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!222 = metadata !{metadata !223, metadata !229}
!223 = metadata !{i32 786454, metadata !63, metadata !"RetType", metadata !64, i32 1458, i64 0, i64 0, i64 0, i32 0, metadata !224} ; [ DW_TAG_typedef ]
!224 = metadata !{i32 786454, metadata !225, metadata !"Type", metadata !64, i32 1426, i64 0, i64 0, i64 0, i32 0, metadata !116} ; [ DW_TAG_typedef ]
!225 = metadata !{i32 786434, null, metadata !"retval<1, false>", metadata !64, i32 1425, i64 8, i64 8, i32 0, i32 0, null, metadata !226, i32 0, null, metadata !227} ; [ DW_TAG_class_type ]
!226 = metadata !{i32 0}
!227 = metadata !{metadata !228, metadata !86}
!228 = metadata !{i32 786480, null, metadata !"_AP_N", metadata !85, i64 1, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!229 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !96} ; [ DW_TAG_pointer_type ]
!230 = metadata !{i32 786478, i32 0, metadata !63, metadata !"to_bool", metadata !"to_bool", metadata !"_ZNK11ap_int_baseILi8ELb0ELb1EE7to_boolEv", metadata !64, i32 1716, metadata !231, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 1716} ; [ DW_TAG_subprogram ]
!231 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !232, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!232 = metadata !{metadata !87, metadata !229}
!233 = metadata !{i32 786478, i32 0, metadata !63, metadata !"to_uchar", metadata !"to_uchar", metadata !"_ZNK11ap_int_baseILi8ELb0ELb1EE8to_ucharEv", metadata !64, i32 1717, metadata !234, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 1717} ; [ DW_TAG_subprogram ]
!234 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !235, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!235 = metadata !{metadata !116, metadata !229}
!236 = metadata !{i32 786478, i32 0, metadata !63, metadata !"to_char", metadata !"to_char", metadata !"_ZNK11ap_int_baseILi8ELb0ELb1EE7to_charEv", metadata !64, i32 1718, metadata !237, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 1718} ; [ DW_TAG_subprogram ]
!237 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !238, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!238 = metadata !{metadata !112, metadata !229}
!239 = metadata !{i32 786478, i32 0, metadata !63, metadata !"to_ushort", metadata !"to_ushort", metadata !"_ZNK11ap_int_baseILi8ELb0ELb1EE9to_ushortEv", metadata !64, i32 1719, metadata !240, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 1719} ; [ DW_TAG_subprogram ]
!240 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !241, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!241 = metadata !{metadata !124, metadata !229}
!242 = metadata !{i32 786478, i32 0, metadata !63, metadata !"to_short", metadata !"to_short", metadata !"_ZNK11ap_int_baseILi8ELb0ELb1EE8to_shortEv", metadata !64, i32 1720, metadata !243, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 1720} ; [ DW_TAG_subprogram ]
!243 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !244, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!244 = metadata !{metadata !120, metadata !229}
!245 = metadata !{i32 786478, i32 0, metadata !63, metadata !"to_int", metadata !"to_int", metadata !"_ZNK11ap_int_baseILi8ELb0ELb1EE6to_intEv", metadata !64, i32 1721, metadata !246, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 1721} ; [ DW_TAG_subprogram ]
!246 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !247, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!247 = metadata !{metadata !85, metadata !229}
!248 = metadata !{i32 786478, i32 0, metadata !63, metadata !"to_uint", metadata !"to_uint", metadata !"_ZNK11ap_int_baseILi8ELb0ELb1EE7to_uintEv", metadata !64, i32 1722, metadata !249, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 1722} ; [ DW_TAG_subprogram ]
!249 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !250, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!250 = metadata !{metadata !131, metadata !229}
!251 = metadata !{i32 786478, i32 0, metadata !63, metadata !"to_long", metadata !"to_long", metadata !"_ZNK11ap_int_baseILi8ELb0ELb1EE7to_longEv", metadata !64, i32 1723, metadata !252, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 1723} ; [ DW_TAG_subprogram ]
!252 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !253, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!253 = metadata !{metadata !135, metadata !229}
!254 = metadata !{i32 786478, i32 0, metadata !63, metadata !"to_ulong", metadata !"to_ulong", metadata !"_ZNK11ap_int_baseILi8ELb0ELb1EE8to_ulongEv", metadata !64, i32 1724, metadata !255, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 1724} ; [ DW_TAG_subprogram ]
!255 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !256, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!256 = metadata !{metadata !139, metadata !229}
!257 = metadata !{i32 786478, i32 0, metadata !63, metadata !"to_int64", metadata !"to_int64", metadata !"_ZNK11ap_int_baseILi8ELb0ELb1EE8to_int64Ev", metadata !64, i32 1725, metadata !258, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 1725} ; [ DW_TAG_subprogram ]
!258 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !259, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!259 = metadata !{metadata !143, metadata !229}
!260 = metadata !{i32 786478, i32 0, metadata !63, metadata !"to_uint64", metadata !"to_uint64", metadata !"_ZNK11ap_int_baseILi8ELb0ELb1EE9to_uint64Ev", metadata !64, i32 1726, metadata !261, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 1726} ; [ DW_TAG_subprogram ]
!261 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !262, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!262 = metadata !{metadata !148, metadata !229}
!263 = metadata !{i32 786478, i32 0, metadata !63, metadata !"to_double", metadata !"to_double", metadata !"_ZNK11ap_int_baseILi8ELb0ELb1EE9to_doubleEv", metadata !64, i32 1727, metadata !264, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 1727} ; [ DW_TAG_subprogram ]
!264 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !265, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!265 = metadata !{metadata !162, metadata !229}
!266 = metadata !{i32 786478, i32 0, metadata !63, metadata !"length", metadata !"length", metadata !"_ZNK11ap_int_baseILi8ELb0ELb1EE6lengthEv", metadata !64, i32 1741, metadata !246, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 1741} ; [ DW_TAG_subprogram ]
!267 = metadata !{i32 786478, i32 0, metadata !63, metadata !"length", metadata !"length", metadata !"_ZNVK11ap_int_baseILi8ELb0ELb1EE6lengthEv", metadata !64, i32 1742, metadata !268, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 1742} ; [ DW_TAG_subprogram ]
!268 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !269, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!269 = metadata !{metadata !85, metadata !270}
!270 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !104} ; [ DW_TAG_pointer_type ]
!271 = metadata !{i32 786478, i32 0, metadata !63, metadata !"reverse", metadata !"reverse", metadata !"_ZN11ap_int_baseILi8ELb0ELb1EE7reverseEv", metadata !64, i32 1747, metadata !272, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 1747} ; [ DW_TAG_subprogram ]
!272 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !273, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!273 = metadata !{metadata !186, metadata !91}
!274 = metadata !{i32 786478, i32 0, metadata !63, metadata !"iszero", metadata !"iszero", metadata !"_ZNK11ap_int_baseILi8ELb0ELb1EE6iszeroEv", metadata !64, i32 1753, metadata !231, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 1753} ; [ DW_TAG_subprogram ]
!275 = metadata !{i32 786478, i32 0, metadata !63, metadata !"is_zero", metadata !"is_zero", metadata !"_ZNK11ap_int_baseILi8ELb0ELb1EE7is_zeroEv", metadata !64, i32 1758, metadata !231, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 1758} ; [ DW_TAG_subprogram ]
!276 = metadata !{i32 786478, i32 0, metadata !63, metadata !"sign", metadata !"sign", metadata !"_ZNK11ap_int_baseILi8ELb0ELb1EE4signEv", metadata !64, i32 1763, metadata !231, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 1763} ; [ DW_TAG_subprogram ]
!277 = metadata !{i32 786478, i32 0, metadata !63, metadata !"clear", metadata !"clear", metadata !"_ZN11ap_int_baseILi8ELb0ELb1EE5clearEi", metadata !64, i32 1771, metadata !126, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 1771} ; [ DW_TAG_subprogram ]
!278 = metadata !{i32 786478, i32 0, metadata !63, metadata !"invert", metadata !"invert", metadata !"_ZN11ap_int_baseILi8ELb0ELb1EE6invertEi", metadata !64, i32 1777, metadata !126, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 1777} ; [ DW_TAG_subprogram ]
!279 = metadata !{i32 786478, i32 0, metadata !63, metadata !"test", metadata !"test", metadata !"_ZNK11ap_int_baseILi8ELb0ELb1EE4testEi", metadata !64, i32 1785, metadata !280, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 1785} ; [ DW_TAG_subprogram ]
!280 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !281, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!281 = metadata !{metadata !87, metadata !229, metadata !85}
!282 = metadata !{i32 786478, i32 0, metadata !63, metadata !"set", metadata !"set", metadata !"_ZN11ap_int_baseILi8ELb0ELb1EE3setEi", metadata !64, i32 1791, metadata !126, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 1791} ; [ DW_TAG_subprogram ]
!283 = metadata !{i32 786478, i32 0, metadata !63, metadata !"set", metadata !"set", metadata !"_ZN11ap_int_baseILi8ELb0ELb1EE3setEib", metadata !64, i32 1797, metadata !284, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 1797} ; [ DW_TAG_subprogram ]
!284 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !285, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!285 = metadata !{null, metadata !91, metadata !85, metadata !87}
!286 = metadata !{i32 786478, i32 0, metadata !63, metadata !"lrotate", metadata !"lrotate", metadata !"_ZN11ap_int_baseILi8ELb0ELb1EE7lrotateEi", metadata !64, i32 1804, metadata !126, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 1804} ; [ DW_TAG_subprogram ]
!287 = metadata !{i32 786478, i32 0, metadata !63, metadata !"rrotate", metadata !"rrotate", metadata !"_ZN11ap_int_baseILi8ELb0ELb1EE7rrotateEi", metadata !64, i32 1813, metadata !126, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 1813} ; [ DW_TAG_subprogram ]
!288 = metadata !{i32 786478, i32 0, metadata !63, metadata !"set_bit", metadata !"set_bit", metadata !"_ZN11ap_int_baseILi8ELb0ELb1EE7set_bitEib", metadata !64, i32 1821, metadata !284, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 1821} ; [ DW_TAG_subprogram ]
!289 = metadata !{i32 786478, i32 0, metadata !63, metadata !"get_bit", metadata !"get_bit", metadata !"_ZNK11ap_int_baseILi8ELb0ELb1EE7get_bitEi", metadata !64, i32 1826, metadata !280, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 1826} ; [ DW_TAG_subprogram ]
!290 = metadata !{i32 786478, i32 0, metadata !63, metadata !"b_not", metadata !"b_not", metadata !"_ZN11ap_int_baseILi8ELb0ELb1EE5b_notEv", metadata !64, i32 1831, metadata !89, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 1831} ; [ DW_TAG_subprogram ]
!291 = metadata !{i32 786478, i32 0, metadata !63, metadata !"countLeadingZeros", metadata !"countLeadingZeros", metadata !"_ZN11ap_int_baseILi8ELb0ELb1EE17countLeadingZerosEv", metadata !64, i32 1838, metadata !292, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 1838} ; [ DW_TAG_subprogram ]
!292 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !293, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!293 = metadata !{metadata !85, metadata !91}
!294 = metadata !{i32 786478, i32 0, metadata !63, metadata !"operator++", metadata !"operator++", metadata !"_ZN11ap_int_baseILi8ELb0ELb1EEppEv", metadata !64, i32 1895, metadata !272, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 1895} ; [ DW_TAG_subprogram ]
!295 = metadata !{i32 786478, i32 0, metadata !63, metadata !"operator--", metadata !"operator--", metadata !"_ZN11ap_int_baseILi8ELb0ELb1EEmmEv", metadata !64, i32 1899, metadata !272, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 1899} ; [ DW_TAG_subprogram ]
!296 = metadata !{i32 786478, i32 0, metadata !63, metadata !"operator++", metadata !"operator++", metadata !"_ZN11ap_int_baseILi8ELb0ELb1EEppEi", metadata !64, i32 1907, metadata !297, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 1907} ; [ DW_TAG_subprogram ]
!297 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !298, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!298 = metadata !{metadata !96, metadata !91, metadata !85}
!299 = metadata !{i32 786478, i32 0, metadata !63, metadata !"operator--", metadata !"operator--", metadata !"_ZN11ap_int_baseILi8ELb0ELb1EEmmEi", metadata !64, i32 1912, metadata !297, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 1912} ; [ DW_TAG_subprogram ]
!300 = metadata !{i32 786478, i32 0, metadata !63, metadata !"operator+", metadata !"operator+", metadata !"_ZNK11ap_int_baseILi8ELb0ELb1EEpsEv", metadata !64, i32 1921, metadata !301, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 1921} ; [ DW_TAG_subprogram ]
!301 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !302, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!302 = metadata !{metadata !63, metadata !229}
!303 = metadata !{i32 786478, i32 0, metadata !63, metadata !"operator!", metadata !"operator!", metadata !"_ZNK11ap_int_baseILi8ELb0ELb1EEntEv", metadata !64, i32 1927, metadata !231, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 1927} ; [ DW_TAG_subprogram ]
!304 = metadata !{i32 786478, i32 0, metadata !63, metadata !"operator-", metadata !"operator-", metadata !"_ZNK11ap_int_baseILi8ELb0ELb1EEngEv", metadata !64, i32 1932, metadata !305, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 1932} ; [ DW_TAG_subprogram ]
!305 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !306, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!306 = metadata !{metadata !307, metadata !229}
!307 = metadata !{i32 786434, null, metadata !"ap_int_base<9, true, true>", metadata !64, i32 1453, i64 16, i64 16, i32 0, i32 0, null, metadata !308, i32 0, null, metadata !597} ; [ DW_TAG_class_type ]
!308 = metadata !{metadata !309, metadata !321, metadata !325, metadata !328, metadata !331, metadata !334, metadata !337, metadata !340, metadata !343, metadata !346, metadata !349, metadata !352, metadata !355, metadata !358, metadata !361, metadata !364, metadata !367, metadata !370, metadata !373, metadata !378, metadata !383, metadata !388, metadata !389, metadata !393, metadata !396, metadata !399, metadata !402, metadata !405, metadata !408, metadata !411, metadata !414, metadata !417, metadata !420, metadata !423, metadata !426, metadata !435, metadata !438, metadata !441, metadata !444, metadata !447, metadata !450, metadata !453, metadata !456, metadata !459, metadata !462, metadata !465, metadata !468, metadata !471, metadata !472, metadata !476, metadata !479, metadata !480, metadata !481, metadata !482, metadata !483, metadata !484, metadata !487, metadata !488, metadata !491, metadata !492, metadata !493, metadata !494, metadata !495, metadata !496, metadata !499, metadata !500, metadata !501, metadata !504, metadata !505, metadata !508, metadata !509, metadata !516, metadata !522, metadata !523, metadata !526, metadata !527, metadata !564, metadata !565, metadata !566, metadata !567, metadata !570, metadata !571, metadata !572, metadata !573, metadata !574, metadata !575, metadata !576, metadata !577, metadata !578, metadata !579, metadata !580, metadata !581, metadata !591, metadata !594}
!309 = metadata !{i32 786460, metadata !307, null, metadata !64, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !310} ; [ DW_TAG_inheritance ]
!310 = metadata !{i32 786434, null, metadata !"ssdm_int<9 + 1024 * 0, true>", metadata !68, i32 11, i64 16, i64 16, i32 0, i32 0, null, metadata !311, i32 0, null, metadata !318} ; [ DW_TAG_class_type ]
!311 = metadata !{metadata !312, metadata !314}
!312 = metadata !{i32 786445, metadata !310, metadata !"V", metadata !68, i32 11, i64 9, i64 16, i64 0, i32 0, metadata !313} ; [ DW_TAG_member ]
!313 = metadata !{i32 786468, null, metadata !"int9", null, i32 0, i64 9, i64 16, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ]
!314 = metadata !{i32 786478, i32 0, metadata !310, metadata !"ssdm_int", metadata !"ssdm_int", metadata !"", metadata !68, i32 11, metadata !315, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 11} ; [ DW_TAG_subprogram ]
!315 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !316, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!316 = metadata !{null, metadata !317}
!317 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !310} ; [ DW_TAG_pointer_type ]
!318 = metadata !{metadata !319, metadata !320}
!319 = metadata !{i32 786480, null, metadata !"_AP_N", metadata !85, i64 9, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!320 = metadata !{i32 786480, null, metadata !"_AP_S", metadata !87, i64 1, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!321 = metadata !{i32 786478, i32 0, metadata !307, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !64, i32 1494, metadata !322, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 1494} ; [ DW_TAG_subprogram ]
!322 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !323, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!323 = metadata !{null, metadata !324}
!324 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !307} ; [ DW_TAG_pointer_type ]
!325 = metadata !{i32 786478, i32 0, metadata !307, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !64, i32 1516, metadata !326, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !76, i32 1516} ; [ DW_TAG_subprogram ]
!326 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !327, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!327 = metadata !{null, metadata !324, metadata !87}
!328 = metadata !{i32 786478, i32 0, metadata !307, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !64, i32 1517, metadata !329, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !76, i32 1517} ; [ DW_TAG_subprogram ]
!329 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !330, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!330 = metadata !{null, metadata !324, metadata !112}
!331 = metadata !{i32 786478, i32 0, metadata !307, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !64, i32 1518, metadata !332, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !76, i32 1518} ; [ DW_TAG_subprogram ]
!332 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !333, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!333 = metadata !{null, metadata !324, metadata !116}
!334 = metadata !{i32 786478, i32 0, metadata !307, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !64, i32 1519, metadata !335, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !76, i32 1519} ; [ DW_TAG_subprogram ]
!335 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !336, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!336 = metadata !{null, metadata !324, metadata !120}
!337 = metadata !{i32 786478, i32 0, metadata !307, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !64, i32 1520, metadata !338, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !76, i32 1520} ; [ DW_TAG_subprogram ]
!338 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !339, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!339 = metadata !{null, metadata !324, metadata !124}
!340 = metadata !{i32 786478, i32 0, metadata !307, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !64, i32 1521, metadata !341, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !76, i32 1521} ; [ DW_TAG_subprogram ]
!341 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !342, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!342 = metadata !{null, metadata !324, metadata !85}
!343 = metadata !{i32 786478, i32 0, metadata !307, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !64, i32 1522, metadata !344, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !76, i32 1522} ; [ DW_TAG_subprogram ]
!344 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !345, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!345 = metadata !{null, metadata !324, metadata !131}
!346 = metadata !{i32 786478, i32 0, metadata !307, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !64, i32 1523, metadata !347, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !76, i32 1523} ; [ DW_TAG_subprogram ]
!347 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !348, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!348 = metadata !{null, metadata !324, metadata !135}
!349 = metadata !{i32 786478, i32 0, metadata !307, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !64, i32 1524, metadata !350, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !76, i32 1524} ; [ DW_TAG_subprogram ]
!350 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !351, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!351 = metadata !{null, metadata !324, metadata !139}
!352 = metadata !{i32 786478, i32 0, metadata !307, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !64, i32 1525, metadata !353, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !76, i32 1525} ; [ DW_TAG_subprogram ]
!353 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !354, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!354 = metadata !{null, metadata !324, metadata !143}
!355 = metadata !{i32 786478, i32 0, metadata !307, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !64, i32 1526, metadata !356, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !76, i32 1526} ; [ DW_TAG_subprogram ]
!356 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !357, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!357 = metadata !{null, metadata !324, metadata !148}
!358 = metadata !{i32 786478, i32 0, metadata !307, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !64, i32 1527, metadata !359, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !76, i32 1527} ; [ DW_TAG_subprogram ]
!359 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !360, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!360 = metadata !{null, metadata !324, metadata !153}
!361 = metadata !{i32 786478, i32 0, metadata !307, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !64, i32 1528, metadata !362, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !76, i32 1528} ; [ DW_TAG_subprogram ]
!362 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !363, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!363 = metadata !{null, metadata !324, metadata !158}
!364 = metadata !{i32 786478, i32 0, metadata !307, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !64, i32 1529, metadata !365, i1 false, i1 false, i32 0, i32 0, null, i32 384, i1 false, null, null, i32 0, metadata !76, i32 1529} ; [ DW_TAG_subprogram ]
!365 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !366, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!366 = metadata !{null, metadata !324, metadata !162}
!367 = metadata !{i32 786478, i32 0, metadata !307, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !64, i32 1556, metadata !368, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 1556} ; [ DW_TAG_subprogram ]
!368 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !369, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!369 = metadata !{null, metadata !324, metadata !166}
!370 = metadata !{i32 786478, i32 0, metadata !307, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !64, i32 1563, metadata !371, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 1563} ; [ DW_TAG_subprogram ]
!371 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !372, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!372 = metadata !{null, metadata !324, metadata !166, metadata !112}
!373 = metadata !{i32 786478, i32 0, metadata !307, metadata !"read", metadata !"read", metadata !"_ZNV11ap_int_baseILi9ELb1ELb1EE4readEv", metadata !64, i32 1584, metadata !374, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 1584} ; [ DW_TAG_subprogram ]
!374 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !375, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!375 = metadata !{metadata !307, metadata !376}
!376 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !377} ; [ DW_TAG_pointer_type ]
!377 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !307} ; [ DW_TAG_volatile_type ]
!378 = metadata !{i32 786478, i32 0, metadata !307, metadata !"write", metadata !"write", metadata !"_ZNV11ap_int_baseILi9ELb1ELb1EE5writeERKS0_", metadata !64, i32 1590, metadata !379, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 1590} ; [ DW_TAG_subprogram ]
!379 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !380, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!380 = metadata !{null, metadata !376, metadata !381}
!381 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !382} ; [ DW_TAG_reference_type ]
!382 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !307} ; [ DW_TAG_const_type ]
!383 = metadata !{i32 786478, i32 0, metadata !307, metadata !"operator=", metadata !"operator=", metadata !"_ZNV11ap_int_baseILi9ELb1ELb1EEaSERVKS0_", metadata !64, i32 1602, metadata !384, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 1602} ; [ DW_TAG_subprogram ]
!384 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !385, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!385 = metadata !{null, metadata !376, metadata !386}
!386 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !387} ; [ DW_TAG_reference_type ]
!387 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !377} ; [ DW_TAG_const_type ]
!388 = metadata !{i32 786478, i32 0, metadata !307, metadata !"operator=", metadata !"operator=", metadata !"_ZNV11ap_int_baseILi9ELb1ELb1EEaSERKS0_", metadata !64, i32 1611, metadata !379, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 1611} ; [ DW_TAG_subprogram ]
!389 = metadata !{i32 786478, i32 0, metadata !307, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi9ELb1ELb1EEaSERVKS0_", metadata !64, i32 1634, metadata !390, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 1634} ; [ DW_TAG_subprogram ]
!390 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !391, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!391 = metadata !{metadata !392, metadata !324, metadata !386}
!392 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !307} ; [ DW_TAG_reference_type ]
!393 = metadata !{i32 786478, i32 0, metadata !307, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi9ELb1ELb1EEaSERKS0_", metadata !64, i32 1639, metadata !394, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 1639} ; [ DW_TAG_subprogram ]
!394 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !395, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!395 = metadata !{metadata !392, metadata !324, metadata !381}
!396 = metadata !{i32 786478, i32 0, metadata !307, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi9ELb1ELb1EEaSEPKc", metadata !64, i32 1643, metadata !397, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 1643} ; [ DW_TAG_subprogram ]
!397 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !398, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!398 = metadata !{metadata !392, metadata !324, metadata !166}
!399 = metadata !{i32 786478, i32 0, metadata !307, metadata !"set", metadata !"set", metadata !"_ZN11ap_int_baseILi9ELb1ELb1EE3setEPKca", metadata !64, i32 1651, metadata !400, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 1651} ; [ DW_TAG_subprogram ]
!400 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !401, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!401 = metadata !{metadata !392, metadata !324, metadata !166, metadata !112}
!402 = metadata !{i32 786478, i32 0, metadata !307, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi9ELb1ELb1EEaSEa", metadata !64, i32 1665, metadata !403, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 1665} ; [ DW_TAG_subprogram ]
!403 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !404, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!404 = metadata !{metadata !392, metadata !324, metadata !112}
!405 = metadata !{i32 786478, i32 0, metadata !307, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi9ELb1ELb1EEaSEh", metadata !64, i32 1666, metadata !406, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 1666} ; [ DW_TAG_subprogram ]
!406 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !407, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!407 = metadata !{metadata !392, metadata !324, metadata !116}
!408 = metadata !{i32 786478, i32 0, metadata !307, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi9ELb1ELb1EEaSEs", metadata !64, i32 1667, metadata !409, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 1667} ; [ DW_TAG_subprogram ]
!409 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !410, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!410 = metadata !{metadata !392, metadata !324, metadata !120}
!411 = metadata !{i32 786478, i32 0, metadata !307, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi9ELb1ELb1EEaSEt", metadata !64, i32 1668, metadata !412, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 1668} ; [ DW_TAG_subprogram ]
!412 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !413, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!413 = metadata !{metadata !392, metadata !324, metadata !124}
!414 = metadata !{i32 786478, i32 0, metadata !307, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi9ELb1ELb1EEaSEi", metadata !64, i32 1669, metadata !415, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 1669} ; [ DW_TAG_subprogram ]
!415 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !416, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!416 = metadata !{metadata !392, metadata !324, metadata !85}
!417 = metadata !{i32 786478, i32 0, metadata !307, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi9ELb1ELb1EEaSEj", metadata !64, i32 1670, metadata !418, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 1670} ; [ DW_TAG_subprogram ]
!418 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !419, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!419 = metadata !{metadata !392, metadata !324, metadata !131}
!420 = metadata !{i32 786478, i32 0, metadata !307, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi9ELb1ELb1EEaSEx", metadata !64, i32 1671, metadata !421, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 1671} ; [ DW_TAG_subprogram ]
!421 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !422, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!422 = metadata !{metadata !392, metadata !324, metadata !143}
!423 = metadata !{i32 786478, i32 0, metadata !307, metadata !"operator=", metadata !"operator=", metadata !"_ZN11ap_int_baseILi9ELb1ELb1EEaSEy", metadata !64, i32 1672, metadata !424, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 1672} ; [ DW_TAG_subprogram ]
!424 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !425, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!425 = metadata !{metadata !392, metadata !324, metadata !148}
!426 = metadata !{i32 786478, i32 0, metadata !307, metadata !"operator short", metadata !"operator short", metadata !"_ZNK11ap_int_baseILi9ELb1ELb1EEcvsEv", metadata !64, i32 1710, metadata !427, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 1710} ; [ DW_TAG_subprogram ]
!427 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !428, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!428 = metadata !{metadata !429, metadata !434}
!429 = metadata !{i32 786454, metadata !307, metadata !"RetType", metadata !64, i32 1458, i64 0, i64 0, i64 0, i32 0, metadata !430} ; [ DW_TAG_typedef ]
!430 = metadata !{i32 786454, metadata !431, metadata !"Type", metadata !64, i32 1429, i64 0, i64 0, i64 0, i32 0, metadata !120} ; [ DW_TAG_typedef ]
!431 = metadata !{i32 786434, null, metadata !"retval<2, true>", metadata !64, i32 1428, i64 8, i64 8, i32 0, i32 0, null, metadata !226, i32 0, null, metadata !432} ; [ DW_TAG_class_type ]
!432 = metadata !{metadata !433, metadata !320}
!433 = metadata !{i32 786480, null, metadata !"_AP_N", metadata !85, i64 2, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!434 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !382} ; [ DW_TAG_pointer_type ]
!435 = metadata !{i32 786478, i32 0, metadata !307, metadata !"to_bool", metadata !"to_bool", metadata !"_ZNK11ap_int_baseILi9ELb1ELb1EE7to_boolEv", metadata !64, i32 1716, metadata !436, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 1716} ; [ DW_TAG_subprogram ]
!436 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !437, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!437 = metadata !{metadata !87, metadata !434}
!438 = metadata !{i32 786478, i32 0, metadata !307, metadata !"to_uchar", metadata !"to_uchar", metadata !"_ZNK11ap_int_baseILi9ELb1ELb1EE8to_ucharEv", metadata !64, i32 1717, metadata !439, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 1717} ; [ DW_TAG_subprogram ]
!439 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !440, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!440 = metadata !{metadata !116, metadata !434}
!441 = metadata !{i32 786478, i32 0, metadata !307, metadata !"to_char", metadata !"to_char", metadata !"_ZNK11ap_int_baseILi9ELb1ELb1EE7to_charEv", metadata !64, i32 1718, metadata !442, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 1718} ; [ DW_TAG_subprogram ]
!442 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !443, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!443 = metadata !{metadata !112, metadata !434}
!444 = metadata !{i32 786478, i32 0, metadata !307, metadata !"to_ushort", metadata !"to_ushort", metadata !"_ZNK11ap_int_baseILi9ELb1ELb1EE9to_ushortEv", metadata !64, i32 1719, metadata !445, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 1719} ; [ DW_TAG_subprogram ]
!445 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !446, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!446 = metadata !{metadata !124, metadata !434}
!447 = metadata !{i32 786478, i32 0, metadata !307, metadata !"to_short", metadata !"to_short", metadata !"_ZNK11ap_int_baseILi9ELb1ELb1EE8to_shortEv", metadata !64, i32 1720, metadata !448, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 1720} ; [ DW_TAG_subprogram ]
!448 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !449, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!449 = metadata !{metadata !120, metadata !434}
!450 = metadata !{i32 786478, i32 0, metadata !307, metadata !"to_int", metadata !"to_int", metadata !"_ZNK11ap_int_baseILi9ELb1ELb1EE6to_intEv", metadata !64, i32 1721, metadata !451, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 1721} ; [ DW_TAG_subprogram ]
!451 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !452, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!452 = metadata !{metadata !85, metadata !434}
!453 = metadata !{i32 786478, i32 0, metadata !307, metadata !"to_uint", metadata !"to_uint", metadata !"_ZNK11ap_int_baseILi9ELb1ELb1EE7to_uintEv", metadata !64, i32 1722, metadata !454, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 1722} ; [ DW_TAG_subprogram ]
!454 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !455, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!455 = metadata !{metadata !131, metadata !434}
!456 = metadata !{i32 786478, i32 0, metadata !307, metadata !"to_long", metadata !"to_long", metadata !"_ZNK11ap_int_baseILi9ELb1ELb1EE7to_longEv", metadata !64, i32 1723, metadata !457, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 1723} ; [ DW_TAG_subprogram ]
!457 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !458, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!458 = metadata !{metadata !135, metadata !434}
!459 = metadata !{i32 786478, i32 0, metadata !307, metadata !"to_ulong", metadata !"to_ulong", metadata !"_ZNK11ap_int_baseILi9ELb1ELb1EE8to_ulongEv", metadata !64, i32 1724, metadata !460, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 1724} ; [ DW_TAG_subprogram ]
!460 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !461, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!461 = metadata !{metadata !139, metadata !434}
!462 = metadata !{i32 786478, i32 0, metadata !307, metadata !"to_int64", metadata !"to_int64", metadata !"_ZNK11ap_int_baseILi9ELb1ELb1EE8to_int64Ev", metadata !64, i32 1725, metadata !463, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 1725} ; [ DW_TAG_subprogram ]
!463 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !464, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!464 = metadata !{metadata !143, metadata !434}
!465 = metadata !{i32 786478, i32 0, metadata !307, metadata !"to_uint64", metadata !"to_uint64", metadata !"_ZNK11ap_int_baseILi9ELb1ELb1EE9to_uint64Ev", metadata !64, i32 1726, metadata !466, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 1726} ; [ DW_TAG_subprogram ]
!466 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !467, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!467 = metadata !{metadata !148, metadata !434}
!468 = metadata !{i32 786478, i32 0, metadata !307, metadata !"to_double", metadata !"to_double", metadata !"_ZNK11ap_int_baseILi9ELb1ELb1EE9to_doubleEv", metadata !64, i32 1727, metadata !469, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 1727} ; [ DW_TAG_subprogram ]
!469 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !470, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!470 = metadata !{metadata !162, metadata !434}
!471 = metadata !{i32 786478, i32 0, metadata !307, metadata !"length", metadata !"length", metadata !"_ZNK11ap_int_baseILi9ELb1ELb1EE6lengthEv", metadata !64, i32 1741, metadata !451, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 1741} ; [ DW_TAG_subprogram ]
!472 = metadata !{i32 786478, i32 0, metadata !307, metadata !"length", metadata !"length", metadata !"_ZNVK11ap_int_baseILi9ELb1ELb1EE6lengthEv", metadata !64, i32 1742, metadata !473, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 1742} ; [ DW_TAG_subprogram ]
!473 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !474, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!474 = metadata !{metadata !85, metadata !475}
!475 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !387} ; [ DW_TAG_pointer_type ]
!476 = metadata !{i32 786478, i32 0, metadata !307, metadata !"reverse", metadata !"reverse", metadata !"_ZN11ap_int_baseILi9ELb1ELb1EE7reverseEv", metadata !64, i32 1747, metadata !477, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 1747} ; [ DW_TAG_subprogram ]
!477 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !478, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!478 = metadata !{metadata !392, metadata !324}
!479 = metadata !{i32 786478, i32 0, metadata !307, metadata !"iszero", metadata !"iszero", metadata !"_ZNK11ap_int_baseILi9ELb1ELb1EE6iszeroEv", metadata !64, i32 1753, metadata !436, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 1753} ; [ DW_TAG_subprogram ]
!480 = metadata !{i32 786478, i32 0, metadata !307, metadata !"is_zero", metadata !"is_zero", metadata !"_ZNK11ap_int_baseILi9ELb1ELb1EE7is_zeroEv", metadata !64, i32 1758, metadata !436, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 1758} ; [ DW_TAG_subprogram ]
!481 = metadata !{i32 786478, i32 0, metadata !307, metadata !"sign", metadata !"sign", metadata !"_ZNK11ap_int_baseILi9ELb1ELb1EE4signEv", metadata !64, i32 1763, metadata !436, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 1763} ; [ DW_TAG_subprogram ]
!482 = metadata !{i32 786478, i32 0, metadata !307, metadata !"clear", metadata !"clear", metadata !"_ZN11ap_int_baseILi9ELb1ELb1EE5clearEi", metadata !64, i32 1771, metadata !341, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 1771} ; [ DW_TAG_subprogram ]
!483 = metadata !{i32 786478, i32 0, metadata !307, metadata !"invert", metadata !"invert", metadata !"_ZN11ap_int_baseILi9ELb1ELb1EE6invertEi", metadata !64, i32 1777, metadata !341, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 1777} ; [ DW_TAG_subprogram ]
!484 = metadata !{i32 786478, i32 0, metadata !307, metadata !"test", metadata !"test", metadata !"_ZNK11ap_int_baseILi9ELb1ELb1EE4testEi", metadata !64, i32 1785, metadata !485, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 1785} ; [ DW_TAG_subprogram ]
!485 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !486, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!486 = metadata !{metadata !87, metadata !434, metadata !85}
!487 = metadata !{i32 786478, i32 0, metadata !307, metadata !"set", metadata !"set", metadata !"_ZN11ap_int_baseILi9ELb1ELb1EE3setEi", metadata !64, i32 1791, metadata !341, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 1791} ; [ DW_TAG_subprogram ]
!488 = metadata !{i32 786478, i32 0, metadata !307, metadata !"set", metadata !"set", metadata !"_ZN11ap_int_baseILi9ELb1ELb1EE3setEib", metadata !64, i32 1797, metadata !489, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 1797} ; [ DW_TAG_subprogram ]
!489 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !490, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!490 = metadata !{null, metadata !324, metadata !85, metadata !87}
!491 = metadata !{i32 786478, i32 0, metadata !307, metadata !"lrotate", metadata !"lrotate", metadata !"_ZN11ap_int_baseILi9ELb1ELb1EE7lrotateEi", metadata !64, i32 1804, metadata !341, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 1804} ; [ DW_TAG_subprogram ]
!492 = metadata !{i32 786478, i32 0, metadata !307, metadata !"rrotate", metadata !"rrotate", metadata !"_ZN11ap_int_baseILi9ELb1ELb1EE7rrotateEi", metadata !64, i32 1813, metadata !341, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 1813} ; [ DW_TAG_subprogram ]
!493 = metadata !{i32 786478, i32 0, metadata !307, metadata !"set_bit", metadata !"set_bit", metadata !"_ZN11ap_int_baseILi9ELb1ELb1EE7set_bitEib", metadata !64, i32 1821, metadata !489, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 1821} ; [ DW_TAG_subprogram ]
!494 = metadata !{i32 786478, i32 0, metadata !307, metadata !"get_bit", metadata !"get_bit", metadata !"_ZNK11ap_int_baseILi9ELb1ELb1EE7get_bitEi", metadata !64, i32 1826, metadata !485, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 1826} ; [ DW_TAG_subprogram ]
!495 = metadata !{i32 786478, i32 0, metadata !307, metadata !"b_not", metadata !"b_not", metadata !"_ZN11ap_int_baseILi9ELb1ELb1EE5b_notEv", metadata !64, i32 1831, metadata !322, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 1831} ; [ DW_TAG_subprogram ]
!496 = metadata !{i32 786478, i32 0, metadata !307, metadata !"countLeadingZeros", metadata !"countLeadingZeros", metadata !"_ZN11ap_int_baseILi9ELb1ELb1EE17countLeadingZerosEv", metadata !64, i32 1838, metadata !497, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 1838} ; [ DW_TAG_subprogram ]
!497 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !498, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!498 = metadata !{metadata !85, metadata !324}
!499 = metadata !{i32 786478, i32 0, metadata !307, metadata !"operator++", metadata !"operator++", metadata !"_ZN11ap_int_baseILi9ELb1ELb1EEppEv", metadata !64, i32 1895, metadata !477, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 1895} ; [ DW_TAG_subprogram ]
!500 = metadata !{i32 786478, i32 0, metadata !307, metadata !"operator--", metadata !"operator--", metadata !"_ZN11ap_int_baseILi9ELb1ELb1EEmmEv", metadata !64, i32 1899, metadata !477, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 1899} ; [ DW_TAG_subprogram ]
!501 = metadata !{i32 786478, i32 0, metadata !307, metadata !"operator++", metadata !"operator++", metadata !"_ZN11ap_int_baseILi9ELb1ELb1EEppEi", metadata !64, i32 1907, metadata !502, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 1907} ; [ DW_TAG_subprogram ]
!502 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !503, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!503 = metadata !{metadata !382, metadata !324, metadata !85}
!504 = metadata !{i32 786478, i32 0, metadata !307, metadata !"operator--", metadata !"operator--", metadata !"_ZN11ap_int_baseILi9ELb1ELb1EEmmEi", metadata !64, i32 1912, metadata !502, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 1912} ; [ DW_TAG_subprogram ]
!505 = metadata !{i32 786478, i32 0, metadata !307, metadata !"operator+", metadata !"operator+", metadata !"_ZNK11ap_int_baseILi9ELb1ELb1EEpsEv", metadata !64, i32 1921, metadata !506, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 1921} ; [ DW_TAG_subprogram ]
!506 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !507, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!507 = metadata !{metadata !307, metadata !434}
!508 = metadata !{i32 786478, i32 0, metadata !307, metadata !"operator!", metadata !"operator!", metadata !"_ZNK11ap_int_baseILi9ELb1ELb1EEntEv", metadata !64, i32 1927, metadata !436, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 1927} ; [ DW_TAG_subprogram ]
!509 = metadata !{i32 786478, i32 0, metadata !307, metadata !"operator-", metadata !"operator-", metadata !"_ZNK11ap_int_baseILi9ELb1ELb1EEngEv", metadata !64, i32 1932, metadata !510, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 1932} ; [ DW_TAG_subprogram ]
!510 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !511, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!511 = metadata !{metadata !512, metadata !434}
!512 = metadata !{i32 786434, null, metadata !"ap_int_base<10, true, true>", metadata !64, i32 651, i64 0, i64 0, i32 0, i32 4, null, null, i32 0, null, metadata !513} ; [ DW_TAG_class_type ]
!513 = metadata !{metadata !514, metadata !320, metadata !515}
!514 = metadata !{i32 786480, null, metadata !"_AP_W", metadata !85, i64 10, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!515 = metadata !{i32 786480, null, metadata !"_AP_C", metadata !87, i64 1, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!516 = metadata !{i32 786478, i32 0, metadata !307, metadata !"range", metadata !"range", metadata !"_ZN11ap_int_baseILi9ELb1ELb1EE5rangeEii", metadata !64, i32 2062, metadata !517, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 2062} ; [ DW_TAG_subprogram ]
!517 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !518, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!518 = metadata !{metadata !519, metadata !324, metadata !85, metadata !85}
!519 = metadata !{i32 786434, null, metadata !"ap_range_ref<9, true>", metadata !64, i32 925, i64 0, i64 0, i32 0, i32 4, null, null, i32 0, null, metadata !520} ; [ DW_TAG_class_type ]
!520 = metadata !{metadata !521, metadata !320}
!521 = metadata !{i32 786480, null, metadata !"_AP_W", metadata !85, i64 9, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!522 = metadata !{i32 786478, i32 0, metadata !307, metadata !"operator()", metadata !"operator()", metadata !"_ZN11ap_int_baseILi9ELb1ELb1EEclEii", metadata !64, i32 2068, metadata !517, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 2068} ; [ DW_TAG_subprogram ]
!523 = metadata !{i32 786478, i32 0, metadata !307, metadata !"range", metadata !"range", metadata !"_ZNK11ap_int_baseILi9ELb1ELb1EE5rangeEii", metadata !64, i32 2074, metadata !524, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 2074} ; [ DW_TAG_subprogram ]
!524 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !525, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!525 = metadata !{metadata !519, metadata !434, metadata !85, metadata !85}
!526 = metadata !{i32 786478, i32 0, metadata !307, metadata !"operator()", metadata !"operator()", metadata !"_ZNK11ap_int_baseILi9ELb1ELb1EEclEii", metadata !64, i32 2080, metadata !524, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 2080} ; [ DW_TAG_subprogram ]
!527 = metadata !{i32 786478, i32 0, metadata !307, metadata !"operator[]", metadata !"operator[]", metadata !"_ZN11ap_int_baseILi9ELb1ELb1EEixEi", metadata !64, i32 2099, metadata !528, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 2099} ; [ DW_TAG_subprogram ]
!528 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !529, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!529 = metadata !{metadata !530, metadata !324, metadata !85}
!530 = metadata !{i32 786434, null, metadata !"ap_bit_ref<9, true>", metadata !64, i32 1249, i64 128, i64 64, i32 0, i32 0, null, metadata !531, i32 0, null, metadata !520} ; [ DW_TAG_class_type ]
!531 = metadata !{metadata !532, metadata !533, metadata !534, metadata !540, metadata !544, metadata !548, metadata !549, metadata !553, metadata !556, metadata !557, metadata !560, metadata !561}
!532 = metadata !{i32 786445, metadata !530, metadata !"d_bv", metadata !64, i32 1250, i64 64, i64 64, i64 0, i32 0, metadata !392} ; [ DW_TAG_member ]
!533 = metadata !{i32 786445, metadata !530, metadata !"d_index", metadata !64, i32 1251, i64 32, i64 32, i64 64, i32 0, metadata !85} ; [ DW_TAG_member ]
!534 = metadata !{i32 786478, i32 0, metadata !530, metadata !"ap_bit_ref", metadata !"ap_bit_ref", metadata !"", metadata !64, i32 1254, metadata !535, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 1254} ; [ DW_TAG_subprogram ]
!535 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !536, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!536 = metadata !{null, metadata !537, metadata !538}
!537 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !530} ; [ DW_TAG_pointer_type ]
!538 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !539} ; [ DW_TAG_reference_type ]
!539 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !530} ; [ DW_TAG_const_type ]
!540 = metadata !{i32 786478, i32 0, metadata !530, metadata !"ap_bit_ref", metadata !"ap_bit_ref", metadata !"", metadata !64, i32 1257, metadata !541, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 1257} ; [ DW_TAG_subprogram ]
!541 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !542, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!542 = metadata !{null, metadata !537, metadata !543, metadata !85}
!543 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !307} ; [ DW_TAG_pointer_type ]
!544 = metadata !{i32 786478, i32 0, metadata !530, metadata !"operator _Bool", metadata !"operator _Bool", metadata !"_ZNK10ap_bit_refILi9ELb1EEcvbEv", metadata !64, i32 1259, metadata !545, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 1259} ; [ DW_TAG_subprogram ]
!545 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !546, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!546 = metadata !{metadata !87, metadata !547}
!547 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !539} ; [ DW_TAG_pointer_type ]
!548 = metadata !{i32 786478, i32 0, metadata !530, metadata !"to_bool", metadata !"to_bool", metadata !"_ZNK10ap_bit_refILi9ELb1EE7to_boolEv", metadata !64, i32 1260, metadata !545, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 1260} ; [ DW_TAG_subprogram ]
!549 = metadata !{i32 786478, i32 0, metadata !530, metadata !"operator=", metadata !"operator=", metadata !"_ZN10ap_bit_refILi9ELb1EEaSEy", metadata !64, i32 1262, metadata !550, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 1262} ; [ DW_TAG_subprogram ]
!550 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !551, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!551 = metadata !{metadata !552, metadata !537, metadata !149}
!552 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !530} ; [ DW_TAG_reference_type ]
!553 = metadata !{i32 786478, i32 0, metadata !530, metadata !"operator=", metadata !"operator=", metadata !"_ZN10ap_bit_refILi9ELb1EEaSERKS0_", metadata !64, i32 1282, metadata !554, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 1282} ; [ DW_TAG_subprogram ]
!554 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !555, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!555 = metadata !{metadata !552, metadata !537, metadata !538}
!556 = metadata !{i32 786478, i32 0, metadata !530, metadata !"get", metadata !"get", metadata !"_ZNK10ap_bit_refILi9ELb1EE3getEv", metadata !64, i32 1390, metadata !545, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 1390} ; [ DW_TAG_subprogram ]
!557 = metadata !{i32 786478, i32 0, metadata !530, metadata !"get", metadata !"get", metadata !"_ZN10ap_bit_refILi9ELb1EE3getEv", metadata !64, i32 1394, metadata !558, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 1394} ; [ DW_TAG_subprogram ]
!558 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !559, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!559 = metadata !{metadata !87, metadata !537}
!560 = metadata !{i32 786478, i32 0, metadata !530, metadata !"operator~", metadata !"operator~", metadata !"_ZNK10ap_bit_refILi9ELb1EEcoEv", metadata !64, i32 1403, metadata !545, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 1403} ; [ DW_TAG_subprogram ]
!561 = metadata !{i32 786478, i32 0, metadata !530, metadata !"length", metadata !"length", metadata !"_ZNK10ap_bit_refILi9ELb1EE6lengthEv", metadata !64, i32 1408, metadata !562, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 1408} ; [ DW_TAG_subprogram ]
!562 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !563, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!563 = metadata !{metadata !85, metadata !547}
!564 = metadata !{i32 786478, i32 0, metadata !307, metadata !"operator[]", metadata !"operator[]", metadata !"_ZNK11ap_int_baseILi9ELb1ELb1EEixEi", metadata !64, i32 2113, metadata !485, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 2113} ; [ DW_TAG_subprogram ]
!565 = metadata !{i32 786478, i32 0, metadata !307, metadata !"bit", metadata !"bit", metadata !"_ZN11ap_int_baseILi9ELb1ELb1EE3bitEi", metadata !64, i32 2127, metadata !528, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 2127} ; [ DW_TAG_subprogram ]
!566 = metadata !{i32 786478, i32 0, metadata !307, metadata !"bit", metadata !"bit", metadata !"_ZNK11ap_int_baseILi9ELb1ELb1EE3bitEi", metadata !64, i32 2141, metadata !485, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 2141} ; [ DW_TAG_subprogram ]
!567 = metadata !{i32 786478, i32 0, metadata !307, metadata !"and_reduce", metadata !"and_reduce", metadata !"_ZN11ap_int_baseILi9ELb1ELb1EE10and_reduceEv", metadata !64, i32 2321, metadata !568, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 2321} ; [ DW_TAG_subprogram ]
!568 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !569, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!569 = metadata !{metadata !87, metadata !324}
!570 = metadata !{i32 786478, i32 0, metadata !307, metadata !"nand_reduce", metadata !"nand_reduce", metadata !"_ZN11ap_int_baseILi9ELb1ELb1EE11nand_reduceEv", metadata !64, i32 2324, metadata !568, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 2324} ; [ DW_TAG_subprogram ]
!571 = metadata !{i32 786478, i32 0, metadata !307, metadata !"or_reduce", metadata !"or_reduce", metadata !"_ZN11ap_int_baseILi9ELb1ELb1EE9or_reduceEv", metadata !64, i32 2327, metadata !568, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 2327} ; [ DW_TAG_subprogram ]
!572 = metadata !{i32 786478, i32 0, metadata !307, metadata !"nor_reduce", metadata !"nor_reduce", metadata !"_ZN11ap_int_baseILi9ELb1ELb1EE10nor_reduceEv", metadata !64, i32 2330, metadata !568, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 2330} ; [ DW_TAG_subprogram ]
!573 = metadata !{i32 786478, i32 0, metadata !307, metadata !"xor_reduce", metadata !"xor_reduce", metadata !"_ZN11ap_int_baseILi9ELb1ELb1EE10xor_reduceEv", metadata !64, i32 2333, metadata !568, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 2333} ; [ DW_TAG_subprogram ]
!574 = metadata !{i32 786478, i32 0, metadata !307, metadata !"xnor_reduce", metadata !"xnor_reduce", metadata !"_ZN11ap_int_baseILi9ELb1ELb1EE11xnor_reduceEv", metadata !64, i32 2336, metadata !568, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 2336} ; [ DW_TAG_subprogram ]
!575 = metadata !{i32 786478, i32 0, metadata !307, metadata !"and_reduce", metadata !"and_reduce", metadata !"_ZNK11ap_int_baseILi9ELb1ELb1EE10and_reduceEv", metadata !64, i32 2340, metadata !436, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 2340} ; [ DW_TAG_subprogram ]
!576 = metadata !{i32 786478, i32 0, metadata !307, metadata !"nand_reduce", metadata !"nand_reduce", metadata !"_ZNK11ap_int_baseILi9ELb1ELb1EE11nand_reduceEv", metadata !64, i32 2343, metadata !436, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 2343} ; [ DW_TAG_subprogram ]
!577 = metadata !{i32 786478, i32 0, metadata !307, metadata !"or_reduce", metadata !"or_reduce", metadata !"_ZNK11ap_int_baseILi9ELb1ELb1EE9or_reduceEv", metadata !64, i32 2346, metadata !436, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 2346} ; [ DW_TAG_subprogram ]
!578 = metadata !{i32 786478, i32 0, metadata !307, metadata !"nor_reduce", metadata !"nor_reduce", metadata !"_ZNK11ap_int_baseILi9ELb1ELb1EE10nor_reduceEv", metadata !64, i32 2349, metadata !436, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 2349} ; [ DW_TAG_subprogram ]
!579 = metadata !{i32 786478, i32 0, metadata !307, metadata !"xor_reduce", metadata !"xor_reduce", metadata !"_ZNK11ap_int_baseILi9ELb1ELb1EE10xor_reduceEv", metadata !64, i32 2352, metadata !436, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 2352} ; [ DW_TAG_subprogram ]
!580 = metadata !{i32 786478, i32 0, metadata !307, metadata !"xnor_reduce", metadata !"xnor_reduce", metadata !"_ZNK11ap_int_baseILi9ELb1ELb1EE11xnor_reduceEv", metadata !64, i32 2355, metadata !436, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 2355} ; [ DW_TAG_subprogram ]
!581 = metadata !{i32 786478, i32 0, metadata !307, metadata !"to_string", metadata !"to_string", metadata !"_ZNK11ap_int_baseILi9ELb1ELb1EE9to_stringEPci8BaseModeb", metadata !64, i32 2362, metadata !582, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 2362} ; [ DW_TAG_subprogram ]
!582 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !583, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!583 = metadata !{null, metadata !434, metadata !584, metadata !85, metadata !585, metadata !87}
!584 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !168} ; [ DW_TAG_pointer_type ]
!585 = metadata !{i32 786436, null, metadata !"BaseMode", metadata !64, i32 603, i64 5, i64 8, i32 0, i32 0, null, metadata !586, i32 0, i32 0} ; [ DW_TAG_enumeration_type ]
!586 = metadata !{metadata !587, metadata !588, metadata !589, metadata !590}
!587 = metadata !{i32 786472, metadata !"SC_BIN", i64 2} ; [ DW_TAG_enumerator ]
!588 = metadata !{i32 786472, metadata !"SC_OCT", i64 8} ; [ DW_TAG_enumerator ]
!589 = metadata !{i32 786472, metadata !"SC_DEC", i64 10} ; [ DW_TAG_enumerator ]
!590 = metadata !{i32 786472, metadata !"SC_HEX", i64 16} ; [ DW_TAG_enumerator ]
!591 = metadata !{i32 786478, i32 0, metadata !307, metadata !"to_string", metadata !"to_string", metadata !"_ZNK11ap_int_baseILi9ELb1ELb1EE9to_stringE8BaseModeb", metadata !64, i32 2389, metadata !592, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 2389} ; [ DW_TAG_subprogram ]
!592 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !593, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!593 = metadata !{metadata !584, metadata !434, metadata !585, metadata !87}
!594 = metadata !{i32 786478, i32 0, metadata !307, metadata !"to_string", metadata !"to_string", metadata !"_ZNK11ap_int_baseILi9ELb1ELb1EE9to_stringEab", metadata !64, i32 2393, metadata !595, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 2393} ; [ DW_TAG_subprogram ]
!595 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !596, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!596 = metadata !{metadata !584, metadata !434, metadata !112, metadata !87}
!597 = metadata !{metadata !521, metadata !320, metadata !515}
!598 = metadata !{i32 786478, i32 0, metadata !63, metadata !"range", metadata !"range", metadata !"_ZN11ap_int_baseILi8ELb0ELb1EE5rangeEii", metadata !64, i32 2062, metadata !599, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 2062} ; [ DW_TAG_subprogram ]
!599 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !600, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!600 = metadata !{metadata !601, metadata !91, metadata !85, metadata !85}
!601 = metadata !{i32 786434, null, metadata !"ap_range_ref<8, false>", metadata !64, i32 925, i64 0, i64 0, i32 0, i32 4, null, null, i32 0, null, metadata !602} ; [ DW_TAG_class_type ]
!602 = metadata !{metadata !603, metadata !86}
!603 = metadata !{i32 786480, null, metadata !"_AP_W", metadata !85, i64 8, null, i32 0, i32 0} ; [ DW_TAG_template_value_parameter ]
!604 = metadata !{i32 786478, i32 0, metadata !63, metadata !"operator()", metadata !"operator()", metadata !"_ZN11ap_int_baseILi8ELb0ELb1EEclEii", metadata !64, i32 2068, metadata !599, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 2068} ; [ DW_TAG_subprogram ]
!605 = metadata !{i32 786478, i32 0, metadata !63, metadata !"range", metadata !"range", metadata !"_ZNK11ap_int_baseILi8ELb0ELb1EE5rangeEii", metadata !64, i32 2074, metadata !606, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 2074} ; [ DW_TAG_subprogram ]
!606 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !607, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!607 = metadata !{metadata !601, metadata !229, metadata !85, metadata !85}
!608 = metadata !{i32 786478, i32 0, metadata !63, metadata !"operator()", metadata !"operator()", metadata !"_ZNK11ap_int_baseILi8ELb0ELb1EEclEii", metadata !64, i32 2080, metadata !606, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 2080} ; [ DW_TAG_subprogram ]
!609 = metadata !{i32 786478, i32 0, metadata !63, metadata !"operator[]", metadata !"operator[]", metadata !"_ZN11ap_int_baseILi8ELb0ELb1EEixEi", metadata !64, i32 2099, metadata !610, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 2099} ; [ DW_TAG_subprogram ]
!610 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !611, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!611 = metadata !{metadata !612, metadata !91, metadata !85}
!612 = metadata !{i32 786434, null, metadata !"ap_bit_ref<8, false>", metadata !64, i32 1249, i64 0, i64 0, i32 0, i32 4, null, null, i32 0, null, metadata !602} ; [ DW_TAG_class_type ]
!613 = metadata !{i32 786478, i32 0, metadata !63, metadata !"operator[]", metadata !"operator[]", metadata !"_ZNK11ap_int_baseILi8ELb0ELb1EEixEi", metadata !64, i32 2113, metadata !280, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 2113} ; [ DW_TAG_subprogram ]
!614 = metadata !{i32 786478, i32 0, metadata !63, metadata !"bit", metadata !"bit", metadata !"_ZN11ap_int_baseILi8ELb0ELb1EE3bitEi", metadata !64, i32 2127, metadata !610, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 2127} ; [ DW_TAG_subprogram ]
!615 = metadata !{i32 786478, i32 0, metadata !63, metadata !"bit", metadata !"bit", metadata !"_ZNK11ap_int_baseILi8ELb0ELb1EE3bitEi", metadata !64, i32 2141, metadata !280, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 2141} ; [ DW_TAG_subprogram ]
!616 = metadata !{i32 786478, i32 0, metadata !63, metadata !"and_reduce", metadata !"and_reduce", metadata !"_ZN11ap_int_baseILi8ELb0ELb1EE10and_reduceEv", metadata !64, i32 2321, metadata !617, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 2321} ; [ DW_TAG_subprogram ]
!617 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !618, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!618 = metadata !{metadata !87, metadata !91}
!619 = metadata !{i32 786478, i32 0, metadata !63, metadata !"nand_reduce", metadata !"nand_reduce", metadata !"_ZN11ap_int_baseILi8ELb0ELb1EE11nand_reduceEv", metadata !64, i32 2324, metadata !617, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 2324} ; [ DW_TAG_subprogram ]
!620 = metadata !{i32 786478, i32 0, metadata !63, metadata !"or_reduce", metadata !"or_reduce", metadata !"_ZN11ap_int_baseILi8ELb0ELb1EE9or_reduceEv", metadata !64, i32 2327, metadata !617, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 2327} ; [ DW_TAG_subprogram ]
!621 = metadata !{i32 786478, i32 0, metadata !63, metadata !"nor_reduce", metadata !"nor_reduce", metadata !"_ZN11ap_int_baseILi8ELb0ELb1EE10nor_reduceEv", metadata !64, i32 2330, metadata !617, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 2330} ; [ DW_TAG_subprogram ]
!622 = metadata !{i32 786478, i32 0, metadata !63, metadata !"xor_reduce", metadata !"xor_reduce", metadata !"_ZN11ap_int_baseILi8ELb0ELb1EE10xor_reduceEv", metadata !64, i32 2333, metadata !617, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 2333} ; [ DW_TAG_subprogram ]
!623 = metadata !{i32 786478, i32 0, metadata !63, metadata !"xnor_reduce", metadata !"xnor_reduce", metadata !"_ZN11ap_int_baseILi8ELb0ELb1EE11xnor_reduceEv", metadata !64, i32 2336, metadata !617, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 2336} ; [ DW_TAG_subprogram ]
!624 = metadata !{i32 786478, i32 0, metadata !63, metadata !"and_reduce", metadata !"and_reduce", metadata !"_ZNK11ap_int_baseILi8ELb0ELb1EE10and_reduceEv", metadata !64, i32 2340, metadata !231, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 2340} ; [ DW_TAG_subprogram ]
!625 = metadata !{i32 786478, i32 0, metadata !63, metadata !"nand_reduce", metadata !"nand_reduce", metadata !"_ZNK11ap_int_baseILi8ELb0ELb1EE11nand_reduceEv", metadata !64, i32 2343, metadata !231, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 2343} ; [ DW_TAG_subprogram ]
!626 = metadata !{i32 786478, i32 0, metadata !63, metadata !"or_reduce", metadata !"or_reduce", metadata !"_ZNK11ap_int_baseILi8ELb0ELb1EE9or_reduceEv", metadata !64, i32 2346, metadata !231, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 2346} ; [ DW_TAG_subprogram ]
!627 = metadata !{i32 786478, i32 0, metadata !63, metadata !"nor_reduce", metadata !"nor_reduce", metadata !"_ZNK11ap_int_baseILi8ELb0ELb1EE10nor_reduceEv", metadata !64, i32 2349, metadata !231, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 2349} ; [ DW_TAG_subprogram ]
!628 = metadata !{i32 786478, i32 0, metadata !63, metadata !"xor_reduce", metadata !"xor_reduce", metadata !"_ZNK11ap_int_baseILi8ELb0ELb1EE10xor_reduceEv", metadata !64, i32 2352, metadata !231, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 2352} ; [ DW_TAG_subprogram ]
!629 = metadata !{i32 786478, i32 0, metadata !63, metadata !"xnor_reduce", metadata !"xnor_reduce", metadata !"_ZNK11ap_int_baseILi8ELb0ELb1EE11xnor_reduceEv", metadata !64, i32 2355, metadata !231, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 2355} ; [ DW_TAG_subprogram ]
!630 = metadata !{i32 786478, i32 0, metadata !63, metadata !"to_string", metadata !"to_string", metadata !"_ZNK11ap_int_baseILi8ELb0ELb1EE9to_stringEPci8BaseModeb", metadata !64, i32 2362, metadata !631, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 2362} ; [ DW_TAG_subprogram ]
!631 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !632, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!632 = metadata !{null, metadata !229, metadata !584, metadata !85, metadata !585, metadata !87}
!633 = metadata !{i32 786478, i32 0, metadata !63, metadata !"to_string", metadata !"to_string", metadata !"_ZNK11ap_int_baseILi8ELb0ELb1EE9to_stringE8BaseModeb", metadata !64, i32 2389, metadata !634, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 2389} ; [ DW_TAG_subprogram ]
!634 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !635, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!635 = metadata !{metadata !584, metadata !229, metadata !585, metadata !87}
!636 = metadata !{i32 786478, i32 0, metadata !63, metadata !"to_string", metadata !"to_string", metadata !"_ZNK11ap_int_baseILi8ELb0ELb1EE9to_stringEab", metadata !64, i32 2393, metadata !637, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 2393} ; [ DW_TAG_subprogram ]
!637 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !638, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!638 = metadata !{metadata !584, metadata !229, metadata !112, metadata !87}
!639 = metadata !{i32 786478, i32 0, metadata !63, metadata !"ap_int_base", metadata !"ap_int_base", metadata !"", metadata !64, i32 1453, metadata !93, i1 false, i1 false, i32 0, i32 0, null, i32 320, i1 false, null, null, i32 0, metadata !76, i32 1453} ; [ DW_TAG_subprogram ]
!640 = metadata !{metadata !603, metadata !86, metadata !515}
!641 = metadata !{i32 786478, i32 0, metadata !59, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !60, i32 186, metadata !642, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 186} ; [ DW_TAG_subprogram ]
!642 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !643, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!643 = metadata !{null, metadata !644}
!644 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !59} ; [ DW_TAG_pointer_type ]
!645 = metadata !{i32 786478, i32 0, metadata !59, metadata !"ap_uint<8>", metadata !"ap_uint<8>", metadata !"", metadata !60, i32 188, metadata !646, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !650, i32 0, metadata !76, i32 188} ; [ DW_TAG_subprogram ]
!646 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !647, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!647 = metadata !{null, metadata !644, metadata !648}
!648 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !649} ; [ DW_TAG_reference_type ]
!649 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !59} ; [ DW_TAG_const_type ]
!650 = metadata !{metadata !98}
!651 = metadata !{i32 786478, i32 0, metadata !59, metadata !"ap_uint<8>", metadata !"ap_uint<8>", metadata !"", metadata !60, i32 194, metadata !652, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !650, i32 0, metadata !76, i32 194} ; [ DW_TAG_subprogram ]
!652 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !653, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!653 = metadata !{null, metadata !644, metadata !654}
!654 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !655} ; [ DW_TAG_reference_type ]
!655 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !656} ; [ DW_TAG_const_type ]
!656 = metadata !{i32 786485, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !59} ; [ DW_TAG_volatile_type ]
!657 = metadata !{i32 786478, i32 0, metadata !59, metadata !"ap_uint<8, false>", metadata !"ap_uint<8, false>", metadata !"", metadata !60, i32 229, metadata !658, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, metadata !97, i32 0, metadata !76, i32 229} ; [ DW_TAG_subprogram ]
!658 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !659, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!659 = metadata !{null, metadata !644, metadata !95}
!660 = metadata !{i32 786478, i32 0, metadata !59, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !60, i32 248, metadata !661, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 248} ; [ DW_TAG_subprogram ]
!661 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !662, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!662 = metadata !{null, metadata !644, metadata !87}
!663 = metadata !{i32 786478, i32 0, metadata !59, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !60, i32 249, metadata !664, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 249} ; [ DW_TAG_subprogram ]
!664 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !665, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!665 = metadata !{null, metadata !644, metadata !112}
!666 = metadata !{i32 786478, i32 0, metadata !59, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !60, i32 250, metadata !667, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 250} ; [ DW_TAG_subprogram ]
!667 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !668, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!668 = metadata !{null, metadata !644, metadata !116}
!669 = metadata !{i32 786478, i32 0, metadata !59, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !60, i32 251, metadata !670, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 251} ; [ DW_TAG_subprogram ]
!670 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !671, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!671 = metadata !{null, metadata !644, metadata !120}
!672 = metadata !{i32 786478, i32 0, metadata !59, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !60, i32 252, metadata !673, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 252} ; [ DW_TAG_subprogram ]
!673 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !674, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!674 = metadata !{null, metadata !644, metadata !124}
!675 = metadata !{i32 786478, i32 0, metadata !59, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !60, i32 253, metadata !676, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 253} ; [ DW_TAG_subprogram ]
!676 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !677, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!677 = metadata !{null, metadata !644, metadata !85}
!678 = metadata !{i32 786478, i32 0, metadata !59, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !60, i32 254, metadata !679, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 254} ; [ DW_TAG_subprogram ]
!679 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !680, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!680 = metadata !{null, metadata !644, metadata !131}
!681 = metadata !{i32 786478, i32 0, metadata !59, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !60, i32 255, metadata !682, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 255} ; [ DW_TAG_subprogram ]
!682 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !683, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!683 = metadata !{null, metadata !644, metadata !135}
!684 = metadata !{i32 786478, i32 0, metadata !59, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !60, i32 256, metadata !685, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 256} ; [ DW_TAG_subprogram ]
!685 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !686, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!686 = metadata !{null, metadata !644, metadata !139}
!687 = metadata !{i32 786478, i32 0, metadata !59, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !60, i32 257, metadata !688, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 257} ; [ DW_TAG_subprogram ]
!688 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !689, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!689 = metadata !{null, metadata !644, metadata !149}
!690 = metadata !{i32 786478, i32 0, metadata !59, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !60, i32 258, metadata !691, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 258} ; [ DW_TAG_subprogram ]
!691 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !692, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!692 = metadata !{null, metadata !644, metadata !144}
!693 = metadata !{i32 786478, i32 0, metadata !59, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !60, i32 259, metadata !694, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 259} ; [ DW_TAG_subprogram ]
!694 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !695, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!695 = metadata !{null, metadata !644, metadata !153}
!696 = metadata !{i32 786478, i32 0, metadata !59, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !60, i32 260, metadata !697, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 260} ; [ DW_TAG_subprogram ]
!697 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !698, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!698 = metadata !{null, metadata !644, metadata !158}
!699 = metadata !{i32 786478, i32 0, metadata !59, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !60, i32 261, metadata !700, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 261} ; [ DW_TAG_subprogram ]
!700 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !701, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!701 = metadata !{null, metadata !644, metadata !162}
!702 = metadata !{i32 786478, i32 0, metadata !59, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !60, i32 263, metadata !703, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 263} ; [ DW_TAG_subprogram ]
!703 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !704, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!704 = metadata !{null, metadata !644, metadata !166}
!705 = metadata !{i32 786478, i32 0, metadata !59, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !60, i32 264, metadata !706, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 264} ; [ DW_TAG_subprogram ]
!706 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !707, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!707 = metadata !{null, metadata !644, metadata !166, metadata !112}
!708 = metadata !{i32 786478, i32 0, metadata !59, metadata !"operator=", metadata !"operator=", metadata !"_ZNV7ap_uintILi8EEaSERKS0_", metadata !60, i32 267, metadata !709, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 267} ; [ DW_TAG_subprogram ]
!709 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !710, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!710 = metadata !{null, metadata !711, metadata !648}
!711 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !656} ; [ DW_TAG_pointer_type ]
!712 = metadata !{i32 786478, i32 0, metadata !59, metadata !"operator=", metadata !"operator=", metadata !"_ZNV7ap_uintILi8EEaSERVKS0_", metadata !60, i32 271, metadata !713, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 271} ; [ DW_TAG_subprogram ]
!713 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !714, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!714 = metadata !{null, metadata !711, metadata !654}
!715 = metadata !{i32 786478, i32 0, metadata !59, metadata !"operator=", metadata !"operator=", metadata !"_ZN7ap_uintILi8EEaSERVKS0_", metadata !60, i32 275, metadata !716, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 275} ; [ DW_TAG_subprogram ]
!716 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !717, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!717 = metadata !{metadata !718, metadata !644, metadata !654}
!718 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !59} ; [ DW_TAG_reference_type ]
!719 = metadata !{i32 786478, i32 0, metadata !59, metadata !"operator=", metadata !"operator=", metadata !"_ZN7ap_uintILi8EEaSERKS0_", metadata !60, i32 280, metadata !720, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 280} ; [ DW_TAG_subprogram ]
!720 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !721, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!721 = metadata !{metadata !718, metadata !644, metadata !648}
!722 = metadata !{i32 786478, i32 0, metadata !59, metadata !"~ap_uint", metadata !"~ap_uint", metadata !"", metadata !60, i32 183, metadata !642, i1 false, i1 false, i32 0, i32 0, null, i32 320, i1 false, null, null, i32 0, metadata !76, i32 183} ; [ DW_TAG_subprogram ]
!723 = metadata !{i32 786478, i32 0, metadata !59, metadata !"ap_uint", metadata !"ap_uint", metadata !"", metadata !60, i32 183, metadata !646, i1 false, i1 false, i32 0, i32 0, null, i32 320, i1 false, null, null, i32 0, metadata !76, i32 183} ; [ DW_TAG_subprogram ]
!724 = metadata !{metadata !603}
!725 = metadata !{i32 786478, i32 0, metadata !54, metadata !"stream", metadata !"stream", metadata !"", metadata !56, i32 83, metadata !726, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 83} ; [ DW_TAG_subprogram ]
!726 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !727, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!727 = metadata !{null, metadata !728}
!728 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !54} ; [ DW_TAG_pointer_type ]
!729 = metadata !{i32 786478, i32 0, metadata !54, metadata !"stream", metadata !"stream", metadata !"", metadata !56, i32 86, metadata !730, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 86} ; [ DW_TAG_subprogram ]
!730 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !731, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!731 = metadata !{null, metadata !728, metadata !166}
!732 = metadata !{i32 786478, i32 0, metadata !54, metadata !"stream", metadata !"stream", metadata !"", metadata !56, i32 91, metadata !733, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !76, i32 91} ; [ DW_TAG_subprogram ]
!733 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !734, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!734 = metadata !{null, metadata !728, metadata !735}
!735 = metadata !{i32 786448, null, null, null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !736} ; [ DW_TAG_reference_type ]
!736 = metadata !{i32 786470, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !54} ; [ DW_TAG_const_type ]
!737 = metadata !{i32 786478, i32 0, metadata !54, metadata !"operator=", metadata !"operator=", metadata !"_ZN3hls6streamI7ap_uintILi8EEEaSERKS3_", metadata !56, i32 94, metadata !738, i1 false, i1 false, i32 0, i32 0, null, i32 257, i1 false, null, null, i32 0, metadata !76, i32 94} ; [ DW_TAG_subprogram ]
!738 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !739, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!739 = metadata !{metadata !53, metadata !728, metadata !735}
!740 = metadata !{i32 786478, i32 0, metadata !54, metadata !"operator>>", metadata !"operator>>", metadata !"_ZN3hls6streamI7ap_uintILi8EEErsERS2_", metadata !56, i32 101, metadata !741, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 101} ; [ DW_TAG_subprogram ]
!741 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !742, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!742 = metadata !{null, metadata !728, metadata !718}
!743 = metadata !{i32 786478, i32 0, metadata !54, metadata !"operator<<", metadata !"operator<<", metadata !"_ZN3hls6streamI7ap_uintILi8EEElsERKS2_", metadata !56, i32 105, metadata !744, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 105} ; [ DW_TAG_subprogram ]
!744 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !745, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!745 = metadata !{null, metadata !728, metadata !648}
!746 = metadata !{i32 786478, i32 0, metadata !54, metadata !"empty", metadata !"empty", metadata !"_ZNK3hls6streamI7ap_uintILi8EEE5emptyEv", metadata !56, i32 112, metadata !747, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 112} ; [ DW_TAG_subprogram ]
!747 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !748, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!748 = metadata !{metadata !87, metadata !749}
!749 = metadata !{i32 786447, i32 0, metadata !"", i32 0, i32 0, i64 64, i64 64, i64 0, i32 64, metadata !736} ; [ DW_TAG_pointer_type ]
!750 = metadata !{i32 786478, i32 0, metadata !54, metadata !"full", metadata !"full", metadata !"_ZNK3hls6streamI7ap_uintILi8EEE4fullEv", metadata !56, i32 117, metadata !747, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 117} ; [ DW_TAG_subprogram ]
!751 = metadata !{i32 786478, i32 0, metadata !54, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamI7ap_uintILi8EEE4readERS2_", metadata !56, i32 123, metadata !741, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 123} ; [ DW_TAG_subprogram ]
!752 = metadata !{i32 786478, i32 0, metadata !54, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamI7ap_uintILi8EEE4readEv", metadata !56, i32 129, metadata !753, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 129} ; [ DW_TAG_subprogram ]
!753 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !754, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!754 = metadata !{metadata !59, metadata !728}
!755 = metadata !{i32 786478, i32 0, metadata !54, metadata !"read_nb", metadata !"read_nb", metadata !"_ZN3hls6streamI7ap_uintILi8EEE7read_nbERS2_", metadata !56, i32 136, metadata !756, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 136} ; [ DW_TAG_subprogram ]
!756 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !757, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!757 = metadata !{metadata !87, metadata !728, metadata !718}
!758 = metadata !{i32 786478, i32 0, metadata !54, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamI7ap_uintILi8EEE5writeERKS2_", metadata !56, i32 144, metadata !744, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 144} ; [ DW_TAG_subprogram ]
!759 = metadata !{i32 786478, i32 0, metadata !54, metadata !"write_nb", metadata !"write_nb", metadata !"_ZN3hls6streamI7ap_uintILi8EEE8write_nbERKS2_", metadata !56, i32 150, metadata !760, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 150} ; [ DW_TAG_subprogram ]
!760 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !761, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!761 = metadata !{metadata !87, metadata !728, metadata !648}
!762 = metadata !{i32 786478, i32 0, metadata !54, metadata !"size", metadata !"size", metadata !"_ZN3hls6streamI7ap_uintILi8EEE4sizeEv", metadata !56, i32 157, metadata !763, i1 false, i1 false, i32 0, i32 0, null, i32 256, i1 false, null, null, i32 0, metadata !76, i32 157} ; [ DW_TAG_subprogram ]
!763 = metadata !{i32 786453, i32 0, metadata !"", i32 0, i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !764, i32 0, i32 0} ; [ DW_TAG_subroutine_type ]
!764 = metadata !{metadata !131, metadata !728}
!765 = metadata !{metadata !766}
!766 = metadata !{i32 786479, null, metadata !"__STREAM_T__", metadata !59, null, i32 0, i32 0} ; [ DW_TAG_template_type_parameter ]
!767 = metadata !{i32 3, i32 89, metadata !49, null}
!768 = metadata !{i32 790531, metadata !769, metadata !"inStream.V.V", null, i32 3, metadata !770, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!769 = metadata !{i32 786689, metadata !49, metadata !"inStream", metadata !50, i32 16777219, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!770 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 0, i64 0, i64 0, i32 0, metadata !771} ; [ DW_TAG_pointer_type ]
!771 = metadata !{i32 786438, metadata !55, metadata !"stream<ap_uint<8> >", metadata !56, i32 79, i64 8, i64 8, i32 0, i32 0, null, metadata !772, i32 0, null, metadata !765} ; [ DW_TAG_class_field_type ]
!772 = metadata !{metadata !773}
!773 = metadata !{i32 786438, null, metadata !"ap_uint<8>", metadata !60, i32 183, i64 8, i64 8, i32 0, i32 0, null, metadata !774, i32 0, null, metadata !724} ; [ DW_TAG_class_field_type ]
!774 = metadata !{metadata !775}
!775 = metadata !{i32 786438, null, metadata !"ap_int_base<8, false, true>", metadata !64, i32 1453, i64 8, i64 8, i32 0, i32 0, null, metadata !776, i32 0, null, metadata !640} ; [ DW_TAG_class_field_type ]
!776 = metadata !{metadata !777}
!777 = metadata !{i32 786438, null, metadata !"ssdm_int<8 + 1024 * 0, false>", metadata !68, i32 10, i64 8, i64 8, i32 0, i32 0, null, metadata !778, i32 0, null, metadata !83} ; [ DW_TAG_class_field_type ]
!778 = metadata !{metadata !70}
!779 = metadata !{i32 3, i32 39, metadata !49, null}
!780 = metadata !{i32 790531, metadata !781, metadata !"outStream_grayscale.V.V", null, i32 3, metadata !770, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!781 = metadata !{i32 786689, metadata !49, metadata !"outStream_grayscale", metadata !50, i32 33554435, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!782 = metadata !{i32 3, i32 63, metadata !49, null}
!783 = metadata !{i32 790531, metadata !784, metadata !"outStream_LUMA.V.V", null, i32 3, metadata !770, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!784 = metadata !{i32 786689, metadata !49, metadata !"outStream_LUMA", metadata !50, i32 67108867, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!785 = metadata !{i32 3, i32 122, metadata !49, null}
!786 = metadata !{i32 790531, metadata !787, metadata !"outStream_CHROMA.V.V", null, i32 3, metadata !770, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!787 = metadata !{i32 786689, metadata !49, metadata !"outStream_CHROMA", metadata !50, i32 83886083, metadata !53, i32 0, i32 0} ; [ DW_TAG_arg_variable ]
!788 = metadata !{i32 3, i32 152, metadata !49, null}
!789 = metadata !{i32 5, i32 1, metadata !790, null}
!790 = metadata !{i32 786443, metadata !49, i32 4, i32 1, metadata !50, i32 0} ; [ DW_TAG_lexical_block ]
!791 = metadata !{i32 6, i32 1, metadata !790, null}
!792 = metadata !{i32 7, i32 1, metadata !790, null}
!793 = metadata !{i32 8, i32 1, metadata !790, null}
!794 = metadata !{i32 9, i32 1, metadata !790, null}
!795 = metadata !{i32 12, i32 1, metadata !790, null}
!796 = metadata !{i32 790531, metadata !797, metadata !"stream<ap_uint<8> >.V.V", null, i32 129, metadata !800, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!797 = metadata !{i32 786689, metadata !798, metadata !"this", metadata !56, i32 16777345, metadata !799, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!798 = metadata !{i32 786478, i32 0, metadata !55, metadata !"read", metadata !"read", metadata !"_ZN3hls6streamI7ap_uintILi8EEE4readEv", metadata !56, i32 129, metadata !753, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !752, metadata !76, i32 129} ; [ DW_TAG_subprogram ]
!799 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !54} ; [ DW_TAG_pointer_type ]
!800 = metadata !{i32 786447, null, metadata !"", null, i32 0, i64 64, i64 64, i64 0, i32 0, metadata !771} ; [ DW_TAG_pointer_type ]
!801 = metadata !{i32 129, i32 56, metadata !798, metadata !802}
!802 = metadata !{i32 15, i32 14, metadata !790, null}
!803 = metadata !{i32 131, i32 9, metadata !804, metadata !802}
!804 = metadata !{i32 786443, metadata !798, i32 129, i32 63, metadata !56, i32 4} ; [ DW_TAG_lexical_block ]
!805 = metadata !{i32 790529, metadata !806, metadata !"tmp.V", null, i32 130, metadata !773, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!806 = metadata !{i32 786688, metadata !804, metadata !"tmp", metadata !56, i32 130, metadata !718, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!807 = metadata !{i32 16, i32 2, metadata !790, null}
!808 = metadata !{i32 790531, metadata !809, metadata !"stream<ap_uint<8> >.V.V", null, i32 144, metadata !800, i32 0, i32 0} ; [ DW_TAG_arg_variable_field ]
!809 = metadata !{i32 786689, metadata !810, metadata !"this", metadata !56, i32 16777360, metadata !799, i32 64, i32 0} ; [ DW_TAG_arg_variable ]
!810 = metadata !{i32 786478, i32 0, metadata !55, metadata !"write", metadata !"write", metadata !"_ZN3hls6streamI7ap_uintILi8EEE5writeERKS2_", metadata !56, i32 144, metadata !744, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, null, null, metadata !758, metadata !76, i32 144} ; [ DW_TAG_subprogram ]
!811 = metadata !{i32 144, i32 48, metadata !810, metadata !812}
!812 = metadata !{i32 18, i32 3, metadata !813, null}
!813 = metadata !{i32 786443, metadata !790, i32 17, i32 2, metadata !50, i32 1} ; [ DW_TAG_lexical_block ]
!814 = metadata !{i32 790529, metadata !815, metadata !"tmp.V", null, i32 145, metadata !773, i32 0, i32 0} ; [ DW_TAG_auto_variable_field ]
!815 = metadata !{i32 786688, metadata !816, metadata !"tmp", metadata !56, i32 145, metadata !59, i32 0, i32 0} ; [ DW_TAG_auto_variable ]
!816 = metadata !{i32 786443, metadata !810, i32 144, i32 79, metadata !56, i32 3} ; [ DW_TAG_lexical_block ]
!817 = metadata !{i32 145, i32 31, metadata !816, metadata !812}
!818 = metadata !{i32 146, i32 9, metadata !816, metadata !812}
!819 = metadata !{i32 20, i32 3, metadata !813, null}
!820 = metadata !{i32 144, i32 48, metadata !810, metadata !821}
!821 = metadata !{i32 21, i32 4, metadata !813, null}
!822 = metadata !{i32 145, i32 31, metadata !816, metadata !821}
!823 = metadata !{i32 146, i32 9, metadata !816, metadata !821}
!824 = metadata !{i32 23, i32 2, metadata !813, null}
!825 = metadata !{i32 26, i32 3, metadata !826, null}
!826 = metadata !{i32 786443, metadata !790, i32 24, i32 6, metadata !50, i32 2} ; [ DW_TAG_lexical_block ]
!827 = metadata !{i32 144, i32 48, metadata !810, metadata !828}
!828 = metadata !{i32 27, i32 4, metadata !826, null}
!829 = metadata !{i32 145, i32 31, metadata !816, metadata !828}
!830 = metadata !{i32 146, i32 9, metadata !816, metadata !828}
!831 = metadata !{i32 30, i32 2, metadata !790, null}
!832 = metadata !{i32 32, i32 1, metadata !790, null}
