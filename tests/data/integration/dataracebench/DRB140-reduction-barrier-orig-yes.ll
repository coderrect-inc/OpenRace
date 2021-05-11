; ModuleID = 'integration/dataracebench/DRB140-reduction-barrier-orig-yes.c'
source_filename = "integration/dataracebench/DRB140-reduction-barrier-orig-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [75 x i8] c";integration/dataracebench/DRB140-reduction-barrier-orig-yes.c;main;24;5;;\00", align 1
@2 = private unnamed_addr constant [75 x i8] c";integration/dataracebench/DRB140-reduction-barrier-orig-yes.c;main;27;5;;\00", align 1
@3 = private unnamed_addr constant [76 x i8] c";integration/dataracebench/DRB140-reduction-barrier-orig-yes.c;main;27;35;;\00", align 1
@.gomp_critical_user_.reduction.var = common global [8 x i32] zeroinitializer
@4 = private unnamed_addr constant [75 x i8] c";integration/dataracebench/DRB140-reduction-barrier-orig-yes.c;main;32;5;;\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"Sum is %d\0A\00", align 1
@5 = private unnamed_addr constant [75 x i8] c";integration/dataracebench/DRB140-reduction-barrier-orig-yes.c;main;22;3;;\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main() #0 !dbg !7 {
entry:
  %retval = alloca i32, align 4
  %a = alloca i32, align 4
  %i = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32 0, i32* %retval, align 4
  %2 = bitcast i32* %a to i8*, !dbg !14
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #5, !dbg !14
  call void @llvm.dbg.declare(metadata i32* %a, metadata !12, metadata !DIExpression()), !dbg !15
  %3 = bitcast i32* %i to i8*, !dbg !14
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #5, !dbg !14
  call void @llvm.dbg.declare(metadata i32* %i, metadata !13, metadata !DIExpression()), !dbg !16
  %4 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !17
  store i8* getelementptr inbounds ([75 x i8], [75 x i8]* @5, i32 0, i32 0), i8** %4, align 8, !dbg !17, !tbaa !18
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %a), !dbg !17
  %5 = bitcast i32* %i to i8*, !dbg !24
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %5) #5, !dbg !24
  %6 = bitcast i32* %a to i8*, !dbg !24
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %6) #5, !dbg !24
  ret i32 0, !dbg !25
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %a) #3 !dbg !26 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %a.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %.omp.iv = alloca i32, align 4
  %tmp = alloca i32, align 4
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %a1 = alloca i32, align 4
  %i2 = alloca i32, align 4
  %.omp.reduction.red_list = alloca [1 x i8*], align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !48
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !35, metadata !DIExpression()), !dbg !49
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !48
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !36, metadata !DIExpression()), !dbg !49
  store i32* %a, i32** %a.addr, align 8, !tbaa !48
  call void @llvm.dbg.declare(metadata i32** %a.addr, metadata !37, metadata !DIExpression()), !dbg !50
  %2 = load i32*, i32** %a.addr, align 8, !dbg !51, !tbaa !48
  %3 = bitcast i32* %i to i8*, !dbg !51
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #5, !dbg !51
  call void @llvm.dbg.declare(metadata i32* %i, metadata !38, metadata !DIExpression()), !dbg !49
  %4 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !52
  store i8* getelementptr inbounds ([75 x i8], [75 x i8]* @1, i32 0, i32 0), i8** %4, align 8, !dbg !52, !tbaa !18
  %5 = load i32*, i32** %.global_tid..addr, align 8, !dbg !52
  %6 = load i32, i32* %5, align 4, !dbg !52, !tbaa !53
  %7 = call i32 @__kmpc_master(%struct.ident_t* %.kmpc_loc.addr, i32 %6), !dbg !52
  %8 = icmp ne i32 %7, 0, !dbg !52
  br i1 %8, label %omp_if.then, label %omp_if.end, !dbg !52

omp_if.then:                                      ; preds = %entry
  store i32 0, i32* %2, align 4, !dbg !54, !tbaa !53
  call void @__kmpc_end_master(%struct.ident_t* %.kmpc_loc.addr, i32 %6), !dbg !56
  br label %omp_if.end, !dbg !56

omp_if.end:                                       ; preds = %omp_if.then, %entry
  %9 = bitcast i32* %.omp.iv to i8*, !dbg !57
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #5, !dbg !57
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !39, metadata !DIExpression()), !dbg !58
  %10 = bitcast i32* %.omp.lb to i8*, !dbg !57
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #5, !dbg !57
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !42, metadata !DIExpression()), !dbg !58
  store i32 0, i32* %.omp.lb, align 4, !dbg !59, !tbaa !53
  %11 = bitcast i32* %.omp.ub to i8*, !dbg !57
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #5, !dbg !57
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !43, metadata !DIExpression()), !dbg !58
  store i32 9, i32* %.omp.ub, align 4, !dbg !59, !tbaa !53
  %12 = bitcast i32* %.omp.stride to i8*, !dbg !57
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #5, !dbg !57
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !44, metadata !DIExpression()), !dbg !58
  store i32 1, i32* %.omp.stride, align 4, !dbg !59, !tbaa !53
  %13 = bitcast i32* %.omp.is_last to i8*, !dbg !57
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %13) #5, !dbg !57
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !45, metadata !DIExpression()), !dbg !58
  store i32 0, i32* %.omp.is_last, align 4, !dbg !59, !tbaa !53
  %14 = bitcast i32* %a1 to i8*, !dbg !57
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %14) #5, !dbg !57
  call void @llvm.dbg.declare(metadata i32* %a1, metadata !46, metadata !DIExpression()), !dbg !58
  store i32 0, i32* %a1, align 4, !dbg !60, !tbaa !53
  %15 = bitcast i32* %i2 to i8*, !dbg !57
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %15) #5, !dbg !57
  call void @llvm.dbg.declare(metadata i32* %i2, metadata !47, metadata !DIExpression()), !dbg !58
  %16 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !57
  store i8* getelementptr inbounds ([75 x i8], [75 x i8]* @2, i32 0, i32 0), i8** %16, align 8, !dbg !57, !tbaa !18
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %6, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !57
  %17 = load i32, i32* %.omp.ub, align 4, !dbg !59, !tbaa !53
  %cmp = icmp sgt i32 %17, 9, !dbg !59
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !59

cond.true:                                        ; preds = %omp_if.end
  br label %cond.end, !dbg !59

cond.false:                                       ; preds = %omp_if.end
  %18 = load i32, i32* %.omp.ub, align 4, !dbg !59, !tbaa !53
  br label %cond.end, !dbg !59

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 9, %cond.true ], [ %18, %cond.false ], !dbg !59
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !59, !tbaa !53
  %19 = load i32, i32* %.omp.lb, align 4, !dbg !59, !tbaa !53
  store i32 %19, i32* %.omp.iv, align 4, !dbg !59, !tbaa !53
  br label %omp.inner.for.cond, !dbg !57

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %20 = load i32, i32* %.omp.iv, align 4, !dbg !59, !tbaa !53
  %21 = load i32, i32* %.omp.ub, align 4, !dbg !59, !tbaa !53
  %cmp3 = icmp sle i32 %20, %21, !dbg !61
  br i1 %cmp3, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !57

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !57

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %22 = load i32, i32* %.omp.iv, align 4, !dbg !59, !tbaa !53
  %mul = mul nsw i32 %22, 1, !dbg !62
  %add = add nsw i32 0, %mul, !dbg !62
  store i32 %add, i32* %i2, align 4, !dbg !62, !tbaa !53
  %23 = load i32, i32* %a1, align 4, !dbg !63, !tbaa !53
  %24 = load i32, i32* %i2, align 4, !dbg !65, !tbaa !53
  %add4 = add nsw i32 %23, %24, !dbg !66
  store i32 %add4, i32* %a1, align 4, !dbg !67, !tbaa !53
  br label %omp.body.continue, !dbg !68

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !69

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %25 = load i32, i32* %.omp.iv, align 4, !dbg !59, !tbaa !53
  %add5 = add nsw i32 %25, 1, !dbg !61
  store i32 %add5, i32* %.omp.iv, align 4, !dbg !61, !tbaa !53
  br label %omp.inner.for.cond, !dbg !69, !llvm.loop !70

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !69

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %26 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !69
  store i8* getelementptr inbounds ([76 x i8], [76 x i8]* @3, i32 0, i32 0), i8** %26, align 8, !dbg !69, !tbaa !18
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %6), !dbg !69
  %27 = getelementptr inbounds [1 x i8*], [1 x i8*]* %.omp.reduction.red_list, i64 0, i64 0, !dbg !69
  %28 = bitcast i32* %a1 to i8*, !dbg !69
  store i8* %28, i8** %27, align 8, !dbg !69
  %29 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !69
  store i8* getelementptr inbounds ([76 x i8], [76 x i8]* @3, i32 0, i32 0), i8** %29, align 8, !dbg !69, !tbaa !18
  %30 = bitcast [1 x i8*]* %.omp.reduction.red_list to i8*, !dbg !69
  %31 = call i32 @__kmpc_reduce(%struct.ident_t* %.kmpc_loc.addr, i32 %6, i32 1, i64 8, i8* %30, void (i8*, i8*)* @.omp.reduction.reduction_func, [8 x i32]* @.gomp_critical_user_.reduction.var), !dbg !69
  switch i32 %31, label %.omp.reduction.default [
    i32 1, label %.omp.reduction.case1
    i32 2, label %.omp.reduction.case2
  ], !dbg !69

.omp.reduction.case1:                             ; preds = %omp.loop.exit
  %32 = load i32, i32* %2, align 4, !dbg !60, !tbaa !53
  %33 = load i32, i32* %a1, align 4, !dbg !60, !tbaa !53
  %add6 = add nsw i32 %32, %33, !dbg !72
  store i32 %add6, i32* %2, align 4, !dbg !72, !tbaa !53
  call void @__kmpc_end_reduce(%struct.ident_t* %.kmpc_loc.addr, i32 %6, [8 x i32]* @.gomp_critical_user_.reduction.var), !dbg !69
  br label %.omp.reduction.default, !dbg !69

.omp.reduction.case2:                             ; preds = %omp.loop.exit
  %34 = load i32, i32* %a1, align 4, !dbg !60, !tbaa !53
  %35 = atomicrmw add i32* %2, i32 %34 monotonic, !dbg !69
  call void @__kmpc_end_reduce(%struct.ident_t* %.kmpc_loc.addr, i32 %6, [8 x i32]* @.gomp_critical_user_.reduction.var), !dbg !69
  br label %.omp.reduction.default, !dbg !69

.omp.reduction.default:                           ; preds = %.omp.reduction.case2, %.omp.reduction.case1, %omp.loop.exit
  %36 = bitcast i32* %i2 to i8*, !dbg !69
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %36) #5, !dbg !69
  %37 = bitcast i32* %a1 to i8*, !dbg !69
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %37) #5, !dbg !69
  %38 = bitcast i32* %.omp.is_last to i8*, !dbg !69
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %38) #5, !dbg !69
  %39 = bitcast i32* %.omp.stride to i8*, !dbg !69
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %39) #5, !dbg !69
  %40 = bitcast i32* %.omp.ub to i8*, !dbg !69
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %40) #5, !dbg !69
  %41 = bitcast i32* %.omp.lb to i8*, !dbg !69
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %41) #5, !dbg !69
  %42 = bitcast i32* %.omp.iv to i8*, !dbg !69
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %42) #5, !dbg !69
  %43 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !71
  store i8* getelementptr inbounds ([75 x i8], [75 x i8]* @2, i32 0, i32 0), i8** %43, align 8, !dbg !71, !tbaa !18
  call void @__kmpc_barrier(%struct.ident_t* %.kmpc_loc.addr, i32 %6), !dbg !71
  %44 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !73
  store i8* getelementptr inbounds ([75 x i8], [75 x i8]* @4, i32 0, i32 0), i8** %44, align 8, !dbg !73, !tbaa !18
  %45 = call i32 @__kmpc_single(%struct.ident_t* %.kmpc_loc.addr, i32 %6), !dbg !73
  %46 = icmp ne i32 %45, 0, !dbg !73
  br i1 %46, label %omp_if.then7, label %omp_if.end8, !dbg !73

omp_if.then7:                                     ; preds = %.omp.reduction.default
  %47 = load i32, i32* %2, align 4, !dbg !74, !tbaa !53
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %47), !dbg !76
  call void @__kmpc_end_single(%struct.ident_t* %.kmpc_loc.addr, i32 %6), !dbg !76
  br label %omp_if.end8, !dbg !76

omp_if.end8:                                      ; preds = %omp_if.then7, %.omp.reduction.default
  %48 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !77
  store i8* getelementptr inbounds ([75 x i8], [75 x i8]* @4, i32 0, i32 0), i8** %48, align 8, !dbg !77, !tbaa !18
  call void @__kmpc_barrier(%struct.ident_t* %.kmpc_loc.addr, i32 %6), !dbg !77
  %49 = bitcast i32* %i to i8*, !dbg !78
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %49) #5, !dbg !78
  ret void, !dbg !79
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local void @__kmpc_end_master(%struct.ident_t*, i32)

declare dso_local i32 @__kmpc_master(%struct.ident_t*, i32)

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp.reduction.reduction_func(i8* %0, i8* %1) #3 !dbg !80 {
entry:
  %.addr = alloca i8*, align 8
  %.addr1 = alloca i8*, align 8
  store i8* %0, i8** %.addr, align 8, !tbaa !48
  call void @llvm.dbg.declare(metadata i8** %.addr, metadata !83, metadata !DIExpression()), !dbg !86
  store i8* %1, i8** %.addr1, align 8, !tbaa !48
  call void @llvm.dbg.declare(metadata i8** %.addr1, metadata !85, metadata !DIExpression()), !dbg !86
  %2 = load i8*, i8** %.addr, align 8, !dbg !87
  %3 = bitcast i8* %2 to [1 x i8*]*, !dbg !87
  %4 = load i8*, i8** %.addr1, align 8, !dbg !87
  %5 = bitcast i8* %4 to [1 x i8*]*, !dbg !87
  %6 = getelementptr inbounds [1 x i8*], [1 x i8*]* %5, i64 0, i64 0, !dbg !87
  %7 = load i8*, i8** %6, align 8, !dbg !87
  %8 = bitcast i8* %7 to i32*, !dbg !87
  %9 = getelementptr inbounds [1 x i8*], [1 x i8*]* %3, i64 0, i64 0, !dbg !87
  %10 = load i8*, i8** %9, align 8, !dbg !87
  %11 = bitcast i8* %10 to i32*, !dbg !87
  %12 = load i32, i32* %11, align 4, !dbg !88, !tbaa !53
  %13 = load i32, i32* %8, align 4, !dbg !88, !tbaa !53
  %add = add nsw i32 %12, %13, !dbg !89
  store i32 %add, i32* %11, align 4, !dbg !89, !tbaa !53
  ret void, !dbg !88
}

declare dso_local i32 @__kmpc_reduce(%struct.ident_t*, i32, i32, i64, i8*, void (i8*, i8*)*, [8 x i32]*)

declare dso_local void @__kmpc_end_reduce(%struct.ident_t*, i32, [8 x i32]*)

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

declare dso_local void @__kmpc_barrier(%struct.ident_t*, i32)

declare dso_local void @__kmpc_end_single(%struct.ident_t*, i32)

declare dso_local i32 @__kmpc_single(%struct.ident_t*, i32)

declare dso_local i32 @printf(i8*, ...) #4

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %a) #3 !dbg !90 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %a.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !48
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !92, metadata !DIExpression()), !dbg !95
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !48
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !93, metadata !DIExpression()), !dbg !95
  store i32* %a, i32** %a.addr, align 8, !tbaa !48
  call void @llvm.dbg.declare(metadata i32** %a.addr, metadata !94, metadata !DIExpression()), !dbg !95
  %0 = load i32*, i32** %a.addr, align 8, !dbg !96, !tbaa !48
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !96, !tbaa !48
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !96, !tbaa !48
  %3 = load i32*, i32** %a.addr, align 8, !dbg !96, !tbaa !48
  call void @.omp_outlined._debug__(i32* %1, i32* %2, i32* %3) #5, !dbg !96
  ret void, !dbg !96
}

declare !callback !97 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

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
!1 = !DIFile(filename: "integration/dataracebench/DRB140-reduction-barrier-orig-yes.c", directory: "/home/brad/Code/OpenRace/tests/data")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.1 "}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 19, type: !8, scopeLine: 19, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !11)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !{!12, !13}
!12 = !DILocalVariable(name: "a", scope: !7, file: !1, line: 20, type: !10)
!13 = !DILocalVariable(name: "i", scope: !7, file: !1, line: 20, type: !10)
!14 = !DILocation(line: 20, column: 3, scope: !7)
!15 = !DILocation(line: 20, column: 7, scope: !7)
!16 = !DILocation(line: 20, column: 10, scope: !7)
!17 = !DILocation(line: 22, column: 3, scope: !7)
!18 = !{!19, !23, i64 16}
!19 = !{!"ident_t", !20, i64 0, !20, i64 4, !20, i64 8, !20, i64 12, !23, i64 16}
!20 = !{!"int", !21, i64 0}
!21 = !{!"omnipotent char", !22, i64 0}
!22 = !{!"Simple C/C++ TBAA"}
!23 = !{!"any pointer", !21, i64 0}
!24 = !DILocation(line: 37, column: 1, scope: !7)
!25 = !DILocation(line: 36, column: 3, scope: !7)
!26 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 23, type: !27, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !34)
!27 = !DISubroutineType(types: !28)
!28 = !{null, !29, !29, !33}
!29 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!30 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !31)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!33 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !10, size: 64)
!34 = !{!35, !36, !37, !38, !39, !42, !43, !44, !45, !46, !47}
!35 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !26, type: !29, flags: DIFlagArtificial)
!36 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !26, type: !29, flags: DIFlagArtificial)
!37 = !DILocalVariable(name: "a", arg: 3, scope: !26, file: !1, line: 20, type: !33)
!38 = !DILocalVariable(name: "i", scope: !26, type: !10, flags: DIFlagArtificial)
!39 = !DILocalVariable(name: ".omp.iv", scope: !40, type: !10, flags: DIFlagArtificial)
!40 = distinct !DILexicalBlock(scope: !41, file: !1, line: 27, column: 5)
!41 = distinct !DILexicalBlock(scope: !26, file: !1, line: 23, column: 3)
!42 = !DILocalVariable(name: ".omp.lb", scope: !40, type: !10, flags: DIFlagArtificial)
!43 = !DILocalVariable(name: ".omp.ub", scope: !40, type: !10, flags: DIFlagArtificial)
!44 = !DILocalVariable(name: ".omp.stride", scope: !40, type: !10, flags: DIFlagArtificial)
!45 = !DILocalVariable(name: ".omp.is_last", scope: !40, type: !10, flags: DIFlagArtificial)
!46 = !DILocalVariable(name: "a", scope: !40, type: !10, flags: DIFlagArtificial)
!47 = !DILocalVariable(name: "i", scope: !40, type: !10, flags: DIFlagArtificial)
!48 = !{!23, !23, i64 0}
!49 = !DILocation(line: 0, scope: !26)
!50 = !DILocation(line: 20, column: 7, scope: !26)
!51 = !DILocation(line: 23, column: 3, scope: !26)
!52 = !DILocation(line: 24, column: 5, scope: !41)
!53 = !{!20, !20, i64 0}
!54 = !DILocation(line: 25, column: 7, scope: !55)
!55 = distinct !DILexicalBlock(scope: !41, file: !1, line: 24, column: 5)
!56 = !DILocation(line: 25, column: 5, scope: !55)
!57 = !DILocation(line: 27, column: 5, scope: !41)
!58 = !DILocation(line: 0, scope: !40)
!59 = !DILocation(line: 28, column: 10, scope: !40)
!60 = !DILocation(line: 27, column: 33, scope: !40)
!61 = !DILocation(line: 28, column: 5, scope: !40)
!62 = !DILocation(line: 28, column: 21, scope: !40)
!63 = !DILocation(line: 29, column: 11, scope: !64)
!64 = distinct !DILexicalBlock(scope: !40, file: !1, line: 28, column: 25)
!65 = !DILocation(line: 29, column: 15, scope: !64)
!66 = !DILocation(line: 29, column: 13, scope: !64)
!67 = !DILocation(line: 29, column: 9, scope: !64)
!68 = !DILocation(line: 30, column: 5, scope: !64)
!69 = !DILocation(line: 27, column: 5, scope: !40)
!70 = distinct !{!70, !69, !71}
!71 = !DILocation(line: 27, column: 35, scope: !40)
!72 = !DILocation(line: 27, column: 31, scope: !40)
!73 = !DILocation(line: 32, column: 5, scope: !41)
!74 = !DILocation(line: 33, column: 27, scope: !75)
!75 = distinct !DILexicalBlock(scope: !41, file: !1, line: 32, column: 5)
!76 = !DILocation(line: 33, column: 5, scope: !75)
!77 = !DILocation(line: 32, column: 23, scope: !75)
!78 = !DILocation(line: 34, column: 3, scope: !41)
!79 = !DILocation(line: 34, column: 3, scope: !26)
!80 = distinct !DISubprogram(linkageName: ".omp.reduction.reduction_func", scope: !1, file: !1, line: 27, type: !81, scopeLine: 27, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !82)
!81 = !DISubroutineType(types: !2)
!82 = !{!83, !85}
!83 = !DILocalVariable(arg: 1, scope: !80, type: !84, flags: DIFlagArtificial)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!85 = !DILocalVariable(arg: 2, scope: !80, type: !84, flags: DIFlagArtificial)
!86 = !DILocation(line: 0, scope: !80)
!87 = !DILocation(line: 27, column: 35, scope: !80)
!88 = !DILocation(line: 27, column: 33, scope: !80)
!89 = !DILocation(line: 27, column: 31, scope: !80)
!90 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 23, type: !27, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !91)
!91 = !{!92, !93, !94}
!92 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !90, type: !29, flags: DIFlagArtificial)
!93 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !90, type: !29, flags: DIFlagArtificial)
!94 = !DILocalVariable(name: "a", arg: 3, scope: !90, type: !33, flags: DIFlagArtificial)
!95 = !DILocation(line: 0, scope: !90)
!96 = !DILocation(line: 23, column: 3, scope: !90)
!97 = !{!98}
!98 = !{i64 2, i64 -1, i64 -1, i1 true}
