; ModuleID = '__compute_module'
source_filename = "__compute_module"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-darwin19.6.0"

@0 = private unnamed_addr constant [16 x i8] c"\0D\00\00\00\0F\00\00\00\1A\00\00\00\06\00\00\00", align 16
@1 = private unnamed_addr constant [16 x i8] c"\11\00\00\00\1D\00\00\00\10\00\00\00\18\00\00\00", align 16
@parallel_fusion.4_parallel_dimension_partitions = private constant [6 x i64] [i64 0, i64 768, i64 768, i64 1536, i64 1536, i64 2304]
@parallel_fusion.5_parallel_dimension_partitions = private constant [6 x i64] [i64 0, i64 768, i64 768, i64 1536, i64 1536, i64 2304]
@parallel_fusion.16_parallel_dimension_partitions = private constant [16 x i64] [i64 0, i64 1, i64 0, i64 1, i64 0, i64 1, i64 1, i64 3, i64 1, i64 3, i64 0, i64 1, i64 1, i64 3, i64 1, i64 3]
@parallel_broadcast.1342_parallel_dimension_partitions = private constant [6 x i64] [i64 0, i64 10, i64 10, i64 20, i64 20, i64 32]
@parallel_fusion.8_parallel_dimension_partitions = private constant [6 x i64] [i64 0, i64 10, i64 10, i64 20, i64 20, i64 32]
@parallel_reduce-window.1355_parallel_dimension_partitions = private constant [6 x i64] [i64 0, i64 10, i64 10, i64 20, i64 20, i64 32]

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #0

; Function Attrs: nofree norecurse nounwind uwtable
define internal void @parallel_fusion.4(i8* nocapture readnone %retval, i8* noalias nocapture readnone %run_options, i8** noalias nocapture readnone %params, i8** noalias nocapture readonly %buffer_table, i64* noalias nocapture readonly %dynamic_loop_bounds, i64* noalias nocapture readnone %prof_counters) #1 {
entry:
  %0 = getelementptr inbounds i8*, i8** %buffer_table, i64 20
  %1 = load i8*, i8** %0, align 8, !invariant.load !0, !dereferenceable !1, !align !2
  %2 = getelementptr inbounds i8, i8* %1, i64 9280
  %p.5 = bitcast i8* %2 to [2304 x i32]*
  %3 = getelementptr inbounds i8, i8* %1, i64 64
  %p.6 = bitcast i8* %3 to [2304 x i32]*
  %4 = getelementptr inbounds i8, i8* %1, i64 18496
  %fusion.4.clone = bitcast i8* %4 to [2304 x i32]*
  %5 = load i64, i64* %dynamic_loop_bounds, align 8
  %dynamic_loop_bound_1 = getelementptr i64, i64* %dynamic_loop_bounds, i64 1
  %6 = load i64, i64* %dynamic_loop_bound_1, align 8
  %.not8 = icmp ugt i64 %6, %5
  br i1 %.not8, label %fusion.4.clone.loop_body.dim.0.lr.ph, label %fusion.4.clone.loop_exit.dim.0

fusion.4.clone.loop_body.dim.0.lr.ph:             ; preds = %entry
  %7 = getelementptr inbounds i8, i8* %1, i64 27760
  %p.7 = bitcast i8* %7 to i32*
  %8 = getelementptr inbounds i8, i8* %1, i64 27712
  %9 = getelementptr inbounds i8, i8* %1, i64 27776
  %p.3 = bitcast i8* %9 to i32*
  %10 = bitcast i8* %8 to i32*
  %11 = bitcast i8* %8 to <4 x i32>*
  %12 = load <4 x i32>, <4 x i32>* %11, align 16
  %13 = load i32, i32* %10, align 16, !alias.scope !3, !noalias !6
  %shft.chk = icmp ult i32 %13, 32
  %14 = sub i32 32, %13
  %shft.chk1 = icmp ult i32 %14, 32
  %15 = getelementptr inbounds i8, i8* %1, i64 27716
  %16 = bitcast i8* %15 to i32*
  %17 = bitcast i8* %15 to <4 x i32>*
  %18 = load <4 x i32>, <4 x i32>* %17, align 4
  %19 = load i32, i32* %16, align 4, !alias.scope !3, !noalias !6
  %shft.chk2 = icmp ult i32 %19, 32
  %20 = sub i32 32, %19
  %shft.chk3 = icmp ult i32 %20, 32
  %21 = getelementptr inbounds i8, i8* %1, i64 27720
  %22 = bitcast i8* %21 to i32*
  %23 = bitcast i8* %21 to <4 x i32>*
  %24 = load <4 x i32>, <4 x i32>* %23, align 8
  %25 = load i32, i32* %22, align 8, !alias.scope !3, !noalias !6
  %shft.chk4 = icmp ult i32 %25, 32
  %26 = sub i32 32, %25
  %shft.chk5 = icmp ult i32 %26, 32
  %27 = getelementptr inbounds i8, i8* %1, i64 27724
  %28 = bitcast i8* %27 to i32*
  %29 = bitcast i8* %27 to <4 x i32>*
  %30 = load <4 x i32>, <4 x i32>* %29, align 4
  %31 = load i32, i32* %28, align 4, !alias.scope !3, !noalias !6
  %shft.chk6 = icmp ult i32 %31, 32
  %32 = sub i32 32, %31
  %shft.chk7 = icmp ult i32 %32, 32
  %33 = load i32, i32* %p.3, align 16, !alias.scope !8, !noalias !6
  %34 = load i32, i32* %p.7, align 16, !alias.scope !10, !noalias !6
  %35 = add i32 %33, 1
  %36 = add i32 %35, %34
  %37 = sub i64 %6, %5
  %min.iters.check69 = icmp ult i64 %37, 8
  br i1 %shft.chk, label %fusion.4.clone.loop_body.dim.0.us.preheader, label %fusion.4.clone.loop_body.dim.0.lr.ph.split

fusion.4.clone.loop_body.dim.0.us.preheader:      ; preds = %fusion.4.clone.loop_body.dim.0.lr.ph
  br i1 %min.iters.check69, label %fusion.4.clone.loop_body.dim.0.us.preheader99, label %vector.ph70

vector.ph70:                                      ; preds = %fusion.4.clone.loop_body.dim.0.us.preheader
  %n.vec72 = and i64 %37, -8
  %ind.end76 = add i64 %5, %n.vec72
  %broadcast.splat82 = shufflevector <4 x i32> %12, <4 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert83 = insertelement <8 x i32> undef, i32 %14, i32 0
  %broadcast.splat84 = shufflevector <8 x i32> %broadcast.splatinsert83, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splat86 = shufflevector <4 x i32> %18, <4 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert87 = insertelement <8 x i32> undef, i32 %20, i32 0
  %broadcast.splat88 = shufflevector <8 x i32> %broadcast.splatinsert87, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splat90 = shufflevector <4 x i32> %24, <4 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert91 = insertelement <8 x i32> undef, i32 %26, i32 0
  %broadcast.splat92 = shufflevector <8 x i32> %broadcast.splatinsert91, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splat94 = shufflevector <4 x i32> %30, <4 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert95 = insertelement <8 x i32> undef, i32 %32, i32 0
  %broadcast.splat96 = shufflevector <8 x i32> %broadcast.splatinsert95, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert97 = insertelement <8 x i32> undef, i32 %36, i32 0
  %broadcast.splat98 = shufflevector <8 x i32> %broadcast.splatinsert97, <8 x i32> undef, <8 x i32> zeroinitializer
  br label %vector.body68

vector.body68:                                    ; preds = %vector.body68, %vector.ph70
  %index73 = phi i64 [ 0, %vector.ph70 ], [ %index.next74, %vector.body68 ]
  %offset.idx78 = add i64 %5, %index73
  %38 = getelementptr inbounds [2304 x i32], [2304 x i32]* %p.6, i64 0, i64 %offset.idx78
  %39 = bitcast i32* %38 to <8 x i32>*
  %wide.load79 = load <8 x i32>, <8 x i32>* %39, align 4, !alias.scope !12, !noalias !6
  %40 = getelementptr inbounds [2304 x i32], [2304 x i32]* %p.5, i64 0, i64 %offset.idx78
  %41 = bitcast i32* %40 to <8 x i32>*
  %wide.load80 = load <8 x i32>, <8 x i32>* %41, align 4, !alias.scope !14, !noalias !6
  %42 = add <8 x i32> %wide.load80, %wide.load79
  %43 = shl <8 x i32> %wide.load80, %broadcast.splat82
  %44 = lshr <8 x i32> %wide.load80, %broadcast.splat84
  %45 = select i1 %shft.chk1, <8 x i32> %44, <8 x i32> zeroinitializer
  %46 = or <8 x i32> %45, %43
  %47 = xor <8 x i32> %46, %42
  %48 = add <8 x i32> %47, %42
  %49 = shl <8 x i32> %47, %broadcast.splat86
  %50 = select i1 %shft.chk2, <8 x i32> %49, <8 x i32> zeroinitializer
  %51 = lshr <8 x i32> %47, %broadcast.splat88
  %52 = select i1 %shft.chk3, <8 x i32> %51, <8 x i32> zeroinitializer
  %53 = or <8 x i32> %50, %52
  %54 = xor <8 x i32> %53, %48
  %55 = add <8 x i32> %54, %48
  %56 = shl <8 x i32> %54, %broadcast.splat90
  %57 = select i1 %shft.chk4, <8 x i32> %56, <8 x i32> zeroinitializer
  %58 = lshr <8 x i32> %54, %broadcast.splat92
  %59 = select i1 %shft.chk5, <8 x i32> %58, <8 x i32> zeroinitializer
  %60 = or <8 x i32> %57, %59
  %61 = xor <8 x i32> %60, %55
  %62 = add <8 x i32> %61, %55
  %63 = shl <8 x i32> %61, %broadcast.splat94
  %64 = select i1 %shft.chk6, <8 x i32> %63, <8 x i32> zeroinitializer
  %65 = lshr <8 x i32> %61, %broadcast.splat96
  %66 = select i1 %shft.chk7, <8 x i32> %65, <8 x i32> zeroinitializer
  %67 = or <8 x i32> %64, %66
  %68 = xor <8 x i32> %67, %62
  %69 = add <8 x i32> %broadcast.splat98, %68
  %70 = getelementptr inbounds [2304 x i32], [2304 x i32]* %fusion.4.clone, i64 0, i64 %offset.idx78
  %71 = bitcast i32* %70 to <8 x i32>*
  store <8 x i32> %69, <8 x i32>* %71, align 4, !alias.scope !6
  %index.next74 = add i64 %index73, 8
  %72 = icmp eq i64 %index.next74, %n.vec72
  br i1 %72, label %middle.block66, label %vector.body68, !llvm.loop !16

middle.block66:                                   ; preds = %vector.body68
  %cmp.n77 = icmp eq i64 %37, %n.vec72
  br i1 %cmp.n77, label %fusion.4.clone.loop_exit.dim.0, label %fusion.4.clone.loop_body.dim.0.us.preheader99

fusion.4.clone.loop_body.dim.0.us.preheader99:    ; preds = %middle.block66, %fusion.4.clone.loop_body.dim.0.us.preheader
  %fusion.4.clone.invar_address.dim.0.09.us.ph = phi i64 [ %5, %fusion.4.clone.loop_body.dim.0.us.preheader ], [ %ind.end76, %middle.block66 ]
  br label %fusion.4.clone.loop_body.dim.0.us

fusion.4.clone.loop_body.dim.0.us:                ; preds = %fusion.4.clone.loop_body.dim.0.us.preheader99, %fusion.4.clone.loop_body.dim.0.us
  %fusion.4.clone.invar_address.dim.0.09.us = phi i64 [ %invar.inc.us, %fusion.4.clone.loop_body.dim.0.us ], [ %fusion.4.clone.invar_address.dim.0.09.us.ph, %fusion.4.clone.loop_body.dim.0.us.preheader99 ]
  %73 = getelementptr inbounds [2304 x i32], [2304 x i32]* %p.6, i64 0, i64 %fusion.4.clone.invar_address.dim.0.09.us
  %74 = load i32, i32* %73, align 4, !alias.scope !12, !noalias !6
  %75 = getelementptr inbounds [2304 x i32], [2304 x i32]* %p.5, i64 0, i64 %fusion.4.clone.invar_address.dim.0.09.us
  %76 = load i32, i32* %75, align 4, !alias.scope !14, !noalias !6
  %77 = add i32 %76, %74
  %78 = shl i32 %76, %13
  %79 = lshr i32 %76, %14
  %80 = select i1 %shft.chk1, i32 %79, i32 0
  %81 = or i32 %80, %78
  %82 = xor i32 %81, %77
  %83 = add i32 %82, %77
  %84 = shl i32 %82, %19
  %85 = select i1 %shft.chk2, i32 %84, i32 0
  %86 = lshr i32 %82, %20
  %87 = select i1 %shft.chk3, i32 %86, i32 0
  %88 = or i32 %85, %87
  %89 = xor i32 %88, %83
  %90 = add i32 %89, %83
  %91 = shl i32 %89, %25
  %92 = select i1 %shft.chk4, i32 %91, i32 0
  %93 = lshr i32 %89, %26
  %94 = select i1 %shft.chk5, i32 %93, i32 0
  %95 = or i32 %92, %94
  %96 = xor i32 %95, %90
  %97 = add i32 %96, %90
  %98 = shl i32 %96, %31
  %99 = select i1 %shft.chk6, i32 %98, i32 0
  %100 = lshr i32 %96, %32
  %101 = select i1 %shft.chk7, i32 %100, i32 0
  %102 = or i32 %99, %101
  %103 = xor i32 %102, %97
  %104 = add i32 %36, %103
  %105 = getelementptr inbounds [2304 x i32], [2304 x i32]* %fusion.4.clone, i64 0, i64 %fusion.4.clone.invar_address.dim.0.09.us
  store i32 %104, i32* %105, align 4, !alias.scope !6
  %invar.inc.us = add nuw nsw i64 %fusion.4.clone.invar_address.dim.0.09.us, 1
  %exitcond.not = icmp eq i64 %invar.inc.us, %6
  br i1 %exitcond.not, label %fusion.4.clone.loop_exit.dim.0, label %fusion.4.clone.loop_body.dim.0.us, !llvm.loop !18

fusion.4.clone.loop_body.dim.0.lr.ph.split:       ; preds = %fusion.4.clone.loop_body.dim.0.lr.ph
  br i1 %shft.chk1, label %fusion.4.clone.loop_body.dim.0.us10.preheader, label %fusion.4.clone.loop_body.dim.0.preheader

fusion.4.clone.loop_body.dim.0.preheader:         ; preds = %fusion.4.clone.loop_body.dim.0.lr.ph.split
  br i1 %min.iters.check69, label %fusion.4.clone.loop_body.dim.0.preheader102, label %vector.ph

fusion.4.clone.loop_body.dim.0.preheader102:      ; preds = %middle.block, %fusion.4.clone.loop_body.dim.0.preheader
  %fusion.4.clone.invar_address.dim.0.09.ph = phi i64 [ %5, %fusion.4.clone.loop_body.dim.0.preheader ], [ %ind.end, %middle.block ]
  br label %fusion.4.clone.loop_body.dim.0

vector.ph:                                        ; preds = %fusion.4.clone.loop_body.dim.0.preheader
  %n.vec = and i64 %37, -8
  %ind.end = add i64 %5, %n.vec
  %broadcast.splat = shufflevector <4 x i32> %18, <4 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert23 = insertelement <8 x i32> undef, i32 %20, i32 0
  %broadcast.splat24 = shufflevector <8 x i32> %broadcast.splatinsert23, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splat26 = shufflevector <4 x i32> %24, <4 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert27 = insertelement <8 x i32> undef, i32 %26, i32 0
  %broadcast.splat28 = shufflevector <8 x i32> %broadcast.splatinsert27, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splat30 = shufflevector <4 x i32> %30, <4 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert31 = insertelement <8 x i32> undef, i32 %32, i32 0
  %broadcast.splat32 = shufflevector <8 x i32> %broadcast.splatinsert31, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert33 = insertelement <8 x i32> undef, i32 %36, i32 0
  %broadcast.splat34 = shufflevector <8 x i32> %broadcast.splatinsert33, <8 x i32> undef, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %offset.idx = add i64 %5, %index
  %106 = getelementptr inbounds [2304 x i32], [2304 x i32]* %p.6, i64 0, i64 %offset.idx
  %107 = bitcast i32* %106 to <8 x i32>*
  %wide.load = load <8 x i32>, <8 x i32>* %107, align 4, !alias.scope !12, !noalias !6
  %108 = getelementptr inbounds [2304 x i32], [2304 x i32]* %p.5, i64 0, i64 %offset.idx
  %109 = bitcast i32* %108 to <8 x i32>*
  %wide.load22 = load <8 x i32>, <8 x i32>* %109, align 4, !alias.scope !14, !noalias !6
  %110 = add <8 x i32> %wide.load22, %wide.load
  %111 = shl <8 x i32> %110, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %112 = shl <8 x i32> %110, %broadcast.splat
  %113 = select i1 %shft.chk2, <8 x i32> %112, <8 x i32> zeroinitializer
  %114 = lshr <8 x i32> %110, %broadcast.splat24
  %115 = select i1 %shft.chk3, <8 x i32> %114, <8 x i32> zeroinitializer
  %116 = or <8 x i32> %113, %115
  %117 = xor <8 x i32> %116, %111
  %118 = add <8 x i32> %117, %111
  %119 = shl <8 x i32> %117, %broadcast.splat26
  %120 = select i1 %shft.chk4, <8 x i32> %119, <8 x i32> zeroinitializer
  %121 = lshr <8 x i32> %117, %broadcast.splat28
  %122 = select i1 %shft.chk5, <8 x i32> %121, <8 x i32> zeroinitializer
  %123 = or <8 x i32> %120, %122
  %124 = xor <8 x i32> %123, %118
  %125 = add <8 x i32> %124, %118
  %126 = shl <8 x i32> %124, %broadcast.splat30
  %127 = select i1 %shft.chk6, <8 x i32> %126, <8 x i32> zeroinitializer
  %128 = lshr <8 x i32> %124, %broadcast.splat32
  %129 = select i1 %shft.chk7, <8 x i32> %128, <8 x i32> zeroinitializer
  %130 = or <8 x i32> %127, %129
  %131 = xor <8 x i32> %130, %125
  %132 = add <8 x i32> %broadcast.splat34, %131
  %133 = getelementptr inbounds [2304 x i32], [2304 x i32]* %fusion.4.clone, i64 0, i64 %offset.idx
  %134 = bitcast i32* %133 to <8 x i32>*
  store <8 x i32> %132, <8 x i32>* %134, align 4, !alias.scope !6
  %index.next = add i64 %index, 8
  %135 = icmp eq i64 %index.next, %n.vec
  br i1 %135, label %middle.block, label %vector.body, !llvm.loop !20

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %37, %n.vec
  br i1 %cmp.n, label %fusion.4.clone.loop_exit.dim.0, label %fusion.4.clone.loop_body.dim.0.preheader102

fusion.4.clone.loop_body.dim.0.us10.preheader:    ; preds = %fusion.4.clone.loop_body.dim.0.lr.ph.split
  br i1 %min.iters.check69, label %fusion.4.clone.loop_body.dim.0.us10.preheader100, label %vector.ph39

vector.ph39:                                      ; preds = %fusion.4.clone.loop_body.dim.0.us10.preheader
  %n.vec41 = and i64 %37, -8
  %ind.end45 = add i64 %5, %n.vec41
  %broadcast.splatinsert50 = insertelement <8 x i32> undef, i32 %14, i32 0
  %broadcast.splat51 = shufflevector <8 x i32> %broadcast.splatinsert50, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splat53 = shufflevector <4 x i32> %18, <4 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert54 = insertelement <8 x i32> undef, i32 %20, i32 0
  %broadcast.splat55 = shufflevector <8 x i32> %broadcast.splatinsert54, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splat57 = shufflevector <4 x i32> %24, <4 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert58 = insertelement <8 x i32> undef, i32 %26, i32 0
  %broadcast.splat59 = shufflevector <8 x i32> %broadcast.splatinsert58, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splat61 = shufflevector <4 x i32> %30, <4 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert62 = insertelement <8 x i32> undef, i32 %32, i32 0
  %broadcast.splat63 = shufflevector <8 x i32> %broadcast.splatinsert62, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert64 = insertelement <8 x i32> undef, i32 %36, i32 0
  %broadcast.splat65 = shufflevector <8 x i32> %broadcast.splatinsert64, <8 x i32> undef, <8 x i32> zeroinitializer
  br label %vector.body37

vector.body37:                                    ; preds = %vector.body37, %vector.ph39
  %index42 = phi i64 [ 0, %vector.ph39 ], [ %index.next43, %vector.body37 ]
  %offset.idx47 = add i64 %5, %index42
  %136 = getelementptr inbounds [2304 x i32], [2304 x i32]* %p.6, i64 0, i64 %offset.idx47
  %137 = bitcast i32* %136 to <8 x i32>*
  %wide.load48 = load <8 x i32>, <8 x i32>* %137, align 4, !alias.scope !12, !noalias !6
  %138 = getelementptr inbounds [2304 x i32], [2304 x i32]* %p.5, i64 0, i64 %offset.idx47
  %139 = bitcast i32* %138 to <8 x i32>*
  %wide.load49 = load <8 x i32>, <8 x i32>* %139, align 4, !alias.scope !14, !noalias !6
  %140 = add <8 x i32> %wide.load49, %wide.load48
  %141 = lshr <8 x i32> %wide.load49, %broadcast.splat51
  %142 = xor <8 x i32> %141, %140
  %143 = add <8 x i32> %142, %140
  %144 = shl <8 x i32> %142, %broadcast.splat53
  %145 = select i1 %shft.chk2, <8 x i32> %144, <8 x i32> zeroinitializer
  %146 = lshr <8 x i32> %142, %broadcast.splat55
  %147 = select i1 %shft.chk3, <8 x i32> %146, <8 x i32> zeroinitializer
  %148 = or <8 x i32> %145, %147
  %149 = xor <8 x i32> %148, %143
  %150 = add <8 x i32> %149, %143
  %151 = shl <8 x i32> %149, %broadcast.splat57
  %152 = select i1 %shft.chk4, <8 x i32> %151, <8 x i32> zeroinitializer
  %153 = lshr <8 x i32> %149, %broadcast.splat59
  %154 = select i1 %shft.chk5, <8 x i32> %153, <8 x i32> zeroinitializer
  %155 = or <8 x i32> %152, %154
  %156 = xor <8 x i32> %155, %150
  %157 = add <8 x i32> %156, %150
  %158 = shl <8 x i32> %156, %broadcast.splat61
  %159 = select i1 %shft.chk6, <8 x i32> %158, <8 x i32> zeroinitializer
  %160 = lshr <8 x i32> %156, %broadcast.splat63
  %161 = select i1 %shft.chk7, <8 x i32> %160, <8 x i32> zeroinitializer
  %162 = or <8 x i32> %159, %161
  %163 = xor <8 x i32> %162, %157
  %164 = add <8 x i32> %broadcast.splat65, %163
  %165 = getelementptr inbounds [2304 x i32], [2304 x i32]* %fusion.4.clone, i64 0, i64 %offset.idx47
  %166 = bitcast i32* %165 to <8 x i32>*
  store <8 x i32> %164, <8 x i32>* %166, align 4, !alias.scope !6
  %index.next43 = add i64 %index42, 8
  %167 = icmp eq i64 %index.next43, %n.vec41
  br i1 %167, label %middle.block35, label %vector.body37, !llvm.loop !21

middle.block35:                                   ; preds = %vector.body37
  %cmp.n46 = icmp eq i64 %37, %n.vec41
  br i1 %cmp.n46, label %fusion.4.clone.loop_exit.dim.0, label %fusion.4.clone.loop_body.dim.0.us10.preheader100

fusion.4.clone.loop_body.dim.0.us10.preheader100: ; preds = %middle.block35, %fusion.4.clone.loop_body.dim.0.us10.preheader
  %fusion.4.clone.invar_address.dim.0.09.us11.ph = phi i64 [ %5, %fusion.4.clone.loop_body.dim.0.us10.preheader ], [ %ind.end45, %middle.block35 ]
  br label %fusion.4.clone.loop_body.dim.0.us10

fusion.4.clone.loop_body.dim.0.us10:              ; preds = %fusion.4.clone.loop_body.dim.0.us10.preheader100, %fusion.4.clone.loop_body.dim.0.us10
  %fusion.4.clone.invar_address.dim.0.09.us11 = phi i64 [ %invar.inc.us12, %fusion.4.clone.loop_body.dim.0.us10 ], [ %fusion.4.clone.invar_address.dim.0.09.us11.ph, %fusion.4.clone.loop_body.dim.0.us10.preheader100 ]
  %168 = getelementptr inbounds [2304 x i32], [2304 x i32]* %p.6, i64 0, i64 %fusion.4.clone.invar_address.dim.0.09.us11
  %169 = load i32, i32* %168, align 4, !alias.scope !12, !noalias !6
  %170 = getelementptr inbounds [2304 x i32], [2304 x i32]* %p.5, i64 0, i64 %fusion.4.clone.invar_address.dim.0.09.us11
  %171 = load i32, i32* %170, align 4, !alias.scope !14, !noalias !6
  %172 = add i32 %171, %169
  %173 = lshr i32 %171, %14
  %174 = xor i32 %173, %172
  %175 = add i32 %174, %172
  %176 = shl i32 %174, %19
  %177 = select i1 %shft.chk2, i32 %176, i32 0
  %178 = lshr i32 %174, %20
  %179 = select i1 %shft.chk3, i32 %178, i32 0
  %180 = or i32 %177, %179
  %181 = xor i32 %180, %175
  %182 = add i32 %181, %175
  %183 = shl i32 %181, %25
  %184 = select i1 %shft.chk4, i32 %183, i32 0
  %185 = lshr i32 %181, %26
  %186 = select i1 %shft.chk5, i32 %185, i32 0
  %187 = or i32 %184, %186
  %188 = xor i32 %187, %182
  %189 = add i32 %188, %182
  %190 = shl i32 %188, %31
  %191 = select i1 %shft.chk6, i32 %190, i32 0
  %192 = lshr i32 %188, %32
  %193 = select i1 %shft.chk7, i32 %192, i32 0
  %194 = or i32 %191, %193
  %195 = xor i32 %194, %189
  %196 = add i32 %36, %195
  %197 = getelementptr inbounds [2304 x i32], [2304 x i32]* %fusion.4.clone, i64 0, i64 %fusion.4.clone.invar_address.dim.0.09.us11
  store i32 %196, i32* %197, align 4, !alias.scope !6
  %invar.inc.us12 = add nuw nsw i64 %fusion.4.clone.invar_address.dim.0.09.us11, 1
  %exitcond16.not = icmp eq i64 %invar.inc.us12, %6
  br i1 %exitcond16.not, label %fusion.4.clone.loop_exit.dim.0, label %fusion.4.clone.loop_body.dim.0.us10, !llvm.loop !22

fusion.4.clone.loop_body.dim.0:                   ; preds = %fusion.4.clone.loop_body.dim.0.preheader102, %fusion.4.clone.loop_body.dim.0
  %fusion.4.clone.invar_address.dim.0.09 = phi i64 [ %invar.inc, %fusion.4.clone.loop_body.dim.0 ], [ %fusion.4.clone.invar_address.dim.0.09.ph, %fusion.4.clone.loop_body.dim.0.preheader102 ]
  %198 = getelementptr inbounds [2304 x i32], [2304 x i32]* %p.6, i64 0, i64 %fusion.4.clone.invar_address.dim.0.09
  %199 = load i32, i32* %198, align 4, !alias.scope !12, !noalias !6
  %200 = getelementptr inbounds [2304 x i32], [2304 x i32]* %p.5, i64 0, i64 %fusion.4.clone.invar_address.dim.0.09
  %201 = load i32, i32* %200, align 4, !alias.scope !14, !noalias !6
  %202 = add i32 %201, %199
  %203 = shl i32 %202, 1
  %204 = shl i32 %202, %19
  %205 = select i1 %shft.chk2, i32 %204, i32 0
  %206 = lshr i32 %202, %20
  %207 = select i1 %shft.chk3, i32 %206, i32 0
  %208 = or i32 %205, %207
  %209 = xor i32 %208, %203
  %210 = add i32 %209, %203
  %211 = shl i32 %209, %25
  %212 = select i1 %shft.chk4, i32 %211, i32 0
  %213 = lshr i32 %209, %26
  %214 = select i1 %shft.chk5, i32 %213, i32 0
  %215 = or i32 %212, %214
  %216 = xor i32 %215, %210
  %217 = add i32 %216, %210
  %218 = shl i32 %216, %31
  %219 = select i1 %shft.chk6, i32 %218, i32 0
  %220 = lshr i32 %216, %32
  %221 = select i1 %shft.chk7, i32 %220, i32 0
  %222 = or i32 %219, %221
  %223 = xor i32 %222, %217
  %224 = add i32 %36, %223
  %225 = getelementptr inbounds [2304 x i32], [2304 x i32]* %fusion.4.clone, i64 0, i64 %fusion.4.clone.invar_address.dim.0.09
  store i32 %224, i32* %225, align 4, !alias.scope !6
  %invar.inc = add nuw nsw i64 %fusion.4.clone.invar_address.dim.0.09, 1
  %exitcond17.not = icmp eq i64 %invar.inc, %6
  br i1 %exitcond17.not, label %fusion.4.clone.loop_exit.dim.0, label %fusion.4.clone.loop_body.dim.0, !llvm.loop !23

fusion.4.clone.loop_exit.dim.0:                   ; preds = %fusion.4.clone.loop_body.dim.0, %fusion.4.clone.loop_body.dim.0.us10, %fusion.4.clone.loop_body.dim.0.us, %middle.block, %middle.block35, %middle.block66, %entry
  ret void
}

; Function Attrs: nofree norecurse nounwind uwtable
define internal void @parallel_fusion.5(i8* nocapture readnone %retval, i8* noalias nocapture readnone %run_options, i8** noalias nocapture readnone %params, i8** noalias nocapture readonly %buffer_table, i64* noalias nocapture readonly %dynamic_loop_bounds, i64* noalias nocapture readnone %prof_counters) #1 {
entry:
  %0 = getelementptr inbounds i8*, i8** %buffer_table, i64 20
  %1 = load i8*, i8** %0, align 8, !invariant.load !0, !dereferenceable !1, !align !2
  %2 = getelementptr inbounds i8, i8* %1, i64 9280
  %p.10 = bitcast i8* %2 to [2304 x i32]*
  %3 = getelementptr inbounds i8, i8* %1, i64 64
  %p.11 = bitcast i8* %3 to [2304 x i32]*
  %4 = bitcast i8** %buffer_table to [2304 x i32]**
  %5 = load [2304 x i32]*, [2304 x i32]** %4, align 8, !invariant.load !0, !dereferenceable !24, !align !2
  %6 = load i64, i64* %dynamic_loop_bounds, align 8
  %dynamic_loop_bound_1 = getelementptr i64, i64* %dynamic_loop_bounds, i64 1
  %7 = load i64, i64* %dynamic_loop_bound_1, align 8
  %.not6 = icmp ugt i64 %7, %6
  br i1 %.not6, label %fusion.5.clone.loop_body.dim.0.lr.ph, label %fusion.5.clone.loop_exit.dim.0

fusion.5.clone.loop_body.dim.0.lr.ph:             ; preds = %entry
  %8 = getelementptr inbounds i8, i8* %1, i64 27712
  %9 = getelementptr inbounds i8, i8* %1, i64 27744
  %p.8 = bitcast i8* %9 to i32*
  %10 = bitcast i8* %8 to i32*
  %11 = bitcast i8* %8 to <4 x i32>*
  %12 = load <4 x i32>, <4 x i32>* %11, align 16
  %13 = load i32, i32* %10, align 16, !alias.scope !3, !noalias !25
  %shft.chk = icmp ult i32 %13, 32
  %14 = sub i32 32, %13
  %shft.chk1 = icmp ult i32 %14, 32
  %15 = getelementptr inbounds i8, i8* %1, i64 27716
  %16 = bitcast i8* %15 to i32*
  %17 = bitcast i8* %15 to <4 x i32>*
  %18 = load <4 x i32>, <4 x i32>* %17, align 4
  %19 = load i32, i32* %16, align 4, !alias.scope !3, !noalias !25
  %shft.chk2 = icmp ult i32 %19, 32
  %20 = sub i32 32, %19
  %shft.chk3 = icmp ult i32 %20, 32
  %21 = getelementptr inbounds i8, i8* %1, i64 27720
  %22 = bitcast i8* %21 to i32*
  %23 = bitcast i8* %21 to <4 x i32>*
  %24 = load <4 x i32>, <4 x i32>* %23, align 8
  %25 = load i32, i32* %22, align 8, !alias.scope !3, !noalias !25
  %shft.chk4 = icmp ult i32 %25, 32
  %26 = sub i32 32, %25
  %shft.chk5 = icmp ult i32 %26, 32
  %27 = bitcast i8* %9 to <4 x i32>*
  %28 = load <4 x i32>, <4 x i32>* %27, align 16
  %29 = load i32, i32* %p.8, align 16, !alias.scope !27, !noalias !25
  %30 = sub i64 %7, %6
  %min.iters.check90 = icmp ult i64 %30, 8
  br i1 %shft.chk, label %fusion.5.clone.loop_body.dim.0.lr.ph.split.us, label %fusion.5.clone.loop_body.dim.0.lr.ph.split

fusion.5.clone.loop_body.dim.0.lr.ph.split.us:    ; preds = %fusion.5.clone.loop_body.dim.0.lr.ph
  br i1 %shft.chk1, label %fusion.5.clone.loop_body.dim.0.us.us.preheader, label %fusion.5.clone.loop_body.dim.0.us.preheader

fusion.5.clone.loop_body.dim.0.us.preheader:      ; preds = %fusion.5.clone.loop_body.dim.0.lr.ph.split.us
  br i1 %min.iters.check90, label %fusion.5.clone.loop_body.dim.0.us.preheader117, label %vector.ph64

fusion.5.clone.loop_body.dim.0.us.preheader117:   ; preds = %middle.block60, %fusion.5.clone.loop_body.dim.0.us.preheader
  %fusion.5.clone.invar_address.dim.0.07.us.ph = phi i64 [ %6, %fusion.5.clone.loop_body.dim.0.us.preheader ], [ %ind.end70, %middle.block60 ]
  br label %fusion.5.clone.loop_body.dim.0.us

vector.ph64:                                      ; preds = %fusion.5.clone.loop_body.dim.0.us.preheader
  %n.vec66 = and i64 %30, -8
  %ind.end70 = add i64 %6, %n.vec66
  %broadcast.splat76 = shufflevector <4 x i32> %12, <4 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splat78 = shufflevector <4 x i32> %18, <4 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert79 = insertelement <8 x i32> undef, i32 %20, i32 0
  %broadcast.splat80 = shufflevector <8 x i32> %broadcast.splatinsert79, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splat82 = shufflevector <4 x i32> %24, <4 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert83 = insertelement <8 x i32> undef, i32 %26, i32 0
  %broadcast.splat84 = shufflevector <8 x i32> %broadcast.splatinsert83, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splat86 = shufflevector <4 x i32> %28, <4 x i32> undef, <8 x i32> zeroinitializer
  %31 = add i64 %n.vec66, -8
  %32 = lshr exact i64 %31, 3
  %33 = add nuw nsw i64 %32, 1
  %xtraiter = and i64 %33, 1
  %34 = icmp eq i64 %31, 0
  br i1 %34, label %middle.block60.unr-lcssa, label %vector.ph64.new

vector.ph64.new:                                  ; preds = %vector.ph64
  %unroll_iter = and i64 %33, 4611686018427387902
  br label %vector.body62

vector.body62:                                    ; preds = %vector.body62, %vector.ph64.new
  %index67 = phi i64 [ 0, %vector.ph64.new ], [ %index.next68.1, %vector.body62 ]
  %niter = phi i64 [ %unroll_iter, %vector.ph64.new ], [ %niter.nsub.1, %vector.body62 ]
  %offset.idx72 = add i64 %6, %index67
  %35 = getelementptr inbounds [2304 x i32], [2304 x i32]* %p.11, i64 0, i64 %offset.idx72
  %36 = bitcast i32* %35 to <8 x i32>*
  %wide.load73 = load <8 x i32>, <8 x i32>* %36, align 4, !alias.scope !12, !noalias !25
  %37 = getelementptr inbounds [2304 x i32], [2304 x i32]* %p.10, i64 0, i64 %offset.idx72
  %38 = bitcast i32* %37 to <8 x i32>*
  %wide.load74 = load <8 x i32>, <8 x i32>* %38, align 4, !alias.scope !14, !noalias !25
  %39 = add <8 x i32> %wide.load74, %wide.load73
  %40 = shl <8 x i32> %wide.load74, %broadcast.splat76
  %41 = xor <8 x i32> %40, %39
  %42 = add <8 x i32> %41, %39
  %43 = shl <8 x i32> %41, %broadcast.splat78
  %44 = select i1 %shft.chk2, <8 x i32> %43, <8 x i32> zeroinitializer
  %45 = lshr <8 x i32> %41, %broadcast.splat80
  %46 = select i1 %shft.chk3, <8 x i32> %45, <8 x i32> zeroinitializer
  %47 = or <8 x i32> %44, %46
  %48 = xor <8 x i32> %47, %42
  %49 = add <8 x i32> %48, %42
  %50 = shl <8 x i32> %48, %broadcast.splat82
  %51 = select i1 %shft.chk4, <8 x i32> %50, <8 x i32> zeroinitializer
  %52 = lshr <8 x i32> %48, %broadcast.splat84
  %53 = select i1 %shft.chk5, <8 x i32> %52, <8 x i32> zeroinitializer
  %54 = or <8 x i32> %51, %53
  %55 = xor <8 x i32> %54, %49
  %56 = add <8 x i32> %49, %broadcast.splat86
  %57 = add <8 x i32> %56, %55
  %58 = getelementptr inbounds [2304 x i32], [2304 x i32]* %5, i64 0, i64 %offset.idx72
  %59 = bitcast i32* %58 to <8 x i32>*
  store <8 x i32> %57, <8 x i32>* %59, align 4, !alias.scope !25
  %index.next68 = or i64 %index67, 8
  %offset.idx72.1 = add i64 %6, %index.next68
  %60 = getelementptr inbounds [2304 x i32], [2304 x i32]* %p.11, i64 0, i64 %offset.idx72.1
  %61 = bitcast i32* %60 to <8 x i32>*
  %wide.load73.1 = load <8 x i32>, <8 x i32>* %61, align 4, !alias.scope !12, !noalias !25
  %62 = getelementptr inbounds [2304 x i32], [2304 x i32]* %p.10, i64 0, i64 %offset.idx72.1
  %63 = bitcast i32* %62 to <8 x i32>*
  %wide.load74.1 = load <8 x i32>, <8 x i32>* %63, align 4, !alias.scope !14, !noalias !25
  %64 = add <8 x i32> %wide.load74.1, %wide.load73.1
  %65 = shl <8 x i32> %wide.load74.1, %broadcast.splat76
  %66 = xor <8 x i32> %65, %64
  %67 = add <8 x i32> %66, %64
  %68 = shl <8 x i32> %66, %broadcast.splat78
  %69 = select i1 %shft.chk2, <8 x i32> %68, <8 x i32> zeroinitializer
  %70 = lshr <8 x i32> %66, %broadcast.splat80
  %71 = select i1 %shft.chk3, <8 x i32> %70, <8 x i32> zeroinitializer
  %72 = or <8 x i32> %69, %71
  %73 = xor <8 x i32> %72, %67
  %74 = add <8 x i32> %73, %67
  %75 = shl <8 x i32> %73, %broadcast.splat82
  %76 = select i1 %shft.chk4, <8 x i32> %75, <8 x i32> zeroinitializer
  %77 = lshr <8 x i32> %73, %broadcast.splat84
  %78 = select i1 %shft.chk5, <8 x i32> %77, <8 x i32> zeroinitializer
  %79 = or <8 x i32> %76, %78
  %80 = xor <8 x i32> %79, %74
  %81 = add <8 x i32> %74, %broadcast.splat86
  %82 = add <8 x i32> %81, %80
  %83 = getelementptr inbounds [2304 x i32], [2304 x i32]* %5, i64 0, i64 %offset.idx72.1
  %84 = bitcast i32* %83 to <8 x i32>*
  store <8 x i32> %82, <8 x i32>* %84, align 4, !alias.scope !25
  %index.next68.1 = add i64 %index67, 16
  %niter.nsub.1 = add i64 %niter, -2
  %niter.ncmp.1 = icmp eq i64 %niter.nsub.1, 0
  br i1 %niter.ncmp.1, label %middle.block60.unr-lcssa, label %vector.body62, !llvm.loop !29

middle.block60.unr-lcssa:                         ; preds = %vector.body62, %vector.ph64
  %index67.unr = phi i64 [ 0, %vector.ph64 ], [ %index.next68.1, %vector.body62 ]
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %middle.block60, label %vector.body62.epil

vector.body62.epil:                               ; preds = %middle.block60.unr-lcssa
  %offset.idx72.epil = add i64 %6, %index67.unr
  %85 = getelementptr inbounds [2304 x i32], [2304 x i32]* %p.11, i64 0, i64 %offset.idx72.epil
  %86 = bitcast i32* %85 to <8 x i32>*
  %wide.load73.epil = load <8 x i32>, <8 x i32>* %86, align 4, !alias.scope !12, !noalias !25
  %87 = getelementptr inbounds [2304 x i32], [2304 x i32]* %p.10, i64 0, i64 %offset.idx72.epil
  %88 = bitcast i32* %87 to <8 x i32>*
  %wide.load74.epil = load <8 x i32>, <8 x i32>* %88, align 4, !alias.scope !14, !noalias !25
  %89 = add <8 x i32> %wide.load74.epil, %wide.load73.epil
  %90 = shl <8 x i32> %wide.load74.epil, %broadcast.splat76
  %91 = xor <8 x i32> %90, %89
  %92 = add <8 x i32> %91, %89
  %93 = shl <8 x i32> %91, %broadcast.splat78
  %94 = select i1 %shft.chk2, <8 x i32> %93, <8 x i32> zeroinitializer
  %95 = lshr <8 x i32> %91, %broadcast.splat80
  %96 = select i1 %shft.chk3, <8 x i32> %95, <8 x i32> zeroinitializer
  %97 = or <8 x i32> %94, %96
  %98 = xor <8 x i32> %97, %92
  %99 = add <8 x i32> %98, %92
  %100 = shl <8 x i32> %98, %broadcast.splat82
  %101 = select i1 %shft.chk4, <8 x i32> %100, <8 x i32> zeroinitializer
  %102 = lshr <8 x i32> %98, %broadcast.splat84
  %103 = select i1 %shft.chk5, <8 x i32> %102, <8 x i32> zeroinitializer
  %104 = or <8 x i32> %101, %103
  %105 = xor <8 x i32> %104, %99
  %106 = add <8 x i32> %99, %broadcast.splat86
  %107 = add <8 x i32> %106, %105
  %108 = getelementptr inbounds [2304 x i32], [2304 x i32]* %5, i64 0, i64 %offset.idx72.epil
  %109 = bitcast i32* %108 to <8 x i32>*
  store <8 x i32> %107, <8 x i32>* %109, align 4, !alias.scope !25
  br label %middle.block60

middle.block60:                                   ; preds = %middle.block60.unr-lcssa, %vector.body62.epil
  %cmp.n71 = icmp eq i64 %30, %n.vec66
  br i1 %cmp.n71, label %fusion.5.clone.loop_exit.dim.0, label %fusion.5.clone.loop_body.dim.0.us.preheader117

fusion.5.clone.loop_body.dim.0.us.us.preheader:   ; preds = %fusion.5.clone.loop_body.dim.0.lr.ph.split.us
  br i1 %min.iters.check90, label %fusion.5.clone.loop_body.dim.0.us.us.preheader116, label %vector.ph91

vector.ph91:                                      ; preds = %fusion.5.clone.loop_body.dim.0.us.us.preheader
  %n.vec93 = and i64 %30, -8
  %ind.end97 = add i64 %6, %n.vec93
  %broadcast.splat103 = shufflevector <4 x i32> %12, <4 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert104 = insertelement <8 x i32> undef, i32 %14, i32 0
  %broadcast.splat105 = shufflevector <8 x i32> %broadcast.splatinsert104, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splat107 = shufflevector <4 x i32> %18, <4 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert108 = insertelement <8 x i32> undef, i32 %20, i32 0
  %broadcast.splat109 = shufflevector <8 x i32> %broadcast.splatinsert108, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splat111 = shufflevector <4 x i32> %24, <4 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert112 = insertelement <8 x i32> undef, i32 %26, i32 0
  %broadcast.splat113 = shufflevector <8 x i32> %broadcast.splatinsert112, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splat115 = shufflevector <4 x i32> %28, <4 x i32> undef, <8 x i32> zeroinitializer
  br label %vector.body89

vector.body89:                                    ; preds = %vector.body89, %vector.ph91
  %index94 = phi i64 [ 0, %vector.ph91 ], [ %index.next95, %vector.body89 ]
  %offset.idx99 = add i64 %6, %index94
  %110 = getelementptr inbounds [2304 x i32], [2304 x i32]* %p.11, i64 0, i64 %offset.idx99
  %111 = bitcast i32* %110 to <8 x i32>*
  %wide.load100 = load <8 x i32>, <8 x i32>* %111, align 4, !alias.scope !12, !noalias !25
  %112 = getelementptr inbounds [2304 x i32], [2304 x i32]* %p.10, i64 0, i64 %offset.idx99
  %113 = bitcast i32* %112 to <8 x i32>*
  %wide.load101 = load <8 x i32>, <8 x i32>* %113, align 4, !alias.scope !14, !noalias !25
  %114 = add <8 x i32> %wide.load101, %wide.load100
  %115 = shl <8 x i32> %wide.load101, %broadcast.splat103
  %116 = lshr <8 x i32> %wide.load101, %broadcast.splat105
  %117 = or <8 x i32> %116, %115
  %118 = xor <8 x i32> %117, %114
  %119 = add <8 x i32> %118, %114
  %120 = shl <8 x i32> %118, %broadcast.splat107
  %121 = select i1 %shft.chk2, <8 x i32> %120, <8 x i32> zeroinitializer
  %122 = lshr <8 x i32> %118, %broadcast.splat109
  %123 = select i1 %shft.chk3, <8 x i32> %122, <8 x i32> zeroinitializer
  %124 = or <8 x i32> %121, %123
  %125 = xor <8 x i32> %124, %119
  %126 = add <8 x i32> %125, %119
  %127 = shl <8 x i32> %125, %broadcast.splat111
  %128 = select i1 %shft.chk4, <8 x i32> %127, <8 x i32> zeroinitializer
  %129 = lshr <8 x i32> %125, %broadcast.splat113
  %130 = select i1 %shft.chk5, <8 x i32> %129, <8 x i32> zeroinitializer
  %131 = or <8 x i32> %128, %130
  %132 = xor <8 x i32> %131, %126
  %133 = add <8 x i32> %126, %broadcast.splat115
  %134 = add <8 x i32> %133, %132
  %135 = getelementptr inbounds [2304 x i32], [2304 x i32]* %5, i64 0, i64 %offset.idx99
  %136 = bitcast i32* %135 to <8 x i32>*
  store <8 x i32> %134, <8 x i32>* %136, align 4, !alias.scope !25
  %index.next95 = add i64 %index94, 8
  %137 = icmp eq i64 %index.next95, %n.vec93
  br i1 %137, label %middle.block87, label %vector.body89, !llvm.loop !30

middle.block87:                                   ; preds = %vector.body89
  %cmp.n98 = icmp eq i64 %30, %n.vec93
  br i1 %cmp.n98, label %fusion.5.clone.loop_exit.dim.0, label %fusion.5.clone.loop_body.dim.0.us.us.preheader116

fusion.5.clone.loop_body.dim.0.us.us.preheader116: ; preds = %middle.block87, %fusion.5.clone.loop_body.dim.0.us.us.preheader
  %fusion.5.clone.invar_address.dim.0.07.us.us.ph = phi i64 [ %6, %fusion.5.clone.loop_body.dim.0.us.us.preheader ], [ %ind.end97, %middle.block87 ]
  br label %fusion.5.clone.loop_body.dim.0.us.us

fusion.5.clone.loop_body.dim.0.us.us:             ; preds = %fusion.5.clone.loop_body.dim.0.us.us.preheader116, %fusion.5.clone.loop_body.dim.0.us.us
  %fusion.5.clone.invar_address.dim.0.07.us.us = phi i64 [ %invar.inc.us.us, %fusion.5.clone.loop_body.dim.0.us.us ], [ %fusion.5.clone.invar_address.dim.0.07.us.us.ph, %fusion.5.clone.loop_body.dim.0.us.us.preheader116 ]
  %138 = getelementptr inbounds [2304 x i32], [2304 x i32]* %p.11, i64 0, i64 %fusion.5.clone.invar_address.dim.0.07.us.us
  %139 = load i32, i32* %138, align 4, !alias.scope !12, !noalias !25
  %140 = getelementptr inbounds [2304 x i32], [2304 x i32]* %p.10, i64 0, i64 %fusion.5.clone.invar_address.dim.0.07.us.us
  %141 = load i32, i32* %140, align 4, !alias.scope !14, !noalias !25
  %142 = add i32 %141, %139
  %143 = shl i32 %141, %13
  %144 = lshr i32 %141, %14
  %145 = or i32 %144, %143
  %146 = xor i32 %145, %142
  %147 = add i32 %146, %142
  %148 = shl i32 %146, %19
  %149 = select i1 %shft.chk2, i32 %148, i32 0
  %150 = lshr i32 %146, %20
  %151 = select i1 %shft.chk3, i32 %150, i32 0
  %152 = or i32 %149, %151
  %153 = xor i32 %152, %147
  %154 = add i32 %153, %147
  %155 = shl i32 %153, %25
  %156 = select i1 %shft.chk4, i32 %155, i32 0
  %157 = lshr i32 %153, %26
  %158 = select i1 %shft.chk5, i32 %157, i32 0
  %159 = or i32 %156, %158
  %160 = xor i32 %159, %154
  %161 = add i32 %154, %29
  %162 = add i32 %161, %160
  %163 = getelementptr inbounds [2304 x i32], [2304 x i32]* %5, i64 0, i64 %fusion.5.clone.invar_address.dim.0.07.us.us
  store i32 %162, i32* %163, align 4, !alias.scope !25
  %invar.inc.us.us = add nuw nsw i64 %fusion.5.clone.invar_address.dim.0.07.us.us, 1
  %exitcond.not = icmp eq i64 %invar.inc.us.us, %7
  br i1 %exitcond.not, label %fusion.5.clone.loop_exit.dim.0, label %fusion.5.clone.loop_body.dim.0.us.us, !llvm.loop !31

fusion.5.clone.loop_body.dim.0.us:                ; preds = %fusion.5.clone.loop_body.dim.0.us.preheader117, %fusion.5.clone.loop_body.dim.0.us
  %fusion.5.clone.invar_address.dim.0.07.us = phi i64 [ %invar.inc.us, %fusion.5.clone.loop_body.dim.0.us ], [ %fusion.5.clone.invar_address.dim.0.07.us.ph, %fusion.5.clone.loop_body.dim.0.us.preheader117 ]
  %164 = getelementptr inbounds [2304 x i32], [2304 x i32]* %p.11, i64 0, i64 %fusion.5.clone.invar_address.dim.0.07.us
  %165 = load i32, i32* %164, align 4, !alias.scope !12, !noalias !25
  %166 = getelementptr inbounds [2304 x i32], [2304 x i32]* %p.10, i64 0, i64 %fusion.5.clone.invar_address.dim.0.07.us
  %167 = load i32, i32* %166, align 4, !alias.scope !14, !noalias !25
  %168 = add i32 %167, %165
  %169 = shl i32 %167, %13
  %170 = xor i32 %169, %168
  %171 = add i32 %170, %168
  %172 = shl i32 %170, %19
  %173 = select i1 %shft.chk2, i32 %172, i32 0
  %174 = lshr i32 %170, %20
  %175 = select i1 %shft.chk3, i32 %174, i32 0
  %176 = or i32 %173, %175
  %177 = xor i32 %176, %171
  %178 = add i32 %177, %171
  %179 = shl i32 %177, %25
  %180 = select i1 %shft.chk4, i32 %179, i32 0
  %181 = lshr i32 %177, %26
  %182 = select i1 %shft.chk5, i32 %181, i32 0
  %183 = or i32 %180, %182
  %184 = xor i32 %183, %178
  %185 = add i32 %178, %29
  %186 = add i32 %185, %184
  %187 = getelementptr inbounds [2304 x i32], [2304 x i32]* %5, i64 0, i64 %fusion.5.clone.invar_address.dim.0.07.us
  store i32 %186, i32* %187, align 4, !alias.scope !25
  %invar.inc.us = add nuw nsw i64 %fusion.5.clone.invar_address.dim.0.07.us, 1
  %exitcond15.not = icmp eq i64 %invar.inc.us, %7
  br i1 %exitcond15.not, label %fusion.5.clone.loop_exit.dim.0, label %fusion.5.clone.loop_body.dim.0.us, !llvm.loop !32

fusion.5.clone.loop_body.dim.0.lr.ph.split:       ; preds = %fusion.5.clone.loop_body.dim.0.lr.ph
  br i1 %shft.chk1, label %fusion.5.clone.loop_body.dim.0.us8.preheader, label %fusion.5.clone.loop_body.dim.0.preheader

fusion.5.clone.loop_body.dim.0.preheader:         ; preds = %fusion.5.clone.loop_body.dim.0.lr.ph.split
  br i1 %min.iters.check90, label %fusion.5.clone.loop_body.dim.0.preheader121, label %vector.ph

fusion.5.clone.loop_body.dim.0.preheader121:      ; preds = %middle.block, %fusion.5.clone.loop_body.dim.0.preheader
  %fusion.5.clone.invar_address.dim.0.07.ph = phi i64 [ %6, %fusion.5.clone.loop_body.dim.0.preheader ], [ %ind.end, %middle.block ]
  br label %fusion.5.clone.loop_body.dim.0

vector.ph:                                        ; preds = %fusion.5.clone.loop_body.dim.0.preheader
  %n.vec = and i64 %30, -8
  %ind.end = add i64 %6, %n.vec
  %broadcast.splat = shufflevector <4 x i32> %18, <4 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert25 = insertelement <8 x i32> undef, i32 %20, i32 0
  %broadcast.splat26 = shufflevector <8 x i32> %broadcast.splatinsert25, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splat28 = shufflevector <4 x i32> %24, <4 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert29 = insertelement <8 x i32> undef, i32 %26, i32 0
  %broadcast.splat30 = shufflevector <8 x i32> %broadcast.splatinsert29, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splat32 = shufflevector <4 x i32> %28, <4 x i32> undef, <8 x i32> zeroinitializer
  %188 = add i64 %n.vec, -8
  %189 = lshr exact i64 %188, 3
  %190 = add nuw nsw i64 %189, 1
  %xtraiter127 = and i64 %190, 1
  %191 = icmp eq i64 %188, 0
  br i1 %191, label %middle.block.unr-lcssa, label %vector.ph.new

vector.ph.new:                                    ; preds = %vector.ph
  %unroll_iter129 = and i64 %190, 4611686018427387902
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph.new
  %index = phi i64 [ 0, %vector.ph.new ], [ %index.next.1, %vector.body ]
  %niter130 = phi i64 [ %unroll_iter129, %vector.ph.new ], [ %niter130.nsub.1, %vector.body ]
  %offset.idx = add i64 %6, %index
  %192 = getelementptr inbounds [2304 x i32], [2304 x i32]* %p.11, i64 0, i64 %offset.idx
  %193 = bitcast i32* %192 to <8 x i32>*
  %wide.load = load <8 x i32>, <8 x i32>* %193, align 4, !alias.scope !12, !noalias !25
  %194 = getelementptr inbounds [2304 x i32], [2304 x i32]* %p.10, i64 0, i64 %offset.idx
  %195 = bitcast i32* %194 to <8 x i32>*
  %wide.load24 = load <8 x i32>, <8 x i32>* %195, align 4, !alias.scope !14, !noalias !25
  %196 = add <8 x i32> %wide.load24, %wide.load
  %197 = shl <8 x i32> %196, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %198 = shl <8 x i32> %196, %broadcast.splat
  %199 = select i1 %shft.chk2, <8 x i32> %198, <8 x i32> zeroinitializer
  %200 = lshr <8 x i32> %196, %broadcast.splat26
  %201 = select i1 %shft.chk3, <8 x i32> %200, <8 x i32> zeroinitializer
  %202 = or <8 x i32> %199, %201
  %203 = xor <8 x i32> %202, %197
  %204 = add <8 x i32> %203, %197
  %205 = shl <8 x i32> %203, %broadcast.splat28
  %206 = select i1 %shft.chk4, <8 x i32> %205, <8 x i32> zeroinitializer
  %207 = lshr <8 x i32> %203, %broadcast.splat30
  %208 = select i1 %shft.chk5, <8 x i32> %207, <8 x i32> zeroinitializer
  %209 = or <8 x i32> %206, %208
  %210 = xor <8 x i32> %209, %204
  %211 = add <8 x i32> %204, %broadcast.splat32
  %212 = add <8 x i32> %211, %210
  %213 = getelementptr inbounds [2304 x i32], [2304 x i32]* %5, i64 0, i64 %offset.idx
  %214 = bitcast i32* %213 to <8 x i32>*
  store <8 x i32> %212, <8 x i32>* %214, align 4, !alias.scope !25
  %index.next = or i64 %index, 8
  %offset.idx.1 = add i64 %6, %index.next
  %215 = getelementptr inbounds [2304 x i32], [2304 x i32]* %p.11, i64 0, i64 %offset.idx.1
  %216 = bitcast i32* %215 to <8 x i32>*
  %wide.load.1 = load <8 x i32>, <8 x i32>* %216, align 4, !alias.scope !12, !noalias !25
  %217 = getelementptr inbounds [2304 x i32], [2304 x i32]* %p.10, i64 0, i64 %offset.idx.1
  %218 = bitcast i32* %217 to <8 x i32>*
  %wide.load24.1 = load <8 x i32>, <8 x i32>* %218, align 4, !alias.scope !14, !noalias !25
  %219 = add <8 x i32> %wide.load24.1, %wide.load.1
  %220 = shl <8 x i32> %219, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %221 = shl <8 x i32> %219, %broadcast.splat
  %222 = select i1 %shft.chk2, <8 x i32> %221, <8 x i32> zeroinitializer
  %223 = lshr <8 x i32> %219, %broadcast.splat26
  %224 = select i1 %shft.chk3, <8 x i32> %223, <8 x i32> zeroinitializer
  %225 = or <8 x i32> %222, %224
  %226 = xor <8 x i32> %225, %220
  %227 = add <8 x i32> %226, %220
  %228 = shl <8 x i32> %226, %broadcast.splat28
  %229 = select i1 %shft.chk4, <8 x i32> %228, <8 x i32> zeroinitializer
  %230 = lshr <8 x i32> %226, %broadcast.splat30
  %231 = select i1 %shft.chk5, <8 x i32> %230, <8 x i32> zeroinitializer
  %232 = or <8 x i32> %229, %231
  %233 = xor <8 x i32> %232, %227
  %234 = add <8 x i32> %227, %broadcast.splat32
  %235 = add <8 x i32> %234, %233
  %236 = getelementptr inbounds [2304 x i32], [2304 x i32]* %5, i64 0, i64 %offset.idx.1
  %237 = bitcast i32* %236 to <8 x i32>*
  store <8 x i32> %235, <8 x i32>* %237, align 4, !alias.scope !25
  %index.next.1 = add i64 %index, 16
  %niter130.nsub.1 = add i64 %niter130, -2
  %niter130.ncmp.1 = icmp eq i64 %niter130.nsub.1, 0
  br i1 %niter130.ncmp.1, label %middle.block.unr-lcssa, label %vector.body, !llvm.loop !33

middle.block.unr-lcssa:                           ; preds = %vector.body, %vector.ph
  %index.unr = phi i64 [ 0, %vector.ph ], [ %index.next.1, %vector.body ]
  %lcmp.mod128.not = icmp eq i64 %xtraiter127, 0
  br i1 %lcmp.mod128.not, label %middle.block, label %vector.body.epil

vector.body.epil:                                 ; preds = %middle.block.unr-lcssa
  %offset.idx.epil = add i64 %6, %index.unr
  %238 = getelementptr inbounds [2304 x i32], [2304 x i32]* %p.11, i64 0, i64 %offset.idx.epil
  %239 = bitcast i32* %238 to <8 x i32>*
  %wide.load.epil = load <8 x i32>, <8 x i32>* %239, align 4, !alias.scope !12, !noalias !25
  %240 = getelementptr inbounds [2304 x i32], [2304 x i32]* %p.10, i64 0, i64 %offset.idx.epil
  %241 = bitcast i32* %240 to <8 x i32>*
  %wide.load24.epil = load <8 x i32>, <8 x i32>* %241, align 4, !alias.scope !14, !noalias !25
  %242 = add <8 x i32> %wide.load24.epil, %wide.load.epil
  %243 = shl <8 x i32> %242, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %244 = shl <8 x i32> %242, %broadcast.splat
  %245 = select i1 %shft.chk2, <8 x i32> %244, <8 x i32> zeroinitializer
  %246 = lshr <8 x i32> %242, %broadcast.splat26
  %247 = select i1 %shft.chk3, <8 x i32> %246, <8 x i32> zeroinitializer
  %248 = or <8 x i32> %245, %247
  %249 = xor <8 x i32> %248, %243
  %250 = add <8 x i32> %249, %243
  %251 = shl <8 x i32> %249, %broadcast.splat28
  %252 = select i1 %shft.chk4, <8 x i32> %251, <8 x i32> zeroinitializer
  %253 = lshr <8 x i32> %249, %broadcast.splat30
  %254 = select i1 %shft.chk5, <8 x i32> %253, <8 x i32> zeroinitializer
  %255 = or <8 x i32> %252, %254
  %256 = xor <8 x i32> %255, %250
  %257 = add <8 x i32> %250, %broadcast.splat32
  %258 = add <8 x i32> %257, %256
  %259 = getelementptr inbounds [2304 x i32], [2304 x i32]* %5, i64 0, i64 %offset.idx.epil
  %260 = bitcast i32* %259 to <8 x i32>*
  store <8 x i32> %258, <8 x i32>* %260, align 4, !alias.scope !25
  br label %middle.block

middle.block:                                     ; preds = %middle.block.unr-lcssa, %vector.body.epil
  %cmp.n = icmp eq i64 %30, %n.vec
  br i1 %cmp.n, label %fusion.5.clone.loop_exit.dim.0, label %fusion.5.clone.loop_body.dim.0.preheader121

fusion.5.clone.loop_body.dim.0.us8.preheader:     ; preds = %fusion.5.clone.loop_body.dim.0.lr.ph.split
  br i1 %min.iters.check90, label %fusion.5.clone.loop_body.dim.0.us8.preheader119, label %vector.ph37

vector.ph37:                                      ; preds = %fusion.5.clone.loop_body.dim.0.us8.preheader
  %n.vec39 = and i64 %30, -8
  %ind.end43 = add i64 %6, %n.vec39
  %broadcast.splatinsert48 = insertelement <8 x i32> undef, i32 %14, i32 0
  %broadcast.splat49 = shufflevector <8 x i32> %broadcast.splatinsert48, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splat51 = shufflevector <4 x i32> %18, <4 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert52 = insertelement <8 x i32> undef, i32 %20, i32 0
  %broadcast.splat53 = shufflevector <8 x i32> %broadcast.splatinsert52, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splat55 = shufflevector <4 x i32> %24, <4 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert56 = insertelement <8 x i32> undef, i32 %26, i32 0
  %broadcast.splat57 = shufflevector <8 x i32> %broadcast.splatinsert56, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splat59 = shufflevector <4 x i32> %28, <4 x i32> undef, <8 x i32> zeroinitializer
  %261 = add i64 %n.vec39, -8
  %262 = lshr exact i64 %261, 3
  %263 = add nuw nsw i64 %262, 1
  %xtraiter123 = and i64 %263, 1
  %264 = icmp eq i64 %261, 0
  br i1 %264, label %middle.block33.unr-lcssa, label %vector.ph37.new

vector.ph37.new:                                  ; preds = %vector.ph37
  %unroll_iter125 = and i64 %263, 4611686018427387902
  br label %vector.body35

vector.body35:                                    ; preds = %vector.body35, %vector.ph37.new
  %index40 = phi i64 [ 0, %vector.ph37.new ], [ %index.next41.1, %vector.body35 ]
  %niter126 = phi i64 [ %unroll_iter125, %vector.ph37.new ], [ %niter126.nsub.1, %vector.body35 ]
  %offset.idx45 = add i64 %6, %index40
  %265 = getelementptr inbounds [2304 x i32], [2304 x i32]* %p.11, i64 0, i64 %offset.idx45
  %266 = bitcast i32* %265 to <8 x i32>*
  %wide.load46 = load <8 x i32>, <8 x i32>* %266, align 4, !alias.scope !12, !noalias !25
  %267 = getelementptr inbounds [2304 x i32], [2304 x i32]* %p.10, i64 0, i64 %offset.idx45
  %268 = bitcast i32* %267 to <8 x i32>*
  %wide.load47 = load <8 x i32>, <8 x i32>* %268, align 4, !alias.scope !14, !noalias !25
  %269 = add <8 x i32> %wide.load47, %wide.load46
  %270 = lshr <8 x i32> %wide.load47, %broadcast.splat49
  %271 = xor <8 x i32> %270, %269
  %272 = add <8 x i32> %271, %269
  %273 = shl <8 x i32> %271, %broadcast.splat51
  %274 = select i1 %shft.chk2, <8 x i32> %273, <8 x i32> zeroinitializer
  %275 = lshr <8 x i32> %271, %broadcast.splat53
  %276 = select i1 %shft.chk3, <8 x i32> %275, <8 x i32> zeroinitializer
  %277 = or <8 x i32> %274, %276
  %278 = xor <8 x i32> %277, %272
  %279 = add <8 x i32> %278, %272
  %280 = shl <8 x i32> %278, %broadcast.splat55
  %281 = select i1 %shft.chk4, <8 x i32> %280, <8 x i32> zeroinitializer
  %282 = lshr <8 x i32> %278, %broadcast.splat57
  %283 = select i1 %shft.chk5, <8 x i32> %282, <8 x i32> zeroinitializer
  %284 = or <8 x i32> %281, %283
  %285 = xor <8 x i32> %284, %279
  %286 = add <8 x i32> %279, %broadcast.splat59
  %287 = add <8 x i32> %286, %285
  %288 = getelementptr inbounds [2304 x i32], [2304 x i32]* %5, i64 0, i64 %offset.idx45
  %289 = bitcast i32* %288 to <8 x i32>*
  store <8 x i32> %287, <8 x i32>* %289, align 4, !alias.scope !25
  %index.next41 = or i64 %index40, 8
  %offset.idx45.1 = add i64 %6, %index.next41
  %290 = getelementptr inbounds [2304 x i32], [2304 x i32]* %p.11, i64 0, i64 %offset.idx45.1
  %291 = bitcast i32* %290 to <8 x i32>*
  %wide.load46.1 = load <8 x i32>, <8 x i32>* %291, align 4, !alias.scope !12, !noalias !25
  %292 = getelementptr inbounds [2304 x i32], [2304 x i32]* %p.10, i64 0, i64 %offset.idx45.1
  %293 = bitcast i32* %292 to <8 x i32>*
  %wide.load47.1 = load <8 x i32>, <8 x i32>* %293, align 4, !alias.scope !14, !noalias !25
  %294 = add <8 x i32> %wide.load47.1, %wide.load46.1
  %295 = lshr <8 x i32> %wide.load47.1, %broadcast.splat49
  %296 = xor <8 x i32> %295, %294
  %297 = add <8 x i32> %296, %294
  %298 = shl <8 x i32> %296, %broadcast.splat51
  %299 = select i1 %shft.chk2, <8 x i32> %298, <8 x i32> zeroinitializer
  %300 = lshr <8 x i32> %296, %broadcast.splat53
  %301 = select i1 %shft.chk3, <8 x i32> %300, <8 x i32> zeroinitializer
  %302 = or <8 x i32> %299, %301
  %303 = xor <8 x i32> %302, %297
  %304 = add <8 x i32> %303, %297
  %305 = shl <8 x i32> %303, %broadcast.splat55
  %306 = select i1 %shft.chk4, <8 x i32> %305, <8 x i32> zeroinitializer
  %307 = lshr <8 x i32> %303, %broadcast.splat57
  %308 = select i1 %shft.chk5, <8 x i32> %307, <8 x i32> zeroinitializer
  %309 = or <8 x i32> %306, %308
  %310 = xor <8 x i32> %309, %304
  %311 = add <8 x i32> %304, %broadcast.splat59
  %312 = add <8 x i32> %311, %310
  %313 = getelementptr inbounds [2304 x i32], [2304 x i32]* %5, i64 0, i64 %offset.idx45.1
  %314 = bitcast i32* %313 to <8 x i32>*
  store <8 x i32> %312, <8 x i32>* %314, align 4, !alias.scope !25
  %index.next41.1 = add i64 %index40, 16
  %niter126.nsub.1 = add i64 %niter126, -2
  %niter126.ncmp.1 = icmp eq i64 %niter126.nsub.1, 0
  br i1 %niter126.ncmp.1, label %middle.block33.unr-lcssa, label %vector.body35, !llvm.loop !34

middle.block33.unr-lcssa:                         ; preds = %vector.body35, %vector.ph37
  %index40.unr = phi i64 [ 0, %vector.ph37 ], [ %index.next41.1, %vector.body35 ]
  %lcmp.mod124.not = icmp eq i64 %xtraiter123, 0
  br i1 %lcmp.mod124.not, label %middle.block33, label %vector.body35.epil

vector.body35.epil:                               ; preds = %middle.block33.unr-lcssa
  %offset.idx45.epil = add i64 %6, %index40.unr
  %315 = getelementptr inbounds [2304 x i32], [2304 x i32]* %p.11, i64 0, i64 %offset.idx45.epil
  %316 = bitcast i32* %315 to <8 x i32>*
  %wide.load46.epil = load <8 x i32>, <8 x i32>* %316, align 4, !alias.scope !12, !noalias !25
  %317 = getelementptr inbounds [2304 x i32], [2304 x i32]* %p.10, i64 0, i64 %offset.idx45.epil
  %318 = bitcast i32* %317 to <8 x i32>*
  %wide.load47.epil = load <8 x i32>, <8 x i32>* %318, align 4, !alias.scope !14, !noalias !25
  %319 = add <8 x i32> %wide.load47.epil, %wide.load46.epil
  %320 = lshr <8 x i32> %wide.load47.epil, %broadcast.splat49
  %321 = xor <8 x i32> %320, %319
  %322 = add <8 x i32> %321, %319
  %323 = shl <8 x i32> %321, %broadcast.splat51
  %324 = select i1 %shft.chk2, <8 x i32> %323, <8 x i32> zeroinitializer
  %325 = lshr <8 x i32> %321, %broadcast.splat53
  %326 = select i1 %shft.chk3, <8 x i32> %325, <8 x i32> zeroinitializer
  %327 = or <8 x i32> %324, %326
  %328 = xor <8 x i32> %327, %322
  %329 = add <8 x i32> %328, %322
  %330 = shl <8 x i32> %328, %broadcast.splat55
  %331 = select i1 %shft.chk4, <8 x i32> %330, <8 x i32> zeroinitializer
  %332 = lshr <8 x i32> %328, %broadcast.splat57
  %333 = select i1 %shft.chk5, <8 x i32> %332, <8 x i32> zeroinitializer
  %334 = or <8 x i32> %331, %333
  %335 = xor <8 x i32> %334, %329
  %336 = add <8 x i32> %329, %broadcast.splat59
  %337 = add <8 x i32> %336, %335
  %338 = getelementptr inbounds [2304 x i32], [2304 x i32]* %5, i64 0, i64 %offset.idx45.epil
  %339 = bitcast i32* %338 to <8 x i32>*
  store <8 x i32> %337, <8 x i32>* %339, align 4, !alias.scope !25
  br label %middle.block33

middle.block33:                                   ; preds = %middle.block33.unr-lcssa, %vector.body35.epil
  %cmp.n44 = icmp eq i64 %30, %n.vec39
  br i1 %cmp.n44, label %fusion.5.clone.loop_exit.dim.0, label %fusion.5.clone.loop_body.dim.0.us8.preheader119

fusion.5.clone.loop_body.dim.0.us8.preheader119:  ; preds = %middle.block33, %fusion.5.clone.loop_body.dim.0.us8.preheader
  %fusion.5.clone.invar_address.dim.0.07.us9.ph = phi i64 [ %6, %fusion.5.clone.loop_body.dim.0.us8.preheader ], [ %ind.end43, %middle.block33 ]
  br label %fusion.5.clone.loop_body.dim.0.us8

fusion.5.clone.loop_body.dim.0.us8:               ; preds = %fusion.5.clone.loop_body.dim.0.us8.preheader119, %fusion.5.clone.loop_body.dim.0.us8
  %fusion.5.clone.invar_address.dim.0.07.us9 = phi i64 [ %invar.inc.us10, %fusion.5.clone.loop_body.dim.0.us8 ], [ %fusion.5.clone.invar_address.dim.0.07.us9.ph, %fusion.5.clone.loop_body.dim.0.us8.preheader119 ]
  %340 = getelementptr inbounds [2304 x i32], [2304 x i32]* %p.11, i64 0, i64 %fusion.5.clone.invar_address.dim.0.07.us9
  %341 = load i32, i32* %340, align 4, !alias.scope !12, !noalias !25
  %342 = getelementptr inbounds [2304 x i32], [2304 x i32]* %p.10, i64 0, i64 %fusion.5.clone.invar_address.dim.0.07.us9
  %343 = load i32, i32* %342, align 4, !alias.scope !14, !noalias !25
  %344 = add i32 %343, %341
  %345 = lshr i32 %343, %14
  %346 = xor i32 %345, %344
  %347 = add i32 %346, %344
  %348 = shl i32 %346, %19
  %349 = select i1 %shft.chk2, i32 %348, i32 0
  %350 = lshr i32 %346, %20
  %351 = select i1 %shft.chk3, i32 %350, i32 0
  %352 = or i32 %349, %351
  %353 = xor i32 %352, %347
  %354 = add i32 %353, %347
  %355 = shl i32 %353, %25
  %356 = select i1 %shft.chk4, i32 %355, i32 0
  %357 = lshr i32 %353, %26
  %358 = select i1 %shft.chk5, i32 %357, i32 0
  %359 = or i32 %356, %358
  %360 = xor i32 %359, %354
  %361 = add i32 %354, %29
  %362 = add i32 %361, %360
  %363 = getelementptr inbounds [2304 x i32], [2304 x i32]* %5, i64 0, i64 %fusion.5.clone.invar_address.dim.0.07.us9
  store i32 %362, i32* %363, align 4, !alias.scope !25
  %invar.inc.us10 = add nuw nsw i64 %fusion.5.clone.invar_address.dim.0.07.us9, 1
  %exitcond16.not = icmp eq i64 %invar.inc.us10, %7
  br i1 %exitcond16.not, label %fusion.5.clone.loop_exit.dim.0, label %fusion.5.clone.loop_body.dim.0.us8, !llvm.loop !35

fusion.5.clone.loop_body.dim.0:                   ; preds = %fusion.5.clone.loop_body.dim.0.preheader121, %fusion.5.clone.loop_body.dim.0
  %fusion.5.clone.invar_address.dim.0.07 = phi i64 [ %invar.inc, %fusion.5.clone.loop_body.dim.0 ], [ %fusion.5.clone.invar_address.dim.0.07.ph, %fusion.5.clone.loop_body.dim.0.preheader121 ]
  %364 = getelementptr inbounds [2304 x i32], [2304 x i32]* %p.11, i64 0, i64 %fusion.5.clone.invar_address.dim.0.07
  %365 = load i32, i32* %364, align 4, !alias.scope !12, !noalias !25
  %366 = getelementptr inbounds [2304 x i32], [2304 x i32]* %p.10, i64 0, i64 %fusion.5.clone.invar_address.dim.0.07
  %367 = load i32, i32* %366, align 4, !alias.scope !14, !noalias !25
  %368 = add i32 %367, %365
  %369 = shl i32 %368, 1
  %370 = shl i32 %368, %19
  %371 = select i1 %shft.chk2, i32 %370, i32 0
  %372 = lshr i32 %368, %20
  %373 = select i1 %shft.chk3, i32 %372, i32 0
  %374 = or i32 %371, %373
  %375 = xor i32 %374, %369
  %376 = add i32 %375, %369
  %377 = shl i32 %375, %25
  %378 = select i1 %shft.chk4, i32 %377, i32 0
  %379 = lshr i32 %375, %26
  %380 = select i1 %shft.chk5, i32 %379, i32 0
  %381 = or i32 %378, %380
  %382 = xor i32 %381, %376
  %383 = add i32 %376, %29
  %384 = add i32 %383, %382
  %385 = getelementptr inbounds [2304 x i32], [2304 x i32]* %5, i64 0, i64 %fusion.5.clone.invar_address.dim.0.07
  store i32 %384, i32* %385, align 4, !alias.scope !25
  %invar.inc = add nuw nsw i64 %fusion.5.clone.invar_address.dim.0.07, 1
  %exitcond17.not = icmp eq i64 %invar.inc, %7
  br i1 %exitcond17.not, label %fusion.5.clone.loop_exit.dim.0, label %fusion.5.clone.loop_body.dim.0, !llvm.loop !36

fusion.5.clone.loop_exit.dim.0:                   ; preds = %fusion.5.clone.loop_body.dim.0, %fusion.5.clone.loop_body.dim.0.us8, %fusion.5.clone.loop_body.dim.0.us, %fusion.5.clone.loop_body.dim.0.us.us, %middle.block, %middle.block33, %middle.block60, %middle.block87, %entry
  ret void
}

; Function Attrs: nounwind
declare void @__xla_cpu_runtime_ParallelForkJoin(i8*, i8*, i8**, i8**, i64*, i32, i64*, i32, i8*) local_unnamed_addr #2

; Function Attrs: nofree norecurse nounwind uwtable
define internal void @parallel_broadcast.1342(i8* nocapture readnone %retval, i8* noalias nocapture readnone %run_options, i8** noalias nocapture readnone %params, i8** noalias nocapture readonly %buffer_table, i64* noalias nocapture readonly %dynamic_loop_bounds, i64* noalias nocapture readnone %prof_counters) #1 {
entry:
  %0 = load i64, i64* %dynamic_loop_bounds, align 8
  %dynamic_loop_bound_1 = getelementptr i64, i64* %dynamic_loop_bounds, i64 1
  %1 = load i64, i64* %dynamic_loop_bound_1, align 8
  %.not7 = icmp ult i64 %0, %1
  br i1 %.not7, label %broadcast.1342.clone.loop_header.dim.1.preheader.preheader, label %broadcast.1342.clone.loop_exit.dim.0

broadcast.1342.clone.loop_header.dim.1.preheader.preheader: ; preds = %entry
  %2 = bitcast i8** %buffer_table to [32 x [64 x [64 x [16 x float]]]]**
  %3 = load [32 x [64 x [64 x [16 x float]]]]*, [32 x [64 x [64 x [16 x float]]]]** %2, align 8, !invariant.load !0, !dereferenceable !24, !align !2
  %scevgep13 = getelementptr [32 x [64 x [64 x [16 x float]]]], [32 x [64 x [64 x [16 x float]]]]* %3, i64 0, i64 %0, i64 0, i64 0, i64 0
  %scevgep1314 = bitcast float* %scevgep13 to i8*
  %4 = shl i64 %1, 18
  %.neg = mul i64 %0, -262144
  %5 = add i64 %.neg, %4
  call void @llvm.memset.p0i8.i64(i8* align 16 %scevgep1314, i8 0, i64 %5, i1 false)
  br label %broadcast.1342.clone.loop_exit.dim.0

broadcast.1342.clone.loop_exit.dim.0:             ; preds = %broadcast.1342.clone.loop_header.dim.1.preheader.preheader, %entry
  ret void
}

; Function Attrs: nofree norecurse nounwind uwtable
define internal void @parallel_reduce-window.1355(i8* nocapture readnone %retval, i8* noalias nocapture readnone %run_options, i8** noalias nocapture readnone %params, i8** noalias nocapture readonly %buffer_table, i64* noalias nocapture readonly %dynamic_loop_bounds, i64* noalias nocapture readnone %prof_counters) #1 {
entry:
  %0 = getelementptr inbounds i8*, i8** %buffer_table, i64 20
  %1 = load i8*, i8** %0, align 8, !invariant.load !0, !dereferenceable !1, !align !2
  %2 = getelementptr inbounds i8, i8* %1, i64 16777280
  %p.1 = bitcast i8* %2 to [32 x [64 x [64 x [32 x float]]]]*
  %3 = bitcast i8** %buffer_table to [32 x [63 x [63 x [32 x float]]]]**
  %4 = load [32 x [63 x [63 x [32 x float]]]]*, [32 x [63 x [63 x [32 x float]]]]** %3, align 8, !invariant.load !0, !dereferenceable !24, !align !2
  %5 = load i64, i64* %dynamic_loop_bounds, align 8
  %dynamic_loop_bound_1 = getelementptr i64, i64* %dynamic_loop_bounds, i64 1
  %6 = load i64, i64* %dynamic_loop_bound_1, align 8
  %.not20 = icmp ult i64 %5, %6
  br i1 %.not20, label %reduce-window.1355.clone.loop_header.dim.1.preheader, label %reduce-window.1355.clone.loop_exit.dim.0

reduce-window.1355.clone.loop_header.dim.1.preheader: ; preds = %entry, %reduce-window.1355.clone.loop_exit.dim.1
  %reduce-window.1355.clone.invar_address.dim.0.021 = phi i64 [ %invar.inc, %reduce-window.1355.clone.loop_exit.dim.1 ], [ %5, %entry ]
  %7 = icmp ult i64 %reduce-window.1355.clone.invar_address.dim.0.021, 32
  %broadcast.splatinsert = insertelement <8 x i1> undef, i1 %7, i32 0
  %broadcast.splat = shufflevector <8 x i1> %broadcast.splatinsert, <8 x i1> undef, <8 x i32> zeroinitializer
  br label %reduce-window.1355.clone.loop_header.dim.2.preheader

reduce-window.1355.clone.loop_header.dim.2.preheader: ; preds = %reduce-window.1355.clone.loop_header.dim.1.preheader, %reduce-window.1355.clone.loop_exit.dim.2
  %reduce-window.1355.clone.invar_address.dim.1.019 = phi i64 [ 0, %reduce-window.1355.clone.loop_header.dim.1.preheader ], [ %invar.inc1, %reduce-window.1355.clone.loop_exit.dim.2 ]
  %8 = add nuw nsw i64 %reduce-window.1355.clone.invar_address.dim.1.019, 1
  br label %reduce-window.1355.clone.loop_header.dim.3.preheader

reduce-window.1355.clone.loop_header.dim.3.preheader: ; preds = %reduce-window.1355.clone.loop_header.dim.2.preheader, %reduce-window.1355.clone.loop_header.dim.3.preheader
  %reduce-window.1355.clone.invar_address.dim.2.018 = phi i64 [ 0, %reduce-window.1355.clone.loop_header.dim.2.preheader ], [ %invar.inc2, %reduce-window.1355.clone.loop_header.dim.3.preheader ]
  %9 = add nuw nsw i64 %reduce-window.1355.clone.invar_address.dim.2.018, 1
  %10 = getelementptr inbounds [32 x [64 x [64 x [32 x float]]]], [32 x [64 x [64 x [32 x float]]]]* %p.1, i64 0, i64 %reduce-window.1355.clone.invar_address.dim.0.021, i64 %reduce-window.1355.clone.invar_address.dim.1.019, i64 %reduce-window.1355.clone.invar_address.dim.2.018, i64 0
  %11 = bitcast float* %10 to <8 x float>*
  %wide.masked.load = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* nonnull %11, i32 4, <8 x i1> %broadcast.splat, <8 x float> undef), !alias.scope !37, !noalias !39
  %12 = fcmp reassoc nsz contract ole <8 x float> %wide.masked.load, <float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000>
  %13 = select <8 x i1> %12, <8 x float> <float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000>, <8 x float> %wide.masked.load
  %14 = getelementptr inbounds [32 x [64 x [64 x [32 x float]]]], [32 x [64 x [64 x [32 x float]]]]* %p.1, i64 0, i64 %reduce-window.1355.clone.invar_address.dim.0.021, i64 %reduce-window.1355.clone.invar_address.dim.1.019, i64 %9, i64 0
  %15 = bitcast float* %14 to <8 x float>*
  %wide.masked.load64 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* nonnull %15, i32 4, <8 x i1> %broadcast.splat, <8 x float> undef), !alias.scope !37, !noalias !39
  %16 = fcmp reassoc nsz contract oge <8 x float> %13, %wide.masked.load64
  %17 = fcmp reassoc nsz contract uno <8 x float> %13, zeroinitializer
  %18 = or <8 x i1> %17, %16
  %19 = select <8 x i1> %18, <8 x float> %13, <8 x float> %wide.masked.load64
  %20 = getelementptr inbounds [32 x [64 x [64 x [32 x float]]]], [32 x [64 x [64 x [32 x float]]]]* %p.1, i64 0, i64 %reduce-window.1355.clone.invar_address.dim.0.021, i64 %8, i64 %reduce-window.1355.clone.invar_address.dim.2.018, i64 0
  %21 = bitcast float* %20 to <8 x float>*
  %wide.masked.load65 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* nonnull %21, i32 4, <8 x i1> %broadcast.splat, <8 x float> undef), !alias.scope !37, !noalias !39
  %22 = fcmp reassoc nsz contract oge <8 x float> %19, %wide.masked.load65
  %23 = fcmp reassoc nsz contract uno <8 x float> %19, zeroinitializer
  %24 = or <8 x i1> %23, %22
  %25 = select <8 x i1> %24, <8 x float> %19, <8 x float> %wide.masked.load65
  %26 = getelementptr inbounds [32 x [64 x [64 x [32 x float]]]], [32 x [64 x [64 x [32 x float]]]]* %p.1, i64 0, i64 %reduce-window.1355.clone.invar_address.dim.0.021, i64 %8, i64 %9, i64 0
  %27 = bitcast float* %26 to <8 x float>*
  %wide.masked.load66 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* nonnull %27, i32 4, <8 x i1> %broadcast.splat, <8 x float> undef), !alias.scope !37, !noalias !39
  %28 = fcmp reassoc nsz contract oge <8 x float> %25, %wide.masked.load66
  %29 = fcmp reassoc nsz contract uno <8 x float> %25, zeroinitializer
  %30 = or <8 x i1> %29, %28
  %31 = select <8 x i1> %30, <8 x float> %25, <8 x float> %wide.masked.load66
  %predphi = select <8 x i1> %broadcast.splat, <8 x float> %31, <8 x float> <float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000>
  %32 = getelementptr inbounds [32 x [63 x [63 x [32 x float]]]], [32 x [63 x [63 x [32 x float]]]]* %4, i64 0, i64 %reduce-window.1355.clone.invar_address.dim.0.021, i64 %reduce-window.1355.clone.invar_address.dim.1.019, i64 %reduce-window.1355.clone.invar_address.dim.2.018, i64 0
  %33 = bitcast float* %32 to <8 x float>*
  store <8 x float> %predphi, <8 x float>* %33, align 16, !alias.scope !39
  %34 = getelementptr inbounds [32 x [64 x [64 x [32 x float]]]], [32 x [64 x [64 x [32 x float]]]]* %p.1, i64 0, i64 %reduce-window.1355.clone.invar_address.dim.0.021, i64 %reduce-window.1355.clone.invar_address.dim.1.019, i64 %reduce-window.1355.clone.invar_address.dim.2.018, i64 8
  %35 = bitcast float* %34 to <8 x float>*
  %wide.masked.load.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* nonnull %35, i32 4, <8 x i1> %broadcast.splat, <8 x float> undef), !alias.scope !37, !noalias !39
  %36 = fcmp reassoc nsz contract ole <8 x float> %wide.masked.load.1, <float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000>
  %37 = select <8 x i1> %36, <8 x float> <float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000>, <8 x float> %wide.masked.load.1
  %38 = getelementptr inbounds [32 x [64 x [64 x [32 x float]]]], [32 x [64 x [64 x [32 x float]]]]* %p.1, i64 0, i64 %reduce-window.1355.clone.invar_address.dim.0.021, i64 %reduce-window.1355.clone.invar_address.dim.1.019, i64 %9, i64 8
  %39 = bitcast float* %38 to <8 x float>*
  %wide.masked.load64.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* nonnull %39, i32 4, <8 x i1> %broadcast.splat, <8 x float> undef), !alias.scope !37, !noalias !39
  %40 = fcmp reassoc nsz contract oge <8 x float> %37, %wide.masked.load64.1
  %41 = fcmp reassoc nsz contract uno <8 x float> %37, zeroinitializer
  %42 = or <8 x i1> %41, %40
  %43 = select <8 x i1> %42, <8 x float> %37, <8 x float> %wide.masked.load64.1
  %44 = getelementptr inbounds [32 x [64 x [64 x [32 x float]]]], [32 x [64 x [64 x [32 x float]]]]* %p.1, i64 0, i64 %reduce-window.1355.clone.invar_address.dim.0.021, i64 %8, i64 %reduce-window.1355.clone.invar_address.dim.2.018, i64 8
  %45 = bitcast float* %44 to <8 x float>*
  %wide.masked.load65.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* nonnull %45, i32 4, <8 x i1> %broadcast.splat, <8 x float> undef), !alias.scope !37, !noalias !39
  %46 = fcmp reassoc nsz contract oge <8 x float> %43, %wide.masked.load65.1
  %47 = fcmp reassoc nsz contract uno <8 x float> %43, zeroinitializer
  %48 = or <8 x i1> %47, %46
  %49 = select <8 x i1> %48, <8 x float> %43, <8 x float> %wide.masked.load65.1
  %50 = getelementptr inbounds [32 x [64 x [64 x [32 x float]]]], [32 x [64 x [64 x [32 x float]]]]* %p.1, i64 0, i64 %reduce-window.1355.clone.invar_address.dim.0.021, i64 %8, i64 %9, i64 8
  %51 = bitcast float* %50 to <8 x float>*
  %wide.masked.load66.1 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* nonnull %51, i32 4, <8 x i1> %broadcast.splat, <8 x float> undef), !alias.scope !37, !noalias !39
  %52 = fcmp reassoc nsz contract oge <8 x float> %49, %wide.masked.load66.1
  %53 = fcmp reassoc nsz contract uno <8 x float> %49, zeroinitializer
  %54 = or <8 x i1> %53, %52
  %55 = select <8 x i1> %54, <8 x float> %49, <8 x float> %wide.masked.load66.1
  %predphi.1 = select <8 x i1> %broadcast.splat, <8 x float> %55, <8 x float> <float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000>
  %56 = getelementptr inbounds [32 x [63 x [63 x [32 x float]]]], [32 x [63 x [63 x [32 x float]]]]* %4, i64 0, i64 %reduce-window.1355.clone.invar_address.dim.0.021, i64 %reduce-window.1355.clone.invar_address.dim.1.019, i64 %reduce-window.1355.clone.invar_address.dim.2.018, i64 8
  %57 = bitcast float* %56 to <8 x float>*
  store <8 x float> %predphi.1, <8 x float>* %57, align 16, !alias.scope !39
  %58 = getelementptr inbounds [32 x [64 x [64 x [32 x float]]]], [32 x [64 x [64 x [32 x float]]]]* %p.1, i64 0, i64 %reduce-window.1355.clone.invar_address.dim.0.021, i64 %reduce-window.1355.clone.invar_address.dim.1.019, i64 %reduce-window.1355.clone.invar_address.dim.2.018, i64 16
  %59 = bitcast float* %58 to <8 x float>*
  %wide.masked.load.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* nonnull %59, i32 4, <8 x i1> %broadcast.splat, <8 x float> undef), !alias.scope !37, !noalias !39
  %60 = fcmp reassoc nsz contract ole <8 x float> %wide.masked.load.2, <float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000>
  %61 = select <8 x i1> %60, <8 x float> <float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000>, <8 x float> %wide.masked.load.2
  %62 = getelementptr inbounds [32 x [64 x [64 x [32 x float]]]], [32 x [64 x [64 x [32 x float]]]]* %p.1, i64 0, i64 %reduce-window.1355.clone.invar_address.dim.0.021, i64 %reduce-window.1355.clone.invar_address.dim.1.019, i64 %9, i64 16
  %63 = bitcast float* %62 to <8 x float>*
  %wide.masked.load64.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* nonnull %63, i32 4, <8 x i1> %broadcast.splat, <8 x float> undef), !alias.scope !37, !noalias !39
  %64 = fcmp reassoc nsz contract oge <8 x float> %61, %wide.masked.load64.2
  %65 = fcmp reassoc nsz contract uno <8 x float> %61, zeroinitializer
  %66 = or <8 x i1> %65, %64
  %67 = select <8 x i1> %66, <8 x float> %61, <8 x float> %wide.masked.load64.2
  %68 = getelementptr inbounds [32 x [64 x [64 x [32 x float]]]], [32 x [64 x [64 x [32 x float]]]]* %p.1, i64 0, i64 %reduce-window.1355.clone.invar_address.dim.0.021, i64 %8, i64 %reduce-window.1355.clone.invar_address.dim.2.018, i64 16
  %69 = bitcast float* %68 to <8 x float>*
  %wide.masked.load65.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* nonnull %69, i32 4, <8 x i1> %broadcast.splat, <8 x float> undef), !alias.scope !37, !noalias !39
  %70 = fcmp reassoc nsz contract oge <8 x float> %67, %wide.masked.load65.2
  %71 = fcmp reassoc nsz contract uno <8 x float> %67, zeroinitializer
  %72 = or <8 x i1> %71, %70
  %73 = select <8 x i1> %72, <8 x float> %67, <8 x float> %wide.masked.load65.2
  %74 = getelementptr inbounds [32 x [64 x [64 x [32 x float]]]], [32 x [64 x [64 x [32 x float]]]]* %p.1, i64 0, i64 %reduce-window.1355.clone.invar_address.dim.0.021, i64 %8, i64 %9, i64 16
  %75 = bitcast float* %74 to <8 x float>*
  %wide.masked.load66.2 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* nonnull %75, i32 4, <8 x i1> %broadcast.splat, <8 x float> undef), !alias.scope !37, !noalias !39
  %76 = fcmp reassoc nsz contract oge <8 x float> %73, %wide.masked.load66.2
  %77 = fcmp reassoc nsz contract uno <8 x float> %73, zeroinitializer
  %78 = or <8 x i1> %77, %76
  %79 = select <8 x i1> %78, <8 x float> %73, <8 x float> %wide.masked.load66.2
  %predphi.2 = select <8 x i1> %broadcast.splat, <8 x float> %79, <8 x float> <float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000>
  %80 = getelementptr inbounds [32 x [63 x [63 x [32 x float]]]], [32 x [63 x [63 x [32 x float]]]]* %4, i64 0, i64 %reduce-window.1355.clone.invar_address.dim.0.021, i64 %reduce-window.1355.clone.invar_address.dim.1.019, i64 %reduce-window.1355.clone.invar_address.dim.2.018, i64 16
  %81 = bitcast float* %80 to <8 x float>*
  store <8 x float> %predphi.2, <8 x float>* %81, align 16, !alias.scope !39
  %82 = getelementptr inbounds [32 x [64 x [64 x [32 x float]]]], [32 x [64 x [64 x [32 x float]]]]* %p.1, i64 0, i64 %reduce-window.1355.clone.invar_address.dim.0.021, i64 %reduce-window.1355.clone.invar_address.dim.1.019, i64 %reduce-window.1355.clone.invar_address.dim.2.018, i64 24
  %83 = bitcast float* %82 to <8 x float>*
  %wide.masked.load.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* nonnull %83, i32 4, <8 x i1> %broadcast.splat, <8 x float> undef), !alias.scope !37, !noalias !39
  %84 = fcmp reassoc nsz contract ole <8 x float> %wide.masked.load.3, <float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000>
  %85 = select <8 x i1> %84, <8 x float> <float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000>, <8 x float> %wide.masked.load.3
  %86 = getelementptr inbounds [32 x [64 x [64 x [32 x float]]]], [32 x [64 x [64 x [32 x float]]]]* %p.1, i64 0, i64 %reduce-window.1355.clone.invar_address.dim.0.021, i64 %reduce-window.1355.clone.invar_address.dim.1.019, i64 %9, i64 24
  %87 = bitcast float* %86 to <8 x float>*
  %wide.masked.load64.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* nonnull %87, i32 4, <8 x i1> %broadcast.splat, <8 x float> undef), !alias.scope !37, !noalias !39
  %88 = fcmp reassoc nsz contract oge <8 x float> %85, %wide.masked.load64.3
  %89 = fcmp reassoc nsz contract uno <8 x float> %85, zeroinitializer
  %90 = or <8 x i1> %89, %88
  %91 = select <8 x i1> %90, <8 x float> %85, <8 x float> %wide.masked.load64.3
  %92 = getelementptr inbounds [32 x [64 x [64 x [32 x float]]]], [32 x [64 x [64 x [32 x float]]]]* %p.1, i64 0, i64 %reduce-window.1355.clone.invar_address.dim.0.021, i64 %8, i64 %reduce-window.1355.clone.invar_address.dim.2.018, i64 24
  %93 = bitcast float* %92 to <8 x float>*
  %wide.masked.load65.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* nonnull %93, i32 4, <8 x i1> %broadcast.splat, <8 x float> undef), !alias.scope !37, !noalias !39
  %94 = fcmp reassoc nsz contract oge <8 x float> %91, %wide.masked.load65.3
  %95 = fcmp reassoc nsz contract uno <8 x float> %91, zeroinitializer
  %96 = or <8 x i1> %95, %94
  %97 = select <8 x i1> %96, <8 x float> %91, <8 x float> %wide.masked.load65.3
  %98 = getelementptr inbounds [32 x [64 x [64 x [32 x float]]]], [32 x [64 x [64 x [32 x float]]]]* %p.1, i64 0, i64 %reduce-window.1355.clone.invar_address.dim.0.021, i64 %8, i64 %9, i64 24
  %99 = bitcast float* %98 to <8 x float>*
  %wide.masked.load66.3 = call <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>* nonnull %99, i32 4, <8 x i1> %broadcast.splat, <8 x float> undef), !alias.scope !37, !noalias !39
  %100 = fcmp reassoc nsz contract oge <8 x float> %97, %wide.masked.load66.3
  %101 = fcmp reassoc nsz contract uno <8 x float> %97, zeroinitializer
  %102 = or <8 x i1> %101, %100
  %103 = select <8 x i1> %102, <8 x float> %97, <8 x float> %wide.masked.load66.3
  %predphi.3 = select <8 x i1> %broadcast.splat, <8 x float> %103, <8 x float> <float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000, float 0xFFF0000000000000>
  %104 = getelementptr inbounds [32 x [63 x [63 x [32 x float]]]], [32 x [63 x [63 x [32 x float]]]]* %4, i64 0, i64 %reduce-window.1355.clone.invar_address.dim.0.021, i64 %reduce-window.1355.clone.invar_address.dim.1.019, i64 %reduce-window.1355.clone.invar_address.dim.2.018, i64 24
  %105 = bitcast float* %104 to <8 x float>*
  store <8 x float> %predphi.3, <8 x float>* %105, align 16, !alias.scope !39
  %invar.inc2 = add nuw nsw i64 %reduce-window.1355.clone.invar_address.dim.2.018, 1
  %exitcond61 = icmp eq i64 %invar.inc2, 63
  br i1 %exitcond61, label %reduce-window.1355.clone.loop_exit.dim.2, label %reduce-window.1355.clone.loop_header.dim.3.preheader

reduce-window.1355.clone.loop_exit.dim.2:         ; preds = %reduce-window.1355.clone.loop_header.dim.3.preheader
  %invar.inc1 = add nuw nsw i64 %reduce-window.1355.clone.invar_address.dim.1.019, 1
  %exitcond62 = icmp eq i64 %invar.inc1, 63
  br i1 %exitcond62, label %reduce-window.1355.clone.loop_exit.dim.1, label %reduce-window.1355.clone.loop_header.dim.2.preheader

reduce-window.1355.clone.loop_exit.dim.1:         ; preds = %reduce-window.1355.clone.loop_exit.dim.2
  %invar.inc = add nuw nsw i64 %reduce-window.1355.clone.invar_address.dim.0.021, 1
  %exitcond63.not = icmp eq i64 %invar.inc, %6
  br i1 %exitcond63.not, label %reduce-window.1355.clone.loop_exit.dim.0, label %reduce-window.1355.clone.loop_header.dim.1.preheader

reduce-window.1355.clone.loop_exit.dim.0:         ; preds = %reduce-window.1355.clone.loop_exit.dim.1, %entry
  ret void
}

; Function Attrs: nofree nounwind uwtable
define internal void @parallel_fusion.8(i8* nocapture readnone %retval, i8* noalias nocapture readnone %run_options, i8** noalias nocapture readnone %params, i8** noalias nocapture readonly %buffer_table, i64* noalias nocapture readonly %dynamic_loop_bounds, i64* noalias nocapture readnone %prof_counters) #3 {
entry:
  %0 = getelementptr inbounds i8*, i8** %buffer_table, i64 20
  %1 = load i8*, i8** %0, align 8, !invariant.load !0, !dereferenceable !1, !align !2
  %2 = getelementptr inbounds i8, i8* %1, i64 64
  %p.12 = bitcast i8* %2 to [32 x [64 x [64 x [32 x float]]]]*
  %3 = getelementptr inbounds i8, i8* %1, i64 33554496
  %4 = getelementptr inbounds i8, i8* %1, i64 33554624
  %5 = getelementptr inbounds i8, i8* %1, i64 33554816
  %p.15 = bitcast i8* %5 to [16 x i32]*
  %6 = getelementptr inbounds i8, i8* %1, i64 33554752
  %p.16 = bitcast i8* %6 to [16 x i32]*
  %7 = getelementptr inbounds i8, i8* %1, i64 16777280
  %fusion.8.clone = bitcast i8* %7 to [32 x [64 x [64 x [32 x float]]]]*
  %8 = load i64, i64* %dynamic_loop_bounds, align 8
  %dynamic_loop_bound_1 = getelementptr i64, i64* %dynamic_loop_bounds, i64 1
  %9 = load i64, i64* %dynamic_loop_bound_1, align 8
  %.not7 = icmp ult i64 %8, %9
  br i1 %.not7, label %fusion.8.clone.loop_header.dim.1.preheader.preheader, label %fusion.8.clone.loop_exit.dim.0

fusion.8.clone.loop_header.dim.1.preheader.preheader: ; preds = %entry
  %10 = getelementptr inbounds [16 x i32], [16 x i32]* %p.15, i64 0, <8 x i64> <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %11 = bitcast i8* %4 to <8 x float>*
  %wide.load12 = load <8 x float>, <8 x float>* %11, align 16, !alias.scope !41, !noalias !37
  %12 = fcmp reassoc nsz contract ogt <8 x float> %wide.load12, <float -5.000000e+00, float -5.000000e+00, float -5.000000e+00, float -5.000000e+00, float -5.000000e+00, float -5.000000e+00, float -5.000000e+00, float -5.000000e+00>
  %13 = select <8 x i1> %12, <8 x float> <float 0x3FF805C5E0000000, float 0x3FF805C5E0000000, float 0x3FF805C5E0000000, float 0x3FF805C5E0000000, float 0x3FF805C5E0000000, float 0x3FF805C5E0000000, float 0x3FF805C5E0000000, float 0x3FF805C5E0000000>, <8 x float> <float 0x4006A9EFC0000000, float 0x4006A9EFC0000000, float 0x4006A9EFC0000000, float 0x4006A9EFC0000000, float 0x4006A9EFC0000000, float 0x4006A9EFC0000000, float 0x4006A9EFC0000000, float 0x4006A9EFC0000000>
  %14 = select <8 x i1> %12, <8 x float> <float 0x3FCF91EC60000000, float 0x3FCF91EC60000000, float 0x3FCF91EC60000000, float 0x3FCF91EC60000000, float 0x3FCF91EC60000000, float 0x3FCF91EC60000000, float 0x3FCF91EC60000000, float 0x3FCF91EC60000000>, <8 x float> <float 0x3FF006DB60000000, float 0x3FF006DB60000000, float 0x3FF006DB60000000, float 0x3FF006DB60000000, float 0x3FF006DB60000000, float 0x3FF006DB60000000, float 0x3FF006DB60000000, float 0x3FF006DB60000000>
  %15 = select <8 x i1> %12, <8 x float> <float 0xBF711C9DE0000000, float 0xBF711C9DE0000000, float 0xBF711C9DE0000000, float 0xBF711C9DE0000000, float 0xBF711C9DE0000000, float 0xBF711C9DE0000000, float 0xBF711C9DE0000000, float 0xBF711C9DE0000000>, <8 x float> <float 0x3F8354AFC0000000, float 0x3F8354AFC0000000, float 0x3F8354AFC0000000, float 0x3F8354AFC0000000, float 0x3F8354AFC0000000, float 0x3F8354AFC0000000, float 0x3F8354AFC0000000, float 0x3F8354AFC0000000>
  %16 = select <8 x i1> %12, <8 x float> <float 0xBF548A8100000000, float 0xBF548A8100000000, float 0xBF548A8100000000, float 0xBF548A8100000000, float 0xBF548A8100000000, float 0xBF548A8100000000, float 0xBF548A8100000000, float 0xBF548A8100000000>, <8 x float> <float 0xBF7F38BAE0000000, float 0xBF7F38BAE0000000, float 0xBF7F38BAE0000000, float 0xBF7F38BAE0000000, float 0xBF7F38BAE0000000, float 0xBF7F38BAE0000000, float 0xBF7F38BAE0000000, float 0xBF7F38BAE0000000>
  %17 = select <8 x i1> %12, <8 x float> <float 0x3F2CA65B60000000, float 0x3F2CA65B60000000, float 0x3F2CA65B60000000, float 0x3F2CA65B60000000, float 0x3F2CA65B60000000, float 0x3F2CA65B60000000, float 0x3F2CA65B60000000, float 0x3F2CA65B60000000>, <8 x float> <float 0x3F77824F60000000, float 0x3F77824F60000000, float 0x3F77824F60000000, float 0x3F77824F60000000, float 0x3F77824F60000000, float 0x3F77824F60000000, float 0x3F77824F60000000, float 0x3F77824F60000000>
  %18 = select <8 x i1> %12, <8 x float> <float 0xBED26B5820000000, float 0xBED26B5820000000, float 0xBED26B5820000000, float 0xBED26B5820000000, float 0xBED26B5820000000, float 0xBED26B5820000000, float 0xBED26B5820000000, float 0xBED26B5820000000>, <8 x float> <float 0xBF6E17BCE0000000, float 0xBF6E17BCE0000000, float 0xBF6E17BCE0000000, float 0xBF6E17BCE0000000, float 0xBF6E17BCE0000000, float 0xBF6E17BCE0000000, float 0xBF6E17BCE0000000, float 0xBF6E17BCE0000000>
  %19 = select <8 x i1> %12, <8 x float> <float 0xBECD8E6AE0000000, float 0xBECD8E6AE0000000, float 0xBECD8E6AE0000000, float 0xBECD8E6AE0000000, float 0xBECD8E6AE0000000, float 0xBECD8E6AE0000000, float 0xBECD8E6AE0000000, float 0xBECD8E6AE0000000>, <8 x float> <float 0x3F561B8E40000000, float 0x3F561B8E40000000, float 0x3F561B8E40000000, float 0x3F561B8E40000000, float 0x3F561B8E40000000, float 0x3F561B8E40000000, float 0x3F561B8E40000000, float 0x3F561B8E40000000>
  %20 = select <8 x i1> %12, <8 x float> <float 0x3E970966C0000000, float 0x3E970966C0000000, float 0x3E970966C0000000, float 0x3E970966C0000000, float 0x3E970966C0000000, float 0x3E970966C0000000, float 0x3E970966C0000000, float 0x3E970966C0000000>, <8 x float> <float 0x3F1A76AD60000000, float 0x3F1A76AD60000000, float 0x3F1A76AD60000000, float 0x3F1A76AD60000000, float 0x3F1A76AD60000000, float 0x3F1A76AD60000000, float 0x3F1A76AD60000000, float 0x3F1A76AD60000000>
  %21 = select <8 x i1> %12, <8 x float> <float 0x3E5E2CB100000000, float 0x3E5E2CB100000000, float 0x3E5E2CB100000000, float 0x3E5E2CB100000000, float 0x3E5E2CB100000000, float 0x3E5E2CB100000000, float 0x3E5E2CB100000000, float 0x3E5E2CB100000000>, <8 x float> <float 0xBF2A3E1360000000, float 0xBF2A3E1360000000, float 0xBF2A3E1360000000, float 0xBF2A3E1360000000, float 0xBF2A3E1360000000, float 0xBF2A3E1360000000, float 0xBF2A3E1360000000, float 0xBF2A3E1360000000>
  %22 = fsub reassoc nsz contract <8 x float> <float -2.500000e+00, float -2.500000e+00, float -2.500000e+00, float -2.500000e+00, float -2.500000e+00, float -2.500000e+00, float -2.500000e+00, float -2.500000e+00>, %wide.load12
  %23 = bitcast i8* %3 to <8 x float>*
  %wide.load13 = load <8 x float>, <8 x float>* %23, align 16, !alias.scope !43, !noalias !37
  %24 = fadd reassoc nsz contract <8 x float> %wide.load13, <float -3.000000e+00, float -3.000000e+00, float -3.000000e+00, float -3.000000e+00, float -3.000000e+00, float -3.000000e+00, float -3.000000e+00, float -3.000000e+00>
  %25 = select <8 x i1> %12, <8 x float> %22, <8 x float> %24
  %26 = fmul reassoc nsz contract <8 x float> %21, %25
  %27 = fadd reassoc nsz contract <8 x float> %20, %26
  %28 = fmul reassoc nsz contract <8 x float> %25, %27
  %29 = fadd reassoc nsz contract <8 x float> %19, %28
  %30 = fmul reassoc nsz contract <8 x float> %25, %29
  %31 = fadd reassoc nsz contract <8 x float> %18, %30
  %32 = fmul reassoc nsz contract <8 x float> %25, %31
  %33 = fadd reassoc nsz contract <8 x float> %17, %32
  %34 = fmul reassoc nsz contract <8 x float> %25, %33
  %35 = fadd reassoc nsz contract <8 x float> %16, %34
  %36 = fmul reassoc nsz contract <8 x float> %25, %35
  %37 = fadd reassoc nsz contract <8 x float> %15, %36
  %38 = fmul reassoc nsz contract <8 x float> %25, %37
  %39 = fadd reassoc nsz contract <8 x float> %14, %38
  %40 = fmul reassoc nsz contract <8 x float> %25, %39
  %41 = fadd reassoc nsz contract <8 x float> %13, %40
  %42 = getelementptr inbounds [16 x i32], [16 x i32]* %p.15, i64 0, <8 x i64> <i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>
  %43 = getelementptr inbounds i8, i8* %1, i64 33554656
  %44 = bitcast i8* %43 to <8 x float>*
  %wide.load12.1 = load <8 x float>, <8 x float>* %44, align 16, !alias.scope !41, !noalias !37
  %45 = fcmp reassoc nsz contract ogt <8 x float> %wide.load12.1, <float -5.000000e+00, float -5.000000e+00, float -5.000000e+00, float -5.000000e+00, float -5.000000e+00, float -5.000000e+00, float -5.000000e+00, float -5.000000e+00>
  %46 = select <8 x i1> %45, <8 x float> <float 0x3FF805C5E0000000, float 0x3FF805C5E0000000, float 0x3FF805C5E0000000, float 0x3FF805C5E0000000, float 0x3FF805C5E0000000, float 0x3FF805C5E0000000, float 0x3FF805C5E0000000, float 0x3FF805C5E0000000>, <8 x float> <float 0x4006A9EFC0000000, float 0x4006A9EFC0000000, float 0x4006A9EFC0000000, float 0x4006A9EFC0000000, float 0x4006A9EFC0000000, float 0x4006A9EFC0000000, float 0x4006A9EFC0000000, float 0x4006A9EFC0000000>
  %47 = select <8 x i1> %45, <8 x float> <float 0x3FCF91EC60000000, float 0x3FCF91EC60000000, float 0x3FCF91EC60000000, float 0x3FCF91EC60000000, float 0x3FCF91EC60000000, float 0x3FCF91EC60000000, float 0x3FCF91EC60000000, float 0x3FCF91EC60000000>, <8 x float> <float 0x3FF006DB60000000, float 0x3FF006DB60000000, float 0x3FF006DB60000000, float 0x3FF006DB60000000, float 0x3FF006DB60000000, float 0x3FF006DB60000000, float 0x3FF006DB60000000, float 0x3FF006DB60000000>
  %48 = select <8 x i1> %45, <8 x float> <float 0xBF711C9DE0000000, float 0xBF711C9DE0000000, float 0xBF711C9DE0000000, float 0xBF711C9DE0000000, float 0xBF711C9DE0000000, float 0xBF711C9DE0000000, float 0xBF711C9DE0000000, float 0xBF711C9DE0000000>, <8 x float> <float 0x3F8354AFC0000000, float 0x3F8354AFC0000000, float 0x3F8354AFC0000000, float 0x3F8354AFC0000000, float 0x3F8354AFC0000000, float 0x3F8354AFC0000000, float 0x3F8354AFC0000000, float 0x3F8354AFC0000000>
  %49 = select <8 x i1> %45, <8 x float> <float 0xBF548A8100000000, float 0xBF548A8100000000, float 0xBF548A8100000000, float 0xBF548A8100000000, float 0xBF548A8100000000, float 0xBF548A8100000000, float 0xBF548A8100000000, float 0xBF548A8100000000>, <8 x float> <float 0xBF7F38BAE0000000, float 0xBF7F38BAE0000000, float 0xBF7F38BAE0000000, float 0xBF7F38BAE0000000, float 0xBF7F38BAE0000000, float 0xBF7F38BAE0000000, float 0xBF7F38BAE0000000, float 0xBF7F38BAE0000000>
  %50 = select <8 x i1> %45, <8 x float> <float 0x3F2CA65B60000000, float 0x3F2CA65B60000000, float 0x3F2CA65B60000000, float 0x3F2CA65B60000000, float 0x3F2CA65B60000000, float 0x3F2CA65B60000000, float 0x3F2CA65B60000000, float 0x3F2CA65B60000000>, <8 x float> <float 0x3F77824F60000000, float 0x3F77824F60000000, float 0x3F77824F60000000, float 0x3F77824F60000000, float 0x3F77824F60000000, float 0x3F77824F60000000, float 0x3F77824F60000000, float 0x3F77824F60000000>
  %51 = select <8 x i1> %45, <8 x float> <float 0xBED26B5820000000, float 0xBED26B5820000000, float 0xBED26B5820000000, float 0xBED26B5820000000, float 0xBED26B5820000000, float 0xBED26B5820000000, float 0xBED26B5820000000, float 0xBED26B5820000000>, <8 x float> <float 0xBF6E17BCE0000000, float 0xBF6E17BCE0000000, float 0xBF6E17BCE0000000, float 0xBF6E17BCE0000000, float 0xBF6E17BCE0000000, float 0xBF6E17BCE0000000, float 0xBF6E17BCE0000000, float 0xBF6E17BCE0000000>
  %52 = select <8 x i1> %45, <8 x float> <float 0xBECD8E6AE0000000, float 0xBECD8E6AE0000000, float 0xBECD8E6AE0000000, float 0xBECD8E6AE0000000, float 0xBECD8E6AE0000000, float 0xBECD8E6AE0000000, float 0xBECD8E6AE0000000, float 0xBECD8E6AE0000000>, <8 x float> <float 0x3F561B8E40000000, float 0x3F561B8E40000000, float 0x3F561B8E40000000, float 0x3F561B8E40000000, float 0x3F561B8E40000000, float 0x3F561B8E40000000, float 0x3F561B8E40000000, float 0x3F561B8E40000000>
  %53 = select <8 x i1> %45, <8 x float> <float 0x3E970966C0000000, float 0x3E970966C0000000, float 0x3E970966C0000000, float 0x3E970966C0000000, float 0x3E970966C0000000, float 0x3E970966C0000000, float 0x3E970966C0000000, float 0x3E970966C0000000>, <8 x float> <float 0x3F1A76AD60000000, float 0x3F1A76AD60000000, float 0x3F1A76AD60000000, float 0x3F1A76AD60000000, float 0x3F1A76AD60000000, float 0x3F1A76AD60000000, float 0x3F1A76AD60000000, float 0x3F1A76AD60000000>
  %54 = select <8 x i1> %45, <8 x float> <float 0x3E5E2CB100000000, float 0x3E5E2CB100000000, float 0x3E5E2CB100000000, float 0x3E5E2CB100000000, float 0x3E5E2CB100000000, float 0x3E5E2CB100000000, float 0x3E5E2CB100000000, float 0x3E5E2CB100000000>, <8 x float> <float 0xBF2A3E1360000000, float 0xBF2A3E1360000000, float 0xBF2A3E1360000000, float 0xBF2A3E1360000000, float 0xBF2A3E1360000000, float 0xBF2A3E1360000000, float 0xBF2A3E1360000000, float 0xBF2A3E1360000000>
  %55 = fsub reassoc nsz contract <8 x float> <float -2.500000e+00, float -2.500000e+00, float -2.500000e+00, float -2.500000e+00, float -2.500000e+00, float -2.500000e+00, float -2.500000e+00, float -2.500000e+00>, %wide.load12.1
  %56 = getelementptr inbounds i8, i8* %1, i64 33554528
  %57 = bitcast i8* %56 to <8 x float>*
  %wide.load13.1 = load <8 x float>, <8 x float>* %57, align 16, !alias.scope !43, !noalias !37
  %58 = fadd reassoc nsz contract <8 x float> %wide.load13.1, <float -3.000000e+00, float -3.000000e+00, float -3.000000e+00, float -3.000000e+00, float -3.000000e+00, float -3.000000e+00, float -3.000000e+00, float -3.000000e+00>
  %59 = select <8 x i1> %45, <8 x float> %55, <8 x float> %58
  %60 = fmul reassoc nsz contract <8 x float> %54, %59
  %61 = fadd reassoc nsz contract <8 x float> %53, %60
  %62 = fmul reassoc nsz contract <8 x float> %59, %61
  %63 = fadd reassoc nsz contract <8 x float> %52, %62
  %64 = fmul reassoc nsz contract <8 x float> %59, %63
  %65 = fadd reassoc nsz contract <8 x float> %51, %64
  %66 = fmul reassoc nsz contract <8 x float> %59, %65
  %67 = fadd reassoc nsz contract <8 x float> %50, %66
  %68 = fmul reassoc nsz contract <8 x float> %59, %67
  %69 = fadd reassoc nsz contract <8 x float> %49, %68
  %70 = fmul reassoc nsz contract <8 x float> %59, %69
  %71 = fadd reassoc nsz contract <8 x float> %48, %70
  %72 = fmul reassoc nsz contract <8 x float> %59, %71
  %73 = fadd reassoc nsz contract <8 x float> %47, %72
  %74 = fmul reassoc nsz contract <8 x float> %59, %73
  %75 = fadd reassoc nsz contract <8 x float> %46, %74
  %76 = getelementptr inbounds [16 x i32], [16 x i32]* %p.16, i64 0, <8 x i64> <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %77 = getelementptr inbounds i8, i8* %1, i64 33554688
  %78 = bitcast i8* %77 to <8 x float>*
  %wide.load12.2 = load <8 x float>, <8 x float>* %78, align 16, !alias.scope !41, !noalias !37
  %79 = fcmp reassoc nsz contract ogt <8 x float> %wide.load12.2, <float -5.000000e+00, float -5.000000e+00, float -5.000000e+00, float -5.000000e+00, float -5.000000e+00, float -5.000000e+00, float -5.000000e+00, float -5.000000e+00>
  %80 = select <8 x i1> %79, <8 x float> <float 0x3FF805C5E0000000, float 0x3FF805C5E0000000, float 0x3FF805C5E0000000, float 0x3FF805C5E0000000, float 0x3FF805C5E0000000, float 0x3FF805C5E0000000, float 0x3FF805C5E0000000, float 0x3FF805C5E0000000>, <8 x float> <float 0x4006A9EFC0000000, float 0x4006A9EFC0000000, float 0x4006A9EFC0000000, float 0x4006A9EFC0000000, float 0x4006A9EFC0000000, float 0x4006A9EFC0000000, float 0x4006A9EFC0000000, float 0x4006A9EFC0000000>
  %81 = select <8 x i1> %79, <8 x float> <float 0x3FCF91EC60000000, float 0x3FCF91EC60000000, float 0x3FCF91EC60000000, float 0x3FCF91EC60000000, float 0x3FCF91EC60000000, float 0x3FCF91EC60000000, float 0x3FCF91EC60000000, float 0x3FCF91EC60000000>, <8 x float> <float 0x3FF006DB60000000, float 0x3FF006DB60000000, float 0x3FF006DB60000000, float 0x3FF006DB60000000, float 0x3FF006DB60000000, float 0x3FF006DB60000000, float 0x3FF006DB60000000, float 0x3FF006DB60000000>
  %82 = select <8 x i1> %79, <8 x float> <float 0xBF711C9DE0000000, float 0xBF711C9DE0000000, float 0xBF711C9DE0000000, float 0xBF711C9DE0000000, float 0xBF711C9DE0000000, float 0xBF711C9DE0000000, float 0xBF711C9DE0000000, float 0xBF711C9DE0000000>, <8 x float> <float 0x3F8354AFC0000000, float 0x3F8354AFC0000000, float 0x3F8354AFC0000000, float 0x3F8354AFC0000000, float 0x3F8354AFC0000000, float 0x3F8354AFC0000000, float 0x3F8354AFC0000000, float 0x3F8354AFC0000000>
  %83 = select <8 x i1> %79, <8 x float> <float 0xBF548A8100000000, float 0xBF548A8100000000, float 0xBF548A8100000000, float 0xBF548A8100000000, float 0xBF548A8100000000, float 0xBF548A8100000000, float 0xBF548A8100000000, float 0xBF548A8100000000>, <8 x float> <float 0xBF7F38BAE0000000, float 0xBF7F38BAE0000000, float 0xBF7F38BAE0000000, float 0xBF7F38BAE0000000, float 0xBF7F38BAE0000000, float 0xBF7F38BAE0000000, float 0xBF7F38BAE0000000, float 0xBF7F38BAE0000000>
  %84 = select <8 x i1> %79, <8 x float> <float 0x3F2CA65B60000000, float 0x3F2CA65B60000000, float 0x3F2CA65B60000000, float 0x3F2CA65B60000000, float 0x3F2CA65B60000000, float 0x3F2CA65B60000000, float 0x3F2CA65B60000000, float 0x3F2CA65B60000000>, <8 x float> <float 0x3F77824F60000000, float 0x3F77824F60000000, float 0x3F77824F60000000, float 0x3F77824F60000000, float 0x3F77824F60000000, float 0x3F77824F60000000, float 0x3F77824F60000000, float 0x3F77824F60000000>
  %85 = select <8 x i1> %79, <8 x float> <float 0xBED26B5820000000, float 0xBED26B5820000000, float 0xBED26B5820000000, float 0xBED26B5820000000, float 0xBED26B5820000000, float 0xBED26B5820000000, float 0xBED26B5820000000, float 0xBED26B5820000000>, <8 x float> <float 0xBF6E17BCE0000000, float 0xBF6E17BCE0000000, float 0xBF6E17BCE0000000, float 0xBF6E17BCE0000000, float 0xBF6E17BCE0000000, float 0xBF6E17BCE0000000, float 0xBF6E17BCE0000000, float 0xBF6E17BCE0000000>
  %86 = select <8 x i1> %79, <8 x float> <float 0xBECD8E6AE0000000, float 0xBECD8E6AE0000000, float 0xBECD8E6AE0000000, float 0xBECD8E6AE0000000, float 0xBECD8E6AE0000000, float 0xBECD8E6AE0000000, float 0xBECD8E6AE0000000, float 0xBECD8E6AE0000000>, <8 x float> <float 0x3F561B8E40000000, float 0x3F561B8E40000000, float 0x3F561B8E40000000, float 0x3F561B8E40000000, float 0x3F561B8E40000000, float 0x3F561B8E40000000, float 0x3F561B8E40000000, float 0x3F561B8E40000000>
  %87 = select <8 x i1> %79, <8 x float> <float 0x3E970966C0000000, float 0x3E970966C0000000, float 0x3E970966C0000000, float 0x3E970966C0000000, float 0x3E970966C0000000, float 0x3E970966C0000000, float 0x3E970966C0000000, float 0x3E970966C0000000>, <8 x float> <float 0x3F1A76AD60000000, float 0x3F1A76AD60000000, float 0x3F1A76AD60000000, float 0x3F1A76AD60000000, float 0x3F1A76AD60000000, float 0x3F1A76AD60000000, float 0x3F1A76AD60000000, float 0x3F1A76AD60000000>
  %88 = select <8 x i1> %79, <8 x float> <float 0x3E5E2CB100000000, float 0x3E5E2CB100000000, float 0x3E5E2CB100000000, float 0x3E5E2CB100000000, float 0x3E5E2CB100000000, float 0x3E5E2CB100000000, float 0x3E5E2CB100000000, float 0x3E5E2CB100000000>, <8 x float> <float 0xBF2A3E1360000000, float 0xBF2A3E1360000000, float 0xBF2A3E1360000000, float 0xBF2A3E1360000000, float 0xBF2A3E1360000000, float 0xBF2A3E1360000000, float 0xBF2A3E1360000000, float 0xBF2A3E1360000000>
  %89 = fsub reassoc nsz contract <8 x float> <float -2.500000e+00, float -2.500000e+00, float -2.500000e+00, float -2.500000e+00, float -2.500000e+00, float -2.500000e+00, float -2.500000e+00, float -2.500000e+00>, %wide.load12.2
  %90 = getelementptr inbounds i8, i8* %1, i64 33554560
  %91 = bitcast i8* %90 to <8 x float>*
  %wide.load13.2 = load <8 x float>, <8 x float>* %91, align 16, !alias.scope !43, !noalias !37
  %92 = fadd reassoc nsz contract <8 x float> %wide.load13.2, <float -3.000000e+00, float -3.000000e+00, float -3.000000e+00, float -3.000000e+00, float -3.000000e+00, float -3.000000e+00, float -3.000000e+00, float -3.000000e+00>
  %93 = select <8 x i1> %79, <8 x float> %89, <8 x float> %92
  %94 = fmul reassoc nsz contract <8 x float> %88, %93
  %95 = fadd reassoc nsz contract <8 x float> %87, %94
  %96 = fmul reassoc nsz contract <8 x float> %93, %95
  %97 = fadd reassoc nsz contract <8 x float> %86, %96
  %98 = fmul reassoc nsz contract <8 x float> %93, %97
  %99 = fadd reassoc nsz contract <8 x float> %85, %98
  %100 = fmul reassoc nsz contract <8 x float> %93, %99
  %101 = fadd reassoc nsz contract <8 x float> %84, %100
  %102 = fmul reassoc nsz contract <8 x float> %93, %101
  %103 = fadd reassoc nsz contract <8 x float> %83, %102
  %104 = fmul reassoc nsz contract <8 x float> %93, %103
  %105 = fadd reassoc nsz contract <8 x float> %82, %104
  %106 = fmul reassoc nsz contract <8 x float> %93, %105
  %107 = fadd reassoc nsz contract <8 x float> %81, %106
  %108 = fmul reassoc nsz contract <8 x float> %93, %107
  %109 = fadd reassoc nsz contract <8 x float> %80, %108
  %110 = getelementptr inbounds [16 x i32], [16 x i32]* %p.16, i64 0, <8 x i64> <i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>
  %111 = getelementptr inbounds i8, i8* %1, i64 33554720
  %112 = bitcast i8* %111 to <8 x float>*
  %wide.load12.3 = load <8 x float>, <8 x float>* %112, align 16, !alias.scope !41, !noalias !37
  %113 = fcmp reassoc nsz contract ogt <8 x float> %wide.load12.3, <float -5.000000e+00, float -5.000000e+00, float -5.000000e+00, float -5.000000e+00, float -5.000000e+00, float -5.000000e+00, float -5.000000e+00, float -5.000000e+00>
  %114 = select <8 x i1> %113, <8 x float> <float 0x3FF805C5E0000000, float 0x3FF805C5E0000000, float 0x3FF805C5E0000000, float 0x3FF805C5E0000000, float 0x3FF805C5E0000000, float 0x3FF805C5E0000000, float 0x3FF805C5E0000000, float 0x3FF805C5E0000000>, <8 x float> <float 0x4006A9EFC0000000, float 0x4006A9EFC0000000, float 0x4006A9EFC0000000, float 0x4006A9EFC0000000, float 0x4006A9EFC0000000, float 0x4006A9EFC0000000, float 0x4006A9EFC0000000, float 0x4006A9EFC0000000>
  %115 = select <8 x i1> %113, <8 x float> <float 0x3FCF91EC60000000, float 0x3FCF91EC60000000, float 0x3FCF91EC60000000, float 0x3FCF91EC60000000, float 0x3FCF91EC60000000, float 0x3FCF91EC60000000, float 0x3FCF91EC60000000, float 0x3FCF91EC60000000>, <8 x float> <float 0x3FF006DB60000000, float 0x3FF006DB60000000, float 0x3FF006DB60000000, float 0x3FF006DB60000000, float 0x3FF006DB60000000, float 0x3FF006DB60000000, float 0x3FF006DB60000000, float 0x3FF006DB60000000>
  %116 = select <8 x i1> %113, <8 x float> <float 0xBF711C9DE0000000, float 0xBF711C9DE0000000, float 0xBF711C9DE0000000, float 0xBF711C9DE0000000, float 0xBF711C9DE0000000, float 0xBF711C9DE0000000, float 0xBF711C9DE0000000, float 0xBF711C9DE0000000>, <8 x float> <float 0x3F8354AFC0000000, float 0x3F8354AFC0000000, float 0x3F8354AFC0000000, float 0x3F8354AFC0000000, float 0x3F8354AFC0000000, float 0x3F8354AFC0000000, float 0x3F8354AFC0000000, float 0x3F8354AFC0000000>
  %117 = select <8 x i1> %113, <8 x float> <float 0xBF548A8100000000, float 0xBF548A8100000000, float 0xBF548A8100000000, float 0xBF548A8100000000, float 0xBF548A8100000000, float 0xBF548A8100000000, float 0xBF548A8100000000, float 0xBF548A8100000000>, <8 x float> <float 0xBF7F38BAE0000000, float 0xBF7F38BAE0000000, float 0xBF7F38BAE0000000, float 0xBF7F38BAE0000000, float 0xBF7F38BAE0000000, float 0xBF7F38BAE0000000, float 0xBF7F38BAE0000000, float 0xBF7F38BAE0000000>
  %118 = select <8 x i1> %113, <8 x float> <float 0x3F2CA65B60000000, float 0x3F2CA65B60000000, float 0x3F2CA65B60000000, float 0x3F2CA65B60000000, float 0x3F2CA65B60000000, float 0x3F2CA65B60000000, float 0x3F2CA65B60000000, float 0x3F2CA65B60000000>, <8 x float> <float 0x3F77824F60000000, float 0x3F77824F60000000, float 0x3F77824F60000000, float 0x3F77824F60000000, float 0x3F77824F60000000, float 0x3F77824F60000000, float 0x3F77824F60000000, float 0x3F77824F60000000>
  %119 = select <8 x i1> %113, <8 x float> <float 0xBED26B5820000000, float 0xBED26B5820000000, float 0xBED26B5820000000, float 0xBED26B5820000000, float 0xBED26B5820000000, float 0xBED26B5820000000, float 0xBED26B5820000000, float 0xBED26B5820000000>, <8 x float> <float 0xBF6E17BCE0000000, float 0xBF6E17BCE0000000, float 0xBF6E17BCE0000000, float 0xBF6E17BCE0000000, float 0xBF6E17BCE0000000, float 0xBF6E17BCE0000000, float 0xBF6E17BCE0000000, float 0xBF6E17BCE0000000>
  %120 = select <8 x i1> %113, <8 x float> <float 0xBECD8E6AE0000000, float 0xBECD8E6AE0000000, float 0xBECD8E6AE0000000, float 0xBECD8E6AE0000000, float 0xBECD8E6AE0000000, float 0xBECD8E6AE0000000, float 0xBECD8E6AE0000000, float 0xBECD8E6AE0000000>, <8 x float> <float 0x3F561B8E40000000, float 0x3F561B8E40000000, float 0x3F561B8E40000000, float 0x3F561B8E40000000, float 0x3F561B8E40000000, float 0x3F561B8E40000000, float 0x3F561B8E40000000, float 0x3F561B8E40000000>
  %121 = select <8 x i1> %113, <8 x float> <float 0x3E970966C0000000, float 0x3E970966C0000000, float 0x3E970966C0000000, float 0x3E970966C0000000, float 0x3E970966C0000000, float 0x3E970966C0000000, float 0x3E970966C0000000, float 0x3E970966C0000000>, <8 x float> <float 0x3F1A76AD60000000, float 0x3F1A76AD60000000, float 0x3F1A76AD60000000, float 0x3F1A76AD60000000, float 0x3F1A76AD60000000, float 0x3F1A76AD60000000, float 0x3F1A76AD60000000, float 0x3F1A76AD60000000>
  %122 = select <8 x i1> %113, <8 x float> <float 0x3E5E2CB100000000, float 0x3E5E2CB100000000, float 0x3E5E2CB100000000, float 0x3E5E2CB100000000, float 0x3E5E2CB100000000, float 0x3E5E2CB100000000, float 0x3E5E2CB100000000, float 0x3E5E2CB100000000>, <8 x float> <float 0xBF2A3E1360000000, float 0xBF2A3E1360000000, float 0xBF2A3E1360000000, float 0xBF2A3E1360000000, float 0xBF2A3E1360000000, float 0xBF2A3E1360000000, float 0xBF2A3E1360000000, float 0xBF2A3E1360000000>
  %123 = fsub reassoc nsz contract <8 x float> <float -2.500000e+00, float -2.500000e+00, float -2.500000e+00, float -2.500000e+00, float -2.500000e+00, float -2.500000e+00, float -2.500000e+00, float -2.500000e+00>, %wide.load12.3
  %124 = getelementptr inbounds i8, i8* %1, i64 33554592
  %125 = bitcast i8* %124 to <8 x float>*
  %wide.load13.3 = load <8 x float>, <8 x float>* %125, align 16, !alias.scope !43, !noalias !37
  %126 = fadd reassoc nsz contract <8 x float> %wide.load13.3, <float -3.000000e+00, float -3.000000e+00, float -3.000000e+00, float -3.000000e+00, float -3.000000e+00, float -3.000000e+00, float -3.000000e+00, float -3.000000e+00>
  %127 = select <8 x i1> %113, <8 x float> %123, <8 x float> %126
  %128 = fmul reassoc nsz contract <8 x float> %122, %127
  %129 = fadd reassoc nsz contract <8 x float> %121, %128
  %130 = fmul reassoc nsz contract <8 x float> %127, %129
  %131 = fadd reassoc nsz contract <8 x float> %120, %130
  %132 = fmul reassoc nsz contract <8 x float> %127, %131
  %133 = fadd reassoc nsz contract <8 x float> %119, %132
  %134 = fmul reassoc nsz contract <8 x float> %127, %133
  %135 = fadd reassoc nsz contract <8 x float> %118, %134
  %136 = fmul reassoc nsz contract <8 x float> %127, %135
  %137 = fadd reassoc nsz contract <8 x float> %117, %136
  %138 = fmul reassoc nsz contract <8 x float> %127, %137
  %139 = fadd reassoc nsz contract <8 x float> %116, %138
  %140 = fmul reassoc nsz contract <8 x float> %127, %139
  %141 = fadd reassoc nsz contract <8 x float> %115, %140
  %142 = fmul reassoc nsz contract <8 x float> %127, %141
  %143 = fadd reassoc nsz contract <8 x float> %114, %142
  br label %fusion.8.clone.loop_header.dim.1.preheader

fusion.8.clone.loop_header.dim.1.preheader:       ; preds = %fusion.8.clone.loop_header.dim.1.preheader.preheader, %fusion.8.clone.loop_exit.dim.1
  %fusion.8.clone.invar_address.dim.0.08 = phi i64 [ %invar.inc, %fusion.8.clone.loop_exit.dim.1 ], [ %8, %fusion.8.clone.loop_header.dim.1.preheader.preheader ]
  br label %fusion.8.clone.loop_header.dim.2.preheader

fusion.8.clone.loop_header.dim.2.preheader:       ; preds = %fusion.8.clone.loop_header.dim.1.preheader, %fusion.8.clone.loop_exit.dim.2
  %fusion.8.clone.invar_address.dim.1.06 = phi i64 [ 0, %fusion.8.clone.loop_header.dim.1.preheader ], [ %invar.inc1, %fusion.8.clone.loop_exit.dim.2 ]
  br label %vector.ph

vector.ph:                                        ; preds = %vector.ph, %fusion.8.clone.loop_header.dim.2.preheader
  %fusion.8.clone.invar_address.dim.2.05 = phi i64 [ 0, %fusion.8.clone.loop_header.dim.2.preheader ], [ %invar.inc2, %vector.ph ]
  %144 = getelementptr inbounds [32 x [64 x [64 x [32 x float]]]], [32 x [64 x [64 x [32 x float]]]]* %p.12, i64 0, i64 %fusion.8.clone.invar_address.dim.0.08, i64 %fusion.8.clone.invar_address.dim.1.06, i64 %fusion.8.clone.invar_address.dim.2.05, i64 0
  %145 = bitcast float* %144 to <8 x float>*
  %wide.load = load <8 x float>, <8 x float>* %145, align 16, !alias.scope !45, !noalias !37
  %wide.masked.gather = call <8 x i32> @llvm.masked.gather.v8i32.v8p0i32(<8 x i32*> %10, i32 4, <8 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, <8 x i32> undef), !alias.scope !47, !noalias !37
  %146 = lshr <8 x i32> %wide.masked.gather, <i32 9, i32 9, i32 9, i32 9, i32 9, i32 9, i32 9, i32 9>
  %147 = or <8 x i32> %146, <i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216>
  %148 = bitcast <8 x i32> %147 to <8 x float>
  %149 = fmul reassoc nsz contract <8 x float> %148, <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00>
  %150 = fadd reassoc nsz contract <8 x float> %149, <float -3.000000e+00, float -3.000000e+00, float -3.000000e+00, float -3.000000e+00, float -3.000000e+00, float -3.000000e+00, float -3.000000e+00, float -3.000000e+00>
  %151 = fcmp reassoc nsz contract ole <8 x float> %150, <float 0xBFEFFFFFE0000000, float 0xBFEFFFFFE0000000, float 0xBFEFFFFFE0000000, float 0xBFEFFFFFE0000000, float 0xBFEFFFFFE0000000, float 0xBFEFFFFFE0000000, float 0xBFEFFFFFE0000000, float 0xBFEFFFFFE0000000>
  %152 = select <8 x i1> %151, <8 x float> <float 0xBFEFFFFFE0000000, float 0xBFEFFFFFE0000000, float 0xBFEFFFFFE0000000, float 0xBFEFFFFFE0000000, float 0xBFEFFFFFE0000000, float 0xBFEFFFFFE0000000, float 0xBFEFFFFFE0000000, float 0xBFEFFFFFE0000000>, <8 x float> %150
  %153 = call reassoc nsz contract <8 x float> @llvm.fabs.v8f32(<8 x float> %152)
  %154 = fcmp reassoc nsz contract oeq <8 x float> %153, <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>
  %155 = select <8 x i1> %154, <8 x float> <float 0x7FF0000000000000, float 0x7FF0000000000000, float 0x7FF0000000000000, float 0x7FF0000000000000, float 0x7FF0000000000000, float 0x7FF0000000000000, float 0x7FF0000000000000, float 0x7FF0000000000000>, <8 x float> %41
  %156 = fmul reassoc nsz contract <8 x float> %152, %155
  %157 = fmul reassoc nsz contract <8 x float> %156, <float 0x3EB7BA0040000000, float 0x3EB7BA0040000000, float 0x3EB7BA0040000000, float 0x3EB7BA0040000000, float 0x3EB7BA0040000000, float 0x3EB7BA0040000000, float 0x3EB7BA0040000000, float 0x3EB7BA0040000000>
  %158 = fadd reassoc nsz contract <8 x float> %wide.load, %157
  %159 = fcmp olt <8 x float> %158, zeroinitializer
  %160 = select <8 x i1> %159, <8 x float> zeroinitializer, <8 x float> %158
  %161 = getelementptr inbounds [32 x [64 x [64 x [32 x float]]]], [32 x [64 x [64 x [32 x float]]]]* %fusion.8.clone, i64 0, i64 %fusion.8.clone.invar_address.dim.0.08, i64 %fusion.8.clone.invar_address.dim.1.06, i64 %fusion.8.clone.invar_address.dim.2.05, i64 0
  %162 = bitcast float* %161 to <8 x float>*
  store <8 x float> %160, <8 x float>* %162, align 16, !alias.scope !37
  %163 = getelementptr inbounds [32 x [64 x [64 x [32 x float]]]], [32 x [64 x [64 x [32 x float]]]]* %p.12, i64 0, i64 %fusion.8.clone.invar_address.dim.0.08, i64 %fusion.8.clone.invar_address.dim.1.06, i64 %fusion.8.clone.invar_address.dim.2.05, i64 8
  %164 = bitcast float* %163 to <8 x float>*
  %wide.load.1 = load <8 x float>, <8 x float>* %164, align 16, !alias.scope !45, !noalias !37
  %wide.masked.gather.1 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0i32(<8 x i32*> %42, i32 4, <8 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, <8 x i32> undef), !alias.scope !47, !noalias !37
  %165 = lshr <8 x i32> %wide.masked.gather.1, <i32 9, i32 9, i32 9, i32 9, i32 9, i32 9, i32 9, i32 9>
  %166 = or <8 x i32> %165, <i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216>
  %167 = bitcast <8 x i32> %166 to <8 x float>
  %168 = fmul reassoc nsz contract <8 x float> %167, <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00>
  %169 = fadd reassoc nsz contract <8 x float> %168, <float -3.000000e+00, float -3.000000e+00, float -3.000000e+00, float -3.000000e+00, float -3.000000e+00, float -3.000000e+00, float -3.000000e+00, float -3.000000e+00>
  %170 = fcmp reassoc nsz contract ole <8 x float> %169, <float 0xBFEFFFFFE0000000, float 0xBFEFFFFFE0000000, float 0xBFEFFFFFE0000000, float 0xBFEFFFFFE0000000, float 0xBFEFFFFFE0000000, float 0xBFEFFFFFE0000000, float 0xBFEFFFFFE0000000, float 0xBFEFFFFFE0000000>
  %171 = select <8 x i1> %170, <8 x float> <float 0xBFEFFFFFE0000000, float 0xBFEFFFFFE0000000, float 0xBFEFFFFFE0000000, float 0xBFEFFFFFE0000000, float 0xBFEFFFFFE0000000, float 0xBFEFFFFFE0000000, float 0xBFEFFFFFE0000000, float 0xBFEFFFFFE0000000>, <8 x float> %169
  %172 = call reassoc nsz contract <8 x float> @llvm.fabs.v8f32(<8 x float> %171)
  %173 = fcmp reassoc nsz contract oeq <8 x float> %172, <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>
  %174 = select <8 x i1> %173, <8 x float> <float 0x7FF0000000000000, float 0x7FF0000000000000, float 0x7FF0000000000000, float 0x7FF0000000000000, float 0x7FF0000000000000, float 0x7FF0000000000000, float 0x7FF0000000000000, float 0x7FF0000000000000>, <8 x float> %75
  %175 = fmul reassoc nsz contract <8 x float> %171, %174
  %176 = fmul reassoc nsz contract <8 x float> %175, <float 0x3EB7BA0040000000, float 0x3EB7BA0040000000, float 0x3EB7BA0040000000, float 0x3EB7BA0040000000, float 0x3EB7BA0040000000, float 0x3EB7BA0040000000, float 0x3EB7BA0040000000, float 0x3EB7BA0040000000>
  %177 = fadd reassoc nsz contract <8 x float> %wide.load.1, %176
  %178 = fcmp olt <8 x float> %177, zeroinitializer
  %179 = select <8 x i1> %178, <8 x float> zeroinitializer, <8 x float> %177
  %180 = getelementptr inbounds [32 x [64 x [64 x [32 x float]]]], [32 x [64 x [64 x [32 x float]]]]* %fusion.8.clone, i64 0, i64 %fusion.8.clone.invar_address.dim.0.08, i64 %fusion.8.clone.invar_address.dim.1.06, i64 %fusion.8.clone.invar_address.dim.2.05, i64 8
  %181 = bitcast float* %180 to <8 x float>*
  store <8 x float> %179, <8 x float>* %181, align 16, !alias.scope !37
  %182 = getelementptr inbounds [32 x [64 x [64 x [32 x float]]]], [32 x [64 x [64 x [32 x float]]]]* %p.12, i64 0, i64 %fusion.8.clone.invar_address.dim.0.08, i64 %fusion.8.clone.invar_address.dim.1.06, i64 %fusion.8.clone.invar_address.dim.2.05, i64 16
  %183 = bitcast float* %182 to <8 x float>*
  %wide.load.2 = load <8 x float>, <8 x float>* %183, align 16, !alias.scope !45, !noalias !37
  %wide.masked.gather.2 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0i32(<8 x i32*> %76, i32 4, <8 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, <8 x i32> undef), !alias.scope !47, !noalias !37
  %184 = lshr <8 x i32> %wide.masked.gather.2, <i32 9, i32 9, i32 9, i32 9, i32 9, i32 9, i32 9, i32 9>
  %185 = or <8 x i32> %184, <i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216>
  %186 = bitcast <8 x i32> %185 to <8 x float>
  %187 = fmul reassoc nsz contract <8 x float> %186, <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00>
  %188 = fadd reassoc nsz contract <8 x float> %187, <float -3.000000e+00, float -3.000000e+00, float -3.000000e+00, float -3.000000e+00, float -3.000000e+00, float -3.000000e+00, float -3.000000e+00, float -3.000000e+00>
  %189 = fcmp reassoc nsz contract ole <8 x float> %188, <float 0xBFEFFFFFE0000000, float 0xBFEFFFFFE0000000, float 0xBFEFFFFFE0000000, float 0xBFEFFFFFE0000000, float 0xBFEFFFFFE0000000, float 0xBFEFFFFFE0000000, float 0xBFEFFFFFE0000000, float 0xBFEFFFFFE0000000>
  %190 = select <8 x i1> %189, <8 x float> <float 0xBFEFFFFFE0000000, float 0xBFEFFFFFE0000000, float 0xBFEFFFFFE0000000, float 0xBFEFFFFFE0000000, float 0xBFEFFFFFE0000000, float 0xBFEFFFFFE0000000, float 0xBFEFFFFFE0000000, float 0xBFEFFFFFE0000000>, <8 x float> %188
  %191 = call reassoc nsz contract <8 x float> @llvm.fabs.v8f32(<8 x float> %190)
  %192 = fcmp reassoc nsz contract oeq <8 x float> %191, <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>
  %193 = select <8 x i1> %192, <8 x float> <float 0x7FF0000000000000, float 0x7FF0000000000000, float 0x7FF0000000000000, float 0x7FF0000000000000, float 0x7FF0000000000000, float 0x7FF0000000000000, float 0x7FF0000000000000, float 0x7FF0000000000000>, <8 x float> %109
  %194 = fmul reassoc nsz contract <8 x float> %190, %193
  %195 = fmul reassoc nsz contract <8 x float> %194, <float 0x3EB7BA0040000000, float 0x3EB7BA0040000000, float 0x3EB7BA0040000000, float 0x3EB7BA0040000000, float 0x3EB7BA0040000000, float 0x3EB7BA0040000000, float 0x3EB7BA0040000000, float 0x3EB7BA0040000000>
  %196 = fadd reassoc nsz contract <8 x float> %wide.load.2, %195
  %197 = fcmp olt <8 x float> %196, zeroinitializer
  %198 = select <8 x i1> %197, <8 x float> zeroinitializer, <8 x float> %196
  %199 = getelementptr inbounds [32 x [64 x [64 x [32 x float]]]], [32 x [64 x [64 x [32 x float]]]]* %fusion.8.clone, i64 0, i64 %fusion.8.clone.invar_address.dim.0.08, i64 %fusion.8.clone.invar_address.dim.1.06, i64 %fusion.8.clone.invar_address.dim.2.05, i64 16
  %200 = bitcast float* %199 to <8 x float>*
  store <8 x float> %198, <8 x float>* %200, align 16, !alias.scope !37
  %201 = getelementptr inbounds [32 x [64 x [64 x [32 x float]]]], [32 x [64 x [64 x [32 x float]]]]* %p.12, i64 0, i64 %fusion.8.clone.invar_address.dim.0.08, i64 %fusion.8.clone.invar_address.dim.1.06, i64 %fusion.8.clone.invar_address.dim.2.05, i64 24
  %202 = bitcast float* %201 to <8 x float>*
  %wide.load.3 = load <8 x float>, <8 x float>* %202, align 16, !alias.scope !45, !noalias !37
  %wide.masked.gather.3 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0i32(<8 x i32*> %110, i32 4, <8 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, <8 x i32> undef), !alias.scope !47, !noalias !37
  %203 = lshr <8 x i32> %wide.masked.gather.3, <i32 9, i32 9, i32 9, i32 9, i32 9, i32 9, i32 9, i32 9>
  %204 = or <8 x i32> %203, <i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216>
  %205 = bitcast <8 x i32> %204 to <8 x float>
  %206 = fmul reassoc nsz contract <8 x float> %205, <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00>
  %207 = fadd reassoc nsz contract <8 x float> %206, <float -3.000000e+00, float -3.000000e+00, float -3.000000e+00, float -3.000000e+00, float -3.000000e+00, float -3.000000e+00, float -3.000000e+00, float -3.000000e+00>
  %208 = fcmp reassoc nsz contract ole <8 x float> %207, <float 0xBFEFFFFFE0000000, float 0xBFEFFFFFE0000000, float 0xBFEFFFFFE0000000, float 0xBFEFFFFFE0000000, float 0xBFEFFFFFE0000000, float 0xBFEFFFFFE0000000, float 0xBFEFFFFFE0000000, float 0xBFEFFFFFE0000000>
  %209 = select <8 x i1> %208, <8 x float> <float 0xBFEFFFFFE0000000, float 0xBFEFFFFFE0000000, float 0xBFEFFFFFE0000000, float 0xBFEFFFFFE0000000, float 0xBFEFFFFFE0000000, float 0xBFEFFFFFE0000000, float 0xBFEFFFFFE0000000, float 0xBFEFFFFFE0000000>, <8 x float> %207
  %210 = call reassoc nsz contract <8 x float> @llvm.fabs.v8f32(<8 x float> %209)
  %211 = fcmp reassoc nsz contract oeq <8 x float> %210, <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>
  %212 = select <8 x i1> %211, <8 x float> <float 0x7FF0000000000000, float 0x7FF0000000000000, float 0x7FF0000000000000, float 0x7FF0000000000000, float 0x7FF0000000000000, float 0x7FF0000000000000, float 0x7FF0000000000000, float 0x7FF0000000000000>, <8 x float> %143
  %213 = fmul reassoc nsz contract <8 x float> %209, %212
  %214 = fmul reassoc nsz contract <8 x float> %213, <float 0x3EB7BA0040000000, float 0x3EB7BA0040000000, float 0x3EB7BA0040000000, float 0x3EB7BA0040000000, float 0x3EB7BA0040000000, float 0x3EB7BA0040000000, float 0x3EB7BA0040000000, float 0x3EB7BA0040000000>
  %215 = fadd reassoc nsz contract <8 x float> %wide.load.3, %214
  %216 = fcmp olt <8 x float> %215, zeroinitializer
  %217 = select <8 x i1> %216, <8 x float> zeroinitializer, <8 x float> %215
  %218 = getelementptr inbounds [32 x [64 x [64 x [32 x float]]]], [32 x [64 x [64 x [32 x float]]]]* %fusion.8.clone, i64 0, i64 %fusion.8.clone.invar_address.dim.0.08, i64 %fusion.8.clone.invar_address.dim.1.06, i64 %fusion.8.clone.invar_address.dim.2.05, i64 24
  %219 = bitcast float* %218 to <8 x float>*
  store <8 x float> %217, <8 x float>* %219, align 16, !alias.scope !37
  %invar.inc2 = add nuw nsw i64 %fusion.8.clone.invar_address.dim.2.05, 1
  %exitcond9 = icmp eq i64 %invar.inc2, 64
  br i1 %exitcond9, label %fusion.8.clone.loop_exit.dim.2, label %vector.ph

fusion.8.clone.loop_exit.dim.2:                   ; preds = %vector.ph
  %invar.inc1 = add nuw nsw i64 %fusion.8.clone.invar_address.dim.1.06, 1
  %exitcond10 = icmp eq i64 %invar.inc1, 64
  br i1 %exitcond10, label %fusion.8.clone.loop_exit.dim.1, label %fusion.8.clone.loop_header.dim.2.preheader

fusion.8.clone.loop_exit.dim.1:                   ; preds = %fusion.8.clone.loop_exit.dim.2
  %invar.inc = add nuw nsw i64 %fusion.8.clone.invar_address.dim.0.08, 1
  %exitcond11.not = icmp eq i64 %invar.inc, %9
  br i1 %exitcond11.not, label %fusion.8.clone.loop_exit.dim.0, label %fusion.8.clone.loop_header.dim.1.preheader

fusion.8.clone.loop_exit.dim.0:                   ; preds = %fusion.8.clone.loop_exit.dim.1, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @parallel_fusion.16(i8* nocapture readnone %retval, i8* noalias nocapture readnone %run_options, i8** noalias nocapture readnone %params, i8** noalias nocapture readonly %buffer_table, i64* noalias nocapture readonly %dynamic_loop_bounds, i64* noalias nocapture readnone %prof_counters) #4 {
entry:
  %0 = bitcast i8** %buffer_table to [2304 x i32]**
  %1 = load [2304 x i32]*, [2304 x i32]** %0, align 8, !invariant.load !0, !dereferenceable !24, !align !2
  %2 = getelementptr inbounds i8*, i8** %buffer_table, i64 20
  %3 = load i8*, i8** %2, align 8, !invariant.load !0, !dereferenceable !1, !align !2
  %4 = getelementptr inbounds i8, i8* %3, i64 18496
  %p.18 = bitcast i8* %4 to [2304 x i32]*
  %5 = getelementptr inbounds i8, i8* %3, i64 16777280
  %fusion.16.clone = bitcast i8* %5 to [3 x [3 x [16 x [32 x float]]]]*
  %6 = load i64, i64* %dynamic_loop_bounds, align 8
  %dynamic_loop_bound_1 = getelementptr i64, i64* %dynamic_loop_bounds, i64 1
  %7 = load i64, i64* %dynamic_loop_bound_1, align 8
  %dynamic_loop_bound_2 = getelementptr i64, i64* %dynamic_loop_bounds, i64 2
  %8 = load i64, i64* %dynamic_loop_bound_2, align 8
  %dynamic_loop_bound_3 = getelementptr i64, i64* %dynamic_loop_bounds, i64 3
  %9 = load i64, i64* %dynamic_loop_bound_3, align 8
  %.not9 = icmp ult i64 %6, %7
  br i1 %.not9, label %fusion.16.clone.loop_header.dim.1.preheader.lr.ph, label %fusion.16.clone.loop_exit.dim.0

fusion.16.clone.loop_header.dim.1.preheader.lr.ph: ; preds = %entry
  %.not47 = icmp ult i64 %8, %9
  br label %fusion.16.clone.loop_header.dim.1.preheader

fusion.16.clone.loop_header.dim.1.preheader:      ; preds = %fusion.16.clone.loop_header.dim.1.preheader.lr.ph, %fusion.16.clone.loop_exit.dim.1
  %fusion.16.clone.invar_address.dim.0.010 = phi i64 [ %6, %fusion.16.clone.loop_header.dim.1.preheader.lr.ph ], [ %invar.inc, %fusion.16.clone.loop_exit.dim.1 ]
  br i1 %.not47, label %fusion.16.clone.loop_header.dim.2.preheader.lr.ph, label %fusion.16.clone.loop_exit.dim.1

fusion.16.clone.loop_header.dim.2.preheader.lr.ph: ; preds = %fusion.16.clone.loop_header.dim.1.preheader
  %10 = mul nuw nsw i64 %fusion.16.clone.invar_address.dim.0.010, 1536
  br label %fusion.16.clone.loop_header.dim.2.preheader

fusion.16.clone.loop_header.dim.2.preheader:      ; preds = %fusion.16.clone.loop_header.dim.2.preheader.lr.ph, %fusion.16.clone.loop_exit.dim.2
  %fusion.16.clone.invar_address.dim.1.08 = phi i64 [ %8, %fusion.16.clone.loop_header.dim.2.preheader.lr.ph ], [ %invar.inc1, %fusion.16.clone.loop_exit.dim.2 ]
  %11 = shl nuw nsw i64 %fusion.16.clone.invar_address.dim.1.08, 9
  %12 = add i64 %11, %10
  br label %vector.ph

vector.ph:                                        ; preds = %fusion.16.clone.loop_exit.dim.3, %fusion.16.clone.loop_header.dim.2.preheader
  %fusion.16.clone.invar_address.dim.2.06 = phi i64 [ 0, %fusion.16.clone.loop_header.dim.2.preheader ], [ %invar.inc2, %fusion.16.clone.loop_exit.dim.3 ]
  %13 = shl nuw nsw i64 %fusion.16.clone.invar_address.dim.2.06, 5
  %14 = add i64 %12, %13
  %broadcast.splatinsert = insertelement <8 x i64> undef, i64 %14, i32 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> undef, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.ind = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %vector.ph ], [ %vec.ind.next, %vector.body ]
  %15 = add <8 x i64> %broadcast.splat, %vec.ind
  %16 = icmp ugt <8 x i64> %15, <i64 2303, i64 2303, i64 2303, i64 2303, i64 2303, i64 2303, i64 2303, i64 2303>
  %17 = add nsw <8 x i64> %15, <i64 -2304, i64 -2304, i64 -2304, i64 -2304, i64 -2304, i64 -2304, i64 -2304, i64 -2304>
  %18 = getelementptr inbounds [2304 x i32], [2304 x i32]* %p.18, i64 0, <8 x i64> %17
  %19 = getelementptr inbounds [2304 x i32], [2304 x i32]* %1, i64 0, <8 x i64> %15
  %predphi = select <8 x i1> %16, <8 x i32*> %18, <8 x i32*> %19
  %wide.masked.gather = call <8 x i32> @llvm.masked.gather.v8i32.v8p0i32(<8 x i32*> %predphi, i32 4, <8 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, <8 x i32> undef), !alias.scope !50, !noalias !51
  %20 = lshr <8 x i32> %wide.masked.gather, <i32 9, i32 9, i32 9, i32 9, i32 9, i32 9, i32 9, i32 9>
  %21 = or <8 x i32> %20, <i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216>
  %22 = bitcast <8 x i32> %21 to <8 x float>
  %23 = fadd reassoc nsz contract <8 x float> %22, <float -1.000000e+00, float -1.000000e+00, float -1.000000e+00, float -1.000000e+00, float -1.000000e+00, float -1.000000e+00, float -1.000000e+00, float -1.000000e+00>
  %24 = fcmp reassoc nsz contract ole <8 x float> %23, <float 0x3810000000000000, float 0x3810000000000000, float 0x3810000000000000, float 0x3810000000000000, float 0x3810000000000000, float 0x3810000000000000, float 0x3810000000000000, float 0x3810000000000000>
  %25 = select <8 x i1> %24, <8 x float> <float 0x3810000000000000, float 0x3810000000000000, float 0x3810000000000000, float 0x3810000000000000, float 0x3810000000000000, float 0x3810000000000000, float 0x3810000000000000, float 0x3810000000000000>, <8 x float> %23
  %26 = fmul reassoc nsz contract <8 x float> %25, <float 0x3FFE8B4300000000, float 0x3FFE8B4300000000, float 0x3FFE8B4300000000, float 0x3FFE8B4300000000, float 0x3FFE8B4300000000, float 0x3FFE8B4300000000, float 0x3FFE8B4300000000, float 0x3FFE8B4300000000>
  %27 = fadd reassoc nsz contract <8 x float> %26, <float 0xBFEE8B4300000000, float 0xBFEE8B4300000000, float 0xBFEE8B4300000000, float 0xBFEE8B4300000000, float 0xBFEE8B4300000000, float 0xBFEE8B4300000000, float 0xBFEE8B4300000000, float 0xBFEE8B4300000000>
  %28 = call reassoc nsz contract <8 x float> @llvm.fabs.v8f32(<8 x float> %27)
  %29 = fcmp reassoc nsz contract oeq <8 x float> %28, <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>
  %30 = fneg reassoc nsz contract <8 x float> %27
  %31 = fmul reassoc nsz contract <8 x float> %27, %30
  %32 = fadd reassoc nsz contract <8 x float> %31, <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>
  %log_f32.i = fcmp reassoc nsz contract ule <8 x float> %32, zeroinitializer
  %log_f321.i = sext <8 x i1> %log_f32.i to <8 x i32>
  %log_f322.i = bitcast <8 x i32> %log_f321.i to <8 x float>
  %log_f323.i = fcmp reassoc nsz contract oeq <8 x float> %32, zeroinitializer
  %log_f324.i = sext <8 x i1> %log_f323.i to <8 x i32>
  %log_f325.i = bitcast <8 x i32> %log_f324.i to <8 x float>
  %log_f326.i = fcmp reassoc nsz contract oeq <8 x float> %32, <float 0x7FF0000000000000, float 0x7FF0000000000000, float 0x7FF0000000000000, float 0x7FF0000000000000, float 0x7FF0000000000000, float 0x7FF0000000000000, float 0x7FF0000000000000, float 0x7FF0000000000000>
  %log_f327.i = sext <8 x i1> %log_f326.i to <8 x i32>
  %log_f328.i = bitcast <8 x i32> %log_f327.i to <8 x float>
  %33 = fcmp reassoc nsz contract uge <8 x float> <float 0x3810000000000000, float 0x3810000000000000, float 0x3810000000000000, float 0x3810000000000000, float 0x3810000000000000, float 0x3810000000000000, float 0x3810000000000000, float 0x3810000000000000>, %32
  %34 = select reassoc nsz contract <8 x i1> %33, <8 x float> <float 0x3810000000000000, float 0x3810000000000000, float 0x3810000000000000, float 0x3810000000000000, float 0x3810000000000000, float 0x3810000000000000, float 0x3810000000000000, float 0x3810000000000000>, <8 x float> %32
  %35 = bitcast <8 x float> %34 to <8 x i32>
  %36 = lshr <8 x i32> %35, <i32 23, i32 23, i32 23, i32 23, i32 23, i32 23, i32 23, i32 23>
  %log_f329.i = bitcast <8 x float> %34 to <8 x i32>
  %log_f3210.i = and <8 x i32> %log_f329.i, <i32 -2139095041, i32 -2139095041, i32 -2139095041, i32 -2139095041, i32 -2139095041, i32 -2139095041, i32 -2139095041, i32 -2139095041>
  %37 = bitcast <8 x i32> %log_f3210.i to <8 x float>
  %log_f3212.i = or <8 x i32> %log_f3210.i, <i32 1056964608, i32 1056964608, i32 1056964608, i32 1056964608, i32 1056964608, i32 1056964608, i32 1056964608, i32 1056964608>
  %log_f3213.i = bitcast <8 x i32> %log_f3212.i to <8 x float>
  %38 = sub <8 x i32> %36, <i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127>
  %39 = sitofp <8 x i32> %38 to <8 x float>
  %log_f3214.i = fadd reassoc nsz contract <8 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %39
  %log_f3215.i = fcmp reassoc nsz contract olt <8 x float> %log_f3213.i, <float 0x3FE6A09E60000000, float 0x3FE6A09E60000000, float 0x3FE6A09E60000000, float 0x3FE6A09E60000000, float 0x3FE6A09E60000000, float 0x3FE6A09E60000000, float 0x3FE6A09E60000000, float 0x3FE6A09E60000000>
  %log_f3216.i = sext <8 x i1> %log_f3215.i to <8 x i32>
  %log_f3217.i = bitcast <8 x i32> %log_f3216.i to <8 x float>
  %log_f3220.i = and <8 x i32> %log_f3212.i, %log_f3216.i
  %40 = bitcast <8 x i32> %log_f3220.i to <8 x float>
  %41 = fsub reassoc nsz contract <8 x float> %log_f3213.i, <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>
  %log_f3222.i = and <8 x i32> %log_f3216.i, <i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216>
  %42 = bitcast <8 x i32> %log_f3222.i to <8 x float>
  %43 = fsub reassoc nsz contract <8 x float> %log_f3214.i, %42
  %log_f3223.i = fadd reassoc nsz contract <8 x float> %41, %40
  %log_f3224.i = fmul reassoc nsz contract <8 x float> %log_f3223.i, %log_f3223.i
  %log_f3225.i = fmul reassoc nsz contract <8 x float> %log_f3224.i, %log_f3223.i
  %log_f3226.i = fmul reassoc nsz contract <8 x float> %log_f3223.i, <float 0x3FB2043760000000, float 0x3FB2043760000000, float 0x3FB2043760000000, float 0x3FB2043760000000, float 0x3FB2043760000000, float 0x3FB2043760000000, float 0x3FB2043760000000, float 0x3FB2043760000000>
  %log_f3227.i = fadd reassoc nsz contract <8 x float> <float 0xBFBD7A3700000000, float 0xBFBD7A3700000000, float 0xBFBD7A3700000000, float 0xBFBD7A3700000000, float 0xBFBD7A3700000000, float 0xBFBD7A3700000000, float 0xBFBD7A3700000000, float 0xBFBD7A3700000000>, %log_f3226.i
  %log_f3228.i = fmul reassoc nsz contract <8 x float> %log_f3223.i, <float 0xBFBFCBA9E0000000, float 0xBFBFCBA9E0000000, float 0xBFBFCBA9E0000000, float 0xBFBFCBA9E0000000, float 0xBFBFCBA9E0000000, float 0xBFBFCBA9E0000000, float 0xBFBFCBA9E0000000, float 0xBFBFCBA9E0000000>
  %log_f3229.i = fadd reassoc nsz contract <8 x float> <float 0x3FC23D37E0000000, float 0x3FC23D37E0000000, float 0x3FC23D37E0000000, float 0x3FC23D37E0000000, float 0x3FC23D37E0000000, float 0x3FC23D37E0000000, float 0x3FC23D37E0000000, float 0x3FC23D37E0000000>, %log_f3228.i
  %log_f3230.i = fmul reassoc nsz contract <8 x float> %log_f3223.i, <float 0x3FC999D580000000, float 0x3FC999D580000000, float 0x3FC999D580000000, float 0x3FC999D580000000, float 0x3FC999D580000000, float 0x3FC999D580000000, float 0x3FC999D580000000, float 0x3FC999D580000000>
  %log_f3231.i = fadd reassoc nsz contract <8 x float> <float 0xBFCFFFFF80000000, float 0xBFCFFFFF80000000, float 0xBFCFFFFF80000000, float 0xBFCFFFFF80000000, float 0xBFCFFFFF80000000, float 0xBFCFFFFF80000000, float 0xBFCFFFFF80000000, float 0xBFCFFFFF80000000>, %log_f3230.i
  %log_f3232.i = fmul reassoc nsz contract <8 x float> %log_f3227.i, %log_f3223.i
  %log_f3233.i = fadd reassoc nsz contract <8 x float> <float 0x3FBDE4A340000000, float 0x3FBDE4A340000000, float 0x3FBDE4A340000000, float 0x3FBDE4A340000000, float 0x3FBDE4A340000000, float 0x3FBDE4A340000000, float 0x3FBDE4A340000000, float 0x3FBDE4A340000000>, %log_f3232.i
  %log_f3234.i = fmul reassoc nsz contract <8 x float> %log_f3229.i, %log_f3223.i
  %log_f3235.i = fadd reassoc nsz contract <8 x float> <float 0xBFC555CA00000000, float 0xBFC555CA00000000, float 0xBFC555CA00000000, float 0xBFC555CA00000000, float 0xBFC555CA00000000, float 0xBFC555CA00000000, float 0xBFC555CA00000000, float 0xBFC555CA00000000>, %log_f3234.i
  %log_f3236.i = fmul reassoc nsz contract <8 x float> %log_f3231.i, %log_f3223.i
  %log_f3237.i = fadd reassoc nsz contract <8 x float> <float 0x3FD5555540000000, float 0x3FD5555540000000, float 0x3FD5555540000000, float 0x3FD5555540000000, float 0x3FD5555540000000, float 0x3FD5555540000000, float 0x3FD5555540000000, float 0x3FD5555540000000>, %log_f3236.i
  %log_f3238.i = fmul reassoc nsz contract <8 x float> %log_f3233.i, %log_f3225.i
  %log_f3239.i = fadd reassoc nsz contract <8 x float> %log_f3235.i, %log_f3238.i
  %log_f3240.i = fmul reassoc nsz contract <8 x float> %log_f3239.i, %log_f3225.i
  %log_f3241.i = fadd reassoc nsz contract <8 x float> %log_f3237.i, %log_f3240.i
  %log_f3242.i = fmul reassoc nsz contract <8 x float> %log_f3241.i, %log_f3225.i
  %log_f3243.i = fmul reassoc nsz contract <8 x float> <float 0xBF2BD01060000000, float 0xBF2BD01060000000, float 0xBF2BD01060000000, float 0xBF2BD01060000000, float 0xBF2BD01060000000, float 0xBF2BD01060000000, float 0xBF2BD01060000000, float 0xBF2BD01060000000>, %43
  %log_f3244.i = fmul reassoc nsz contract <8 x float> <float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01>, %log_f3224.i
  %log_f3245.i = fadd reassoc nsz contract <8 x float> %log_f3242.i, %log_f3243.i
  %44 = fsub reassoc nsz contract <8 x float> %log_f3223.i, %log_f3244.i
  %log_f3246.i = fmul reassoc nsz contract <8 x float> <float 0x3FE6300000000000, float 0x3FE6300000000000, float 0x3FE6300000000000, float 0x3FE6300000000000, float 0x3FE6300000000000, float 0x3FE6300000000000, float 0x3FE6300000000000, float 0x3FE6300000000000>, %43
  %log_f3247.i = fadd reassoc nsz contract <8 x float> %44, %log_f3245.i
  %log_f3248.i = fadd reassoc nsz contract <8 x float> %log_f3247.i, %log_f3246.i
  %log_f3250.i = and <8 x i32> %log_f324.i, <i32 -8388608, i32 -8388608, i32 -8388608, i32 -8388608, i32 -8388608, i32 -8388608, i32 -8388608, i32 -8388608>
  %45 = bitcast <8 x i32> %log_f3250.i to <8 x float>
  %log_f3252.i = and <8 x i32> %log_f327.i, <i32 2139095040, i32 2139095040, i32 2139095040, i32 2139095040, i32 2139095040, i32 2139095040, i32 2139095040, i32 2139095040>
  %46 = bitcast <8 x i32> %log_f3252.i to <8 x float>
  %log_f3255.i = or <8 x i32> %log_f3250.i, %log_f3252.i
  %log_f3256.i = bitcast <8 x i32> %log_f3255.i to <8 x float>
  %log_f3257.i = bitcast <8 x float> %log_f3248.i to <8 x i32>
  %log_f3259.i = or <8 x i32> %log_f3257.i, %log_f321.i
  %log_f3260.i = bitcast <8 x i32> %log_f3259.i to <8 x float>
  %log_f3263.i = or <8 x i32> %log_f324.i, %log_f327.i
  %log_f3264.i = bitcast <8 x i32> %log_f3263.i to <8 x float>
  %log_f3266.i = xor <8 x i32> %log_f3263.i, <i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1>
  %47 = bitcast <8 x i32> %log_f3266.i to <8 x float>
  %log_f3269.i = and <8 x i32> %log_f3266.i, %log_f3259.i
  %48 = bitcast <8 x i32> %log_f3269.i to <8 x float>
  %log_f3272.i = or <8 x i32> %log_f3255.i, %log_f3269.i
  %log_f3273.i = bitcast <8 x i32> %log_f3272.i to <8 x float>
  %49 = fmul reassoc nsz contract <8 x float> %31, %31
  %50 = fmul reassoc nsz contract <8 x float> %31, zeroinitializer
  %51 = fadd reassoc nsz contract <8 x float> %50, <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>
  %52 = fmul reassoc nsz contract <8 x float> %31, %51
  %53 = fadd reassoc nsz contract <8 x float> %52, <float 0x402E2035A0000000, float 0x402E2035A0000000, float 0x402E2035A0000000, float 0x402E2035A0000000, float 0x402E2035A0000000, float 0x402E2035A0000000, float 0x402E2035A0000000, float 0x402E2035A0000000>
  %54 = fmul reassoc nsz contract <8 x float> %31, %53
  %55 = fadd reassoc nsz contract <8 x float> %54, <float 0x4054C30B60000000, float 0x4054C30B60000000, float 0x4054C30B60000000, float 0x4054C30B60000000, float 0x4054C30B60000000, float 0x4054C30B60000000, float 0x4054C30B60000000, float 0x4054C30B60000000>
  %56 = fmul reassoc nsz contract <8 x float> %31, %55
  %57 = fadd reassoc nsz contract <8 x float> %56, <float 0x406BB865A0000000, float 0x406BB865A0000000, float 0x406BB865A0000000, float 0x406BB865A0000000, float 0x406BB865A0000000, float 0x406BB865A0000000, float 0x406BB865A0000000, float 0x406BB865A0000000>
  %58 = fmul reassoc nsz contract <8 x float> %31, %57
  %59 = fadd reassoc nsz contract <8 x float> %58, <float 0x4073519460000000, float 0x4073519460000000, float 0x4073519460000000, float 0x4073519460000000, float 0x4073519460000000, float 0x4073519460000000, float 0x4073519460000000, float 0x4073519460000000>
  %60 = fmul reassoc nsz contract <8 x float> %31, %59
  %61 = fadd reassoc nsz contract <8 x float> %60, <float 0x406B0DB140000000, float 0x406B0DB140000000, float 0x406B0DB140000000, float 0x406B0DB140000000, float 0x406B0DB140000000, float 0x406B0DB140000000, float 0x406B0DB140000000, float 0x406B0DB140000000>
  %62 = fmul reassoc nsz contract <8 x float> %31, %61
  %63 = fadd reassoc nsz contract <8 x float> %62, <float 0x404E0F3040000000, float 0x404E0F3040000000, float 0x404E0F3040000000, float 0x404E0F3040000000, float 0x404E0F3040000000, float 0x404E0F3040000000, float 0x404E0F3040000000, float 0x404E0F3040000000>
  %64 = fadd reassoc nsz contract <8 x float> %50, <float 0x3F07BC0960000000, float 0x3F07BC0960000000, float 0x3F07BC0960000000, float 0x3F07BC0960000000, float 0x3F07BC0960000000, float 0x3F07BC0960000000, float 0x3F07BC0960000000, float 0x3F07BC0960000000>
  %65 = fmul reassoc nsz contract <8 x float> %31, %64
  %66 = fadd reassoc nsz contract <8 x float> %65, <float 0x3FDFE818A0000000, float 0x3FDFE818A0000000, float 0x3FDFE818A0000000, float 0x3FDFE818A0000000, float 0x3FDFE818A0000000, float 0x3FDFE818A0000000, float 0x3FDFE818A0000000, float 0x3FDFE818A0000000>
  %67 = fmul reassoc nsz contract <8 x float> %31, %66
  %68 = fadd reassoc nsz contract <8 x float> %67, <float 0x401A509F40000000, float 0x401A509F40000000, float 0x401A509F40000000, float 0x401A509F40000000, float 0x401A509F40000000, float 0x401A509F40000000, float 0x401A509F40000000, float 0x401A509F40000000>
  %69 = fmul reassoc nsz contract <8 x float> %31, %68
  %70 = fadd reassoc nsz contract <8 x float> %69, <float 0x403DE97380000000, float 0x403DE97380000000, float 0x403DE97380000000, float 0x403DE97380000000, float 0x403DE97380000000, float 0x403DE97380000000, float 0x403DE97380000000, float 0x403DE97380000000>
  %71 = fmul reassoc nsz contract <8 x float> %31, %70
  %72 = fadd reassoc nsz contract <8 x float> %71, <float 0x404E798EC0000000, float 0x404E798EC0000000, float 0x404E798EC0000000, float 0x404E798EC0000000, float 0x404E798EC0000000, float 0x404E798EC0000000, float 0x404E798EC0000000, float 0x404E798EC0000000>
  %73 = fmul reassoc nsz contract <8 x float> %31, %72
  %74 = fadd reassoc nsz contract <8 x float> %73, <float 0x404C8E75A0000000, float 0x404C8E75A0000000, float 0x404C8E75A0000000, float 0x404C8E75A0000000, float 0x404C8E75A0000000, float 0x404C8E75A0000000, float 0x404C8E75A0000000, float 0x404C8E75A0000000>
  %75 = fmul reassoc nsz contract <8 x float> %31, %74
  %76 = fadd reassoc nsz contract <8 x float> %75, <float 0x40340A2020000000, float 0x40340A2020000000, float 0x40340A2020000000, float 0x40340A2020000000, float 0x40340A2020000000, float 0x40340A2020000000, float 0x40340A2020000000, float 0x40340A2020000000>
  %77 = fmul reassoc nsz contract <8 x float> %31, %49
  %78 = fmul reassoc nsz contract <8 x float> %77, %76
  %79 = fdiv reassoc nsz contract <8 x float> %78, %63
  %80 = fmul reassoc nsz contract <8 x float> %49, <float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01>
  %81 = fsub reassoc nsz contract <8 x float> %79, %80
  %82 = fadd reassoc nsz contract <8 x float> %31, %81
  %83 = call reassoc nsz contract <8 x float> @llvm.fabs.v8f32(<8 x float> %31)
  %84 = fcmp reassoc nsz contract olt <8 x float> %83, <float 0x3FDA8279A0000000, float 0x3FDA8279A0000000, float 0x3FDA8279A0000000, float 0x3FDA8279A0000000, float 0x3FDA8279A0000000, float 0x3FDA8279A0000000, float 0x3FDA8279A0000000, float 0x3FDA8279A0000000>
  %85 = select <8 x i1> %84, <8 x float> %82, <8 x float> %log_f3273.i
  %86 = fneg reassoc nsz contract <8 x float> %85
  %87 = fcmp reassoc nsz contract ogt <8 x float> %85, <float -5.000000e+00, float -5.000000e+00, float -5.000000e+00, float -5.000000e+00, float -5.000000e+00, float -5.000000e+00, float -5.000000e+00, float -5.000000e+00>
  %88 = select <8 x i1> %87, <8 x float> <float 0x3FF805C5E0000000, float 0x3FF805C5E0000000, float 0x3FF805C5E0000000, float 0x3FF805C5E0000000, float 0x3FF805C5E0000000, float 0x3FF805C5E0000000, float 0x3FF805C5E0000000, float 0x3FF805C5E0000000>, <8 x float> <float 0x4006A9EFC0000000, float 0x4006A9EFC0000000, float 0x4006A9EFC0000000, float 0x4006A9EFC0000000, float 0x4006A9EFC0000000, float 0x4006A9EFC0000000, float 0x4006A9EFC0000000, float 0x4006A9EFC0000000>
  %89 = select <8 x i1> %87, <8 x float> <float 0x3FCF91EC60000000, float 0x3FCF91EC60000000, float 0x3FCF91EC60000000, float 0x3FCF91EC60000000, float 0x3FCF91EC60000000, float 0x3FCF91EC60000000, float 0x3FCF91EC60000000, float 0x3FCF91EC60000000>, <8 x float> <float 0x3FF006DB60000000, float 0x3FF006DB60000000, float 0x3FF006DB60000000, float 0x3FF006DB60000000, float 0x3FF006DB60000000, float 0x3FF006DB60000000, float 0x3FF006DB60000000, float 0x3FF006DB60000000>
  %90 = select <8 x i1> %87, <8 x float> <float 0xBF711C9DE0000000, float 0xBF711C9DE0000000, float 0xBF711C9DE0000000, float 0xBF711C9DE0000000, float 0xBF711C9DE0000000, float 0xBF711C9DE0000000, float 0xBF711C9DE0000000, float 0xBF711C9DE0000000>, <8 x float> <float 0x3F8354AFC0000000, float 0x3F8354AFC0000000, float 0x3F8354AFC0000000, float 0x3F8354AFC0000000, float 0x3F8354AFC0000000, float 0x3F8354AFC0000000, float 0x3F8354AFC0000000, float 0x3F8354AFC0000000>
  %91 = select <8 x i1> %87, <8 x float> <float 0xBF548A8100000000, float 0xBF548A8100000000, float 0xBF548A8100000000, float 0xBF548A8100000000, float 0xBF548A8100000000, float 0xBF548A8100000000, float 0xBF548A8100000000, float 0xBF548A8100000000>, <8 x float> <float 0xBF7F38BAE0000000, float 0xBF7F38BAE0000000, float 0xBF7F38BAE0000000, float 0xBF7F38BAE0000000, float 0xBF7F38BAE0000000, float 0xBF7F38BAE0000000, float 0xBF7F38BAE0000000, float 0xBF7F38BAE0000000>
  %92 = select <8 x i1> %87, <8 x float> <float 0x3F2CA65B60000000, float 0x3F2CA65B60000000, float 0x3F2CA65B60000000, float 0x3F2CA65B60000000, float 0x3F2CA65B60000000, float 0x3F2CA65B60000000, float 0x3F2CA65B60000000, float 0x3F2CA65B60000000>, <8 x float> <float 0x3F77824F60000000, float 0x3F77824F60000000, float 0x3F77824F60000000, float 0x3F77824F60000000, float 0x3F77824F60000000, float 0x3F77824F60000000, float 0x3F77824F60000000, float 0x3F77824F60000000>
  %93 = select <8 x i1> %87, <8 x float> <float 0xBED26B5820000000, float 0xBED26B5820000000, float 0xBED26B5820000000, float 0xBED26B5820000000, float 0xBED26B5820000000, float 0xBED26B5820000000, float 0xBED26B5820000000, float 0xBED26B5820000000>, <8 x float> <float 0xBF6E17BCE0000000, float 0xBF6E17BCE0000000, float 0xBF6E17BCE0000000, float 0xBF6E17BCE0000000, float 0xBF6E17BCE0000000, float 0xBF6E17BCE0000000, float 0xBF6E17BCE0000000, float 0xBF6E17BCE0000000>
  %94 = select <8 x i1> %87, <8 x float> <float 0xBECD8E6AE0000000, float 0xBECD8E6AE0000000, float 0xBECD8E6AE0000000, float 0xBECD8E6AE0000000, float 0xBECD8E6AE0000000, float 0xBECD8E6AE0000000, float 0xBECD8E6AE0000000, float 0xBECD8E6AE0000000>, <8 x float> <float 0x3F561B8E40000000, float 0x3F561B8E40000000, float 0x3F561B8E40000000, float 0x3F561B8E40000000, float 0x3F561B8E40000000, float 0x3F561B8E40000000, float 0x3F561B8E40000000, float 0x3F561B8E40000000>
  %95 = select <8 x i1> %87, <8 x float> <float 0x3E970966C0000000, float 0x3E970966C0000000, float 0x3E970966C0000000, float 0x3E970966C0000000, float 0x3E970966C0000000, float 0x3E970966C0000000, float 0x3E970966C0000000, float 0x3E970966C0000000>, <8 x float> <float 0x3F1A76AD60000000, float 0x3F1A76AD60000000, float 0x3F1A76AD60000000, float 0x3F1A76AD60000000, float 0x3F1A76AD60000000, float 0x3F1A76AD60000000, float 0x3F1A76AD60000000, float 0x3F1A76AD60000000>
  %96 = select <8 x i1> %87, <8 x float> <float 0x3E5E2CB100000000, float 0x3E5E2CB100000000, float 0x3E5E2CB100000000, float 0x3E5E2CB100000000, float 0x3E5E2CB100000000, float 0x3E5E2CB100000000, float 0x3E5E2CB100000000, float 0x3E5E2CB100000000>, <8 x float> <float 0xBF2A3E1360000000, float 0xBF2A3E1360000000, float 0xBF2A3E1360000000, float 0xBF2A3E1360000000, float 0xBF2A3E1360000000, float 0xBF2A3E1360000000, float 0xBF2A3E1360000000, float 0xBF2A3E1360000000>
  %97 = fsub reassoc nsz contract <8 x float> <float -2.500000e+00, float -2.500000e+00, float -2.500000e+00, float -2.500000e+00, float -2.500000e+00, float -2.500000e+00, float -2.500000e+00, float -2.500000e+00>, %85
  %98 = call reassoc nsz contract <8 x float> @llvm.sqrt.v8f32(<8 x float> %86)
  %99 = fadd reassoc nsz contract <8 x float> %98, <float -3.000000e+00, float -3.000000e+00, float -3.000000e+00, float -3.000000e+00, float -3.000000e+00, float -3.000000e+00, float -3.000000e+00, float -3.000000e+00>
  %100 = select <8 x i1> %87, <8 x float> %97, <8 x float> %99
  %101 = fmul reassoc nsz contract <8 x float> %96, %100
  %102 = fadd reassoc nsz contract <8 x float> %95, %101
  %103 = fmul reassoc nsz contract <8 x float> %100, %102
  %104 = fadd reassoc nsz contract <8 x float> %94, %103
  %105 = fmul reassoc nsz contract <8 x float> %100, %104
  %106 = fadd reassoc nsz contract <8 x float> %93, %105
  %107 = fmul reassoc nsz contract <8 x float> %100, %106
  %108 = fadd reassoc nsz contract <8 x float> %92, %107
  %109 = fmul reassoc nsz contract <8 x float> %100, %108
  %110 = fadd reassoc nsz contract <8 x float> %91, %109
  %111 = fmul reassoc nsz contract <8 x float> %100, %110
  %112 = fadd reassoc nsz contract <8 x float> %90, %111
  %113 = fmul reassoc nsz contract <8 x float> %100, %112
  %114 = fadd reassoc nsz contract <8 x float> %89, %113
  %115 = fmul reassoc nsz contract <8 x float> %100, %114
  %116 = fadd reassoc nsz contract <8 x float> %88, %115
  %117 = select <8 x i1> %29, <8 x float> <float 0x7FF0000000000000, float 0x7FF0000000000000, float 0x7FF0000000000000, float 0x7FF0000000000000, float 0x7FF0000000000000, float 0x7FF0000000000000, float 0x7FF0000000000000, float 0x7FF0000000000000>, <8 x float> %116
  %118 = fmul reassoc nsz contract <8 x float> %27, %117
  %119 = fmul reassoc nsz contract <8 x float> %118, <float 0x3FBC013100000000, float 0x3FBC013100000000, float 0x3FBC013100000000, float 0x3FBC013100000000, float 0x3FBC013100000000, float 0x3FBC013100000000, float 0x3FBC013100000000, float 0x3FBC013100000000>
  %120 = getelementptr inbounds [3 x [3 x [16 x [32 x float]]]], [3 x [3 x [16 x [32 x float]]]]* %fusion.16.clone, i64 0, i64 %fusion.16.clone.invar_address.dim.0.010, i64 %fusion.16.clone.invar_address.dim.1.08, i64 %fusion.16.clone.invar_address.dim.2.06, i64 %index
  %121 = bitcast float* %120 to <8 x float>*
  store <8 x float> %119, <8 x float>* %121, align 16, !alias.scope !51
  %index.next = add i64 %index, 8
  %vec.ind.next = add <8 x i64> %vec.ind, <i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8>
  %122 = icmp eq i64 %index.next, 32
  br i1 %122, label %fusion.16.clone.loop_exit.dim.3, label %vector.body, !llvm.loop !53

fusion.16.clone.loop_exit.dim.3:                  ; preds = %vector.body
  %invar.inc2 = add nuw nsw i64 %fusion.16.clone.invar_address.dim.2.06, 1
  %exitcond11 = icmp eq i64 %invar.inc2, 16
  br i1 %exitcond11, label %fusion.16.clone.loop_exit.dim.2, label %vector.ph

fusion.16.clone.loop_exit.dim.2:                  ; preds = %fusion.16.clone.loop_exit.dim.3
  %invar.inc1 = add nuw nsw i64 %fusion.16.clone.invar_address.dim.1.08, 1
  %exitcond12.not = icmp eq i64 %invar.inc1, %9
  br i1 %exitcond12.not, label %fusion.16.clone.loop_exit.dim.1, label %fusion.16.clone.loop_header.dim.2.preheader

fusion.16.clone.loop_exit.dim.1:                  ; preds = %fusion.16.clone.loop_exit.dim.2, %fusion.16.clone.loop_header.dim.1.preheader
  %invar.inc = add nuw nsw i64 %fusion.16.clone.invar_address.dim.0.010, 1
  %exitcond13.not = icmp eq i64 %invar.inc, %7
  br i1 %exitcond13.not, label %fusion.16.clone.loop_exit.dim.0, label %fusion.16.clone.loop_header.dim.1.preheader

fusion.16.clone.loop_exit.dim.0:                  ; preds = %fusion.16.clone.loop_exit.dim.1, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define void @jit_test_conv2d.1357(i8* nocapture readnone %retval, i8* noalias %run_options, i8** noalias nocapture readnone %params, i8** noalias %buffer_table, i64* noalias %prof_counters) local_unnamed_addr #4 {
while.14.body.lr.ph:
  %0 = getelementptr i8*, i8** %buffer_table, i64 20
  %1 = load i8*, i8** %0, align 8, !invariant.load !0, !dereferenceable !1, !align !2
  %2 = getelementptr inbounds i8, i8* %1, i64 224
  %copy.97 = bitcast i8* %2 to i32*
  store i32 0, i32* %copy.97, align 16
  %3 = getelementptr inbounds i8, i8* %1, i64 208
  %copy.5 = bitcast i8* %3 to i32*
  store i32 0, i32* %copy.5, align 16
  %4 = load i8*, i8** %buffer_table, align 8, !invariant.load !0, !dereferenceable !24, !align !2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(16) %4, i8* nonnull align 16 dereferenceable(16) getelementptr inbounds ([16 x i8], [16 x i8]* @0, i64 0, i64 0), i64 16, i1 false)
  %5 = getelementptr inbounds i8, i8* %1, i64 96
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(16) %5, i8* nonnull align 16 dereferenceable(16) getelementptr inbounds ([16 x i8], [16 x i8]* @1, i64 0, i64 0), i64 16, i1 false)
  %6 = getelementptr inbounds i8, i8* %1, i64 128
  %7 = bitcast i8* %6 to i32*
  store i32 2, i32* %7, align 16, !alias.scope !54, !noalias !56
  %8 = getelementptr inbounds i8, i8* %1, i64 132
  %9 = bitcast i8* %8 to i32*
  store i32 3, i32* %9, align 4, !alias.scope !54, !noalias !56
  %10 = getelementptr inbounds i8, i8* %1, i64 144
  %11 = bitcast i8* %10 to i32*
  store i32 0, i32* %11, align 16, !alias.scope !65, !noalias !66
  %12 = getelementptr inbounds i8, i8* %1, i64 148
  %13 = bitcast i8* %12 to i32*
  store i32 1, i32* %13, align 4, !alias.scope !65, !noalias !66
  %14 = getelementptr inbounds i8, i8* %1, i64 192
  %copy = bitcast i8* %14 to i32*
  store i32 0, i32* %copy, align 16
  %15 = getelementptr inbounds i8, i8* %1, i64 160
  %16 = bitcast i8* %15 to i32*
  store i32 466688986, i32* %16, align 16
  %17 = getelementptr inbounds i8, i8* %1, i64 33555008
  %18 = bitcast i8* %17 to i8**
  store i8* %14, i8** %18, align 16, !alias.scope !67, !noalias !68
  %19 = getelementptr inbounds i8, i8* %1, i64 33555016
  %20 = bitcast i8* %19 to i8**
  store i8* %10, i8** %20, align 8, !alias.scope !67, !noalias !68
  %21 = getelementptr inbounds i8, i8* %1, i64 33555024
  %22 = bitcast i8* %21 to i8**
  store i8* %6, i8** %22, align 16, !alias.scope !67, !noalias !68
  %23 = getelementptr inbounds i8, i8* %1, i64 33555032
  %24 = bitcast i8* %23 to i8**
  store i8* %2, i8** %24, align 8, !alias.scope !67, !noalias !68
  %25 = getelementptr inbounds i8, i8* %1, i64 33555040
  %26 = bitcast i8* %25 to i8**
  store i8* %15, i8** %26, align 16, !alias.scope !67, !noalias !68
  %27 = getelementptr inbounds i8, i8* %1, i64 33555048
  %28 = bitcast i8* %27 to i8**
  store i8* %3, i8** %28, align 8, !alias.scope !67, !noalias !68
  %29 = getelementptr inbounds i8, i8* %1, i64 33555056
  %30 = bitcast i8* %29 to i8**
  store i8* %4, i8** %30, align 16, !alias.scope !67, !noalias !68
  %31 = getelementptr inbounds i8, i8* %1, i64 33555064
  %32 = bitcast i8* %31 to i8**
  store i8* %5, i8** %32, align 8, !alias.scope !67, !noalias !68
  %33 = bitcast i8* %17 to i32**
  %compare.12.i = getelementptr inbounds i8, i8* %1, i64 112
  store i8 1, i8* %compare.12.i, align 16, !alias.scope !69, !noalias !71
  %34 = bitcast i8* %6 to i64*
  %35 = getelementptr inbounds i8, i8* %1, i64 64
  %36 = bitcast i8* %4 to i64*
  %37 = bitcast i8* %19 to i64**
  %38 = getelementptr inbounds i8, i8* %1, i64 80
  %39 = bitcast i8* %38 to i64*
  %40 = bitcast i8* %25 to i32**
  %copy.12.i = bitcast i8* %compare.12.i to i32*
  %41 = getelementptr inbounds i8, i8* %1, i64 176
  %copy.8.i = bitcast i8* %41 to i32*
  %42 = bitcast i8* %35 to i32*
  %43 = getelementptr inbounds i8, i8* %1, i64 68
  %44 = bitcast i8* %43 to i32*
  %45 = getelementptr inbounds i8, i8* %1, i64 72
  %46 = bitcast i8* %45 to i32*
  %47 = getelementptr inbounds i8, i8* %1, i64 76
  %48 = bitcast i8* %47 to i32*
  %49 = bitcast i8* %4 to i32*
  %50 = bitcast i8* %6 to i32*
  %51 = getelementptr inbounds i8, i8* %4, i64 4
  %52 = bitcast i8* %51 to i32*
  %53 = getelementptr inbounds i8, i8* %1, i64 132
  %54 = bitcast i8* %53 to i32*
  %55 = bitcast i8* %23 to i32**
  %56 = bitcast i8* %10 to i32*
  %57 = getelementptr inbounds i8, i8* %1, i64 148
  %58 = bitcast i8* %57 to i32*
  %59 = bitcast i8* %27 to i32**
  br label %while.14.body

while.14.body:                                    ; preds = %while.14.body.lr.ph, %body_computation.17.clone.exit
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(16) %35, i8* nonnull align 16 dereferenceable(16) %4, i64 16, i1 false) #2
  %60 = load i64, i64* %34, align 16
  store i64 %60, i64* %36, align 16
  %61 = load i64*, i64** %37, align 8, !dereferenceable !73, !align !73
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* %39, align 16
  %63 = load i32*, i32** %40, align 16, !dereferenceable !74, !align !74
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %copy.12.i, align 16
  %65 = load i32*, i32** %33, align 16, !dereferenceable !74, !align !74
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %copy.8.i, align 16
  %67 = load i32, i32* %42, align 16, !alias.scope !75, !noalias !77
  %shft.chk.i = icmp ult i32 %67, 32
  %68 = sub i32 32, %67
  %shft.chk1.i = icmp ult i32 %68, 32
  %69 = load i32, i32* %44, align 4, !alias.scope !75, !noalias !77
  %shft.chk2.i = icmp ult i32 %69, 32
  %70 = sub i32 32, %69
  %shft.chk3.i = icmp ult i32 %70, 32
  %71 = load i32, i32* %46, align 8, !alias.scope !75, !noalias !77
  %shft.chk4.i = icmp ult i32 %71, 32
  %72 = sub i32 32, %71
  %shft.chk5.i = icmp ult i32 %72, 32
  %73 = load i32, i32* %48, align 4, !alias.scope !75, !noalias !77
  %shft.chk6.i = icmp ult i32 %73, 32
  %74 = sub i32 32, %73
  %shft.chk7.i = icmp ult i32 %74, 32
  %75 = add i32 %66, 1
  %76 = add i32 %75, %64
  %77 = trunc i64 %62 to i32
  %78 = lshr i64 %62, 32
  %79 = trunc i64 %78 to i32
  %80 = load i32, i32* %49, align 16
  %81 = add i32 %80, %77
  br i1 %shft.chk.i, label %fusion.loop_exit.dim.0.split.us.i, label %fusion.loop_exit.dim.0.split.i

fusion.loop_exit.dim.0.split.us.i:                ; preds = %while.14.body
  %82 = shl i32 %80, %67
  %83 = lshr i32 %80, %68
  %84 = select i1 %shft.chk1.i, i32 %83, i32 0
  %85 = or i32 %84, %82
  %86 = xor i32 %85, %81
  %87 = add i32 %86, %81
  %88 = shl i32 %86, %69
  %89 = select i1 %shft.chk2.i, i32 %88, i32 0
  %90 = lshr i32 %86, %70
  %91 = select i1 %shft.chk3.i, i32 %90, i32 0
  %92 = or i32 %89, %91
  %93 = xor i32 %92, %87
  %94 = add i32 %93, %87
  %95 = shl i32 %93, %71
  %96 = select i1 %shft.chk4.i, i32 %95, i32 0
  %97 = lshr i32 %93, %72
  %98 = select i1 %shft.chk5.i, i32 %97, i32 0
  %99 = or i32 %96, %98
  %100 = xor i32 %99, %94
  %101 = add i32 %100, %94
  %102 = shl i32 %100, %73
  %103 = select i1 %shft.chk6.i, i32 %102, i32 0
  %104 = lshr i32 %100, %74
  %105 = select i1 %shft.chk7.i, i32 %104, i32 0
  %106 = or i32 %103, %105
  %107 = xor i32 %106, %101
  %108 = add i32 %107, %76
  store i32 %108, i32* %50, align 16, !alias.scope !54, !noalias !82
  %109 = load i32, i32* %52, align 4, !alias.scope !83, !noalias !84
  %110 = add i32 %109, %79
  %111 = shl i32 %109, %67
  %112 = lshr i32 %109, %68
  %113 = select i1 %shft.chk1.i, i32 %112, i32 0
  %114 = or i32 %113, %111
  %115 = xor i32 %114, %110
  %116 = add i32 %115, %110
  %117 = shl i32 %115, %69
  %118 = select i1 %shft.chk2.i, i32 %117, i32 0
  %119 = lshr i32 %115, %70
  %120 = select i1 %shft.chk3.i, i32 %119, i32 0
  %121 = or i32 %118, %120
  %122 = xor i32 %121, %116
  %123 = add i32 %122, %116
  %124 = shl i32 %122, %71
  %125 = select i1 %shft.chk4.i, i32 %124, i32 0
  %126 = lshr i32 %122, %72
  %127 = select i1 %shft.chk5.i, i32 %126, i32 0
  %128 = or i32 %125, %127
  %129 = xor i32 %128, %123
  %130 = add i32 %129, %123
  %131 = shl i32 %129, %73
  %132 = select i1 %shft.chk6.i, i32 %131, i32 0
  %133 = lshr i32 %129, %74
  %134 = select i1 %shft.chk7.i, i32 %133, i32 0
  %135 = or i32 %132, %134
  %136 = xor i32 %135, %130
  %137 = add i32 %136, %76
  store i32 %137, i32* %54, align 4, !alias.scope !54, !noalias !82
  %138 = load i32*, i32** %55, align 8, !dereferenceable !74, !align !74
  %139 = load i32, i32* %138, align 4
  store i32 %139, i32* %16, align 16
  %140 = load i32, i32* %49, align 16
  %141 = add i32 %140, %77
  %142 = shl i32 %140, %67
  br i1 %shft.chk1.i, label %fusion.1.loop_body.dim.0.us.us.preheader.i, label %fusion.1.loop_body.dim.0.us.preheader.i

fusion.1.loop_body.dim.0.us.preheader.i:          ; preds = %fusion.loop_exit.dim.0.split.us.i
  %143 = xor i32 %142, %141
  %144 = add i32 %143, %141
  %145 = shl i32 %143, %69
  %146 = select i1 %shft.chk2.i, i32 %145, i32 0
  %147 = lshr i32 %143, %70
  %148 = select i1 %shft.chk3.i, i32 %147, i32 0
  %149 = or i32 %146, %148
  %150 = xor i32 %149, %144
  %151 = add i32 %150, %144
  %152 = shl i32 %150, %71
  %153 = select i1 %shft.chk4.i, i32 %152, i32 0
  %154 = lshr i32 %150, %72
  %155 = select i1 %shft.chk5.i, i32 %154, i32 0
  %156 = or i32 %153, %155
  %157 = xor i32 %156, %151
  %158 = add i32 %151, %139
  %159 = add i32 %158, %157
  store i32 %159, i32* %56, align 16, !alias.scope !65, !noalias !85
  %160 = load i32, i32* %52, align 4, !alias.scope !83, !noalias !84
  %161 = add i32 %160, %79
  %162 = shl i32 %160, %67
  %163 = xor i32 %162, %161
  %164 = add i32 %163, %161
  %165 = shl i32 %163, %69
  %166 = select i1 %shft.chk2.i, i32 %165, i32 0
  %167 = lshr i32 %163, %70
  %168 = select i1 %shft.chk3.i, i32 %167, i32 0
  %169 = or i32 %166, %168
  %170 = xor i32 %169, %164
  %171 = add i32 %170, %164
  %172 = shl i32 %170, %71
  %173 = select i1 %shft.chk4.i, i32 %172, i32 0
  %174 = lshr i32 %170, %72
  %175 = select i1 %shft.chk5.i, i32 %174, i32 0
  %176 = or i32 %173, %175
  %177 = xor i32 %176, %171
  %178 = add i32 %171, %139
  br label %body_computation.17.clone.exit

fusion.1.loop_body.dim.0.us.us.preheader.i:       ; preds = %fusion.loop_exit.dim.0.split.us.i
  %179 = lshr i32 %140, %68
  %180 = or i32 %179, %142
  %181 = xor i32 %180, %141
  %182 = add i32 %181, %141
  %183 = shl i32 %181, %69
  %184 = select i1 %shft.chk2.i, i32 %183, i32 0
  %185 = lshr i32 %181, %70
  %186 = select i1 %shft.chk3.i, i32 %185, i32 0
  %187 = or i32 %184, %186
  %188 = xor i32 %187, %182
  %189 = add i32 %188, %182
  %190 = shl i32 %188, %71
  %191 = select i1 %shft.chk4.i, i32 %190, i32 0
  %192 = lshr i32 %188, %72
  %193 = select i1 %shft.chk5.i, i32 %192, i32 0
  %194 = or i32 %191, %193
  %195 = xor i32 %194, %189
  %196 = add i32 %189, %139
  %197 = add i32 %196, %195
  store i32 %197, i32* %56, align 16, !alias.scope !65, !noalias !85
  %198 = load i32, i32* %52, align 4, !alias.scope !83, !noalias !84
  %199 = add i32 %198, %79
  %200 = shl i32 %198, %67
  %201 = lshr i32 %198, %68
  %202 = or i32 %201, %200
  %203 = xor i32 %202, %199
  %204 = add i32 %203, %199
  %205 = shl i32 %203, %69
  %206 = select i1 %shft.chk2.i, i32 %205, i32 0
  %207 = lshr i32 %203, %70
  %208 = select i1 %shft.chk3.i, i32 %207, i32 0
  %209 = or i32 %206, %208
  %210 = xor i32 %209, %204
  %211 = add i32 %210, %204
  %212 = shl i32 %210, %71
  %213 = select i1 %shft.chk4.i, i32 %212, i32 0
  %214 = lshr i32 %210, %72
  %215 = select i1 %shft.chk5.i, i32 %214, i32 0
  %216 = or i32 %213, %215
  %217 = xor i32 %216, %211
  %218 = add i32 %211, %139
  br label %body_computation.17.clone.exit

fusion.loop_exit.dim.0.split.i:                   ; preds = %while.14.body
  %219 = lshr i32 %80, %68
  %220 = select i1 %shft.chk1.i, i32 %219, i32 0
  %221 = xor i32 %220, %81
  %222 = add i32 %221, %81
  %223 = shl i32 %221, %69
  %224 = select i1 %shft.chk2.i, i32 %223, i32 0
  %225 = lshr i32 %221, %70
  %226 = select i1 %shft.chk3.i, i32 %225, i32 0
  %227 = or i32 %224, %226
  %228 = xor i32 %227, %222
  %229 = add i32 %228, %222
  %230 = shl i32 %228, %71
  %231 = select i1 %shft.chk4.i, i32 %230, i32 0
  %232 = lshr i32 %228, %72
  %233 = select i1 %shft.chk5.i, i32 %232, i32 0
  %234 = or i32 %231, %233
  %235 = xor i32 %234, %229
  %236 = add i32 %235, %229
  %237 = shl i32 %235, %73
  %238 = select i1 %shft.chk6.i, i32 %237, i32 0
  %239 = lshr i32 %235, %74
  %240 = select i1 %shft.chk7.i, i32 %239, i32 0
  %241 = or i32 %238, %240
  %242 = xor i32 %241, %236
  %243 = add i32 %242, %76
  store i32 %243, i32* %50, align 16, !alias.scope !54, !noalias !82
  %244 = load i32, i32* %52, align 4, !alias.scope !83, !noalias !84
  %245 = add i32 %244, %79
  %246 = lshr i32 %244, %68
  %247 = select i1 %shft.chk1.i, i32 %246, i32 0
  %248 = xor i32 %247, %245
  %249 = add i32 %248, %245
  %250 = shl i32 %248, %69
  %251 = select i1 %shft.chk2.i, i32 %250, i32 0
  %252 = lshr i32 %248, %70
  %253 = select i1 %shft.chk3.i, i32 %252, i32 0
  %254 = or i32 %251, %253
  %255 = xor i32 %254, %249
  %256 = add i32 %255, %249
  %257 = shl i32 %255, %71
  %258 = select i1 %shft.chk4.i, i32 %257, i32 0
  %259 = lshr i32 %255, %72
  %260 = select i1 %shft.chk5.i, i32 %259, i32 0
  %261 = or i32 %258, %260
  %262 = xor i32 %261, %256
  %263 = add i32 %262, %256
  %264 = shl i32 %262, %73
  %265 = select i1 %shft.chk6.i, i32 %264, i32 0
  %266 = lshr i32 %262, %74
  %267 = select i1 %shft.chk7.i, i32 %266, i32 0
  %268 = or i32 %265, %267
  %269 = xor i32 %268, %263
  %270 = add i32 %269, %76
  store i32 %270, i32* %54, align 4, !alias.scope !54, !noalias !82
  %271 = load i32*, i32** %55, align 8, !dereferenceable !74, !align !74
  %272 = load i32, i32* %271, align 4
  store i32 %272, i32* %16, align 16
  %273 = load i32, i32* %49, align 16
  %274 = add i32 %273, %77
  br i1 %shft.chk1.i, label %fusion.1.loop_body.dim.0.us3.preheader.i, label %fusion.1.loop_body.dim.0.preheader.i

fusion.1.loop_body.dim.0.preheader.i:             ; preds = %fusion.loop_exit.dim.0.split.i
  %275 = shl i32 %274, 1
  %276 = shl i32 %274, %69
  %277 = select i1 %shft.chk2.i, i32 %276, i32 0
  %278 = lshr i32 %274, %70
  %279 = select i1 %shft.chk3.i, i32 %278, i32 0
  %280 = or i32 %277, %279
  %281 = xor i32 %280, %275
  %282 = add i32 %281, %275
  %283 = shl i32 %281, %71
  %284 = select i1 %shft.chk4.i, i32 %283, i32 0
  %285 = lshr i32 %281, %72
  %286 = select i1 %shft.chk5.i, i32 %285, i32 0
  %287 = or i32 %284, %286
  %288 = xor i32 %287, %282
  %289 = add i32 %282, %272
  %290 = add i32 %289, %288
  store i32 %290, i32* %56, align 16, !alias.scope !65, !noalias !85
  %291 = load i32, i32* %52, align 4, !alias.scope !83, !noalias !84
  %292 = add i32 %291, %79
  %293 = shl i32 %292, 1
  %294 = shl i32 %292, %69
  %295 = select i1 %shft.chk2.i, i32 %294, i32 0
  %296 = lshr i32 %292, %70
  %297 = select i1 %shft.chk3.i, i32 %296, i32 0
  %298 = or i32 %295, %297
  %299 = xor i32 %298, %293
  %300 = add i32 %299, %293
  %301 = shl i32 %299, %71
  %302 = select i1 %shft.chk4.i, i32 %301, i32 0
  %303 = lshr i32 %299, %72
  %304 = select i1 %shft.chk5.i, i32 %303, i32 0
  %305 = or i32 %302, %304
  %306 = xor i32 %305, %300
  %307 = add i32 %300, %272
  br label %body_computation.17.clone.exit

fusion.1.loop_body.dim.0.us3.preheader.i:         ; preds = %fusion.loop_exit.dim.0.split.i
  %308 = lshr i32 %273, %68
  %309 = xor i32 %308, %274
  %310 = add i32 %309, %274
  %311 = shl i32 %309, %69
  %312 = select i1 %shft.chk2.i, i32 %311, i32 0
  %313 = lshr i32 %309, %70
  %314 = select i1 %shft.chk3.i, i32 %313, i32 0
  %315 = or i32 %312, %314
  %316 = xor i32 %315, %310
  %317 = add i32 %316, %310
  %318 = shl i32 %316, %71
  %319 = select i1 %shft.chk4.i, i32 %318, i32 0
  %320 = lshr i32 %316, %72
  %321 = select i1 %shft.chk5.i, i32 %320, i32 0
  %322 = or i32 %319, %321
  %323 = xor i32 %322, %317
  %324 = add i32 %317, %272
  %325 = add i32 %324, %323
  store i32 %325, i32* %56, align 16, !alias.scope !65, !noalias !85
  %326 = load i32, i32* %52, align 4, !alias.scope !83, !noalias !84
  %327 = add i32 %326, %79
  %328 = lshr i32 %326, %68
  %329 = xor i32 %328, %327
  %330 = add i32 %329, %327
  %331 = shl i32 %329, %69
  %332 = select i1 %shft.chk2.i, i32 %331, i32 0
  %333 = lshr i32 %329, %70
  %334 = select i1 %shft.chk3.i, i32 %333, i32 0
  %335 = or i32 %332, %334
  %336 = xor i32 %335, %330
  %337 = add i32 %336, %330
  %338 = shl i32 %336, %71
  %339 = select i1 %shft.chk4.i, i32 %338, i32 0
  %340 = lshr i32 %336, %72
  %341 = select i1 %shft.chk5.i, i32 %340, i32 0
  %342 = or i32 %339, %341
  %343 = xor i32 %342, %337
  %344 = add i32 %337, %272
  br label %body_computation.17.clone.exit

body_computation.17.clone.exit:                   ; preds = %fusion.1.loop_body.dim.0.us.preheader.i, %fusion.1.loop_body.dim.0.us.us.preheader.i, %fusion.1.loop_body.dim.0.preheader.i, %fusion.1.loop_body.dim.0.us3.preheader.i
  %.sink566 = phi i32 [ %177, %fusion.1.loop_body.dim.0.us.preheader.i ], [ %217, %fusion.1.loop_body.dim.0.us.us.preheader.i ], [ %306, %fusion.1.loop_body.dim.0.preheader.i ], [ %343, %fusion.1.loop_body.dim.0.us3.preheader.i ]
  %.sink565 = phi i32 [ %178, %fusion.1.loop_body.dim.0.us.preheader.i ], [ %218, %fusion.1.loop_body.dim.0.us.us.preheader.i ], [ %307, %fusion.1.loop_body.dim.0.preheader.i ], [ %344, %fusion.1.loop_body.dim.0.us3.preheader.i ]
  %345 = phi i32 [ %139, %fusion.1.loop_body.dim.0.us.preheader.i ], [ %139, %fusion.1.loop_body.dim.0.us.us.preheader.i ], [ %272, %fusion.1.loop_body.dim.0.preheader.i ], [ %272, %fusion.1.loop_body.dim.0.us3.preheader.i ]
  %346 = add i32 %.sink565, %.sink566
  store i32 %346, i32* %58, align 4, !alias.scope !65, !noalias !85
  %347 = load i8*, i8** %32, align 8, !dereferenceable !2, !align !2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(16) %38, i8* nonnull align 16 dereferenceable(16) %347, i64 16, i1 false) #2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(16) %5, i8* nonnull align 16 dereferenceable(16) %35, i64 16, i1 false) #2
  store i32 %75, i32* %copy, align 16, !alias.scope !86, !noalias !87
  store i32 %64, i32* %copy.97, align 16
  %348 = load i32*, i32** %59, align 8, !dereferenceable !74, !align !74
  %349 = load i32, i32* %348, align 4
  store i32 %349, i32* %42, align 16
  store i32 %345, i32* %copy.5, align 16
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(16) %4, i8* nonnull align 16 dereferenceable(16) %38, i64 16, i1 false) #2
  %350 = load i32, i32* %42, align 16
  store i32 %350, i32* %16, align 16
  store i8* %14, i8** %18, align 16, !alias.scope !67, !noalias !68
  store i8* %10, i8** %20, align 8, !alias.scope !67, !noalias !68
  store i8* %6, i8** %22, align 16, !alias.scope !67, !noalias !68
  store i8* %2, i8** %24, align 8, !alias.scope !67, !noalias !68
  store i8* %15, i8** %26, align 16, !alias.scope !67, !noalias !68
  store i8* %3, i8** %28, align 8, !alias.scope !67, !noalias !68
  store i8* %4, i8** %30, align 16, !alias.scope !67, !noalias !68
  store i8* %5, i8** %32, align 8, !alias.scope !67, !noalias !68
  %351 = load i32, i32* %copy, align 16, !alias.scope !86, !noalias !89
  %352 = icmp slt i32 %351, 5
  %353 = zext i1 %352 to i8
  store i8 %353, i8* %compare.12.i, align 16, !alias.scope !69, !noalias !71
  br i1 %352, label %while.14.body, label %while.15.body.lr.ph

while.15.body.lr.ph:                              ; preds = %body_computation.17.clone.exit
  %.pre = load i32, i32* %9, align 4, !alias.scope !54, !noalias !90
  %.pre160 = load i32, i32* %7, align 16, !alias.scope !54, !noalias !90
  %354 = add i32 %.pre, 2
  %355 = bitcast i8* %compare.12.i to i32*
  store i32 %354, i32* %355, align 16, !alias.scope !93, !noalias !94
  %356 = add i32 %.pre, 3
  %357 = getelementptr inbounds i8, i8* %1, i64 116
  %358 = bitcast i8* %357 to i32*
  store i32 %356, i32* %358, align 4, !alias.scope !93, !noalias !94
  %359 = bitcast i8* %15 to i32*
  store i32 %.pre160, i32* %359, align 16, !alias.scope !97, !noalias !98
  %360 = add i32 %.pre160, 1
  %361 = getelementptr inbounds i8, i8* %1, i64 164
  %362 = bitcast i8* %361 to i32*
  store i32 %360, i32* %362, align 4, !alias.scope !97, !noalias !98
  %363 = xor i32 %.pre160, 466688986
  %364 = xor i32 %363, %.pre
  store i32 %364, i32* %copy, align 16, !alias.scope !86, !noalias !99
  store i32 %.pre, i32* %copy.5, align 16, !alias.scope !100, !noalias !101
  store i32 %.pre160, i32* %copy.97, align 16, !alias.scope !102, !noalias !103
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(16) %4, i8* nonnull align 16 dereferenceable(16) getelementptr inbounds ([16 x i8], [16 x i8]* @0, i64 0, i64 0), i64 16, i1 false)
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(16) %5, i8* nonnull align 16 dereferenceable(16) getelementptr inbounds ([16 x i8], [16 x i8]* @1, i64 0, i64 0), i64 16, i1 false)
  %365 = getelementptr inbounds i8, i8* %1, i64 240
  %copy.24 = bitcast i8* %365 to i32*
  store i32 0, i32* %copy.24, align 16
  %366 = getelementptr inbounds i8, i8* %1, i64 33554944
  %367 = bitcast i8* %366 to i8**
  store i8* %365, i8** %367, align 16, !alias.scope !104, !noalias !105
  %368 = getelementptr inbounds i8, i8* %1, i64 33554952
  %369 = bitcast i8* %368 to i8**
  store i8* %15, i8** %369, align 8, !alias.scope !104, !noalias !105
  %370 = getelementptr inbounds i8, i8* %1, i64 33554960
  %371 = bitcast i8* %370 to i8**
  store i8* %compare.12.i, i8** %371, align 16, !alias.scope !104, !noalias !105
  %372 = getelementptr inbounds i8, i8* %1, i64 33554968
  %373 = bitcast i8* %372 to i8**
  store i8* %3, i8** %373, align 8, !alias.scope !104, !noalias !105
  %374 = getelementptr inbounds i8, i8* %1, i64 33554976
  %375 = bitcast i8* %374 to i8**
  store i8* %14, i8** %375, align 16, !alias.scope !104, !noalias !105
  %376 = getelementptr inbounds i8, i8* %1, i64 33554984
  %377 = bitcast i8* %376 to i8**
  store i8* %2, i8** %377, align 8, !alias.scope !104, !noalias !105
  %378 = getelementptr inbounds i8, i8* %1, i64 33554992
  %379 = bitcast i8* %378 to i8**
  store i8* %4, i8** %379, align 16, !alias.scope !104, !noalias !105
  %380 = getelementptr inbounds i8, i8* %1, i64 33555000
  %381 = bitcast i8* %380 to i8**
  store i8* %5, i8** %381, align 8, !alias.scope !104, !noalias !105
  %382 = bitcast i8* %366 to i32**
  %compare.13.i = getelementptr inbounds i8, i8* %1, i64 176
  store i8 1, i8* %compare.13.i, align 16, !alias.scope !106, !noalias !108
  %383 = bitcast i8* %15 to i64*
  %384 = bitcast i8* %compare.12.i to i64*
  %385 = getelementptr inbounds i8, i8* %1, i64 64
  %386 = getelementptr inbounds i8, i8* %1, i64 80
  %387 = bitcast i8* %386 to i64*
  %388 = bitcast i8* %4 to i64*
  %copy.32.i = bitcast i8* %10 to i32*
  %389 = bitcast i8* %374 to i32**
  %copy.36.i = bitcast i8* %compare.13.i to i32*
  %390 = bitcast i8* %385 to i32*
  %391 = getelementptr inbounds i8, i8* %1, i64 68
  %392 = bitcast i8* %391 to i32*
  %393 = getelementptr inbounds i8, i8* %1, i64 72
  %394 = bitcast i8* %393 to i32*
  %395 = getelementptr inbounds i8, i8* %1, i64 76
  %396 = bitcast i8* %395 to i32*
  %397 = bitcast i8* %386 to i32*
  %398 = bitcast i8* %4 to i32*
  %399 = bitcast i8* %compare.12.i to i32*
  %400 = getelementptr inbounds i8, i8* %1, i64 84
  %401 = bitcast i8* %400 to i32*
  %402 = getelementptr inbounds i8, i8* %4, i64 4
  %403 = bitcast i8* %402 to i32*
  %404 = getelementptr inbounds i8, i8* %1, i64 116
  %405 = bitcast i8* %404 to i32*
  %406 = bitcast i8* %372 to i32**
  %copy.35.i = bitcast i8* %6 to i32*
  %407 = getelementptr inbounds i8, i8* %1, i64 164
  %408 = bitcast i8* %407 to i32*
  %409 = bitcast i8* %376 to i32**
  br label %while.15.body

while.15.body:                                    ; preds = %while.15.body.lr.ph, %body_computation__1.160.clone.exit
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(16) %385, i8* nonnull align 16 dereferenceable(16) %4, i64 16, i1 false) #2
  %410 = load i64, i64* %383, align 16
  store i64 %410, i64* %387, align 16
  %411 = load i64, i64* %384, align 16
  store i64 %411, i64* %388, align 16
  %412 = load i32*, i32** %382, align 16, !dereferenceable !74, !align !74
  %413 = load i32, i32* %412, align 4
  store i32 %413, i32* %copy.32.i, align 16
  %414 = load i32*, i32** %389, align 16, !dereferenceable !74, !align !74
  %415 = load i32, i32* %414, align 4
  store i32 %415, i32* %copy.36.i, align 16
  %416 = load i32, i32* %390, align 16, !alias.scope !75, !noalias !110
  %shft.chk.i85 = icmp ult i32 %416, 32
  %417 = sub i32 32, %416
  %shft.chk1.i86 = icmp ult i32 %417, 32
  %418 = load i32, i32* %392, align 4, !alias.scope !75, !noalias !110
  %shft.chk2.i87 = icmp ult i32 %418, 32
  %419 = sub i32 32, %418
  %shft.chk3.i88 = icmp ult i32 %419, 32
  %420 = load i32, i32* %394, align 8, !alias.scope !75, !noalias !110
  %shft.chk4.i89 = icmp ult i32 %420, 32
  %421 = sub i32 32, %420
  %shft.chk5.i90 = icmp ult i32 %421, 32
  %422 = load i32, i32* %396, align 4, !alias.scope !75, !noalias !110
  %shft.chk6.i91 = icmp ult i32 %422, 32
  %423 = sub i32 32, %422
  %shft.chk7.i92 = icmp ult i32 %423, 32
  %424 = add i32 %413, 1
  %425 = add i32 %415, %424
  %426 = load i32, i32* %397, align 16
  %427 = load i32, i32* %398, align 16
  %428 = add i32 %427, %426
  br i1 %shft.chk.i85, label %fusion.2.loop_exit.dim.0.split.us.i, label %fusion.2.loop_exit.dim.0.split.i

fusion.2.loop_exit.dim.0.split.us.i:              ; preds = %while.15.body
  %429 = shl i32 %427, %416
  %430 = lshr i32 %427, %417
  %431 = select i1 %shft.chk1.i86, i32 %430, i32 0
  %432 = or i32 %431, %429
  %433 = xor i32 %432, %428
  %434 = add i32 %433, %428
  %435 = shl i32 %433, %418
  %436 = select i1 %shft.chk2.i87, i32 %435, i32 0
  %437 = lshr i32 %433, %419
  %438 = select i1 %shft.chk3.i88, i32 %437, i32 0
  %439 = or i32 %436, %438
  %440 = xor i32 %439, %434
  %441 = add i32 %440, %434
  %442 = shl i32 %440, %420
  %443 = select i1 %shft.chk4.i89, i32 %442, i32 0
  %444 = lshr i32 %440, %421
  %445 = select i1 %shft.chk5.i90, i32 %444, i32 0
  %446 = or i32 %443, %445
  %447 = xor i32 %446, %441
  %448 = add i32 %447, %441
  %449 = shl i32 %447, %422
  %450 = select i1 %shft.chk6.i91, i32 %449, i32 0
  %451 = lshr i32 %447, %423
  %452 = select i1 %shft.chk7.i92, i32 %451, i32 0
  %453 = or i32 %450, %452
  %454 = xor i32 %453, %448
  %455 = add i32 %454, %425
  store i32 %455, i32* %399, align 16, !alias.scope !93, !noalias !113
  %456 = load i32, i32* %401, align 4, !alias.scope !114, !noalias !115
  %457 = load i32, i32* %403, align 4, !alias.scope !83, !noalias !116
  %458 = add i32 %457, %456
  %459 = shl i32 %457, %416
  %460 = lshr i32 %457, %417
  %461 = select i1 %shft.chk1.i86, i32 %460, i32 0
  %462 = or i32 %461, %459
  %463 = xor i32 %462, %458
  %464 = add i32 %463, %458
  %465 = shl i32 %463, %418
  %466 = select i1 %shft.chk2.i87, i32 %465, i32 0
  %467 = lshr i32 %463, %419
  %468 = select i1 %shft.chk3.i88, i32 %467, i32 0
  %469 = or i32 %466, %468
  %470 = xor i32 %469, %464
  %471 = add i32 %470, %464
  %472 = shl i32 %470, %420
  %473 = select i1 %shft.chk4.i89, i32 %472, i32 0
  %474 = lshr i32 %470, %421
  %475 = select i1 %shft.chk5.i90, i32 %474, i32 0
  %476 = or i32 %473, %475
  %477 = xor i32 %476, %471
  %478 = add i32 %477, %471
  %479 = shl i32 %477, %422
  %480 = select i1 %shft.chk6.i91, i32 %479, i32 0
  %481 = lshr i32 %477, %423
  %482 = select i1 %shft.chk7.i92, i32 %481, i32 0
  %483 = or i32 %480, %482
  %484 = xor i32 %483, %478
  %485 = add i32 %484, %425
  store i32 %485, i32* %405, align 4, !alias.scope !93, !noalias !113
  %486 = load i32*, i32** %406, align 8, !dereferenceable !74, !align !74
  %487 = load i32, i32* %486, align 4
  store i32 %487, i32* %copy.35.i, align 16
  %488 = load i32, i32* %398, align 16
  %489 = add i32 %488, %426
  %490 = shl i32 %488, %416
  br i1 %shft.chk1.i86, label %fusion.3.loop_body.dim.0.us.us.preheader.i, label %fusion.3.loop_body.dim.0.us.preheader.i

fusion.3.loop_body.dim.0.us.preheader.i:          ; preds = %fusion.2.loop_exit.dim.0.split.us.i
  %491 = xor i32 %490, %489
  %492 = add i32 %491, %489
  %493 = shl i32 %491, %418
  %494 = select i1 %shft.chk2.i87, i32 %493, i32 0
  %495 = lshr i32 %491, %419
  %496 = select i1 %shft.chk3.i88, i32 %495, i32 0
  %497 = or i32 %494, %496
  %498 = xor i32 %497, %492
  %499 = add i32 %498, %492
  %500 = shl i32 %498, %420
  %501 = select i1 %shft.chk4.i89, i32 %500, i32 0
  %502 = lshr i32 %498, %421
  %503 = select i1 %shft.chk5.i90, i32 %502, i32 0
  %504 = or i32 %501, %503
  %505 = xor i32 %504, %499
  %506 = add i32 %499, %487
  %507 = add i32 %506, %505
  store i32 %507, i32* %16, align 16, !alias.scope !97, !noalias !117
  %508 = load i32, i32* %403, align 4, !alias.scope !83, !noalias !116
  %509 = add i32 %508, %456
  %510 = shl i32 %508, %416
  %511 = xor i32 %510, %509
  %512 = add i32 %511, %509
  %513 = shl i32 %511, %418
  %514 = select i1 %shft.chk2.i87, i32 %513, i32 0
  %515 = lshr i32 %511, %419
  %516 = select i1 %shft.chk3.i88, i32 %515, i32 0
  %517 = or i32 %514, %516
  %518 = xor i32 %517, %512
  %519 = add i32 %518, %512
  %520 = shl i32 %518, %420
  %521 = select i1 %shft.chk4.i89, i32 %520, i32 0
  %522 = lshr i32 %518, %421
  %523 = select i1 %shft.chk5.i90, i32 %522, i32 0
  %524 = or i32 %521, %523
  %525 = xor i32 %524, %519
  %526 = add i32 %519, %487
  br label %body_computation__1.160.clone.exit

fusion.3.loop_body.dim.0.us.us.preheader.i:       ; preds = %fusion.2.loop_exit.dim.0.split.us.i
  %527 = lshr i32 %488, %417
  %528 = or i32 %527, %490
  %529 = xor i32 %528, %489
  %530 = add i32 %529, %489
  %531 = shl i32 %529, %418
  %532 = select i1 %shft.chk2.i87, i32 %531, i32 0
  %533 = lshr i32 %529, %419
  %534 = select i1 %shft.chk3.i88, i32 %533, i32 0
  %535 = or i32 %532, %534
  %536 = xor i32 %535, %530
  %537 = add i32 %536, %530
  %538 = shl i32 %536, %420
  %539 = select i1 %shft.chk4.i89, i32 %538, i32 0
  %540 = lshr i32 %536, %421
  %541 = select i1 %shft.chk5.i90, i32 %540, i32 0
  %542 = or i32 %539, %541
  %543 = xor i32 %542, %537
  %544 = add i32 %537, %487
  %545 = add i32 %544, %543
  store i32 %545, i32* %16, align 16, !alias.scope !97, !noalias !117
  %546 = load i32, i32* %403, align 4, !alias.scope !83, !noalias !116
  %547 = add i32 %546, %456
  %548 = shl i32 %546, %416
  %549 = lshr i32 %546, %417
  %550 = or i32 %549, %548
  %551 = xor i32 %550, %547
  %552 = add i32 %551, %547
  %553 = shl i32 %551, %418
  %554 = select i1 %shft.chk2.i87, i32 %553, i32 0
  %555 = lshr i32 %551, %419
  %556 = select i1 %shft.chk3.i88, i32 %555, i32 0
  %557 = or i32 %554, %556
  %558 = xor i32 %557, %552
  %559 = add i32 %558, %552
  %560 = shl i32 %558, %420
  %561 = select i1 %shft.chk4.i89, i32 %560, i32 0
  %562 = lshr i32 %558, %421
  %563 = select i1 %shft.chk5.i90, i32 %562, i32 0
  %564 = or i32 %561, %563
  %565 = xor i32 %564, %559
  %566 = add i32 %559, %487
  br label %body_computation__1.160.clone.exit

fusion.2.loop_exit.dim.0.split.i:                 ; preds = %while.15.body
  %567 = lshr i32 %427, %417
  %568 = select i1 %shft.chk1.i86, i32 %567, i32 0
  %569 = xor i32 %568, %428
  %570 = add i32 %569, %428
  %571 = shl i32 %569, %418
  %572 = select i1 %shft.chk2.i87, i32 %571, i32 0
  %573 = lshr i32 %569, %419
  %574 = select i1 %shft.chk3.i88, i32 %573, i32 0
  %575 = or i32 %572, %574
  %576 = xor i32 %575, %570
  %577 = add i32 %576, %570
  %578 = shl i32 %576, %420
  %579 = select i1 %shft.chk4.i89, i32 %578, i32 0
  %580 = lshr i32 %576, %421
  %581 = select i1 %shft.chk5.i90, i32 %580, i32 0
  %582 = or i32 %579, %581
  %583 = xor i32 %582, %577
  %584 = add i32 %583, %577
  %585 = shl i32 %583, %422
  %586 = select i1 %shft.chk6.i91, i32 %585, i32 0
  %587 = lshr i32 %583, %423
  %588 = select i1 %shft.chk7.i92, i32 %587, i32 0
  %589 = or i32 %586, %588
  %590 = xor i32 %589, %584
  %591 = add i32 %590, %425
  store i32 %591, i32* %399, align 16, !alias.scope !93, !noalias !113
  %592 = load i32, i32* %401, align 4, !alias.scope !114, !noalias !115
  %593 = load i32, i32* %403, align 4, !alias.scope !83, !noalias !116
  %594 = add i32 %593, %592
  %595 = lshr i32 %593, %417
  %596 = select i1 %shft.chk1.i86, i32 %595, i32 0
  %597 = xor i32 %596, %594
  %598 = add i32 %597, %594
  %599 = shl i32 %597, %418
  %600 = select i1 %shft.chk2.i87, i32 %599, i32 0
  %601 = lshr i32 %597, %419
  %602 = select i1 %shft.chk3.i88, i32 %601, i32 0
  %603 = or i32 %600, %602
  %604 = xor i32 %603, %598
  %605 = add i32 %604, %598
  %606 = shl i32 %604, %420
  %607 = select i1 %shft.chk4.i89, i32 %606, i32 0
  %608 = lshr i32 %604, %421
  %609 = select i1 %shft.chk5.i90, i32 %608, i32 0
  %610 = or i32 %607, %609
  %611 = xor i32 %610, %605
  %612 = add i32 %611, %605
  %613 = shl i32 %611, %422
  %614 = select i1 %shft.chk6.i91, i32 %613, i32 0
  %615 = lshr i32 %611, %423
  %616 = select i1 %shft.chk7.i92, i32 %615, i32 0
  %617 = or i32 %614, %616
  %618 = xor i32 %617, %612
  %619 = add i32 %618, %425
  store i32 %619, i32* %405, align 4, !alias.scope !93, !noalias !113
  %620 = load i32*, i32** %406, align 8, !dereferenceable !74, !align !74
  %621 = load i32, i32* %620, align 4
  store i32 %621, i32* %copy.35.i, align 16
  %622 = load i32, i32* %398, align 16
  %623 = add i32 %622, %426
  br i1 %shft.chk1.i86, label %fusion.3.loop_body.dim.0.us3.preheader.i, label %fusion.3.loop_body.dim.0.preheader.i

fusion.3.loop_body.dim.0.preheader.i:             ; preds = %fusion.2.loop_exit.dim.0.split.i
  %624 = shl i32 %623, 1
  %625 = shl i32 %623, %418
  %626 = select i1 %shft.chk2.i87, i32 %625, i32 0
  %627 = lshr i32 %623, %419
  %628 = select i1 %shft.chk3.i88, i32 %627, i32 0
  %629 = or i32 %626, %628
  %630 = xor i32 %629, %624
  %631 = add i32 %630, %624
  %632 = shl i32 %630, %420
  %633 = select i1 %shft.chk4.i89, i32 %632, i32 0
  %634 = lshr i32 %630, %421
  %635 = select i1 %shft.chk5.i90, i32 %634, i32 0
  %636 = or i32 %633, %635
  %637 = xor i32 %636, %631
  %638 = add i32 %631, %621
  %639 = add i32 %638, %637
  store i32 %639, i32* %16, align 16, !alias.scope !97, !noalias !117
  %640 = load i32, i32* %403, align 4, !alias.scope !83, !noalias !116
  %641 = add i32 %640, %592
  %642 = shl i32 %641, 1
  %643 = shl i32 %641, %418
  %644 = select i1 %shft.chk2.i87, i32 %643, i32 0
  %645 = lshr i32 %641, %419
  %646 = select i1 %shft.chk3.i88, i32 %645, i32 0
  %647 = or i32 %644, %646
  %648 = xor i32 %647, %642
  %649 = add i32 %648, %642
  %650 = shl i32 %648, %420
  %651 = select i1 %shft.chk4.i89, i32 %650, i32 0
  %652 = lshr i32 %648, %421
  %653 = select i1 %shft.chk5.i90, i32 %652, i32 0
  %654 = or i32 %651, %653
  %655 = xor i32 %654, %649
  %656 = add i32 %649, %621
  br label %body_computation__1.160.clone.exit

fusion.3.loop_body.dim.0.us3.preheader.i:         ; preds = %fusion.2.loop_exit.dim.0.split.i
  %657 = lshr i32 %622, %417
  %658 = xor i32 %657, %623
  %659 = add i32 %658, %623
  %660 = shl i32 %658, %418
  %661 = select i1 %shft.chk2.i87, i32 %660, i32 0
  %662 = lshr i32 %658, %419
  %663 = select i1 %shft.chk3.i88, i32 %662, i32 0
  %664 = or i32 %661, %663
  %665 = xor i32 %664, %659
  %666 = add i32 %665, %659
  %667 = shl i32 %665, %420
  %668 = select i1 %shft.chk4.i89, i32 %667, i32 0
  %669 = lshr i32 %665, %421
  %670 = select i1 %shft.chk5.i90, i32 %669, i32 0
  %671 = or i32 %668, %670
  %672 = xor i32 %671, %666
  %673 = add i32 %666, %621
  %674 = add i32 %673, %672
  store i32 %674, i32* %16, align 16, !alias.scope !97, !noalias !117
  %675 = load i32, i32* %403, align 4, !alias.scope !83, !noalias !116
  %676 = add i32 %675, %592
  %677 = lshr i32 %675, %417
  %678 = xor i32 %677, %676
  %679 = add i32 %678, %676
  %680 = shl i32 %678, %418
  %681 = select i1 %shft.chk2.i87, i32 %680, i32 0
  %682 = lshr i32 %678, %419
  %683 = select i1 %shft.chk3.i88, i32 %682, i32 0
  %684 = or i32 %681, %683
  %685 = xor i32 %684, %679
  %686 = add i32 %685, %679
  %687 = shl i32 %685, %420
  %688 = select i1 %shft.chk4.i89, i32 %687, i32 0
  %689 = lshr i32 %685, %421
  %690 = select i1 %shft.chk5.i90, i32 %689, i32 0
  %691 = or i32 %688, %690
  %692 = xor i32 %691, %686
  %693 = add i32 %686, %621
  br label %body_computation__1.160.clone.exit

body_computation__1.160.clone.exit:               ; preds = %fusion.3.loop_body.dim.0.us.preheader.i, %fusion.3.loop_body.dim.0.us.us.preheader.i, %fusion.3.loop_body.dim.0.preheader.i, %fusion.3.loop_body.dim.0.us3.preheader.i
  %.sink568 = phi i32 [ %525, %fusion.3.loop_body.dim.0.us.preheader.i ], [ %565, %fusion.3.loop_body.dim.0.us.us.preheader.i ], [ %655, %fusion.3.loop_body.dim.0.preheader.i ], [ %692, %fusion.3.loop_body.dim.0.us3.preheader.i ]
  %.sink567 = phi i32 [ %526, %fusion.3.loop_body.dim.0.us.preheader.i ], [ %566, %fusion.3.loop_body.dim.0.us.us.preheader.i ], [ %656, %fusion.3.loop_body.dim.0.preheader.i ], [ %693, %fusion.3.loop_body.dim.0.us3.preheader.i ]
  %694 = phi i32 [ %487, %fusion.3.loop_body.dim.0.us.preheader.i ], [ %487, %fusion.3.loop_body.dim.0.us.us.preheader.i ], [ %621, %fusion.3.loop_body.dim.0.preheader.i ], [ %621, %fusion.3.loop_body.dim.0.us3.preheader.i ]
  %695 = add i32 %.sink567, %.sink568
  store i32 %695, i32* %408, align 4, !alias.scope !97, !noalias !117
  %696 = load i8*, i8** %381, align 8, !dereferenceable !2, !align !2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(16) %386, i8* nonnull align 16 dereferenceable(16) %696, i64 16, i1 false) #2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(16) %5, i8* nonnull align 16 dereferenceable(16) %385, i64 16, i1 false) #2
  store i32 %424, i32* %copy.24, align 16, !alias.scope !118, !noalias !119
  store i32 %415, i32* %copy.5, align 16
  %697 = load i32*, i32** %409, align 8, !dereferenceable !74, !align !74
  %698 = load i32, i32* %697, align 4
  store i32 %698, i32* %390, align 16
  store i32 %694, i32* %copy.97, align 16
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(16) %4, i8* nonnull align 16 dereferenceable(16) %386, i64 16, i1 false) #2
  %699 = load i32, i32* %390, align 16
  store i32 %699, i32* %copy, align 16
  store i8* %365, i8** %367, align 16, !alias.scope !104, !noalias !105
  store i8* %15, i8** %369, align 8, !alias.scope !104, !noalias !105
  store i8* %compare.12.i, i8** %371, align 16, !alias.scope !104, !noalias !105
  store i8* %3, i8** %373, align 8, !alias.scope !104, !noalias !105
  store i8* %14, i8** %375, align 16, !alias.scope !104, !noalias !105
  store i8* %2, i8** %377, align 8, !alias.scope !104, !noalias !105
  store i8* %4, i8** %379, align 16, !alias.scope !104, !noalias !105
  store i8* %5, i8** %381, align 8, !alias.scope !104, !noalias !105
  %700 = load i32, i32* %copy.24, align 16, !alias.scope !118, !noalias !121
  %701 = icmp slt i32 %700, 5
  %702 = zext i1 %701 to i8
  store i8 %702, i8* %compare.13.i, align 16, !alias.scope !106, !noalias !108
  br i1 %701, label %while.15.body, label %while.17.body.lr.ph

while.17.body.lr.ph:                              ; preds = %body_computation__1.160.clone.exit
  %703 = bitcast i8* %357 to <4 x i32>*
  %704 = load <4 x i32>, <4 x i32>* %703, align 4
  %705 = shufflevector <4 x i32> %704, <4 x i32> undef, <8 x i32> <i32 0, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %.pre162 = load i32, i32* %358, align 4, !alias.scope !93, !noalias !122
  %706 = bitcast i8* %compare.12.i to <4 x i32>*
  %707 = load <4 x i32>, <4 x i32>* %706, align 16
  %708 = shufflevector <4 x i32> %707, <4 x i32> undef, <8 x i32> <i32 0, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %.pre164 = load i32, i32* %355, align 16, !alias.scope !93, !noalias !122
  %709 = getelementptr inbounds i8, i8* %1, i64 33554752
  %fusion.12 = bitcast i8* %709 to [16 x i32]*
  %710 = insertelement <8 x i32> %705, i32 %.pre162, i32 1
  %711 = insertelement <8 x i32> %710, i32 %.pre162, i32 2
  %712 = insertelement <8 x i32> %711, i32 %.pre162, i32 3
  %713 = insertelement <8 x i32> %712, i32 %.pre162, i32 4
  %714 = insertelement <8 x i32> %713, i32 %.pre162, i32 5
  %715 = insertelement <8 x i32> %714, i32 %.pre162, i32 6
  %716 = insertelement <8 x i32> %715, i32 %.pre162, i32 7
  %717 = add <8 x i32> %716, <i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23>
  %718 = bitcast i8* %709 to <8 x i32>*
  store <8 x i32> %717, <8 x i32>* %718, align 16, !alias.scope !123, !noalias !124
  %719 = getelementptr inbounds i8, i8* %1, i64 33554784
  %720 = add <8 x i32> %716, <i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31>
  %721 = bitcast i8* %719 to <8 x i32>*
  store <8 x i32> %720, <8 x i32>* %721, align 16, !alias.scope !123, !noalias !124
  %722 = getelementptr inbounds i8, i8* %1, i64 33554816
  %fusion.14 = bitcast i8* %722 to [16 x i32]*
  %723 = bitcast i8* %722 to i32*
  store i32 %.pre164, i32* %723, align 16, !alias.scope !128, !noalias !129
  %724 = getelementptr inbounds i8, i8* %1, i64 33554820
  %725 = insertelement <8 x i32> %708, i32 %.pre164, i32 1
  %726 = insertelement <8 x i32> %725, i32 %.pre164, i32 2
  %727 = insertelement <8 x i32> %726, i32 %.pre164, i32 3
  %728 = insertelement <8 x i32> %727, i32 %.pre164, i32 4
  %729 = insertelement <8 x i32> %728, i32 %.pre164, i32 5
  %730 = insertelement <8 x i32> %729, i32 %.pre164, i32 6
  %731 = insertelement <8 x i32> %730, i32 %.pre164, i32 7
  %732 = add <8 x i32> %731, <i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8>
  %733 = getelementptr inbounds i8, i8* %1, i64 33554848
  %734 = bitcast i8* %724 to <8 x i32>*
  store <8 x i32> %732, <8 x i32>* %734, align 4, !alias.scope !128, !noalias !129
  %735 = getelementptr inbounds i8, i8* %1, i64 33554852
  %736 = insertelement <4 x i32> %707, i32 %.pre164, i32 1
  %737 = insertelement <4 x i32> %736, i32 %.pre164, i32 2
  %738 = insertelement <4 x i32> %737, i32 %.pre164, i32 3
  %739 = add <4 x i32> %738, <i32 9, i32 10, i32 11, i32 12>
  %740 = bitcast i8* %735 to <4 x i32>*
  store <4 x i32> %739, <4 x i32>* %740, align 4, !alias.scope !128, !noalias !129
  %741 = add i32 %.pre164, 13
  %742 = getelementptr inbounds i8, i8* %1, i64 33554868
  %743 = bitcast i8* %742 to i32*
  store i32 %741, i32* %743, align 4, !alias.scope !128, !noalias !129
  %744 = add i32 %.pre164, 14
  %745 = getelementptr inbounds i8, i8* %1, i64 33554872
  %746 = bitcast i8* %745 to i32*
  store i32 %744, i32* %746, align 8, !alias.scope !128, !noalias !129
  %747 = add i32 %.pre164, 15
  %748 = getelementptr inbounds i8, i8* %1, i64 33554876
  %749 = bitcast i8* %748 to i32*
  store i32 %747, i32* %749, align 4, !alias.scope !128, !noalias !129
  %750 = load i32, i32* %355, align 16, !alias.scope !93, !noalias !122
  %751 = load i32, i32* %358, align 4, !alias.scope !93, !noalias !122
  %752 = xor i32 %750, 466688986
  %753 = xor i32 %752, %751
  store i32 %753, i32* %copy.36.i, align 16, !alias.scope !130, !noalias !131
  store i32 %751, i32* %copy.97, align 16, !alias.scope !102, !noalias !132
  store i32 %750, i32* %copy.24, align 16, !alias.scope !118, !noalias !133
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(16) %4, i8* nonnull align 16 dereferenceable(16) getelementptr inbounds ([16 x i8], [16 x i8]* @0, i64 0, i64 0), i64 16, i1 false)
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(16) %10, i8* nonnull align 16 dereferenceable(16) getelementptr inbounds ([16 x i8], [16 x i8]* @1, i64 0, i64 0), i64 16, i1 false)
  %754 = getelementptr inbounds i8, i8* %1, i64 256
  %755 = bitcast i8* %754 to i32*
  store i32 0, i32* %755, align 16
  %756 = bitcast i8* %1 to i8**
  store i8* %754, i8** %756, align 16, !alias.scope !134, !noalias !135
  %757 = getelementptr inbounds i8, i8* %1, i64 8
  %758 = bitcast i8* %757 to i8**
  store i8* %722, i8** %758, align 8, !alias.scope !134, !noalias !135
  %759 = getelementptr inbounds i8, i8* %1, i64 16
  %760 = bitcast i8* %759 to i8**
  store i8* %709, i8** %760, align 16, !alias.scope !134, !noalias !135
  %761 = getelementptr inbounds i8, i8* %1, i64 24
  %762 = bitcast i8* %761 to i8**
  store i8* %2, i8** %762, align 8, !alias.scope !134, !noalias !135
  %763 = getelementptr inbounds i8, i8* %1, i64 32
  %764 = bitcast i8* %763 to i8**
  store i8* %compare.13.i, i8** %764, align 16, !alias.scope !134, !noalias !135
  %765 = getelementptr inbounds i8, i8* %1, i64 40
  %766 = bitcast i8* %765 to i8**
  store i8* %365, i8** %766, align 8, !alias.scope !134, !noalias !135
  %767 = getelementptr inbounds i8, i8* %1, i64 48
  %768 = bitcast i8* %767 to i8**
  store i8* %4, i8** %768, align 16, !alias.scope !134, !noalias !135
  %769 = getelementptr inbounds i8, i8* %1, i64 56
  %770 = bitcast i8* %769 to i8**
  store i8* %10, i8** %770, align 8, !alias.scope !134, !noalias !135
  %771 = bitcast i8* %1 to i32**
  store i8 1, i8* %14, align 16, !alias.scope !136, !noalias !138
  %772 = getelementptr inbounds i8, i8* %1, i64 64
  %773 = bitcast i8* %763 to i32**
  %774 = bitcast i8* %6 to i32*
  %775 = getelementptr inbounds i8, i8* %1, i64 132
  %776 = bitcast i8* %775 to i32*
  %777 = getelementptr inbounds i8, i8* %1, i64 136
  %778 = bitcast i8* %777 to i32*
  %779 = getelementptr inbounds i8, i8* %1, i64 140
  %780 = bitcast i8* %779 to i32*
  %781 = bitcast i8* %761 to i32**
  %782 = bitcast i8* %765 to i32**
  %783 = getelementptr inbounds i8, i8* %1, i64 96
  %784 = getelementptr inbounds i8, i8* %4, i64 32
  %785 = getelementptr inbounds i8, i8* %1, i64 96
  %786 = getelementptr inbounds i8, i8* %4, i64 32
  %787 = getelementptr inbounds i8, i8* %1, i64 96
  %788 = getelementptr inbounds i8, i8* %4, i64 32
  %789 = getelementptr inbounds i8, i8* %1, i64 96
  %790 = getelementptr inbounds i8, i8* %4, i64 32
  %791 = bitcast i8* %6 to <4 x i32>*
  %792 = bitcast i8* %775 to <4 x i32>*
  %793 = bitcast i8* %777 to <4 x i32>*
  %794 = bitcast i8* %779 to <4 x i32>*
  %795 = bitcast i8* %772 to <8 x i32>*
  %796 = bitcast i8* %4 to <8 x i32>*
  %797 = bitcast i8* %709 to <8 x i32>*
  %798 = getelementptr inbounds i8, i8* %1, i64 96
  %799 = bitcast i8* %798 to <8 x i32>*
  %800 = getelementptr inbounds i8, i8* %4, i64 32
  %801 = bitcast i8* %800 to <8 x i32>*
  %802 = getelementptr inbounds i8, i8* %1, i64 33554784
  %803 = bitcast i8* %802 to <8 x i32>*
  %804 = bitcast i8* %772 to <8 x i32>*
  %805 = bitcast i8* %4 to <8 x i32>*
  %806 = bitcast i8* %709 to <8 x i32>*
  %807 = getelementptr inbounds i8, i8* %1, i64 96
  %808 = bitcast i8* %807 to <8 x i32>*
  %809 = getelementptr inbounds i8, i8* %4, i64 32
  %810 = bitcast i8* %809 to <8 x i32>*
  %811 = getelementptr inbounds i8, i8* %1, i64 33554784
  %812 = bitcast i8* %811 to <8 x i32>*
  %813 = bitcast i8* %772 to <8 x i32>*
  %814 = bitcast i8* %4 to <8 x i32>*
  %815 = bitcast i8* %709 to <8 x i32>*
  %816 = getelementptr inbounds i8, i8* %1, i64 96
  %817 = bitcast i8* %816 to <8 x i32>*
  %818 = getelementptr inbounds i8, i8* %4, i64 32
  %819 = bitcast i8* %818 to <8 x i32>*
  %820 = getelementptr inbounds i8, i8* %1, i64 33554784
  %821 = bitcast i8* %820 to <8 x i32>*
  %822 = bitcast i8* %772 to <8 x i32>*
  %823 = bitcast i8* %4 to <8 x i32>*
  %824 = bitcast i8* %709 to <8 x i32>*
  %825 = getelementptr inbounds i8, i8* %1, i64 96
  %826 = bitcast i8* %825 to <8 x i32>*
  %827 = getelementptr inbounds i8, i8* %4, i64 32
  %828 = bitcast i8* %827 to <8 x i32>*
  %829 = getelementptr inbounds i8, i8* %1, i64 33554784
  %830 = bitcast i8* %829 to <8 x i32>*
  %831 = bitcast i8* %6 to <4 x i32>*
  %832 = bitcast i8* %772 to <8 x i32>*
  %833 = bitcast i8* %4 to <8 x i32>*
  %834 = bitcast i8* %709 to <8 x i32>*
  %835 = getelementptr inbounds i8, i8* %1, i64 96
  %836 = bitcast i8* %835 to <8 x i32>*
  %837 = getelementptr inbounds i8, i8* %4, i64 32
  %838 = bitcast i8* %837 to <8 x i32>*
  %839 = getelementptr inbounds i8, i8* %1, i64 33554784
  %840 = bitcast i8* %839 to <8 x i32>*
  %841 = bitcast i8* %772 to <8 x i32>*
  %842 = bitcast i8* %4 to <8 x i32>*
  %843 = bitcast i8* %709 to <8 x i32>*
  %844 = getelementptr inbounds i8, i8* %1, i64 96
  %845 = bitcast i8* %844 to <8 x i32>*
  %846 = getelementptr inbounds i8, i8* %4, i64 32
  %847 = bitcast i8* %846 to <8 x i32>*
  %848 = getelementptr inbounds i8, i8* %1, i64 33554784
  %849 = bitcast i8* %848 to <8 x i32>*
  %850 = bitcast i8* %772 to <8 x i32>*
  %851 = bitcast i8* %4 to <8 x i32>*
  %852 = bitcast i8* %722 to <8 x i32>*
  %853 = bitcast i8* %783 to <8 x i32>*
  %854 = bitcast i8* %784 to <8 x i32>*
  %855 = bitcast i8* %733 to <8 x i32>*
  %856 = bitcast i8* %772 to <8 x i32>*
  %857 = bitcast i8* %4 to <8 x i32>*
  %858 = bitcast i8* %722 to <8 x i32>*
  %859 = bitcast i8* %785 to <8 x i32>*
  %860 = bitcast i8* %786 to <8 x i32>*
  %861 = bitcast i8* %733 to <8 x i32>*
  %862 = bitcast i8* %772 to <8 x i32>*
  %863 = bitcast i8* %4 to <8 x i32>*
  %864 = bitcast i8* %722 to <8 x i32>*
  %865 = getelementptr inbounds i8, i8* %1, i64 96
  %866 = bitcast i8* %865 to <8 x i32>*
  %867 = getelementptr inbounds i8, i8* %4, i64 32
  %868 = bitcast i8* %867 to <8 x i32>*
  %869 = getelementptr inbounds i8, i8* %1, i64 33554848
  %870 = bitcast i8* %869 to <8 x i32>*
  %871 = bitcast i8* %772 to <8 x i32>*
  %872 = bitcast i8* %4 to <8 x i32>*
  %873 = bitcast i8* %722 to <8 x i32>*
  %874 = bitcast i8* %787 to <8 x i32>*
  %875 = bitcast i8* %788 to <8 x i32>*
  %876 = bitcast i8* %733 to <8 x i32>*
  %877 = bitcast i8* %772 to <8 x i32>*
  %878 = bitcast i8* %4 to <8 x i32>*
  %879 = bitcast i8* %722 to <8 x i32>*
  %880 = getelementptr inbounds i8, i8* %1, i64 96
  %881 = bitcast i8* %880 to <8 x i32>*
  %882 = getelementptr inbounds i8, i8* %4, i64 32
  %883 = bitcast i8* %882 to <8 x i32>*
  %884 = getelementptr inbounds i8, i8* %1, i64 33554848
  %885 = bitcast i8* %884 to <8 x i32>*
  %886 = bitcast i8* %772 to <8 x i32>*
  %887 = bitcast i8* %4 to <8 x i32>*
  %888 = bitcast i8* %722 to <8 x i32>*
  %889 = getelementptr inbounds i8, i8* %1, i64 96
  %890 = bitcast i8* %889 to <8 x i32>*
  %891 = getelementptr inbounds i8, i8* %4, i64 32
  %892 = bitcast i8* %891 to <8 x i32>*
  %893 = getelementptr inbounds i8, i8* %1, i64 33554848
  %894 = bitcast i8* %893 to <8 x i32>*
  %895 = bitcast i8* %772 to <8 x i32>*
  %896 = bitcast i8* %4 to <8 x i32>*
  %897 = bitcast i8* %722 to <8 x i32>*
  %898 = bitcast i8* %789 to <8 x i32>*
  %899 = bitcast i8* %790 to <8 x i32>*
  %900 = bitcast i8* %733 to <8 x i32>*
  %901 = bitcast i8* %772 to <8 x i32>*
  %902 = bitcast i8* %4 to <8 x i32>*
  %903 = bitcast i8* %722 to <8 x i32>*
  %904 = getelementptr inbounds i8, i8* %1, i64 96
  %905 = bitcast i8* %904 to <8 x i32>*
  %906 = getelementptr inbounds i8, i8* %4, i64 32
  %907 = bitcast i8* %906 to <8 x i32>*
  %908 = getelementptr inbounds i8, i8* %1, i64 33554848
  %909 = bitcast i8* %908 to <8 x i32>*
  %910 = bitcast i8* %772 to <8 x i32>*
  %911 = bitcast i8* %4 to <8 x i32>*
  %912 = bitcast i8* %722 to <8 x i32>*
  %913 = getelementptr inbounds i8, i8* %1, i64 96
  %914 = bitcast i8* %913 to <8 x i32>*
  %915 = getelementptr inbounds i8, i8* %4, i64 32
  %916 = bitcast i8* %915 to <8 x i32>*
  %917 = getelementptr inbounds i8, i8* %1, i64 33554848
  %918 = bitcast i8* %917 to <8 x i32>*
  %919 = bitcast i8* %772 to <8 x i32>*
  %920 = bitcast i8* %4 to <8 x i32>*
  %921 = bitcast i8* %722 to <8 x i32>*
  %922 = getelementptr inbounds i8, i8* %1, i64 96
  %923 = bitcast i8* %922 to <8 x i32>*
  %924 = getelementptr inbounds i8, i8* %4, i64 32
  %925 = bitcast i8* %924 to <8 x i32>*
  %926 = getelementptr inbounds i8, i8* %1, i64 33554848
  %927 = bitcast i8* %926 to <8 x i32>*
  %928 = bitcast i8* %772 to <8 x i32>*
  %929 = bitcast i8* %4 to <8 x i32>*
  %930 = bitcast i8* %722 to <8 x i32>*
  %931 = getelementptr inbounds i8, i8* %1, i64 96
  %932 = bitcast i8* %931 to <8 x i32>*
  %933 = getelementptr inbounds i8, i8* %4, i64 32
  %934 = bitcast i8* %933 to <8 x i32>*
  %935 = getelementptr inbounds i8, i8* %1, i64 33554848
  %936 = bitcast i8* %935 to <8 x i32>*
  %937 = bitcast i8* %772 to <8 x i32>*
  %938 = bitcast i8* %4 to <8 x i32>*
  %939 = bitcast i8* %722 to <8 x i32>*
  %940 = getelementptr inbounds i8, i8* %1, i64 96
  %941 = bitcast i8* %940 to <8 x i32>*
  %942 = getelementptr inbounds i8, i8* %4, i64 32
  %943 = bitcast i8* %942 to <8 x i32>*
  %944 = getelementptr inbounds i8, i8* %1, i64 33554848
  %945 = bitcast i8* %944 to <8 x i32>*
  br label %while.17.body

while.17.body:                                    ; preds = %while.17.body.lr.ph, %body_computation__3.792.clone.exit
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(16) %6, i8* nonnull align 16 dereferenceable(16) %4, i64 16, i1 false) #2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(64) %772, i8* nonnull align 16 dereferenceable(64) %722, i64 64, i1 false) #2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(64) %4, i8* nonnull align 16 dereferenceable(64) %709, i64 64, i1 false) #2
  %946 = load i32*, i32** %771, align 16, !dereferenceable !74, !align !74
  %947 = load i32, i32* %946, align 4
  store i32 %947, i32* %copy, align 16
  %948 = load i32*, i32** %773, align 16, !dereferenceable !74, !align !74
  %949 = load i32, i32* %948, align 4
  store i32 %949, i32* %copy.5, align 16
  %950 = load <4 x i32>, <4 x i32>* %791, align 16
  %951 = shufflevector <4 x i32> %950, <4 x i32> undef, <8 x i32> <i32 0, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %952 = load i32, i32* %774, align 16, !alias.scope !140, !noalias !142
  %shft.chk.i77 = icmp ult i32 %952, 32
  %953 = sub i32 32, %952
  %shft.chk1.i78 = icmp ult i32 %953, 32
  %954 = load <4 x i32>, <4 x i32>* %792, align 4
  %955 = load i32, i32* %776, align 4, !alias.scope !140, !noalias !142
  %shft.chk2.i79 = icmp ult i32 %955, 32
  %956 = sub i32 32, %955
  %shft.chk3.i80 = icmp ult i32 %956, 32
  %957 = load <4 x i32>, <4 x i32>* %793, align 8
  %958 = shufflevector <4 x i32> %957, <4 x i32> undef, <8 x i32> <i32 0, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %959 = shufflevector <4 x i32> %957, <4 x i32> undef, <8 x i32> <i32 0, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %960 = shufflevector <4 x i32> %957, <4 x i32> undef, <8 x i32> <i32 0, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %961 = shufflevector <4 x i32> %957, <4 x i32> undef, <8 x i32> <i32 0, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef, i32 undef>
  %962 = load i32, i32* %778, align 8, !alias.scope !140, !noalias !142
  %shft.chk4.i81 = icmp ult i32 %962, 32
  %963 = sub i32 32, %962
  %shft.chk5.i82 = icmp ult i32 %963, 32
  %964 = load <4 x i32>, <4 x i32>* %794, align 4
  %965 = load i32, i32* %780, align 4, !alias.scope !140, !noalias !142
  %shft.chk6.i83 = icmp ult i32 %965, 32
  %966 = sub i32 32, %965
  %shft.chk7.i84 = icmp ult i32 %966, 32
  %967 = add i32 %947, 1
  %968 = add i32 %949, %967
  br i1 %shft.chk.i77, label %fusion.6.loop_body.dim.0.us.i.preheader, label %fusion.6.loop_body.dim.0.i.preheader

fusion.6.loop_body.dim.0.i.preheader:             ; preds = %while.17.body
  br i1 %shft.chk1.i78, label %fusion.6.loop_body.dim.0.i.preheader.split.us, label %fusion.6.loop_body.dim.0.i.preheader.split

fusion.6.loop_body.dim.0.i.preheader.split.us:    ; preds = %fusion.6.loop_body.dim.0.i.preheader
  %broadcast.splatinsert416 = insertelement <8 x i32> undef, i32 %953, i32 0
  %broadcast.splat417 = shufflevector <8 x i32> %broadcast.splatinsert416, <8 x i32> undef, <8 x i32> zeroinitializer
  br i1 %shft.chk2.i79, label %vector.ph409, label %vector.ph435

vector.ph435:                                     ; preds = %fusion.6.loop_body.dim.0.i.preheader.split.us
  %broadcast.splatinsert444 = insertelement <8 x i32> undef, i32 %956, i32 0
  %broadcast.splat445 = shufflevector <8 x i32> %broadcast.splatinsert444, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splat447 = shufflevector <4 x i32> %957, <4 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert448 = insertelement <8 x i32> undef, i32 %963, i32 0
  %broadcast.splat449 = shufflevector <8 x i32> %broadcast.splatinsert448, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splat451 = shufflevector <4 x i32> %964, <4 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert452 = insertelement <8 x i32> undef, i32 %966, i32 0
  %broadcast.splat453 = shufflevector <8 x i32> %broadcast.splatinsert452, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert454 = insertelement <8 x i32> undef, i32 %968, i32 0
  %broadcast.splat455 = shufflevector <8 x i32> %broadcast.splatinsert454, <8 x i32> undef, <8 x i32> zeroinitializer
  %wide.load440 = load <8 x i32>, <8 x i32>* %813, align 16, !alias.scope !145, !noalias !146
  %wide.load441 = load <8 x i32>, <8 x i32>* %814, align 16, !alias.scope !147, !noalias !148
  %969 = add <8 x i32> %wide.load441, %wide.load440
  %970 = lshr <8 x i32> %wide.load441, %broadcast.splat417
  %971 = xor <8 x i32> %970, %969
  %972 = add <8 x i32> %971, %969
  %973 = lshr <8 x i32> %971, %broadcast.splat445
  %974 = select i1 %shft.chk3.i80, <8 x i32> %973, <8 x i32> zeroinitializer
  %975 = xor <8 x i32> %974, %972
  %976 = add <8 x i32> %975, %972
  %977 = shl <8 x i32> %975, %broadcast.splat447
  %978 = select i1 %shft.chk4.i81, <8 x i32> %977, <8 x i32> zeroinitializer
  %979 = lshr <8 x i32> %975, %broadcast.splat449
  %980 = select i1 %shft.chk5.i82, <8 x i32> %979, <8 x i32> zeroinitializer
  %981 = or <8 x i32> %978, %980
  %982 = xor <8 x i32> %981, %976
  %983 = add <8 x i32> %982, %976
  %984 = shl <8 x i32> %982, %broadcast.splat451
  %985 = select i1 %shft.chk6.i83, <8 x i32> %984, <8 x i32> zeroinitializer
  %986 = lshr <8 x i32> %982, %broadcast.splat453
  %987 = select i1 %shft.chk7.i84, <8 x i32> %986, <8 x i32> zeroinitializer
  %988 = or <8 x i32> %985, %987
  %989 = xor <8 x i32> %988, %983
  %990 = add <8 x i32> %989, %broadcast.splat455
  store <8 x i32> %990, <8 x i32>* %815, align 16, !alias.scope !123, !noalias !149
  %wide.load440.1 = load <8 x i32>, <8 x i32>* %817, align 16, !alias.scope !145, !noalias !146
  %wide.load441.1 = load <8 x i32>, <8 x i32>* %819, align 16, !alias.scope !147, !noalias !148
  %991 = add <8 x i32> %wide.load441.1, %wide.load440.1
  %992 = lshr <8 x i32> %wide.load441.1, %broadcast.splat417
  %993 = xor <8 x i32> %992, %991
  %994 = add <8 x i32> %993, %991
  %995 = lshr <8 x i32> %993, %broadcast.splat445
  %996 = select i1 %shft.chk3.i80, <8 x i32> %995, <8 x i32> zeroinitializer
  %997 = xor <8 x i32> %996, %994
  %998 = add <8 x i32> %997, %994
  %999 = shl <8 x i32> %997, %broadcast.splat447
  %1000 = select i1 %shft.chk4.i81, <8 x i32> %999, <8 x i32> zeroinitializer
  %1001 = lshr <8 x i32> %997, %broadcast.splat449
  %1002 = select i1 %shft.chk5.i82, <8 x i32> %1001, <8 x i32> zeroinitializer
  %1003 = or <8 x i32> %1000, %1002
  %1004 = xor <8 x i32> %1003, %998
  %1005 = add <8 x i32> %1004, %998
  %1006 = shl <8 x i32> %1004, %broadcast.splat451
  %1007 = select i1 %shft.chk6.i83, <8 x i32> %1006, <8 x i32> zeroinitializer
  %1008 = lshr <8 x i32> %1004, %broadcast.splat453
  %1009 = select i1 %shft.chk7.i84, <8 x i32> %1008, <8 x i32> zeroinitializer
  %1010 = or <8 x i32> %1007, %1009
  %1011 = xor <8 x i32> %1010, %1005
  %1012 = add <8 x i32> %1011, %broadcast.splat455
  store <8 x i32> %1012, <8 x i32>* %821, align 16, !alias.scope !123, !noalias !149
  br label %fusion.6.loop_exit.dim.0.i

vector.ph409:                                     ; preds = %fusion.6.loop_body.dim.0.i.preheader.split.us
  %broadcast.splat419 = shufflevector <4 x i32> %954, <4 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert420 = insertelement <8 x i32> undef, i32 %956, i32 0
  %broadcast.splat421 = shufflevector <8 x i32> %broadcast.splatinsert420, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splat423 = shufflevector <4 x i32> %957, <4 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert424 = insertelement <8 x i32> undef, i32 %963, i32 0
  %broadcast.splat425 = shufflevector <8 x i32> %broadcast.splatinsert424, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splat427 = shufflevector <4 x i32> %964, <4 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert428 = insertelement <8 x i32> undef, i32 %966, i32 0
  %broadcast.splat429 = shufflevector <8 x i32> %broadcast.splatinsert428, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert430 = insertelement <8 x i32> undef, i32 %968, i32 0
  %broadcast.splat431 = shufflevector <8 x i32> %broadcast.splatinsert430, <8 x i32> undef, <8 x i32> zeroinitializer
  %wide.load414 = load <8 x i32>, <8 x i32>* %822, align 16, !alias.scope !145, !noalias !146
  %wide.load415 = load <8 x i32>, <8 x i32>* %823, align 16, !alias.scope !147, !noalias !148
  %1013 = add <8 x i32> %wide.load415, %wide.load414
  %1014 = lshr <8 x i32> %wide.load415, %broadcast.splat417
  %1015 = xor <8 x i32> %1014, %1013
  %1016 = add <8 x i32> %1015, %1013
  %1017 = shl <8 x i32> %1015, %broadcast.splat419
  %1018 = lshr <8 x i32> %1015, %broadcast.splat421
  %1019 = select i1 %shft.chk3.i80, <8 x i32> %1018, <8 x i32> zeroinitializer
  %1020 = or <8 x i32> %1017, %1019
  %1021 = xor <8 x i32> %1020, %1016
  %1022 = add <8 x i32> %1021, %1016
  %1023 = shl <8 x i32> %1021, %broadcast.splat423
  %1024 = select i1 %shft.chk4.i81, <8 x i32> %1023, <8 x i32> zeroinitializer
  %1025 = lshr <8 x i32> %1021, %broadcast.splat425
  %1026 = select i1 %shft.chk5.i82, <8 x i32> %1025, <8 x i32> zeroinitializer
  %1027 = or <8 x i32> %1024, %1026
  %1028 = xor <8 x i32> %1027, %1022
  %1029 = add <8 x i32> %1028, %1022
  %1030 = shl <8 x i32> %1028, %broadcast.splat427
  %1031 = select i1 %shft.chk6.i83, <8 x i32> %1030, <8 x i32> zeroinitializer
  %1032 = lshr <8 x i32> %1028, %broadcast.splat429
  %1033 = select i1 %shft.chk7.i84, <8 x i32> %1032, <8 x i32> zeroinitializer
  %1034 = or <8 x i32> %1031, %1033
  %1035 = xor <8 x i32> %1034, %1029
  %1036 = add <8 x i32> %1035, %broadcast.splat431
  store <8 x i32> %1036, <8 x i32>* %824, align 16, !alias.scope !123, !noalias !149
  %wide.load414.1 = load <8 x i32>, <8 x i32>* %826, align 16, !alias.scope !145, !noalias !146
  %wide.load415.1 = load <8 x i32>, <8 x i32>* %828, align 16, !alias.scope !147, !noalias !148
  %1037 = add <8 x i32> %wide.load415.1, %wide.load414.1
  %1038 = lshr <8 x i32> %wide.load415.1, %broadcast.splat417
  %1039 = xor <8 x i32> %1038, %1037
  %1040 = add <8 x i32> %1039, %1037
  %1041 = shl <8 x i32> %1039, %broadcast.splat419
  %1042 = lshr <8 x i32> %1039, %broadcast.splat421
  %1043 = select i1 %shft.chk3.i80, <8 x i32> %1042, <8 x i32> zeroinitializer
  %1044 = or <8 x i32> %1041, %1043
  %1045 = xor <8 x i32> %1044, %1040
  %1046 = add <8 x i32> %1045, %1040
  %1047 = shl <8 x i32> %1045, %broadcast.splat423
  %1048 = select i1 %shft.chk4.i81, <8 x i32> %1047, <8 x i32> zeroinitializer
  %1049 = lshr <8 x i32> %1045, %broadcast.splat425
  %1050 = select i1 %shft.chk5.i82, <8 x i32> %1049, <8 x i32> zeroinitializer
  %1051 = or <8 x i32> %1048, %1050
  %1052 = xor <8 x i32> %1051, %1046
  %1053 = add <8 x i32> %1052, %1046
  %1054 = shl <8 x i32> %1052, %broadcast.splat427
  %1055 = select i1 %shft.chk6.i83, <8 x i32> %1054, <8 x i32> zeroinitializer
  %1056 = lshr <8 x i32> %1052, %broadcast.splat429
  %1057 = select i1 %shft.chk7.i84, <8 x i32> %1056, <8 x i32> zeroinitializer
  %1058 = or <8 x i32> %1055, %1057
  %1059 = xor <8 x i32> %1058, %1053
  %1060 = add <8 x i32> %1059, %broadcast.splat431
  store <8 x i32> %1060, <8 x i32>* %830, align 16, !alias.scope !123, !noalias !149
  br label %fusion.6.loop_exit.dim.0.i

fusion.6.loop_body.dim.0.i.preheader.split:       ; preds = %fusion.6.loop_body.dim.0.i.preheader
  br i1 %shft.chk2.i79, label %vector.ph459, label %vector.ph483

vector.ph483:                                     ; preds = %fusion.6.loop_body.dim.0.i.preheader.split
  %broadcast.splatinsert490 = insertelement <8 x i32> undef, i32 %956, i32 0
  %broadcast.splat491 = shufflevector <8 x i32> %broadcast.splatinsert490, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splat493 = shufflevector <4 x i32> %957, <4 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert494 = insertelement <8 x i32> undef, i32 %963, i32 0
  %broadcast.splat495 = shufflevector <8 x i32> %broadcast.splatinsert494, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splat497 = shufflevector <4 x i32> %964, <4 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert498 = insertelement <8 x i32> undef, i32 %966, i32 0
  %broadcast.splat499 = shufflevector <8 x i32> %broadcast.splatinsert498, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert500 = insertelement <8 x i32> undef, i32 %968, i32 0
  %broadcast.splat501 = shufflevector <8 x i32> %broadcast.splatinsert500, <8 x i32> undef, <8 x i32> zeroinitializer
  %wide.load488 = load <8 x i32>, <8 x i32>* %795, align 16, !alias.scope !145, !noalias !146
  %wide.load489 = load <8 x i32>, <8 x i32>* %796, align 16, !alias.scope !147, !noalias !148
  %1061 = add <8 x i32> %wide.load489, %wide.load488
  %1062 = shl <8 x i32> %1061, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %1063 = lshr <8 x i32> %1061, %broadcast.splat491
  %1064 = select i1 %shft.chk3.i80, <8 x i32> %1063, <8 x i32> zeroinitializer
  %1065 = xor <8 x i32> %1064, %1062
  %1066 = add <8 x i32> %1065, %1062
  %1067 = shl <8 x i32> %1065, %broadcast.splat493
  %1068 = select i1 %shft.chk4.i81, <8 x i32> %1067, <8 x i32> zeroinitializer
  %1069 = lshr <8 x i32> %1065, %broadcast.splat495
  %1070 = select i1 %shft.chk5.i82, <8 x i32> %1069, <8 x i32> zeroinitializer
  %1071 = or <8 x i32> %1068, %1070
  %1072 = xor <8 x i32> %1071, %1066
  %1073 = add <8 x i32> %1072, %1066
  %1074 = shl <8 x i32> %1072, %broadcast.splat497
  %1075 = select i1 %shft.chk6.i83, <8 x i32> %1074, <8 x i32> zeroinitializer
  %1076 = lshr <8 x i32> %1072, %broadcast.splat499
  %1077 = select i1 %shft.chk7.i84, <8 x i32> %1076, <8 x i32> zeroinitializer
  %1078 = or <8 x i32> %1075, %1077
  %1079 = xor <8 x i32> %1078, %1073
  %1080 = add <8 x i32> %1079, %broadcast.splat501
  store <8 x i32> %1080, <8 x i32>* %797, align 16, !alias.scope !123, !noalias !149
  %wide.load488.1 = load <8 x i32>, <8 x i32>* %799, align 16, !alias.scope !145, !noalias !146
  %wide.load489.1 = load <8 x i32>, <8 x i32>* %801, align 16, !alias.scope !147, !noalias !148
  %1081 = add <8 x i32> %wide.load489.1, %wide.load488.1
  %1082 = shl <8 x i32> %1081, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %1083 = lshr <8 x i32> %1081, %broadcast.splat491
  %1084 = select i1 %shft.chk3.i80, <8 x i32> %1083, <8 x i32> zeroinitializer
  %1085 = xor <8 x i32> %1084, %1082
  %1086 = add <8 x i32> %1085, %1082
  %1087 = shl <8 x i32> %1085, %broadcast.splat493
  %1088 = select i1 %shft.chk4.i81, <8 x i32> %1087, <8 x i32> zeroinitializer
  %1089 = lshr <8 x i32> %1085, %broadcast.splat495
  %1090 = select i1 %shft.chk5.i82, <8 x i32> %1089, <8 x i32> zeroinitializer
  %1091 = or <8 x i32> %1088, %1090
  %1092 = xor <8 x i32> %1091, %1086
  %1093 = add <8 x i32> %1092, %1086
  %1094 = shl <8 x i32> %1092, %broadcast.splat497
  %1095 = select i1 %shft.chk6.i83, <8 x i32> %1094, <8 x i32> zeroinitializer
  %1096 = lshr <8 x i32> %1092, %broadcast.splat499
  %1097 = select i1 %shft.chk7.i84, <8 x i32> %1096, <8 x i32> zeroinitializer
  %1098 = or <8 x i32> %1095, %1097
  %1099 = xor <8 x i32> %1098, %1093
  %1100 = add <8 x i32> %1099, %broadcast.splat501
  store <8 x i32> %1100, <8 x i32>* %803, align 16, !alias.scope !123, !noalias !149
  br label %fusion.6.loop_exit.dim.0.i

vector.ph459:                                     ; preds = %fusion.6.loop_body.dim.0.i.preheader.split
  %broadcast.splat467 = shufflevector <4 x i32> %954, <4 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert468 = insertelement <8 x i32> undef, i32 %956, i32 0
  %broadcast.splat469 = shufflevector <8 x i32> %broadcast.splatinsert468, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splat471 = shufflevector <4 x i32> %957, <4 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert472 = insertelement <8 x i32> undef, i32 %963, i32 0
  %broadcast.splat473 = shufflevector <8 x i32> %broadcast.splatinsert472, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splat475 = shufflevector <4 x i32> %964, <4 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert476 = insertelement <8 x i32> undef, i32 %966, i32 0
  %broadcast.splat477 = shufflevector <8 x i32> %broadcast.splatinsert476, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert478 = insertelement <8 x i32> undef, i32 %968, i32 0
  %broadcast.splat479 = shufflevector <8 x i32> %broadcast.splatinsert478, <8 x i32> undef, <8 x i32> zeroinitializer
  %wide.load464 = load <8 x i32>, <8 x i32>* %804, align 16, !alias.scope !145, !noalias !146
  %wide.load465 = load <8 x i32>, <8 x i32>* %805, align 16, !alias.scope !147, !noalias !148
  %1101 = add <8 x i32> %wide.load465, %wide.load464
  %1102 = shl <8 x i32> %1101, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %1103 = shl <8 x i32> %1101, %broadcast.splat467
  %1104 = lshr <8 x i32> %1101, %broadcast.splat469
  %1105 = select i1 %shft.chk3.i80, <8 x i32> %1104, <8 x i32> zeroinitializer
  %1106 = or <8 x i32> %1103, %1105
  %1107 = xor <8 x i32> %1106, %1102
  %1108 = add <8 x i32> %1107, %1102
  %1109 = shl <8 x i32> %1107, %broadcast.splat471
  %1110 = select i1 %shft.chk4.i81, <8 x i32> %1109, <8 x i32> zeroinitializer
  %1111 = lshr <8 x i32> %1107, %broadcast.splat473
  %1112 = select i1 %shft.chk5.i82, <8 x i32> %1111, <8 x i32> zeroinitializer
  %1113 = or <8 x i32> %1110, %1112
  %1114 = xor <8 x i32> %1113, %1108
  %1115 = add <8 x i32> %1114, %1108
  %1116 = shl <8 x i32> %1114, %broadcast.splat475
  %1117 = select i1 %shft.chk6.i83, <8 x i32> %1116, <8 x i32> zeroinitializer
  %1118 = lshr <8 x i32> %1114, %broadcast.splat477
  %1119 = select i1 %shft.chk7.i84, <8 x i32> %1118, <8 x i32> zeroinitializer
  %1120 = or <8 x i32> %1117, %1119
  %1121 = xor <8 x i32> %1120, %1115
  %1122 = add <8 x i32> %1121, %broadcast.splat479
  store <8 x i32> %1122, <8 x i32>* %806, align 16, !alias.scope !123, !noalias !149
  %wide.load464.1 = load <8 x i32>, <8 x i32>* %808, align 16, !alias.scope !145, !noalias !146
  %wide.load465.1 = load <8 x i32>, <8 x i32>* %810, align 16, !alias.scope !147, !noalias !148
  %1123 = add <8 x i32> %wide.load465.1, %wide.load464.1
  %1124 = shl <8 x i32> %1123, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %1125 = shl <8 x i32> %1123, %broadcast.splat467
  %1126 = lshr <8 x i32> %1123, %broadcast.splat469
  %1127 = select i1 %shft.chk3.i80, <8 x i32> %1126, <8 x i32> zeroinitializer
  %1128 = or <8 x i32> %1125, %1127
  %1129 = xor <8 x i32> %1128, %1124
  %1130 = add <8 x i32> %1129, %1124
  %1131 = shl <8 x i32> %1129, %broadcast.splat471
  %1132 = select i1 %shft.chk4.i81, <8 x i32> %1131, <8 x i32> zeroinitializer
  %1133 = lshr <8 x i32> %1129, %broadcast.splat473
  %1134 = select i1 %shft.chk5.i82, <8 x i32> %1133, <8 x i32> zeroinitializer
  %1135 = or <8 x i32> %1132, %1134
  %1136 = xor <8 x i32> %1135, %1130
  %1137 = add <8 x i32> %1136, %1130
  %1138 = shl <8 x i32> %1136, %broadcast.splat475
  %1139 = select i1 %shft.chk6.i83, <8 x i32> %1138, <8 x i32> zeroinitializer
  %1140 = lshr <8 x i32> %1136, %broadcast.splat477
  %1141 = select i1 %shft.chk7.i84, <8 x i32> %1140, <8 x i32> zeroinitializer
  %1142 = or <8 x i32> %1139, %1141
  %1143 = xor <8 x i32> %1142, %1137
  %1144 = add <8 x i32> %1143, %broadcast.splat479
  store <8 x i32> %1144, <8 x i32>* %812, align 16, !alias.scope !123, !noalias !149
  br label %fusion.6.loop_exit.dim.0.i

fusion.6.loop_body.dim.0.us.i.preheader:          ; preds = %while.17.body
  %1145 = load <4 x i32>, <4 x i32>* %831, align 16
  %broadcast.splat363 = shufflevector <4 x i32> %1145, <4 x i32> undef, <8 x i32> zeroinitializer
  br i1 %shft.chk1.i78, label %vector.ph355, label %vector.ph383

vector.ph383:                                     ; preds = %fusion.6.loop_body.dim.0.us.i.preheader
  %broadcast.splat393 = shufflevector <4 x i32> %954, <4 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert394 = insertelement <8 x i32> undef, i32 %956, i32 0
  %broadcast.splat395 = shufflevector <8 x i32> %broadcast.splatinsert394, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splat397 = shufflevector <4 x i32> %957, <4 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert398 = insertelement <8 x i32> undef, i32 %963, i32 0
  %broadcast.splat399 = shufflevector <8 x i32> %broadcast.splatinsert398, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splat401 = shufflevector <4 x i32> %964, <4 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert402 = insertelement <8 x i32> undef, i32 %966, i32 0
  %broadcast.splat403 = shufflevector <8 x i32> %broadcast.splatinsert402, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert404 = insertelement <8 x i32> undef, i32 %968, i32 0
  %broadcast.splat405 = shufflevector <8 x i32> %broadcast.splatinsert404, <8 x i32> undef, <8 x i32> zeroinitializer
  %wide.load388 = load <8 x i32>, <8 x i32>* %832, align 16, !alias.scope !145, !noalias !146
  %wide.load389 = load <8 x i32>, <8 x i32>* %833, align 16, !alias.scope !147, !noalias !148
  %1146 = add <8 x i32> %wide.load389, %wide.load388
  %1147 = shl <8 x i32> %wide.load389, %broadcast.splat363
  %1148 = xor <8 x i32> %1147, %1146
  %1149 = add <8 x i32> %1148, %1146
  %1150 = shl <8 x i32> %1148, %broadcast.splat393
  %1151 = select i1 %shft.chk2.i79, <8 x i32> %1150, <8 x i32> zeroinitializer
  %1152 = lshr <8 x i32> %1148, %broadcast.splat395
  %1153 = select i1 %shft.chk3.i80, <8 x i32> %1152, <8 x i32> zeroinitializer
  %1154 = or <8 x i32> %1151, %1153
  %1155 = xor <8 x i32> %1154, %1149
  %1156 = add <8 x i32> %1155, %1149
  %1157 = shl <8 x i32> %1155, %broadcast.splat397
  %1158 = select i1 %shft.chk4.i81, <8 x i32> %1157, <8 x i32> zeroinitializer
  %1159 = lshr <8 x i32> %1155, %broadcast.splat399
  %1160 = select i1 %shft.chk5.i82, <8 x i32> %1159, <8 x i32> zeroinitializer
  %1161 = or <8 x i32> %1158, %1160
  %1162 = xor <8 x i32> %1161, %1156
  %1163 = add <8 x i32> %1162, %1156
  %1164 = shl <8 x i32> %1162, %broadcast.splat401
  %1165 = select i1 %shft.chk6.i83, <8 x i32> %1164, <8 x i32> zeroinitializer
  %1166 = lshr <8 x i32> %1162, %broadcast.splat403
  %1167 = select i1 %shft.chk7.i84, <8 x i32> %1166, <8 x i32> zeroinitializer
  %1168 = or <8 x i32> %1165, %1167
  %1169 = xor <8 x i32> %1168, %1163
  %1170 = add <8 x i32> %1169, %broadcast.splat405
  store <8 x i32> %1170, <8 x i32>* %834, align 16, !alias.scope !123, !noalias !149
  %wide.load388.1 = load <8 x i32>, <8 x i32>* %836, align 16, !alias.scope !145, !noalias !146
  %wide.load389.1 = load <8 x i32>, <8 x i32>* %838, align 16, !alias.scope !147, !noalias !148
  %1171 = add <8 x i32> %wide.load389.1, %wide.load388.1
  %1172 = shl <8 x i32> %wide.load389.1, %broadcast.splat363
  %1173 = xor <8 x i32> %1172, %1171
  %1174 = add <8 x i32> %1173, %1171
  %1175 = shl <8 x i32> %1173, %broadcast.splat393
  %1176 = select i1 %shft.chk2.i79, <8 x i32> %1175, <8 x i32> zeroinitializer
  %1177 = lshr <8 x i32> %1173, %broadcast.splat395
  %1178 = select i1 %shft.chk3.i80, <8 x i32> %1177, <8 x i32> zeroinitializer
  %1179 = or <8 x i32> %1176, %1178
  %1180 = xor <8 x i32> %1179, %1174
  %1181 = add <8 x i32> %1180, %1174
  %1182 = shl <8 x i32> %1180, %broadcast.splat397
  %1183 = select i1 %shft.chk4.i81, <8 x i32> %1182, <8 x i32> zeroinitializer
  %1184 = lshr <8 x i32> %1180, %broadcast.splat399
  %1185 = select i1 %shft.chk5.i82, <8 x i32> %1184, <8 x i32> zeroinitializer
  %1186 = or <8 x i32> %1183, %1185
  %1187 = xor <8 x i32> %1186, %1181
  %1188 = add <8 x i32> %1187, %1181
  %1189 = shl <8 x i32> %1187, %broadcast.splat401
  %1190 = select i1 %shft.chk6.i83, <8 x i32> %1189, <8 x i32> zeroinitializer
  %1191 = lshr <8 x i32> %1187, %broadcast.splat403
  %1192 = select i1 %shft.chk7.i84, <8 x i32> %1191, <8 x i32> zeroinitializer
  %1193 = or <8 x i32> %1190, %1192
  %1194 = xor <8 x i32> %1193, %1188
  %1195 = add <8 x i32> %1194, %broadcast.splat405
  store <8 x i32> %1195, <8 x i32>* %840, align 16, !alias.scope !123, !noalias !149
  br label %fusion.6.loop_exit.dim.0.i

vector.ph355:                                     ; preds = %fusion.6.loop_body.dim.0.us.i.preheader
  %broadcast.splatinsert364 = insertelement <8 x i32> undef, i32 %953, i32 0
  %broadcast.splat365 = shufflevector <8 x i32> %broadcast.splatinsert364, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splat367 = shufflevector <4 x i32> %954, <4 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert368 = insertelement <8 x i32> undef, i32 %956, i32 0
  %broadcast.splat369 = shufflevector <8 x i32> %broadcast.splatinsert368, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splat371 = shufflevector <4 x i32> %957, <4 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert372 = insertelement <8 x i32> undef, i32 %963, i32 0
  %broadcast.splat373 = shufflevector <8 x i32> %broadcast.splatinsert372, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splat375 = shufflevector <4 x i32> %964, <4 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert376 = insertelement <8 x i32> undef, i32 %966, i32 0
  %broadcast.splat377 = shufflevector <8 x i32> %broadcast.splatinsert376, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert378 = insertelement <8 x i32> undef, i32 %968, i32 0
  %broadcast.splat379 = shufflevector <8 x i32> %broadcast.splatinsert378, <8 x i32> undef, <8 x i32> zeroinitializer
  %wide.load360 = load <8 x i32>, <8 x i32>* %841, align 16, !alias.scope !145, !noalias !146
  %wide.load361 = load <8 x i32>, <8 x i32>* %842, align 16, !alias.scope !147, !noalias !148
  %1196 = add <8 x i32> %wide.load361, %wide.load360
  %1197 = shl <8 x i32> %wide.load361, %broadcast.splat363
  %1198 = lshr <8 x i32> %wide.load361, %broadcast.splat365
  %1199 = or <8 x i32> %1198, %1197
  %1200 = xor <8 x i32> %1199, %1196
  %1201 = add <8 x i32> %1200, %1196
  %1202 = shl <8 x i32> %1200, %broadcast.splat367
  %1203 = select i1 %shft.chk2.i79, <8 x i32> %1202, <8 x i32> zeroinitializer
  %1204 = lshr <8 x i32> %1200, %broadcast.splat369
  %1205 = select i1 %shft.chk3.i80, <8 x i32> %1204, <8 x i32> zeroinitializer
  %1206 = or <8 x i32> %1203, %1205
  %1207 = xor <8 x i32> %1206, %1201
  %1208 = add <8 x i32> %1207, %1201
  %1209 = shl <8 x i32> %1207, %broadcast.splat371
  %1210 = select i1 %shft.chk4.i81, <8 x i32> %1209, <8 x i32> zeroinitializer
  %1211 = lshr <8 x i32> %1207, %broadcast.splat373
  %1212 = select i1 %shft.chk5.i82, <8 x i32> %1211, <8 x i32> zeroinitializer
  %1213 = or <8 x i32> %1210, %1212
  %1214 = xor <8 x i32> %1213, %1208
  %1215 = add <8 x i32> %1214, %1208
  %1216 = shl <8 x i32> %1214, %broadcast.splat375
  %1217 = select i1 %shft.chk6.i83, <8 x i32> %1216, <8 x i32> zeroinitializer
  %1218 = lshr <8 x i32> %1214, %broadcast.splat377
  %1219 = select i1 %shft.chk7.i84, <8 x i32> %1218, <8 x i32> zeroinitializer
  %1220 = or <8 x i32> %1217, %1219
  %1221 = xor <8 x i32> %1220, %1215
  %1222 = add <8 x i32> %1221, %broadcast.splat379
  store <8 x i32> %1222, <8 x i32>* %843, align 16, !alias.scope !123, !noalias !149
  %wide.load360.1 = load <8 x i32>, <8 x i32>* %845, align 16, !alias.scope !145, !noalias !146
  %wide.load361.1 = load <8 x i32>, <8 x i32>* %847, align 16, !alias.scope !147, !noalias !148
  %1223 = add <8 x i32> %wide.load361.1, %wide.load360.1
  %1224 = shl <8 x i32> %wide.load361.1, %broadcast.splat363
  %1225 = lshr <8 x i32> %wide.load361.1, %broadcast.splat365
  %1226 = or <8 x i32> %1225, %1224
  %1227 = xor <8 x i32> %1226, %1223
  %1228 = add <8 x i32> %1227, %1223
  %1229 = shl <8 x i32> %1227, %broadcast.splat367
  %1230 = select i1 %shft.chk2.i79, <8 x i32> %1229, <8 x i32> zeroinitializer
  %1231 = lshr <8 x i32> %1227, %broadcast.splat369
  %1232 = select i1 %shft.chk3.i80, <8 x i32> %1231, <8 x i32> zeroinitializer
  %1233 = or <8 x i32> %1230, %1232
  %1234 = xor <8 x i32> %1233, %1228
  %1235 = add <8 x i32> %1234, %1228
  %1236 = shl <8 x i32> %1234, %broadcast.splat371
  %1237 = select i1 %shft.chk4.i81, <8 x i32> %1236, <8 x i32> zeroinitializer
  %1238 = lshr <8 x i32> %1234, %broadcast.splat373
  %1239 = select i1 %shft.chk5.i82, <8 x i32> %1238, <8 x i32> zeroinitializer
  %1240 = or <8 x i32> %1237, %1239
  %1241 = xor <8 x i32> %1240, %1235
  %1242 = add <8 x i32> %1241, %1235
  %1243 = shl <8 x i32> %1241, %broadcast.splat375
  %1244 = select i1 %shft.chk6.i83, <8 x i32> %1243, <8 x i32> zeroinitializer
  %1245 = lshr <8 x i32> %1241, %broadcast.splat377
  %1246 = select i1 %shft.chk7.i84, <8 x i32> %1245, <8 x i32> zeroinitializer
  %1247 = or <8 x i32> %1244, %1246
  %1248 = xor <8 x i32> %1247, %1242
  %1249 = add <8 x i32> %1248, %broadcast.splat379
  store <8 x i32> %1249, <8 x i32>* %849, align 16, !alias.scope !123, !noalias !149
  br label %fusion.6.loop_exit.dim.0.i

fusion.6.loop_exit.dim.0.i:                       ; preds = %vector.ph483, %vector.ph459, %vector.ph435, %vector.ph409, %vector.ph383, %vector.ph355
  %1250 = load i32*, i32** %781, align 8, !dereferenceable !74, !align !74
  %1251 = load i32, i32* %1250, align 4
  store i32 %1251, i32* %copy.36.i, align 16
  br i1 %shft.chk.i77, label %fusion.6.loop_exit.dim.0.split.us.i, label %fusion.6.loop_exit.dim.0.split.i

fusion.6.loop_exit.dim.0.split.us.i:              ; preds = %fusion.6.loop_exit.dim.0.i
  br i1 %shft.chk1.i78, label %fusion.7.loop_body.dim.0.us.us.i.preheader, label %fusion.7.loop_body.dim.0.us.i.preheader

fusion.7.loop_body.dim.0.us.i.preheader:          ; preds = %fusion.6.loop_exit.dim.0.split.us.i
  br i1 %shft.chk2.i79, label %vector.ph251, label %fusion.7.loop_body.dim.0.us.i.preheader.split

vector.ph251:                                     ; preds = %fusion.7.loop_body.dim.0.us.i.preheader
  %broadcast.splat259 = shufflevector <4 x i32> %950, <4 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splat261 = shufflevector <4 x i32> %954, <4 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert262 = insertelement <8 x i32> undef, i32 %956, i32 0
  %broadcast.splat263 = shufflevector <8 x i32> %broadcast.splatinsert262, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splat265 = shufflevector <4 x i32> %957, <4 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert266 = insertelement <8 x i32> undef, i32 %963, i32 0
  %broadcast.splat267 = shufflevector <8 x i32> %broadcast.splatinsert266, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert268 = insertelement <8 x i32> undef, i32 %1251, i32 0
  %broadcast.splat269 = shufflevector <8 x i32> %broadcast.splatinsert268, <8 x i32> undef, <8 x i32> zeroinitializer
  %wide.load256 = load <8 x i32>, <8 x i32>* %910, align 16, !alias.scope !145, !noalias !146
  %wide.load257 = load <8 x i32>, <8 x i32>* %911, align 16, !alias.scope !147, !noalias !148
  %1252 = add <8 x i32> %wide.load257, %wide.load256
  %1253 = shl <8 x i32> %wide.load257, %broadcast.splat259
  %1254 = xor <8 x i32> %1253, %1252
  %1255 = add <8 x i32> %1254, %1252
  %1256 = shl <8 x i32> %1254, %broadcast.splat261
  %1257 = lshr <8 x i32> %1254, %broadcast.splat263
  %1258 = select i1 %shft.chk3.i80, <8 x i32> %1257, <8 x i32> zeroinitializer
  %1259 = or <8 x i32> %1256, %1258
  %1260 = xor <8 x i32> %1259, %1255
  %1261 = add <8 x i32> %1260, %1255
  %1262 = shl <8 x i32> %1260, %broadcast.splat265
  %1263 = select i1 %shft.chk4.i81, <8 x i32> %1262, <8 x i32> zeroinitializer
  %1264 = lshr <8 x i32> %1260, %broadcast.splat267
  %1265 = select i1 %shft.chk5.i82, <8 x i32> %1264, <8 x i32> zeroinitializer
  %1266 = or <8 x i32> %1263, %1265
  %1267 = xor <8 x i32> %1266, %1261
  %1268 = add <8 x i32> %1261, %broadcast.splat269
  %1269 = add <8 x i32> %1268, %1267
  store <8 x i32> %1269, <8 x i32>* %912, align 16, !alias.scope !128, !noalias !150
  %wide.load256.1 = load <8 x i32>, <8 x i32>* %914, align 16, !alias.scope !145, !noalias !146
  %wide.load257.1 = load <8 x i32>, <8 x i32>* %916, align 16, !alias.scope !147, !noalias !148
  %1270 = add <8 x i32> %wide.load257.1, %wide.load256.1
  %1271 = shl <8 x i32> %wide.load257.1, %broadcast.splat259
  %1272 = xor <8 x i32> %1271, %1270
  %1273 = add <8 x i32> %1272, %1270
  %1274 = shl <8 x i32> %1272, %broadcast.splat261
  %1275 = lshr <8 x i32> %1272, %broadcast.splat263
  %1276 = select i1 %shft.chk3.i80, <8 x i32> %1275, <8 x i32> zeroinitializer
  %1277 = or <8 x i32> %1274, %1276
  %1278 = xor <8 x i32> %1277, %1273
  %1279 = add <8 x i32> %1278, %1273
  %1280 = shl <8 x i32> %1278, %broadcast.splat265
  %1281 = select i1 %shft.chk4.i81, <8 x i32> %1280, <8 x i32> zeroinitializer
  %1282 = lshr <8 x i32> %1278, %broadcast.splat267
  %1283 = select i1 %shft.chk5.i82, <8 x i32> %1282, <8 x i32> zeroinitializer
  %1284 = or <8 x i32> %1281, %1283
  %1285 = xor <8 x i32> %1284, %1279
  %1286 = add <8 x i32> %1279, %broadcast.splat269
  %1287 = add <8 x i32> %1286, %1285
  store <8 x i32> %1287, <8 x i32>* %918, align 16, !alias.scope !128, !noalias !150
  br label %body_computation__3.792.clone.exit

fusion.7.loop_body.dim.0.us.i.preheader.split:    ; preds = %fusion.7.loop_body.dim.0.us.i.preheader
  br i1 %shft.chk3.i80, label %vector.ph273, label %fusion.7.loop_body.dim.0.us.i.preheader137

vector.ph273:                                     ; preds = %fusion.7.loop_body.dim.0.us.i.preheader.split
  %broadcast.splat281 = shufflevector <4 x i32> %950, <4 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert282 = insertelement <8 x i32> undef, i32 %956, i32 0
  %broadcast.splat283 = shufflevector <8 x i32> %broadcast.splatinsert282, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splat285 = shufflevector <4 x i32> %957, <4 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert286 = insertelement <8 x i32> undef, i32 %963, i32 0
  %broadcast.splat287 = shufflevector <8 x i32> %broadcast.splatinsert286, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert288 = insertelement <8 x i32> undef, i32 %1251, i32 0
  %broadcast.splat289 = shufflevector <8 x i32> %broadcast.splatinsert288, <8 x i32> undef, <8 x i32> zeroinitializer
  %wide.load278 = load <8 x i32>, <8 x i32>* %901, align 16, !alias.scope !145, !noalias !146
  %wide.load279 = load <8 x i32>, <8 x i32>* %902, align 16, !alias.scope !147, !noalias !148
  %1288 = add <8 x i32> %wide.load279, %wide.load278
  %1289 = shl <8 x i32> %wide.load279, %broadcast.splat281
  %1290 = xor <8 x i32> %1289, %1288
  %1291 = add <8 x i32> %1290, %1288
  %1292 = lshr <8 x i32> %1290, %broadcast.splat283
  %1293 = xor <8 x i32> %1292, %1291
  %1294 = add <8 x i32> %1293, %1291
  %1295 = shl <8 x i32> %1293, %broadcast.splat285
  %1296 = select i1 %shft.chk4.i81, <8 x i32> %1295, <8 x i32> zeroinitializer
  %1297 = lshr <8 x i32> %1293, %broadcast.splat287
  %1298 = select i1 %shft.chk5.i82, <8 x i32> %1297, <8 x i32> zeroinitializer
  %1299 = or <8 x i32> %1296, %1298
  %1300 = xor <8 x i32> %1299, %1294
  %1301 = add <8 x i32> %1294, %broadcast.splat289
  %1302 = add <8 x i32> %1301, %1300
  store <8 x i32> %1302, <8 x i32>* %903, align 16, !alias.scope !128, !noalias !150
  %wide.load278.1 = load <8 x i32>, <8 x i32>* %905, align 16, !alias.scope !145, !noalias !146
  %wide.load279.1 = load <8 x i32>, <8 x i32>* %907, align 16, !alias.scope !147, !noalias !148
  %1303 = add <8 x i32> %wide.load279.1, %wide.load278.1
  %1304 = shl <8 x i32> %wide.load279.1, %broadcast.splat281
  %1305 = xor <8 x i32> %1304, %1303
  %1306 = add <8 x i32> %1305, %1303
  %1307 = lshr <8 x i32> %1305, %broadcast.splat283
  %1308 = xor <8 x i32> %1307, %1306
  %1309 = add <8 x i32> %1308, %1306
  %1310 = shl <8 x i32> %1308, %broadcast.splat285
  %1311 = select i1 %shft.chk4.i81, <8 x i32> %1310, <8 x i32> zeroinitializer
  %1312 = lshr <8 x i32> %1308, %broadcast.splat287
  %1313 = select i1 %shft.chk5.i82, <8 x i32> %1312, <8 x i32> zeroinitializer
  %1314 = or <8 x i32> %1311, %1313
  %1315 = xor <8 x i32> %1314, %1309
  %1316 = add <8 x i32> %1309, %broadcast.splat289
  %1317 = add <8 x i32> %1316, %1315
  store <8 x i32> %1317, <8 x i32>* %909, align 16, !alias.scope !128, !noalias !150
  br label %body_computation__3.792.clone.exit

fusion.7.loop_body.dim.0.us.i.preheader137:       ; preds = %fusion.7.loop_body.dim.0.us.i.preheader.split
  %1318 = load <8 x i32>, <8 x i32>* %895, align 16, !alias.scope !145, !noalias !146
  %1319 = load <8 x i32>, <8 x i32>* %896, align 16, !alias.scope !147, !noalias !148
  %1320 = add <8 x i32> %1319, %1318
  %1321 = insertelement <8 x i32> %951, i32 %952, i32 1
  %1322 = insertelement <8 x i32> %1321, i32 %952, i32 2
  %1323 = insertelement <8 x i32> %1322, i32 %952, i32 3
  %1324 = insertelement <8 x i32> %1323, i32 %952, i32 4
  %1325 = insertelement <8 x i32> %1324, i32 %952, i32 5
  %1326 = insertelement <8 x i32> %1325, i32 %952, i32 6
  %1327 = insertelement <8 x i32> %1326, i32 %952, i32 7
  %1328 = shl <8 x i32> %1319, %1327
  %1329 = xor <8 x i32> %1328, %1320
  %1330 = add <8 x i32> %1329, %1320
  %1331 = shl <8 x i32> %1330, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %1332 = insertelement <8 x i32> %958, i32 %962, i32 1
  %1333 = insertelement <8 x i32> %1332, i32 %962, i32 2
  %1334 = insertelement <8 x i32> %1333, i32 %962, i32 3
  %1335 = insertelement <8 x i32> %1334, i32 %962, i32 4
  %1336 = insertelement <8 x i32> %1335, i32 %962, i32 5
  %1337 = insertelement <8 x i32> %1336, i32 %962, i32 6
  %1338 = insertelement <8 x i32> %1337, i32 %962, i32 7
  %1339 = shl <8 x i32> %1330, %1338
  %1340 = insertelement <8 x i1> undef, i1 %shft.chk4.i81, i32 0
  %1341 = shufflevector <8 x i1> %1340, <8 x i1> undef, <8 x i32> zeroinitializer
  %1342 = select <8 x i1> %1341, <8 x i32> %1339, <8 x i32> zeroinitializer
  %1343 = insertelement <8 x i32> undef, i32 %963, i32 0
  %1344 = shufflevector <8 x i32> %1343, <8 x i32> undef, <8 x i32> zeroinitializer
  %1345 = lshr <8 x i32> %1330, %1344
  %1346 = insertelement <8 x i1> undef, i1 %shft.chk5.i82, i32 0
  %1347 = shufflevector <8 x i1> %1346, <8 x i1> undef, <8 x i32> zeroinitializer
  %1348 = select <8 x i1> %1347, <8 x i32> %1345, <8 x i32> zeroinitializer
  %1349 = or <8 x i32> %1342, %1348
  %1350 = xor <8 x i32> %1349, %1331
  %1351 = insertelement <8 x i32> undef, i32 %1251, i32 0
  %1352 = shufflevector <8 x i32> %1351, <8 x i32> undef, <8 x i32> zeroinitializer
  %1353 = add <8 x i32> %1331, %1352
  %1354 = add <8 x i32> %1353, %1350
  store <8 x i32> %1354, <8 x i32>* %897, align 16, !alias.scope !128, !noalias !150
  %1355 = load <8 x i32>, <8 x i32>* %898, align 16, !alias.scope !145, !noalias !146
  %1356 = load <8 x i32>, <8 x i32>* %899, align 16, !alias.scope !147, !noalias !148
  %1357 = add <8 x i32> %1356, %1355
  %1358 = shl <8 x i32> %1356, %1327
  %1359 = xor <8 x i32> %1358, %1357
  %1360 = add <8 x i32> %1359, %1357
  %1361 = shl <8 x i32> %1360, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %1362 = shl <8 x i32> %1360, %1338
  %1363 = select <8 x i1> %1341, <8 x i32> %1362, <8 x i32> zeroinitializer
  %1364 = lshr <8 x i32> %1360, %1344
  %1365 = select <8 x i1> %1347, <8 x i32> %1364, <8 x i32> zeroinitializer
  %1366 = or <8 x i32> %1363, %1365
  %1367 = xor <8 x i32> %1366, %1361
  %1368 = add <8 x i32> %1361, %1352
  %1369 = add <8 x i32> %1368, %1367
  store <8 x i32> %1369, <8 x i32>* %900, align 16, !alias.scope !128, !noalias !150
  br label %body_computation__3.792.clone.exit

fusion.7.loop_body.dim.0.us.us.i.preheader:       ; preds = %fusion.6.loop_exit.dim.0.split.us.i
  %broadcast.splat = shufflevector <4 x i32> %950, <4 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert194 = insertelement <8 x i32> undef, i32 %953, i32 0
  %broadcast.splat195 = shufflevector <8 x i32> %broadcast.splatinsert194, <8 x i32> undef, <8 x i32> zeroinitializer
  br i1 %shft.chk2.i79, label %vector.ph, label %fusion.7.loop_body.dim.0.us.us.i.preheader.split

vector.ph:                                        ; preds = %fusion.7.loop_body.dim.0.us.us.i.preheader
  %broadcast.splat197 = shufflevector <4 x i32> %954, <4 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert198 = insertelement <8 x i32> undef, i32 %956, i32 0
  %broadcast.splat199 = shufflevector <8 x i32> %broadcast.splatinsert198, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splat201 = shufflevector <4 x i32> %957, <4 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert202 = insertelement <8 x i32> undef, i32 %963, i32 0
  %broadcast.splat203 = shufflevector <8 x i32> %broadcast.splatinsert202, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert204 = insertelement <8 x i32> undef, i32 %1251, i32 0
  %broadcast.splat205 = shufflevector <8 x i32> %broadcast.splatinsert204, <8 x i32> undef, <8 x i32> zeroinitializer
  %wide.load = load <8 x i32>, <8 x i32>* %937, align 16, !alias.scope !145, !noalias !146
  %wide.load193 = load <8 x i32>, <8 x i32>* %938, align 16, !alias.scope !147, !noalias !148
  %1370 = add <8 x i32> %wide.load193, %wide.load
  %1371 = shl <8 x i32> %wide.load193, %broadcast.splat
  %1372 = lshr <8 x i32> %wide.load193, %broadcast.splat195
  %1373 = or <8 x i32> %1372, %1371
  %1374 = xor <8 x i32> %1373, %1370
  %1375 = add <8 x i32> %1374, %1370
  %1376 = shl <8 x i32> %1374, %broadcast.splat197
  %1377 = lshr <8 x i32> %1374, %broadcast.splat199
  %1378 = select i1 %shft.chk3.i80, <8 x i32> %1377, <8 x i32> zeroinitializer
  %1379 = or <8 x i32> %1376, %1378
  %1380 = xor <8 x i32> %1379, %1375
  %1381 = add <8 x i32> %1380, %1375
  %1382 = shl <8 x i32> %1380, %broadcast.splat201
  %1383 = select i1 %shft.chk4.i81, <8 x i32> %1382, <8 x i32> zeroinitializer
  %1384 = lshr <8 x i32> %1380, %broadcast.splat203
  %1385 = select i1 %shft.chk5.i82, <8 x i32> %1384, <8 x i32> zeroinitializer
  %1386 = or <8 x i32> %1383, %1385
  %1387 = xor <8 x i32> %1386, %1381
  %1388 = add <8 x i32> %1381, %broadcast.splat205
  %1389 = add <8 x i32> %1388, %1387
  store <8 x i32> %1389, <8 x i32>* %939, align 16, !alias.scope !128, !noalias !150
  %wide.load.1 = load <8 x i32>, <8 x i32>* %941, align 16, !alias.scope !145, !noalias !146
  %wide.load193.1 = load <8 x i32>, <8 x i32>* %943, align 16, !alias.scope !147, !noalias !148
  %1390 = add <8 x i32> %wide.load193.1, %wide.load.1
  %1391 = shl <8 x i32> %wide.load193.1, %broadcast.splat
  %1392 = lshr <8 x i32> %wide.load193.1, %broadcast.splat195
  %1393 = or <8 x i32> %1392, %1391
  %1394 = xor <8 x i32> %1393, %1390
  %1395 = add <8 x i32> %1394, %1390
  %1396 = shl <8 x i32> %1394, %broadcast.splat197
  %1397 = lshr <8 x i32> %1394, %broadcast.splat199
  %1398 = select i1 %shft.chk3.i80, <8 x i32> %1397, <8 x i32> zeroinitializer
  %1399 = or <8 x i32> %1396, %1398
  %1400 = xor <8 x i32> %1399, %1395
  %1401 = add <8 x i32> %1400, %1395
  %1402 = shl <8 x i32> %1400, %broadcast.splat201
  %1403 = select i1 %shft.chk4.i81, <8 x i32> %1402, <8 x i32> zeroinitializer
  %1404 = lshr <8 x i32> %1400, %broadcast.splat203
  %1405 = select i1 %shft.chk5.i82, <8 x i32> %1404, <8 x i32> zeroinitializer
  %1406 = or <8 x i32> %1403, %1405
  %1407 = xor <8 x i32> %1406, %1401
  %1408 = add <8 x i32> %1401, %broadcast.splat205
  %1409 = add <8 x i32> %1408, %1407
  store <8 x i32> %1409, <8 x i32>* %945, align 16, !alias.scope !128, !noalias !150
  br label %body_computation__3.792.clone.exit

fusion.7.loop_body.dim.0.us.us.i.preheader.split: ; preds = %fusion.7.loop_body.dim.0.us.us.i.preheader
  br i1 %shft.chk3.i80, label %vector.ph209, label %vector.ph231

vector.ph231:                                     ; preds = %fusion.7.loop_body.dim.0.us.us.i.preheader.split
  %broadcast.splat243 = shufflevector <4 x i32> %957, <4 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert244 = insertelement <8 x i32> undef, i32 %963, i32 0
  %broadcast.splat245 = shufflevector <8 x i32> %broadcast.splatinsert244, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert246 = insertelement <8 x i32> undef, i32 %1251, i32 0
  %broadcast.splat247 = shufflevector <8 x i32> %broadcast.splatinsert246, <8 x i32> undef, <8 x i32> zeroinitializer
  %wide.load236 = load <8 x i32>, <8 x i32>* %919, align 16, !alias.scope !145, !noalias !146
  %wide.load237 = load <8 x i32>, <8 x i32>* %920, align 16, !alias.scope !147, !noalias !148
  %1410 = add <8 x i32> %wide.load237, %wide.load236
  %1411 = shl <8 x i32> %wide.load237, %broadcast.splat
  %1412 = lshr <8 x i32> %wide.load237, %broadcast.splat195
  %1413 = or <8 x i32> %1412, %1411
  %1414 = xor <8 x i32> %1413, %1410
  %1415 = add <8 x i32> %1414, %1410
  %1416 = shl <8 x i32> %1415, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %1417 = shl <8 x i32> %1415, %broadcast.splat243
  %1418 = select i1 %shft.chk4.i81, <8 x i32> %1417, <8 x i32> zeroinitializer
  %1419 = lshr <8 x i32> %1415, %broadcast.splat245
  %1420 = select i1 %shft.chk5.i82, <8 x i32> %1419, <8 x i32> zeroinitializer
  %1421 = or <8 x i32> %1418, %1420
  %1422 = xor <8 x i32> %1421, %1416
  %1423 = add <8 x i32> %1416, %broadcast.splat247
  %1424 = add <8 x i32> %1423, %1422
  store <8 x i32> %1424, <8 x i32>* %921, align 16, !alias.scope !128, !noalias !150
  %wide.load236.1 = load <8 x i32>, <8 x i32>* %923, align 16, !alias.scope !145, !noalias !146
  %wide.load237.1 = load <8 x i32>, <8 x i32>* %925, align 16, !alias.scope !147, !noalias !148
  %1425 = add <8 x i32> %wide.load237.1, %wide.load236.1
  %1426 = shl <8 x i32> %wide.load237.1, %broadcast.splat
  %1427 = lshr <8 x i32> %wide.load237.1, %broadcast.splat195
  %1428 = or <8 x i32> %1427, %1426
  %1429 = xor <8 x i32> %1428, %1425
  %1430 = add <8 x i32> %1429, %1425
  %1431 = shl <8 x i32> %1430, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %1432 = shl <8 x i32> %1430, %broadcast.splat243
  %1433 = select i1 %shft.chk4.i81, <8 x i32> %1432, <8 x i32> zeroinitializer
  %1434 = lshr <8 x i32> %1430, %broadcast.splat245
  %1435 = select i1 %shft.chk5.i82, <8 x i32> %1434, <8 x i32> zeroinitializer
  %1436 = or <8 x i32> %1433, %1435
  %1437 = xor <8 x i32> %1436, %1431
  %1438 = add <8 x i32> %1431, %broadcast.splat247
  %1439 = add <8 x i32> %1438, %1437
  store <8 x i32> %1439, <8 x i32>* %927, align 16, !alias.scope !128, !noalias !150
  br label %body_computation__3.792.clone.exit

vector.ph209:                                     ; preds = %fusion.7.loop_body.dim.0.us.us.i.preheader.split
  %broadcast.splatinsert220 = insertelement <8 x i32> undef, i32 %956, i32 0
  %broadcast.splat221 = shufflevector <8 x i32> %broadcast.splatinsert220, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splat223 = shufflevector <4 x i32> %957, <4 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert224 = insertelement <8 x i32> undef, i32 %963, i32 0
  %broadcast.splat225 = shufflevector <8 x i32> %broadcast.splatinsert224, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert226 = insertelement <8 x i32> undef, i32 %1251, i32 0
  %broadcast.splat227 = shufflevector <8 x i32> %broadcast.splatinsert226, <8 x i32> undef, <8 x i32> zeroinitializer
  %wide.load214 = load <8 x i32>, <8 x i32>* %928, align 16, !alias.scope !145, !noalias !146
  %wide.load215 = load <8 x i32>, <8 x i32>* %929, align 16, !alias.scope !147, !noalias !148
  %1440 = add <8 x i32> %wide.load215, %wide.load214
  %1441 = shl <8 x i32> %wide.load215, %broadcast.splat
  %1442 = lshr <8 x i32> %wide.load215, %broadcast.splat195
  %1443 = or <8 x i32> %1442, %1441
  %1444 = xor <8 x i32> %1443, %1440
  %1445 = add <8 x i32> %1444, %1440
  %1446 = lshr <8 x i32> %1444, %broadcast.splat221
  %1447 = xor <8 x i32> %1446, %1445
  %1448 = add <8 x i32> %1447, %1445
  %1449 = shl <8 x i32> %1447, %broadcast.splat223
  %1450 = select i1 %shft.chk4.i81, <8 x i32> %1449, <8 x i32> zeroinitializer
  %1451 = lshr <8 x i32> %1447, %broadcast.splat225
  %1452 = select i1 %shft.chk5.i82, <8 x i32> %1451, <8 x i32> zeroinitializer
  %1453 = or <8 x i32> %1450, %1452
  %1454 = xor <8 x i32> %1453, %1448
  %1455 = add <8 x i32> %1448, %broadcast.splat227
  %1456 = add <8 x i32> %1455, %1454
  store <8 x i32> %1456, <8 x i32>* %930, align 16, !alias.scope !128, !noalias !150
  %wide.load214.1 = load <8 x i32>, <8 x i32>* %932, align 16, !alias.scope !145, !noalias !146
  %wide.load215.1 = load <8 x i32>, <8 x i32>* %934, align 16, !alias.scope !147, !noalias !148
  %1457 = add <8 x i32> %wide.load215.1, %wide.load214.1
  %1458 = shl <8 x i32> %wide.load215.1, %broadcast.splat
  %1459 = lshr <8 x i32> %wide.load215.1, %broadcast.splat195
  %1460 = or <8 x i32> %1459, %1458
  %1461 = xor <8 x i32> %1460, %1457
  %1462 = add <8 x i32> %1461, %1457
  %1463 = lshr <8 x i32> %1461, %broadcast.splat221
  %1464 = xor <8 x i32> %1463, %1462
  %1465 = add <8 x i32> %1464, %1462
  %1466 = shl <8 x i32> %1464, %broadcast.splat223
  %1467 = select i1 %shft.chk4.i81, <8 x i32> %1466, <8 x i32> zeroinitializer
  %1468 = lshr <8 x i32> %1464, %broadcast.splat225
  %1469 = select i1 %shft.chk5.i82, <8 x i32> %1468, <8 x i32> zeroinitializer
  %1470 = or <8 x i32> %1467, %1469
  %1471 = xor <8 x i32> %1470, %1465
  %1472 = add <8 x i32> %1465, %broadcast.splat227
  %1473 = add <8 x i32> %1472, %1471
  store <8 x i32> %1473, <8 x i32>* %936, align 16, !alias.scope !128, !noalias !150
  br label %body_computation__3.792.clone.exit

fusion.6.loop_exit.dim.0.split.i:                 ; preds = %fusion.6.loop_exit.dim.0.i
  br i1 %shft.chk1.i78, label %fusion.7.loop_body.dim.0.us3.i.preheader, label %fusion.7.loop_body.dim.0.i.preheader

fusion.7.loop_body.dim.0.i.preheader:             ; preds = %fusion.6.loop_exit.dim.0.split.i
  br i1 %shft.chk2.i79, label %vector.ph335, label %fusion.7.loop_body.dim.0.i.preheader.split

vector.ph335:                                     ; preds = %fusion.7.loop_body.dim.0.i.preheader
  %broadcast.splat343 = shufflevector <4 x i32> %954, <4 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert344 = insertelement <8 x i32> undef, i32 %956, i32 0
  %broadcast.splat345 = shufflevector <8 x i32> %broadcast.splatinsert344, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splat347 = shufflevector <4 x i32> %957, <4 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert348 = insertelement <8 x i32> undef, i32 %963, i32 0
  %broadcast.splat349 = shufflevector <8 x i32> %broadcast.splatinsert348, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert350 = insertelement <8 x i32> undef, i32 %1251, i32 0
  %broadcast.splat351 = shufflevector <8 x i32> %broadcast.splatinsert350, <8 x i32> undef, <8 x i32> zeroinitializer
  %wide.load340 = load <8 x i32>, <8 x i32>* %862, align 16, !alias.scope !145, !noalias !146
  %wide.load341 = load <8 x i32>, <8 x i32>* %863, align 16, !alias.scope !147, !noalias !148
  %1474 = add <8 x i32> %wide.load341, %wide.load340
  %1475 = shl <8 x i32> %1474, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %1476 = shl <8 x i32> %1474, %broadcast.splat343
  %1477 = lshr <8 x i32> %1474, %broadcast.splat345
  %1478 = select i1 %shft.chk3.i80, <8 x i32> %1477, <8 x i32> zeroinitializer
  %1479 = or <8 x i32> %1476, %1478
  %1480 = xor <8 x i32> %1479, %1475
  %1481 = add <8 x i32> %1480, %1475
  %1482 = shl <8 x i32> %1480, %broadcast.splat347
  %1483 = select i1 %shft.chk4.i81, <8 x i32> %1482, <8 x i32> zeroinitializer
  %1484 = lshr <8 x i32> %1480, %broadcast.splat349
  %1485 = select i1 %shft.chk5.i82, <8 x i32> %1484, <8 x i32> zeroinitializer
  %1486 = or <8 x i32> %1483, %1485
  %1487 = xor <8 x i32> %1486, %1481
  %1488 = add <8 x i32> %1481, %broadcast.splat351
  %1489 = add <8 x i32> %1488, %1487
  store <8 x i32> %1489, <8 x i32>* %864, align 16, !alias.scope !128, !noalias !150
  %wide.load340.1 = load <8 x i32>, <8 x i32>* %866, align 16, !alias.scope !145, !noalias !146
  %wide.load341.1 = load <8 x i32>, <8 x i32>* %868, align 16, !alias.scope !147, !noalias !148
  %1490 = add <8 x i32> %wide.load341.1, %wide.load340.1
  %1491 = shl <8 x i32> %1490, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %1492 = shl <8 x i32> %1490, %broadcast.splat343
  %1493 = lshr <8 x i32> %1490, %broadcast.splat345
  %1494 = select i1 %shft.chk3.i80, <8 x i32> %1493, <8 x i32> zeroinitializer
  %1495 = or <8 x i32> %1492, %1494
  %1496 = xor <8 x i32> %1495, %1491
  %1497 = add <8 x i32> %1496, %1491
  %1498 = shl <8 x i32> %1496, %broadcast.splat347
  %1499 = select i1 %shft.chk4.i81, <8 x i32> %1498, <8 x i32> zeroinitializer
  %1500 = lshr <8 x i32> %1496, %broadcast.splat349
  %1501 = select i1 %shft.chk5.i82, <8 x i32> %1500, <8 x i32> zeroinitializer
  %1502 = or <8 x i32> %1499, %1501
  %1503 = xor <8 x i32> %1502, %1497
  %1504 = add <8 x i32> %1497, %broadcast.splat351
  %1505 = add <8 x i32> %1504, %1503
  store <8 x i32> %1505, <8 x i32>* %870, align 16, !alias.scope !128, !noalias !150
  br label %body_computation__3.792.clone.exit

fusion.7.loop_body.dim.0.i.preheader.split:       ; preds = %fusion.7.loop_body.dim.0.i.preheader
  br i1 %shft.chk3.i80, label %fusion.7.loop_body.dim.0.i.us113.preheader, label %fusion.7.loop_body.dim.0.i.preheader145

fusion.7.loop_body.dim.0.i.preheader145:          ; preds = %fusion.7.loop_body.dim.0.i.preheader.split
  %1506 = load <8 x i32>, <8 x i32>* %850, align 16, !alias.scope !145, !noalias !146
  %1507 = load <8 x i32>, <8 x i32>* %851, align 16, !alias.scope !147, !noalias !148
  %1508 = add <8 x i32> %1507, %1506
  %1509 = shl <8 x i32> %1508, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %1510 = shl <8 x i32> %1508, <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %1511 = insertelement <8 x i32> %959, i32 %962, i32 1
  %1512 = insertelement <8 x i32> %1511, i32 %962, i32 2
  %1513 = insertelement <8 x i32> %1512, i32 %962, i32 3
  %1514 = insertelement <8 x i32> %1513, i32 %962, i32 4
  %1515 = insertelement <8 x i32> %1514, i32 %962, i32 5
  %1516 = insertelement <8 x i32> %1515, i32 %962, i32 6
  %1517 = insertelement <8 x i32> %1516, i32 %962, i32 7
  %1518 = shl <8 x i32> %1509, %1517
  %1519 = insertelement <8 x i1> undef, i1 %shft.chk4.i81, i32 0
  %1520 = shufflevector <8 x i1> %1519, <8 x i1> undef, <8 x i32> zeroinitializer
  %1521 = select <8 x i1> %1520, <8 x i32> %1518, <8 x i32> zeroinitializer
  %1522 = insertelement <8 x i32> undef, i32 %963, i32 0
  %1523 = shufflevector <8 x i32> %1522, <8 x i32> undef, <8 x i32> zeroinitializer
  %1524 = lshr <8 x i32> %1509, %1523
  %1525 = insertelement <8 x i1> undef, i1 %shft.chk5.i82, i32 0
  %1526 = shufflevector <8 x i1> %1525, <8 x i1> undef, <8 x i32> zeroinitializer
  %1527 = select <8 x i1> %1526, <8 x i32> %1524, <8 x i32> zeroinitializer
  %1528 = or <8 x i32> %1521, %1527
  %1529 = xor <8 x i32> %1528, %1510
  %1530 = insertelement <8 x i32> undef, i32 %1251, i32 0
  %1531 = shufflevector <8 x i32> %1530, <8 x i32> undef, <8 x i32> zeroinitializer
  %1532 = add <8 x i32> %1510, %1531
  %1533 = add <8 x i32> %1532, %1529
  store <8 x i32> %1533, <8 x i32>* %852, align 16, !alias.scope !128, !noalias !150
  %1534 = load <8 x i32>, <8 x i32>* %853, align 16, !alias.scope !145, !noalias !146
  %1535 = load <8 x i32>, <8 x i32>* %854, align 16, !alias.scope !147, !noalias !148
  %1536 = add <8 x i32> %1535, %1534
  %1537 = shl <8 x i32> %1536, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %1538 = shl <8 x i32> %1536, <i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2>
  %1539 = shl <8 x i32> %1537, %1517
  %1540 = select <8 x i1> %1520, <8 x i32> %1539, <8 x i32> zeroinitializer
  %1541 = lshr <8 x i32> %1537, %1523
  %1542 = select <8 x i1> %1526, <8 x i32> %1541, <8 x i32> zeroinitializer
  %1543 = or <8 x i32> %1540, %1542
  %1544 = xor <8 x i32> %1543, %1538
  %1545 = add <8 x i32> %1538, %1531
  %1546 = add <8 x i32> %1545, %1544
  store <8 x i32> %1546, <8 x i32>* %855, align 16, !alias.scope !128, !noalias !150
  br label %body_computation__3.792.clone.exit

fusion.7.loop_body.dim.0.i.us113.preheader:       ; preds = %fusion.7.loop_body.dim.0.i.preheader.split
  %1547 = load <8 x i32>, <8 x i32>* %856, align 16, !alias.scope !145, !noalias !146
  %1548 = load <8 x i32>, <8 x i32>* %857, align 16, !alias.scope !147, !noalias !148
  %1549 = add <8 x i32> %1548, %1547
  %1550 = shl <8 x i32> %1549, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %1551 = insertelement <8 x i32> undef, i32 %956, i32 0
  %1552 = shufflevector <8 x i32> %1551, <8 x i32> undef, <8 x i32> zeroinitializer
  %1553 = lshr <8 x i32> %1549, %1552
  %1554 = xor <8 x i32> %1553, %1550
  %1555 = add <8 x i32> %1554, %1550
  %1556 = insertelement <8 x i32> %960, i32 %962, i32 1
  %1557 = insertelement <8 x i32> %1556, i32 %962, i32 2
  %1558 = insertelement <8 x i32> %1557, i32 %962, i32 3
  %1559 = insertelement <8 x i32> %1558, i32 %962, i32 4
  %1560 = insertelement <8 x i32> %1559, i32 %962, i32 5
  %1561 = insertelement <8 x i32> %1560, i32 %962, i32 6
  %1562 = insertelement <8 x i32> %1561, i32 %962, i32 7
  %1563 = shl <8 x i32> %1554, %1562
  %1564 = insertelement <8 x i1> undef, i1 %shft.chk4.i81, i32 0
  %1565 = shufflevector <8 x i1> %1564, <8 x i1> undef, <8 x i32> zeroinitializer
  %1566 = select <8 x i1> %1565, <8 x i32> %1563, <8 x i32> zeroinitializer
  %1567 = insertelement <8 x i32> undef, i32 %963, i32 0
  %1568 = shufflevector <8 x i32> %1567, <8 x i32> undef, <8 x i32> zeroinitializer
  %1569 = lshr <8 x i32> %1554, %1568
  %1570 = insertelement <8 x i1> undef, i1 %shft.chk5.i82, i32 0
  %1571 = shufflevector <8 x i1> %1570, <8 x i1> undef, <8 x i32> zeroinitializer
  %1572 = select <8 x i1> %1571, <8 x i32> %1569, <8 x i32> zeroinitializer
  %1573 = or <8 x i32> %1566, %1572
  %1574 = xor <8 x i32> %1573, %1555
  %1575 = insertelement <8 x i32> undef, i32 %1251, i32 0
  %1576 = shufflevector <8 x i32> %1575, <8 x i32> undef, <8 x i32> zeroinitializer
  %1577 = add <8 x i32> %1555, %1576
  %1578 = add <8 x i32> %1577, %1574
  store <8 x i32> %1578, <8 x i32>* %858, align 16, !alias.scope !128, !noalias !150
  %1579 = load <8 x i32>, <8 x i32>* %859, align 16, !alias.scope !145, !noalias !146
  %1580 = load <8 x i32>, <8 x i32>* %860, align 16, !alias.scope !147, !noalias !148
  %1581 = add <8 x i32> %1580, %1579
  %1582 = shl <8 x i32> %1581, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %1583 = lshr <8 x i32> %1581, %1552
  %1584 = xor <8 x i32> %1583, %1582
  %1585 = add <8 x i32> %1584, %1582
  %1586 = shl <8 x i32> %1584, %1562
  %1587 = select <8 x i1> %1565, <8 x i32> %1586, <8 x i32> zeroinitializer
  %1588 = lshr <8 x i32> %1584, %1568
  %1589 = select <8 x i1> %1571, <8 x i32> %1588, <8 x i32> zeroinitializer
  %1590 = or <8 x i32> %1587, %1589
  %1591 = xor <8 x i32> %1590, %1585
  %1592 = add <8 x i32> %1585, %1576
  %1593 = add <8 x i32> %1592, %1591
  store <8 x i32> %1593, <8 x i32>* %861, align 16, !alias.scope !128, !noalias !150
  br label %body_computation__3.792.clone.exit

fusion.7.loop_body.dim.0.us3.i.preheader:         ; preds = %fusion.6.loop_exit.dim.0.split.i
  br i1 %shft.chk2.i79, label %vector.ph293, label %fusion.7.loop_body.dim.0.us3.i.preheader.split

vector.ph293:                                     ; preds = %fusion.7.loop_body.dim.0.us3.i.preheader
  %broadcast.splatinsert300 = insertelement <8 x i32> undef, i32 %953, i32 0
  %broadcast.splat301 = shufflevector <8 x i32> %broadcast.splatinsert300, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splat303 = shufflevector <4 x i32> %954, <4 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert304 = insertelement <8 x i32> undef, i32 %956, i32 0
  %broadcast.splat305 = shufflevector <8 x i32> %broadcast.splatinsert304, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splat307 = shufflevector <4 x i32> %957, <4 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert308 = insertelement <8 x i32> undef, i32 %963, i32 0
  %broadcast.splat309 = shufflevector <8 x i32> %broadcast.splatinsert308, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert310 = insertelement <8 x i32> undef, i32 %1251, i32 0
  %broadcast.splat311 = shufflevector <8 x i32> %broadcast.splatinsert310, <8 x i32> undef, <8 x i32> zeroinitializer
  %wide.load298 = load <8 x i32>, <8 x i32>* %886, align 16, !alias.scope !145, !noalias !146
  %wide.load299 = load <8 x i32>, <8 x i32>* %887, align 16, !alias.scope !147, !noalias !148
  %1594 = add <8 x i32> %wide.load299, %wide.load298
  %1595 = lshr <8 x i32> %wide.load299, %broadcast.splat301
  %1596 = xor <8 x i32> %1595, %1594
  %1597 = add <8 x i32> %1596, %1594
  %1598 = shl <8 x i32> %1596, %broadcast.splat303
  %1599 = lshr <8 x i32> %1596, %broadcast.splat305
  %1600 = select i1 %shft.chk3.i80, <8 x i32> %1599, <8 x i32> zeroinitializer
  %1601 = or <8 x i32> %1598, %1600
  %1602 = xor <8 x i32> %1601, %1597
  %1603 = add <8 x i32> %1602, %1597
  %1604 = shl <8 x i32> %1602, %broadcast.splat307
  %1605 = select i1 %shft.chk4.i81, <8 x i32> %1604, <8 x i32> zeroinitializer
  %1606 = lshr <8 x i32> %1602, %broadcast.splat309
  %1607 = select i1 %shft.chk5.i82, <8 x i32> %1606, <8 x i32> zeroinitializer
  %1608 = or <8 x i32> %1605, %1607
  %1609 = xor <8 x i32> %1608, %1603
  %1610 = add <8 x i32> %1603, %broadcast.splat311
  %1611 = add <8 x i32> %1610, %1609
  store <8 x i32> %1611, <8 x i32>* %888, align 16, !alias.scope !128, !noalias !150
  %wide.load298.1 = load <8 x i32>, <8 x i32>* %890, align 16, !alias.scope !145, !noalias !146
  %wide.load299.1 = load <8 x i32>, <8 x i32>* %892, align 16, !alias.scope !147, !noalias !148
  %1612 = add <8 x i32> %wide.load299.1, %wide.load298.1
  %1613 = lshr <8 x i32> %wide.load299.1, %broadcast.splat301
  %1614 = xor <8 x i32> %1613, %1612
  %1615 = add <8 x i32> %1614, %1612
  %1616 = shl <8 x i32> %1614, %broadcast.splat303
  %1617 = lshr <8 x i32> %1614, %broadcast.splat305
  %1618 = select i1 %shft.chk3.i80, <8 x i32> %1617, <8 x i32> zeroinitializer
  %1619 = or <8 x i32> %1616, %1618
  %1620 = xor <8 x i32> %1619, %1615
  %1621 = add <8 x i32> %1620, %1615
  %1622 = shl <8 x i32> %1620, %broadcast.splat307
  %1623 = select i1 %shft.chk4.i81, <8 x i32> %1622, <8 x i32> zeroinitializer
  %1624 = lshr <8 x i32> %1620, %broadcast.splat309
  %1625 = select i1 %shft.chk5.i82, <8 x i32> %1624, <8 x i32> zeroinitializer
  %1626 = or <8 x i32> %1623, %1625
  %1627 = xor <8 x i32> %1626, %1621
  %1628 = add <8 x i32> %1621, %broadcast.splat311
  %1629 = add <8 x i32> %1628, %1627
  store <8 x i32> %1629, <8 x i32>* %894, align 16, !alias.scope !128, !noalias !150
  br label %body_computation__3.792.clone.exit

fusion.7.loop_body.dim.0.us3.i.preheader.split:   ; preds = %fusion.7.loop_body.dim.0.us3.i.preheader
  br i1 %shft.chk3.i80, label %vector.ph315, label %fusion.7.loop_body.dim.0.us3.i.preheader141

vector.ph315:                                     ; preds = %fusion.7.loop_body.dim.0.us3.i.preheader.split
  %broadcast.splatinsert322 = insertelement <8 x i32> undef, i32 %953, i32 0
  %broadcast.splat323 = shufflevector <8 x i32> %broadcast.splatinsert322, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert324 = insertelement <8 x i32> undef, i32 %956, i32 0
  %broadcast.splat325 = shufflevector <8 x i32> %broadcast.splatinsert324, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splat327 = shufflevector <4 x i32> %957, <4 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert328 = insertelement <8 x i32> undef, i32 %963, i32 0
  %broadcast.splat329 = shufflevector <8 x i32> %broadcast.splatinsert328, <8 x i32> undef, <8 x i32> zeroinitializer
  %broadcast.splatinsert330 = insertelement <8 x i32> undef, i32 %1251, i32 0
  %broadcast.splat331 = shufflevector <8 x i32> %broadcast.splatinsert330, <8 x i32> undef, <8 x i32> zeroinitializer
  %wide.load320 = load <8 x i32>, <8 x i32>* %877, align 16, !alias.scope !145, !noalias !146
  %wide.load321 = load <8 x i32>, <8 x i32>* %878, align 16, !alias.scope !147, !noalias !148
  %1630 = add <8 x i32> %wide.load321, %wide.load320
  %1631 = lshr <8 x i32> %wide.load321, %broadcast.splat323
  %1632 = xor <8 x i32> %1631, %1630
  %1633 = add <8 x i32> %1632, %1630
  %1634 = lshr <8 x i32> %1632, %broadcast.splat325
  %1635 = xor <8 x i32> %1634, %1633
  %1636 = add <8 x i32> %1635, %1633
  %1637 = shl <8 x i32> %1635, %broadcast.splat327
  %1638 = select i1 %shft.chk4.i81, <8 x i32> %1637, <8 x i32> zeroinitializer
  %1639 = lshr <8 x i32> %1635, %broadcast.splat329
  %1640 = select i1 %shft.chk5.i82, <8 x i32> %1639, <8 x i32> zeroinitializer
  %1641 = or <8 x i32> %1638, %1640
  %1642 = xor <8 x i32> %1641, %1636
  %1643 = add <8 x i32> %1636, %broadcast.splat331
  %1644 = add <8 x i32> %1643, %1642
  store <8 x i32> %1644, <8 x i32>* %879, align 16, !alias.scope !128, !noalias !150
  %wide.load320.1 = load <8 x i32>, <8 x i32>* %881, align 16, !alias.scope !145, !noalias !146
  %wide.load321.1 = load <8 x i32>, <8 x i32>* %883, align 16, !alias.scope !147, !noalias !148
  %1645 = add <8 x i32> %wide.load321.1, %wide.load320.1
  %1646 = lshr <8 x i32> %wide.load321.1, %broadcast.splat323
  %1647 = xor <8 x i32> %1646, %1645
  %1648 = add <8 x i32> %1647, %1645
  %1649 = lshr <8 x i32> %1647, %broadcast.splat325
  %1650 = xor <8 x i32> %1649, %1648
  %1651 = add <8 x i32> %1650, %1648
  %1652 = shl <8 x i32> %1650, %broadcast.splat327
  %1653 = select i1 %shft.chk4.i81, <8 x i32> %1652, <8 x i32> zeroinitializer
  %1654 = lshr <8 x i32> %1650, %broadcast.splat329
  %1655 = select i1 %shft.chk5.i82, <8 x i32> %1654, <8 x i32> zeroinitializer
  %1656 = or <8 x i32> %1653, %1655
  %1657 = xor <8 x i32> %1656, %1651
  %1658 = add <8 x i32> %1651, %broadcast.splat331
  %1659 = add <8 x i32> %1658, %1657
  store <8 x i32> %1659, <8 x i32>* %885, align 16, !alias.scope !128, !noalias !150
  br label %body_computation__3.792.clone.exit

fusion.7.loop_body.dim.0.us3.i.preheader141:      ; preds = %fusion.7.loop_body.dim.0.us3.i.preheader.split
  %1660 = load <8 x i32>, <8 x i32>* %871, align 16, !alias.scope !145, !noalias !146
  %1661 = load <8 x i32>, <8 x i32>* %872, align 16, !alias.scope !147, !noalias !148
  %1662 = add <8 x i32> %1661, %1660
  %1663 = insertelement <8 x i32> undef, i32 %953, i32 0
  %1664 = shufflevector <8 x i32> %1663, <8 x i32> undef, <8 x i32> zeroinitializer
  %1665 = lshr <8 x i32> %1661, %1664
  %1666 = xor <8 x i32> %1665, %1662
  %1667 = add <8 x i32> %1666, %1662
  %1668 = shl <8 x i32> %1667, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %1669 = insertelement <8 x i32> %961, i32 %962, i32 1
  %1670 = insertelement <8 x i32> %1669, i32 %962, i32 2
  %1671 = insertelement <8 x i32> %1670, i32 %962, i32 3
  %1672 = insertelement <8 x i32> %1671, i32 %962, i32 4
  %1673 = insertelement <8 x i32> %1672, i32 %962, i32 5
  %1674 = insertelement <8 x i32> %1673, i32 %962, i32 6
  %1675 = insertelement <8 x i32> %1674, i32 %962, i32 7
  %1676 = shl <8 x i32> %1667, %1675
  %1677 = insertelement <8 x i1> undef, i1 %shft.chk4.i81, i32 0
  %1678 = shufflevector <8 x i1> %1677, <8 x i1> undef, <8 x i32> zeroinitializer
  %1679 = select <8 x i1> %1678, <8 x i32> %1676, <8 x i32> zeroinitializer
  %1680 = insertelement <8 x i32> undef, i32 %963, i32 0
  %1681 = shufflevector <8 x i32> %1680, <8 x i32> undef, <8 x i32> zeroinitializer
  %1682 = lshr <8 x i32> %1667, %1681
  %1683 = insertelement <8 x i1> undef, i1 %shft.chk5.i82, i32 0
  %1684 = shufflevector <8 x i1> %1683, <8 x i1> undef, <8 x i32> zeroinitializer
  %1685 = select <8 x i1> %1684, <8 x i32> %1682, <8 x i32> zeroinitializer
  %1686 = or <8 x i32> %1679, %1685
  %1687 = xor <8 x i32> %1686, %1668
  %1688 = insertelement <8 x i32> undef, i32 %1251, i32 0
  %1689 = shufflevector <8 x i32> %1688, <8 x i32> undef, <8 x i32> zeroinitializer
  %1690 = add <8 x i32> %1668, %1689
  %1691 = add <8 x i32> %1690, %1687
  store <8 x i32> %1691, <8 x i32>* %873, align 16, !alias.scope !128, !noalias !150
  %1692 = load <8 x i32>, <8 x i32>* %874, align 16, !alias.scope !145, !noalias !146
  %1693 = load <8 x i32>, <8 x i32>* %875, align 16, !alias.scope !147, !noalias !148
  %1694 = add <8 x i32> %1693, %1692
  %1695 = lshr <8 x i32> %1693, %1664
  %1696 = xor <8 x i32> %1695, %1694
  %1697 = add <8 x i32> %1696, %1694
  %1698 = shl <8 x i32> %1697, <i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1, i32 1>
  %1699 = shl <8 x i32> %1697, %1675
  %1700 = select <8 x i1> %1678, <8 x i32> %1699, <8 x i32> zeroinitializer
  %1701 = lshr <8 x i32> %1697, %1681
  %1702 = select <8 x i1> %1684, <8 x i32> %1701, <8 x i32> zeroinitializer
  %1703 = or <8 x i32> %1700, %1702
  %1704 = xor <8 x i32> %1703, %1698
  %1705 = add <8 x i32> %1698, %1689
  %1706 = add <8 x i32> %1705, %1704
  store <8 x i32> %1706, <8 x i32>* %876, align 16, !alias.scope !128, !noalias !150
  br label %body_computation__3.792.clone.exit

body_computation__3.792.clone.exit:               ; preds = %vector.ph335, %vector.ph315, %vector.ph293, %vector.ph273, %vector.ph251, %vector.ph231, %vector.ph209, %vector.ph, %fusion.7.loop_body.dim.0.i.preheader145, %fusion.7.loop_body.dim.0.i.us113.preheader, %fusion.7.loop_body.dim.0.us3.i.preheader141, %fusion.7.loop_body.dim.0.us.i.preheader137
  %1707 = load i8*, i8** %770, align 8, !dereferenceable !2, !align !2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(16) %772, i8* nonnull align 16 dereferenceable(16) %1707, i64 16, i1 false) #2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(16) %10, i8* nonnull align 16 dereferenceable(16) %6, i64 16, i1 false) #2
  store i32 %967, i32* %755, align 16, !alias.scope !151, !noalias !152
  store i32 %949, i32* %copy.97, align 16
  %1708 = load i32*, i32** %782, align 8, !dereferenceable !74, !align !74
  %1709 = load i32, i32* %1708, align 4
  store i32 %1709, i32* %copy, align 16
  store i32 %1251, i32* %copy.24, align 16
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(16) %4, i8* nonnull align 16 dereferenceable(16) %772, i64 16, i1 false) #2
  %1710 = load i32, i32* %copy, align 16
  store i32 %1710, i32* %copy.36.i, align 16
  store i8* %754, i8** %756, align 16, !alias.scope !134, !noalias !135
  store i8* %722, i8** %758, align 8, !alias.scope !134, !noalias !135
  store i8* %709, i8** %760, align 16, !alias.scope !134, !noalias !135
  store i8* %2, i8** %762, align 8, !alias.scope !134, !noalias !135
  store i8* %compare.13.i, i8** %764, align 16, !alias.scope !134, !noalias !135
  store i8* %365, i8** %766, align 8, !alias.scope !134, !noalias !135
  store i8* %4, i8** %768, align 16, !alias.scope !134, !noalias !135
  store i8* %10, i8** %770, align 8, !alias.scope !134, !noalias !135
  %1711 = load i32, i32* %755, align 16, !alias.scope !151, !noalias !154
  %1712 = icmp slt i32 %1711, 5
  %1713 = zext i1 %1712 to i8
  store i8 %1713, i8* %14, align 16, !alias.scope !136, !noalias !138
  br i1 %1712, label %while.17.body, label %while.17.exit

while.17.exit:                                    ; preds = %body_computation__3.792.clone.exit
  %1714 = getelementptr inbounds i8, i8* %1, i64 33554624
  %1715 = getelementptr inbounds [16 x i32], [16 x i32]* %fusion.14, i64 0, <8 x i64> <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %wide.masked.gather = call <8 x i32> @llvm.masked.gather.v8i32.v8p0i32(<8 x i32*> %1715, i32 4, <8 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, <8 x i32> undef), !alias.scope !47, !noalias !155
  %1716 = lshr <8 x i32> %wide.masked.gather, <i32 9, i32 9, i32 9, i32 9, i32 9, i32 9, i32 9, i32 9>
  %1717 = or <8 x i32> %1716, <i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216>
  %1718 = bitcast <8 x i32> %1717 to <8 x float>
  %1719 = fmul reassoc nsz contract <8 x float> %1718, <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00>
  %1720 = fadd reassoc nsz contract <8 x float> %1719, <float -3.000000e+00, float -3.000000e+00, float -3.000000e+00, float -3.000000e+00, float -3.000000e+00, float -3.000000e+00, float -3.000000e+00, float -3.000000e+00>
  %1721 = fcmp reassoc nsz contract ole <8 x float> %1720, <float 0xBFEFFFFFE0000000, float 0xBFEFFFFFE0000000, float 0xBFEFFFFFE0000000, float 0xBFEFFFFFE0000000, float 0xBFEFFFFFE0000000, float 0xBFEFFFFFE0000000, float 0xBFEFFFFFE0000000, float 0xBFEFFFFFE0000000>
  %1722 = select <8 x i1> %1721, <8 x float> <float 0xBFEFFFFFE0000000, float 0xBFEFFFFFE0000000, float 0xBFEFFFFFE0000000, float 0xBFEFFFFFE0000000, float 0xBFEFFFFFE0000000, float 0xBFEFFFFFE0000000, float 0xBFEFFFFFE0000000, float 0xBFEFFFFFE0000000>, <8 x float> %1720
  %1723 = fneg reassoc nsz contract <8 x float> %1722
  %1724 = fmul reassoc nsz contract <8 x float> %1722, %1723
  %1725 = fadd reassoc nsz contract <8 x float> %1724, <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>
  %log_f32.i697 = fcmp reassoc nsz contract ule <8 x float> %1725, zeroinitializer
  %log_f321.i698 = sext <8 x i1> %log_f32.i697 to <8 x i32>
  %log_f322.i699 = bitcast <8 x i32> %log_f321.i698 to <8 x float>
  %log_f323.i700 = fcmp reassoc nsz contract oeq <8 x float> %1725, zeroinitializer
  %log_f324.i701 = sext <8 x i1> %log_f323.i700 to <8 x i32>
  %log_f325.i702 = bitcast <8 x i32> %log_f324.i701 to <8 x float>
  %log_f326.i703 = fcmp reassoc nsz contract oeq <8 x float> %1725, <float 0x7FF0000000000000, float 0x7FF0000000000000, float 0x7FF0000000000000, float 0x7FF0000000000000, float 0x7FF0000000000000, float 0x7FF0000000000000, float 0x7FF0000000000000, float 0x7FF0000000000000>
  %log_f327.i704 = sext <8 x i1> %log_f326.i703 to <8 x i32>
  %log_f328.i705 = bitcast <8 x i32> %log_f327.i704 to <8 x float>
  %1726 = fcmp reassoc nsz contract uge <8 x float> <float 0x3810000000000000, float 0x3810000000000000, float 0x3810000000000000, float 0x3810000000000000, float 0x3810000000000000, float 0x3810000000000000, float 0x3810000000000000, float 0x3810000000000000>, %1725
  %1727 = select reassoc nsz contract <8 x i1> %1726, <8 x float> <float 0x3810000000000000, float 0x3810000000000000, float 0x3810000000000000, float 0x3810000000000000, float 0x3810000000000000, float 0x3810000000000000, float 0x3810000000000000, float 0x3810000000000000>, <8 x float> %1725
  %1728 = bitcast <8 x float> %1727 to <8 x i32>
  %1729 = lshr <8 x i32> %1728, <i32 23, i32 23, i32 23, i32 23, i32 23, i32 23, i32 23, i32 23>
  %log_f329.i706 = bitcast <8 x float> %1727 to <8 x i32>
  %log_f3210.i707 = and <8 x i32> %log_f329.i706, <i32 -2139095041, i32 -2139095041, i32 -2139095041, i32 -2139095041, i32 -2139095041, i32 -2139095041, i32 -2139095041, i32 -2139095041>
  %1730 = bitcast <8 x i32> %log_f3210.i707 to <8 x float>
  %log_f3212.i708 = or <8 x i32> %log_f3210.i707, <i32 1056964608, i32 1056964608, i32 1056964608, i32 1056964608, i32 1056964608, i32 1056964608, i32 1056964608, i32 1056964608>
  %log_f3213.i709 = bitcast <8 x i32> %log_f3212.i708 to <8 x float>
  %1731 = sub <8 x i32> %1729, <i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127>
  %1732 = sitofp <8 x i32> %1731 to <8 x float>
  %log_f3214.i710 = fadd reassoc nsz contract <8 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %1732
  %log_f3215.i711 = fcmp reassoc nsz contract olt <8 x float> %log_f3213.i709, <float 0x3FE6A09E60000000, float 0x3FE6A09E60000000, float 0x3FE6A09E60000000, float 0x3FE6A09E60000000, float 0x3FE6A09E60000000, float 0x3FE6A09E60000000, float 0x3FE6A09E60000000, float 0x3FE6A09E60000000>
  %log_f3216.i712 = sext <8 x i1> %log_f3215.i711 to <8 x i32>
  %log_f3217.i713 = bitcast <8 x i32> %log_f3216.i712 to <8 x float>
  %log_f3220.i714 = and <8 x i32> %log_f3212.i708, %log_f3216.i712
  %1733 = bitcast <8 x i32> %log_f3220.i714 to <8 x float>
  %1734 = fsub reassoc nsz contract <8 x float> %log_f3213.i709, <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>
  %log_f3222.i715 = and <8 x i32> %log_f3216.i712, <i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216>
  %1735 = bitcast <8 x i32> %log_f3222.i715 to <8 x float>
  %1736 = fsub reassoc nsz contract <8 x float> %log_f3214.i710, %1735
  %log_f3223.i716 = fadd reassoc nsz contract <8 x float> %1734, %1733
  %log_f3224.i717 = fmul reassoc nsz contract <8 x float> %log_f3223.i716, %log_f3223.i716
  %log_f3225.i718 = fmul reassoc nsz contract <8 x float> %log_f3224.i717, %log_f3223.i716
  %log_f3226.i719 = fmul reassoc nsz contract <8 x float> %log_f3223.i716, <float 0x3FB2043760000000, float 0x3FB2043760000000, float 0x3FB2043760000000, float 0x3FB2043760000000, float 0x3FB2043760000000, float 0x3FB2043760000000, float 0x3FB2043760000000, float 0x3FB2043760000000>
  %log_f3227.i720 = fadd reassoc nsz contract <8 x float> <float 0xBFBD7A3700000000, float 0xBFBD7A3700000000, float 0xBFBD7A3700000000, float 0xBFBD7A3700000000, float 0xBFBD7A3700000000, float 0xBFBD7A3700000000, float 0xBFBD7A3700000000, float 0xBFBD7A3700000000>, %log_f3226.i719
  %log_f3228.i721 = fmul reassoc nsz contract <8 x float> %log_f3223.i716, <float 0xBFBFCBA9E0000000, float 0xBFBFCBA9E0000000, float 0xBFBFCBA9E0000000, float 0xBFBFCBA9E0000000, float 0xBFBFCBA9E0000000, float 0xBFBFCBA9E0000000, float 0xBFBFCBA9E0000000, float 0xBFBFCBA9E0000000>
  %log_f3229.i722 = fadd reassoc nsz contract <8 x float> <float 0x3FC23D37E0000000, float 0x3FC23D37E0000000, float 0x3FC23D37E0000000, float 0x3FC23D37E0000000, float 0x3FC23D37E0000000, float 0x3FC23D37E0000000, float 0x3FC23D37E0000000, float 0x3FC23D37E0000000>, %log_f3228.i721
  %log_f3230.i723 = fmul reassoc nsz contract <8 x float> %log_f3223.i716, <float 0x3FC999D580000000, float 0x3FC999D580000000, float 0x3FC999D580000000, float 0x3FC999D580000000, float 0x3FC999D580000000, float 0x3FC999D580000000, float 0x3FC999D580000000, float 0x3FC999D580000000>
  %log_f3231.i724 = fadd reassoc nsz contract <8 x float> <float 0xBFCFFFFF80000000, float 0xBFCFFFFF80000000, float 0xBFCFFFFF80000000, float 0xBFCFFFFF80000000, float 0xBFCFFFFF80000000, float 0xBFCFFFFF80000000, float 0xBFCFFFFF80000000, float 0xBFCFFFFF80000000>, %log_f3230.i723
  %log_f3232.i725 = fmul reassoc nsz contract <8 x float> %log_f3227.i720, %log_f3223.i716
  %log_f3233.i726 = fadd reassoc nsz contract <8 x float> <float 0x3FBDE4A340000000, float 0x3FBDE4A340000000, float 0x3FBDE4A340000000, float 0x3FBDE4A340000000, float 0x3FBDE4A340000000, float 0x3FBDE4A340000000, float 0x3FBDE4A340000000, float 0x3FBDE4A340000000>, %log_f3232.i725
  %log_f3234.i727 = fmul reassoc nsz contract <8 x float> %log_f3229.i722, %log_f3223.i716
  %log_f3235.i728 = fadd reassoc nsz contract <8 x float> <float 0xBFC555CA00000000, float 0xBFC555CA00000000, float 0xBFC555CA00000000, float 0xBFC555CA00000000, float 0xBFC555CA00000000, float 0xBFC555CA00000000, float 0xBFC555CA00000000, float 0xBFC555CA00000000>, %log_f3234.i727
  %log_f3236.i729 = fmul reassoc nsz contract <8 x float> %log_f3231.i724, %log_f3223.i716
  %log_f3237.i730 = fadd reassoc nsz contract <8 x float> <float 0x3FD5555540000000, float 0x3FD5555540000000, float 0x3FD5555540000000, float 0x3FD5555540000000, float 0x3FD5555540000000, float 0x3FD5555540000000, float 0x3FD5555540000000, float 0x3FD5555540000000>, %log_f3236.i729
  %log_f3238.i731 = fmul reassoc nsz contract <8 x float> %log_f3233.i726, %log_f3225.i718
  %log_f3239.i732 = fadd reassoc nsz contract <8 x float> %log_f3235.i728, %log_f3238.i731
  %log_f3240.i733 = fmul reassoc nsz contract <8 x float> %log_f3239.i732, %log_f3225.i718
  %log_f3241.i734 = fadd reassoc nsz contract <8 x float> %log_f3237.i730, %log_f3240.i733
  %log_f3242.i735 = fmul reassoc nsz contract <8 x float> %log_f3241.i734, %log_f3225.i718
  %log_f3243.i736 = fmul reassoc nsz contract <8 x float> <float 0xBF2BD01060000000, float 0xBF2BD01060000000, float 0xBF2BD01060000000, float 0xBF2BD01060000000, float 0xBF2BD01060000000, float 0xBF2BD01060000000, float 0xBF2BD01060000000, float 0xBF2BD01060000000>, %1736
  %log_f3244.i737 = fmul reassoc nsz contract <8 x float> <float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01>, %log_f3224.i717
  %log_f3245.i738 = fadd reassoc nsz contract <8 x float> %log_f3242.i735, %log_f3243.i736
  %1737 = fsub reassoc nsz contract <8 x float> %log_f3223.i716, %log_f3244.i737
  %log_f3246.i739 = fmul reassoc nsz contract <8 x float> <float 0x3FE6300000000000, float 0x3FE6300000000000, float 0x3FE6300000000000, float 0x3FE6300000000000, float 0x3FE6300000000000, float 0x3FE6300000000000, float 0x3FE6300000000000, float 0x3FE6300000000000>, %1736
  %log_f3247.i740 = fadd reassoc nsz contract <8 x float> %1737, %log_f3245.i738
  %log_f3248.i741 = fadd reassoc nsz contract <8 x float> %log_f3247.i740, %log_f3246.i739
  %log_f3250.i742 = and <8 x i32> %log_f324.i701, <i32 -8388608, i32 -8388608, i32 -8388608, i32 -8388608, i32 -8388608, i32 -8388608, i32 -8388608, i32 -8388608>
  %1738 = bitcast <8 x i32> %log_f3250.i742 to <8 x float>
  %log_f3252.i743 = and <8 x i32> %log_f327.i704, <i32 2139095040, i32 2139095040, i32 2139095040, i32 2139095040, i32 2139095040, i32 2139095040, i32 2139095040, i32 2139095040>
  %1739 = bitcast <8 x i32> %log_f3252.i743 to <8 x float>
  %log_f3255.i744 = or <8 x i32> %log_f3250.i742, %log_f3252.i743
  %log_f3256.i745 = bitcast <8 x i32> %log_f3255.i744 to <8 x float>
  %log_f3257.i746 = bitcast <8 x float> %log_f3248.i741 to <8 x i32>
  %log_f3259.i747 = or <8 x i32> %log_f3257.i746, %log_f321.i698
  %log_f3260.i748 = bitcast <8 x i32> %log_f3259.i747 to <8 x float>
  %log_f3263.i749 = or <8 x i32> %log_f324.i701, %log_f327.i704
  %log_f3264.i750 = bitcast <8 x i32> %log_f3263.i749 to <8 x float>
  %log_f3266.i751 = xor <8 x i32> %log_f3263.i749, <i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1>
  %1740 = bitcast <8 x i32> %log_f3266.i751 to <8 x float>
  %log_f3269.i752 = and <8 x i32> %log_f3266.i751, %log_f3259.i747
  %1741 = bitcast <8 x i32> %log_f3269.i752 to <8 x float>
  %log_f3272.i753 = or <8 x i32> %log_f3255.i744, %log_f3269.i752
  %log_f3273.i754 = bitcast <8 x i32> %log_f3272.i753 to <8 x float>
  %1742 = fmul reassoc nsz contract <8 x float> %1724, %1724
  %1743 = fmul reassoc nsz contract <8 x float> %1724, zeroinitializer
  %1744 = fadd reassoc nsz contract <8 x float> %1743, <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>
  %1745 = fmul reassoc nsz contract <8 x float> %1724, %1744
  %1746 = fadd reassoc nsz contract <8 x float> %1745, <float 0x402E2035A0000000, float 0x402E2035A0000000, float 0x402E2035A0000000, float 0x402E2035A0000000, float 0x402E2035A0000000, float 0x402E2035A0000000, float 0x402E2035A0000000, float 0x402E2035A0000000>
  %1747 = fmul reassoc nsz contract <8 x float> %1724, %1746
  %1748 = fadd reassoc nsz contract <8 x float> %1747, <float 0x4054C30B60000000, float 0x4054C30B60000000, float 0x4054C30B60000000, float 0x4054C30B60000000, float 0x4054C30B60000000, float 0x4054C30B60000000, float 0x4054C30B60000000, float 0x4054C30B60000000>
  %1749 = fmul reassoc nsz contract <8 x float> %1724, %1748
  %1750 = fadd reassoc nsz contract <8 x float> %1749, <float 0x406BB865A0000000, float 0x406BB865A0000000, float 0x406BB865A0000000, float 0x406BB865A0000000, float 0x406BB865A0000000, float 0x406BB865A0000000, float 0x406BB865A0000000, float 0x406BB865A0000000>
  %1751 = fmul reassoc nsz contract <8 x float> %1724, %1750
  %1752 = fadd reassoc nsz contract <8 x float> %1751, <float 0x4073519460000000, float 0x4073519460000000, float 0x4073519460000000, float 0x4073519460000000, float 0x4073519460000000, float 0x4073519460000000, float 0x4073519460000000, float 0x4073519460000000>
  %1753 = fmul reassoc nsz contract <8 x float> %1724, %1752
  %1754 = fadd reassoc nsz contract <8 x float> %1753, <float 0x406B0DB140000000, float 0x406B0DB140000000, float 0x406B0DB140000000, float 0x406B0DB140000000, float 0x406B0DB140000000, float 0x406B0DB140000000, float 0x406B0DB140000000, float 0x406B0DB140000000>
  %1755 = fmul reassoc nsz contract <8 x float> %1724, %1754
  %1756 = fadd reassoc nsz contract <8 x float> %1755, <float 0x404E0F3040000000, float 0x404E0F3040000000, float 0x404E0F3040000000, float 0x404E0F3040000000, float 0x404E0F3040000000, float 0x404E0F3040000000, float 0x404E0F3040000000, float 0x404E0F3040000000>
  %1757 = fadd reassoc nsz contract <8 x float> %1743, <float 0x3F07BC0960000000, float 0x3F07BC0960000000, float 0x3F07BC0960000000, float 0x3F07BC0960000000, float 0x3F07BC0960000000, float 0x3F07BC0960000000, float 0x3F07BC0960000000, float 0x3F07BC0960000000>
  %1758 = fmul reassoc nsz contract <8 x float> %1724, %1757
  %1759 = fadd reassoc nsz contract <8 x float> %1758, <float 0x3FDFE818A0000000, float 0x3FDFE818A0000000, float 0x3FDFE818A0000000, float 0x3FDFE818A0000000, float 0x3FDFE818A0000000, float 0x3FDFE818A0000000, float 0x3FDFE818A0000000, float 0x3FDFE818A0000000>
  %1760 = fmul reassoc nsz contract <8 x float> %1724, %1759
  %1761 = fadd reassoc nsz contract <8 x float> %1760, <float 0x401A509F40000000, float 0x401A509F40000000, float 0x401A509F40000000, float 0x401A509F40000000, float 0x401A509F40000000, float 0x401A509F40000000, float 0x401A509F40000000, float 0x401A509F40000000>
  %1762 = fmul reassoc nsz contract <8 x float> %1724, %1761
  %1763 = fadd reassoc nsz contract <8 x float> %1762, <float 0x403DE97380000000, float 0x403DE97380000000, float 0x403DE97380000000, float 0x403DE97380000000, float 0x403DE97380000000, float 0x403DE97380000000, float 0x403DE97380000000, float 0x403DE97380000000>
  %1764 = fmul reassoc nsz contract <8 x float> %1724, %1763
  %1765 = fadd reassoc nsz contract <8 x float> %1764, <float 0x404E798EC0000000, float 0x404E798EC0000000, float 0x404E798EC0000000, float 0x404E798EC0000000, float 0x404E798EC0000000, float 0x404E798EC0000000, float 0x404E798EC0000000, float 0x404E798EC0000000>
  %1766 = fmul reassoc nsz contract <8 x float> %1724, %1765
  %1767 = fadd reassoc nsz contract <8 x float> %1766, <float 0x404C8E75A0000000, float 0x404C8E75A0000000, float 0x404C8E75A0000000, float 0x404C8E75A0000000, float 0x404C8E75A0000000, float 0x404C8E75A0000000, float 0x404C8E75A0000000, float 0x404C8E75A0000000>
  %1768 = fmul reassoc nsz contract <8 x float> %1724, %1767
  %1769 = fadd reassoc nsz contract <8 x float> %1768, <float 0x40340A2020000000, float 0x40340A2020000000, float 0x40340A2020000000, float 0x40340A2020000000, float 0x40340A2020000000, float 0x40340A2020000000, float 0x40340A2020000000, float 0x40340A2020000000>
  %1770 = fmul reassoc nsz contract <8 x float> %1724, %1742
  %1771 = fmul reassoc nsz contract <8 x float> %1770, %1769
  %1772 = fdiv reassoc nsz contract <8 x float> %1771, %1756
  %1773 = fmul reassoc nsz contract <8 x float> %1742, <float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01>
  %1774 = fsub reassoc nsz contract <8 x float> %1772, %1773
  %1775 = fadd reassoc nsz contract <8 x float> %1724, %1774
  %1776 = call reassoc nsz contract <8 x float> @llvm.fabs.v8f32(<8 x float> %1724)
  %1777 = fcmp reassoc nsz contract olt <8 x float> %1776, <float 0x3FDA8279A0000000, float 0x3FDA8279A0000000, float 0x3FDA8279A0000000, float 0x3FDA8279A0000000, float 0x3FDA8279A0000000, float 0x3FDA8279A0000000, float 0x3FDA8279A0000000, float 0x3FDA8279A0000000>
  %1778 = select <8 x i1> %1777, <8 x float> %1775, <8 x float> %log_f3273.i754
  %1779 = bitcast i8* %1714 to <8 x float>*
  store <8 x float> %1778, <8 x float>* %1779, align 16, !alias.scope !41, !noalias !156
  %1780 = getelementptr inbounds [16 x i32], [16 x i32]* %fusion.14, i64 0, <8 x i64> <i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>
  %wide.masked.gather.1 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0i32(<8 x i32*> %1780, i32 4, <8 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, <8 x i32> undef), !alias.scope !47, !noalias !155
  %1781 = lshr <8 x i32> %wide.masked.gather.1, <i32 9, i32 9, i32 9, i32 9, i32 9, i32 9, i32 9, i32 9>
  %1782 = or <8 x i32> %1781, <i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216>
  %1783 = bitcast <8 x i32> %1782 to <8 x float>
  %1784 = fmul reassoc nsz contract <8 x float> %1783, <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00>
  %1785 = fadd reassoc nsz contract <8 x float> %1784, <float -3.000000e+00, float -3.000000e+00, float -3.000000e+00, float -3.000000e+00, float -3.000000e+00, float -3.000000e+00, float -3.000000e+00, float -3.000000e+00>
  %1786 = fcmp reassoc nsz contract ole <8 x float> %1785, <float 0xBFEFFFFFE0000000, float 0xBFEFFFFFE0000000, float 0xBFEFFFFFE0000000, float 0xBFEFFFFFE0000000, float 0xBFEFFFFFE0000000, float 0xBFEFFFFFE0000000, float 0xBFEFFFFFE0000000, float 0xBFEFFFFFE0000000>
  %1787 = select <8 x i1> %1786, <8 x float> <float 0xBFEFFFFFE0000000, float 0xBFEFFFFFE0000000, float 0xBFEFFFFFE0000000, float 0xBFEFFFFFE0000000, float 0xBFEFFFFFE0000000, float 0xBFEFFFFFE0000000, float 0xBFEFFFFFE0000000, float 0xBFEFFFFFE0000000>, <8 x float> %1785
  %1788 = fneg reassoc nsz contract <8 x float> %1787
  %1789 = fmul reassoc nsz contract <8 x float> %1787, %1788
  %1790 = fadd reassoc nsz contract <8 x float> %1789, <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>
  %log_f32.i639 = fcmp reassoc nsz contract ule <8 x float> %1790, zeroinitializer
  %log_f321.i640 = sext <8 x i1> %log_f32.i639 to <8 x i32>
  %log_f322.i641 = bitcast <8 x i32> %log_f321.i640 to <8 x float>
  %log_f323.i642 = fcmp reassoc nsz contract oeq <8 x float> %1790, zeroinitializer
  %log_f324.i643 = sext <8 x i1> %log_f323.i642 to <8 x i32>
  %log_f325.i644 = bitcast <8 x i32> %log_f324.i643 to <8 x float>
  %log_f326.i645 = fcmp reassoc nsz contract oeq <8 x float> %1790, <float 0x7FF0000000000000, float 0x7FF0000000000000, float 0x7FF0000000000000, float 0x7FF0000000000000, float 0x7FF0000000000000, float 0x7FF0000000000000, float 0x7FF0000000000000, float 0x7FF0000000000000>
  %log_f327.i646 = sext <8 x i1> %log_f326.i645 to <8 x i32>
  %log_f328.i647 = bitcast <8 x i32> %log_f327.i646 to <8 x float>
  %1791 = fcmp reassoc nsz contract uge <8 x float> <float 0x3810000000000000, float 0x3810000000000000, float 0x3810000000000000, float 0x3810000000000000, float 0x3810000000000000, float 0x3810000000000000, float 0x3810000000000000, float 0x3810000000000000>, %1790
  %1792 = select reassoc nsz contract <8 x i1> %1791, <8 x float> <float 0x3810000000000000, float 0x3810000000000000, float 0x3810000000000000, float 0x3810000000000000, float 0x3810000000000000, float 0x3810000000000000, float 0x3810000000000000, float 0x3810000000000000>, <8 x float> %1790
  %1793 = bitcast <8 x float> %1792 to <8 x i32>
  %1794 = lshr <8 x i32> %1793, <i32 23, i32 23, i32 23, i32 23, i32 23, i32 23, i32 23, i32 23>
  %log_f329.i648 = bitcast <8 x float> %1792 to <8 x i32>
  %log_f3210.i649 = and <8 x i32> %log_f329.i648, <i32 -2139095041, i32 -2139095041, i32 -2139095041, i32 -2139095041, i32 -2139095041, i32 -2139095041, i32 -2139095041, i32 -2139095041>
  %1795 = bitcast <8 x i32> %log_f3210.i649 to <8 x float>
  %log_f3212.i650 = or <8 x i32> %log_f3210.i649, <i32 1056964608, i32 1056964608, i32 1056964608, i32 1056964608, i32 1056964608, i32 1056964608, i32 1056964608, i32 1056964608>
  %log_f3213.i651 = bitcast <8 x i32> %log_f3212.i650 to <8 x float>
  %1796 = sub <8 x i32> %1794, <i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127>
  %1797 = sitofp <8 x i32> %1796 to <8 x float>
  %log_f3214.i652 = fadd reassoc nsz contract <8 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %1797
  %log_f3215.i653 = fcmp reassoc nsz contract olt <8 x float> %log_f3213.i651, <float 0x3FE6A09E60000000, float 0x3FE6A09E60000000, float 0x3FE6A09E60000000, float 0x3FE6A09E60000000, float 0x3FE6A09E60000000, float 0x3FE6A09E60000000, float 0x3FE6A09E60000000, float 0x3FE6A09E60000000>
  %log_f3216.i654 = sext <8 x i1> %log_f3215.i653 to <8 x i32>
  %log_f3217.i655 = bitcast <8 x i32> %log_f3216.i654 to <8 x float>
  %log_f3220.i656 = and <8 x i32> %log_f3212.i650, %log_f3216.i654
  %1798 = bitcast <8 x i32> %log_f3220.i656 to <8 x float>
  %1799 = fsub reassoc nsz contract <8 x float> %log_f3213.i651, <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>
  %log_f3222.i657 = and <8 x i32> %log_f3216.i654, <i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216>
  %1800 = bitcast <8 x i32> %log_f3222.i657 to <8 x float>
  %1801 = fsub reassoc nsz contract <8 x float> %log_f3214.i652, %1800
  %log_f3223.i658 = fadd reassoc nsz contract <8 x float> %1799, %1798
  %log_f3224.i659 = fmul reassoc nsz contract <8 x float> %log_f3223.i658, %log_f3223.i658
  %log_f3225.i660 = fmul reassoc nsz contract <8 x float> %log_f3224.i659, %log_f3223.i658
  %log_f3226.i661 = fmul reassoc nsz contract <8 x float> %log_f3223.i658, <float 0x3FB2043760000000, float 0x3FB2043760000000, float 0x3FB2043760000000, float 0x3FB2043760000000, float 0x3FB2043760000000, float 0x3FB2043760000000, float 0x3FB2043760000000, float 0x3FB2043760000000>
  %log_f3227.i662 = fadd reassoc nsz contract <8 x float> <float 0xBFBD7A3700000000, float 0xBFBD7A3700000000, float 0xBFBD7A3700000000, float 0xBFBD7A3700000000, float 0xBFBD7A3700000000, float 0xBFBD7A3700000000, float 0xBFBD7A3700000000, float 0xBFBD7A3700000000>, %log_f3226.i661
  %log_f3228.i663 = fmul reassoc nsz contract <8 x float> %log_f3223.i658, <float 0xBFBFCBA9E0000000, float 0xBFBFCBA9E0000000, float 0xBFBFCBA9E0000000, float 0xBFBFCBA9E0000000, float 0xBFBFCBA9E0000000, float 0xBFBFCBA9E0000000, float 0xBFBFCBA9E0000000, float 0xBFBFCBA9E0000000>
  %log_f3229.i664 = fadd reassoc nsz contract <8 x float> <float 0x3FC23D37E0000000, float 0x3FC23D37E0000000, float 0x3FC23D37E0000000, float 0x3FC23D37E0000000, float 0x3FC23D37E0000000, float 0x3FC23D37E0000000, float 0x3FC23D37E0000000, float 0x3FC23D37E0000000>, %log_f3228.i663
  %log_f3230.i665 = fmul reassoc nsz contract <8 x float> %log_f3223.i658, <float 0x3FC999D580000000, float 0x3FC999D580000000, float 0x3FC999D580000000, float 0x3FC999D580000000, float 0x3FC999D580000000, float 0x3FC999D580000000, float 0x3FC999D580000000, float 0x3FC999D580000000>
  %log_f3231.i666 = fadd reassoc nsz contract <8 x float> <float 0xBFCFFFFF80000000, float 0xBFCFFFFF80000000, float 0xBFCFFFFF80000000, float 0xBFCFFFFF80000000, float 0xBFCFFFFF80000000, float 0xBFCFFFFF80000000, float 0xBFCFFFFF80000000, float 0xBFCFFFFF80000000>, %log_f3230.i665
  %log_f3232.i667 = fmul reassoc nsz contract <8 x float> %log_f3227.i662, %log_f3223.i658
  %log_f3233.i668 = fadd reassoc nsz contract <8 x float> <float 0x3FBDE4A340000000, float 0x3FBDE4A340000000, float 0x3FBDE4A340000000, float 0x3FBDE4A340000000, float 0x3FBDE4A340000000, float 0x3FBDE4A340000000, float 0x3FBDE4A340000000, float 0x3FBDE4A340000000>, %log_f3232.i667
  %log_f3234.i669 = fmul reassoc nsz contract <8 x float> %log_f3229.i664, %log_f3223.i658
  %log_f3235.i670 = fadd reassoc nsz contract <8 x float> <float 0xBFC555CA00000000, float 0xBFC555CA00000000, float 0xBFC555CA00000000, float 0xBFC555CA00000000, float 0xBFC555CA00000000, float 0xBFC555CA00000000, float 0xBFC555CA00000000, float 0xBFC555CA00000000>, %log_f3234.i669
  %log_f3236.i671 = fmul reassoc nsz contract <8 x float> %log_f3231.i666, %log_f3223.i658
  %log_f3237.i672 = fadd reassoc nsz contract <8 x float> <float 0x3FD5555540000000, float 0x3FD5555540000000, float 0x3FD5555540000000, float 0x3FD5555540000000, float 0x3FD5555540000000, float 0x3FD5555540000000, float 0x3FD5555540000000, float 0x3FD5555540000000>, %log_f3236.i671
  %log_f3238.i673 = fmul reassoc nsz contract <8 x float> %log_f3233.i668, %log_f3225.i660
  %log_f3239.i674 = fadd reassoc nsz contract <8 x float> %log_f3235.i670, %log_f3238.i673
  %log_f3240.i675 = fmul reassoc nsz contract <8 x float> %log_f3239.i674, %log_f3225.i660
  %log_f3241.i676 = fadd reassoc nsz contract <8 x float> %log_f3237.i672, %log_f3240.i675
  %log_f3242.i677 = fmul reassoc nsz contract <8 x float> %log_f3241.i676, %log_f3225.i660
  %log_f3243.i678 = fmul reassoc nsz contract <8 x float> <float 0xBF2BD01060000000, float 0xBF2BD01060000000, float 0xBF2BD01060000000, float 0xBF2BD01060000000, float 0xBF2BD01060000000, float 0xBF2BD01060000000, float 0xBF2BD01060000000, float 0xBF2BD01060000000>, %1801
  %log_f3244.i679 = fmul reassoc nsz contract <8 x float> <float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01>, %log_f3224.i659
  %log_f3245.i680 = fadd reassoc nsz contract <8 x float> %log_f3242.i677, %log_f3243.i678
  %1802 = fsub reassoc nsz contract <8 x float> %log_f3223.i658, %log_f3244.i679
  %log_f3246.i681 = fmul reassoc nsz contract <8 x float> <float 0x3FE6300000000000, float 0x3FE6300000000000, float 0x3FE6300000000000, float 0x3FE6300000000000, float 0x3FE6300000000000, float 0x3FE6300000000000, float 0x3FE6300000000000, float 0x3FE6300000000000>, %1801
  %log_f3247.i682 = fadd reassoc nsz contract <8 x float> %1802, %log_f3245.i680
  %log_f3248.i683 = fadd reassoc nsz contract <8 x float> %log_f3247.i682, %log_f3246.i681
  %log_f3250.i684 = and <8 x i32> %log_f324.i643, <i32 -8388608, i32 -8388608, i32 -8388608, i32 -8388608, i32 -8388608, i32 -8388608, i32 -8388608, i32 -8388608>
  %1803 = bitcast <8 x i32> %log_f3250.i684 to <8 x float>
  %log_f3252.i685 = and <8 x i32> %log_f327.i646, <i32 2139095040, i32 2139095040, i32 2139095040, i32 2139095040, i32 2139095040, i32 2139095040, i32 2139095040, i32 2139095040>
  %1804 = bitcast <8 x i32> %log_f3252.i685 to <8 x float>
  %log_f3255.i686 = or <8 x i32> %log_f3250.i684, %log_f3252.i685
  %log_f3256.i687 = bitcast <8 x i32> %log_f3255.i686 to <8 x float>
  %log_f3257.i688 = bitcast <8 x float> %log_f3248.i683 to <8 x i32>
  %log_f3259.i689 = or <8 x i32> %log_f3257.i688, %log_f321.i640
  %log_f3260.i690 = bitcast <8 x i32> %log_f3259.i689 to <8 x float>
  %log_f3263.i691 = or <8 x i32> %log_f324.i643, %log_f327.i646
  %log_f3264.i692 = bitcast <8 x i32> %log_f3263.i691 to <8 x float>
  %log_f3266.i693 = xor <8 x i32> %log_f3263.i691, <i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1>
  %1805 = bitcast <8 x i32> %log_f3266.i693 to <8 x float>
  %log_f3269.i694 = and <8 x i32> %log_f3266.i693, %log_f3259.i689
  %1806 = bitcast <8 x i32> %log_f3269.i694 to <8 x float>
  %log_f3272.i695 = or <8 x i32> %log_f3255.i686, %log_f3269.i694
  %log_f3273.i696 = bitcast <8 x i32> %log_f3272.i695 to <8 x float>
  %1807 = fmul reassoc nsz contract <8 x float> %1789, %1789
  %1808 = fmul reassoc nsz contract <8 x float> %1789, zeroinitializer
  %1809 = fadd reassoc nsz contract <8 x float> %1808, <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>
  %1810 = fmul reassoc nsz contract <8 x float> %1789, %1809
  %1811 = fadd reassoc nsz contract <8 x float> %1810, <float 0x402E2035A0000000, float 0x402E2035A0000000, float 0x402E2035A0000000, float 0x402E2035A0000000, float 0x402E2035A0000000, float 0x402E2035A0000000, float 0x402E2035A0000000, float 0x402E2035A0000000>
  %1812 = fmul reassoc nsz contract <8 x float> %1789, %1811
  %1813 = fadd reassoc nsz contract <8 x float> %1812, <float 0x4054C30B60000000, float 0x4054C30B60000000, float 0x4054C30B60000000, float 0x4054C30B60000000, float 0x4054C30B60000000, float 0x4054C30B60000000, float 0x4054C30B60000000, float 0x4054C30B60000000>
  %1814 = fmul reassoc nsz contract <8 x float> %1789, %1813
  %1815 = fadd reassoc nsz contract <8 x float> %1814, <float 0x406BB865A0000000, float 0x406BB865A0000000, float 0x406BB865A0000000, float 0x406BB865A0000000, float 0x406BB865A0000000, float 0x406BB865A0000000, float 0x406BB865A0000000, float 0x406BB865A0000000>
  %1816 = fmul reassoc nsz contract <8 x float> %1789, %1815
  %1817 = fadd reassoc nsz contract <8 x float> %1816, <float 0x4073519460000000, float 0x4073519460000000, float 0x4073519460000000, float 0x4073519460000000, float 0x4073519460000000, float 0x4073519460000000, float 0x4073519460000000, float 0x4073519460000000>
  %1818 = fmul reassoc nsz contract <8 x float> %1789, %1817
  %1819 = fadd reassoc nsz contract <8 x float> %1818, <float 0x406B0DB140000000, float 0x406B0DB140000000, float 0x406B0DB140000000, float 0x406B0DB140000000, float 0x406B0DB140000000, float 0x406B0DB140000000, float 0x406B0DB140000000, float 0x406B0DB140000000>
  %1820 = fmul reassoc nsz contract <8 x float> %1789, %1819
  %1821 = fadd reassoc nsz contract <8 x float> %1820, <float 0x404E0F3040000000, float 0x404E0F3040000000, float 0x404E0F3040000000, float 0x404E0F3040000000, float 0x404E0F3040000000, float 0x404E0F3040000000, float 0x404E0F3040000000, float 0x404E0F3040000000>
  %1822 = fadd reassoc nsz contract <8 x float> %1808, <float 0x3F07BC0960000000, float 0x3F07BC0960000000, float 0x3F07BC0960000000, float 0x3F07BC0960000000, float 0x3F07BC0960000000, float 0x3F07BC0960000000, float 0x3F07BC0960000000, float 0x3F07BC0960000000>
  %1823 = fmul reassoc nsz contract <8 x float> %1789, %1822
  %1824 = fadd reassoc nsz contract <8 x float> %1823, <float 0x3FDFE818A0000000, float 0x3FDFE818A0000000, float 0x3FDFE818A0000000, float 0x3FDFE818A0000000, float 0x3FDFE818A0000000, float 0x3FDFE818A0000000, float 0x3FDFE818A0000000, float 0x3FDFE818A0000000>
  %1825 = fmul reassoc nsz contract <8 x float> %1789, %1824
  %1826 = fadd reassoc nsz contract <8 x float> %1825, <float 0x401A509F40000000, float 0x401A509F40000000, float 0x401A509F40000000, float 0x401A509F40000000, float 0x401A509F40000000, float 0x401A509F40000000, float 0x401A509F40000000, float 0x401A509F40000000>
  %1827 = fmul reassoc nsz contract <8 x float> %1789, %1826
  %1828 = fadd reassoc nsz contract <8 x float> %1827, <float 0x403DE97380000000, float 0x403DE97380000000, float 0x403DE97380000000, float 0x403DE97380000000, float 0x403DE97380000000, float 0x403DE97380000000, float 0x403DE97380000000, float 0x403DE97380000000>
  %1829 = fmul reassoc nsz contract <8 x float> %1789, %1828
  %1830 = fadd reassoc nsz contract <8 x float> %1829, <float 0x404E798EC0000000, float 0x404E798EC0000000, float 0x404E798EC0000000, float 0x404E798EC0000000, float 0x404E798EC0000000, float 0x404E798EC0000000, float 0x404E798EC0000000, float 0x404E798EC0000000>
  %1831 = fmul reassoc nsz contract <8 x float> %1789, %1830
  %1832 = fadd reassoc nsz contract <8 x float> %1831, <float 0x404C8E75A0000000, float 0x404C8E75A0000000, float 0x404C8E75A0000000, float 0x404C8E75A0000000, float 0x404C8E75A0000000, float 0x404C8E75A0000000, float 0x404C8E75A0000000, float 0x404C8E75A0000000>
  %1833 = fmul reassoc nsz contract <8 x float> %1789, %1832
  %1834 = fadd reassoc nsz contract <8 x float> %1833, <float 0x40340A2020000000, float 0x40340A2020000000, float 0x40340A2020000000, float 0x40340A2020000000, float 0x40340A2020000000, float 0x40340A2020000000, float 0x40340A2020000000, float 0x40340A2020000000>
  %1835 = fmul reassoc nsz contract <8 x float> %1789, %1807
  %1836 = fmul reassoc nsz contract <8 x float> %1835, %1834
  %1837 = fdiv reassoc nsz contract <8 x float> %1836, %1821
  %1838 = fmul reassoc nsz contract <8 x float> %1807, <float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01>
  %1839 = fsub reassoc nsz contract <8 x float> %1837, %1838
  %1840 = fadd reassoc nsz contract <8 x float> %1789, %1839
  %1841 = call reassoc nsz contract <8 x float> @llvm.fabs.v8f32(<8 x float> %1789)
  %1842 = fcmp reassoc nsz contract olt <8 x float> %1841, <float 0x3FDA8279A0000000, float 0x3FDA8279A0000000, float 0x3FDA8279A0000000, float 0x3FDA8279A0000000, float 0x3FDA8279A0000000, float 0x3FDA8279A0000000, float 0x3FDA8279A0000000, float 0x3FDA8279A0000000>
  %1843 = select <8 x i1> %1842, <8 x float> %1840, <8 x float> %log_f3273.i696
  %1844 = getelementptr inbounds i8, i8* %1, i64 33554656
  %1845 = bitcast i8* %1844 to <8 x float>*
  store <8 x float> %1843, <8 x float>* %1845, align 16, !alias.scope !41, !noalias !156
  %1846 = getelementptr inbounds [16 x i32], [16 x i32]* %fusion.12, i64 0, <8 x i64> <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %wide.masked.gather.2 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0i32(<8 x i32*> %1846, i32 4, <8 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, <8 x i32> undef), !alias.scope !47, !noalias !155
  %1847 = lshr <8 x i32> %wide.masked.gather.2, <i32 9, i32 9, i32 9, i32 9, i32 9, i32 9, i32 9, i32 9>
  %1848 = or <8 x i32> %1847, <i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216>
  %1849 = bitcast <8 x i32> %1848 to <8 x float>
  %1850 = fmul reassoc nsz contract <8 x float> %1849, <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00>
  %1851 = fadd reassoc nsz contract <8 x float> %1850, <float -3.000000e+00, float -3.000000e+00, float -3.000000e+00, float -3.000000e+00, float -3.000000e+00, float -3.000000e+00, float -3.000000e+00, float -3.000000e+00>
  %1852 = fcmp reassoc nsz contract ole <8 x float> %1851, <float 0xBFEFFFFFE0000000, float 0xBFEFFFFFE0000000, float 0xBFEFFFFFE0000000, float 0xBFEFFFFFE0000000, float 0xBFEFFFFFE0000000, float 0xBFEFFFFFE0000000, float 0xBFEFFFFFE0000000, float 0xBFEFFFFFE0000000>
  %1853 = select <8 x i1> %1852, <8 x float> <float 0xBFEFFFFFE0000000, float 0xBFEFFFFFE0000000, float 0xBFEFFFFFE0000000, float 0xBFEFFFFFE0000000, float 0xBFEFFFFFE0000000, float 0xBFEFFFFFE0000000, float 0xBFEFFFFFE0000000, float 0xBFEFFFFFE0000000>, <8 x float> %1851
  %1854 = fneg reassoc nsz contract <8 x float> %1853
  %1855 = fmul reassoc nsz contract <8 x float> %1853, %1854
  %1856 = fadd reassoc nsz contract <8 x float> %1855, <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>
  %log_f32.i581 = fcmp reassoc nsz contract ule <8 x float> %1856, zeroinitializer
  %log_f321.i582 = sext <8 x i1> %log_f32.i581 to <8 x i32>
  %log_f322.i583 = bitcast <8 x i32> %log_f321.i582 to <8 x float>
  %log_f323.i584 = fcmp reassoc nsz contract oeq <8 x float> %1856, zeroinitializer
  %log_f324.i585 = sext <8 x i1> %log_f323.i584 to <8 x i32>
  %log_f325.i586 = bitcast <8 x i32> %log_f324.i585 to <8 x float>
  %log_f326.i587 = fcmp reassoc nsz contract oeq <8 x float> %1856, <float 0x7FF0000000000000, float 0x7FF0000000000000, float 0x7FF0000000000000, float 0x7FF0000000000000, float 0x7FF0000000000000, float 0x7FF0000000000000, float 0x7FF0000000000000, float 0x7FF0000000000000>
  %log_f327.i588 = sext <8 x i1> %log_f326.i587 to <8 x i32>
  %log_f328.i589 = bitcast <8 x i32> %log_f327.i588 to <8 x float>
  %1857 = fcmp reassoc nsz contract uge <8 x float> <float 0x3810000000000000, float 0x3810000000000000, float 0x3810000000000000, float 0x3810000000000000, float 0x3810000000000000, float 0x3810000000000000, float 0x3810000000000000, float 0x3810000000000000>, %1856
  %1858 = select reassoc nsz contract <8 x i1> %1857, <8 x float> <float 0x3810000000000000, float 0x3810000000000000, float 0x3810000000000000, float 0x3810000000000000, float 0x3810000000000000, float 0x3810000000000000, float 0x3810000000000000, float 0x3810000000000000>, <8 x float> %1856
  %1859 = bitcast <8 x float> %1858 to <8 x i32>
  %1860 = lshr <8 x i32> %1859, <i32 23, i32 23, i32 23, i32 23, i32 23, i32 23, i32 23, i32 23>
  %log_f329.i590 = bitcast <8 x float> %1858 to <8 x i32>
  %log_f3210.i591 = and <8 x i32> %log_f329.i590, <i32 -2139095041, i32 -2139095041, i32 -2139095041, i32 -2139095041, i32 -2139095041, i32 -2139095041, i32 -2139095041, i32 -2139095041>
  %1861 = bitcast <8 x i32> %log_f3210.i591 to <8 x float>
  %log_f3212.i592 = or <8 x i32> %log_f3210.i591, <i32 1056964608, i32 1056964608, i32 1056964608, i32 1056964608, i32 1056964608, i32 1056964608, i32 1056964608, i32 1056964608>
  %log_f3213.i593 = bitcast <8 x i32> %log_f3212.i592 to <8 x float>
  %1862 = sub <8 x i32> %1860, <i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127>
  %1863 = sitofp <8 x i32> %1862 to <8 x float>
  %log_f3214.i594 = fadd reassoc nsz contract <8 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %1863
  %log_f3215.i595 = fcmp reassoc nsz contract olt <8 x float> %log_f3213.i593, <float 0x3FE6A09E60000000, float 0x3FE6A09E60000000, float 0x3FE6A09E60000000, float 0x3FE6A09E60000000, float 0x3FE6A09E60000000, float 0x3FE6A09E60000000, float 0x3FE6A09E60000000, float 0x3FE6A09E60000000>
  %log_f3216.i596 = sext <8 x i1> %log_f3215.i595 to <8 x i32>
  %log_f3217.i597 = bitcast <8 x i32> %log_f3216.i596 to <8 x float>
  %log_f3220.i598 = and <8 x i32> %log_f3212.i592, %log_f3216.i596
  %1864 = bitcast <8 x i32> %log_f3220.i598 to <8 x float>
  %1865 = fsub reassoc nsz contract <8 x float> %log_f3213.i593, <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>
  %log_f3222.i599 = and <8 x i32> %log_f3216.i596, <i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216>
  %1866 = bitcast <8 x i32> %log_f3222.i599 to <8 x float>
  %1867 = fsub reassoc nsz contract <8 x float> %log_f3214.i594, %1866
  %log_f3223.i600 = fadd reassoc nsz contract <8 x float> %1865, %1864
  %log_f3224.i601 = fmul reassoc nsz contract <8 x float> %log_f3223.i600, %log_f3223.i600
  %log_f3225.i602 = fmul reassoc nsz contract <8 x float> %log_f3224.i601, %log_f3223.i600
  %log_f3226.i603 = fmul reassoc nsz contract <8 x float> %log_f3223.i600, <float 0x3FB2043760000000, float 0x3FB2043760000000, float 0x3FB2043760000000, float 0x3FB2043760000000, float 0x3FB2043760000000, float 0x3FB2043760000000, float 0x3FB2043760000000, float 0x3FB2043760000000>
  %log_f3227.i604 = fadd reassoc nsz contract <8 x float> <float 0xBFBD7A3700000000, float 0xBFBD7A3700000000, float 0xBFBD7A3700000000, float 0xBFBD7A3700000000, float 0xBFBD7A3700000000, float 0xBFBD7A3700000000, float 0xBFBD7A3700000000, float 0xBFBD7A3700000000>, %log_f3226.i603
  %log_f3228.i605 = fmul reassoc nsz contract <8 x float> %log_f3223.i600, <float 0xBFBFCBA9E0000000, float 0xBFBFCBA9E0000000, float 0xBFBFCBA9E0000000, float 0xBFBFCBA9E0000000, float 0xBFBFCBA9E0000000, float 0xBFBFCBA9E0000000, float 0xBFBFCBA9E0000000, float 0xBFBFCBA9E0000000>
  %log_f3229.i606 = fadd reassoc nsz contract <8 x float> <float 0x3FC23D37E0000000, float 0x3FC23D37E0000000, float 0x3FC23D37E0000000, float 0x3FC23D37E0000000, float 0x3FC23D37E0000000, float 0x3FC23D37E0000000, float 0x3FC23D37E0000000, float 0x3FC23D37E0000000>, %log_f3228.i605
  %log_f3230.i607 = fmul reassoc nsz contract <8 x float> %log_f3223.i600, <float 0x3FC999D580000000, float 0x3FC999D580000000, float 0x3FC999D580000000, float 0x3FC999D580000000, float 0x3FC999D580000000, float 0x3FC999D580000000, float 0x3FC999D580000000, float 0x3FC999D580000000>
  %log_f3231.i608 = fadd reassoc nsz contract <8 x float> <float 0xBFCFFFFF80000000, float 0xBFCFFFFF80000000, float 0xBFCFFFFF80000000, float 0xBFCFFFFF80000000, float 0xBFCFFFFF80000000, float 0xBFCFFFFF80000000, float 0xBFCFFFFF80000000, float 0xBFCFFFFF80000000>, %log_f3230.i607
  %log_f3232.i609 = fmul reassoc nsz contract <8 x float> %log_f3227.i604, %log_f3223.i600
  %log_f3233.i610 = fadd reassoc nsz contract <8 x float> <float 0x3FBDE4A340000000, float 0x3FBDE4A340000000, float 0x3FBDE4A340000000, float 0x3FBDE4A340000000, float 0x3FBDE4A340000000, float 0x3FBDE4A340000000, float 0x3FBDE4A340000000, float 0x3FBDE4A340000000>, %log_f3232.i609
  %log_f3234.i611 = fmul reassoc nsz contract <8 x float> %log_f3229.i606, %log_f3223.i600
  %log_f3235.i612 = fadd reassoc nsz contract <8 x float> <float 0xBFC555CA00000000, float 0xBFC555CA00000000, float 0xBFC555CA00000000, float 0xBFC555CA00000000, float 0xBFC555CA00000000, float 0xBFC555CA00000000, float 0xBFC555CA00000000, float 0xBFC555CA00000000>, %log_f3234.i611
  %log_f3236.i613 = fmul reassoc nsz contract <8 x float> %log_f3231.i608, %log_f3223.i600
  %log_f3237.i614 = fadd reassoc nsz contract <8 x float> <float 0x3FD5555540000000, float 0x3FD5555540000000, float 0x3FD5555540000000, float 0x3FD5555540000000, float 0x3FD5555540000000, float 0x3FD5555540000000, float 0x3FD5555540000000, float 0x3FD5555540000000>, %log_f3236.i613
  %log_f3238.i615 = fmul reassoc nsz contract <8 x float> %log_f3233.i610, %log_f3225.i602
  %log_f3239.i616 = fadd reassoc nsz contract <8 x float> %log_f3235.i612, %log_f3238.i615
  %log_f3240.i617 = fmul reassoc nsz contract <8 x float> %log_f3239.i616, %log_f3225.i602
  %log_f3241.i618 = fadd reassoc nsz contract <8 x float> %log_f3237.i614, %log_f3240.i617
  %log_f3242.i619 = fmul reassoc nsz contract <8 x float> %log_f3241.i618, %log_f3225.i602
  %log_f3243.i620 = fmul reassoc nsz contract <8 x float> <float 0xBF2BD01060000000, float 0xBF2BD01060000000, float 0xBF2BD01060000000, float 0xBF2BD01060000000, float 0xBF2BD01060000000, float 0xBF2BD01060000000, float 0xBF2BD01060000000, float 0xBF2BD01060000000>, %1867
  %log_f3244.i621 = fmul reassoc nsz contract <8 x float> <float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01>, %log_f3224.i601
  %log_f3245.i622 = fadd reassoc nsz contract <8 x float> %log_f3242.i619, %log_f3243.i620
  %1868 = fsub reassoc nsz contract <8 x float> %log_f3223.i600, %log_f3244.i621
  %log_f3246.i623 = fmul reassoc nsz contract <8 x float> <float 0x3FE6300000000000, float 0x3FE6300000000000, float 0x3FE6300000000000, float 0x3FE6300000000000, float 0x3FE6300000000000, float 0x3FE6300000000000, float 0x3FE6300000000000, float 0x3FE6300000000000>, %1867
  %log_f3247.i624 = fadd reassoc nsz contract <8 x float> %1868, %log_f3245.i622
  %log_f3248.i625 = fadd reassoc nsz contract <8 x float> %log_f3247.i624, %log_f3246.i623
  %log_f3250.i626 = and <8 x i32> %log_f324.i585, <i32 -8388608, i32 -8388608, i32 -8388608, i32 -8388608, i32 -8388608, i32 -8388608, i32 -8388608, i32 -8388608>
  %1869 = bitcast <8 x i32> %log_f3250.i626 to <8 x float>
  %log_f3252.i627 = and <8 x i32> %log_f327.i588, <i32 2139095040, i32 2139095040, i32 2139095040, i32 2139095040, i32 2139095040, i32 2139095040, i32 2139095040, i32 2139095040>
  %1870 = bitcast <8 x i32> %log_f3252.i627 to <8 x float>
  %log_f3255.i628 = or <8 x i32> %log_f3250.i626, %log_f3252.i627
  %log_f3256.i629 = bitcast <8 x i32> %log_f3255.i628 to <8 x float>
  %log_f3257.i630 = bitcast <8 x float> %log_f3248.i625 to <8 x i32>
  %log_f3259.i631 = or <8 x i32> %log_f3257.i630, %log_f321.i582
  %log_f3260.i632 = bitcast <8 x i32> %log_f3259.i631 to <8 x float>
  %log_f3263.i633 = or <8 x i32> %log_f324.i585, %log_f327.i588
  %log_f3264.i634 = bitcast <8 x i32> %log_f3263.i633 to <8 x float>
  %log_f3266.i635 = xor <8 x i32> %log_f3263.i633, <i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1>
  %1871 = bitcast <8 x i32> %log_f3266.i635 to <8 x float>
  %log_f3269.i636 = and <8 x i32> %log_f3266.i635, %log_f3259.i631
  %1872 = bitcast <8 x i32> %log_f3269.i636 to <8 x float>
  %log_f3272.i637 = or <8 x i32> %log_f3255.i628, %log_f3269.i636
  %log_f3273.i638 = bitcast <8 x i32> %log_f3272.i637 to <8 x float>
  %1873 = fmul reassoc nsz contract <8 x float> %1855, %1855
  %1874 = fmul reassoc nsz contract <8 x float> %1855, zeroinitializer
  %1875 = fadd reassoc nsz contract <8 x float> %1874, <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>
  %1876 = fmul reassoc nsz contract <8 x float> %1855, %1875
  %1877 = fadd reassoc nsz contract <8 x float> %1876, <float 0x402E2035A0000000, float 0x402E2035A0000000, float 0x402E2035A0000000, float 0x402E2035A0000000, float 0x402E2035A0000000, float 0x402E2035A0000000, float 0x402E2035A0000000, float 0x402E2035A0000000>
  %1878 = fmul reassoc nsz contract <8 x float> %1855, %1877
  %1879 = fadd reassoc nsz contract <8 x float> %1878, <float 0x4054C30B60000000, float 0x4054C30B60000000, float 0x4054C30B60000000, float 0x4054C30B60000000, float 0x4054C30B60000000, float 0x4054C30B60000000, float 0x4054C30B60000000, float 0x4054C30B60000000>
  %1880 = fmul reassoc nsz contract <8 x float> %1855, %1879
  %1881 = fadd reassoc nsz contract <8 x float> %1880, <float 0x406BB865A0000000, float 0x406BB865A0000000, float 0x406BB865A0000000, float 0x406BB865A0000000, float 0x406BB865A0000000, float 0x406BB865A0000000, float 0x406BB865A0000000, float 0x406BB865A0000000>
  %1882 = fmul reassoc nsz contract <8 x float> %1855, %1881
  %1883 = fadd reassoc nsz contract <8 x float> %1882, <float 0x4073519460000000, float 0x4073519460000000, float 0x4073519460000000, float 0x4073519460000000, float 0x4073519460000000, float 0x4073519460000000, float 0x4073519460000000, float 0x4073519460000000>
  %1884 = fmul reassoc nsz contract <8 x float> %1855, %1883
  %1885 = fadd reassoc nsz contract <8 x float> %1884, <float 0x406B0DB140000000, float 0x406B0DB140000000, float 0x406B0DB140000000, float 0x406B0DB140000000, float 0x406B0DB140000000, float 0x406B0DB140000000, float 0x406B0DB140000000, float 0x406B0DB140000000>
  %1886 = fmul reassoc nsz contract <8 x float> %1855, %1885
  %1887 = fadd reassoc nsz contract <8 x float> %1886, <float 0x404E0F3040000000, float 0x404E0F3040000000, float 0x404E0F3040000000, float 0x404E0F3040000000, float 0x404E0F3040000000, float 0x404E0F3040000000, float 0x404E0F3040000000, float 0x404E0F3040000000>
  %1888 = fadd reassoc nsz contract <8 x float> %1874, <float 0x3F07BC0960000000, float 0x3F07BC0960000000, float 0x3F07BC0960000000, float 0x3F07BC0960000000, float 0x3F07BC0960000000, float 0x3F07BC0960000000, float 0x3F07BC0960000000, float 0x3F07BC0960000000>
  %1889 = fmul reassoc nsz contract <8 x float> %1855, %1888
  %1890 = fadd reassoc nsz contract <8 x float> %1889, <float 0x3FDFE818A0000000, float 0x3FDFE818A0000000, float 0x3FDFE818A0000000, float 0x3FDFE818A0000000, float 0x3FDFE818A0000000, float 0x3FDFE818A0000000, float 0x3FDFE818A0000000, float 0x3FDFE818A0000000>
  %1891 = fmul reassoc nsz contract <8 x float> %1855, %1890
  %1892 = fadd reassoc nsz contract <8 x float> %1891, <float 0x401A509F40000000, float 0x401A509F40000000, float 0x401A509F40000000, float 0x401A509F40000000, float 0x401A509F40000000, float 0x401A509F40000000, float 0x401A509F40000000, float 0x401A509F40000000>
  %1893 = fmul reassoc nsz contract <8 x float> %1855, %1892
  %1894 = fadd reassoc nsz contract <8 x float> %1893, <float 0x403DE97380000000, float 0x403DE97380000000, float 0x403DE97380000000, float 0x403DE97380000000, float 0x403DE97380000000, float 0x403DE97380000000, float 0x403DE97380000000, float 0x403DE97380000000>
  %1895 = fmul reassoc nsz contract <8 x float> %1855, %1894
  %1896 = fadd reassoc nsz contract <8 x float> %1895, <float 0x404E798EC0000000, float 0x404E798EC0000000, float 0x404E798EC0000000, float 0x404E798EC0000000, float 0x404E798EC0000000, float 0x404E798EC0000000, float 0x404E798EC0000000, float 0x404E798EC0000000>
  %1897 = fmul reassoc nsz contract <8 x float> %1855, %1896
  %1898 = fadd reassoc nsz contract <8 x float> %1897, <float 0x404C8E75A0000000, float 0x404C8E75A0000000, float 0x404C8E75A0000000, float 0x404C8E75A0000000, float 0x404C8E75A0000000, float 0x404C8E75A0000000, float 0x404C8E75A0000000, float 0x404C8E75A0000000>
  %1899 = fmul reassoc nsz contract <8 x float> %1855, %1898
  %1900 = fadd reassoc nsz contract <8 x float> %1899, <float 0x40340A2020000000, float 0x40340A2020000000, float 0x40340A2020000000, float 0x40340A2020000000, float 0x40340A2020000000, float 0x40340A2020000000, float 0x40340A2020000000, float 0x40340A2020000000>
  %1901 = fmul reassoc nsz contract <8 x float> %1855, %1873
  %1902 = fmul reassoc nsz contract <8 x float> %1901, %1900
  %1903 = fdiv reassoc nsz contract <8 x float> %1902, %1887
  %1904 = fmul reassoc nsz contract <8 x float> %1873, <float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01>
  %1905 = fsub reassoc nsz contract <8 x float> %1903, %1904
  %1906 = fadd reassoc nsz contract <8 x float> %1855, %1905
  %1907 = call reassoc nsz contract <8 x float> @llvm.fabs.v8f32(<8 x float> %1855)
  %1908 = fcmp reassoc nsz contract olt <8 x float> %1907, <float 0x3FDA8279A0000000, float 0x3FDA8279A0000000, float 0x3FDA8279A0000000, float 0x3FDA8279A0000000, float 0x3FDA8279A0000000, float 0x3FDA8279A0000000, float 0x3FDA8279A0000000, float 0x3FDA8279A0000000>
  %1909 = select <8 x i1> %1908, <8 x float> %1906, <8 x float> %log_f3273.i638
  %1910 = getelementptr inbounds i8, i8* %1, i64 33554688
  %1911 = bitcast i8* %1910 to <8 x float>*
  store <8 x float> %1909, <8 x float>* %1911, align 16, !alias.scope !41, !noalias !156
  %1912 = getelementptr inbounds [16 x i32], [16 x i32]* %fusion.12, i64 0, <8 x i64> <i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15>
  %wide.masked.gather.3 = call <8 x i32> @llvm.masked.gather.v8i32.v8p0i32(<8 x i32*> %1912, i32 4, <8 x i1> <i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true, i1 true>, <8 x i32> undef), !alias.scope !47, !noalias !155
  %1913 = lshr <8 x i32> %wide.masked.gather.3, <i32 9, i32 9, i32 9, i32 9, i32 9, i32 9, i32 9, i32 9>
  %1914 = or <8 x i32> %1913, <i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216>
  %1915 = bitcast <8 x i32> %1914 to <8 x float>
  %1916 = fmul reassoc nsz contract <8 x float> %1915, <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float 2.000000e+00>
  %1917 = fadd reassoc nsz contract <8 x float> %1916, <float -3.000000e+00, float -3.000000e+00, float -3.000000e+00, float -3.000000e+00, float -3.000000e+00, float -3.000000e+00, float -3.000000e+00, float -3.000000e+00>
  %1918 = fcmp reassoc nsz contract ole <8 x float> %1917, <float 0xBFEFFFFFE0000000, float 0xBFEFFFFFE0000000, float 0xBFEFFFFFE0000000, float 0xBFEFFFFFE0000000, float 0xBFEFFFFFE0000000, float 0xBFEFFFFFE0000000, float 0xBFEFFFFFE0000000, float 0xBFEFFFFFE0000000>
  %1919 = select <8 x i1> %1918, <8 x float> <float 0xBFEFFFFFE0000000, float 0xBFEFFFFFE0000000, float 0xBFEFFFFFE0000000, float 0xBFEFFFFFE0000000, float 0xBFEFFFFFE0000000, float 0xBFEFFFFFE0000000, float 0xBFEFFFFFE0000000, float 0xBFEFFFFFE0000000>, <8 x float> %1917
  %1920 = fneg reassoc nsz contract <8 x float> %1919
  %1921 = fmul reassoc nsz contract <8 x float> %1919, %1920
  %1922 = fadd reassoc nsz contract <8 x float> %1921, <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>
  %log_f32.i = fcmp reassoc nsz contract ule <8 x float> %1922, zeroinitializer
  %log_f321.i = sext <8 x i1> %log_f32.i to <8 x i32>
  %log_f322.i = bitcast <8 x i32> %log_f321.i to <8 x float>
  %log_f323.i = fcmp reassoc nsz contract oeq <8 x float> %1922, zeroinitializer
  %log_f324.i = sext <8 x i1> %log_f323.i to <8 x i32>
  %log_f325.i = bitcast <8 x i32> %log_f324.i to <8 x float>
  %log_f326.i = fcmp reassoc nsz contract oeq <8 x float> %1922, <float 0x7FF0000000000000, float 0x7FF0000000000000, float 0x7FF0000000000000, float 0x7FF0000000000000, float 0x7FF0000000000000, float 0x7FF0000000000000, float 0x7FF0000000000000, float 0x7FF0000000000000>
  %log_f327.i = sext <8 x i1> %log_f326.i to <8 x i32>
  %log_f328.i = bitcast <8 x i32> %log_f327.i to <8 x float>
  %1923 = fcmp reassoc nsz contract uge <8 x float> <float 0x3810000000000000, float 0x3810000000000000, float 0x3810000000000000, float 0x3810000000000000, float 0x3810000000000000, float 0x3810000000000000, float 0x3810000000000000, float 0x3810000000000000>, %1922
  %1924 = select reassoc nsz contract <8 x i1> %1923, <8 x float> <float 0x3810000000000000, float 0x3810000000000000, float 0x3810000000000000, float 0x3810000000000000, float 0x3810000000000000, float 0x3810000000000000, float 0x3810000000000000, float 0x3810000000000000>, <8 x float> %1922
  %1925 = bitcast <8 x float> %1924 to <8 x i32>
  %1926 = lshr <8 x i32> %1925, <i32 23, i32 23, i32 23, i32 23, i32 23, i32 23, i32 23, i32 23>
  %log_f329.i = bitcast <8 x float> %1924 to <8 x i32>
  %log_f3210.i = and <8 x i32> %log_f329.i, <i32 -2139095041, i32 -2139095041, i32 -2139095041, i32 -2139095041, i32 -2139095041, i32 -2139095041, i32 -2139095041, i32 -2139095041>
  %1927 = bitcast <8 x i32> %log_f3210.i to <8 x float>
  %log_f3212.i = or <8 x i32> %log_f3210.i, <i32 1056964608, i32 1056964608, i32 1056964608, i32 1056964608, i32 1056964608, i32 1056964608, i32 1056964608, i32 1056964608>
  %log_f3213.i = bitcast <8 x i32> %log_f3212.i to <8 x float>
  %1928 = sub <8 x i32> %1926, <i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127, i32 127>
  %1929 = sitofp <8 x i32> %1928 to <8 x float>
  %log_f3214.i = fadd reassoc nsz contract <8 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, %1929
  %log_f3215.i = fcmp reassoc nsz contract olt <8 x float> %log_f3213.i, <float 0x3FE6A09E60000000, float 0x3FE6A09E60000000, float 0x3FE6A09E60000000, float 0x3FE6A09E60000000, float 0x3FE6A09E60000000, float 0x3FE6A09E60000000, float 0x3FE6A09E60000000, float 0x3FE6A09E60000000>
  %log_f3216.i = sext <8 x i1> %log_f3215.i to <8 x i32>
  %log_f3217.i = bitcast <8 x i32> %log_f3216.i to <8 x float>
  %log_f3220.i = and <8 x i32> %log_f3212.i, %log_f3216.i
  %1930 = bitcast <8 x i32> %log_f3220.i to <8 x float>
  %1931 = fsub reassoc nsz contract <8 x float> %log_f3213.i, <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>
  %log_f3222.i = and <8 x i32> %log_f3216.i, <i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216, i32 1065353216>
  %1932 = bitcast <8 x i32> %log_f3222.i to <8 x float>
  %1933 = fsub reassoc nsz contract <8 x float> %log_f3214.i, %1932
  %log_f3223.i = fadd reassoc nsz contract <8 x float> %1931, %1930
  %log_f3224.i = fmul reassoc nsz contract <8 x float> %log_f3223.i, %log_f3223.i
  %log_f3225.i = fmul reassoc nsz contract <8 x float> %log_f3224.i, %log_f3223.i
  %log_f3226.i = fmul reassoc nsz contract <8 x float> %log_f3223.i, <float 0x3FB2043760000000, float 0x3FB2043760000000, float 0x3FB2043760000000, float 0x3FB2043760000000, float 0x3FB2043760000000, float 0x3FB2043760000000, float 0x3FB2043760000000, float 0x3FB2043760000000>
  %log_f3227.i = fadd reassoc nsz contract <8 x float> <float 0xBFBD7A3700000000, float 0xBFBD7A3700000000, float 0xBFBD7A3700000000, float 0xBFBD7A3700000000, float 0xBFBD7A3700000000, float 0xBFBD7A3700000000, float 0xBFBD7A3700000000, float 0xBFBD7A3700000000>, %log_f3226.i
  %log_f3228.i = fmul reassoc nsz contract <8 x float> %log_f3223.i, <float 0xBFBFCBA9E0000000, float 0xBFBFCBA9E0000000, float 0xBFBFCBA9E0000000, float 0xBFBFCBA9E0000000, float 0xBFBFCBA9E0000000, float 0xBFBFCBA9E0000000, float 0xBFBFCBA9E0000000, float 0xBFBFCBA9E0000000>
  %log_f3229.i = fadd reassoc nsz contract <8 x float> <float 0x3FC23D37E0000000, float 0x3FC23D37E0000000, float 0x3FC23D37E0000000, float 0x3FC23D37E0000000, float 0x3FC23D37E0000000, float 0x3FC23D37E0000000, float 0x3FC23D37E0000000, float 0x3FC23D37E0000000>, %log_f3228.i
  %log_f3230.i = fmul reassoc nsz contract <8 x float> %log_f3223.i, <float 0x3FC999D580000000, float 0x3FC999D580000000, float 0x3FC999D580000000, float 0x3FC999D580000000, float 0x3FC999D580000000, float 0x3FC999D580000000, float 0x3FC999D580000000, float 0x3FC999D580000000>
  %log_f3231.i = fadd reassoc nsz contract <8 x float> <float 0xBFCFFFFF80000000, float 0xBFCFFFFF80000000, float 0xBFCFFFFF80000000, float 0xBFCFFFFF80000000, float 0xBFCFFFFF80000000, float 0xBFCFFFFF80000000, float 0xBFCFFFFF80000000, float 0xBFCFFFFF80000000>, %log_f3230.i
  %log_f3232.i = fmul reassoc nsz contract <8 x float> %log_f3227.i, %log_f3223.i
  %log_f3233.i = fadd reassoc nsz contract <8 x float> <float 0x3FBDE4A340000000, float 0x3FBDE4A340000000, float 0x3FBDE4A340000000, float 0x3FBDE4A340000000, float 0x3FBDE4A340000000, float 0x3FBDE4A340000000, float 0x3FBDE4A340000000, float 0x3FBDE4A340000000>, %log_f3232.i
  %log_f3234.i = fmul reassoc nsz contract <8 x float> %log_f3229.i, %log_f3223.i
  %log_f3235.i = fadd reassoc nsz contract <8 x float> <float 0xBFC555CA00000000, float 0xBFC555CA00000000, float 0xBFC555CA00000000, float 0xBFC555CA00000000, float 0xBFC555CA00000000, float 0xBFC555CA00000000, float 0xBFC555CA00000000, float 0xBFC555CA00000000>, %log_f3234.i
  %log_f3236.i = fmul reassoc nsz contract <8 x float> %log_f3231.i, %log_f3223.i
  %log_f3237.i = fadd reassoc nsz contract <8 x float> <float 0x3FD5555540000000, float 0x3FD5555540000000, float 0x3FD5555540000000, float 0x3FD5555540000000, float 0x3FD5555540000000, float 0x3FD5555540000000, float 0x3FD5555540000000, float 0x3FD5555540000000>, %log_f3236.i
  %log_f3238.i = fmul reassoc nsz contract <8 x float> %log_f3233.i, %log_f3225.i
  %log_f3239.i = fadd reassoc nsz contract <8 x float> %log_f3235.i, %log_f3238.i
  %log_f3240.i = fmul reassoc nsz contract <8 x float> %log_f3239.i, %log_f3225.i
  %log_f3241.i = fadd reassoc nsz contract <8 x float> %log_f3237.i, %log_f3240.i
  %log_f3242.i = fmul reassoc nsz contract <8 x float> %log_f3241.i, %log_f3225.i
  %log_f3243.i = fmul reassoc nsz contract <8 x float> <float 0xBF2BD01060000000, float 0xBF2BD01060000000, float 0xBF2BD01060000000, float 0xBF2BD01060000000, float 0xBF2BD01060000000, float 0xBF2BD01060000000, float 0xBF2BD01060000000, float 0xBF2BD01060000000>, %1933
  %log_f3244.i = fmul reassoc nsz contract <8 x float> <float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01>, %log_f3224.i
  %log_f3245.i = fadd reassoc nsz contract <8 x float> %log_f3242.i, %log_f3243.i
  %1934 = fsub reassoc nsz contract <8 x float> %log_f3223.i, %log_f3244.i
  %log_f3246.i = fmul reassoc nsz contract <8 x float> <float 0x3FE6300000000000, float 0x3FE6300000000000, float 0x3FE6300000000000, float 0x3FE6300000000000, float 0x3FE6300000000000, float 0x3FE6300000000000, float 0x3FE6300000000000, float 0x3FE6300000000000>, %1933
  %log_f3247.i = fadd reassoc nsz contract <8 x float> %1934, %log_f3245.i
  %log_f3248.i = fadd reassoc nsz contract <8 x float> %log_f3247.i, %log_f3246.i
  %log_f3250.i = and <8 x i32> %log_f324.i, <i32 -8388608, i32 -8388608, i32 -8388608, i32 -8388608, i32 -8388608, i32 -8388608, i32 -8388608, i32 -8388608>
  %1935 = bitcast <8 x i32> %log_f3250.i to <8 x float>
  %log_f3252.i = and <8 x i32> %log_f327.i, <i32 2139095040, i32 2139095040, i32 2139095040, i32 2139095040, i32 2139095040, i32 2139095040, i32 2139095040, i32 2139095040>
  %1936 = bitcast <8 x i32> %log_f3252.i to <8 x float>
  %log_f3255.i = or <8 x i32> %log_f3250.i, %log_f3252.i
  %log_f3256.i = bitcast <8 x i32> %log_f3255.i to <8 x float>
  %log_f3257.i = bitcast <8 x float> %log_f3248.i to <8 x i32>
  %log_f3259.i = or <8 x i32> %log_f3257.i, %log_f321.i
  %log_f3260.i = bitcast <8 x i32> %log_f3259.i to <8 x float>
  %log_f3263.i = or <8 x i32> %log_f324.i, %log_f327.i
  %log_f3264.i = bitcast <8 x i32> %log_f3263.i to <8 x float>
  %log_f3266.i = xor <8 x i32> %log_f3263.i, <i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1>
  %1937 = bitcast <8 x i32> %log_f3266.i to <8 x float>
  %log_f3269.i = and <8 x i32> %log_f3266.i, %log_f3259.i
  %1938 = bitcast <8 x i32> %log_f3269.i to <8 x float>
  %log_f3272.i = or <8 x i32> %log_f3255.i, %log_f3269.i
  %log_f3273.i = bitcast <8 x i32> %log_f3272.i to <8 x float>
  %1939 = fmul reassoc nsz contract <8 x float> %1921, %1921
  %1940 = fmul reassoc nsz contract <8 x float> %1921, zeroinitializer
  %1941 = fadd reassoc nsz contract <8 x float> %1940, <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>
  %1942 = fmul reassoc nsz contract <8 x float> %1921, %1941
  %1943 = fadd reassoc nsz contract <8 x float> %1942, <float 0x402E2035A0000000, float 0x402E2035A0000000, float 0x402E2035A0000000, float 0x402E2035A0000000, float 0x402E2035A0000000, float 0x402E2035A0000000, float 0x402E2035A0000000, float 0x402E2035A0000000>
  %1944 = fmul reassoc nsz contract <8 x float> %1921, %1943
  %1945 = fadd reassoc nsz contract <8 x float> %1944, <float 0x4054C30B60000000, float 0x4054C30B60000000, float 0x4054C30B60000000, float 0x4054C30B60000000, float 0x4054C30B60000000, float 0x4054C30B60000000, float 0x4054C30B60000000, float 0x4054C30B60000000>
  %1946 = fmul reassoc nsz contract <8 x float> %1921, %1945
  %1947 = fadd reassoc nsz contract <8 x float> %1946, <float 0x406BB865A0000000, float 0x406BB865A0000000, float 0x406BB865A0000000, float 0x406BB865A0000000, float 0x406BB865A0000000, float 0x406BB865A0000000, float 0x406BB865A0000000, float 0x406BB865A0000000>
  %1948 = fmul reassoc nsz contract <8 x float> %1921, %1947
  %1949 = fadd reassoc nsz contract <8 x float> %1948, <float 0x4073519460000000, float 0x4073519460000000, float 0x4073519460000000, float 0x4073519460000000, float 0x4073519460000000, float 0x4073519460000000, float 0x4073519460000000, float 0x4073519460000000>
  %1950 = fmul reassoc nsz contract <8 x float> %1921, %1949
  %1951 = fadd reassoc nsz contract <8 x float> %1950, <float 0x406B0DB140000000, float 0x406B0DB140000000, float 0x406B0DB140000000, float 0x406B0DB140000000, float 0x406B0DB140000000, float 0x406B0DB140000000, float 0x406B0DB140000000, float 0x406B0DB140000000>
  %1952 = fmul reassoc nsz contract <8 x float> %1921, %1951
  %1953 = fadd reassoc nsz contract <8 x float> %1952, <float 0x404E0F3040000000, float 0x404E0F3040000000, float 0x404E0F3040000000, float 0x404E0F3040000000, float 0x404E0F3040000000, float 0x404E0F3040000000, float 0x404E0F3040000000, float 0x404E0F3040000000>
  %1954 = fadd reassoc nsz contract <8 x float> %1940, <float 0x3F07BC0960000000, float 0x3F07BC0960000000, float 0x3F07BC0960000000, float 0x3F07BC0960000000, float 0x3F07BC0960000000, float 0x3F07BC0960000000, float 0x3F07BC0960000000, float 0x3F07BC0960000000>
  %1955 = fmul reassoc nsz contract <8 x float> %1921, %1954
  %1956 = fadd reassoc nsz contract <8 x float> %1955, <float 0x3FDFE818A0000000, float 0x3FDFE818A0000000, float 0x3FDFE818A0000000, float 0x3FDFE818A0000000, float 0x3FDFE818A0000000, float 0x3FDFE818A0000000, float 0x3FDFE818A0000000, float 0x3FDFE818A0000000>
  %1957 = fmul reassoc nsz contract <8 x float> %1921, %1956
  %1958 = fadd reassoc nsz contract <8 x float> %1957, <float 0x401A509F40000000, float 0x401A509F40000000, float 0x401A509F40000000, float 0x401A509F40000000, float 0x401A509F40000000, float 0x401A509F40000000, float 0x401A509F40000000, float 0x401A509F40000000>
  %1959 = fmul reassoc nsz contract <8 x float> %1921, %1958
  %1960 = fadd reassoc nsz contract <8 x float> %1959, <float 0x403DE97380000000, float 0x403DE97380000000, float 0x403DE97380000000, float 0x403DE97380000000, float 0x403DE97380000000, float 0x403DE97380000000, float 0x403DE97380000000, float 0x403DE97380000000>
  %1961 = fmul reassoc nsz contract <8 x float> %1921, %1960
  %1962 = fadd reassoc nsz contract <8 x float> %1961, <float 0x404E798EC0000000, float 0x404E798EC0000000, float 0x404E798EC0000000, float 0x404E798EC0000000, float 0x404E798EC0000000, float 0x404E798EC0000000, float 0x404E798EC0000000, float 0x404E798EC0000000>
  %1963 = fmul reassoc nsz contract <8 x float> %1921, %1962
  %1964 = fadd reassoc nsz contract <8 x float> %1963, <float 0x404C8E75A0000000, float 0x404C8E75A0000000, float 0x404C8E75A0000000, float 0x404C8E75A0000000, float 0x404C8E75A0000000, float 0x404C8E75A0000000, float 0x404C8E75A0000000, float 0x404C8E75A0000000>
  %1965 = fmul reassoc nsz contract <8 x float> %1921, %1964
  %1966 = fadd reassoc nsz contract <8 x float> %1965, <float 0x40340A2020000000, float 0x40340A2020000000, float 0x40340A2020000000, float 0x40340A2020000000, float 0x40340A2020000000, float 0x40340A2020000000, float 0x40340A2020000000, float 0x40340A2020000000>
  %1967 = fmul reassoc nsz contract <8 x float> %1921, %1939
  %1968 = fmul reassoc nsz contract <8 x float> %1967, %1966
  %1969 = fdiv reassoc nsz contract <8 x float> %1968, %1953
  %1970 = fmul reassoc nsz contract <8 x float> %1939, <float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01, float 5.000000e-01>
  %1971 = fsub reassoc nsz contract <8 x float> %1969, %1970
  %1972 = fadd reassoc nsz contract <8 x float> %1921, %1971
  %1973 = call reassoc nsz contract <8 x float> @llvm.fabs.v8f32(<8 x float> %1921)
  %1974 = fcmp reassoc nsz contract olt <8 x float> %1973, <float 0x3FDA8279A0000000, float 0x3FDA8279A0000000, float 0x3FDA8279A0000000, float 0x3FDA8279A0000000, float 0x3FDA8279A0000000, float 0x3FDA8279A0000000, float 0x3FDA8279A0000000, float 0x3FDA8279A0000000>
  %1975 = select <8 x i1> %1974, <8 x float> %1972, <8 x float> %log_f3273.i
  %1976 = getelementptr inbounds i8, i8* %1, i64 33554720
  %1977 = bitcast i8* %1976 to <8 x float>*
  store <8 x float> %1975, <8 x float>* %1977, align 16, !alias.scope !41, !noalias !156
  %1978 = getelementptr inbounds i8, i8* %1, i64 33554496
  %1979 = bitcast i8* %1714 to <8 x float>*
  %1980 = load <8 x float>, <8 x float>* %1979, align 16, !alias.scope !41, !noalias !156
  %1981 = fneg reassoc nsz contract <8 x float> %1980
  %1982 = call reassoc nsz contract <8 x float> @llvm.sqrt.v8f32(<8 x float> %1981)
  %1983 = bitcast i8* %1978 to <8 x float>*
  store <8 x float> %1982, <8 x float>* %1983, align 16, !alias.scope !43, !noalias !157
  %1984 = getelementptr inbounds i8, i8* %1, i64 33554656
  %1985 = getelementptr inbounds i8, i8* %1, i64 33554528
  %1986 = bitcast i8* %1984 to <8 x float>*
  %1987 = load <8 x float>, <8 x float>* %1986, align 16, !alias.scope !41, !noalias !156
  %1988 = fneg reassoc nsz contract <8 x float> %1987
  %1989 = call reassoc nsz contract <8 x float> @llvm.sqrt.v8f32(<8 x float> %1988)
  %1990 = bitcast i8* %1985 to <8 x float>*
  store <8 x float> %1989, <8 x float>* %1990, align 16, !alias.scope !43, !noalias !157
  %1991 = getelementptr inbounds i8, i8* %1, i64 33554688
  %1992 = getelementptr inbounds i8, i8* %1, i64 33554560
  %1993 = bitcast i8* %1991 to <8 x float>*
  %1994 = load <8 x float>, <8 x float>* %1993, align 16, !alias.scope !41, !noalias !156
  %1995 = fneg reassoc nsz contract <8 x float> %1994
  %1996 = call reassoc nsz contract <8 x float> @llvm.sqrt.v8f32(<8 x float> %1995)
  %1997 = bitcast i8* %1992 to <8 x float>*
  store <8 x float> %1996, <8 x float>* %1997, align 16, !alias.scope !43, !noalias !157
  %1998 = getelementptr inbounds i8, i8* %1, i64 33554720
  %1999 = getelementptr inbounds i8, i8* %1, i64 33554592
  %2000 = bitcast i8* %1998 to <8 x float>*
  %2001 = load <8 x float>, <8 x float>* %2000, align 16, !alias.scope !41, !noalias !156
  %2002 = fneg reassoc nsz contract <8 x float> %2001
  %2003 = call reassoc nsz contract <8 x float> @llvm.sqrt.v8f32(<8 x float> %2002)
  %2004 = bitcast i8* %1999 to <8 x float>*
  store <8 x float> %2003, <8 x float>* %2004, align 16, !alias.scope !43, !noalias !157
  %2005 = getelementptr inbounds i8, i8* %1, i64 18496
  %fusion.18 = bitcast i8* %2005 to [2304 x i32]*
  %2006 = bitcast i8* %361 to <4 x i32>*
  %2007 = load <4 x i32>, <4 x i32>* %2006, align 4
  %2008 = load i32, i32* %362, align 4, !alias.scope !97, !noalias !158
  %2009 = add <4 x i32> %2007, <i32 2304, i32 undef, i32 undef, i32 undef>
  %2010 = shufflevector <4 x i32> %2009, <4 x i32> undef, <8 x i32> zeroinitializer
  %2011 = add <4 x i32> %2007, <i32 2312, i32 undef, i32 undef, i32 undef>
  %2012 = shufflevector <4 x i32> %2011, <4 x i32> undef, <8 x i32> zeroinitializer
  %2013 = add <4 x i32> %2007, <i32 2320, i32 undef, i32 undef, i32 undef>
  %2014 = shufflevector <4 x i32> %2013, <4 x i32> undef, <8 x i32> zeroinitializer
  %2015 = add <4 x i32> %2007, <i32 2328, i32 undef, i32 undef, i32 undef>
  %2016 = shufflevector <4 x i32> %2015, <4 x i32> undef, <8 x i32> zeroinitializer
  %2017 = add <4 x i32> %2007, <i32 2304, i32 undef, i32 undef, i32 undef>
  %2018 = shufflevector <4 x i32> %2017, <4 x i32> undef, <8 x i32> zeroinitializer
  %2019 = add <4 x i32> %2007, <i32 2312, i32 undef, i32 undef, i32 undef>
  %2020 = shufflevector <4 x i32> %2019, <4 x i32> undef, <8 x i32> zeroinitializer
  %2021 = add <4 x i32> %2007, <i32 2320, i32 undef, i32 undef, i32 undef>
  %2022 = shufflevector <4 x i32> %2021, <4 x i32> undef, <8 x i32> zeroinitializer
  %2023 = add <4 x i32> %2007, <i32 2328, i32 undef, i32 undef, i32 undef>
  %2024 = shufflevector <4 x i32> %2023, <4 x i32> undef, <8 x i32> zeroinitializer
  br label %vector.body512

vector.body512:                                   ; preds = %vector.body512, %while.17.exit
  %index514 = phi i64 [ 0, %while.17.exit ], [ %index.next515.1, %vector.body512 ]
  %vec.ind523 = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %while.17.exit ], [ %vec.ind.next528.1, %vector.body512 ]
  %2025 = add <8 x i32> %2010, %vec.ind523
  %2026 = add <8 x i32> %2012, %vec.ind523
  %2027 = add <8 x i32> %2014, %vec.ind523
  %2028 = add <8 x i32> %2016, %vec.ind523
  %2029 = getelementptr inbounds [2304 x i32], [2304 x i32]* %fusion.18, i64 0, i64 %index514
  %2030 = bitcast i32* %2029 to <8 x i32>*
  store <8 x i32> %2025, <8 x i32>* %2030, align 16, !alias.scope !6, !noalias !161
  %2031 = getelementptr inbounds i32, i32* %2029, i64 8
  %2032 = bitcast i32* %2031 to <8 x i32>*
  store <8 x i32> %2026, <8 x i32>* %2032, align 16, !alias.scope !6, !noalias !161
  %2033 = getelementptr inbounds i32, i32* %2029, i64 16
  %2034 = bitcast i32* %2033 to <8 x i32>*
  store <8 x i32> %2027, <8 x i32>* %2034, align 16, !alias.scope !6, !noalias !161
  %2035 = getelementptr inbounds i32, i32* %2029, i64 24
  %2036 = bitcast i32* %2035 to <8 x i32>*
  store <8 x i32> %2028, <8 x i32>* %2036, align 16, !alias.scope !6, !noalias !161
  %index.next515 = or i64 %index514, 32
  %vec.ind.next528 = add <8 x i32> %vec.ind523, <i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32>
  %2037 = add <8 x i32> %2018, %vec.ind.next528
  %2038 = add <8 x i32> %2020, %vec.ind.next528
  %2039 = add <8 x i32> %2022, %vec.ind.next528
  %2040 = add <8 x i32> %2024, %vec.ind.next528
  %2041 = getelementptr inbounds [2304 x i32], [2304 x i32]* %fusion.18, i64 0, i64 %index.next515
  %2042 = bitcast i32* %2041 to <8 x i32>*
  store <8 x i32> %2037, <8 x i32>* %2042, align 16, !alias.scope !6, !noalias !161
  %2043 = getelementptr inbounds i32, i32* %2041, i64 8
  %2044 = bitcast i32* %2043 to <8 x i32>*
  store <8 x i32> %2038, <8 x i32>* %2044, align 16, !alias.scope !6, !noalias !161
  %2045 = getelementptr inbounds i32, i32* %2041, i64 16
  %2046 = bitcast i32* %2045 to <8 x i32>*
  store <8 x i32> %2039, <8 x i32>* %2046, align 16, !alias.scope !6, !noalias !161
  %2047 = getelementptr inbounds i32, i32* %2041, i64 24
  %2048 = bitcast i32* %2047 to <8 x i32>*
  store <8 x i32> %2040, <8 x i32>* %2048, align 16, !alias.scope !6, !noalias !161
  %index.next515.1 = add nuw nsw i64 %index514, 64
  %vec.ind.next528.1 = add <8 x i32> %vec.ind523, <i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64>
  %2049 = icmp eq i64 %index.next515.1, 2304
  br i1 %2049, label %fusion.18.loop_exit.dim.0, label %vector.body512, !llvm.loop !166

fusion.18.loop_exit.dim.0:                        ; preds = %vector.body512
  %fusion.20 = bitcast i8* %4 to [2304 x i32]*
  %2050 = bitcast i8* %15 to <4 x i32>*
  %2051 = load <4 x i32>, <4 x i32>* %2050, align 16
  %2052 = load i32, i32* %359, align 16, !alias.scope !97, !noalias !158
  %broadcast.splat558 = shufflevector <4 x i32> %2051, <4 x i32> undef, <8 x i32> zeroinitializer
  %2053 = add <4 x i32> %2051, <i32 8, i32 undef, i32 undef, i32 undef>
  %2054 = shufflevector <4 x i32> %2053, <4 x i32> undef, <8 x i32> zeroinitializer
  %2055 = add <4 x i32> %2051, <i32 16, i32 undef, i32 undef, i32 undef>
  %2056 = shufflevector <4 x i32> %2055, <4 x i32> undef, <8 x i32> zeroinitializer
  %2057 = add <4 x i32> %2051, <i32 24, i32 undef, i32 undef, i32 undef>
  %2058 = shufflevector <4 x i32> %2057, <4 x i32> undef, <8 x i32> zeroinitializer
  %2059 = add <4 x i32> %2051, <i32 8, i32 undef, i32 undef, i32 undef>
  %2060 = shufflevector <4 x i32> %2059, <4 x i32> undef, <8 x i32> zeroinitializer
  %2061 = add <4 x i32> %2051, <i32 16, i32 undef, i32 undef, i32 undef>
  %2062 = shufflevector <4 x i32> %2061, <4 x i32> undef, <8 x i32> zeroinitializer
  %2063 = add <4 x i32> %2051, <i32 24, i32 undef, i32 undef, i32 undef>
  %2064 = shufflevector <4 x i32> %2063, <4 x i32> undef, <8 x i32> zeroinitializer
  %2065 = add <4 x i32> %2051, <i32 8, i32 undef, i32 undef, i32 undef>
  %2066 = shufflevector <4 x i32> %2065, <4 x i32> undef, <8 x i32> zeroinitializer
  %2067 = add <4 x i32> %2051, <i32 16, i32 undef, i32 undef, i32 undef>
  %2068 = shufflevector <4 x i32> %2067, <4 x i32> undef, <8 x i32> zeroinitializer
  %2069 = add <4 x i32> %2051, <i32 24, i32 undef, i32 undef, i32 undef>
  %2070 = shufflevector <4 x i32> %2069, <4 x i32> undef, <8 x i32> zeroinitializer
  br label %vector.body539

vector.body539:                                   ; preds = %vector.body539, %fusion.18.loop_exit.dim.0
  %index541 = phi i64 [ 0, %fusion.18.loop_exit.dim.0 ], [ %index.next542.2, %vector.body539 ]
  %vec.ind551 = phi <8 x i32> [ <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>, %fusion.18.loop_exit.dim.0 ], [ %vec.ind.next556.2, %vector.body539 ]
  %2071 = add <8 x i32> %broadcast.splat558, %vec.ind551
  %2072 = add <8 x i32> %2054, %vec.ind551
  %2073 = add <8 x i32> %2056, %vec.ind551
  %2074 = add <8 x i32> %2058, %vec.ind551
  %2075 = getelementptr inbounds [2304 x i32], [2304 x i32]* %fusion.20, i64 0, i64 %index541
  %2076 = bitcast i32* %2075 to <8 x i32>*
  store <8 x i32> %2071, <8 x i32>* %2076, align 16, !alias.scope !25, !noalias !167
  %2077 = getelementptr inbounds i32, i32* %2075, i64 8
  %2078 = bitcast i32* %2077 to <8 x i32>*
  store <8 x i32> %2072, <8 x i32>* %2078, align 16, !alias.scope !25, !noalias !167
  %2079 = getelementptr inbounds i32, i32* %2075, i64 16
  %2080 = bitcast i32* %2079 to <8 x i32>*
  store <8 x i32> %2073, <8 x i32>* %2080, align 16, !alias.scope !25, !noalias !167
  %2081 = getelementptr inbounds i32, i32* %2075, i64 24
  %2082 = bitcast i32* %2081 to <8 x i32>*
  store <8 x i32> %2074, <8 x i32>* %2082, align 16, !alias.scope !25, !noalias !167
  %index.next542 = add nuw nsw i64 %index541, 32
  %vec.ind.next556 = add <8 x i32> %vec.ind551, <i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32, i32 32>
  %2083 = add <8 x i32> %broadcast.splat558, %vec.ind.next556
  %2084 = add <8 x i32> %2060, %vec.ind.next556
  %2085 = add <8 x i32> %2062, %vec.ind.next556
  %2086 = add <8 x i32> %2064, %vec.ind.next556
  %2087 = getelementptr inbounds [2304 x i32], [2304 x i32]* %fusion.20, i64 0, i64 %index.next542
  %2088 = bitcast i32* %2087 to <8 x i32>*
  store <8 x i32> %2083, <8 x i32>* %2088, align 16, !alias.scope !25, !noalias !167
  %2089 = getelementptr inbounds i32, i32* %2087, i64 8
  %2090 = bitcast i32* %2089 to <8 x i32>*
  store <8 x i32> %2084, <8 x i32>* %2090, align 16, !alias.scope !25, !noalias !167
  %2091 = getelementptr inbounds i32, i32* %2087, i64 16
  %2092 = bitcast i32* %2091 to <8 x i32>*
  store <8 x i32> %2085, <8 x i32>* %2092, align 16, !alias.scope !25, !noalias !167
  %2093 = getelementptr inbounds i32, i32* %2087, i64 24
  %2094 = bitcast i32* %2093 to <8 x i32>*
  store <8 x i32> %2086, <8 x i32>* %2094, align 16, !alias.scope !25, !noalias !167
  %index.next542.1 = add nuw nsw i64 %index541, 64
  %vec.ind.next556.1 = add <8 x i32> %vec.ind551, <i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64>
  %2095 = add <8 x i32> %broadcast.splat558, %vec.ind.next556.1
  %2096 = add <8 x i32> %2066, %vec.ind.next556.1
  %2097 = add <8 x i32> %2068, %vec.ind.next556.1
  %2098 = add <8 x i32> %2070, %vec.ind.next556.1
  %2099 = getelementptr inbounds [2304 x i32], [2304 x i32]* %fusion.20, i64 0, i64 %index.next542.1
  %2100 = bitcast i32* %2099 to <8 x i32>*
  store <8 x i32> %2095, <8 x i32>* %2100, align 16, !alias.scope !25, !noalias !167
  %2101 = getelementptr inbounds i32, i32* %2099, i64 8
  %2102 = bitcast i32* %2101 to <8 x i32>*
  store <8 x i32> %2096, <8 x i32>* %2102, align 16, !alias.scope !25, !noalias !167
  %2103 = getelementptr inbounds i32, i32* %2099, i64 16
  %2104 = bitcast i32* %2103 to <8 x i32>*
  store <8 x i32> %2097, <8 x i32>* %2104, align 16, !alias.scope !25, !noalias !167
  %2105 = getelementptr inbounds i32, i32* %2099, i64 24
  %2106 = bitcast i32* %2105 to <8 x i32>*
  store <8 x i32> %2098, <8 x i32>* %2106, align 16, !alias.scope !25, !noalias !167
  %index.next542.2 = add nuw nsw i64 %index541, 96
  %vec.ind.next556.2 = add <8 x i32> %vec.ind551, <i32 96, i32 96, i32 96, i32 96, i32 96, i32 96, i32 96, i32 96>
  %2107 = icmp eq i64 %index.next542.2, 2304
  br i1 %2107, label %while.16.body.lr.ph, label %vector.body539, !llvm.loop !168

while.16.body.lr.ph:                              ; preds = %vector.body539
  %2108 = getelementptr inbounds i8, i8* %1, i64 27744
  %fusion.17 = bitcast i8* %2108 to i32*
  %2109 = xor i32 %2052, 466688986
  %2110 = xor i32 %2109, %2008
  store i32 %2110, i32* %fusion.17, align 16, !alias.scope !27, !noalias !169
  %2111 = getelementptr inbounds i8, i8* %1, i64 27792
  %fusion.19 = bitcast i8* %2111 to i32*
  store i32 %2008, i32* %fusion.19, align 16, !alias.scope !170, !noalias !171
  %2112 = getelementptr inbounds i8, i8* %1, i64 27808
  %fusion.21 = bitcast i8* %2112 to i32*
  store i32 %2052, i32* %fusion.21, align 16, !alias.scope !172, !noalias !173
  %2113 = getelementptr inbounds i8, i8* %1, i64 80
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(16) %2113, i8* nonnull align 16 dereferenceable(16) getelementptr inbounds ([16 x i8], [16 x i8]* @0, i64 0, i64 0), i64 16, i1 false)
  %2114 = getelementptr inbounds i8, i8* %1, i64 27728
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(16) %2114, i8* nonnull align 16 dereferenceable(16) getelementptr inbounds ([16 x i8], [16 x i8]* @1, i64 0, i64 0), i64 16, i1 false)
  %2115 = getelementptr inbounds i8, i8* %1, i64 27824
  %2116 = bitcast i8* %2115 to i32*
  store i32 0, i32* %2116, align 16
  %2117 = getelementptr inbounds i8, i8* %1, i64 33554880
  %2118 = bitcast i8* %2117 to i8**
  store i8* %2115, i8** %2118, align 16, !alias.scope !174, !noalias !175
  %2119 = getelementptr inbounds i8, i8* %1, i64 33554888
  %2120 = bitcast i8* %2119 to i8**
  store i8* %4, i8** %2120, align 8, !alias.scope !174, !noalias !175
  %2121 = getelementptr inbounds i8, i8* %1, i64 33554896
  %2122 = bitcast i8* %2121 to i8**
  store i8* %2005, i8** %2122, align 16, !alias.scope !174, !noalias !175
  %2123 = getelementptr inbounds i8, i8* %1, i64 33554904
  %2124 = bitcast i8* %2123 to i8**
  store i8* %2111, i8** %2124, align 8, !alias.scope !174, !noalias !175
  %2125 = getelementptr inbounds i8, i8* %1, i64 33554912
  %2126 = bitcast i8* %2125 to i8**
  store i8* %2108, i8** %2126, align 16, !alias.scope !174, !noalias !175
  %2127 = getelementptr inbounds i8, i8* %1, i64 33554920
  %2128 = bitcast i8* %2127 to i8**
  store i8* %2112, i8** %2128, align 8, !alias.scope !174, !noalias !175
  %2129 = getelementptr inbounds i8, i8* %1, i64 33554928
  %2130 = bitcast i8* %2129 to i8**
  store i8* %2113, i8** %2130, align 16, !alias.scope !174, !noalias !175
  %2131 = getelementptr inbounds i8, i8* %1, i64 33554936
  %2132 = bitcast i8* %2131 to i8**
  store i8* %2114, i8** %2132, align 8, !alias.scope !174, !noalias !175
  %compare.14.i = getelementptr inbounds i8, i8* %1, i64 64
  store i8 1, i8* %compare.14.i, align 16, !alias.scope !176, !noalias !178
  %2133 = getelementptr inbounds i8, i8* %1, i64 27712
  %2134 = getelementptr inbounds i8, i8* %1, i64 9280
  %2135 = getelementptr inbounds i8, i8* %1, i64 27760
  %copy.56.i = bitcast i8* %2135 to i32*
  %2136 = getelementptr inbounds i8, i8* %1, i64 27776
  %2137 = bitcast i8* %2136 to i32*
  %2138 = bitcast i8* %2123 to i32**
  %2139 = bitcast i8* %2127 to i32**
  %2140 = bitcast i8* %2133 to i32*
  br label %while.16.body

while.16.body:                                    ; preds = %while.16.body.lr.ph, %while.16.body
  %2141 = phi i32 [ %2110, %while.16.body.lr.ph ], [ %2150, %while.16.body ]
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(16) %2133, i8* nonnull align 16 dereferenceable(16) %2113, i64 16, i1 false) #2, !noalias !180
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(9216) %compare.14.i, i8* nonnull align 16 dereferenceable(9216) %4, i64 9216, i1 false) #2, !noalias !180
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(9216) %2134, i8* nonnull align 16 dereferenceable(9216) %2005, i64 9216, i1 false) #2, !noalias !180
  %2142 = load i32, i32* %2116, align 16, !noalias !180
  store i32 %2142, i32* %copy.56.i, align 16, !noalias !180
  store i32 %2141, i32* %2137, align 16, !noalias !180
  tail call void @__xla_cpu_runtime_ParallelForkJoin(i8* nonnull %2005, i8* %run_options, i8** null, i8** nonnull %buffer_table, i64* %prof_counters, i32 3, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @parallel_fusion.4_parallel_dimension_partitions, i64 0, i64 0), i32 1, i8* bitcast (void (i8*, i8*, i8**, i8**, i64*, i64*)* @parallel_fusion.4 to i8*)) #2
  %2143 = load i32*, i32** %2138, align 8, !dereferenceable !74, !align !74
  %2144 = load i32, i32* %2143, align 4
  store i32 %2144, i32* %fusion.17, align 16
  tail call void @__xla_cpu_runtime_ParallelForkJoin(i8* nonnull %4, i8* %run_options, i8** null, i8** nonnull %buffer_table, i64* %prof_counters, i32 3, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @parallel_fusion.5_parallel_dimension_partitions, i64 0, i64 0), i32 1, i8* bitcast (void (i8*, i8*, i8**, i8**, i64*, i64*)* @parallel_fusion.5 to i8*)) #2
  %2145 = load i8*, i8** %2132, align 8, !dereferenceable !2, !align !2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(16) %compare.14.i, i8* nonnull align 16 dereferenceable(16) %2145, i64 16, i1 false) #2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(16) %2114, i8* nonnull align 16 dereferenceable(16) %2133, i64 16, i1 false) #2
  %2146 = load i32, i32* %copy.56.i, align 16, !alias.scope !10, !noalias !185
  %2147 = add i32 %2146, 1
  store i32 %2147, i32* %2116, align 16, !alias.scope !187, !noalias !188
  %2148 = load i32, i32* %2137, align 16
  store i32 %2148, i32* %fusion.19, align 16
  %2149 = load i32*, i32** %2139, align 8, !dereferenceable !74, !align !74
  %2150 = load i32, i32* %2149, align 4
  store i32 %2150, i32* %2140, align 16
  %2151 = load i32, i32* %fusion.17, align 16
  store i32 %2151, i32* %fusion.21, align 16
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 16 dereferenceable(16) %2113, i8* nonnull align 16 dereferenceable(16) %compare.14.i, i64 16, i1 false) #2
  store i32 %2150, i32* %fusion.17, align 16
  store i8* %2115, i8** %2118, align 16, !alias.scope !174, !noalias !175
  store i8* %4, i8** %2120, align 8, !alias.scope !174, !noalias !175
  store i8* %2005, i8** %2122, align 16, !alias.scope !174, !noalias !175
  store i8* %2111, i8** %2124, align 8, !alias.scope !174, !noalias !175
  store i8* %2108, i8** %2126, align 16, !alias.scope !174, !noalias !175
  store i8* %2112, i8** %2128, align 8, !alias.scope !174, !noalias !175
  store i8* %2113, i8** %2130, align 16, !alias.scope !174, !noalias !175
  store i8* %2114, i8** %2132, align 8, !alias.scope !174, !noalias !175
  %2152 = icmp slt i32 %2147, 5
  %2153 = zext i1 %2152 to i8
  store i8 %2153, i8* %compare.14.i, align 16, !alias.scope !176, !noalias !178
  br i1 %2152, label %while.16.body, label %while.16.exit

while.16.exit:                                    ; preds = %while.16.body
  %2154 = getelementptr inbounds i8, i8* %1, i64 16777280
  tail call void @__xla_cpu_runtime_ParallelForkJoin(i8* nonnull %2154, i8* %run_options, i8** null, i8** nonnull %buffer_table, i64* %prof_counters, i32 4, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @parallel_fusion.16_parallel_dimension_partitions, i64 0, i64 0), i32 2, i8* bitcast (void (i8*, i8*, i8**, i8**, i64*, i64*)* @parallel_fusion.16 to i8*))
  tail call void @__xla_cpu_runtime_ParallelForkJoin(i8* nonnull %4, i8* %run_options, i8** null, i8** nonnull %buffer_table, i64* %prof_counters, i32 3, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @parallel_broadcast.1342_parallel_dimension_partitions, i64 0, i64 0), i32 1, i8* bitcast (void (i8*, i8*, i8**, i8**, i64*, i64*)* @parallel_broadcast.1342 to i8*))
  %2155 = bitcast i8* %compare.14.i to float*
  %2156 = bitcast i8* %4 to float*
  %2157 = bitcast i8* %2154 to float*
  tail call void @__xla_cpu_runtime_EigenConvF32(i8* %run_options, float* nonnull %2155, float* %2156, float* nonnull %2157, i64 32, i64 64, i64 64, i64 16, i64 3, i64 3, i64 16, i64 32, i64 64, i64 64, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1)
  tail call void @__xla_cpu_runtime_ParallelForkJoin(i8* nonnull %2154, i8* %run_options, i8** null, i8** nonnull %buffer_table, i64* %prof_counters, i32 3, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @parallel_fusion.8_parallel_dimension_partitions, i64 0, i64 0), i32 1, i8* bitcast (void (i8*, i8*, i8**, i8**, i64*, i64*)* @parallel_fusion.8 to i8*))
  tail call void @__xla_cpu_runtime_ParallelForkJoin(i8* nonnull %4, i8* %run_options, i8** null, i8** nonnull %buffer_table, i64* %prof_counters, i32 3, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @parallel_reduce-window.1355_parallel_dimension_partitions, i64 0, i64 0), i32 1, i8* bitcast (void (i8*, i8*, i8**, i8**, i64*, i64*)* @parallel_reduce-window.1355 to i8*))
  %2158 = getelementptr inbounds i8*, i8** %buffer_table, i64 7
  %2159 = bitcast i8** %2158 to [1 x i8*]**
  %2160 = load [1 x i8*]*, [1 x i8*]** %2159, align 8, !invariant.load !0, !dereferenceable !73, !align !73
  %2161 = getelementptr inbounds [1 x i8*], [1 x i8*]* %2160, i64 0, i64 0
  store i8* %4, i8** %2161, align 8, !alias.scope !189, !noalias !39
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @__xla_cpu_runtime_EigenConvF32(i8*, float*, float*, float*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) local_unnamed_addr #5

; Function Attrs: argmemonly nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: argmemonly nounwind readonly willreturn
declare <8 x float> @llvm.masked.load.v8f32.p0v8f32(<8 x float>*, i32 immarg, <8 x i1>, <8 x float>) #7

; Function Attrs: nounwind readonly willreturn
declare <8 x i32> @llvm.masked.gather.v8i32.v8p0i32(<8 x i32*>, i32 immarg, <8 x i1>, <8 x i32>) #8

; Function Attrs: nounwind readnone speculatable willreturn
declare <8 x float> @llvm.fabs.v8f32(<8 x float>) #9

; Function Attrs: nounwind readnone speculatable willreturn
declare <8 x float> @llvm.sqrt.v8f32(<8 x float>) #9

attributes #0 = { argmemonly nounwind willreturn }
attributes #1 = { nofree norecurse nounwind uwtable "denormal-fp-math"="preserve-sign" "no-frame-pointer-elim"="false" }
attributes #2 = { nounwind }
attributes #3 = { nofree nounwind uwtable "denormal-fp-math"="preserve-sign" "no-frame-pointer-elim"="false" }
attributes #4 = { nounwind uwtable "denormal-fp-math"="preserve-sign" "no-frame-pointer-elim"="false" }
attributes #5 = { argmemonly nounwind }
attributes #6 = { argmemonly nounwind willreturn writeonly }
attributes #7 = { argmemonly nounwind readonly willreturn }
attributes #8 = { nounwind readonly willreturn }
attributes #9 = { nounwind readnone speculatable willreturn }

!0 = !{}
!1 = !{i64 33555072}
!2 = !{i64 16}
!3 = !{!4}
!4 = !{!"buffer: {index:20, offset:27712, size:16}", !5}
!5 = !{!"XLA global AA domain"}
!6 = !{!7}
!7 = !{!"buffer: {index:20, offset:18496, size:9216}", !5}
!8 = !{!9}
!9 = !{!"buffer: {index:20, offset:27776, size:4}", !5}
!10 = !{!11}
!11 = !{!"buffer: {index:20, offset:27760, size:4}", !5}
!12 = !{!13}
!13 = !{!"buffer: {index:20, offset:64, size:9216}", !5}
!14 = !{!15}
!15 = !{!"buffer: {index:20, offset:9280, size:9216}", !5}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.isvectorized", i32 1}
!18 = distinct !{!18, !19, !17}
!19 = !{!"llvm.loop.unroll.runtime.disable"}
!20 = distinct !{!20, !17}
!21 = distinct !{!21, !17}
!22 = distinct !{!22, !19, !17}
!23 = distinct !{!23, !19, !17}
!24 = !{i64 16257024}
!25 = !{!26}
!26 = !{!"buffer: {index:0, offset:0, size:9216}", !5}
!27 = !{!28}
!28 = !{!"buffer: {index:20, offset:27744, size:4}", !5}
!29 = distinct !{!29, !17}
!30 = distinct !{!30, !17}
!31 = distinct !{!31, !19, !17}
!32 = distinct !{!32, !19, !17}
!33 = distinct !{!33, !17}
!34 = distinct !{!34, !17}
!35 = distinct !{!35, !19, !17}
!36 = distinct !{!36, !19, !17}
!37 = !{!38}
!38 = !{!"buffer: {index:20, offset:16777280, size:16777216}", !5}
!39 = !{!40}
!40 = !{!"buffer: {index:0, offset:0, size:16257024}", !5}
!41 = !{!42}
!42 = !{!"buffer: {index:20, offset:33554624, size:128}", !5}
!43 = !{!44}
!44 = !{!"buffer: {index:20, offset:33554496, size:128}", !5}
!45 = !{!46}
!46 = !{!"buffer: {index:20, offset:64, size:16777216}", !5}
!47 = !{!48, !49}
!48 = !{!"buffer: {index:20, offset:33554752, size:64}", !5}
!49 = !{!"buffer: {index:20, offset:33554816, size:64}", !5}
!50 = !{!7, !26}
!51 = !{!52}
!52 = !{!"buffer: {index:20, offset:16777280, size:18432}", !5}
!53 = distinct !{!53, !17}
!54 = !{!55}
!55 = !{!"buffer: {index:20, offset:128, size:8}", !5}
!56 = !{!57, !58, !59, !60, !61, !62, !63, !64}
!57 = !{!"buffer: {index:0, offset:0, size:16}", !5}
!58 = !{!"buffer: {index:20, offset:96, size:16}", !5}
!59 = !{!"buffer: {index:20, offset:144, size:8}", !5}
!60 = !{!"buffer: {index:20, offset:160, size:4}", !5}
!61 = !{!"buffer: {index:20, offset:192, size:4}", !5}
!62 = !{!"buffer: {index:20, offset:208, size:4}", !5}
!63 = !{!"buffer: {index:20, offset:224, size:4}", !5}
!64 = !{!"buffer: {index:20, offset:33555008, size:64}", !5}
!65 = !{!59}
!66 = !{!57, !58, !55, !60, !61, !62, !63, !64}
!67 = !{!64}
!68 = !{!57, !58, !55, !59, !60, !61, !62, !63}
!69 = !{!70}
!70 = !{!"buffer: {index:20, offset:112, size:1}", !5}
!71 = !{!72, !61}
!72 = !{!"buffer: {index:19, offset:0, size:4}", !5}
!73 = !{i64 8}
!74 = !{i64 4}
!75 = !{!76}
!76 = !{!"buffer: {index:20, offset:64, size:16}", !5}
!77 = !{!78, !57, !79, !58, !80, !55, !59, !60, !81}
!78 = !{!"buffer: {index:0, offset:0, size:8}", !5}
!79 = !{!"buffer: {index:20, offset:80, size:8}", !5}
!80 = !{!"buffer: {index:20, offset:112, size:4}", !5}
!81 = !{!"buffer: {index:20, offset:176, size:4}", !5}
!82 = !{!78, !57, !76, !79, !58, !80, !59, !60, !81, !61, !62, !63, !64}
!83 = !{!78}
!84 = !{!76, !79, !80, !55, !59, !60, !81}
!85 = !{!78, !57, !76, !79, !58, !55, !60, !61, !62, !63, !64}
!86 = !{!61}
!87 = !{!57, !88, !58, !55, !59, !60, !81, !62, !63, !64}
!88 = !{!"buffer: {index:4, offset:0, size:4}", !5}
!89 = !{!72, !70}
!90 = !{!57, !58, !91, !59, !60, !92, !61, !62, !63, !64}
!91 = !{!"buffer: {index:20, offset:112, size:8}", !5}
!92 = !{!"buffer: {index:20, offset:160, size:8}", !5}
!93 = !{!91}
!94 = !{!57, !58, !55, !59, !92, !61, !62, !63, !95, !96}
!95 = !{!"buffer: {index:20, offset:240, size:4}", !5}
!96 = !{!"buffer: {index:20, offset:33554944, size:64}", !5}
!97 = !{!92}
!98 = !{!57, !58, !91, !55, !59, !61, !62, !63, !95, !96}
!99 = !{!57, !58, !91, !55, !59, !92, !62, !63, !95, !96}
!100 = !{!62}
!101 = !{!57, !58, !91, !55, !59, !92, !61, !63, !95, !96}
!102 = !{!63}
!103 = !{!57, !58, !91, !55, !59, !92, !61, !62, !95, !96}
!104 = !{!96}
!105 = !{!57, !58, !91, !92, !61, !62, !63, !95}
!106 = !{!107}
!107 = !{!"buffer: {index:20, offset:176, size:1}", !5}
!108 = !{!109, !95}
!109 = !{!"buffer: {index:17, offset:0, size:4}", !5}
!110 = !{!78, !57, !79, !58, !91, !111, !112, !92, !81}
!111 = !{!"buffer: {index:20, offset:128, size:4}", !5}
!112 = !{!"buffer: {index:20, offset:144, size:4}", !5}
!113 = !{!78, !57, !76, !79, !58, !112, !92, !81, !61, !62, !63, !95, !96}
!114 = !{!79}
!115 = !{!78, !76, !91, !111, !112, !92, !81}
!116 = !{!76, !79, !91, !111, !112, !92, !81}
!117 = !{!78, !57, !76, !79, !58, !91, !111, !61, !62, !63, !95, !96}
!118 = !{!95}
!119 = !{!57, !120, !58, !91, !112, !92, !61, !62, !63, !96}
!120 = !{!"buffer: {index:18, offset:0, size:4}", !5}
!121 = !{!109, !107}
!122 = !{!57, !58, !92, !81, !61, !62, !63, !95, !48, !49, !96}
!123 = !{!48}
!124 = !{!57, !125, !91, !126, !92, !81, !63, !95, !127, !49}
!125 = !{!"buffer: {index:20, offset:0, size:64}", !5}
!126 = !{!"buffer: {index:20, offset:144, size:16}", !5}
!127 = !{!"buffer: {index:20, offset:256, size:4}", !5}
!128 = !{!49}
!129 = !{!57, !125, !91, !126, !92, !81, !63, !95, !127, !48}
!130 = !{!81}
!131 = !{!57, !125, !91, !126, !92, !63, !95, !127, !48, !49}
!132 = !{!57, !125, !91, !126, !92, !81, !95, !127, !48, !49}
!133 = !{!57, !125, !91, !126, !92, !81, !63, !127, !48, !49}
!134 = !{!125}
!135 = !{!57, !126, !81, !63, !95, !127, !48, !49}
!136 = !{!137}
!137 = !{!"buffer: {index:20, offset:192, size:1}", !5}
!138 = !{!139, !127}
!139 = !{!"buffer: {index:13, offset:0, size:4}", !5}
!140 = !{!141}
!141 = !{!"buffer: {index:20, offset:128, size:16}", !5}
!142 = !{!57, !143, !144, !126, !81, !61, !62, !48, !49}
!143 = !{!"buffer: {index:0, offset:0, size:64}", !5}
!144 = !{!"buffer: {index:20, offset:64, size:64}", !5}
!145 = !{!144}
!146 = !{!143, !141, !81, !61, !62, !48, !49}
!147 = !{!143}
!148 = !{!144, !141, !81, !61, !62, !48, !49}
!149 = !{!57, !143, !125, !144, !141, !126, !81, !61, !62, !63, !95, !127, !49}
!150 = !{!57, !143, !125, !144, !141, !126, !81, !63, !95, !127, !48}
!151 = !{!127}
!152 = !{!57, !153, !125, !126, !81, !61, !63, !95, !48, !49}
!153 = !{!"buffer: {index:14, offset:0, size:4}", !5}
!154 = !{!139, !137}
!155 = !{!57, !125, !46, !126, !81, !63, !95, !127, !38, !44, !42}
!156 = !{!46, !38, !44, !48, !49}
!157 = !{!46, !38, !42, !48, !49}
!158 = !{!57, !26, !58, !91, !81, !61, !62, !63, !95, !7, !28, !159, !160, !48, !49, !96}
!159 = !{!"buffer: {index:20, offset:27792, size:4}", !5}
!160 = !{!"buffer: {index:20, offset:27808, size:4}", !5}
!161 = !{!26, !162, !92, !163, !28, !159, !160, !164, !165}
!162 = !{!"buffer: {index:20, offset:80, size:16}", !5}
!163 = !{!"buffer: {index:20, offset:27728, size:16}", !5}
!164 = !{!"buffer: {index:20, offset:27824, size:4}", !5}
!165 = !{!"buffer: {index:20, offset:33554880, size:64}", !5}
!166 = distinct !{!166, !17}
!167 = !{!162, !92, !7, !163, !28, !159, !160, !164, !165}
!168 = distinct !{!168, !17}
!169 = !{!26, !162, !92, !7, !163, !159, !160, !164, !165}
!170 = !{!159}
!171 = !{!26, !162, !92, !7, !163, !28, !160, !164, !165}
!172 = !{!160}
!173 = !{!26, !162, !92, !7, !163, !28, !159, !164, !165}
!174 = !{!165}
!175 = !{!26, !162, !7, !163, !28, !159, !160, !164}
!176 = !{!177}
!177 = !{!"buffer: {index:20, offset:64, size:1}", !5}
!178 = !{!179, !164}
!179 = !{!"buffer: {index:15, offset:0, size:4}", !5}
!180 = !{!181, !183, !184}
!181 = distinct !{!181, !182, !"body_computation__2.309.clone: %run_options"}
!182 = distinct !{!182, !"body_computation__2.309.clone"}
!183 = distinct !{!183, !182, !"body_computation__2.309.clone: %buffer_table"}
!184 = distinct !{!184, !182, !"body_computation__2.309.clone: %prof_counters"}
!185 = !{!186, !13, !15, !7, !4, !9, !164}
!186 = !{!"buffer: {index:16, offset:0, size:4}", !5}
!187 = !{!164}
!188 = !{!26, !186, !162, !7, !163, !28, !11, !159, !160, !165}
!189 = !{!190}
!190 = !{!"buffer: {index:7, offset:0, size:8}", !5}
