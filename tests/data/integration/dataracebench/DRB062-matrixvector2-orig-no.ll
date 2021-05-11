; ModuleID = 'integration/dataracebench/DRB062-matrixvector2-orig-no.c'
source_filename = "integration/dataracebench/DRB062-matrixvector2-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [68 x i8] c";integration/dataracebench/DRB062-matrixvector2-orig-no.c;mv;59;1;;\00", align 1
@a = common dso_local global [1000 x [1000 x double]] zeroinitializer, align 16, !dbg !0
@v = common dso_local global [1000 x double] zeroinitializer, align 16, !dbg !6
@2 = private unnamed_addr constant [69 x i8] c";integration/dataracebench/DRB062-matrixvector2-orig-no.c;mv;59;42;;\00", align 1
@.gomp_critical_user_.reduction.var = common global [8 x i32] zeroinitializer
@3 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@v_out = common dso_local global [1000 x double] zeroinitializer, align 16, !dbg !12

; Function Attrs: nounwind uwtable
define dso_local void @mv() #0 !dbg !20 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %sum = alloca float, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  %2 = bitcast i32* %i to i8*, !dbg !32
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #4, !dbg !32
  call void @llvm.dbg.declare(metadata i32* %i, metadata !24, metadata !DIExpression()), !dbg !33
  %3 = bitcast i32* %j to i8*, !dbg !32
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #4, !dbg !32
  call void @llvm.dbg.declare(metadata i32* %j, metadata !26, metadata !DIExpression()), !dbg !34
  store i32 0, i32* %i, align 4, !dbg !35, !tbaa !36
  br label %for.cond, !dbg !40

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4, !dbg !41, !tbaa !36
  %cmp = icmp slt i32 %4, 1000, !dbg !42
  br i1 %cmp, label %for.body, label %for.end, !dbg !43

for.body:                                         ; preds = %for.cond
  %5 = bitcast float* %sum to i8*, !dbg !44
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #4, !dbg !44
  call void @llvm.dbg.declare(metadata float* %sum, metadata !27, metadata !DIExpression()), !dbg !45
  store float 0.000000e+00, float* %sum, align 4, !dbg !45, !tbaa !46
  %6 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !48
  store i8* getelementptr inbounds ([68 x i8], [68 x i8]* @1, i32 0, i32 0), i8** %6, align 8, !dbg !48, !tbaa !49
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 2, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, float*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), float* %sum, i32* %i), !dbg !48
  %7 = load float, float* %sum, align 4, !dbg !52, !tbaa !46
  %conv = fpext float %7 to double, !dbg !52
  %8 = load i32, i32* %i, align 4, !dbg !53, !tbaa !36
  %idxprom = sext i32 %8 to i64, !dbg !54
  %arrayidx = getelementptr inbounds [1000 x double], [1000 x double]* @v_out, i64 0, i64 %idxprom, !dbg !54
  store double %conv, double* %arrayidx, align 8, !dbg !55, !tbaa !56
  %9 = bitcast float* %sum to i8*, !dbg !58
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %9) #4, !dbg !58
  br label %for.inc, !dbg !59

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4, !dbg !60, !tbaa !36
  %inc = add nsw i32 %10, 1, !dbg !60
  store i32 %inc, i32* %i, align 4, !dbg !60, !tbaa !36
  br label %for.cond, !dbg !61, !llvm.loop !62

for.end:                                          ; preds = %for.cond
  %11 = bitcast i32* %j to i8*, !dbg !64
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %11) #4, !dbg !64
  %12 = bitcast i32* %i to i8*, !dbg !64
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %12) #4, !dbg !64
  ret void, !dbg !64
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., float* dereferenceable(4) %sum, i32* dereferenceable(4) %i) #3 !dbg !65 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %sum.addr = alloca float*, align 8
  %i.addr = alloca i32*, align 8
  %.omp.iv = alloca i32, align 4
  %tmp = alloca i32, align 4
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %sum1 = alloca float, align 4
  %j = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %.omp.reduction.red_list = alloca [1 x i8*], align 8
  %atomic-temp = alloca float, align 4
  %tmp12 = alloca float, align 4
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !86
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !75, metadata !DIExpression()), !dbg !87
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !86
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !76, metadata !DIExpression()), !dbg !87
  store float* %sum, float** %sum.addr, align 8, !tbaa !86
  call void @llvm.dbg.declare(metadata float** %sum.addr, metadata !77, metadata !DIExpression()), !dbg !88
  store i32* %i, i32** %i.addr, align 8, !tbaa !86
  call void @llvm.dbg.declare(metadata i32** %i.addr, metadata !78, metadata !DIExpression()), !dbg !89
  %2 = load float*, float** %sum.addr, align 8, !dbg !90, !tbaa !86
  %3 = load i32*, i32** %i.addr, align 8, !dbg !90, !tbaa !86
  %4 = bitcast i32* %.omp.iv to i8*, !dbg !90
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #4, !dbg !90
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !79, metadata !DIExpression()), !dbg !87
  %5 = bitcast i32* %.omp.lb to i8*, !dbg !90
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #4, !dbg !90
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !80, metadata !DIExpression()), !dbg !87
  store i32 0, i32* %.omp.lb, align 4, !dbg !91, !tbaa !36
  %6 = bitcast i32* %.omp.ub to i8*, !dbg !90
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #4, !dbg !90
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !81, metadata !DIExpression()), !dbg !87
  store i32 999, i32* %.omp.ub, align 4, !dbg !91, !tbaa !36
  %7 = bitcast i32* %.omp.stride to i8*, !dbg !90
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #4, !dbg !90
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !82, metadata !DIExpression()), !dbg !87
  store i32 1, i32* %.omp.stride, align 4, !dbg !91, !tbaa !36
  %8 = bitcast i32* %.omp.is_last to i8*, !dbg !90
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #4, !dbg !90
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !83, metadata !DIExpression()), !dbg !87
  store i32 0, i32* %.omp.is_last, align 4, !dbg !91, !tbaa !36
  %9 = bitcast float* %sum1 to i8*, !dbg !90
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #4, !dbg !90
  call void @llvm.dbg.declare(metadata float* %sum1, metadata !84, metadata !DIExpression()), !dbg !87
  store float 0.000000e+00, float* %sum1, align 4, !dbg !92, !tbaa !46
  %10 = bitcast i32* %j to i8*, !dbg !90
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #4, !dbg !90
  call void @llvm.dbg.declare(metadata i32* %j, metadata !85, metadata !DIExpression()), !dbg !87
  %11 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !90
  store i8* getelementptr inbounds ([68 x i8], [68 x i8]* @1, i32 0, i32 0), i8** %11, align 8, !dbg !90, !tbaa !49
  %12 = load i32*, i32** %.global_tid..addr, align 8, !dbg !90
  %13 = load i32, i32* %12, align 4, !dbg !90, !tbaa !36
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %13, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !90
  %14 = load i32, i32* %.omp.ub, align 4, !dbg !91, !tbaa !36
  %cmp = icmp sgt i32 %14, 999, !dbg !91
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !91

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !91

cond.false:                                       ; preds = %entry
  %15 = load i32, i32* %.omp.ub, align 4, !dbg !91, !tbaa !36
  br label %cond.end, !dbg !91

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 999, %cond.true ], [ %15, %cond.false ], !dbg !91
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !91, !tbaa !36
  %16 = load i32, i32* %.omp.lb, align 4, !dbg !91, !tbaa !36
  store i32 %16, i32* %.omp.iv, align 4, !dbg !91, !tbaa !36
  br label %omp.inner.for.cond, !dbg !90

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %17 = load i32, i32* %.omp.iv, align 4, !dbg !91, !tbaa !36
  %18 = load i32, i32* %.omp.ub, align 4, !dbg !91, !tbaa !36
  %cmp2 = icmp sle i32 %17, %18, !dbg !90
  br i1 %cmp2, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !90

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !90

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %19 = load i32, i32* %.omp.iv, align 4, !dbg !91, !tbaa !36
  %mul = mul nsw i32 %19, 1, !dbg !93
  %add = add nsw i32 0, %mul, !dbg !93
  store i32 %add, i32* %j, align 4, !dbg !93, !tbaa !36
  %20 = load i32, i32* %3, align 4, !dbg !94, !tbaa !36
  %idxprom = sext i32 %20 to i64, !dbg !96
  %arrayidx = getelementptr inbounds [1000 x [1000 x double]], [1000 x [1000 x double]]* @a, i64 0, i64 %idxprom, !dbg !96
  %21 = load i32, i32* %j, align 4, !dbg !97, !tbaa !36
  %idxprom3 = sext i32 %21 to i64, !dbg !96
  %arrayidx4 = getelementptr inbounds [1000 x double], [1000 x double]* %arrayidx, i64 0, i64 %idxprom3, !dbg !96
  %22 = load double, double* %arrayidx4, align 8, !dbg !96, !tbaa !56
  %23 = load i32, i32* %j, align 4, !dbg !98, !tbaa !36
  %idxprom5 = sext i32 %23 to i64, !dbg !99
  %arrayidx6 = getelementptr inbounds [1000 x double], [1000 x double]* @v, i64 0, i64 %idxprom5, !dbg !99
  %24 = load double, double* %arrayidx6, align 8, !dbg !99, !tbaa !56
  %mul7 = fmul double %22, %24, !dbg !100
  %25 = load float, float* %sum1, align 4, !dbg !101, !tbaa !46
  %conv = fpext float %25 to double, !dbg !101
  %add8 = fadd double %conv, %mul7, !dbg !101
  %conv9 = fptrunc double %add8 to float, !dbg !101
  store float %conv9, float* %sum1, align 4, !dbg !101, !tbaa !46
  br label %omp.body.continue, !dbg !102

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !103

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %26 = load i32, i32* %.omp.iv, align 4, !dbg !91, !tbaa !36
  %add10 = add nsw i32 %26, 1, !dbg !90
  store i32 %add10, i32* %.omp.iv, align 4, !dbg !90, !tbaa !36
  br label %omp.inner.for.cond, !dbg !103, !llvm.loop !104

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !103

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %27 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !103
  store i8* getelementptr inbounds ([69 x i8], [69 x i8]* @2, i32 0, i32 0), i8** %27, align 8, !dbg !103, !tbaa !49
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %13), !dbg !103
  %28 = getelementptr inbounds [1 x i8*], [1 x i8*]* %.omp.reduction.red_list, i64 0, i64 0, !dbg !103
  %29 = bitcast float* %sum1 to i8*, !dbg !103
  store i8* %29, i8** %28, align 8, !dbg !103
  %30 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !103
  store i8* getelementptr inbounds ([69 x i8], [69 x i8]* @2, i32 0, i32 0), i8** %30, align 8, !dbg !103, !tbaa !49
  %31 = bitcast [1 x i8*]* %.omp.reduction.red_list to i8*, !dbg !103
  %32 = call i32 @__kmpc_reduce_nowait(%struct.ident_t* %.kmpc_loc.addr, i32 %13, i32 1, i64 8, i8* %31, void (i8*, i8*)* @.omp.reduction.reduction_func, [8 x i32]* @.gomp_critical_user_.reduction.var), !dbg !103
  switch i32 %32, label %.omp.reduction.default [
    i32 1, label %.omp.reduction.case1
    i32 2, label %.omp.reduction.case2
  ], !dbg !103

.omp.reduction.case1:                             ; preds = %omp.loop.exit
  %33 = load float, float* %2, align 4, !dbg !92, !tbaa !46
  %34 = load float, float* %sum1, align 4, !dbg !92, !tbaa !46
  %add11 = fadd float %33, %34, !dbg !106
  store float %add11, float* %2, align 4, !dbg !106, !tbaa !46
  call void @__kmpc_end_reduce_nowait(%struct.ident_t* %.kmpc_loc.addr, i32 %13, [8 x i32]* @.gomp_critical_user_.reduction.var), !dbg !103
  br label %.omp.reduction.default, !dbg !103

.omp.reduction.case2:                             ; preds = %omp.loop.exit
  %35 = load float, float* %sum1, align 4, !dbg !92, !tbaa !46
  %36 = bitcast float* %2 to i32*, !dbg !103
  %atomic-load = load atomic i32, i32* %36 monotonic, align 4, !dbg !103, !tbaa !46
  br label %atomic_cont, !dbg !103

atomic_cont:                                      ; preds = %atomic_cont, %.omp.reduction.case2
  %37 = phi i32 [ %atomic-load, %.omp.reduction.case2 ], [ %45, %atomic_cont ], !dbg !103
  %38 = bitcast float* %atomic-temp to i32*, !dbg !103
  %39 = bitcast i32 %37 to float, !dbg !103
  store float %39, float* %tmp12, align 4, !dbg !103, !tbaa !46
  %40 = load float, float* %tmp12, align 4, !dbg !92, !tbaa !46
  %41 = load float, float* %sum1, align 4, !dbg !92, !tbaa !46
  %add13 = fadd float %40, %41, !dbg !106
  store float %add13, float* %atomic-temp, align 4, !dbg !103, !tbaa !46
  %42 = load i32, i32* %38, align 4, !dbg !103
  %43 = bitcast float* %2 to i32*, !dbg !103
  %44 = cmpxchg i32* %43, i32 %37, i32 %42 monotonic monotonic, !dbg !103
  %45 = extractvalue { i32, i1 } %44, 0, !dbg !103
  %46 = extractvalue { i32, i1 } %44, 1, !dbg !103
  br i1 %46, label %atomic_exit, label %atomic_cont, !dbg !103

atomic_exit:                                      ; preds = %atomic_cont
  br label %.omp.reduction.default, !dbg !103

.omp.reduction.default:                           ; preds = %atomic_exit, %.omp.reduction.case1, %omp.loop.exit
  %47 = bitcast i32* %j to i8*, !dbg !103
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %47) #4, !dbg !103
  %48 = bitcast float* %sum1 to i8*, !dbg !103
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %48) #4, !dbg !103
  %49 = bitcast i32* %.omp.is_last to i8*, !dbg !103
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %49) #4, !dbg !103
  %50 = bitcast i32* %.omp.stride to i8*, !dbg !103
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %50) #4, !dbg !103
  %51 = bitcast i32* %.omp.ub to i8*, !dbg !103
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %51) #4, !dbg !103
  %52 = bitcast i32* %.omp.lb to i8*, !dbg !103
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %52) #4, !dbg !103
  %53 = bitcast i32* %.omp.iv to i8*, !dbg !103
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %53) #4, !dbg !103
  ret void, !dbg !107
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp.reduction.reduction_func(i8* %0, i8* %1) #3 !dbg !108 {
entry:
  %.addr = alloca i8*, align 8
  %.addr1 = alloca i8*, align 8
  store i8* %0, i8** %.addr, align 8, !tbaa !86
  call void @llvm.dbg.declare(metadata i8** %.addr, metadata !111, metadata !DIExpression()), !dbg !114
  store i8* %1, i8** %.addr1, align 8, !tbaa !86
  call void @llvm.dbg.declare(metadata i8** %.addr1, metadata !113, metadata !DIExpression()), !dbg !114
  %2 = load i8*, i8** %.addr, align 8, !dbg !115
  %3 = bitcast i8* %2 to [1 x i8*]*, !dbg !115
  %4 = load i8*, i8** %.addr1, align 8, !dbg !115
  %5 = bitcast i8* %4 to [1 x i8*]*, !dbg !115
  %6 = getelementptr inbounds [1 x i8*], [1 x i8*]* %5, i64 0, i64 0, !dbg !115
  %7 = load i8*, i8** %6, align 8, !dbg !115
  %8 = bitcast i8* %7 to float*, !dbg !115
  %9 = getelementptr inbounds [1 x i8*], [1 x i8*]* %3, i64 0, i64 0, !dbg !115
  %10 = load i8*, i8** %9, align 8, !dbg !115
  %11 = bitcast i8* %10 to float*, !dbg !115
  %12 = load float, float* %11, align 4, !dbg !116, !tbaa !46
  %13 = load float, float* %8, align 4, !dbg !116, !tbaa !46
  %add = fadd float %12, %13, !dbg !117
  store float %add, float* %11, align 4, !dbg !117, !tbaa !46
  ret void, !dbg !116
}

declare dso_local i32 @__kmpc_reduce_nowait(%struct.ident_t*, i32, i32, i64, i8*, void (i8*, i8*)*, [8 x i32]*)

declare dso_local void @__kmpc_end_reduce_nowait(%struct.ident_t*, i32, [8 x i32]*)

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., float* dereferenceable(4) %sum, i32* dereferenceable(4) %i) #3 !dbg !118 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %sum.addr = alloca float*, align 8
  %i.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !86
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !120, metadata !DIExpression()), !dbg !124
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !86
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !121, metadata !DIExpression()), !dbg !124
  store float* %sum, float** %sum.addr, align 8, !tbaa !86
  call void @llvm.dbg.declare(metadata float** %sum.addr, metadata !122, metadata !DIExpression()), !dbg !124
  store i32* %i, i32** %i.addr, align 8, !tbaa !86
  call void @llvm.dbg.declare(metadata i32** %i.addr, metadata !123, metadata !DIExpression()), !dbg !124
  %0 = load float*, float** %sum.addr, align 8, !dbg !125, !tbaa !86
  %1 = load i32*, i32** %i.addr, align 8, !dbg !125, !tbaa !86
  %2 = load i32*, i32** %.global_tid..addr, align 8, !dbg !125, !tbaa !86
  %3 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !125, !tbaa !86
  %4 = load float*, float** %sum.addr, align 8, !dbg !125, !tbaa !86
  %5 = load i32*, i32** %i.addr, align 8, !dbg !125, !tbaa !86
  call void @.omp_outlined._debug__(i32* %2, i32* %3, float* %4, i32* %5) #4, !dbg !125
  ret void, !dbg !125
}

declare !callback !126 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

; Function Attrs: nounwind uwtable
define dso_local i32 @main() #0 !dbg !128 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @mv(), !dbg !131
  ret i32 0, !dbg !132
}

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!16, !17, !18}
!llvm.ident = !{!19}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "a", scope: !2, file: !3, line: 51, type: !14, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "integration/dataracebench/DRB062-matrixvector2-orig-no.c", directory: "/home/brad/Code/OpenRace/tests/data")
!4 = !{}
!5 = !{!0, !6, !12}
!6 = !DIGlobalVariableExpression(var: !7, expr: !DIExpression())
!7 = distinct !DIGlobalVariable(name: "v", scope: !2, file: !3, line: 51, type: !8, isLocal: false, isDefinition: true)
!8 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 64000, elements: !10)
!9 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!10 = !{!11}
!11 = !DISubrange(count: 1000)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(name: "v_out", scope: !2, file: !3, line: 51, type: !8, isLocal: false, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 64000000, elements: !15)
!15 = !{!11, !11}
!16 = !{i32 7, !"Dwarf Version", i32 4}
!17 = !{i32 2, !"Debug Info Version", i32 3}
!18 = !{i32 1, !"wchar_size", i32 4}
!19 = !{!"clang version 10.0.1 "}
!20 = distinct !DISubprogram(name: "mv", scope: !3, file: !3, line: 53, type: !21, scopeLine: 54, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !23)
!21 = !DISubroutineType(types: !22)
!22 = !{null}
!23 = !{!24, !26, !27}
!24 = !DILocalVariable(name: "i", scope: !20, file: !3, line: 55, type: !25)
!25 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!26 = !DILocalVariable(name: "j", scope: !20, file: !3, line: 55, type: !25)
!27 = !DILocalVariable(name: "sum", scope: !28, file: !3, line: 58, type: !31)
!28 = distinct !DILexicalBlock(scope: !29, file: !3, line: 57, column: 3)
!29 = distinct !DILexicalBlock(scope: !30, file: !3, line: 56, column: 3)
!30 = distinct !DILexicalBlock(scope: !20, file: !3, line: 56, column: 3)
!31 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!32 = !DILocation(line: 55, column: 3, scope: !20)
!33 = !DILocation(line: 55, column: 7, scope: !20)
!34 = !DILocation(line: 55, column: 9, scope: !20)
!35 = !DILocation(line: 56, column: 10, scope: !30)
!36 = !{!37, !37, i64 0}
!37 = !{!"int", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !DILocation(line: 56, column: 8, scope: !30)
!41 = !DILocation(line: 56, column: 15, scope: !29)
!42 = !DILocation(line: 56, column: 17, scope: !29)
!43 = !DILocation(line: 56, column: 3, scope: !30)
!44 = !DILocation(line: 58, column: 5, scope: !28)
!45 = !DILocation(line: 58, column: 11, scope: !28)
!46 = !{!47, !47, i64 0}
!47 = !{!"float", !38, i64 0}
!48 = !DILocation(line: 59, column: 1, scope: !28)
!49 = !{!50, !51, i64 16}
!50 = !{!"ident_t", !37, i64 0, !37, i64 4, !37, i64 8, !37, i64 12, !51, i64 16}
!51 = !{!"any pointer", !38, i64 0}
!52 = !DILocation(line: 64, column: 16, scope: !28)
!53 = !DILocation(line: 64, column: 11, scope: !28)
!54 = !DILocation(line: 64, column: 5, scope: !28)
!55 = !DILocation(line: 64, column: 14, scope: !28)
!56 = !{!57, !57, i64 0}
!57 = !{!"double", !38, i64 0}
!58 = !DILocation(line: 65, column: 3, scope: !29)
!59 = !DILocation(line: 65, column: 3, scope: !28)
!60 = !DILocation(line: 56, column: 23, scope: !29)
!61 = !DILocation(line: 56, column: 3, scope: !29)
!62 = distinct !{!62, !43, !63}
!63 = !DILocation(line: 65, column: 3, scope: !30)
!64 = !DILocation(line: 66, column: 1, scope: !20)
!65 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !3, file: !3, line: 60, type: !66, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !74)
!66 = !DISubroutineType(types: !67)
!67 = !{null, !68, !68, !72, !73}
!68 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !69)
!69 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !70)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !25)
!72 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !31, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !25, size: 64)
!74 = !{!75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85}
!75 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !65, type: !68, flags: DIFlagArtificial)
!76 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !65, type: !68, flags: DIFlagArtificial)
!77 = !DILocalVariable(name: "sum", arg: 3, scope: !65, file: !3, line: 58, type: !72)
!78 = !DILocalVariable(name: "i", arg: 4, scope: !65, file: !3, line: 55, type: !73)
!79 = !DILocalVariable(name: ".omp.iv", scope: !65, type: !25, flags: DIFlagArtificial)
!80 = !DILocalVariable(name: ".omp.lb", scope: !65, type: !25, flags: DIFlagArtificial)
!81 = !DILocalVariable(name: ".omp.ub", scope: !65, type: !25, flags: DIFlagArtificial)
!82 = !DILocalVariable(name: ".omp.stride", scope: !65, type: !25, flags: DIFlagArtificial)
!83 = !DILocalVariable(name: ".omp.is_last", scope: !65, type: !25, flags: DIFlagArtificial)
!84 = !DILocalVariable(name: "sum", scope: !65, type: !31, flags: DIFlagArtificial)
!85 = !DILocalVariable(name: "j", scope: !65, type: !25, flags: DIFlagArtificial)
!86 = !{!51, !51, i64 0}
!87 = !DILocation(line: 0, scope: !65)
!88 = !DILocation(line: 58, column: 11, scope: !65)
!89 = !DILocation(line: 55, column: 7, scope: !65)
!90 = !DILocation(line: 60, column: 5, scope: !65)
!91 = !DILocation(line: 60, column: 10, scope: !65)
!92 = !DILocation(line: 59, column: 38, scope: !65)
!93 = !DILocation(line: 60, column: 24, scope: !65)
!94 = !DILocation(line: 62, column: 16, scope: !95)
!95 = distinct !DILexicalBlock(scope: !65, file: !3, line: 61, column: 5)
!96 = !DILocation(line: 62, column: 14, scope: !95)
!97 = !DILocation(line: 62, column: 19, scope: !95)
!98 = !DILocation(line: 62, column: 24, scope: !95)
!99 = !DILocation(line: 62, column: 22, scope: !95)
!100 = !DILocation(line: 62, column: 21, scope: !95)
!101 = !DILocation(line: 62, column: 11, scope: !95)
!102 = !DILocation(line: 63, column: 5, scope: !95)
!103 = !DILocation(line: 59, column: 1, scope: !65)
!104 = distinct !{!104, !103, !105}
!105 = !DILocation(line: 59, column: 42, scope: !65)
!106 = !DILocation(line: 59, column: 36, scope: !65)
!107 = !DILocation(line: 63, column: 5, scope: !65)
!108 = distinct !DISubprogram(linkageName: ".omp.reduction.reduction_func", scope: !3, file: !3, line: 59, type: !109, scopeLine: 59, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !110)
!109 = !DISubroutineType(types: !4)
!110 = !{!111, !113}
!111 = !DILocalVariable(arg: 1, scope: !108, type: !112, flags: DIFlagArtificial)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!113 = !DILocalVariable(arg: 2, scope: !108, type: !112, flags: DIFlagArtificial)
!114 = !DILocation(line: 0, scope: !108)
!115 = !DILocation(line: 59, column: 42, scope: !108)
!116 = !DILocation(line: 59, column: 38, scope: !108)
!117 = !DILocation(line: 59, column: 36, scope: !108)
!118 = distinct !DISubprogram(name: ".omp_outlined.", scope: !3, file: !3, line: 60, type: !66, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !119)
!119 = !{!120, !121, !122, !123}
!120 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !118, type: !68, flags: DIFlagArtificial)
!121 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !118, type: !68, flags: DIFlagArtificial)
!122 = !DILocalVariable(name: "sum", arg: 3, scope: !118, type: !72, flags: DIFlagArtificial)
!123 = !DILocalVariable(name: "i", arg: 4, scope: !118, type: !73, flags: DIFlagArtificial)
!124 = !DILocation(line: 0, scope: !118)
!125 = !DILocation(line: 60, column: 5, scope: !118)
!126 = !{!127}
!127 = !{i64 2, i64 -1, i64 -1, i1 true}
!128 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 68, type: !129, scopeLine: 69, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4)
!129 = !DISubroutineType(types: !130)
!130 = !{!25}
!131 = !DILocation(line: 70, column: 3, scope: !128)
!132 = !DILocation(line: 71, column: 3, scope: !128)
