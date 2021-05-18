; ModuleID = 'integration/dataracebench/DRB121-reduction-orig-no.c'
source_filename = "integration/dataracebench/DRB121-reduction-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [66 x i8] c";integration/dataracebench/DRB121-reduction-orig-no.c;main;30;5;;\00", align 1
@2 = private unnamed_addr constant [67 x i8] c";integration/dataracebench/DRB121-reduction-orig-no.c;main;30;56;;\00", align 1
@.gomp_critical_user_.reduction.var = common global [8 x i32] zeroinitializer
@3 = private unnamed_addr constant [66 x i8] c";integration/dataracebench/DRB121-reduction-orig-no.c;main;33;5;;\00", align 1
@4 = private unnamed_addr constant [67 x i8] c";integration/dataracebench/DRB121-reduction-orig-no.c;main;33;56;;\00", align 1
@5 = private unnamed_addr constant [67 x i8] c";integration/dataracebench/DRB121-reduction-orig-no.c;main;28;41;;\00", align 1
@6 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@7 = private unnamed_addr constant [66 x i8] c";integration/dataracebench/DRB121-reduction-orig-no.c;main;28;3;;\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"%d %d\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !dbg !13 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %var = alloca i32, align 4
  %i = alloca i32, align 4
  %res = alloca i32, align 4
  %sum1 = alloca i32, align 4
  %sum2 = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %error = alloca i32, align 4
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4, !tbaa !28
  call void @llvm.dbg.declare(metadata i32* %argc.addr, metadata !20, metadata !DIExpression()), !dbg !32
  store i8** %argv, i8*** %argv.addr, align 8, !tbaa !33
  call void @llvm.dbg.declare(metadata i8*** %argv.addr, metadata !21, metadata !DIExpression()), !dbg !35
  %2 = bitcast i32* %var to i8*, !dbg !36
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #5, !dbg !36
  call void @llvm.dbg.declare(metadata i32* %var, metadata !22, metadata !DIExpression()), !dbg !37
  store i32 0, i32* %var, align 4, !dbg !37, !tbaa !28
  %3 = bitcast i32* %i to i8*, !dbg !36
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #5, !dbg !36
  call void @llvm.dbg.declare(metadata i32* %i, metadata !23, metadata !DIExpression()), !dbg !38
  %4 = bitcast i32* %res to i8*, !dbg !36
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #5, !dbg !36
  call void @llvm.dbg.declare(metadata i32* %res, metadata !24, metadata !DIExpression()), !dbg !39
  %5 = bitcast i32* %sum1 to i8*, !dbg !40
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #5, !dbg !40
  call void @llvm.dbg.declare(metadata i32* %sum1, metadata !25, metadata !DIExpression()), !dbg !41
  store i32 0, i32* %sum1, align 4, !dbg !41, !tbaa !28
  %6 = bitcast i32* %sum2 to i8*, !dbg !42
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #5, !dbg !42
  call void @llvm.dbg.declare(metadata i32* %sum2, metadata !26, metadata !DIExpression()), !dbg !43
  store i32 0, i32* %sum2, align 4, !dbg !43, !tbaa !28
  %call = call i32 @omp_get_max_threads(), !dbg !44
  store i32 %call, i32* %res, align 4, !dbg !45, !tbaa !28
  %7 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !46
  store i8* getelementptr inbounds ([66 x i8], [66 x i8]* @7, i32 0, i32 0), i8** %7, align 8, !dbg !46, !tbaa !47
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %sum1, i32* %sum2, i32* %var), !dbg !46
  %8 = bitcast i32* %error to i8*, !dbg !49
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #5, !dbg !49
  call void @llvm.dbg.declare(metadata i32* %error, metadata !27, metadata !DIExpression()), !dbg !50
  %9 = load i32, i32* %var, align 4, !dbg !51, !tbaa !28
  %10 = load i32, i32* %res, align 4, !dbg !52, !tbaa !28
  %mul = mul nsw i32 20, %10, !dbg !53
  %cmp = icmp ne i32 %9, %mul, !dbg !54
  %conv = zext i1 %cmp to i32, !dbg !54
  store i32 %conv, i32* %error, align 4, !dbg !50, !tbaa !28
  %11 = load i32, i32* %error, align 4, !dbg !55, !tbaa !28
  %tobool = icmp ne i32 %11, 0, !dbg !55
  br i1 %tobool, label %if.then, label %if.end, !dbg !57

if.then:                                          ; preds = %entry
  %12 = load i32, i32* %var, align 4, !dbg !58, !tbaa !28
  %13 = load i32, i32* %res, align 4, !dbg !59, !tbaa !28
  %mul1 = mul nsw i32 20, %13, !dbg !60
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %12, i32 %mul1), !dbg !61
  br label %if.end, !dbg !61

if.end:                                           ; preds = %if.then, %entry
  %14 = load i32, i32* %error, align 4, !dbg !62, !tbaa !28
  %15 = bitcast i32* %error to i8*, !dbg !63
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %15) #5, !dbg !63
  %16 = bitcast i32* %sum2 to i8*, !dbg !63
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %16) #5, !dbg !63
  %17 = bitcast i32* %sum1 to i8*, !dbg !63
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %17) #5, !dbg !63
  %18 = bitcast i32* %res to i8*, !dbg !63
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %18) #5, !dbg !63
  %19 = bitcast i32* %i to i8*, !dbg !63
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %19) #5, !dbg !63
  %20 = bitcast i32* %var to i8*, !dbg !63
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %20) #5, !dbg !63
  ret i32 %14, !dbg !64
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare !dbg !4 dso_local i32 @omp_get_max_threads() #3

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %sum1, i32* dereferenceable(4) %sum2, i32* dereferenceable(4) %var) #4 !dbg !65 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %sum1.addr = alloca i32*, align 8
  %sum2.addr = alloca i32*, align 8
  %var.addr = alloca i32*, align 8
  %var1 = alloca i32, align 4
  %.omp.iv = alloca i32, align 4
  %tmp = alloca i32, align 4
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %sum12 = alloca i32, align 4
  %i = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %.omp.reduction.red_list = alloca [1 x i8*], align 8
  %.omp.iv7 = alloca i32, align 4
  %tmp8 = alloca i32, align 4
  %.omp.lb9 = alloca i32, align 4
  %.omp.ub10 = alloca i32, align 4
  %.omp.stride11 = alloca i32, align 4
  %.omp.is_last12 = alloca i32, align 4
  %sum213 = alloca i32, align 4
  %i14 = alloca i32, align 4
  %.omp.reduction.red_list32 = alloca [1 x i8*], align 8
  %.omp.reduction.red_list38 = alloca [1 x i8*], align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !33
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !74, metadata !DIExpression()), !dbg !97
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !33
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !75, metadata !DIExpression()), !dbg !97
  store i32* %sum1, i32** %sum1.addr, align 8, !tbaa !33
  call void @llvm.dbg.declare(metadata i32** %sum1.addr, metadata !76, metadata !DIExpression()), !dbg !98
  store i32* %sum2, i32** %sum2.addr, align 8, !tbaa !33
  call void @llvm.dbg.declare(metadata i32** %sum2.addr, metadata !77, metadata !DIExpression()), !dbg !99
  store i32* %var, i32** %var.addr, align 8, !tbaa !33
  call void @llvm.dbg.declare(metadata i32** %var.addr, metadata !78, metadata !DIExpression()), !dbg !100
  %2 = load i32*, i32** %sum1.addr, align 8, !dbg !101, !tbaa !33
  %3 = load i32*, i32** %sum2.addr, align 8, !dbg !101, !tbaa !33
  %4 = load i32*, i32** %var.addr, align 8, !dbg !101, !tbaa !33
  %5 = bitcast i32* %var1 to i8*, !dbg !101
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #5, !dbg !101
  call void @llvm.dbg.declare(metadata i32* %var1, metadata !79, metadata !DIExpression()), !dbg !97
  store i32 0, i32* %var1, align 4, !dbg !102, !tbaa !28
  %6 = bitcast i32* %.omp.iv to i8*, !dbg !103
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #5, !dbg !103
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !80, metadata !DIExpression()), !dbg !104
  %7 = bitcast i32* %.omp.lb to i8*, !dbg !103
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #5, !dbg !103
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !83, metadata !DIExpression()), !dbg !104
  store i32 0, i32* %.omp.lb, align 4, !dbg !105, !tbaa !28
  %8 = bitcast i32* %.omp.ub to i8*, !dbg !103
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #5, !dbg !103
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !84, metadata !DIExpression()), !dbg !104
  store i32 4, i32* %.omp.ub, align 4, !dbg !105, !tbaa !28
  %9 = bitcast i32* %.omp.stride to i8*, !dbg !103
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #5, !dbg !103
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !85, metadata !DIExpression()), !dbg !104
  store i32 1, i32* %.omp.stride, align 4, !dbg !105, !tbaa !28
  %10 = bitcast i32* %.omp.is_last to i8*, !dbg !103
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #5, !dbg !103
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !86, metadata !DIExpression()), !dbg !104
  store i32 0, i32* %.omp.is_last, align 4, !dbg !105, !tbaa !28
  %11 = bitcast i32* %sum12 to i8*, !dbg !103
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #5, !dbg !103
  call void @llvm.dbg.declare(metadata i32* %sum12, metadata !87, metadata !DIExpression()), !dbg !104
  store i32 0, i32* %sum12, align 4, !dbg !106, !tbaa !28
  %12 = bitcast i32* %i to i8*, !dbg !103
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #5, !dbg !103
  call void @llvm.dbg.declare(metadata i32* %i, metadata !88, metadata !DIExpression()), !dbg !104
  %13 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !103
  store i8* getelementptr inbounds ([66 x i8], [66 x i8]* @1, i32 0, i32 0), i8** %13, align 8, !dbg !103, !tbaa !47
  %14 = load i32*, i32** %.global_tid..addr, align 8, !dbg !103
  %15 = load i32, i32* %14, align 4, !dbg !103, !tbaa !28
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %15, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !103
  %16 = load i32, i32* %.omp.ub, align 4, !dbg !105, !tbaa !28
  %cmp = icmp sgt i32 %16, 4, !dbg !105
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !105

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !105

cond.false:                                       ; preds = %entry
  %17 = load i32, i32* %.omp.ub, align 4, !dbg !105, !tbaa !28
  br label %cond.end, !dbg !105

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 4, %cond.true ], [ %17, %cond.false ], !dbg !105
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !105, !tbaa !28
  %18 = load i32, i32* %.omp.lb, align 4, !dbg !105, !tbaa !28
  store i32 %18, i32* %.omp.iv, align 4, !dbg !105, !tbaa !28
  br label %omp.inner.for.cond, !dbg !103

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %19 = load i32, i32* %.omp.iv, align 4, !dbg !105, !tbaa !28
  %20 = load i32, i32* %.omp.ub, align 4, !dbg !105, !tbaa !28
  %cmp3 = icmp sle i32 %19, %20, !dbg !107
  br i1 %cmp3, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !103

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !103

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %21 = load i32, i32* %.omp.iv, align 4, !dbg !105, !tbaa !28
  %mul = mul nsw i32 %21, 1, !dbg !108
  %add = add nsw i32 0, %mul, !dbg !108
  store i32 %add, i32* %i, align 4, !dbg !108, !tbaa !28
  %22 = load i32, i32* %i, align 4, !dbg !109, !tbaa !28
  %23 = load i32, i32* %sum12, align 4, !dbg !110, !tbaa !28
  %add4 = add nsw i32 %23, %22, !dbg !110
  store i32 %add4, i32* %sum12, align 4, !dbg !110, !tbaa !28
  br label %omp.body.continue, !dbg !111

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !112

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %24 = load i32, i32* %.omp.iv, align 4, !dbg !105, !tbaa !28
  %add5 = add nsw i32 %24, 1, !dbg !107
  store i32 %add5, i32* %.omp.iv, align 4, !dbg !107, !tbaa !28
  br label %omp.inner.for.cond, !dbg !112, !llvm.loop !113

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !112

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %25 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !112
  store i8* getelementptr inbounds ([67 x i8], [67 x i8]* @2, i32 0, i32 0), i8** %25, align 8, !dbg !112, !tbaa !47
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %15), !dbg !112
  %26 = getelementptr inbounds [1 x i8*], [1 x i8*]* %.omp.reduction.red_list, i64 0, i64 0, !dbg !112
  %27 = bitcast i32* %sum12 to i8*, !dbg !112
  store i8* %27, i8** %26, align 8, !dbg !112
  %28 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !112
  store i8* getelementptr inbounds ([67 x i8], [67 x i8]* @2, i32 0, i32 0), i8** %28, align 8, !dbg !112, !tbaa !47
  %29 = bitcast [1 x i8*]* %.omp.reduction.red_list to i8*, !dbg !112
  %30 = call i32 @__kmpc_reduce(%struct.ident_t* %.kmpc_loc.addr, i32 %15, i32 1, i64 8, i8* %29, void (i8*, i8*)* @.omp.reduction.reduction_func, [8 x i32]* @.gomp_critical_user_.reduction.var), !dbg !112
  switch i32 %30, label %.omp.reduction.default [
    i32 1, label %.omp.reduction.case1
    i32 2, label %.omp.reduction.case2
  ], !dbg !112

.omp.reduction.case1:                             ; preds = %omp.loop.exit
  %31 = load i32, i32* %2, align 4, !dbg !106, !tbaa !28
  %32 = load i32, i32* %sum12, align 4, !dbg !106, !tbaa !28
  %add6 = add nsw i32 %31, %32, !dbg !115
  store i32 %add6, i32* %2, align 4, !dbg !115, !tbaa !28
  call void @__kmpc_end_reduce(%struct.ident_t* %.kmpc_loc.addr, i32 %15, [8 x i32]* @.gomp_critical_user_.reduction.var), !dbg !112
  br label %.omp.reduction.default, !dbg !112

.omp.reduction.case2:                             ; preds = %omp.loop.exit
  %33 = load i32, i32* %sum12, align 4, !dbg !106, !tbaa !28
  %34 = atomicrmw add i32* %2, i32 %33 monotonic, !dbg !112
  call void @__kmpc_end_reduce(%struct.ident_t* %.kmpc_loc.addr, i32 %15, [8 x i32]* @.gomp_critical_user_.reduction.var), !dbg !112
  br label %.omp.reduction.default, !dbg !112

.omp.reduction.default:                           ; preds = %.omp.reduction.case2, %.omp.reduction.case1, %omp.loop.exit
  %35 = bitcast i32* %i to i8*, !dbg !112
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %35) #5, !dbg !112
  %36 = bitcast i32* %sum12 to i8*, !dbg !112
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %36) #5, !dbg !112
  %37 = bitcast i32* %.omp.is_last to i8*, !dbg !112
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %37) #5, !dbg !112
  %38 = bitcast i32* %.omp.stride to i8*, !dbg !112
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %38) #5, !dbg !112
  %39 = bitcast i32* %.omp.ub to i8*, !dbg !112
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %39) #5, !dbg !112
  %40 = bitcast i32* %.omp.lb to i8*, !dbg !112
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %40) #5, !dbg !112
  %41 = bitcast i32* %.omp.iv to i8*, !dbg !112
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %41) #5, !dbg !112
  %42 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !114
  store i8* getelementptr inbounds ([66 x i8], [66 x i8]* @1, i32 0, i32 0), i8** %42, align 8, !dbg !114, !tbaa !47
  call void @__kmpc_barrier(%struct.ident_t* %.kmpc_loc.addr, i32 %15), !dbg !114
  %43 = bitcast i32* %.omp.iv7 to i8*, !dbg !116
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %43) #5, !dbg !116
  call void @llvm.dbg.declare(metadata i32* %.omp.iv7, metadata !89, metadata !DIExpression()), !dbg !117
  %44 = bitcast i32* %.omp.lb9 to i8*, !dbg !116
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %44) #5, !dbg !116
  call void @llvm.dbg.declare(metadata i32* %.omp.lb9, metadata !91, metadata !DIExpression()), !dbg !117
  store i32 0, i32* %.omp.lb9, align 4, !dbg !118, !tbaa !28
  %45 = bitcast i32* %.omp.ub10 to i8*, !dbg !116
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %45) #5, !dbg !116
  call void @llvm.dbg.declare(metadata i32* %.omp.ub10, metadata !92, metadata !DIExpression()), !dbg !117
  store i32 4, i32* %.omp.ub10, align 4, !dbg !118, !tbaa !28
  %46 = bitcast i32* %.omp.stride11 to i8*, !dbg !116
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %46) #5, !dbg !116
  call void @llvm.dbg.declare(metadata i32* %.omp.stride11, metadata !93, metadata !DIExpression()), !dbg !117
  store i32 1, i32* %.omp.stride11, align 4, !dbg !118, !tbaa !28
  %47 = bitcast i32* %.omp.is_last12 to i8*, !dbg !116
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %47) #5, !dbg !116
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last12, metadata !94, metadata !DIExpression()), !dbg !117
  store i32 0, i32* %.omp.is_last12, align 4, !dbg !118, !tbaa !28
  %48 = bitcast i32* %sum213 to i8*, !dbg !116
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %48) #5, !dbg !116
  call void @llvm.dbg.declare(metadata i32* %sum213, metadata !95, metadata !DIExpression()), !dbg !117
  store i32 0, i32* %sum213, align 4, !dbg !119, !tbaa !28
  %49 = bitcast i32* %i14 to i8*, !dbg !116
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %49) #5, !dbg !116
  call void @llvm.dbg.declare(metadata i32* %i14, metadata !96, metadata !DIExpression()), !dbg !117
  %50 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !116
  store i8* getelementptr inbounds ([66 x i8], [66 x i8]* @3, i32 0, i32 0), i8** %50, align 8, !dbg !116, !tbaa !47
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %15, i32 34, i32* %.omp.is_last12, i32* %.omp.lb9, i32* %.omp.ub10, i32* %.omp.stride11, i32 1, i32 1), !dbg !116
  %51 = load i32, i32* %.omp.ub10, align 4, !dbg !118, !tbaa !28
  %cmp15 = icmp sgt i32 %51, 4, !dbg !118
  br i1 %cmp15, label %cond.true16, label %cond.false17, !dbg !118

cond.true16:                                      ; preds = %.omp.reduction.default
  br label %cond.end18, !dbg !118

cond.false17:                                     ; preds = %.omp.reduction.default
  %52 = load i32, i32* %.omp.ub10, align 4, !dbg !118, !tbaa !28
  br label %cond.end18, !dbg !118

cond.end18:                                       ; preds = %cond.false17, %cond.true16
  %cond19 = phi i32 [ 4, %cond.true16 ], [ %52, %cond.false17 ], !dbg !118
  store i32 %cond19, i32* %.omp.ub10, align 4, !dbg !118, !tbaa !28
  %53 = load i32, i32* %.omp.lb9, align 4, !dbg !118, !tbaa !28
  store i32 %53, i32* %.omp.iv7, align 4, !dbg !118, !tbaa !28
  br label %omp.inner.for.cond20, !dbg !116

omp.inner.for.cond20:                             ; preds = %omp.inner.for.inc28, %cond.end18
  %54 = load i32, i32* %.omp.iv7, align 4, !dbg !118, !tbaa !28
  %55 = load i32, i32* %.omp.ub10, align 4, !dbg !118, !tbaa !28
  %cmp21 = icmp sle i32 %54, %55, !dbg !120
  br i1 %cmp21, label %omp.inner.for.body23, label %omp.inner.for.cond.cleanup22, !dbg !116

omp.inner.for.cond.cleanup22:                     ; preds = %omp.inner.for.cond20
  br label %omp.inner.for.end30, !dbg !116

omp.inner.for.body23:                             ; preds = %omp.inner.for.cond20
  %56 = load i32, i32* %.omp.iv7, align 4, !dbg !118, !tbaa !28
  %mul24 = mul nsw i32 %56, 1, !dbg !121
  %add25 = add nsw i32 0, %mul24, !dbg !121
  store i32 %add25, i32* %i14, align 4, !dbg !121, !tbaa !28
  %57 = load i32, i32* %i14, align 4, !dbg !122, !tbaa !28
  %58 = load i32, i32* %sum213, align 4, !dbg !123, !tbaa !28
  %add26 = add nsw i32 %58, %57, !dbg !123
  store i32 %add26, i32* %sum213, align 4, !dbg !123, !tbaa !28
  br label %omp.body.continue27, !dbg !124

omp.body.continue27:                              ; preds = %omp.inner.for.body23
  br label %omp.inner.for.inc28, !dbg !125

omp.inner.for.inc28:                              ; preds = %omp.body.continue27
  %59 = load i32, i32* %.omp.iv7, align 4, !dbg !118, !tbaa !28
  %add29 = add nsw i32 %59, 1, !dbg !120
  store i32 %add29, i32* %.omp.iv7, align 4, !dbg !120, !tbaa !28
  br label %omp.inner.for.cond20, !dbg !125, !llvm.loop !126

omp.inner.for.end30:                              ; preds = %omp.inner.for.cond.cleanup22
  br label %omp.loop.exit31, !dbg !125

omp.loop.exit31:                                  ; preds = %omp.inner.for.end30
  %60 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !125
  store i8* getelementptr inbounds ([67 x i8], [67 x i8]* @4, i32 0, i32 0), i8** %60, align 8, !dbg !125, !tbaa !47
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %15), !dbg !125
  %61 = getelementptr inbounds [1 x i8*], [1 x i8*]* %.omp.reduction.red_list32, i64 0, i64 0, !dbg !125
  %62 = bitcast i32* %sum213 to i8*, !dbg !125
  store i8* %62, i8** %61, align 8, !dbg !125
  %63 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !125
  store i8* getelementptr inbounds ([67 x i8], [67 x i8]* @4, i32 0, i32 0), i8** %63, align 8, !dbg !125, !tbaa !47
  %64 = bitcast [1 x i8*]* %.omp.reduction.red_list32 to i8*, !dbg !125
  %65 = call i32 @__kmpc_reduce(%struct.ident_t* %.kmpc_loc.addr, i32 %15, i32 1, i64 8, i8* %64, void (i8*, i8*)* @.omp.reduction.reduction_func.1, [8 x i32]* @.gomp_critical_user_.reduction.var), !dbg !125
  switch i32 %65, label %.omp.reduction.default36 [
    i32 1, label %.omp.reduction.case133
    i32 2, label %.omp.reduction.case235
  ], !dbg !125

.omp.reduction.case133:                           ; preds = %omp.loop.exit31
  %66 = load i32, i32* %3, align 4, !dbg !119, !tbaa !28
  %67 = load i32, i32* %sum213, align 4, !dbg !119, !tbaa !28
  %add34 = add nsw i32 %66, %67, !dbg !128
  store i32 %add34, i32* %3, align 4, !dbg !128, !tbaa !28
  call void @__kmpc_end_reduce(%struct.ident_t* %.kmpc_loc.addr, i32 %15, [8 x i32]* @.gomp_critical_user_.reduction.var), !dbg !125
  br label %.omp.reduction.default36, !dbg !125

.omp.reduction.case235:                           ; preds = %omp.loop.exit31
  %68 = load i32, i32* %sum213, align 4, !dbg !119, !tbaa !28
  %69 = atomicrmw add i32* %3, i32 %68 monotonic, !dbg !125
  call void @__kmpc_end_reduce(%struct.ident_t* %.kmpc_loc.addr, i32 %15, [8 x i32]* @.gomp_critical_user_.reduction.var), !dbg !125
  br label %.omp.reduction.default36, !dbg !125

.omp.reduction.default36:                         ; preds = %.omp.reduction.case235, %.omp.reduction.case133, %omp.loop.exit31
  %70 = bitcast i32* %i14 to i8*, !dbg !125
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %70) #5, !dbg !125
  %71 = bitcast i32* %sum213 to i8*, !dbg !125
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %71) #5, !dbg !125
  %72 = bitcast i32* %.omp.is_last12 to i8*, !dbg !125
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %72) #5, !dbg !125
  %73 = bitcast i32* %.omp.stride11 to i8*, !dbg !125
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %73) #5, !dbg !125
  %74 = bitcast i32* %.omp.ub10 to i8*, !dbg !125
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %74) #5, !dbg !125
  %75 = bitcast i32* %.omp.lb9 to i8*, !dbg !125
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %75) #5, !dbg !125
  %76 = bitcast i32* %.omp.iv7 to i8*, !dbg !125
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %76) #5, !dbg !125
  %77 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !127
  store i8* getelementptr inbounds ([66 x i8], [66 x i8]* @3, i32 0, i32 0), i8** %77, align 8, !dbg !127, !tbaa !47
  call void @__kmpc_barrier(%struct.ident_t* %.kmpc_loc.addr, i32 %15), !dbg !127
  %78 = load i32, i32* %2, align 4, !dbg !129, !tbaa !28
  %79 = load i32, i32* %3, align 4, !dbg !130, !tbaa !28
  %add37 = add nsw i32 %78, %79, !dbg !131
  store i32 %add37, i32* %var1, align 4, !dbg !132, !tbaa !28
  %80 = getelementptr inbounds [1 x i8*], [1 x i8*]* %.omp.reduction.red_list38, i64 0, i64 0, !dbg !133
  %81 = bitcast i32* %var1 to i8*, !dbg !133
  store i8* %81, i8** %80, align 8, !dbg !133
  %82 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !133
  store i8* getelementptr inbounds ([67 x i8], [67 x i8]* @5, i32 0, i32 0), i8** %82, align 8, !dbg !133, !tbaa !47
  %83 = bitcast [1 x i8*]* %.omp.reduction.red_list38 to i8*, !dbg !133
  %84 = call i32 @__kmpc_reduce_nowait(%struct.ident_t* %.kmpc_loc.addr, i32 %15, i32 1, i64 8, i8* %83, void (i8*, i8*)* @.omp.reduction.reduction_func.2, [8 x i32]* @.gomp_critical_user_.reduction.var), !dbg !133
  switch i32 %84, label %.omp.reduction.default42 [
    i32 1, label %.omp.reduction.case139
    i32 2, label %.omp.reduction.case241
  ], !dbg !133

.omp.reduction.case139:                           ; preds = %.omp.reduction.default36
  %85 = load i32, i32* %4, align 4, !dbg !102, !tbaa !28
  %86 = load i32, i32* %var1, align 4, !dbg !102, !tbaa !28
  %add40 = add nsw i32 %85, %86, !dbg !134
  store i32 %add40, i32* %4, align 4, !dbg !134, !tbaa !28
  call void @__kmpc_end_reduce_nowait(%struct.ident_t* %.kmpc_loc.addr, i32 %15, [8 x i32]* @.gomp_critical_user_.reduction.var), !dbg !133
  br label %.omp.reduction.default42, !dbg !133

.omp.reduction.case241:                           ; preds = %.omp.reduction.default36
  %87 = load i32, i32* %var1, align 4, !dbg !102, !tbaa !28
  %88 = atomicrmw add i32* %4, i32 %87 monotonic, !dbg !133
  br label %.omp.reduction.default42, !dbg !133

.omp.reduction.default42:                         ; preds = %.omp.reduction.case241, %.omp.reduction.case139, %.omp.reduction.default36
  %89 = bitcast i32* %var1 to i8*, !dbg !133
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %89) #5, !dbg !133
  ret void, !dbg !135
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp.reduction.reduction_func(i8* %0, i8* %1) #4 !dbg !136 {
entry:
  %.addr = alloca i8*, align 8
  %.addr1 = alloca i8*, align 8
  store i8* %0, i8** %.addr, align 8, !tbaa !33
  call void @llvm.dbg.declare(metadata i8** %.addr, metadata !139, metadata !DIExpression()), !dbg !142
  store i8* %1, i8** %.addr1, align 8, !tbaa !33
  call void @llvm.dbg.declare(metadata i8** %.addr1, metadata !141, metadata !DIExpression()), !dbg !142
  %2 = load i8*, i8** %.addr, align 8, !dbg !143
  %3 = bitcast i8* %2 to [1 x i8*]*, !dbg !143
  %4 = load i8*, i8** %.addr1, align 8, !dbg !143
  %5 = bitcast i8* %4 to [1 x i8*]*, !dbg !143
  %6 = getelementptr inbounds [1 x i8*], [1 x i8*]* %5, i64 0, i64 0, !dbg !143
  %7 = load i8*, i8** %6, align 8, !dbg !143
  %8 = bitcast i8* %7 to i32*, !dbg !143
  %9 = getelementptr inbounds [1 x i8*], [1 x i8*]* %3, i64 0, i64 0, !dbg !143
  %10 = load i8*, i8** %9, align 8, !dbg !143
  %11 = bitcast i8* %10 to i32*, !dbg !143
  %12 = load i32, i32* %11, align 4, !dbg !144, !tbaa !28
  %13 = load i32, i32* %8, align 4, !dbg !144, !tbaa !28
  %add = add nsw i32 %12, %13, !dbg !145
  store i32 %add, i32* %11, align 4, !dbg !145, !tbaa !28
  ret void, !dbg !144
}

declare dso_local i32 @__kmpc_reduce(%struct.ident_t*, i32, i32, i64, i8*, void (i8*, i8*)*, [8 x i32]*)

declare dso_local void @__kmpc_end_reduce(%struct.ident_t*, i32, [8 x i32]*)

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local void @__kmpc_barrier(%struct.ident_t*, i32)

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp.reduction.reduction_func.1(i8* %0, i8* %1) #4 !dbg !146 {
entry:
  %.addr = alloca i8*, align 8
  %.addr1 = alloca i8*, align 8
  store i8* %0, i8** %.addr, align 8, !tbaa !33
  call void @llvm.dbg.declare(metadata i8** %.addr, metadata !148, metadata !DIExpression()), !dbg !150
  store i8* %1, i8** %.addr1, align 8, !tbaa !33
  call void @llvm.dbg.declare(metadata i8** %.addr1, metadata !149, metadata !DIExpression()), !dbg !150
  %2 = load i8*, i8** %.addr, align 8, !dbg !151
  %3 = bitcast i8* %2 to [1 x i8*]*, !dbg !151
  %4 = load i8*, i8** %.addr1, align 8, !dbg !151
  %5 = bitcast i8* %4 to [1 x i8*]*, !dbg !151
  %6 = getelementptr inbounds [1 x i8*], [1 x i8*]* %5, i64 0, i64 0, !dbg !151
  %7 = load i8*, i8** %6, align 8, !dbg !151
  %8 = bitcast i8* %7 to i32*, !dbg !151
  %9 = getelementptr inbounds [1 x i8*], [1 x i8*]* %3, i64 0, i64 0, !dbg !151
  %10 = load i8*, i8** %9, align 8, !dbg !151
  %11 = bitcast i8* %10 to i32*, !dbg !151
  %12 = load i32, i32* %11, align 4, !dbg !152, !tbaa !28
  %13 = load i32, i32* %8, align 4, !dbg !152, !tbaa !28
  %add = add nsw i32 %12, %13, !dbg !153
  store i32 %add, i32* %11, align 4, !dbg !153, !tbaa !28
  ret void, !dbg !152
}

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp.reduction.reduction_func.2(i8* %0, i8* %1) #4 !dbg !154 {
entry:
  %.addr = alloca i8*, align 8
  %.addr1 = alloca i8*, align 8
  store i8* %0, i8** %.addr, align 8, !tbaa !33
  call void @llvm.dbg.declare(metadata i8** %.addr, metadata !156, metadata !DIExpression()), !dbg !158
  store i8* %1, i8** %.addr1, align 8, !tbaa !33
  call void @llvm.dbg.declare(metadata i8** %.addr1, metadata !157, metadata !DIExpression()), !dbg !158
  %2 = load i8*, i8** %.addr, align 8, !dbg !159
  %3 = bitcast i8* %2 to [1 x i8*]*, !dbg !159
  %4 = load i8*, i8** %.addr1, align 8, !dbg !159
  %5 = bitcast i8* %4 to [1 x i8*]*, !dbg !159
  %6 = getelementptr inbounds [1 x i8*], [1 x i8*]* %5, i64 0, i64 0, !dbg !159
  %7 = load i8*, i8** %6, align 8, !dbg !159
  %8 = bitcast i8* %7 to i32*, !dbg !159
  %9 = getelementptr inbounds [1 x i8*], [1 x i8*]* %3, i64 0, i64 0, !dbg !159
  %10 = load i8*, i8** %9, align 8, !dbg !159
  %11 = bitcast i8* %10 to i32*, !dbg !159
  %12 = load i32, i32* %11, align 4, !dbg !160, !tbaa !28
  %13 = load i32, i32* %8, align 4, !dbg !160, !tbaa !28
  %add = add nsw i32 %12, %13, !dbg !161
  store i32 %add, i32* %11, align 4, !dbg !161, !tbaa !28
  ret void, !dbg !160
}

declare dso_local i32 @__kmpc_reduce_nowait(%struct.ident_t*, i32, i32, i64, i8*, void (i8*, i8*)*, [8 x i32]*)

declare dso_local void @__kmpc_end_reduce_nowait(%struct.ident_t*, i32, [8 x i32]*)

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %sum1, i32* dereferenceable(4) %sum2, i32* dereferenceable(4) %var) #4 !dbg !162 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %sum1.addr = alloca i32*, align 8
  %sum2.addr = alloca i32*, align 8
  %var.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !33
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !164, metadata !DIExpression()), !dbg !169
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !33
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !165, metadata !DIExpression()), !dbg !169
  store i32* %sum1, i32** %sum1.addr, align 8, !tbaa !33
  call void @llvm.dbg.declare(metadata i32** %sum1.addr, metadata !166, metadata !DIExpression()), !dbg !169
  store i32* %sum2, i32** %sum2.addr, align 8, !tbaa !33
  call void @llvm.dbg.declare(metadata i32** %sum2.addr, metadata !167, metadata !DIExpression()), !dbg !169
  store i32* %var, i32** %var.addr, align 8, !tbaa !33
  call void @llvm.dbg.declare(metadata i32** %var.addr, metadata !168, metadata !DIExpression()), !dbg !169
  %0 = load i32*, i32** %sum1.addr, align 8, !dbg !170, !tbaa !33
  %1 = load i32*, i32** %sum2.addr, align 8, !dbg !170, !tbaa !33
  %2 = load i32*, i32** %var.addr, align 8, !dbg !170, !tbaa !33
  %3 = load i32*, i32** %.global_tid..addr, align 8, !dbg !170, !tbaa !33
  %4 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !170, !tbaa !33
  %5 = load i32*, i32** %sum1.addr, align 8, !dbg !170, !tbaa !33
  %6 = load i32*, i32** %sum2.addr, align 8, !dbg !170, !tbaa !33
  %7 = load i32*, i32** %var.addr, align 8, !dbg !170, !tbaa !33
  call void @.omp_outlined._debug__(i32* %3, i32* %4, i32* %5, i32* %6, i32* %7) #5, !dbg !170
  ret void, !dbg !170
}

declare !callback !171 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

declare dso_local i32 @printf(i8*, ...) #3

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!9, !10, !11}
!llvm.ident = !{!12}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "integration/dataracebench/DRB121-reduction-orig-no.c", directory: "/home/brad/Code/OpenRace/tests/data")
!2 = !{}
!3 = !{!4}
!4 = !DISubprogram(name: "omp_get_max_threads", scope: !5, file: !5, line: 67, type: !6, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!5 = !DIFile(filename: "/usr/include/omp.h", directory: "")
!6 = !DISubroutineType(types: !7)
!7 = !{!8}
!8 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!9 = !{i32 7, !"Dwarf Version", i32 4}
!10 = !{i32 2, !"Debug Info Version", i32 3}
!11 = !{i32 1, !"wchar_size", i32 4}
!12 = !{!"clang version 10.0.1 "}
!13 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 20, type: !14, scopeLine: 21, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !19)
!14 = !DISubroutineType(types: !15)
!15 = !{!8, !8, !16}
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!19 = !{!20, !21, !22, !23, !24, !25, !26, !27}
!20 = !DILocalVariable(name: "argc", arg: 1, scope: !13, file: !1, line: 20, type: !8)
!21 = !DILocalVariable(name: "argv", arg: 2, scope: !13, file: !1, line: 20, type: !16)
!22 = !DILocalVariable(name: "var", scope: !13, file: !1, line: 22, type: !8)
!23 = !DILocalVariable(name: "i", scope: !13, file: !1, line: 22, type: !8)
!24 = !DILocalVariable(name: "res", scope: !13, file: !1, line: 22, type: !8)
!25 = !DILocalVariable(name: "sum1", scope: !13, file: !1, line: 23, type: !8)
!26 = !DILocalVariable(name: "sum2", scope: !13, file: !1, line: 24, type: !8)
!27 = !DILocalVariable(name: "error", scope: !13, file: !1, line: 40, type: !8)
!28 = !{!29, !29, i64 0}
!29 = !{!"int", !30, i64 0}
!30 = !{!"omnipotent char", !31, i64 0}
!31 = !{!"Simple C/C++ TBAA"}
!32 = !DILocation(line: 20, column: 14, scope: !13)
!33 = !{!34, !34, i64 0}
!34 = !{!"any pointer", !30, i64 0}
!35 = !DILocation(line: 20, column: 26, scope: !13)
!36 = !DILocation(line: 22, column: 3, scope: !13)
!37 = !DILocation(line: 22, column: 7, scope: !13)
!38 = !DILocation(line: 22, column: 16, scope: !13)
!39 = !DILocation(line: 22, column: 19, scope: !13)
!40 = !DILocation(line: 23, column: 3, scope: !13)
!41 = !DILocation(line: 23, column: 7, scope: !13)
!42 = !DILocation(line: 24, column: 3, scope: !13)
!43 = !DILocation(line: 24, column: 7, scope: !13)
!44 = !DILocation(line: 26, column: 9, scope: !13)
!45 = !DILocation(line: 26, column: 7, scope: !13)
!46 = !DILocation(line: 28, column: 3, scope: !13)
!47 = !{!48, !34, i64 16}
!48 = !{!"ident_t", !29, i64 0, !29, i64 4, !29, i64 8, !29, i64 12, !34, i64 16}
!49 = !DILocation(line: 40, column: 3, scope: !13)
!50 = !DILocation(line: 40, column: 7, scope: !13)
!51 = !DILocation(line: 40, column: 16, scope: !13)
!52 = !DILocation(line: 40, column: 26, scope: !13)
!53 = !DILocation(line: 40, column: 25, scope: !13)
!54 = !DILocation(line: 40, column: 20, scope: !13)
!55 = !DILocation(line: 41, column: 7, scope: !56)
!56 = distinct !DILexicalBlock(scope: !13, file: !1, line: 41, column: 7)
!57 = !DILocation(line: 41, column: 7, scope: !13)
!58 = !DILocation(line: 41, column: 31, scope: !56)
!59 = !DILocation(line: 41, column: 38, scope: !56)
!60 = !DILocation(line: 41, column: 37, scope: !56)
!61 = !DILocation(line: 41, column: 14, scope: !56)
!62 = !DILocation(line: 42, column: 10, scope: !13)
!63 = !DILocation(line: 43, column: 1, scope: !13)
!64 = !DILocation(line: 42, column: 3, scope: !13)
!65 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 29, type: !66, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !73)
!66 = !DISubroutineType(types: !67)
!67 = !{null, !68, !68, !72, !72, !72}
!68 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !69)
!69 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !70)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!72 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !8, size: 64)
!73 = !{!74, !75, !76, !77, !78, !79, !80, !83, !84, !85, !86, !87, !88, !89, !91, !92, !93, !94, !95, !96}
!74 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !65, type: !68, flags: DIFlagArtificial)
!75 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !65, type: !68, flags: DIFlagArtificial)
!76 = !DILocalVariable(name: "sum1", arg: 3, scope: !65, file: !1, line: 23, type: !72)
!77 = !DILocalVariable(name: "sum2", arg: 4, scope: !65, file: !1, line: 24, type: !72)
!78 = !DILocalVariable(name: "var", arg: 5, scope: !65, file: !1, line: 22, type: !72)
!79 = !DILocalVariable(name: "var", scope: !65, type: !8, flags: DIFlagArtificial)
!80 = !DILocalVariable(name: ".omp.iv", scope: !81, type: !8, flags: DIFlagArtificial)
!81 = distinct !DILexicalBlock(scope: !82, file: !1, line: 30, column: 5)
!82 = distinct !DILexicalBlock(scope: !65, file: !1, line: 29, column: 3)
!83 = !DILocalVariable(name: ".omp.lb", scope: !81, type: !8, flags: DIFlagArtificial)
!84 = !DILocalVariable(name: ".omp.ub", scope: !81, type: !8, flags: DIFlagArtificial)
!85 = !DILocalVariable(name: ".omp.stride", scope: !81, type: !8, flags: DIFlagArtificial)
!86 = !DILocalVariable(name: ".omp.is_last", scope: !81, type: !8, flags: DIFlagArtificial)
!87 = !DILocalVariable(name: "sum1", scope: !81, type: !8, flags: DIFlagArtificial)
!88 = !DILocalVariable(name: "i", scope: !81, type: !8, flags: DIFlagArtificial)
!89 = !DILocalVariable(name: ".omp.iv", scope: !90, type: !8, flags: DIFlagArtificial)
!90 = distinct !DILexicalBlock(scope: !82, file: !1, line: 33, column: 5)
!91 = !DILocalVariable(name: ".omp.lb", scope: !90, type: !8, flags: DIFlagArtificial)
!92 = !DILocalVariable(name: ".omp.ub", scope: !90, type: !8, flags: DIFlagArtificial)
!93 = !DILocalVariable(name: ".omp.stride", scope: !90, type: !8, flags: DIFlagArtificial)
!94 = !DILocalVariable(name: ".omp.is_last", scope: !90, type: !8, flags: DIFlagArtificial)
!95 = !DILocalVariable(name: "sum2", scope: !90, type: !8, flags: DIFlagArtificial)
!96 = !DILocalVariable(name: "i", scope: !90, type: !8, flags: DIFlagArtificial)
!97 = !DILocation(line: 0, scope: !65)
!98 = !DILocation(line: 23, column: 7, scope: !65)
!99 = !DILocation(line: 24, column: 7, scope: !65)
!100 = !DILocation(line: 22, column: 7, scope: !65)
!101 = !DILocation(line: 29, column: 3, scope: !65)
!102 = !DILocation(line: 28, column: 37, scope: !65)
!103 = !DILocation(line: 30, column: 5, scope: !82)
!104 = !DILocation(line: 0, scope: !81)
!105 = !DILocation(line: 31, column: 10, scope: !81)
!106 = !DILocation(line: 30, column: 51, scope: !81)
!107 = !DILocation(line: 31, column: 5, scope: !81)
!108 = !DILocation(line: 31, column: 20, scope: !81)
!109 = !DILocation(line: 32, column: 11, scope: !81)
!110 = !DILocation(line: 32, column: 9, scope: !81)
!111 = !DILocation(line: 32, column: 5, scope: !81)
!112 = !DILocation(line: 30, column: 5, scope: !81)
!113 = distinct !{!113, !112, !114}
!114 = !DILocation(line: 30, column: 56, scope: !81)
!115 = !DILocation(line: 30, column: 48, scope: !81)
!116 = !DILocation(line: 33, column: 5, scope: !82)
!117 = !DILocation(line: 0, scope: !90)
!118 = !DILocation(line: 34, column: 10, scope: !90)
!119 = !DILocation(line: 33, column: 51, scope: !90)
!120 = !DILocation(line: 34, column: 5, scope: !90)
!121 = !DILocation(line: 34, column: 20, scope: !90)
!122 = !DILocation(line: 35, column: 11, scope: !90)
!123 = !DILocation(line: 35, column: 9, scope: !90)
!124 = !DILocation(line: 35, column: 5, scope: !90)
!125 = !DILocation(line: 33, column: 5, scope: !90)
!126 = distinct !{!126, !125, !127}
!127 = !DILocation(line: 33, column: 56, scope: !90)
!128 = !DILocation(line: 33, column: 48, scope: !90)
!129 = !DILocation(line: 37, column: 11, scope: !82)
!130 = !DILocation(line: 37, column: 18, scope: !82)
!131 = !DILocation(line: 37, column: 16, scope: !82)
!132 = !DILocation(line: 37, column: 9, scope: !82)
!133 = !DILocation(line: 38, column: 3, scope: !82)
!134 = !DILocation(line: 28, column: 34, scope: !65)
!135 = !DILocation(line: 38, column: 3, scope: !65)
!136 = distinct !DISubprogram(linkageName: ".omp.reduction.reduction_func", scope: !1, file: !1, line: 30, type: !137, scopeLine: 30, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !138)
!137 = !DISubroutineType(types: !2)
!138 = !{!139, !141}
!139 = !DILocalVariable(arg: 1, scope: !136, type: !140, flags: DIFlagArtificial)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!141 = !DILocalVariable(arg: 2, scope: !136, type: !140, flags: DIFlagArtificial)
!142 = !DILocation(line: 0, scope: !136)
!143 = !DILocation(line: 30, column: 56, scope: !136)
!144 = !DILocation(line: 30, column: 51, scope: !136)
!145 = !DILocation(line: 30, column: 48, scope: !136)
!146 = distinct !DISubprogram(linkageName: ".omp.reduction.reduction_func.1", scope: !1, file: !1, line: 33, type: !137, scopeLine: 33, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !147)
!147 = !{!148, !149}
!148 = !DILocalVariable(arg: 1, scope: !146, type: !140, flags: DIFlagArtificial)
!149 = !DILocalVariable(arg: 2, scope: !146, type: !140, flags: DIFlagArtificial)
!150 = !DILocation(line: 0, scope: !146)
!151 = !DILocation(line: 33, column: 56, scope: !146)
!152 = !DILocation(line: 33, column: 51, scope: !146)
!153 = !DILocation(line: 33, column: 48, scope: !146)
!154 = distinct !DISubprogram(linkageName: ".omp.reduction.reduction_func.2", scope: !1, file: !1, line: 28, type: !137, scopeLine: 28, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !155)
!155 = !{!156, !157}
!156 = !DILocalVariable(arg: 1, scope: !154, type: !140, flags: DIFlagArtificial)
!157 = !DILocalVariable(arg: 2, scope: !154, type: !140, flags: DIFlagArtificial)
!158 = !DILocation(line: 0, scope: !154)
!159 = !DILocation(line: 28, column: 41, scope: !154)
!160 = !DILocation(line: 28, column: 37, scope: !154)
!161 = !DILocation(line: 28, column: 34, scope: !154)
!162 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 29, type: !66, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !163)
!163 = !{!164, !165, !166, !167, !168}
!164 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !162, type: !68, flags: DIFlagArtificial)
!165 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !162, type: !68, flags: DIFlagArtificial)
!166 = !DILocalVariable(name: "sum1", arg: 3, scope: !162, type: !72, flags: DIFlagArtificial)
!167 = !DILocalVariable(name: "sum2", arg: 4, scope: !162, type: !72, flags: DIFlagArtificial)
!168 = !DILocalVariable(name: "var", arg: 5, scope: !162, type: !72, flags: DIFlagArtificial)
!169 = !DILocation(line: 0, scope: !162)
!170 = !DILocation(line: 29, column: 3, scope: !162)
!171 = !{!172}
!172 = !{i64 2, i64 -1, i64 -1, i1 true}
