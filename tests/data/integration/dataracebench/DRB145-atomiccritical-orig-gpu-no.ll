; ModuleID = 'integration/dataracebench/DRB145-atomiccritical-orig-gpu-no.c'
source_filename = "integration/dataracebench/DRB145-atomiccritical-orig-gpu-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 2050, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [75 x i8] c";integration/dataracebench/DRB145-atomiccritical-orig-gpu-no.c;main;23;3;;\00", align 1
@2 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@3 = private unnamed_addr constant [76 x i8] c";integration/dataracebench/DRB145-atomiccritical-orig-gpu-no.c;main;23;61;;\00", align 1
@.gomp_critical_user_.reduction.var = common global [8 x i32] zeroinitializer
@4 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@var = dso_local global i32 0, align 4, !dbg !0
@.str.4 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main() #0 !dbg !11 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @__omp_offloading_1030a_2160953_main_l22(i32* @var) #5, !dbg !14
  %0 = load i32, i32* @var, align 4, !dbg !16, !tbaa !17
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !21
  ret i32 0, !dbg !22
}

; Function Attrs: norecurse nounwind uwtable
define internal void @__omp_offloading_1030a_2160953_main_l22_debug__(i32* dereferenceable(4) %var) #1 !dbg !23 {
entry:
  %var.addr = alloca i32*, align 8
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %var, i32** %var.addr, align 8, !tbaa !29
  call void @llvm.dbg.declare(metadata i32** %var.addr, metadata !28, metadata !DIExpression()), !dbg !31
  %2 = load i32*, i32** %var.addr, align 8, !dbg !32, !tbaa !29
  %3 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !32
  store i8* getelementptr inbounds ([75 x i8], [75 x i8]* @1, i32 0, i32 0), i8** %3, align 8, !dbg !32, !tbaa !33
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_teams(%struct.ident_t* %.kmpc_loc.addr, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*)* @.omp_outlined..3 to void (i32*, i32*, ...)*), i32* %2), !dbg !32
  ret void, !dbg !35
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %var) #1 !dbg !36 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %var.addr = alloca i32*, align 8
  %var1 = alloca i32, align 4
  %.omp.iv = alloca i32, align 4
  %tmp = alloca i32, align 4
  %.omp.comb.lb = alloca i32, align 4
  %.omp.comb.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %i = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %.omp.reduction.red_list = alloca [1 x i8*], align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !29
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !44, metadata !DIExpression()), !dbg !54
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !29
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !45, metadata !DIExpression()), !dbg !54
  store i32* %var, i32** %var.addr, align 8, !tbaa !29
  call void @llvm.dbg.declare(metadata i32** %var.addr, metadata !46, metadata !DIExpression()), !dbg !55
  %2 = load i32*, i32** %var.addr, align 8, !dbg !56, !tbaa !29
  %3 = bitcast i32* %var1 to i8*, !dbg !56
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #5, !dbg !56
  call void @llvm.dbg.declare(metadata i32* %var1, metadata !47, metadata !DIExpression()), !dbg !54
  store i32 0, i32* %var1, align 4, !dbg !57, !tbaa !17
  %4 = bitcast i32* %.omp.iv to i8*, !dbg !56
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #5, !dbg !56
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !48, metadata !DIExpression()), !dbg !54
  %5 = bitcast i32* %.omp.comb.lb to i8*, !dbg !56
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #5, !dbg !56
  call void @llvm.dbg.declare(metadata i32* %.omp.comb.lb, metadata !49, metadata !DIExpression()), !dbg !54
  store i32 0, i32* %.omp.comb.lb, align 4, !dbg !58, !tbaa !17
  %6 = bitcast i32* %.omp.comb.ub to i8*, !dbg !56
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #5, !dbg !56
  call void @llvm.dbg.declare(metadata i32* %.omp.comb.ub, metadata !50, metadata !DIExpression()), !dbg !54
  store i32 99, i32* %.omp.comb.ub, align 4, !dbg !58, !tbaa !17
  %7 = bitcast i32* %.omp.stride to i8*, !dbg !56
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #5, !dbg !56
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !51, metadata !DIExpression()), !dbg !54
  store i32 1, i32* %.omp.stride, align 4, !dbg !58, !tbaa !17
  %8 = bitcast i32* %.omp.is_last to i8*, !dbg !56
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #5, !dbg !56
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !52, metadata !DIExpression()), !dbg !54
  store i32 0, i32* %.omp.is_last, align 4, !dbg !58, !tbaa !17
  %9 = bitcast i32* %i to i8*, !dbg !56
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #5, !dbg !56
  call void @llvm.dbg.declare(metadata i32* %i, metadata !53, metadata !DIExpression()), !dbg !54
  %10 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !56
  store i8* getelementptr inbounds ([75 x i8], [75 x i8]* @1, i32 0, i32 0), i8** %10, align 8, !dbg !56, !tbaa !33
  %11 = load i32*, i32** %.global_tid..addr, align 8, !dbg !56
  %12 = load i32, i32* %11, align 4, !dbg !56, !tbaa !17
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %12, i32 92, i32* %.omp.is_last, i32* %.omp.comb.lb, i32* %.omp.comb.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !56
  %13 = load i32, i32* %.omp.comb.ub, align 4, !dbg !58, !tbaa !17
  %cmp = icmp sgt i32 %13, 99, !dbg !58
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !58

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !58

cond.false:                                       ; preds = %entry
  %14 = load i32, i32* %.omp.comb.ub, align 4, !dbg !58, !tbaa !17
  br label %cond.end, !dbg !58

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 99, %cond.true ], [ %14, %cond.false ], !dbg !58
  store i32 %cond, i32* %.omp.comb.ub, align 4, !dbg !58, !tbaa !17
  %15 = load i32, i32* %.omp.comb.lb, align 4, !dbg !58, !tbaa !17
  store i32 %15, i32* %.omp.iv, align 4, !dbg !58, !tbaa !17
  br label %omp.inner.for.cond, !dbg !56

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %16 = load i32, i32* %.omp.iv, align 4, !dbg !58, !tbaa !17
  %17 = load i32, i32* %.omp.comb.ub, align 4, !dbg !58, !tbaa !17
  %cmp2 = icmp sle i32 %16, %17, !dbg !56
  br i1 %cmp2, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !56

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !56

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %18 = load i32, i32* %.omp.comb.lb, align 4, !dbg !59
  %19 = zext i32 %18 to i64, !dbg !59
  %20 = load i32, i32* %.omp.comb.ub, align 4, !dbg !59
  %21 = zext i32 %20 to i64, !dbg !59
  %22 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !59
  store i8* getelementptr inbounds ([75 x i8], [75 x i8]* @1, i32 0, i32 0), i8** %22, align 8, !dbg !59, !tbaa !33
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i64, i64, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i64 %19, i64 %21, i32* %var1), !dbg !59
  br label %omp.inner.for.inc, !dbg !60

omp.inner.for.inc:                                ; preds = %omp.inner.for.body
  %23 = load i32, i32* %.omp.iv, align 4, !dbg !58, !tbaa !17
  %24 = load i32, i32* %.omp.stride, align 4, !dbg !58, !tbaa !17
  %add = add nsw i32 %23, %24, !dbg !56
  store i32 %add, i32* %.omp.iv, align 4, !dbg !56, !tbaa !17
  br label %omp.inner.for.cond, !dbg !60, !llvm.loop !62

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !60

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %25 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !60
  store i8* getelementptr inbounds ([75 x i8], [75 x i8]* @1, i32 0, i32 0), i8** %25, align 8, !dbg !60, !tbaa !33
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %12), !dbg !60
  %26 = bitcast i32* %i to i8*, !dbg !60
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %26) #5, !dbg !60
  %27 = bitcast i32* %.omp.is_last to i8*, !dbg !60
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %27) #5, !dbg !60
  %28 = bitcast i32* %.omp.stride to i8*, !dbg !60
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %28) #5, !dbg !60
  %29 = bitcast i32* %.omp.comb.ub to i8*, !dbg !60
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %29) #5, !dbg !60
  %30 = bitcast i32* %.omp.comb.lb to i8*, !dbg !60
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %30) #5, !dbg !60
  %31 = bitcast i32* %.omp.iv to i8*, !dbg !60
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %31) #5, !dbg !60
  %32 = getelementptr inbounds [1 x i8*], [1 x i8*]* %.omp.reduction.red_list, i64 0, i64 0, !dbg !60
  %33 = bitcast i32* %var1 to i8*, !dbg !60
  store i8* %33, i8** %32, align 8, !dbg !60
  %34 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !60
  store i8* getelementptr inbounds ([76 x i8], [76 x i8]* @3, i32 0, i32 0), i8** %34, align 8, !dbg !60, !tbaa !33
  %35 = bitcast [1 x i8*]* %.omp.reduction.red_list to i8*, !dbg !60
  %36 = call i32 @__kmpc_reduce_nowait(%struct.ident_t* %.kmpc_loc.addr, i32 %12, i32 1, i64 8, i8* %35, void (i8*, i8*)* @.omp.reduction.reduction_func.2, [8 x i32]* @.gomp_critical_user_.reduction.var), !dbg !60
  switch i32 %36, label %.omp.reduction.default [
    i32 1, label %.omp.reduction.case1
    i32 2, label %.omp.reduction.case2
  ], !dbg !60

.omp.reduction.case1:                             ; preds = %omp.loop.exit
  %37 = load i32, i32* %2, align 4, !dbg !57, !tbaa !17
  %38 = load i32, i32* %var1, align 4, !dbg !57, !tbaa !17
  %add3 = add nsw i32 %37, %38, !dbg !64
  store i32 %add3, i32* %2, align 4, !dbg !64, !tbaa !17
  call void @__kmpc_end_reduce_nowait(%struct.ident_t* %.kmpc_loc.addr, i32 %12, [8 x i32]* @.gomp_critical_user_.reduction.var), !dbg !60
  br label %.omp.reduction.default, !dbg !60

.omp.reduction.case2:                             ; preds = %omp.loop.exit
  %39 = load i32, i32* %var1, align 4, !dbg !57, !tbaa !17
  %40 = atomicrmw add i32* %2, i32 %39 monotonic, !dbg !60
  br label %.omp.reduction.default, !dbg !60

.omp.reduction.default:                           ; preds = %.omp.reduction.case2, %.omp.reduction.case1, %omp.loop.exit
  %41 = bitcast i32* %var1 to i8*, !dbg !60
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %41) #5, !dbg !60
  ret void, !dbg !65
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__.1(i32* noalias %.global_tid., i32* noalias %.bound_tid., i64 %.previous.lb., i64 %.previous.ub., i32* dereferenceable(4) %var) #1 !dbg !66 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %.previous.lb..addr = alloca i64, align 8
  %.previous.ub..addr = alloca i64, align 8
  %var.addr = alloca i32*, align 8
  %.omp.iv = alloca i32, align 4
  %tmp = alloca i32, align 4
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %var2 = alloca i32, align 4
  %i = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %.omp.reduction.red_list = alloca [1 x i8*], align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !29
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !72, metadata !DIExpression()), !dbg !84
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !29
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !73, metadata !DIExpression()), !dbg !84
  store i64 %.previous.lb., i64* %.previous.lb..addr, align 8, !tbaa !85
  call void @llvm.dbg.declare(metadata i64* %.previous.lb..addr, metadata !74, metadata !DIExpression()), !dbg !84
  store i64 %.previous.ub., i64* %.previous.ub..addr, align 8, !tbaa !85
  call void @llvm.dbg.declare(metadata i64* %.previous.ub..addr, metadata !75, metadata !DIExpression()), !dbg !84
  store i32* %var, i32** %var.addr, align 8, !tbaa !29
  call void @llvm.dbg.declare(metadata i32** %var.addr, metadata !76, metadata !DIExpression()), !dbg !87
  %2 = load i32*, i32** %var.addr, align 8, !dbg !88, !tbaa !29
  %3 = bitcast i32* %.omp.iv to i8*, !dbg !88
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #5, !dbg !88
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !77, metadata !DIExpression()), !dbg !84
  %4 = bitcast i32* %.omp.lb to i8*, !dbg !88
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #5, !dbg !88
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !78, metadata !DIExpression()), !dbg !84
  store i32 0, i32* %.omp.lb, align 4, !dbg !89, !tbaa !17
  %5 = bitcast i32* %.omp.ub to i8*, !dbg !88
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #5, !dbg !88
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !79, metadata !DIExpression()), !dbg !84
  store i32 99, i32* %.omp.ub, align 4, !dbg !89, !tbaa !17
  %6 = load i64, i64* %.previous.lb..addr, align 8, !dbg !88, !tbaa !85
  %conv = trunc i64 %6 to i32, !dbg !88
  %7 = load i64, i64* %.previous.ub..addr, align 8, !dbg !88, !tbaa !85
  %conv1 = trunc i64 %7 to i32, !dbg !88
  store i32 %conv, i32* %.omp.lb, align 4, !dbg !88, !tbaa !17
  store i32 %conv1, i32* %.omp.ub, align 4, !dbg !88, !tbaa !17
  %8 = bitcast i32* %.omp.stride to i8*, !dbg !88
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #5, !dbg !88
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !80, metadata !DIExpression()), !dbg !84
  store i32 1, i32* %.omp.stride, align 4, !dbg !89, !tbaa !17
  %9 = bitcast i32* %.omp.is_last to i8*, !dbg !88
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #5, !dbg !88
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !81, metadata !DIExpression()), !dbg !84
  store i32 0, i32* %.omp.is_last, align 4, !dbg !89, !tbaa !17
  %10 = bitcast i32* %var2 to i8*, !dbg !88
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #5, !dbg !88
  call void @llvm.dbg.declare(metadata i32* %var2, metadata !82, metadata !DIExpression()), !dbg !84
  store i32 0, i32* %var2, align 4, !dbg !90, !tbaa !17
  %11 = bitcast i32* %i to i8*, !dbg !88
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #5, !dbg !88
  call void @llvm.dbg.declare(metadata i32* %i, metadata !83, metadata !DIExpression()), !dbg !84
  %12 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !88
  store i8* getelementptr inbounds ([75 x i8], [75 x i8]* @1, i32 0, i32 0), i8** %12, align 8, !dbg !88, !tbaa !33
  %13 = load i32*, i32** %.global_tid..addr, align 8, !dbg !88
  %14 = load i32, i32* %13, align 4, !dbg !88, !tbaa !17
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %14, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !88
  %15 = load i32, i32* %.omp.ub, align 4, !dbg !89, !tbaa !17
  %cmp = icmp sgt i32 %15, 99, !dbg !89
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !89

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !89

cond.false:                                       ; preds = %entry
  %16 = load i32, i32* %.omp.ub, align 4, !dbg !89, !tbaa !17
  br label %cond.end, !dbg !89

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 99, %cond.true ], [ %16, %cond.false ], !dbg !89
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !89, !tbaa !17
  %17 = load i32, i32* %.omp.lb, align 4, !dbg !89, !tbaa !17
  store i32 %17, i32* %.omp.iv, align 4, !dbg !89, !tbaa !17
  br label %omp.inner.for.cond, !dbg !88

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %18 = load i32, i32* %.omp.iv, align 4, !dbg !89, !tbaa !17
  %19 = load i32, i32* %.omp.ub, align 4, !dbg !89, !tbaa !17
  %cmp4 = icmp sle i32 %18, %19, !dbg !88
  br i1 %cmp4, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !88

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !88

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %20 = load i32, i32* %.omp.iv, align 4, !dbg !89, !tbaa !17
  %mul = mul nsw i32 %20, 1, !dbg !91
  %add = add nsw i32 0, %mul, !dbg !91
  store i32 %add, i32* %i, align 4, !dbg !91, !tbaa !17
  %21 = load i32, i32* %var2, align 4, !dbg !92, !tbaa !17
  %inc = add nsw i32 %21, 1, !dbg !92
  store i32 %inc, i32* %var2, align 4, !dbg !92, !tbaa !17
  br label %omp.body.continue, !dbg !94

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !95

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %22 = load i32, i32* %.omp.iv, align 4, !dbg !89, !tbaa !17
  %add6 = add nsw i32 %22, 1, !dbg !88
  store i32 %add6, i32* %.omp.iv, align 4, !dbg !88, !tbaa !17
  br label %omp.inner.for.cond, !dbg !95, !llvm.loop !96

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !95

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %23 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !95
  store i8* getelementptr inbounds ([76 x i8], [76 x i8]* @3, i32 0, i32 0), i8** %23, align 8, !dbg !95, !tbaa !33
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %14), !dbg !95
  %24 = getelementptr inbounds [1 x i8*], [1 x i8*]* %.omp.reduction.red_list, i64 0, i64 0, !dbg !95
  %25 = bitcast i32* %var2 to i8*, !dbg !95
  store i8* %25, i8** %24, align 8, !dbg !95
  %26 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !95
  store i8* getelementptr inbounds ([76 x i8], [76 x i8]* @3, i32 0, i32 0), i8** %26, align 8, !dbg !95, !tbaa !33
  %27 = bitcast [1 x i8*]* %.omp.reduction.red_list to i8*, !dbg !95
  %28 = call i32 @__kmpc_reduce_nowait(%struct.ident_t* %.kmpc_loc.addr, i32 %14, i32 1, i64 8, i8* %27, void (i8*, i8*)* @.omp.reduction.reduction_func, [8 x i32]* @.gomp_critical_user_.reduction.var), !dbg !95
  switch i32 %28, label %.omp.reduction.default [
    i32 1, label %.omp.reduction.case1
    i32 2, label %.omp.reduction.case2
  ], !dbg !95

.omp.reduction.case1:                             ; preds = %omp.loop.exit
  %29 = load i32, i32* %2, align 4, !dbg !90, !tbaa !17
  %30 = load i32, i32* %var2, align 4, !dbg !90, !tbaa !17
  %add7 = add nsw i32 %29, %30, !dbg !98
  store i32 %add7, i32* %2, align 4, !dbg !98, !tbaa !17
  call void @__kmpc_end_reduce_nowait(%struct.ident_t* %.kmpc_loc.addr, i32 %14, [8 x i32]* @.gomp_critical_user_.reduction.var), !dbg !95
  br label %.omp.reduction.default, !dbg !95

.omp.reduction.case2:                             ; preds = %omp.loop.exit
  %31 = load i32, i32* %var2, align 4, !dbg !90, !tbaa !17
  %32 = atomicrmw add i32* %2, i32 %31 monotonic, !dbg !95
  br label %.omp.reduction.default, !dbg !95

.omp.reduction.default:                           ; preds = %.omp.reduction.case2, %.omp.reduction.case1, %omp.loop.exit
  %33 = bitcast i32* %i to i8*, !dbg !95
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %33) #5, !dbg !95
  %34 = bitcast i32* %var2 to i8*, !dbg !95
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %34) #5, !dbg !95
  %35 = bitcast i32* %.omp.is_last to i8*, !dbg !95
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %35) #5, !dbg !95
  %36 = bitcast i32* %.omp.stride to i8*, !dbg !95
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %36) #5, !dbg !95
  %37 = bitcast i32* %.omp.ub to i8*, !dbg !95
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %37) #5, !dbg !95
  %38 = bitcast i32* %.omp.lb to i8*, !dbg !95
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %38) #5, !dbg !95
  %39 = bitcast i32* %.omp.iv to i8*, !dbg !95
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %39) #5, !dbg !95
  ret void, !dbg !99
}

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp.reduction.reduction_func(i8* %0, i8* %1) #1 !dbg !100 {
entry:
  %.addr = alloca i8*, align 8
  %.addr1 = alloca i8*, align 8
  store i8* %0, i8** %.addr, align 8, !tbaa !29
  call void @llvm.dbg.declare(metadata i8** %.addr, metadata !103, metadata !DIExpression()), !dbg !106
  store i8* %1, i8** %.addr1, align 8, !tbaa !29
  call void @llvm.dbg.declare(metadata i8** %.addr1, metadata !105, metadata !DIExpression()), !dbg !106
  %2 = load i8*, i8** %.addr, align 8, !dbg !107
  %3 = bitcast i8* %2 to [1 x i8*]*, !dbg !107
  %4 = load i8*, i8** %.addr1, align 8, !dbg !107
  %5 = bitcast i8* %4 to [1 x i8*]*, !dbg !107
  %6 = getelementptr inbounds [1 x i8*], [1 x i8*]* %5, i64 0, i64 0, !dbg !107
  %7 = load i8*, i8** %6, align 8, !dbg !107
  %8 = bitcast i8* %7 to i32*, !dbg !107
  %9 = getelementptr inbounds [1 x i8*], [1 x i8*]* %3, i64 0, i64 0, !dbg !107
  %10 = load i8*, i8** %9, align 8, !dbg !107
  %11 = bitcast i8* %10 to i32*, !dbg !107
  %12 = load i32, i32* %11, align 4, !dbg !108, !tbaa !17
  %13 = load i32, i32* %8, align 4, !dbg !108, !tbaa !17
  %add = add nsw i32 %12, %13, !dbg !109
  store i32 %add, i32* %11, align 4, !dbg !109, !tbaa !17
  ret void, !dbg !108
}

declare dso_local i32 @__kmpc_reduce_nowait(%struct.ident_t*, i32, i32, i64, i8*, void (i8*, i8*)*, [8 x i32]*)

declare dso_local void @__kmpc_end_reduce_nowait(%struct.ident_t*, i32, [8 x i32]*)

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i64 %.previous.lb., i64 %.previous.ub., i32* dereferenceable(4) %var) #1 !dbg !110 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %.previous.lb..addr = alloca i64, align 8
  %.previous.ub..addr = alloca i64, align 8
  %var.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !29
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !112, metadata !DIExpression()), !dbg !117
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !29
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !113, metadata !DIExpression()), !dbg !117
  store i64 %.previous.lb., i64* %.previous.lb..addr, align 8, !tbaa !85
  call void @llvm.dbg.declare(metadata i64* %.previous.lb..addr, metadata !114, metadata !DIExpression()), !dbg !117
  store i64 %.previous.ub., i64* %.previous.ub..addr, align 8, !tbaa !85
  call void @llvm.dbg.declare(metadata i64* %.previous.ub..addr, metadata !115, metadata !DIExpression()), !dbg !117
  store i32* %var, i32** %var.addr, align 8, !tbaa !29
  call void @llvm.dbg.declare(metadata i32** %var.addr, metadata !116, metadata !DIExpression()), !dbg !117
  %0 = load i32*, i32** %var.addr, align 8, !dbg !118, !tbaa !29
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !118, !tbaa !29
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !118, !tbaa !29
  %3 = load i64, i64* %.previous.lb..addr, align 8, !dbg !118, !tbaa !85
  %4 = load i64, i64* %.previous.ub..addr, align 8, !dbg !118, !tbaa !85
  %5 = load i32*, i32** %var.addr, align 8, !dbg !118, !tbaa !29
  call void @.omp_outlined._debug__.1(i32* %1, i32* %2, i64 %3, i64 %4, i32* %5) #5, !dbg !118
  ret void, !dbg !118
}

declare !callback !119 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp.reduction.reduction_func.2(i8* %0, i8* %1) #1 !dbg !121 {
entry:
  %.addr = alloca i8*, align 8
  %.addr1 = alloca i8*, align 8
  store i8* %0, i8** %.addr, align 8, !tbaa !29
  call void @llvm.dbg.declare(metadata i8** %.addr, metadata !123, metadata !DIExpression()), !dbg !125
  store i8* %1, i8** %.addr1, align 8, !tbaa !29
  call void @llvm.dbg.declare(metadata i8** %.addr1, metadata !124, metadata !DIExpression()), !dbg !125
  %2 = load i8*, i8** %.addr, align 8, !dbg !126
  %3 = bitcast i8* %2 to [1 x i8*]*, !dbg !126
  %4 = load i8*, i8** %.addr1, align 8, !dbg !126
  %5 = bitcast i8* %4 to [1 x i8*]*, !dbg !126
  %6 = getelementptr inbounds [1 x i8*], [1 x i8*]* %5, i64 0, i64 0, !dbg !126
  %7 = load i8*, i8** %6, align 8, !dbg !126
  %8 = bitcast i8* %7 to i32*, !dbg !126
  %9 = getelementptr inbounds [1 x i8*], [1 x i8*]* %3, i64 0, i64 0, !dbg !126
  %10 = load i8*, i8** %9, align 8, !dbg !126
  %11 = bitcast i8* %10 to i32*, !dbg !126
  %12 = load i32, i32* %11, align 4, !dbg !127, !tbaa !17
  %13 = load i32, i32* %8, align 4, !dbg !127, !tbaa !17
  %add = add nsw i32 %12, %13, !dbg !128
  store i32 %add, i32* %11, align 4, !dbg !128, !tbaa !17
  ret void, !dbg !127
}

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined..3(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %var) #1 !dbg !129 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %var.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !29
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !131, metadata !DIExpression()), !dbg !134
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !29
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !132, metadata !DIExpression()), !dbg !134
  store i32* %var, i32** %var.addr, align 8, !tbaa !29
  call void @llvm.dbg.declare(metadata i32** %var.addr, metadata !133, metadata !DIExpression()), !dbg !134
  %0 = load i32*, i32** %var.addr, align 8, !dbg !135, !tbaa !29
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !135, !tbaa !29
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !135, !tbaa !29
  %3 = load i32*, i32** %var.addr, align 8, !dbg !135, !tbaa !29
  call void @.omp_outlined._debug__(i32* %1, i32* %2, i32* %3) #5, !dbg !135
  ret void, !dbg !135
}

declare !callback !119 dso_local void @__kmpc_fork_teams(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

; Function Attrs: norecurse nounwind uwtable
define internal void @__omp_offloading_1030a_2160953_main_l22(i32* dereferenceable(4) %var) #1 !dbg !136 {
entry:
  %var.addr = alloca i32*, align 8
  store i32* %var, i32** %var.addr, align 8, !tbaa !29
  call void @llvm.dbg.declare(metadata i32** %var.addr, metadata !138, metadata !DIExpression()), !dbg !139
  %0 = load i32*, i32** %var.addr, align 8, !dbg !140, !tbaa !29
  %1 = load i32*, i32** %var.addr, align 8, !dbg !140, !tbaa !29
  call void @__omp_offloading_1030a_2160953_main_l22_debug__(i32* %1) #5, !dbg !140
  ret void, !dbg !140
}

declare dso_local i32 @printf(i8*, ...) #4

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!7, !8, !9}
!llvm.ident = !{!10}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "var", scope: !2, file: !3, line: 19, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "integration/dataracebench/DRB145-atomiccritical-orig-gpu-no.c", directory: "/home/brad/Code/OpenRace/tests/data")
!4 = !{}
!5 = !{!0}
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !{i32 7, !"Dwarf Version", i32 4}
!8 = !{i32 2, !"Debug Info Version", i32 3}
!9 = !{i32 1, !"wchar_size", i32 4}
!10 = !{!"clang version 10.0.1 "}
!11 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 21, type: !12, scopeLine: 21, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4)
!12 = !DISubroutineType(types: !13)
!13 = !{!6}
!14 = !DILocation(line: 22, column: 3, scope: !15)
!15 = distinct !DILexicalBlock(scope: !11, file: !3, line: 22, column: 3)
!16 = !DILocation(line: 28, column: 17, scope: !11)
!17 = !{!18, !18, i64 0}
!18 = !{!"int", !19, i64 0}
!19 = !{!"omnipotent char", !20, i64 0}
!20 = !{!"Simple C/C++ TBAA"}
!21 = !DILocation(line: 28, column: 3, scope: !11)
!22 = !DILocation(line: 29, column: 3, scope: !11)
!23 = distinct !DISubprogram(name: "__omp_offloading_1030a_2160953_main_l22_debug__", scope: !3, file: !3, line: 23, type: !24, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !27)
!24 = !DISubroutineType(types: !25)
!25 = !{null, !26}
!26 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !6, size: 64)
!27 = !{!28}
!28 = !DILocalVariable(name: "var", arg: 1, scope: !23, file: !3, line: 19, type: !26)
!29 = !{!30, !30, i64 0}
!30 = !{!"any pointer", !19, i64 0}
!31 = !DILocation(line: 19, column: 5, scope: !23)
!32 = !DILocation(line: 23, column: 3, scope: !23)
!33 = !{!34, !30, i64 16}
!34 = !{!"ident_t", !18, i64 0, !18, i64 4, !18, i64 8, !18, i64 12, !30, i64 16}
!35 = !DILocation(line: 23, column: 61, scope: !23)
!36 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !3, file: !3, line: 24, type: !37, scopeLine: 24, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !43)
!37 = !DISubroutineType(types: !38)
!38 = !{null, !39, !39, !26}
!39 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !40)
!40 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !41)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!43 = !{!44, !45, !46, !47, !48, !49, !50, !51, !52, !53}
!44 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !36, type: !39, flags: DIFlagArtificial)
!45 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !36, type: !39, flags: DIFlagArtificial)
!46 = !DILocalVariable(name: "var", arg: 3, scope: !36, file: !3, line: 19, type: !26)
!47 = !DILocalVariable(name: "var", scope: !36, type: !6, flags: DIFlagArtificial)
!48 = !DILocalVariable(name: ".omp.iv", scope: !36, type: !6, flags: DIFlagArtificial)
!49 = !DILocalVariable(name: ".omp.comb.lb", scope: !36, type: !6, flags: DIFlagArtificial)
!50 = !DILocalVariable(name: ".omp.comb.ub", scope: !36, type: !6, flags: DIFlagArtificial)
!51 = !DILocalVariable(name: ".omp.stride", scope: !36, type: !6, flags: DIFlagArtificial)
!52 = !DILocalVariable(name: ".omp.is_last", scope: !36, type: !6, flags: DIFlagArtificial)
!53 = !DILocalVariable(name: "i", scope: !36, type: !6, flags: DIFlagArtificial)
!54 = !DILocation(line: 0, scope: !36)
!55 = !DILocation(line: 19, column: 5, scope: !36)
!56 = !DILocation(line: 24, column: 3, scope: !36)
!57 = !DILocation(line: 23, column: 57, scope: !36)
!58 = !DILocation(line: 24, column: 8, scope: !36)
!59 = !DILocation(line: 23, column: 3, scope: !36)
!60 = !DILocation(line: 23, column: 61, scope: !61)
!61 = distinct !DILexicalBlock(scope: !36, file: !3, line: 23, column: 3)
!62 = distinct !{!62, !59, !63}
!63 = !DILocation(line: 23, column: 61, scope: !36)
!64 = !DILocation(line: 23, column: 55, scope: !36)
!65 = !DILocation(line: 26, column: 3, scope: !36)
!66 = distinct !DISubprogram(name: ".omp_outlined._debug__.1", scope: !3, file: !3, line: 24, type: !67, scopeLine: 24, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !71)
!67 = !DISubroutineType(types: !68)
!68 = !{null, !39, !39, !69, !69, !26}
!69 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !70)
!70 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!71 = !{!72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83}
!72 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !66, type: !39, flags: DIFlagArtificial)
!73 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !66, type: !39, flags: DIFlagArtificial)
!74 = !DILocalVariable(name: ".previous.lb.", arg: 3, scope: !66, type: !69, flags: DIFlagArtificial)
!75 = !DILocalVariable(name: ".previous.ub.", arg: 4, scope: !66, type: !69, flags: DIFlagArtificial)
!76 = !DILocalVariable(name: "var", arg: 5, scope: !66, file: !3, line: 19, type: !26)
!77 = !DILocalVariable(name: ".omp.iv", scope: !66, type: !6, flags: DIFlagArtificial)
!78 = !DILocalVariable(name: ".omp.lb", scope: !66, type: !6, flags: DIFlagArtificial)
!79 = !DILocalVariable(name: ".omp.ub", scope: !66, type: !6, flags: DIFlagArtificial)
!80 = !DILocalVariable(name: ".omp.stride", scope: !66, type: !6, flags: DIFlagArtificial)
!81 = !DILocalVariable(name: ".omp.is_last", scope: !66, type: !6, flags: DIFlagArtificial)
!82 = !DILocalVariable(name: "var", scope: !66, type: !6, flags: DIFlagArtificial)
!83 = !DILocalVariable(name: "i", scope: !66, type: !6, flags: DIFlagArtificial)
!84 = !DILocation(line: 0, scope: !66)
!85 = !{!86, !86, i64 0}
!86 = !{!"long", !19, i64 0}
!87 = !DILocation(line: 19, column: 5, scope: !66)
!88 = !DILocation(line: 24, column: 3, scope: !66)
!89 = !DILocation(line: 24, column: 8, scope: !66)
!90 = !DILocation(line: 23, column: 57, scope: !66)
!91 = !DILocation(line: 24, column: 22, scope: !66)
!92 = !DILocation(line: 25, column: 8, scope: !93)
!93 = distinct !DILexicalBlock(scope: !66, file: !3, line: 24, column: 26)
!94 = !DILocation(line: 26, column: 3, scope: !93)
!95 = !DILocation(line: 23, column: 3, scope: !66)
!96 = distinct !{!96, !95, !97}
!97 = !DILocation(line: 23, column: 61, scope: !66)
!98 = !DILocation(line: 23, column: 55, scope: !66)
!99 = !DILocation(line: 26, column: 3, scope: !66)
!100 = distinct !DISubprogram(linkageName: ".omp.reduction.reduction_func", scope: !3, file: !3, line: 23, type: !101, scopeLine: 23, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !102)
!101 = !DISubroutineType(types: !4)
!102 = !{!103, !105}
!103 = !DILocalVariable(arg: 1, scope: !100, type: !104, flags: DIFlagArtificial)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!105 = !DILocalVariable(arg: 2, scope: !100, type: !104, flags: DIFlagArtificial)
!106 = !DILocation(line: 0, scope: !100)
!107 = !DILocation(line: 23, column: 61, scope: !100)
!108 = !DILocation(line: 23, column: 57, scope: !100)
!109 = !DILocation(line: 23, column: 55, scope: !100)
!110 = distinct !DISubprogram(name: ".omp_outlined.", scope: !3, file: !3, line: 24, type: !67, scopeLine: 24, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !111)
!111 = !{!112, !113, !114, !115, !116}
!112 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !110, type: !39, flags: DIFlagArtificial)
!113 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !110, type: !39, flags: DIFlagArtificial)
!114 = !DILocalVariable(name: ".previous.lb.", arg: 3, scope: !110, type: !69, flags: DIFlagArtificial)
!115 = !DILocalVariable(name: ".previous.ub.", arg: 4, scope: !110, type: !69, flags: DIFlagArtificial)
!116 = !DILocalVariable(name: "var", arg: 5, scope: !110, type: !26, flags: DIFlagArtificial)
!117 = !DILocation(line: 0, scope: !110)
!118 = !DILocation(line: 24, column: 3, scope: !110)
!119 = !{!120}
!120 = !{i64 2, i64 -1, i64 -1, i1 true}
!121 = distinct !DISubprogram(linkageName: ".omp.reduction.reduction_func.2", scope: !3, file: !3, line: 23, type: !101, scopeLine: 23, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !122)
!122 = !{!123, !124}
!123 = !DILocalVariable(arg: 1, scope: !121, type: !104, flags: DIFlagArtificial)
!124 = !DILocalVariable(arg: 2, scope: !121, type: !104, flags: DIFlagArtificial)
!125 = !DILocation(line: 0, scope: !121)
!126 = !DILocation(line: 23, column: 61, scope: !121)
!127 = !DILocation(line: 23, column: 57, scope: !121)
!128 = !DILocation(line: 23, column: 55, scope: !121)
!129 = distinct !DISubprogram(name: ".omp_outlined..3", scope: !3, file: !3, line: 24, type: !37, scopeLine: 24, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !130)
!130 = !{!131, !132, !133}
!131 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !129, type: !39, flags: DIFlagArtificial)
!132 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !129, type: !39, flags: DIFlagArtificial)
!133 = !DILocalVariable(name: "var", arg: 3, scope: !129, type: !26, flags: DIFlagArtificial)
!134 = !DILocation(line: 0, scope: !129)
!135 = !DILocation(line: 24, column: 3, scope: !129)
!136 = distinct !DISubprogram(name: "__omp_offloading_1030a_2160953_main_l22", scope: !3, file: !3, line: 23, type: !24, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !137)
!137 = !{!138}
!138 = !DILocalVariable(name: "var", arg: 1, scope: !136, type: !26, flags: DIFlagArtificial)
!139 = !DILocation(line: 0, scope: !136)
!140 = !DILocation(line: 23, column: 3, scope: !136)
