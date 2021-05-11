; ModuleID = 'integration/dataracebench/DRB003-antidep2-orig-yes.c'
source_filename = "integration/dataracebench/DRB003-antidep2-orig-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [66 x i8] c";integration/dataracebench/DRB003-antidep2-orig-yes.c;main;64;1;;\00", align 1
@2 = private unnamed_addr constant [67 x i8] c";integration/dataracebench/DRB003-antidep2-orig-yes.c;main;64;36;;\00", align 1
@3 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"a[10][10]=%f\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !dbg !7 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %len = alloca i32, align 4
  %a = alloca [20 x [20 x double]], align 16
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4, !tbaa !25
  call void @llvm.dbg.declare(metadata i32* %argc.addr, metadata !15, metadata !DIExpression()), !dbg !29
  store i8** %argv, i8*** %argv.addr, align 8, !tbaa !30
  call void @llvm.dbg.declare(metadata i8*** %argv.addr, metadata !16, metadata !DIExpression()), !dbg !32
  %2 = bitcast i32* %i to i8*, !dbg !33
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #5, !dbg !33
  call void @llvm.dbg.declare(metadata i32* %i, metadata !17, metadata !DIExpression()), !dbg !34
  %3 = bitcast i32* %j to i8*, !dbg !33
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #5, !dbg !33
  call void @llvm.dbg.declare(metadata i32* %j, metadata !18, metadata !DIExpression()), !dbg !35
  %4 = bitcast i32* %len to i8*, !dbg !36
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #5, !dbg !36
  call void @llvm.dbg.declare(metadata i32* %len, metadata !19, metadata !DIExpression()), !dbg !37
  store i32 20, i32* %len, align 4, !dbg !37, !tbaa !25
  %5 = bitcast [20 x [20 x double]]* %a to i8*, !dbg !38
  call void @llvm.lifetime.start.p0i8(i64 3200, i8* %5) #5, !dbg !38
  call void @llvm.dbg.declare(metadata [20 x [20 x double]]* %a, metadata !20, metadata !DIExpression()), !dbg !39
  store i32 0, i32* %i, align 4, !dbg !40, !tbaa !25
  br label %for.cond, !dbg !42

for.cond:                                         ; preds = %for.inc6, %entry
  %6 = load i32, i32* %i, align 4, !dbg !43, !tbaa !25
  %7 = load i32, i32* %len, align 4, !dbg !45, !tbaa !25
  %cmp = icmp slt i32 %6, %7, !dbg !46
  br i1 %cmp, label %for.body, label %for.end8, !dbg !47

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4, !dbg !48, !tbaa !25
  br label %for.cond1, !dbg !50

for.cond1:                                        ; preds = %for.inc, %for.body
  %8 = load i32, i32* %j, align 4, !dbg !51, !tbaa !25
  %9 = load i32, i32* %len, align 4, !dbg !53, !tbaa !25
  %cmp2 = icmp slt i32 %8, %9, !dbg !54
  br i1 %cmp2, label %for.body3, label %for.end, !dbg !55

for.body3:                                        ; preds = %for.cond1
  %10 = load i32, i32* %i, align 4, !dbg !56, !tbaa !25
  %idxprom = sext i32 %10 to i64, !dbg !57
  %arrayidx = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %a, i64 0, i64 %idxprom, !dbg !57
  %11 = load i32, i32* %j, align 4, !dbg !58, !tbaa !25
  %idxprom4 = sext i32 %11 to i64, !dbg !57
  %arrayidx5 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx, i64 0, i64 %idxprom4, !dbg !57
  store double 5.000000e-01, double* %arrayidx5, align 8, !dbg !59, !tbaa !60
  br label %for.inc, !dbg !57

for.inc:                                          ; preds = %for.body3
  %12 = load i32, i32* %j, align 4, !dbg !62, !tbaa !25
  %inc = add nsw i32 %12, 1, !dbg !62
  store i32 %inc, i32* %j, align 4, !dbg !62, !tbaa !25
  br label %for.cond1, !dbg !63, !llvm.loop !64

for.end:                                          ; preds = %for.cond1
  br label %for.inc6, !dbg !65

for.inc6:                                         ; preds = %for.end
  %13 = load i32, i32* %i, align 4, !dbg !66, !tbaa !25
  %inc7 = add nsw i32 %13, 1, !dbg !66
  store i32 %inc7, i32* %i, align 4, !dbg !66, !tbaa !25
  br label %for.cond, !dbg !67, !llvm.loop !68

for.end8:                                         ; preds = %for.cond
  %14 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !70
  store i8* getelementptr inbounds ([66 x i8], [66 x i8]* @1, i32 0, i32 0), i8** %14, align 8, !dbg !70, !tbaa !71
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 2, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, [20 x [20 x double]]*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %len, [20 x [20 x double]]* %a), !dbg !70
  %arrayidx9 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %a, i64 0, i64 10, !dbg !73
  %arrayidx10 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx9, i64 0, i64 10, !dbg !73
  %15 = load double, double* %arrayidx10, align 16, !dbg !73, !tbaa !60
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), double %15), !dbg !74
  %16 = bitcast [20 x [20 x double]]* %a to i8*, !dbg !75
  call void @llvm.lifetime.end.p0i8(i64 3200, i8* %16) #5, !dbg !75
  %17 = bitcast i32* %len to i8*, !dbg !75
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %17) #5, !dbg !75
  %18 = bitcast i32* %j to i8*, !dbg !75
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %18) #5, !dbg !75
  %19 = bitcast i32* %i to i8*, !dbg !75
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %19) #5, !dbg !75
  ret i32 0, !dbg !76
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %len, [20 x [20 x double]]* dereferenceable(3200) %a) #3 !dbg !77 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %a.addr = alloca [20 x [20 x double]]*, align 8
  %.omp.iv = alloca i32, align 4
  %tmp = alloca i32, align 4
  %.capture_expr. = alloca i32, align 4
  %.capture_expr.1 = alloca i32, align 4
  %i = alloca i32, align 4
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %j = alloca i32, align 4
  %i5 = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !30
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !87, metadata !DIExpression()), !dbg !99
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !30
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !88, metadata !DIExpression()), !dbg !99
  store i32* %len, i32** %len.addr, align 8, !tbaa !30
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !89, metadata !DIExpression()), !dbg !100
  store [20 x [20 x double]]* %a, [20 x [20 x double]]** %a.addr, align 8, !tbaa !30
  call void @llvm.dbg.declare(metadata [20 x [20 x double]]** %a.addr, metadata !90, metadata !DIExpression()), !dbg !101
  %2 = load i32*, i32** %len.addr, align 8, !dbg !102, !tbaa !30
  %3 = load [20 x [20 x double]]*, [20 x [20 x double]]** %a.addr, align 8, !dbg !102, !tbaa !30
  %4 = bitcast i32* %.omp.iv to i8*, !dbg !102
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #5, !dbg !102
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !91, metadata !DIExpression()), !dbg !99
  %5 = bitcast i32* %.capture_expr. to i8*, !dbg !102
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #5, !dbg !102
  call void @llvm.dbg.declare(metadata i32* %.capture_expr., metadata !92, metadata !DIExpression()), !dbg !99
  %6 = load i32, i32* %2, align 4, !dbg !103, !tbaa !25
  %sub = sub nsw i32 %6, 1, !dbg !104
  store i32 %sub, i32* %.capture_expr., align 4, !dbg !103, !tbaa !25
  %7 = bitcast i32* %.capture_expr.1 to i8*, !dbg !102
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #5, !dbg !102
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.1, metadata !92, metadata !DIExpression()), !dbg !99
  %8 = load i32, i32* %.capture_expr., align 4, !dbg !104, !tbaa !25
  %sub2 = sub nsw i32 %8, 0, !dbg !102
  %sub3 = sub nsw i32 %sub2, 1, !dbg !102
  %add = add nsw i32 %sub3, 1, !dbg !102
  %div = sdiv i32 %add, 1, !dbg !102
  %sub4 = sub nsw i32 %div, 1, !dbg !102
  store i32 %sub4, i32* %.capture_expr.1, align 4, !dbg !102, !tbaa !25
  %9 = bitcast i32* %i to i8*, !dbg !102
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #5, !dbg !102
  call void @llvm.dbg.declare(metadata i32* %i, metadata !93, metadata !DIExpression()), !dbg !99
  store i32 0, i32* %i, align 4, !dbg !105, !tbaa !25
  %10 = bitcast i32* %i to i8*, !dbg !102
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %10) #5, !dbg !102
  %11 = load i32, i32* %.capture_expr., align 4, !dbg !104, !tbaa !25
  %cmp = icmp slt i32 0, %11, !dbg !102
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end, !dbg !102

omp.precond.then:                                 ; preds = %entry
  %12 = bitcast i32* %.omp.lb to i8*, !dbg !102
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #5, !dbg !102
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !94, metadata !DIExpression()), !dbg !99
  store i32 0, i32* %.omp.lb, align 4, !dbg !106, !tbaa !25
  %13 = bitcast i32* %.omp.ub to i8*, !dbg !102
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %13) #5, !dbg !102
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !95, metadata !DIExpression()), !dbg !99
  %14 = load i32, i32* %.capture_expr.1, align 4, !dbg !102, !tbaa !25
  store i32 %14, i32* %.omp.ub, align 4, !dbg !106, !tbaa !25
  %15 = bitcast i32* %.omp.stride to i8*, !dbg !102
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %15) #5, !dbg !102
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !96, metadata !DIExpression()), !dbg !99
  store i32 1, i32* %.omp.stride, align 4, !dbg !106, !tbaa !25
  %16 = bitcast i32* %.omp.is_last to i8*, !dbg !102
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %16) #5, !dbg !102
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !97, metadata !DIExpression()), !dbg !99
  store i32 0, i32* %.omp.is_last, align 4, !dbg !106, !tbaa !25
  %17 = bitcast i32* %j to i8*, !dbg !102
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %17) #5, !dbg !102
  call void @llvm.dbg.declare(metadata i32* %j, metadata !98, metadata !DIExpression()), !dbg !99
  %18 = bitcast i32* %i5 to i8*, !dbg !102
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %18) #5, !dbg !102
  call void @llvm.dbg.declare(metadata i32* %i5, metadata !93, metadata !DIExpression()), !dbg !99
  %19 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !102
  store i8* getelementptr inbounds ([66 x i8], [66 x i8]* @1, i32 0, i32 0), i8** %19, align 8, !dbg !102, !tbaa !71
  %20 = load i32*, i32** %.global_tid..addr, align 8, !dbg !102
  %21 = load i32, i32* %20, align 4, !dbg !102, !tbaa !25
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %21, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !102
  %22 = load i32, i32* %.omp.ub, align 4, !dbg !106, !tbaa !25
  %23 = load i32, i32* %.capture_expr.1, align 4, !dbg !102, !tbaa !25
  %cmp6 = icmp sgt i32 %22, %23, !dbg !106
  br i1 %cmp6, label %cond.true, label %cond.false, !dbg !106

cond.true:                                        ; preds = %omp.precond.then
  %24 = load i32, i32* %.capture_expr.1, align 4, !dbg !102, !tbaa !25
  br label %cond.end, !dbg !106

cond.false:                                       ; preds = %omp.precond.then
  %25 = load i32, i32* %.omp.ub, align 4, !dbg !106, !tbaa !25
  br label %cond.end, !dbg !106

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %24, %cond.true ], [ %25, %cond.false ], !dbg !106
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !106, !tbaa !25
  %26 = load i32, i32* %.omp.lb, align 4, !dbg !106, !tbaa !25
  store i32 %26, i32* %.omp.iv, align 4, !dbg !106, !tbaa !25
  br label %omp.inner.for.cond, !dbg !102

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %27 = load i32, i32* %.omp.iv, align 4, !dbg !106, !tbaa !25
  %28 = load i32, i32* %.omp.ub, align 4, !dbg !106, !tbaa !25
  %cmp7 = icmp sle i32 %27, %28, !dbg !102
  br i1 %cmp7, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !102

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !102

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %29 = load i32, i32* %.omp.iv, align 4, !dbg !106, !tbaa !25
  %mul = mul nsw i32 %29, 1, !dbg !105
  %add8 = add nsw i32 0, %mul, !dbg !105
  store i32 %add8, i32* %i5, align 4, !dbg !105, !tbaa !25
  store i32 0, i32* %j, align 4, !dbg !107, !tbaa !25
  br label %for.cond, !dbg !110

for.cond:                                         ; preds = %for.inc, %omp.inner.for.body
  %30 = load i32, i32* %j, align 4, !dbg !111, !tbaa !25
  %31 = load i32, i32* %2, align 4, !dbg !113, !tbaa !25
  %cmp9 = icmp slt i32 %30, %31, !dbg !114
  br i1 %cmp9, label %for.body, label %for.end, !dbg !115

for.body:                                         ; preds = %for.cond
  %32 = load i32, i32* %i5, align 4, !dbg !116, !tbaa !25
  %add10 = add nsw i32 %32, 1, !dbg !118
  %idxprom = sext i32 %add10 to i64, !dbg !119
  %arrayidx = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %3, i64 0, i64 %idxprom, !dbg !119
  %33 = load i32, i32* %j, align 4, !dbg !120, !tbaa !25
  %idxprom11 = sext i32 %33 to i64, !dbg !119
  %arrayidx12 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx, i64 0, i64 %idxprom11, !dbg !119
  %34 = load double, double* %arrayidx12, align 8, !dbg !119, !tbaa !60
  %35 = load i32, i32* %i5, align 4, !dbg !121, !tbaa !25
  %idxprom13 = sext i32 %35 to i64, !dbg !122
  %arrayidx14 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %3, i64 0, i64 %idxprom13, !dbg !122
  %36 = load i32, i32* %j, align 4, !dbg !123, !tbaa !25
  %idxprom15 = sext i32 %36 to i64, !dbg !122
  %arrayidx16 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx14, i64 0, i64 %idxprom15, !dbg !122
  %37 = load double, double* %arrayidx16, align 8, !dbg !124, !tbaa !60
  %add17 = fadd double %37, %34, !dbg !124
  store double %add17, double* %arrayidx16, align 8, !dbg !124, !tbaa !60
  br label %for.inc, !dbg !125

for.inc:                                          ; preds = %for.body
  %38 = load i32, i32* %j, align 4, !dbg !126, !tbaa !25
  %add18 = add nsw i32 %38, 1, !dbg !126
  store i32 %add18, i32* %j, align 4, !dbg !126, !tbaa !25
  br label %for.cond, !dbg !127, !llvm.loop !128

for.end:                                          ; preds = %for.cond
  br label %omp.body.continue, !dbg !130

omp.body.continue:                                ; preds = %for.end
  br label %omp.inner.for.inc, !dbg !131

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %39 = load i32, i32* %.omp.iv, align 4, !dbg !106, !tbaa !25
  %add19 = add nsw i32 %39, 1, !dbg !102
  store i32 %add19, i32* %.omp.iv, align 4, !dbg !102, !tbaa !25
  br label %omp.inner.for.cond, !dbg !131, !llvm.loop !132

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !131

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %40 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !131
  store i8* getelementptr inbounds ([67 x i8], [67 x i8]* @2, i32 0, i32 0), i8** %40, align 8, !dbg !131, !tbaa !71
  %41 = load i32*, i32** %.global_tid..addr, align 8, !dbg !131
  %42 = load i32, i32* %41, align 4, !dbg !131, !tbaa !25
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %42), !dbg !131
  %43 = bitcast i32* %i5 to i8*, !dbg !131
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %43) #5, !dbg !131
  %44 = bitcast i32* %j to i8*, !dbg !131
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %44) #5, !dbg !131
  %45 = bitcast i32* %.omp.is_last to i8*, !dbg !131
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %45) #5, !dbg !131
  %46 = bitcast i32* %.omp.stride to i8*, !dbg !131
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %46) #5, !dbg !131
  %47 = bitcast i32* %.omp.ub to i8*, !dbg !131
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %47) #5, !dbg !131
  %48 = bitcast i32* %.omp.lb to i8*, !dbg !131
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %48) #5, !dbg !131
  br label %omp.precond.end, !dbg !131

omp.precond.end:                                  ; preds = %omp.loop.exit, %entry
  %49 = bitcast i32* %.capture_expr.1 to i8*, !dbg !131
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %49) #5, !dbg !131
  %50 = bitcast i32* %.capture_expr. to i8*, !dbg !131
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %50) #5, !dbg !131
  %51 = bitcast i32* %.omp.iv to i8*, !dbg !131
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %51) #5, !dbg !131
  ret void, !dbg !134
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %len, [20 x [20 x double]]* dereferenceable(3200) %a) #3 !dbg !135 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %a.addr = alloca [20 x [20 x double]]*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !30
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !137, metadata !DIExpression()), !dbg !141
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !30
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !138, metadata !DIExpression()), !dbg !141
  store i32* %len, i32** %len.addr, align 8, !tbaa !30
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !139, metadata !DIExpression()), !dbg !141
  store [20 x [20 x double]]* %a, [20 x [20 x double]]** %a.addr, align 8, !tbaa !30
  call void @llvm.dbg.declare(metadata [20 x [20 x double]]** %a.addr, metadata !140, metadata !DIExpression()), !dbg !141
  %0 = load i32*, i32** %len.addr, align 8, !dbg !142, !tbaa !30
  %1 = load [20 x [20 x double]]*, [20 x [20 x double]]** %a.addr, align 8, !dbg !142, !tbaa !30
  %2 = load i32*, i32** %.global_tid..addr, align 8, !dbg !142, !tbaa !30
  %3 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !142, !tbaa !30
  %4 = load i32*, i32** %len.addr, align 8, !dbg !142, !tbaa !30
  %5 = load [20 x [20 x double]]*, [20 x [20 x double]]** %a.addr, align 8, !dbg !142, !tbaa !30
  call void @.omp_outlined._debug__(i32* %2, i32* %3, i32* %4, [20 x [20 x double]]* %5) #5, !dbg !142
  ret void, !dbg !142
}

declare !callback !143 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

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
!1 = !DIFile(filename: "integration/dataracebench/DRB003-antidep2-orig-yes.c", directory: "/home/brad/Code/OpenRace/tests/data")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.1 "}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 53, type: !8, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !14)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !10, !11}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!14 = !{!15, !16, !17, !18, !19, !20}
!15 = !DILocalVariable(name: "argc", arg: 1, scope: !7, file: !1, line: 53, type: !10)
!16 = !DILocalVariable(name: "argv", arg: 2, scope: !7, file: !1, line: 53, type: !11)
!17 = !DILocalVariable(name: "i", scope: !7, file: !1, line: 55, type: !10)
!18 = !DILocalVariable(name: "j", scope: !7, file: !1, line: 55, type: !10)
!19 = !DILocalVariable(name: "len", scope: !7, file: !1, line: 56, type: !10)
!20 = !DILocalVariable(name: "a", scope: !7, file: !1, line: 58, type: !21)
!21 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, size: 25600, elements: !23)
!22 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!23 = !{!24, !24}
!24 = !DISubrange(count: 20)
!25 = !{!26, !26, i64 0}
!26 = !{!"int", !27, i64 0}
!27 = !{!"omnipotent char", !28, i64 0}
!28 = !{!"Simple C/C++ TBAA"}
!29 = !DILocation(line: 53, column: 14, scope: !7)
!30 = !{!31, !31, i64 0}
!31 = !{!"any pointer", !27, i64 0}
!32 = !DILocation(line: 53, column: 25, scope: !7)
!33 = !DILocation(line: 55, column: 3, scope: !7)
!34 = !DILocation(line: 55, column: 7, scope: !7)
!35 = !DILocation(line: 55, column: 10, scope: !7)
!36 = !DILocation(line: 56, column: 3, scope: !7)
!37 = !DILocation(line: 56, column: 7, scope: !7)
!38 = !DILocation(line: 58, column: 3, scope: !7)
!39 = !DILocation(line: 58, column: 10, scope: !7)
!40 = !DILocation(line: 60, column: 9, scope: !41)
!41 = distinct !DILexicalBlock(scope: !7, file: !1, line: 60, column: 3)
!42 = !DILocation(line: 60, column: 8, scope: !41)
!43 = !DILocation(line: 60, column: 13, scope: !44)
!44 = distinct !DILexicalBlock(scope: !41, file: !1, line: 60, column: 3)
!45 = !DILocation(line: 60, column: 16, scope: !44)
!46 = !DILocation(line: 60, column: 14, scope: !44)
!47 = !DILocation(line: 60, column: 3, scope: !41)
!48 = !DILocation(line: 61, column: 11, scope: !49)
!49 = distinct !DILexicalBlock(scope: !44, file: !1, line: 61, column: 5)
!50 = !DILocation(line: 61, column: 10, scope: !49)
!51 = !DILocation(line: 61, column: 15, scope: !52)
!52 = distinct !DILexicalBlock(scope: !49, file: !1, line: 61, column: 5)
!53 = !DILocation(line: 61, column: 17, scope: !52)
!54 = !DILocation(line: 61, column: 16, scope: !52)
!55 = !DILocation(line: 61, column: 5, scope: !49)
!56 = !DILocation(line: 62, column: 9, scope: !52)
!57 = !DILocation(line: 62, column: 7, scope: !52)
!58 = !DILocation(line: 62, column: 12, scope: !52)
!59 = !DILocation(line: 62, column: 15, scope: !52)
!60 = !{!61, !61, i64 0}
!61 = !{!"double", !27, i64 0}
!62 = !DILocation(line: 61, column: 23, scope: !52)
!63 = !DILocation(line: 61, column: 5, scope: !52)
!64 = distinct !{!64, !55, !65}
!65 = !DILocation(line: 62, column: 17, scope: !49)
!66 = !DILocation(line: 60, column: 22, scope: !44)
!67 = !DILocation(line: 60, column: 3, scope: !44)
!68 = distinct !{!68, !47, !69}
!69 = !DILocation(line: 62, column: 17, scope: !41)
!70 = !DILocation(line: 64, column: 1, scope: !7)
!71 = !{!72, !31, i64 16}
!72 = !{!"ident_t", !26, i64 0, !26, i64 4, !26, i64 8, !26, i64 12, !31, i64 16}
!73 = !DILocation(line: 71, column: 29, scope: !7)
!74 = !DILocation(line: 71, column: 3, scope: !7)
!75 = !DILocation(line: 73, column: 1, scope: !7)
!76 = !DILocation(line: 72, column: 3, scope: !7)
!77 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 65, type: !78, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !86)
!78 = !DISubroutineType(types: !79)
!79 = !{null, !80, !80, !84, !85}
!80 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !81)
!81 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !82)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!84 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !10, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !21, size: 64)
!86 = !{!87, !88, !89, !90, !91, !92, !92, !93, !94, !95, !96, !97, !98, !93}
!87 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !77, type: !80, flags: DIFlagArtificial)
!88 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !77, type: !80, flags: DIFlagArtificial)
!89 = !DILocalVariable(name: "len", arg: 3, scope: !77, file: !1, line: 56, type: !84)
!90 = !DILocalVariable(name: "a", arg: 4, scope: !77, file: !1, line: 58, type: !85)
!91 = !DILocalVariable(name: ".omp.iv", scope: !77, type: !10, flags: DIFlagArtificial)
!92 = !DILocalVariable(name: ".capture_expr.", scope: !77, type: !10, flags: DIFlagArtificial)
!93 = !DILocalVariable(name: "i", scope: !77, type: !10, flags: DIFlagArtificial)
!94 = !DILocalVariable(name: ".omp.lb", scope: !77, type: !10, flags: DIFlagArtificial)
!95 = !DILocalVariable(name: ".omp.ub", scope: !77, type: !10, flags: DIFlagArtificial)
!96 = !DILocalVariable(name: ".omp.stride", scope: !77, type: !10, flags: DIFlagArtificial)
!97 = !DILocalVariable(name: ".omp.is_last", scope: !77, type: !10, flags: DIFlagArtificial)
!98 = !DILocalVariable(name: "j", scope: !77, type: !10, flags: DIFlagArtificial)
!99 = !DILocation(line: 0, scope: !77)
!100 = !DILocation(line: 56, column: 7, scope: !77)
!101 = !DILocation(line: 58, column: 10, scope: !77)
!102 = !DILocation(line: 65, column: 3, scope: !77)
!103 = !DILocation(line: 65, column: 19, scope: !77)
!104 = !DILocation(line: 65, column: 23, scope: !77)
!105 = !DILocation(line: 65, column: 28, scope: !77)
!106 = !DILocation(line: 65, column: 8, scope: !77)
!107 = !DILocation(line: 66, column: 12, scope: !108)
!108 = distinct !DILexicalBlock(scope: !109, file: !1, line: 66, column: 5)
!109 = distinct !DILexicalBlock(scope: !77, file: !1, line: 65, column: 36)
!110 = !DILocation(line: 66, column: 10, scope: !108)
!111 = !DILocation(line: 66, column: 17, scope: !112)
!112 = distinct !DILexicalBlock(scope: !108, file: !1, line: 66, column: 5)
!113 = !DILocation(line: 66, column: 21, scope: !112)
!114 = !DILocation(line: 66, column: 19, scope: !112)
!115 = !DILocation(line: 66, column: 5, scope: !108)
!116 = !DILocation(line: 67, column: 20, scope: !117)
!117 = distinct !DILexicalBlock(scope: !112, file: !1, line: 66, column: 35)
!118 = !DILocation(line: 67, column: 22, scope: !117)
!119 = !DILocation(line: 67, column: 18, scope: !117)
!120 = !DILocation(line: 67, column: 27, scope: !117)
!121 = !DILocation(line: 67, column: 9, scope: !117)
!122 = !DILocation(line: 67, column: 7, scope: !117)
!123 = !DILocation(line: 67, column: 12, scope: !117)
!124 = !DILocation(line: 67, column: 15, scope: !117)
!125 = !DILocation(line: 68, column: 5, scope: !117)
!126 = !DILocation(line: 66, column: 29, scope: !112)
!127 = !DILocation(line: 66, column: 5, scope: !112)
!128 = distinct !{!128, !115, !129}
!129 = !DILocation(line: 68, column: 5, scope: !108)
!130 = !DILocation(line: 69, column: 3, scope: !109)
!131 = !DILocation(line: 64, column: 1, scope: !77)
!132 = distinct !{!132, !131, !133}
!133 = !DILocation(line: 64, column: 36, scope: !77)
!134 = !DILocation(line: 69, column: 3, scope: !77)
!135 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 65, type: !78, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !136)
!136 = !{!137, !138, !139, !140}
!137 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !135, type: !80, flags: DIFlagArtificial)
!138 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !135, type: !80, flags: DIFlagArtificial)
!139 = !DILocalVariable(name: "len", arg: 3, scope: !135, type: !84, flags: DIFlagArtificial)
!140 = !DILocalVariable(name: "a", arg: 4, scope: !135, type: !85, flags: DIFlagArtificial)
!141 = !DILocation(line: 0, scope: !135)
!142 = !DILocation(line: 65, column: 3, scope: !135)
!143 = !{!144}
!144 = !{i64 2, i64 -1, i64 -1, i1 true}
