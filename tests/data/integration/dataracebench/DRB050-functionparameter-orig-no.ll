; ModuleID = 'integration/dataracebench/DRB050-functionparameter-orig-no.c'
source_filename = "integration/dataracebench/DRB050-functionparameter-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [74 x i8] c";integration/dataracebench/DRB050-functionparameter-orig-no.c;foo1;53;1;;\00", align 1
@2 = private unnamed_addr constant [75 x i8] c";integration/dataracebench/DRB050-functionparameter-orig-no.c;foo1;53;25;;\00", align 1
@3 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@o1 = common dso_local global [100 x double] zeroinitializer, align 16, !dbg !0
@c = common dso_local global [100 x double] zeroinitializer, align 16, !dbg !6

; Function Attrs: nounwind uwtable
define dso_local void @foo1(double* %o1, double* %c, i32 %len) #0 !dbg !16 {
entry:
  %o1.addr = alloca double*, align 8
  %c.addr = alloca double*, align 8
  %len.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store double* %o1, double** %o1.addr, align 8, !tbaa !26
  call void @llvm.dbg.declare(metadata double** %o1.addr, metadata !22, metadata !DIExpression()), !dbg !30
  store double* %c, double** %c.addr, align 8, !tbaa !26
  call void @llvm.dbg.declare(metadata double** %c.addr, metadata !23, metadata !DIExpression()), !dbg !31
  store i32 %len, i32* %len.addr, align 4, !tbaa !32
  call void @llvm.dbg.declare(metadata i32* %len.addr, metadata !24, metadata !DIExpression()), !dbg !34
  %2 = bitcast i32* %i to i8*, !dbg !35
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #4, !dbg !35
  call void @llvm.dbg.declare(metadata i32* %i, metadata !25, metadata !DIExpression()), !dbg !36
  %3 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !37
  store i8* getelementptr inbounds ([74 x i8], [74 x i8]* @1, i32 0, i32 0), i8** %3, align 8, !dbg !37, !tbaa !38
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, double**, double**)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %len.addr, double** %c.addr, double** %o1.addr), !dbg !37
  %4 = bitcast i32* %i to i8*, !dbg !40
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %4) #4, !dbg !40
  ret void, !dbg !40
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %len, double** dereferenceable(8) %c, double** dereferenceable(8) %o1) #3 !dbg !41 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %c.addr = alloca double**, align 8
  %o1.addr = alloca double**, align 8
  %.omp.iv = alloca i32, align 4
  %tmp = alloca i32, align 4
  %.capture_expr. = alloca i32, align 4
  %.capture_expr.1 = alloca i32, align 4
  %i = alloca i32, align 4
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %i4 = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %volnew_o8 = alloca double, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !26
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !51, metadata !DIExpression()), !dbg !65
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !26
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !52, metadata !DIExpression()), !dbg !65
  store i32* %len, i32** %len.addr, align 8, !tbaa !26
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !53, metadata !DIExpression()), !dbg !66
  store double** %c, double*** %c.addr, align 8, !tbaa !26
  call void @llvm.dbg.declare(metadata double*** %c.addr, metadata !54, metadata !DIExpression()), !dbg !67
  store double** %o1, double*** %o1.addr, align 8, !tbaa !26
  call void @llvm.dbg.declare(metadata double*** %o1.addr, metadata !55, metadata !DIExpression()), !dbg !68
  %2 = load i32*, i32** %len.addr, align 8, !dbg !69, !tbaa !26
  %3 = load double**, double*** %c.addr, align 8, !dbg !69, !tbaa !26
  %4 = load double**, double*** %o1.addr, align 8, !dbg !69, !tbaa !26
  %5 = bitcast i32* %.omp.iv to i8*, !dbg !69
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #4, !dbg !69
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !56, metadata !DIExpression()), !dbg !65
  %6 = bitcast i32* %.capture_expr. to i8*, !dbg !69
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #4, !dbg !69
  call void @llvm.dbg.declare(metadata i32* %.capture_expr., metadata !57, metadata !DIExpression()), !dbg !65
  %7 = load i32, i32* %2, align 4, !dbg !70, !tbaa !32
  store i32 %7, i32* %.capture_expr., align 4, !dbg !70, !tbaa !32
  %8 = bitcast i32* %.capture_expr.1 to i8*, !dbg !69
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #4, !dbg !69
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.1, metadata !57, metadata !DIExpression()), !dbg !65
  %9 = load i32, i32* %.capture_expr., align 4, !dbg !70, !tbaa !32
  %sub = sub nsw i32 %9, 0, !dbg !69
  %sub2 = sub nsw i32 %sub, 1, !dbg !69
  %add = add nsw i32 %sub2, 1, !dbg !69
  %div = sdiv i32 %add, 1, !dbg !69
  %sub3 = sub nsw i32 %div, 1, !dbg !69
  store i32 %sub3, i32* %.capture_expr.1, align 4, !dbg !69, !tbaa !32
  %10 = bitcast i32* %i to i8*, !dbg !69
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #4, !dbg !69
  call void @llvm.dbg.declare(metadata i32* %i, metadata !58, metadata !DIExpression()), !dbg !65
  store i32 0, i32* %i, align 4, !dbg !71, !tbaa !32
  %11 = bitcast i32* %i to i8*, !dbg !69
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %11) #4, !dbg !69
  %12 = load i32, i32* %.capture_expr., align 4, !dbg !70, !tbaa !32
  %cmp = icmp slt i32 0, %12, !dbg !69
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end, !dbg !69

omp.precond.then:                                 ; preds = %entry
  %13 = bitcast i32* %.omp.lb to i8*, !dbg !69
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %13) #4, !dbg !69
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !59, metadata !DIExpression()), !dbg !65
  store i32 0, i32* %.omp.lb, align 4, !dbg !72, !tbaa !32
  %14 = bitcast i32* %.omp.ub to i8*, !dbg !69
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %14) #4, !dbg !69
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !60, metadata !DIExpression()), !dbg !65
  %15 = load i32, i32* %.capture_expr.1, align 4, !dbg !69, !tbaa !32
  store i32 %15, i32* %.omp.ub, align 4, !dbg !72, !tbaa !32
  %16 = bitcast i32* %.omp.stride to i8*, !dbg !69
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %16) #4, !dbg !69
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !61, metadata !DIExpression()), !dbg !65
  store i32 1, i32* %.omp.stride, align 4, !dbg !72, !tbaa !32
  %17 = bitcast i32* %.omp.is_last to i8*, !dbg !69
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %17) #4, !dbg !69
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !62, metadata !DIExpression()), !dbg !65
  store i32 0, i32* %.omp.is_last, align 4, !dbg !72, !tbaa !32
  %18 = bitcast i32* %i4 to i8*, !dbg !69
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %18) #4, !dbg !69
  call void @llvm.dbg.declare(metadata i32* %i4, metadata !58, metadata !DIExpression()), !dbg !65
  %19 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !69
  store i8* getelementptr inbounds ([74 x i8], [74 x i8]* @1, i32 0, i32 0), i8** %19, align 8, !dbg !69, !tbaa !38
  %20 = load i32*, i32** %.global_tid..addr, align 8, !dbg !69
  %21 = load i32, i32* %20, align 4, !dbg !69, !tbaa !32
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %21, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !69
  %22 = load i32, i32* %.omp.ub, align 4, !dbg !72, !tbaa !32
  %23 = load i32, i32* %.capture_expr.1, align 4, !dbg !69, !tbaa !32
  %cmp5 = icmp sgt i32 %22, %23, !dbg !72
  br i1 %cmp5, label %cond.true, label %cond.false, !dbg !72

cond.true:                                        ; preds = %omp.precond.then
  %24 = load i32, i32* %.capture_expr.1, align 4, !dbg !69, !tbaa !32
  br label %cond.end, !dbg !72

cond.false:                                       ; preds = %omp.precond.then
  %25 = load i32, i32* %.omp.ub, align 4, !dbg !72, !tbaa !32
  br label %cond.end, !dbg !72

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %24, %cond.true ], [ %25, %cond.false ], !dbg !72
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !72, !tbaa !32
  %26 = load i32, i32* %.omp.lb, align 4, !dbg !72, !tbaa !32
  store i32 %26, i32* %.omp.iv, align 4, !dbg !72, !tbaa !32
  br label %omp.inner.for.cond, !dbg !69

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %27 = load i32, i32* %.omp.iv, align 4, !dbg !72, !tbaa !32
  %28 = load i32, i32* %.omp.ub, align 4, !dbg !72, !tbaa !32
  %cmp6 = icmp sle i32 %27, %28, !dbg !69
  br i1 %cmp6, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !69

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !69

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %29 = load i32, i32* %.omp.iv, align 4, !dbg !72, !tbaa !32
  %mul = mul nsw i32 %29, 1, !dbg !71
  %add7 = add nsw i32 0, %mul, !dbg !71
  store i32 %add7, i32* %i4, align 4, !dbg !71, !tbaa !32
  %30 = bitcast double* %volnew_o8 to i8*, !dbg !73
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %30) #4, !dbg !73
  call void @llvm.dbg.declare(metadata double* %volnew_o8, metadata !63, metadata !DIExpression()), !dbg !74
  %31 = load double*, double** %3, align 8, !dbg !75, !tbaa !26
  %32 = load i32, i32* %i4, align 4, !dbg !76, !tbaa !32
  %idxprom = sext i32 %32 to i64, !dbg !75
  %arrayidx = getelementptr inbounds double, double* %31, i64 %idxprom, !dbg !75
  %33 = load double, double* %arrayidx, align 8, !dbg !75, !tbaa !77
  %mul8 = fmul double 5.000000e-01, %33, !dbg !79
  store double %mul8, double* %volnew_o8, align 8, !dbg !74, !tbaa !77
  %34 = load double, double* %volnew_o8, align 8, !dbg !80, !tbaa !77
  %35 = load double*, double** %4, align 8, !dbg !81, !tbaa !26
  %36 = load i32, i32* %i4, align 4, !dbg !82, !tbaa !32
  %idxprom9 = sext i32 %36 to i64, !dbg !81
  %arrayidx10 = getelementptr inbounds double, double* %35, i64 %idxprom9, !dbg !81
  store double %34, double* %arrayidx10, align 8, !dbg !83, !tbaa !77
  %37 = bitcast double* %volnew_o8 to i8*, !dbg !84
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %37) #4, !dbg !84
  br label %omp.body.continue, !dbg !85

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !86

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %38 = load i32, i32* %.omp.iv, align 4, !dbg !72, !tbaa !32
  %add11 = add nsw i32 %38, 1, !dbg !69
  store i32 %add11, i32* %.omp.iv, align 4, !dbg !69, !tbaa !32
  br label %omp.inner.for.cond, !dbg !86, !llvm.loop !87

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !86

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %39 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !86
  store i8* getelementptr inbounds ([75 x i8], [75 x i8]* @2, i32 0, i32 0), i8** %39, align 8, !dbg !86, !tbaa !38
  %40 = load i32*, i32** %.global_tid..addr, align 8, !dbg !86
  %41 = load i32, i32* %40, align 4, !dbg !86, !tbaa !32
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %41), !dbg !86
  %42 = bitcast i32* %i4 to i8*, !dbg !86
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %42) #4, !dbg !86
  %43 = bitcast i32* %.omp.is_last to i8*, !dbg !86
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %43) #4, !dbg !86
  %44 = bitcast i32* %.omp.stride to i8*, !dbg !86
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %44) #4, !dbg !86
  %45 = bitcast i32* %.omp.ub to i8*, !dbg !86
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %45) #4, !dbg !86
  %46 = bitcast i32* %.omp.lb to i8*, !dbg !86
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %46) #4, !dbg !86
  br label %omp.precond.end, !dbg !86

omp.precond.end:                                  ; preds = %omp.loop.exit, %entry
  %47 = bitcast i32* %.capture_expr.1 to i8*, !dbg !86
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %47) #4, !dbg !86
  %48 = bitcast i32* %.capture_expr. to i8*, !dbg !86
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %48) #4, !dbg !86
  %49 = bitcast i32* %.omp.iv to i8*, !dbg !86
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %49) #4, !dbg !86
  ret void, !dbg !84
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %len, double** dereferenceable(8) %c, double** dereferenceable(8) %o1) #3 !dbg !89 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %c.addr = alloca double**, align 8
  %o1.addr = alloca double**, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !26
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !91, metadata !DIExpression()), !dbg !96
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !26
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !92, metadata !DIExpression()), !dbg !96
  store i32* %len, i32** %len.addr, align 8, !tbaa !26
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !93, metadata !DIExpression()), !dbg !96
  store double** %c, double*** %c.addr, align 8, !tbaa !26
  call void @llvm.dbg.declare(metadata double*** %c.addr, metadata !94, metadata !DIExpression()), !dbg !96
  store double** %o1, double*** %o1.addr, align 8, !tbaa !26
  call void @llvm.dbg.declare(metadata double*** %o1.addr, metadata !95, metadata !DIExpression()), !dbg !96
  %0 = load i32*, i32** %len.addr, align 8, !dbg !97, !tbaa !26
  %1 = load double**, double*** %c.addr, align 8, !dbg !97, !tbaa !26
  %2 = load double**, double*** %o1.addr, align 8, !dbg !97, !tbaa !26
  %3 = load i32*, i32** %.global_tid..addr, align 8, !dbg !97, !tbaa !26
  %4 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !97, !tbaa !26
  %5 = load i32*, i32** %len.addr, align 8, !dbg !97, !tbaa !26
  %6 = load double**, double*** %c.addr, align 8, !dbg !97, !tbaa !26
  %7 = load double**, double*** %o1.addr, align 8, !dbg !97, !tbaa !26
  call void @.omp_outlined._debug__(i32* %3, i32* %4, i32* %5, double** %6, double** %7) #4, !dbg !97
  ret void, !dbg !97
}

declare !callback !98 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

; Function Attrs: nounwind uwtable
define dso_local i32 @main() #0 !dbg !100 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @foo1(double* getelementptr inbounds ([100 x double], [100 x double]* @o1, i64 0, i64 0), double* getelementptr inbounds ([100 x double], [100 x double]* @c, i64 0, i64 0), i32 100), !dbg !103
  ret i32 0, !dbg !104
}

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!12, !13, !14}
!llvm.ident = !{!15}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "o1", scope: !2, file: !3, line: 60, type: !8, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "integration/dataracebench/DRB050-functionparameter-orig-no.c", directory: "/home/brad/Code/OpenRace/tests/data")
!4 = !{}
!5 = !{!0, !6}
!6 = !DIGlobalVariableExpression(var: !7, expr: !DIExpression())
!7 = distinct !DIGlobalVariable(name: "c", scope: !2, file: !3, line: 61, type: !8, isLocal: false, isDefinition: true)
!8 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 6400, elements: !10)
!9 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!10 = !{!11}
!11 = !DISubrange(count: 100)
!12 = !{i32 7, !"Dwarf Version", i32 4}
!13 = !{i32 2, !"Debug Info Version", i32 3}
!14 = !{i32 1, !"wchar_size", i32 4}
!15 = !{!"clang version 10.0.1 "}
!16 = distinct !DISubprogram(name: "foo1", scope: !3, file: !3, line: 50, type: !17, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !21)
!17 = !DISubroutineType(types: !18)
!18 = !{null, !19, !19, !20}
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!20 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!21 = !{!22, !23, !24, !25}
!22 = !DILocalVariable(name: "o1", arg: 1, scope: !16, file: !3, line: 50, type: !19)
!23 = !DILocalVariable(name: "c", arg: 2, scope: !16, file: !3, line: 50, type: !19)
!24 = !DILocalVariable(name: "len", arg: 3, scope: !16, file: !3, line: 50, type: !20)
!25 = !DILocalVariable(name: "i", scope: !16, file: !3, line: 52, type: !20)
!26 = !{!27, !27, i64 0}
!27 = !{!"any pointer", !28, i64 0}
!28 = !{!"omnipotent char", !29, i64 0}
!29 = !{!"Simple C/C++ TBAA"}
!30 = !DILocation(line: 50, column: 18, scope: !16)
!31 = !DILocation(line: 50, column: 31, scope: !16)
!32 = !{!33, !33, i64 0}
!33 = !{!"int", !28, i64 0}
!34 = !DILocation(line: 50, column: 40, scope: !16)
!35 = !DILocation(line: 52, column: 3, scope: !16)
!36 = !DILocation(line: 52, column: 7, scope: !16)
!37 = !DILocation(line: 53, column: 1, scope: !16)
!38 = !{!39, !27, i64 16}
!39 = !{!"ident_t", !33, i64 0, !33, i64 4, !33, i64 8, !33, i64 12, !27, i64 16}
!40 = !DILocation(line: 58, column: 1, scope: !16)
!41 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !3, file: !3, line: 54, type: !42, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !50)
!42 = !DISubroutineType(types: !43)
!43 = !{null, !44, !44, !48, !49, !49}
!44 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!45 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !46)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!48 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !20, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !19, size: 64)
!50 = !{!51, !52, !53, !54, !55, !56, !57, !57, !58, !59, !60, !61, !62, !58, !63}
!51 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !41, type: !44, flags: DIFlagArtificial)
!52 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !41, type: !44, flags: DIFlagArtificial)
!53 = !DILocalVariable(name: "len", arg: 3, scope: !41, file: !3, line: 50, type: !48)
!54 = !DILocalVariable(name: "c", arg: 4, scope: !41, file: !3, line: 50, type: !49)
!55 = !DILocalVariable(name: "o1", arg: 5, scope: !41, file: !3, line: 50, type: !49)
!56 = !DILocalVariable(name: ".omp.iv", scope: !41, type: !20, flags: DIFlagArtificial)
!57 = !DILocalVariable(name: ".capture_expr.", scope: !41, type: !20, flags: DIFlagArtificial)
!58 = !DILocalVariable(name: "i", scope: !41, type: !20, flags: DIFlagArtificial)
!59 = !DILocalVariable(name: ".omp.lb", scope: !41, type: !20, flags: DIFlagArtificial)
!60 = !DILocalVariable(name: ".omp.ub", scope: !41, type: !20, flags: DIFlagArtificial)
!61 = !DILocalVariable(name: ".omp.stride", scope: !41, type: !20, flags: DIFlagArtificial)
!62 = !DILocalVariable(name: ".omp.is_last", scope: !41, type: !20, flags: DIFlagArtificial)
!63 = !DILocalVariable(name: "volnew_o8", scope: !64, file: !3, line: 55, type: !9)
!64 = distinct !DILexicalBlock(scope: !41, file: !3, line: 54, column: 29)
!65 = !DILocation(line: 0, scope: !41)
!66 = !DILocation(line: 50, column: 40, scope: !41)
!67 = !DILocation(line: 50, column: 31, scope: !41)
!68 = !DILocation(line: 50, column: 18, scope: !41)
!69 = !DILocation(line: 54, column: 3, scope: !41)
!70 = !DILocation(line: 54, column: 19, scope: !41)
!71 = !DILocation(line: 54, column: 24, scope: !41)
!72 = !DILocation(line: 54, column: 8, scope: !41)
!73 = !DILocation(line: 55, column: 5, scope: !64)
!74 = !DILocation(line: 55, column: 12, scope: !64)
!75 = !DILocation(line: 55, column: 30, scope: !64)
!76 = !DILocation(line: 55, column: 32, scope: !64)
!77 = !{!78, !78, i64 0}
!78 = !{!"double", !28, i64 0}
!79 = !DILocation(line: 55, column: 28, scope: !64)
!80 = !DILocation(line: 56, column: 13, scope: !64)
!81 = !DILocation(line: 56, column: 5, scope: !64)
!82 = !DILocation(line: 56, column: 8, scope: !64)
!83 = !DILocation(line: 56, column: 11, scope: !64)
!84 = !DILocation(line: 57, column: 3, scope: !41)
!85 = !DILocation(line: 57, column: 3, scope: !64)
!86 = !DILocation(line: 53, column: 1, scope: !41)
!87 = distinct !{!87, !86, !88}
!88 = !DILocation(line: 53, column: 25, scope: !41)
!89 = distinct !DISubprogram(name: ".omp_outlined.", scope: !3, file: !3, line: 54, type: !42, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !90)
!90 = !{!91, !92, !93, !94, !95}
!91 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !89, type: !44, flags: DIFlagArtificial)
!92 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !89, type: !44, flags: DIFlagArtificial)
!93 = !DILocalVariable(name: "len", arg: 3, scope: !89, type: !48, flags: DIFlagArtificial)
!94 = !DILocalVariable(name: "c", arg: 4, scope: !89, type: !49, flags: DIFlagArtificial)
!95 = !DILocalVariable(name: "o1", arg: 5, scope: !89, type: !49, flags: DIFlagArtificial)
!96 = !DILocation(line: 0, scope: !89)
!97 = !DILocation(line: 54, column: 3, scope: !89)
!98 = !{!99}
!99 = !{i64 2, i64 -1, i64 -1, i1 true}
!100 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 62, type: !101, scopeLine: 63, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4)
!101 = !DISubroutineType(types: !102)
!102 = !{!20}
!103 = !DILocation(line: 64, column: 3, scope: !100)
!104 = !DILocation(line: 65, column: 3, scope: !100)
