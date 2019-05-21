; ModuleID = 'C:/Users/Riccardo/Documents/HLS_COMMON/PATTERN_GENERATORS/PATTERN_GENERATOR_CROSS/Zynq/.autopilot/db/a.o.2.bc'
target datalayout = "e-p:64:64:64-i1:8:8-i8:8:8-i16:16:16-i32:32:32-i64:64:64-f32:32:32-f64:64:64-v64:64:64-v128:128:128-a0:0:64-s0:64:64-f80:128:128-n8:16:32:64-S128"
target triple = "x86_64-w64-mingw32"

@pattern_generator_cross_str = internal unnamed_addr constant [24 x i8] c"pattern_generator_cross\00"
@lineY = internal unnamed_addr global i32 0, align 4
@lineX = internal unnamed_addr global i32 0, align 4
@dirY = internal unnamed_addr global i1 false, align 1
@dirX = internal unnamed_addr global i1 false, align 1
@p_str2 = private unnamed_addr constant [5 x i8] c"axis\00", align 1
@p_str1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@p_str = private unnamed_addr constant [13 x i8] c"ap_ctrl_none\00", align 1

define void @pattern_generator_cross(i8* %outputStream_V) {
  call void (...)* @_ssdm_op_SpecBitsMap(i8* %outputStream_V), !map !0
  call void (...)* @_ssdm_op_SpecTopModule([24 x i8]* @pattern_generator_cross_str) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i32 0, [13 x i8]* @p_str, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecInterface(i8* %outputStream_V, [5 x i8]* @p_str2, i32 0, i32 0, i32 0, i32 0, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecReset(i32* @lineX, i32 1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecReset(i1* @dirX, i32 1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecReset(i32* @lineY, i32 1, [1 x i8]* @p_str1) nounwind
  call void (...)* @_ssdm_op_SpecReset(i1* @dirY, i32 1, [1 x i8]* @p_str1) nounwind
  %lineX_load = load i32* @lineX, align 4
  %lineY_load = load i32* @lineY, align 4
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %0
  %y = phi i9 [ 0, %0 ], [ %y_1, %.preheader ]
  %y_cast2 = zext i9 %y to i32
  %exitcond5 = icmp eq i9 %y, -2
  %empty = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 510, i64 510, i64 510)
  %y_1 = add i9 %y, 1
  br i1 %exitcond5, label %6, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.loopexit
  %tmp_3 = icmp ult i9 %y, -32
  %tmp_s = icmp eq i32 %y_cast2, %lineY_load
  br label %.preheader

.preheader:                                       ; preds = %._crit_edge, %.preheader.preheader
  %x = phi i10 [ %x_1, %._crit_edge ], [ 0, %.preheader.preheader ]
  %x_cast1 = zext i10 %x to i32
  %exitcond = icmp eq i10 %x, -304
  %empty_2 = call i32 (...)* @_ssdm_op_SpecLoopTripCount(i64 720, i64 720, i64 720)
  %x_1 = add i10 %x, 1
  br i1 %exitcond, label %.loopexit, label %1

; <label>:1                                       ; preds = %.preheader
  %tmp_6 = icmp ult i10 %x, -384
  %or_cond = and i1 %tmp_3, %tmp_6
  br i1 %or_cond, label %2, label %._crit_edge

; <label>:2                                       ; preds = %1
  %tmp_9 = icmp eq i32 %x_cast1, %lineX_load
  %or_cond7 = or i1 %tmp_9, %tmp_s
  br i1 %or_cond7, label %3, label %4

; <label>:3                                       ; preds = %2
  call void @_ssdm_op_Write.axis.volatile.i8P(i8* %outputStream_V, i8 -63)
  br label %5

; <label>:4                                       ; preds = %2
  call void @_ssdm_op_Write.axis.volatile.i8P(i8* %outputStream_V, i8 62)
  br label %5

; <label>:5                                       ; preds = %4, %3
  br label %._crit_edge

._crit_edge:                                      ; preds = %5, %1
  br label %.preheader

; <label>:6                                       ; preds = %.loopexit
  %tmp_2 = icmp eq i32 %lineX_load, 0
  br i1 %tmp_2, label %7, label %8

; <label>:7                                       ; preds = %6
  store i1 false, i1* @dirX, align 1
  br label %10

; <label>:8                                       ; preds = %6
  %tmp_4 = icmp eq i32 %lineX_load, 639
  br i1 %tmp_4, label %9, label %._crit_edge8

; <label>:9                                       ; preds = %8
  store i1 true, i1* @dirX, align 1
  br label %._crit_edge8

._crit_edge8:                                     ; preds = %9, %8
  br label %10

; <label>:10                                      ; preds = %._crit_edge8, %7
  %tmp_7 = phi i32 [ %lineX_load, %._crit_edge8 ], [ 0, %7 ]
  %tmp_8 = icmp eq i32 %lineY_load, 0
  br i1 %tmp_8, label %11, label %12

; <label>:11                                      ; preds = %10
  store i1 false, i1* @dirY, align 1
  br label %14

; <label>:12                                      ; preds = %10
  %tmp_1 = icmp eq i32 %lineY_load, 479
  br i1 %tmp_1, label %13, label %._crit_edge9

; <label>:13                                      ; preds = %12
  store i1 true, i1* @dirY, align 1
  br label %._crit_edge9

._crit_edge9:                                     ; preds = %13, %12
  br label %14

; <label>:14                                      ; preds = %._crit_edge9, %11
  %tmp_5 = phi i32 [ %lineY_load, %._crit_edge9 ], [ 0, %11 ]
  %dirX_load = load i1* @dirX, align 1
  %storemerge_v_cast_cast = select i1 %dirX_load, i32 -1, i32 1
  %storemerge = add i32 %tmp_7, %storemerge_v_cast_cast
  store i32 %storemerge, i32* @lineX, align 4
  %dirY_load = load i1* @dirY, align 1
  %storemerge4_v_cast_cast = select i1 %dirY_load, i32 -1, i32 1
  %storemerge4 = add i32 %tmp_5, %storemerge4_v_cast_cast
  store i32 %storemerge4, i32* @lineY, align 4
  ret void
}

declare void @llvm.dbg.value(metadata, i64, metadata) nounwind readnone

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

define weak i32 @_ssdm_op_SpecLoopTripCount(...) {
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

declare i16 @_ssdm_op_HSub(...)

declare i16 @_ssdm_op_HMul(...)

declare i16 @_ssdm_op_HDiv(...)

declare i16 @_ssdm_op_HAdd(...)

!hls.encrypted.func = !{}
!llvm.map.gv = !{}

!0 = metadata !{metadata !1}
!1 = metadata !{i32 0, i32 7, metadata !2}
!2 = metadata !{metadata !3}
!3 = metadata !{metadata !"outputStream.V", metadata !4, metadata !"unsigned char", i32 0, i32 7}
!4 = metadata !{metadata !5}
!5 = metadata !{i32 0, i32 0, i32 1}
