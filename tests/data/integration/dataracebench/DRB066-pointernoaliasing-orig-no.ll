; ModuleID = 'integration/dataracebench/DRB066-pointernoaliasing-orig-no.c'
source_filename = "integration/dataracebench/DRB066-pointernoaliasing-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [75 x i8] c";integration/dataracebench/DRB066-pointernoaliasing-orig-no.c;setup;56;1;;\00", align 1
@2 = private unnamed_addr constant [76 x i8] c";integration/dataracebench/DRB066-pointernoaliasing-orig-no.c;setup;56;42;;\00", align 1
@3 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8

; Function Attrs: nounwind uwtable
define dso_local void @setup(i32 %N) #0 !dbg !15 {
entry:
  %N.addr = alloca i32, align 4
  %m_pdv_sum = alloca double*, align 8
  %m_nvol = alloca double*, align 8
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32 %N, i32* %N.addr, align 4, !tbaa !23
  call void @llvm.dbg.declare(metadata i32* %N.addr, metadata !20, metadata !DIExpression()), !dbg !27
  %2 = bitcast double** %m_pdv_sum to i8*, !dbg !28
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %2) #5, !dbg !28
  call void @llvm.dbg.declare(metadata double** %m_pdv_sum, metadata !21, metadata !DIExpression()), !dbg !29
  %3 = load i32, i32* %N.addr, align 4, !dbg !30, !tbaa !23
  %conv = sext i32 %3 to i64, !dbg !30
  %mul = mul i64 8, %conv, !dbg !31
  %call = call noalias i8* @malloc(i64 %mul) #5, !dbg !32
  %4 = bitcast i8* %call to double*, !dbg !33
  store double* %4, double** %m_pdv_sum, align 8, !dbg !29, !tbaa !34
  %5 = bitcast double** %m_nvol to i8*, !dbg !36
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %5) #5, !dbg !36
  call void @llvm.dbg.declare(metadata double** %m_nvol, metadata !22, metadata !DIExpression()), !dbg !37
  %6 = load i32, i32* %N.addr, align 4, !dbg !38, !tbaa !23
  %conv1 = sext i32 %6 to i64, !dbg !38
  %mul2 = mul i64 8, %conv1, !dbg !39
  %call3 = call noalias i8* @malloc(i64 %mul2) #5, !dbg !40
  %7 = bitcast i8* %call3 to double*, !dbg !41
  store double* %7, double** %m_nvol, align 8, !dbg !37, !tbaa !34
  %8 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !42
  store i8* getelementptr inbounds ([75 x i8], [75 x i8]* @1, i32 0, i32 0), i8** %8, align 8, !dbg !42, !tbaa !43
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, double**, double**)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %N.addr, double** %m_pdv_sum, double** %m_nvol), !dbg !42
  %9 = load double*, double** %m_pdv_sum, align 8, !dbg !45, !tbaa !34
  %10 = bitcast double* %9 to i8*, !dbg !45
  call void @free(i8* %10) #5, !dbg !46
  %11 = load double*, double** %m_nvol, align 8, !dbg !47, !tbaa !34
  %12 = bitcast double* %11 to i8*, !dbg !47
  call void @free(i8* %12) #5, !dbg !48
  %13 = bitcast double** %m_nvol to i8*, !dbg !49
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %13) #5, !dbg !49
  %14 = bitcast double** %m_pdv_sum to i8*, !dbg !49
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %14) #5, !dbg !49
  ret void, !dbg !49
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #3

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %N, double** dereferenceable(8) %m_pdv_sum, double** dereferenceable(8) %m_nvol) #4 !dbg !50 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %N.addr = alloca i32*, align 8
  %m_pdv_sum.addr = alloca double**, align 8
  %m_nvol.addr = alloca double**, align 8
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
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !34
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !60, metadata !DIExpression()), !dbg !72
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !34
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !61, metadata !DIExpression()), !dbg !72
  store i32* %N, i32** %N.addr, align 8, !tbaa !34
  call void @llvm.dbg.declare(metadata i32** %N.addr, metadata !62, metadata !DIExpression()), !dbg !73
  store double** %m_pdv_sum, double*** %m_pdv_sum.addr, align 8, !tbaa !34
  call void @llvm.dbg.declare(metadata double*** %m_pdv_sum.addr, metadata !63, metadata !DIExpression()), !dbg !74
  store double** %m_nvol, double*** %m_nvol.addr, align 8, !tbaa !34
  call void @llvm.dbg.declare(metadata double*** %m_nvol.addr, metadata !64, metadata !DIExpression()), !dbg !75
  %2 = load i32*, i32** %N.addr, align 8, !dbg !76, !tbaa !34
  %3 = load double**, double*** %m_pdv_sum.addr, align 8, !dbg !76, !tbaa !34
  %4 = load double**, double*** %m_nvol.addr, align 8, !dbg !76, !tbaa !34
  %5 = bitcast i32* %.omp.iv to i8*, !dbg !76
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #5, !dbg !76
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !65, metadata !DIExpression()), !dbg !72
  %6 = bitcast i32* %.capture_expr. to i8*, !dbg !76
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #5, !dbg !76
  call void @llvm.dbg.declare(metadata i32* %.capture_expr., metadata !66, metadata !DIExpression()), !dbg !72
  %7 = load i32, i32* %2, align 4, !dbg !77, !tbaa !23
  store i32 %7, i32* %.capture_expr., align 4, !dbg !77, !tbaa !23
  %8 = bitcast i32* %.capture_expr.1 to i8*, !dbg !76
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #5, !dbg !76
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.1, metadata !66, metadata !DIExpression()), !dbg !72
  %9 = load i32, i32* %.capture_expr., align 4, !dbg !77, !tbaa !23
  %sub = sub nsw i32 %9, 0, !dbg !76
  %sub2 = sub nsw i32 %sub, 1, !dbg !76
  %add = add nsw i32 %sub2, 1, !dbg !76
  %div = sdiv i32 %add, 1, !dbg !76
  %sub3 = sub nsw i32 %div, 1, !dbg !76
  store i32 %sub3, i32* %.capture_expr.1, align 4, !dbg !76, !tbaa !23
  %10 = bitcast i32* %i to i8*, !dbg !76
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #5, !dbg !76
  call void @llvm.dbg.declare(metadata i32* %i, metadata !67, metadata !DIExpression()), !dbg !72
  store i32 0, i32* %i, align 4, !dbg !78, !tbaa !23
  %11 = bitcast i32* %i to i8*, !dbg !76
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %11) #5, !dbg !76
  %12 = load i32, i32* %.capture_expr., align 4, !dbg !77, !tbaa !23
  %cmp = icmp slt i32 0, %12, !dbg !76
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end, !dbg !76

omp.precond.then:                                 ; preds = %entry
  %13 = bitcast i32* %.omp.lb to i8*, !dbg !76
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %13) #5, !dbg !76
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !68, metadata !DIExpression()), !dbg !72
  store i32 0, i32* %.omp.lb, align 4, !dbg !79, !tbaa !23
  %14 = bitcast i32* %.omp.ub to i8*, !dbg !76
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %14) #5, !dbg !76
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !69, metadata !DIExpression()), !dbg !72
  %15 = load i32, i32* %.capture_expr.1, align 4, !dbg !76, !tbaa !23
  store i32 %15, i32* %.omp.ub, align 4, !dbg !79, !tbaa !23
  %16 = bitcast i32* %.omp.stride to i8*, !dbg !76
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %16) #5, !dbg !76
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !70, metadata !DIExpression()), !dbg !72
  store i32 1, i32* %.omp.stride, align 4, !dbg !79, !tbaa !23
  %17 = bitcast i32* %.omp.is_last to i8*, !dbg !76
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %17) #5, !dbg !76
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !71, metadata !DIExpression()), !dbg !72
  store i32 0, i32* %.omp.is_last, align 4, !dbg !79, !tbaa !23
  %18 = bitcast i32* %i4 to i8*, !dbg !76
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %18) #5, !dbg !76
  call void @llvm.dbg.declare(metadata i32* %i4, metadata !67, metadata !DIExpression()), !dbg !72
  %19 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !76
  store i8* getelementptr inbounds ([75 x i8], [75 x i8]* @1, i32 0, i32 0), i8** %19, align 8, !dbg !76, !tbaa !43
  %20 = load i32*, i32** %.global_tid..addr, align 8, !dbg !76
  %21 = load i32, i32* %20, align 4, !dbg !76, !tbaa !23
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %21, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !76
  %22 = load i32, i32* %.omp.ub, align 4, !dbg !79, !tbaa !23
  %23 = load i32, i32* %.capture_expr.1, align 4, !dbg !76, !tbaa !23
  %cmp5 = icmp sgt i32 %22, %23, !dbg !79
  br i1 %cmp5, label %cond.true, label %cond.false, !dbg !79

cond.true:                                        ; preds = %omp.precond.then
  %24 = load i32, i32* %.capture_expr.1, align 4, !dbg !76, !tbaa !23
  br label %cond.end, !dbg !79

cond.false:                                       ; preds = %omp.precond.then
  %25 = load i32, i32* %.omp.ub, align 4, !dbg !79, !tbaa !23
  br label %cond.end, !dbg !79

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %24, %cond.true ], [ %25, %cond.false ], !dbg !79
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !79, !tbaa !23
  %26 = load i32, i32* %.omp.lb, align 4, !dbg !79, !tbaa !23
  store i32 %26, i32* %.omp.iv, align 4, !dbg !79, !tbaa !23
  br label %omp.inner.for.cond, !dbg !76

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %27 = load i32, i32* %.omp.iv, align 4, !dbg !79, !tbaa !23
  %28 = load i32, i32* %.omp.ub, align 4, !dbg !79, !tbaa !23
  %cmp6 = icmp sle i32 %27, %28, !dbg !76
  br i1 %cmp6, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !76

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !76

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %29 = load i32, i32* %.omp.iv, align 4, !dbg !79, !tbaa !23
  %mul = mul nsw i32 %29, 1, !dbg !78
  %add7 = add nsw i32 0, %mul, !dbg !78
  store i32 %add7, i32* %i4, align 4, !dbg !78, !tbaa !23
  %30 = load double*, double** %3, align 8, !dbg !80, !tbaa !34
  %31 = load i32, i32* %i4, align 4, !dbg !82, !tbaa !23
  %idxprom = sext i32 %31 to i64, !dbg !80
  %arrayidx = getelementptr inbounds double, double* %30, i64 %idxprom, !dbg !80
  store double 0.000000e+00, double* %arrayidx, align 8, !dbg !83, !tbaa !84
  %32 = load i32, i32* %i4, align 4, !dbg !86, !tbaa !23
  %conv = sitofp i32 %32 to double, !dbg !86
  %mul8 = fmul double %conv, 2.500000e+00, !dbg !87
  %33 = load double*, double** %4, align 8, !dbg !88, !tbaa !34
  %34 = load i32, i32* %i4, align 4, !dbg !89, !tbaa !23
  %idxprom9 = sext i32 %34 to i64, !dbg !88
  %arrayidx10 = getelementptr inbounds double, double* %33, i64 %idxprom9, !dbg !88
  store double %mul8, double* %arrayidx10, align 8, !dbg !90, !tbaa !84
  br label %omp.body.continue, !dbg !91

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !92

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %35 = load i32, i32* %.omp.iv, align 4, !dbg !79, !tbaa !23
  %add11 = add nsw i32 %35, 1, !dbg !76
  store i32 %add11, i32* %.omp.iv, align 4, !dbg !76, !tbaa !23
  br label %omp.inner.for.cond, !dbg !92, !llvm.loop !93

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !92

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %36 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !92
  store i8* getelementptr inbounds ([76 x i8], [76 x i8]* @2, i32 0, i32 0), i8** %36, align 8, !dbg !92, !tbaa !43
  %37 = load i32*, i32** %.global_tid..addr, align 8, !dbg !92
  %38 = load i32, i32* %37, align 4, !dbg !92, !tbaa !23
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %38), !dbg !92
  %39 = bitcast i32* %i4 to i8*, !dbg !92
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %39) #5, !dbg !92
  %40 = bitcast i32* %.omp.is_last to i8*, !dbg !92
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %40) #5, !dbg !92
  %41 = bitcast i32* %.omp.stride to i8*, !dbg !92
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %41) #5, !dbg !92
  %42 = bitcast i32* %.omp.ub to i8*, !dbg !92
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %42) #5, !dbg !92
  %43 = bitcast i32* %.omp.lb to i8*, !dbg !92
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %43) #5, !dbg !92
  br label %omp.precond.end, !dbg !92

omp.precond.end:                                  ; preds = %omp.loop.exit, %entry
  %44 = bitcast i32* %.capture_expr.1 to i8*, !dbg !92
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %44) #5, !dbg !92
  %45 = bitcast i32* %.capture_expr. to i8*, !dbg !92
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %45) #5, !dbg !92
  %46 = bitcast i32* %.omp.iv to i8*, !dbg !92
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %46) #5, !dbg !92
  ret void, !dbg !95
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %N, double** dereferenceable(8) %m_pdv_sum, double** dereferenceable(8) %m_nvol) #4 !dbg !96 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %N.addr = alloca i32*, align 8
  %m_pdv_sum.addr = alloca double**, align 8
  %m_nvol.addr = alloca double**, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !34
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !98, metadata !DIExpression()), !dbg !103
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !34
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !99, metadata !DIExpression()), !dbg !103
  store i32* %N, i32** %N.addr, align 8, !tbaa !34
  call void @llvm.dbg.declare(metadata i32** %N.addr, metadata !100, metadata !DIExpression()), !dbg !103
  store double** %m_pdv_sum, double*** %m_pdv_sum.addr, align 8, !tbaa !34
  call void @llvm.dbg.declare(metadata double*** %m_pdv_sum.addr, metadata !101, metadata !DIExpression()), !dbg !103
  store double** %m_nvol, double*** %m_nvol.addr, align 8, !tbaa !34
  call void @llvm.dbg.declare(metadata double*** %m_nvol.addr, metadata !102, metadata !DIExpression()), !dbg !103
  %0 = load i32*, i32** %N.addr, align 8, !dbg !104, !tbaa !34
  %1 = load double**, double*** %m_pdv_sum.addr, align 8, !dbg !104, !tbaa !34
  %2 = load double**, double*** %m_nvol.addr, align 8, !dbg !104, !tbaa !34
  %3 = load i32*, i32** %.global_tid..addr, align 8, !dbg !104, !tbaa !34
  %4 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !104, !tbaa !34
  %5 = load i32*, i32** %N.addr, align 8, !dbg !104, !tbaa !34
  %6 = load double**, double*** %m_pdv_sum.addr, align 8, !dbg !104, !tbaa !34
  %7 = load double**, double*** %m_nvol.addr, align 8, !dbg !104, !tbaa !34
  call void @.omp_outlined._debug__(i32* %3, i32* %4, i32* %5, double** %6, double** %7) #5, !dbg !104
  ret void, !dbg !104
}

declare !callback !105 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

; Function Attrs: nounwind
declare !dbg !6 dso_local void @free(i8*) #3

; Function Attrs: nounwind uwtable
define dso_local i32 @main() #0 !dbg !107 {
entry:
  %N = alloca i32, align 4
  %0 = bitcast i32* %N to i8*, !dbg !112
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #5, !dbg !112
  call void @llvm.dbg.declare(metadata i32* %N, metadata !111, metadata !DIExpression()), !dbg !113
  store i32 1000, i32* %N, align 4, !dbg !113, !tbaa !23
  %1 = load i32, i32* %N, align 4, !dbg !114, !tbaa !23
  call void @setup(i32 %1), !dbg !115
  %2 = bitcast i32* %N to i8*, !dbg !116
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %2) #5, !dbg !116
  ret i32 0, !dbg !116
}

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!11, !12, !13}
!llvm.ident = !{!14}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "integration/dataracebench/DRB066-pointernoaliasing-orig-no.c", directory: "/home/brad/Code/OpenRace/tests/data")
!2 = !{}
!3 = !{!4, !6}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!6 = !DISubprogram(name: "free", scope: !7, file: !7, line: 565, type: !8, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!7 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!11 = !{i32 7, !"Dwarf Version", i32 4}
!12 = !{i32 2, !"Debug Info Version", i32 3}
!13 = !{i32 1, !"wchar_size", i32 4}
!14 = !{!"clang version 10.0.1 "}
!15 = distinct !DISubprogram(name: "setup", scope: !1, file: !1, line: 51, type: !16, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !19)
!16 = !DISubroutineType(types: !17)
!17 = !{null, !18}
!18 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!19 = !{!20, !21, !22}
!20 = !DILocalVariable(name: "N", arg: 1, scope: !15, file: !1, line: 51, type: !18)
!21 = !DILocalVariable(name: "m_pdv_sum", scope: !15, file: !1, line: 53, type: !4)
!22 = !DILocalVariable(name: "m_nvol", scope: !15, file: !1, line: 54, type: !4)
!23 = !{!24, !24, i64 0}
!24 = !{!"int", !25, i64 0}
!25 = !{!"omnipotent char", !26, i64 0}
!26 = !{!"Simple C/C++ TBAA"}
!27 = !DILocation(line: 51, column: 16, scope: !15)
!28 = !DILocation(line: 53, column: 3, scope: !15)
!29 = !DILocation(line: 53, column: 12, scope: !15)
!30 = !DILocation(line: 53, column: 61, scope: !15)
!31 = !DILocation(line: 53, column: 59, scope: !15)
!32 = !DILocation(line: 53, column: 35, scope: !15)
!33 = !DILocation(line: 53, column: 24, scope: !15)
!34 = !{!35, !35, i64 0}
!35 = !{!"any pointer", !25, i64 0}
!36 = !DILocation(line: 54, column: 3, scope: !15)
!37 = !DILocation(line: 54, column: 12, scope: !15)
!38 = !DILocation(line: 54, column: 58, scope: !15)
!39 = !DILocation(line: 54, column: 56, scope: !15)
!40 = !DILocation(line: 54, column: 32, scope: !15)
!41 = !DILocation(line: 54, column: 21, scope: !15)
!42 = !DILocation(line: 56, column: 1, scope: !15)
!43 = !{!44, !35, i64 16}
!44 = !{!"ident_t", !24, i64 0, !24, i64 4, !24, i64 8, !24, i64 12, !35, i64 16}
!45 = !DILocation(line: 63, column: 8, scope: !15)
!46 = !DILocation(line: 63, column: 3, scope: !15)
!47 = !DILocation(line: 64, column: 8, scope: !15)
!48 = !DILocation(line: 64, column: 3, scope: !15)
!49 = !DILocation(line: 65, column: 1, scope: !15)
!50 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 57, type: !51, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !59)
!51 = !DISubroutineType(types: !52)
!52 = !{null, !53, !53, !57, !58, !58}
!53 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !54)
!54 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !55)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !56, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !18)
!57 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !18, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !4, size: 64)
!59 = !{!60, !61, !62, !63, !64, !65, !66, !66, !67, !68, !69, !70, !71, !67}
!60 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !50, type: !53, flags: DIFlagArtificial)
!61 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !50, type: !53, flags: DIFlagArtificial)
!62 = !DILocalVariable(name: "N", arg: 3, scope: !50, file: !1, line: 51, type: !57)
!63 = !DILocalVariable(name: "m_pdv_sum", arg: 4, scope: !50, file: !1, line: 53, type: !58)
!64 = !DILocalVariable(name: "m_nvol", arg: 5, scope: !50, file: !1, line: 54, type: !58)
!65 = !DILocalVariable(name: ".omp.iv", scope: !50, type: !18, flags: DIFlagArtificial)
!66 = !DILocalVariable(name: ".capture_expr.", scope: !50, type: !18, flags: DIFlagArtificial)
!67 = !DILocalVariable(name: "i", scope: !50, type: !18, flags: DIFlagArtificial)
!68 = !DILocalVariable(name: ".omp.lb", scope: !50, type: !18, flags: DIFlagArtificial)
!69 = !DILocalVariable(name: ".omp.ub", scope: !50, type: !18, flags: DIFlagArtificial)
!70 = !DILocalVariable(name: ".omp.stride", scope: !50, type: !18, flags: DIFlagArtificial)
!71 = !DILocalVariable(name: ".omp.is_last", scope: !50, type: !18, flags: DIFlagArtificial)
!72 = !DILocation(line: 0, scope: !50)
!73 = !DILocation(line: 51, column: 16, scope: !50)
!74 = !DILocation(line: 53, column: 12, scope: !50)
!75 = !DILocation(line: 54, column: 12, scope: !50)
!76 = !DILocation(line: 57, column: 3, scope: !50)
!77 = !DILocation(line: 57, column: 21, scope: !50)
!78 = !DILocation(line: 57, column: 24, scope: !50)
!79 = !DILocation(line: 57, column: 8, scope: !50)
!80 = !DILocation(line: 59, column: 5, scope: !81)
!81 = distinct !DILexicalBlock(scope: !50, file: !1, line: 58, column: 3)
!82 = !DILocation(line: 59, column: 16, scope: !81)
!83 = !DILocation(line: 59, column: 20, scope: !81)
!84 = !{!85, !85, i64 0}
!85 = !{!"double", !25, i64 0}
!86 = !DILocation(line: 60, column: 21, scope: !81)
!87 = !DILocation(line: 60, column: 22, scope: !81)
!88 = !DILocation(line: 60, column: 5, scope: !81)
!89 = !DILocation(line: 60, column: 13, scope: !81)
!90 = !DILocation(line: 60, column: 19, scope: !81)
!91 = !DILocation(line: 61, column: 3, scope: !81)
!92 = !DILocation(line: 56, column: 1, scope: !50)
!93 = distinct !{!93, !92, !94}
!94 = !DILocation(line: 56, column: 42, scope: !50)
!95 = !DILocation(line: 61, column: 3, scope: !50)
!96 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 57, type: !51, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !97)
!97 = !{!98, !99, !100, !101, !102}
!98 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !96, type: !53, flags: DIFlagArtificial)
!99 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !96, type: !53, flags: DIFlagArtificial)
!100 = !DILocalVariable(name: "N", arg: 3, scope: !96, type: !57, flags: DIFlagArtificial)
!101 = !DILocalVariable(name: "m_pdv_sum", arg: 4, scope: !96, type: !58, flags: DIFlagArtificial)
!102 = !DILocalVariable(name: "m_nvol", arg: 5, scope: !96, type: !58, flags: DIFlagArtificial)
!103 = !DILocation(line: 0, scope: !96)
!104 = !DILocation(line: 57, column: 3, scope: !96)
!105 = !{!106}
!106 = !{i64 2, i64 -1, i64 -1, i1 true}
!107 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 67, type: !108, scopeLine: 68, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !110)
!108 = !DISubroutineType(types: !109)
!109 = !{!18}
!110 = !{!111}
!111 = !DILocalVariable(name: "N", scope: !107, file: !1, line: 69, type: !18)
!112 = !DILocation(line: 69, column: 3, scope: !107)
!113 = !DILocation(line: 69, column: 7, scope: !107)
!114 = !DILocation(line: 70, column: 9, scope: !107)
!115 = !DILocation(line: 70, column: 3, scope: !107)
!116 = !DILocation(line: 71, column: 1, scope: !107)
