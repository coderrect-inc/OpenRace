; ModuleID = 'integration/dataracebench/DRB112-linear-orig-no.c'
source_filename = "integration/dataracebench/DRB112-linear-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 66, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [63 x i8] c";integration/dataracebench/DRB112-linear-orig-no.c;main;66;1;;\00", align 1
@2 = private unnamed_addr constant [64 x i8] c";integration/dataracebench/DRB112-linear-orig-no.c;main;66;35;;\00", align 1
@3 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"c[50]=%f\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main() #0 !dbg !9 {
entry:
  %retval = alloca i32, align 4
  %len = alloca i32, align 4
  %saved_stack = alloca i8*, align 8
  %__vla_expr0 = alloca i64, align 8
  %__vla_expr1 = alloca i64, align 8
  %__vla_expr2 = alloca i64, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32 0, i32* %retval, align 4
  %2 = bitcast i32* %len to i8*, !dbg !33
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #3, !dbg !33
  call void @llvm.dbg.declare(metadata i32* %len, metadata !14, metadata !DIExpression()), !dbg !34
  store i32 100, i32* %len, align 4, !dbg !34, !tbaa !35
  %3 = load i32, i32* %len, align 4, !dbg !39, !tbaa !35
  %4 = zext i32 %3 to i64, !dbg !40
  %5 = call i8* @llvm.stacksave(), !dbg !40
  store i8* %5, i8** %saved_stack, align 8, !dbg !40
  %vla = alloca double, i64 %4, align 16, !dbg !40
  store i64 %4, i64* %__vla_expr0, align 8, !dbg !40
  call void @llvm.dbg.declare(metadata i64* %__vla_expr0, metadata !15, metadata !DIExpression()), !dbg !41
  call void @llvm.dbg.declare(metadata double* %vla, metadata !17, metadata !DIExpression()), !dbg !42
  %6 = load i32, i32* %len, align 4, !dbg !43, !tbaa !35
  %7 = zext i32 %6 to i64, !dbg !40
  %vla1 = alloca double, i64 %7, align 16, !dbg !40
  store i64 %7, i64* %__vla_expr1, align 8, !dbg !40
  call void @llvm.dbg.declare(metadata i64* %__vla_expr1, metadata !21, metadata !DIExpression()), !dbg !41
  call void @llvm.dbg.declare(metadata double* %vla1, metadata !22, metadata !DIExpression()), !dbg !44
  %8 = load i32, i32* %len, align 4, !dbg !45, !tbaa !35
  %9 = zext i32 %8 to i64, !dbg !40
  %vla2 = alloca double, i64 %9, align 16, !dbg !40
  store i64 %9, i64* %__vla_expr2, align 8, !dbg !40
  call void @llvm.dbg.declare(metadata i64* %__vla_expr2, metadata !26, metadata !DIExpression()), !dbg !41
  call void @llvm.dbg.declare(metadata double* %vla2, metadata !27, metadata !DIExpression()), !dbg !46
  %10 = bitcast i32* %i to i8*, !dbg !47
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #3, !dbg !47
  call void @llvm.dbg.declare(metadata i32* %i, metadata !31, metadata !DIExpression()), !dbg !48
  %11 = bitcast i32* %j to i8*, !dbg !47
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #3, !dbg !47
  call void @llvm.dbg.declare(metadata i32* %j, metadata !32, metadata !DIExpression()), !dbg !49
  store i32 0, i32* %j, align 4, !dbg !49, !tbaa !35
  store i32 0, i32* %i, align 4, !dbg !50, !tbaa !35
  br label %for.cond, !dbg !52

for.cond:                                         ; preds = %for.inc, %entry
  %12 = load i32, i32* %i, align 4, !dbg !53, !tbaa !35
  %13 = load i32, i32* %len, align 4, !dbg !55, !tbaa !35
  %cmp = icmp slt i32 %12, %13, !dbg !56
  br i1 %cmp, label %for.body, label %for.end, !dbg !57

for.body:                                         ; preds = %for.cond
  %14 = load i32, i32* %i, align 4, !dbg !58, !tbaa !35
  %conv = sitofp i32 %14 to double, !dbg !60
  %div = fdiv double %conv, 2.000000e+00, !dbg !61
  %15 = load i32, i32* %i, align 4, !dbg !62, !tbaa !35
  %idxprom = sext i32 %15 to i64, !dbg !63
  %arrayidx = getelementptr inbounds double, double* %vla, i64 %idxprom, !dbg !63
  store double %div, double* %arrayidx, align 8, !dbg !64, !tbaa !65
  %16 = load i32, i32* %i, align 4, !dbg !67, !tbaa !35
  %conv3 = sitofp i32 %16 to double, !dbg !68
  %div4 = fdiv double %conv3, 3.000000e+00, !dbg !69
  %17 = load i32, i32* %i, align 4, !dbg !70, !tbaa !35
  %idxprom5 = sext i32 %17 to i64, !dbg !71
  %arrayidx6 = getelementptr inbounds double, double* %vla1, i64 %idxprom5, !dbg !71
  store double %div4, double* %arrayidx6, align 8, !dbg !72, !tbaa !65
  %18 = load i32, i32* %i, align 4, !dbg !73, !tbaa !35
  %conv7 = sitofp i32 %18 to double, !dbg !74
  %div8 = fdiv double %conv7, 7.000000e+00, !dbg !75
  %19 = load i32, i32* %i, align 4, !dbg !76, !tbaa !35
  %idxprom9 = sext i32 %19 to i64, !dbg !77
  %arrayidx10 = getelementptr inbounds double, double* %vla2, i64 %idxprom9, !dbg !77
  store double %div8, double* %arrayidx10, align 8, !dbg !78, !tbaa !65
  br label %for.inc, !dbg !79

for.inc:                                          ; preds = %for.body
  %20 = load i32, i32* %i, align 4, !dbg !80, !tbaa !35
  %inc = add nsw i32 %20, 1, !dbg !80
  store i32 %inc, i32* %i, align 4, !dbg !80, !tbaa !35
  br label %for.cond, !dbg !81, !llvm.loop !82

for.end:                                          ; preds = %for.cond
  %21 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !84
  store i8* getelementptr inbounds ([63 x i8], [63 x i8]* @1, i32 0, i32 0), i8** %21, align 8, !dbg !84, !tbaa !85
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 8, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i64, double*, i32*, i64, double*, i64, double*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %len, i64 %9, double* %vla2, i32* %j, i64 %4, double* %vla, i64 %7, double* %vla1), !dbg !84
  %arrayidx11 = getelementptr inbounds double, double* %vla2, i64 50, !dbg !88
  %22 = load double, double* %arrayidx11, align 16, !dbg !88, !tbaa !65
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), double %22), !dbg !89
  store i32 0, i32* %retval, align 4, !dbg !90
  %23 = bitcast i32* %j to i8*, !dbg !91
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %23) #3, !dbg !91
  %24 = bitcast i32* %i to i8*, !dbg !91
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %24) #3, !dbg !91
  %25 = load i8*, i8** %saved_stack, align 8, !dbg !91
  call void @llvm.stackrestore(i8* %25), !dbg !91
  %26 = bitcast i32* %len to i8*, !dbg !91
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %26) #3, !dbg !91
  %27 = load i32, i32* %retval, align 4, !dbg !91
  ret i32 %27, !dbg !91
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %len, i64 %vla, double* dereferenceable(8) %c, i32* dereferenceable(4) %j, i64 %vla1, double* dereferenceable(8) %a, i64 %vla3, double* dereferenceable(8) %b) #4 !dbg !92 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %vla.addr = alloca i64, align 8
  %c.addr = alloca double*, align 8
  %j.addr = alloca i32*, align 8
  %vla.addr2 = alloca i64, align 8
  %a.addr = alloca double*, align 8
  %vla.addr4 = alloca i64, align 8
  %b.addr = alloca double*, align 8
  %.omp.iv = alloca i32, align 4
  %tmp = alloca i32, align 4
  %.capture_expr. = alloca i32, align 4
  %.capture_expr.5 = alloca i32, align 4
  %i = alloca i32, align 4
  %.linear.start = alloca i32, align 4
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %i8 = alloca i32, align 4
  %j9 = alloca i32, align 4
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !121
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !102, metadata !DIExpression()), !dbg !122
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !121
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !103, metadata !DIExpression()), !dbg !122
  store i32* %len, i32** %len.addr, align 8, !tbaa !121
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !104, metadata !DIExpression()), !dbg !123
  store i64 %vla, i64* %vla.addr, align 8, !tbaa !124
  call void @llvm.dbg.declare(metadata i64* %vla.addr, metadata !105, metadata !DIExpression()), !dbg !122
  store double* %c, double** %c.addr, align 8, !tbaa !121
  call void @llvm.dbg.declare(metadata double** %c.addr, metadata !106, metadata !DIExpression()), !dbg !126
  store i32* %j, i32** %j.addr, align 8, !tbaa !121
  call void @llvm.dbg.declare(metadata i32** %j.addr, metadata !107, metadata !DIExpression()), !dbg !127
  store i64 %vla1, i64* %vla.addr2, align 8, !tbaa !124
  call void @llvm.dbg.declare(metadata i64* %vla.addr2, metadata !108, metadata !DIExpression()), !dbg !122
  store double* %a, double** %a.addr, align 8, !tbaa !121
  call void @llvm.dbg.declare(metadata double** %a.addr, metadata !109, metadata !DIExpression()), !dbg !128
  store i64 %vla3, i64* %vla.addr4, align 8, !tbaa !124
  call void @llvm.dbg.declare(metadata i64* %vla.addr4, metadata !110, metadata !DIExpression()), !dbg !122
  store double* %b, double** %b.addr, align 8, !tbaa !121
  call void @llvm.dbg.declare(metadata double** %b.addr, metadata !111, metadata !DIExpression()), !dbg !129
  %2 = load i32*, i32** %len.addr, align 8, !dbg !130, !tbaa !121
  %3 = load i64, i64* %vla.addr, align 8, !dbg !130, !tbaa !124
  %4 = load double*, double** %c.addr, align 8, !dbg !130, !tbaa !121
  %5 = load i32*, i32** %j.addr, align 8, !dbg !130, !tbaa !121
  %6 = load i64, i64* %vla.addr2, align 8, !dbg !130, !tbaa !124
  %7 = load double*, double** %a.addr, align 8, !dbg !130, !tbaa !121
  %8 = load i64, i64* %vla.addr4, align 8, !dbg !130, !tbaa !124
  %9 = load double*, double** %b.addr, align 8, !dbg !130, !tbaa !121
  %10 = bitcast i32* %.omp.iv to i8*, !dbg !130
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #3, !dbg !130
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !112, metadata !DIExpression()), !dbg !122
  %11 = bitcast i32* %.capture_expr. to i8*, !dbg !130
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #3, !dbg !130
  call void @llvm.dbg.declare(metadata i32* %.capture_expr., metadata !113, metadata !DIExpression()), !dbg !122
  %12 = load i32, i32* %2, align 4, !dbg !131, !tbaa !35
  store i32 %12, i32* %.capture_expr., align 4, !dbg !131, !tbaa !35
  %13 = bitcast i32* %.capture_expr.5 to i8*, !dbg !130
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %13) #3, !dbg !130
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.5, metadata !113, metadata !DIExpression()), !dbg !122
  %14 = load i32, i32* %.capture_expr., align 4, !dbg !131, !tbaa !35
  %sub = sub nsw i32 %14, 0, !dbg !130
  %sub6 = sub nsw i32 %sub, 1, !dbg !130
  %add = add nsw i32 %sub6, 1, !dbg !130
  %div = sdiv i32 %add, 1, !dbg !130
  %sub7 = sub nsw i32 %div, 1, !dbg !130
  store i32 %sub7, i32* %.capture_expr.5, align 4, !dbg !130, !tbaa !35
  %15 = bitcast i32* %i to i8*, !dbg !130
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %15) #3, !dbg !130
  call void @llvm.dbg.declare(metadata i32* %i, metadata !114, metadata !DIExpression()), !dbg !122
  store i32 0, i32* %i, align 4, !dbg !132, !tbaa !35
  %16 = bitcast i32* %i to i8*, !dbg !130
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %16) #3, !dbg !130
  %17 = load i32, i32* %.capture_expr., align 4, !dbg !131, !tbaa !35
  %cmp = icmp slt i32 0, %17, !dbg !130
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end, !dbg !130

omp.precond.then:                                 ; preds = %entry
  %18 = bitcast i32* %.linear.start to i8*, !dbg !130
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %18) #3, !dbg !130
  call void @llvm.dbg.declare(metadata i32* %.linear.start, metadata !115, metadata !DIExpression()), !dbg !122
  %19 = load i32, i32* %5, align 4, !dbg !133, !tbaa !35
  store i32 %19, i32* %.linear.start, align 4, !dbg !130, !tbaa !35
  %20 = bitcast i32* %.omp.lb to i8*, !dbg !130
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %20) #3, !dbg !130
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !116, metadata !DIExpression()), !dbg !122
  store i32 0, i32* %.omp.lb, align 4, !dbg !134, !tbaa !35
  %21 = bitcast i32* %.omp.ub to i8*, !dbg !130
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %21) #3, !dbg !130
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !117, metadata !DIExpression()), !dbg !122
  %22 = load i32, i32* %.capture_expr.5, align 4, !dbg !130, !tbaa !35
  store i32 %22, i32* %.omp.ub, align 4, !dbg !134, !tbaa !35
  %23 = bitcast i32* %.omp.stride to i8*, !dbg !130
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %23) #3, !dbg !130
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !118, metadata !DIExpression()), !dbg !122
  store i32 1, i32* %.omp.stride, align 4, !dbg !134, !tbaa !35
  %24 = bitcast i32* %.omp.is_last to i8*, !dbg !130
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %24) #3, !dbg !130
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !119, metadata !DIExpression()), !dbg !122
  store i32 0, i32* %.omp.is_last, align 4, !dbg !134, !tbaa !35
  %25 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !130
  store i8* getelementptr inbounds ([63 x i8], [63 x i8]* @1, i32 0, i32 0), i8** %25, align 8, !dbg !130, !tbaa !85
  %26 = load i32*, i32** %.global_tid..addr, align 8, !dbg !130
  %27 = load i32, i32* %26, align 4, !dbg !130, !tbaa !35
  call void @__kmpc_barrier(%struct.ident_t* %.kmpc_loc.addr, i32 %27), !dbg !130
  %28 = bitcast i32* %i8 to i8*, !dbg !130
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %28) #3, !dbg !130
  call void @llvm.dbg.declare(metadata i32* %i8, metadata !114, metadata !DIExpression()), !dbg !122
  %29 = bitcast i32* %j9 to i8*, !dbg !130
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %29) #3, !dbg !130
  call void @llvm.dbg.declare(metadata i32* %j9, metadata !120, metadata !DIExpression()), !dbg !122
  %30 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !130
  store i8* getelementptr inbounds ([63 x i8], [63 x i8]* @1, i32 0, i32 0), i8** %30, align 8, !dbg !130, !tbaa !85
  %31 = load i32*, i32** %.global_tid..addr, align 8, !dbg !130
  %32 = load i32, i32* %31, align 4, !dbg !130, !tbaa !35
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %32, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !130
  %33 = load i32, i32* %.omp.ub, align 4, !dbg !134, !tbaa !35
  %34 = load i32, i32* %.capture_expr.5, align 4, !dbg !130, !tbaa !35
  %cmp10 = icmp sgt i32 %33, %34, !dbg !134
  br i1 %cmp10, label %cond.true, label %cond.false, !dbg !134

cond.true:                                        ; preds = %omp.precond.then
  %35 = load i32, i32* %.capture_expr.5, align 4, !dbg !130, !tbaa !35
  br label %cond.end, !dbg !134

cond.false:                                       ; preds = %omp.precond.then
  %36 = load i32, i32* %.omp.ub, align 4, !dbg !134, !tbaa !35
  br label %cond.end, !dbg !134

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %35, %cond.true ], [ %36, %cond.false ], !dbg !134
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !134, !tbaa !35
  %37 = load i32, i32* %.omp.lb, align 4, !dbg !134, !tbaa !35
  store i32 %37, i32* %.omp.iv, align 4, !dbg !134, !tbaa !35
  br label %omp.inner.for.cond, !dbg !130

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %38 = load i32, i32* %.omp.iv, align 4, !dbg !134, !tbaa !35
  %39 = load i32, i32* %.omp.ub, align 4, !dbg !134, !tbaa !35
  %cmp11 = icmp sle i32 %38, %39, !dbg !130
  br i1 %cmp11, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !130

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !130

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %40 = load i32, i32* %.omp.iv, align 4, !dbg !134, !tbaa !35
  %mul = mul nsw i32 %40, 1, !dbg !132
  %add12 = add nsw i32 0, %mul, !dbg !132
  store i32 %add12, i32* %i8, align 4, !dbg !132, !tbaa !35
  %41 = load i32, i32* %.linear.start, align 4, !dbg !133, !tbaa !35
  %42 = load i32, i32* %.omp.iv, align 4, !dbg !134, !tbaa !35
  %mul13 = mul nsw i32 %42, 1, !dbg !133
  %add14 = add nsw i32 %41, %mul13, !dbg !133
  store i32 %add14, i32* %j9, align 4, !dbg !133, !tbaa !35
  %43 = load i32, i32* %i8, align 4, !dbg !135, !tbaa !35
  %idxprom = sext i32 %43 to i64, !dbg !137
  %arrayidx = getelementptr inbounds double, double* %7, i64 %idxprom, !dbg !137
  %44 = load double, double* %arrayidx, align 8, !dbg !137, !tbaa !65
  %45 = load i32, i32* %i8, align 4, !dbg !138, !tbaa !35
  %idxprom15 = sext i32 %45 to i64, !dbg !139
  %arrayidx16 = getelementptr inbounds double, double* %9, i64 %idxprom15, !dbg !139
  %46 = load double, double* %arrayidx16, align 8, !dbg !139, !tbaa !65
  %mul17 = fmul double %44, %46, !dbg !140
  %47 = load i32, i32* %j9, align 4, !dbg !141, !tbaa !35
  %idxprom18 = sext i32 %47 to i64, !dbg !142
  %arrayidx19 = getelementptr inbounds double, double* %4, i64 %idxprom18, !dbg !142
  %48 = load double, double* %arrayidx19, align 8, !dbg !143, !tbaa !65
  %add20 = fadd double %48, %mul17, !dbg !143
  store double %add20, double* %arrayidx19, align 8, !dbg !143, !tbaa !65
  %49 = load i32, i32* %j9, align 4, !dbg !144, !tbaa !35
  %inc = add nsw i32 %49, 1, !dbg !144
  store i32 %inc, i32* %j9, align 4, !dbg !144, !tbaa !35
  br label %omp.body.continue, !dbg !145

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !146

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %50 = load i32, i32* %.omp.iv, align 4, !dbg !134, !tbaa !35
  %add21 = add nsw i32 %50, 1, !dbg !130
  store i32 %add21, i32* %.omp.iv, align 4, !dbg !130, !tbaa !35
  br label %omp.inner.for.cond, !dbg !146, !llvm.loop !147

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !146

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %51 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !146
  store i8* getelementptr inbounds ([64 x i8], [64 x i8]* @2, i32 0, i32 0), i8** %51, align 8, !dbg !146, !tbaa !85
  %52 = load i32*, i32** %.global_tid..addr, align 8, !dbg !146
  %53 = load i32, i32* %52, align 4, !dbg !146, !tbaa !35
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %53), !dbg !146
  %54 = bitcast i32* %j9 to i8*, !dbg !146
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %54) #3, !dbg !146
  %55 = bitcast i32* %i8 to i8*, !dbg !146
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %55) #3, !dbg !146
  %56 = load i32, i32* %.omp.is_last, align 4, !dbg !146, !tbaa !35
  %57 = icmp ne i32 %56, 0, !dbg !146
  br i1 %57, label %.omp.linear.pu, label %.omp.linear.pu.done, !dbg !146

.omp.linear.pu:                                   ; preds = %omp.loop.exit
  %58 = load i32, i32* %.linear.start, align 4, !dbg !133, !tbaa !35
  %59 = load i32, i32* %.capture_expr.5, align 4, !dbg !130, !tbaa !35
  %add22 = add nsw i32 %59, 1, !dbg !130
  %mul23 = mul nsw i32 %add22, 1, !dbg !133
  %add24 = add nsw i32 %58, %mul23, !dbg !133
  store i32 %add24, i32* %5, align 4, !dbg !133, !tbaa !35
  br label %.omp.linear.pu.done, !dbg !146

.omp.linear.pu.done:                              ; preds = %.omp.linear.pu, %omp.loop.exit
  %60 = bitcast i32* %.omp.is_last to i8*, !dbg !146
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %60) #3, !dbg !146
  %61 = bitcast i32* %.omp.stride to i8*, !dbg !146
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %61) #3, !dbg !146
  %62 = bitcast i32* %.omp.ub to i8*, !dbg !146
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %62) #3, !dbg !146
  %63 = bitcast i32* %.omp.lb to i8*, !dbg !146
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %63) #3, !dbg !146
  %64 = bitcast i32* %.linear.start to i8*, !dbg !146
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %64) #3, !dbg !146
  br label %omp.precond.end, !dbg !146

omp.precond.end:                                  ; preds = %.omp.linear.pu.done, %entry
  %65 = bitcast i32* %.capture_expr.5 to i8*, !dbg !146
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %65) #3, !dbg !146
  %66 = bitcast i32* %.capture_expr. to i8*, !dbg !146
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %66) #3, !dbg !146
  %67 = bitcast i32* %.omp.iv to i8*, !dbg !146
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %67) #3, !dbg !146
  ret void, !dbg !149
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local void @__kmpc_barrier(%struct.ident_t*, i32)

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %len, i64 %vla, double* dereferenceable(8) %c, i32* dereferenceable(4) %j, i64 %vla1, double* dereferenceable(8) %a, i64 %vla3, double* dereferenceable(8) %b) #4 !dbg !150 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %vla.addr = alloca i64, align 8
  %c.addr = alloca double*, align 8
  %j.addr = alloca i32*, align 8
  %vla.addr2 = alloca i64, align 8
  %a.addr = alloca double*, align 8
  %vla.addr4 = alloca i64, align 8
  %b.addr = alloca double*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !121
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !152, metadata !DIExpression()), !dbg !162
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !121
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !153, metadata !DIExpression()), !dbg !162
  store i32* %len, i32** %len.addr, align 8, !tbaa !121
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !154, metadata !DIExpression()), !dbg !162
  store i64 %vla, i64* %vla.addr, align 8, !tbaa !124
  call void @llvm.dbg.declare(metadata i64* %vla.addr, metadata !155, metadata !DIExpression()), !dbg !162
  store double* %c, double** %c.addr, align 8, !tbaa !121
  call void @llvm.dbg.declare(metadata double** %c.addr, metadata !156, metadata !DIExpression()), !dbg !162
  store i32* %j, i32** %j.addr, align 8, !tbaa !121
  call void @llvm.dbg.declare(metadata i32** %j.addr, metadata !157, metadata !DIExpression()), !dbg !162
  store i64 %vla1, i64* %vla.addr2, align 8, !tbaa !124
  call void @llvm.dbg.declare(metadata i64* %vla.addr2, metadata !158, metadata !DIExpression()), !dbg !162
  store double* %a, double** %a.addr, align 8, !tbaa !121
  call void @llvm.dbg.declare(metadata double** %a.addr, metadata !159, metadata !DIExpression()), !dbg !162
  store i64 %vla3, i64* %vla.addr4, align 8, !tbaa !124
  call void @llvm.dbg.declare(metadata i64* %vla.addr4, metadata !160, metadata !DIExpression()), !dbg !162
  store double* %b, double** %b.addr, align 8, !tbaa !121
  call void @llvm.dbg.declare(metadata double** %b.addr, metadata !161, metadata !DIExpression()), !dbg !162
  %0 = load i32*, i32** %len.addr, align 8, !dbg !163, !tbaa !121
  %1 = load i64, i64* %vla.addr, align 8, !dbg !163, !tbaa !124
  %2 = load double*, double** %c.addr, align 8, !dbg !163, !tbaa !121
  %3 = load i32*, i32** %j.addr, align 8, !dbg !163, !tbaa !121
  %4 = load i64, i64* %vla.addr2, align 8, !dbg !163, !tbaa !124
  %5 = load double*, double** %a.addr, align 8, !dbg !163, !tbaa !121
  %6 = load i64, i64* %vla.addr4, align 8, !dbg !163, !tbaa !124
  %7 = load double*, double** %b.addr, align 8, !dbg !163, !tbaa !121
  %8 = load i32*, i32** %.global_tid..addr, align 8, !dbg !163, !tbaa !121
  %9 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !163, !tbaa !121
  %10 = load i32*, i32** %len.addr, align 8, !dbg !163, !tbaa !121
  %11 = load double*, double** %c.addr, align 8, !dbg !163, !tbaa !121
  %12 = load i32*, i32** %j.addr, align 8, !dbg !163, !tbaa !121
  %13 = load double*, double** %a.addr, align 8, !dbg !163, !tbaa !121
  %14 = load double*, double** %b.addr, align 8, !dbg !163, !tbaa !121
  call void @.omp_outlined._debug__(i32* %8, i32* %9, i32* %10, i64 %1, double* %11, i32* %12, i64 %4, double* %13, i64 %6, double* %14) #3, !dbg !163
  ret void, !dbg !163
}

declare !callback !164 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

declare dso_local i32 @printf(i8*, ...) #5

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }
attributes #4 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "integration/dataracebench/DRB112-linear-orig-no.c", directory: "/home/brad/Code/OpenRace/tests/data")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!5 = !{i32 7, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 10.0.1 "}
!9 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 53, type: !10, scopeLine: 54, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !13)
!10 = !DISubroutineType(types: !11)
!11 = !{!12}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !{!14, !15, !17, !21, !22, !26, !27, !31, !32}
!14 = !DILocalVariable(name: "len", scope: !9, file: !1, line: 55, type: !12)
!15 = !DILocalVariable(name: "__vla_expr0", scope: !9, type: !16, flags: DIFlagArtificial)
!16 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!17 = !DILocalVariable(name: "a", scope: !9, file: !1, line: 56, type: !18)
!18 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !19)
!19 = !{!20}
!20 = !DISubrange(count: !15)
!21 = !DILocalVariable(name: "__vla_expr1", scope: !9, type: !16, flags: DIFlagArtificial)
!22 = !DILocalVariable(name: "b", scope: !9, file: !1, line: 56, type: !23)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !24)
!24 = !{!25}
!25 = !DISubrange(count: !21)
!26 = !DILocalVariable(name: "__vla_expr2", scope: !9, type: !16, flags: DIFlagArtificial)
!27 = !DILocalVariable(name: "c", scope: !9, file: !1, line: 56, type: !28)
!28 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !29)
!29 = !{!30}
!30 = !DISubrange(count: !26)
!31 = !DILocalVariable(name: "i", scope: !9, file: !1, line: 57, type: !12)
!32 = !DILocalVariable(name: "j", scope: !9, file: !1, line: 57, type: !12)
!33 = !DILocation(line: 55, column: 3, scope: !9)
!34 = !DILocation(line: 55, column: 7, scope: !9)
!35 = !{!36, !36, i64 0}
!36 = !{!"int", !37, i64 0}
!37 = !{!"omnipotent char", !38, i64 0}
!38 = !{!"Simple C/C++ TBAA"}
!39 = !DILocation(line: 56, column: 12, scope: !9)
!40 = !DILocation(line: 56, column: 3, scope: !9)
!41 = !DILocation(line: 0, scope: !9)
!42 = !DILocation(line: 56, column: 10, scope: !9)
!43 = !DILocation(line: 56, column: 20, scope: !9)
!44 = !DILocation(line: 56, column: 18, scope: !9)
!45 = !DILocation(line: 56, column: 28, scope: !9)
!46 = !DILocation(line: 56, column: 26, scope: !9)
!47 = !DILocation(line: 57, column: 3, scope: !9)
!48 = !DILocation(line: 57, column: 7, scope: !9)
!49 = !DILocation(line: 57, column: 9, scope: !9)
!50 = !DILocation(line: 59, column: 9, scope: !51)
!51 = distinct !DILexicalBlock(scope: !9, file: !1, line: 59, column: 3)
!52 = !DILocation(line: 59, column: 8, scope: !51)
!53 = !DILocation(line: 59, column: 12, scope: !54)
!54 = distinct !DILexicalBlock(scope: !51, file: !1, line: 59, column: 3)
!55 = !DILocation(line: 59, column: 14, scope: !54)
!56 = !DILocation(line: 59, column: 13, scope: !54)
!57 = !DILocation(line: 59, column: 3, scope: !51)
!58 = !DILocation(line: 61, column: 19, scope: !59)
!59 = distinct !DILexicalBlock(scope: !54, file: !1, line: 60, column: 3)
!60 = !DILocation(line: 61, column: 11, scope: !59)
!61 = !DILocation(line: 61, column: 21, scope: !59)
!62 = !DILocation(line: 61, column: 7, scope: !59)
!63 = !DILocation(line: 61, column: 5, scope: !59)
!64 = !DILocation(line: 61, column: 9, scope: !59)
!65 = !{!66, !66, i64 0}
!66 = !{!"double", !37, i64 0}
!67 = !DILocation(line: 62, column: 19, scope: !59)
!68 = !DILocation(line: 62, column: 11, scope: !59)
!69 = !DILocation(line: 62, column: 21, scope: !59)
!70 = !DILocation(line: 62, column: 7, scope: !59)
!71 = !DILocation(line: 62, column: 5, scope: !59)
!72 = !DILocation(line: 62, column: 9, scope: !59)
!73 = !DILocation(line: 63, column: 19, scope: !59)
!74 = !DILocation(line: 63, column: 11, scope: !59)
!75 = !DILocation(line: 63, column: 21, scope: !59)
!76 = !DILocation(line: 63, column: 7, scope: !59)
!77 = !DILocation(line: 63, column: 5, scope: !59)
!78 = !DILocation(line: 63, column: 9, scope: !59)
!79 = !DILocation(line: 64, column: 3, scope: !59)
!80 = !DILocation(line: 59, column: 19, scope: !54)
!81 = !DILocation(line: 59, column: 3, scope: !54)
!82 = distinct !{!82, !57, !83}
!83 = !DILocation(line: 64, column: 3, scope: !51)
!84 = !DILocation(line: 66, column: 1, scope: !9)
!85 = !{!86, !87, i64 16}
!86 = !{!"ident_t", !36, i64 0, !36, i64 4, !36, i64 8, !36, i64 12, !87, i64 16}
!87 = !{!"any pointer", !37, i64 0}
!88 = !DILocation(line: 73, column: 24, scope: !9)
!89 = !DILocation(line: 73, column: 3, scope: !9)
!90 = !DILocation(line: 74, column: 3, scope: !9)
!91 = !DILocation(line: 75, column: 1, scope: !9)
!92 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 67, type: !93, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !101)
!93 = !DISubroutineType(types: !94)
!94 = !{null, !95, !95, !99, !16, !100, !99, !16, !100, !16, !100}
!95 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !96)
!96 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !97)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!99 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !12, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !4, size: 64)
!101 = !{!102, !103, !104, !105, !106, !107, !108, !109, !110, !111, !112, !113, !113, !114, !115, !116, !117, !118, !119, !114, !120}
!102 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !92, type: !95, flags: DIFlagArtificial)
!103 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !92, type: !95, flags: DIFlagArtificial)
!104 = !DILocalVariable(name: "len", arg: 3, scope: !92, file: !1, line: 55, type: !99)
!105 = !DILocalVariable(name: "vla", arg: 4, scope: !92, type: !16, flags: DIFlagArtificial)
!106 = !DILocalVariable(name: "c", arg: 5, scope: !92, file: !1, line: 56, type: !100)
!107 = !DILocalVariable(name: "j", arg: 6, scope: !92, file: !1, line: 57, type: !99)
!108 = !DILocalVariable(name: "vla", arg: 7, scope: !92, type: !16, flags: DIFlagArtificial)
!109 = !DILocalVariable(name: "a", arg: 8, scope: !92, file: !1, line: 56, type: !100)
!110 = !DILocalVariable(name: "vla", arg: 9, scope: !92, type: !16, flags: DIFlagArtificial)
!111 = !DILocalVariable(name: "b", arg: 10, scope: !92, file: !1, line: 56, type: !100)
!112 = !DILocalVariable(name: ".omp.iv", scope: !92, type: !12, flags: DIFlagArtificial)
!113 = !DILocalVariable(name: ".capture_expr.", scope: !92, type: !12, flags: DIFlagArtificial)
!114 = !DILocalVariable(name: "i", scope: !92, type: !12, flags: DIFlagArtificial)
!115 = !DILocalVariable(name: ".linear.start", scope: !92, type: !12, flags: DIFlagArtificial)
!116 = !DILocalVariable(name: ".omp.lb", scope: !92, type: !12, flags: DIFlagArtificial)
!117 = !DILocalVariable(name: ".omp.ub", scope: !92, type: !12, flags: DIFlagArtificial)
!118 = !DILocalVariable(name: ".omp.stride", scope: !92, type: !12, flags: DIFlagArtificial)
!119 = !DILocalVariable(name: ".omp.is_last", scope: !92, type: !12, flags: DIFlagArtificial)
!120 = !DILocalVariable(name: "j", scope: !92, type: !12, flags: DIFlagArtificial)
!121 = !{!87, !87, i64 0}
!122 = !DILocation(line: 0, scope: !92)
!123 = !DILocation(line: 55, column: 7, scope: !92)
!124 = !{!125, !125, i64 0}
!125 = !{!"long", !37, i64 0}
!126 = !DILocation(line: 56, column: 26, scope: !92)
!127 = !DILocation(line: 57, column: 9, scope: !92)
!128 = !DILocation(line: 56, column: 10, scope: !92)
!129 = !DILocation(line: 56, column: 18, scope: !92)
!130 = !DILocation(line: 67, column: 3, scope: !92)
!131 = !DILocation(line: 67, column: 14, scope: !92)
!132 = !DILocation(line: 67, column: 18, scope: !92)
!133 = !DILocation(line: 66, column: 33, scope: !92)
!134 = !DILocation(line: 67, column: 8, scope: !92)
!135 = !DILocation(line: 69, column: 13, scope: !136)
!136 = distinct !DILexicalBlock(scope: !92, file: !1, line: 68, column: 3)
!137 = !DILocation(line: 69, column: 11, scope: !136)
!138 = !DILocation(line: 69, column: 18, scope: !136)
!139 = !DILocation(line: 69, column: 16, scope: !136)
!140 = !DILocation(line: 69, column: 15, scope: !136)
!141 = !DILocation(line: 69, column: 7, scope: !136)
!142 = !DILocation(line: 69, column: 5, scope: !136)
!143 = !DILocation(line: 69, column: 9, scope: !136)
!144 = !DILocation(line: 70, column: 6, scope: !136)
!145 = !DILocation(line: 71, column: 3, scope: !136)
!146 = !DILocation(line: 66, column: 1, scope: !92)
!147 = distinct !{!147, !146, !148}
!148 = !DILocation(line: 66, column: 35, scope: !92)
!149 = !DILocation(line: 71, column: 3, scope: !92)
!150 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 67, type: !93, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !151)
!151 = !{!152, !153, !154, !155, !156, !157, !158, !159, !160, !161}
!152 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !150, type: !95, flags: DIFlagArtificial)
!153 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !150, type: !95, flags: DIFlagArtificial)
!154 = !DILocalVariable(name: "len", arg: 3, scope: !150, type: !99, flags: DIFlagArtificial)
!155 = !DILocalVariable(name: "vla", arg: 4, scope: !150, type: !16, flags: DIFlagArtificial)
!156 = !DILocalVariable(name: "c", arg: 5, scope: !150, type: !100, flags: DIFlagArtificial)
!157 = !DILocalVariable(name: "j", arg: 6, scope: !150, type: !99, flags: DIFlagArtificial)
!158 = !DILocalVariable(name: "vla", arg: 7, scope: !150, type: !16, flags: DIFlagArtificial)
!159 = !DILocalVariable(name: "a", arg: 8, scope: !150, type: !100, flags: DIFlagArtificial)
!160 = !DILocalVariable(name: "vla", arg: 9, scope: !150, type: !16, flags: DIFlagArtificial)
!161 = !DILocalVariable(name: "b", arg: 10, scope: !150, type: !100, flags: DIFlagArtificial)
!162 = !DILocation(line: 0, scope: !150)
!163 = !DILocation(line: 67, column: 3, scope: !150)
!164 = !{!165}
!165 = !{i64 2, i64 -1, i64 -1, i1 true}
