; ModuleID = 'DRB022-reductionmissing-var-yes.c'
source_filename = "DRB022-reductionmissing-var-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [47 x i8] c";DRB022-reductionmissing-var-yes.c;main;67;1;;\00", align 1
@2 = private unnamed_addr constant [48 x i8] c";DRB022-reductionmissing-var-yes.c;main;67;44;;\00", align 1
@3 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"sum = %f\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !dbg !7 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %temp = alloca float, align 4
  %sum = alloca float, align 4
  %len = alloca i32, align 4
  %saved_stack = alloca i8*, align 8
  %__vla_expr0 = alloca i64, align 8
  %__vla_expr1 = alloca i64, align 8
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %argc.addr, metadata !14, metadata !DIExpression()), !dbg !15
  store i8** %argv, i8*** %argv.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %argv.addr, metadata !16, metadata !DIExpression()), !dbg !17
  call void @llvm.dbg.declare(metadata i32* %i, metadata !18, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.declare(metadata i32* %j, metadata !20, metadata !DIExpression()), !dbg !21
  call void @llvm.dbg.declare(metadata float* %temp, metadata !22, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata float* %sum, metadata !25, metadata !DIExpression()), !dbg !26
  store float 0.000000e+00, float* %sum, align 4, !dbg !26
  call void @llvm.dbg.declare(metadata i32* %len, metadata !27, metadata !DIExpression()), !dbg !28
  store i32 100, i32* %len, align 4, !dbg !28
  %2 = load i32, i32* %argc.addr, align 4, !dbg !29
  %cmp = icmp sgt i32 %2, 1, !dbg !31
  br i1 %cmp, label %if.then, label %if.end, !dbg !32

if.then:                                          ; preds = %entry
  %3 = load i8**, i8*** %argv.addr, align 8, !dbg !33
  %arrayidx = getelementptr inbounds i8*, i8** %3, i64 1, !dbg !33
  %4 = load i8*, i8** %arrayidx, align 8, !dbg !33
  %call = call i32 @atoi(i8* %4) #7, !dbg !34
  store i32 %call, i32* %len, align 4, !dbg !35
  br label %if.end, !dbg !36

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, i32* %len, align 4, !dbg !37
  %6 = zext i32 %5 to i64, !dbg !38
  %7 = load i32, i32* %len, align 4, !dbg !39
  %8 = zext i32 %7 to i64, !dbg !38
  %9 = call i8* @llvm.stacksave(), !dbg !38
  store i8* %9, i8** %saved_stack, align 8, !dbg !38
  %10 = mul nuw i64 %6, %8, !dbg !38
  %vla = alloca float, i64 %10, align 16, !dbg !38
  store i64 %6, i64* %__vla_expr0, align 8, !dbg !38
  store i64 %8, i64* %__vla_expr1, align 8, !dbg !38
  call void @llvm.dbg.declare(metadata i64* %__vla_expr0, metadata !40, metadata !DIExpression()), !dbg !42
  call void @llvm.dbg.declare(metadata i64* %__vla_expr1, metadata !43, metadata !DIExpression()), !dbg !42
  call void @llvm.dbg.declare(metadata float* %vla, metadata !44, metadata !DIExpression()), !dbg !49
  store i32 0, i32* %i, align 4, !dbg !50
  br label %for.cond, !dbg !52

for.cond:                                         ; preds = %for.inc8, %if.end
  %11 = load i32, i32* %i, align 4, !dbg !53
  %12 = load i32, i32* %len, align 4, !dbg !55
  %cmp1 = icmp slt i32 %11, %12, !dbg !56
  br i1 %cmp1, label %for.body, label %for.end10, !dbg !57

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4, !dbg !58
  br label %for.cond2, !dbg !60

for.cond2:                                        ; preds = %for.inc, %for.body
  %13 = load i32, i32* %j, align 4, !dbg !61
  %14 = load i32, i32* %len, align 4, !dbg !63
  %cmp3 = icmp slt i32 %13, %14, !dbg !64
  br i1 %cmp3, label %for.body4, label %for.end, !dbg !65

for.body4:                                        ; preds = %for.cond2
  %15 = load i32, i32* %i, align 4, !dbg !66
  %idxprom = sext i32 %15 to i64, !dbg !67
  %16 = mul nsw i64 %idxprom, %8, !dbg !67
  %arrayidx5 = getelementptr inbounds float, float* %vla, i64 %16, !dbg !67
  %17 = load i32, i32* %j, align 4, !dbg !68
  %idxprom6 = sext i32 %17 to i64, !dbg !67
  %arrayidx7 = getelementptr inbounds float, float* %arrayidx5, i64 %idxprom6, !dbg !67
  store float 5.000000e-01, float* %arrayidx7, align 4, !dbg !69
  br label %for.inc, !dbg !67

for.inc:                                          ; preds = %for.body4
  %18 = load i32, i32* %j, align 4, !dbg !70
  %inc = add nsw i32 %18, 1, !dbg !70
  store i32 %inc, i32* %j, align 4, !dbg !70
  br label %for.cond2, !dbg !71, !llvm.loop !72

for.end:                                          ; preds = %for.cond2
  br label %for.inc8, !dbg !73

for.inc8:                                         ; preds = %for.end
  %19 = load i32, i32* %i, align 4, !dbg !74
  %inc9 = add nsw i32 %19, 1, !dbg !74
  store i32 %inc9, i32* %i, align 4, !dbg !74
  br label %for.cond, !dbg !75, !llvm.loop !76

for.end10:                                        ; preds = %for.cond
  %20 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !78
  store i8* getelementptr inbounds ([47 x i8], [47 x i8]* @1, i32 0, i32 0), i8** %20, align 8, !dbg !78
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 5, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i64, i64, float*, float*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %len, i64 %6, i64 %8, float* %vla, float* %sum), !dbg !78
  %21 = load float, float* %sum, align 4, !dbg !79
  %conv = fpext float %21 to double, !dbg !79
  %call11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), double %conv), !dbg !80
  store i32 0, i32* %retval, align 4, !dbg !81
  %22 = load i8*, i8** %saved_stack, align 8, !dbg !82
  call void @llvm.stackrestore(i8* %22), !dbg !82
  %23 = load i32, i32* %retval, align 4, !dbg !82
  ret i32 %23, !dbg !82
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @atoi(i8*) #2

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %len, i64 %vla, i64 %vla1, float* dereferenceable(4) %u, float* dereferenceable(4) %sum) #4 !dbg !83 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %vla.addr = alloca i64, align 8
  %vla.addr2 = alloca i64, align 8
  %u.addr = alloca float*, align 8
  %sum.addr = alloca float*, align 8
  %.omp.iv = alloca i32, align 4
  %tmp = alloca i32, align 4
  %.capture_expr. = alloca i32, align 4
  %.capture_expr.3 = alloca i32, align 4
  %i = alloca i32, align 4
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %temp = alloca float, align 4
  %i6 = alloca i32, align 4
  %j = alloca i32, align 4
  %i7 = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !92, metadata !DIExpression()), !dbg !93
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !94, metadata !DIExpression()), !dbg !93
  store i32* %len, i32** %len.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !95, metadata !DIExpression()), !dbg !96
  store i64 %vla, i64* %vla.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %vla.addr, metadata !97, metadata !DIExpression()), !dbg !93
  store i64 %vla1, i64* %vla.addr2, align 8
  call void @llvm.dbg.declare(metadata i64* %vla.addr2, metadata !98, metadata !DIExpression()), !dbg !93
  store float* %u, float** %u.addr, align 8
  call void @llvm.dbg.declare(metadata float** %u.addr, metadata !99, metadata !DIExpression()), !dbg !100
  store float* %sum, float** %sum.addr, align 8
  call void @llvm.dbg.declare(metadata float** %sum.addr, metadata !101, metadata !DIExpression()), !dbg !102
  %2 = load i32*, i32** %len.addr, align 8, !dbg !103
  %3 = load i64, i64* %vla.addr, align 8, !dbg !103
  %4 = load i64, i64* %vla.addr2, align 8, !dbg !103
  %5 = load float*, float** %u.addr, align 8, !dbg !103
  %6 = load float*, float** %sum.addr, align 8, !dbg !103
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !104, metadata !DIExpression()), !dbg !93
  call void @llvm.dbg.declare(metadata i32* %.capture_expr., metadata !105, metadata !DIExpression()), !dbg !93
  %7 = load i32, i32* %2, align 4, !dbg !106
  store i32 %7, i32* %.capture_expr., align 4, !dbg !106
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.3, metadata !105, metadata !DIExpression()), !dbg !93
  %8 = load i32, i32* %.capture_expr., align 4, !dbg !106
  %sub = sub nsw i32 %8, 0, !dbg !103
  %sub4 = sub nsw i32 %sub, 1, !dbg !103
  %add = add nsw i32 %sub4, 1, !dbg !103
  %div = sdiv i32 %add, 1, !dbg !103
  %sub5 = sub nsw i32 %div, 1, !dbg !103
  store i32 %sub5, i32* %.capture_expr.3, align 4, !dbg !103
  call void @llvm.dbg.declare(metadata i32* %i, metadata !107, metadata !DIExpression()), !dbg !93
  store i32 0, i32* %i, align 4, !dbg !108
  %9 = load i32, i32* %.capture_expr., align 4, !dbg !106
  %cmp = icmp slt i32 0, %9, !dbg !103
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end, !dbg !103

omp.precond.then:                                 ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !109, metadata !DIExpression()), !dbg !93
  store i32 0, i32* %.omp.lb, align 4, !dbg !110
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !111, metadata !DIExpression()), !dbg !93
  %10 = load i32, i32* %.capture_expr.3, align 4, !dbg !103
  store i32 %10, i32* %.omp.ub, align 4, !dbg !110
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !112, metadata !DIExpression()), !dbg !93
  store i32 1, i32* %.omp.stride, align 4, !dbg !110
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !113, metadata !DIExpression()), !dbg !93
  store i32 0, i32* %.omp.is_last, align 4, !dbg !110
  call void @llvm.dbg.declare(metadata float* %temp, metadata !114, metadata !DIExpression()), !dbg !93
  call void @llvm.dbg.declare(metadata i32* %i6, metadata !107, metadata !DIExpression()), !dbg !93
  call void @llvm.dbg.declare(metadata i32* %j, metadata !115, metadata !DIExpression()), !dbg !93
  call void @llvm.dbg.declare(metadata i32* %i7, metadata !107, metadata !DIExpression()), !dbg !93
  %11 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !103
  store i8* getelementptr inbounds ([47 x i8], [47 x i8]* @1, i32 0, i32 0), i8** %11, align 8, !dbg !103
  %12 = load i32*, i32** %.global_tid..addr, align 8, !dbg !103
  %13 = load i32, i32* %12, align 4, !dbg !103
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %13, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !103
  %14 = load i32, i32* %.omp.ub, align 4, !dbg !110
  %15 = load i32, i32* %.capture_expr.3, align 4, !dbg !103
  %cmp8 = icmp sgt i32 %14, %15, !dbg !110
  br i1 %cmp8, label %cond.true, label %cond.false, !dbg !110

cond.true:                                        ; preds = %omp.precond.then
  %16 = load i32, i32* %.capture_expr.3, align 4, !dbg !103
  br label %cond.end, !dbg !110

cond.false:                                       ; preds = %omp.precond.then
  %17 = load i32, i32* %.omp.ub, align 4, !dbg !110
  br label %cond.end, !dbg !110

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %16, %cond.true ], [ %17, %cond.false ], !dbg !110
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !110
  %18 = load i32, i32* %.omp.lb, align 4, !dbg !110
  store i32 %18, i32* %.omp.iv, align 4, !dbg !110
  br label %omp.inner.for.cond, !dbg !103

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %19 = load i32, i32* %.omp.iv, align 4, !dbg !110
  %20 = load i32, i32* %.omp.ub, align 4, !dbg !110
  %cmp9 = icmp sle i32 %19, %20, !dbg !103
  br i1 %cmp9, label %omp.inner.for.body, label %omp.inner.for.end, !dbg !103

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %21 = load i32, i32* %.omp.iv, align 4, !dbg !110
  %mul = mul nsw i32 %21, 1, !dbg !108
  %add10 = add nsw i32 0, %mul, !dbg !108
  store i32 %add10, i32* %i6, align 4, !dbg !108
  store i32 0, i32* %j, align 4, !dbg !116
  br label %for.cond, !dbg !118

for.cond:                                         ; preds = %for.inc, %omp.inner.for.body
  %22 = load i32, i32* %j, align 4, !dbg !119
  %23 = load i32, i32* %2, align 4, !dbg !121
  %cmp11 = icmp slt i32 %22, %23, !dbg !122
  br i1 %cmp11, label %for.body, label %for.end, !dbg !123

for.body:                                         ; preds = %for.cond
  %24 = load i32, i32* %i6, align 4, !dbg !124
  %idxprom = sext i32 %24 to i64, !dbg !126
  %25 = mul nsw i64 %idxprom, %4, !dbg !126
  %arrayidx = getelementptr inbounds float, float* %5, i64 %25, !dbg !126
  %26 = load i32, i32* %j, align 4, !dbg !127
  %idxprom12 = sext i32 %26 to i64, !dbg !126
  %arrayidx13 = getelementptr inbounds float, float* %arrayidx, i64 %idxprom12, !dbg !126
  %27 = load float, float* %arrayidx13, align 4, !dbg !126
  store float %27, float* %temp, align 4, !dbg !128
  %28 = load float, float* %6, align 4, !dbg !129
  %29 = load float, float* %temp, align 4, !dbg !130
  %30 = load float, float* %temp, align 4, !dbg !131
  %mul14 = fmul float %29, %30, !dbg !132
  %add15 = fadd float %28, %mul14, !dbg !133
  store float %add15, float* %6, align 4, !dbg !134
  br label %for.inc, !dbg !135

for.inc:                                          ; preds = %for.body
  %31 = load i32, i32* %j, align 4, !dbg !136
  %inc = add nsw i32 %31, 1, !dbg !136
  store i32 %inc, i32* %j, align 4, !dbg !136
  br label %for.cond, !dbg !137, !llvm.loop !138

for.end:                                          ; preds = %for.cond
  br label %omp.body.continue, !dbg !139

omp.body.continue:                                ; preds = %for.end
  br label %omp.inner.for.inc, !dbg !140

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %32 = load i32, i32* %.omp.iv, align 4, !dbg !110
  %add16 = add nsw i32 %32, 1, !dbg !103
  store i32 %add16, i32* %.omp.iv, align 4, !dbg !103
  br label %omp.inner.for.cond, !dbg !140, !llvm.loop !141

omp.inner.for.end:                                ; preds = %omp.inner.for.cond
  br label %omp.loop.exit, !dbg !140

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %33 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !140
  store i8* getelementptr inbounds ([48 x i8], [48 x i8]* @2, i32 0, i32 0), i8** %33, align 8, !dbg !140
  %34 = load i32*, i32** %.global_tid..addr, align 8, !dbg !140
  %35 = load i32, i32* %34, align 4, !dbg !140
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %35), !dbg !140
  br label %omp.precond.end, !dbg !140

omp.precond.end:                                  ; preds = %omp.loop.exit, %entry
  ret void, !dbg !143
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %len, i64 %vla, i64 %vla1, float* dereferenceable(4) %u, float* dereferenceable(4) %sum) #4 !dbg !144 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %vla.addr = alloca i64, align 8
  %vla.addr2 = alloca i64, align 8
  %u.addr = alloca float*, align 8
  %sum.addr = alloca float*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !145, metadata !DIExpression()), !dbg !146
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !147, metadata !DIExpression()), !dbg !146
  store i32* %len, i32** %len.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !148, metadata !DIExpression()), !dbg !146
  store i64 %vla, i64* %vla.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %vla.addr, metadata !149, metadata !DIExpression()), !dbg !146
  store i64 %vla1, i64* %vla.addr2, align 8
  call void @llvm.dbg.declare(metadata i64* %vla.addr2, metadata !150, metadata !DIExpression()), !dbg !146
  store float* %u, float** %u.addr, align 8
  call void @llvm.dbg.declare(metadata float** %u.addr, metadata !151, metadata !DIExpression()), !dbg !146
  store float* %sum, float** %sum.addr, align 8
  call void @llvm.dbg.declare(metadata float** %sum.addr, metadata !152, metadata !DIExpression()), !dbg !146
  %0 = load i32*, i32** %len.addr, align 8, !dbg !153
  %1 = load i64, i64* %vla.addr, align 8, !dbg !153
  %2 = load i64, i64* %vla.addr2, align 8, !dbg !153
  %3 = load float*, float** %u.addr, align 8, !dbg !153
  %4 = load float*, float** %sum.addr, align 8, !dbg !153
  %5 = load i32*, i32** %.global_tid..addr, align 8, !dbg !153
  %6 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !153
  %7 = load i32*, i32** %len.addr, align 8, !dbg !153
  %8 = load float*, float** %u.addr, align 8, !dbg !153
  %9 = load float*, float** %sum.addr, align 8, !dbg !153
  call void @.omp_outlined._debug__(i32* %5, i32* %6, i32* %7, i64 %1, i64 %2, float* %8, float* %9) #3, !dbg !153
  ret void, !dbg !153
}

declare !callback !154 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

declare dso_local i32 @printf(i8*, ...) #6

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noinline norecurse nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind willreturn }
attributes #6 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.1 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "DRB022-reductionmissing-var-yes.c", directory: "/home/yanze/code/OpenRace/tests/data/integration/dataracebench")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.1 "}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 55, type: !8, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !10, !11}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!14 = !DILocalVariable(name: "argc", arg: 1, scope: !7, file: !1, line: 55, type: !10)
!15 = !DILocation(line: 55, column: 14, scope: !7)
!16 = !DILocalVariable(name: "argv", arg: 2, scope: !7, file: !1, line: 55, type: !11)
!17 = !DILocation(line: 55, column: 26, scope: !7)
!18 = !DILocalVariable(name: "i", scope: !7, file: !1, line: 57, type: !10)
!19 = !DILocation(line: 57, column: 7, scope: !7)
!20 = !DILocalVariable(name: "j", scope: !7, file: !1, line: 57, type: !10)
!21 = !DILocation(line: 57, column: 9, scope: !7)
!22 = !DILocalVariable(name: "temp", scope: !7, file: !1, line: 58, type: !23)
!23 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!24 = !DILocation(line: 58, column: 9, scope: !7)
!25 = !DILocalVariable(name: "sum", scope: !7, file: !1, line: 58, type: !23)
!26 = !DILocation(line: 58, column: 15, scope: !7)
!27 = !DILocalVariable(name: "len", scope: !7, file: !1, line: 59, type: !10)
!28 = !DILocation(line: 59, column: 7, scope: !7)
!29 = !DILocation(line: 60, column: 7, scope: !30)
!30 = distinct !DILexicalBlock(scope: !7, file: !1, line: 60, column: 7)
!31 = !DILocation(line: 60, column: 11, scope: !30)
!32 = !DILocation(line: 60, column: 7, scope: !7)
!33 = !DILocation(line: 61, column: 16, scope: !30)
!34 = !DILocation(line: 61, column: 11, scope: !30)
!35 = !DILocation(line: 61, column: 9, scope: !30)
!36 = !DILocation(line: 61, column: 5, scope: !30)
!37 = !DILocation(line: 62, column: 11, scope: !7)
!38 = !DILocation(line: 62, column: 3, scope: !7)
!39 = !DILocation(line: 62, column: 16, scope: !7)
!40 = !DILocalVariable(name: "__vla_expr0", scope: !7, type: !41, flags: DIFlagArtificial)
!41 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!42 = !DILocation(line: 0, scope: !7)
!43 = !DILocalVariable(name: "__vla_expr1", scope: !7, type: !41, flags: DIFlagArtificial)
!44 = !DILocalVariable(name: "u", scope: !7, file: !1, line: 62, type: !45)
!45 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, elements: !46)
!46 = !{!47, !48}
!47 = !DISubrange(count: !40)
!48 = !DISubrange(count: !43)
!49 = !DILocation(line: 62, column: 9, scope: !7)
!50 = !DILocation(line: 63, column: 10, scope: !51)
!51 = distinct !DILexicalBlock(scope: !7, file: !1, line: 63, column: 3)
!52 = !DILocation(line: 63, column: 8, scope: !51)
!53 = !DILocation(line: 63, column: 15, scope: !54)
!54 = distinct !DILexicalBlock(scope: !51, file: !1, line: 63, column: 3)
!55 = !DILocation(line: 63, column: 19, scope: !54)
!56 = !DILocation(line: 63, column: 17, scope: !54)
!57 = !DILocation(line: 63, column: 3, scope: !51)
!58 = !DILocation(line: 64, column: 12, scope: !59)
!59 = distinct !DILexicalBlock(scope: !54, file: !1, line: 64, column: 5)
!60 = !DILocation(line: 64, column: 10, scope: !59)
!61 = !DILocation(line: 64, column: 17, scope: !62)
!62 = distinct !DILexicalBlock(scope: !59, file: !1, line: 64, column: 5)
!63 = !DILocation(line: 64, column: 21, scope: !62)
!64 = !DILocation(line: 64, column: 19, scope: !62)
!65 = !DILocation(line: 64, column: 5, scope: !59)
!66 = !DILocation(line: 65, column: 11, scope: !62)
!67 = !DILocation(line: 65, column: 9, scope: !62)
!68 = !DILocation(line: 65, column: 14, scope: !62)
!69 = !DILocation(line: 65, column: 17, scope: !62)
!70 = !DILocation(line: 64, column: 27, scope: !62)
!71 = !DILocation(line: 64, column: 5, scope: !62)
!72 = distinct !{!72, !65, !73}
!73 = !DILocation(line: 65, column: 19, scope: !59)
!74 = !DILocation(line: 63, column: 25, scope: !54)
!75 = !DILocation(line: 63, column: 3, scope: !54)
!76 = distinct !{!76, !57, !77}
!77 = !DILocation(line: 65, column: 19, scope: !51)
!78 = !DILocation(line: 67, column: 1, scope: !7)
!79 = !DILocation(line: 74, column: 25, scope: !7)
!80 = !DILocation(line: 74, column: 3, scope: !7)
!81 = !DILocation(line: 75, column: 3, scope: !7)
!82 = !DILocation(line: 76, column: 1, scope: !7)
!83 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 68, type: !84, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!84 = !DISubroutineType(types: !85)
!85 = !{null, !86, !86, !90, !41, !41, !91, !91}
!86 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !87)
!87 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !88)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!90 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !10, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !23, size: 64)
!92 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !83, type: !86, flags: DIFlagArtificial)
!93 = !DILocation(line: 0, scope: !83)
!94 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !83, type: !86, flags: DIFlagArtificial)
!95 = !DILocalVariable(name: "len", arg: 3, scope: !83, file: !1, line: 59, type: !90)
!96 = !DILocation(line: 59, column: 7, scope: !83)
!97 = !DILocalVariable(name: "vla", arg: 4, scope: !83, type: !41, flags: DIFlagArtificial)
!98 = !DILocalVariable(name: "vla", arg: 5, scope: !83, type: !41, flags: DIFlagArtificial)
!99 = !DILocalVariable(name: "u", arg: 6, scope: !83, file: !1, line: 62, type: !91)
!100 = !DILocation(line: 62, column: 9, scope: !83)
!101 = !DILocalVariable(name: "sum", arg: 7, scope: !83, file: !1, line: 58, type: !91)
!102 = !DILocation(line: 58, column: 15, scope: !83)
!103 = !DILocation(line: 68, column: 3, scope: !83)
!104 = !DILocalVariable(name: ".omp.iv", scope: !83, type: !10, flags: DIFlagArtificial)
!105 = !DILocalVariable(name: ".capture_expr.", scope: !83, type: !10, flags: DIFlagArtificial)
!106 = !DILocation(line: 68, column: 19, scope: !83)
!107 = !DILocalVariable(name: "i", scope: !83, type: !10, flags: DIFlagArtificial)
!108 = !DILocation(line: 68, column: 24, scope: !83)
!109 = !DILocalVariable(name: ".omp.lb", scope: !83, type: !10, flags: DIFlagArtificial)
!110 = !DILocation(line: 68, column: 8, scope: !83)
!111 = !DILocalVariable(name: ".omp.ub", scope: !83, type: !10, flags: DIFlagArtificial)
!112 = !DILocalVariable(name: ".omp.stride", scope: !83, type: !10, flags: DIFlagArtificial)
!113 = !DILocalVariable(name: ".omp.is_last", scope: !83, type: !10, flags: DIFlagArtificial)
!114 = !DILocalVariable(name: "temp", scope: !83, type: !23, flags: DIFlagArtificial)
!115 = !DILocalVariable(name: "j", scope: !83, type: !10, flags: DIFlagArtificial)
!116 = !DILocation(line: 69, column: 12, scope: !117)
!117 = distinct !DILexicalBlock(scope: !83, file: !1, line: 69, column: 5)
!118 = !DILocation(line: 69, column: 10, scope: !117)
!119 = !DILocation(line: 69, column: 17, scope: !120)
!120 = distinct !DILexicalBlock(scope: !117, file: !1, line: 69, column: 5)
!121 = !DILocation(line: 69, column: 21, scope: !120)
!122 = !DILocation(line: 69, column: 19, scope: !120)
!123 = !DILocation(line: 69, column: 5, scope: !117)
!124 = !DILocation(line: 71, column: 16, scope: !125)
!125 = distinct !DILexicalBlock(scope: !120, file: !1, line: 70, column: 5)
!126 = !DILocation(line: 71, column: 14, scope: !125)
!127 = !DILocation(line: 71, column: 19, scope: !125)
!128 = !DILocation(line: 71, column: 12, scope: !125)
!129 = !DILocation(line: 72, column: 13, scope: !125)
!130 = !DILocation(line: 72, column: 19, scope: !125)
!131 = !DILocation(line: 72, column: 26, scope: !125)
!132 = !DILocation(line: 72, column: 24, scope: !125)
!133 = !DILocation(line: 72, column: 17, scope: !125)
!134 = !DILocation(line: 72, column: 11, scope: !125)
!135 = !DILocation(line: 73, column: 5, scope: !125)
!136 = !DILocation(line: 69, column: 27, scope: !120)
!137 = !DILocation(line: 69, column: 5, scope: !120)
!138 = distinct !{!138, !123, !139}
!139 = !DILocation(line: 73, column: 5, scope: !117)
!140 = !DILocation(line: 67, column: 1, scope: !83)
!141 = distinct !{!141, !140, !142}
!142 = !DILocation(line: 67, column: 44, scope: !83)
!143 = !DILocation(line: 73, column: 5, scope: !83)
!144 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 68, type: !84, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!145 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !144, type: !86, flags: DIFlagArtificial)
!146 = !DILocation(line: 0, scope: !144)
!147 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !144, type: !86, flags: DIFlagArtificial)
!148 = !DILocalVariable(name: "len", arg: 3, scope: !144, type: !90, flags: DIFlagArtificial)
!149 = !DILocalVariable(name: "vla", arg: 4, scope: !144, type: !41, flags: DIFlagArtificial)
!150 = !DILocalVariable(name: "vla", arg: 5, scope: !144, type: !41, flags: DIFlagArtificial)
!151 = !DILocalVariable(name: "u", arg: 6, scope: !144, type: !91, flags: DIFlagArtificial)
!152 = !DILocalVariable(name: "sum", arg: 7, scope: !144, type: !91, flags: DIFlagArtificial)
!153 = !DILocation(line: 68, column: 3, scope: !144)
!154 = !{!155}
!155 = !{i64 2, i64 -1, i64 -1, i1 true}
