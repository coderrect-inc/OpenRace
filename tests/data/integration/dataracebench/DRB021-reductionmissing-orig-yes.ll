; ModuleID = 'integration/dataracebench/DRB021-reductionmissing-orig-yes.c'
source_filename = "integration/dataracebench/DRB021-reductionmissing-orig-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [74 x i8] c";integration/dataracebench/DRB021-reductionmissing-orig-yes.c;main;65;1;;\00", align 1
@2 = private unnamed_addr constant [75 x i8] c";integration/dataracebench/DRB021-reductionmissing-orig-yes.c;main;65;44;;\00", align 1
@3 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"sum = %f\0A\00", align 1

; Function Attrs: nounwind uwtable
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
  %u = alloca [100 x [100 x float]], align 16
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4, !tbaa !27
  call void @llvm.dbg.declare(metadata i32* %argc.addr, metadata !15, metadata !DIExpression()), !dbg !31
  store i8** %argv, i8*** %argv.addr, align 8, !tbaa !32
  call void @llvm.dbg.declare(metadata i8*** %argv.addr, metadata !16, metadata !DIExpression()), !dbg !34
  %2 = bitcast i32* %i to i8*, !dbg !35
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #5, !dbg !35
  call void @llvm.dbg.declare(metadata i32* %i, metadata !17, metadata !DIExpression()), !dbg !36
  %3 = bitcast i32* %j to i8*, !dbg !35
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #5, !dbg !35
  call void @llvm.dbg.declare(metadata i32* %j, metadata !18, metadata !DIExpression()), !dbg !37
  %4 = bitcast float* %temp to i8*, !dbg !38
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #5, !dbg !38
  call void @llvm.dbg.declare(metadata float* %temp, metadata !19, metadata !DIExpression()), !dbg !39
  %5 = bitcast float* %sum to i8*, !dbg !38
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #5, !dbg !38
  call void @llvm.dbg.declare(metadata float* %sum, metadata !21, metadata !DIExpression()), !dbg !40
  store float 0.000000e+00, float* %sum, align 4, !dbg !40, !tbaa !41
  %6 = bitcast i32* %len to i8*, !dbg !43
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #5, !dbg !43
  call void @llvm.dbg.declare(metadata i32* %len, metadata !22, metadata !DIExpression()), !dbg !44
  store i32 100, i32* %len, align 4, !dbg !44, !tbaa !27
  %7 = bitcast [100 x [100 x float]]* %u to i8*, !dbg !45
  call void @llvm.lifetime.start.p0i8(i64 40000, i8* %7) #5, !dbg !45
  call void @llvm.dbg.declare(metadata [100 x [100 x float]]* %u, metadata !23, metadata !DIExpression()), !dbg !46
  store i32 0, i32* %i, align 4, !dbg !47, !tbaa !27
  br label %for.cond, !dbg !49

for.cond:                                         ; preds = %for.inc6, %entry
  %8 = load i32, i32* %i, align 4, !dbg !50, !tbaa !27
  %9 = load i32, i32* %len, align 4, !dbg !52, !tbaa !27
  %cmp = icmp slt i32 %8, %9, !dbg !53
  br i1 %cmp, label %for.body, label %for.end8, !dbg !54

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4, !dbg !55, !tbaa !27
  br label %for.cond1, !dbg !57

for.cond1:                                        ; preds = %for.inc, %for.body
  %10 = load i32, i32* %j, align 4, !dbg !58, !tbaa !27
  %11 = load i32, i32* %len, align 4, !dbg !60, !tbaa !27
  %cmp2 = icmp slt i32 %10, %11, !dbg !61
  br i1 %cmp2, label %for.body3, label %for.end, !dbg !62

for.body3:                                        ; preds = %for.cond1
  %12 = load i32, i32* %i, align 4, !dbg !63, !tbaa !27
  %idxprom = sext i32 %12 to i64, !dbg !64
  %arrayidx = getelementptr inbounds [100 x [100 x float]], [100 x [100 x float]]* %u, i64 0, i64 %idxprom, !dbg !64
  %13 = load i32, i32* %j, align 4, !dbg !65, !tbaa !27
  %idxprom4 = sext i32 %13 to i64, !dbg !64
  %arrayidx5 = getelementptr inbounds [100 x float], [100 x float]* %arrayidx, i64 0, i64 %idxprom4, !dbg !64
  store float 5.000000e-01, float* %arrayidx5, align 4, !dbg !66, !tbaa !41
  br label %for.inc, !dbg !64

for.inc:                                          ; preds = %for.body3
  %14 = load i32, i32* %j, align 4, !dbg !67, !tbaa !27
  %inc = add nsw i32 %14, 1, !dbg !67
  store i32 %inc, i32* %j, align 4, !dbg !67, !tbaa !27
  br label %for.cond1, !dbg !68, !llvm.loop !69

for.end:                                          ; preds = %for.cond1
  br label %for.inc6, !dbg !70

for.inc6:                                         ; preds = %for.end
  %15 = load i32, i32* %i, align 4, !dbg !71, !tbaa !27
  %inc7 = add nsw i32 %15, 1, !dbg !71
  store i32 %inc7, i32* %i, align 4, !dbg !71, !tbaa !27
  br label %for.cond, !dbg !72, !llvm.loop !73

for.end8:                                         ; preds = %for.cond
  %16 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !75
  store i8* getelementptr inbounds ([74 x i8], [74 x i8]* @1, i32 0, i32 0), i8** %16, align 8, !dbg !75, !tbaa !76
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, [100 x [100 x float]]*, float*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %len, [100 x [100 x float]]* %u, float* %sum), !dbg !75
  %17 = load float, float* %sum, align 4, !dbg !78, !tbaa !41
  %conv = fpext float %17 to double, !dbg !78
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), double %conv), !dbg !79
  %18 = bitcast [100 x [100 x float]]* %u to i8*, !dbg !80
  call void @llvm.lifetime.end.p0i8(i64 40000, i8* %18) #5, !dbg !80
  %19 = bitcast i32* %len to i8*, !dbg !80
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %19) #5, !dbg !80
  %20 = bitcast float* %sum to i8*, !dbg !80
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %20) #5, !dbg !80
  %21 = bitcast float* %temp to i8*, !dbg !80
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %21) #5, !dbg !80
  %22 = bitcast i32* %j to i8*, !dbg !80
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %22) #5, !dbg !80
  %23 = bitcast i32* %i to i8*, !dbg !80
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %23) #5, !dbg !80
  ret i32 0, !dbg !81
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %len, [100 x [100 x float]]* dereferenceable(40000) %u, float* dereferenceable(4) %sum) #3 !dbg !82 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %u.addr = alloca [100 x [100 x float]]*, align 8
  %sum.addr = alloca float*, align 8
  %.omp.iv = alloca i32, align 4
  %tmp = alloca i32, align 4
  %.capture_expr. = alloca i32, align 4
  %.capture_expr.1 = alloca i32, align 4
  %i = alloca i32, align 4
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %temp = alloca float, align 4
  %i4 = alloca i32, align 4
  %j = alloca i32, align 4
  %i5 = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !32
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !93, metadata !DIExpression()), !dbg !107
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !32
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !94, metadata !DIExpression()), !dbg !107
  store i32* %len, i32** %len.addr, align 8, !tbaa !32
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !95, metadata !DIExpression()), !dbg !108
  store [100 x [100 x float]]* %u, [100 x [100 x float]]** %u.addr, align 8, !tbaa !32
  call void @llvm.dbg.declare(metadata [100 x [100 x float]]** %u.addr, metadata !96, metadata !DIExpression()), !dbg !109
  store float* %sum, float** %sum.addr, align 8, !tbaa !32
  call void @llvm.dbg.declare(metadata float** %sum.addr, metadata !97, metadata !DIExpression()), !dbg !110
  %2 = load i32*, i32** %len.addr, align 8, !dbg !111, !tbaa !32
  %3 = load [100 x [100 x float]]*, [100 x [100 x float]]** %u.addr, align 8, !dbg !111, !tbaa !32
  %4 = load float*, float** %sum.addr, align 8, !dbg !111, !tbaa !32
  %5 = bitcast i32* %.omp.iv to i8*, !dbg !111
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #5, !dbg !111
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !98, metadata !DIExpression()), !dbg !107
  %6 = bitcast i32* %.capture_expr. to i8*, !dbg !111
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #5, !dbg !111
  call void @llvm.dbg.declare(metadata i32* %.capture_expr., metadata !99, metadata !DIExpression()), !dbg !107
  %7 = load i32, i32* %2, align 4, !dbg !112, !tbaa !27
  store i32 %7, i32* %.capture_expr., align 4, !dbg !112, !tbaa !27
  %8 = bitcast i32* %.capture_expr.1 to i8*, !dbg !111
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #5, !dbg !111
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.1, metadata !99, metadata !DIExpression()), !dbg !107
  %9 = load i32, i32* %.capture_expr., align 4, !dbg !112, !tbaa !27
  %sub = sub nsw i32 %9, 0, !dbg !111
  %sub2 = sub nsw i32 %sub, 1, !dbg !111
  %add = add nsw i32 %sub2, 1, !dbg !111
  %div = sdiv i32 %add, 1, !dbg !111
  %sub3 = sub nsw i32 %div, 1, !dbg !111
  store i32 %sub3, i32* %.capture_expr.1, align 4, !dbg !111, !tbaa !27
  %10 = bitcast i32* %i to i8*, !dbg !111
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #5, !dbg !111
  call void @llvm.dbg.declare(metadata i32* %i, metadata !100, metadata !DIExpression()), !dbg !107
  store i32 0, i32* %i, align 4, !dbg !113, !tbaa !27
  %11 = bitcast i32* %i to i8*, !dbg !111
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %11) #5, !dbg !111
  %12 = load i32, i32* %.capture_expr., align 4, !dbg !112, !tbaa !27
  %cmp = icmp slt i32 0, %12, !dbg !111
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end, !dbg !111

omp.precond.then:                                 ; preds = %entry
  %13 = bitcast i32* %.omp.lb to i8*, !dbg !111
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %13) #5, !dbg !111
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !101, metadata !DIExpression()), !dbg !107
  store i32 0, i32* %.omp.lb, align 4, !dbg !114, !tbaa !27
  %14 = bitcast i32* %.omp.ub to i8*, !dbg !111
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %14) #5, !dbg !111
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !102, metadata !DIExpression()), !dbg !107
  %15 = load i32, i32* %.capture_expr.1, align 4, !dbg !111, !tbaa !27
  store i32 %15, i32* %.omp.ub, align 4, !dbg !114, !tbaa !27
  %16 = bitcast i32* %.omp.stride to i8*, !dbg !111
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %16) #5, !dbg !111
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !103, metadata !DIExpression()), !dbg !107
  store i32 1, i32* %.omp.stride, align 4, !dbg !114, !tbaa !27
  %17 = bitcast i32* %.omp.is_last to i8*, !dbg !111
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %17) #5, !dbg !111
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !104, metadata !DIExpression()), !dbg !107
  store i32 0, i32* %.omp.is_last, align 4, !dbg !114, !tbaa !27
  %18 = bitcast float* %temp to i8*, !dbg !111
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %18) #5, !dbg !111
  call void @llvm.dbg.declare(metadata float* %temp, metadata !105, metadata !DIExpression()), !dbg !107
  %19 = bitcast i32* %i4 to i8*, !dbg !111
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %19) #5, !dbg !111
  call void @llvm.dbg.declare(metadata i32* %i4, metadata !100, metadata !DIExpression()), !dbg !107
  %20 = bitcast i32* %j to i8*, !dbg !111
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %20) #5, !dbg !111
  call void @llvm.dbg.declare(metadata i32* %j, metadata !106, metadata !DIExpression()), !dbg !107
  %21 = bitcast i32* %i5 to i8*, !dbg !111
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %21) #5, !dbg !111
  call void @llvm.dbg.declare(metadata i32* %i5, metadata !100, metadata !DIExpression()), !dbg !107
  %22 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !111
  store i8* getelementptr inbounds ([74 x i8], [74 x i8]* @1, i32 0, i32 0), i8** %22, align 8, !dbg !111, !tbaa !76
  %23 = load i32*, i32** %.global_tid..addr, align 8, !dbg !111
  %24 = load i32, i32* %23, align 4, !dbg !111, !tbaa !27
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %24, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !111
  %25 = load i32, i32* %.omp.ub, align 4, !dbg !114, !tbaa !27
  %26 = load i32, i32* %.capture_expr.1, align 4, !dbg !111, !tbaa !27
  %cmp6 = icmp sgt i32 %25, %26, !dbg !114
  br i1 %cmp6, label %cond.true, label %cond.false, !dbg !114

cond.true:                                        ; preds = %omp.precond.then
  %27 = load i32, i32* %.capture_expr.1, align 4, !dbg !111, !tbaa !27
  br label %cond.end, !dbg !114

cond.false:                                       ; preds = %omp.precond.then
  %28 = load i32, i32* %.omp.ub, align 4, !dbg !114, !tbaa !27
  br label %cond.end, !dbg !114

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %27, %cond.true ], [ %28, %cond.false ], !dbg !114
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !114, !tbaa !27
  %29 = load i32, i32* %.omp.lb, align 4, !dbg !114, !tbaa !27
  store i32 %29, i32* %.omp.iv, align 4, !dbg !114, !tbaa !27
  br label %omp.inner.for.cond, !dbg !111

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %30 = load i32, i32* %.omp.iv, align 4, !dbg !114, !tbaa !27
  %31 = load i32, i32* %.omp.ub, align 4, !dbg !114, !tbaa !27
  %cmp7 = icmp sle i32 %30, %31, !dbg !111
  br i1 %cmp7, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !111

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !111

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %32 = load i32, i32* %.omp.iv, align 4, !dbg !114, !tbaa !27
  %mul = mul nsw i32 %32, 1, !dbg !113
  %add8 = add nsw i32 0, %mul, !dbg !113
  store i32 %add8, i32* %i4, align 4, !dbg !113, !tbaa !27
  store i32 0, i32* %j, align 4, !dbg !115, !tbaa !27
  br label %for.cond, !dbg !117

for.cond:                                         ; preds = %for.inc, %omp.inner.for.body
  %33 = load i32, i32* %j, align 4, !dbg !118, !tbaa !27
  %34 = load i32, i32* %2, align 4, !dbg !120, !tbaa !27
  %cmp9 = icmp slt i32 %33, %34, !dbg !121
  br i1 %cmp9, label %for.body, label %for.end, !dbg !122

for.body:                                         ; preds = %for.cond
  %35 = load i32, i32* %i4, align 4, !dbg !123, !tbaa !27
  %idxprom = sext i32 %35 to i64, !dbg !125
  %arrayidx = getelementptr inbounds [100 x [100 x float]], [100 x [100 x float]]* %3, i64 0, i64 %idxprom, !dbg !125
  %36 = load i32, i32* %j, align 4, !dbg !126, !tbaa !27
  %idxprom10 = sext i32 %36 to i64, !dbg !125
  %arrayidx11 = getelementptr inbounds [100 x float], [100 x float]* %arrayidx, i64 0, i64 %idxprom10, !dbg !125
  %37 = load float, float* %arrayidx11, align 4, !dbg !125, !tbaa !41
  store float %37, float* %temp, align 4, !dbg !127, !tbaa !41
  %38 = load float, float* %4, align 4, !dbg !128, !tbaa !41
  %39 = load float, float* %temp, align 4, !dbg !129, !tbaa !41
  %40 = load float, float* %temp, align 4, !dbg !130, !tbaa !41
  %mul12 = fmul float %39, %40, !dbg !131
  %add13 = fadd float %38, %mul12, !dbg !132
  store float %add13, float* %4, align 4, !dbg !133, !tbaa !41
  br label %for.inc, !dbg !134

for.inc:                                          ; preds = %for.body
  %41 = load i32, i32* %j, align 4, !dbg !135, !tbaa !27
  %inc = add nsw i32 %41, 1, !dbg !135
  store i32 %inc, i32* %j, align 4, !dbg !135, !tbaa !27
  br label %for.cond, !dbg !136, !llvm.loop !137

for.end:                                          ; preds = %for.cond
  br label %omp.body.continue, !dbg !138

omp.body.continue:                                ; preds = %for.end
  br label %omp.inner.for.inc, !dbg !139

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %42 = load i32, i32* %.omp.iv, align 4, !dbg !114, !tbaa !27
  %add14 = add nsw i32 %42, 1, !dbg !111
  store i32 %add14, i32* %.omp.iv, align 4, !dbg !111, !tbaa !27
  br label %omp.inner.for.cond, !dbg !139, !llvm.loop !140

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !139

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %43 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !139
  store i8* getelementptr inbounds ([75 x i8], [75 x i8]* @2, i32 0, i32 0), i8** %43, align 8, !dbg !139, !tbaa !76
  %44 = load i32*, i32** %.global_tid..addr, align 8, !dbg !139
  %45 = load i32, i32* %44, align 4, !dbg !139, !tbaa !27
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %45), !dbg !139
  %46 = bitcast i32* %i5 to i8*, !dbg !139
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %46) #5, !dbg !139
  %47 = bitcast i32* %j to i8*, !dbg !139
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %47) #5, !dbg !139
  %48 = bitcast i32* %i4 to i8*, !dbg !139
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %48) #5, !dbg !139
  %49 = bitcast float* %temp to i8*, !dbg !139
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %49) #5, !dbg !139
  %50 = bitcast i32* %.omp.is_last to i8*, !dbg !139
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %50) #5, !dbg !139
  %51 = bitcast i32* %.omp.stride to i8*, !dbg !139
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %51) #5, !dbg !139
  %52 = bitcast i32* %.omp.ub to i8*, !dbg !139
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %52) #5, !dbg !139
  %53 = bitcast i32* %.omp.lb to i8*, !dbg !139
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %53) #5, !dbg !139
  br label %omp.precond.end, !dbg !139

omp.precond.end:                                  ; preds = %omp.loop.exit, %entry
  %54 = bitcast i32* %.capture_expr.1 to i8*, !dbg !139
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %54) #5, !dbg !139
  %55 = bitcast i32* %.capture_expr. to i8*, !dbg !139
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %55) #5, !dbg !139
  %56 = bitcast i32* %.omp.iv to i8*, !dbg !139
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %56) #5, !dbg !139
  ret void, !dbg !142
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %len, [100 x [100 x float]]* dereferenceable(40000) %u, float* dereferenceable(4) %sum) #3 !dbg !143 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %u.addr = alloca [100 x [100 x float]]*, align 8
  %sum.addr = alloca float*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !32
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !145, metadata !DIExpression()), !dbg !150
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !32
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !146, metadata !DIExpression()), !dbg !150
  store i32* %len, i32** %len.addr, align 8, !tbaa !32
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !147, metadata !DIExpression()), !dbg !150
  store [100 x [100 x float]]* %u, [100 x [100 x float]]** %u.addr, align 8, !tbaa !32
  call void @llvm.dbg.declare(metadata [100 x [100 x float]]** %u.addr, metadata !148, metadata !DIExpression()), !dbg !150
  store float* %sum, float** %sum.addr, align 8, !tbaa !32
  call void @llvm.dbg.declare(metadata float** %sum.addr, metadata !149, metadata !DIExpression()), !dbg !150
  %0 = load i32*, i32** %len.addr, align 8, !dbg !151, !tbaa !32
  %1 = load [100 x [100 x float]]*, [100 x [100 x float]]** %u.addr, align 8, !dbg !151, !tbaa !32
  %2 = load float*, float** %sum.addr, align 8, !dbg !151, !tbaa !32
  %3 = load i32*, i32** %.global_tid..addr, align 8, !dbg !151, !tbaa !32
  %4 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !151, !tbaa !32
  %5 = load i32*, i32** %len.addr, align 8, !dbg !151, !tbaa !32
  %6 = load [100 x [100 x float]]*, [100 x [100 x float]]** %u.addr, align 8, !dbg !151, !tbaa !32
  %7 = load float*, float** %sum.addr, align 8, !dbg !151, !tbaa !32
  call void @.omp_outlined._debug__(i32* %3, i32* %4, i32* %5, [100 x [100 x float]]* %6, float* %7) #5, !dbg !151
  ret void, !dbg !151
}

declare !callback !152 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

declare dso_local i32 @printf(i8*, ...) #4

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "integration/dataracebench/DRB021-reductionmissing-orig-yes.c", directory: "/home/brad/Code/OpenRace/tests/data")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.1 "}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 54, type: !8, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !14)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !10, !11}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!14 = !{!15, !16, !17, !18, !19, !21, !22, !23}
!15 = !DILocalVariable(name: "argc", arg: 1, scope: !7, file: !1, line: 54, type: !10)
!16 = !DILocalVariable(name: "argv", arg: 2, scope: !7, file: !1, line: 54, type: !11)
!17 = !DILocalVariable(name: "i", scope: !7, file: !1, line: 56, type: !10)
!18 = !DILocalVariable(name: "j", scope: !7, file: !1, line: 56, type: !10)
!19 = !DILocalVariable(name: "temp", scope: !7, file: !1, line: 57, type: !20)
!20 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!21 = !DILocalVariable(name: "sum", scope: !7, file: !1, line: 57, type: !20)
!22 = !DILocalVariable(name: "len", scope: !7, file: !1, line: 58, type: !10)
!23 = !DILocalVariable(name: "u", scope: !7, file: !1, line: 60, type: !24)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 320000, elements: !25)
!25 = !{!26, !26}
!26 = !DISubrange(count: 100)
!27 = !{!28, !28, i64 0}
!28 = !{!"int", !29, i64 0}
!29 = !{!"omnipotent char", !30, i64 0}
!30 = !{!"Simple C/C++ TBAA"}
!31 = !DILocation(line: 54, column: 14, scope: !7)
!32 = !{!33, !33, i64 0}
!33 = !{!"any pointer", !29, i64 0}
!34 = !DILocation(line: 54, column: 26, scope: !7)
!35 = !DILocation(line: 56, column: 3, scope: !7)
!36 = !DILocation(line: 56, column: 7, scope: !7)
!37 = !DILocation(line: 56, column: 9, scope: !7)
!38 = !DILocation(line: 57, column: 3, scope: !7)
!39 = !DILocation(line: 57, column: 9, scope: !7)
!40 = !DILocation(line: 57, column: 15, scope: !7)
!41 = !{!42, !42, i64 0}
!42 = !{!"float", !29, i64 0}
!43 = !DILocation(line: 58, column: 3, scope: !7)
!44 = !DILocation(line: 58, column: 7, scope: !7)
!45 = !DILocation(line: 60, column: 3, scope: !7)
!46 = !DILocation(line: 60, column: 9, scope: !7)
!47 = !DILocation(line: 61, column: 10, scope: !48)
!48 = distinct !DILexicalBlock(scope: !7, file: !1, line: 61, column: 3)
!49 = !DILocation(line: 61, column: 8, scope: !48)
!50 = !DILocation(line: 61, column: 15, scope: !51)
!51 = distinct !DILexicalBlock(scope: !48, file: !1, line: 61, column: 3)
!52 = !DILocation(line: 61, column: 19, scope: !51)
!53 = !DILocation(line: 61, column: 17, scope: !51)
!54 = !DILocation(line: 61, column: 3, scope: !48)
!55 = !DILocation(line: 62, column: 12, scope: !56)
!56 = distinct !DILexicalBlock(scope: !51, file: !1, line: 62, column: 5)
!57 = !DILocation(line: 62, column: 10, scope: !56)
!58 = !DILocation(line: 62, column: 17, scope: !59)
!59 = distinct !DILexicalBlock(scope: !56, file: !1, line: 62, column: 5)
!60 = !DILocation(line: 62, column: 21, scope: !59)
!61 = !DILocation(line: 62, column: 19, scope: !59)
!62 = !DILocation(line: 62, column: 5, scope: !56)
!63 = !DILocation(line: 63, column: 11, scope: !59)
!64 = !DILocation(line: 63, column: 9, scope: !59)
!65 = !DILocation(line: 63, column: 14, scope: !59)
!66 = !DILocation(line: 63, column: 17, scope: !59)
!67 = !DILocation(line: 62, column: 27, scope: !59)
!68 = !DILocation(line: 62, column: 5, scope: !59)
!69 = distinct !{!69, !62, !70}
!70 = !DILocation(line: 63, column: 19, scope: !56)
!71 = !DILocation(line: 61, column: 25, scope: !51)
!72 = !DILocation(line: 61, column: 3, scope: !51)
!73 = distinct !{!73, !54, !74}
!74 = !DILocation(line: 63, column: 19, scope: !48)
!75 = !DILocation(line: 65, column: 1, scope: !7)
!76 = !{!77, !33, i64 16}
!77 = !{!"ident_t", !28, i64 0, !28, i64 4, !28, i64 8, !28, i64 12, !33, i64 16}
!78 = !DILocation(line: 73, column: 25, scope: !7)
!79 = !DILocation(line: 73, column: 3, scope: !7)
!80 = !DILocation(line: 75, column: 1, scope: !7)
!81 = !DILocation(line: 74, column: 3, scope: !7)
!82 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 66, type: !83, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !92)
!83 = !DISubroutineType(types: !84)
!84 = !{null, !85, !85, !89, !90, !91}
!85 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !86)
!86 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !87)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!89 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !10, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !24, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !20, size: 64)
!92 = !{!93, !94, !95, !96, !97, !98, !99, !99, !100, !101, !102, !103, !104, !105, !100, !106, !100}
!93 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !82, type: !85, flags: DIFlagArtificial)
!94 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !82, type: !85, flags: DIFlagArtificial)
!95 = !DILocalVariable(name: "len", arg: 3, scope: !82, file: !1, line: 58, type: !89)
!96 = !DILocalVariable(name: "u", arg: 4, scope: !82, file: !1, line: 60, type: !90)
!97 = !DILocalVariable(name: "sum", arg: 5, scope: !82, file: !1, line: 57, type: !91)
!98 = !DILocalVariable(name: ".omp.iv", scope: !82, type: !10, flags: DIFlagArtificial)
!99 = !DILocalVariable(name: ".capture_expr.", scope: !82, type: !10, flags: DIFlagArtificial)
!100 = !DILocalVariable(name: "i", scope: !82, type: !10, flags: DIFlagArtificial)
!101 = !DILocalVariable(name: ".omp.lb", scope: !82, type: !10, flags: DIFlagArtificial)
!102 = !DILocalVariable(name: ".omp.ub", scope: !82, type: !10, flags: DIFlagArtificial)
!103 = !DILocalVariable(name: ".omp.stride", scope: !82, type: !10, flags: DIFlagArtificial)
!104 = !DILocalVariable(name: ".omp.is_last", scope: !82, type: !10, flags: DIFlagArtificial)
!105 = !DILocalVariable(name: "temp", scope: !82, type: !20, flags: DIFlagArtificial)
!106 = !DILocalVariable(name: "j", scope: !82, type: !10, flags: DIFlagArtificial)
!107 = !DILocation(line: 0, scope: !82)
!108 = !DILocation(line: 58, column: 7, scope: !82)
!109 = !DILocation(line: 60, column: 9, scope: !82)
!110 = !DILocation(line: 57, column: 15, scope: !82)
!111 = !DILocation(line: 66, column: 3, scope: !82)
!112 = !DILocation(line: 66, column: 19, scope: !82)
!113 = !DILocation(line: 66, column: 24, scope: !82)
!114 = !DILocation(line: 66, column: 8, scope: !82)
!115 = !DILocation(line: 67, column: 12, scope: !116)
!116 = distinct !DILexicalBlock(scope: !82, file: !1, line: 67, column: 5)
!117 = !DILocation(line: 67, column: 10, scope: !116)
!118 = !DILocation(line: 67, column: 17, scope: !119)
!119 = distinct !DILexicalBlock(scope: !116, file: !1, line: 67, column: 5)
!120 = !DILocation(line: 67, column: 21, scope: !119)
!121 = !DILocation(line: 67, column: 19, scope: !119)
!122 = !DILocation(line: 67, column: 5, scope: !116)
!123 = !DILocation(line: 69, column: 16, scope: !124)
!124 = distinct !DILexicalBlock(scope: !119, file: !1, line: 68, column: 5)
!125 = !DILocation(line: 69, column: 14, scope: !124)
!126 = !DILocation(line: 69, column: 19, scope: !124)
!127 = !DILocation(line: 69, column: 12, scope: !124)
!128 = !DILocation(line: 70, column: 13, scope: !124)
!129 = !DILocation(line: 70, column: 19, scope: !124)
!130 = !DILocation(line: 70, column: 26, scope: !124)
!131 = !DILocation(line: 70, column: 24, scope: !124)
!132 = !DILocation(line: 70, column: 17, scope: !124)
!133 = !DILocation(line: 70, column: 11, scope: !124)
!134 = !DILocation(line: 71, column: 5, scope: !124)
!135 = !DILocation(line: 67, column: 27, scope: !119)
!136 = !DILocation(line: 67, column: 5, scope: !119)
!137 = distinct !{!137, !122, !138}
!138 = !DILocation(line: 71, column: 5, scope: !116)
!139 = !DILocation(line: 65, column: 1, scope: !82)
!140 = distinct !{!140, !139, !141}
!141 = !DILocation(line: 65, column: 44, scope: !82)
!142 = !DILocation(line: 71, column: 5, scope: !82)
!143 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 66, type: !83, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!144 = !{!145, !146, !147, !148, !149}
!145 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !143, type: !85, flags: DIFlagArtificial)
!146 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !143, type: !85, flags: DIFlagArtificial)
!147 = !DILocalVariable(name: "len", arg: 3, scope: !143, type: !89, flags: DIFlagArtificial)
!148 = !DILocalVariable(name: "u", arg: 4, scope: !143, type: !90, flags: DIFlagArtificial)
!149 = !DILocalVariable(name: "sum", arg: 5, scope: !143, type: !91, flags: DIFlagArtificial)
!150 = !DILocation(line: 0, scope: !143)
!151 = !DILocation(line: 66, column: 3, scope: !143)
!152 = !{!153}
!153 = !{i64 2, i64 -1, i64 -1, i1 true}
