; ModuleID = 'DRB065-pireduction-orig-no.c'
source_filename = "DRB065-pireduction-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [42 x i8] c";DRB065-pireduction-orig-no.c;main;61;1;;\00", align 1
@2 = private unnamed_addr constant [43 x i8] c";DRB065-pireduction-orig-no.c;main;61;52;;\00", align 1
@.gomp_critical_user_.reduction.var = common global [8 x i32] zeroinitializer
@3 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"PI=%f\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
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
  store i32 %argc, i32* %argc.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %argc.addr, metadata !16, metadata !DIExpression()), !dbg !17
  store i8** %argv, i8*** %argv.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %argv.addr, metadata !18, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.declare(metadata double* %pi, metadata !20, metadata !DIExpression()), !dbg !21
  store double 0.000000e+00, double* %pi, align 8, !dbg !21
  call void @llvm.dbg.declare(metadata i64* %i, metadata !22, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata double* %x, metadata !25, metadata !DIExpression()), !dbg !26
  call void @llvm.dbg.declare(metadata double* %interval_width, metadata !27, metadata !DIExpression()), !dbg !28
  store double 5.000000e-10, double* %interval_width, align 8, !dbg !29
  %2 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !30
  store i8* getelementptr inbounds ([42 x i8], [42 x i8]* @1, i32 0, i32 0), i8** %2, align 8, !dbg !30
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 2, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, double*, double*)* @.omp_outlined. to void (i32*, i32*, ...)*), double* %interval_width, double* %pi), !dbg !30
  %3 = load double, double* %pi, align 8, !dbg !31
  %mul = fmul double %3, 4.000000e+00, !dbg !32
  %4 = load double, double* %interval_width, align 8, !dbg !33
  %mul1 = fmul double %mul, %4, !dbg !34
  store double %mul1, double* %pi, align 8, !dbg !35
  %5 = load double, double* %pi, align 8, !dbg !36
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), double %5), !dbg !37
  ret i32 0, !dbg !38
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., double* dereferenceable(8) %interval_width, double* dereferenceable(8) %pi) #2 !dbg !39 {
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
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !47, metadata !DIExpression()), !dbg !48
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !49, metadata !DIExpression()), !dbg !48
  store double* %interval_width, double** %interval_width.addr, align 8
  call void @llvm.dbg.declare(metadata double** %interval_width.addr, metadata !50, metadata !DIExpression()), !dbg !51
  store double* %pi, double** %pi.addr, align 8
  call void @llvm.dbg.declare(metadata double** %pi.addr, metadata !52, metadata !DIExpression()), !dbg !53
  %2 = load double*, double** %interval_width.addr, align 8, !dbg !54
  %3 = load double*, double** %pi.addr, align 8, !dbg !54
  call void @llvm.dbg.declare(metadata i64* %.omp.iv, metadata !55, metadata !DIExpression()), !dbg !48
  call void @llvm.dbg.declare(metadata i64* %.omp.lb, metadata !56, metadata !DIExpression()), !dbg !48
  store i64 0, i64* %.omp.lb, align 8, !dbg !57
  call void @llvm.dbg.declare(metadata i64* %.omp.ub, metadata !58, metadata !DIExpression()), !dbg !48
  store i64 1999999999, i64* %.omp.ub, align 8, !dbg !57
  call void @llvm.dbg.declare(metadata i64* %.omp.stride, metadata !59, metadata !DIExpression()), !dbg !48
  store i64 1, i64* %.omp.stride, align 8, !dbg !57
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !60, metadata !DIExpression()), !dbg !48
  store i32 0, i32* %.omp.is_last, align 4, !dbg !57
  call void @llvm.dbg.declare(metadata double* %x, metadata !61, metadata !DIExpression()), !dbg !48
  call void @llvm.dbg.declare(metadata double* %pi1, metadata !62, metadata !DIExpression()), !dbg !48
  store double 0.000000e+00, double* %pi1, align 8, !dbg !63
  call void @llvm.dbg.declare(metadata i64* %i, metadata !64, metadata !DIExpression()), !dbg !48
  %4 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !54
  store i8* getelementptr inbounds ([42 x i8], [42 x i8]* @1, i32 0, i32 0), i8** %4, align 8, !dbg !54
  %5 = load i32*, i32** %.global_tid..addr, align 8, !dbg !54
  %6 = load i32, i32* %5, align 4, !dbg !54
  call void @__kmpc_for_static_init_8(%struct.ident_t* %.kmpc_loc.addr, i32 %6, i32 34, i32* %.omp.is_last, i64* %.omp.lb, i64* %.omp.ub, i64* %.omp.stride, i64 1, i64 1), !dbg !54
  %7 = load i64, i64* %.omp.ub, align 8, !dbg !57
  %cmp = icmp sgt i64 %7, 1999999999, !dbg !57
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !57

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !57

cond.false:                                       ; preds = %entry
  %8 = load i64, i64* %.omp.ub, align 8, !dbg !57
  br label %cond.end, !dbg !57

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 1999999999, %cond.true ], [ %8, %cond.false ], !dbg !57
  store i64 %cond, i64* %.omp.ub, align 8, !dbg !57
  %9 = load i64, i64* %.omp.lb, align 8, !dbg !57
  store i64 %9, i64* %.omp.iv, align 8, !dbg !57
  br label %omp.inner.for.cond, !dbg !54

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %10 = load i64, i64* %.omp.iv, align 8, !dbg !57
  %11 = load i64, i64* %.omp.ub, align 8, !dbg !57
  %cmp2 = icmp sle i64 %10, %11, !dbg !54
  br i1 %cmp2, label %omp.inner.for.body, label %omp.inner.for.end, !dbg !54

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %12 = load i64, i64* %.omp.iv, align 8, !dbg !57
  %mul = mul nsw i64 %12, 1, !dbg !65
  %add = add nsw i64 0, %mul, !dbg !65
  store i64 %add, i64* %i, align 8, !dbg !65
  %13 = load i64, i64* %i, align 8, !dbg !66
  %conv = sitofp i64 %13 to double, !dbg !66
  %add3 = fadd double %conv, 5.000000e-01, !dbg !68
  %14 = load double, double* %2, align 8, !dbg !69
  %mul4 = fmul double %add3, %14, !dbg !70
  store double %mul4, double* %x, align 8, !dbg !71
  %15 = load double, double* %x, align 8, !dbg !72
  %16 = load double, double* %x, align 8, !dbg !73
  %mul5 = fmul double %15, %16, !dbg !74
  %add6 = fadd double %mul5, 1.000000e+00, !dbg !75
  %div = fdiv double 1.000000e+00, %add6, !dbg !76
  %17 = load double, double* %pi1, align 8, !dbg !77
  %add7 = fadd double %17, %div, !dbg !77
  store double %add7, double* %pi1, align 8, !dbg !77
  br label %omp.body.continue, !dbg !78

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !79

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %18 = load i64, i64* %.omp.iv, align 8, !dbg !57
  %add8 = add nsw i64 %18, 1, !dbg !54
  store i64 %add8, i64* %.omp.iv, align 8, !dbg !54
  br label %omp.inner.for.cond, !dbg !79, !llvm.loop !80

omp.inner.for.end:                                ; preds = %omp.inner.for.cond
  br label %omp.loop.exit, !dbg !79

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %19 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !79
  store i8* getelementptr inbounds ([43 x i8], [43 x i8]* @2, i32 0, i32 0), i8** %19, align 8, !dbg !79
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %6), !dbg !79
  %20 = getelementptr inbounds [1 x i8*], [1 x i8*]* %.omp.reduction.red_list, i64 0, i64 0, !dbg !79
  %21 = bitcast double* %pi1 to i8*, !dbg !79
  store i8* %21, i8** %20, align 8, !dbg !79
  %22 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !79
  store i8* getelementptr inbounds ([43 x i8], [43 x i8]* @2, i32 0, i32 0), i8** %22, align 8, !dbg !79
  %23 = bitcast [1 x i8*]* %.omp.reduction.red_list to i8*, !dbg !79
  %24 = call i32 @__kmpc_reduce_nowait(%struct.ident_t* %.kmpc_loc.addr, i32 %6, i32 1, i64 8, i8* %23, void (i8*, i8*)* @.omp.reduction.reduction_func, [8 x i32]* @.gomp_critical_user_.reduction.var), !dbg !79
  switch i32 %24, label %.omp.reduction.default [
    i32 1, label %.omp.reduction.case1
    i32 2, label %.omp.reduction.case2
  ], !dbg !79

.omp.reduction.case1:                             ; preds = %omp.loop.exit
  %25 = load double, double* %3, align 8, !dbg !63
  %26 = load double, double* %pi1, align 8, !dbg !63
  %add9 = fadd double %25, %26, !dbg !82
  store double %add9, double* %3, align 8, !dbg !82
  call void @__kmpc_end_reduce_nowait(%struct.ident_t* %.kmpc_loc.addr, i32 %6, [8 x i32]* @.gomp_critical_user_.reduction.var), !dbg !79
  br label %.omp.reduction.default, !dbg !79

.omp.reduction.case2:                             ; preds = %omp.loop.exit
  %27 = load double, double* %pi1, align 8, !dbg !63
  %28 = bitcast double* %3 to i64*, !dbg !79
  %atomic-load = load atomic i64, i64* %28 monotonic, align 8, !dbg !79
  br label %atomic_cont, !dbg !79

atomic_cont:                                      ; preds = %atomic_cont, %.omp.reduction.case2
  %29 = phi i64 [ %atomic-load, %.omp.reduction.case2 ], [ %37, %atomic_cont ], !dbg !79
  %30 = bitcast double* %atomic-temp to i64*, !dbg !79
  %31 = bitcast i64 %29 to double, !dbg !79
  store double %31, double* %tmp10, align 8, !dbg !79
  %32 = load double, double* %tmp10, align 8, !dbg !63
  %33 = load double, double* %pi1, align 8, !dbg !63
  %add11 = fadd double %32, %33, !dbg !82
  store double %add11, double* %atomic-temp, align 8, !dbg !79
  %34 = load i64, i64* %30, align 8, !dbg !79
  %35 = bitcast double* %3 to i64*, !dbg !79
  %36 = cmpxchg i64* %35, i64 %29, i64 %34 monotonic monotonic, !dbg !79
  %37 = extractvalue { i64, i1 } %36, 0, !dbg !79
  %38 = extractvalue { i64, i1 } %36, 1, !dbg !79
  br i1 %38, label %atomic_exit, label %atomic_cont, !dbg !79

atomic_exit:                                      ; preds = %atomic_cont
  br label %.omp.reduction.default, !dbg !79

.omp.reduction.default:                           ; preds = %atomic_exit, %.omp.reduction.case1, %omp.loop.exit
  ret void, !dbg !83
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local void @__kmpc_for_static_init_8(%struct.ident_t*, i32, i32, i32*, i64*, i64*, i64*, i64, i64)

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: noinline norecurse nounwind uwtable
define internal void @.omp.reduction.reduction_func(i8* %0, i8* %1) #4 !dbg !84 {
entry:
  %.addr = alloca i8*, align 8
  %.addr1 = alloca i8*, align 8
  store i8* %0, i8** %.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %.addr, metadata !86, metadata !DIExpression()), !dbg !88
  store i8* %1, i8** %.addr1, align 8
  call void @llvm.dbg.declare(metadata i8** %.addr1, metadata !89, metadata !DIExpression()), !dbg !88
  %2 = load i8*, i8** %.addr, align 8, !dbg !90
  %3 = bitcast i8* %2 to [1 x i8*]*, !dbg !90
  %4 = load i8*, i8** %.addr1, align 8, !dbg !90
  %5 = bitcast i8* %4 to [1 x i8*]*, !dbg !90
  %6 = getelementptr inbounds [1 x i8*], [1 x i8*]* %5, i64 0, i64 0, !dbg !90
  %7 = load i8*, i8** %6, align 8, !dbg !90
  %8 = bitcast i8* %7 to double*, !dbg !90
  %9 = getelementptr inbounds [1 x i8*], [1 x i8*]* %3, i64 0, i64 0, !dbg !90
  %10 = load i8*, i8** %9, align 8, !dbg !90
  %11 = bitcast i8* %10 to double*, !dbg !90
  %12 = load double, double* %11, align 8, !dbg !91
  %13 = load double, double* %8, align 8, !dbg !91
  %add = fadd double %12, %13, !dbg !92
  store double %add, double* %11, align 8, !dbg !92
  ret void, !dbg !91
}

declare dso_local i32 @__kmpc_reduce_nowait(%struct.ident_t*, i32, i32, i64, i8*, void (i8*, i8*)*, [8 x i32]*)

declare dso_local void @__kmpc_end_reduce_nowait(%struct.ident_t*, i32, [8 x i32]*)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., double* dereferenceable(8) %interval_width, double* dereferenceable(8) %pi) #2 !dbg !93 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %interval_width.addr = alloca double*, align 8
  %pi.addr = alloca double*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !94, metadata !DIExpression()), !dbg !95
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !96, metadata !DIExpression()), !dbg !95
  store double* %interval_width, double** %interval_width.addr, align 8
  call void @llvm.dbg.declare(metadata double** %interval_width.addr, metadata !97, metadata !DIExpression()), !dbg !95
  store double* %pi, double** %pi.addr, align 8
  call void @llvm.dbg.declare(metadata double** %pi.addr, metadata !98, metadata !DIExpression()), !dbg !95
  %0 = load double*, double** %interval_width.addr, align 8, !dbg !99
  %1 = load double*, double** %pi.addr, align 8, !dbg !99
  %2 = load i32*, i32** %.global_tid..addr, align 8, !dbg !99
  %3 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !99
  %4 = load double*, double** %interval_width.addr, align 8, !dbg !99
  %5 = load double*, double** %pi.addr, align 8, !dbg !99
  call void @.omp_outlined._debug__(i32* %2, i32* %3, double* %4, double* %5) #6, !dbg !99
  ret void, !dbg !99
}

declare !callback !100 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

declare dso_local i32 @printf(i8*, ...) #5

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noinline norecurse nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { noinline norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.1 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "DRB065-pireduction-orig-no.c", directory: "/home/yanze/code/OpenRace/tests/data/integration/dataracebench")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!5 = !{i32 7, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 10.0.1 "}
!9 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 54, type: !10, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!10 = !DISubroutineType(types: !11)
!11 = !{!12, !12, !13}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!16 = !DILocalVariable(name: "argc", arg: 1, scope: !9, file: !1, line: 54, type: !12)
!17 = !DILocation(line: 54, column: 14, scope: !9)
!18 = !DILocalVariable(name: "argv", arg: 2, scope: !9, file: !1, line: 54, type: !13)
!19 = !DILocation(line: 54, column: 27, scope: !9)
!20 = !DILocalVariable(name: "pi", scope: !9, file: !1, line: 56, type: !4)
!21 = !DILocation(line: 56, column: 10, scope: !9)
!22 = !DILocalVariable(name: "i", scope: !9, file: !1, line: 57, type: !23)
!23 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!24 = !DILocation(line: 57, column: 12, scope: !9)
!25 = !DILocalVariable(name: "x", scope: !9, file: !1, line: 58, type: !4)
!26 = !DILocation(line: 58, column: 10, scope: !9)
!27 = !DILocalVariable(name: "interval_width", scope: !9, file: !1, line: 58, type: !4)
!28 = !DILocation(line: 58, column: 13, scope: !9)
!29 = !DILocation(line: 59, column: 18, scope: !9)
!30 = !DILocation(line: 61, column: 1, scope: !9)
!31 = !DILocation(line: 67, column: 8, scope: !9)
!32 = !DILocation(line: 67, column: 11, scope: !9)
!33 = !DILocation(line: 67, column: 19, scope: !9)
!34 = !DILocation(line: 67, column: 17, scope: !9)
!35 = !DILocation(line: 67, column: 6, scope: !9)
!36 = !DILocation(line: 68, column: 22, scope: !9)
!37 = !DILocation(line: 68, column: 3, scope: !9)
!38 = !DILocation(line: 69, column: 3, scope: !9)
!39 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 62, type: !40, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!40 = !DISubroutineType(types: !41)
!41 = !{null, !42, !42, !46, !46}
!42 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!43 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !44)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!46 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !4, size: 64)
!47 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !39, type: !42, flags: DIFlagArtificial)
!48 = !DILocation(line: 0, scope: !39)
!49 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !39, type: !42, flags: DIFlagArtificial)
!50 = !DILocalVariable(name: "interval_width", arg: 3, scope: !39, file: !1, line: 58, type: !46)
!51 = !DILocation(line: 58, column: 13, scope: !39)
!52 = !DILocalVariable(name: "pi", arg: 4, scope: !39, file: !1, line: 56, type: !46)
!53 = !DILocation(line: 56, column: 10, scope: !39)
!54 = !DILocation(line: 62, column: 3, scope: !39)
!55 = !DILocalVariable(name: ".omp.iv", scope: !39, type: !23, flags: DIFlagArtificial)
!56 = !DILocalVariable(name: ".omp.lb", scope: !39, type: !23, flags: DIFlagArtificial)
!57 = !DILocation(line: 62, column: 8, scope: !39)
!58 = !DILocalVariable(name: ".omp.ub", scope: !39, type: !23, flags: DIFlagArtificial)
!59 = !DILocalVariable(name: ".omp.stride", scope: !39, type: !23, flags: DIFlagArtificial)
!60 = !DILocalVariable(name: ".omp.is_last", scope: !39, type: !12, flags: DIFlagArtificial)
!61 = !DILocalVariable(name: "x", scope: !39, type: !4, flags: DIFlagArtificial)
!62 = !DILocalVariable(name: "pi", scope: !39, type: !4, flags: DIFlagArtificial)
!63 = !DILocation(line: 61, column: 38, scope: !39)
!64 = !DILocalVariable(name: "i", scope: !39, type: !23, flags: DIFlagArtificial)
!65 = !DILocation(line: 62, column: 30, scope: !39)
!66 = !DILocation(line: 63, column: 10, scope: !67)
!67 = distinct !DILexicalBlock(scope: !39, file: !1, line: 62, column: 35)
!68 = !DILocation(line: 63, column: 11, scope: !67)
!69 = !DILocation(line: 63, column: 20, scope: !67)
!70 = !DILocation(line: 63, column: 18, scope: !67)
!71 = !DILocation(line: 63, column: 7, scope: !67)
!72 = !DILocation(line: 64, column: 18, scope: !67)
!73 = !DILocation(line: 64, column: 20, scope: !67)
!74 = !DILocation(line: 64, column: 19, scope: !67)
!75 = !DILocation(line: 64, column: 22, scope: !67)
!76 = !DILocation(line: 64, column: 15, scope: !67)
!77 = !DILocation(line: 64, column: 8, scope: !67)
!78 = !DILocation(line: 65, column: 3, scope: !67)
!79 = !DILocation(line: 61, column: 1, scope: !39)
!80 = distinct !{!80, !79, !81}
!81 = !DILocation(line: 61, column: 52, scope: !39)
!82 = !DILocation(line: 61, column: 36, scope: !39)
!83 = !DILocation(line: 65, column: 3, scope: !39)
!84 = distinct !DISubprogram(linkageName: ".omp.reduction.reduction_func", scope: !1, file: !1, line: 61, type: !85, scopeLine: 61, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!85 = !DISubroutineType(types: !2)
!86 = !DILocalVariable(arg: 1, scope: !84, type: !87, flags: DIFlagArtificial)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!88 = !DILocation(line: 0, scope: !84)
!89 = !DILocalVariable(arg: 2, scope: !84, type: !87, flags: DIFlagArtificial)
!90 = !DILocation(line: 61, column: 52, scope: !84)
!91 = !DILocation(line: 61, column: 38, scope: !84)
!92 = !DILocation(line: 61, column: 36, scope: !84)
!93 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 62, type: !40, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!94 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !93, type: !42, flags: DIFlagArtificial)
!95 = !DILocation(line: 0, scope: !93)
!96 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !93, type: !42, flags: DIFlagArtificial)
!97 = !DILocalVariable(name: "interval_width", arg: 3, scope: !93, type: !46, flags: DIFlagArtificial)
!98 = !DILocalVariable(name: "pi", arg: 4, scope: !93, type: !46, flags: DIFlagArtificial)
!99 = !DILocation(line: 62, column: 3, scope: !93)
!100 = !{!101}
!101 = !{i64 2, i64 -1, i64 -1, i1 true}
