; ModuleID = 'integration/dataracebench/DRB154-missinglock3-orig-gpu-no.c'
source_filename = "integration/dataracebench/DRB154-missinglock3-orig-gpu-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }
%struct.omp_lock_t = type { i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 2050, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [73 x i8] c";integration/dataracebench/DRB154-missinglock3-orig-gpu-no.c;main;24;3;;\00", align 1
@.gomp_critical_user_.reduction.var = common global [8 x i32] zeroinitializer
@2 = private unnamed_addr constant [74 x i8] c";integration/dataracebench/DRB154-missinglock3-orig-gpu-no.c;main;24;48;;\00", align 1
@3 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"%d\0A \00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main() #0 !dbg !20 {
entry:
  %retval = alloca i32, align 4
  %lck = alloca %struct.omp_lock_t, align 8
  %var = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = bitcast %struct.omp_lock_t* %lck to i8*, !dbg !28
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #5, !dbg !28
  call void @llvm.dbg.declare(metadata %struct.omp_lock_t* %lck, metadata !25, metadata !DIExpression()), !dbg !29
  %1 = bitcast i32* %var to i8*, !dbg !30
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #5, !dbg !30
  call void @llvm.dbg.declare(metadata i32* %var, metadata !27, metadata !DIExpression()), !dbg !31
  store i32 0, i32* %var, align 4, !dbg !31, !tbaa !32
  call void @omp_init_lock(%struct.omp_lock_t* %lck), !dbg !36
  call void @__omp_offloading_1030a_216095c_main_l23(i32* %var, %struct.omp_lock_t* %lck) #5, !dbg !37
  call void @omp_destroy_lock(%struct.omp_lock_t* %lck), !dbg !39
  %2 = load i32, i32* %var, align 4, !dbg !40, !tbaa !32
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %2), !dbg !41
  %3 = bitcast i32* %var to i8*, !dbg !42
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %3) #5, !dbg !42
  %4 = bitcast %struct.omp_lock_t* %lck to i8*, !dbg !42
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %4) #5, !dbg !42
  ret i32 0, !dbg !43
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

declare !dbg !4 dso_local void @omp_init_lock(%struct.omp_lock_t*) #3

; Function Attrs: norecurse nounwind uwtable
define internal void @__omp_offloading_1030a_216095c_main_l23_debug__(i32* dereferenceable(4) %var, %struct.omp_lock_t* dereferenceable(8) %lck) #4 !dbg !44 {
entry:
  %var.addr = alloca i32*, align 8
  %lck.addr = alloca %struct.omp_lock_t*, align 8
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %var, i32** %var.addr, align 8, !tbaa !52
  call void @llvm.dbg.declare(metadata i32** %var.addr, metadata !50, metadata !DIExpression()), !dbg !54
  store %struct.omp_lock_t* %lck, %struct.omp_lock_t** %lck.addr, align 8, !tbaa !52
  call void @llvm.dbg.declare(metadata %struct.omp_lock_t** %lck.addr, metadata !51, metadata !DIExpression()), !dbg !55
  %2 = load i32*, i32** %var.addr, align 8, !dbg !56, !tbaa !52
  %3 = load %struct.omp_lock_t*, %struct.omp_lock_t** %lck.addr, align 8, !dbg !56, !tbaa !52
  %4 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !56
  store i8* getelementptr inbounds ([73 x i8], [73 x i8]* @1, i32 0, i32 0), i8** %4, align 8, !dbg !56, !tbaa !57
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_teams(%struct.ident_t* %.kmpc_loc.addr, i32 2, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, %struct.omp_lock_t*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), %struct.omp_lock_t* %3, i32* %2), !dbg !56
  ret void, !dbg !59
}

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., %struct.omp_lock_t* dereferenceable(8) %lck, i32* dereferenceable(4) %var) #4 !dbg !60 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %lck.addr = alloca %struct.omp_lock_t*, align 8
  %var.addr = alloca i32*, align 8
  %var1 = alloca i32, align 4
  %.omp.iv = alloca i32, align 4
  %tmp = alloca i32, align 4
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %i = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %.omp.reduction.red_list = alloca [1 x i8*], align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !52
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !68, metadata !DIExpression()), !dbg !79
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !52
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !69, metadata !DIExpression()), !dbg !79
  store %struct.omp_lock_t* %lck, %struct.omp_lock_t** %lck.addr, align 8, !tbaa !52
  call void @llvm.dbg.declare(metadata %struct.omp_lock_t** %lck.addr, metadata !70, metadata !DIExpression()), !dbg !80
  store i32* %var, i32** %var.addr, align 8, !tbaa !52
  call void @llvm.dbg.declare(metadata i32** %var.addr, metadata !71, metadata !DIExpression()), !dbg !81
  %2 = load %struct.omp_lock_t*, %struct.omp_lock_t** %lck.addr, align 8, !dbg !82, !tbaa !52
  %3 = load i32*, i32** %var.addr, align 8, !dbg !82, !tbaa !52
  %4 = bitcast i32* %var1 to i8*, !dbg !82
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #5, !dbg !82
  call void @llvm.dbg.declare(metadata i32* %var1, metadata !72, metadata !DIExpression()), !dbg !79
  store i32 0, i32* %var1, align 4, !dbg !83, !tbaa !32
  %5 = bitcast i32* %.omp.iv to i8*, !dbg !82
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #5, !dbg !82
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !73, metadata !DIExpression()), !dbg !79
  %6 = bitcast i32* %.omp.lb to i8*, !dbg !82
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #5, !dbg !82
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !74, metadata !DIExpression()), !dbg !79
  store i32 0, i32* %.omp.lb, align 4, !dbg !84, !tbaa !32
  %7 = bitcast i32* %.omp.ub to i8*, !dbg !82
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #5, !dbg !82
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !75, metadata !DIExpression()), !dbg !79
  store i32 99, i32* %.omp.ub, align 4, !dbg !84, !tbaa !32
  %8 = bitcast i32* %.omp.stride to i8*, !dbg !82
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #5, !dbg !82
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !76, metadata !DIExpression()), !dbg !79
  store i32 1, i32* %.omp.stride, align 4, !dbg !84, !tbaa !32
  %9 = bitcast i32* %.omp.is_last to i8*, !dbg !82
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #5, !dbg !82
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !77, metadata !DIExpression()), !dbg !79
  store i32 0, i32* %.omp.is_last, align 4, !dbg !84, !tbaa !32
  %10 = bitcast i32* %i to i8*, !dbg !82
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #5, !dbg !82
  call void @llvm.dbg.declare(metadata i32* %i, metadata !78, metadata !DIExpression()), !dbg !79
  %11 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !82
  store i8* getelementptr inbounds ([73 x i8], [73 x i8]* @1, i32 0, i32 0), i8** %11, align 8, !dbg !82, !tbaa !57
  %12 = load i32*, i32** %.global_tid..addr, align 8, !dbg !82
  %13 = load i32, i32* %12, align 4, !dbg !82, !tbaa !32
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %13, i32 92, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !82
  %14 = load i32, i32* %.omp.ub, align 4, !dbg !84, !tbaa !32
  %cmp = icmp sgt i32 %14, 99, !dbg !84
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !84

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !84

cond.false:                                       ; preds = %entry
  %15 = load i32, i32* %.omp.ub, align 4, !dbg !84, !tbaa !32
  br label %cond.end, !dbg !84

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 99, %cond.true ], [ %15, %cond.false ], !dbg !84
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !84, !tbaa !32
  %16 = load i32, i32* %.omp.lb, align 4, !dbg !84, !tbaa !32
  store i32 %16, i32* %.omp.iv, align 4, !dbg !84, !tbaa !32
  br label %omp.inner.for.cond, !dbg !82

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %17 = load i32, i32* %.omp.iv, align 4, !dbg !84, !tbaa !32
  %18 = load i32, i32* %.omp.ub, align 4, !dbg !84, !tbaa !32
  %cmp2 = icmp sle i32 %17, %18, !dbg !82
  br i1 %cmp2, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !82

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !82

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %19 = load i32, i32* %.omp.iv, align 4, !dbg !84, !tbaa !32
  %mul = mul nsw i32 %19, 1, !dbg !85
  %add = add nsw i32 0, %mul, !dbg !85
  store i32 %add, i32* %i, align 4, !dbg !85, !tbaa !32
  call void @omp_set_lock(%struct.omp_lock_t* %2), !dbg !86
  %20 = load i32, i32* %var1, align 4, !dbg !88, !tbaa !32
  %inc = add nsw i32 %20, 1, !dbg !88
  store i32 %inc, i32* %var1, align 4, !dbg !88, !tbaa !32
  call void @omp_unset_lock(%struct.omp_lock_t* %2), !dbg !89
  br label %omp.body.continue, !dbg !90

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !91

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %21 = load i32, i32* %.omp.iv, align 4, !dbg !84, !tbaa !32
  %add3 = add nsw i32 %21, 1, !dbg !82
  store i32 %add3, i32* %.omp.iv, align 4, !dbg !82, !tbaa !32
  br label %omp.inner.for.cond, !dbg !91, !llvm.loop !92

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !91

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %22 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !91
  store i8* getelementptr inbounds ([73 x i8], [73 x i8]* @1, i32 0, i32 0), i8** %22, align 8, !dbg !91, !tbaa !57
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %13), !dbg !91
  %23 = bitcast i32* %i to i8*, !dbg !91
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %23) #5, !dbg !91
  %24 = bitcast i32* %.omp.is_last to i8*, !dbg !91
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %24) #5, !dbg !91
  %25 = bitcast i32* %.omp.stride to i8*, !dbg !91
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %25) #5, !dbg !91
  %26 = bitcast i32* %.omp.ub to i8*, !dbg !91
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %26) #5, !dbg !91
  %27 = bitcast i32* %.omp.lb to i8*, !dbg !91
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %27) #5, !dbg !91
  %28 = bitcast i32* %.omp.iv to i8*, !dbg !91
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %28) #5, !dbg !91
  %29 = getelementptr inbounds [1 x i8*], [1 x i8*]* %.omp.reduction.red_list, i64 0, i64 0, !dbg !91
  %30 = bitcast i32* %var1 to i8*, !dbg !91
  store i8* %30, i8** %29, align 8, !dbg !91
  %31 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !91
  store i8* getelementptr inbounds ([74 x i8], [74 x i8]* @2, i32 0, i32 0), i8** %31, align 8, !dbg !91, !tbaa !57
  %32 = bitcast [1 x i8*]* %.omp.reduction.red_list to i8*, !dbg !91
  %33 = call i32 @__kmpc_reduce(%struct.ident_t* %.kmpc_loc.addr, i32 %13, i32 1, i64 8, i8* %32, void (i8*, i8*)* @.omp.reduction.reduction_func, [8 x i32]* @.gomp_critical_user_.reduction.var), !dbg !91
  switch i32 %33, label %.omp.reduction.default [
    i32 1, label %.omp.reduction.case1
    i32 2, label %.omp.reduction.case2
  ], !dbg !91

.omp.reduction.case1:                             ; preds = %omp.loop.exit
  %34 = load i32, i32* %3, align 4, !dbg !83, !tbaa !32
  %35 = load i32, i32* %var1, align 4, !dbg !83, !tbaa !32
  %add4 = add nsw i32 %34, %35, !dbg !94
  store i32 %add4, i32* %3, align 4, !dbg !94, !tbaa !32
  call void @__kmpc_end_reduce(%struct.ident_t* %.kmpc_loc.addr, i32 %13, [8 x i32]* @.gomp_critical_user_.reduction.var), !dbg !91
  br label %.omp.reduction.default, !dbg !91

.omp.reduction.case2:                             ; preds = %omp.loop.exit
  %36 = load i32, i32* %var1, align 4, !dbg !83, !tbaa !32
  %37 = atomicrmw add i32* %3, i32 %36 monotonic, !dbg !91
  call void @__kmpc_end_reduce(%struct.ident_t* %.kmpc_loc.addr, i32 %13, [8 x i32]* @.gomp_critical_user_.reduction.var), !dbg !91
  br label %.omp.reduction.default, !dbg !91

.omp.reduction.default:                           ; preds = %.omp.reduction.case2, %.omp.reduction.case1, %omp.loop.exit
  %38 = bitcast i32* %var1 to i8*, !dbg !91
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %38) #5, !dbg !91
  ret void, !dbg !95
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare !dbg !13 dso_local void @omp_set_lock(%struct.omp_lock_t*) #3

declare !dbg !14 dso_local void @omp_unset_lock(%struct.omp_lock_t*) #3

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp.reduction.reduction_func(i8* %0, i8* %1) #4 !dbg !96 {
entry:
  %.addr = alloca i8*, align 8
  %.addr1 = alloca i8*, align 8
  store i8* %0, i8** %.addr, align 8, !tbaa !52
  call void @llvm.dbg.declare(metadata i8** %.addr, metadata !99, metadata !DIExpression()), !dbg !101
  store i8* %1, i8** %.addr1, align 8, !tbaa !52
  call void @llvm.dbg.declare(metadata i8** %.addr1, metadata !100, metadata !DIExpression()), !dbg !101
  %2 = load i8*, i8** %.addr, align 8, !dbg !102
  %3 = bitcast i8* %2 to [1 x i8*]*, !dbg !102
  %4 = load i8*, i8** %.addr1, align 8, !dbg !102
  %5 = bitcast i8* %4 to [1 x i8*]*, !dbg !102
  %6 = getelementptr inbounds [1 x i8*], [1 x i8*]* %5, i64 0, i64 0, !dbg !102
  %7 = load i8*, i8** %6, align 8, !dbg !102
  %8 = bitcast i8* %7 to i32*, !dbg !102
  %9 = getelementptr inbounds [1 x i8*], [1 x i8*]* %3, i64 0, i64 0, !dbg !102
  %10 = load i8*, i8** %9, align 8, !dbg !102
  %11 = bitcast i8* %10 to i32*, !dbg !102
  %12 = load i32, i32* %11, align 4, !dbg !103, !tbaa !32
  %13 = load i32, i32* %8, align 4, !dbg !103, !tbaa !32
  %add = add nsw i32 %12, %13, !dbg !104
  store i32 %add, i32* %11, align 4, !dbg !104, !tbaa !32
  ret void, !dbg !103
}

declare dso_local i32 @__kmpc_reduce(%struct.ident_t*, i32, i32, i64, i8*, void (i8*, i8*)*, [8 x i32]*)

declare dso_local void @__kmpc_end_reduce(%struct.ident_t*, i32, [8 x i32]*)

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., %struct.omp_lock_t* dereferenceable(8) %lck, i32* dereferenceable(4) %var) #4 !dbg !105 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %lck.addr = alloca %struct.omp_lock_t*, align 8
  %var.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !52
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !107, metadata !DIExpression()), !dbg !111
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !52
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !108, metadata !DIExpression()), !dbg !111
  store %struct.omp_lock_t* %lck, %struct.omp_lock_t** %lck.addr, align 8, !tbaa !52
  call void @llvm.dbg.declare(metadata %struct.omp_lock_t** %lck.addr, metadata !109, metadata !DIExpression()), !dbg !111
  store i32* %var, i32** %var.addr, align 8, !tbaa !52
  call void @llvm.dbg.declare(metadata i32** %var.addr, metadata !110, metadata !DIExpression()), !dbg !111
  %0 = load %struct.omp_lock_t*, %struct.omp_lock_t** %lck.addr, align 8, !dbg !112, !tbaa !52
  %1 = load i32*, i32** %var.addr, align 8, !dbg !112, !tbaa !52
  %2 = load i32*, i32** %.global_tid..addr, align 8, !dbg !112, !tbaa !52
  %3 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !112, !tbaa !52
  %4 = load %struct.omp_lock_t*, %struct.omp_lock_t** %lck.addr, align 8, !dbg !112, !tbaa !52
  %5 = load i32*, i32** %var.addr, align 8, !dbg !112, !tbaa !52
  call void @.omp_outlined._debug__(i32* %2, i32* %3, %struct.omp_lock_t* %4, i32* %5) #5, !dbg !112
  ret void, !dbg !112
}

declare !callback !113 dso_local void @__kmpc_fork_teams(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

; Function Attrs: norecurse nounwind uwtable
define internal void @__omp_offloading_1030a_216095c_main_l23(i32* dereferenceable(4) %var, %struct.omp_lock_t* dereferenceable(8) %lck) #4 !dbg !115 {
entry:
  %var.addr = alloca i32*, align 8
  %lck.addr = alloca %struct.omp_lock_t*, align 8
  store i32* %var, i32** %var.addr, align 8, !tbaa !52
  call void @llvm.dbg.declare(metadata i32** %var.addr, metadata !117, metadata !DIExpression()), !dbg !119
  store %struct.omp_lock_t* %lck, %struct.omp_lock_t** %lck.addr, align 8, !tbaa !52
  call void @llvm.dbg.declare(metadata %struct.omp_lock_t** %lck.addr, metadata !118, metadata !DIExpression()), !dbg !119
  %0 = load i32*, i32** %var.addr, align 8, !dbg !120, !tbaa !52
  %1 = load %struct.omp_lock_t*, %struct.omp_lock_t** %lck.addr, align 8, !dbg !120, !tbaa !52
  %2 = load i32*, i32** %var.addr, align 8, !dbg !120, !tbaa !52
  %3 = load %struct.omp_lock_t*, %struct.omp_lock_t** %lck.addr, align 8, !dbg !120, !tbaa !52
  call void @__omp_offloading_1030a_216095c_main_l23_debug__(i32* %2, %struct.omp_lock_t* %3) #5, !dbg !120
  ret void, !dbg !120
}

declare !dbg !15 dso_local void @omp_destroy_lock(%struct.omp_lock_t*) #3

declare dso_local i32 @printf(i8*, ...) #3

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!16, !17, !18}
!llvm.ident = !{!19}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "integration/dataracebench/DRB154-missinglock3-orig-gpu-no.c", directory: "/home/brad/Code/OpenRace/tests/data")
!2 = !{}
!3 = !{!4, !13, !14, !15}
!4 = !DISubprogram(name: "omp_init_lock", scope: !5, file: !5, line: 86, type: !6, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!5 = !DIFile(filename: "/usr/include/omp.h", directory: "")
!6 = !DISubroutineType(types: !7)
!7 = !{null, !8}
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "omp_lock_t", file: !5, line: 82, size: 64, elements: !10)
!10 = !{!11}
!11 = !DIDerivedType(tag: DW_TAG_member, name: "_lk", scope: !9, file: !5, line: 83, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!13 = !DISubprogram(name: "omp_set_lock", scope: !5, file: !5, line: 87, type: !6, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!14 = !DISubprogram(name: "omp_unset_lock", scope: !5, file: !5, line: 88, type: !6, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!15 = !DISubprogram(name: "omp_destroy_lock", scope: !5, file: !5, line: 89, type: !6, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!16 = !{i32 7, !"Dwarf Version", i32 4}
!17 = !{i32 2, !"Debug Info Version", i32 3}
!18 = !{i32 1, !"wchar_size", i32 4}
!19 = !{!"clang version 10.0.1 "}
!20 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 18, type: !21, scopeLine: 18, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !24)
!21 = !DISubroutineType(types: !22)
!22 = !{!23}
!23 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!24 = !{!25, !27}
!25 = !DILocalVariable(name: "lck", scope: !20, file: !1, line: 19, type: !26)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "omp_lock_t", file: !5, line: 84, baseType: !9)
!27 = !DILocalVariable(name: "var", scope: !20, file: !1, line: 20, type: !23)
!28 = !DILocation(line: 19, column: 3, scope: !20)
!29 = !DILocation(line: 19, column: 14, scope: !20)
!30 = !DILocation(line: 20, column: 3, scope: !20)
!31 = !DILocation(line: 20, column: 7, scope: !20)
!32 = !{!33, !33, i64 0}
!33 = !{!"int", !34, i64 0}
!34 = !{!"omnipotent char", !35, i64 0}
!35 = !{!"Simple C/C++ TBAA"}
!36 = !DILocation(line: 21, column: 3, scope: !20)
!37 = !DILocation(line: 23, column: 3, scope: !38)
!38 = distinct !DILexicalBlock(scope: !20, file: !1, line: 23, column: 3)
!39 = !DILocation(line: 31, column: 3, scope: !20)
!40 = !DILocation(line: 32, column: 18, scope: !20)
!41 = !DILocation(line: 32, column: 3, scope: !20)
!42 = !DILocation(line: 34, column: 1, scope: !20)
!43 = !DILocation(line: 33, column: 3, scope: !20)
!44 = distinct !DISubprogram(name: "__omp_offloading_1030a_216095c_main_l23_debug__", scope: !1, file: !1, line: 24, type: !45, scopeLine: 24, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !49)
!45 = !DISubroutineType(types: !46)
!46 = !{null, !47, !48}
!47 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !23, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !26, size: 64)
!49 = !{!50, !51}
!50 = !DILocalVariable(name: "var", arg: 1, scope: !44, file: !1, line: 20, type: !47)
!51 = !DILocalVariable(name: "lck", arg: 2, scope: !44, file: !1, line: 19, type: !48)
!52 = !{!53, !53, i64 0}
!53 = !{!"any pointer", !34, i64 0}
!54 = !DILocation(line: 20, column: 7, scope: !44)
!55 = !DILocation(line: 19, column: 14, scope: !44)
!56 = !DILocation(line: 24, column: 3, scope: !44)
!57 = !{!58, !53, i64 16}
!58 = !{!"ident_t", !33, i64 0, !33, i64 4, !33, i64 8, !33, i64 12, !53, i64 16}
!59 = !DILocation(line: 24, column: 48, scope: !44)
!60 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 25, type: !61, scopeLine: 25, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !67)
!61 = !DISubroutineType(types: !62)
!62 = !{null, !63, !63, !48, !47}
!63 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !64)
!64 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !65)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !23)
!67 = !{!68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78}
!68 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !60, type: !63, flags: DIFlagArtificial)
!69 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !60, type: !63, flags: DIFlagArtificial)
!70 = !DILocalVariable(name: "lck", arg: 3, scope: !60, file: !1, line: 19, type: !48)
!71 = !DILocalVariable(name: "var", arg: 4, scope: !60, file: !1, line: 20, type: !47)
!72 = !DILocalVariable(name: "var", scope: !60, type: !23, flags: DIFlagArtificial)
!73 = !DILocalVariable(name: ".omp.iv", scope: !60, type: !23, flags: DIFlagArtificial)
!74 = !DILocalVariable(name: ".omp.lb", scope: !60, type: !23, flags: DIFlagArtificial)
!75 = !DILocalVariable(name: ".omp.ub", scope: !60, type: !23, flags: DIFlagArtificial)
!76 = !DILocalVariable(name: ".omp.stride", scope: !60, type: !23, flags: DIFlagArtificial)
!77 = !DILocalVariable(name: ".omp.is_last", scope: !60, type: !23, flags: DIFlagArtificial)
!78 = !DILocalVariable(name: "i", scope: !60, type: !23, flags: DIFlagArtificial)
!79 = !DILocation(line: 0, scope: !60)
!80 = !DILocation(line: 19, column: 14, scope: !60)
!81 = !DILocation(line: 20, column: 7, scope: !60)
!82 = !DILocation(line: 25, column: 3, scope: !60)
!83 = !DILocation(line: 24, column: 44, scope: !60)
!84 = !DILocation(line: 25, column: 8, scope: !60)
!85 = !DILocation(line: 25, column: 24, scope: !60)
!86 = !DILocation(line: 26, column: 5, scope: !87)
!87 = distinct !DILexicalBlock(scope: !60, file: !1, line: 25, column: 28)
!88 = !DILocation(line: 27, column: 8, scope: !87)
!89 = !DILocation(line: 28, column: 5, scope: !87)
!90 = !DILocation(line: 29, column: 3, scope: !87)
!91 = !DILocation(line: 24, column: 3, scope: !60)
!92 = distinct !{!92, !91, !93}
!93 = !DILocation(line: 24, column: 48, scope: !60)
!94 = !DILocation(line: 24, column: 42, scope: !60)
!95 = !DILocation(line: 29, column: 3, scope: !60)
!96 = distinct !DISubprogram(linkageName: ".omp.reduction.reduction_func", scope: !1, file: !1, line: 24, type: !97, scopeLine: 24, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !98)
!97 = !DISubroutineType(types: !2)
!98 = !{!99, !100}
!99 = !DILocalVariable(arg: 1, scope: !96, type: !12, flags: DIFlagArtificial)
!100 = !DILocalVariable(arg: 2, scope: !96, type: !12, flags: DIFlagArtificial)
!101 = !DILocation(line: 0, scope: !96)
!102 = !DILocation(line: 24, column: 48, scope: !96)
!103 = !DILocation(line: 24, column: 44, scope: !96)
!104 = !DILocation(line: 24, column: 42, scope: !96)
!105 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 25, type: !61, scopeLine: 25, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !106)
!106 = !{!107, !108, !109, !110}
!107 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !105, type: !63, flags: DIFlagArtificial)
!108 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !105, type: !63, flags: DIFlagArtificial)
!109 = !DILocalVariable(name: "lck", arg: 3, scope: !105, type: !48, flags: DIFlagArtificial)
!110 = !DILocalVariable(name: "var", arg: 4, scope: !105, type: !47, flags: DIFlagArtificial)
!111 = !DILocation(line: 0, scope: !105)
!112 = !DILocation(line: 25, column: 3, scope: !105)
!113 = !{!114}
!114 = !{i64 2, i64 -1, i64 -1, i1 true}
!115 = distinct !DISubprogram(name: "__omp_offloading_1030a_216095c_main_l23", scope: !1, file: !1, line: 24, type: !45, scopeLine: 24, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !116)
!116 = !{!117, !118}
!117 = !DILocalVariable(name: "var", arg: 1, scope: !115, type: !47, flags: DIFlagArtificial)
!118 = !DILocalVariable(name: "lck", arg: 2, scope: !115, type: !48, flags: DIFlagArtificial)
!119 = !DILocation(line: 0, scope: !115)
!120 = !DILocation(line: 24, column: 3, scope: !115)
