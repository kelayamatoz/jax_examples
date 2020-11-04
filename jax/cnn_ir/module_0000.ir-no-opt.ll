; ModuleID = '__compute_module'
source_filename = "__compute_module"
target datalayout = "e-m:o-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-apple-darwin19.6.0"

@0 = private unnamed_addr constant [4 x i8] c"\01\00\00\00", align 4
@1 = private unnamed_addr constant [16 x i8] c"\0D\00\00\00\0F\00\00\00\1A\00\00\00\06\00\00\00", align 16
@2 = private unnamed_addr constant [16 x i8] c"\11\00\00\00\1D\00\00\00\10\00\00\00\18\00\00\00", align 16
@3 = private unnamed_addr constant [4 x i8] zeroinitializer, align 4
@4 = private unnamed_addr constant [4 x i8] zeroinitializer, align 4
@5 = private unnamed_addr constant [4 x i8] zeroinitializer, align 4
@6 = private unnamed_addr constant [4 x i8] c"\DA\1B\D1\1B", align 4
@7 = private unnamed_addr constant [4 x i8] c"\00\00\80\FF", align 4
@8 = private unnamed_addr constant [4 x i8] c"\05\00\00\00", align 4
@9 = private unnamed_addr constant [4 x i8] c" \00\00\00"
@10 = private unnamed_addr constant [4 x i8] c" \00\00\00"
@11 = private unnamed_addr constant [4 x i8] c" \00\00\00"
@12 = private unnamed_addr constant [4 x i8] c" \00\00\00"
@13 = private unnamed_addr constant [4 x i8] c"\01\00\00\00"
@14 = private unnamed_addr constant [4 x i8] c" \00\00\00"
@15 = private unnamed_addr constant [4 x i8] c" \00\00\00"
@16 = private unnamed_addr constant [4 x i8] c" \00\00\00"
@17 = private unnamed_addr constant [4 x i8] c" \00\00\00"
@18 = private unnamed_addr constant [4 x i8] c" \00\00\00"
@19 = private unnamed_addr constant [4 x i8] c" \00\00\00"
@20 = private unnamed_addr constant [4 x i8] c" \00\00\00"
@21 = private unnamed_addr constant [4 x i8] c"\01\00\00\00"
@22 = private unnamed_addr constant [4 x i8] c" \00\00\00"
@23 = private unnamed_addr constant [4 x i8] c" \00\00\00"
@24 = private unnamed_addr constant [4 x i8] c" \00\00\00"
@25 = private unnamed_addr constant [4 x i8] c" \00\00\00"
@26 = private unnamed_addr constant [4 x i8] c" \00\00\00"
@27 = private unnamed_addr constant [4 x i8] c" \00\00\00"
@28 = private unnamed_addr constant [4 x i8] c" \00\00\00"
@29 = private unnamed_addr constant [4 x i8] c"\01\00\00\00"
@30 = private unnamed_addr constant [4 x i8] c" \00\00\00"
@31 = private unnamed_addr constant [4 x i8] c" \00\00\00"
@32 = private unnamed_addr constant [4 x i8] c" \00\00\00"
@parallel_fusion.4_parallel_dimension_partitions = private constant [6 x i64] [i64 0, i64 768, i64 768, i64 1536, i64 1536, i64 2304]
@parallel_fusion.5_parallel_dimension_partitions = private constant [6 x i64] [i64 0, i64 768, i64 768, i64 1536, i64 1536, i64 2304]
@33 = private unnamed_addr constant [4 x i8] c" \00\00\00"
@34 = private unnamed_addr constant [4 x i8] c" \00\00\00"
@35 = private unnamed_addr constant [4 x i8] c" \00\00\00"
@36 = private unnamed_addr constant [4 x i8] c" \00\00\00"
@37 = private unnamed_addr constant [4 x i8] c"\01\00\00\00"
@38 = private unnamed_addr constant [4 x i8] c" \00\00\00"
@39 = private unnamed_addr constant [4 x i8] c" \00\00\00"
@40 = private unnamed_addr constant [4 x i8] c" \00\00\00"
@41 = private unnamed_addr constant [4 x i8] c"\FF\FF\7F\BF"
@42 = private unnamed_addr constant [4 x i8] c"\09\00\00\00"
@43 = private unnamed_addr constant [4 x i8] c"\00\00\80?"
@44 = private unnamed_addr constant [4 x i8] c"\00\00\80\BF"
@45 = private unnamed_addr constant [4 x i8] c"\00\00\00@"
@46 = private unnamed_addr constant [4 x i8] c"\FF\FF\7F\BF"
@47 = private unnamed_addr constant [4 x i8] c"\00\00\80?"
@48 = private unnamed_addr constant [4 x i8] c"\00\00\80\7F"
@49 = private unnamed_addr constant [4 x i8] c"\00\00\A0@"
@50 = private unnamed_addr constant [4 x i8] c"/.\C0?"
@51 = private unnamed_addr constant [4 x i8] c"~O5@"
@52 = private unnamed_addr constant [4 x i8] c"c\8F|>"
@53 = private unnamed_addr constant [4 x i8] c"\DB6\80?"
@54 = private unnamed_addr constant [4 x i8] c"\EF\E4\88\BB"
@55 = private unnamed_addr constant [4 x i8] c"~\A5\1A<"
@56 = private unnamed_addr constant [4 x i8] c"\08T\A4\BA"
@57 = private unnamed_addr constant [4 x i8] c"\D7\C5\F9\BB"
@58 = private unnamed_addr constant [4 x i8] c"\DB2e9"
@59 = private unnamed_addr constant [4 x i8] c"{\12\BC;"
@60 = private unnamed_addr constant [4 x i8] c"\C1Z\93\B6"
@61 = private unnamed_addr constant [4 x i8] c"\E7\BDp\BB"
@62 = private unnamed_addr constant [4 x i8] c"Wsl\B6"
@63 = private unnamed_addr constant [4 x i8] c"r\DC\B0:"
@64 = private unnamed_addr constant [4 x i8] c"6K\B84"
@65 = private unnamed_addr constant [4 x i8] c"k\B5\D38"
@66 = private unnamed_addr constant [4 x i8] c"\88e\F12"
@67 = private unnamed_addr constant [4 x i8] c"\9B\F0Q\B9"
@68 = private unnamed_addr constant [4 x i8] c"\00\00 \C0"
@69 = private unnamed_addr constant [4 x i8] c"\00\00@\C0"
@70 = private unnamed_addr constant [4 x i8] c"\02\D0\BD5"
@71 = private unnamed_addr constant [4 x i8] zeroinitializer
@72 = private unnamed_addr constant [4 x i8] c"\18Zt\BF"
@73 = private unnamed_addr constant [4 x i8] c"\00\00\80\00"
@74 = private unnamed_addr constant [4 x i8] c"\09\00\00\00"
@75 = private unnamed_addr constant [4 x i8] c"\00\00\80?"
@76 = private unnamed_addr constant [4 x i8] c"\00\00\80\BF"
@77 = private unnamed_addr constant [4 x i8] c"\18Z\F4?"
@78 = private unnamed_addr constant [4 x i8] c"\00\00\80?"
@79 = private unnamed_addr constant [4 x i8] c"\00\00\80\7F"
@80 = private unnamed_addr constant [4 x i8] c"\00\00\A0@"
@81 = private unnamed_addr constant [4 x i8] c"/.\C0?"
@82 = private unnamed_addr constant [4 x i8] c"~O5@"
@83 = private unnamed_addr constant [4 x i8] c"c\8F|>"
@84 = private unnamed_addr constant [4 x i8] c"\DB6\80?"
@85 = private unnamed_addr constant [4 x i8] c"\EF\E4\88\BB"
@86 = private unnamed_addr constant [4 x i8] c"~\A5\1A<"
@87 = private unnamed_addr constant [4 x i8] c"\08T\A4\BA"
@88 = private unnamed_addr constant [4 x i8] c"\D7\C5\F9\BB"
@89 = private unnamed_addr constant [4 x i8] c"\DB2e9"
@90 = private unnamed_addr constant [4 x i8] c"{\12\BC;"
@91 = private unnamed_addr constant [4 x i8] c"\C1Z\93\B6"
@92 = private unnamed_addr constant [4 x i8] c"\E7\BDp\BB"
@93 = private unnamed_addr constant [4 x i8] c"Wsl\B6"
@94 = private unnamed_addr constant [4 x i8] c"r\DC\B0:"
@95 = private unnamed_addr constant [4 x i8] c"6K\B84"
@96 = private unnamed_addr constant [4 x i8] c"k\B5\D38"
@97 = private unnamed_addr constant [4 x i8] c"\88e\F12"
@98 = private unnamed_addr constant [4 x i8] c"\9B\F0Q\B9"
@99 = private unnamed_addr constant [4 x i8] c"\00\00 \C0"
@100 = private unnamed_addr constant [4 x i8] c"\00\00@\C0"
@101 = private unnamed_addr constant [4 x i8] c"\88\09\E0="
@102 = private unnamed_addr constant [4 x i8] c"\DA\1B\D1\1B"
@103 = private unnamed_addr constant [4 x i8] c"\DA\1B\D1\1B"
@104 = private unnamed_addr constant [4 x i8] c"\FF\FF\7F\BF"
@105 = private unnamed_addr constant [4 x i8] c"\09\00\00\00"
@106 = private unnamed_addr constant [4 x i8] c"\00\00\80?"
@107 = private unnamed_addr constant [4 x i8] c"\00\00\80\BF"
@108 = private unnamed_addr constant [4 x i8] c"\00\00\00@"
@109 = private unnamed_addr constant [4 x i8] c"\FF\FF\7F\BF"
@110 = private unnamed_addr constant [4 x i8] c"\DA\1B\D1\1B"
@parallel_fusion.16_parallel_dimension_partitions = private constant [16 x i64] [i64 0, i64 1, i64 0, i64 1, i64 0, i64 1, i64 1, i64 3, i64 1, i64 3, i64 0, i64 1, i64 1, i64 3, i64 1, i64 3]
@parallel_broadcast.1342_parallel_dimension_partitions = private constant [6 x i64] [i64 0, i64 10, i64 10, i64 20, i64 20, i64 32]
@parallel_fusion.8_parallel_dimension_partitions = private constant [6 x i64] [i64 0, i64 10, i64 10, i64 20, i64 20, i64 32]
@parallel_reduce-window.1355_parallel_dimension_partitions = private constant [6 x i64] [i64 0, i64 10, i64 10, i64 20, i64 20, i64 32]

; Function Attrs: uwtable
define internal void @body_computation.17.clone(i8* %retval, i8* noalias %run_options, i8** noalias %params, i8** noalias %buffer_table, i64* noalias %prof_counters) #0 {
entry:
  %fusion.1.invar_address.dim.0 = alloca i64, align 8
  %fusion.invar_address.dim.0 = alloca i64, align 8
  %0 = getelementptr inbounds i8*, i8** %buffer_table, i64 20
  %1 = load i8*, i8** %0, align 8, !invariant.load !0, !dereferenceable !1, !align !2
  %2 = getelementptr inbounds i8, i8* %1, i64 33555008
  %parameter.1 = bitcast i8* %2 to [8 x i8*]*
  %3 = getelementptr inbounds [8 x i8*], [8 x i8*]* %parameter.1, i64 0, i64 6
  %4 = load i8*, i8** %3, align 8, !dereferenceable !2, !align !2
  %5 = bitcast i8* %4 to [4 x i32]*
  %6 = getelementptr inbounds i8*, i8** %buffer_table, i64 20
  %7 = load i8*, i8** %6, align 8, !invariant.load !0, !dereferenceable !1, !align !2
  %8 = getelementptr inbounds i8, i8* %7, i64 64
  %copy.14 = bitcast i8* %8 to [4 x i32]*
  %9 = bitcast [4 x i32]* %copy.14 to i8*
  %10 = bitcast [4 x i32]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %9, i8* align 1 %10, i64 16, i1 false)
  %11 = getelementptr inbounds [8 x i8*], [8 x i8*]* %parameter.1, i64 0, i64 2
  %12 = load i8*, i8** %11, align 8, !dereferenceable !3, !align !3
  %13 = bitcast i8* %12 to [2 x i32]*
  %14 = getelementptr inbounds i8*, i8** %buffer_table, i64 0
  %15 = load i8*, i8** %14, align 8, !invariant.load !0, !dereferenceable !4, !align !2
  %copy.10 = bitcast i8* %15 to [2 x i32]*
  %16 = bitcast [2 x i32]* %copy.10 to i8*
  %17 = bitcast [2 x i32]* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %16, i8* align 1 %17, i64 8, i1 false)
  %18 = getelementptr inbounds [8 x i8*], [8 x i8*]* %parameter.1, i64 0, i64 1
  %19 = load i8*, i8** %18, align 8, !dereferenceable !3, !align !3
  %20 = bitcast i8* %19 to [2 x i32]*
  %21 = getelementptr inbounds i8*, i8** %buffer_table, i64 20
  %22 = load i8*, i8** %21, align 8, !invariant.load !0, !dereferenceable !1, !align !2
  %23 = getelementptr inbounds i8, i8* %22, i64 80
  %copy.9 = bitcast i8* %23 to [2 x i32]*
  %24 = bitcast [2 x i32]* %copy.9 to i8*
  %25 = bitcast [2 x i32]* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %24, i8* align 1 %25, i64 8, i1 false)
  %26 = getelementptr inbounds [8 x i8*], [8 x i8*]* %parameter.1, i64 0, i64 4
  %27 = load i8*, i8** %26, align 8, !dereferenceable !5, !align !5
  %28 = bitcast i8* %27 to i32*
  %29 = getelementptr inbounds i8*, i8** %buffer_table, i64 20
  %30 = load i8*, i8** %29, align 8, !invariant.load !0, !dereferenceable !1, !align !2
  %31 = getelementptr inbounds i8, i8* %30, i64 112
  %copy.12 = bitcast i8* %31 to i32*
  %32 = bitcast i32* %copy.12 to i8*
  %33 = bitcast i32* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %32, i8* align 1 %33, i64 4, i1 false)
  %34 = getelementptr inbounds [8 x i8*], [8 x i8*]* %parameter.1, i64 0, i64 0
  %35 = load i8*, i8** %34, align 8, !dereferenceable !5, !align !5
  %36 = bitcast i8* %35 to i32*
  %37 = getelementptr inbounds i8*, i8** %buffer_table, i64 20
  %38 = load i8*, i8** %37, align 8, !invariant.load !0, !dereferenceable !1, !align !2
  %39 = getelementptr inbounds i8, i8* %38, i64 176
  %copy.8 = bitcast i8* %39 to i32*
  %40 = bitcast i32* %copy.8 to i8*
  %41 = bitcast i32* %36 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %40, i8* align 1 %41, i64 4, i1 false)
  %42 = getelementptr inbounds i8*, i8** %buffer_table, i64 20
  %43 = load i8*, i8** %42, align 8, !invariant.load !0, !dereferenceable !1, !align !2
  %44 = getelementptr inbounds i8, i8* %43, i64 128
  %fusion = bitcast i8* %44 to [2 x i32]*
  store i64 0, i64* %fusion.invar_address.dim.0, align 8
  br label %fusion.loop_header.dim.0

fusion.loop_header.dim.0:                         ; preds = %fusion.loop_body.dim.0, %entry
  %fusion.indvar.dim.0 = load i64, i64* %fusion.invar_address.dim.0, align 8
  %45 = icmp uge i64 %fusion.indvar.dim.0, 2
  br i1 %45, label %fusion.loop_exit.dim.0, label %fusion.loop_body.dim.0

fusion.loop_body.dim.0:                           ; preds = %fusion.loop_header.dim.0
  %46 = getelementptr inbounds [2 x i32], [2 x i32]* %copy.9, i64 0, i64 %fusion.indvar.dim.0
  %47 = load i32, i32* %46, align 4, !alias.scope !6, !noalias !9
  %48 = getelementptr inbounds [2 x i32], [2 x i32]* %copy.10, i64 0, i64 %fusion.indvar.dim.0
  %49 = load i32, i32* %48, align 4, !alias.scope !17, !noalias !18
  %50 = add i32 %47, %49
  %51 = getelementptr inbounds [2 x i32], [2 x i32]* %copy.10, i64 0, i64 %fusion.indvar.dim.0
  %52 = load i32, i32* %51, align 4, !alias.scope !17, !noalias !18
  %53 = getelementptr inbounds [4 x i32], [4 x i32]* %copy.14, i64 0, i64 0
  %54 = load i32, i32* %53, align 4, !alias.scope !19, !noalias !20
  %55 = shl i32 %52, %54
  %shft.chk = icmp ult i32 %54, 32
  %56 = select i1 %shft.chk, i32 %55, i32 0
  %57 = getelementptr inbounds [2 x i32], [2 x i32]* %copy.10, i64 0, i64 %fusion.indvar.dim.0
  %58 = load i32, i32* %57, align 4, !alias.scope !17, !noalias !18
  %59 = load i32, i32* bitcast ([4 x i8]* @9 to i32*), align 4
  %60 = sub i32 %59, %54
  %61 = lshr i32 %58, %60
  %shft.chk1 = icmp ult i32 %60, 32
  %62 = select i1 %shft.chk1, i32 %61, i32 0
  %63 = or i32 %56, %62
  %64 = xor i32 %50, %63
  %65 = add i32 %50, %64
  %66 = getelementptr inbounds [4 x i32], [4 x i32]* %copy.14, i64 0, i64 1
  %67 = load i32, i32* %66, align 4, !alias.scope !19, !noalias !20
  %68 = shl i32 %64, %67
  %shft.chk2 = icmp ult i32 %67, 32
  %69 = select i1 %shft.chk2, i32 %68, i32 0
  %70 = load i32, i32* bitcast ([4 x i8]* @10 to i32*), align 4
  %71 = sub i32 %70, %67
  %72 = lshr i32 %64, %71
  %shft.chk3 = icmp ult i32 %71, 32
  %73 = select i1 %shft.chk3, i32 %72, i32 0
  %74 = or i32 %69, %73
  %75 = xor i32 %65, %74
  %76 = add i32 %65, %75
  %77 = getelementptr inbounds [4 x i32], [4 x i32]* %copy.14, i64 0, i64 2
  %78 = load i32, i32* %77, align 4, !alias.scope !19, !noalias !20
  %79 = shl i32 %75, %78
  %shft.chk4 = icmp ult i32 %78, 32
  %80 = select i1 %shft.chk4, i32 %79, i32 0
  %81 = load i32, i32* bitcast ([4 x i8]* @11 to i32*), align 4
  %82 = sub i32 %81, %78
  %83 = lshr i32 %75, %82
  %shft.chk5 = icmp ult i32 %82, 32
  %84 = select i1 %shft.chk5, i32 %83, i32 0
  %85 = or i32 %80, %84
  %86 = xor i32 %76, %85
  %87 = add i32 %76, %86
  %88 = getelementptr inbounds [4 x i32], [4 x i32]* %copy.14, i64 0, i64 3
  %89 = load i32, i32* %88, align 4, !alias.scope !19, !noalias !20
  %90 = shl i32 %86, %89
  %shft.chk6 = icmp ult i32 %89, 32
  %91 = select i1 %shft.chk6, i32 %90, i32 0
  %92 = load i32, i32* bitcast ([4 x i8]* @12 to i32*), align 4
  %93 = sub i32 %92, %89
  %94 = lshr i32 %86, %93
  %shft.chk7 = icmp ult i32 %93, 32
  %95 = select i1 %shft.chk7, i32 %94, i32 0
  %96 = or i32 %91, %95
  %97 = xor i32 %87, %96
  %98 = load i32, i32* %copy.12, align 4, !alias.scope !23, !noalias !24
  %99 = add i32 %97, %98
  %100 = load i32, i32* %copy.8, align 4, !alias.scope !26, !noalias !27
  %101 = load i32, i32* bitcast ([4 x i8]* @13 to i32*), align 4
  %102 = add i32 %100, %101
  %103 = add i32 %99, %102
  %104 = getelementptr inbounds [2 x i32], [2 x i32]* %fusion, i64 0, i64 %fusion.indvar.dim.0
  store i32 %103, i32* %104, align 4, !alias.scope !30, !noalias !31
  %invar.inc = add nuw nsw i64 %fusion.indvar.dim.0, 1
  store i64 %invar.inc, i64* %fusion.invar_address.dim.0, align 8
  br label %fusion.loop_header.dim.0

fusion.loop_exit.dim.0:                           ; preds = %fusion.loop_header.dim.0
  %105 = getelementptr inbounds [8 x i8*], [8 x i8*]* %parameter.1, i64 0, i64 3
  %106 = load i8*, i8** %105, align 8, !dereferenceable !5, !align !5
  %107 = bitcast i8* %106 to i32*
  %108 = getelementptr inbounds i8*, i8** %buffer_table, i64 20
  %109 = load i8*, i8** %108, align 8, !invariant.load !0, !dereferenceable !1, !align !2
  %110 = getelementptr inbounds i8, i8* %109, i64 160
  %copy.11 = bitcast i8* %110 to i32*
  %111 = bitcast i32* %copy.11 to i8*
  %112 = bitcast i32* %107 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %111, i8* align 1 %112, i64 4, i1 false)
  %113 = getelementptr inbounds i8*, i8** %buffer_table, i64 20
  %114 = load i8*, i8** %113, align 8, !invariant.load !0, !dereferenceable !1, !align !2
  %115 = getelementptr inbounds i8, i8* %114, i64 144
  %fusion.1 = bitcast i8* %115 to [2 x i32]*
  store i64 0, i64* %fusion.1.invar_address.dim.0, align 8
  br label %fusion.1.loop_header.dim.0

fusion.1.loop_header.dim.0:                       ; preds = %fusion.1.loop_body.dim.0, %fusion.loop_exit.dim.0
  %fusion.1.indvar.dim.0 = load i64, i64* %fusion.1.invar_address.dim.0, align 8
  %116 = icmp uge i64 %fusion.1.indvar.dim.0, 2
  br i1 %116, label %fusion.1.loop_exit.dim.0, label %fusion.1.loop_body.dim.0

fusion.1.loop_body.dim.0:                         ; preds = %fusion.1.loop_header.dim.0
  %117 = getelementptr inbounds [2 x i32], [2 x i32]* %copy.9, i64 0, i64 %fusion.1.indvar.dim.0
  %118 = load i32, i32* %117, align 4, !alias.scope !6, !noalias !9
  %119 = getelementptr inbounds [2 x i32], [2 x i32]* %copy.10, i64 0, i64 %fusion.1.indvar.dim.0
  %120 = load i32, i32* %119, align 4, !alias.scope !17, !noalias !18
  %121 = add i32 %118, %120
  %122 = getelementptr inbounds [2 x i32], [2 x i32]* %copy.10, i64 0, i64 %fusion.1.indvar.dim.0
  %123 = load i32, i32* %122, align 4, !alias.scope !17, !noalias !18
  %124 = getelementptr inbounds [4 x i32], [4 x i32]* %copy.14, i64 0, i64 0
  %125 = load i32, i32* %124, align 4, !alias.scope !19, !noalias !20
  %126 = shl i32 %123, %125
  %shft.chk9 = icmp ult i32 %125, 32
  %127 = select i1 %shft.chk9, i32 %126, i32 0
  %128 = getelementptr inbounds [2 x i32], [2 x i32]* %copy.10, i64 0, i64 %fusion.1.indvar.dim.0
  %129 = load i32, i32* %128, align 4, !alias.scope !17, !noalias !18
  %130 = load i32, i32* bitcast ([4 x i8]* @14 to i32*), align 4
  %131 = sub i32 %130, %125
  %132 = lshr i32 %129, %131
  %shft.chk10 = icmp ult i32 %131, 32
  %133 = select i1 %shft.chk10, i32 %132, i32 0
  %134 = or i32 %127, %133
  %135 = xor i32 %121, %134
  %136 = add i32 %121, %135
  %137 = getelementptr inbounds [4 x i32], [4 x i32]* %copy.14, i64 0, i64 1
  %138 = load i32, i32* %137, align 4, !alias.scope !19, !noalias !20
  %139 = shl i32 %135, %138
  %shft.chk11 = icmp ult i32 %138, 32
  %140 = select i1 %shft.chk11, i32 %139, i32 0
  %141 = load i32, i32* bitcast ([4 x i8]* @15 to i32*), align 4
  %142 = sub i32 %141, %138
  %143 = lshr i32 %135, %142
  %shft.chk12 = icmp ult i32 %142, 32
  %144 = select i1 %shft.chk12, i32 %143, i32 0
  %145 = or i32 %140, %144
  %146 = xor i32 %136, %145
  %147 = add i32 %136, %146
  %148 = getelementptr inbounds [4 x i32], [4 x i32]* %copy.14, i64 0, i64 2
  %149 = load i32, i32* %148, align 4, !alias.scope !19, !noalias !20
  %150 = shl i32 %146, %149
  %shft.chk13 = icmp ult i32 %149, 32
  %151 = select i1 %shft.chk13, i32 %150, i32 0
  %152 = load i32, i32* bitcast ([4 x i8]* @16 to i32*), align 4
  %153 = sub i32 %152, %149
  %154 = lshr i32 %146, %153
  %shft.chk14 = icmp ult i32 %153, 32
  %155 = select i1 %shft.chk14, i32 %154, i32 0
  %156 = or i32 %151, %155
  %157 = xor i32 %147, %156
  %158 = add i32 %147, %157
  %159 = load i32, i32* %copy.11, align 4, !alias.scope !34, !noalias !35
  %160 = add i32 %158, %159
  %161 = getelementptr inbounds [2 x i32], [2 x i32]* %fusion.1, i64 0, i64 %fusion.1.indvar.dim.0
  store i32 %160, i32* %161, align 4, !alias.scope !36, !noalias !37
  %invar.inc8 = add nuw nsw i64 %fusion.1.indvar.dim.0, 1
  store i64 %invar.inc8, i64* %fusion.1.invar_address.dim.0, align 8
  br label %fusion.1.loop_header.dim.0

fusion.1.loop_exit.dim.0:                         ; preds = %fusion.1.loop_header.dim.0
  %162 = getelementptr inbounds [8 x i8*], [8 x i8*]* %parameter.1, i64 0, i64 7
  %163 = load i8*, i8** %162, align 8, !dereferenceable !2, !align !2
  %164 = bitcast i8* %163 to [4 x i32]*
  %165 = getelementptr inbounds i8*, i8** %buffer_table, i64 20
  %166 = load i8*, i8** %165, align 8, !invariant.load !0, !dereferenceable !1, !align !2
  %167 = getelementptr inbounds i8, i8* %166, i64 80
  %copy.15 = bitcast i8* %167 to [4 x i32]*
  %168 = bitcast [4 x i32]* %copy.15 to i8*
  %169 = bitcast [4 x i32]* %164 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %168, i8* align 1 %169, i64 16, i1 false)
  %170 = getelementptr inbounds i8*, i8** %buffer_table, i64 20
  %171 = load i8*, i8** %170, align 8, !invariant.load !0, !dereferenceable !1, !align !2
  %172 = getelementptr inbounds i8, i8* %171, i64 96
  %copy.23 = bitcast i8* %172 to [4 x i32]*
  %173 = bitcast [4 x i32]* %copy.23 to i8*
  %174 = bitcast [4 x i32]* %copy.14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %173, i8* align 1 %174, i64 16, i1 false)
  %175 = getelementptr inbounds i8*, i8** %buffer_table, i64 20
  %176 = load i8*, i8** %175, align 8, !invariant.load !0, !dereferenceable !1, !align !2
  %177 = getelementptr inbounds i8, i8* %176, i64 192
  %add.112 = bitcast i8* %177 to i32*
  %178 = load i32, i32* %copy.8, align 4, !alias.scope !26, !noalias !27
  %179 = load i32, i32* bitcast ([4 x i8]* @0 to i32*), align 4, !alias.scope !38, !noalias !39
  %180 = add i32 %178, %179
  store i32 %180, i32* %add.112, align 4, !alias.scope !40, !noalias !41
  %181 = getelementptr inbounds i8*, i8** %buffer_table, i64 20
  %182 = load i8*, i8** %181, align 8, !invariant.load !0, !dereferenceable !1, !align !2
  %183 = getelementptr inbounds i8, i8* %182, i64 224
  %copy.19 = bitcast i8* %183 to i32*
  %184 = bitcast i32* %copy.19 to i8*
  %185 = bitcast i32* %copy.12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %184, i8* align 1 %185, i64 4, i1 false)
  %186 = getelementptr inbounds [8 x i8*], [8 x i8*]* %parameter.1, i64 0, i64 5
  %187 = load i8*, i8** %186, align 8, !dereferenceable !5, !align !5
  %188 = bitcast i8* %187 to i32*
  %189 = getelementptr inbounds i8*, i8** %buffer_table, i64 20
  %190 = load i8*, i8** %189, align 8, !invariant.load !0, !dereferenceable !1, !align !2
  %191 = getelementptr inbounds i8, i8* %190, i64 64
  %copy.13 = bitcast i8* %191 to i32*
  %192 = bitcast i32* %copy.13 to i8*
  %193 = bitcast i32* %188 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %192, i8* align 1 %193, i64 4, i1 false)
  %194 = getelementptr inbounds i8*, i8** %buffer_table, i64 20
  %195 = load i8*, i8** %194, align 8, !invariant.load !0, !dereferenceable !1, !align !2
  %196 = getelementptr inbounds i8, i8* %195, i64 208
  %copy.21 = bitcast i8* %196 to i32*
  %197 = bitcast i32* %copy.21 to i8*
  %198 = bitcast i32* %copy.11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %197, i8* align 1 %198, i64 4, i1 false)
  %199 = getelementptr inbounds i8*, i8** %buffer_table, i64 0
  %200 = load i8*, i8** %199, align 8, !invariant.load !0, !dereferenceable !4, !align !2
  %copy.22 = bitcast i8* %200 to [4 x i32]*
  %201 = bitcast [4 x i32]* %copy.22 to i8*
  %202 = bitcast [4 x i32]* %copy.15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %201, i8* align 1 %202, i64 16, i1 false)
  %203 = getelementptr inbounds i8*, i8** %buffer_table, i64 20
  %204 = load i8*, i8** %203, align 8, !invariant.load !0, !dereferenceable !1, !align !2
  %205 = getelementptr inbounds i8, i8* %204, i64 160
  %copy.20 = bitcast i8* %205 to i32*
  %206 = bitcast i32* %copy.20 to i8*
  %207 = bitcast i32* %copy.13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %206, i8* align 1 %207, i64 4, i1 false)
  %208 = getelementptr inbounds i8*, i8** %buffer_table, i64 20
  %209 = load i8*, i8** %208, align 8, !invariant.load !0, !dereferenceable !1, !align !2
  %210 = getelementptr inbounds i8, i8* %209, i64 33555008
  %tuple.93 = bitcast i8* %210 to [8 x i8*]*
  %211 = bitcast i32* %add.112 to i8*
  %212 = getelementptr inbounds [8 x i8*], [8 x i8*]* %tuple.93, i64 0, i64 0
  store i8* %211, i8** %212, align 8, !alias.scope !42, !noalias !43
  %213 = bitcast [2 x i32]* %fusion.1 to i8*
  %214 = getelementptr inbounds [8 x i8*], [8 x i8*]* %tuple.93, i64 0, i64 1
  store i8* %213, i8** %214, align 8, !alias.scope !42, !noalias !43
  %215 = bitcast [2 x i32]* %fusion to i8*
  %216 = getelementptr inbounds [8 x i8*], [8 x i8*]* %tuple.93, i64 0, i64 2
  store i8* %215, i8** %216, align 8, !alias.scope !42, !noalias !43
  %217 = bitcast i32* %copy.19 to i8*
  %218 = getelementptr inbounds [8 x i8*], [8 x i8*]* %tuple.93, i64 0, i64 3
  store i8* %217, i8** %218, align 8, !alias.scope !42, !noalias !43
  %219 = bitcast i32* %copy.20 to i8*
  %220 = getelementptr inbounds [8 x i8*], [8 x i8*]* %tuple.93, i64 0, i64 4
  store i8* %219, i8** %220, align 8, !alias.scope !42, !noalias !43
  %221 = bitcast i32* %copy.21 to i8*
  %222 = getelementptr inbounds [8 x i8*], [8 x i8*]* %tuple.93, i64 0, i64 5
  store i8* %221, i8** %222, align 8, !alias.scope !42, !noalias !43
  %223 = bitcast [4 x i32]* %copy.22 to i8*
  %224 = getelementptr inbounds [8 x i8*], [8 x i8*]* %tuple.93, i64 0, i64 6
  store i8* %223, i8** %224, align 8, !alias.scope !42, !noalias !43
  %225 = bitcast [4 x i32]* %copy.23 to i8*
  %226 = getelementptr inbounds [8 x i8*], [8 x i8*]* %tuple.93, i64 0, i64 7
  store i8* %225, i8** %226, align 8, !alias.scope !42, !noalias !43
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: uwtable
define internal void @cond_computation.85.clone(i8* %retval, i8* noalias %run_options, i8** noalias %params, i8** noalias %buffer_table, i64* noalias %prof_counters) #0 {
entry:
  %0 = getelementptr inbounds i8*, i8** %buffer_table, i64 20
  %1 = load i8*, i8** %0, align 8, !invariant.load !0, !dereferenceable !1, !align !2
  %2 = getelementptr inbounds i8, i8* %1, i64 33555008
  %parameter.0 = bitcast i8* %2 to [8 x i8*]*
  %3 = getelementptr inbounds [8 x i8*], [8 x i8*]* %parameter.0, i64 0, i64 0
  %4 = load i8*, i8** %3, align 8, !dereferenceable !5, !align !5
  %5 = bitcast i8* %4 to i32*
  %6 = getelementptr inbounds i8*, i8** %buffer_table, i64 20
  %7 = load i8*, i8** %6, align 8, !invariant.load !0, !dereferenceable !1, !align !2
  %compare.12 = getelementptr inbounds i8, i8* %7, i64 112
  %8 = load i32, i32* %5, align 4, !alias.scope !40, !noalias !44
  %9 = load i32, i32* bitcast ([4 x i8]* @8 to i32*), align 4, !alias.scope !47, !noalias !48
  %10 = icmp slt i32 %8, %9
  %11 = zext i1 %10 to i8
  store i8 %11, i8* %compare.12, align 1, !alias.scope !49, !noalias !50
  ret void
}

; Function Attrs: uwtable
define internal void @body_computation__1.160.clone(i8* %retval, i8* noalias %run_options, i8** noalias %params, i8** noalias %buffer_table, i64* noalias %prof_counters) #0 {
entry:
  %fusion.3.invar_address.dim.0 = alloca i64, align 8
  %fusion.2.invar_address.dim.0 = alloca i64, align 8
  %0 = getelementptr inbounds i8*, i8** %buffer_table, i64 20
  %1 = load i8*, i8** %0, align 8, !invariant.load !0, !dereferenceable !1, !align !2
  %2 = getelementptr inbounds i8, i8* %1, i64 33554944
  %parameter.3 = bitcast i8* %2 to [8 x i8*]*
  %3 = getelementptr inbounds [8 x i8*], [8 x i8*]* %parameter.3, i64 0, i64 6
  %4 = load i8*, i8** %3, align 8, !dereferenceable !2, !align !2
  %5 = bitcast i8* %4 to [4 x i32]*
  %6 = getelementptr inbounds i8*, i8** %buffer_table, i64 20
  %7 = load i8*, i8** %6, align 8, !invariant.load !0, !dereferenceable !1, !align !2
  %8 = getelementptr inbounds i8, i8* %7, i64 64
  %copy.38 = bitcast i8* %8 to [4 x i32]*
  %9 = bitcast [4 x i32]* %copy.38 to i8*
  %10 = bitcast [4 x i32]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %9, i8* align 1 %10, i64 16, i1 false)
  %11 = getelementptr inbounds [8 x i8*], [8 x i8*]* %parameter.3, i64 0, i64 1
  %12 = load i8*, i8** %11, align 8, !dereferenceable !3, !align !3
  %13 = bitcast i8* %12 to [2 x i32]*
  %14 = getelementptr inbounds i8*, i8** %buffer_table, i64 20
  %15 = load i8*, i8** %14, align 8, !invariant.load !0, !dereferenceable !1, !align !2
  %16 = getelementptr inbounds i8, i8* %15, i64 80
  %copy.33 = bitcast i8* %16 to [2 x i32]*
  %17 = bitcast [2 x i32]* %copy.33 to i8*
  %18 = bitcast [2 x i32]* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %17, i8* align 1 %18, i64 8, i1 false)
  %19 = getelementptr inbounds [8 x i8*], [8 x i8*]* %parameter.3, i64 0, i64 2
  %20 = load i8*, i8** %19, align 8, !dereferenceable !3, !align !3
  %21 = bitcast i8* %20 to [2 x i32]*
  %22 = getelementptr inbounds i8*, i8** %buffer_table, i64 0
  %23 = load i8*, i8** %22, align 8, !invariant.load !0, !dereferenceable !4, !align !2
  %copy.34 = bitcast i8* %23 to [2 x i32]*
  %24 = bitcast [2 x i32]* %copy.34 to i8*
  %25 = bitcast [2 x i32]* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %24, i8* align 1 %25, i64 8, i1 false)
  %26 = getelementptr inbounds [8 x i8*], [8 x i8*]* %parameter.3, i64 0, i64 0
  %27 = load i8*, i8** %26, align 8, !dereferenceable !5, !align !5
  %28 = bitcast i8* %27 to i32*
  %29 = getelementptr inbounds i8*, i8** %buffer_table, i64 20
  %30 = load i8*, i8** %29, align 8, !invariant.load !0, !dereferenceable !1, !align !2
  %31 = getelementptr inbounds i8, i8* %30, i64 144
  %copy.32 = bitcast i8* %31 to i32*
  %32 = bitcast i32* %copy.32 to i8*
  %33 = bitcast i32* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %32, i8* align 1 %33, i64 4, i1 false)
  %34 = getelementptr inbounds [8 x i8*], [8 x i8*]* %parameter.3, i64 0, i64 4
  %35 = load i8*, i8** %34, align 8, !dereferenceable !5, !align !5
  %36 = bitcast i8* %35 to i32*
  %37 = getelementptr inbounds i8*, i8** %buffer_table, i64 20
  %38 = load i8*, i8** %37, align 8, !invariant.load !0, !dereferenceable !1, !align !2
  %39 = getelementptr inbounds i8, i8* %38, i64 176
  %copy.36 = bitcast i8* %39 to i32*
  %40 = bitcast i32* %copy.36 to i8*
  %41 = bitcast i32* %36 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %40, i8* align 1 %41, i64 4, i1 false)
  %42 = getelementptr inbounds i8*, i8** %buffer_table, i64 20
  %43 = load i8*, i8** %42, align 8, !invariant.load !0, !dereferenceable !1, !align !2
  %44 = getelementptr inbounds i8, i8* %43, i64 112
  %fusion.2 = bitcast i8* %44 to [2 x i32]*
  store i64 0, i64* %fusion.2.invar_address.dim.0, align 8
  br label %fusion.2.loop_header.dim.0

fusion.2.loop_header.dim.0:                       ; preds = %fusion.2.loop_body.dim.0, %entry
  %fusion.2.indvar.dim.0 = load i64, i64* %fusion.2.invar_address.dim.0, align 8
  %45 = icmp uge i64 %fusion.2.indvar.dim.0, 2
  br i1 %45, label %fusion.2.loop_exit.dim.0, label %fusion.2.loop_body.dim.0

fusion.2.loop_body.dim.0:                         ; preds = %fusion.2.loop_header.dim.0
  %46 = getelementptr inbounds [2 x i32], [2 x i32]* %copy.33, i64 0, i64 %fusion.2.indvar.dim.0
  %47 = load i32, i32* %46, align 4, !alias.scope !6, !noalias !51
  %48 = getelementptr inbounds [2 x i32], [2 x i32]* %copy.34, i64 0, i64 %fusion.2.indvar.dim.0
  %49 = load i32, i32* %48, align 4, !alias.scope !17, !noalias !56
  %50 = add i32 %47, %49
  %51 = getelementptr inbounds [2 x i32], [2 x i32]* %copy.34, i64 0, i64 %fusion.2.indvar.dim.0
  %52 = load i32, i32* %51, align 4, !alias.scope !17, !noalias !56
  %53 = getelementptr inbounds [4 x i32], [4 x i32]* %copy.38, i64 0, i64 0
  %54 = load i32, i32* %53, align 4, !alias.scope !19, !noalias !57
  %55 = shl i32 %52, %54
  %shft.chk = icmp ult i32 %54, 32
  %56 = select i1 %shft.chk, i32 %55, i32 0
  %57 = getelementptr inbounds [2 x i32], [2 x i32]* %copy.34, i64 0, i64 %fusion.2.indvar.dim.0
  %58 = load i32, i32* %57, align 4, !alias.scope !17, !noalias !56
  %59 = load i32, i32* bitcast ([4 x i8]* @17 to i32*), align 4
  %60 = sub i32 %59, %54
  %61 = lshr i32 %58, %60
  %shft.chk1 = icmp ult i32 %60, 32
  %62 = select i1 %shft.chk1, i32 %61, i32 0
  %63 = or i32 %56, %62
  %64 = xor i32 %50, %63
  %65 = add i32 %50, %64
  %66 = getelementptr inbounds [4 x i32], [4 x i32]* %copy.38, i64 0, i64 1
  %67 = load i32, i32* %66, align 4, !alias.scope !19, !noalias !57
  %68 = shl i32 %64, %67
  %shft.chk2 = icmp ult i32 %67, 32
  %69 = select i1 %shft.chk2, i32 %68, i32 0
  %70 = load i32, i32* bitcast ([4 x i8]* @18 to i32*), align 4
  %71 = sub i32 %70, %67
  %72 = lshr i32 %64, %71
  %shft.chk3 = icmp ult i32 %71, 32
  %73 = select i1 %shft.chk3, i32 %72, i32 0
  %74 = or i32 %69, %73
  %75 = xor i32 %65, %74
  %76 = add i32 %65, %75
  %77 = getelementptr inbounds [4 x i32], [4 x i32]* %copy.38, i64 0, i64 2
  %78 = load i32, i32* %77, align 4, !alias.scope !19, !noalias !57
  %79 = shl i32 %75, %78
  %shft.chk4 = icmp ult i32 %78, 32
  %80 = select i1 %shft.chk4, i32 %79, i32 0
  %81 = load i32, i32* bitcast ([4 x i8]* @19 to i32*), align 4
  %82 = sub i32 %81, %78
  %83 = lshr i32 %75, %82
  %shft.chk5 = icmp ult i32 %82, 32
  %84 = select i1 %shft.chk5, i32 %83, i32 0
  %85 = or i32 %80, %84
  %86 = xor i32 %76, %85
  %87 = add i32 %76, %86
  %88 = getelementptr inbounds [4 x i32], [4 x i32]* %copy.38, i64 0, i64 3
  %89 = load i32, i32* %88, align 4, !alias.scope !19, !noalias !57
  %90 = shl i32 %86, %89
  %shft.chk6 = icmp ult i32 %89, 32
  %91 = select i1 %shft.chk6, i32 %90, i32 0
  %92 = load i32, i32* bitcast ([4 x i8]* @20 to i32*), align 4
  %93 = sub i32 %92, %89
  %94 = lshr i32 %86, %93
  %shft.chk7 = icmp ult i32 %93, 32
  %95 = select i1 %shft.chk7, i32 %94, i32 0
  %96 = or i32 %91, %95
  %97 = xor i32 %87, %96
  %98 = load i32, i32* %copy.36, align 4, !alias.scope !26, !noalias !58
  %99 = add i32 %97, %98
  %100 = load i32, i32* %copy.32, align 4, !alias.scope !59, !noalias !60
  %101 = load i32, i32* bitcast ([4 x i8]* @21 to i32*), align 4
  %102 = add i32 %100, %101
  %103 = add i32 %99, %102
  %104 = getelementptr inbounds [2 x i32], [2 x i32]* %fusion.2, i64 0, i64 %fusion.2.indvar.dim.0
  store i32 %103, i32* %104, align 4, !alias.scope !63, !noalias !64
  %invar.inc = add nuw nsw i64 %fusion.2.indvar.dim.0, 1
  store i64 %invar.inc, i64* %fusion.2.invar_address.dim.0, align 8
  br label %fusion.2.loop_header.dim.0

fusion.2.loop_exit.dim.0:                         ; preds = %fusion.2.loop_header.dim.0
  %105 = getelementptr inbounds [8 x i8*], [8 x i8*]* %parameter.3, i64 0, i64 3
  %106 = load i8*, i8** %105, align 8, !dereferenceable !5, !align !5
  %107 = bitcast i8* %106 to i32*
  %108 = getelementptr inbounds i8*, i8** %buffer_table, i64 20
  %109 = load i8*, i8** %108, align 8, !invariant.load !0, !dereferenceable !1, !align !2
  %110 = getelementptr inbounds i8, i8* %109, i64 128
  %copy.35 = bitcast i8* %110 to i32*
  %111 = bitcast i32* %copy.35 to i8*
  %112 = bitcast i32* %107 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %111, i8* align 1 %112, i64 4, i1 false)
  %113 = getelementptr inbounds i8*, i8** %buffer_table, i64 20
  %114 = load i8*, i8** %113, align 8, !invariant.load !0, !dereferenceable !1, !align !2
  %115 = getelementptr inbounds i8, i8* %114, i64 160
  %fusion.3 = bitcast i8* %115 to [2 x i32]*
  store i64 0, i64* %fusion.3.invar_address.dim.0, align 8
  br label %fusion.3.loop_header.dim.0

fusion.3.loop_header.dim.0:                       ; preds = %fusion.3.loop_body.dim.0, %fusion.2.loop_exit.dim.0
  %fusion.3.indvar.dim.0 = load i64, i64* %fusion.3.invar_address.dim.0, align 8
  %116 = icmp uge i64 %fusion.3.indvar.dim.0, 2
  br i1 %116, label %fusion.3.loop_exit.dim.0, label %fusion.3.loop_body.dim.0

fusion.3.loop_body.dim.0:                         ; preds = %fusion.3.loop_header.dim.0
  %117 = getelementptr inbounds [2 x i32], [2 x i32]* %copy.33, i64 0, i64 %fusion.3.indvar.dim.0
  %118 = load i32, i32* %117, align 4, !alias.scope !6, !noalias !51
  %119 = getelementptr inbounds [2 x i32], [2 x i32]* %copy.34, i64 0, i64 %fusion.3.indvar.dim.0
  %120 = load i32, i32* %119, align 4, !alias.scope !17, !noalias !56
  %121 = add i32 %118, %120
  %122 = getelementptr inbounds [2 x i32], [2 x i32]* %copy.34, i64 0, i64 %fusion.3.indvar.dim.0
  %123 = load i32, i32* %122, align 4, !alias.scope !17, !noalias !56
  %124 = getelementptr inbounds [4 x i32], [4 x i32]* %copy.38, i64 0, i64 0
  %125 = load i32, i32* %124, align 4, !alias.scope !19, !noalias !57
  %126 = shl i32 %123, %125
  %shft.chk9 = icmp ult i32 %125, 32
  %127 = select i1 %shft.chk9, i32 %126, i32 0
  %128 = getelementptr inbounds [2 x i32], [2 x i32]* %copy.34, i64 0, i64 %fusion.3.indvar.dim.0
  %129 = load i32, i32* %128, align 4, !alias.scope !17, !noalias !56
  %130 = load i32, i32* bitcast ([4 x i8]* @22 to i32*), align 4
  %131 = sub i32 %130, %125
  %132 = lshr i32 %129, %131
  %shft.chk10 = icmp ult i32 %131, 32
  %133 = select i1 %shft.chk10, i32 %132, i32 0
  %134 = or i32 %127, %133
  %135 = xor i32 %121, %134
  %136 = add i32 %121, %135
  %137 = getelementptr inbounds [4 x i32], [4 x i32]* %copy.38, i64 0, i64 1
  %138 = load i32, i32* %137, align 4, !alias.scope !19, !noalias !57
  %139 = shl i32 %135, %138
  %shft.chk11 = icmp ult i32 %138, 32
  %140 = select i1 %shft.chk11, i32 %139, i32 0
  %141 = load i32, i32* bitcast ([4 x i8]* @23 to i32*), align 4
  %142 = sub i32 %141, %138
  %143 = lshr i32 %135, %142
  %shft.chk12 = icmp ult i32 %142, 32
  %144 = select i1 %shft.chk12, i32 %143, i32 0
  %145 = or i32 %140, %144
  %146 = xor i32 %136, %145
  %147 = add i32 %136, %146
  %148 = getelementptr inbounds [4 x i32], [4 x i32]* %copy.38, i64 0, i64 2
  %149 = load i32, i32* %148, align 4, !alias.scope !19, !noalias !57
  %150 = shl i32 %146, %149
  %shft.chk13 = icmp ult i32 %149, 32
  %151 = select i1 %shft.chk13, i32 %150, i32 0
  %152 = load i32, i32* bitcast ([4 x i8]* @24 to i32*), align 4
  %153 = sub i32 %152, %149
  %154 = lshr i32 %146, %153
  %shft.chk14 = icmp ult i32 %153, 32
  %155 = select i1 %shft.chk14, i32 %154, i32 0
  %156 = or i32 %151, %155
  %157 = xor i32 %147, %156
  %158 = add i32 %147, %157
  %159 = load i32, i32* %copy.35, align 4, !alias.scope !66, !noalias !67
  %160 = add i32 %158, %159
  %161 = getelementptr inbounds [2 x i32], [2 x i32]* %fusion.3, i64 0, i64 %fusion.3.indvar.dim.0
  store i32 %160, i32* %161, align 4, !alias.scope !68, !noalias !69
  %invar.inc8 = add nuw nsw i64 %fusion.3.indvar.dim.0, 1
  store i64 %invar.inc8, i64* %fusion.3.invar_address.dim.0, align 8
  br label %fusion.3.loop_header.dim.0

fusion.3.loop_exit.dim.0:                         ; preds = %fusion.3.loop_header.dim.0
  %162 = getelementptr inbounds [8 x i8*], [8 x i8*]* %parameter.3, i64 0, i64 7
  %163 = load i8*, i8** %162, align 8, !dereferenceable !2, !align !2
  %164 = bitcast i8* %163 to [4 x i32]*
  %165 = getelementptr inbounds i8*, i8** %buffer_table, i64 20
  %166 = load i8*, i8** %165, align 8, !invariant.load !0, !dereferenceable !1, !align !2
  %167 = getelementptr inbounds i8, i8* %166, i64 80
  %copy.39 = bitcast i8* %167 to [4 x i32]*
  %168 = bitcast [4 x i32]* %copy.39 to i8*
  %169 = bitcast [4 x i32]* %164 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %168, i8* align 1 %169, i64 16, i1 false)
  %170 = getelementptr inbounds i8*, i8** %buffer_table, i64 20
  %171 = load i8*, i8** %170, align 8, !invariant.load !0, !dereferenceable !1, !align !2
  %172 = getelementptr inbounds i8, i8* %171, i64 96
  %copy.47 = bitcast i8* %172 to [4 x i32]*
  %173 = bitcast [4 x i32]* %copy.47 to i8*
  %174 = bitcast [4 x i32]* %copy.38 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %173, i8* align 1 %174, i64 16, i1 false)
  %175 = getelementptr inbounds i8*, i8** %buffer_table, i64 20
  %176 = load i8*, i8** %175, align 8, !invariant.load !0, !dereferenceable !1, !align !2
  %177 = getelementptr inbounds i8, i8* %176, i64 240
  %add.123 = bitcast i8* %177 to i32*
  %178 = load i32, i32* %copy.32, align 4, !alias.scope !59, !noalias !60
  %179 = load i32, i32* bitcast ([4 x i8]* @0 to i32*), align 4, !alias.scope !70, !noalias !71
  %180 = add i32 %178, %179
  store i32 %180, i32* %add.123, align 4, !alias.scope !72, !noalias !73
  %181 = getelementptr inbounds i8*, i8** %buffer_table, i64 20
  %182 = load i8*, i8** %181, align 8, !invariant.load !0, !dereferenceable !1, !align !2
  %183 = getelementptr inbounds i8, i8* %182, i64 208
  %copy.43 = bitcast i8* %183 to i32*
  %184 = bitcast i32* %copy.43 to i8*
  %185 = bitcast i32* %copy.36 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %184, i8* align 1 %185, i64 4, i1 false)
  %186 = getelementptr inbounds [8 x i8*], [8 x i8*]* %parameter.3, i64 0, i64 5
  %187 = load i8*, i8** %186, align 8, !dereferenceable !5, !align !5
  %188 = bitcast i8* %187 to i32*
  %189 = getelementptr inbounds i8*, i8** %buffer_table, i64 20
  %190 = load i8*, i8** %189, align 8, !invariant.load !0, !dereferenceable !1, !align !2
  %191 = getelementptr inbounds i8, i8* %190, i64 64
  %copy.37 = bitcast i8* %191 to i32*
  %192 = bitcast i32* %copy.37 to i8*
  %193 = bitcast i32* %188 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %192, i8* align 1 %193, i64 4, i1 false)
  %194 = getelementptr inbounds i8*, i8** %buffer_table, i64 20
  %195 = load i8*, i8** %194, align 8, !invariant.load !0, !dereferenceable !1, !align !2
  %196 = getelementptr inbounds i8, i8* %195, i64 224
  %copy.45 = bitcast i8* %196 to i32*
  %197 = bitcast i32* %copy.45 to i8*
  %198 = bitcast i32* %copy.35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %197, i8* align 1 %198, i64 4, i1 false)
  %199 = getelementptr inbounds i8*, i8** %buffer_table, i64 0
  %200 = load i8*, i8** %199, align 8, !invariant.load !0, !dereferenceable !4, !align !2
  %copy.46 = bitcast i8* %200 to [4 x i32]*
  %201 = bitcast [4 x i32]* %copy.46 to i8*
  %202 = bitcast [4 x i32]* %copy.39 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %201, i8* align 1 %202, i64 16, i1 false)
  %203 = getelementptr inbounds i8*, i8** %buffer_table, i64 20
  %204 = load i8*, i8** %203, align 8, !invariant.load !0, !dereferenceable !1, !align !2
  %205 = getelementptr inbounds i8, i8* %204, i64 192
  %copy.44 = bitcast i8* %205 to i32*
  %206 = bitcast i32* %copy.44 to i8*
  %207 = bitcast i32* %copy.37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %206, i8* align 1 %207, i64 4, i1 false)
  %208 = getelementptr inbounds i8*, i8** %buffer_table, i64 20
  %209 = load i8*, i8** %208, align 8, !invariant.load !0, !dereferenceable !1, !align !2
  %210 = getelementptr inbounds i8, i8* %209, i64 33554944
  %tuple.96 = bitcast i8* %210 to [8 x i8*]*
  %211 = bitcast i32* %add.123 to i8*
  %212 = getelementptr inbounds [8 x i8*], [8 x i8*]* %tuple.96, i64 0, i64 0
  store i8* %211, i8** %212, align 8, !alias.scope !74, !noalias !75
  %213 = bitcast [2 x i32]* %fusion.3 to i8*
  %214 = getelementptr inbounds [8 x i8*], [8 x i8*]* %tuple.96, i64 0, i64 1
  store i8* %213, i8** %214, align 8, !alias.scope !74, !noalias !75
  %215 = bitcast [2 x i32]* %fusion.2 to i8*
  %216 = getelementptr inbounds [8 x i8*], [8 x i8*]* %tuple.96, i64 0, i64 2
  store i8* %215, i8** %216, align 8, !alias.scope !74, !noalias !75
  %217 = bitcast i32* %copy.43 to i8*
  %218 = getelementptr inbounds [8 x i8*], [8 x i8*]* %tuple.96, i64 0, i64 3
  store i8* %217, i8** %218, align 8, !alias.scope !74, !noalias !75
  %219 = bitcast i32* %copy.44 to i8*
  %220 = getelementptr inbounds [8 x i8*], [8 x i8*]* %tuple.96, i64 0, i64 4
  store i8* %219, i8** %220, align 8, !alias.scope !74, !noalias !75
  %221 = bitcast i32* %copy.45 to i8*
  %222 = getelementptr inbounds [8 x i8*], [8 x i8*]* %tuple.96, i64 0, i64 5
  store i8* %221, i8** %222, align 8, !alias.scope !74, !noalias !75
  %223 = bitcast [4 x i32]* %copy.46 to i8*
  %224 = getelementptr inbounds [8 x i8*], [8 x i8*]* %tuple.96, i64 0, i64 6
  store i8* %223, i8** %224, align 8, !alias.scope !74, !noalias !75
  %225 = bitcast [4 x i32]* %copy.47 to i8*
  %226 = getelementptr inbounds [8 x i8*], [8 x i8*]* %tuple.96, i64 0, i64 7
  store i8* %225, i8** %226, align 8, !alias.scope !74, !noalias !75
  ret void
}

; Function Attrs: uwtable
define internal void @cond_computation__1.228.clone(i8* %retval, i8* noalias %run_options, i8** noalias %params, i8** noalias %buffer_table, i64* noalias %prof_counters) #0 {
entry:
  %0 = getelementptr inbounds i8*, i8** %buffer_table, i64 20
  %1 = load i8*, i8** %0, align 8, !invariant.load !0, !dereferenceable !1, !align !2
  %2 = getelementptr inbounds i8, i8* %1, i64 33554944
  %parameter.2 = bitcast i8* %2 to [8 x i8*]*
  %3 = getelementptr inbounds [8 x i8*], [8 x i8*]* %parameter.2, i64 0, i64 0
  %4 = load i8*, i8** %3, align 8, !dereferenceable !5, !align !5
  %5 = bitcast i8* %4 to i32*
  %6 = getelementptr inbounds i8*, i8** %buffer_table, i64 20
  %7 = load i8*, i8** %6, align 8, !invariant.load !0, !dereferenceable !1, !align !2
  %compare.13 = getelementptr inbounds i8, i8* %7, i64 176
  %8 = load i32, i32* %5, align 4, !alias.scope !72, !noalias !76
  %9 = load i32, i32* bitcast ([4 x i8]* @8 to i32*), align 4, !alias.scope !79, !noalias !80
  %10 = icmp slt i32 %8, %9
  %11 = zext i1 %10 to i8
  store i8 %11, i8* %compare.13, align 1, !alias.scope !81, !noalias !82
  ret void
}

; Function Attrs: uwtable
define internal void @parallel_fusion.4(i8* %retval, i8* noalias %run_options, i8** noalias %params, i8** noalias %buffer_table, i64* noalias %dynamic_loop_bounds, i64* noalias %prof_counters) #0 {
entry:
  %fusion.4.clone.invar_address.dim.0 = alloca i64, align 8
  %0 = getelementptr inbounds i8*, i8** %buffer_table, i64 20
  %1 = load i8*, i8** %0, align 8, !invariant.load !0, !dereferenceable !1, !align !2
  %2 = getelementptr inbounds i8, i8* %1, i64 27776
  %p.3 = bitcast i8* %2 to i32*
  %3 = getelementptr inbounds i8*, i8** %buffer_table, i64 20
  %4 = load i8*, i8** %3, align 8, !invariant.load !0, !dereferenceable !1, !align !2
  %5 = getelementptr inbounds i8, i8* %4, i64 27712
  %p.4 = bitcast i8* %5 to [4 x i32]*
  %6 = getelementptr inbounds i8*, i8** %buffer_table, i64 20
  %7 = load i8*, i8** %6, align 8, !invariant.load !0, !dereferenceable !1, !align !2
  %8 = getelementptr inbounds i8, i8* %7, i64 9280
  %p.5 = bitcast i8* %8 to [2304 x i32]*
  %9 = getelementptr inbounds i8*, i8** %buffer_table, i64 20
  %10 = load i8*, i8** %9, align 8, !invariant.load !0, !dereferenceable !1, !align !2
  %11 = getelementptr inbounds i8, i8* %10, i64 64
  %p.6 = bitcast i8* %11 to [2304 x i32]*
  %12 = getelementptr inbounds i8*, i8** %buffer_table, i64 20
  %13 = load i8*, i8** %12, align 8, !invariant.load !0, !dereferenceable !1, !align !2
  %14 = getelementptr inbounds i8, i8* %13, i64 27760
  %p.7 = bitcast i8* %14 to i32*
  %15 = getelementptr inbounds i8*, i8** %buffer_table, i64 20
  %16 = load i8*, i8** %15, align 8, !invariant.load !0, !dereferenceable !1, !align !2
  %17 = getelementptr inbounds i8, i8* %16, i64 18496
  %fusion.4.clone = bitcast i8* %17 to [2304 x i32]*
  %dynamic_loop_bound_0 = getelementptr i64, i64* %dynamic_loop_bounds, i64 0
  %18 = load i64, i64* %dynamic_loop_bound_0, align 8
  %dynamic_loop_bound_1 = getelementptr i64, i64* %dynamic_loop_bounds, i64 1
  %19 = load i64, i64* %dynamic_loop_bound_1, align 8
  store i64 %18, i64* %fusion.4.clone.invar_address.dim.0, align 8
  br label %fusion.4.clone.loop_header.dim.0

fusion.4.clone.loop_header.dim.0:                 ; preds = %fusion.4.clone.loop_body.dim.0, %entry
  %fusion.4.clone.indvar.dim.0 = load i64, i64* %fusion.4.clone.invar_address.dim.0, align 8
  %20 = icmp uge i64 %fusion.4.clone.indvar.dim.0, %19
  br i1 %20, label %fusion.4.clone.loop_exit.dim.0, label %fusion.4.clone.loop_body.dim.0

fusion.4.clone.loop_body.dim.0:                   ; preds = %fusion.4.clone.loop_header.dim.0
  %21 = getelementptr inbounds [2304 x i32], [2304 x i32]* %p.6, i64 0, i64 %fusion.4.clone.indvar.dim.0
  %22 = load i32, i32* %21, align 4, !alias.scope !83, !noalias !85
  %23 = getelementptr inbounds [2304 x i32], [2304 x i32]* %p.5, i64 0, i64 %fusion.4.clone.indvar.dim.0
  %24 = load i32, i32* %23, align 4, !alias.scope !87, !noalias !85
  %25 = add i32 %22, %24
  %26 = getelementptr inbounds [2304 x i32], [2304 x i32]* %p.5, i64 0, i64 %fusion.4.clone.indvar.dim.0
  %27 = load i32, i32* %26, align 4, !alias.scope !87, !noalias !85
  %28 = getelementptr inbounds [4 x i32], [4 x i32]* %p.4, i64 0, i64 0
  %29 = load i32, i32* %28, align 4, !alias.scope !89, !noalias !85
  %30 = shl i32 %27, %29
  %shft.chk = icmp ult i32 %29, 32
  %31 = select i1 %shft.chk, i32 %30, i32 0
  %32 = getelementptr inbounds [2304 x i32], [2304 x i32]* %p.5, i64 0, i64 %fusion.4.clone.indvar.dim.0
  %33 = load i32, i32* %32, align 4, !alias.scope !87, !noalias !85
  %34 = load i32, i32* bitcast ([4 x i8]* @25 to i32*), align 4
  %35 = sub i32 %34, %29
  %36 = lshr i32 %33, %35
  %shft.chk1 = icmp ult i32 %35, 32
  %37 = select i1 %shft.chk1, i32 %36, i32 0
  %38 = or i32 %31, %37
  %39 = xor i32 %25, %38
  %40 = add i32 %25, %39
  %41 = getelementptr inbounds [4 x i32], [4 x i32]* %p.4, i64 0, i64 1
  %42 = load i32, i32* %41, align 4, !alias.scope !89, !noalias !85
  %43 = shl i32 %39, %42
  %shft.chk2 = icmp ult i32 %42, 32
  %44 = select i1 %shft.chk2, i32 %43, i32 0
  %45 = load i32, i32* bitcast ([4 x i8]* @26 to i32*), align 4
  %46 = sub i32 %45, %42
  %47 = lshr i32 %39, %46
  %shft.chk3 = icmp ult i32 %46, 32
  %48 = select i1 %shft.chk3, i32 %47, i32 0
  %49 = or i32 %44, %48
  %50 = xor i32 %40, %49
  %51 = add i32 %40, %50
  %52 = getelementptr inbounds [4 x i32], [4 x i32]* %p.4, i64 0, i64 2
  %53 = load i32, i32* %52, align 4, !alias.scope !89, !noalias !85
  %54 = shl i32 %50, %53
  %shft.chk4 = icmp ult i32 %53, 32
  %55 = select i1 %shft.chk4, i32 %54, i32 0
  %56 = load i32, i32* bitcast ([4 x i8]* @27 to i32*), align 4
  %57 = sub i32 %56, %53
  %58 = lshr i32 %50, %57
  %shft.chk5 = icmp ult i32 %57, 32
  %59 = select i1 %shft.chk5, i32 %58, i32 0
  %60 = or i32 %55, %59
  %61 = xor i32 %51, %60
  %62 = add i32 %51, %61
  %63 = getelementptr inbounds [4 x i32], [4 x i32]* %p.4, i64 0, i64 3
  %64 = load i32, i32* %63, align 4, !alias.scope !89, !noalias !85
  %65 = shl i32 %61, %64
  %shft.chk6 = icmp ult i32 %64, 32
  %66 = select i1 %shft.chk6, i32 %65, i32 0
  %67 = load i32, i32* bitcast ([4 x i8]* @28 to i32*), align 4
  %68 = sub i32 %67, %64
  %69 = lshr i32 %61, %68
  %shft.chk7 = icmp ult i32 %68, 32
  %70 = select i1 %shft.chk7, i32 %69, i32 0
  %71 = or i32 %66, %70
  %72 = xor i32 %62, %71
  %73 = load i32, i32* %p.3, align 4, !alias.scope !91, !noalias !85
  %74 = add i32 %72, %73
  %75 = load i32, i32* %p.7, align 4, !alias.scope !93, !noalias !85
  %76 = load i32, i32* bitcast ([4 x i8]* @29 to i32*), align 4
  %77 = add i32 %75, %76
  %78 = add i32 %74, %77
  %79 = getelementptr inbounds [2304 x i32], [2304 x i32]* %fusion.4.clone, i64 0, i64 %fusion.4.clone.indvar.dim.0
  store i32 %78, i32* %79, align 4, !alias.scope !85
  %invar.inc = add nuw nsw i64 %fusion.4.clone.indvar.dim.0, 1
  store i64 %invar.inc, i64* %fusion.4.clone.invar_address.dim.0, align 8
  br label %fusion.4.clone.loop_header.dim.0

fusion.4.clone.loop_exit.dim.0:                   ; preds = %fusion.4.clone.loop_header.dim.0
  ret void
}

; Function Attrs: uwtable
define internal void @parallel_fusion.5(i8* %retval, i8* noalias %run_options, i8** noalias %params, i8** noalias %buffer_table, i64* noalias %dynamic_loop_bounds, i64* noalias %prof_counters) #0 {
entry:
  %fusion.5.clone.invar_address.dim.0 = alloca i64, align 8
  %0 = getelementptr inbounds i8*, i8** %buffer_table, i64 20
  %1 = load i8*, i8** %0, align 8, !invariant.load !0, !dereferenceable !1, !align !2
  %2 = getelementptr inbounds i8, i8* %1, i64 9280
  %p.10 = bitcast i8* %2 to [2304 x i32]*
  %3 = getelementptr inbounds i8*, i8** %buffer_table, i64 20
  %4 = load i8*, i8** %3, align 8, !invariant.load !0, !dereferenceable !1, !align !2
  %5 = getelementptr inbounds i8, i8* %4, i64 64
  %p.11 = bitcast i8* %5 to [2304 x i32]*
  %6 = getelementptr inbounds i8*, i8** %buffer_table, i64 20
  %7 = load i8*, i8** %6, align 8, !invariant.load !0, !dereferenceable !1, !align !2
  %8 = getelementptr inbounds i8, i8* %7, i64 27744
  %p.8 = bitcast i8* %8 to i32*
  %9 = getelementptr inbounds i8*, i8** %buffer_table, i64 20
  %10 = load i8*, i8** %9, align 8, !invariant.load !0, !dereferenceable !1, !align !2
  %11 = getelementptr inbounds i8, i8* %10, i64 27712
  %p.9 = bitcast i8* %11 to [4 x i32]*
  %12 = getelementptr inbounds i8*, i8** %buffer_table, i64 0
  %13 = load i8*, i8** %12, align 8, !invariant.load !0, !dereferenceable !4, !align !2
  %fusion.5.clone = bitcast i8* %13 to [2304 x i32]*
  %dynamic_loop_bound_0 = getelementptr i64, i64* %dynamic_loop_bounds, i64 0
  %14 = load i64, i64* %dynamic_loop_bound_0, align 8
  %dynamic_loop_bound_1 = getelementptr i64, i64* %dynamic_loop_bounds, i64 1
  %15 = load i64, i64* %dynamic_loop_bound_1, align 8
  store i64 %14, i64* %fusion.5.clone.invar_address.dim.0, align 8
  br label %fusion.5.clone.loop_header.dim.0

fusion.5.clone.loop_header.dim.0:                 ; preds = %fusion.5.clone.loop_body.dim.0, %entry
  %fusion.5.clone.indvar.dim.0 = load i64, i64* %fusion.5.clone.invar_address.dim.0, align 8
  %16 = icmp uge i64 %fusion.5.clone.indvar.dim.0, %15
  br i1 %16, label %fusion.5.clone.loop_exit.dim.0, label %fusion.5.clone.loop_body.dim.0

fusion.5.clone.loop_body.dim.0:                   ; preds = %fusion.5.clone.loop_header.dim.0
  %17 = getelementptr inbounds [2304 x i32], [2304 x i32]* %p.11, i64 0, i64 %fusion.5.clone.indvar.dim.0
  %18 = load i32, i32* %17, align 4, !alias.scope !83, !noalias !95
  %19 = getelementptr inbounds [2304 x i32], [2304 x i32]* %p.10, i64 0, i64 %fusion.5.clone.indvar.dim.0
  %20 = load i32, i32* %19, align 4, !alias.scope !87, !noalias !95
  %21 = add i32 %18, %20
  %22 = getelementptr inbounds [2304 x i32], [2304 x i32]* %p.10, i64 0, i64 %fusion.5.clone.indvar.dim.0
  %23 = load i32, i32* %22, align 4, !alias.scope !87, !noalias !95
  %24 = getelementptr inbounds [4 x i32], [4 x i32]* %p.9, i64 0, i64 0
  %25 = load i32, i32* %24, align 4, !alias.scope !89, !noalias !95
  %26 = shl i32 %23, %25
  %shft.chk = icmp ult i32 %25, 32
  %27 = select i1 %shft.chk, i32 %26, i32 0
  %28 = getelementptr inbounds [2304 x i32], [2304 x i32]* %p.10, i64 0, i64 %fusion.5.clone.indvar.dim.0
  %29 = load i32, i32* %28, align 4, !alias.scope !87, !noalias !95
  %30 = load i32, i32* bitcast ([4 x i8]* @30 to i32*), align 4
  %31 = sub i32 %30, %25
  %32 = lshr i32 %29, %31
  %shft.chk1 = icmp ult i32 %31, 32
  %33 = select i1 %shft.chk1, i32 %32, i32 0
  %34 = or i32 %27, %33
  %35 = xor i32 %21, %34
  %36 = add i32 %21, %35
  %37 = getelementptr inbounds [4 x i32], [4 x i32]* %p.9, i64 0, i64 1
  %38 = load i32, i32* %37, align 4, !alias.scope !89, !noalias !95
  %39 = shl i32 %35, %38
  %shft.chk2 = icmp ult i32 %38, 32
  %40 = select i1 %shft.chk2, i32 %39, i32 0
  %41 = load i32, i32* bitcast ([4 x i8]* @31 to i32*), align 4
  %42 = sub i32 %41, %38
  %43 = lshr i32 %35, %42
  %shft.chk3 = icmp ult i32 %42, 32
  %44 = select i1 %shft.chk3, i32 %43, i32 0
  %45 = or i32 %40, %44
  %46 = xor i32 %36, %45
  %47 = add i32 %36, %46
  %48 = getelementptr inbounds [4 x i32], [4 x i32]* %p.9, i64 0, i64 2
  %49 = load i32, i32* %48, align 4, !alias.scope !89, !noalias !95
  %50 = shl i32 %46, %49
  %shft.chk4 = icmp ult i32 %49, 32
  %51 = select i1 %shft.chk4, i32 %50, i32 0
  %52 = load i32, i32* bitcast ([4 x i8]* @32 to i32*), align 4
  %53 = sub i32 %52, %49
  %54 = lshr i32 %46, %53
  %shft.chk5 = icmp ult i32 %53, 32
  %55 = select i1 %shft.chk5, i32 %54, i32 0
  %56 = or i32 %51, %55
  %57 = xor i32 %47, %56
  %58 = add i32 %47, %57
  %59 = load i32, i32* %p.8, align 4, !alias.scope !97, !noalias !95
  %60 = add i32 %58, %59
  %61 = getelementptr inbounds [2304 x i32], [2304 x i32]* %fusion.5.clone, i64 0, i64 %fusion.5.clone.indvar.dim.0
  store i32 %60, i32* %61, align 4, !alias.scope !95
  %invar.inc = add nuw nsw i64 %fusion.5.clone.indvar.dim.0, 1
  store i64 %invar.inc, i64* %fusion.5.clone.invar_address.dim.0, align 8
  br label %fusion.5.clone.loop_header.dim.0

fusion.5.clone.loop_exit.dim.0:                   ; preds = %fusion.5.clone.loop_header.dim.0
  ret void
}

; Function Attrs: uwtable
define internal void @body_computation__2.309.clone(i8* %retval, i8* noalias %run_options, i8** noalias %params, i8** noalias %buffer_table, i64* noalias %prof_counters) #0 {
entry:
  %0 = getelementptr inbounds i8*, i8** %buffer_table, i64 20
  %1 = load i8*, i8** %0, align 8, !invariant.load !0, !dereferenceable !1, !align !2
  %2 = getelementptr inbounds i8, i8* %1, i64 33554880
  %parameter.5 = bitcast i8* %2 to [8 x i8*]*
  %3 = getelementptr inbounds [8 x i8*], [8 x i8*]* %parameter.5, i64 0, i64 6
  %4 = load i8*, i8** %3, align 8, !dereferenceable !2, !align !2
  %5 = bitcast i8* %4 to [4 x i32]*
  %6 = getelementptr inbounds i8*, i8** %buffer_table, i64 20
  %7 = load i8*, i8** %6, align 8, !invariant.load !0, !dereferenceable !1, !align !2
  %8 = getelementptr inbounds i8, i8* %7, i64 27712
  %copy.62 = bitcast i8* %8 to [4 x i32]*
  %9 = bitcast [4 x i32]* %copy.62 to i8*
  %10 = bitcast [4 x i32]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %9, i8* align 1 %10, i64 16, i1 false)
  %11 = getelementptr inbounds [8 x i8*], [8 x i8*]* %parameter.5, i64 0, i64 1
  %12 = load i8*, i8** %11, align 8, !dereferenceable !99, !align !2
  %13 = bitcast i8* %12 to [2304 x i32]*
  %14 = getelementptr inbounds i8*, i8** %buffer_table, i64 20
  %15 = load i8*, i8** %14, align 8, !invariant.load !0, !dereferenceable !1, !align !2
  %16 = getelementptr inbounds i8, i8* %15, i64 64
  %copy.57 = bitcast i8* %16 to [2304 x i32]*
  %17 = bitcast [2304 x i32]* %copy.57 to i8*
  %18 = bitcast [2304 x i32]* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %17, i8* align 1 %18, i64 9216, i1 false)
  %19 = getelementptr inbounds [8 x i8*], [8 x i8*]* %parameter.5, i64 0, i64 2
  %20 = load i8*, i8** %19, align 8, !dereferenceable !99, !align !2
  %21 = bitcast i8* %20 to [2304 x i32]*
  %22 = getelementptr inbounds i8*, i8** %buffer_table, i64 20
  %23 = load i8*, i8** %22, align 8, !invariant.load !0, !dereferenceable !1, !align !2
  %24 = getelementptr inbounds i8, i8* %23, i64 9280
  %copy.58 = bitcast i8* %24 to [2304 x i32]*
  %25 = bitcast [2304 x i32]* %copy.58 to i8*
  %26 = bitcast [2304 x i32]* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %25, i8* align 1 %26, i64 9216, i1 false)
  %27 = getelementptr inbounds [8 x i8*], [8 x i8*]* %parameter.5, i64 0, i64 0
  %28 = load i8*, i8** %27, align 8, !dereferenceable !5, !align !5
  %29 = bitcast i8* %28 to i32*
  %30 = getelementptr inbounds i8*, i8** %buffer_table, i64 20
  %31 = load i8*, i8** %30, align 8, !invariant.load !0, !dereferenceable !1, !align !2
  %32 = getelementptr inbounds i8, i8* %31, i64 27760
  %copy.56 = bitcast i8* %32 to i32*
  %33 = bitcast i32* %copy.56 to i8*
  %34 = bitcast i32* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %33, i8* align 1 %34, i64 4, i1 false)
  %35 = getelementptr inbounds [8 x i8*], [8 x i8*]* %parameter.5, i64 0, i64 4
  %36 = load i8*, i8** %35, align 8, !dereferenceable !5, !align !5
  %37 = bitcast i8* %36 to i32*
  %38 = getelementptr inbounds i8*, i8** %buffer_table, i64 20
  %39 = load i8*, i8** %38, align 8, !invariant.load !0, !dereferenceable !1, !align !2
  %40 = getelementptr inbounds i8, i8* %39, i64 27776
  %copy.60 = bitcast i8* %40 to i32*
  %41 = bitcast i32* %copy.60 to i8*
  %42 = bitcast i32* %37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %41, i8* align 1 %42, i64 4, i1 false)
  %43 = getelementptr inbounds i8*, i8** %buffer_table, i64 20
  %44 = load i8*, i8** %43, align 8, !invariant.load !0, !dereferenceable !1, !align !2
  %45 = getelementptr inbounds i8, i8* %44, i64 18496
  %call.2 = bitcast i8* %45 to [2304 x i32]*
  %46 = bitcast [2304 x i32]* %call.2 to i8*
  call void @__xla_cpu_runtime_ParallelForkJoin(i8* %46, i8* %run_options, i8** null, i8** %buffer_table, i64* %prof_counters, i32 3, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @parallel_fusion.4_parallel_dimension_partitions, i32 0, i32 0), i32 1, i8* bitcast (void (i8*, i8*, i8**, i8**, i64*, i64*)* @parallel_fusion.4 to i8*))
  %47 = getelementptr inbounds [8 x i8*], [8 x i8*]* %parameter.5, i64 0, i64 3
  %48 = load i8*, i8** %47, align 8, !dereferenceable !5, !align !5
  %49 = bitcast i8* %48 to i32*
  %50 = getelementptr inbounds i8*, i8** %buffer_table, i64 20
  %51 = load i8*, i8** %50, align 8, !invariant.load !0, !dereferenceable !1, !align !2
  %52 = getelementptr inbounds i8, i8* %51, i64 27744
  %copy.59 = bitcast i8* %52 to i32*
  %53 = bitcast i32* %copy.59 to i8*
  %54 = bitcast i32* %49 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %53, i8* align 1 %54, i64 4, i1 false)
  %55 = getelementptr inbounds i8*, i8** %buffer_table, i64 0
  %56 = load i8*, i8** %55, align 8, !invariant.load !0, !dereferenceable !4, !align !2
  %call.3 = bitcast i8* %56 to [2304 x i32]*
  %57 = bitcast [2304 x i32]* %call.3 to i8*
  call void @__xla_cpu_runtime_ParallelForkJoin(i8* %57, i8* %run_options, i8** null, i8** %buffer_table, i64* %prof_counters, i32 3, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @parallel_fusion.5_parallel_dimension_partitions, i32 0, i32 0), i32 1, i8* bitcast (void (i8*, i8*, i8**, i8**, i64*, i64*)* @parallel_fusion.5 to i8*))
  %58 = getelementptr inbounds [8 x i8*], [8 x i8*]* %parameter.5, i64 0, i64 7
  %59 = load i8*, i8** %58, align 8, !dereferenceable !2, !align !2
  %60 = bitcast i8* %59 to [4 x i32]*
  %61 = getelementptr inbounds i8*, i8** %buffer_table, i64 20
  %62 = load i8*, i8** %61, align 8, !invariant.load !0, !dereferenceable !1, !align !2
  %63 = getelementptr inbounds i8, i8* %62, i64 64
  %copy.63 = bitcast i8* %63 to [4 x i32]*
  %64 = bitcast [4 x i32]* %copy.63 to i8*
  %65 = bitcast [4 x i32]* %60 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %64, i8* align 1 %65, i64 16, i1 false)
  %66 = getelementptr inbounds i8*, i8** %buffer_table, i64 20
  %67 = load i8*, i8** %66, align 8, !invariant.load !0, !dereferenceable !1, !align !2
  %68 = getelementptr inbounds i8, i8* %67, i64 27728
  %copy.71 = bitcast i8* %68 to [4 x i32]*
  %69 = bitcast [4 x i32]* %copy.71 to i8*
  %70 = bitcast [4 x i32]* %copy.62 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %69, i8* align 1 %70, i64 16, i1 false)
  %71 = getelementptr inbounds i8*, i8** %buffer_table, i64 20
  %72 = load i8*, i8** %71, align 8, !invariant.load !0, !dereferenceable !1, !align !2
  %73 = getelementptr inbounds i8, i8* %72, i64 27824
  %add.132 = bitcast i8* %73 to i32*
  %74 = load i32, i32* %copy.56, align 4, !alias.scope !93, !noalias !100
  %75 = load i32, i32* bitcast ([4 x i8]* @0 to i32*), align 4, !alias.scope !103, !noalias !104
  %76 = add i32 %74, %75
  store i32 %76, i32* %add.132, align 4, !alias.scope !105, !noalias !106
  %77 = getelementptr inbounds i8*, i8** %buffer_table, i64 20
  %78 = load i8*, i8** %77, align 8, !invariant.load !0, !dereferenceable !1, !align !2
  %79 = getelementptr inbounds i8, i8* %78, i64 27792
  %copy.67 = bitcast i8* %79 to i32*
  %80 = bitcast i32* %copy.67 to i8*
  %81 = bitcast i32* %copy.60 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %80, i8* align 1 %81, i64 4, i1 false)
  %82 = getelementptr inbounds [8 x i8*], [8 x i8*]* %parameter.5, i64 0, i64 5
  %83 = load i8*, i8** %82, align 8, !dereferenceable !5, !align !5
  %84 = bitcast i8* %83 to i32*
  %85 = getelementptr inbounds i8*, i8** %buffer_table, i64 20
  %86 = load i8*, i8** %85, align 8, !invariant.load !0, !dereferenceable !1, !align !2
  %87 = getelementptr inbounds i8, i8* %86, i64 27712
  %copy.61 = bitcast i8* %87 to i32*
  %88 = bitcast i32* %copy.61 to i8*
  %89 = bitcast i32* %84 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %88, i8* align 1 %89, i64 4, i1 false)
  %90 = getelementptr inbounds i8*, i8** %buffer_table, i64 20
  %91 = load i8*, i8** %90, align 8, !invariant.load !0, !dereferenceable !1, !align !2
  %92 = getelementptr inbounds i8, i8* %91, i64 27808
  %copy.69 = bitcast i8* %92 to i32*
  %93 = bitcast i32* %copy.69 to i8*
  %94 = bitcast i32* %copy.59 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %93, i8* align 1 %94, i64 4, i1 false)
  %95 = getelementptr inbounds i8*, i8** %buffer_table, i64 20
  %96 = load i8*, i8** %95, align 8, !invariant.load !0, !dereferenceable !1, !align !2
  %97 = getelementptr inbounds i8, i8* %96, i64 80
  %copy.70 = bitcast i8* %97 to [4 x i32]*
  %98 = bitcast [4 x i32]* %copy.70 to i8*
  %99 = bitcast [4 x i32]* %copy.63 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %98, i8* align 1 %99, i64 16, i1 false)
  %100 = getelementptr inbounds i8*, i8** %buffer_table, i64 20
  %101 = load i8*, i8** %100, align 8, !invariant.load !0, !dereferenceable !1, !align !2
  %102 = getelementptr inbounds i8, i8* %101, i64 27744
  %copy.68 = bitcast i8* %102 to i32*
  %103 = bitcast i32* %copy.68 to i8*
  %104 = bitcast i32* %copy.61 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %103, i8* align 1 %104, i64 4, i1 false)
  %105 = getelementptr inbounds i8*, i8** %buffer_table, i64 20
  %106 = load i8*, i8** %105, align 8, !invariant.load !0, !dereferenceable !1, !align !2
  %107 = getelementptr inbounds i8, i8* %106, i64 33554880
  %tuple.99 = bitcast i8* %107 to [8 x i8*]*
  %108 = bitcast i32* %add.132 to i8*
  %109 = getelementptr inbounds [8 x i8*], [8 x i8*]* %tuple.99, i64 0, i64 0
  store i8* %108, i8** %109, align 8, !alias.scope !112, !noalias !113
  %110 = bitcast [2304 x i32]* %call.3 to i8*
  %111 = getelementptr inbounds [8 x i8*], [8 x i8*]* %tuple.99, i64 0, i64 1
  store i8* %110, i8** %111, align 8, !alias.scope !112, !noalias !113
  %112 = bitcast [2304 x i32]* %call.2 to i8*
  %113 = getelementptr inbounds [8 x i8*], [8 x i8*]* %tuple.99, i64 0, i64 2
  store i8* %112, i8** %113, align 8, !alias.scope !112, !noalias !113
  %114 = bitcast i32* %copy.67 to i8*
  %115 = getelementptr inbounds [8 x i8*], [8 x i8*]* %tuple.99, i64 0, i64 3
  store i8* %114, i8** %115, align 8, !alias.scope !112, !noalias !113
  %116 = bitcast i32* %copy.68 to i8*
  %117 = getelementptr inbounds [8 x i8*], [8 x i8*]* %tuple.99, i64 0, i64 4
  store i8* %116, i8** %117, align 8, !alias.scope !112, !noalias !113
  %118 = bitcast i32* %copy.69 to i8*
  %119 = getelementptr inbounds [8 x i8*], [8 x i8*]* %tuple.99, i64 0, i64 5
  store i8* %118, i8** %119, align 8, !alias.scope !112, !noalias !113
  %120 = bitcast [4 x i32]* %copy.70 to i8*
  %121 = getelementptr inbounds [8 x i8*], [8 x i8*]* %tuple.99, i64 0, i64 6
  store i8* %120, i8** %121, align 8, !alias.scope !112, !noalias !113
  %122 = bitcast [4 x i32]* %copy.71 to i8*
  %123 = getelementptr inbounds [8 x i8*], [8 x i8*]* %tuple.99, i64 0, i64 7
  store i8* %122, i8** %123, align 8, !alias.scope !112, !noalias !113
  ret void
}

; Function Attrs: nounwind
declare void @__xla_cpu_runtime_ParallelForkJoin(i8*, i8*, i8**, i8**, i64*, i32, i64*, i32, i8*) #2

; Function Attrs: uwtable
define internal void @cond_computation__2.377.clone(i8* %retval, i8* noalias %run_options, i8** noalias %params, i8** noalias %buffer_table, i64* noalias %prof_counters) #0 {
entry:
  %0 = getelementptr inbounds i8*, i8** %buffer_table, i64 20
  %1 = load i8*, i8** %0, align 8, !invariant.load !0, !dereferenceable !1, !align !2
  %2 = getelementptr inbounds i8, i8* %1, i64 33554880
  %parameter.4 = bitcast i8* %2 to [8 x i8*]*
  %3 = getelementptr inbounds [8 x i8*], [8 x i8*]* %parameter.4, i64 0, i64 0
  %4 = load i8*, i8** %3, align 8, !dereferenceable !5, !align !5
  %5 = bitcast i8* %4 to i32*
  %6 = getelementptr inbounds i8*, i8** %buffer_table, i64 20
  %7 = load i8*, i8** %6, align 8, !invariant.load !0, !dereferenceable !1, !align !2
  %compare.14 = getelementptr inbounds i8, i8* %7, i64 64
  %8 = load i32, i32* %5, align 4, !alias.scope !105, !noalias !114
  %9 = load i32, i32* bitcast ([4 x i8]* @8 to i32*), align 4, !alias.scope !117, !noalias !118
  %10 = icmp slt i32 %8, %9
  %11 = zext i1 %10 to i8
  store i8 %11, i8* %compare.14, align 1, !alias.scope !119, !noalias !120
  ret void
}

; Function Attrs: uwtable
define internal void @body_computation__3.792.clone(i8* %retval, i8* noalias %run_options, i8** noalias %params, i8** noalias %buffer_table, i64* noalias %prof_counters) #0 {
entry:
  %fusion.7.invar_address.dim.0 = alloca i64, align 8
  %fusion.6.invar_address.dim.0 = alloca i64, align 8
  %0 = getelementptr inbounds i8*, i8** %buffer_table, i64 20
  %1 = load i8*, i8** %0, align 8, !invariant.load !0, !dereferenceable !1, !align !2
  %parameter.7 = bitcast i8* %1 to [8 x i8*]*
  %2 = getelementptr inbounds [8 x i8*], [8 x i8*]* %parameter.7, i64 0, i64 6
  %3 = load i8*, i8** %2, align 8, !dereferenceable !2, !align !2
  %4 = bitcast i8* %3 to [4 x i32]*
  %5 = getelementptr inbounds i8*, i8** %buffer_table, i64 20
  %6 = load i8*, i8** %5, align 8, !invariant.load !0, !dereferenceable !1, !align !2
  %7 = getelementptr inbounds i8, i8* %6, i64 128
  %copy.86 = bitcast i8* %7 to [4 x i32]*
  %8 = bitcast [4 x i32]* %copy.86 to i8*
  %9 = bitcast [4 x i32]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %8, i8* align 1 %9, i64 16, i1 false)
  %10 = getelementptr inbounds [8 x i8*], [8 x i8*]* %parameter.7, i64 0, i64 1
  %11 = load i8*, i8** %10, align 8, !dereferenceable !121, !align !2
  %12 = bitcast i8* %11 to [16 x i32]*
  %13 = getelementptr inbounds i8*, i8** %buffer_table, i64 20
  %14 = load i8*, i8** %13, align 8, !invariant.load !0, !dereferenceable !1, !align !2
  %15 = getelementptr inbounds i8, i8* %14, i64 64
  %copy.81 = bitcast i8* %15 to [16 x i32]*
  %16 = bitcast [16 x i32]* %copy.81 to i8*
  %17 = bitcast [16 x i32]* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %16, i8* align 1 %17, i64 64, i1 false)
  %18 = getelementptr inbounds [8 x i8*], [8 x i8*]* %parameter.7, i64 0, i64 2
  %19 = load i8*, i8** %18, align 8, !dereferenceable !121, !align !2
  %20 = bitcast i8* %19 to [16 x i32]*
  %21 = getelementptr inbounds i8*, i8** %buffer_table, i64 0
  %22 = load i8*, i8** %21, align 8, !invariant.load !0, !dereferenceable !4, !align !2
  %copy.82 = bitcast i8* %22 to [16 x i32]*
  %23 = bitcast [16 x i32]* %copy.82 to i8*
  %24 = bitcast [16 x i32]* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %23, i8* align 1 %24, i64 64, i1 false)
  %25 = getelementptr inbounds [8 x i8*], [8 x i8*]* %parameter.7, i64 0, i64 0
  %26 = load i8*, i8** %25, align 8, !dereferenceable !5, !align !5
  %27 = bitcast i8* %26 to i32*
  %28 = getelementptr inbounds i8*, i8** %buffer_table, i64 20
  %29 = load i8*, i8** %28, align 8, !invariant.load !0, !dereferenceable !1, !align !2
  %30 = getelementptr inbounds i8, i8* %29, i64 192
  %copy.80 = bitcast i8* %30 to i32*
  %31 = bitcast i32* %copy.80 to i8*
  %32 = bitcast i32* %27 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %31, i8* align 1 %32, i64 4, i1 false)
  %33 = getelementptr inbounds [8 x i8*], [8 x i8*]* %parameter.7, i64 0, i64 4
  %34 = load i8*, i8** %33, align 8, !dereferenceable !5, !align !5
  %35 = bitcast i8* %34 to i32*
  %36 = getelementptr inbounds i8*, i8** %buffer_table, i64 20
  %37 = load i8*, i8** %36, align 8, !invariant.load !0, !dereferenceable !1, !align !2
  %38 = getelementptr inbounds i8, i8* %37, i64 208
  %copy.84 = bitcast i8* %38 to i32*
  %39 = bitcast i32* %copy.84 to i8*
  %40 = bitcast i32* %35 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %39, i8* align 1 %40, i64 4, i1 false)
  %41 = getelementptr inbounds i8*, i8** %buffer_table, i64 20
  %42 = load i8*, i8** %41, align 8, !invariant.load !0, !dereferenceable !1, !align !2
  %43 = getelementptr inbounds i8, i8* %42, i64 33554752
  %fusion.6 = bitcast i8* %43 to [16 x i32]*
  store i64 0, i64* %fusion.6.invar_address.dim.0, align 8
  br label %fusion.6.loop_header.dim.0

fusion.6.loop_header.dim.0:                       ; preds = %fusion.6.loop_body.dim.0, %entry
  %fusion.6.indvar.dim.0 = load i64, i64* %fusion.6.invar_address.dim.0, align 8
  %44 = icmp uge i64 %fusion.6.indvar.dim.0, 16
  br i1 %44, label %fusion.6.loop_exit.dim.0, label %fusion.6.loop_body.dim.0

fusion.6.loop_body.dim.0:                         ; preds = %fusion.6.loop_header.dim.0
  %45 = getelementptr inbounds [16 x i32], [16 x i32]* %copy.81, i64 0, i64 %fusion.6.indvar.dim.0
  %46 = load i32, i32* %45, align 4, !alias.scope !122, !noalias !124
  %47 = getelementptr inbounds [16 x i32], [16 x i32]* %copy.82, i64 0, i64 %fusion.6.indvar.dim.0
  %48 = load i32, i32* %47, align 4, !alias.scope !129, !noalias !130
  %49 = add i32 %46, %48
  %50 = getelementptr inbounds [16 x i32], [16 x i32]* %copy.82, i64 0, i64 %fusion.6.indvar.dim.0
  %51 = load i32, i32* %50, align 4, !alias.scope !129, !noalias !130
  %52 = getelementptr inbounds [4 x i32], [4 x i32]* %copy.86, i64 0, i64 0
  %53 = load i32, i32* %52, align 4, !alias.scope !131, !noalias !132
  %54 = shl i32 %51, %53
  %shft.chk = icmp ult i32 %53, 32
  %55 = select i1 %shft.chk, i32 %54, i32 0
  %56 = getelementptr inbounds [16 x i32], [16 x i32]* %copy.82, i64 0, i64 %fusion.6.indvar.dim.0
  %57 = load i32, i32* %56, align 4, !alias.scope !129, !noalias !130
  %58 = load i32, i32* bitcast ([4 x i8]* @33 to i32*), align 4
  %59 = sub i32 %58, %53
  %60 = lshr i32 %57, %59
  %shft.chk1 = icmp ult i32 %59, 32
  %61 = select i1 %shft.chk1, i32 %60, i32 0
  %62 = or i32 %55, %61
  %63 = xor i32 %49, %62
  %64 = add i32 %49, %63
  %65 = getelementptr inbounds [4 x i32], [4 x i32]* %copy.86, i64 0, i64 1
  %66 = load i32, i32* %65, align 4, !alias.scope !131, !noalias !132
  %67 = shl i32 %63, %66
  %shft.chk2 = icmp ult i32 %66, 32
  %68 = select i1 %shft.chk2, i32 %67, i32 0
  %69 = load i32, i32* bitcast ([4 x i8]* @34 to i32*), align 4
  %70 = sub i32 %69, %66
  %71 = lshr i32 %63, %70
  %shft.chk3 = icmp ult i32 %70, 32
  %72 = select i1 %shft.chk3, i32 %71, i32 0
  %73 = or i32 %68, %72
  %74 = xor i32 %64, %73
  %75 = add i32 %64, %74
  %76 = getelementptr inbounds [4 x i32], [4 x i32]* %copy.86, i64 0, i64 2
  %77 = load i32, i32* %76, align 4, !alias.scope !131, !noalias !132
  %78 = shl i32 %74, %77
  %shft.chk4 = icmp ult i32 %77, 32
  %79 = select i1 %shft.chk4, i32 %78, i32 0
  %80 = load i32, i32* bitcast ([4 x i8]* @35 to i32*), align 4
  %81 = sub i32 %80, %77
  %82 = lshr i32 %74, %81
  %shft.chk5 = icmp ult i32 %81, 32
  %83 = select i1 %shft.chk5, i32 %82, i32 0
  %84 = or i32 %79, %83
  %85 = xor i32 %75, %84
  %86 = add i32 %75, %85
  %87 = getelementptr inbounds [4 x i32], [4 x i32]* %copy.86, i64 0, i64 3
  %88 = load i32, i32* %87, align 4, !alias.scope !131, !noalias !132
  %89 = shl i32 %85, %88
  %shft.chk6 = icmp ult i32 %88, 32
  %90 = select i1 %shft.chk6, i32 %89, i32 0
  %91 = load i32, i32* bitcast ([4 x i8]* @36 to i32*), align 4
  %92 = sub i32 %91, %88
  %93 = lshr i32 %85, %92
  %shft.chk7 = icmp ult i32 %92, 32
  %94 = select i1 %shft.chk7, i32 %93, i32 0
  %95 = or i32 %90, %94
  %96 = xor i32 %86, %95
  %97 = load i32, i32* %copy.84, align 4, !alias.scope !134, !noalias !135
  %98 = add i32 %96, %97
  %99 = load i32, i32* %copy.80, align 4, !alias.scope !40, !noalias !136
  %100 = load i32, i32* bitcast ([4 x i8]* @37 to i32*), align 4
  %101 = add i32 %99, %100
  %102 = add i32 %98, %101
  %103 = getelementptr inbounds [16 x i32], [16 x i32]* %fusion.6, i64 0, i64 %fusion.6.indvar.dim.0
  store i32 %102, i32* %103, align 4, !alias.scope !139, !noalias !140
  %invar.inc = add nuw nsw i64 %fusion.6.indvar.dim.0, 1
  store i64 %invar.inc, i64* %fusion.6.invar_address.dim.0, align 8
  br label %fusion.6.loop_header.dim.0

fusion.6.loop_exit.dim.0:                         ; preds = %fusion.6.loop_header.dim.0
  %104 = getelementptr inbounds [8 x i8*], [8 x i8*]* %parameter.7, i64 0, i64 3
  %105 = load i8*, i8** %104, align 8, !dereferenceable !5, !align !5
  %106 = bitcast i8* %105 to i32*
  %107 = getelementptr inbounds i8*, i8** %buffer_table, i64 20
  %108 = load i8*, i8** %107, align 8, !invariant.load !0, !dereferenceable !1, !align !2
  %109 = getelementptr inbounds i8, i8* %108, i64 176
  %copy.83 = bitcast i8* %109 to i32*
  %110 = bitcast i32* %copy.83 to i8*
  %111 = bitcast i32* %106 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %110, i8* align 1 %111, i64 4, i1 false)
  %112 = getelementptr inbounds i8*, i8** %buffer_table, i64 20
  %113 = load i8*, i8** %112, align 8, !invariant.load !0, !dereferenceable !1, !align !2
  %114 = getelementptr inbounds i8, i8* %113, i64 33554816
  %fusion.7 = bitcast i8* %114 to [16 x i32]*
  store i64 0, i64* %fusion.7.invar_address.dim.0, align 8
  br label %fusion.7.loop_header.dim.0

fusion.7.loop_header.dim.0:                       ; preds = %fusion.7.loop_body.dim.0, %fusion.6.loop_exit.dim.0
  %fusion.7.indvar.dim.0 = load i64, i64* %fusion.7.invar_address.dim.0, align 8
  %115 = icmp uge i64 %fusion.7.indvar.dim.0, 16
  br i1 %115, label %fusion.7.loop_exit.dim.0, label %fusion.7.loop_body.dim.0

fusion.7.loop_body.dim.0:                         ; preds = %fusion.7.loop_header.dim.0
  %116 = getelementptr inbounds [16 x i32], [16 x i32]* %copy.81, i64 0, i64 %fusion.7.indvar.dim.0
  %117 = load i32, i32* %116, align 4, !alias.scope !122, !noalias !124
  %118 = getelementptr inbounds [16 x i32], [16 x i32]* %copy.82, i64 0, i64 %fusion.7.indvar.dim.0
  %119 = load i32, i32* %118, align 4, !alias.scope !129, !noalias !130
  %120 = add i32 %117, %119
  %121 = getelementptr inbounds [16 x i32], [16 x i32]* %copy.82, i64 0, i64 %fusion.7.indvar.dim.0
  %122 = load i32, i32* %121, align 4, !alias.scope !129, !noalias !130
  %123 = getelementptr inbounds [4 x i32], [4 x i32]* %copy.86, i64 0, i64 0
  %124 = load i32, i32* %123, align 4, !alias.scope !131, !noalias !132
  %125 = shl i32 %122, %124
  %shft.chk9 = icmp ult i32 %124, 32
  %126 = select i1 %shft.chk9, i32 %125, i32 0
  %127 = getelementptr inbounds [16 x i32], [16 x i32]* %copy.82, i64 0, i64 %fusion.7.indvar.dim.0
  %128 = load i32, i32* %127, align 4, !alias.scope !129, !noalias !130
  %129 = load i32, i32* bitcast ([4 x i8]* @38 to i32*), align 4
  %130 = sub i32 %129, %124
  %131 = lshr i32 %128, %130
  %shft.chk10 = icmp ult i32 %130, 32
  %132 = select i1 %shft.chk10, i32 %131, i32 0
  %133 = or i32 %126, %132
  %134 = xor i32 %120, %133
  %135 = add i32 %120, %134
  %136 = getelementptr inbounds [4 x i32], [4 x i32]* %copy.86, i64 0, i64 1
  %137 = load i32, i32* %136, align 4, !alias.scope !131, !noalias !132
  %138 = shl i32 %134, %137
  %shft.chk11 = icmp ult i32 %137, 32
  %139 = select i1 %shft.chk11, i32 %138, i32 0
  %140 = load i32, i32* bitcast ([4 x i8]* @39 to i32*), align 4
  %141 = sub i32 %140, %137
  %142 = lshr i32 %134, %141
  %shft.chk12 = icmp ult i32 %141, 32
  %143 = select i1 %shft.chk12, i32 %142, i32 0
  %144 = or i32 %139, %143
  %145 = xor i32 %135, %144
  %146 = add i32 %135, %145
  %147 = getelementptr inbounds [4 x i32], [4 x i32]* %copy.86, i64 0, i64 2
  %148 = load i32, i32* %147, align 4, !alias.scope !131, !noalias !132
  %149 = shl i32 %145, %148
  %shft.chk13 = icmp ult i32 %148, 32
  %150 = select i1 %shft.chk13, i32 %149, i32 0
  %151 = load i32, i32* bitcast ([4 x i8]* @40 to i32*), align 4
  %152 = sub i32 %151, %148
  %153 = lshr i32 %145, %152
  %shft.chk14 = icmp ult i32 %152, 32
  %154 = select i1 %shft.chk14, i32 %153, i32 0
  %155 = or i32 %150, %154
  %156 = xor i32 %146, %155
  %157 = add i32 %146, %156
  %158 = load i32, i32* %copy.83, align 4, !alias.scope !26, !noalias !142
  %159 = add i32 %157, %158
  %160 = getelementptr inbounds [16 x i32], [16 x i32]* %fusion.7, i64 0, i64 %fusion.7.indvar.dim.0
  store i32 %159, i32* %160, align 4, !alias.scope !143, !noalias !144
  %invar.inc8 = add nuw nsw i64 %fusion.7.indvar.dim.0, 1
  store i64 %invar.inc8, i64* %fusion.7.invar_address.dim.0, align 8
  br label %fusion.7.loop_header.dim.0

fusion.7.loop_exit.dim.0:                         ; preds = %fusion.7.loop_header.dim.0
  %161 = getelementptr inbounds [8 x i8*], [8 x i8*]* %parameter.7, i64 0, i64 7
  %162 = load i8*, i8** %161, align 8, !dereferenceable !2, !align !2
  %163 = bitcast i8* %162 to [4 x i32]*
  %164 = getelementptr inbounds i8*, i8** %buffer_table, i64 20
  %165 = load i8*, i8** %164, align 8, !invariant.load !0, !dereferenceable !1, !align !2
  %166 = getelementptr inbounds i8, i8* %165, i64 64
  %copy.87 = bitcast i8* %166 to [4 x i32]*
  %167 = bitcast [4 x i32]* %copy.87 to i8*
  %168 = bitcast [4 x i32]* %163 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %167, i8* align 1 %168, i64 16, i1 false)
  %169 = getelementptr inbounds i8*, i8** %buffer_table, i64 20
  %170 = load i8*, i8** %169, align 8, !invariant.load !0, !dereferenceable !1, !align !2
  %171 = getelementptr inbounds i8, i8* %170, i64 144
  %copy.95 = bitcast i8* %171 to [4 x i32]*
  %172 = bitcast [4 x i32]* %copy.95 to i8*
  %173 = bitcast [4 x i32]* %copy.86 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %172, i8* align 1 %173, i64 16, i1 false)
  %174 = getelementptr inbounds i8*, i8** %buffer_table, i64 20
  %175 = load i8*, i8** %174, align 8, !invariant.load !0, !dereferenceable !1, !align !2
  %176 = getelementptr inbounds i8, i8* %175, i64 256
  %add.141 = bitcast i8* %176 to i32*
  %177 = load i32, i32* %copy.80, align 4, !alias.scope !40, !noalias !136
  %178 = load i32, i32* bitcast ([4 x i8]* @0 to i32*), align 4, !alias.scope !145, !noalias !146
  %179 = add i32 %177, %178
  store i32 %179, i32* %add.141, align 4, !alias.scope !147, !noalias !148
  %180 = getelementptr inbounds i8*, i8** %buffer_table, i64 20
  %181 = load i8*, i8** %180, align 8, !invariant.load !0, !dereferenceable !1, !align !2
  %182 = getelementptr inbounds i8, i8* %181, i64 224
  %copy.91 = bitcast i8* %182 to i32*
  %183 = bitcast i32* %copy.91 to i8*
  %184 = bitcast i32* %copy.84 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %183, i8* align 1 %184, i64 4, i1 false)
  %185 = getelementptr inbounds [8 x i8*], [8 x i8*]* %parameter.7, i64 0, i64 5
  %186 = load i8*, i8** %185, align 8, !dereferenceable !5, !align !5
  %187 = bitcast i8* %186 to i32*
  %188 = getelementptr inbounds i8*, i8** %buffer_table, i64 20
  %189 = load i8*, i8** %188, align 8, !invariant.load !0, !dereferenceable !1, !align !2
  %190 = getelementptr inbounds i8, i8* %189, i64 192
  %copy.85 = bitcast i8* %190 to i32*
  %191 = bitcast i32* %copy.85 to i8*
  %192 = bitcast i32* %187 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %191, i8* align 1 %192, i64 4, i1 false)
  %193 = getelementptr inbounds i8*, i8** %buffer_table, i64 20
  %194 = load i8*, i8** %193, align 8, !invariant.load !0, !dereferenceable !1, !align !2
  %195 = getelementptr inbounds i8, i8* %194, i64 240
  %copy.93 = bitcast i8* %195 to i32*
  %196 = bitcast i32* %copy.93 to i8*
  %197 = bitcast i32* %copy.83 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %196, i8* align 1 %197, i64 4, i1 false)
  %198 = getelementptr inbounds i8*, i8** %buffer_table, i64 0
  %199 = load i8*, i8** %198, align 8, !invariant.load !0, !dereferenceable !4, !align !2
  %copy.94 = bitcast i8* %199 to [4 x i32]*
  %200 = bitcast [4 x i32]* %copy.94 to i8*
  %201 = bitcast [4 x i32]* %copy.87 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %200, i8* align 1 %201, i64 16, i1 false)
  %202 = getelementptr inbounds i8*, i8** %buffer_table, i64 20
  %203 = load i8*, i8** %202, align 8, !invariant.load !0, !dereferenceable !1, !align !2
  %204 = getelementptr inbounds i8, i8* %203, i64 176
  %copy.92 = bitcast i8* %204 to i32*
  %205 = bitcast i32* %copy.92 to i8*
  %206 = bitcast i32* %copy.85 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %205, i8* align 1 %206, i64 4, i1 false)
  %207 = getelementptr inbounds i8*, i8** %buffer_table, i64 20
  %208 = load i8*, i8** %207, align 8, !invariant.load !0, !dereferenceable !1, !align !2
  %tuple.102 = bitcast i8* %208 to [8 x i8*]*
  %209 = bitcast i32* %add.141 to i8*
  %210 = getelementptr inbounds [8 x i8*], [8 x i8*]* %tuple.102, i64 0, i64 0
  store i8* %209, i8** %210, align 8, !alias.scope !149, !noalias !150
  %211 = bitcast [16 x i32]* %fusion.7 to i8*
  %212 = getelementptr inbounds [8 x i8*], [8 x i8*]* %tuple.102, i64 0, i64 1
  store i8* %211, i8** %212, align 8, !alias.scope !149, !noalias !150
  %213 = bitcast [16 x i32]* %fusion.6 to i8*
  %214 = getelementptr inbounds [8 x i8*], [8 x i8*]* %tuple.102, i64 0, i64 2
  store i8* %213, i8** %214, align 8, !alias.scope !149, !noalias !150
  %215 = bitcast i32* %copy.91 to i8*
  %216 = getelementptr inbounds [8 x i8*], [8 x i8*]* %tuple.102, i64 0, i64 3
  store i8* %215, i8** %216, align 8, !alias.scope !149, !noalias !150
  %217 = bitcast i32* %copy.92 to i8*
  %218 = getelementptr inbounds [8 x i8*], [8 x i8*]* %tuple.102, i64 0, i64 4
  store i8* %217, i8** %218, align 8, !alias.scope !149, !noalias !150
  %219 = bitcast i32* %copy.93 to i8*
  %220 = getelementptr inbounds [8 x i8*], [8 x i8*]* %tuple.102, i64 0, i64 5
  store i8* %219, i8** %220, align 8, !alias.scope !149, !noalias !150
  %221 = bitcast [4 x i32]* %copy.94 to i8*
  %222 = getelementptr inbounds [8 x i8*], [8 x i8*]* %tuple.102, i64 0, i64 6
  store i8* %221, i8** %222, align 8, !alias.scope !149, !noalias !150
  %223 = bitcast [4 x i32]* %copy.95 to i8*
  %224 = getelementptr inbounds [8 x i8*], [8 x i8*]* %tuple.102, i64 0, i64 7
  store i8* %223, i8** %224, align 8, !alias.scope !149, !noalias !150
  ret void
}

; Function Attrs: uwtable
define internal void @cond_computation__3.860.clone(i8* %retval, i8* noalias %run_options, i8** noalias %params, i8** noalias %buffer_table, i64* noalias %prof_counters) #0 {
entry:
  %0 = getelementptr inbounds i8*, i8** %buffer_table, i64 20
  %1 = load i8*, i8** %0, align 8, !invariant.load !0, !dereferenceable !1, !align !2
  %parameter.6 = bitcast i8* %1 to [8 x i8*]*
  %2 = getelementptr inbounds [8 x i8*], [8 x i8*]* %parameter.6, i64 0, i64 0
  %3 = load i8*, i8** %2, align 8, !dereferenceable !5, !align !5
  %4 = bitcast i8* %3 to i32*
  %5 = getelementptr inbounds i8*, i8** %buffer_table, i64 20
  %6 = load i8*, i8** %5, align 8, !invariant.load !0, !dereferenceable !1, !align !2
  %compare.15 = getelementptr inbounds i8, i8* %6, i64 192
  %7 = load i32, i32* %4, align 4, !alias.scope !147, !noalias !151
  %8 = load i32, i32* bitcast ([4 x i8]* @8 to i32*), align 4, !alias.scope !154, !noalias !155
  %9 = icmp slt i32 %7, %8
  %10 = zext i1 %9 to i8
  store i8 %10, i8* %compare.15, align 1, !alias.scope !156, !noalias !157
  ret void
}

; Function Attrs: uwtable
define internal void @parallel_broadcast.1342(i8* %retval, i8* noalias %run_options, i8** noalias %params, i8** noalias %buffer_table, i64* noalias %dynamic_loop_bounds, i64* noalias %prof_counters) #0 {
entry:
  %broadcast.1342.clone.invar_address.dim.3 = alloca i64, align 8
  %broadcast.1342.clone.invar_address.dim.2 = alloca i64, align 8
  %broadcast.1342.clone.invar_address.dim.1 = alloca i64, align 8
  %broadcast.1342.clone.invar_address.dim.0 = alloca i64, align 8
  %0 = getelementptr inbounds i8*, i8** %buffer_table, i64 0
  %1 = load i8*, i8** %0, align 8, !invariant.load !0, !dereferenceable !4, !align !2
  %broadcast.1342.clone = bitcast i8* %1 to [32 x [64 x [64 x [16 x float]]]]*
  %dynamic_loop_bound_0 = getelementptr i64, i64* %dynamic_loop_bounds, i64 0
  %2 = load i64, i64* %dynamic_loop_bound_0, align 8
  %dynamic_loop_bound_1 = getelementptr i64, i64* %dynamic_loop_bounds, i64 1
  %3 = load i64, i64* %dynamic_loop_bound_1, align 8
  store i64 %2, i64* %broadcast.1342.clone.invar_address.dim.0, align 8
  br label %broadcast.1342.clone.loop_header.dim.0

broadcast.1342.clone.loop_header.dim.0:           ; preds = %broadcast.1342.clone.loop_exit.dim.1, %entry
  %broadcast.1342.clone.indvar.dim.0 = load i64, i64* %broadcast.1342.clone.invar_address.dim.0, align 8
  %4 = icmp uge i64 %broadcast.1342.clone.indvar.dim.0, %3
  br i1 %4, label %broadcast.1342.clone.loop_exit.dim.0, label %broadcast.1342.clone.loop_body.dim.0

broadcast.1342.clone.loop_body.dim.0:             ; preds = %broadcast.1342.clone.loop_header.dim.0
  store i64 0, i64* %broadcast.1342.clone.invar_address.dim.1, align 8
  br label %broadcast.1342.clone.loop_header.dim.1

broadcast.1342.clone.loop_header.dim.1:           ; preds = %broadcast.1342.clone.loop_exit.dim.2, %broadcast.1342.clone.loop_body.dim.0
  %broadcast.1342.clone.indvar.dim.1 = load i64, i64* %broadcast.1342.clone.invar_address.dim.1, align 8
  %5 = icmp uge i64 %broadcast.1342.clone.indvar.dim.1, 64
  br i1 %5, label %broadcast.1342.clone.loop_exit.dim.1, label %broadcast.1342.clone.loop_body.dim.1

broadcast.1342.clone.loop_body.dim.1:             ; preds = %broadcast.1342.clone.loop_header.dim.1
  store i64 0, i64* %broadcast.1342.clone.invar_address.dim.2, align 8
  br label %broadcast.1342.clone.loop_header.dim.2

broadcast.1342.clone.loop_header.dim.2:           ; preds = %broadcast.1342.clone.loop_exit.dim.3, %broadcast.1342.clone.loop_body.dim.1
  %broadcast.1342.clone.indvar.dim.2 = load i64, i64* %broadcast.1342.clone.invar_address.dim.2, align 8
  %6 = icmp uge i64 %broadcast.1342.clone.indvar.dim.2, 64
  br i1 %6, label %broadcast.1342.clone.loop_exit.dim.2, label %broadcast.1342.clone.loop_body.dim.2

broadcast.1342.clone.loop_body.dim.2:             ; preds = %broadcast.1342.clone.loop_header.dim.2
  store i64 0, i64* %broadcast.1342.clone.invar_address.dim.3, align 8
  br label %broadcast.1342.clone.loop_header.dim.3

broadcast.1342.clone.loop_header.dim.3:           ; preds = %broadcast.1342.clone.loop_body.dim.3, %broadcast.1342.clone.loop_body.dim.2
  %broadcast.1342.clone.indvar.dim.3 = load i64, i64* %broadcast.1342.clone.invar_address.dim.3, align 8
  %7 = icmp uge i64 %broadcast.1342.clone.indvar.dim.3, 16
  br i1 %7, label %broadcast.1342.clone.loop_exit.dim.3, label %broadcast.1342.clone.loop_body.dim.3

broadcast.1342.clone.loop_body.dim.3:             ; preds = %broadcast.1342.clone.loop_header.dim.3
  %8 = load float, float* bitcast ([4 x i8]* @3 to float*), align 4, !alias.scope !158, !noalias !160
  %9 = getelementptr inbounds [32 x [64 x [64 x [16 x float]]]], [32 x [64 x [64 x [16 x float]]]]* %broadcast.1342.clone, i64 0, i64 %broadcast.1342.clone.indvar.dim.0, i64 %broadcast.1342.clone.indvar.dim.1, i64 %broadcast.1342.clone.indvar.dim.2, i64 %broadcast.1342.clone.indvar.dim.3
  store float %8, float* %9, align 4, !alias.scope !160
  %invar.inc3 = add nuw nsw i64 %broadcast.1342.clone.indvar.dim.3, 1
  store i64 %invar.inc3, i64* %broadcast.1342.clone.invar_address.dim.3, align 8
  br label %broadcast.1342.clone.loop_header.dim.3

broadcast.1342.clone.loop_exit.dim.3:             ; preds = %broadcast.1342.clone.loop_header.dim.3
  %invar.inc2 = add nuw nsw i64 %broadcast.1342.clone.indvar.dim.2, 1
  store i64 %invar.inc2, i64* %broadcast.1342.clone.invar_address.dim.2, align 8
  br label %broadcast.1342.clone.loop_header.dim.2

broadcast.1342.clone.loop_exit.dim.2:             ; preds = %broadcast.1342.clone.loop_header.dim.2
  %invar.inc1 = add nuw nsw i64 %broadcast.1342.clone.indvar.dim.1, 1
  store i64 %invar.inc1, i64* %broadcast.1342.clone.invar_address.dim.1, align 8
  br label %broadcast.1342.clone.loop_header.dim.1

broadcast.1342.clone.loop_exit.dim.1:             ; preds = %broadcast.1342.clone.loop_header.dim.1
  %invar.inc = add nuw nsw i64 %broadcast.1342.clone.indvar.dim.0, 1
  store i64 %invar.inc, i64* %broadcast.1342.clone.invar_address.dim.0, align 8
  br label %broadcast.1342.clone.loop_header.dim.0

broadcast.1342.clone.loop_exit.dim.0:             ; preds = %broadcast.1342.clone.loop_header.dim.0
  ret void
}

; Function Attrs: uwtable
define internal void @primitive_computation_max.1351(i8* %retval, i8* noalias %run_options, i8** noalias %params, i8** noalias %buffer_table, i64* noalias %prof_counters) #0 {
entry:
  %maximum.1354 = alloca float, align 4
  %0 = getelementptr inbounds i8*, i8** %params, i64 0
  %1 = load i8*, i8** %0, align 8, !dereferenceable !5, !align !5
  %parameter.1352 = bitcast i8* %1 to float*
  %2 = getelementptr inbounds i8*, i8** %params, i64 1
  %3 = load i8*, i8** %2, align 8, !dereferenceable !5, !align !5
  %parameter.1353 = bitcast i8* %3 to float*
  %4 = load float, float* %parameter.1352, align 4, !alias.scope !162, !noalias !164
  %5 = load float, float* %parameter.1353, align 4, !alias.scope !166, !noalias !164
  %6 = fcmp reassoc nsz contract oge float %4, %5
  %7 = fcmp reassoc nsz contract une float %4, %4
  %8 = or i1 %6, %7
  %9 = select reassoc nsz contract i1 %8, float %4, float %5
  store float %9, float* %maximum.1354, align 4, !alias.scope !164
  %load_ret_value = load float, float* %maximum.1354, align 4
  %10 = bitcast i8* %retval to float*
  store float %load_ret_value, float* %10, align 4
  ret void
}

; Function Attrs: uwtable
define internal void @parallel_reduce-window.1355(i8* %retval, i8* noalias %run_options, i8** noalias %params, i8** noalias %buffer_table, i64* noalias %dynamic_loop_bounds, i64* noalias %prof_counters) #0 {
entry:
  %reducer_function_parameter_addresses = alloca i8*, i32 2, align 8
  %reducer_function_return_value_addr = alloca float, align 4
  %arg_addr8 = alloca float, align 4
  %arg_addr = alloca float, align 4
  %reduce-window.1355.clone.invar_address.window.3 = alloca i64, align 8
  %reduce-window.1355.clone.invar_address.window.2 = alloca i64, align 8
  %reduce-window.1355.clone.invar_address.window.1 = alloca i64, align 8
  %reduce-window.1355.clone.invar_address.window.0 = alloca i64, align 8
  %reduce_window_accum_ptr = alloca float, align 4
  %reduce-window.1355.clone.invar_address.dim.3 = alloca i64, align 8
  %reduce-window.1355.clone.invar_address.dim.2 = alloca i64, align 8
  %reduce-window.1355.clone.invar_address.dim.1 = alloca i64, align 8
  %reduce-window.1355.clone.invar_address.dim.0 = alloca i64, align 8
  %0 = getelementptr inbounds i8*, i8** %buffer_table, i64 20
  %1 = load i8*, i8** %0, align 8, !invariant.load !0, !dereferenceable !1, !align !2
  %2 = getelementptr inbounds i8, i8* %1, i64 16777280
  %p.1 = bitcast i8* %2 to [32 x [64 x [64 x [32 x float]]]]*
  %3 = getelementptr inbounds i8*, i8** %buffer_table, i64 0
  %4 = load i8*, i8** %3, align 8, !invariant.load !0, !dereferenceable !4, !align !2
  %reduce-window.1355.clone = bitcast i8* %4 to [32 x [63 x [63 x [32 x float]]]]*
  %dynamic_loop_bound_0 = getelementptr i64, i64* %dynamic_loop_bounds, i64 0
  %5 = load i64, i64* %dynamic_loop_bound_0, align 8
  %dynamic_loop_bound_1 = getelementptr i64, i64* %dynamic_loop_bounds, i64 1
  %6 = load i64, i64* %dynamic_loop_bound_1, align 8
  store i64 %5, i64* %reduce-window.1355.clone.invar_address.dim.0, align 8
  br label %reduce-window.1355.clone.loop_header.dim.0

reduce-window.1355.clone.loop_header.dim.0:       ; preds = %reduce-window.1355.clone.loop_exit.dim.1, %entry
  %reduce-window.1355.clone.indvar.dim.0 = load i64, i64* %reduce-window.1355.clone.invar_address.dim.0, align 8
  %7 = icmp uge i64 %reduce-window.1355.clone.indvar.dim.0, %6
  br i1 %7, label %reduce-window.1355.clone.loop_exit.dim.0, label %reduce-window.1355.clone.loop_body.dim.0

reduce-window.1355.clone.loop_body.dim.0:         ; preds = %reduce-window.1355.clone.loop_header.dim.0
  store i64 0, i64* %reduce-window.1355.clone.invar_address.dim.1, align 8
  br label %reduce-window.1355.clone.loop_header.dim.1

reduce-window.1355.clone.loop_header.dim.1:       ; preds = %reduce-window.1355.clone.loop_exit.dim.2, %reduce-window.1355.clone.loop_body.dim.0
  %reduce-window.1355.clone.indvar.dim.1 = load i64, i64* %reduce-window.1355.clone.invar_address.dim.1, align 8
  %8 = icmp uge i64 %reduce-window.1355.clone.indvar.dim.1, 63
  br i1 %8, label %reduce-window.1355.clone.loop_exit.dim.1, label %reduce-window.1355.clone.loop_body.dim.1

reduce-window.1355.clone.loop_body.dim.1:         ; preds = %reduce-window.1355.clone.loop_header.dim.1
  store i64 0, i64* %reduce-window.1355.clone.invar_address.dim.2, align 8
  br label %reduce-window.1355.clone.loop_header.dim.2

reduce-window.1355.clone.loop_header.dim.2:       ; preds = %reduce-window.1355.clone.loop_exit.dim.3, %reduce-window.1355.clone.loop_body.dim.1
  %reduce-window.1355.clone.indvar.dim.2 = load i64, i64* %reduce-window.1355.clone.invar_address.dim.2, align 8
  %9 = icmp uge i64 %reduce-window.1355.clone.indvar.dim.2, 63
  br i1 %9, label %reduce-window.1355.clone.loop_exit.dim.2, label %reduce-window.1355.clone.loop_body.dim.2

reduce-window.1355.clone.loop_body.dim.2:         ; preds = %reduce-window.1355.clone.loop_header.dim.2
  store i64 0, i64* %reduce-window.1355.clone.invar_address.dim.3, align 8
  br label %reduce-window.1355.clone.loop_header.dim.3

reduce-window.1355.clone.loop_header.dim.3:       ; preds = %reduce-window.1355.clone.loop_exit.window.0, %reduce-window.1355.clone.loop_body.dim.2
  %reduce-window.1355.clone.indvar.dim.3 = load i64, i64* %reduce-window.1355.clone.invar_address.dim.3, align 8
  %10 = icmp uge i64 %reduce-window.1355.clone.indvar.dim.3, 32
  br i1 %10, label %reduce-window.1355.clone.loop_exit.dim.3, label %reduce-window.1355.clone.loop_body.dim.3

reduce-window.1355.clone.loop_body.dim.3:         ; preds = %reduce-window.1355.clone.loop_header.dim.3
  %11 = load float, float* bitcast ([4 x i8]* @7 to float*), align 4, !alias.scope !168, !noalias !170
  store float %11, float* %reduce_window_accum_ptr, align 4
  store i64 0, i64* %reduce-window.1355.clone.invar_address.window.0, align 8
  br label %reduce-window.1355.clone.loop_header.window.0

reduce-window.1355.clone.loop_header.window.0:    ; preds = %reduce-window.1355.clone.loop_exit.window.1, %reduce-window.1355.clone.loop_body.dim.3
  %reduce-window.1355.clone.indvar.window.0 = load i64, i64* %reduce-window.1355.clone.invar_address.window.0, align 8
  %12 = icmp uge i64 %reduce-window.1355.clone.indvar.window.0, 1
  br i1 %12, label %reduce-window.1355.clone.loop_exit.window.0, label %reduce-window.1355.clone.loop_body.window.0

reduce-window.1355.clone.loop_body.window.0:      ; preds = %reduce-window.1355.clone.loop_header.window.0
  store i64 0, i64* %reduce-window.1355.clone.invar_address.window.1, align 8
  br label %reduce-window.1355.clone.loop_header.window.1

reduce-window.1355.clone.loop_header.window.1:    ; preds = %reduce-window.1355.clone.loop_exit.window.2, %reduce-window.1355.clone.loop_body.window.0
  %reduce-window.1355.clone.indvar.window.1 = load i64, i64* %reduce-window.1355.clone.invar_address.window.1, align 8
  %13 = icmp uge i64 %reduce-window.1355.clone.indvar.window.1, 2
  br i1 %13, label %reduce-window.1355.clone.loop_exit.window.1, label %reduce-window.1355.clone.loop_body.window.1

reduce-window.1355.clone.loop_body.window.1:      ; preds = %reduce-window.1355.clone.loop_header.window.1
  store i64 0, i64* %reduce-window.1355.clone.invar_address.window.2, align 8
  br label %reduce-window.1355.clone.loop_header.window.2

reduce-window.1355.clone.loop_header.window.2:    ; preds = %reduce-window.1355.clone.loop_exit.window.3, %reduce-window.1355.clone.loop_body.window.1
  %reduce-window.1355.clone.indvar.window.2 = load i64, i64* %reduce-window.1355.clone.invar_address.window.2, align 8
  %14 = icmp uge i64 %reduce-window.1355.clone.indvar.window.2, 2
  br i1 %14, label %reduce-window.1355.clone.loop_exit.window.2, label %reduce-window.1355.clone.loop_body.window.2

reduce-window.1355.clone.loop_body.window.2:      ; preds = %reduce-window.1355.clone.loop_header.window.2
  store i64 0, i64* %reduce-window.1355.clone.invar_address.window.3, align 8
  br label %reduce-window.1355.clone.loop_header.window.3

reduce-window.1355.clone.loop_header.window.3:    ; preds = %in_bounds-after, %reduce-window.1355.clone.loop_body.window.2
  %reduce-window.1355.clone.indvar.window.3 = load i64, i64* %reduce-window.1355.clone.invar_address.window.3, align 8
  %15 = icmp uge i64 %reduce-window.1355.clone.indvar.window.3, 1
  br i1 %15, label %reduce-window.1355.clone.loop_exit.window.3, label %reduce-window.1355.clone.loop_body.window.3

reduce-window.1355.clone.loop_body.window.3:      ; preds = %reduce-window.1355.clone.loop_header.window.3
  %16 = mul nsw i64 %reduce-window.1355.clone.indvar.dim.0, 1
  %17 = mul nsw i64 %reduce-window.1355.clone.indvar.window.0, 1
  %18 = add nsw i64 %16, %17
  %19 = sub nsw i64 %18, 0
  %20 = srem i64 %19, 1
  %21 = icmp eq i64 %20, 0
  %22 = and i1 true, %21
  %23 = sdiv i64 %19, 1
  %24 = icmp ult i64 %23, 32
  %25 = and i1 %22, %24
  %26 = mul nsw i64 %reduce-window.1355.clone.indvar.dim.1, 1
  %27 = mul nsw i64 %reduce-window.1355.clone.indvar.window.1, 1
  %28 = add nsw i64 %26, %27
  %29 = sub nsw i64 %28, 0
  %30 = srem i64 %29, 1
  %31 = icmp eq i64 %30, 0
  %32 = and i1 %25, %31
  %33 = sdiv i64 %29, 1
  %34 = icmp ult i64 %33, 64
  %35 = and i1 %32, %34
  %36 = mul nsw i64 %reduce-window.1355.clone.indvar.dim.2, 1
  %37 = mul nsw i64 %reduce-window.1355.clone.indvar.window.2, 1
  %38 = add nsw i64 %36, %37
  %39 = sub nsw i64 %38, 0
  %40 = srem i64 %39, 1
  %41 = icmp eq i64 %40, 0
  %42 = and i1 %35, %41
  %43 = sdiv i64 %39, 1
  %44 = icmp ult i64 %43, 64
  %45 = and i1 %42, %44
  %46 = mul nsw i64 %reduce-window.1355.clone.indvar.dim.3, 1
  %47 = mul nsw i64 %reduce-window.1355.clone.indvar.window.3, 1
  %48 = add nsw i64 %46, %47
  %49 = sub nsw i64 %48, 0
  %50 = srem i64 %49, 1
  %51 = icmp eq i64 %50, 0
  %52 = and i1 %45, %51
  %53 = sdiv i64 %49, 1
  %54 = icmp ult i64 %53, 32
  %55 = and i1 %52, %54
  br i1 %55, label %in_bounds-true, label %in_bounds-false

in_bounds-after:                                  ; preds = %in_bounds-false, %in_bounds-true
  %invar.inc7 = add nuw nsw i64 %reduce-window.1355.clone.indvar.window.3, 1
  store i64 %invar.inc7, i64* %reduce-window.1355.clone.invar_address.window.3, align 8
  br label %reduce-window.1355.clone.loop_header.window.3

reduce-window.1355.clone.loop_exit.window.3:      ; preds = %reduce-window.1355.clone.loop_header.window.3
  %invar.inc6 = add nuw nsw i64 %reduce-window.1355.clone.indvar.window.2, 1
  store i64 %invar.inc6, i64* %reduce-window.1355.clone.invar_address.window.2, align 8
  br label %reduce-window.1355.clone.loop_header.window.2

reduce-window.1355.clone.loop_exit.window.2:      ; preds = %reduce-window.1355.clone.loop_header.window.2
  %invar.inc5 = add nuw nsw i64 %reduce-window.1355.clone.indvar.window.1, 1
  store i64 %invar.inc5, i64* %reduce-window.1355.clone.invar_address.window.1, align 8
  br label %reduce-window.1355.clone.loop_header.window.1

reduce-window.1355.clone.loop_exit.window.1:      ; preds = %reduce-window.1355.clone.loop_header.window.1
  %invar.inc4 = add nuw nsw i64 %reduce-window.1355.clone.indvar.window.0, 1
  store i64 %invar.inc4, i64* %reduce-window.1355.clone.invar_address.window.0, align 8
  br label %reduce-window.1355.clone.loop_header.window.0

reduce-window.1355.clone.loop_exit.window.0:      ; preds = %reduce-window.1355.clone.loop_header.window.0
  %56 = load float, float* %reduce_window_accum_ptr, align 4
  %57 = getelementptr inbounds [32 x [63 x [63 x [32 x float]]]], [32 x [63 x [63 x [32 x float]]]]* %reduce-window.1355.clone, i64 0, i64 %reduce-window.1355.clone.indvar.dim.0, i64 %reduce-window.1355.clone.indvar.dim.1, i64 %reduce-window.1355.clone.indvar.dim.2, i64 %reduce-window.1355.clone.indvar.dim.3
  store float %56, float* %57, align 4, !alias.scope !170
  %invar.inc3 = add nuw nsw i64 %reduce-window.1355.clone.indvar.dim.3, 1
  store i64 %invar.inc3, i64* %reduce-window.1355.clone.invar_address.dim.3, align 8
  br label %reduce-window.1355.clone.loop_header.dim.3

reduce-window.1355.clone.loop_exit.dim.3:         ; preds = %reduce-window.1355.clone.loop_header.dim.3
  %invar.inc2 = add nuw nsw i64 %reduce-window.1355.clone.indvar.dim.2, 1
  store i64 %invar.inc2, i64* %reduce-window.1355.clone.invar_address.dim.2, align 8
  br label %reduce-window.1355.clone.loop_header.dim.2

reduce-window.1355.clone.loop_exit.dim.2:         ; preds = %reduce-window.1355.clone.loop_header.dim.2
  %invar.inc1 = add nuw nsw i64 %reduce-window.1355.clone.indvar.dim.1, 1
  store i64 %invar.inc1, i64* %reduce-window.1355.clone.invar_address.dim.1, align 8
  br label %reduce-window.1355.clone.loop_header.dim.1

reduce-window.1355.clone.loop_exit.dim.1:         ; preds = %reduce-window.1355.clone.loop_header.dim.1
  %invar.inc = add nuw nsw i64 %reduce-window.1355.clone.indvar.dim.0, 1
  store i64 %invar.inc, i64* %reduce-window.1355.clone.invar_address.dim.0, align 8
  br label %reduce-window.1355.clone.loop_header.dim.0

reduce-window.1355.clone.loop_exit.dim.0:         ; preds = %reduce-window.1355.clone.loop_header.dim.0
  ret void

in_bounds-true:                                   ; preds = %reduce-window.1355.clone.loop_body.window.3
  %58 = getelementptr inbounds [32 x [64 x [64 x [32 x float]]]], [32 x [64 x [64 x [32 x float]]]]* %p.1, i64 0, i64 %23, i64 %33, i64 %43, i64 %53
  %59 = load float, float* %58, align 4, !alias.scope !172, !noalias !170
  %60 = load float, float* %reduce_window_accum_ptr, align 4
  store float %60, float* %arg_addr, align 4
  store float %59, float* %arg_addr8, align 4
  %reducer_function_parameter_0_address_as_i8ptr = bitcast float* %arg_addr to i8*
  %61 = getelementptr inbounds i8*, i8** %reducer_function_parameter_addresses, i64 0
  store i8* %reducer_function_parameter_0_address_as_i8ptr, i8** %61, align 8
  %reducer_function_parameter_1_address_as_i8ptr = bitcast float* %arg_addr8 to i8*
  %62 = getelementptr inbounds i8*, i8** %reducer_function_parameter_addresses, i64 1
  store i8* %reducer_function_parameter_1_address_as_i8ptr, i8** %62, align 8
  %63 = bitcast float* %reducer_function_return_value_addr to i8*
  call void @primitive_computation_max.1351(i8* %63, i8* %run_options, i8** %reducer_function_parameter_addresses, i8** null, i64* %prof_counters)
  %64 = load float, float* %reducer_function_return_value_addr, align 4
  store float %64, float* %reduce_window_accum_ptr, align 4
  br label %in_bounds-after

in_bounds-false:                                  ; preds = %reduce-window.1355.clone.loop_body.window.3
  br label %in_bounds-after
}

; Function Attrs: uwtable
define internal void @parallel_fusion.8(i8* %retval, i8* noalias %run_options, i8** noalias %params, i8** noalias %buffer_table, i64* noalias %dynamic_loop_bounds, i64* noalias %prof_counters) #0 {
entry:
  %fusion.8.clone.invar_address.dim.3 = alloca i64, align 8
  %fusion.8.clone.invar_address.dim.2 = alloca i64, align 8
  %fusion.8.clone.invar_address.dim.1 = alloca i64, align 8
  %fusion.8.clone.invar_address.dim.0 = alloca i64, align 8
  %0 = getelementptr inbounds i8*, i8** %buffer_table, i64 20
  %1 = load i8*, i8** %0, align 8, !invariant.load !0, !dereferenceable !1, !align !2
  %2 = getelementptr inbounds i8, i8* %1, i64 64
  %p.12 = bitcast i8* %2 to [32 x [64 x [64 x [32 x float]]]]*
  %3 = getelementptr inbounds i8*, i8** %buffer_table, i64 20
  %4 = load i8*, i8** %3, align 8, !invariant.load !0, !dereferenceable !1, !align !2
  %5 = getelementptr inbounds i8, i8* %4, i64 33554496
  %p.13 = bitcast i8* %5 to [1 x [1 x [1 x [32 x float]]]]*
  %6 = getelementptr inbounds i8*, i8** %buffer_table, i64 20
  %7 = load i8*, i8** %6, align 8, !invariant.load !0, !dereferenceable !1, !align !2
  %8 = getelementptr inbounds i8, i8* %7, i64 33554624
  %p.14 = bitcast i8* %8 to [1 x [1 x [1 x [32 x float]]]]*
  %9 = getelementptr inbounds i8*, i8** %buffer_table, i64 20
  %10 = load i8*, i8** %9, align 8, !invariant.load !0, !dereferenceable !1, !align !2
  %11 = getelementptr inbounds i8, i8* %10, i64 33554816
  %p.15 = bitcast i8* %11 to [16 x i32]*
  %12 = getelementptr inbounds i8*, i8** %buffer_table, i64 20
  %13 = load i8*, i8** %12, align 8, !invariant.load !0, !dereferenceable !1, !align !2
  %14 = getelementptr inbounds i8, i8* %13, i64 33554752
  %p.16 = bitcast i8* %14 to [16 x i32]*
  %15 = getelementptr inbounds i8*, i8** %buffer_table, i64 20
  %16 = load i8*, i8** %15, align 8, !invariant.load !0, !dereferenceable !1, !align !2
  %17 = getelementptr inbounds i8, i8* %16, i64 16777280
  %fusion.8.clone = bitcast i8* %17 to [32 x [64 x [64 x [32 x float]]]]*
  %dynamic_loop_bound_0 = getelementptr i64, i64* %dynamic_loop_bounds, i64 0
  %18 = load i64, i64* %dynamic_loop_bound_0, align 8
  %dynamic_loop_bound_1 = getelementptr i64, i64* %dynamic_loop_bounds, i64 1
  %19 = load i64, i64* %dynamic_loop_bound_1, align 8
  store i64 %18, i64* %fusion.8.clone.invar_address.dim.0, align 8
  br label %fusion.8.clone.loop_header.dim.0

fusion.8.clone.loop_header.dim.0:                 ; preds = %fusion.8.clone.loop_exit.dim.1, %entry
  %fusion.8.clone.indvar.dim.0 = load i64, i64* %fusion.8.clone.invar_address.dim.0, align 8
  %20 = icmp uge i64 %fusion.8.clone.indvar.dim.0, %19
  br i1 %20, label %fusion.8.clone.loop_exit.dim.0, label %fusion.8.clone.loop_body.dim.0

fusion.8.clone.loop_body.dim.0:                   ; preds = %fusion.8.clone.loop_header.dim.0
  store i64 0, i64* %fusion.8.clone.invar_address.dim.1, align 8
  br label %fusion.8.clone.loop_header.dim.1

fusion.8.clone.loop_header.dim.1:                 ; preds = %fusion.8.clone.loop_exit.dim.2, %fusion.8.clone.loop_body.dim.0
  %fusion.8.clone.indvar.dim.1 = load i64, i64* %fusion.8.clone.invar_address.dim.1, align 8
  %21 = icmp uge i64 %fusion.8.clone.indvar.dim.1, 64
  br i1 %21, label %fusion.8.clone.loop_exit.dim.1, label %fusion.8.clone.loop_body.dim.1

fusion.8.clone.loop_body.dim.1:                   ; preds = %fusion.8.clone.loop_header.dim.1
  store i64 0, i64* %fusion.8.clone.invar_address.dim.2, align 8
  br label %fusion.8.clone.loop_header.dim.2

fusion.8.clone.loop_header.dim.2:                 ; preds = %fusion.8.clone.loop_exit.dim.3, %fusion.8.clone.loop_body.dim.1
  %fusion.8.clone.indvar.dim.2 = load i64, i64* %fusion.8.clone.invar_address.dim.2, align 8
  %22 = icmp uge i64 %fusion.8.clone.indvar.dim.2, 64
  br i1 %22, label %fusion.8.clone.loop_exit.dim.2, label %fusion.8.clone.loop_body.dim.2

fusion.8.clone.loop_body.dim.2:                   ; preds = %fusion.8.clone.loop_header.dim.2
  store i64 0, i64* %fusion.8.clone.invar_address.dim.3, align 8
  br label %fusion.8.clone.loop_header.dim.3

fusion.8.clone.loop_header.dim.3:                 ; preds = %concatenate.28.merge, %fusion.8.clone.loop_body.dim.2
  %fusion.8.clone.indvar.dim.3 = load i64, i64* %fusion.8.clone.invar_address.dim.3, align 8
  %23 = icmp uge i64 %fusion.8.clone.indvar.dim.3, 32
  br i1 %23, label %fusion.8.clone.loop_exit.dim.3, label %fusion.8.clone.loop_body.dim.3

fusion.8.clone.loop_body.dim.3:                   ; preds = %fusion.8.clone.loop_header.dim.3
  %24 = getelementptr inbounds [32 x [64 x [64 x [32 x float]]]], [32 x [64 x [64 x [32 x float]]]]* %p.12, i64 0, i64 %fusion.8.clone.indvar.dim.0, i64 %fusion.8.clone.indvar.dim.1, i64 %fusion.8.clone.indvar.dim.2, i64 %fusion.8.clone.indvar.dim.3
  %25 = load float, float* %24, align 4, !alias.scope !174, !noalias !172
  %26 = load float, float* bitcast ([4 x i8]* @41 to float*), align 4
  %27 = icmp ult i64 %fusion.8.clone.indvar.dim.3, 16
  br i1 %27, label %concat_index_from_operand_id0, label %concat_index_not_from_operand0

concat_index_from_operand_id0:                    ; preds = %fusion.8.clone.loop_body.dim.3
  %28 = phi i64 [ 0, %fusion.8.clone.loop_body.dim.3 ]
  %29 = sub nsw i64 %fusion.8.clone.indvar.dim.3, %28
  %30 = getelementptr inbounds [16 x i32], [16 x i32]* %p.15, i64 0, i64 %29
  %31 = load i32, i32* %30, align 4, !alias.scope !143, !noalias !172
  br label %concatenate.28.merge

concat_index_from_operand_id1:                    ; preds = %concat_index_not_from_operand0
  %32 = phi i64 [ 16, %concat_index_not_from_operand0 ]
  %33 = sub nsw i64 %fusion.8.clone.indvar.dim.3, %32
  %34 = getelementptr inbounds [16 x i32], [16 x i32]* %p.16, i64 0, i64 %33
  %35 = load i32, i32* %34, align 4, !alias.scope !139, !noalias !172
  br label %concatenate.28.merge

concat_index_not_from_operand0:                   ; preds = %fusion.8.clone.loop_body.dim.3
  %36 = icmp ult i64 %fusion.8.clone.indvar.dim.3, 32
  br i1 %36, label %concat_index_from_operand_id1, label %concat_index_not_from_operand1

concat_index_not_from_operand1:                   ; preds = %concat_index_not_from_operand0
  unreachable

concatenate.28.merge:                             ; preds = %concat_index_from_operand_id1, %concat_index_from_operand_id0
  %37 = phi i32 [ %31, %concat_index_from_operand_id0 ], [ %35, %concat_index_from_operand_id1 ]
  %38 = load i32, i32* bitcast ([4 x i8]* @42 to i32*), align 4
  %39 = lshr i32 %37, %38
  %shft.chk = icmp ult i32 %38, 32
  %40 = select i1 %shft.chk, i32 %39, i32 0
  %41 = load i32, i32* bitcast ([4 x i8]* @43 to i32*), align 4
  %42 = or i32 %40, %41
  %43 = bitcast i32 %42 to float
  %44 = load float, float* bitcast ([4 x i8]* @44 to float*), align 4
  %45 = fadd reassoc nsz contract float %43, %44
  %46 = load float, float* bitcast ([4 x i8]* @45 to float*), align 4
  %47 = fmul reassoc nsz contract float %45, %46
  %48 = load float, float* bitcast ([4 x i8]* @46 to float*), align 4
  %49 = fadd reassoc nsz contract float %47, %48
  %50 = fcmp reassoc nsz contract oge float %26, %49
  %51 = fcmp reassoc nsz contract une float %26, %26
  %52 = or i1 %50, %51
  %53 = select reassoc nsz contract i1 %52, float %26, float %49
  %54 = call reassoc nsz contract float @llvm.fabs.f32(float %53)
  %55 = load float, float* bitcast ([4 x i8]* @47 to float*), align 4
  %56 = fcmp reassoc nsz contract oeq float %54, %55
  %57 = zext i1 %56 to i8
  %58 = load float, float* bitcast ([4 x i8]* @48 to float*), align 4
  %59 = fmul reassoc nsz contract float %53, %58
  %60 = getelementptr inbounds [1 x [1 x [1 x [32 x float]]]], [1 x [1 x [1 x [32 x float]]]]* %p.14, i64 0, i64 0, i64 0, i64 0, i64 %fusion.8.clone.indvar.dim.3
  %61 = load float, float* %60, align 4, !alias.scope !176, !noalias !172
  %62 = fneg reassoc nsz contract float %61
  %63 = load float, float* bitcast ([4 x i8]* @49 to float*), align 4
  %64 = fcmp reassoc nsz contract olt float %62, %63
  %65 = zext i1 %64 to i8
  %66 = load float, float* bitcast ([4 x i8]* @50 to float*), align 4
  %67 = load float, float* bitcast ([4 x i8]* @51 to float*), align 4
  %68 = trunc i8 %65 to i1
  %69 = select reassoc nsz contract i1 %68, float %66, float %67
  %70 = load float, float* bitcast ([4 x i8]* @52 to float*), align 4
  %71 = load float, float* bitcast ([4 x i8]* @53 to float*), align 4
  %72 = trunc i8 %65 to i1
  %73 = select reassoc nsz contract i1 %72, float %70, float %71
  %74 = load float, float* bitcast ([4 x i8]* @54 to float*), align 4
  %75 = load float, float* bitcast ([4 x i8]* @55 to float*), align 4
  %76 = trunc i8 %65 to i1
  %77 = select reassoc nsz contract i1 %76, float %74, float %75
  %78 = load float, float* bitcast ([4 x i8]* @56 to float*), align 4
  %79 = load float, float* bitcast ([4 x i8]* @57 to float*), align 4
  %80 = trunc i8 %65 to i1
  %81 = select reassoc nsz contract i1 %80, float %78, float %79
  %82 = load float, float* bitcast ([4 x i8]* @58 to float*), align 4
  %83 = load float, float* bitcast ([4 x i8]* @59 to float*), align 4
  %84 = trunc i8 %65 to i1
  %85 = select reassoc nsz contract i1 %84, float %82, float %83
  %86 = load float, float* bitcast ([4 x i8]* @60 to float*), align 4
  %87 = load float, float* bitcast ([4 x i8]* @61 to float*), align 4
  %88 = trunc i8 %65 to i1
  %89 = select reassoc nsz contract i1 %88, float %86, float %87
  %90 = load float, float* bitcast ([4 x i8]* @62 to float*), align 4
  %91 = load float, float* bitcast ([4 x i8]* @63 to float*), align 4
  %92 = trunc i8 %65 to i1
  %93 = select reassoc nsz contract i1 %92, float %90, float %91
  %94 = load float, float* bitcast ([4 x i8]* @64 to float*), align 4
  %95 = load float, float* bitcast ([4 x i8]* @65 to float*), align 4
  %96 = trunc i8 %65 to i1
  %97 = select reassoc nsz contract i1 %96, float %94, float %95
  %98 = load float, float* bitcast ([4 x i8]* @66 to float*), align 4
  %99 = load float, float* bitcast ([4 x i8]* @67 to float*), align 4
  %100 = trunc i8 %65 to i1
  %101 = select reassoc nsz contract i1 %100, float %98, float %99
  %102 = load float, float* bitcast ([4 x i8]* @68 to float*), align 4
  %103 = fadd reassoc nsz contract float %62, %102
  %104 = getelementptr inbounds [1 x [1 x [1 x [32 x float]]]], [1 x [1 x [1 x [32 x float]]]]* %p.13, i64 0, i64 0, i64 0, i64 0, i64 %fusion.8.clone.indvar.dim.3
  %105 = load float, float* %104, align 4, !alias.scope !178, !noalias !172
  %106 = load float, float* bitcast ([4 x i8]* @69 to float*), align 4
  %107 = fadd reassoc nsz contract float %105, %106
  %108 = trunc i8 %65 to i1
  %109 = select reassoc nsz contract i1 %108, float %103, float %107
  %110 = fmul reassoc nsz contract float %101, %109
  %111 = fadd reassoc nsz contract float %97, %110
  %112 = fmul reassoc nsz contract float %111, %109
  %113 = fadd reassoc nsz contract float %93, %112
  %114 = fmul reassoc nsz contract float %113, %109
  %115 = fadd reassoc nsz contract float %89, %114
  %116 = fmul reassoc nsz contract float %115, %109
  %117 = fadd reassoc nsz contract float %85, %116
  %118 = fmul reassoc nsz contract float %117, %109
  %119 = fadd reassoc nsz contract float %81, %118
  %120 = fmul reassoc nsz contract float %119, %109
  %121 = fadd reassoc nsz contract float %77, %120
  %122 = fmul reassoc nsz contract float %121, %109
  %123 = fadd reassoc nsz contract float %73, %122
  %124 = fmul reassoc nsz contract float %123, %109
  %125 = fadd reassoc nsz contract float %69, %124
  %126 = fmul reassoc nsz contract float %125, %53
  %127 = trunc i8 %57 to i1
  %128 = select reassoc nsz contract i1 %127, float %59, float %126
  %129 = load float, float* bitcast ([4 x i8]* @70 to float*), align 4
  %130 = fmul reassoc nsz contract float %128, %129
  %131 = fadd reassoc nsz contract float %25, %130
  %132 = load float, float* bitcast ([4 x i8]* @71 to float*), align 4
  %133 = fcmp reassoc nsz contract oge float %131, %132
  %134 = fcmp reassoc nsz contract une float %131, %131
  %135 = or i1 %133, %134
  %136 = select reassoc nsz contract i1 %135, float %131, float %132
  %137 = getelementptr inbounds [32 x [64 x [64 x [32 x float]]]], [32 x [64 x [64 x [32 x float]]]]* %fusion.8.clone, i64 0, i64 %fusion.8.clone.indvar.dim.0, i64 %fusion.8.clone.indvar.dim.1, i64 %fusion.8.clone.indvar.dim.2, i64 %fusion.8.clone.indvar.dim.3
  store float %136, float* %137, align 4, !alias.scope !172
  %invar.inc3 = add nuw nsw i64 %fusion.8.clone.indvar.dim.3, 1
  store i64 %invar.inc3, i64* %fusion.8.clone.invar_address.dim.3, align 8
  br label %fusion.8.clone.loop_header.dim.3

fusion.8.clone.loop_exit.dim.3:                   ; preds = %fusion.8.clone.loop_header.dim.3
  %invar.inc2 = add nuw nsw i64 %fusion.8.clone.indvar.dim.2, 1
  store i64 %invar.inc2, i64* %fusion.8.clone.invar_address.dim.2, align 8
  br label %fusion.8.clone.loop_header.dim.2

fusion.8.clone.loop_exit.dim.2:                   ; preds = %fusion.8.clone.loop_header.dim.2
  %invar.inc1 = add nuw nsw i64 %fusion.8.clone.indvar.dim.1, 1
  store i64 %invar.inc1, i64* %fusion.8.clone.invar_address.dim.1, align 8
  br label %fusion.8.clone.loop_header.dim.1

fusion.8.clone.loop_exit.dim.1:                   ; preds = %fusion.8.clone.loop_header.dim.1
  %invar.inc = add nuw nsw i64 %fusion.8.clone.indvar.dim.0, 1
  store i64 %invar.inc, i64* %fusion.8.clone.invar_address.dim.0, align 8
  br label %fusion.8.clone.loop_header.dim.0

fusion.8.clone.loop_exit.dim.0:                   ; preds = %fusion.8.clone.loop_header.dim.0
  ret void
}

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.fabs.f32(float) #3

; Function Attrs: uwtable
define internal void @parallel_fusion.16(i8* %retval, i8* noalias %run_options, i8** noalias %params, i8** noalias %buffer_table, i64* noalias %dynamic_loop_bounds, i64* noalias %prof_counters) #0 {
entry:
  %fusion.16.clone.invar_address.dim.3 = alloca i64, align 8
  %fusion.16.clone.invar_address.dim.2 = alloca i64, align 8
  %fusion.16.clone.invar_address.dim.1 = alloca i64, align 8
  %fusion.16.clone.invar_address.dim.0 = alloca i64, align 8
  %0 = getelementptr inbounds i8*, i8** %buffer_table, i64 0
  %1 = load i8*, i8** %0, align 8, !invariant.load !0, !dereferenceable !4, !align !2
  %p.17 = bitcast i8* %1 to [2304 x i32]*
  %2 = getelementptr inbounds i8*, i8** %buffer_table, i64 20
  %3 = load i8*, i8** %2, align 8, !invariant.load !0, !dereferenceable !1, !align !2
  %4 = getelementptr inbounds i8, i8* %3, i64 18496
  %p.18 = bitcast i8* %4 to [2304 x i32]*
  %5 = getelementptr inbounds i8*, i8** %buffer_table, i64 20
  %6 = load i8*, i8** %5, align 8, !invariant.load !0, !dereferenceable !1, !align !2
  %7 = getelementptr inbounds i8, i8* %6, i64 16777280
  %fusion.16.clone = bitcast i8* %7 to [3 x [3 x [16 x [32 x float]]]]*
  %dynamic_loop_bound_0 = getelementptr i64, i64* %dynamic_loop_bounds, i64 0
  %8 = load i64, i64* %dynamic_loop_bound_0, align 8
  %dynamic_loop_bound_1 = getelementptr i64, i64* %dynamic_loop_bounds, i64 1
  %9 = load i64, i64* %dynamic_loop_bound_1, align 8
  %dynamic_loop_bound_2 = getelementptr i64, i64* %dynamic_loop_bounds, i64 2
  %10 = load i64, i64* %dynamic_loop_bound_2, align 8
  %dynamic_loop_bound_3 = getelementptr i64, i64* %dynamic_loop_bounds, i64 3
  %11 = load i64, i64* %dynamic_loop_bound_3, align 8
  store i64 %8, i64* %fusion.16.clone.invar_address.dim.0, align 8
  br label %fusion.16.clone.loop_header.dim.0

fusion.16.clone.loop_header.dim.0:                ; preds = %fusion.16.clone.loop_exit.dim.1, %entry
  %fusion.16.clone.indvar.dim.0 = load i64, i64* %fusion.16.clone.invar_address.dim.0, align 8
  %12 = icmp uge i64 %fusion.16.clone.indvar.dim.0, %9
  br i1 %12, label %fusion.16.clone.loop_exit.dim.0, label %fusion.16.clone.loop_body.dim.0

fusion.16.clone.loop_body.dim.0:                  ; preds = %fusion.16.clone.loop_header.dim.0
  store i64 %10, i64* %fusion.16.clone.invar_address.dim.1, align 8
  br label %fusion.16.clone.loop_header.dim.1

fusion.16.clone.loop_header.dim.1:                ; preds = %fusion.16.clone.loop_exit.dim.2, %fusion.16.clone.loop_body.dim.0
  %fusion.16.clone.indvar.dim.1 = load i64, i64* %fusion.16.clone.invar_address.dim.1, align 8
  %13 = icmp uge i64 %fusion.16.clone.indvar.dim.1, %11
  br i1 %13, label %fusion.16.clone.loop_exit.dim.1, label %fusion.16.clone.loop_body.dim.1

fusion.16.clone.loop_body.dim.1:                  ; preds = %fusion.16.clone.loop_header.dim.1
  store i64 0, i64* %fusion.16.clone.invar_address.dim.2, align 8
  br label %fusion.16.clone.loop_header.dim.2

fusion.16.clone.loop_header.dim.2:                ; preds = %fusion.16.clone.loop_exit.dim.3, %fusion.16.clone.loop_body.dim.1
  %fusion.16.clone.indvar.dim.2 = load i64, i64* %fusion.16.clone.invar_address.dim.2, align 8
  %14 = icmp uge i64 %fusion.16.clone.indvar.dim.2, 16
  br i1 %14, label %fusion.16.clone.loop_exit.dim.2, label %fusion.16.clone.loop_body.dim.2

fusion.16.clone.loop_body.dim.2:                  ; preds = %fusion.16.clone.loop_header.dim.2
  store i64 0, i64* %fusion.16.clone.invar_address.dim.3, align 8
  br label %fusion.16.clone.loop_header.dim.3

fusion.16.clone.loop_header.dim.3:                ; preds = %concatenate.29.merge, %fusion.16.clone.loop_body.dim.2
  %fusion.16.clone.indvar.dim.3 = load i64, i64* %fusion.16.clone.invar_address.dim.3, align 8
  %15 = icmp uge i64 %fusion.16.clone.indvar.dim.3, 32
  br i1 %15, label %fusion.16.clone.loop_exit.dim.3, label %fusion.16.clone.loop_body.dim.3

fusion.16.clone.loop_body.dim.3:                  ; preds = %fusion.16.clone.loop_header.dim.3
  %16 = mul nuw nsw i64 %fusion.16.clone.indvar.dim.3, 1
  %17 = add nuw nsw i64 0, %16
  %18 = mul nuw nsw i64 %fusion.16.clone.indvar.dim.2, 32
  %19 = add nuw nsw i64 %17, %18
  %20 = mul nuw nsw i64 %fusion.16.clone.indvar.dim.1, 512
  %21 = add nuw nsw i64 %19, %20
  %22 = mul nuw nsw i64 %fusion.16.clone.indvar.dim.0, 1536
  %23 = add nuw nsw i64 %21, %22
  %24 = udiv i64 %23, 4608
  %25 = load float, float* bitcast ([4 x i8]* @72 to float*), align 4
  %26 = load float, float* bitcast ([4 x i8]* @73 to float*), align 4
  %27 = icmp ult i64 %23, 2304
  br i1 %27, label %concat_index_from_operand_id0, label %concat_index_not_from_operand0

concat_index_from_operand_id0:                    ; preds = %fusion.16.clone.loop_body.dim.3
  %28 = phi i64 [ 0, %fusion.16.clone.loop_body.dim.3 ]
  %29 = sub nsw i64 %23, %28
  %30 = getelementptr inbounds [2304 x i32], [2304 x i32]* %p.17, i64 0, i64 %29
  %31 = load i32, i32* %30, align 4, !alias.scope !95, !noalias !180
  br label %concatenate.29.merge

concat_index_from_operand_id1:                    ; preds = %concat_index_not_from_operand0
  %32 = phi i64 [ 2304, %concat_index_not_from_operand0 ]
  %33 = sub nsw i64 %23, %32
  %34 = getelementptr inbounds [2304 x i32], [2304 x i32]* %p.18, i64 0, i64 %33
  %35 = load i32, i32* %34, align 4, !alias.scope !85, !noalias !180
  br label %concatenate.29.merge

concat_index_not_from_operand0:                   ; preds = %fusion.16.clone.loop_body.dim.3
  %36 = icmp ult i64 %23, 4608
  br i1 %36, label %concat_index_from_operand_id1, label %concat_index_not_from_operand1

concat_index_not_from_operand1:                   ; preds = %concat_index_not_from_operand0
  unreachable

concatenate.29.merge:                             ; preds = %concat_index_from_operand_id1, %concat_index_from_operand_id0
  %37 = phi i32 [ %31, %concat_index_from_operand_id0 ], [ %35, %concat_index_from_operand_id1 ]
  %38 = load i32, i32* bitcast ([4 x i8]* @74 to i32*), align 4
  %39 = lshr i32 %37, %38
  %shft.chk = icmp ult i32 %38, 32
  %40 = select i1 %shft.chk, i32 %39, i32 0
  %41 = load i32, i32* bitcast ([4 x i8]* @75 to i32*), align 4
  %42 = or i32 %40, %41
  %43 = bitcast i32 %42 to float
  %44 = load float, float* bitcast ([4 x i8]* @76 to float*), align 4
  %45 = fadd reassoc nsz contract float %43, %44
  %46 = fcmp reassoc nsz contract oge float %26, %45
  %47 = fcmp reassoc nsz contract une float %26, %26
  %48 = or i1 %46, %47
  %49 = select reassoc nsz contract i1 %48, float %26, float %45
  %50 = load float, float* bitcast ([4 x i8]* @77 to float*), align 4
  %51 = fmul reassoc nsz contract float %49, %50
  %52 = fadd reassoc nsz contract float %25, %51
  %53 = call reassoc nsz contract float @llvm.fabs.f32(float %52)
  %54 = load float, float* bitcast ([4 x i8]* @78 to float*), align 4
  %55 = fcmp reassoc nsz contract oeq float %53, %54
  %56 = zext i1 %55 to i8
  %57 = load float, float* bitcast ([4 x i8]* @79 to float*), align 4
  %58 = fmul reassoc nsz contract float %52, %57
  %59 = fneg reassoc nsz contract float %52
  %60 = fmul reassoc nsz contract float %59, %52
  %61 = fadd reassoc nsz contract float %60, 1.000000e+00
  %62 = call reassoc nsz contract float @llvm.log.f32(float %61)
  %63 = fmul reassoc nsz contract float %60, %60
  %64 = fmul reassoc nsz contract float 0.000000e+00, %60
  %65 = fadd reassoc nsz contract float %64, 1.000000e+00
  %66 = fmul reassoc nsz contract float %65, %60
  %67 = fadd reassoc nsz contract float %66, 0x402E2035A0000000
  %68 = fmul reassoc nsz contract float %67, %60
  %69 = fadd reassoc nsz contract float %68, 0x4054C30B60000000
  %70 = fmul reassoc nsz contract float %69, %60
  %71 = fadd reassoc nsz contract float %70, 0x406BB865A0000000
  %72 = fmul reassoc nsz contract float %71, %60
  %73 = fadd reassoc nsz contract float %72, 0x4073519460000000
  %74 = fmul reassoc nsz contract float %73, %60
  %75 = fadd reassoc nsz contract float %74, 0x406B0DB140000000
  %76 = fmul reassoc nsz contract float %75, %60
  %77 = fadd reassoc nsz contract float %76, 0x404E0F3040000000
  %78 = fmul reassoc nsz contract float 0.000000e+00, %60
  %79 = fadd reassoc nsz contract float %78, 0x3F07BC0960000000
  %80 = fmul reassoc nsz contract float %79, %60
  %81 = fadd reassoc nsz contract float %80, 0x3FDFE818A0000000
  %82 = fmul reassoc nsz contract float %81, %60
  %83 = fadd reassoc nsz contract float %82, 0x401A509F40000000
  %84 = fmul reassoc nsz contract float %83, %60
  %85 = fadd reassoc nsz contract float %84, 0x403DE97380000000
  %86 = fmul reassoc nsz contract float %85, %60
  %87 = fadd reassoc nsz contract float %86, 0x404E798EC0000000
  %88 = fmul reassoc nsz contract float %87, %60
  %89 = fadd reassoc nsz contract float %88, 0x404C8E75A0000000
  %90 = fmul reassoc nsz contract float %89, %60
  %91 = fadd reassoc nsz contract float %90, 0x40340A2020000000
  %92 = fdiv reassoc nsz contract float %91, %77
  %93 = fmul reassoc nsz contract float %60, %63
  %94 = fmul reassoc nsz contract float %93, %92
  %95 = fmul reassoc nsz contract float -5.000000e-01, %63
  %96 = fadd reassoc nsz contract float %95, %94
  %97 = fadd reassoc nsz contract float %60, %96
  %98 = call reassoc nsz contract float @llvm.fabs.f32(float %60)
  %99 = fcmp reassoc nsz contract olt float %98, 0x3FDA8279A0000000
  %100 = select reassoc nsz contract i1 %99, float %97, float %62
  %101 = fneg reassoc nsz contract float %100
  %102 = load float, float* bitcast ([4 x i8]* @80 to float*), align 4
  %103 = fcmp reassoc nsz contract olt float %101, %102
  %104 = zext i1 %103 to i8
  %105 = load float, float* bitcast ([4 x i8]* @81 to float*), align 4
  %106 = load float, float* bitcast ([4 x i8]* @82 to float*), align 4
  %107 = trunc i8 %104 to i1
  %108 = select reassoc nsz contract i1 %107, float %105, float %106
  %109 = load float, float* bitcast ([4 x i8]* @83 to float*), align 4
  %110 = load float, float* bitcast ([4 x i8]* @84 to float*), align 4
  %111 = trunc i8 %104 to i1
  %112 = select reassoc nsz contract i1 %111, float %109, float %110
  %113 = load float, float* bitcast ([4 x i8]* @85 to float*), align 4
  %114 = load float, float* bitcast ([4 x i8]* @86 to float*), align 4
  %115 = trunc i8 %104 to i1
  %116 = select reassoc nsz contract i1 %115, float %113, float %114
  %117 = load float, float* bitcast ([4 x i8]* @87 to float*), align 4
  %118 = load float, float* bitcast ([4 x i8]* @88 to float*), align 4
  %119 = trunc i8 %104 to i1
  %120 = select reassoc nsz contract i1 %119, float %117, float %118
  %121 = load float, float* bitcast ([4 x i8]* @89 to float*), align 4
  %122 = load float, float* bitcast ([4 x i8]* @90 to float*), align 4
  %123 = trunc i8 %104 to i1
  %124 = select reassoc nsz contract i1 %123, float %121, float %122
  %125 = load float, float* bitcast ([4 x i8]* @91 to float*), align 4
  %126 = load float, float* bitcast ([4 x i8]* @92 to float*), align 4
  %127 = trunc i8 %104 to i1
  %128 = select reassoc nsz contract i1 %127, float %125, float %126
  %129 = load float, float* bitcast ([4 x i8]* @93 to float*), align 4
  %130 = load float, float* bitcast ([4 x i8]* @94 to float*), align 4
  %131 = trunc i8 %104 to i1
  %132 = select reassoc nsz contract i1 %131, float %129, float %130
  %133 = load float, float* bitcast ([4 x i8]* @95 to float*), align 4
  %134 = load float, float* bitcast ([4 x i8]* @96 to float*), align 4
  %135 = trunc i8 %104 to i1
  %136 = select reassoc nsz contract i1 %135, float %133, float %134
  %137 = load float, float* bitcast ([4 x i8]* @97 to float*), align 4
  %138 = load float, float* bitcast ([4 x i8]* @98 to float*), align 4
  %139 = trunc i8 %104 to i1
  %140 = select reassoc nsz contract i1 %139, float %137, float %138
  %141 = load float, float* bitcast ([4 x i8]* @99 to float*), align 4
  %142 = fadd reassoc nsz contract float %101, %141
  %143 = call reassoc nsz contract float @llvm.sqrt.f32(float %101)
  %144 = load float, float* bitcast ([4 x i8]* @100 to float*), align 4
  %145 = fadd reassoc nsz contract float %143, %144
  %146 = trunc i8 %104 to i1
  %147 = select reassoc nsz contract i1 %146, float %142, float %145
  %148 = fmul reassoc nsz contract float %140, %147
  %149 = fadd reassoc nsz contract float %136, %148
  %150 = fmul reassoc nsz contract float %149, %147
  %151 = fadd reassoc nsz contract float %132, %150
  %152 = fmul reassoc nsz contract float %151, %147
  %153 = fadd reassoc nsz contract float %128, %152
  %154 = fmul reassoc nsz contract float %153, %147
  %155 = fadd reassoc nsz contract float %124, %154
  %156 = fmul reassoc nsz contract float %155, %147
  %157 = fadd reassoc nsz contract float %120, %156
  %158 = fmul reassoc nsz contract float %157, %147
  %159 = fadd reassoc nsz contract float %116, %158
  %160 = fmul reassoc nsz contract float %159, %147
  %161 = fadd reassoc nsz contract float %112, %160
  %162 = fmul reassoc nsz contract float %161, %147
  %163 = fadd reassoc nsz contract float %108, %162
  %164 = fmul reassoc nsz contract float %163, %52
  %165 = trunc i8 %56 to i1
  %166 = select reassoc nsz contract i1 %165, float %58, float %164
  %167 = load float, float* bitcast ([4 x i8]* @101 to float*), align 4
  %168 = fmul reassoc nsz contract float %166, %167
  %169 = getelementptr inbounds [3 x [3 x [16 x [32 x float]]]], [3 x [3 x [16 x [32 x float]]]]* %fusion.16.clone, i64 0, i64 %fusion.16.clone.indvar.dim.0, i64 %fusion.16.clone.indvar.dim.1, i64 %fusion.16.clone.indvar.dim.2, i64 %fusion.16.clone.indvar.dim.3
  store float %168, float* %169, align 4, !alias.scope !180
  %invar.inc3 = add nuw nsw i64 %fusion.16.clone.indvar.dim.3, 1
  store i64 %invar.inc3, i64* %fusion.16.clone.invar_address.dim.3, align 8
  br label %fusion.16.clone.loop_header.dim.3

fusion.16.clone.loop_exit.dim.3:                  ; preds = %fusion.16.clone.loop_header.dim.3
  %invar.inc2 = add nuw nsw i64 %fusion.16.clone.indvar.dim.2, 1
  store i64 %invar.inc2, i64* %fusion.16.clone.invar_address.dim.2, align 8
  br label %fusion.16.clone.loop_header.dim.2

fusion.16.clone.loop_exit.dim.2:                  ; preds = %fusion.16.clone.loop_header.dim.2
  %invar.inc1 = add nuw nsw i64 %fusion.16.clone.indvar.dim.1, 1
  store i64 %invar.inc1, i64* %fusion.16.clone.invar_address.dim.1, align 8
  br label %fusion.16.clone.loop_header.dim.1

fusion.16.clone.loop_exit.dim.1:                  ; preds = %fusion.16.clone.loop_header.dim.1
  %invar.inc = add nuw nsw i64 %fusion.16.clone.indvar.dim.0, 1
  store i64 %invar.inc, i64* %fusion.16.clone.invar_address.dim.0, align 8
  br label %fusion.16.clone.loop_header.dim.0

fusion.16.clone.loop_exit.dim.0:                  ; preds = %fusion.16.clone.loop_header.dim.0
  ret void
}

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.log.f32(float) #3

; Function Attrs: nounwind readnone speculatable willreturn
declare float @llvm.sqrt.f32(float) #3

; Function Attrs: uwtable
define void @jit_test_conv2d.1357(i8* %retval, i8* noalias %run_options, i8** noalias %params, i8** noalias %buffer_table, i64* noalias %prof_counters) #0 {
entry:
  %fusion.20.invar_address.dim.0 = alloca i64, align 8
  %fusion.18.invar_address.dim.0 = alloca i64, align 8
  %fusion.9.invar_address.dim.3 = alloca i64, align 8
  %fusion.9.invar_address.dim.2 = alloca i64, align 8
  %fusion.9.invar_address.dim.1 = alloca i64, align 8
  %fusion.9.invar_address.dim.0 = alloca i64, align 8
  %fusion.10.invar_address.dim.3 = alloca i64, align 8
  %fusion.10.invar_address.dim.2 = alloca i64, align 8
  %fusion.10.invar_address.dim.1 = alloca i64, align 8
  %fusion.10.invar_address.dim.0 = alloca i64, align 8
  %fusion.14.invar_address.dim.0 = alloca i64, align 8
  %fusion.12.invar_address.dim.0 = alloca i64, align 8
  %fusion.25.invar_address.dim.0 = alloca i64, align 8
  %fusion.23.invar_address.dim.0 = alloca i64, align 8
  %fusion.28.invar_address.dim.0 = alloca i64, align 8
  %fusion.27.invar_address.dim.0 = alloca i64, align 8
  %0 = getelementptr inbounds i8*, i8** %buffer_table, i64 20
  %1 = load i8*, i8** %0, align 8, !invariant.load !0, !dereferenceable !1, !align !2
  %2 = getelementptr inbounds i8, i8* %1, i64 224
  %copy.97 = bitcast i8* %2 to i32*
  %3 = bitcast i32* %copy.97 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %3, i8* align 1 getelementptr inbounds ([4 x i8], [4 x i8]* @5, i32 0, i32 0), i64 4, i1 false)
  %4 = getelementptr inbounds i8*, i8** %buffer_table, i64 20
  %5 = load i8*, i8** %4, align 8, !invariant.load !0, !dereferenceable !1, !align !2
  %6 = getelementptr inbounds i8, i8* %5, i64 208
  %copy.5 = bitcast i8* %6 to i32*
  %7 = bitcast i32* %copy.5 to i8*
  %8 = bitcast i32* %copy.97 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 %8, i64 4, i1 false)
  %9 = getelementptr inbounds i8*, i8** %buffer_table, i64 0
  %10 = load i8*, i8** %9, align 8, !invariant.load !0, !dereferenceable !4, !align !2
  %copy.6 = bitcast i8* %10 to [4 x i32]*
  %11 = bitcast [4 x i32]* %copy.6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %11, i8* align 1 getelementptr inbounds ([16 x i8], [16 x i8]* @1, i32 0, i32 0), i64 16, i1 false)
  %12 = getelementptr inbounds i8*, i8** %buffer_table, i64 20
  %13 = load i8*, i8** %12, align 8, !invariant.load !0, !dereferenceable !1, !align !2
  %14 = getelementptr inbounds i8, i8* %13, i64 96
  %copy.7 = bitcast i8* %14 to [4 x i32]*
  %15 = bitcast [4 x i32]* %copy.7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %15, i8* align 1 getelementptr inbounds ([16 x i8], [16 x i8]* @2, i32 0, i32 0), i64 16, i1 false)
  %16 = getelementptr inbounds i8*, i8** %buffer_table, i64 20
  %17 = load i8*, i8** %16, align 8, !invariant.load !0, !dereferenceable !1, !align !2
  %18 = getelementptr inbounds i8, i8* %17, i64 128
  %fusion.27 = bitcast i8* %18 to [2 x i32]*
  store i64 0, i64* %fusion.27.invar_address.dim.0, align 8
  br label %fusion.27.loop_header.dim.0

fusion.27.loop_header.dim.0:                      ; preds = %fusion.27.loop_body.dim.0, %entry
  %fusion.27.indvar.dim.0 = load i64, i64* %fusion.27.invar_address.dim.0, align 8
  %19 = icmp uge i64 %fusion.27.indvar.dim.0, 2
  br i1 %19, label %fusion.27.loop_exit.dim.0, label %fusion.27.loop_body.dim.0

fusion.27.loop_body.dim.0:                        ; preds = %fusion.27.loop_header.dim.0
  %20 = add i64 %fusion.27.indvar.dim.0, 2
  %21 = mul nuw nsw i64 %20, 1
  %22 = add nuw nsw i64 0, %21
  %23 = trunc i64 %22 to i32
  %24 = getelementptr inbounds [2 x i32], [2 x i32]* %fusion.27, i64 0, i64 %fusion.27.indvar.dim.0
  store i32 %23, i32* %24, align 4, !alias.scope !30, !noalias !182
  %invar.inc = add nuw nsw i64 %fusion.27.indvar.dim.0, 1
  store i64 %invar.inc, i64* %fusion.27.invar_address.dim.0, align 8
  br label %fusion.27.loop_header.dim.0

fusion.27.loop_exit.dim.0:                        ; preds = %fusion.27.loop_header.dim.0
  %25 = getelementptr inbounds i8*, i8** %buffer_table, i64 20
  %26 = load i8*, i8** %25, align 8, !invariant.load !0, !dereferenceable !1, !align !2
  %27 = getelementptr inbounds i8, i8* %26, i64 144
  %fusion.28 = bitcast i8* %27 to [2 x i32]*
  store i64 0, i64* %fusion.28.invar_address.dim.0, align 8
  br label %fusion.28.loop_header.dim.0

fusion.28.loop_header.dim.0:                      ; preds = %fusion.28.loop_body.dim.0, %fusion.27.loop_exit.dim.0
  %fusion.28.indvar.dim.0 = load i64, i64* %fusion.28.invar_address.dim.0, align 8
  %28 = icmp uge i64 %fusion.28.indvar.dim.0, 2
  br i1 %28, label %fusion.28.loop_exit.dim.0, label %fusion.28.loop_body.dim.0

fusion.28.loop_body.dim.0:                        ; preds = %fusion.28.loop_header.dim.0
  %29 = add i64 %fusion.28.indvar.dim.0, 0
  %30 = mul nuw nsw i64 %29, 1
  %31 = add nuw nsw i64 0, %30
  %32 = trunc i64 %31 to i32
  %33 = getelementptr inbounds [2 x i32], [2 x i32]* %fusion.28, i64 0, i64 %fusion.28.indvar.dim.0
  store i32 %32, i32* %33, align 4, !alias.scope !36, !noalias !183
  %invar.inc1 = add nuw nsw i64 %fusion.28.indvar.dim.0, 1
  store i64 %invar.inc1, i64* %fusion.28.invar_address.dim.0, align 8
  br label %fusion.28.loop_header.dim.0

fusion.28.loop_exit.dim.0:                        ; preds = %fusion.28.loop_header.dim.0
  %34 = getelementptr inbounds i8*, i8** %buffer_table, i64 20
  %35 = load i8*, i8** %34, align 8, !invariant.load !0, !dereferenceable !1, !align !2
  %36 = getelementptr inbounds i8, i8* %35, i64 192
  %copy = bitcast i8* %36 to i32*
  %37 = bitcast i32* %copy to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %37, i8* align 1 getelementptr inbounds ([4 x i8], [4 x i8]* @4, i32 0, i32 0), i64 4, i1 false)
  %38 = getelementptr inbounds i8*, i8** %buffer_table, i64 20
  %39 = load i8*, i8** %38, align 8, !invariant.load !0, !dereferenceable !1, !align !2
  %40 = getelementptr inbounds i8, i8* %39, i64 160
  %copy.96 = bitcast i8* %40 to i32*
  %41 = bitcast i32* %copy.96 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %41, i8* align 1 getelementptr inbounds ([4 x i8], [4 x i8]* @6, i32 0, i32 0), i64 4, i1 false)
  %42 = getelementptr inbounds i8*, i8** %buffer_table, i64 20
  %43 = load i8*, i8** %42, align 8, !invariant.load !0, !dereferenceable !1, !align !2
  %44 = getelementptr inbounds i8, i8* %43, i64 33555008
  %tuple.91 = bitcast i8* %44 to [8 x i8*]*
  %45 = bitcast i32* %copy to i8*
  %46 = getelementptr inbounds [8 x i8*], [8 x i8*]* %tuple.91, i64 0, i64 0
  store i8* %45, i8** %46, align 8, !alias.scope !42, !noalias !43
  %47 = bitcast [2 x i32]* %fusion.28 to i8*
  %48 = getelementptr inbounds [8 x i8*], [8 x i8*]* %tuple.91, i64 0, i64 1
  store i8* %47, i8** %48, align 8, !alias.scope !42, !noalias !43
  %49 = bitcast [2 x i32]* %fusion.27 to i8*
  %50 = getelementptr inbounds [8 x i8*], [8 x i8*]* %tuple.91, i64 0, i64 2
  store i8* %49, i8** %50, align 8, !alias.scope !42, !noalias !43
  %51 = bitcast i32* %copy.97 to i8*
  %52 = getelementptr inbounds [8 x i8*], [8 x i8*]* %tuple.91, i64 0, i64 3
  store i8* %51, i8** %52, align 8, !alias.scope !42, !noalias !43
  %53 = bitcast i32* %copy.96 to i8*
  %54 = getelementptr inbounds [8 x i8*], [8 x i8*]* %tuple.91, i64 0, i64 4
  store i8* %53, i8** %54, align 8, !alias.scope !42, !noalias !43
  %55 = bitcast i32* %copy.5 to i8*
  %56 = getelementptr inbounds [8 x i8*], [8 x i8*]* %tuple.91, i64 0, i64 5
  store i8* %55, i8** %56, align 8, !alias.scope !42, !noalias !43
  %57 = bitcast [4 x i32]* %copy.6 to i8*
  %58 = getelementptr inbounds [8 x i8*], [8 x i8*]* %tuple.91, i64 0, i64 6
  store i8* %57, i8** %58, align 8, !alias.scope !42, !noalias !43
  %59 = bitcast [4 x i32]* %copy.7 to i8*
  %60 = getelementptr inbounds [8 x i8*], [8 x i8*]* %tuple.91, i64 0, i64 7
  store i8* %59, i8** %60, align 8, !alias.scope !42, !noalias !43
  br label %while.14.header

while.14.header:                                  ; preds = %while.14.body, %fusion.28.loop_exit.dim.0
  call void @cond_computation.85.clone(i8* null, i8* %run_options, i8** null, i8** %buffer_table, i64* %prof_counters)
  %61 = getelementptr inbounds i8*, i8** %buffer_table, i64 20
  %62 = load i8*, i8** %61, align 8, !invariant.load !0, !dereferenceable !1, !align !2
  %63 = getelementptr inbounds i8, i8* %62, i64 112
  %64 = load i8, i8* %63, align 1
  %65 = icmp ne i8 %64, 0
  br i1 %65, label %while.14.body, label %while.14.exit

while.14.body:                                    ; preds = %while.14.header
  call void @body_computation.17.clone(i8* null, i8* %run_options, i8** null, i8** %buffer_table, i64* %prof_counters)
  br label %while.14.header

while.14.exit:                                    ; preds = %while.14.header
  %66 = getelementptr inbounds [8 x i8*], [8 x i8*]* %tuple.91, i64 0, i64 1
  %67 = load i8*, i8** %66, align 8, !dereferenceable !3, !align !3
  %68 = bitcast i8* %67 to [2 x i32]*
  %69 = getelementptr inbounds [8 x i8*], [8 x i8*]* %tuple.91, i64 0, i64 2
  %70 = load i8*, i8** %69, align 8, !dereferenceable !3, !align !3
  %71 = bitcast i8* %70 to [2 x i32]*
  %72 = getelementptr inbounds i8*, i8** %buffer_table, i64 20
  %73 = load i8*, i8** %72, align 8, !invariant.load !0, !dereferenceable !1, !align !2
  %74 = getelementptr inbounds i8, i8* %73, i64 112
  %fusion.23 = bitcast i8* %74 to [2 x i32]*
  store i64 0, i64* %fusion.23.invar_address.dim.0, align 8
  br label %fusion.23.loop_header.dim.0

fusion.23.loop_header.dim.0:                      ; preds = %concatenate.24.merge, %while.14.exit
  %fusion.23.indvar.dim.0 = load i64, i64* %fusion.23.invar_address.dim.0, align 8
  %75 = icmp uge i64 %fusion.23.indvar.dim.0, 2
  br i1 %75, label %fusion.23.loop_exit.dim.0, label %fusion.23.loop_body.dim.0

fusion.23.loop_body.dim.0:                        ; preds = %fusion.23.loop_header.dim.0
  %76 = add i64 %fusion.23.indvar.dim.0, 2
  %77 = mul nuw nsw i64 %76, 1
  %78 = add nuw nsw i64 0, %77
  %79 = trunc i64 %78 to i32
  br i1 false, label %concat_index_from_operand_id0, label %concat_index_not_from_operand0

concat_index_from_operand_id0:                    ; preds = %fusion.23.loop_body.dim.0
  %80 = phi i64 [ 0, %fusion.23.loop_body.dim.0 ]
  %81 = sub nsw i64 3, %80
  %82 = getelementptr inbounds [2 x i32], [2 x i32]* %68, i64 0, i64 %81
  %83 = load i32, i32* %82, align 4, !alias.scope !36, !noalias !184
  br label %concatenate.24.merge

concat_index_from_operand_id1:                    ; preds = %concat_index_not_from_operand0
  %84 = phi i64 [ 2, %concat_index_not_from_operand0 ]
  %85 = sub nsw i64 3, %84
  %86 = getelementptr inbounds [2 x i32], [2 x i32]* %71, i64 0, i64 %85
  %87 = load i32, i32* %86, align 4, !alias.scope !30, !noalias !185
  br label %concatenate.24.merge

concat_index_not_from_operand0:                   ; preds = %fusion.23.loop_body.dim.0
  br i1 true, label %concat_index_from_operand_id1, label %concat_index_not_from_operand1

concat_index_not_from_operand1:                   ; preds = %concat_index_not_from_operand0
  unreachable

concatenate.24.merge:                             ; preds = %concat_index_from_operand_id1, %concat_index_from_operand_id0
  %88 = phi i32 [ %83, %concat_index_from_operand_id0 ], [ %87, %concat_index_from_operand_id1 ]
  %89 = add i32 %79, %88
  %90 = getelementptr inbounds [2 x i32], [2 x i32]* %fusion.23, i64 0, i64 %fusion.23.indvar.dim.0
  store i32 %89, i32* %90, align 4, !alias.scope !63, !noalias !186
  %invar.inc2 = add nuw nsw i64 %fusion.23.indvar.dim.0, 1
  store i64 %invar.inc2, i64* %fusion.23.invar_address.dim.0, align 8
  br label %fusion.23.loop_header.dim.0

fusion.23.loop_exit.dim.0:                        ; preds = %fusion.23.loop_header.dim.0
  %91 = getelementptr inbounds i8*, i8** %buffer_table, i64 20
  %92 = load i8*, i8** %91, align 8, !invariant.load !0, !dereferenceable !1, !align !2
  %93 = getelementptr inbounds i8, i8* %92, i64 160
  %fusion.25 = bitcast i8* %93 to [2 x i32]*
  store i64 0, i64* %fusion.25.invar_address.dim.0, align 8
  br label %fusion.25.loop_header.dim.0

fusion.25.loop_header.dim.0:                      ; preds = %concatenate.26.merge, %fusion.23.loop_exit.dim.0
  %fusion.25.indvar.dim.0 = load i64, i64* %fusion.25.invar_address.dim.0, align 8
  %94 = icmp uge i64 %fusion.25.indvar.dim.0, 2
  br i1 %94, label %fusion.25.loop_exit.dim.0, label %fusion.25.loop_body.dim.0

fusion.25.loop_body.dim.0:                        ; preds = %fusion.25.loop_header.dim.0
  %95 = add i64 %fusion.25.indvar.dim.0, 0
  %96 = mul nuw nsw i64 %95, 1
  %97 = add nuw nsw i64 0, %96
  %98 = trunc i64 %97 to i32
  br i1 false, label %concat_index_from_operand_id04, label %concat_index_not_from_operand06

concat_index_from_operand_id04:                   ; preds = %fusion.25.loop_body.dim.0
  %99 = phi i64 [ 0, %fusion.25.loop_body.dim.0 ]
  %100 = sub nsw i64 2, %99
  %101 = getelementptr inbounds [2 x i32], [2 x i32]* %68, i64 0, i64 %100
  %102 = load i32, i32* %101, align 4, !alias.scope !36, !noalias !184
  br label %concatenate.26.merge

concat_index_from_operand_id15:                   ; preds = %concat_index_not_from_operand06
  %103 = phi i64 [ 2, %concat_index_not_from_operand06 ]
  %104 = sub nsw i64 2, %103
  %105 = getelementptr inbounds [2 x i32], [2 x i32]* %71, i64 0, i64 %104
  %106 = load i32, i32* %105, align 4, !alias.scope !30, !noalias !185
  br label %concatenate.26.merge

concat_index_not_from_operand06:                  ; preds = %fusion.25.loop_body.dim.0
  br i1 true, label %concat_index_from_operand_id15, label %concat_index_not_from_operand17

concat_index_not_from_operand17:                  ; preds = %concat_index_not_from_operand06
  unreachable

concatenate.26.merge:                             ; preds = %concat_index_from_operand_id15, %concat_index_from_operand_id04
  %107 = phi i32 [ %102, %concat_index_from_operand_id04 ], [ %106, %concat_index_from_operand_id15 ]
  %108 = add i32 %98, %107
  %109 = getelementptr inbounds [2 x i32], [2 x i32]* %fusion.25, i64 0, i64 %fusion.25.indvar.dim.0
  store i32 %108, i32* %109, align 4, !alias.scope !68, !noalias !187
  %invar.inc3 = add nuw nsw i64 %fusion.25.indvar.dim.0, 1
  store i64 %invar.inc3, i64* %fusion.25.invar_address.dim.0, align 8
  br label %fusion.25.loop_header.dim.0

fusion.25.loop_exit.dim.0:                        ; preds = %fusion.25.loop_header.dim.0
  %110 = getelementptr inbounds i8*, i8** %buffer_table, i64 20
  %111 = load i8*, i8** %110, align 8, !invariant.load !0, !dereferenceable !1, !align !2
  %112 = getelementptr inbounds i8, i8* %111, i64 192
  %fusion.22 = bitcast i8* %112 to i32*
  br i1 false, label %concat_index_from_operand_id08, label %concat_index_not_from_operand010

concat_index_from_operand_id08:                   ; preds = %fusion.25.loop_exit.dim.0
  %113 = phi i64 [ 0, %fusion.25.loop_exit.dim.0 ]
  %114 = sub nsw i64 2, %113
  %115 = getelementptr inbounds [2 x i32], [2 x i32]* %68, i64 0, i64 %114
  %116 = load i32, i32* %115, align 4, !alias.scope !36, !noalias !184
  br label %concatenate.23.merge

concat_index_from_operand_id19:                   ; preds = %concat_index_not_from_operand010
  %117 = phi i64 [ 2, %concat_index_not_from_operand010 ]
  %118 = sub nsw i64 2, %117
  %119 = getelementptr inbounds [2 x i32], [2 x i32]* %71, i64 0, i64 %118
  %120 = load i32, i32* %119, align 4, !alias.scope !30, !noalias !185
  br label %concatenate.23.merge

concat_index_not_from_operand010:                 ; preds = %fusion.25.loop_exit.dim.0
  br i1 true, label %concat_index_from_operand_id19, label %concat_index_not_from_operand111

concat_index_not_from_operand111:                 ; preds = %concat_index_not_from_operand010
  unreachable

concatenate.23.merge:                             ; preds = %concat_index_from_operand_id19, %concat_index_from_operand_id08
  %121 = phi i32 [ %116, %concat_index_from_operand_id08 ], [ %120, %concat_index_from_operand_id19 ]
  br i1 false, label %concat_index_from_operand_id013, label %concat_index_not_from_operand015

concat_index_from_operand_id013:                  ; preds = %concatenate.23.merge
  %122 = phi i64 [ 0, %concatenate.23.merge ]
  %123 = sub nsw i64 3, %122
  %124 = getelementptr inbounds [2 x i32], [2 x i32]* %68, i64 0, i64 %123
  %125 = load i32, i32* %124, align 4, !alias.scope !36, !noalias !184
  br label %concatenate.23.merge12

concat_index_from_operand_id114:                  ; preds = %concat_index_not_from_operand015
  %126 = phi i64 [ 2, %concat_index_not_from_operand015 ]
  %127 = sub nsw i64 3, %126
  %128 = getelementptr inbounds [2 x i32], [2 x i32]* %71, i64 0, i64 %127
  %129 = load i32, i32* %128, align 4, !alias.scope !30, !noalias !185
  br label %concatenate.23.merge12

concat_index_not_from_operand015:                 ; preds = %concatenate.23.merge
  br i1 true, label %concat_index_from_operand_id114, label %concat_index_not_from_operand116

concat_index_not_from_operand116:                 ; preds = %concat_index_not_from_operand015
  unreachable

concatenate.23.merge12:                           ; preds = %concat_index_from_operand_id114, %concat_index_from_operand_id013
  %130 = phi i32 [ %125, %concat_index_from_operand_id013 ], [ %129, %concat_index_from_operand_id114 ]
  %131 = xor i32 %121, %130
  %132 = load i32, i32* bitcast ([4 x i8]* @102 to i32*), align 4
  %133 = xor i32 %131, %132
  store i32 %133, i32* %fusion.22, align 4, !alias.scope !40, !noalias !188
  %134 = getelementptr inbounds i8*, i8** %buffer_table, i64 20
  %135 = load i8*, i8** %134, align 8, !invariant.load !0, !dereferenceable !1, !align !2
  %136 = getelementptr inbounds i8, i8* %135, i64 208
  %fusion.24 = bitcast i8* %136 to i32*
  br i1 false, label %concat_index_from_operand_id017, label %concat_index_not_from_operand019

concat_index_from_operand_id017:                  ; preds = %concatenate.23.merge12
  %137 = phi i64 [ 0, %concatenate.23.merge12 ]
  %138 = sub nsw i64 3, %137
  %139 = getelementptr inbounds [2 x i32], [2 x i32]* %68, i64 0, i64 %138
  %140 = load i32, i32* %139, align 4, !alias.scope !36, !noalias !184
  br label %concatenate.25.merge

concat_index_from_operand_id118:                  ; preds = %concat_index_not_from_operand019
  %141 = phi i64 [ 2, %concat_index_not_from_operand019 ]
  %142 = sub nsw i64 3, %141
  %143 = getelementptr inbounds [2 x i32], [2 x i32]* %71, i64 0, i64 %142
  %144 = load i32, i32* %143, align 4, !alias.scope !30, !noalias !185
  br label %concatenate.25.merge

concat_index_not_from_operand019:                 ; preds = %concatenate.23.merge12
  br i1 true, label %concat_index_from_operand_id118, label %concat_index_not_from_operand120

concat_index_not_from_operand120:                 ; preds = %concat_index_not_from_operand019
  unreachable

concatenate.25.merge:                             ; preds = %concat_index_from_operand_id118, %concat_index_from_operand_id017
  %145 = phi i32 [ %140, %concat_index_from_operand_id017 ], [ %144, %concat_index_from_operand_id118 ]
  store i32 %145, i32* %fusion.24, align 4, !alias.scope !134, !noalias !189
  %146 = getelementptr inbounds i8*, i8** %buffer_table, i64 20
  %147 = load i8*, i8** %146, align 8, !invariant.load !0, !dereferenceable !1, !align !2
  %148 = getelementptr inbounds i8, i8* %147, i64 224
  %fusion.26 = bitcast i8* %148 to i32*
  br i1 false, label %concat_index_from_operand_id021, label %concat_index_not_from_operand023

concat_index_from_operand_id021:                  ; preds = %concatenate.25.merge
  %149 = phi i64 [ 0, %concatenate.25.merge ]
  %150 = sub nsw i64 2, %149
  %151 = getelementptr inbounds [2 x i32], [2 x i32]* %68, i64 0, i64 %150
  %152 = load i32, i32* %151, align 4, !alias.scope !36, !noalias !184
  br label %concatenate.27.merge

concat_index_from_operand_id122:                  ; preds = %concat_index_not_from_operand023
  %153 = phi i64 [ 2, %concat_index_not_from_operand023 ]
  %154 = sub nsw i64 2, %153
  %155 = getelementptr inbounds [2 x i32], [2 x i32]* %71, i64 0, i64 %154
  %156 = load i32, i32* %155, align 4, !alias.scope !30, !noalias !185
  br label %concatenate.27.merge

concat_index_not_from_operand023:                 ; preds = %concatenate.25.merge
  br i1 true, label %concat_index_from_operand_id122, label %concat_index_not_from_operand124

concat_index_not_from_operand124:                 ; preds = %concat_index_not_from_operand023
  unreachable

concatenate.27.merge:                             ; preds = %concat_index_from_operand_id122, %concat_index_from_operand_id021
  %157 = phi i32 [ %152, %concat_index_from_operand_id021 ], [ %156, %concat_index_from_operand_id122 ]
  store i32 %157, i32* %fusion.26, align 4, !alias.scope !190, !noalias !191
  %158 = getelementptr inbounds i8*, i8** %buffer_table, i64 0
  %159 = load i8*, i8** %158, align 8, !invariant.load !0, !dereferenceable !4, !align !2
  %copy.30 = bitcast i8* %159 to [4 x i32]*
  %160 = bitcast [4 x i32]* %copy.30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %160, i8* align 1 getelementptr inbounds ([16 x i8], [16 x i8]* @1, i32 0, i32 0), i64 16, i1 false)
  %161 = getelementptr inbounds i8*, i8** %buffer_table, i64 20
  %162 = load i8*, i8** %161, align 8, !invariant.load !0, !dereferenceable !1, !align !2
  %163 = getelementptr inbounds i8, i8* %162, i64 96
  %copy.31 = bitcast i8* %163 to [4 x i32]*
  %164 = bitcast [4 x i32]* %copy.31 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %164, i8* align 1 getelementptr inbounds ([16 x i8], [16 x i8]* @2, i32 0, i32 0), i64 16, i1 false)
  %165 = getelementptr inbounds i8*, i8** %buffer_table, i64 20
  %166 = load i8*, i8** %165, align 8, !invariant.load !0, !dereferenceable !1, !align !2
  %167 = getelementptr inbounds i8, i8* %166, i64 240
  %copy.24 = bitcast i8* %167 to i32*
  %168 = bitcast i32* %copy.24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %168, i8* align 1 getelementptr inbounds ([4 x i8], [4 x i8]* @4, i32 0, i32 0), i64 4, i1 false)
  %169 = getelementptr inbounds i8*, i8** %buffer_table, i64 20
  %170 = load i8*, i8** %169, align 8, !invariant.load !0, !dereferenceable !1, !align !2
  %171 = getelementptr inbounds i8, i8* %170, i64 33554944
  %tuple.94 = bitcast i8* %171 to [8 x i8*]*
  %172 = bitcast i32* %copy.24 to i8*
  %173 = getelementptr inbounds [8 x i8*], [8 x i8*]* %tuple.94, i64 0, i64 0
  store i8* %172, i8** %173, align 8, !alias.scope !74, !noalias !75
  %174 = bitcast [2 x i32]* %fusion.25 to i8*
  %175 = getelementptr inbounds [8 x i8*], [8 x i8*]* %tuple.94, i64 0, i64 1
  store i8* %174, i8** %175, align 8, !alias.scope !74, !noalias !75
  %176 = bitcast [2 x i32]* %fusion.23 to i8*
  %177 = getelementptr inbounds [8 x i8*], [8 x i8*]* %tuple.94, i64 0, i64 2
  store i8* %176, i8** %177, align 8, !alias.scope !74, !noalias !75
  %178 = bitcast i32* %fusion.24 to i8*
  %179 = getelementptr inbounds [8 x i8*], [8 x i8*]* %tuple.94, i64 0, i64 3
  store i8* %178, i8** %179, align 8, !alias.scope !74, !noalias !75
  %180 = bitcast i32* %fusion.22 to i8*
  %181 = getelementptr inbounds [8 x i8*], [8 x i8*]* %tuple.94, i64 0, i64 4
  store i8* %180, i8** %181, align 8, !alias.scope !74, !noalias !75
  %182 = bitcast i32* %fusion.26 to i8*
  %183 = getelementptr inbounds [8 x i8*], [8 x i8*]* %tuple.94, i64 0, i64 5
  store i8* %182, i8** %183, align 8, !alias.scope !74, !noalias !75
  %184 = bitcast [4 x i32]* %copy.30 to i8*
  %185 = getelementptr inbounds [8 x i8*], [8 x i8*]* %tuple.94, i64 0, i64 6
  store i8* %184, i8** %185, align 8, !alias.scope !74, !noalias !75
  %186 = bitcast [4 x i32]* %copy.31 to i8*
  %187 = getelementptr inbounds [8 x i8*], [8 x i8*]* %tuple.94, i64 0, i64 7
  store i8* %186, i8** %187, align 8, !alias.scope !74, !noalias !75
  br label %while.15.header

while.15.header:                                  ; preds = %while.15.body, %concatenate.27.merge
  call void @cond_computation__1.228.clone(i8* null, i8* %run_options, i8** null, i8** %buffer_table, i64* %prof_counters)
  %188 = getelementptr inbounds i8*, i8** %buffer_table, i64 20
  %189 = load i8*, i8** %188, align 8, !invariant.load !0, !dereferenceable !1, !align !2
  %190 = getelementptr inbounds i8, i8* %189, i64 176
  %191 = load i8, i8* %190, align 1
  %192 = icmp ne i8 %191, 0
  br i1 %192, label %while.15.body, label %while.15.exit

while.15.body:                                    ; preds = %while.15.header
  call void @body_computation__1.160.clone(i8* null, i8* %run_options, i8** null, i8** %buffer_table, i64* %prof_counters)
  br label %while.15.header

while.15.exit:                                    ; preds = %while.15.header
  %193 = getelementptr inbounds [8 x i8*], [8 x i8*]* %tuple.94, i64 0, i64 1
  %194 = load i8*, i8** %193, align 8, !dereferenceable !3, !align !3
  %195 = bitcast i8* %194 to [2 x i32]*
  %196 = getelementptr inbounds [8 x i8*], [8 x i8*]* %tuple.94, i64 0, i64 2
  %197 = load i8*, i8** %196, align 8, !dereferenceable !3, !align !3
  %198 = bitcast i8* %197 to [2 x i32]*
  %199 = getelementptr inbounds i8*, i8** %buffer_table, i64 20
  %200 = load i8*, i8** %199, align 8, !invariant.load !0, !dereferenceable !1, !align !2
  %201 = getelementptr inbounds i8, i8* %200, i64 33554752
  %fusion.12 = bitcast i8* %201 to [16 x i32]*
  store i64 0, i64* %fusion.12.invar_address.dim.0, align 8
  br label %fusion.12.loop_header.dim.0

fusion.12.loop_header.dim.0:                      ; preds = %concatenate.18.merge, %while.15.exit
  %fusion.12.indvar.dim.0 = load i64, i64* %fusion.12.invar_address.dim.0, align 8
  %202 = icmp uge i64 %fusion.12.indvar.dim.0, 16
  br i1 %202, label %fusion.12.loop_exit.dim.0, label %fusion.12.loop_body.dim.0

fusion.12.loop_body.dim.0:                        ; preds = %fusion.12.loop_header.dim.0
  %203 = add i64 %fusion.12.indvar.dim.0, 16
  %204 = mul nuw nsw i64 %203, 1
  %205 = add nuw nsw i64 0, %204
  %206 = trunc i64 %205 to i32
  br i1 false, label %concat_index_from_operand_id026, label %concat_index_not_from_operand028

concat_index_from_operand_id026:                  ; preds = %fusion.12.loop_body.dim.0
  %207 = phi i64 [ 0, %fusion.12.loop_body.dim.0 ]
  %208 = sub nsw i64 3, %207
  %209 = getelementptr inbounds [2 x i32], [2 x i32]* %195, i64 0, i64 %208
  %210 = load i32, i32* %209, align 4, !alias.scope !68, !noalias !192
  br label %concatenate.18.merge

concat_index_from_operand_id127:                  ; preds = %concat_index_not_from_operand028
  %211 = phi i64 [ 2, %concat_index_not_from_operand028 ]
  %212 = sub nsw i64 3, %211
  %213 = getelementptr inbounds [2 x i32], [2 x i32]* %198, i64 0, i64 %212
  %214 = load i32, i32* %213, align 4, !alias.scope !63, !noalias !193
  br label %concatenate.18.merge

concat_index_not_from_operand028:                 ; preds = %fusion.12.loop_body.dim.0
  br i1 true, label %concat_index_from_operand_id127, label %concat_index_not_from_operand129

concat_index_not_from_operand129:                 ; preds = %concat_index_not_from_operand028
  unreachable

concatenate.18.merge:                             ; preds = %concat_index_from_operand_id127, %concat_index_from_operand_id026
  %215 = phi i32 [ %210, %concat_index_from_operand_id026 ], [ %214, %concat_index_from_operand_id127 ]
  %216 = add i32 %206, %215
  %217 = getelementptr inbounds [16 x i32], [16 x i32]* %fusion.12, i64 0, i64 %fusion.12.indvar.dim.0
  store i32 %216, i32* %217, align 4, !alias.scope !139, !noalias !194
  %invar.inc25 = add nuw nsw i64 %fusion.12.indvar.dim.0, 1
  store i64 %invar.inc25, i64* %fusion.12.invar_address.dim.0, align 8
  br label %fusion.12.loop_header.dim.0

fusion.12.loop_exit.dim.0:                        ; preds = %fusion.12.loop_header.dim.0
  %218 = getelementptr inbounds i8*, i8** %buffer_table, i64 20
  %219 = load i8*, i8** %218, align 8, !invariant.load !0, !dereferenceable !1, !align !2
  %220 = getelementptr inbounds i8, i8* %219, i64 33554816
  %fusion.14 = bitcast i8* %220 to [16 x i32]*
  store i64 0, i64* %fusion.14.invar_address.dim.0, align 8
  br label %fusion.14.loop_header.dim.0

fusion.14.loop_header.dim.0:                      ; preds = %concatenate.20.merge, %fusion.12.loop_exit.dim.0
  %fusion.14.indvar.dim.0 = load i64, i64* %fusion.14.invar_address.dim.0, align 8
  %221 = icmp uge i64 %fusion.14.indvar.dim.0, 16
  br i1 %221, label %fusion.14.loop_exit.dim.0, label %fusion.14.loop_body.dim.0

fusion.14.loop_body.dim.0:                        ; preds = %fusion.14.loop_header.dim.0
  %222 = add i64 %fusion.14.indvar.dim.0, 0
  %223 = mul nuw nsw i64 %222, 1
  %224 = add nuw nsw i64 0, %223
  %225 = trunc i64 %224 to i32
  br i1 false, label %concat_index_from_operand_id031, label %concat_index_not_from_operand033

concat_index_from_operand_id031:                  ; preds = %fusion.14.loop_body.dim.0
  %226 = phi i64 [ 0, %fusion.14.loop_body.dim.0 ]
  %227 = sub nsw i64 2, %226
  %228 = getelementptr inbounds [2 x i32], [2 x i32]* %195, i64 0, i64 %227
  %229 = load i32, i32* %228, align 4, !alias.scope !68, !noalias !192
  br label %concatenate.20.merge

concat_index_from_operand_id132:                  ; preds = %concat_index_not_from_operand033
  %230 = phi i64 [ 2, %concat_index_not_from_operand033 ]
  %231 = sub nsw i64 2, %230
  %232 = getelementptr inbounds [2 x i32], [2 x i32]* %198, i64 0, i64 %231
  %233 = load i32, i32* %232, align 4, !alias.scope !63, !noalias !193
  br label %concatenate.20.merge

concat_index_not_from_operand033:                 ; preds = %fusion.14.loop_body.dim.0
  br i1 true, label %concat_index_from_operand_id132, label %concat_index_not_from_operand134

concat_index_not_from_operand134:                 ; preds = %concat_index_not_from_operand033
  unreachable

concatenate.20.merge:                             ; preds = %concat_index_from_operand_id132, %concat_index_from_operand_id031
  %234 = phi i32 [ %229, %concat_index_from_operand_id031 ], [ %233, %concat_index_from_operand_id132 ]
  %235 = add i32 %225, %234
  %236 = getelementptr inbounds [16 x i32], [16 x i32]* %fusion.14, i64 0, i64 %fusion.14.indvar.dim.0
  store i32 %235, i32* %236, align 4, !alias.scope !143, !noalias !195
  %invar.inc30 = add nuw nsw i64 %fusion.14.indvar.dim.0, 1
  store i64 %invar.inc30, i64* %fusion.14.invar_address.dim.0, align 8
  br label %fusion.14.loop_header.dim.0

fusion.14.loop_exit.dim.0:                        ; preds = %fusion.14.loop_header.dim.0
  %237 = getelementptr inbounds i8*, i8** %buffer_table, i64 20
  %238 = load i8*, i8** %237, align 8, !invariant.load !0, !dereferenceable !1, !align !2
  %239 = getelementptr inbounds i8, i8* %238, i64 176
  %fusion.11 = bitcast i8* %239 to i32*
  br i1 false, label %concat_index_from_operand_id035, label %concat_index_not_from_operand037

concat_index_from_operand_id035:                  ; preds = %fusion.14.loop_exit.dim.0
  %240 = phi i64 [ 0, %fusion.14.loop_exit.dim.0 ]
  %241 = sub nsw i64 2, %240
  %242 = getelementptr inbounds [2 x i32], [2 x i32]* %195, i64 0, i64 %241
  %243 = load i32, i32* %242, align 4, !alias.scope !68, !noalias !192
  br label %concatenate.17.merge

concat_index_from_operand_id136:                  ; preds = %concat_index_not_from_operand037
  %244 = phi i64 [ 2, %concat_index_not_from_operand037 ]
  %245 = sub nsw i64 2, %244
  %246 = getelementptr inbounds [2 x i32], [2 x i32]* %198, i64 0, i64 %245
  %247 = load i32, i32* %246, align 4, !alias.scope !63, !noalias !193
  br label %concatenate.17.merge

concat_index_not_from_operand037:                 ; preds = %fusion.14.loop_exit.dim.0
  br i1 true, label %concat_index_from_operand_id136, label %concat_index_not_from_operand138

concat_index_not_from_operand138:                 ; preds = %concat_index_not_from_operand037
  unreachable

concatenate.17.merge:                             ; preds = %concat_index_from_operand_id136, %concat_index_from_operand_id035
  %248 = phi i32 [ %243, %concat_index_from_operand_id035 ], [ %247, %concat_index_from_operand_id136 ]
  br i1 false, label %concat_index_from_operand_id040, label %concat_index_not_from_operand042

concat_index_from_operand_id040:                  ; preds = %concatenate.17.merge
  %249 = phi i64 [ 0, %concatenate.17.merge ]
  %250 = sub nsw i64 3, %249
  %251 = getelementptr inbounds [2 x i32], [2 x i32]* %195, i64 0, i64 %250
  %252 = load i32, i32* %251, align 4, !alias.scope !68, !noalias !192
  br label %concatenate.17.merge39

concat_index_from_operand_id141:                  ; preds = %concat_index_not_from_operand042
  %253 = phi i64 [ 2, %concat_index_not_from_operand042 ]
  %254 = sub nsw i64 3, %253
  %255 = getelementptr inbounds [2 x i32], [2 x i32]* %198, i64 0, i64 %254
  %256 = load i32, i32* %255, align 4, !alias.scope !63, !noalias !193
  br label %concatenate.17.merge39

concat_index_not_from_operand042:                 ; preds = %concatenate.17.merge
  br i1 true, label %concat_index_from_operand_id141, label %concat_index_not_from_operand143

concat_index_not_from_operand143:                 ; preds = %concat_index_not_from_operand042
  unreachable

concatenate.17.merge39:                           ; preds = %concat_index_from_operand_id141, %concat_index_from_operand_id040
  %257 = phi i32 [ %252, %concat_index_from_operand_id040 ], [ %256, %concat_index_from_operand_id141 ]
  %258 = xor i32 %248, %257
  %259 = load i32, i32* bitcast ([4 x i8]* @103 to i32*), align 4
  %260 = xor i32 %258, %259
  store i32 %260, i32* %fusion.11, align 4, !alias.scope !26, !noalias !196
  %261 = getelementptr inbounds i8*, i8** %buffer_table, i64 20
  %262 = load i8*, i8** %261, align 8, !invariant.load !0, !dereferenceable !1, !align !2
  %263 = getelementptr inbounds i8, i8* %262, i64 224
  %fusion.13 = bitcast i8* %263 to i32*
  br i1 false, label %concat_index_from_operand_id044, label %concat_index_not_from_operand046

concat_index_from_operand_id044:                  ; preds = %concatenate.17.merge39
  %264 = phi i64 [ 0, %concatenate.17.merge39 ]
  %265 = sub nsw i64 3, %264
  %266 = getelementptr inbounds [2 x i32], [2 x i32]* %195, i64 0, i64 %265
  %267 = load i32, i32* %266, align 4, !alias.scope !68, !noalias !192
  br label %concatenate.19.merge

concat_index_from_operand_id145:                  ; preds = %concat_index_not_from_operand046
  %268 = phi i64 [ 2, %concat_index_not_from_operand046 ]
  %269 = sub nsw i64 3, %268
  %270 = getelementptr inbounds [2 x i32], [2 x i32]* %198, i64 0, i64 %269
  %271 = load i32, i32* %270, align 4, !alias.scope !63, !noalias !193
  br label %concatenate.19.merge

concat_index_not_from_operand046:                 ; preds = %concatenate.17.merge39
  br i1 true, label %concat_index_from_operand_id145, label %concat_index_not_from_operand147

concat_index_not_from_operand147:                 ; preds = %concat_index_not_from_operand046
  unreachable

concatenate.19.merge:                             ; preds = %concat_index_from_operand_id145, %concat_index_from_operand_id044
  %272 = phi i32 [ %267, %concat_index_from_operand_id044 ], [ %271, %concat_index_from_operand_id145 ]
  store i32 %272, i32* %fusion.13, align 4, !alias.scope !190, !noalias !197
  %273 = getelementptr inbounds i8*, i8** %buffer_table, i64 20
  %274 = load i8*, i8** %273, align 8, !invariant.load !0, !dereferenceable !1, !align !2
  %275 = getelementptr inbounds i8, i8* %274, i64 240
  %fusion.15 = bitcast i8* %275 to i32*
  br i1 false, label %concat_index_from_operand_id048, label %concat_index_not_from_operand050

concat_index_from_operand_id048:                  ; preds = %concatenate.19.merge
  %276 = phi i64 [ 0, %concatenate.19.merge ]
  %277 = sub nsw i64 2, %276
  %278 = getelementptr inbounds [2 x i32], [2 x i32]* %195, i64 0, i64 %277
  %279 = load i32, i32* %278, align 4, !alias.scope !68, !noalias !192
  br label %concatenate.21.merge

concat_index_from_operand_id149:                  ; preds = %concat_index_not_from_operand050
  %280 = phi i64 [ 2, %concat_index_not_from_operand050 ]
  %281 = sub nsw i64 2, %280
  %282 = getelementptr inbounds [2 x i32], [2 x i32]* %198, i64 0, i64 %281
  %283 = load i32, i32* %282, align 4, !alias.scope !63, !noalias !193
  br label %concatenate.21.merge

concat_index_not_from_operand050:                 ; preds = %concatenate.19.merge
  br i1 true, label %concat_index_from_operand_id149, label %concat_index_not_from_operand151

concat_index_not_from_operand151:                 ; preds = %concat_index_not_from_operand050
  unreachable

concatenate.21.merge:                             ; preds = %concat_index_from_operand_id149, %concat_index_from_operand_id048
  %284 = phi i32 [ %279, %concat_index_from_operand_id048 ], [ %283, %concat_index_from_operand_id149 ]
  store i32 %284, i32* %fusion.15, align 4, !alias.scope !72, !noalias !198
  %285 = getelementptr inbounds i8*, i8** %buffer_table, i64 0
  %286 = load i8*, i8** %285, align 8, !invariant.load !0, !dereferenceable !4, !align !2
  %copy.78 = bitcast i8* %286 to [4 x i32]*
  %287 = bitcast [4 x i32]* %copy.78 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %287, i8* align 1 getelementptr inbounds ([16 x i8], [16 x i8]* @1, i32 0, i32 0), i64 16, i1 false)
  %288 = getelementptr inbounds i8*, i8** %buffer_table, i64 20
  %289 = load i8*, i8** %288, align 8, !invariant.load !0, !dereferenceable !1, !align !2
  %290 = getelementptr inbounds i8, i8* %289, i64 144
  %copy.79 = bitcast i8* %290 to [4 x i32]*
  %291 = bitcast [4 x i32]* %copy.79 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %291, i8* align 1 getelementptr inbounds ([16 x i8], [16 x i8]* @2, i32 0, i32 0), i64 16, i1 false)
  %292 = getelementptr inbounds i8*, i8** %buffer_table, i64 20
  %293 = load i8*, i8** %292, align 8, !invariant.load !0, !dereferenceable !1, !align !2
  %294 = getelementptr inbounds i8, i8* %293, i64 256
  %copy.72 = bitcast i8* %294 to i32*
  %295 = bitcast i32* %copy.72 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %295, i8* align 1 getelementptr inbounds ([4 x i8], [4 x i8]* @4, i32 0, i32 0), i64 4, i1 false)
  %296 = getelementptr inbounds i8*, i8** %buffer_table, i64 20
  %297 = load i8*, i8** %296, align 8, !invariant.load !0, !dereferenceable !1, !align !2
  %tuple.100 = bitcast i8* %297 to [8 x i8*]*
  %298 = bitcast i32* %copy.72 to i8*
  %299 = getelementptr inbounds [8 x i8*], [8 x i8*]* %tuple.100, i64 0, i64 0
  store i8* %298, i8** %299, align 8, !alias.scope !149, !noalias !150
  %300 = bitcast [16 x i32]* %fusion.14 to i8*
  %301 = getelementptr inbounds [8 x i8*], [8 x i8*]* %tuple.100, i64 0, i64 1
  store i8* %300, i8** %301, align 8, !alias.scope !149, !noalias !150
  %302 = bitcast [16 x i32]* %fusion.12 to i8*
  %303 = getelementptr inbounds [8 x i8*], [8 x i8*]* %tuple.100, i64 0, i64 2
  store i8* %302, i8** %303, align 8, !alias.scope !149, !noalias !150
  %304 = bitcast i32* %fusion.13 to i8*
  %305 = getelementptr inbounds [8 x i8*], [8 x i8*]* %tuple.100, i64 0, i64 3
  store i8* %304, i8** %305, align 8, !alias.scope !149, !noalias !150
  %306 = bitcast i32* %fusion.11 to i8*
  %307 = getelementptr inbounds [8 x i8*], [8 x i8*]* %tuple.100, i64 0, i64 4
  store i8* %306, i8** %307, align 8, !alias.scope !149, !noalias !150
  %308 = bitcast i32* %fusion.15 to i8*
  %309 = getelementptr inbounds [8 x i8*], [8 x i8*]* %tuple.100, i64 0, i64 5
  store i8* %308, i8** %309, align 8, !alias.scope !149, !noalias !150
  %310 = bitcast [4 x i32]* %copy.78 to i8*
  %311 = getelementptr inbounds [8 x i8*], [8 x i8*]* %tuple.100, i64 0, i64 6
  store i8* %310, i8** %311, align 8, !alias.scope !149, !noalias !150
  %312 = bitcast [4 x i32]* %copy.79 to i8*
  %313 = getelementptr inbounds [8 x i8*], [8 x i8*]* %tuple.100, i64 0, i64 7
  store i8* %312, i8** %313, align 8, !alias.scope !149, !noalias !150
  br label %while.17.header

while.17.header:                                  ; preds = %while.17.body, %concatenate.21.merge
  call void @cond_computation__3.860.clone(i8* null, i8* %run_options, i8** null, i8** %buffer_table, i64* %prof_counters)
  %314 = getelementptr inbounds i8*, i8** %buffer_table, i64 20
  %315 = load i8*, i8** %314, align 8, !invariant.load !0, !dereferenceable !1, !align !2
  %316 = getelementptr inbounds i8, i8* %315, i64 192
  %317 = load i8, i8* %316, align 1
  %318 = icmp ne i8 %317, 0
  br i1 %318, label %while.17.body, label %while.17.exit

while.17.body:                                    ; preds = %while.17.header
  call void @body_computation__3.792.clone(i8* null, i8* %run_options, i8** null, i8** %buffer_table, i64* %prof_counters)
  br label %while.17.header

while.17.exit:                                    ; preds = %while.17.header
  %319 = getelementptr inbounds [8 x i8*], [8 x i8*]* %tuple.100, i64 0, i64 1
  %320 = load i8*, i8** %319, align 8, !dereferenceable !121, !align !2
  %321 = bitcast i8* %320 to [16 x i32]*
  %322 = getelementptr inbounds [8 x i8*], [8 x i8*]* %tuple.100, i64 0, i64 2
  %323 = load i8*, i8** %322, align 8, !dereferenceable !121, !align !2
  %324 = bitcast i8* %323 to [16 x i32]*
  %325 = getelementptr inbounds i8*, i8** %buffer_table, i64 20
  %326 = load i8*, i8** %325, align 8, !invariant.load !0, !dereferenceable !1, !align !2
  %327 = getelementptr inbounds i8, i8* %326, i64 33554624
  %fusion.10 = bitcast i8* %327 to [1 x [1 x [1 x [32 x float]]]]*
  store i64 0, i64* %fusion.10.invar_address.dim.0, align 8
  br label %fusion.10.loop_header.dim.0

fusion.10.loop_header.dim.0:                      ; preds = %fusion.10.loop_exit.dim.1, %while.17.exit
  %fusion.10.indvar.dim.0 = load i64, i64* %fusion.10.invar_address.dim.0, align 8
  %328 = icmp uge i64 %fusion.10.indvar.dim.0, 1
  br i1 %328, label %fusion.10.loop_exit.dim.0, label %fusion.10.loop_body.dim.0

fusion.10.loop_body.dim.0:                        ; preds = %fusion.10.loop_header.dim.0
  store i64 0, i64* %fusion.10.invar_address.dim.1, align 8
  br label %fusion.10.loop_header.dim.1

fusion.10.loop_header.dim.1:                      ; preds = %fusion.10.loop_exit.dim.2, %fusion.10.loop_body.dim.0
  %fusion.10.indvar.dim.1 = load i64, i64* %fusion.10.invar_address.dim.1, align 8
  %329 = icmp uge i64 %fusion.10.indvar.dim.1, 1
  br i1 %329, label %fusion.10.loop_exit.dim.1, label %fusion.10.loop_body.dim.1

fusion.10.loop_body.dim.1:                        ; preds = %fusion.10.loop_header.dim.1
  store i64 0, i64* %fusion.10.invar_address.dim.2, align 8
  br label %fusion.10.loop_header.dim.2

fusion.10.loop_header.dim.2:                      ; preds = %fusion.10.loop_exit.dim.3, %fusion.10.loop_body.dim.1
  %fusion.10.indvar.dim.2 = load i64, i64* %fusion.10.invar_address.dim.2, align 8
  %330 = icmp uge i64 %fusion.10.indvar.dim.2, 1
  br i1 %330, label %fusion.10.loop_exit.dim.2, label %fusion.10.loop_body.dim.2

fusion.10.loop_body.dim.2:                        ; preds = %fusion.10.loop_header.dim.2
  store i64 0, i64* %fusion.10.invar_address.dim.3, align 8
  br label %fusion.10.loop_header.dim.3

fusion.10.loop_header.dim.3:                      ; preds = %concatenate.15.merge, %fusion.10.loop_body.dim.2
  %fusion.10.indvar.dim.3 = load i64, i64* %fusion.10.invar_address.dim.3, align 8
  %331 = icmp uge i64 %fusion.10.indvar.dim.3, 32
  br i1 %331, label %fusion.10.loop_exit.dim.3, label %fusion.10.loop_body.dim.3

fusion.10.loop_body.dim.3:                        ; preds = %fusion.10.loop_header.dim.3
  %332 = load float, float* bitcast ([4 x i8]* @104 to float*), align 4
  %333 = icmp ult i64 %fusion.10.indvar.dim.3, 16
  br i1 %333, label %concat_index_from_operand_id056, label %concat_index_not_from_operand058

concat_index_from_operand_id056:                  ; preds = %fusion.10.loop_body.dim.3
  %334 = phi i64 [ 0, %fusion.10.loop_body.dim.3 ]
  %335 = sub nsw i64 %fusion.10.indvar.dim.3, %334
  %336 = getelementptr inbounds [16 x i32], [16 x i32]* %321, i64 0, i64 %335
  %337 = load i32, i32* %336, align 4, !alias.scope !143, !noalias !199
  br label %concatenate.15.merge

concat_index_from_operand_id157:                  ; preds = %concat_index_not_from_operand058
  %338 = phi i64 [ 16, %concat_index_not_from_operand058 ]
  %339 = sub nsw i64 %fusion.10.indvar.dim.3, %338
  %340 = getelementptr inbounds [16 x i32], [16 x i32]* %324, i64 0, i64 %339
  %341 = load i32, i32* %340, align 4, !alias.scope !139, !noalias !200
  br label %concatenate.15.merge

concat_index_not_from_operand058:                 ; preds = %fusion.10.loop_body.dim.3
  %342 = icmp ult i64 %fusion.10.indvar.dim.3, 32
  br i1 %342, label %concat_index_from_operand_id157, label %concat_index_not_from_operand159

concat_index_not_from_operand159:                 ; preds = %concat_index_not_from_operand058
  unreachable

concatenate.15.merge:                             ; preds = %concat_index_from_operand_id157, %concat_index_from_operand_id056
  %343 = phi i32 [ %337, %concat_index_from_operand_id056 ], [ %341, %concat_index_from_operand_id157 ]
  %344 = load i32, i32* bitcast ([4 x i8]* @105 to i32*), align 4
  %345 = lshr i32 %343, %344
  %shft.chk = icmp ult i32 %344, 32
  %346 = select i1 %shft.chk, i32 %345, i32 0
  %347 = load i32, i32* bitcast ([4 x i8]* @106 to i32*), align 4
  %348 = or i32 %346, %347
  %349 = bitcast i32 %348 to float
  %350 = load float, float* bitcast ([4 x i8]* @107 to float*), align 4
  %351 = fadd reassoc nsz contract float %349, %350
  %352 = load float, float* bitcast ([4 x i8]* @108 to float*), align 4
  %353 = fmul reassoc nsz contract float %351, %352
  %354 = load float, float* bitcast ([4 x i8]* @109 to float*), align 4
  %355 = fadd reassoc nsz contract float %353, %354
  %356 = fcmp reassoc nsz contract oge float %332, %355
  %357 = fcmp reassoc nsz contract une float %332, %332
  %358 = or i1 %356, %357
  %359 = select reassoc nsz contract i1 %358, float %332, float %355
  %360 = fneg reassoc nsz contract float %359
  %361 = fmul reassoc nsz contract float %360, %359
  %362 = fadd reassoc nsz contract float %361, 1.000000e+00
  %363 = call reassoc nsz contract float @llvm.log.f32(float %362)
  %364 = fmul reassoc nsz contract float %361, %361
  %365 = fmul reassoc nsz contract float 0.000000e+00, %361
  %366 = fadd reassoc nsz contract float %365, 1.000000e+00
  %367 = fmul reassoc nsz contract float %366, %361
  %368 = fadd reassoc nsz contract float %367, 0x402E2035A0000000
  %369 = fmul reassoc nsz contract float %368, %361
  %370 = fadd reassoc nsz contract float %369, 0x4054C30B60000000
  %371 = fmul reassoc nsz contract float %370, %361
  %372 = fadd reassoc nsz contract float %371, 0x406BB865A0000000
  %373 = fmul reassoc nsz contract float %372, %361
  %374 = fadd reassoc nsz contract float %373, 0x4073519460000000
  %375 = fmul reassoc nsz contract float %374, %361
  %376 = fadd reassoc nsz contract float %375, 0x406B0DB140000000
  %377 = fmul reassoc nsz contract float %376, %361
  %378 = fadd reassoc nsz contract float %377, 0x404E0F3040000000
  %379 = fmul reassoc nsz contract float 0.000000e+00, %361
  %380 = fadd reassoc nsz contract float %379, 0x3F07BC0960000000
  %381 = fmul reassoc nsz contract float %380, %361
  %382 = fadd reassoc nsz contract float %381, 0x3FDFE818A0000000
  %383 = fmul reassoc nsz contract float %382, %361
  %384 = fadd reassoc nsz contract float %383, 0x401A509F40000000
  %385 = fmul reassoc nsz contract float %384, %361
  %386 = fadd reassoc nsz contract float %385, 0x403DE97380000000
  %387 = fmul reassoc nsz contract float %386, %361
  %388 = fadd reassoc nsz contract float %387, 0x404E798EC0000000
  %389 = fmul reassoc nsz contract float %388, %361
  %390 = fadd reassoc nsz contract float %389, 0x404C8E75A0000000
  %391 = fmul reassoc nsz contract float %390, %361
  %392 = fadd reassoc nsz contract float %391, 0x40340A2020000000
  %393 = fdiv reassoc nsz contract float %392, %378
  %394 = fmul reassoc nsz contract float %361, %364
  %395 = fmul reassoc nsz contract float %394, %393
  %396 = fmul reassoc nsz contract float -5.000000e-01, %364
  %397 = fadd reassoc nsz contract float %396, %395
  %398 = fadd reassoc nsz contract float %361, %397
  %399 = call reassoc nsz contract float @llvm.fabs.f32(float %361)
  %400 = fcmp reassoc nsz contract olt float %399, 0x3FDA8279A0000000
  %401 = select reassoc nsz contract i1 %400, float %398, float %363
  %402 = getelementptr inbounds [1 x [1 x [1 x [32 x float]]]], [1 x [1 x [1 x [32 x float]]]]* %fusion.10, i64 0, i64 0, i64 0, i64 0, i64 %fusion.10.indvar.dim.3
  store float %401, float* %402, align 4, !alias.scope !176, !noalias !201
  %invar.inc55 = add nuw nsw i64 %fusion.10.indvar.dim.3, 1
  store i64 %invar.inc55, i64* %fusion.10.invar_address.dim.3, align 8
  br label %fusion.10.loop_header.dim.3

fusion.10.loop_exit.dim.3:                        ; preds = %fusion.10.loop_header.dim.3
  %invar.inc54 = add nuw nsw i64 %fusion.10.indvar.dim.2, 1
  store i64 %invar.inc54, i64* %fusion.10.invar_address.dim.2, align 8
  br label %fusion.10.loop_header.dim.2

fusion.10.loop_exit.dim.2:                        ; preds = %fusion.10.loop_header.dim.2
  %invar.inc53 = add nuw nsw i64 %fusion.10.indvar.dim.1, 1
  store i64 %invar.inc53, i64* %fusion.10.invar_address.dim.1, align 8
  br label %fusion.10.loop_header.dim.1

fusion.10.loop_exit.dim.1:                        ; preds = %fusion.10.loop_header.dim.1
  %invar.inc52 = add nuw nsw i64 %fusion.10.indvar.dim.0, 1
  store i64 %invar.inc52, i64* %fusion.10.invar_address.dim.0, align 8
  br label %fusion.10.loop_header.dim.0

fusion.10.loop_exit.dim.0:                        ; preds = %fusion.10.loop_header.dim.0
  %403 = getelementptr inbounds i8*, i8** %buffer_table, i64 20
  %404 = load i8*, i8** %403, align 8, !invariant.load !0, !dereferenceable !1, !align !2
  %405 = getelementptr inbounds i8, i8* %404, i64 33554496
  %fusion.9 = bitcast i8* %405 to [1 x [1 x [1 x [32 x float]]]]*
  store i64 0, i64* %fusion.9.invar_address.dim.0, align 8
  br label %fusion.9.loop_header.dim.0

fusion.9.loop_header.dim.0:                       ; preds = %fusion.9.loop_exit.dim.1, %fusion.10.loop_exit.dim.0
  %fusion.9.indvar.dim.0 = load i64, i64* %fusion.9.invar_address.dim.0, align 8
  %406 = icmp uge i64 %fusion.9.indvar.dim.0, 1
  br i1 %406, label %fusion.9.loop_exit.dim.0, label %fusion.9.loop_body.dim.0

fusion.9.loop_body.dim.0:                         ; preds = %fusion.9.loop_header.dim.0
  store i64 0, i64* %fusion.9.invar_address.dim.1, align 8
  br label %fusion.9.loop_header.dim.1

fusion.9.loop_header.dim.1:                       ; preds = %fusion.9.loop_exit.dim.2, %fusion.9.loop_body.dim.0
  %fusion.9.indvar.dim.1 = load i64, i64* %fusion.9.invar_address.dim.1, align 8
  %407 = icmp uge i64 %fusion.9.indvar.dim.1, 1
  br i1 %407, label %fusion.9.loop_exit.dim.1, label %fusion.9.loop_body.dim.1

fusion.9.loop_body.dim.1:                         ; preds = %fusion.9.loop_header.dim.1
  store i64 0, i64* %fusion.9.invar_address.dim.2, align 8
  br label %fusion.9.loop_header.dim.2

fusion.9.loop_header.dim.2:                       ; preds = %fusion.9.loop_exit.dim.3, %fusion.9.loop_body.dim.1
  %fusion.9.indvar.dim.2 = load i64, i64* %fusion.9.invar_address.dim.2, align 8
  %408 = icmp uge i64 %fusion.9.indvar.dim.2, 1
  br i1 %408, label %fusion.9.loop_exit.dim.2, label %fusion.9.loop_body.dim.2

fusion.9.loop_body.dim.2:                         ; preds = %fusion.9.loop_header.dim.2
  store i64 0, i64* %fusion.9.invar_address.dim.3, align 8
  br label %fusion.9.loop_header.dim.3

fusion.9.loop_header.dim.3:                       ; preds = %fusion.9.loop_body.dim.3, %fusion.9.loop_body.dim.2
  %fusion.9.indvar.dim.3 = load i64, i64* %fusion.9.invar_address.dim.3, align 8
  %409 = icmp uge i64 %fusion.9.indvar.dim.3, 32
  br i1 %409, label %fusion.9.loop_exit.dim.3, label %fusion.9.loop_body.dim.3

fusion.9.loop_body.dim.3:                         ; preds = %fusion.9.loop_header.dim.3
  %410 = getelementptr inbounds [1 x [1 x [1 x [32 x float]]]], [1 x [1 x [1 x [32 x float]]]]* %fusion.10, i64 0, i64 0, i64 0, i64 0, i64 %fusion.9.indvar.dim.3
  %411 = load float, float* %410, align 4, !alias.scope !176, !noalias !201
  %412 = fneg reassoc nsz contract float %411
  %413 = call reassoc nsz contract float @llvm.sqrt.f32(float %412)
  %414 = getelementptr inbounds [1 x [1 x [1 x [32 x float]]]], [1 x [1 x [1 x [32 x float]]]]* %fusion.9, i64 0, i64 0, i64 0, i64 0, i64 %fusion.9.indvar.dim.3
  store float %413, float* %414, align 4, !alias.scope !178, !noalias !202
  %invar.inc63 = add nuw nsw i64 %fusion.9.indvar.dim.3, 1
  store i64 %invar.inc63, i64* %fusion.9.invar_address.dim.3, align 8
  br label %fusion.9.loop_header.dim.3

fusion.9.loop_exit.dim.3:                         ; preds = %fusion.9.loop_header.dim.3
  %invar.inc62 = add nuw nsw i64 %fusion.9.indvar.dim.2, 1
  store i64 %invar.inc62, i64* %fusion.9.invar_address.dim.2, align 8
  br label %fusion.9.loop_header.dim.2

fusion.9.loop_exit.dim.2:                         ; preds = %fusion.9.loop_header.dim.2
  %invar.inc61 = add nuw nsw i64 %fusion.9.indvar.dim.1, 1
  store i64 %invar.inc61, i64* %fusion.9.invar_address.dim.1, align 8
  br label %fusion.9.loop_header.dim.1

fusion.9.loop_exit.dim.1:                         ; preds = %fusion.9.loop_header.dim.1
  %invar.inc60 = add nuw nsw i64 %fusion.9.indvar.dim.0, 1
  store i64 %invar.inc60, i64* %fusion.9.invar_address.dim.0, align 8
  br label %fusion.9.loop_header.dim.0

fusion.9.loop_exit.dim.0:                         ; preds = %fusion.9.loop_header.dim.0
  %415 = getelementptr inbounds i8*, i8** %buffer_table, i64 20
  %416 = load i8*, i8** %415, align 8, !invariant.load !0, !dereferenceable !1, !align !2
  %417 = getelementptr inbounds i8, i8* %416, i64 18496
  %fusion.18 = bitcast i8* %417 to [2304 x i32]*
  store i64 0, i64* %fusion.18.invar_address.dim.0, align 8
  br label %fusion.18.loop_header.dim.0

fusion.18.loop_header.dim.0:                      ; preds = %fusion.18.loop_body.dim.0, %fusion.9.loop_exit.dim.0
  %fusion.18.indvar.dim.0 = load i64, i64* %fusion.18.invar_address.dim.0, align 8
  %418 = icmp uge i64 %fusion.18.indvar.dim.0, 2304
  br i1 %418, label %fusion.18.loop_exit.dim.0, label %fusion.18.loop_body.dim.0

fusion.18.loop_body.dim.0:                        ; preds = %fusion.18.loop_header.dim.0
  %419 = add i64 %fusion.18.indvar.dim.0, 2304
  %420 = mul nuw nsw i64 %419, 1
  %421 = add nuw nsw i64 0, %420
  %422 = trunc i64 %421 to i32
  %423 = getelementptr inbounds [2 x i32], [2 x i32]* %195, i64 0, i64 1
  %424 = load i32, i32* %423, align 4, !alias.scope !68, !noalias !192
  %425 = add i32 %422, %424
  %426 = getelementptr inbounds [2304 x i32], [2304 x i32]* %fusion.18, i64 0, i64 %fusion.18.indvar.dim.0
  store i32 %425, i32* %426, align 4, !alias.scope !85, !noalias !203
  %invar.inc64 = add nuw nsw i64 %fusion.18.indvar.dim.0, 1
  store i64 %invar.inc64, i64* %fusion.18.invar_address.dim.0, align 8
  br label %fusion.18.loop_header.dim.0

fusion.18.loop_exit.dim.0:                        ; preds = %fusion.18.loop_header.dim.0
  %427 = getelementptr inbounds i8*, i8** %buffer_table, i64 0
  %428 = load i8*, i8** %427, align 8, !invariant.load !0, !dereferenceable !4, !align !2
  %fusion.20 = bitcast i8* %428 to [2304 x i32]*
  store i64 0, i64* %fusion.20.invar_address.dim.0, align 8
  br label %fusion.20.loop_header.dim.0

fusion.20.loop_header.dim.0:                      ; preds = %fusion.20.loop_body.dim.0, %fusion.18.loop_exit.dim.0
  %fusion.20.indvar.dim.0 = load i64, i64* %fusion.20.invar_address.dim.0, align 8
  %429 = icmp uge i64 %fusion.20.indvar.dim.0, 2304
  br i1 %429, label %fusion.20.loop_exit.dim.0, label %fusion.20.loop_body.dim.0

fusion.20.loop_body.dim.0:                        ; preds = %fusion.20.loop_header.dim.0
  %430 = add i64 %fusion.20.indvar.dim.0, 0
  %431 = mul nuw nsw i64 %430, 1
  %432 = add nuw nsw i64 0, %431
  %433 = trunc i64 %432 to i32
  %434 = getelementptr inbounds [2 x i32], [2 x i32]* %195, i64 0, i64 0
  %435 = load i32, i32* %434, align 4, !alias.scope !68, !noalias !192
  %436 = add i32 %433, %435
  %437 = getelementptr inbounds [2304 x i32], [2304 x i32]* %fusion.20, i64 0, i64 %fusion.20.indvar.dim.0
  store i32 %436, i32* %437, align 4, !alias.scope !95, !noalias !204
  %invar.inc65 = add nuw nsw i64 %fusion.20.indvar.dim.0, 1
  store i64 %invar.inc65, i64* %fusion.20.invar_address.dim.0, align 8
  br label %fusion.20.loop_header.dim.0

fusion.20.loop_exit.dim.0:                        ; preds = %fusion.20.loop_header.dim.0
  %438 = getelementptr inbounds i8*, i8** %buffer_table, i64 20
  %439 = load i8*, i8** %438, align 8, !invariant.load !0, !dereferenceable !1, !align !2
  %440 = getelementptr inbounds i8, i8* %439, i64 27744
  %fusion.17 = bitcast i8* %440 to i32*
  %441 = getelementptr inbounds [2 x i32], [2 x i32]* %195, i64 0, i64 0
  %442 = load i32, i32* %441, align 4, !alias.scope !68, !noalias !192
  %443 = getelementptr inbounds [2 x i32], [2 x i32]* %195, i64 0, i64 1
  %444 = load i32, i32* %443, align 4, !alias.scope !68, !noalias !192
  %445 = xor i32 %442, %444
  %446 = load i32, i32* bitcast ([4 x i8]* @110 to i32*), align 4
  %447 = xor i32 %445, %446
  store i32 %447, i32* %fusion.17, align 4, !alias.scope !97, !noalias !205
  %448 = getelementptr inbounds i8*, i8** %buffer_table, i64 20
  %449 = load i8*, i8** %448, align 8, !invariant.load !0, !dereferenceable !1, !align !2
  %450 = getelementptr inbounds i8, i8* %449, i64 27792
  %fusion.19 = bitcast i8* %450 to i32*
  %451 = getelementptr inbounds [2 x i32], [2 x i32]* %195, i64 0, i64 1
  %452 = load i32, i32* %451, align 4, !alias.scope !68, !noalias !192
  store i32 %452, i32* %fusion.19, align 4, !alias.scope !206, !noalias !207
  %453 = getelementptr inbounds i8*, i8** %buffer_table, i64 20
  %454 = load i8*, i8** %453, align 8, !invariant.load !0, !dereferenceable !1, !align !2
  %455 = getelementptr inbounds i8, i8* %454, i64 27808
  %fusion.21 = bitcast i8* %455 to i32*
  %456 = getelementptr inbounds [2 x i32], [2 x i32]* %195, i64 0, i64 0
  %457 = load i32, i32* %456, align 4, !alias.scope !68, !noalias !192
  store i32 %457, i32* %fusion.21, align 4, !alias.scope !208, !noalias !209
  %458 = getelementptr inbounds i8*, i8** %buffer_table, i64 20
  %459 = load i8*, i8** %458, align 8, !invariant.load !0, !dereferenceable !1, !align !2
  %460 = getelementptr inbounds i8, i8* %459, i64 80
  %copy.54 = bitcast i8* %460 to [4 x i32]*
  %461 = bitcast [4 x i32]* %copy.54 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %461, i8* align 1 getelementptr inbounds ([16 x i8], [16 x i8]* @1, i32 0, i32 0), i64 16, i1 false)
  %462 = getelementptr inbounds i8*, i8** %buffer_table, i64 20
  %463 = load i8*, i8** %462, align 8, !invariant.load !0, !dereferenceable !1, !align !2
  %464 = getelementptr inbounds i8, i8* %463, i64 27728
  %copy.55 = bitcast i8* %464 to [4 x i32]*
  %465 = bitcast [4 x i32]* %copy.55 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %465, i8* align 1 getelementptr inbounds ([16 x i8], [16 x i8]* @2, i32 0, i32 0), i64 16, i1 false)
  %466 = getelementptr inbounds i8*, i8** %buffer_table, i64 20
  %467 = load i8*, i8** %466, align 8, !invariant.load !0, !dereferenceable !1, !align !2
  %468 = getelementptr inbounds i8, i8* %467, i64 27824
  %copy.48 = bitcast i8* %468 to i32*
  %469 = bitcast i32* %copy.48 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %469, i8* align 1 getelementptr inbounds ([4 x i8], [4 x i8]* @4, i32 0, i32 0), i64 4, i1 false)
  %470 = getelementptr inbounds i8*, i8** %buffer_table, i64 20
  %471 = load i8*, i8** %470, align 8, !invariant.load !0, !dereferenceable !1, !align !2
  %472 = getelementptr inbounds i8, i8* %471, i64 33554880
  %tuple.97 = bitcast i8* %472 to [8 x i8*]*
  %473 = bitcast i32* %copy.48 to i8*
  %474 = getelementptr inbounds [8 x i8*], [8 x i8*]* %tuple.97, i64 0, i64 0
  store i8* %473, i8** %474, align 8, !alias.scope !112, !noalias !113
  %475 = bitcast [2304 x i32]* %fusion.20 to i8*
  %476 = getelementptr inbounds [8 x i8*], [8 x i8*]* %tuple.97, i64 0, i64 1
  store i8* %475, i8** %476, align 8, !alias.scope !112, !noalias !113
  %477 = bitcast [2304 x i32]* %fusion.18 to i8*
  %478 = getelementptr inbounds [8 x i8*], [8 x i8*]* %tuple.97, i64 0, i64 2
  store i8* %477, i8** %478, align 8, !alias.scope !112, !noalias !113
  %479 = bitcast i32* %fusion.19 to i8*
  %480 = getelementptr inbounds [8 x i8*], [8 x i8*]* %tuple.97, i64 0, i64 3
  store i8* %479, i8** %480, align 8, !alias.scope !112, !noalias !113
  %481 = bitcast i32* %fusion.17 to i8*
  %482 = getelementptr inbounds [8 x i8*], [8 x i8*]* %tuple.97, i64 0, i64 4
  store i8* %481, i8** %482, align 8, !alias.scope !112, !noalias !113
  %483 = bitcast i32* %fusion.21 to i8*
  %484 = getelementptr inbounds [8 x i8*], [8 x i8*]* %tuple.97, i64 0, i64 5
  store i8* %483, i8** %484, align 8, !alias.scope !112, !noalias !113
  %485 = bitcast [4 x i32]* %copy.54 to i8*
  %486 = getelementptr inbounds [8 x i8*], [8 x i8*]* %tuple.97, i64 0, i64 6
  store i8* %485, i8** %486, align 8, !alias.scope !112, !noalias !113
  %487 = bitcast [4 x i32]* %copy.55 to i8*
  %488 = getelementptr inbounds [8 x i8*], [8 x i8*]* %tuple.97, i64 0, i64 7
  store i8* %487, i8** %488, align 8, !alias.scope !112, !noalias !113
  br label %while.16.header

while.16.header:                                  ; preds = %while.16.body, %fusion.20.loop_exit.dim.0
  call void @cond_computation__2.377.clone(i8* null, i8* %run_options, i8** null, i8** %buffer_table, i64* %prof_counters)
  %489 = getelementptr inbounds i8*, i8** %buffer_table, i64 20
  %490 = load i8*, i8** %489, align 8, !invariant.load !0, !dereferenceable !1, !align !2
  %491 = getelementptr inbounds i8, i8* %490, i64 64
  %492 = load i8, i8* %491, align 1
  %493 = icmp ne i8 %492, 0
  br i1 %493, label %while.16.body, label %while.16.exit

while.16.body:                                    ; preds = %while.16.header
  call void @body_computation__2.309.clone(i8* null, i8* %run_options, i8** null, i8** %buffer_table, i64* %prof_counters)
  br label %while.16.header

while.16.exit:                                    ; preds = %while.16.header
  %494 = getelementptr inbounds [8 x i8*], [8 x i8*]* %tuple.97, i64 0, i64 1
  %495 = load i8*, i8** %494, align 8, !dereferenceable !99, !align !2
  %496 = bitcast i8* %495 to [2304 x i32]*
  %497 = getelementptr inbounds [8 x i8*], [8 x i8*]* %tuple.97, i64 0, i64 2
  %498 = load i8*, i8** %497, align 8, !dereferenceable !99, !align !2
  %499 = bitcast i8* %498 to [2304 x i32]*
  %500 = getelementptr inbounds i8*, i8** %buffer_table, i64 20
  %501 = load i8*, i8** %500, align 8, !invariant.load !0, !dereferenceable !1, !align !2
  %502 = getelementptr inbounds i8, i8* %501, i64 16777280
  %call.5 = bitcast i8* %502 to [3 x [3 x [16 x [32 x float]]]]*
  %503 = bitcast [3 x [3 x [16 x [32 x float]]]]* %call.5 to i8*
  call void @__xla_cpu_runtime_ParallelForkJoin(i8* %503, i8* %run_options, i8** null, i8** %buffer_table, i64* %prof_counters, i32 4, i64* getelementptr inbounds ([16 x i64], [16 x i64]* @parallel_fusion.16_parallel_dimension_partitions, i32 0, i32 0), i32 2, i8* bitcast (void (i8*, i8*, i8**, i8**, i64*, i64*)* @parallel_fusion.16 to i8*))
  %504 = getelementptr inbounds i8*, i8** %buffer_table, i64 0
  %505 = load i8*, i8** %504, align 8, !invariant.load !0, !dereferenceable !4, !align !2
  %call = bitcast i8* %505 to [32 x [64 x [64 x [16 x float]]]]*
  %506 = bitcast [32 x [64 x [64 x [16 x float]]]]* %call to i8*
  call void @__xla_cpu_runtime_ParallelForkJoin(i8* %506, i8* %run_options, i8** null, i8** %buffer_table, i64* %prof_counters, i32 3, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @parallel_broadcast.1342_parallel_dimension_partitions, i32 0, i32 0), i32 1, i8* bitcast (void (i8*, i8*, i8**, i8**, i64*, i64*)* @parallel_broadcast.1342 to i8*))
  %507 = getelementptr inbounds i8*, i8** %buffer_table, i64 20
  %508 = load i8*, i8** %507, align 8, !invariant.load !0, !dereferenceable !1, !align !2
  %509 = getelementptr inbounds i8, i8* %508, i64 64
  %convolution.1343 = bitcast i8* %509 to [32 x [64 x [64 x [32 x float]]]]*
  %510 = bitcast [32 x [64 x [64 x [32 x float]]]]* %convolution.1343 to float*
  %511 = bitcast [32 x [64 x [64 x [16 x float]]]]* %call to float*
  %512 = bitcast [3 x [3 x [16 x [32 x float]]]]* %call.5 to float*
  call void @__xla_cpu_runtime_EigenConvF32(i8* %run_options, float* %510, float* %511, float* %512, i64 32, i64 64, i64 64, i64 16, i64 3, i64 3, i64 16, i64 32, i64 64, i64 64, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1, i64 1)
  %513 = getelementptr inbounds i8*, i8** %buffer_table, i64 20
  %514 = load i8*, i8** %513, align 8, !invariant.load !0, !dereferenceable !1, !align !2
  %515 = getelementptr inbounds i8, i8* %514, i64 16777280
  %call.4 = bitcast i8* %515 to [32 x [64 x [64 x [32 x float]]]]*
  %516 = bitcast [32 x [64 x [64 x [32 x float]]]]* %call.4 to i8*
  call void @__xla_cpu_runtime_ParallelForkJoin(i8* %516, i8* %run_options, i8** null, i8** %buffer_table, i64* %prof_counters, i32 3, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @parallel_fusion.8_parallel_dimension_partitions, i32 0, i32 0), i32 1, i8* bitcast (void (i8*, i8*, i8**, i8**, i64*, i64*)* @parallel_fusion.8 to i8*))
  %517 = getelementptr inbounds i8*, i8** %buffer_table, i64 0
  %518 = load i8*, i8** %517, align 8, !invariant.load !0, !dereferenceable !4, !align !2
  %call.1 = bitcast i8* %518 to [32 x [63 x [63 x [32 x float]]]]*
  %519 = bitcast [32 x [63 x [63 x [32 x float]]]]* %call.1 to i8*
  call void @__xla_cpu_runtime_ParallelForkJoin(i8* %519, i8* %run_options, i8** null, i8** %buffer_table, i64* %prof_counters, i32 3, i64* getelementptr inbounds ([6 x i64], [6 x i64]* @parallel_reduce-window.1355_parallel_dimension_partitions, i32 0, i32 0), i32 1, i8* bitcast (void (i8*, i8*, i8**, i8**, i64*, i64*)* @parallel_reduce-window.1355 to i8*))
  %520 = getelementptr inbounds i8*, i8** %buffer_table, i64 7
  %521 = load i8*, i8** %520, align 8, !invariant.load !0, !dereferenceable !3, !align !3
  %tuple.1356 = bitcast i8* %521 to [1 x i8*]*
  %522 = bitcast [32 x [63 x [63 x [32 x float]]]]* %call.1 to i8*
  %523 = getelementptr inbounds [1 x i8*], [1 x i8*]* %tuple.1356, i64 0, i64 0
  store i8* %522, i8** %523, align 8, !alias.scope !210, !noalias !170
  ret void
}

; Function Attrs: argmemonly nounwind
declare void @__xla_cpu_runtime_EigenConvF32(i8*, float*, float*, float*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #4

attributes #0 = { uwtable "denormal-fp-math"="preserve-sign" "no-frame-pointer-elim"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind }
attributes #3 = { nounwind readnone speculatable willreturn }
attributes #4 = { argmemonly nounwind }

!0 = !{}
!1 = !{i64 33555072}
!2 = !{i64 16}
!3 = !{i64 8}
!4 = !{i64 16257024}
!5 = !{i64 4}
!6 = !{!7}
!7 = !{!"buffer: {index:20, offset:80, size:8}", !8}
!8 = !{!"XLA global AA domain"}
!9 = !{!10, !11, !12, !13, !14, !15, !16}
!10 = !{!"buffer: {index:0, offset:0, size:8}", !8}
!11 = !{!"buffer: {index:20, offset:64, size:16}", !8}
!12 = !{!"buffer: {index:20, offset:112, size:4}", !8}
!13 = !{!"buffer: {index:20, offset:128, size:8}", !8}
!14 = !{!"buffer: {index:20, offset:144, size:8}", !8}
!15 = !{!"buffer: {index:20, offset:160, size:4}", !8}
!16 = !{!"buffer: {index:20, offset:176, size:4}", !8}
!17 = !{!10}
!18 = !{!11, !7, !12, !13, !14, !15, !16}
!19 = !{!11}
!20 = !{!10, !21, !7, !22, !12, !13, !14, !15, !16}
!21 = !{!"buffer: {index:0, offset:0, size:16}", !8}
!22 = !{!"buffer: {index:20, offset:96, size:16}", !8}
!23 = !{!12}
!24 = !{!10, !11, !7, !13, !15, !16, !25}
!25 = !{!"buffer: {index:20, offset:224, size:4}", !8}
!26 = !{!16}
!27 = !{!10, !28, !11, !7, !12, !13, !29}
!28 = !{!"buffer: {index:4, offset:0, size:4}", !8}
!29 = !{!"buffer: {index:20, offset:192, size:4}", !8}
!30 = !{!13}
!31 = !{!10, !21, !11, !7, !22, !12, !14, !15, !16, !29, !32, !25, !33}
!32 = !{!"buffer: {index:20, offset:208, size:4}", !8}
!33 = !{!"buffer: {index:20, offset:33555008, size:64}", !8}
!34 = !{!15}
!35 = !{!10, !11, !7, !14, !32, !25}
!36 = !{!14}
!37 = !{!10, !21, !11, !7, !22, !13, !15, !29, !32, !25, !33}
!38 = !{!28}
!39 = !{!16, !29}
!40 = !{!29}
!41 = !{!21, !28, !22, !13, !14, !15, !16, !32, !25, !33}
!42 = !{!33}
!43 = !{!21, !22, !13, !14, !15, !29, !32, !25}
!44 = !{!45, !46}
!45 = !{!"buffer: {index:19, offset:0, size:4}", !8}
!46 = !{!"buffer: {index:20, offset:112, size:1}", !8}
!47 = !{!45}
!48 = !{!46, !29}
!49 = !{!46}
!50 = !{!45, !29}
!51 = !{!10, !11, !52, !53, !54, !55, !16}
!52 = !{!"buffer: {index:20, offset:112, size:8}", !8}
!53 = !{!"buffer: {index:20, offset:128, size:4}", !8}
!54 = !{!"buffer: {index:20, offset:144, size:4}", !8}
!55 = !{!"buffer: {index:20, offset:160, size:8}", !8}
!56 = !{!11, !7, !52, !53, !54, !55, !16}
!57 = !{!10, !21, !7, !22, !52, !53, !54, !55, !16}
!58 = !{!10, !11, !7, !52, !54, !29, !32}
!59 = !{!54}
!60 = !{!10, !61, !11, !7, !52, !16, !62}
!61 = !{!"buffer: {index:18, offset:0, size:4}", !8}
!62 = !{!"buffer: {index:20, offset:240, size:4}", !8}
!63 = !{!52}
!64 = !{!10, !21, !11, !7, !22, !54, !55, !16, !29, !32, !25, !62, !65}
!65 = !{!"buffer: {index:20, offset:33554944, size:64}", !8}
!66 = !{!53}
!67 = !{!10, !11, !7, !55, !32, !25}
!68 = !{!55}
!69 = !{!10, !21, !11, !7, !22, !52, !53, !29, !32, !25, !62, !65}
!70 = !{!61}
!71 = !{!54, !62}
!72 = !{!62}
!73 = !{!21, !61, !22, !52, !54, !55, !29, !32, !25, !65}
!74 = !{!65}
!75 = !{!21, !22, !52, !55, !29, !32, !25, !62}
!76 = !{!77, !78}
!77 = !{!"buffer: {index:17, offset:0, size:4}", !8}
!78 = !{!"buffer: {index:20, offset:176, size:1}", !8}
!79 = !{!77}
!80 = !{!78, !62}
!81 = !{!78}
!82 = !{!77, !62}
!83 = !{!84}
!84 = !{!"buffer: {index:20, offset:64, size:9216}", !8}
!85 = !{!86}
!86 = !{!"buffer: {index:20, offset:18496, size:9216}", !8}
!87 = !{!88}
!88 = !{!"buffer: {index:20, offset:9280, size:9216}", !8}
!89 = !{!90}
!90 = !{!"buffer: {index:20, offset:27712, size:16}", !8}
!91 = !{!92}
!92 = !{!"buffer: {index:20, offset:27776, size:4}", !8}
!93 = !{!94}
!94 = !{!"buffer: {index:20, offset:27760, size:4}", !8}
!95 = !{!96}
!96 = !{!"buffer: {index:0, offset:0, size:9216}", !8}
!97 = !{!98}
!98 = !{!"buffer: {index:20, offset:27744, size:4}", !8}
!99 = !{i64 9216}
!100 = !{!101, !84, !88, !86, !90, !92, !102}
!101 = !{!"buffer: {index:16, offset:0, size:4}", !8}
!102 = !{!"buffer: {index:20, offset:27824, size:4}", !8}
!103 = !{!101}
!104 = !{!94, !102}
!105 = !{!102}
!106 = !{!96, !101, !107, !86, !108, !98, !94, !109, !110, !111}
!107 = !{!"buffer: {index:20, offset:80, size:16}", !8}
!108 = !{!"buffer: {index:20, offset:27728, size:16}", !8}
!109 = !{!"buffer: {index:20, offset:27792, size:4}", !8}
!110 = !{!"buffer: {index:20, offset:27808, size:4}", !8}
!111 = !{!"buffer: {index:20, offset:33554880, size:64}", !8}
!112 = !{!111}
!113 = !{!96, !107, !86, !108, !98, !109, !110, !102}
!114 = !{!115, !116}
!115 = !{!"buffer: {index:15, offset:0, size:4}", !8}
!116 = !{!"buffer: {index:20, offset:64, size:1}", !8}
!117 = !{!115}
!118 = !{!116, !102}
!119 = !{!116}
!120 = !{!115, !102}
!121 = !{i64 64}
!122 = !{!123}
!123 = !{!"buffer: {index:20, offset:64, size:64}", !8}
!124 = !{!125, !126, !16, !29, !32, !127, !128}
!125 = !{!"buffer: {index:0, offset:0, size:64}", !8}
!126 = !{!"buffer: {index:20, offset:128, size:16}", !8}
!127 = !{!"buffer: {index:20, offset:33554752, size:64}", !8}
!128 = !{!"buffer: {index:20, offset:33554816, size:64}", !8}
!129 = !{!125}
!130 = !{!123, !126, !16, !29, !32, !127, !128}
!131 = !{!126}
!132 = !{!21, !125, !123, !133, !16, !29, !32, !127, !128}
!133 = !{!"buffer: {index:20, offset:144, size:16}", !8}
!134 = !{!32}
!135 = !{!125, !123, !126, !16, !29, !25, !127}
!136 = !{!125, !137, !123, !126, !32, !138, !127}
!137 = !{!"buffer: {index:14, offset:0, size:4}", !8}
!138 = !{!"buffer: {index:20, offset:256, size:4}", !8}
!139 = !{!127}
!140 = !{!21, !125, !141, !123, !126, !133, !16, !29, !32, !25, !62, !138, !128}
!141 = !{!"buffer: {index:20, offset:0, size:64}", !8}
!142 = !{!125, !123, !126, !25, !62, !128}
!143 = !{!128}
!144 = !{!21, !125, !141, !123, !126, !133, !16, !25, !62, !138, !127}
!145 = !{!137}
!146 = !{!29, !138}
!147 = !{!138}
!148 = !{!21, !137, !141, !133, !16, !29, !25, !62, !127, !128}
!149 = !{!141}
!150 = !{!21, !133, !16, !25, !62, !138, !127, !128}
!151 = !{!152, !153}
!152 = !{!"buffer: {index:13, offset:0, size:4}", !8}
!153 = !{!"buffer: {index:20, offset:192, size:1}", !8}
!154 = !{!152}
!155 = !{!153, !138}
!156 = !{!153}
!157 = !{!152, !138}
!158 = !{!159}
!159 = !{!"buffer: {index:8, offset:0, size:4}", !8}
!160 = !{!161}
!161 = !{!"buffer: {index:0, offset:0, size:8388608}", !8}
!162 = !{!163}
!163 = !{!"buffer: {index:3, offset:0, size:4}", !8}
!164 = !{!165}
!165 = !{!"buffer: {index:1, offset:0, size:4}", !8}
!166 = !{!167}
!167 = !{!"buffer: {index:2, offset:0, size:4}", !8}
!168 = !{!169}
!169 = !{!"buffer: {index:12, offset:0, size:4}", !8}
!170 = !{!171}
!171 = !{!"buffer: {index:0, offset:0, size:16257024}", !8}
!172 = !{!173}
!173 = !{!"buffer: {index:20, offset:16777280, size:16777216}", !8}
!174 = !{!175}
!175 = !{!"buffer: {index:20, offset:64, size:16777216}", !8}
!176 = !{!177}
!177 = !{!"buffer: {index:20, offset:33554624, size:128}", !8}
!178 = !{!179}
!179 = !{!"buffer: {index:20, offset:33554496, size:128}", !8}
!180 = !{!181}
!181 = !{!"buffer: {index:20, offset:16777280, size:18432}", !8}
!182 = !{!21, !22, !14, !15, !29, !32, !25, !33}
!183 = !{!21, !22, !13, !15, !29, !32, !25, !33}
!184 = !{!21, !22, !52, !13, !15, !55, !29, !32, !25, !33}
!185 = !{!21, !22, !52, !14, !15, !55, !29, !32, !25, !33}
!186 = !{!21, !22, !13, !14, !55, !29, !32, !25, !62, !65}
!187 = !{!21, !22, !52, !13, !14, !29, !32, !25, !62, !65}
!188 = !{!21, !22, !52, !13, !14, !55, !32, !25, !62, !65}
!189 = !{!21, !22, !52, !13, !14, !55, !29, !25, !62, !65}
!190 = !{!25}
!191 = !{!21, !22, !52, !13, !14, !55, !29, !32, !62, !65}
!192 = !{!21, !96, !22, !52, !16, !29, !32, !25, !62, !86, !98, !109, !110, !127, !128, !65}
!193 = !{!21, !22, !55, !16, !29, !32, !25, !62, !127, !128, !65}
!194 = !{!21, !141, !52, !133, !55, !16, !25, !62, !138, !128}
!195 = !{!21, !141, !52, !133, !55, !16, !25, !62, !138, !127}
!196 = !{!21, !141, !52, !133, !55, !25, !62, !138, !127, !128}
!197 = !{!21, !141, !52, !133, !55, !16, !62, !138, !127, !128}
!198 = !{!21, !141, !52, !133, !55, !16, !25, !138, !127, !128}
!199 = !{!21, !141, !175, !133, !16, !25, !62, !138, !173, !179, !177, !127}
!200 = !{!21, !141, !175, !133, !16, !25, !62, !138, !173, !179, !177, !128}
!201 = !{!175, !173, !179, !127, !128}
!202 = !{!175, !173, !177, !127, !128}
!203 = !{!96, !107, !55, !108, !98, !109, !110, !102, !111}
!204 = !{!107, !55, !86, !108, !98, !109, !110, !102, !111}
!205 = !{!96, !107, !55, !86, !108, !109, !110, !102, !111}
!206 = !{!109}
!207 = !{!96, !107, !55, !86, !108, !98, !110, !102, !111}
!208 = !{!110}
!209 = !{!96, !107, !55, !86, !108, !98, !109, !102, !111}
!210 = !{!211}
!211 = !{!"buffer: {index:7, offset:0, size:8}", !8}
