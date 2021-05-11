; ModuleID = 'integration/openmp/reduction-nowait-yes.c'
source_filename = "integration/openmp/reduction-nowait-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [55 x i8] c";integration/openmp/reduction-nowait-yes.c;main;11;1;;\00", align 1
@2 = private unnamed_addr constant [56 x i8] c";integration/openmp/reduction-nowait-yes.c;main;11;46;;\00", align 1
@.gomp_critical_user_.reduction.var = common global [8 x i32] zeroinitializer
@3 = private unnamed_addr constant [55 x i8] c";integration/openmp/reduction-nowait-yes.c;main;16;1;;\00", align 1
@4 = private unnamed_addr constant [56 x i8] c";integration/openmp/reduction-nowait-yes.c;main;16;46;;\00", align 1
@5 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@6 = private unnamed_addr constant [54 x i8] c";integration/openmp/reduction-nowait-yes.c;main;9;1;;\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main() #0 !dbg !7 {
entry:
  %N = alloca i32, align 4
  %counter = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @5 to i8*
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
  store i8* getelementptr inbounds ([54 x i8], [54 x i8]* @6, i32 0, i32 0), i8** %4, align 8, !dbg !23, !tbaa !24
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 2, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %counter, i32* %N), !dbg !23
  %5 = load i32, i32* %counter, align 4, !dbg !27, !tbaa !17
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %5), !dbg !28
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
  %.omp.iv = alloca i32, align 4
  %tmp = alloca i32, align 4
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %counter1 = alloca i32, align 4
  %i = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %.omp.reduction.red_list = alloca [1 x i8*], align 8
  %.omp.iv5 = alloca i32, align 4
  %tmp6 = alloca i32, align 4
  %.omp.lb7 = alloca i32, align 4
  %.omp.ub8 = alloca i32, align 4
  %.omp.stride9 = alloca i32, align 4
  %.omp.is_last10 = alloca i32, align 4
  %counter11 = alloca i32, align 4
  %i12 = alloca i32, align 4
  %.omp.reduction.red_list30 = alloca [1 x i8*], align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !60
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !39, metadata !DIExpression()), !dbg !61
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !60
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !40, metadata !DIExpression()), !dbg !61
  store i32* %counter, i32** %counter.addr, align 8, !tbaa !60
  call void @llvm.dbg.declare(metadata i32** %counter.addr, metadata !41, metadata !DIExpression()), !dbg !62
  store i32* %N, i32** %N.addr, align 8, !tbaa !60
  call void @llvm.dbg.declare(metadata i32** %N.addr, metadata !42, metadata !DIExpression()), !dbg !63
  %2 = load i32*, i32** %counter.addr, align 8, !dbg !64, !tbaa !60
  %3 = load i32*, i32** %N.addr, align 8, !dbg !64, !tbaa !60
  %4 = bitcast i32* %.omp.iv to i8*, !dbg !65
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #5, !dbg !65
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !43, metadata !DIExpression()), !dbg !66
  %5 = bitcast i32* %.omp.lb to i8*, !dbg !65
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #5, !dbg !65
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !46, metadata !DIExpression()), !dbg !66
  store i32 0, i32* %.omp.lb, align 4, !dbg !67, !tbaa !17
  %6 = bitcast i32* %.omp.ub to i8*, !dbg !65
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #5, !dbg !65
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !47, metadata !DIExpression()), !dbg !66
  store i32 9999, i32* %.omp.ub, align 4, !dbg !67, !tbaa !17
  %7 = bitcast i32* %.omp.stride to i8*, !dbg !65
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #5, !dbg !65
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !48, metadata !DIExpression()), !dbg !66
  store i32 1, i32* %.omp.stride, align 4, !dbg !67, !tbaa !17
  %8 = bitcast i32* %.omp.is_last to i8*, !dbg !65
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #5, !dbg !65
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !49, metadata !DIExpression()), !dbg !66
  store i32 0, i32* %.omp.is_last, align 4, !dbg !67, !tbaa !17
  %9 = bitcast i32* %counter1 to i8*, !dbg !65
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #5, !dbg !65
  call void @llvm.dbg.declare(metadata i32* %counter1, metadata !50, metadata !DIExpression()), !dbg !66
  store i32 0, i32* %counter1, align 4, !dbg !68, !tbaa !17
  %10 = bitcast i32* %i to i8*, !dbg !65
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #5, !dbg !65
  call void @llvm.dbg.declare(metadata i32* %i, metadata !51, metadata !DIExpression()), !dbg !66
  %11 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !65
  store i8* getelementptr inbounds ([55 x i8], [55 x i8]* @1, i32 0, i32 0), i8** %11, align 8, !dbg !65, !tbaa !24
  %12 = load i32*, i32** %.global_tid..addr, align 8, !dbg !65
  %13 = load i32, i32* %12, align 4, !dbg !65, !tbaa !17
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %13, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !65
  %14 = load i32, i32* %.omp.ub, align 4, !dbg !67, !tbaa !17
  %cmp = icmp sgt i32 %14, 9999, !dbg !67
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !67

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !67

cond.false:                                       ; preds = %entry
  %15 = load i32, i32* %.omp.ub, align 4, !dbg !67, !tbaa !17
  br label %cond.end, !dbg !67

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 9999, %cond.true ], [ %15, %cond.false ], !dbg !67
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !67, !tbaa !17
  %16 = load i32, i32* %.omp.lb, align 4, !dbg !67, !tbaa !17
  store i32 %16, i32* %.omp.iv, align 4, !dbg !67, !tbaa !17
  br label %omp.inner.for.cond, !dbg !65

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %17 = load i32, i32* %.omp.iv, align 4, !dbg !67, !tbaa !17
  %18 = load i32, i32* %.omp.ub, align 4, !dbg !67, !tbaa !17
  %cmp2 = icmp sle i32 %17, %18, !dbg !69
  br i1 %cmp2, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !65

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !65

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %19 = load i32, i32* %.omp.iv, align 4, !dbg !67, !tbaa !17
  %mul = mul nsw i32 %19, 1, !dbg !70
  %add = add nsw i32 0, %mul, !dbg !70
  store i32 %add, i32* %i, align 4, !dbg !70, !tbaa !17
  %20 = load i32, i32* %counter1, align 4, !dbg !71, !tbaa !17
  %inc = add nsw i32 %20, 1, !dbg !71
  store i32 %inc, i32* %counter1, align 4, !dbg !71, !tbaa !17
  br label %omp.body.continue, !dbg !73

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !74

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %21 = load i32, i32* %.omp.iv, align 4, !dbg !67, !tbaa !17
  %add3 = add nsw i32 %21, 1, !dbg !69
  store i32 %add3, i32* %.omp.iv, align 4, !dbg !69, !tbaa !17
  br label %omp.inner.for.cond, !dbg !74, !llvm.loop !75

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !74

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %22 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !74
  store i8* getelementptr inbounds ([56 x i8], [56 x i8]* @2, i32 0, i32 0), i8** %22, align 8, !dbg !74, !tbaa !24
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %13), !dbg !74
  %23 = getelementptr inbounds [1 x i8*], [1 x i8*]* %.omp.reduction.red_list, i64 0, i64 0, !dbg !74
  %24 = bitcast i32* %counter1 to i8*, !dbg !74
  store i8* %24, i8** %23, align 8, !dbg !74
  %25 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !74
  store i8* getelementptr inbounds ([56 x i8], [56 x i8]* @2, i32 0, i32 0), i8** %25, align 8, !dbg !74, !tbaa !24
  %26 = bitcast [1 x i8*]* %.omp.reduction.red_list to i8*, !dbg !74
  %27 = call i32 @__kmpc_reduce_nowait(%struct.ident_t* %.kmpc_loc.addr, i32 %13, i32 1, i64 8, i8* %26, void (i8*, i8*)* @.omp.reduction.reduction_func, [8 x i32]* @.gomp_critical_user_.reduction.var), !dbg !74
  switch i32 %27, label %.omp.reduction.default [
    i32 1, label %.omp.reduction.case1
    i32 2, label %.omp.reduction.case2
  ], !dbg !74

.omp.reduction.case1:                             ; preds = %omp.loop.exit
  %28 = load i32, i32* %2, align 4, !dbg !68, !tbaa !17
  %29 = load i32, i32* %counter1, align 4, !dbg !68, !tbaa !17
  %add4 = add nsw i32 %28, %29, !dbg !77
  store i32 %add4, i32* %2, align 4, !dbg !77, !tbaa !17
  call void @__kmpc_end_reduce_nowait(%struct.ident_t* %.kmpc_loc.addr, i32 %13, [8 x i32]* @.gomp_critical_user_.reduction.var), !dbg !74
  br label %.omp.reduction.default, !dbg !74

.omp.reduction.case2:                             ; preds = %omp.loop.exit
  %30 = load i32, i32* %counter1, align 4, !dbg !68, !tbaa !17
  %31 = atomicrmw add i32* %2, i32 %30 monotonic, !dbg !74
  br label %.omp.reduction.default, !dbg !74

.omp.reduction.default:                           ; preds = %.omp.reduction.case2, %.omp.reduction.case1, %omp.loop.exit
  %32 = bitcast i32* %i to i8*, !dbg !74
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %32) #5, !dbg !74
  %33 = bitcast i32* %counter1 to i8*, !dbg !74
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %33) #5, !dbg !74
  %34 = bitcast i32* %.omp.is_last to i8*, !dbg !74
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %34) #5, !dbg !74
  %35 = bitcast i32* %.omp.stride to i8*, !dbg !74
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %35) #5, !dbg !74
  %36 = bitcast i32* %.omp.ub to i8*, !dbg !74
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %36) #5, !dbg !74
  %37 = bitcast i32* %.omp.lb to i8*, !dbg !74
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %37) #5, !dbg !74
  %38 = bitcast i32* %.omp.iv to i8*, !dbg !74
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %38) #5, !dbg !74
  %39 = bitcast i32* %.omp.iv5 to i8*, !dbg !78
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %39) #5, !dbg !78
  call void @llvm.dbg.declare(metadata i32* %.omp.iv5, metadata !52, metadata !DIExpression()), !dbg !79
  %40 = bitcast i32* %.omp.lb7 to i8*, !dbg !78
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %40) #5, !dbg !78
  call void @llvm.dbg.declare(metadata i32* %.omp.lb7, metadata !54, metadata !DIExpression()), !dbg !79
  store i32 0, i32* %.omp.lb7, align 4, !dbg !80, !tbaa !17
  %41 = bitcast i32* %.omp.ub8 to i8*, !dbg !78
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %41) #5, !dbg !78
  call void @llvm.dbg.declare(metadata i32* %.omp.ub8, metadata !55, metadata !DIExpression()), !dbg !79
  store i32 9999, i32* %.omp.ub8, align 4, !dbg !80, !tbaa !17
  %42 = bitcast i32* %.omp.stride9 to i8*, !dbg !78
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %42) #5, !dbg !78
  call void @llvm.dbg.declare(metadata i32* %.omp.stride9, metadata !56, metadata !DIExpression()), !dbg !79
  store i32 1, i32* %.omp.stride9, align 4, !dbg !80, !tbaa !17
  %43 = bitcast i32* %.omp.is_last10 to i8*, !dbg !78
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %43) #5, !dbg !78
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last10, metadata !57, metadata !DIExpression()), !dbg !79
  store i32 0, i32* %.omp.is_last10, align 4, !dbg !80, !tbaa !17
  %44 = bitcast i32* %counter11 to i8*, !dbg !78
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %44) #5, !dbg !78
  call void @llvm.dbg.declare(metadata i32* %counter11, metadata !58, metadata !DIExpression()), !dbg !79
  store i32 0, i32* %counter11, align 4, !dbg !81, !tbaa !17
  %45 = bitcast i32* %i12 to i8*, !dbg !78
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %45) #5, !dbg !78
  call void @llvm.dbg.declare(metadata i32* %i12, metadata !59, metadata !DIExpression()), !dbg !79
  %46 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !78
  store i8* getelementptr inbounds ([55 x i8], [55 x i8]* @3, i32 0, i32 0), i8** %46, align 8, !dbg !78, !tbaa !24
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %13, i32 34, i32* %.omp.is_last10, i32* %.omp.lb7, i32* %.omp.ub8, i32* %.omp.stride9, i32 1, i32 1), !dbg !78
  %47 = load i32, i32* %.omp.ub8, align 4, !dbg !80, !tbaa !17
  %cmp13 = icmp sgt i32 %47, 9999, !dbg !80
  br i1 %cmp13, label %cond.true14, label %cond.false15, !dbg !80

cond.true14:                                      ; preds = %.omp.reduction.default
  br label %cond.end16, !dbg !80

cond.false15:                                     ; preds = %.omp.reduction.default
  %48 = load i32, i32* %.omp.ub8, align 4, !dbg !80, !tbaa !17
  br label %cond.end16, !dbg !80

cond.end16:                                       ; preds = %cond.false15, %cond.true14
  %cond17 = phi i32 [ 9999, %cond.true14 ], [ %48, %cond.false15 ], !dbg !80
  store i32 %cond17, i32* %.omp.ub8, align 4, !dbg !80, !tbaa !17
  %49 = load i32, i32* %.omp.lb7, align 4, !dbg !80, !tbaa !17
  store i32 %49, i32* %.omp.iv5, align 4, !dbg !80, !tbaa !17
  br label %omp.inner.for.cond18, !dbg !78

omp.inner.for.cond18:                             ; preds = %omp.inner.for.inc26, %cond.end16
  %50 = load i32, i32* %.omp.iv5, align 4, !dbg !80, !tbaa !17
  %51 = load i32, i32* %.omp.ub8, align 4, !dbg !80, !tbaa !17
  %cmp19 = icmp sle i32 %50, %51, !dbg !82
  br i1 %cmp19, label %omp.inner.for.body21, label %omp.inner.for.cond.cleanup20, !dbg !78

omp.inner.for.cond.cleanup20:                     ; preds = %omp.inner.for.cond18
  br label %omp.inner.for.end28, !dbg !78

omp.inner.for.body21:                             ; preds = %omp.inner.for.cond18
  %52 = load i32, i32* %.omp.iv5, align 4, !dbg !80, !tbaa !17
  %mul22 = mul nsw i32 %52, 1, !dbg !83
  %add23 = add nsw i32 0, %mul22, !dbg !83
  store i32 %add23, i32* %i12, align 4, !dbg !83, !tbaa !17
  %53 = load i32, i32* %counter11, align 4, !dbg !84, !tbaa !17
  %inc24 = add nsw i32 %53, 1, !dbg !84
  store i32 %inc24, i32* %counter11, align 4, !dbg !84, !tbaa !17
  br label %omp.body.continue25, !dbg !86

omp.body.continue25:                              ; preds = %omp.inner.for.body21
  br label %omp.inner.for.inc26, !dbg !87

omp.inner.for.inc26:                              ; preds = %omp.body.continue25
  %54 = load i32, i32* %.omp.iv5, align 4, !dbg !80, !tbaa !17
  %add27 = add nsw i32 %54, 1, !dbg !82
  store i32 %add27, i32* %.omp.iv5, align 4, !dbg !82, !tbaa !17
  br label %omp.inner.for.cond18, !dbg !87, !llvm.loop !88

omp.inner.for.end28:                              ; preds = %omp.inner.for.cond.cleanup20
  br label %omp.loop.exit29, !dbg !87

omp.loop.exit29:                                  ; preds = %omp.inner.for.end28
  %55 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !87
  store i8* getelementptr inbounds ([56 x i8], [56 x i8]* @4, i32 0, i32 0), i8** %55, align 8, !dbg !87, !tbaa !24
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %13), !dbg !87
  %56 = getelementptr inbounds [1 x i8*], [1 x i8*]* %.omp.reduction.red_list30, i64 0, i64 0, !dbg !87
  %57 = bitcast i32* %counter11 to i8*, !dbg !87
  store i8* %57, i8** %56, align 8, !dbg !87
  %58 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !87
  store i8* getelementptr inbounds ([56 x i8], [56 x i8]* @4, i32 0, i32 0), i8** %58, align 8, !dbg !87, !tbaa !24
  %59 = bitcast [1 x i8*]* %.omp.reduction.red_list30 to i8*, !dbg !87
  %60 = call i32 @__kmpc_reduce_nowait(%struct.ident_t* %.kmpc_loc.addr, i32 %13, i32 1, i64 8, i8* %59, void (i8*, i8*)* @.omp.reduction.reduction_func.1, [8 x i32]* @.gomp_critical_user_.reduction.var), !dbg !87
  switch i32 %60, label %.omp.reduction.default34 [
    i32 1, label %.omp.reduction.case131
    i32 2, label %.omp.reduction.case233
  ], !dbg !87

.omp.reduction.case131:                           ; preds = %omp.loop.exit29
  %61 = load i32, i32* %2, align 4, !dbg !81, !tbaa !17
  %62 = load i32, i32* %counter11, align 4, !dbg !81, !tbaa !17
  %add32 = add nsw i32 %61, %62, !dbg !90
  store i32 %add32, i32* %2, align 4, !dbg !90, !tbaa !17
  call void @__kmpc_end_reduce_nowait(%struct.ident_t* %.kmpc_loc.addr, i32 %13, [8 x i32]* @.gomp_critical_user_.reduction.var), !dbg !87
  br label %.omp.reduction.default34, !dbg !87

.omp.reduction.case233:                           ; preds = %omp.loop.exit29
  %63 = load i32, i32* %counter11, align 4, !dbg !81, !tbaa !17
  %64 = atomicrmw add i32* %2, i32 %63 monotonic, !dbg !87
  br label %.omp.reduction.default34, !dbg !87

.omp.reduction.default34:                         ; preds = %.omp.reduction.case233, %.omp.reduction.case131, %omp.loop.exit29
  %65 = bitcast i32* %i12 to i8*, !dbg !87
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %65) #5, !dbg !87
  %66 = bitcast i32* %counter11 to i8*, !dbg !87
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %66) #5, !dbg !87
  %67 = bitcast i32* %.omp.is_last10 to i8*, !dbg !87
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %67) #5, !dbg !87
  %68 = bitcast i32* %.omp.stride9 to i8*, !dbg !87
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %68) #5, !dbg !87
  %69 = bitcast i32* %.omp.ub8 to i8*, !dbg !87
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %69) #5, !dbg !87
  %70 = bitcast i32* %.omp.lb7 to i8*, !dbg !87
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %70) #5, !dbg !87
  %71 = bitcast i32* %.omp.iv5 to i8*, !dbg !87
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %71) #5, !dbg !87
  ret void, !dbg !91
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp.reduction.reduction_func(i8* %0, i8* %1) #3 !dbg !92 {
entry:
  %.addr = alloca i8*, align 8
  %.addr1 = alloca i8*, align 8
  store i8* %0, i8** %.addr, align 8, !tbaa !60
  call void @llvm.dbg.declare(metadata i8** %.addr, metadata !95, metadata !DIExpression()), !dbg !98
  store i8* %1, i8** %.addr1, align 8, !tbaa !60
  call void @llvm.dbg.declare(metadata i8** %.addr1, metadata !97, metadata !DIExpression()), !dbg !98
  %2 = load i8*, i8** %.addr, align 8, !dbg !99
  %3 = bitcast i8* %2 to [1 x i8*]*, !dbg !99
  %4 = load i8*, i8** %.addr1, align 8, !dbg !99
  %5 = bitcast i8* %4 to [1 x i8*]*, !dbg !99
  %6 = getelementptr inbounds [1 x i8*], [1 x i8*]* %5, i64 0, i64 0, !dbg !99
  %7 = load i8*, i8** %6, align 8, !dbg !99
  %8 = bitcast i8* %7 to i32*, !dbg !99
  %9 = getelementptr inbounds [1 x i8*], [1 x i8*]* %3, i64 0, i64 0, !dbg !99
  %10 = load i8*, i8** %9, align 8, !dbg !99
  %11 = bitcast i8* %10 to i32*, !dbg !99
  %12 = load i32, i32* %11, align 4, !dbg !100, !tbaa !17
  %13 = load i32, i32* %8, align 4, !dbg !100, !tbaa !17
  %add = add nsw i32 %12, %13, !dbg !101
  store i32 %add, i32* %11, align 4, !dbg !101, !tbaa !17
  ret void, !dbg !100
}

declare dso_local i32 @__kmpc_reduce_nowait(%struct.ident_t*, i32, i32, i64, i8*, void (i8*, i8*)*, [8 x i32]*)

declare dso_local void @__kmpc_end_reduce_nowait(%struct.ident_t*, i32, [8 x i32]*)

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp.reduction.reduction_func.1(i8* %0, i8* %1) #3 !dbg !102 {
entry:
  %.addr = alloca i8*, align 8
  %.addr1 = alloca i8*, align 8
  store i8* %0, i8** %.addr, align 8, !tbaa !60
  call void @llvm.dbg.declare(metadata i8** %.addr, metadata !104, metadata !DIExpression()), !dbg !106
  store i8* %1, i8** %.addr1, align 8, !tbaa !60
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

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %counter, i32* dereferenceable(4) %N) #3 !dbg !110 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %counter.addr = alloca i32*, align 8
  %N.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !60
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !112, metadata !DIExpression()), !dbg !116
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !60
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !113, metadata !DIExpression()), !dbg !116
  store i32* %counter, i32** %counter.addr, align 8, !tbaa !60
  call void @llvm.dbg.declare(metadata i32** %counter.addr, metadata !114, metadata !DIExpression()), !dbg !116
  store i32* %N, i32** %N.addr, align 8, !tbaa !60
  call void @llvm.dbg.declare(metadata i32** %N.addr, metadata !115, metadata !DIExpression()), !dbg !116
  %0 = load i32*, i32** %counter.addr, align 8, !dbg !117, !tbaa !60
  %1 = load i32*, i32** %N.addr, align 8, !dbg !117, !tbaa !60
  %2 = load i32*, i32** %.global_tid..addr, align 8, !dbg !117, !tbaa !60
  %3 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !117, !tbaa !60
  %4 = load i32*, i32** %counter.addr, align 8, !dbg !117, !tbaa !60
  %5 = load i32*, i32** %N.addr, align 8, !dbg !117, !tbaa !60
  call void @.omp_outlined._debug__(i32* %2, i32* %3, i32* %4, i32* %5) #5, !dbg !117
  ret void, !dbg !117
}

declare !callback !118 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

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
!1 = !DIFile(filename: "integration/openmp/reduction-nowait-yes.c", directory: "/home/brad/Code/OpenRace/tests/data")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.1 "}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 5, type: !8, scopeLine: 5, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !11)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !{!12, !14}
!12 = !DILocalVariable(name: "N", scope: !7, file: !1, line: 6, type: !13)
!13 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!14 = !DILocalVariable(name: "counter", scope: !7, file: !1, line: 7, type: !10)
!15 = !DILocation(line: 6, column: 3, scope: !7)
!16 = !DILocation(line: 6, column: 13, scope: !7)
!17 = !{!18, !18, i64 0}
!18 = !{!"int", !19, i64 0}
!19 = !{!"omnipotent char", !20, i64 0}
!20 = !{!"Simple C/C++ TBAA"}
!21 = !DILocation(line: 7, column: 3, scope: !7)
!22 = !DILocation(line: 7, column: 7, scope: !7)
!23 = !DILocation(line: 9, column: 1, scope: !7)
!24 = !{!25, !26, i64 16}
!25 = !{!"ident_t", !18, i64 0, !18, i64 4, !18, i64 8, !18, i64 12, !26, i64 16}
!26 = !{!"any pointer", !19, i64 0}
!27 = !DILocation(line: 22, column: 18, scope: !7)
!28 = !DILocation(line: 22, column: 3, scope: !7)
!29 = !DILocation(line: 23, column: 1, scope: !7)
!30 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 10, type: !31, scopeLine: 10, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !38)
!31 = !DISubroutineType(types: !32)
!32 = !{null, !33, !33, !36, !37}
!33 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !34)
!34 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !35)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !10, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !13, size: 64)
!38 = !{!39, !40, !41, !42, !43, !46, !47, !48, !49, !50, !51, !52, !54, !55, !56, !57, !58, !59}
!39 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !30, type: !33, flags: DIFlagArtificial)
!40 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !30, type: !33, flags: DIFlagArtificial)
!41 = !DILocalVariable(name: "counter", arg: 3, scope: !30, file: !1, line: 7, type: !36)
!42 = !DILocalVariable(name: "N", arg: 4, scope: !30, file: !1, line: 6, type: !37)
!43 = !DILocalVariable(name: ".omp.iv", scope: !44, type: !10, flags: DIFlagArtificial)
!44 = distinct !DILexicalBlock(scope: !45, file: !1, line: 11, column: 1)
!45 = distinct !DILexicalBlock(scope: !30, file: !1, line: 10, column: 3)
!46 = !DILocalVariable(name: ".omp.lb", scope: !44, type: !10, flags: DIFlagArtificial)
!47 = !DILocalVariable(name: ".omp.ub", scope: !44, type: !10, flags: DIFlagArtificial)
!48 = !DILocalVariable(name: ".omp.stride", scope: !44, type: !10, flags: DIFlagArtificial)
!49 = !DILocalVariable(name: ".omp.is_last", scope: !44, type: !10, flags: DIFlagArtificial)
!50 = !DILocalVariable(name: "counter", scope: !44, type: !10, flags: DIFlagArtificial)
!51 = !DILocalVariable(name: "i", scope: !44, type: !10, flags: DIFlagArtificial)
!52 = !DILocalVariable(name: ".omp.iv", scope: !53, type: !10, flags: DIFlagArtificial)
!53 = distinct !DILexicalBlock(scope: !45, file: !1, line: 16, column: 1)
!54 = !DILocalVariable(name: ".omp.lb", scope: !53, type: !10, flags: DIFlagArtificial)
!55 = !DILocalVariable(name: ".omp.ub", scope: !53, type: !10, flags: DIFlagArtificial)
!56 = !DILocalVariable(name: ".omp.stride", scope: !53, type: !10, flags: DIFlagArtificial)
!57 = !DILocalVariable(name: ".omp.is_last", scope: !53, type: !10, flags: DIFlagArtificial)
!58 = !DILocalVariable(name: "counter", scope: !53, type: !10, flags: DIFlagArtificial)
!59 = !DILocalVariable(name: "i", scope: !53, type: !10, flags: DIFlagArtificial)
!60 = !{!26, !26, i64 0}
!61 = !DILocation(line: 0, scope: !30)
!62 = !DILocation(line: 7, column: 7, scope: !30)
!63 = !DILocation(line: 6, column: 13, scope: !30)
!64 = !DILocation(line: 10, column: 3, scope: !30)
!65 = !DILocation(line: 11, column: 1, scope: !45)
!66 = !DILocation(line: 0, scope: !44)
!67 = !DILocation(line: 12, column: 10, scope: !44)
!68 = !DILocation(line: 11, column: 31, scope: !44)
!69 = !DILocation(line: 12, column: 5, scope: !44)
!70 = !DILocation(line: 12, column: 28, scope: !44)
!71 = !DILocation(line: 13, column: 14, scope: !72)
!72 = distinct !DILexicalBlock(scope: !44, file: !1, line: 12, column: 33)
!73 = !DILocation(line: 14, column: 5, scope: !72)
!74 = !DILocation(line: 11, column: 1, scope: !44)
!75 = distinct !{!75, !74, !76}
!76 = !DILocation(line: 11, column: 46, scope: !44)
!77 = !DILocation(line: 11, column: 27, scope: !44)
!78 = !DILocation(line: 16, column: 1, scope: !45)
!79 = !DILocation(line: 0, scope: !53)
!80 = !DILocation(line: 17, column: 10, scope: !53)
!81 = !DILocation(line: 16, column: 31, scope: !53)
!82 = !DILocation(line: 17, column: 5, scope: !53)
!83 = !DILocation(line: 17, column: 28, scope: !53)
!84 = !DILocation(line: 18, column: 14, scope: !85)
!85 = distinct !DILexicalBlock(scope: !53, file: !1, line: 17, column: 33)
!86 = !DILocation(line: 19, column: 5, scope: !85)
!87 = !DILocation(line: 16, column: 1, scope: !53)
!88 = distinct !{!88, !87, !89}
!89 = !DILocation(line: 16, column: 46, scope: !53)
!90 = !DILocation(line: 16, column: 27, scope: !53)
!91 = !DILocation(line: 20, column: 3, scope: !30)
!92 = distinct !DISubprogram(linkageName: ".omp.reduction.reduction_func", scope: !1, file: !1, line: 11, type: !93, scopeLine: 11, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !94)
!93 = !DISubroutineType(types: !2)
!94 = !{!95, !97}
!95 = !DILocalVariable(arg: 1, scope: !92, type: !96, flags: DIFlagArtificial)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!97 = !DILocalVariable(arg: 2, scope: !92, type: !96, flags: DIFlagArtificial)
!98 = !DILocation(line: 0, scope: !92)
!99 = !DILocation(line: 11, column: 46, scope: !92)
!100 = !DILocation(line: 11, column: 31, scope: !92)
!101 = !DILocation(line: 11, column: 27, scope: !92)
!102 = distinct !DISubprogram(linkageName: ".omp.reduction.reduction_func.1", scope: !1, file: !1, line: 16, type: !93, scopeLine: 16, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !103)
!103 = !{!104, !105}
!104 = !DILocalVariable(arg: 1, scope: !102, type: !96, flags: DIFlagArtificial)
!105 = !DILocalVariable(arg: 2, scope: !102, type: !96, flags: DIFlagArtificial)
!106 = !DILocation(line: 0, scope: !102)
!107 = !DILocation(line: 16, column: 46, scope: !102)
!108 = !DILocation(line: 16, column: 31, scope: !102)
!109 = !DILocation(line: 16, column: 27, scope: !102)
!110 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 10, type: !31, scopeLine: 10, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !111)
!111 = !{!112, !113, !114, !115}
!112 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !110, type: !33, flags: DIFlagArtificial)
!113 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !110, type: !33, flags: DIFlagArtificial)
!114 = !DILocalVariable(name: "counter", arg: 3, scope: !110, type: !36, flags: DIFlagArtificial)
!115 = !DILocalVariable(name: "N", arg: 4, scope: !110, type: !37, flags: DIFlagArtificial)
!116 = !DILocation(line: 0, scope: !110)
!117 = !DILocation(line: 10, column: 3, scope: !110)
!118 = !{!119}
!119 = !{i64 2, i64 -1, i64 -1, i1 true}
