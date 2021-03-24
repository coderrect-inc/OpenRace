; ModuleID = 'DRB062-matrixvector2-orig-no.c'
source_filename = "DRB062-matrixvector2-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [42 x i8] c";DRB062-matrixvector2-orig-no.c;mv;59;1;;\00", align 1
@a = common dso_local global [1000 x [1000 x double]] zeroinitializer, align 16, !dbg !0
@v = common dso_local global [1000 x double] zeroinitializer, align 16, !dbg !6
@2 = private unnamed_addr constant [43 x i8] c";DRB062-matrixvector2-orig-no.c;mv;59;42;;\00", align 1
@.gomp_critical_user_.reduction.var = common global [8 x i32] zeroinitializer
@3 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@v_out = common dso_local global [1000 x double] zeroinitializer, align 16, !dbg !12

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mv() #0 !dbg !20 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %sum = alloca float, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  call void @llvm.dbg.declare(metadata i32* %i, metadata !23, metadata !DIExpression()), !dbg !25
  call void @llvm.dbg.declare(metadata i32* %j, metadata !26, metadata !DIExpression()), !dbg !27
  store i32 0, i32* %i, align 4, !dbg !28
  br label %for.cond, !dbg !30

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4, !dbg !31
  %cmp = icmp slt i32 %2, 1000, !dbg !33
  br i1 %cmp, label %for.body, label %for.end, !dbg !34

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata float* %sum, metadata !35, metadata !DIExpression()), !dbg !38
  store float 0.000000e+00, float* %sum, align 4, !dbg !38
  %3 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !39
  store i8* getelementptr inbounds ([42 x i8], [42 x i8]* @1, i32 0, i32 0), i8** %3, align 8, !dbg !39
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 2, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, float*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), float* %sum, i32* %i), !dbg !39
  %4 = load float, float* %sum, align 4, !dbg !40
  %conv = fpext float %4 to double, !dbg !40
  %5 = load i32, i32* %i, align 4, !dbg !41
  %idxprom = sext i32 %5 to i64, !dbg !42
  %arrayidx = getelementptr inbounds [1000 x double], [1000 x double]* @v_out, i64 0, i64 %idxprom, !dbg !42
  store double %conv, double* %arrayidx, align 8, !dbg !43
  br label %for.inc, !dbg !44

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !45
  %inc = add nsw i32 %6, 1, !dbg !45
  store i32 %inc, i32* %i, align 4, !dbg !45
  br label %for.cond, !dbg !46, !llvm.loop !47

for.end:                                          ; preds = %for.cond
  ret void, !dbg !49
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., float* dereferenceable(4) %sum, i32* dereferenceable(4) %i) #2 !dbg !50 {
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
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !59, metadata !DIExpression()), !dbg !60
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !61, metadata !DIExpression()), !dbg !60
  store float* %sum, float** %sum.addr, align 8
  call void @llvm.dbg.declare(metadata float** %sum.addr, metadata !62, metadata !DIExpression()), !dbg !63
  store i32* %i, i32** %i.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %i.addr, metadata !64, metadata !DIExpression()), !dbg !65
  %2 = load float*, float** %sum.addr, align 8, !dbg !66
  %3 = load i32*, i32** %i.addr, align 8, !dbg !66
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !67, metadata !DIExpression()), !dbg !60
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !68, metadata !DIExpression()), !dbg !60
  store i32 0, i32* %.omp.lb, align 4, !dbg !69
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !70, metadata !DIExpression()), !dbg !60
  store i32 999, i32* %.omp.ub, align 4, !dbg !69
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !71, metadata !DIExpression()), !dbg !60
  store i32 1, i32* %.omp.stride, align 4, !dbg !69
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !72, metadata !DIExpression()), !dbg !60
  store i32 0, i32* %.omp.is_last, align 4, !dbg !69
  call void @llvm.dbg.declare(metadata float* %sum1, metadata !73, metadata !DIExpression()), !dbg !60
  store float 0.000000e+00, float* %sum1, align 4, !dbg !74
  call void @llvm.dbg.declare(metadata i32* %j, metadata !75, metadata !DIExpression()), !dbg !60
  %4 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !66
  store i8* getelementptr inbounds ([42 x i8], [42 x i8]* @1, i32 0, i32 0), i8** %4, align 8, !dbg !66
  %5 = load i32*, i32** %.global_tid..addr, align 8, !dbg !66
  %6 = load i32, i32* %5, align 4, !dbg !66
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %6, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !66
  %7 = load i32, i32* %.omp.ub, align 4, !dbg !69
  %cmp = icmp sgt i32 %7, 999, !dbg !69
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !69

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !69

cond.false:                                       ; preds = %entry
  %8 = load i32, i32* %.omp.ub, align 4, !dbg !69
  br label %cond.end, !dbg !69

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 999, %cond.true ], [ %8, %cond.false ], !dbg !69
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !69
  %9 = load i32, i32* %.omp.lb, align 4, !dbg !69
  store i32 %9, i32* %.omp.iv, align 4, !dbg !69
  br label %omp.inner.for.cond, !dbg !66

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %10 = load i32, i32* %.omp.iv, align 4, !dbg !69
  %11 = load i32, i32* %.omp.ub, align 4, !dbg !69
  %cmp2 = icmp sle i32 %10, %11, !dbg !66
  br i1 %cmp2, label %omp.inner.for.body, label %omp.inner.for.end, !dbg !66

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %12 = load i32, i32* %.omp.iv, align 4, !dbg !69
  %mul = mul nsw i32 %12, 1, !dbg !76
  %add = add nsw i32 0, %mul, !dbg !76
  store i32 %add, i32* %j, align 4, !dbg !76
  %13 = load i32, i32* %3, align 4, !dbg !77
  %idxprom = sext i32 %13 to i64, !dbg !79
  %arrayidx = getelementptr inbounds [1000 x [1000 x double]], [1000 x [1000 x double]]* @a, i64 0, i64 %idxprom, !dbg !79
  %14 = load i32, i32* %j, align 4, !dbg !80
  %idxprom3 = sext i32 %14 to i64, !dbg !79
  %arrayidx4 = getelementptr inbounds [1000 x double], [1000 x double]* %arrayidx, i64 0, i64 %idxprom3, !dbg !79
  %15 = load double, double* %arrayidx4, align 8, !dbg !79
  %16 = load i32, i32* %j, align 4, !dbg !81
  %idxprom5 = sext i32 %16 to i64, !dbg !82
  %arrayidx6 = getelementptr inbounds [1000 x double], [1000 x double]* @v, i64 0, i64 %idxprom5, !dbg !82
  %17 = load double, double* %arrayidx6, align 8, !dbg !82
  %mul7 = fmul double %15, %17, !dbg !83
  %18 = load float, float* %sum1, align 4, !dbg !84
  %conv = fpext float %18 to double, !dbg !84
  %add8 = fadd double %conv, %mul7, !dbg !84
  %conv9 = fptrunc double %add8 to float, !dbg !84
  store float %conv9, float* %sum1, align 4, !dbg !84
  br label %omp.body.continue, !dbg !85

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !86

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %19 = load i32, i32* %.omp.iv, align 4, !dbg !69
  %add10 = add nsw i32 %19, 1, !dbg !66
  store i32 %add10, i32* %.omp.iv, align 4, !dbg !66
  br label %omp.inner.for.cond, !dbg !86, !llvm.loop !87

omp.inner.for.end:                                ; preds = %omp.inner.for.cond
  br label %omp.loop.exit, !dbg !86

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %20 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !86
  store i8* getelementptr inbounds ([43 x i8], [43 x i8]* @2, i32 0, i32 0), i8** %20, align 8, !dbg !86
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %6), !dbg !86
  %21 = getelementptr inbounds [1 x i8*], [1 x i8*]* %.omp.reduction.red_list, i64 0, i64 0, !dbg !86
  %22 = bitcast float* %sum1 to i8*, !dbg !86
  store i8* %22, i8** %21, align 8, !dbg !86
  %23 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !86
  store i8* getelementptr inbounds ([43 x i8], [43 x i8]* @2, i32 0, i32 0), i8** %23, align 8, !dbg !86
  %24 = bitcast [1 x i8*]* %.omp.reduction.red_list to i8*, !dbg !86
  %25 = call i32 @__kmpc_reduce_nowait(%struct.ident_t* %.kmpc_loc.addr, i32 %6, i32 1, i64 8, i8* %24, void (i8*, i8*)* @.omp.reduction.reduction_func, [8 x i32]* @.gomp_critical_user_.reduction.var), !dbg !86
  switch i32 %25, label %.omp.reduction.default [
    i32 1, label %.omp.reduction.case1
    i32 2, label %.omp.reduction.case2
  ], !dbg !86

.omp.reduction.case1:                             ; preds = %omp.loop.exit
  %26 = load float, float* %2, align 4, !dbg !74
  %27 = load float, float* %sum1, align 4, !dbg !74
  %add11 = fadd float %26, %27, !dbg !89
  store float %add11, float* %2, align 4, !dbg !89
  call void @__kmpc_end_reduce_nowait(%struct.ident_t* %.kmpc_loc.addr, i32 %6, [8 x i32]* @.gomp_critical_user_.reduction.var), !dbg !86
  br label %.omp.reduction.default, !dbg !86

.omp.reduction.case2:                             ; preds = %omp.loop.exit
  %28 = load float, float* %sum1, align 4, !dbg !74
  %29 = bitcast float* %2 to i32*, !dbg !86
  %atomic-load = load atomic i32, i32* %29 monotonic, align 4, !dbg !86
  br label %atomic_cont, !dbg !86

atomic_cont:                                      ; preds = %atomic_cont, %.omp.reduction.case2
  %30 = phi i32 [ %atomic-load, %.omp.reduction.case2 ], [ %38, %atomic_cont ], !dbg !86
  %31 = bitcast float* %atomic-temp to i32*, !dbg !86
  %32 = bitcast i32 %30 to float, !dbg !86
  store float %32, float* %tmp12, align 4, !dbg !86
  %33 = load float, float* %tmp12, align 4, !dbg !74
  %34 = load float, float* %sum1, align 4, !dbg !74
  %add13 = fadd float %33, %34, !dbg !89
  store float %add13, float* %atomic-temp, align 4, !dbg !86
  %35 = load i32, i32* %31, align 4, !dbg !86
  %36 = bitcast float* %2 to i32*, !dbg !86
  %37 = cmpxchg i32* %36, i32 %30, i32 %35 monotonic monotonic, !dbg !86
  %38 = extractvalue { i32, i1 } %37, 0, !dbg !86
  %39 = extractvalue { i32, i1 } %37, 1, !dbg !86
  br i1 %39, label %atomic_exit, label %atomic_cont, !dbg !86

atomic_exit:                                      ; preds = %atomic_cont
  br label %.omp.reduction.default, !dbg !86

.omp.reduction.default:                           ; preds = %atomic_exit, %.omp.reduction.case1, %omp.loop.exit
  ret void, !dbg !90
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: noinline norecurse nounwind uwtable
define internal void @.omp.reduction.reduction_func(i8* %0, i8* %1) #4 !dbg !91 {
entry:
  %.addr = alloca i8*, align 8
  %.addr1 = alloca i8*, align 8
  store i8* %0, i8** %.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %.addr, metadata !93, metadata !DIExpression()), !dbg !95
  store i8* %1, i8** %.addr1, align 8
  call void @llvm.dbg.declare(metadata i8** %.addr1, metadata !96, metadata !DIExpression()), !dbg !95
  %2 = load i8*, i8** %.addr, align 8, !dbg !97
  %3 = bitcast i8* %2 to [1 x i8*]*, !dbg !97
  %4 = load i8*, i8** %.addr1, align 8, !dbg !97
  %5 = bitcast i8* %4 to [1 x i8*]*, !dbg !97
  %6 = getelementptr inbounds [1 x i8*], [1 x i8*]* %5, i64 0, i64 0, !dbg !97
  %7 = load i8*, i8** %6, align 8, !dbg !97
  %8 = bitcast i8* %7 to float*, !dbg !97
  %9 = getelementptr inbounds [1 x i8*], [1 x i8*]* %3, i64 0, i64 0, !dbg !97
  %10 = load i8*, i8** %9, align 8, !dbg !97
  %11 = bitcast i8* %10 to float*, !dbg !97
  %12 = load float, float* %11, align 4, !dbg !98
  %13 = load float, float* %8, align 4, !dbg !98
  %add = fadd float %12, %13, !dbg !99
  store float %add, float* %11, align 4, !dbg !99
  ret void, !dbg !98
}

declare dso_local i32 @__kmpc_reduce_nowait(%struct.ident_t*, i32, i32, i64, i8*, void (i8*, i8*)*, [8 x i32]*)

declare dso_local void @__kmpc_end_reduce_nowait(%struct.ident_t*, i32, [8 x i32]*)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., float* dereferenceable(4) %sum, i32* dereferenceable(4) %i) #2 !dbg !100 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %sum.addr = alloca float*, align 8
  %i.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !101, metadata !DIExpression()), !dbg !102
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !103, metadata !DIExpression()), !dbg !102
  store float* %sum, float** %sum.addr, align 8
  call void @llvm.dbg.declare(metadata float** %sum.addr, metadata !104, metadata !DIExpression()), !dbg !102
  store i32* %i, i32** %i.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %i.addr, metadata !105, metadata !DIExpression()), !dbg !102
  %0 = load float*, float** %sum.addr, align 8, !dbg !106
  %1 = load i32*, i32** %i.addr, align 8, !dbg !106
  %2 = load i32*, i32** %.global_tid..addr, align 8, !dbg !106
  %3 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !106
  %4 = load float*, float** %sum.addr, align 8, !dbg !106
  %5 = load i32*, i32** %i.addr, align 8, !dbg !106
  call void @.omp_outlined._debug__(i32* %2, i32* %3, float* %4, i32* %5) #5, !dbg !106
  ret void, !dbg !106
}

declare !callback !107 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !109 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @mv(), !dbg !112
  ret i32 0, !dbg !113
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noinline norecurse nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { noinline norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!16, !17, !18}
!llvm.ident = !{!19}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "a", scope: !2, file: !3, line: 51, type: !14, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.1 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "DRB062-matrixvector2-orig-no.c", directory: "/home/yanze/code/OpenRace/tests/data/integration/dataracebench")
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
!20 = distinct !DISubprogram(name: "mv", scope: !3, file: !3, line: 53, type: !21, scopeLine: 54, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!21 = !DISubroutineType(types: !22)
!22 = !{null}
!23 = !DILocalVariable(name: "i", scope: !20, file: !3, line: 55, type: !24)
!24 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!25 = !DILocation(line: 55, column: 7, scope: !20)
!26 = !DILocalVariable(name: "j", scope: !20, file: !3, line: 55, type: !24)
!27 = !DILocation(line: 55, column: 9, scope: !20)
!28 = !DILocation(line: 56, column: 10, scope: !29)
!29 = distinct !DILexicalBlock(scope: !20, file: !3, line: 56, column: 3)
!30 = !DILocation(line: 56, column: 8, scope: !29)
!31 = !DILocation(line: 56, column: 15, scope: !32)
!32 = distinct !DILexicalBlock(scope: !29, file: !3, line: 56, column: 3)
!33 = !DILocation(line: 56, column: 17, scope: !32)
!34 = !DILocation(line: 56, column: 3, scope: !29)
!35 = !DILocalVariable(name: "sum", scope: !36, file: !3, line: 58, type: !37)
!36 = distinct !DILexicalBlock(scope: !32, file: !3, line: 57, column: 3)
!37 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!38 = !DILocation(line: 58, column: 11, scope: !36)
!39 = !DILocation(line: 59, column: 1, scope: !36)
!40 = !DILocation(line: 64, column: 16, scope: !36)
!41 = !DILocation(line: 64, column: 11, scope: !36)
!42 = !DILocation(line: 64, column: 5, scope: !36)
!43 = !DILocation(line: 64, column: 14, scope: !36)
!44 = !DILocation(line: 65, column: 3, scope: !36)
!45 = !DILocation(line: 56, column: 23, scope: !32)
!46 = !DILocation(line: 56, column: 3, scope: !32)
!47 = distinct !{!47, !34, !48}
!48 = !DILocation(line: 65, column: 3, scope: !29)
!49 = !DILocation(line: 66, column: 1, scope: !20)
!50 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !3, file: !3, line: 60, type: !51, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!51 = !DISubroutineType(types: !52)
!52 = !{null, !53, !53, !57, !58}
!53 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !54)
!54 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !55)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !24)
!57 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !37, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !24, size: 64)
!59 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !50, type: !53, flags: DIFlagArtificial)
!60 = !DILocation(line: 0, scope: !50)
!61 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !50, type: !53, flags: DIFlagArtificial)
!62 = !DILocalVariable(name: "sum", arg: 3, scope: !50, file: !3, line: 58, type: !57)
!63 = !DILocation(line: 58, column: 11, scope: !50)
!64 = !DILocalVariable(name: "i", arg: 4, scope: !50, file: !3, line: 55, type: !58)
!65 = !DILocation(line: 55, column: 7, scope: !50)
!66 = !DILocation(line: 60, column: 5, scope: !50)
!67 = !DILocalVariable(name: ".omp.iv", scope: !50, type: !24, flags: DIFlagArtificial)
!68 = !DILocalVariable(name: ".omp.lb", scope: !50, type: !24, flags: DIFlagArtificial)
!69 = !DILocation(line: 60, column: 10, scope: !50)
!70 = !DILocalVariable(name: ".omp.ub", scope: !50, type: !24, flags: DIFlagArtificial)
!71 = !DILocalVariable(name: ".omp.stride", scope: !50, type: !24, flags: DIFlagArtificial)
!72 = !DILocalVariable(name: ".omp.is_last", scope: !50, type: !24, flags: DIFlagArtificial)
!73 = !DILocalVariable(name: "sum", scope: !50, type: !37, flags: DIFlagArtificial)
!74 = !DILocation(line: 59, column: 38, scope: !50)
!75 = !DILocalVariable(name: "j", scope: !50, type: !24, flags: DIFlagArtificial)
!76 = !DILocation(line: 60, column: 24, scope: !50)
!77 = !DILocation(line: 62, column: 16, scope: !78)
!78 = distinct !DILexicalBlock(scope: !50, file: !3, line: 61, column: 5)
!79 = !DILocation(line: 62, column: 14, scope: !78)
!80 = !DILocation(line: 62, column: 19, scope: !78)
!81 = !DILocation(line: 62, column: 24, scope: !78)
!82 = !DILocation(line: 62, column: 22, scope: !78)
!83 = !DILocation(line: 62, column: 21, scope: !78)
!84 = !DILocation(line: 62, column: 11, scope: !78)
!85 = !DILocation(line: 63, column: 5, scope: !78)
!86 = !DILocation(line: 59, column: 1, scope: !50)
!87 = distinct !{!87, !86, !88}
!88 = !DILocation(line: 59, column: 42, scope: !50)
!89 = !DILocation(line: 59, column: 36, scope: !50)
!90 = !DILocation(line: 63, column: 5, scope: !50)
!91 = distinct !DISubprogram(linkageName: ".omp.reduction.reduction_func", scope: !3, file: !3, line: 59, type: !92, scopeLine: 59, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!92 = !DISubroutineType(types: !4)
!93 = !DILocalVariable(arg: 1, scope: !91, type: !94, flags: DIFlagArtificial)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!95 = !DILocation(line: 0, scope: !91)
!96 = !DILocalVariable(arg: 2, scope: !91, type: !94, flags: DIFlagArtificial)
!97 = !DILocation(line: 59, column: 42, scope: !91)
!98 = !DILocation(line: 59, column: 38, scope: !91)
!99 = !DILocation(line: 59, column: 36, scope: !91)
!100 = distinct !DISubprogram(name: ".omp_outlined.", scope: !3, file: !3, line: 60, type: !51, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!101 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !100, type: !53, flags: DIFlagArtificial)
!102 = !DILocation(line: 0, scope: !100)
!103 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !100, type: !53, flags: DIFlagArtificial)
!104 = !DILocalVariable(name: "sum", arg: 3, scope: !100, type: !57, flags: DIFlagArtificial)
!105 = !DILocalVariable(name: "i", arg: 4, scope: !100, type: !58, flags: DIFlagArtificial)
!106 = !DILocation(line: 60, column: 5, scope: !100)
!107 = !{!108}
!108 = !{i64 2, i64 -1, i64 -1, i1 true}
!109 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 68, type: !110, scopeLine: 69, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!110 = !DISubroutineType(types: !111)
!111 = !{!24}
!112 = !DILocation(line: 70, column: 3, scope: !109)
!113 = !DILocation(line: 71, column: 3, scope: !109)
