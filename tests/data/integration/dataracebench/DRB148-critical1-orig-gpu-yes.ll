; ModuleID = 'integration/dataracebench/DRB148-critical1-orig-gpu-yes.c'
source_filename = "integration/dataracebench/DRB148-critical1-orig-gpu-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 2050, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [71 x i8] c";integration/dataracebench/DRB148-critical1-orig-gpu-yes.c;main;28;3;;\00", align 1
@2 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@3 = private unnamed_addr constant [71 x i8] c";integration/dataracebench/DRB148-critical1-orig-gpu-yes.c;main;30;5;;\00", align 1
@.gomp_critical_user_addlock.var = common global [8 x i32] zeroinitializer
@4 = private unnamed_addr constant [71 x i8] c";integration/dataracebench/DRB148-critical1-orig-gpu-yes.c;main;33;5;;\00", align 1
@.gomp_critical_user_sublock.var = common global [8 x i32] zeroinitializer
@5 = private unnamed_addr constant [72 x i8] c";integration/dataracebench/DRB148-critical1-orig-gpu-yes.c;main;28;44;;\00", align 1
@6 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@var = dso_local global i32 0, align 4, !dbg !0
@.str.3 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main() #0 !dbg !11 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @__omp_offloading_1030a_2160956_main_l27(i32* @var) #5, !dbg !14
  %0 = load i32, i32* @var, align 4, !dbg !16, !tbaa !17
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %0), !dbg !21
  ret i32 0, !dbg !22
}

; Function Attrs: norecurse nounwind uwtable
define internal void @__omp_offloading_1030a_2160956_main_l27_debug__(i32* dereferenceable(4) %var) #1 !dbg !23 {
entry:
  %var.addr = alloca i32*, align 8
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %var, i32** %var.addr, align 8, !tbaa !29
  call void @llvm.dbg.declare(metadata i32** %var.addr, metadata !28, metadata !DIExpression()), !dbg !31
  %2 = load i32*, i32** %var.addr, align 8, !dbg !32, !tbaa !29
  %3 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !32
  store i8* getelementptr inbounds ([71 x i8], [71 x i8]* @1, i32 0, i32 0), i8** %3, align 8, !dbg !32, !tbaa !33
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_teams(%struct.ident_t* %.kmpc_loc.addr, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*)* @.omp_outlined..2 to void (i32*, i32*, ...)*), i32* %2), !dbg !32
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
  %.omp.iv = alloca i32, align 4
  %tmp = alloca i32, align 4
  %.omp.comb.lb = alloca i32, align 4
  %.omp.comb.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %i = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !29
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !44, metadata !DIExpression()), !dbg !53
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !29
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !45, metadata !DIExpression()), !dbg !53
  store i32* %var, i32** %var.addr, align 8, !tbaa !29
  call void @llvm.dbg.declare(metadata i32** %var.addr, metadata !46, metadata !DIExpression()), !dbg !54
  %2 = load i32*, i32** %var.addr, align 8, !dbg !55, !tbaa !29
  %3 = bitcast i32* %.omp.iv to i8*, !dbg !55
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #5, !dbg !55
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !47, metadata !DIExpression()), !dbg !53
  %4 = bitcast i32* %.omp.comb.lb to i8*, !dbg !55
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #5, !dbg !55
  call void @llvm.dbg.declare(metadata i32* %.omp.comb.lb, metadata !48, metadata !DIExpression()), !dbg !53
  store i32 0, i32* %.omp.comb.lb, align 4, !dbg !56, !tbaa !17
  %5 = bitcast i32* %.omp.comb.ub to i8*, !dbg !55
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #5, !dbg !55
  call void @llvm.dbg.declare(metadata i32* %.omp.comb.ub, metadata !49, metadata !DIExpression()), !dbg !53
  store i32 99, i32* %.omp.comb.ub, align 4, !dbg !56, !tbaa !17
  %6 = bitcast i32* %.omp.stride to i8*, !dbg !55
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #5, !dbg !55
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !50, metadata !DIExpression()), !dbg !53
  store i32 1, i32* %.omp.stride, align 4, !dbg !56, !tbaa !17
  %7 = bitcast i32* %.omp.is_last to i8*, !dbg !55
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #5, !dbg !55
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !51, metadata !DIExpression()), !dbg !53
  store i32 0, i32* %.omp.is_last, align 4, !dbg !56, !tbaa !17
  %8 = bitcast i32* %i to i8*, !dbg !55
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #5, !dbg !55
  call void @llvm.dbg.declare(metadata i32* %i, metadata !52, metadata !DIExpression()), !dbg !53
  %9 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !55
  store i8* getelementptr inbounds ([71 x i8], [71 x i8]* @1, i32 0, i32 0), i8** %9, align 8, !dbg !55, !tbaa !33
  %10 = load i32*, i32** %.global_tid..addr, align 8, !dbg !55
  %11 = load i32, i32* %10, align 4, !dbg !55, !tbaa !17
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %11, i32 92, i32* %.omp.is_last, i32* %.omp.comb.lb, i32* %.omp.comb.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !55
  %12 = load i32, i32* %.omp.comb.ub, align 4, !dbg !56, !tbaa !17
  %cmp = icmp sgt i32 %12, 99, !dbg !56
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !56

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !56

cond.false:                                       ; preds = %entry
  %13 = load i32, i32* %.omp.comb.ub, align 4, !dbg !56, !tbaa !17
  br label %cond.end, !dbg !56

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 99, %cond.true ], [ %13, %cond.false ], !dbg !56
  store i32 %cond, i32* %.omp.comb.ub, align 4, !dbg !56, !tbaa !17
  %14 = load i32, i32* %.omp.comb.lb, align 4, !dbg !56, !tbaa !17
  store i32 %14, i32* %.omp.iv, align 4, !dbg !56, !tbaa !17
  br label %omp.inner.for.cond, !dbg !55

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %15 = load i32, i32* %.omp.iv, align 4, !dbg !56, !tbaa !17
  %16 = load i32, i32* %.omp.comb.ub, align 4, !dbg !56, !tbaa !17
  %cmp1 = icmp sle i32 %15, %16, !dbg !55
  br i1 %cmp1, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !55

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !55

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %17 = load i32, i32* %.omp.comb.lb, align 4, !dbg !57
  %18 = zext i32 %17 to i64, !dbg !57
  %19 = load i32, i32* %.omp.comb.ub, align 4, !dbg !57
  %20 = zext i32 %19 to i64, !dbg !57
  %21 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !57
  store i8* getelementptr inbounds ([71 x i8], [71 x i8]* @1, i32 0, i32 0), i8** %21, align 8, !dbg !57, !tbaa !33
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i64, i64, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i64 %18, i64 %20, i32* %2), !dbg !57
  br label %omp.inner.for.inc, !dbg !58

omp.inner.for.inc:                                ; preds = %omp.inner.for.body
  %22 = load i32, i32* %.omp.iv, align 4, !dbg !56, !tbaa !17
  %23 = load i32, i32* %.omp.stride, align 4, !dbg !56, !tbaa !17
  %add = add nsw i32 %22, %23, !dbg !55
  store i32 %add, i32* %.omp.iv, align 4, !dbg !55, !tbaa !17
  br label %omp.inner.for.cond, !dbg !58, !llvm.loop !60

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !58

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %24 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !58
  store i8* getelementptr inbounds ([71 x i8], [71 x i8]* @1, i32 0, i32 0), i8** %24, align 8, !dbg !58, !tbaa !33
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %11), !dbg !58
  %25 = bitcast i32* %i to i8*, !dbg !58
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %25) #5, !dbg !58
  %26 = bitcast i32* %.omp.is_last to i8*, !dbg !58
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %26) #5, !dbg !58
  %27 = bitcast i32* %.omp.stride to i8*, !dbg !58
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %27) #5, !dbg !58
  %28 = bitcast i32* %.omp.comb.ub to i8*, !dbg !58
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %28) #5, !dbg !58
  %29 = bitcast i32* %.omp.comb.lb to i8*, !dbg !58
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %29) #5, !dbg !58
  %30 = bitcast i32* %.omp.iv to i8*, !dbg !58
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %30) #5, !dbg !58
  ret void, !dbg !62
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__.1(i32* noalias %.global_tid., i32* noalias %.bound_tid., i64 %.previous.lb., i64 %.previous.ub., i32* dereferenceable(4) %var) #1 !dbg !63 {
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
  %i = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !29
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !69, metadata !DIExpression()), !dbg !80
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !29
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !70, metadata !DIExpression()), !dbg !80
  store i64 %.previous.lb., i64* %.previous.lb..addr, align 8, !tbaa !81
  call void @llvm.dbg.declare(metadata i64* %.previous.lb..addr, metadata !71, metadata !DIExpression()), !dbg !80
  store i64 %.previous.ub., i64* %.previous.ub..addr, align 8, !tbaa !81
  call void @llvm.dbg.declare(metadata i64* %.previous.ub..addr, metadata !72, metadata !DIExpression()), !dbg !80
  store i32* %var, i32** %var.addr, align 8, !tbaa !29
  call void @llvm.dbg.declare(metadata i32** %var.addr, metadata !73, metadata !DIExpression()), !dbg !83
  %2 = load i32*, i32** %var.addr, align 8, !dbg !84, !tbaa !29
  %3 = bitcast i32* %.omp.iv to i8*, !dbg !84
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #5, !dbg !84
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !74, metadata !DIExpression()), !dbg !80
  %4 = bitcast i32* %.omp.lb to i8*, !dbg !84
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #5, !dbg !84
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !75, metadata !DIExpression()), !dbg !80
  store i32 0, i32* %.omp.lb, align 4, !dbg !85, !tbaa !17
  %5 = bitcast i32* %.omp.ub to i8*, !dbg !84
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #5, !dbg !84
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !76, metadata !DIExpression()), !dbg !80
  store i32 99, i32* %.omp.ub, align 4, !dbg !85, !tbaa !17
  %6 = load i64, i64* %.previous.lb..addr, align 8, !dbg !84, !tbaa !81
  %conv = trunc i64 %6 to i32, !dbg !84
  %7 = load i64, i64* %.previous.ub..addr, align 8, !dbg !84, !tbaa !81
  %conv1 = trunc i64 %7 to i32, !dbg !84
  store i32 %conv, i32* %.omp.lb, align 4, !dbg !84, !tbaa !17
  store i32 %conv1, i32* %.omp.ub, align 4, !dbg !84, !tbaa !17
  %8 = bitcast i32* %.omp.stride to i8*, !dbg !84
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #5, !dbg !84
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !77, metadata !DIExpression()), !dbg !80
  store i32 1, i32* %.omp.stride, align 4, !dbg !85, !tbaa !17
  %9 = bitcast i32* %.omp.is_last to i8*, !dbg !84
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #5, !dbg !84
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !78, metadata !DIExpression()), !dbg !80
  store i32 0, i32* %.omp.is_last, align 4, !dbg !85, !tbaa !17
  %10 = bitcast i32* %i to i8*, !dbg !84
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #5, !dbg !84
  call void @llvm.dbg.declare(metadata i32* %i, metadata !79, metadata !DIExpression()), !dbg !80
  %11 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !84
  store i8* getelementptr inbounds ([71 x i8], [71 x i8]* @1, i32 0, i32 0), i8** %11, align 8, !dbg !84, !tbaa !33
  %12 = load i32*, i32** %.global_tid..addr, align 8, !dbg !84
  %13 = load i32, i32* %12, align 4, !dbg !84, !tbaa !17
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %13, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !84
  %14 = load i32, i32* %.omp.ub, align 4, !dbg !85, !tbaa !17
  %cmp = icmp sgt i32 %14, 99, !dbg !85
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !85

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !85

cond.false:                                       ; preds = %entry
  %15 = load i32, i32* %.omp.ub, align 4, !dbg !85, !tbaa !17
  br label %cond.end, !dbg !85

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 99, %cond.true ], [ %15, %cond.false ], !dbg !85
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !85, !tbaa !17
  %16 = load i32, i32* %.omp.lb, align 4, !dbg !85, !tbaa !17
  store i32 %16, i32* %.omp.iv, align 4, !dbg !85, !tbaa !17
  br label %omp.inner.for.cond, !dbg !84

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %17 = load i32, i32* %.omp.iv, align 4, !dbg !85, !tbaa !17
  %18 = load i32, i32* %.omp.ub, align 4, !dbg !85, !tbaa !17
  %cmp3 = icmp sle i32 %17, %18, !dbg !84
  br i1 %cmp3, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !84

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !84

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %19 = load i32, i32* %.omp.iv, align 4, !dbg !85, !tbaa !17
  %mul = mul nsw i32 %19, 1, !dbg !86
  %add = add nsw i32 0, %mul, !dbg !86
  store i32 %add, i32* %i, align 4, !dbg !86, !tbaa !17
  %20 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !87
  store i8* getelementptr inbounds ([71 x i8], [71 x i8]* @3, i32 0, i32 0), i8** %20, align 8, !dbg !87, !tbaa !33
  call void @__kmpc_critical(%struct.ident_t* %.kmpc_loc.addr, i32 %13, [8 x i32]* @.gomp_critical_user_addlock.var), !dbg !87
  %21 = load i32, i32* %2, align 4, !dbg !89, !tbaa !17
  %inc = add nsw i32 %21, 1, !dbg !89
  store i32 %inc, i32* %2, align 4, !dbg !89, !tbaa !17
  call void @__kmpc_end_critical(%struct.ident_t* %.kmpc_loc.addr, i32 %13, [8 x i32]* @.gomp_critical_user_addlock.var), !dbg !91
  %22 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !92
  store i8* getelementptr inbounds ([71 x i8], [71 x i8]* @4, i32 0, i32 0), i8** %22, align 8, !dbg !92, !tbaa !33
  call void @__kmpc_critical(%struct.ident_t* %.kmpc_loc.addr, i32 %13, [8 x i32]* @.gomp_critical_user_sublock.var), !dbg !92
  %23 = load i32, i32* %2, align 4, !dbg !93, !tbaa !17
  %sub = sub nsw i32 %23, 2, !dbg !93
  store i32 %sub, i32* %2, align 4, !dbg !93, !tbaa !17
  call void @__kmpc_end_critical(%struct.ident_t* %.kmpc_loc.addr, i32 %13, [8 x i32]* @.gomp_critical_user_sublock.var), !dbg !95
  br label %omp.body.continue, !dbg !96

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !97

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %24 = load i32, i32* %.omp.iv, align 4, !dbg !85, !tbaa !17
  %add5 = add nsw i32 %24, 1, !dbg !84
  store i32 %add5, i32* %.omp.iv, align 4, !dbg !84, !tbaa !17
  br label %omp.inner.for.cond, !dbg !97, !llvm.loop !98

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !97

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %25 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !97
  store i8* getelementptr inbounds ([72 x i8], [72 x i8]* @5, i32 0, i32 0), i8** %25, align 8, !dbg !97, !tbaa !33
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %13), !dbg !97
  %26 = bitcast i32* %i to i8*, !dbg !97
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %26) #5, !dbg !97
  %27 = bitcast i32* %.omp.is_last to i8*, !dbg !97
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %27) #5, !dbg !97
  %28 = bitcast i32* %.omp.stride to i8*, !dbg !97
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %28) #5, !dbg !97
  %29 = bitcast i32* %.omp.ub to i8*, !dbg !97
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %29) #5, !dbg !97
  %30 = bitcast i32* %.omp.lb to i8*, !dbg !97
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %30) #5, !dbg !97
  %31 = bitcast i32* %.omp.iv to i8*, !dbg !97
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %31) #5, !dbg !97
  ret void, !dbg !100
}

declare dso_local void @__kmpc_end_critical(%struct.ident_t*, i32, [8 x i32]*)

declare dso_local void @__kmpc_critical(%struct.ident_t*, i32, [8 x i32]*)

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i64 %.previous.lb., i64 %.previous.ub., i32* dereferenceable(4) %var) #1 !dbg !101 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %.previous.lb..addr = alloca i64, align 8
  %.previous.ub..addr = alloca i64, align 8
  %var.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !29
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !103, metadata !DIExpression()), !dbg !108
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !29
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !104, metadata !DIExpression()), !dbg !108
  store i64 %.previous.lb., i64* %.previous.lb..addr, align 8, !tbaa !81
  call void @llvm.dbg.declare(metadata i64* %.previous.lb..addr, metadata !105, metadata !DIExpression()), !dbg !108
  store i64 %.previous.ub., i64* %.previous.ub..addr, align 8, !tbaa !81
  call void @llvm.dbg.declare(metadata i64* %.previous.ub..addr, metadata !106, metadata !DIExpression()), !dbg !108
  store i32* %var, i32** %var.addr, align 8, !tbaa !29
  call void @llvm.dbg.declare(metadata i32** %var.addr, metadata !107, metadata !DIExpression()), !dbg !108
  %0 = load i32*, i32** %var.addr, align 8, !dbg !109, !tbaa !29
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !109, !tbaa !29
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !109, !tbaa !29
  %3 = load i64, i64* %.previous.lb..addr, align 8, !dbg !109, !tbaa !81
  %4 = load i64, i64* %.previous.ub..addr, align 8, !dbg !109, !tbaa !81
  %5 = load i32*, i32** %var.addr, align 8, !dbg !109, !tbaa !29
  call void @.omp_outlined._debug__.1(i32* %1, i32* %2, i64 %3, i64 %4, i32* %5) #5, !dbg !109
  ret void, !dbg !109
}

declare !callback !110 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined..2(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %var) #1 !dbg !112 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %var.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !29
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !114, metadata !DIExpression()), !dbg !117
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !29
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !115, metadata !DIExpression()), !dbg !117
  store i32* %var, i32** %var.addr, align 8, !tbaa !29
  call void @llvm.dbg.declare(metadata i32** %var.addr, metadata !116, metadata !DIExpression()), !dbg !117
  %0 = load i32*, i32** %var.addr, align 8, !dbg !118, !tbaa !29
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !118, !tbaa !29
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !118, !tbaa !29
  %3 = load i32*, i32** %var.addr, align 8, !dbg !118, !tbaa !29
  call void @.omp_outlined._debug__(i32* %1, i32* %2, i32* %3) #5, !dbg !118
  ret void, !dbg !118
}

declare !callback !110 dso_local void @__kmpc_fork_teams(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

; Function Attrs: norecurse nounwind uwtable
define internal void @__omp_offloading_1030a_2160956_main_l27(i32* dereferenceable(4) %var) #1 !dbg !119 {
entry:
  %var.addr = alloca i32*, align 8
  store i32* %var, i32** %var.addr, align 8, !tbaa !29
  call void @llvm.dbg.declare(metadata i32** %var.addr, metadata !121, metadata !DIExpression()), !dbg !122
  %0 = load i32*, i32** %var.addr, align 8, !dbg !123, !tbaa !29
  %1 = load i32*, i32** %var.addr, align 8, !dbg !123, !tbaa !29
  call void @__omp_offloading_1030a_2160956_main_l27_debug__(i32* %1) #5, !dbg !123
  ret void, !dbg !123
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
!1 = distinct !DIGlobalVariable(name: "var", scope: !2, file: !3, line: 23, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "integration/dataracebench/DRB148-critical1-orig-gpu-yes.c", directory: "/home/brad/Code/OpenRace/tests/data")
!4 = !{}
!5 = !{!0}
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !{i32 7, !"Dwarf Version", i32 4}
!8 = !{i32 2, !"Debug Info Version", i32 3}
!9 = !{i32 1, !"wchar_size", i32 4}
!10 = !{!"clang version 10.0.1 "}
!11 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 25, type: !12, scopeLine: 25, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4)
!12 = !DISubroutineType(types: !13)
!13 = !{!6}
!14 = !DILocation(line: 27, column: 3, scope: !15)
!15 = distinct !DILexicalBlock(scope: !11, file: !3, line: 27, column: 3)
!16 = !DILocation(line: 37, column: 17, scope: !11)
!17 = !{!18, !18, i64 0}
!18 = !{!"int", !19, i64 0}
!19 = !{!"omnipotent char", !20, i64 0}
!20 = !{!"Simple C/C++ TBAA"}
!21 = !DILocation(line: 37, column: 3, scope: !11)
!22 = !DILocation(line: 39, column: 3, scope: !11)
!23 = distinct !DISubprogram(name: "__omp_offloading_1030a_2160956_main_l27_debug__", scope: !3, file: !3, line: 28, type: !24, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !27)
!24 = !DISubroutineType(types: !25)
!25 = !{null, !26}
!26 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !6, size: 64)
!27 = !{!28}
!28 = !DILocalVariable(name: "var", arg: 1, scope: !23, file: !3, line: 23, type: !26)
!29 = !{!30, !30, i64 0}
!30 = !{!"any pointer", !19, i64 0}
!31 = !DILocation(line: 23, column: 5, scope: !23)
!32 = !DILocation(line: 28, column: 3, scope: !23)
!33 = !{!34, !30, i64 16}
!34 = !{!"ident_t", !18, i64 0, !18, i64 4, !18, i64 8, !18, i64 12, !30, i64 16}
!35 = !DILocation(line: 28, column: 44, scope: !23)
!36 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !3, file: !3, line: 29, type: !37, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !43)
!37 = !DISubroutineType(types: !38)
!38 = !{null, !39, !39, !26}
!39 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !40)
!40 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !41)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!43 = !{!44, !45, !46, !47, !48, !49, !50, !51, !52}
!44 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !36, type: !39, flags: DIFlagArtificial)
!45 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !36, type: !39, flags: DIFlagArtificial)
!46 = !DILocalVariable(name: "var", arg: 3, scope: !36, file: !3, line: 23, type: !26)
!47 = !DILocalVariable(name: ".omp.iv", scope: !36, type: !6, flags: DIFlagArtificial)
!48 = !DILocalVariable(name: ".omp.comb.lb", scope: !36, type: !6, flags: DIFlagArtificial)
!49 = !DILocalVariable(name: ".omp.comb.ub", scope: !36, type: !6, flags: DIFlagArtificial)
!50 = !DILocalVariable(name: ".omp.stride", scope: !36, type: !6, flags: DIFlagArtificial)
!51 = !DILocalVariable(name: ".omp.is_last", scope: !36, type: !6, flags: DIFlagArtificial)
!52 = !DILocalVariable(name: "i", scope: !36, type: !6, flags: DIFlagArtificial)
!53 = !DILocation(line: 0, scope: !36)
!54 = !DILocation(line: 23, column: 5, scope: !36)
!55 = !DILocation(line: 29, column: 3, scope: !36)
!56 = !DILocation(line: 29, column: 7, scope: !36)
!57 = !DILocation(line: 28, column: 3, scope: !36)
!58 = !DILocation(line: 28, column: 44, scope: !59)
!59 = distinct !DILexicalBlock(scope: !36, file: !3, line: 28, column: 3)
!60 = distinct !{!60, !57, !61}
!61 = !DILocation(line: 28, column: 44, scope: !36)
!62 = !DILocation(line: 35, column: 3, scope: !36)
!63 = distinct !DISubprogram(name: ".omp_outlined._debug__.1", scope: !3, file: !3, line: 29, type: !64, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !68)
!64 = !DISubroutineType(types: !65)
!65 = !{null, !39, !39, !66, !66, !26}
!66 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !67)
!67 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!68 = !{!69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79}
!69 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !63, type: !39, flags: DIFlagArtificial)
!70 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !63, type: !39, flags: DIFlagArtificial)
!71 = !DILocalVariable(name: ".previous.lb.", arg: 3, scope: !63, type: !66, flags: DIFlagArtificial)
!72 = !DILocalVariable(name: ".previous.ub.", arg: 4, scope: !63, type: !66, flags: DIFlagArtificial)
!73 = !DILocalVariable(name: "var", arg: 5, scope: !63, file: !3, line: 23, type: !26)
!74 = !DILocalVariable(name: ".omp.iv", scope: !63, type: !6, flags: DIFlagArtificial)
!75 = !DILocalVariable(name: ".omp.lb", scope: !63, type: !6, flags: DIFlagArtificial)
!76 = !DILocalVariable(name: ".omp.ub", scope: !63, type: !6, flags: DIFlagArtificial)
!77 = !DILocalVariable(name: ".omp.stride", scope: !63, type: !6, flags: DIFlagArtificial)
!78 = !DILocalVariable(name: ".omp.is_last", scope: !63, type: !6, flags: DIFlagArtificial)
!79 = !DILocalVariable(name: "i", scope: !63, type: !6, flags: DIFlagArtificial)
!80 = !DILocation(line: 0, scope: !63)
!81 = !{!82, !82, i64 0}
!82 = !{!"long", !19, i64 0}
!83 = !DILocation(line: 23, column: 5, scope: !63)
!84 = !DILocation(line: 29, column: 3, scope: !63)
!85 = !DILocation(line: 29, column: 7, scope: !63)
!86 = !DILocation(line: 29, column: 21, scope: !63)
!87 = !DILocation(line: 30, column: 5, scope: !88)
!88 = distinct !DILexicalBlock(scope: !63, file: !3, line: 29, column: 25)
!89 = !DILocation(line: 31, column: 8, scope: !90)
!90 = distinct !DILexicalBlock(scope: !88, file: !3, line: 30, column: 5)
!91 = !DILocation(line: 31, column: 5, scope: !90)
!92 = !DILocation(line: 33, column: 5, scope: !88)
!93 = !DILocation(line: 34, column: 9, scope: !94)
!94 = distinct !DILexicalBlock(scope: !88, file: !3, line: 33, column: 5)
!95 = !DILocation(line: 34, column: 5, scope: !94)
!96 = !DILocation(line: 35, column: 3, scope: !88)
!97 = !DILocation(line: 28, column: 3, scope: !63)
!98 = distinct !{!98, !97, !99}
!99 = !DILocation(line: 28, column: 44, scope: !63)
!100 = !DILocation(line: 35, column: 3, scope: !63)
!101 = distinct !DISubprogram(name: ".omp_outlined.", scope: !3, file: !3, line: 29, type: !64, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !102)
!102 = !{!103, !104, !105, !106, !107}
!103 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !101, type: !39, flags: DIFlagArtificial)
!104 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !101, type: !39, flags: DIFlagArtificial)
!105 = !DILocalVariable(name: ".previous.lb.", arg: 3, scope: !101, type: !66, flags: DIFlagArtificial)
!106 = !DILocalVariable(name: ".previous.ub.", arg: 4, scope: !101, type: !66, flags: DIFlagArtificial)
!107 = !DILocalVariable(name: "var", arg: 5, scope: !101, type: !26, flags: DIFlagArtificial)
!108 = !DILocation(line: 0, scope: !101)
!109 = !DILocation(line: 29, column: 3, scope: !101)
!110 = !{!111}
!111 = !{i64 2, i64 -1, i64 -1, i1 true}
!112 = distinct !DISubprogram(name: ".omp_outlined..2", scope: !3, file: !3, line: 29, type: !37, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !113)
!113 = !{!114, !115, !116}
!114 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !112, type: !39, flags: DIFlagArtificial)
!115 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !112, type: !39, flags: DIFlagArtificial)
!116 = !DILocalVariable(name: "var", arg: 3, scope: !112, type: !26, flags: DIFlagArtificial)
!117 = !DILocation(line: 0, scope: !112)
!118 = !DILocation(line: 29, column: 3, scope: !112)
!119 = distinct !DISubprogram(name: "__omp_offloading_1030a_2160956_main_l27", scope: !3, file: !3, line: 28, type: !24, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !120)
!120 = !{!121}
!121 = !DILocalVariable(name: "var", arg: 1, scope: !119, type: !26, flags: DIFlagArtificial)
!122 = !DILocation(line: 0, scope: !119)
!123 = !DILocation(line: 28, column: 3, scope: !119)
