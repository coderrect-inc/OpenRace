; ModuleID = 'integration/dataracebench/DRB037-truedepseconddimension-orig-yes.c'
source_filename = "integration/dataracebench/DRB037-truedepseconddimension-orig-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [80 x i8] c";integration/dataracebench/DRB037-truedepseconddimension-orig-yes.c;main;61;1;;\00", align 1
@b = common dso_local global [1000 x [1000 x double]] zeroinitializer, align 16, !dbg !0
@2 = private unnamed_addr constant [81 x i8] c";integration/dataracebench/DRB037-truedepseconddimension-orig-yes.c;main;61;25;;\00", align 1
@3 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"b[500][500]=%f\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !dbg !14 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %n = alloca i32, align 4
  %m = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4, !tbaa !28
  call void @llvm.dbg.declare(metadata i32* %argc.addr, metadata !22, metadata !DIExpression()), !dbg !32
  store i8** %argv, i8*** %argv.addr, align 8, !tbaa !33
  call void @llvm.dbg.declare(metadata i8*** %argv.addr, metadata !23, metadata !DIExpression()), !dbg !35
  %2 = bitcast i32* %i to i8*, !dbg !36
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #5, !dbg !36
  call void @llvm.dbg.declare(metadata i32* %i, metadata !24, metadata !DIExpression()), !dbg !37
  %3 = bitcast i32* %j to i8*, !dbg !36
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #5, !dbg !36
  call void @llvm.dbg.declare(metadata i32* %j, metadata !25, metadata !DIExpression()), !dbg !38
  %4 = bitcast i32* %n to i8*, !dbg !39
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #5, !dbg !39
  call void @llvm.dbg.declare(metadata i32* %n, metadata !26, metadata !DIExpression()), !dbg !40
  store i32 1000, i32* %n, align 4, !dbg !40, !tbaa !28
  %5 = bitcast i32* %m to i8*, !dbg !39
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #5, !dbg !39
  call void @llvm.dbg.declare(metadata i32* %m, metadata !27, metadata !DIExpression()), !dbg !41
  store i32 1000, i32* %m, align 4, !dbg !41, !tbaa !28
  store i32 0, i32* %i, align 4, !dbg !42, !tbaa !28
  br label %for.cond, !dbg !44

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, i32* %i, align 4, !dbg !45, !tbaa !28
  %7 = load i32, i32* %n, align 4, !dbg !47, !tbaa !28
  %cmp = icmp slt i32 %6, %7, !dbg !48
  br i1 %cmp, label %for.body, label %for.end, !dbg !49

for.body:                                         ; preds = %for.cond
  %8 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !50
  store i8* getelementptr inbounds ([80 x i8], [80 x i8]* @1, i32 0, i32 0), i8** %8, align 8, !dbg !50, !tbaa !51
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 2, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %m, i32* %i), !dbg !50
  br label %for.inc, !dbg !53

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4, !dbg !55, !tbaa !28
  %inc = add nsw i32 %9, 1, !dbg !55
  store i32 %inc, i32* %i, align 4, !dbg !55, !tbaa !28
  br label %for.cond, !dbg !56, !llvm.loop !57

for.end:                                          ; preds = %for.cond
  %10 = load double, double* getelementptr inbounds ([1000 x [1000 x double]], [1000 x [1000 x double]]* @b, i64 0, i64 500, i64 500), align 16, !dbg !59, !tbaa !60
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), double %10), !dbg !62
  %11 = bitcast i32* %m to i8*, !dbg !63
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %11) #5, !dbg !63
  %12 = bitcast i32* %n to i8*, !dbg !63
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %12) #5, !dbg !63
  %13 = bitcast i32* %j to i8*, !dbg !63
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %13) #5, !dbg !63
  %14 = bitcast i32* %i to i8*, !dbg !63
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %14) #5, !dbg !63
  ret i32 0, !dbg !64
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %m, i32* dereferenceable(4) %i) #3 !dbg !65 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %m.addr = alloca i32*, align 8
  %i.addr = alloca i32*, align 8
  %.omp.iv = alloca i32, align 4
  %tmp = alloca i32, align 4
  %.capture_expr. = alloca i32, align 4
  %.capture_expr.1 = alloca i32, align 4
  %j = alloca i32, align 4
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %j4 = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !33
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !74, metadata !DIExpression()), !dbg !85
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !33
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !75, metadata !DIExpression()), !dbg !85
  store i32* %m, i32** %m.addr, align 8, !tbaa !33
  call void @llvm.dbg.declare(metadata i32** %m.addr, metadata !76, metadata !DIExpression()), !dbg !86
  store i32* %i, i32** %i.addr, align 8, !tbaa !33
  call void @llvm.dbg.declare(metadata i32** %i.addr, metadata !77, metadata !DIExpression()), !dbg !87
  %2 = load i32*, i32** %m.addr, align 8, !dbg !88, !tbaa !33
  %3 = load i32*, i32** %i.addr, align 8, !dbg !88, !tbaa !33
  %4 = bitcast i32* %.omp.iv to i8*, !dbg !88
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #5, !dbg !88
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !78, metadata !DIExpression()), !dbg !85
  %5 = bitcast i32* %.capture_expr. to i8*, !dbg !88
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #5, !dbg !88
  call void @llvm.dbg.declare(metadata i32* %.capture_expr., metadata !79, metadata !DIExpression()), !dbg !85
  %6 = load i32, i32* %2, align 4, !dbg !89, !tbaa !28
  store i32 %6, i32* %.capture_expr., align 4, !dbg !89, !tbaa !28
  %7 = bitcast i32* %.capture_expr.1 to i8*, !dbg !88
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #5, !dbg !88
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.1, metadata !79, metadata !DIExpression()), !dbg !85
  %8 = load i32, i32* %.capture_expr., align 4, !dbg !89, !tbaa !28
  %sub = sub nsw i32 %8, 1, !dbg !88
  %sub2 = sub nsw i32 %sub, 1, !dbg !88
  %add = add nsw i32 %sub2, 1, !dbg !88
  %div = sdiv i32 %add, 1, !dbg !88
  %sub3 = sub nsw i32 %div, 1, !dbg !88
  store i32 %sub3, i32* %.capture_expr.1, align 4, !dbg !88, !tbaa !28
  %9 = bitcast i32* %j to i8*, !dbg !88
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #5, !dbg !88
  call void @llvm.dbg.declare(metadata i32* %j, metadata !80, metadata !DIExpression()), !dbg !85
  store i32 1, i32* %j, align 4, !dbg !90, !tbaa !28
  %10 = bitcast i32* %j to i8*, !dbg !88
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %10) #5, !dbg !88
  %11 = load i32, i32* %.capture_expr., align 4, !dbg !89, !tbaa !28
  %cmp = icmp slt i32 1, %11, !dbg !88
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end, !dbg !88

omp.precond.then:                                 ; preds = %entry
  %12 = bitcast i32* %.omp.lb to i8*, !dbg !88
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #5, !dbg !88
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !81, metadata !DIExpression()), !dbg !85
  store i32 0, i32* %.omp.lb, align 4, !dbg !91, !tbaa !28
  %13 = bitcast i32* %.omp.ub to i8*, !dbg !88
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %13) #5, !dbg !88
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !82, metadata !DIExpression()), !dbg !85
  %14 = load i32, i32* %.capture_expr.1, align 4, !dbg !88, !tbaa !28
  store i32 %14, i32* %.omp.ub, align 4, !dbg !91, !tbaa !28
  %15 = bitcast i32* %.omp.stride to i8*, !dbg !88
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %15) #5, !dbg !88
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !83, metadata !DIExpression()), !dbg !85
  store i32 1, i32* %.omp.stride, align 4, !dbg !91, !tbaa !28
  %16 = bitcast i32* %.omp.is_last to i8*, !dbg !88
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %16) #5, !dbg !88
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !84, metadata !DIExpression()), !dbg !85
  store i32 0, i32* %.omp.is_last, align 4, !dbg !91, !tbaa !28
  %17 = bitcast i32* %j4 to i8*, !dbg !88
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %17) #5, !dbg !88
  call void @llvm.dbg.declare(metadata i32* %j4, metadata !80, metadata !DIExpression()), !dbg !85
  %18 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !88
  store i8* getelementptr inbounds ([80 x i8], [80 x i8]* @1, i32 0, i32 0), i8** %18, align 8, !dbg !88, !tbaa !51
  %19 = load i32*, i32** %.global_tid..addr, align 8, !dbg !88
  %20 = load i32, i32* %19, align 4, !dbg !88, !tbaa !28
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %20, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !88
  %21 = load i32, i32* %.omp.ub, align 4, !dbg !91, !tbaa !28
  %22 = load i32, i32* %.capture_expr.1, align 4, !dbg !88, !tbaa !28
  %cmp5 = icmp sgt i32 %21, %22, !dbg !91
  br i1 %cmp5, label %cond.true, label %cond.false, !dbg !91

cond.true:                                        ; preds = %omp.precond.then
  %23 = load i32, i32* %.capture_expr.1, align 4, !dbg !88, !tbaa !28
  br label %cond.end, !dbg !91

cond.false:                                       ; preds = %omp.precond.then
  %24 = load i32, i32* %.omp.ub, align 4, !dbg !91, !tbaa !28
  br label %cond.end, !dbg !91

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %23, %cond.true ], [ %24, %cond.false ], !dbg !91
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !91, !tbaa !28
  %25 = load i32, i32* %.omp.lb, align 4, !dbg !91, !tbaa !28
  store i32 %25, i32* %.omp.iv, align 4, !dbg !91, !tbaa !28
  br label %omp.inner.for.cond, !dbg !88

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %26 = load i32, i32* %.omp.iv, align 4, !dbg !91, !tbaa !28
  %27 = load i32, i32* %.omp.ub, align 4, !dbg !91, !tbaa !28
  %cmp6 = icmp sle i32 %26, %27, !dbg !88
  br i1 %cmp6, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !88

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !88

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %28 = load i32, i32* %.omp.iv, align 4, !dbg !91, !tbaa !28
  %mul = mul nsw i32 %28, 1, !dbg !90
  %add7 = add nsw i32 1, %mul, !dbg !90
  store i32 %add7, i32* %j4, align 4, !dbg !90, !tbaa !28
  %29 = load i32, i32* %3, align 4, !dbg !92, !tbaa !28
  %idxprom = sext i32 %29 to i64, !dbg !93
  %arrayidx = getelementptr inbounds [1000 x [1000 x double]], [1000 x [1000 x double]]* @b, i64 0, i64 %idxprom, !dbg !93
  %30 = load i32, i32* %j4, align 4, !dbg !94, !tbaa !28
  %sub8 = sub nsw i32 %30, 1, !dbg !95
  %idxprom9 = sext i32 %sub8 to i64, !dbg !93
  %arrayidx10 = getelementptr inbounds [1000 x double], [1000 x double]* %arrayidx, i64 0, i64 %idxprom9, !dbg !93
  %31 = load double, double* %arrayidx10, align 8, !dbg !93, !tbaa !60
  %32 = load i32, i32* %3, align 4, !dbg !96, !tbaa !28
  %idxprom11 = sext i32 %32 to i64, !dbg !97
  %arrayidx12 = getelementptr inbounds [1000 x [1000 x double]], [1000 x [1000 x double]]* @b, i64 0, i64 %idxprom11, !dbg !97
  %33 = load i32, i32* %j4, align 4, !dbg !98, !tbaa !28
  %idxprom13 = sext i32 %33 to i64, !dbg !97
  %arrayidx14 = getelementptr inbounds [1000 x double], [1000 x double]* %arrayidx12, i64 0, i64 %idxprom13, !dbg !97
  store double %31, double* %arrayidx14, align 8, !dbg !99, !tbaa !60
  br label %omp.body.continue, !dbg !97

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !100

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %34 = load i32, i32* %.omp.iv, align 4, !dbg !91, !tbaa !28
  %add15 = add nsw i32 %34, 1, !dbg !88
  store i32 %add15, i32* %.omp.iv, align 4, !dbg !88, !tbaa !28
  br label %omp.inner.for.cond, !dbg !100, !llvm.loop !101

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !100

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %35 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !100
  store i8* getelementptr inbounds ([81 x i8], [81 x i8]* @2, i32 0, i32 0), i8** %35, align 8, !dbg !100, !tbaa !51
  %36 = load i32*, i32** %.global_tid..addr, align 8, !dbg !100
  %37 = load i32, i32* %36, align 4, !dbg !100, !tbaa !28
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %37), !dbg !100
  %38 = bitcast i32* %j4 to i8*, !dbg !100
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %38) #5, !dbg !100
  %39 = bitcast i32* %.omp.is_last to i8*, !dbg !100
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %39) #5, !dbg !100
  %40 = bitcast i32* %.omp.stride to i8*, !dbg !100
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %40) #5, !dbg !100
  %41 = bitcast i32* %.omp.ub to i8*, !dbg !100
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %41) #5, !dbg !100
  %42 = bitcast i32* %.omp.lb to i8*, !dbg !100
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %42) #5, !dbg !100
  br label %omp.precond.end, !dbg !100

omp.precond.end:                                  ; preds = %omp.loop.exit, %entry
  %43 = bitcast i32* %.capture_expr.1 to i8*, !dbg !100
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %43) #5, !dbg !100
  %44 = bitcast i32* %.capture_expr. to i8*, !dbg !100
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %44) #5, !dbg !100
  %45 = bitcast i32* %.omp.iv to i8*, !dbg !100
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %45) #5, !dbg !100
  ret void, !dbg !103
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %m, i32* dereferenceable(4) %i) #3 !dbg !104 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %m.addr = alloca i32*, align 8
  %i.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !33
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !106, metadata !DIExpression()), !dbg !110
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !33
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !107, metadata !DIExpression()), !dbg !110
  store i32* %m, i32** %m.addr, align 8, !tbaa !33
  call void @llvm.dbg.declare(metadata i32** %m.addr, metadata !108, metadata !DIExpression()), !dbg !110
  store i32* %i, i32** %i.addr, align 8, !tbaa !33
  call void @llvm.dbg.declare(metadata i32** %i.addr, metadata !109, metadata !DIExpression()), !dbg !110
  %0 = load i32*, i32** %m.addr, align 8, !dbg !111, !tbaa !33
  %1 = load i32*, i32** %i.addr, align 8, !dbg !111, !tbaa !33
  %2 = load i32*, i32** %.global_tid..addr, align 8, !dbg !111, !tbaa !33
  %3 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !111, !tbaa !33
  %4 = load i32*, i32** %m.addr, align 8, !dbg !111, !tbaa !33
  %5 = load i32*, i32** %i.addr, align 8, !dbg !111, !tbaa !33
  call void @.omp_outlined._debug__(i32* %2, i32* %3, i32* %4, i32* %5) #5, !dbg !111
  ret void, !dbg !111
}

declare !callback !112 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

declare dso_local i32 @printf(i8*, ...) #4

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!10, !11, !12}
!llvm.ident = !{!13}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "b", scope: !2, file: !3, line: 54, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "integration/dataracebench/DRB037-truedepseconddimension-orig-yes.c", directory: "/home/brad/Code/OpenRace/tests/data")
!4 = !{}
!5 = !{!0}
!6 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64000000, elements: !8)
!7 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!8 = !{!9, !9}
!9 = !DISubrange(count: 1000)
!10 = !{i32 7, !"Dwarf Version", i32 4}
!11 = !{i32 2, !"Debug Info Version", i32 3}
!12 = !{i32 1, !"wchar_size", i32 4}
!13 = !{!"clang version 10.0.1 "}
!14 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 56, type: !15, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !21)
!15 = !DISubroutineType(types: !16)
!16 = !{!17, !17, !18}
!17 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!21 = !{!22, !23, !24, !25, !26, !27}
!22 = !DILocalVariable(name: "argc", arg: 1, scope: !14, file: !3, line: 56, type: !17)
!23 = !DILocalVariable(name: "argv", arg: 2, scope: !14, file: !3, line: 56, type: !18)
!24 = !DILocalVariable(name: "i", scope: !14, file: !3, line: 58, type: !17)
!25 = !DILocalVariable(name: "j", scope: !14, file: !3, line: 58, type: !17)
!26 = !DILocalVariable(name: "n", scope: !14, file: !3, line: 59, type: !17)
!27 = !DILocalVariable(name: "m", scope: !14, file: !3, line: 59, type: !17)
!28 = !{!29, !29, i64 0}
!29 = !{!"int", !30, i64 0}
!30 = !{!"omnipotent char", !31, i64 0}
!31 = !{!"Simple C/C++ TBAA"}
!32 = !DILocation(line: 56, column: 14, scope: !14)
!33 = !{!34, !34, i64 0}
!34 = !{!"any pointer", !30, i64 0}
!35 = !DILocation(line: 56, column: 26, scope: !14)
!36 = !DILocation(line: 58, column: 3, scope: !14)
!37 = !DILocation(line: 58, column: 7, scope: !14)
!38 = !DILocation(line: 58, column: 9, scope: !14)
!39 = !DILocation(line: 59, column: 3, scope: !14)
!40 = !DILocation(line: 59, column: 7, scope: !14)
!41 = !DILocation(line: 59, column: 15, scope: !14)
!42 = !DILocation(line: 60, column: 9, scope: !43)
!43 = distinct !DILexicalBlock(scope: !14, file: !3, line: 60, column: 3)
!44 = !DILocation(line: 60, column: 8, scope: !43)
!45 = !DILocation(line: 60, column: 12, scope: !46)
!46 = distinct !DILexicalBlock(scope: !43, file: !3, line: 60, column: 3)
!47 = !DILocation(line: 60, column: 14, scope: !46)
!48 = !DILocation(line: 60, column: 13, scope: !46)
!49 = !DILocation(line: 60, column: 3, scope: !43)
!50 = !DILocation(line: 61, column: 1, scope: !46)
!51 = !{!52, !34, i64 16}
!52 = !{!"ident_t", !29, i64 0, !29, i64 4, !29, i64 8, !29, i64 12, !34, i64 16}
!53 = !DILocation(line: 61, column: 25, scope: !54)
!54 = distinct !DILexicalBlock(scope: !46, file: !3, line: 61, column: 1)
!55 = !DILocation(line: 60, column: 17, scope: !46)
!56 = !DILocation(line: 60, column: 3, scope: !46)
!57 = distinct !{!57, !49, !58}
!58 = !DILocation(line: 61, column: 25, scope: !43)
!59 = !DILocation(line: 65, column: 30, scope: !14)
!60 = !{!61, !61, i64 0}
!61 = !{!"double", !30, i64 0}
!62 = !DILocation(line: 65, column: 3, scope: !14)
!63 = !DILocation(line: 67, column: 1, scope: !14)
!64 = !DILocation(line: 66, column: 3, scope: !14)
!65 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !3, file: !3, line: 62, type: !66, scopeLine: 62, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !73)
!66 = !DISubroutineType(types: !67)
!67 = !{null, !68, !68, !72, !72}
!68 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !69)
!69 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !70)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!72 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !17, size: 64)
!73 = !{!74, !75, !76, !77, !78, !79, !79, !80, !81, !82, !83, !84, !80}
!74 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !65, type: !68, flags: DIFlagArtificial)
!75 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !65, type: !68, flags: DIFlagArtificial)
!76 = !DILocalVariable(name: "m", arg: 3, scope: !65, file: !3, line: 59, type: !72)
!77 = !DILocalVariable(name: "i", arg: 4, scope: !65, file: !3, line: 58, type: !72)
!78 = !DILocalVariable(name: ".omp.iv", scope: !65, type: !17, flags: DIFlagArtificial)
!79 = !DILocalVariable(name: ".capture_expr.", scope: !65, type: !17, flags: DIFlagArtificial)
!80 = !DILocalVariable(name: "j", scope: !65, type: !17, flags: DIFlagArtificial)
!81 = !DILocalVariable(name: ".omp.lb", scope: !65, type: !17, flags: DIFlagArtificial)
!82 = !DILocalVariable(name: ".omp.ub", scope: !65, type: !17, flags: DIFlagArtificial)
!83 = !DILocalVariable(name: ".omp.stride", scope: !65, type: !17, flags: DIFlagArtificial)
!84 = !DILocalVariable(name: ".omp.is_last", scope: !65, type: !17, flags: DIFlagArtificial)
!85 = !DILocation(line: 0, scope: !65)
!86 = !DILocation(line: 59, column: 15, scope: !65)
!87 = !DILocation(line: 58, column: 7, scope: !65)
!88 = !DILocation(line: 62, column: 5, scope: !65)
!89 = !DILocation(line: 62, column: 16, scope: !65)
!90 = !DILocation(line: 62, column: 18, scope: !65)
!91 = !DILocation(line: 62, column: 10, scope: !65)
!92 = !DILocation(line: 63, column: 17, scope: !65)
!93 = !DILocation(line: 63, column: 15, scope: !65)
!94 = !DILocation(line: 63, column: 20, scope: !65)
!95 = !DILocation(line: 63, column: 21, scope: !65)
!96 = !DILocation(line: 63, column: 9, scope: !65)
!97 = !DILocation(line: 63, column: 7, scope: !65)
!98 = !DILocation(line: 63, column: 12, scope: !65)
!99 = !DILocation(line: 63, column: 14, scope: !65)
!100 = !DILocation(line: 61, column: 1, scope: !65)
!101 = distinct !{!101, !100, !102}
!102 = !DILocation(line: 61, column: 25, scope: !65)
!103 = !DILocation(line: 63, column: 23, scope: !65)
!104 = distinct !DISubprogram(name: ".omp_outlined.", scope: !3, file: !3, line: 62, type: !66, scopeLine: 62, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !105)
!105 = !{!106, !107, !108, !109}
!106 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !104, type: !68, flags: DIFlagArtificial)
!107 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !104, type: !68, flags: DIFlagArtificial)
!108 = !DILocalVariable(name: "m", arg: 3, scope: !104, type: !72, flags: DIFlagArtificial)
!109 = !DILocalVariable(name: "i", arg: 4, scope: !104, type: !72, flags: DIFlagArtificial)
!110 = !DILocation(line: 0, scope: !104)
!111 = !DILocation(line: 62, column: 5, scope: !104)
!112 = !{!113}
!113 = !{i64 2, i64 -1, i64 -1, i1 true}
