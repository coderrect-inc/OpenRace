; ModuleID = 'integration/openmp/reduction-yes.c'
source_filename = "integration/openmp/reduction-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [48 x i8] c";integration/openmp/reduction-yes.c;main;12;1;;\00", align 1
@2 = private unnamed_addr constant [48 x i8] c";integration/openmp/reduction-yes.c;main;15;1;;\00", align 1
@3 = private unnamed_addr constant [49 x i8] c";integration/openmp/reduction-yes.c;main;15;39;;\00", align 1
@.gomp_critical_user_.reduction.var = common global [8 x i32] zeroinitializer
@4 = private unnamed_addr constant [48 x i8] c";integration/openmp/reduction-yes.c;main;10;1;;\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main() #0 !dbg !7 {
entry:
  %N = alloca i32, align 4
  %counter = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  %2 = bitcast i32* %N to i8*, !dbg !15
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #5, !dbg !15
  call void @llvm.dbg.declare(metadata i32* %N, metadata !12, metadata !DIExpression()), !dbg !16
  store i32 10000, i32* %N, align 4, !dbg !16, !tbaa !17
  %3 = bitcast i32* %counter to i8*, !dbg !21
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #5, !dbg !21
  call void @llvm.dbg.declare(metadata i32* %counter, metadata !14, metadata !DIExpression()), !dbg !22
  store i32 0, i32* %counter, align 4, !dbg !22, !tbaa !17
  %4 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !23
  store i8* getelementptr inbounds ([48 x i8], [48 x i8]* @4, i32 0, i32 0), i8** %4, align 8, !dbg !23, !tbaa !24
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 2, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %counter, i32* %N), !dbg !23
  %5 = load i32, i32* %counter, align 4, !dbg !27, !tbaa !17
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %5), !dbg !28
  %6 = bitcast i32* %counter to i8*, !dbg !29
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %6) #5, !dbg !29
  %7 = bitcast i32* %N to i8*, !dbg !29
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %7) #5, !dbg !29
  ret i32 0, !dbg !29
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %counter, i32* dereferenceable(4) %N) #3 !dbg !30 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %counter.addr = alloca i32*, align 8
  %N.addr = alloca i32*, align 8
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %.omp.iv = alloca i32, align 4
  %tmp = alloca i32, align 4
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %counter1 = alloca i32, align 4
  %i = alloca i32, align 4
  %.omp.reduction.red_list = alloca [1 x i8*], align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !52
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !39, metadata !DIExpression()), !dbg !53
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !52
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !40, metadata !DIExpression()), !dbg !53
  store i32* %counter, i32** %counter.addr, align 8, !tbaa !52
  call void @llvm.dbg.declare(metadata i32** %counter.addr, metadata !41, metadata !DIExpression()), !dbg !54
  store i32* %N, i32** %N.addr, align 8, !tbaa !52
  call void @llvm.dbg.declare(metadata i32** %N.addr, metadata !42, metadata !DIExpression()), !dbg !55
  %2 = load i32*, i32** %counter.addr, align 8, !dbg !56, !tbaa !52
  %3 = load i32*, i32** %N.addr, align 8, !dbg !56, !tbaa !52
  %4 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !57
  store i8* getelementptr inbounds ([48 x i8], [48 x i8]* @1, i32 0, i32 0), i8** %4, align 8, !dbg !57, !tbaa !24
  %5 = load i32*, i32** %.global_tid..addr, align 8, !dbg !57
  %6 = load i32, i32* %5, align 4, !dbg !57, !tbaa !17
  %7 = call i32 @__kmpc_master(%struct.ident_t* %.kmpc_loc.addr, i32 %6), !dbg !57
  %8 = icmp ne i32 %7, 0, !dbg !57
  br i1 %8, label %omp_if.then, label %omp_if.end, !dbg !57

omp_if.then:                                      ; preds = %entry
  store i32 1, i32* %2, align 4, !dbg !58, !tbaa !17
  call void @__kmpc_end_master(%struct.ident_t* %.kmpc_loc.addr, i32 %6), !dbg !60
  br label %omp_if.end, !dbg !60

omp_if.end:                                       ; preds = %omp_if.then, %entry
  %9 = bitcast i32* %.omp.iv to i8*, !dbg !61
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #5, !dbg !61
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !43, metadata !DIExpression()), !dbg !62
  %10 = bitcast i32* %.omp.lb to i8*, !dbg !61
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #5, !dbg !61
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !46, metadata !DIExpression()), !dbg !62
  store i32 0, i32* %.omp.lb, align 4, !dbg !63, !tbaa !17
  %11 = bitcast i32* %.omp.ub to i8*, !dbg !61
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #5, !dbg !61
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !47, metadata !DIExpression()), !dbg !62
  store i32 9999, i32* %.omp.ub, align 4, !dbg !63, !tbaa !17
  %12 = bitcast i32* %.omp.stride to i8*, !dbg !61
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #5, !dbg !61
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !48, metadata !DIExpression()), !dbg !62
  store i32 1, i32* %.omp.stride, align 4, !dbg !63, !tbaa !17
  %13 = bitcast i32* %.omp.is_last to i8*, !dbg !61
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %13) #5, !dbg !61
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !49, metadata !DIExpression()), !dbg !62
  store i32 0, i32* %.omp.is_last, align 4, !dbg !63, !tbaa !17
  %14 = bitcast i32* %counter1 to i8*, !dbg !61
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %14) #5, !dbg !61
  call void @llvm.dbg.declare(metadata i32* %counter1, metadata !50, metadata !DIExpression()), !dbg !62
  store i32 0, i32* %counter1, align 4, !dbg !64, !tbaa !17
  %15 = bitcast i32* %i to i8*, !dbg !61
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %15) #5, !dbg !61
  call void @llvm.dbg.declare(metadata i32* %i, metadata !51, metadata !DIExpression()), !dbg !62
  %16 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !61
  store i8* getelementptr inbounds ([48 x i8], [48 x i8]* @2, i32 0, i32 0), i8** %16, align 8, !dbg !61, !tbaa !24
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %6, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !61
  %17 = load i32, i32* %.omp.ub, align 4, !dbg !63, !tbaa !17
  %cmp = icmp sgt i32 %17, 9999, !dbg !63
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !63

cond.true:                                        ; preds = %omp_if.end
  br label %cond.end, !dbg !63

cond.false:                                       ; preds = %omp_if.end
  %18 = load i32, i32* %.omp.ub, align 4, !dbg !63, !tbaa !17
  br label %cond.end, !dbg !63

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 9999, %cond.true ], [ %18, %cond.false ], !dbg !63
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !63, !tbaa !17
  %19 = load i32, i32* %.omp.lb, align 4, !dbg !63, !tbaa !17
  store i32 %19, i32* %.omp.iv, align 4, !dbg !63, !tbaa !17
  br label %omp.inner.for.cond, !dbg !61

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %20 = load i32, i32* %.omp.iv, align 4, !dbg !63, !tbaa !17
  %21 = load i32, i32* %.omp.ub, align 4, !dbg !63, !tbaa !17
  %cmp2 = icmp sle i32 %20, %21, !dbg !65
  br i1 %cmp2, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !61

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !61

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %22 = load i32, i32* %.omp.iv, align 4, !dbg !63, !tbaa !17
  %mul = mul nsw i32 %22, 1, !dbg !66
  %add = add nsw i32 0, %mul, !dbg !66
  store i32 %add, i32* %i, align 4, !dbg !66, !tbaa !17
  %23 = load i32, i32* %counter1, align 4, !dbg !67, !tbaa !17
  %inc = add nsw i32 %23, 1, !dbg !67
  store i32 %inc, i32* %counter1, align 4, !dbg !67, !tbaa !17
  br label %omp.body.continue, !dbg !69

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !70

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %24 = load i32, i32* %.omp.iv, align 4, !dbg !63, !tbaa !17
  %add3 = add nsw i32 %24, 1, !dbg !65
  store i32 %add3, i32* %.omp.iv, align 4, !dbg !65, !tbaa !17
  br label %omp.inner.for.cond, !dbg !70, !llvm.loop !71

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !70

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %25 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !70
  store i8* getelementptr inbounds ([49 x i8], [49 x i8]* @3, i32 0, i32 0), i8** %25, align 8, !dbg !70, !tbaa !24
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %6), !dbg !70
  %26 = getelementptr inbounds [1 x i8*], [1 x i8*]* %.omp.reduction.red_list, i64 0, i64 0, !dbg !70
  %27 = bitcast i32* %counter1 to i8*, !dbg !70
  store i8* %27, i8** %26, align 8, !dbg !70
  %28 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !70
  store i8* getelementptr inbounds ([49 x i8], [49 x i8]* @3, i32 0, i32 0), i8** %28, align 8, !dbg !70, !tbaa !24
  %29 = bitcast [1 x i8*]* %.omp.reduction.red_list to i8*, !dbg !70
  %30 = call i32 @__kmpc_reduce(%struct.ident_t* %.kmpc_loc.addr, i32 %6, i32 1, i64 8, i8* %29, void (i8*, i8*)* @.omp.reduction.reduction_func, [8 x i32]* @.gomp_critical_user_.reduction.var), !dbg !70
  switch i32 %30, label %.omp.reduction.default [
    i32 1, label %.omp.reduction.case1
    i32 2, label %.omp.reduction.case2
  ], !dbg !70

.omp.reduction.case1:                             ; preds = %omp.loop.exit
  %31 = load i32, i32* %2, align 4, !dbg !64, !tbaa !17
  %32 = load i32, i32* %counter1, align 4, !dbg !64, !tbaa !17
  %add4 = add nsw i32 %31, %32, !dbg !73
  store i32 %add4, i32* %2, align 4, !dbg !73, !tbaa !17
  call void @__kmpc_end_reduce(%struct.ident_t* %.kmpc_loc.addr, i32 %6, [8 x i32]* @.gomp_critical_user_.reduction.var), !dbg !70
  br label %.omp.reduction.default, !dbg !70

.omp.reduction.case2:                             ; preds = %omp.loop.exit
  %33 = load i32, i32* %counter1, align 4, !dbg !64, !tbaa !17
  %34 = atomicrmw add i32* %2, i32 %33 monotonic, !dbg !70
  call void @__kmpc_end_reduce(%struct.ident_t* %.kmpc_loc.addr, i32 %6, [8 x i32]* @.gomp_critical_user_.reduction.var), !dbg !70
  br label %.omp.reduction.default, !dbg !70

.omp.reduction.default:                           ; preds = %.omp.reduction.case2, %.omp.reduction.case1, %omp.loop.exit
  %35 = bitcast i32* %i to i8*, !dbg !70
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %35) #5, !dbg !70
  %36 = bitcast i32* %counter1 to i8*, !dbg !70
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %36) #5, !dbg !70
  %37 = bitcast i32* %.omp.is_last to i8*, !dbg !70
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %37) #5, !dbg !70
  %38 = bitcast i32* %.omp.stride to i8*, !dbg !70
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %38) #5, !dbg !70
  %39 = bitcast i32* %.omp.ub to i8*, !dbg !70
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %39) #5, !dbg !70
  %40 = bitcast i32* %.omp.lb to i8*, !dbg !70
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %40) #5, !dbg !70
  %41 = bitcast i32* %.omp.iv to i8*, !dbg !70
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %41) #5, !dbg !70
  %42 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !72
  store i8* getelementptr inbounds ([48 x i8], [48 x i8]* @2, i32 0, i32 0), i8** %42, align 8, !dbg !72, !tbaa !24
  call void @__kmpc_barrier(%struct.ident_t* %.kmpc_loc.addr, i32 %6), !dbg !72
  ret void, !dbg !74
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local void @__kmpc_end_master(%struct.ident_t*, i32)

declare dso_local i32 @__kmpc_master(%struct.ident_t*, i32)

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp.reduction.reduction_func(i8* %0, i8* %1) #3 !dbg !75 {
entry:
  %.addr = alloca i8*, align 8
  %.addr1 = alloca i8*, align 8
  store i8* %0, i8** %.addr, align 8, !tbaa !52
  call void @llvm.dbg.declare(metadata i8** %.addr, metadata !78, metadata !DIExpression()), !dbg !81
  store i8* %1, i8** %.addr1, align 8, !tbaa !52
  call void @llvm.dbg.declare(metadata i8** %.addr1, metadata !80, metadata !DIExpression()), !dbg !81
  %2 = load i8*, i8** %.addr, align 8, !dbg !82
  %3 = bitcast i8* %2 to [1 x i8*]*, !dbg !82
  %4 = load i8*, i8** %.addr1, align 8, !dbg !82
  %5 = bitcast i8* %4 to [1 x i8*]*, !dbg !82
  %6 = getelementptr inbounds [1 x i8*], [1 x i8*]* %5, i64 0, i64 0, !dbg !82
  %7 = load i8*, i8** %6, align 8, !dbg !82
  %8 = bitcast i8* %7 to i32*, !dbg !82
  %9 = getelementptr inbounds [1 x i8*], [1 x i8*]* %3, i64 0, i64 0, !dbg !82
  %10 = load i8*, i8** %9, align 8, !dbg !82
  %11 = bitcast i8* %10 to i32*, !dbg !82
  %12 = load i32, i32* %11, align 4, !dbg !83, !tbaa !17
  %13 = load i32, i32* %8, align 4, !dbg !83, !tbaa !17
  %add = add nsw i32 %12, %13, !dbg !84
  store i32 %add, i32* %11, align 4, !dbg !84, !tbaa !17
  ret void, !dbg !83
}

declare dso_local i32 @__kmpc_reduce(%struct.ident_t*, i32, i32, i64, i8*, void (i8*, i8*)*, [8 x i32]*)

declare dso_local void @__kmpc_end_reduce(%struct.ident_t*, i32, [8 x i32]*)

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

declare dso_local void @__kmpc_barrier(%struct.ident_t*, i32)

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %counter, i32* dereferenceable(4) %N) #3 !dbg !85 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %counter.addr = alloca i32*, align 8
  %N.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !52
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !87, metadata !DIExpression()), !dbg !91
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !52
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !88, metadata !DIExpression()), !dbg !91
  store i32* %counter, i32** %counter.addr, align 8, !tbaa !52
  call void @llvm.dbg.declare(metadata i32** %counter.addr, metadata !89, metadata !DIExpression()), !dbg !91
  store i32* %N, i32** %N.addr, align 8, !tbaa !52
  call void @llvm.dbg.declare(metadata i32** %N.addr, metadata !90, metadata !DIExpression()), !dbg !91
  %0 = load i32*, i32** %counter.addr, align 8, !dbg !92, !tbaa !52
  %1 = load i32*, i32** %N.addr, align 8, !dbg !92, !tbaa !52
  %2 = load i32*, i32** %.global_tid..addr, align 8, !dbg !92, !tbaa !52
  %3 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !92, !tbaa !52
  %4 = load i32*, i32** %counter.addr, align 8, !dbg !92, !tbaa !52
  %5 = load i32*, i32** %N.addr, align 8, !dbg !92, !tbaa !52
  call void @.omp_outlined._debug__(i32* %2, i32* %3, i32* %4, i32* %5) #5, !dbg !92
  ret void, !dbg !92
}

declare !callback !93 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

declare dso_local i32 @printf(i8*, ...) #4

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "integration/openmp/reduction-yes.c", directory: "/home/brad/Code/OpenRace/tests/data")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.1 "}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 6, type: !8, scopeLine: 6, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !11)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !{!12, !14}
!12 = !DILocalVariable(name: "N", scope: !7, file: !1, line: 7, type: !13)
!13 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!14 = !DILocalVariable(name: "counter", scope: !7, file: !1, line: 8, type: !10)
!15 = !DILocation(line: 7, column: 3, scope: !7)
!16 = !DILocation(line: 7, column: 13, scope: !7)
!17 = !{!18, !18, i64 0}
!18 = !{!"int", !19, i64 0}
!19 = !{!"omnipotent char", !20, i64 0}
!20 = !{!"Simple C/C++ TBAA"}
!21 = !DILocation(line: 8, column: 3, scope: !7)
!22 = !DILocation(line: 8, column: 7, scope: !7)
!23 = !DILocation(line: 10, column: 1, scope: !7)
!24 = !{!25, !26, i64 16}
!25 = !{!"ident_t", !18, i64 0, !18, i64 4, !18, i64 8, !18, i64 12, !26, i64 16}
!26 = !{!"any pointer", !19, i64 0}
!27 = !DILocation(line: 21, column: 18, scope: !7)
!28 = !DILocation(line: 21, column: 3, scope: !7)
!29 = !DILocation(line: 22, column: 1, scope: !7)
!30 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 11, type: !31, scopeLine: 11, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !38)
!31 = !DISubroutineType(types: !32)
!32 = !{null, !33, !33, !36, !37}
!33 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !34)
!34 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !35)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !10, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !13, size: 64)
!38 = !{!39, !40, !41, !42, !43, !46, !47, !48, !49, !50, !51}
!39 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !30, type: !33, flags: DIFlagArtificial)
!40 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !30, type: !33, flags: DIFlagArtificial)
!41 = !DILocalVariable(name: "counter", arg: 3, scope: !30, file: !1, line: 8, type: !36)
!42 = !DILocalVariable(name: "N", arg: 4, scope: !30, file: !1, line: 7, type: !37)
!43 = !DILocalVariable(name: ".omp.iv", scope: !44, type: !10, flags: DIFlagArtificial)
!44 = distinct !DILexicalBlock(scope: !45, file: !1, line: 15, column: 1)
!45 = distinct !DILexicalBlock(scope: !30, file: !1, line: 11, column: 3)
!46 = !DILocalVariable(name: ".omp.lb", scope: !44, type: !10, flags: DIFlagArtificial)
!47 = !DILocalVariable(name: ".omp.ub", scope: !44, type: !10, flags: DIFlagArtificial)
!48 = !DILocalVariable(name: ".omp.stride", scope: !44, type: !10, flags: DIFlagArtificial)
!49 = !DILocalVariable(name: ".omp.is_last", scope: !44, type: !10, flags: DIFlagArtificial)
!50 = !DILocalVariable(name: "counter", scope: !44, type: !10, flags: DIFlagArtificial)
!51 = !DILocalVariable(name: "i", scope: !44, type: !10, flags: DIFlagArtificial)
!52 = !{!26, !26, i64 0}
!53 = !DILocation(line: 0, scope: !30)
!54 = !DILocation(line: 8, column: 7, scope: !30)
!55 = !DILocation(line: 7, column: 13, scope: !30)
!56 = !DILocation(line: 11, column: 3, scope: !30)
!57 = !DILocation(line: 12, column: 1, scope: !45)
!58 = !DILocation(line: 13, column: 13, scope: !59)
!59 = distinct !DILexicalBlock(scope: !45, file: !1, line: 12, column: 1)
!60 = !DILocation(line: 13, column: 5, scope: !59)
!61 = !DILocation(line: 15, column: 1, scope: !45)
!62 = !DILocation(line: 0, scope: !44)
!63 = !DILocation(line: 16, column: 10, scope: !44)
!64 = !DILocation(line: 15, column: 31, scope: !44)
!65 = !DILocation(line: 16, column: 5, scope: !44)
!66 = !DILocation(line: 16, column: 28, scope: !44)
!67 = !DILocation(line: 17, column: 14, scope: !68)
!68 = distinct !DILexicalBlock(scope: !44, file: !1, line: 16, column: 33)
!69 = !DILocation(line: 18, column: 5, scope: !68)
!70 = !DILocation(line: 15, column: 1, scope: !44)
!71 = distinct !{!71, !70, !72}
!72 = !DILocation(line: 15, column: 39, scope: !44)
!73 = !DILocation(line: 15, column: 27, scope: !44)
!74 = !DILocation(line: 19, column: 3, scope: !30)
!75 = distinct !DISubprogram(linkageName: ".omp.reduction.reduction_func", scope: !1, file: !1, line: 15, type: !76, scopeLine: 15, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !77)
!76 = !DISubroutineType(types: !2)
!77 = !{!78, !80}
!78 = !DILocalVariable(arg: 1, scope: !75, type: !79, flags: DIFlagArtificial)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!80 = !DILocalVariable(arg: 2, scope: !75, type: !79, flags: DIFlagArtificial)
!81 = !DILocation(line: 0, scope: !75)
!82 = !DILocation(line: 15, column: 39, scope: !75)
!83 = !DILocation(line: 15, column: 31, scope: !75)
!84 = !DILocation(line: 15, column: 27, scope: !75)
!85 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 11, type: !31, scopeLine: 11, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !86)
!86 = !{!87, !88, !89, !90}
!87 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !85, type: !33, flags: DIFlagArtificial)
!88 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !85, type: !33, flags: DIFlagArtificial)
!89 = !DILocalVariable(name: "counter", arg: 3, scope: !85, type: !36, flags: DIFlagArtificial)
!90 = !DILocalVariable(name: "N", arg: 4, scope: !85, type: !37, flags: DIFlagArtificial)
!91 = !DILocation(line: 0, scope: !85)
!92 = !DILocation(line: 11, column: 3, scope: !85)
!93 = !{!94}
!94 = !{i64 2, i64 -1, i64 -1, i1 true}
