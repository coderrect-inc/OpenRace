; ModuleID = 'integration/dataracebench/DRB067-restrictpointer1-orig-no.c'
source_filename = "integration/dataracebench/DRB067-restrictpointer1-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [72 x i8] c";integration/dataracebench/DRB067-restrictpointer1-orig-no.c;foo;61;1;;\00", align 1
@2 = private unnamed_addr constant [73 x i8] c";integration/dataracebench/DRB067-restrictpointer1-orig-no.c;foo;61;59;;\00", align 1
@3 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8

; Function Attrs: nounwind uwtable
define dso_local void @foo(double* noalias %newSxx, double* noalias %newSyy, i32 %length) #0 !dbg !13 {
entry:
  %newSxx.addr = alloca double*, align 8
  %newSyy.addr = alloca double*, align 8
  %length.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %length.casted = alloca i64, align 8
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store double* %newSxx, double** %newSxx.addr, align 8, !tbaa !26
  call void @llvm.dbg.declare(metadata double** %newSxx.addr, metadata !22, metadata !DIExpression()), !dbg !30
  store double* %newSyy, double** %newSyy.addr, align 8, !tbaa !26
  call void @llvm.dbg.declare(metadata double** %newSyy.addr, metadata !23, metadata !DIExpression()), !dbg !31
  store i32 %length, i32* %length.addr, align 4, !tbaa !32
  call void @llvm.dbg.declare(metadata i32* %length.addr, metadata !24, metadata !DIExpression()), !dbg !34
  %2 = bitcast i32* %i to i8*, !dbg !35
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #5, !dbg !35
  call void @llvm.dbg.declare(metadata i32* %i, metadata !25, metadata !DIExpression()), !dbg !36
  %3 = load i32, i32* %length.addr, align 4, !dbg !37, !tbaa !32
  %conv = bitcast i64* %length.casted to i32*, !dbg !37
  store i32 %3, i32* %conv, align 4, !dbg !37, !tbaa !32
  %4 = load i64, i64* %length.casted, align 8, !dbg !37, !tbaa !38
  %5 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !37
  store i8* getelementptr inbounds ([72 x i8], [72 x i8]* @1, i32 0, i32 0), i8** %5, align 8, !dbg !37, !tbaa !40
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i64, double**, double**)* @.omp_outlined. to void (i32*, i32*, ...)*), i64 %4, double** %newSxx.addr, double** %newSyy.addr), !dbg !37
  %6 = bitcast i32* %i to i8*, !dbg !42
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %6) #5, !dbg !42
  ret void, !dbg !42
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32 %length, double** dereferenceable(8) %newSxx, double** dereferenceable(8) %newSyy) #3 !dbg !43 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %length.addr = alloca i32, align 4
  %newSxx.addr = alloca double**, align 8
  %newSyy.addr = alloca double**, align 8
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
  %i5 = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !26
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !52, metadata !DIExpression()), !dbg !64
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !26
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !53, metadata !DIExpression()), !dbg !64
  store i32 %length, i32* %length.addr, align 4, !tbaa !32
  call void @llvm.dbg.declare(metadata i32* %length.addr, metadata !54, metadata !DIExpression()), !dbg !65
  store double** %newSxx, double*** %newSxx.addr, align 8, !tbaa !26
  call void @llvm.dbg.declare(metadata double*** %newSxx.addr, metadata !55, metadata !DIExpression()), !dbg !66
  store double** %newSyy, double*** %newSyy.addr, align 8, !tbaa !26
  call void @llvm.dbg.declare(metadata double*** %newSyy.addr, metadata !56, metadata !DIExpression()), !dbg !67
  %2 = load double**, double*** %newSxx.addr, align 8, !dbg !68, !tbaa !26
  %3 = load double**, double*** %newSyy.addr, align 8, !dbg !68, !tbaa !26
  %4 = bitcast i32* %.omp.iv to i8*, !dbg !68
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #5, !dbg !68
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !57, metadata !DIExpression()), !dbg !64
  %5 = bitcast i32* %.capture_expr. to i8*, !dbg !68
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #5, !dbg !68
  call void @llvm.dbg.declare(metadata i32* %.capture_expr., metadata !58, metadata !DIExpression()), !dbg !64
  %6 = load i32, i32* %length.addr, align 4, !dbg !69, !tbaa !32
  %sub = sub nsw i32 %6, 1, !dbg !70
  store i32 %sub, i32* %.capture_expr., align 4, !dbg !69, !tbaa !32
  %7 = bitcast i32* %.capture_expr.1 to i8*, !dbg !68
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #5, !dbg !68
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.1, metadata !58, metadata !DIExpression()), !dbg !64
  %8 = load i32, i32* %.capture_expr., align 4, !dbg !70, !tbaa !32
  %sub2 = sub nsw i32 %8, 0, !dbg !68
  %add = add nsw i32 %sub2, 1, !dbg !68
  %div = sdiv i32 %add, 1, !dbg !68
  %sub3 = sub nsw i32 %div, 1, !dbg !68
  store i32 %sub3, i32* %.capture_expr.1, align 4, !dbg !68, !tbaa !32
  %9 = bitcast i32* %i to i8*, !dbg !68
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #5, !dbg !68
  call void @llvm.dbg.declare(metadata i32* %i, metadata !59, metadata !DIExpression()), !dbg !64
  store i32 0, i32* %i, align 4, !dbg !71, !tbaa !32
  %10 = bitcast i32* %i to i8*, !dbg !68
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %10) #5, !dbg !68
  %11 = load i32, i32* %.capture_expr., align 4, !dbg !70, !tbaa !32
  %cmp = icmp sle i32 0, %11, !dbg !68
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end, !dbg !68

omp.precond.then:                                 ; preds = %entry
  %12 = bitcast i32* %.omp.lb to i8*, !dbg !68
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #5, !dbg !68
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !60, metadata !DIExpression()), !dbg !64
  store i32 0, i32* %.omp.lb, align 4, !dbg !72, !tbaa !32
  %13 = bitcast i32* %.omp.ub to i8*, !dbg !68
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %13) #5, !dbg !68
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !61, metadata !DIExpression()), !dbg !64
  %14 = load i32, i32* %.capture_expr.1, align 4, !dbg !68, !tbaa !32
  store i32 %14, i32* %.omp.ub, align 4, !dbg !72, !tbaa !32
  %15 = bitcast i32* %.omp.stride to i8*, !dbg !68
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %15) #5, !dbg !68
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !62, metadata !DIExpression()), !dbg !64
  store i32 1, i32* %.omp.stride, align 4, !dbg !72, !tbaa !32
  %16 = bitcast i32* %.omp.is_last to i8*, !dbg !68
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %16) #5, !dbg !68
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !63, metadata !DIExpression()), !dbg !64
  store i32 0, i32* %.omp.is_last, align 4, !dbg !72, !tbaa !32
  %17 = bitcast i32* %i4 to i8*, !dbg !68
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %17) #5, !dbg !68
  call void @llvm.dbg.declare(metadata i32* %i4, metadata !59, metadata !DIExpression()), !dbg !64
  %18 = bitcast i32* %i5 to i8*, !dbg !68
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %18) #5, !dbg !68
  call void @llvm.dbg.declare(metadata i32* %i5, metadata !59, metadata !DIExpression()), !dbg !64
  %19 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !68
  store i8* getelementptr inbounds ([72 x i8], [72 x i8]* @1, i32 0, i32 0), i8** %19, align 8, !dbg !68, !tbaa !40
  %20 = load i32*, i32** %.global_tid..addr, align 8, !dbg !68
  %21 = load i32, i32* %20, align 4, !dbg !68, !tbaa !32
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %21, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !68
  %22 = load i32, i32* %.omp.ub, align 4, !dbg !72, !tbaa !32
  %23 = load i32, i32* %.capture_expr.1, align 4, !dbg !68, !tbaa !32
  %cmp6 = icmp sgt i32 %22, %23, !dbg !72
  br i1 %cmp6, label %cond.true, label %cond.false, !dbg !72

cond.true:                                        ; preds = %omp.precond.then
  %24 = load i32, i32* %.capture_expr.1, align 4, !dbg !68, !tbaa !32
  br label %cond.end, !dbg !72

cond.false:                                       ; preds = %omp.precond.then
  %25 = load i32, i32* %.omp.ub, align 4, !dbg !72, !tbaa !32
  br label %cond.end, !dbg !72

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %24, %cond.true ], [ %25, %cond.false ], !dbg !72
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !72, !tbaa !32
  %26 = load i32, i32* %.omp.lb, align 4, !dbg !72, !tbaa !32
  store i32 %26, i32* %.omp.iv, align 4, !dbg !72, !tbaa !32
  br label %omp.inner.for.cond, !dbg !68

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %27 = load i32, i32* %.omp.iv, align 4, !dbg !72, !tbaa !32
  %28 = load i32, i32* %.omp.ub, align 4, !dbg !72, !tbaa !32
  %cmp7 = icmp sle i32 %27, %28, !dbg !68
  br i1 %cmp7, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !68

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !68

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %29 = load i32, i32* %.omp.iv, align 4, !dbg !72, !tbaa !32
  %mul = mul nsw i32 %29, 1, !dbg !71
  %add8 = add nsw i32 0, %mul, !dbg !71
  store i32 %add8, i32* %i4, align 4, !dbg !71, !tbaa !32
  %30 = load double*, double** %2, align 8, !dbg !73, !tbaa !26
  %31 = load i32, i32* %i4, align 4, !dbg !75, !tbaa !32
  %idxprom = sext i32 %31 to i64, !dbg !73
  %arrayidx = getelementptr inbounds double, double* %30, i64 %idxprom, !dbg !73
  store double 0.000000e+00, double* %arrayidx, align 8, !dbg !76, !tbaa !77
  %32 = load double*, double** %3, align 8, !dbg !79, !tbaa !26
  %33 = load i32, i32* %i4, align 4, !dbg !80, !tbaa !32
  %idxprom9 = sext i32 %33 to i64, !dbg !79
  %arrayidx10 = getelementptr inbounds double, double* %32, i64 %idxprom9, !dbg !79
  store double 0.000000e+00, double* %arrayidx10, align 8, !dbg !81, !tbaa !77
  br label %omp.body.continue, !dbg !82

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !83

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %34 = load i32, i32* %.omp.iv, align 4, !dbg !72, !tbaa !32
  %add11 = add nsw i32 %34, 1, !dbg !68
  store i32 %add11, i32* %.omp.iv, align 4, !dbg !68, !tbaa !32
  br label %omp.inner.for.cond, !dbg !83, !llvm.loop !84

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !83

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %35 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !83
  store i8* getelementptr inbounds ([73 x i8], [73 x i8]* @2, i32 0, i32 0), i8** %35, align 8, !dbg !83, !tbaa !40
  %36 = load i32*, i32** %.global_tid..addr, align 8, !dbg !83
  %37 = load i32, i32* %36, align 4, !dbg !83, !tbaa !32
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %37), !dbg !83
  %38 = bitcast i32* %i5 to i8*, !dbg !83
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %38) #5, !dbg !83
  %39 = bitcast i32* %i4 to i8*, !dbg !83
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %39) #5, !dbg !83
  %40 = bitcast i32* %.omp.is_last to i8*, !dbg !83
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %40) #5, !dbg !83
  %41 = bitcast i32* %.omp.stride to i8*, !dbg !83
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %41) #5, !dbg !83
  %42 = bitcast i32* %.omp.ub to i8*, !dbg !83
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %42) #5, !dbg !83
  %43 = bitcast i32* %.omp.lb to i8*, !dbg !83
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %43) #5, !dbg !83
  br label %omp.precond.end, !dbg !83

omp.precond.end:                                  ; preds = %omp.loop.exit, %entry
  %44 = bitcast i32* %.capture_expr.1 to i8*, !dbg !83
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %44) #5, !dbg !83
  %45 = bitcast i32* %.capture_expr. to i8*, !dbg !83
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %45) #5, !dbg !83
  %46 = bitcast i32* %.omp.iv to i8*, !dbg !83
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %46) #5, !dbg !83
  ret void, !dbg !86
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i64 %length, double** dereferenceable(8) %newSxx, double** dereferenceable(8) %newSyy) #3 !dbg !87 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %length.addr = alloca i64, align 8
  %newSxx.addr = alloca double**, align 8
  %newSyy.addr = alloca double**, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !26
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !92, metadata !DIExpression()), !dbg !97
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !26
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !93, metadata !DIExpression()), !dbg !97
  store i64 %length, i64* %length.addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata i64* %length.addr, metadata !94, metadata !DIExpression()), !dbg !97
  store double** %newSxx, double*** %newSxx.addr, align 8, !tbaa !26
  call void @llvm.dbg.declare(metadata double*** %newSxx.addr, metadata !95, metadata !DIExpression()), !dbg !97
  store double** %newSyy, double*** %newSyy.addr, align 8, !tbaa !26
  call void @llvm.dbg.declare(metadata double*** %newSyy.addr, metadata !96, metadata !DIExpression()), !dbg !97
  %conv = bitcast i64* %length.addr to i32*, !dbg !98
  %0 = load double**, double*** %newSxx.addr, align 8, !dbg !98, !tbaa !26
  %1 = load double**, double*** %newSyy.addr, align 8, !dbg !98, !tbaa !26
  %2 = load i32*, i32** %.global_tid..addr, align 8, !dbg !98, !tbaa !26
  %3 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !98, !tbaa !26
  %4 = load i32, i32* %conv, align 8, !dbg !98, !tbaa !32
  %5 = load double**, double*** %newSxx.addr, align 8, !dbg !98, !tbaa !26
  %6 = load double**, double*** %newSyy.addr, align 8, !dbg !98, !tbaa !26
  call void @.omp_outlined._debug__(i32* %2, i32* %3, i32 %4, double** %5, double** %6) #5, !dbg !98
  ret void, !dbg !98
}

declare !callback !99 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

; Function Attrs: nounwind uwtable
define dso_local i32 @main() #0 !dbg !101 {
entry:
  %retval = alloca i32, align 4
  %length = alloca i32, align 4
  %newSxx = alloca double*, align 8
  %newSyy = alloca double*, align 8
  store i32 0, i32* %retval, align 4
  %0 = bitcast i32* %length to i8*, !dbg !108
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #5, !dbg !108
  call void @llvm.dbg.declare(metadata i32* %length, metadata !105, metadata !DIExpression()), !dbg !109
  store i32 1000, i32* %length, align 4, !dbg !109, !tbaa !32
  %1 = bitcast double** %newSxx to i8*, !dbg !110
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #5, !dbg !110
  call void @llvm.dbg.declare(metadata double** %newSxx, metadata !106, metadata !DIExpression()), !dbg !111
  %2 = load i32, i32* %length, align 4, !dbg !112, !tbaa !32
  %conv = sext i32 %2 to i64, !dbg !112
  %mul = mul i64 %conv, 8, !dbg !113
  %call = call noalias i8* @malloc(i64 %mul) #5, !dbg !114
  %3 = bitcast i8* %call to double*, !dbg !114
  store double* %3, double** %newSxx, align 8, !dbg !111, !tbaa !26
  %4 = bitcast double** %newSyy to i8*, !dbg !115
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %4) #5, !dbg !115
  call void @llvm.dbg.declare(metadata double** %newSyy, metadata !107, metadata !DIExpression()), !dbg !116
  %5 = load i32, i32* %length, align 4, !dbg !117, !tbaa !32
  %conv1 = sext i32 %5 to i64, !dbg !117
  %mul2 = mul i64 %conv1, 8, !dbg !118
  %call3 = call noalias i8* @malloc(i64 %mul2) #5, !dbg !119
  %6 = bitcast i8* %call3 to double*, !dbg !119
  store double* %6, double** %newSyy, align 8, !dbg !116, !tbaa !26
  %7 = load double*, double** %newSxx, align 8, !dbg !120, !tbaa !26
  %8 = load double*, double** %newSyy, align 8, !dbg !121, !tbaa !26
  %9 = load i32, i32* %length, align 4, !dbg !122, !tbaa !32
  call void @foo(double* %7, double* %8, i32 %9), !dbg !123
  %10 = load double*, double** %newSxx, align 8, !dbg !124, !tbaa !26
  %11 = bitcast double* %10 to i8*, !dbg !124
  call void @free(i8* %11) #5, !dbg !125
  %12 = load double*, double** %newSyy, align 8, !dbg !126, !tbaa !26
  %13 = bitcast double* %12 to i8*, !dbg !126
  call void @free(i8* %13) #5, !dbg !127
  %14 = bitcast double** %newSyy to i8*, !dbg !128
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %14) #5, !dbg !128
  %15 = bitcast double** %newSxx to i8*, !dbg !128
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %15) #5, !dbg !128
  %16 = bitcast i32* %length to i8*, !dbg !128
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %16) #5, !dbg !128
  ret i32 0, !dbg !129
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #4

; Function Attrs: nounwind
declare !dbg !4 dso_local void @free(i8*) #4

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!9, !10, !11}
!llvm.ident = !{!12}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "integration/dataracebench/DRB067-restrictpointer1-orig-no.c", directory: "/home/brad/Code/OpenRace/tests/data")
!2 = !{}
!3 = !{!4}
!4 = !DISubprogram(name: "free", scope: !5, file: !5, line: 565, type: !6, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!5 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!6 = !DISubroutineType(types: !7)
!7 = !{null, !8}
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!9 = !{i32 7, !"Dwarf Version", i32 4}
!10 = !{i32 2, !"Debug Info Version", i32 3}
!11 = !{i32 1, !"wchar_size", i32 4}
!12 = !{!"clang version 10.0.1 "}
!13 = distinct !DISubprogram(name: "foo", scope: !1, file: !1, line: 57, type: !14, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !21)
!14 = !DISubroutineType(types: !15)
!15 = !{null, !16, !16, !20}
!16 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !17)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "real8", file: !1, line: 55, baseType: !19)
!19 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!20 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!21 = !{!22, !23, !24, !25}
!22 = !DILocalVariable(name: "newSxx", arg: 1, scope: !13, file: !1, line: 57, type: !16)
!23 = !DILocalVariable(name: "newSyy", arg: 2, scope: !13, file: !1, line: 57, type: !16)
!24 = !DILocalVariable(name: "length", arg: 3, scope: !13, file: !1, line: 57, type: !20)
!25 = !DILocalVariable(name: "i", scope: !13, file: !1, line: 59, type: !20)
!26 = !{!27, !27, i64 0}
!27 = !{!"any pointer", !28, i64 0}
!28 = !{!"omnipotent char", !29, i64 0}
!29 = !{!"Simple C/C++ TBAA"}
!30 = !DILocation(line: 57, column: 27, scope: !13)
!31 = !DILocation(line: 57, column: 52, scope: !13)
!32 = !{!33, !33, i64 0}
!33 = !{!"int", !28, i64 0}
!34 = !DILocation(line: 57, column: 64, scope: !13)
!35 = !DILocation(line: 59, column: 3, scope: !13)
!36 = !DILocation(line: 59, column: 7, scope: !13)
!37 = !DILocation(line: 61, column: 1, scope: !13)
!38 = !{!39, !39, i64 0}
!39 = !{!"long", !28, i64 0}
!40 = !{!41, !27, i64 16}
!41 = !{!"ident_t", !33, i64 0, !33, i64 4, !33, i64 8, !33, i64 12, !27, i64 16}
!42 = !DILocation(line: 66, column: 1, scope: !13)
!43 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 62, type: !44, scopeLine: 62, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !51)
!44 = !DISubroutineType(types: !45)
!45 = !{null, !46, !46, !20, !50, !50}
!46 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !47)
!47 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !48)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!50 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !17, size: 64)
!51 = !{!52, !53, !54, !55, !56, !57, !58, !58, !59, !60, !61, !62, !63, !59, !59}
!52 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !43, type: !46, flags: DIFlagArtificial)
!53 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !43, type: !46, flags: DIFlagArtificial)
!54 = !DILocalVariable(name: "length", arg: 3, scope: !43, file: !1, line: 57, type: !20)
!55 = !DILocalVariable(name: "newSxx", arg: 4, scope: !43, file: !1, line: 57, type: !50)
!56 = !DILocalVariable(name: "newSyy", arg: 5, scope: !43, file: !1, line: 57, type: !50)
!57 = !DILocalVariable(name: ".omp.iv", scope: !43, type: !20, flags: DIFlagArtificial)
!58 = !DILocalVariable(name: ".capture_expr.", scope: !43, type: !20, flags: DIFlagArtificial)
!59 = !DILocalVariable(name: "i", scope: !43, type: !20, flags: DIFlagArtificial)
!60 = !DILocalVariable(name: ".omp.lb", scope: !43, type: !20, flags: DIFlagArtificial)
!61 = !DILocalVariable(name: ".omp.ub", scope: !43, type: !20, flags: DIFlagArtificial)
!62 = !DILocalVariable(name: ".omp.stride", scope: !43, type: !20, flags: DIFlagArtificial)
!63 = !DILocalVariable(name: ".omp.is_last", scope: !43, type: !20, flags: DIFlagArtificial)
!64 = !DILocation(line: 0, scope: !43)
!65 = !DILocation(line: 57, column: 64, scope: !43)
!66 = !DILocation(line: 57, column: 27, scope: !43)
!67 = !DILocation(line: 57, column: 52, scope: !43)
!68 = !DILocation(line: 62, column: 3, scope: !43)
!69 = !DILocation(line: 62, column: 20, scope: !43)
!70 = !DILocation(line: 62, column: 27, scope: !43)
!71 = !DILocation(line: 62, column: 32, scope: !43)
!72 = !DILocation(line: 62, column: 8, scope: !43)
!73 = !DILocation(line: 63, column: 5, scope: !74)
!74 = distinct !DILexicalBlock(scope: !43, file: !1, line: 62, column: 40)
!75 = !DILocation(line: 63, column: 12, scope: !74)
!76 = !DILocation(line: 63, column: 15, scope: !74)
!77 = !{!78, !78, i64 0}
!78 = !{!"double", !28, i64 0}
!79 = !DILocation(line: 64, column: 5, scope: !74)
!80 = !DILocation(line: 64, column: 12, scope: !74)
!81 = !DILocation(line: 64, column: 15, scope: !74)
!82 = !DILocation(line: 65, column: 3, scope: !74)
!83 = !DILocation(line: 61, column: 1, scope: !43)
!84 = distinct !{!84, !83, !85}
!85 = !DILocation(line: 61, column: 59, scope: !43)
!86 = !DILocation(line: 65, column: 3, scope: !43)
!87 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 62, type: !88, scopeLine: 62, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !91)
!88 = !DISubroutineType(types: !89)
!89 = !{null, !46, !46, !90, !50, !50}
!90 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!91 = !{!92, !93, !94, !95, !96}
!92 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !87, type: !46, flags: DIFlagArtificial)
!93 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !87, type: !46, flags: DIFlagArtificial)
!94 = !DILocalVariable(name: "length", arg: 3, scope: !87, type: !90, flags: DIFlagArtificial)
!95 = !DILocalVariable(name: "newSxx", arg: 4, scope: !87, type: !50, flags: DIFlagArtificial)
!96 = !DILocalVariable(name: "newSyy", arg: 5, scope: !87, type: !50, flags: DIFlagArtificial)
!97 = !DILocation(line: 0, scope: !87)
!98 = !DILocation(line: 62, column: 3, scope: !87)
!99 = !{!100}
!100 = !{i64 2, i64 -1, i64 -1, i1 true}
!101 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 68, type: !102, scopeLine: 69, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !104)
!102 = !DISubroutineType(types: !103)
!103 = !{!20}
!104 = !{!105, !106, !107}
!105 = !DILocalVariable(name: "length", scope: !101, file: !1, line: 70, type: !20)
!106 = !DILocalVariable(name: "newSxx", scope: !101, file: !1, line: 71, type: !17)
!107 = !DILocalVariable(name: "newSyy", scope: !101, file: !1, line: 72, type: !17)
!108 = !DILocation(line: 70, column: 3, scope: !101)
!109 = !DILocation(line: 70, column: 7, scope: !101)
!110 = !DILocation(line: 71, column: 3, scope: !101)
!111 = !DILocation(line: 71, column: 10, scope: !101)
!112 = !DILocation(line: 71, column: 27, scope: !101)
!113 = !DILocation(line: 71, column: 33, scope: !101)
!114 = !DILocation(line: 71, column: 19, scope: !101)
!115 = !DILocation(line: 72, column: 3, scope: !101)
!116 = !DILocation(line: 72, column: 10, scope: !101)
!117 = !DILocation(line: 72, column: 27, scope: !101)
!118 = !DILocation(line: 72, column: 33, scope: !101)
!119 = !DILocation(line: 72, column: 19, scope: !101)
!120 = !DILocation(line: 74, column: 7, scope: !101)
!121 = !DILocation(line: 74, column: 15, scope: !101)
!122 = !DILocation(line: 74, column: 23, scope: !101)
!123 = !DILocation(line: 74, column: 3, scope: !101)
!124 = !DILocation(line: 76, column: 9, scope: !101)
!125 = !DILocation(line: 76, column: 3, scope: !101)
!126 = !DILocation(line: 77, column: 9, scope: !101)
!127 = !DILocation(line: 77, column: 3, scope: !101)
!128 = !DILocation(line: 79, column: 1, scope: !101)
!129 = !DILocation(line: 78, column: 3, scope: !101)
