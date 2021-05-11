; ModuleID = 'integration/dataracebench/DRB065-pireduction-orig-no.c'
source_filename = "integration/dataracebench/DRB065-pireduction-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [68 x i8] c";integration/dataracebench/DRB065-pireduction-orig-no.c;main;61;1;;\00", align 1
@2 = private unnamed_addr constant [69 x i8] c";integration/dataracebench/DRB065-pireduction-orig-no.c;main;61;52;;\00", align 1
@.gomp_critical_user_.reduction.var = common global [8 x i32] zeroinitializer
@3 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"PI=%f\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !dbg !9 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %pi = alloca double, align 8
  %i = alloca i64, align 8
  %x = alloca double, align 8
  %interval_width = alloca double, align 8
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4, !tbaa !24
  call void @llvm.dbg.declare(metadata i32* %argc.addr, metadata !17, metadata !DIExpression()), !dbg !28
  store i8** %argv, i8*** %argv.addr, align 8, !tbaa !29
  call void @llvm.dbg.declare(metadata i8*** %argv.addr, metadata !18, metadata !DIExpression()), !dbg !31
  %2 = bitcast double* %pi to i8*, !dbg !32
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %2) #5, !dbg !32
  call void @llvm.dbg.declare(metadata double* %pi, metadata !19, metadata !DIExpression()), !dbg !33
  store double 0.000000e+00, double* %pi, align 8, !dbg !33, !tbaa !34
  %3 = bitcast i64* %i to i8*, !dbg !36
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %3) #5, !dbg !36
  call void @llvm.dbg.declare(metadata i64* %i, metadata !20, metadata !DIExpression()), !dbg !37
  %4 = bitcast double* %x to i8*, !dbg !38
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %4) #5, !dbg !38
  call void @llvm.dbg.declare(metadata double* %x, metadata !22, metadata !DIExpression()), !dbg !39
  %5 = bitcast double* %interval_width to i8*, !dbg !38
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %5) #5, !dbg !38
  call void @llvm.dbg.declare(metadata double* %interval_width, metadata !23, metadata !DIExpression()), !dbg !40
  store double 5.000000e-10, double* %interval_width, align 8, !dbg !41, !tbaa !34
  %6 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !42
  store i8* getelementptr inbounds ([68 x i8], [68 x i8]* @1, i32 0, i32 0), i8** %6, align 8, !dbg !42, !tbaa !43
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 2, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, double*, double*)* @.omp_outlined. to void (i32*, i32*, ...)*), double* %interval_width, double* %pi), !dbg !42
  %7 = load double, double* %pi, align 8, !dbg !45, !tbaa !34
  %mul = fmul double %7, 4.000000e+00, !dbg !46
  %8 = load double, double* %interval_width, align 8, !dbg !47, !tbaa !34
  %mul1 = fmul double %mul, %8, !dbg !48
  store double %mul1, double* %pi, align 8, !dbg !49, !tbaa !34
  %9 = load double, double* %pi, align 8, !dbg !50, !tbaa !34
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), double %9), !dbg !51
  %10 = bitcast double* %interval_width to i8*, !dbg !52
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %10) #5, !dbg !52
  %11 = bitcast double* %x to i8*, !dbg !52
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %11) #5, !dbg !52
  %12 = bitcast i64* %i to i8*, !dbg !52
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %12) #5, !dbg !52
  %13 = bitcast double* %pi to i8*, !dbg !52
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %13) #5, !dbg !52
  ret i32 0, !dbg !53
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., double* dereferenceable(8) %interval_width, double* dereferenceable(8) %pi) #3 !dbg !54 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %interval_width.addr = alloca double*, align 8
  %pi.addr = alloca double*, align 8
  %.omp.iv = alloca i64, align 8
  %tmp = alloca i64, align 8
  %.omp.lb = alloca i64, align 8
  %.omp.ub = alloca i64, align 8
  %.omp.stride = alloca i64, align 8
  %.omp.is_last = alloca i32, align 4
  %x = alloca double, align 8
  %pi1 = alloca double, align 8
  %i = alloca i64, align 8
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %.omp.reduction.red_list = alloca [1 x i8*], align 8
  %atomic-temp = alloca double, align 8
  %tmp10 = alloca double, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !29
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !63, metadata !DIExpression()), !dbg !75
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !29
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !64, metadata !DIExpression()), !dbg !75
  store double* %interval_width, double** %interval_width.addr, align 8, !tbaa !29
  call void @llvm.dbg.declare(metadata double** %interval_width.addr, metadata !65, metadata !DIExpression()), !dbg !76
  store double* %pi, double** %pi.addr, align 8, !tbaa !29
  call void @llvm.dbg.declare(metadata double** %pi.addr, metadata !66, metadata !DIExpression()), !dbg !77
  %2 = load double*, double** %interval_width.addr, align 8, !dbg !78, !tbaa !29
  %3 = load double*, double** %pi.addr, align 8, !dbg !78, !tbaa !29
  %4 = bitcast i64* %.omp.iv to i8*, !dbg !78
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %4) #5, !dbg !78
  call void @llvm.dbg.declare(metadata i64* %.omp.iv, metadata !67, metadata !DIExpression()), !dbg !75
  %5 = bitcast i64* %.omp.lb to i8*, !dbg !78
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %5) #5, !dbg !78
  call void @llvm.dbg.declare(metadata i64* %.omp.lb, metadata !68, metadata !DIExpression()), !dbg !75
  store i64 0, i64* %.omp.lb, align 8, !dbg !79, !tbaa !80
  %6 = bitcast i64* %.omp.ub to i8*, !dbg !78
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %6) #5, !dbg !78
  call void @llvm.dbg.declare(metadata i64* %.omp.ub, metadata !69, metadata !DIExpression()), !dbg !75
  store i64 1999999999, i64* %.omp.ub, align 8, !dbg !79, !tbaa !80
  %7 = bitcast i64* %.omp.stride to i8*, !dbg !78
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %7) #5, !dbg !78
  call void @llvm.dbg.declare(metadata i64* %.omp.stride, metadata !70, metadata !DIExpression()), !dbg !75
  store i64 1, i64* %.omp.stride, align 8, !dbg !79, !tbaa !80
  %8 = bitcast i32* %.omp.is_last to i8*, !dbg !78
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #5, !dbg !78
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !71, metadata !DIExpression()), !dbg !75
  store i32 0, i32* %.omp.is_last, align 4, !dbg !79, !tbaa !24
  %9 = bitcast double* %x to i8*, !dbg !78
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %9) #5, !dbg !78
  call void @llvm.dbg.declare(metadata double* %x, metadata !72, metadata !DIExpression()), !dbg !75
  %10 = bitcast double* %pi1 to i8*, !dbg !78
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %10) #5, !dbg !78
  call void @llvm.dbg.declare(metadata double* %pi1, metadata !73, metadata !DIExpression()), !dbg !75
  store double 0.000000e+00, double* %pi1, align 8, !dbg !82, !tbaa !34
  %11 = bitcast i64* %i to i8*, !dbg !78
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %11) #5, !dbg !78
  call void @llvm.dbg.declare(metadata i64* %i, metadata !74, metadata !DIExpression()), !dbg !75
  %12 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !78
  store i8* getelementptr inbounds ([68 x i8], [68 x i8]* @1, i32 0, i32 0), i8** %12, align 8, !dbg !78, !tbaa !43
  %13 = load i32*, i32** %.global_tid..addr, align 8, !dbg !78
  %14 = load i32, i32* %13, align 4, !dbg !78, !tbaa !24
  call void @__kmpc_for_static_init_8(%struct.ident_t* %.kmpc_loc.addr, i32 %14, i32 34, i32* %.omp.is_last, i64* %.omp.lb, i64* %.omp.ub, i64* %.omp.stride, i64 1, i64 1), !dbg !78
  %15 = load i64, i64* %.omp.ub, align 8, !dbg !79, !tbaa !80
  %cmp = icmp sgt i64 %15, 1999999999, !dbg !79
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !79

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !79

cond.false:                                       ; preds = %entry
  %16 = load i64, i64* %.omp.ub, align 8, !dbg !79, !tbaa !80
  br label %cond.end, !dbg !79

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 1999999999, %cond.true ], [ %16, %cond.false ], !dbg !79
  store i64 %cond, i64* %.omp.ub, align 8, !dbg !79, !tbaa !80
  %17 = load i64, i64* %.omp.lb, align 8, !dbg !79, !tbaa !80
  store i64 %17, i64* %.omp.iv, align 8, !dbg !79, !tbaa !80
  br label %omp.inner.for.cond, !dbg !78

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %18 = load i64, i64* %.omp.iv, align 8, !dbg !79, !tbaa !80
  %19 = load i64, i64* %.omp.ub, align 8, !dbg !79, !tbaa !80
  %cmp2 = icmp sle i64 %18, %19, !dbg !78
  br i1 %cmp2, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !78

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !78

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %20 = load i64, i64* %.omp.iv, align 8, !dbg !79, !tbaa !80
  %mul = mul nsw i64 %20, 1, !dbg !83
  %add = add nsw i64 0, %mul, !dbg !83
  store i64 %add, i64* %i, align 8, !dbg !83, !tbaa !80
  %21 = load i64, i64* %i, align 8, !dbg !84, !tbaa !80
  %conv = sitofp i64 %21 to double, !dbg !84
  %add3 = fadd double %conv, 5.000000e-01, !dbg !86
  %22 = load double, double* %2, align 8, !dbg !87, !tbaa !34
  %mul4 = fmul double %add3, %22, !dbg !88
  store double %mul4, double* %x, align 8, !dbg !89, !tbaa !34
  %23 = load double, double* %x, align 8, !dbg !90, !tbaa !34
  %24 = load double, double* %x, align 8, !dbg !91, !tbaa !34
  %mul5 = fmul double %23, %24, !dbg !92
  %add6 = fadd double %mul5, 1.000000e+00, !dbg !93
  %div = fdiv double 1.000000e+00, %add6, !dbg !94
  %25 = load double, double* %pi1, align 8, !dbg !95, !tbaa !34
  %add7 = fadd double %25, %div, !dbg !95
  store double %add7, double* %pi1, align 8, !dbg !95, !tbaa !34
  br label %omp.body.continue, !dbg !96

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !97

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %26 = load i64, i64* %.omp.iv, align 8, !dbg !79, !tbaa !80
  %add8 = add nsw i64 %26, 1, !dbg !78
  store i64 %add8, i64* %.omp.iv, align 8, !dbg !78, !tbaa !80
  br label %omp.inner.for.cond, !dbg !97, !llvm.loop !98

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !97

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %27 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !97
  store i8* getelementptr inbounds ([69 x i8], [69 x i8]* @2, i32 0, i32 0), i8** %27, align 8, !dbg !97, !tbaa !43
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %14), !dbg !97
  %28 = getelementptr inbounds [1 x i8*], [1 x i8*]* %.omp.reduction.red_list, i64 0, i64 0, !dbg !97
  %29 = bitcast double* %pi1 to i8*, !dbg !97
  store i8* %29, i8** %28, align 8, !dbg !97
  %30 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !97
  store i8* getelementptr inbounds ([69 x i8], [69 x i8]* @2, i32 0, i32 0), i8** %30, align 8, !dbg !97, !tbaa !43
  %31 = bitcast [1 x i8*]* %.omp.reduction.red_list to i8*, !dbg !97
  %32 = call i32 @__kmpc_reduce_nowait(%struct.ident_t* %.kmpc_loc.addr, i32 %14, i32 1, i64 8, i8* %31, void (i8*, i8*)* @.omp.reduction.reduction_func, [8 x i32]* @.gomp_critical_user_.reduction.var), !dbg !97
  switch i32 %32, label %.omp.reduction.default [
    i32 1, label %.omp.reduction.case1
    i32 2, label %.omp.reduction.case2
  ], !dbg !97

.omp.reduction.case1:                             ; preds = %omp.loop.exit
  %33 = load double, double* %3, align 8, !dbg !82, !tbaa !34
  %34 = load double, double* %pi1, align 8, !dbg !82, !tbaa !34
  %add9 = fadd double %33, %34, !dbg !100
  store double %add9, double* %3, align 8, !dbg !100, !tbaa !34
  call void @__kmpc_end_reduce_nowait(%struct.ident_t* %.kmpc_loc.addr, i32 %14, [8 x i32]* @.gomp_critical_user_.reduction.var), !dbg !97
  br label %.omp.reduction.default, !dbg !97

.omp.reduction.case2:                             ; preds = %omp.loop.exit
  %35 = load double, double* %pi1, align 8, !dbg !82, !tbaa !34
  %36 = bitcast double* %3 to i64*, !dbg !97
  %atomic-load = load atomic i64, i64* %36 monotonic, align 8, !dbg !97, !tbaa !34
  br label %atomic_cont, !dbg !97

atomic_cont:                                      ; preds = %atomic_cont, %.omp.reduction.case2
  %37 = phi i64 [ %atomic-load, %.omp.reduction.case2 ], [ %45, %atomic_cont ], !dbg !97
  %38 = bitcast double* %atomic-temp to i64*, !dbg !97
  %39 = bitcast i64 %37 to double, !dbg !97
  store double %39, double* %tmp10, align 8, !dbg !97, !tbaa !34
  %40 = load double, double* %tmp10, align 8, !dbg !82, !tbaa !34
  %41 = load double, double* %pi1, align 8, !dbg !82, !tbaa !34
  %add11 = fadd double %40, %41, !dbg !100
  store double %add11, double* %atomic-temp, align 8, !dbg !97, !tbaa !34
  %42 = load i64, i64* %38, align 8, !dbg !97
  %43 = bitcast double* %3 to i64*, !dbg !97
  %44 = cmpxchg i64* %43, i64 %37, i64 %42 monotonic monotonic, !dbg !97
  %45 = extractvalue { i64, i1 } %44, 0, !dbg !97
  %46 = extractvalue { i64, i1 } %44, 1, !dbg !97
  br i1 %46, label %atomic_exit, label %atomic_cont, !dbg !97

atomic_exit:                                      ; preds = %atomic_cont
  br label %.omp.reduction.default, !dbg !97

.omp.reduction.default:                           ; preds = %atomic_exit, %.omp.reduction.case1, %omp.loop.exit
  %47 = bitcast i64* %i to i8*, !dbg !97
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %47) #5, !dbg !97
  %48 = bitcast double* %pi1 to i8*, !dbg !97
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %48) #5, !dbg !97
  %49 = bitcast double* %x to i8*, !dbg !97
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %49) #5, !dbg !97
  %50 = bitcast i32* %.omp.is_last to i8*, !dbg !97
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %50) #5, !dbg !97
  %51 = bitcast i64* %.omp.stride to i8*, !dbg !97
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %51) #5, !dbg !97
  %52 = bitcast i64* %.omp.ub to i8*, !dbg !97
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %52) #5, !dbg !97
  %53 = bitcast i64* %.omp.lb to i8*, !dbg !97
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %53) #5, !dbg !97
  %54 = bitcast i64* %.omp.iv to i8*, !dbg !97
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %54) #5, !dbg !97
  ret void, !dbg !101
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local void @__kmpc_for_static_init_8(%struct.ident_t*, i32, i32, i32*, i64*, i64*, i64*, i64, i64)

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp.reduction.reduction_func(i8* %0, i8* %1) #3 !dbg !102 {
entry:
  %.addr = alloca i8*, align 8
  %.addr1 = alloca i8*, align 8
  store i8* %0, i8** %.addr, align 8, !tbaa !29
  call void @llvm.dbg.declare(metadata i8** %.addr, metadata !105, metadata !DIExpression()), !dbg !108
  store i8* %1, i8** %.addr1, align 8, !tbaa !29
  call void @llvm.dbg.declare(metadata i8** %.addr1, metadata !107, metadata !DIExpression()), !dbg !108
  %2 = load i8*, i8** %.addr, align 8, !dbg !109
  %3 = bitcast i8* %2 to [1 x i8*]*, !dbg !109
  %4 = load i8*, i8** %.addr1, align 8, !dbg !109
  %5 = bitcast i8* %4 to [1 x i8*]*, !dbg !109
  %6 = getelementptr inbounds [1 x i8*], [1 x i8*]* %5, i64 0, i64 0, !dbg !109
  %7 = load i8*, i8** %6, align 8, !dbg !109
  %8 = bitcast i8* %7 to double*, !dbg !109
  %9 = getelementptr inbounds [1 x i8*], [1 x i8*]* %3, i64 0, i64 0, !dbg !109
  %10 = load i8*, i8** %9, align 8, !dbg !109
  %11 = bitcast i8* %10 to double*, !dbg !109
  %12 = load double, double* %11, align 8, !dbg !110, !tbaa !34
  %13 = load double, double* %8, align 8, !dbg !110, !tbaa !34
  %add = fadd double %12, %13, !dbg !111
  store double %add, double* %11, align 8, !dbg !111, !tbaa !34
  ret void, !dbg !110
}

declare dso_local i32 @__kmpc_reduce_nowait(%struct.ident_t*, i32, i32, i64, i8*, void (i8*, i8*)*, [8 x i32]*)

declare dso_local void @__kmpc_end_reduce_nowait(%struct.ident_t*, i32, [8 x i32]*)

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., double* dereferenceable(8) %interval_width, double* dereferenceable(8) %pi) #3 !dbg !112 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %interval_width.addr = alloca double*, align 8
  %pi.addr = alloca double*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !29
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !114, metadata !DIExpression()), !dbg !118
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !29
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !115, metadata !DIExpression()), !dbg !118
  store double* %interval_width, double** %interval_width.addr, align 8, !tbaa !29
  call void @llvm.dbg.declare(metadata double** %interval_width.addr, metadata !116, metadata !DIExpression()), !dbg !118
  store double* %pi, double** %pi.addr, align 8, !tbaa !29
  call void @llvm.dbg.declare(metadata double** %pi.addr, metadata !117, metadata !DIExpression()), !dbg !118
  %0 = load double*, double** %interval_width.addr, align 8, !dbg !119, !tbaa !29
  %1 = load double*, double** %pi.addr, align 8, !dbg !119, !tbaa !29
  %2 = load i32*, i32** %.global_tid..addr, align 8, !dbg !119, !tbaa !29
  %3 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !119, !tbaa !29
  %4 = load double*, double** %interval_width.addr, align 8, !dbg !119, !tbaa !29
  %5 = load double*, double** %pi.addr, align 8, !dbg !119, !tbaa !29
  call void @.omp_outlined._debug__(i32* %2, i32* %3, double* %4, double* %5) #5, !dbg !119
  ret void, !dbg !119
}

declare !callback !120 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

declare dso_local i32 @printf(i8*, ...) #4

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "integration/dataracebench/DRB065-pireduction-orig-no.c", directory: "/home/brad/Code/OpenRace/tests/data")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!5 = !{i32 7, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 10.0.1 "}
!9 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 54, type: !10, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !16)
!10 = !DISubroutineType(types: !11)
!11 = !{!12, !12, !13}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!16 = !{!17, !18, !19, !20, !22, !23}
!17 = !DILocalVariable(name: "argc", arg: 1, scope: !9, file: !1, line: 54, type: !12)
!18 = !DILocalVariable(name: "argv", arg: 2, scope: !9, file: !1, line: 54, type: !13)
!19 = !DILocalVariable(name: "pi", scope: !9, file: !1, line: 56, type: !4)
!20 = !DILocalVariable(name: "i", scope: !9, file: !1, line: 57, type: !21)
!21 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!22 = !DILocalVariable(name: "x", scope: !9, file: !1, line: 58, type: !4)
!23 = !DILocalVariable(name: "interval_width", scope: !9, file: !1, line: 58, type: !4)
!24 = !{!25, !25, i64 0}
!25 = !{!"int", !26, i64 0}
!26 = !{!"omnipotent char", !27, i64 0}
!27 = !{!"Simple C/C++ TBAA"}
!28 = !DILocation(line: 54, column: 14, scope: !9)
!29 = !{!30, !30, i64 0}
!30 = !{!"any pointer", !26, i64 0}
!31 = !DILocation(line: 54, column: 27, scope: !9)
!32 = !DILocation(line: 56, column: 3, scope: !9)
!33 = !DILocation(line: 56, column: 10, scope: !9)
!34 = !{!35, !35, i64 0}
!35 = !{!"double", !26, i64 0}
!36 = !DILocation(line: 57, column: 3, scope: !9)
!37 = !DILocation(line: 57, column: 12, scope: !9)
!38 = !DILocation(line: 58, column: 3, scope: !9)
!39 = !DILocation(line: 58, column: 10, scope: !9)
!40 = !DILocation(line: 58, column: 13, scope: !9)
!41 = !DILocation(line: 59, column: 18, scope: !9)
!42 = !DILocation(line: 61, column: 1, scope: !9)
!43 = !{!44, !30, i64 16}
!44 = !{!"ident_t", !25, i64 0, !25, i64 4, !25, i64 8, !25, i64 12, !30, i64 16}
!45 = !DILocation(line: 67, column: 8, scope: !9)
!46 = !DILocation(line: 67, column: 11, scope: !9)
!47 = !DILocation(line: 67, column: 19, scope: !9)
!48 = !DILocation(line: 67, column: 17, scope: !9)
!49 = !DILocation(line: 67, column: 6, scope: !9)
!50 = !DILocation(line: 68, column: 22, scope: !9)
!51 = !DILocation(line: 68, column: 3, scope: !9)
!52 = !DILocation(line: 70, column: 1, scope: !9)
!53 = !DILocation(line: 69, column: 3, scope: !9)
!54 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 62, type: !55, scopeLine: 62, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !62)
!55 = !DISubroutineType(types: !56)
!56 = !{null, !57, !57, !61, !61}
!57 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !58)
!58 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !59)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!60 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!61 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !4, size: 64)
!62 = !{!63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74}
!63 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !54, type: !57, flags: DIFlagArtificial)
!64 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !54, type: !57, flags: DIFlagArtificial)
!65 = !DILocalVariable(name: "interval_width", arg: 3, scope: !54, file: !1, line: 58, type: !61)
!66 = !DILocalVariable(name: "pi", arg: 4, scope: !54, file: !1, line: 56, type: !61)
!67 = !DILocalVariable(name: ".omp.iv", scope: !54, type: !21, flags: DIFlagArtificial)
!68 = !DILocalVariable(name: ".omp.lb", scope: !54, type: !21, flags: DIFlagArtificial)
!69 = !DILocalVariable(name: ".omp.ub", scope: !54, type: !21, flags: DIFlagArtificial)
!70 = !DILocalVariable(name: ".omp.stride", scope: !54, type: !21, flags: DIFlagArtificial)
!71 = !DILocalVariable(name: ".omp.is_last", scope: !54, type: !12, flags: DIFlagArtificial)
!72 = !DILocalVariable(name: "x", scope: !54, type: !4, flags: DIFlagArtificial)
!73 = !DILocalVariable(name: "pi", scope: !54, type: !4, flags: DIFlagArtificial)
!74 = !DILocalVariable(name: "i", scope: !54, type: !21, flags: DIFlagArtificial)
!75 = !DILocation(line: 0, scope: !54)
!76 = !DILocation(line: 58, column: 13, scope: !54)
!77 = !DILocation(line: 56, column: 10, scope: !54)
!78 = !DILocation(line: 62, column: 3, scope: !54)
!79 = !DILocation(line: 62, column: 8, scope: !54)
!80 = !{!81, !81, i64 0}
!81 = !{!"long", !26, i64 0}
!82 = !DILocation(line: 61, column: 38, scope: !54)
!83 = !DILocation(line: 62, column: 30, scope: !54)
!84 = !DILocation(line: 63, column: 10, scope: !85)
!85 = distinct !DILexicalBlock(scope: !54, file: !1, line: 62, column: 35)
!86 = !DILocation(line: 63, column: 11, scope: !85)
!87 = !DILocation(line: 63, column: 20, scope: !85)
!88 = !DILocation(line: 63, column: 18, scope: !85)
!89 = !DILocation(line: 63, column: 7, scope: !85)
!90 = !DILocation(line: 64, column: 18, scope: !85)
!91 = !DILocation(line: 64, column: 20, scope: !85)
!92 = !DILocation(line: 64, column: 19, scope: !85)
!93 = !DILocation(line: 64, column: 22, scope: !85)
!94 = !DILocation(line: 64, column: 15, scope: !85)
!95 = !DILocation(line: 64, column: 8, scope: !85)
!96 = !DILocation(line: 65, column: 3, scope: !85)
!97 = !DILocation(line: 61, column: 1, scope: !54)
!98 = distinct !{!98, !97, !99}
!99 = !DILocation(line: 61, column: 52, scope: !54)
!100 = !DILocation(line: 61, column: 36, scope: !54)
!101 = !DILocation(line: 65, column: 3, scope: !54)
!102 = distinct !DISubprogram(linkageName: ".omp.reduction.reduction_func", scope: !1, file: !1, line: 61, type: !103, scopeLine: 61, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !104)
!103 = !DISubroutineType(types: !2)
!104 = !{!105, !107}
!105 = !DILocalVariable(arg: 1, scope: !102, type: !106, flags: DIFlagArtificial)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!107 = !DILocalVariable(arg: 2, scope: !102, type: !106, flags: DIFlagArtificial)
!108 = !DILocation(line: 0, scope: !102)
!109 = !DILocation(line: 61, column: 52, scope: !102)
!110 = !DILocation(line: 61, column: 38, scope: !102)
!111 = !DILocation(line: 61, column: 36, scope: !102)
!112 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 62, type: !55, scopeLine: 62, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !113)
!113 = !{!114, !115, !116, !117}
!114 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !112, type: !57, flags: DIFlagArtificial)
!115 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !112, type: !57, flags: DIFlagArtificial)
!116 = !DILocalVariable(name: "interval_width", arg: 3, scope: !112, type: !61, flags: DIFlagArtificial)
!117 = !DILocalVariable(name: "pi", arg: 4, scope: !112, type: !61, flags: DIFlagArtificial)
!118 = !DILocation(line: 0, scope: !112)
!119 = !DILocation(line: 62, column: 3, scope: !112)
!120 = !{!121}
!121 = !{i64 2, i64 -1, i64 -1, i1 true}
