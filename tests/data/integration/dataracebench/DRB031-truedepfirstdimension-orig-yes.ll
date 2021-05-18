; ModuleID = 'integration/dataracebench/DRB031-truedepfirstdimension-orig-yes.c'
source_filename = "integration/dataracebench/DRB031-truedepfirstdimension-orig-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [79 x i8] c";integration/dataracebench/DRB031-truedepfirstdimension-orig-yes.c;main;63;1;;\00", align 1
@2 = private unnamed_addr constant [80 x i8] c";integration/dataracebench/DRB031-truedepfirstdimension-orig-yes.c;main;63;36;;\00", align 1
@3 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"b[500][500]=%f\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !dbg !7 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %n = alloca i32, align 4
  %m = alloca i32, align 4
  %b = alloca [1000 x [1000 x double]], align 16
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4, !tbaa !26
  call void @llvm.dbg.declare(metadata i32* %argc.addr, metadata !15, metadata !DIExpression()), !dbg !30
  store i8** %argv, i8*** %argv.addr, align 8, !tbaa !31
  call void @llvm.dbg.declare(metadata i8*** %argv.addr, metadata !16, metadata !DIExpression()), !dbg !33
  %2 = bitcast i32* %i to i8*, !dbg !34
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #5, !dbg !34
  call void @llvm.dbg.declare(metadata i32* %i, metadata !17, metadata !DIExpression()), !dbg !35
  %3 = bitcast i32* %j to i8*, !dbg !34
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #5, !dbg !34
  call void @llvm.dbg.declare(metadata i32* %j, metadata !18, metadata !DIExpression()), !dbg !36
  %4 = bitcast i32* %n to i8*, !dbg !37
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #5, !dbg !37
  call void @llvm.dbg.declare(metadata i32* %n, metadata !19, metadata !DIExpression()), !dbg !38
  store i32 1000, i32* %n, align 4, !dbg !38, !tbaa !26
  %5 = bitcast i32* %m to i8*, !dbg !37
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #5, !dbg !37
  call void @llvm.dbg.declare(metadata i32* %m, metadata !20, metadata !DIExpression()), !dbg !39
  store i32 1000, i32* %m, align 4, !dbg !39, !tbaa !26
  %6 = bitcast [1000 x [1000 x double]]* %b to i8*, !dbg !40
  call void @llvm.lifetime.start.p0i8(i64 8000000, i8* %6) #5, !dbg !40
  call void @llvm.dbg.declare(metadata [1000 x [1000 x double]]* %b, metadata !21, metadata !DIExpression()), !dbg !41
  store i32 0, i32* %i, align 4, !dbg !42, !tbaa !26
  br label %for.cond, !dbg !44

for.cond:                                         ; preds = %for.inc6, %entry
  %7 = load i32, i32* %i, align 4, !dbg !45, !tbaa !26
  %8 = load i32, i32* %n, align 4, !dbg !47, !tbaa !26
  %cmp = icmp slt i32 %7, %8, !dbg !48
  br i1 %cmp, label %for.body, label %for.end8, !dbg !49

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4, !dbg !50, !tbaa !26
  br label %for.cond1, !dbg !52

for.cond1:                                        ; preds = %for.inc, %for.body
  %9 = load i32, i32* %j, align 4, !dbg !53, !tbaa !26
  %10 = load i32, i32* %m, align 4, !dbg !55, !tbaa !26
  %cmp2 = icmp slt i32 %9, %10, !dbg !56
  br i1 %cmp2, label %for.body3, label %for.end, !dbg !57

for.body3:                                        ; preds = %for.cond1
  %11 = load i32, i32* %i, align 4, !dbg !58, !tbaa !26
  %idxprom = sext i32 %11 to i64, !dbg !59
  %arrayidx = getelementptr inbounds [1000 x [1000 x double]], [1000 x [1000 x double]]* %b, i64 0, i64 %idxprom, !dbg !59
  %12 = load i32, i32* %j, align 4, !dbg !60, !tbaa !26
  %idxprom4 = sext i32 %12 to i64, !dbg !59
  %arrayidx5 = getelementptr inbounds [1000 x double], [1000 x double]* %arrayidx, i64 0, i64 %idxprom4, !dbg !59
  store double 5.000000e-01, double* %arrayidx5, align 8, !dbg !61, !tbaa !62
  br label %for.inc, !dbg !59

for.inc:                                          ; preds = %for.body3
  %13 = load i32, i32* %j, align 4, !dbg !64, !tbaa !26
  %inc = add nsw i32 %13, 1, !dbg !64
  store i32 %inc, i32* %j, align 4, !dbg !64, !tbaa !26
  br label %for.cond1, !dbg !65, !llvm.loop !66

for.end:                                          ; preds = %for.cond1
  br label %for.inc6, !dbg !67

for.inc6:                                         ; preds = %for.end
  %14 = load i32, i32* %i, align 4, !dbg !68, !tbaa !26
  %inc7 = add nsw i32 %14, 1, !dbg !68
  store i32 %inc7, i32* %i, align 4, !dbg !68, !tbaa !26
  br label %for.cond, !dbg !69, !llvm.loop !70

for.end8:                                         ; preds = %for.cond
  %15 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !72
  store i8* getelementptr inbounds ([79 x i8], [79 x i8]* @1, i32 0, i32 0), i8** %15, align 8, !dbg !72, !tbaa !73
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*, [1000 x [1000 x double]]*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %n, i32* %m, [1000 x [1000 x double]]* %b), !dbg !72
  %arrayidx9 = getelementptr inbounds [1000 x [1000 x double]], [1000 x [1000 x double]]* %b, i64 0, i64 500, !dbg !75
  %arrayidx10 = getelementptr inbounds [1000 x double], [1000 x double]* %arrayidx9, i64 0, i64 500, !dbg !75
  %16 = load double, double* %arrayidx10, align 16, !dbg !75, !tbaa !62
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), double %16), !dbg !76
  %17 = bitcast [1000 x [1000 x double]]* %b to i8*, !dbg !77
  call void @llvm.lifetime.end.p0i8(i64 8000000, i8* %17) #5, !dbg !77
  %18 = bitcast i32* %m to i8*, !dbg !77
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %18) #5, !dbg !77
  %19 = bitcast i32* %n to i8*, !dbg !77
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %19) #5, !dbg !77
  %20 = bitcast i32* %j to i8*, !dbg !77
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %20) #5, !dbg !77
  %21 = bitcast i32* %i to i8*, !dbg !77
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %21) #5, !dbg !77
  ret i32 0, !dbg !78
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %n, i32* dereferenceable(4) %m, [1000 x [1000 x double]]* dereferenceable(8000000) %b) #3 !dbg !79 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %n.addr = alloca i32*, align 8
  %m.addr = alloca i32*, align 8
  %b.addr = alloca [1000 x [1000 x double]]*, align 8
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
  %i4 = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !31
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !89, metadata !DIExpression()), !dbg !102
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !31
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !90, metadata !DIExpression()), !dbg !102
  store i32* %n, i32** %n.addr, align 8, !tbaa !31
  call void @llvm.dbg.declare(metadata i32** %n.addr, metadata !91, metadata !DIExpression()), !dbg !103
  store i32* %m, i32** %m.addr, align 8, !tbaa !31
  call void @llvm.dbg.declare(metadata i32** %m.addr, metadata !92, metadata !DIExpression()), !dbg !104
  store [1000 x [1000 x double]]* %b, [1000 x [1000 x double]]** %b.addr, align 8, !tbaa !31
  call void @llvm.dbg.declare(metadata [1000 x [1000 x double]]** %b.addr, metadata !93, metadata !DIExpression()), !dbg !105
  %2 = load i32*, i32** %n.addr, align 8, !dbg !106, !tbaa !31
  %3 = load i32*, i32** %m.addr, align 8, !dbg !106, !tbaa !31
  %4 = load [1000 x [1000 x double]]*, [1000 x [1000 x double]]** %b.addr, align 8, !dbg !106, !tbaa !31
  %5 = bitcast i32* %.omp.iv to i8*, !dbg !106
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #5, !dbg !106
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !94, metadata !DIExpression()), !dbg !102
  %6 = bitcast i32* %.capture_expr. to i8*, !dbg !106
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #5, !dbg !106
  call void @llvm.dbg.declare(metadata i32* %.capture_expr., metadata !95, metadata !DIExpression()), !dbg !102
  %7 = load i32, i32* %2, align 4, !dbg !107, !tbaa !26
  store i32 %7, i32* %.capture_expr., align 4, !dbg !107, !tbaa !26
  %8 = bitcast i32* %.capture_expr.1 to i8*, !dbg !106
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #5, !dbg !106
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.1, metadata !95, metadata !DIExpression()), !dbg !102
  %9 = load i32, i32* %.capture_expr., align 4, !dbg !107, !tbaa !26
  %sub = sub nsw i32 %9, 1, !dbg !106
  %sub2 = sub nsw i32 %sub, 1, !dbg !106
  %add = add nsw i32 %sub2, 1, !dbg !106
  %div = sdiv i32 %add, 1, !dbg !106
  %sub3 = sub nsw i32 %div, 1, !dbg !106
  store i32 %sub3, i32* %.capture_expr.1, align 4, !dbg !106, !tbaa !26
  %10 = bitcast i32* %i to i8*, !dbg !106
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #5, !dbg !106
  call void @llvm.dbg.declare(metadata i32* %i, metadata !96, metadata !DIExpression()), !dbg !102
  store i32 1, i32* %i, align 4, !dbg !108, !tbaa !26
  %11 = bitcast i32* %i to i8*, !dbg !106
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %11) #5, !dbg !106
  %12 = load i32, i32* %.capture_expr., align 4, !dbg !107, !tbaa !26
  %cmp = icmp slt i32 1, %12, !dbg !106
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end, !dbg !106

omp.precond.then:                                 ; preds = %entry
  %13 = bitcast i32* %.omp.lb to i8*, !dbg !106
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %13) #5, !dbg !106
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !97, metadata !DIExpression()), !dbg !102
  store i32 0, i32* %.omp.lb, align 4, !dbg !109, !tbaa !26
  %14 = bitcast i32* %.omp.ub to i8*, !dbg !106
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %14) #5, !dbg !106
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !98, metadata !DIExpression()), !dbg !102
  %15 = load i32, i32* %.capture_expr.1, align 4, !dbg !106, !tbaa !26
  store i32 %15, i32* %.omp.ub, align 4, !dbg !109, !tbaa !26
  %16 = bitcast i32* %.omp.stride to i8*, !dbg !106
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %16) #5, !dbg !106
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !99, metadata !DIExpression()), !dbg !102
  store i32 1, i32* %.omp.stride, align 4, !dbg !109, !tbaa !26
  %17 = bitcast i32* %.omp.is_last to i8*, !dbg !106
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %17) #5, !dbg !106
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !100, metadata !DIExpression()), !dbg !102
  store i32 0, i32* %.omp.is_last, align 4, !dbg !109, !tbaa !26
  %18 = bitcast i32* %j to i8*, !dbg !106
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %18) #5, !dbg !106
  call void @llvm.dbg.declare(metadata i32* %j, metadata !101, metadata !DIExpression()), !dbg !102
  %19 = bitcast i32* %i4 to i8*, !dbg !106
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %19) #5, !dbg !106
  call void @llvm.dbg.declare(metadata i32* %i4, metadata !96, metadata !DIExpression()), !dbg !102
  %20 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !106
  store i8* getelementptr inbounds ([79 x i8], [79 x i8]* @1, i32 0, i32 0), i8** %20, align 8, !dbg !106, !tbaa !73
  %21 = load i32*, i32** %.global_tid..addr, align 8, !dbg !106
  %22 = load i32, i32* %21, align 4, !dbg !106, !tbaa !26
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %22, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !106
  %23 = load i32, i32* %.omp.ub, align 4, !dbg !109, !tbaa !26
  %24 = load i32, i32* %.capture_expr.1, align 4, !dbg !106, !tbaa !26
  %cmp5 = icmp sgt i32 %23, %24, !dbg !109
  br i1 %cmp5, label %cond.true, label %cond.false, !dbg !109

cond.true:                                        ; preds = %omp.precond.then
  %25 = load i32, i32* %.capture_expr.1, align 4, !dbg !106, !tbaa !26
  br label %cond.end, !dbg !109

cond.false:                                       ; preds = %omp.precond.then
  %26 = load i32, i32* %.omp.ub, align 4, !dbg !109, !tbaa !26
  br label %cond.end, !dbg !109

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %25, %cond.true ], [ %26, %cond.false ], !dbg !109
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !109, !tbaa !26
  %27 = load i32, i32* %.omp.lb, align 4, !dbg !109, !tbaa !26
  store i32 %27, i32* %.omp.iv, align 4, !dbg !109, !tbaa !26
  br label %omp.inner.for.cond, !dbg !106

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %28 = load i32, i32* %.omp.iv, align 4, !dbg !109, !tbaa !26
  %29 = load i32, i32* %.omp.ub, align 4, !dbg !109, !tbaa !26
  %cmp6 = icmp sle i32 %28, %29, !dbg !106
  br i1 %cmp6, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !106

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !106

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %30 = load i32, i32* %.omp.iv, align 4, !dbg !109, !tbaa !26
  %mul = mul nsw i32 %30, 1, !dbg !108
  %add7 = add nsw i32 1, %mul, !dbg !108
  store i32 %add7, i32* %i4, align 4, !dbg !108, !tbaa !26
  store i32 1, i32* %j, align 4, !dbg !110, !tbaa !26
  br label %for.cond, !dbg !112

for.cond:                                         ; preds = %for.inc, %omp.inner.for.body
  %31 = load i32, i32* %j, align 4, !dbg !113, !tbaa !26
  %32 = load i32, i32* %3, align 4, !dbg !115, !tbaa !26
  %cmp8 = icmp slt i32 %31, %32, !dbg !116
  br i1 %cmp8, label %for.body, label %for.end, !dbg !117

for.body:                                         ; preds = %for.cond
  %33 = load i32, i32* %i4, align 4, !dbg !118, !tbaa !26
  %sub9 = sub nsw i32 %33, 1, !dbg !119
  %idxprom = sext i32 %sub9 to i64, !dbg !120
  %arrayidx = getelementptr inbounds [1000 x [1000 x double]], [1000 x [1000 x double]]* %4, i64 0, i64 %idxprom, !dbg !120
  %34 = load i32, i32* %j, align 4, !dbg !121, !tbaa !26
  %sub10 = sub nsw i32 %34, 1, !dbg !122
  %idxprom11 = sext i32 %sub10 to i64, !dbg !120
  %arrayidx12 = getelementptr inbounds [1000 x double], [1000 x double]* %arrayidx, i64 0, i64 %idxprom11, !dbg !120
  %35 = load double, double* %arrayidx12, align 8, !dbg !120, !tbaa !62
  %36 = load i32, i32* %i4, align 4, !dbg !123, !tbaa !26
  %idxprom13 = sext i32 %36 to i64, !dbg !124
  %arrayidx14 = getelementptr inbounds [1000 x [1000 x double]], [1000 x [1000 x double]]* %4, i64 0, i64 %idxprom13, !dbg !124
  %37 = load i32, i32* %j, align 4, !dbg !125, !tbaa !26
  %idxprom15 = sext i32 %37 to i64, !dbg !124
  %arrayidx16 = getelementptr inbounds [1000 x double], [1000 x double]* %arrayidx14, i64 0, i64 %idxprom15, !dbg !124
  store double %35, double* %arrayidx16, align 8, !dbg !126, !tbaa !62
  br label %for.inc, !dbg !124

for.inc:                                          ; preds = %for.body
  %38 = load i32, i32* %j, align 4, !dbg !127, !tbaa !26
  %inc = add nsw i32 %38, 1, !dbg !127
  store i32 %inc, i32* %j, align 4, !dbg !127, !tbaa !26
  br label %for.cond, !dbg !128, !llvm.loop !129

for.end:                                          ; preds = %for.cond
  br label %omp.body.continue, !dbg !130

omp.body.continue:                                ; preds = %for.end
  br label %omp.inner.for.inc, !dbg !131

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %39 = load i32, i32* %.omp.iv, align 4, !dbg !109, !tbaa !26
  %add17 = add nsw i32 %39, 1, !dbg !106
  store i32 %add17, i32* %.omp.iv, align 4, !dbg !106, !tbaa !26
  br label %omp.inner.for.cond, !dbg !131, !llvm.loop !132

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !131

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %40 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !131
  store i8* getelementptr inbounds ([80 x i8], [80 x i8]* @2, i32 0, i32 0), i8** %40, align 8, !dbg !131, !tbaa !73
  %41 = load i32*, i32** %.global_tid..addr, align 8, !dbg !131
  %42 = load i32, i32* %41, align 4, !dbg !131, !tbaa !26
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %42), !dbg !131
  %43 = bitcast i32* %i4 to i8*, !dbg !131
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
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %n, i32* dereferenceable(4) %m, [1000 x [1000 x double]]* dereferenceable(8000000) %b) #3 !dbg !135 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %n.addr = alloca i32*, align 8
  %m.addr = alloca i32*, align 8
  %b.addr = alloca [1000 x [1000 x double]]*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !31
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !137, metadata !DIExpression()), !dbg !142
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !31
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !138, metadata !DIExpression()), !dbg !142
  store i32* %n, i32** %n.addr, align 8, !tbaa !31
  call void @llvm.dbg.declare(metadata i32** %n.addr, metadata !139, metadata !DIExpression()), !dbg !142
  store i32* %m, i32** %m.addr, align 8, !tbaa !31
  call void @llvm.dbg.declare(metadata i32** %m.addr, metadata !140, metadata !DIExpression()), !dbg !142
  store [1000 x [1000 x double]]* %b, [1000 x [1000 x double]]** %b.addr, align 8, !tbaa !31
  call void @llvm.dbg.declare(metadata [1000 x [1000 x double]]** %b.addr, metadata !141, metadata !DIExpression()), !dbg !142
  %0 = load i32*, i32** %n.addr, align 8, !dbg !143, !tbaa !31
  %1 = load i32*, i32** %m.addr, align 8, !dbg !143, !tbaa !31
  %2 = load [1000 x [1000 x double]]*, [1000 x [1000 x double]]** %b.addr, align 8, !dbg !143, !tbaa !31
  %3 = load i32*, i32** %.global_tid..addr, align 8, !dbg !143, !tbaa !31
  %4 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !143, !tbaa !31
  %5 = load i32*, i32** %n.addr, align 8, !dbg !143, !tbaa !31
  %6 = load i32*, i32** %m.addr, align 8, !dbg !143, !tbaa !31
  %7 = load [1000 x [1000 x double]]*, [1000 x [1000 x double]]** %b.addr, align 8, !dbg !143, !tbaa !31
  call void @.omp_outlined._debug__(i32* %3, i32* %4, i32* %5, i32* %6, [1000 x [1000 x double]]* %7) #5, !dbg !143
  ret void, !dbg !143
}

declare !callback !144 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

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
!1 = !DIFile(filename: "integration/dataracebench/DRB031-truedepfirstdimension-orig-yes.c", directory: "/home/brad/Code/OpenRace/tests/data")
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
!14 = !{!15, !16, !17, !18, !19, !20, !21}
!15 = !DILocalVariable(name: "argc", arg: 1, scope: !7, file: !1, line: 53, type: !10)
!16 = !DILocalVariable(name: "argv", arg: 2, scope: !7, file: !1, line: 53, type: !11)
!17 = !DILocalVariable(name: "i", scope: !7, file: !1, line: 55, type: !10)
!18 = !DILocalVariable(name: "j", scope: !7, file: !1, line: 55, type: !10)
!19 = !DILocalVariable(name: "n", scope: !7, file: !1, line: 56, type: !10)
!20 = !DILocalVariable(name: "m", scope: !7, file: !1, line: 56, type: !10)
!21 = !DILocalVariable(name: "b", scope: !7, file: !1, line: 57, type: !22)
!22 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 64000000, elements: !24)
!23 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!24 = !{!25, !25}
!25 = !DISubrange(count: 1000)
!26 = !{!27, !27, i64 0}
!27 = !{!"int", !28, i64 0}
!28 = !{!"omnipotent char", !29, i64 0}
!29 = !{!"Simple C/C++ TBAA"}
!30 = !DILocation(line: 53, column: 14, scope: !7)
!31 = !{!32, !32, i64 0}
!32 = !{!"any pointer", !28, i64 0}
!33 = !DILocation(line: 53, column: 26, scope: !7)
!34 = !DILocation(line: 55, column: 3, scope: !7)
!35 = !DILocation(line: 55, column: 7, scope: !7)
!36 = !DILocation(line: 55, column: 9, scope: !7)
!37 = !DILocation(line: 56, column: 3, scope: !7)
!38 = !DILocation(line: 56, column: 7, scope: !7)
!39 = !DILocation(line: 56, column: 15, scope: !7)
!40 = !DILocation(line: 57, column: 3, scope: !7)
!41 = !DILocation(line: 57, column: 10, scope: !7)
!42 = !DILocation(line: 59, column: 9, scope: !43)
!43 = distinct !DILexicalBlock(scope: !7, file: !1, line: 59, column: 3)
!44 = !DILocation(line: 59, column: 8, scope: !43)
!45 = !DILocation(line: 59, column: 13, scope: !46)
!46 = distinct !DILexicalBlock(scope: !43, file: !1, line: 59, column: 3)
!47 = !DILocation(line: 59, column: 15, scope: !46)
!48 = !DILocation(line: 59, column: 14, scope: !46)
!49 = !DILocation(line: 59, column: 3, scope: !43)
!50 = !DILocation(line: 60, column: 11, scope: !51)
!51 = distinct !DILexicalBlock(scope: !46, file: !1, line: 60, column: 5)
!52 = !DILocation(line: 60, column: 10, scope: !51)
!53 = !DILocation(line: 60, column: 15, scope: !54)
!54 = distinct !DILexicalBlock(scope: !51, file: !1, line: 60, column: 5)
!55 = !DILocation(line: 60, column: 17, scope: !54)
!56 = !DILocation(line: 60, column: 16, scope: !54)
!57 = !DILocation(line: 60, column: 5, scope: !51)
!58 = !DILocation(line: 61, column: 9, scope: !54)
!59 = !DILocation(line: 61, column: 7, scope: !54)
!60 = !DILocation(line: 61, column: 12, scope: !54)
!61 = !DILocation(line: 61, column: 15, scope: !54)
!62 = !{!63, !63, i64 0}
!63 = !{!"double", !28, i64 0}
!64 = !DILocation(line: 60, column: 21, scope: !54)
!65 = !DILocation(line: 60, column: 5, scope: !54)
!66 = distinct !{!66, !57, !67}
!67 = !DILocation(line: 61, column: 17, scope: !51)
!68 = !DILocation(line: 59, column: 19, scope: !46)
!69 = !DILocation(line: 59, column: 3, scope: !46)
!70 = distinct !{!70, !49, !71}
!71 = !DILocation(line: 61, column: 17, scope: !43)
!72 = !DILocation(line: 63, column: 1, scope: !7)
!73 = !{!74, !32, i64 16}
!74 = !{!"ident_t", !27, i64 0, !27, i64 4, !27, i64 8, !27, i64 12, !32, i64 16}
!75 = !DILocation(line: 68, column: 30, scope: !7)
!76 = !DILocation(line: 68, column: 3, scope: !7)
!77 = !DILocation(line: 70, column: 1, scope: !7)
!78 = !DILocation(line: 69, column: 3, scope: !7)
!79 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 64, type: !80, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !88)
!80 = !DISubroutineType(types: !81)
!81 = !{null, !82, !82, !86, !86, !87}
!82 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !83)
!83 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !84)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!86 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !10, size: 64)
!87 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !22, size: 64)
!88 = !{!89, !90, !91, !92, !93, !94, !95, !95, !96, !97, !98, !99, !100, !101, !96}
!89 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !79, type: !82, flags: DIFlagArtificial)
!90 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !79, type: !82, flags: DIFlagArtificial)
!91 = !DILocalVariable(name: "n", arg: 3, scope: !79, file: !1, line: 56, type: !86)
!92 = !DILocalVariable(name: "m", arg: 4, scope: !79, file: !1, line: 56, type: !86)
!93 = !DILocalVariable(name: "b", arg: 5, scope: !79, file: !1, line: 57, type: !87)
!94 = !DILocalVariable(name: ".omp.iv", scope: !79, type: !10, flags: DIFlagArtificial)
!95 = !DILocalVariable(name: ".capture_expr.", scope: !79, type: !10, flags: DIFlagArtificial)
!96 = !DILocalVariable(name: "i", scope: !79, type: !10, flags: DIFlagArtificial)
!97 = !DILocalVariable(name: ".omp.lb", scope: !79, type: !10, flags: DIFlagArtificial)
!98 = !DILocalVariable(name: ".omp.ub", scope: !79, type: !10, flags: DIFlagArtificial)
!99 = !DILocalVariable(name: ".omp.stride", scope: !79, type: !10, flags: DIFlagArtificial)
!100 = !DILocalVariable(name: ".omp.is_last", scope: !79, type: !10, flags: DIFlagArtificial)
!101 = !DILocalVariable(name: "j", scope: !79, type: !10, flags: DIFlagArtificial)
!102 = !DILocation(line: 0, scope: !79)
!103 = !DILocation(line: 56, column: 7, scope: !79)
!104 = !DILocation(line: 56, column: 15, scope: !79)
!105 = !DILocation(line: 57, column: 10, scope: !79)
!106 = !DILocation(line: 64, column: 3, scope: !79)
!107 = !DILocation(line: 64, column: 14, scope: !79)
!108 = !DILocation(line: 64, column: 16, scope: !79)
!109 = !DILocation(line: 64, column: 8, scope: !79)
!110 = !DILocation(line: 65, column: 11, scope: !111)
!111 = distinct !DILexicalBlock(scope: !79, file: !1, line: 65, column: 5)
!112 = !DILocation(line: 65, column: 10, scope: !111)
!113 = !DILocation(line: 65, column: 14, scope: !114)
!114 = distinct !DILexicalBlock(scope: !111, file: !1, line: 65, column: 5)
!115 = !DILocation(line: 65, column: 16, scope: !114)
!116 = !DILocation(line: 65, column: 15, scope: !114)
!117 = !DILocation(line: 65, column: 5, scope: !111)
!118 = !DILocation(line: 66, column: 17, scope: !114)
!119 = !DILocation(line: 66, column: 18, scope: !114)
!120 = !DILocation(line: 66, column: 15, scope: !114)
!121 = !DILocation(line: 66, column: 22, scope: !114)
!122 = !DILocation(line: 66, column: 23, scope: !114)
!123 = !DILocation(line: 66, column: 9, scope: !114)
!124 = !DILocation(line: 66, column: 7, scope: !114)
!125 = !DILocation(line: 66, column: 12, scope: !114)
!126 = !DILocation(line: 66, column: 14, scope: !114)
!127 = !DILocation(line: 65, column: 19, scope: !114)
!128 = !DILocation(line: 65, column: 5, scope: !114)
!129 = distinct !{!129, !117, !130}
!130 = !DILocation(line: 66, column: 25, scope: !111)
!131 = !DILocation(line: 63, column: 1, scope: !79)
!132 = distinct !{!132, !131, !133}
!133 = !DILocation(line: 63, column: 36, scope: !79)
!134 = !DILocation(line: 66, column: 25, scope: !79)
!135 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 64, type: !80, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !136)
!136 = !{!137, !138, !139, !140, !141}
!137 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !135, type: !82, flags: DIFlagArtificial)
!138 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !135, type: !82, flags: DIFlagArtificial)
!139 = !DILocalVariable(name: "n", arg: 3, scope: !135, type: !86, flags: DIFlagArtificial)
!140 = !DILocalVariable(name: "m", arg: 4, scope: !135, type: !86, flags: DIFlagArtificial)
!141 = !DILocalVariable(name: "b", arg: 5, scope: !135, type: !87, flags: DIFlagArtificial)
!142 = !DILocation(line: 0, scope: !135)
!143 = !DILocation(line: 64, column: 3, scope: !135)
!144 = !{!145}
!145 = !{i64 2, i64 -1, i64 -1, i1 true}
