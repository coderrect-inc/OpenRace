; ModuleID = 'DRB148-critical1-orig-gpu-yes.c'
source_filename = "DRB148-critical1-orig-gpu-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 2050, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [45 x i8] c";DRB148-critical1-orig-gpu-yes.c;main;28;3;;\00", align 1
@2 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@3 = private unnamed_addr constant [45 x i8] c";DRB148-critical1-orig-gpu-yes.c;main;30;5;;\00", align 1
@.gomp_critical_user_addlock.var = common global [8 x i32] zeroinitializer
@4 = private unnamed_addr constant [45 x i8] c";DRB148-critical1-orig-gpu-yes.c;main;33;5;;\00", align 1
@.gomp_critical_user_sublock.var = common global [8 x i32] zeroinitializer
@5 = private unnamed_addr constant [46 x i8] c";DRB148-critical1-orig-gpu-yes.c;main;28;44;;\00", align 1
@6 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@var = dso_local global i32 0, align 4, !dbg !0
@.str.3 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !11 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @__omp_offloading_10307_2ec41ad_main_l27(i32* @var) #5, !dbg !14
  %0 = load i32, i32* @var, align 4, !dbg !16
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %0), !dbg !17
  ret i32 0, !dbg !18
}

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @__omp_offloading_10307_2ec41ad_main_l27_debug__(i32* dereferenceable(4) %var) #1 !dbg !19 {
entry:
  %var.addr = alloca i32*, align 8
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %var, i32** %var.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %var.addr, metadata !23, metadata !DIExpression()), !dbg !24
  %2 = load i32*, i32** %var.addr, align 8, !dbg !25
  %3 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !25
  store i8* getelementptr inbounds ([45 x i8], [45 x i8]* @1, i32 0, i32 0), i8** %3, align 8, !dbg !25
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_teams(%struct.ident_t* %.kmpc_loc.addr, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*)* @.omp_outlined..2 to void (i32*, i32*, ...)*), i32* %2), !dbg !25
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
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !34, metadata !DIExpression()), !dbg !35
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !36, metadata !DIExpression()), !dbg !35
  store i32* %var, i32** %var.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %var.addr, metadata !37, metadata !DIExpression()), !dbg !38
  %2 = load i32*, i32** %var.addr, align 8, !dbg !39
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !40, metadata !DIExpression()), !dbg !35
  call void @llvm.dbg.declare(metadata i32* %.omp.comb.lb, metadata !41, metadata !DIExpression()), !dbg !35
  store i32 0, i32* %.omp.comb.lb, align 4, !dbg !42
  call void @llvm.dbg.declare(metadata i32* %.omp.comb.ub, metadata !43, metadata !DIExpression()), !dbg !35
  store i32 99, i32* %.omp.comb.ub, align 4, !dbg !42
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !44, metadata !DIExpression()), !dbg !35
  store i32 1, i32* %.omp.stride, align 4, !dbg !42
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !45, metadata !DIExpression()), !dbg !35
  store i32 0, i32* %.omp.is_last, align 4, !dbg !42
  call void @llvm.dbg.declare(metadata i32* %i, metadata !46, metadata !DIExpression()), !dbg !35
  %3 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !39
  store i8* getelementptr inbounds ([45 x i8], [45 x i8]* @1, i32 0, i32 0), i8** %3, align 8, !dbg !39
  %4 = load i32*, i32** %.global_tid..addr, align 8, !dbg !39
  %5 = load i32, i32* %4, align 4, !dbg !39
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %5, i32 92, i32* %.omp.is_last, i32* %.omp.comb.lb, i32* %.omp.comb.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !39
  %6 = load i32, i32* %.omp.comb.ub, align 4, !dbg !42
  %cmp = icmp sgt i32 %6, 99, !dbg !42
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !42

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !42

cond.false:                                       ; preds = %entry
  %7 = load i32, i32* %.omp.comb.ub, align 4, !dbg !42
  br label %cond.end, !dbg !42

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 99, %cond.true ], [ %7, %cond.false ], !dbg !42
  store i32 %cond, i32* %.omp.comb.ub, align 4, !dbg !42
  %8 = load i32, i32* %.omp.comb.lb, align 4, !dbg !42
  store i32 %8, i32* %.omp.iv, align 4, !dbg !42
  br label %omp.inner.for.cond, !dbg !39

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %9 = load i32, i32* %.omp.iv, align 4, !dbg !42
  %10 = load i32, i32* %.omp.comb.ub, align 4, !dbg !42
  %cmp1 = icmp sle i32 %9, %10, !dbg !39
  br i1 %cmp1, label %omp.inner.for.body, label %omp.inner.for.end, !dbg !39

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %11 = load i32, i32* %.omp.comb.lb, align 4, !dbg !47
  %12 = zext i32 %11 to i64, !dbg !47
  %13 = load i32, i32* %.omp.comb.ub, align 4, !dbg !47
  %14 = zext i32 %13 to i64, !dbg !47
  %15 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !47
  store i8* getelementptr inbounds ([45 x i8], [45 x i8]* @1, i32 0, i32 0), i8** %15, align 8, !dbg !47
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i64, i64, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i64 %12, i64 %14, i32* %2), !dbg !47
  br label %omp.inner.for.inc, !dbg !48

omp.inner.for.inc:                                ; preds = %omp.inner.for.body
  %16 = load i32, i32* %.omp.iv, align 4, !dbg !42
  %17 = load i32, i32* %.omp.stride, align 4, !dbg !42
  %add = add nsw i32 %16, %17, !dbg !39
  store i32 %add, i32* %.omp.iv, align 4, !dbg !39
  br label %omp.inner.for.cond, !dbg !48, !llvm.loop !50

omp.inner.for.end:                                ; preds = %omp.inner.for.cond
  br label %omp.loop.exit, !dbg !48

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %18 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !48
  store i8* getelementptr inbounds ([45 x i8], [45 x i8]* @1, i32 0, i32 0), i8** %18, align 8, !dbg !48
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %5), !dbg !48
  ret void, !dbg !52
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined._debug__.1(i32* noalias %.global_tid., i32* noalias %.bound_tid., i64 %.previous.lb., i64 %.previous.ub., i32* dereferenceable(4) %var) #1 !dbg !53 {
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
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !58, metadata !DIExpression()), !dbg !59
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !60, metadata !DIExpression()), !dbg !59
  store i64 %.previous.lb., i64* %.previous.lb..addr, align 8
  call void @llvm.dbg.declare(metadata i64* %.previous.lb..addr, metadata !61, metadata !DIExpression()), !dbg !59
  store i64 %.previous.ub., i64* %.previous.ub..addr, align 8
  call void @llvm.dbg.declare(metadata i64* %.previous.ub..addr, metadata !62, metadata !DIExpression()), !dbg !59
  store i32* %var, i32** %var.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %var.addr, metadata !63, metadata !DIExpression()), !dbg !64
  %2 = load i32*, i32** %var.addr, align 8, !dbg !65
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !66, metadata !DIExpression()), !dbg !59
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !67, metadata !DIExpression()), !dbg !59
  store i32 0, i32* %.omp.lb, align 4, !dbg !68
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !69, metadata !DIExpression()), !dbg !59
  store i32 99, i32* %.omp.ub, align 4, !dbg !68
  %3 = load i64, i64* %.previous.lb..addr, align 8, !dbg !65
  %conv = trunc i64 %3 to i32, !dbg !65
  %4 = load i64, i64* %.previous.ub..addr, align 8, !dbg !65
  %conv1 = trunc i64 %4 to i32, !dbg !65
  store i32 %conv, i32* %.omp.lb, align 4, !dbg !65
  store i32 %conv1, i32* %.omp.ub, align 4, !dbg !65
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !70, metadata !DIExpression()), !dbg !59
  store i32 1, i32* %.omp.stride, align 4, !dbg !68
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !71, metadata !DIExpression()), !dbg !59
  store i32 0, i32* %.omp.is_last, align 4, !dbg !68
  call void @llvm.dbg.declare(metadata i32* %i, metadata !72, metadata !DIExpression()), !dbg !59
  %5 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !65
  store i8* getelementptr inbounds ([45 x i8], [45 x i8]* @1, i32 0, i32 0), i8** %5, align 8, !dbg !65
  %6 = load i32*, i32** %.global_tid..addr, align 8, !dbg !65
  %7 = load i32, i32* %6, align 4, !dbg !65
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %7, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !65
  %8 = load i32, i32* %.omp.ub, align 4, !dbg !68
  %cmp = icmp sgt i32 %8, 99, !dbg !68
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !68

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !68

cond.false:                                       ; preds = %entry
  %9 = load i32, i32* %.omp.ub, align 4, !dbg !68
  br label %cond.end, !dbg !68

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 99, %cond.true ], [ %9, %cond.false ], !dbg !68
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !68
  %10 = load i32, i32* %.omp.lb, align 4, !dbg !68
  store i32 %10, i32* %.omp.iv, align 4, !dbg !68
  br label %omp.inner.for.cond, !dbg !65

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %11 = load i32, i32* %.omp.iv, align 4, !dbg !68
  %12 = load i32, i32* %.omp.ub, align 4, !dbg !68
  %cmp3 = icmp sle i32 %11, %12, !dbg !65
  br i1 %cmp3, label %omp.inner.for.body, label %omp.inner.for.end, !dbg !65

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %13 = load i32, i32* %.omp.iv, align 4, !dbg !68
  %mul = mul nsw i32 %13, 1, !dbg !73
  %add = add nsw i32 0, %mul, !dbg !73
  store i32 %add, i32* %i, align 4, !dbg !73
  %14 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !74
  store i8* getelementptr inbounds ([45 x i8], [45 x i8]* @3, i32 0, i32 0), i8** %14, align 8, !dbg !74
  call void @__kmpc_critical(%struct.ident_t* %.kmpc_loc.addr, i32 %7, [8 x i32]* @.gomp_critical_user_addlock.var), !dbg !74
  %15 = load i32, i32* %2, align 4, !dbg !76
  %inc = add nsw i32 %15, 1, !dbg !76
  store i32 %inc, i32* %2, align 4, !dbg !76
  call void @__kmpc_end_critical(%struct.ident_t* %.kmpc_loc.addr, i32 %7, [8 x i32]* @.gomp_critical_user_addlock.var), !dbg !78
  %16 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !79
  store i8* getelementptr inbounds ([45 x i8], [45 x i8]* @4, i32 0, i32 0), i8** %16, align 8, !dbg !79
  call void @__kmpc_critical(%struct.ident_t* %.kmpc_loc.addr, i32 %7, [8 x i32]* @.gomp_critical_user_sublock.var), !dbg !79
  %17 = load i32, i32* %2, align 4, !dbg !80
  %sub = sub nsw i32 %17, 2, !dbg !80
  store i32 %sub, i32* %2, align 4, !dbg !80
  call void @__kmpc_end_critical(%struct.ident_t* %.kmpc_loc.addr, i32 %7, [8 x i32]* @.gomp_critical_user_sublock.var), !dbg !82
  br label %omp.body.continue, !dbg !83

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !84

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %18 = load i32, i32* %.omp.iv, align 4, !dbg !68
  %add5 = add nsw i32 %18, 1, !dbg !65
  store i32 %add5, i32* %.omp.iv, align 4, !dbg !65
  br label %omp.inner.for.cond, !dbg !84, !llvm.loop !85

omp.inner.for.end:                                ; preds = %omp.inner.for.cond
  br label %omp.loop.exit, !dbg !84

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %19 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !84
  store i8* getelementptr inbounds ([46 x i8], [46 x i8]* @5, i32 0, i32 0), i8** %19, align 8, !dbg !84
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %7), !dbg !84
  ret void, !dbg !87
}

declare dso_local void @__kmpc_end_critical(%struct.ident_t*, i32, [8 x i32]*)

declare dso_local void @__kmpc_critical(%struct.ident_t*, i32, [8 x i32]*)

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i64 %.previous.lb., i64 %.previous.ub., i32* dereferenceable(4) %var) #1 !dbg !88 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %.previous.lb..addr = alloca i64, align 8
  %.previous.ub..addr = alloca i64, align 8
  %var.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !89, metadata !DIExpression()), !dbg !90
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !91, metadata !DIExpression()), !dbg !90
  store i64 %.previous.lb., i64* %.previous.lb..addr, align 8
  call void @llvm.dbg.declare(metadata i64* %.previous.lb..addr, metadata !92, metadata !DIExpression()), !dbg !90
  store i64 %.previous.ub., i64* %.previous.ub..addr, align 8
  call void @llvm.dbg.declare(metadata i64* %.previous.ub..addr, metadata !93, metadata !DIExpression()), !dbg !90
  store i32* %var, i32** %var.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %var.addr, metadata !94, metadata !DIExpression()), !dbg !90
  %0 = load i32*, i32** %var.addr, align 8, !dbg !95
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !95
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !95
  %3 = load i64, i64* %.previous.lb..addr, align 8, !dbg !95
  %4 = load i64, i64* %.previous.ub..addr, align 8, !dbg !95
  %5 = load i32*, i32** %var.addr, align 8, !dbg !95
  call void @.omp_outlined._debug__.1(i32* %1, i32* %2, i64 %3, i64 %4, i32* %5) #5, !dbg !95
  ret void, !dbg !95
}

declare !callback !96 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined..2(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %var) #1 !dbg !98 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %var.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !99, metadata !DIExpression()), !dbg !100
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !101, metadata !DIExpression()), !dbg !100
  store i32* %var, i32** %var.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %var.addr, metadata !102, metadata !DIExpression()), !dbg !100
  %0 = load i32*, i32** %var.addr, align 8, !dbg !103
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !103
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !103
  %3 = load i32*, i32** %var.addr, align 8, !dbg !103
  call void @.omp_outlined._debug__(i32* %1, i32* %2, i32* %3) #5, !dbg !103
  ret void, !dbg !103
}

declare !callback !96 dso_local void @__kmpc_fork_teams(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @__omp_offloading_10307_2ec41ad_main_l27(i32* dereferenceable(4) %var) #1 !dbg !104 {
entry:
  %var.addr = alloca i32*, align 8
  store i32* %var, i32** %var.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %var.addr, metadata !105, metadata !DIExpression()), !dbg !106
  %0 = load i32*, i32** %var.addr, align 8, !dbg !107
  %1 = load i32*, i32** %var.addr, align 8, !dbg !107
  call void @__omp_offloading_10307_2ec41ad_main_l27_debug__(i32* %1) #5, !dbg !107
  ret void, !dbg !107
}

declare dso_local i32 @printf(i8*, ...) #4

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noinline norecurse nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!7, !8, !9}
!llvm.ident = !{!10}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "var", scope: !2, file: !3, line: 23, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.1 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "DRB148-critical1-orig-gpu-yes.c", directory: "/home/yanze/code/OpenRace/tests/data/integration/dataracebench")
!4 = !{}
!5 = !{!0}
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !{i32 7, !"Dwarf Version", i32 4}
!8 = !{i32 2, !"Debug Info Version", i32 3}
!9 = !{i32 1, !"wchar_size", i32 4}
!10 = !{!"clang version 10.0.1 "}
!11 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 25, type: !12, scopeLine: 25, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!12 = !DISubroutineType(types: !13)
!13 = !{!6}
!14 = !DILocation(line: 27, column: 3, scope: !15)
!15 = distinct !DILexicalBlock(scope: !11, file: !3, line: 27, column: 3)
!16 = !DILocation(line: 37, column: 17, scope: !11)
!17 = !DILocation(line: 37, column: 3, scope: !11)
!18 = !DILocation(line: 39, column: 3, scope: !11)
!19 = distinct !DISubprogram(name: "__omp_offloading_10307_2ec41ad_main_l27_debug__", scope: !3, file: !3, line: 28, type: !20, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!20 = !DISubroutineType(types: !21)
!21 = !{null, !22}
!22 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !6, size: 64)
!23 = !DILocalVariable(name: "var", arg: 1, scope: !19, file: !3, line: 23, type: !22)
!24 = !DILocation(line: 23, column: 5, scope: !19)
!25 = !DILocation(line: 28, column: 3, scope: !19)
!26 = !DILocation(line: 28, column: 44, scope: !19)
!27 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !3, file: !3, line: 29, type: !28, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!28 = !DISubroutineType(types: !29)
!29 = !{null, !30, !30, !22}
!30 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !31)
!31 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !32)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!34 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !27, type: !30, flags: DIFlagArtificial)
!35 = !DILocation(line: 0, scope: !27)
!36 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !27, type: !30, flags: DIFlagArtificial)
!37 = !DILocalVariable(name: "var", arg: 3, scope: !27, file: !3, line: 23, type: !22)
!38 = !DILocation(line: 23, column: 5, scope: !27)
!39 = !DILocation(line: 29, column: 3, scope: !27)
!40 = !DILocalVariable(name: ".omp.iv", scope: !27, type: !6, flags: DIFlagArtificial)
!41 = !DILocalVariable(name: ".omp.comb.lb", scope: !27, type: !6, flags: DIFlagArtificial)
!42 = !DILocation(line: 29, column: 7, scope: !27)
!43 = !DILocalVariable(name: ".omp.comb.ub", scope: !27, type: !6, flags: DIFlagArtificial)
!44 = !DILocalVariable(name: ".omp.stride", scope: !27, type: !6, flags: DIFlagArtificial)
!45 = !DILocalVariable(name: ".omp.is_last", scope: !27, type: !6, flags: DIFlagArtificial)
!46 = !DILocalVariable(name: "i", scope: !27, type: !6, flags: DIFlagArtificial)
!47 = !DILocation(line: 28, column: 3, scope: !27)
!48 = !DILocation(line: 28, column: 44, scope: !49)
!49 = distinct !DILexicalBlock(scope: !27, file: !3, line: 28, column: 3)
!50 = distinct !{!50, !47, !51}
!51 = !DILocation(line: 28, column: 44, scope: !27)
!52 = !DILocation(line: 35, column: 3, scope: !27)
!53 = distinct !DISubprogram(name: ".omp_outlined._debug__.1", scope: !3, file: !3, line: 29, type: !54, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!54 = !DISubroutineType(types: !55)
!55 = !{null, !30, !30, !56, !56, !22}
!56 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !57)
!57 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!58 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !53, type: !30, flags: DIFlagArtificial)
!59 = !DILocation(line: 0, scope: !53)
!60 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !53, type: !30, flags: DIFlagArtificial)
!61 = !DILocalVariable(name: ".previous.lb.", arg: 3, scope: !53, type: !56, flags: DIFlagArtificial)
!62 = !DILocalVariable(name: ".previous.ub.", arg: 4, scope: !53, type: !56, flags: DIFlagArtificial)
!63 = !DILocalVariable(name: "var", arg: 5, scope: !53, file: !3, line: 23, type: !22)
!64 = !DILocation(line: 23, column: 5, scope: !53)
!65 = !DILocation(line: 29, column: 3, scope: !53)
!66 = !DILocalVariable(name: ".omp.iv", scope: !53, type: !6, flags: DIFlagArtificial)
!67 = !DILocalVariable(name: ".omp.lb", scope: !53, type: !6, flags: DIFlagArtificial)
!68 = !DILocation(line: 29, column: 7, scope: !53)
!69 = !DILocalVariable(name: ".omp.ub", scope: !53, type: !6, flags: DIFlagArtificial)
!70 = !DILocalVariable(name: ".omp.stride", scope: !53, type: !6, flags: DIFlagArtificial)
!71 = !DILocalVariable(name: ".omp.is_last", scope: !53, type: !6, flags: DIFlagArtificial)
!72 = !DILocalVariable(name: "i", scope: !53, type: !6, flags: DIFlagArtificial)
!73 = !DILocation(line: 29, column: 21, scope: !53)
!74 = !DILocation(line: 30, column: 5, scope: !75)
!75 = distinct !DILexicalBlock(scope: !53, file: !3, line: 29, column: 25)
!76 = !DILocation(line: 31, column: 8, scope: !77)
!77 = distinct !DILexicalBlock(scope: !75, file: !3, line: 30, column: 5)
!78 = !DILocation(line: 31, column: 5, scope: !77)
!79 = !DILocation(line: 33, column: 5, scope: !75)
!80 = !DILocation(line: 34, column: 9, scope: !81)
!81 = distinct !DILexicalBlock(scope: !75, file: !3, line: 33, column: 5)
!82 = !DILocation(line: 34, column: 5, scope: !81)
!83 = !DILocation(line: 35, column: 3, scope: !75)
!84 = !DILocation(line: 28, column: 3, scope: !53)
!85 = distinct !{!85, !84, !86}
!86 = !DILocation(line: 28, column: 44, scope: !53)
!87 = !DILocation(line: 35, column: 3, scope: !53)
!88 = distinct !DISubprogram(name: ".omp_outlined.", scope: !3, file: !3, line: 29, type: !54, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!89 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !88, type: !30, flags: DIFlagArtificial)
!90 = !DILocation(line: 0, scope: !88)
!91 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !88, type: !30, flags: DIFlagArtificial)
!92 = !DILocalVariable(name: ".previous.lb.", arg: 3, scope: !88, type: !56, flags: DIFlagArtificial)
!93 = !DILocalVariable(name: ".previous.ub.", arg: 4, scope: !88, type: !56, flags: DIFlagArtificial)
!94 = !DILocalVariable(name: "var", arg: 5, scope: !88, type: !22, flags: DIFlagArtificial)
!95 = !DILocation(line: 29, column: 3, scope: !88)
!96 = !{!97}
!97 = !{i64 2, i64 -1, i64 -1, i1 true}
!98 = distinct !DISubprogram(name: ".omp_outlined..2", scope: !3, file: !3, line: 29, type: !28, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!99 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !98, type: !30, flags: DIFlagArtificial)
!100 = !DILocation(line: 0, scope: !98)
!101 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !98, type: !30, flags: DIFlagArtificial)
!102 = !DILocalVariable(name: "var", arg: 3, scope: !98, type: !22, flags: DIFlagArtificial)
!103 = !DILocation(line: 29, column: 3, scope: !98)
!104 = distinct !DISubprogram(name: "__omp_offloading_10307_2ec41ad_main_l27", scope: !3, file: !3, line: 28, type: !20, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!105 = !DILocalVariable(name: "var", arg: 1, scope: !104, type: !22, flags: DIFlagArtificial)
!106 = !DILocation(line: 0, scope: !104)
!107 = !DILocation(line: 28, column: 3, scope: !104)
