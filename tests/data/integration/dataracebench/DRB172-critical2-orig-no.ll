; ModuleID = 'integration/dataracebench/DRB172-critical2-orig-no.c'
source_filename = "integration/dataracebench/DRB172-critical2-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [66 x i8] c";integration/dataracebench/DRB172-critical2-orig-no.c;main;27;5;;\00", align 1
@2 = private unnamed_addr constant [67 x i8] c";integration/dataracebench/DRB172-critical2-orig-no.c;main;27;31;;\00", align 1
@3 = private unnamed_addr constant [66 x i8] c";integration/dataracebench/DRB172-critical2-orig-no.c;main;31;5;;\00", align 1
@.gomp_critical_user_.var = common global [8 x i32] zeroinitializer
@4 = private unnamed_addr constant [66 x i8] c";integration/dataracebench/DRB172-critical2-orig-no.c;main;35;5;;\00", align 1
@5 = private unnamed_addr constant [66 x i8] c";integration/dataracebench/DRB172-critical2-orig-no.c;main;36;5;;\00", align 1
@6 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@7 = private unnamed_addr constant [66 x i8] c";integration/dataracebench/DRB172-critical2-orig-no.c;main;25;3;;\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%f %f\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main() #0 !dbg !9 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %q = alloca [10 x double], align 16
  %qq = alloca [10 x double], align 16
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32 0, i32* %retval, align 4
  %2 = bitcast i32* %i to i8*, !dbg !20
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #5, !dbg !20
  call void @llvm.dbg.declare(metadata i32* %i, metadata !14, metadata !DIExpression()), !dbg !21
  %3 = bitcast [10 x double]* %q to i8*, !dbg !22
  call void @llvm.lifetime.start.p0i8(i64 80, i8* %3) #5, !dbg !22
  call void @llvm.dbg.declare(metadata [10 x double]* %q, metadata !15, metadata !DIExpression()), !dbg !23
  %4 = bitcast [10 x double]* %qq to i8*, !dbg !22
  call void @llvm.lifetime.start.p0i8(i64 80, i8* %4) #5, !dbg !22
  call void @llvm.dbg.declare(metadata [10 x double]* %qq, metadata !19, metadata !DIExpression()), !dbg !24
  store i32 0, i32* %i, align 4, !dbg !25, !tbaa !27
  br label %for.cond, !dbg !31

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %i, align 4, !dbg !32, !tbaa !27
  %cmp = icmp slt i32 %5, 10, !dbg !34
  br i1 %cmp, label %for.body, label %for.end, !dbg !35

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4, !dbg !36, !tbaa !27
  %conv = sitofp i32 %6 to double, !dbg !37
  %7 = load i32, i32* %i, align 4, !dbg !38, !tbaa !27
  %idxprom = sext i32 %7 to i64, !dbg !39
  %arrayidx = getelementptr inbounds [10 x double], [10 x double]* %qq, i64 0, i64 %idxprom, !dbg !39
  store double %conv, double* %arrayidx, align 8, !dbg !40, !tbaa !41
  br label %for.inc, !dbg !39

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !43, !tbaa !27
  %inc = add nsw i32 %8, 1, !dbg !43
  store i32 %inc, i32* %i, align 4, !dbg !43, !tbaa !27
  br label %for.cond, !dbg !44, !llvm.loop !45

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4, !dbg !47, !tbaa !27
  br label %for.cond1, !dbg !49

for.cond1:                                        ; preds = %for.inc8, %for.end
  %9 = load i32, i32* %i, align 4, !dbg !50, !tbaa !27
  %cmp2 = icmp slt i32 %9, 10, !dbg !52
  br i1 %cmp2, label %for.body4, label %for.end10, !dbg !53

for.body4:                                        ; preds = %for.cond1
  %10 = load i32, i32* %i, align 4, !dbg !54, !tbaa !27
  %conv5 = sitofp i32 %10 to double, !dbg !55
  %11 = load i32, i32* %i, align 4, !dbg !56, !tbaa !27
  %idxprom6 = sext i32 %11 to i64, !dbg !57
  %arrayidx7 = getelementptr inbounds [10 x double], [10 x double]* %q, i64 0, i64 %idxprom6, !dbg !57
  store double %conv5, double* %arrayidx7, align 8, !dbg !58, !tbaa !41
  br label %for.inc8, !dbg !57

for.inc8:                                         ; preds = %for.body4
  %12 = load i32, i32* %i, align 4, !dbg !59, !tbaa !27
  %inc9 = add nsw i32 %12, 1, !dbg !59
  store i32 %inc9, i32* %i, align 4, !dbg !59, !tbaa !27
  br label %for.cond1, !dbg !60, !llvm.loop !61

for.end10:                                        ; preds = %for.cond1
  %13 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !63
  store i8* getelementptr inbounds ([66 x i8], [66 x i8]* @7, i32 0, i32 0), i8** %13, align 8, !dbg !63, !tbaa !64
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 2, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, [10 x double]*, [10 x double]*)* @.omp_outlined. to void (i32*, i32*, ...)*), [10 x double]* %q, [10 x double]* %qq), !dbg !63
  store i32 0, i32* %i, align 4, !dbg !67, !tbaa !27
  br label %for.cond11, !dbg !69

for.cond11:                                       ; preds = %for.inc19, %for.end10
  %14 = load i32, i32* %i, align 4, !dbg !70, !tbaa !27
  %cmp12 = icmp slt i32 %14, 10, !dbg !72
  br i1 %cmp12, label %for.body14, label %for.end21, !dbg !73

for.body14:                                       ; preds = %for.cond11
  %15 = load i32, i32* %i, align 4, !dbg !74, !tbaa !27
  %idxprom15 = sext i32 %15 to i64, !dbg !75
  %arrayidx16 = getelementptr inbounds [10 x double], [10 x double]* %qq, i64 0, i64 %idxprom15, !dbg !75
  %16 = load double, double* %arrayidx16, align 8, !dbg !75, !tbaa !41
  %17 = load i32, i32* %i, align 4, !dbg !76, !tbaa !27
  %idxprom17 = sext i32 %17 to i64, !dbg !77
  %arrayidx18 = getelementptr inbounds [10 x double], [10 x double]* %q, i64 0, i64 %idxprom17, !dbg !77
  %18 = load double, double* %arrayidx18, align 8, !dbg !77, !tbaa !41
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), double %16, double %18), !dbg !78
  br label %for.inc19, !dbg !78

for.inc19:                                        ; preds = %for.body14
  %19 = load i32, i32* %i, align 4, !dbg !79, !tbaa !27
  %inc20 = add nsw i32 %19, 1, !dbg !79
  store i32 %inc20, i32* %i, align 4, !dbg !79, !tbaa !27
  br label %for.cond11, !dbg !80, !llvm.loop !81

for.end21:                                        ; preds = %for.cond11
  %20 = bitcast [10 x double]* %qq to i8*, !dbg !83
  call void @llvm.lifetime.end.p0i8(i64 80, i8* %20) #5, !dbg !83
  %21 = bitcast [10 x double]* %q to i8*, !dbg !83
  call void @llvm.lifetime.end.p0i8(i64 80, i8* %21) #5, !dbg !83
  %22 = bitcast i32* %i to i8*, !dbg !83
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %22) #5, !dbg !83
  ret i32 0, !dbg !84
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., [10 x double]* dereferenceable(80) %q, [10 x double]* dereferenceable(80) %qq) #3 !dbg !85 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %q.addr = alloca [10 x double]*, align 8
  %qq.addr = alloca [10 x double]*, align 8
  %.omp.iv = alloca i32, align 4
  %tmp = alloca i32, align 4
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %i = alloca i32, align 4
  %i1 = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !106
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !94, metadata !DIExpression()), !dbg !107
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !106
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !95, metadata !DIExpression()), !dbg !107
  store [10 x double]* %q, [10 x double]** %q.addr, align 8, !tbaa !106
  call void @llvm.dbg.declare(metadata [10 x double]** %q.addr, metadata !96, metadata !DIExpression()), !dbg !108
  store [10 x double]* %qq, [10 x double]** %qq.addr, align 8, !tbaa !106
  call void @llvm.dbg.declare(metadata [10 x double]** %qq.addr, metadata !97, metadata !DIExpression()), !dbg !109
  %2 = load [10 x double]*, [10 x double]** %q.addr, align 8, !dbg !110, !tbaa !106
  %3 = load [10 x double]*, [10 x double]** %qq.addr, align 8, !dbg !110, !tbaa !106
  %4 = bitcast i32* %.omp.iv to i8*, !dbg !111
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #5, !dbg !111
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !98, metadata !DIExpression()), !dbg !112
  %5 = bitcast i32* %.omp.lb to i8*, !dbg !111
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #5, !dbg !111
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !101, metadata !DIExpression()), !dbg !112
  store i32 0, i32* %.omp.lb, align 4, !dbg !113, !tbaa !27
  %6 = bitcast i32* %.omp.ub to i8*, !dbg !111
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #5, !dbg !111
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !102, metadata !DIExpression()), !dbg !112
  store i32 9, i32* %.omp.ub, align 4, !dbg !113, !tbaa !27
  %7 = bitcast i32* %.omp.stride to i8*, !dbg !111
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #5, !dbg !111
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !103, metadata !DIExpression()), !dbg !112
  store i32 1, i32* %.omp.stride, align 4, !dbg !113, !tbaa !27
  %8 = bitcast i32* %.omp.is_last to i8*, !dbg !111
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #5, !dbg !111
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !104, metadata !DIExpression()), !dbg !112
  store i32 0, i32* %.omp.is_last, align 4, !dbg !113, !tbaa !27
  %9 = bitcast i32* %i to i8*, !dbg !111
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #5, !dbg !111
  call void @llvm.dbg.declare(metadata i32* %i, metadata !105, metadata !DIExpression()), !dbg !112
  %10 = bitcast i32* %i1 to i8*, !dbg !111
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #5, !dbg !111
  call void @llvm.dbg.declare(metadata i32* %i1, metadata !105, metadata !DIExpression()), !dbg !112
  %11 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !111
  store i8* getelementptr inbounds ([66 x i8], [66 x i8]* @1, i32 0, i32 0), i8** %11, align 8, !dbg !111, !tbaa !64
  %12 = load i32*, i32** %.global_tid..addr, align 8, !dbg !111
  %13 = load i32, i32* %12, align 4, !dbg !111, !tbaa !27
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %13, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !111
  %14 = load i32, i32* %.omp.ub, align 4, !dbg !113, !tbaa !27
  %cmp = icmp sgt i32 %14, 9, !dbg !113
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !113

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !113

cond.false:                                       ; preds = %entry
  %15 = load i32, i32* %.omp.ub, align 4, !dbg !113, !tbaa !27
  br label %cond.end, !dbg !113

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 9, %cond.true ], [ %15, %cond.false ], !dbg !113
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !113, !tbaa !27
  %16 = load i32, i32* %.omp.lb, align 4, !dbg !113, !tbaa !27
  store i32 %16, i32* %.omp.iv, align 4, !dbg !113, !tbaa !27
  br label %omp.inner.for.cond, !dbg !111

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %17 = load i32, i32* %.omp.iv, align 4, !dbg !113, !tbaa !27
  %18 = load i32, i32* %.omp.ub, align 4, !dbg !113, !tbaa !27
  %cmp2 = icmp sle i32 %17, %18, !dbg !114
  br i1 %cmp2, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !111

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !111

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %19 = load i32, i32* %.omp.iv, align 4, !dbg !113, !tbaa !27
  %mul = mul nsw i32 %19, 1, !dbg !115
  %add = add nsw i32 0, %mul, !dbg !115
  store i32 %add, i32* %i, align 4, !dbg !115, !tbaa !27
  %20 = load i32, i32* %i, align 4, !dbg !116, !tbaa !27
  %idxprom = sext i32 %20 to i64, !dbg !117
  %arrayidx = getelementptr inbounds [10 x double], [10 x double]* %3, i64 0, i64 %idxprom, !dbg !117
  %21 = load double, double* %arrayidx, align 8, !dbg !117, !tbaa !41
  %22 = load i32, i32* %i, align 4, !dbg !118, !tbaa !27
  %idxprom3 = sext i32 %22 to i64, !dbg !119
  %arrayidx4 = getelementptr inbounds [10 x double], [10 x double]* %2, i64 0, i64 %idxprom3, !dbg !119
  %23 = load double, double* %arrayidx4, align 8, !dbg !120, !tbaa !41
  %add5 = fadd double %23, %21, !dbg !120
  store double %add5, double* %arrayidx4, align 8, !dbg !120, !tbaa !41
  br label %omp.body.continue, !dbg !119

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !121

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %24 = load i32, i32* %.omp.iv, align 4, !dbg !113, !tbaa !27
  %add6 = add nsw i32 %24, 1, !dbg !114
  store i32 %add6, i32* %.omp.iv, align 4, !dbg !114, !tbaa !27
  br label %omp.inner.for.cond, !dbg !121, !llvm.loop !122

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !121

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %25 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !121
  store i8* getelementptr inbounds ([67 x i8], [67 x i8]* @2, i32 0, i32 0), i8** %25, align 8, !dbg !121, !tbaa !64
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %13), !dbg !121
  %26 = bitcast i32* %i1 to i8*, !dbg !121
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %26) #5, !dbg !121
  %27 = bitcast i32* %i to i8*, !dbg !121
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %27) #5, !dbg !121
  %28 = bitcast i32* %.omp.is_last to i8*, !dbg !121
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %28) #5, !dbg !121
  %29 = bitcast i32* %.omp.stride to i8*, !dbg !121
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %29) #5, !dbg !121
  %30 = bitcast i32* %.omp.ub to i8*, !dbg !121
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %30) #5, !dbg !121
  %31 = bitcast i32* %.omp.lb to i8*, !dbg !121
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %31) #5, !dbg !121
  %32 = bitcast i32* %.omp.iv to i8*, !dbg !121
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %32) #5, !dbg !121
  %33 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !123
  store i8* getelementptr inbounds ([66 x i8], [66 x i8]* @1, i32 0, i32 0), i8** %33, align 8, !dbg !123, !tbaa !64
  call void @__kmpc_barrier(%struct.ident_t* %.kmpc_loc.addr, i32 %13), !dbg !123
  %34 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !124
  store i8* getelementptr inbounds ([66 x i8], [66 x i8]* @3, i32 0, i32 0), i8** %34, align 8, !dbg !124, !tbaa !64
  call void @__kmpc_critical(%struct.ident_t* %.kmpc_loc.addr, i32 %13, [8 x i32]* @.gomp_critical_user_.var), !dbg !124
  %arrayidx7 = getelementptr inbounds [10 x double], [10 x double]* %2, i64 0, i64 9, !dbg !125
  %35 = load double, double* %arrayidx7, align 8, !dbg !128, !tbaa !41
  %add8 = fadd double %35, 1.000000e+00, !dbg !128
  store double %add8, double* %arrayidx7, align 8, !dbg !128, !tbaa !41
  call void @__kmpc_end_critical(%struct.ident_t* %.kmpc_loc.addr, i32 %13, [8 x i32]* @.gomp_critical_user_.var), !dbg !129
  %36 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !130
  store i8* getelementptr inbounds ([66 x i8], [66 x i8]* @4, i32 0, i32 0), i8** %36, align 8, !dbg !130, !tbaa !64
  call void @__kmpc_barrier(%struct.ident_t* %.kmpc_loc.addr, i32 %13), !dbg !130
  %37 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !131
  store i8* getelementptr inbounds ([66 x i8], [66 x i8]* @5, i32 0, i32 0), i8** %37, align 8, !dbg !131, !tbaa !64
  %38 = call i32 @__kmpc_single(%struct.ident_t* %.kmpc_loc.addr, i32 %13), !dbg !131
  %39 = icmp ne i32 %38, 0, !dbg !131
  br i1 %39, label %omp_if.then, label %omp_if.end, !dbg !131

omp_if.then:                                      ; preds = %omp.loop.exit
  %arrayidx9 = getelementptr inbounds [10 x double], [10 x double]* %2, i64 0, i64 9, !dbg !132
  %40 = load double, double* %arrayidx9, align 8, !dbg !132, !tbaa !41
  %sub = fsub double %40, 1.000000e+00, !dbg !135
  %arrayidx10 = getelementptr inbounds [10 x double], [10 x double]* %2, i64 0, i64 9, !dbg !136
  store double %sub, double* %arrayidx10, align 8, !dbg !137, !tbaa !41
  call void @__kmpc_end_single(%struct.ident_t* %.kmpc_loc.addr, i32 %13), !dbg !138
  br label %omp_if.end, !dbg !138

omp_if.end:                                       ; preds = %omp_if.then, %omp.loop.exit
  %41 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !139
  store i8* getelementptr inbounds ([66 x i8], [66 x i8]* @5, i32 0, i32 0), i8** %41, align 8, !dbg !139, !tbaa !64
  call void @__kmpc_barrier(%struct.ident_t* %.kmpc_loc.addr, i32 %13), !dbg !139
  ret void, !dbg !140
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

declare dso_local void @__kmpc_barrier(%struct.ident_t*, i32)

declare dso_local void @__kmpc_end_critical(%struct.ident_t*, i32, [8 x i32]*)

declare dso_local void @__kmpc_critical(%struct.ident_t*, i32, [8 x i32]*)

declare dso_local void @__kmpc_end_single(%struct.ident_t*, i32)

declare dso_local i32 @__kmpc_single(%struct.ident_t*, i32)

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., [10 x double]* dereferenceable(80) %q, [10 x double]* dereferenceable(80) %qq) #3 !dbg !141 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %q.addr = alloca [10 x double]*, align 8
  %qq.addr = alloca [10 x double]*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !106
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !143, metadata !DIExpression()), !dbg !147
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !106
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !144, metadata !DIExpression()), !dbg !147
  store [10 x double]* %q, [10 x double]** %q.addr, align 8, !tbaa !106
  call void @llvm.dbg.declare(metadata [10 x double]** %q.addr, metadata !145, metadata !DIExpression()), !dbg !147
  store [10 x double]* %qq, [10 x double]** %qq.addr, align 8, !tbaa !106
  call void @llvm.dbg.declare(metadata [10 x double]** %qq.addr, metadata !146, metadata !DIExpression()), !dbg !147
  %0 = load [10 x double]*, [10 x double]** %q.addr, align 8, !dbg !148, !tbaa !106
  %1 = load [10 x double]*, [10 x double]** %qq.addr, align 8, !dbg !148, !tbaa !106
  %2 = load i32*, i32** %.global_tid..addr, align 8, !dbg !148, !tbaa !106
  %3 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !148, !tbaa !106
  %4 = load [10 x double]*, [10 x double]** %q.addr, align 8, !dbg !148, !tbaa !106
  %5 = load [10 x double]*, [10 x double]** %qq.addr, align 8, !dbg !148, !tbaa !106
  call void @.omp_outlined._debug__(i32* %2, i32* %3, [10 x double]* %4, [10 x double]* %5) #5, !dbg !148
  ret void, !dbg !148
}

declare !callback !149 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

declare dso_local i32 @printf(i8*, ...) #4

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "integration/dataracebench/DRB172-critical2-orig-no.c", directory: "/home/brad/Code/OpenRace/tests/data")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!5 = !{i32 7, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 10.0.1 "}
!9 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 18, type: !10, scopeLine: 18, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !13)
!10 = !DISubroutineType(types: !11)
!11 = !{!12}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !{!14, !15, !19}
!14 = !DILocalVariable(name: "i", scope: !9, file: !1, line: 19, type: !12)
!15 = !DILocalVariable(name: "q", scope: !9, file: !1, line: 20, type: !16)
!16 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 640, elements: !17)
!17 = !{!18}
!18 = !DISubrange(count: 10)
!19 = !DILocalVariable(name: "qq", scope: !9, file: !1, line: 20, type: !16)
!20 = !DILocation(line: 19, column: 3, scope: !9)
!21 = !DILocation(line: 19, column: 7, scope: !9)
!22 = !DILocation(line: 20, column: 3, scope: !9)
!23 = !DILocation(line: 20, column: 10, scope: !9)
!24 = !DILocation(line: 20, column: 17, scope: !9)
!25 = !DILocation(line: 22, column: 10, scope: !26)
!26 = distinct !DILexicalBlock(scope: !9, file: !1, line: 22, column: 3)
!27 = !{!28, !28, i64 0}
!28 = !{!"int", !29, i64 0}
!29 = !{!"omnipotent char", !30, i64 0}
!30 = !{!"Simple C/C++ TBAA"}
!31 = !DILocation(line: 22, column: 8, scope: !26)
!32 = !DILocation(line: 22, column: 15, scope: !33)
!33 = distinct !DILexicalBlock(scope: !26, file: !1, line: 22, column: 3)
!34 = !DILocation(line: 22, column: 17, scope: !33)
!35 = !DILocation(line: 22, column: 3, scope: !26)
!36 = !DILocation(line: 22, column: 44, scope: !33)
!37 = !DILocation(line: 22, column: 36, scope: !33)
!38 = !DILocation(line: 22, column: 31, scope: !33)
!39 = !DILocation(line: 22, column: 28, scope: !33)
!40 = !DILocation(line: 22, column: 34, scope: !33)
!41 = !{!42, !42, i64 0}
!42 = !{!"double", !29, i64 0}
!43 = !DILocation(line: 22, column: 24, scope: !33)
!44 = !DILocation(line: 22, column: 3, scope: !33)
!45 = distinct !{!45, !35, !46}
!46 = !DILocation(line: 22, column: 44, scope: !26)
!47 = !DILocation(line: 23, column: 10, scope: !48)
!48 = distinct !DILexicalBlock(scope: !9, file: !1, line: 23, column: 3)
!49 = !DILocation(line: 23, column: 8, scope: !48)
!50 = !DILocation(line: 23, column: 15, scope: !51)
!51 = distinct !DILexicalBlock(scope: !48, file: !1, line: 23, column: 3)
!52 = !DILocation(line: 23, column: 17, scope: !51)
!53 = !DILocation(line: 23, column: 3, scope: !48)
!54 = !DILocation(line: 23, column: 43, scope: !51)
!55 = !DILocation(line: 23, column: 35, scope: !51)
!56 = !DILocation(line: 23, column: 30, scope: !51)
!57 = !DILocation(line: 23, column: 28, scope: !51)
!58 = !DILocation(line: 23, column: 33, scope: !51)
!59 = !DILocation(line: 23, column: 24, scope: !51)
!60 = !DILocation(line: 23, column: 3, scope: !51)
!61 = distinct !{!61, !53, !62}
!62 = !DILocation(line: 23, column: 43, scope: !48)
!63 = !DILocation(line: 25, column: 3, scope: !9)
!64 = !{!65, !66, i64 16}
!65 = !{!"ident_t", !28, i64 0, !28, i64 4, !28, i64 8, !28, i64 12, !66, i64 16}
!66 = !{!"any pointer", !29, i64 0}
!67 = !DILocation(line: 43, column: 10, scope: !68)
!68 = distinct !DILexicalBlock(scope: !9, file: !1, line: 43, column: 3)
!69 = !DILocation(line: 43, column: 8, scope: !68)
!70 = !DILocation(line: 43, column: 15, scope: !71)
!71 = distinct !DILexicalBlock(scope: !68, file: !1, line: 43, column: 3)
!72 = !DILocation(line: 43, column: 17, scope: !71)
!73 = !DILocation(line: 43, column: 3, scope: !68)
!74 = !DILocation(line: 43, column: 47, scope: !71)
!75 = !DILocation(line: 43, column: 44, scope: !71)
!76 = !DILocation(line: 43, column: 52, scope: !71)
!77 = !DILocation(line: 43, column: 50, scope: !71)
!78 = !DILocation(line: 43, column: 27, scope: !71)
!79 = !DILocation(line: 43, column: 24, scope: !71)
!80 = !DILocation(line: 43, column: 3, scope: !71)
!81 = distinct !{!81, !73, !82}
!82 = !DILocation(line: 43, column: 54, scope: !68)
!83 = !DILocation(line: 46, column: 1, scope: !9)
!84 = !DILocation(line: 45, column: 3, scope: !9)
!85 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 26, type: !86, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !93)
!86 = !DISubroutineType(types: !87)
!87 = !{null, !88, !88, !92, !92}
!88 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !89)
!89 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !90)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!92 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !16, size: 64)
!93 = !{!94, !95, !96, !97, !98, !101, !102, !103, !104, !105, !105}
!94 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !85, type: !88, flags: DIFlagArtificial)
!95 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !85, type: !88, flags: DIFlagArtificial)
!96 = !DILocalVariable(name: "q", arg: 3, scope: !85, file: !1, line: 20, type: !92)
!97 = !DILocalVariable(name: "qq", arg: 4, scope: !85, file: !1, line: 20, type: !92)
!98 = !DILocalVariable(name: ".omp.iv", scope: !99, type: !12, flags: DIFlagArtificial)
!99 = distinct !DILexicalBlock(scope: !100, file: !1, line: 27, column: 5)
!100 = distinct !DILexicalBlock(scope: !85, file: !1, line: 26, column: 3)
!101 = !DILocalVariable(name: ".omp.lb", scope: !99, type: !12, flags: DIFlagArtificial)
!102 = !DILocalVariable(name: ".omp.ub", scope: !99, type: !12, flags: DIFlagArtificial)
!103 = !DILocalVariable(name: ".omp.stride", scope: !99, type: !12, flags: DIFlagArtificial)
!104 = !DILocalVariable(name: ".omp.is_last", scope: !99, type: !12, flags: DIFlagArtificial)
!105 = !DILocalVariable(name: "i", scope: !99, type: !12, flags: DIFlagArtificial)
!106 = !{!66, !66, i64 0}
!107 = !DILocation(line: 0, scope: !85)
!108 = !DILocation(line: 20, column: 10, scope: !85)
!109 = !DILocation(line: 20, column: 17, scope: !85)
!110 = !DILocation(line: 26, column: 3, scope: !85)
!111 = !DILocation(line: 27, column: 5, scope: !100)
!112 = !DILocation(line: 0, scope: !99)
!113 = !DILocation(line: 28, column: 10, scope: !99)
!114 = !DILocation(line: 28, column: 5, scope: !99)
!115 = !DILocation(line: 28, column: 25, scope: !99)
!116 = !DILocation(line: 29, column: 18, scope: !99)
!117 = !DILocation(line: 29, column: 15, scope: !99)
!118 = !DILocation(line: 29, column: 9, scope: !99)
!119 = !DILocation(line: 29, column: 7, scope: !99)
!120 = !DILocation(line: 29, column: 12, scope: !99)
!121 = !DILocation(line: 27, column: 5, scope: !99)
!122 = distinct !{!122, !121, !123}
!123 = !DILocation(line: 27, column: 31, scope: !99)
!124 = !DILocation(line: 31, column: 5, scope: !100)
!125 = !DILocation(line: 33, column: 7, scope: !126)
!126 = distinct !DILexicalBlock(scope: !127, file: !1, line: 32, column: 5)
!127 = distinct !DILexicalBlock(scope: !100, file: !1, line: 31, column: 5)
!128 = !DILocation(line: 33, column: 12, scope: !126)
!129 = !DILocation(line: 34, column: 5, scope: !126)
!130 = !DILocation(line: 35, column: 5, scope: !100)
!131 = !DILocation(line: 36, column: 5, scope: !100)
!132 = !DILocation(line: 38, column: 14, scope: !133)
!133 = distinct !DILexicalBlock(scope: !134, file: !1, line: 37, column: 5)
!134 = distinct !DILexicalBlock(scope: !100, file: !1, line: 36, column: 5)
!135 = !DILocation(line: 38, column: 19, scope: !133)
!136 = !DILocation(line: 38, column: 7, scope: !133)
!137 = !DILocation(line: 38, column: 12, scope: !133)
!138 = !DILocation(line: 39, column: 5, scope: !133)
!139 = !DILocation(line: 36, column: 23, scope: !134)
!140 = !DILocation(line: 41, column: 3, scope: !85)
!141 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 26, type: !86, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !142)
!142 = !{!143, !144, !145, !146}
!143 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !141, type: !88, flags: DIFlagArtificial)
!144 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !141, type: !88, flags: DIFlagArtificial)
!145 = !DILocalVariable(name: "q", arg: 3, scope: !141, type: !92, flags: DIFlagArtificial)
!146 = !DILocalVariable(name: "qq", arg: 4, scope: !141, type: !92, flags: DIFlagArtificial)
!147 = !DILocation(line: 0, scope: !141)
!148 = !DILocation(line: 26, column: 3, scope: !141)
!149 = !{!150}
!150 = !{i64 2, i64 -1, i64 -1, i1 true}
