; ModuleID = 'DRB145-atomiccritical-orig-gpu-no.c'
source_filename = "DRB145-atomiccritical-orig-gpu-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 2050, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [49 x i8] c";DRB145-atomiccritical-orig-gpu-no.c;main;23;3;;\00", align 1
@2 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@3 = private unnamed_addr constant [50 x i8] c";DRB145-atomiccritical-orig-gpu-no.c;main;23;61;;\00", align 1
@.gomp_critical_user_.reduction.var = common global [8 x i32] zeroinitializer
@4 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@var = dso_local global i32 0, align 4, !dbg !0
@.str.4 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !11 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @__omp_offloading_10307_2ec41aa_main_l22(i32* @var) #6, !dbg !14
  %0 = load i32, i32* @var, align 4, !dbg !16
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %0), !dbg !17
  ret i32 0, !dbg !18
}

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @__omp_offloading_10307_2ec41aa_main_l22_debug__(i32* dereferenceable(4) %var) #1 !dbg !19 {
entry:
  %var.addr = alloca i32*, align 8
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %var, i32** %var.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %var.addr, metadata !23, metadata !DIExpression()), !dbg !24
  %2 = load i32*, i32** %var.addr, align 8, !dbg !25
  %3 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !25
  store i8* getelementptr inbounds ([49 x i8], [49 x i8]* @1, i32 0, i32 0), i8** %3, align 8, !dbg !25
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_teams(%struct.ident_t* %.kmpc_loc.addr, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*)* @.omp_outlined..3 to void (i32*, i32*, ...)*), i32* %2), !dbg !25
  ret void, !dbg !26
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %var) #1 !dbg !27 {
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
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !34, metadata !DIExpression()), !dbg !35
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !36, metadata !DIExpression()), !dbg !35
  store i32* %var, i32** %var.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %var.addr, metadata !37, metadata !DIExpression()), !dbg !38
  %2 = load i32*, i32** %var.addr, align 8, !dbg !39
  call void @llvm.dbg.declare(metadata i32* %var1, metadata !40, metadata !DIExpression()), !dbg !35
  store i32 0, i32* %var1, align 4, !dbg !41
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !42, metadata !DIExpression()), !dbg !35
  call void @llvm.dbg.declare(metadata i32* %.omp.comb.lb, metadata !43, metadata !DIExpression()), !dbg !35
  store i32 0, i32* %.omp.comb.lb, align 4, !dbg !44
  call void @llvm.dbg.declare(metadata i32* %.omp.comb.ub, metadata !45, metadata !DIExpression()), !dbg !35
  store i32 99, i32* %.omp.comb.ub, align 4, !dbg !44
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !46, metadata !DIExpression()), !dbg !35
  store i32 1, i32* %.omp.stride, align 4, !dbg !44
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !47, metadata !DIExpression()), !dbg !35
  store i32 0, i32* %.omp.is_last, align 4, !dbg !44
  call void @llvm.dbg.declare(metadata i32* %i, metadata !48, metadata !DIExpression()), !dbg !35
  %3 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !39
  store i8* getelementptr inbounds ([49 x i8], [49 x i8]* @1, i32 0, i32 0), i8** %3, align 8, !dbg !39
  %4 = load i32*, i32** %.global_tid..addr, align 8, !dbg !39
  %5 = load i32, i32* %4, align 4, !dbg !39
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %5, i32 92, i32* %.omp.is_last, i32* %.omp.comb.lb, i32* %.omp.comb.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !39
  %6 = load i32, i32* %.omp.comb.ub, align 4, !dbg !44
  %cmp = icmp sgt i32 %6, 99, !dbg !44
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !44

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !44

cond.false:                                       ; preds = %entry
  %7 = load i32, i32* %.omp.comb.ub, align 4, !dbg !44
  br label %cond.end, !dbg !44

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 99, %cond.true ], [ %7, %cond.false ], !dbg !44
  store i32 %cond, i32* %.omp.comb.ub, align 4, !dbg !44
  %8 = load i32, i32* %.omp.comb.lb, align 4, !dbg !44
  store i32 %8, i32* %.omp.iv, align 4, !dbg !44
  br label %omp.inner.for.cond, !dbg !39

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %9 = load i32, i32* %.omp.iv, align 4, !dbg !44
  %10 = load i32, i32* %.omp.comb.ub, align 4, !dbg !44
  %cmp2 = icmp sle i32 %9, %10, !dbg !39
  br i1 %cmp2, label %omp.inner.for.body, label %omp.inner.for.end, !dbg !39

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %11 = load i32, i32* %.omp.comb.lb, align 4, !dbg !49
  %12 = zext i32 %11 to i64, !dbg !49
  %13 = load i32, i32* %.omp.comb.ub, align 4, !dbg !49
  %14 = zext i32 %13 to i64, !dbg !49
  %15 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !49
  store i8* getelementptr inbounds ([49 x i8], [49 x i8]* @1, i32 0, i32 0), i8** %15, align 8, !dbg !49
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i64, i64, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i64 %12, i64 %14, i32* %var1), !dbg !49
  br label %omp.inner.for.inc, !dbg !50

omp.inner.for.inc:                                ; preds = %omp.inner.for.body
  %16 = load i32, i32* %.omp.iv, align 4, !dbg !44
  %17 = load i32, i32* %.omp.stride, align 4, !dbg !44
  %add = add nsw i32 %16, %17, !dbg !39
  store i32 %add, i32* %.omp.iv, align 4, !dbg !39
  br label %omp.inner.for.cond, !dbg !50, !llvm.loop !52

omp.inner.for.end:                                ; preds = %omp.inner.for.cond
  br label %omp.loop.exit, !dbg !50

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %18 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !50
  store i8* getelementptr inbounds ([49 x i8], [49 x i8]* @1, i32 0, i32 0), i8** %18, align 8, !dbg !50
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %5), !dbg !50
  %19 = getelementptr inbounds [1 x i8*], [1 x i8*]* %.omp.reduction.red_list, i64 0, i64 0, !dbg !50
  %20 = bitcast i32* %var1 to i8*, !dbg !50
  store i8* %20, i8** %19, align 8, !dbg !50
  %21 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !50
  store i8* getelementptr inbounds ([50 x i8], [50 x i8]* @3, i32 0, i32 0), i8** %21, align 8, !dbg !50
  %22 = bitcast [1 x i8*]* %.omp.reduction.red_list to i8*, !dbg !50
  %23 = call i32 @__kmpc_reduce_nowait(%struct.ident_t* %.kmpc_loc.addr, i32 %5, i32 1, i64 8, i8* %22, void (i8*, i8*)* @.omp.reduction.reduction_func.2, [8 x i32]* @.gomp_critical_user_.reduction.var), !dbg !50
  switch i32 %23, label %.omp.reduction.default [
    i32 1, label %.omp.reduction.case1
    i32 2, label %.omp.reduction.case2
  ], !dbg !50

.omp.reduction.case1:                             ; preds = %omp.loop.exit
  %24 = load i32, i32* %2, align 4, !dbg !41
  %25 = load i32, i32* %var1, align 4, !dbg !41
  %add3 = add nsw i32 %24, %25, !dbg !54
  store i32 %add3, i32* %2, align 4, !dbg !54
  call void @__kmpc_end_reduce_nowait(%struct.ident_t* %.kmpc_loc.addr, i32 %5, [8 x i32]* @.gomp_critical_user_.reduction.var), !dbg !50
  br label %.omp.reduction.default, !dbg !50

.omp.reduction.case2:                             ; preds = %omp.loop.exit
  %26 = load i32, i32* %var1, align 4, !dbg !41
  %27 = atomicrmw add i32* %2, i32 %26 monotonic, !dbg !50
  br label %.omp.reduction.default, !dbg !50

.omp.reduction.default:                           ; preds = %.omp.reduction.case2, %.omp.reduction.case1, %omp.loop.exit
  ret void, !dbg !55
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined._debug__.1(i32* noalias %.global_tid., i32* noalias %.bound_tid., i64 %.previous.lb., i64 %.previous.ub., i32* dereferenceable(4) %var) #1 !dbg !56 {
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
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !61, metadata !DIExpression()), !dbg !62
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !63, metadata !DIExpression()), !dbg !62
  store i64 %.previous.lb., i64* %.previous.lb..addr, align 8
  call void @llvm.dbg.declare(metadata i64* %.previous.lb..addr, metadata !64, metadata !DIExpression()), !dbg !62
  store i64 %.previous.ub., i64* %.previous.ub..addr, align 8
  call void @llvm.dbg.declare(metadata i64* %.previous.ub..addr, metadata !65, metadata !DIExpression()), !dbg !62
  store i32* %var, i32** %var.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %var.addr, metadata !66, metadata !DIExpression()), !dbg !67
  %2 = load i32*, i32** %var.addr, align 8, !dbg !68
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !69, metadata !DIExpression()), !dbg !62
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !70, metadata !DIExpression()), !dbg !62
  store i32 0, i32* %.omp.lb, align 4, !dbg !71
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !72, metadata !DIExpression()), !dbg !62
  store i32 99, i32* %.omp.ub, align 4, !dbg !71
  %3 = load i64, i64* %.previous.lb..addr, align 8, !dbg !68
  %conv = trunc i64 %3 to i32, !dbg !68
  %4 = load i64, i64* %.previous.ub..addr, align 8, !dbg !68
  %conv1 = trunc i64 %4 to i32, !dbg !68
  store i32 %conv, i32* %.omp.lb, align 4, !dbg !68
  store i32 %conv1, i32* %.omp.ub, align 4, !dbg !68
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !73, metadata !DIExpression()), !dbg !62
  store i32 1, i32* %.omp.stride, align 4, !dbg !71
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !74, metadata !DIExpression()), !dbg !62
  store i32 0, i32* %.omp.is_last, align 4, !dbg !71
  call void @llvm.dbg.declare(metadata i32* %var2, metadata !75, metadata !DIExpression()), !dbg !62
  store i32 0, i32* %var2, align 4, !dbg !76
  call void @llvm.dbg.declare(metadata i32* %i, metadata !77, metadata !DIExpression()), !dbg !62
  %5 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !68
  store i8* getelementptr inbounds ([49 x i8], [49 x i8]* @1, i32 0, i32 0), i8** %5, align 8, !dbg !68
  %6 = load i32*, i32** %.global_tid..addr, align 8, !dbg !68
  %7 = load i32, i32* %6, align 4, !dbg !68
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %7, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !68
  %8 = load i32, i32* %.omp.ub, align 4, !dbg !71
  %cmp = icmp sgt i32 %8, 99, !dbg !71
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !71

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !71

cond.false:                                       ; preds = %entry
  %9 = load i32, i32* %.omp.ub, align 4, !dbg !71
  br label %cond.end, !dbg !71

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 99, %cond.true ], [ %9, %cond.false ], !dbg !71
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !71
  %10 = load i32, i32* %.omp.lb, align 4, !dbg !71
  store i32 %10, i32* %.omp.iv, align 4, !dbg !71
  br label %omp.inner.for.cond, !dbg !68

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %11 = load i32, i32* %.omp.iv, align 4, !dbg !71
  %12 = load i32, i32* %.omp.ub, align 4, !dbg !71
  %cmp4 = icmp sle i32 %11, %12, !dbg !68
  br i1 %cmp4, label %omp.inner.for.body, label %omp.inner.for.end, !dbg !68

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %13 = load i32, i32* %.omp.iv, align 4, !dbg !71
  %mul = mul nsw i32 %13, 1, !dbg !78
  %add = add nsw i32 0, %mul, !dbg !78
  store i32 %add, i32* %i, align 4, !dbg !78
  %14 = load i32, i32* %var2, align 4, !dbg !79
  %inc = add nsw i32 %14, 1, !dbg !79
  store i32 %inc, i32* %var2, align 4, !dbg !79
  br label %omp.body.continue, !dbg !81

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !82

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %15 = load i32, i32* %.omp.iv, align 4, !dbg !71
  %add6 = add nsw i32 %15, 1, !dbg !68
  store i32 %add6, i32* %.omp.iv, align 4, !dbg !68
  br label %omp.inner.for.cond, !dbg !82, !llvm.loop !83

omp.inner.for.end:                                ; preds = %omp.inner.for.cond
  br label %omp.loop.exit, !dbg !82

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %16 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !82
  store i8* getelementptr inbounds ([50 x i8], [50 x i8]* @3, i32 0, i32 0), i8** %16, align 8, !dbg !82
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %7), !dbg !82
  %17 = getelementptr inbounds [1 x i8*], [1 x i8*]* %.omp.reduction.red_list, i64 0, i64 0, !dbg !82
  %18 = bitcast i32* %var2 to i8*, !dbg !82
  store i8* %18, i8** %17, align 8, !dbg !82
  %19 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !82
  store i8* getelementptr inbounds ([50 x i8], [50 x i8]* @3, i32 0, i32 0), i8** %19, align 8, !dbg !82
  %20 = bitcast [1 x i8*]* %.omp.reduction.red_list to i8*, !dbg !82
  %21 = call i32 @__kmpc_reduce_nowait(%struct.ident_t* %.kmpc_loc.addr, i32 %7, i32 1, i64 8, i8* %20, void (i8*, i8*)* @.omp.reduction.reduction_func, [8 x i32]* @.gomp_critical_user_.reduction.var), !dbg !82
  switch i32 %21, label %.omp.reduction.default [
    i32 1, label %.omp.reduction.case1
    i32 2, label %.omp.reduction.case2
  ], !dbg !82

.omp.reduction.case1:                             ; preds = %omp.loop.exit
  %22 = load i32, i32* %2, align 4, !dbg !76
  %23 = load i32, i32* %var2, align 4, !dbg !76
  %add7 = add nsw i32 %22, %23, !dbg !85
  store i32 %add7, i32* %2, align 4, !dbg !85
  call void @__kmpc_end_reduce_nowait(%struct.ident_t* %.kmpc_loc.addr, i32 %7, [8 x i32]* @.gomp_critical_user_.reduction.var), !dbg !82
  br label %.omp.reduction.default, !dbg !82

.omp.reduction.case2:                             ; preds = %omp.loop.exit
  %24 = load i32, i32* %var2, align 4, !dbg !76
  %25 = atomicrmw add i32* %2, i32 %24 monotonic, !dbg !82
  br label %.omp.reduction.default, !dbg !82

.omp.reduction.default:                           ; preds = %.omp.reduction.case2, %.omp.reduction.case1, %omp.loop.exit
  ret void, !dbg !86
}

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: noinline norecurse nounwind uwtable
define internal void @.omp.reduction.reduction_func(i8* %0, i8* %1) #4 !dbg !87 {
entry:
  %.addr = alloca i8*, align 8
  %.addr1 = alloca i8*, align 8
  store i8* %0, i8** %.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %.addr, metadata !89, metadata !DIExpression()), !dbg !91
  store i8* %1, i8** %.addr1, align 8
  call void @llvm.dbg.declare(metadata i8** %.addr1, metadata !92, metadata !DIExpression()), !dbg !91
  %2 = load i8*, i8** %.addr, align 8, !dbg !93
  %3 = bitcast i8* %2 to [1 x i8*]*, !dbg !93
  %4 = load i8*, i8** %.addr1, align 8, !dbg !93
  %5 = bitcast i8* %4 to [1 x i8*]*, !dbg !93
  %6 = getelementptr inbounds [1 x i8*], [1 x i8*]* %5, i64 0, i64 0, !dbg !93
  %7 = load i8*, i8** %6, align 8, !dbg !93
  %8 = bitcast i8* %7 to i32*, !dbg !93
  %9 = getelementptr inbounds [1 x i8*], [1 x i8*]* %3, i64 0, i64 0, !dbg !93
  %10 = load i8*, i8** %9, align 8, !dbg !93
  %11 = bitcast i8* %10 to i32*, !dbg !93
  %12 = load i32, i32* %11, align 4, !dbg !94
  %13 = load i32, i32* %8, align 4, !dbg !94
  %add = add nsw i32 %12, %13, !dbg !95
  store i32 %add, i32* %11, align 4, !dbg !95
  ret void, !dbg !94
}

declare dso_local i32 @__kmpc_reduce_nowait(%struct.ident_t*, i32, i32, i64, i8*, void (i8*, i8*)*, [8 x i32]*)

declare dso_local void @__kmpc_end_reduce_nowait(%struct.ident_t*, i32, [8 x i32]*)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i64 %.previous.lb., i64 %.previous.ub., i32* dereferenceable(4) %var) #1 !dbg !96 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %.previous.lb..addr = alloca i64, align 8
  %.previous.ub..addr = alloca i64, align 8
  %var.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !97, metadata !DIExpression()), !dbg !98
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !99, metadata !DIExpression()), !dbg !98
  store i64 %.previous.lb., i64* %.previous.lb..addr, align 8
  call void @llvm.dbg.declare(metadata i64* %.previous.lb..addr, metadata !100, metadata !DIExpression()), !dbg !98
  store i64 %.previous.ub., i64* %.previous.ub..addr, align 8
  call void @llvm.dbg.declare(metadata i64* %.previous.ub..addr, metadata !101, metadata !DIExpression()), !dbg !98
  store i32* %var, i32** %var.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %var.addr, metadata !102, metadata !DIExpression()), !dbg !98
  %0 = load i32*, i32** %var.addr, align 8, !dbg !103
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !103
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !103
  %3 = load i64, i64* %.previous.lb..addr, align 8, !dbg !103
  %4 = load i64, i64* %.previous.ub..addr, align 8, !dbg !103
  %5 = load i32*, i32** %var.addr, align 8, !dbg !103
  call void @.omp_outlined._debug__.1(i32* %1, i32* %2, i64 %3, i64 %4, i32* %5) #6, !dbg !103
  ret void, !dbg !103
}

declare !callback !104 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

; Function Attrs: noinline norecurse nounwind uwtable
define internal void @.omp.reduction.reduction_func.2(i8* %0, i8* %1) #4 !dbg !106 {
entry:
  %.addr = alloca i8*, align 8
  %.addr1 = alloca i8*, align 8
  store i8* %0, i8** %.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %.addr, metadata !107, metadata !DIExpression()), !dbg !108
  store i8* %1, i8** %.addr1, align 8
  call void @llvm.dbg.declare(metadata i8** %.addr1, metadata !109, metadata !DIExpression()), !dbg !108
  %2 = load i8*, i8** %.addr, align 8, !dbg !110
  %3 = bitcast i8* %2 to [1 x i8*]*, !dbg !110
  %4 = load i8*, i8** %.addr1, align 8, !dbg !110
  %5 = bitcast i8* %4 to [1 x i8*]*, !dbg !110
  %6 = getelementptr inbounds [1 x i8*], [1 x i8*]* %5, i64 0, i64 0, !dbg !110
  %7 = load i8*, i8** %6, align 8, !dbg !110
  %8 = bitcast i8* %7 to i32*, !dbg !110
  %9 = getelementptr inbounds [1 x i8*], [1 x i8*]* %3, i64 0, i64 0, !dbg !110
  %10 = load i8*, i8** %9, align 8, !dbg !110
  %11 = bitcast i8* %10 to i32*, !dbg !110
  %12 = load i32, i32* %11, align 4, !dbg !111
  %13 = load i32, i32* %8, align 4, !dbg !111
  %add = add nsw i32 %12, %13, !dbg !112
  store i32 %add, i32* %11, align 4, !dbg !112
  ret void, !dbg !111
}

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined..3(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %var) #1 !dbg !113 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %var.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !114, metadata !DIExpression()), !dbg !115
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !116, metadata !DIExpression()), !dbg !115
  store i32* %var, i32** %var.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %var.addr, metadata !117, metadata !DIExpression()), !dbg !115
  %0 = load i32*, i32** %var.addr, align 8, !dbg !118
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !118
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !118
  %3 = load i32*, i32** %var.addr, align 8, !dbg !118
  call void @.omp_outlined._debug__(i32* %1, i32* %2, i32* %3) #6, !dbg !118
  ret void, !dbg !118
}

declare !callback !104 dso_local void @__kmpc_fork_teams(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @__omp_offloading_10307_2ec41aa_main_l22(i32* dereferenceable(4) %var) #1 !dbg !119 {
entry:
  %var.addr = alloca i32*, align 8
  store i32* %var, i32** %var.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %var.addr, metadata !120, metadata !DIExpression()), !dbg !121
  %0 = load i32*, i32** %var.addr, align 8, !dbg !122
  %1 = load i32*, i32** %var.addr, align 8, !dbg !122
  call void @__omp_offloading_10307_2ec41aa_main_l22_debug__(i32* %1) #6, !dbg !122
  ret void, !dbg !122
}

declare dso_local i32 @printf(i8*, ...) #5

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noinline norecurse nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { noinline norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!7, !8, !9}
!llvm.ident = !{!10}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "var", scope: !2, file: !3, line: 19, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.1 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "DRB145-atomiccritical-orig-gpu-no.c", directory: "/home/yanze/code/OpenRace/tests/data/integration/dataracebench")
!4 = !{}
!5 = !{!0}
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !{i32 7, !"Dwarf Version", i32 4}
!8 = !{i32 2, !"Debug Info Version", i32 3}
!9 = !{i32 1, !"wchar_size", i32 4}
!10 = !{!"clang version 10.0.1 "}
!11 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 21, type: !12, scopeLine: 21, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!12 = !DISubroutineType(types: !13)
!13 = !{!6}
!14 = !DILocation(line: 22, column: 3, scope: !15)
!15 = distinct !DILexicalBlock(scope: !11, file: !3, line: 22, column: 3)
!16 = !DILocation(line: 28, column: 17, scope: !11)
!17 = !DILocation(line: 28, column: 3, scope: !11)
!18 = !DILocation(line: 29, column: 3, scope: !11)
!19 = distinct !DISubprogram(name: "__omp_offloading_10307_2ec41aa_main_l22_debug__", scope: !3, file: !3, line: 23, type: !20, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!20 = !DISubroutineType(types: !21)
!21 = !{null, !22}
!22 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !6, size: 64)
!23 = !DILocalVariable(name: "var", arg: 1, scope: !19, file: !3, line: 19, type: !22)
!24 = !DILocation(line: 19, column: 5, scope: !19)
!25 = !DILocation(line: 23, column: 3, scope: !19)
!26 = !DILocation(line: 23, column: 61, scope: !19)
!27 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !3, file: !3, line: 24, type: !28, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!28 = !DISubroutineType(types: !29)
!29 = !{null, !30, !30, !22}
!30 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !31)
!31 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !32)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!34 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !27, type: !30, flags: DIFlagArtificial)
!35 = !DILocation(line: 0, scope: !27)
!36 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !27, type: !30, flags: DIFlagArtificial)
!37 = !DILocalVariable(name: "var", arg: 3, scope: !27, file: !3, line: 19, type: !22)
!38 = !DILocation(line: 19, column: 5, scope: !27)
!39 = !DILocation(line: 24, column: 3, scope: !27)
!40 = !DILocalVariable(name: "var", scope: !27, type: !6, flags: DIFlagArtificial)
!41 = !DILocation(line: 23, column: 57, scope: !27)
!42 = !DILocalVariable(name: ".omp.iv", scope: !27, type: !6, flags: DIFlagArtificial)
!43 = !DILocalVariable(name: ".omp.comb.lb", scope: !27, type: !6, flags: DIFlagArtificial)
!44 = !DILocation(line: 24, column: 8, scope: !27)
!45 = !DILocalVariable(name: ".omp.comb.ub", scope: !27, type: !6, flags: DIFlagArtificial)
!46 = !DILocalVariable(name: ".omp.stride", scope: !27, type: !6, flags: DIFlagArtificial)
!47 = !DILocalVariable(name: ".omp.is_last", scope: !27, type: !6, flags: DIFlagArtificial)
!48 = !DILocalVariable(name: "i", scope: !27, type: !6, flags: DIFlagArtificial)
!49 = !DILocation(line: 23, column: 3, scope: !27)
!50 = !DILocation(line: 23, column: 61, scope: !51)
!51 = distinct !DILexicalBlock(scope: !27, file: !3, line: 23, column: 3)
!52 = distinct !{!52, !49, !53}
!53 = !DILocation(line: 23, column: 61, scope: !27)
!54 = !DILocation(line: 23, column: 55, scope: !27)
!55 = !DILocation(line: 26, column: 3, scope: !27)
!56 = distinct !DISubprogram(name: ".omp_outlined._debug__.1", scope: !3, file: !3, line: 24, type: !57, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!57 = !DISubroutineType(types: !58)
!58 = !{null, !30, !30, !59, !59, !22}
!59 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !60)
!60 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!61 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !56, type: !30, flags: DIFlagArtificial)
!62 = !DILocation(line: 0, scope: !56)
!63 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !56, type: !30, flags: DIFlagArtificial)
!64 = !DILocalVariable(name: ".previous.lb.", arg: 3, scope: !56, type: !59, flags: DIFlagArtificial)
!65 = !DILocalVariable(name: ".previous.ub.", arg: 4, scope: !56, type: !59, flags: DIFlagArtificial)
!66 = !DILocalVariable(name: "var", arg: 5, scope: !56, file: !3, line: 19, type: !22)
!67 = !DILocation(line: 19, column: 5, scope: !56)
!68 = !DILocation(line: 24, column: 3, scope: !56)
!69 = !DILocalVariable(name: ".omp.iv", scope: !56, type: !6, flags: DIFlagArtificial)
!70 = !DILocalVariable(name: ".omp.lb", scope: !56, type: !6, flags: DIFlagArtificial)
!71 = !DILocation(line: 24, column: 8, scope: !56)
!72 = !DILocalVariable(name: ".omp.ub", scope: !56, type: !6, flags: DIFlagArtificial)
!73 = !DILocalVariable(name: ".omp.stride", scope: !56, type: !6, flags: DIFlagArtificial)
!74 = !DILocalVariable(name: ".omp.is_last", scope: !56, type: !6, flags: DIFlagArtificial)
!75 = !DILocalVariable(name: "var", scope: !56, type: !6, flags: DIFlagArtificial)
!76 = !DILocation(line: 23, column: 57, scope: !56)
!77 = !DILocalVariable(name: "i", scope: !56, type: !6, flags: DIFlagArtificial)
!78 = !DILocation(line: 24, column: 22, scope: !56)
!79 = !DILocation(line: 25, column: 8, scope: !80)
!80 = distinct !DILexicalBlock(scope: !56, file: !3, line: 24, column: 26)
!81 = !DILocation(line: 26, column: 3, scope: !80)
!82 = !DILocation(line: 23, column: 3, scope: !56)
!83 = distinct !{!83, !82, !84}
!84 = !DILocation(line: 23, column: 61, scope: !56)
!85 = !DILocation(line: 23, column: 55, scope: !56)
!86 = !DILocation(line: 26, column: 3, scope: !56)
!87 = distinct !DISubprogram(linkageName: ".omp.reduction.reduction_func", scope: !3, file: !3, line: 23, type: !88, scopeLine: 23, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!88 = !DISubroutineType(types: !4)
!89 = !DILocalVariable(arg: 1, scope: !87, type: !90, flags: DIFlagArtificial)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!91 = !DILocation(line: 0, scope: !87)
!92 = !DILocalVariable(arg: 2, scope: !87, type: !90, flags: DIFlagArtificial)
!93 = !DILocation(line: 23, column: 61, scope: !87)
!94 = !DILocation(line: 23, column: 57, scope: !87)
!95 = !DILocation(line: 23, column: 55, scope: !87)
!96 = distinct !DISubprogram(name: ".omp_outlined.", scope: !3, file: !3, line: 24, type: !57, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!97 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !96, type: !30, flags: DIFlagArtificial)
!98 = !DILocation(line: 0, scope: !96)
!99 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !96, type: !30, flags: DIFlagArtificial)
!100 = !DILocalVariable(name: ".previous.lb.", arg: 3, scope: !96, type: !59, flags: DIFlagArtificial)
!101 = !DILocalVariable(name: ".previous.ub.", arg: 4, scope: !96, type: !59, flags: DIFlagArtificial)
!102 = !DILocalVariable(name: "var", arg: 5, scope: !96, type: !22, flags: DIFlagArtificial)
!103 = !DILocation(line: 24, column: 3, scope: !96)
!104 = !{!105}
!105 = !{i64 2, i64 -1, i64 -1, i1 true}
!106 = distinct !DISubprogram(linkageName: ".omp.reduction.reduction_func.2", scope: !3, file: !3, line: 23, type: !88, scopeLine: 23, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!107 = !DILocalVariable(arg: 1, scope: !106, type: !90, flags: DIFlagArtificial)
!108 = !DILocation(line: 0, scope: !106)
!109 = !DILocalVariable(arg: 2, scope: !106, type: !90, flags: DIFlagArtificial)
!110 = !DILocation(line: 23, column: 61, scope: !106)
!111 = !DILocation(line: 23, column: 57, scope: !106)
!112 = !DILocation(line: 23, column: 55, scope: !106)
!113 = distinct !DISubprogram(name: ".omp_outlined..3", scope: !3, file: !3, line: 24, type: !28, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!114 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !113, type: !30, flags: DIFlagArtificial)
!115 = !DILocation(line: 0, scope: !113)
!116 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !113, type: !30, flags: DIFlagArtificial)
!117 = !DILocalVariable(name: "var", arg: 3, scope: !113, type: !22, flags: DIFlagArtificial)
!118 = !DILocation(line: 24, column: 3, scope: !113)
!119 = distinct !DISubprogram(name: "__omp_offloading_10307_2ec41aa_main_l22", scope: !3, file: !3, line: 23, type: !20, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!120 = !DILocalVariable(name: "var", arg: 1, scope: !119, type: !22, flags: DIFlagArtificial)
!121 = !DILocation(line: 0, scope: !119)
!122 = !DILocation(line: 23, column: 3, scope: !119)
