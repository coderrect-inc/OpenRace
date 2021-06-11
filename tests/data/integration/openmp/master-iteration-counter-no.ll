; ModuleID = 'integration/openmp/master-iteration-counter-no.c'
source_filename = "integration/openmp/master-iteration-counter-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [73 x i8] c";integration/openmp/master-iteration-counter-no.c;master_example;14;13;;\00", align 1
@2 = private unnamed_addr constant [73 x i8] c";integration/openmp/master-iteration-counter-no.c;master_example;14;39;;\00", align 1
@3 = private unnamed_addr constant [73 x i8] c";integration/openmp/master-iteration-counter-no.c;master_example;18;13;;\00", align 1
@4 = private unnamed_addr constant [73 x i8] c";integration/openmp/master-iteration-counter-no.c;master_example;22;13;;\00", align 1
@5 = private unnamed_addr constant [73 x i8] c";integration/openmp/master-iteration-counter-no.c;master_example;22;67;;\00", align 1
@.gomp_critical_user_.reduction.var = common global [8 x i32] zeroinitializer
@6 = private unnamed_addr constant [73 x i8] c";integration/openmp/master-iteration-counter-no.c;master_example;29;13;;\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"iteration %d, toobig=%d\0A\00", align 1
@7 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@8 = private unnamed_addr constant [72 x i8] c";integration/openmp/master-iteration-counter-no.c;master_example;10;5;;\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @master_example(float* %x, float* %xold, i32 %n, float %tol) #0 !dbg !12 {
entry:
  %x.addr = alloca float*, align 8
  %xold.addr = alloca float*, align 8
  %n.addr = alloca i32, align 4
  %tol.addr = alloca float, align 4
  %c = alloca i32, align 4
  %i = alloca i32, align 4
  %toobig = alloca i32, align 4
  %error = alloca float, align 4
  %y = alloca float, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store float* %x, float** %x.addr, align 8, !tbaa !27
  call void @llvm.dbg.declare(metadata float** %x.addr, metadata !18, metadata !DIExpression()), !dbg !31
  store float* %xold, float** %xold.addr, align 8, !tbaa !27
  call void @llvm.dbg.declare(metadata float** %xold.addr, metadata !19, metadata !DIExpression()), !dbg !32
  store i32 %n, i32* %n.addr, align 4, !tbaa !33
  call void @llvm.dbg.declare(metadata i32* %n.addr, metadata !20, metadata !DIExpression()), !dbg !35
  store float %tol, float* %tol.addr, align 4, !tbaa !36
  call void @llvm.dbg.declare(metadata float* %tol.addr, metadata !21, metadata !DIExpression()), !dbg !38
  %2 = bitcast i32* %c to i8*, !dbg !39
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #5, !dbg !39
  call void @llvm.dbg.declare(metadata i32* %c, metadata !22, metadata !DIExpression()), !dbg !40
  %3 = bitcast i32* %i to i8*, !dbg !39
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #5, !dbg !39
  call void @llvm.dbg.declare(metadata i32* %i, metadata !23, metadata !DIExpression()), !dbg !41
  %4 = bitcast i32* %toobig to i8*, !dbg !39
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #5, !dbg !39
  call void @llvm.dbg.declare(metadata i32* %toobig, metadata !24, metadata !DIExpression()), !dbg !42
  %5 = bitcast float* %error to i8*, !dbg !43
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #5, !dbg !43
  call void @llvm.dbg.declare(metadata float* %error, metadata !25, metadata !DIExpression()), !dbg !44
  %6 = bitcast float* %y to i8*, !dbg !43
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #5, !dbg !43
  call void @llvm.dbg.declare(metadata float* %y, metadata !26, metadata !DIExpression()), !dbg !45
  store i32 0, i32* %c, align 4, !dbg !46, !tbaa !33
  %7 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !47
  store i8* getelementptr inbounds ([72 x i8], [72 x i8]* @8, i32 0, i32 0), i8** %7, align 8, !dbg !47, !tbaa !48
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 6, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, float**, float**, i32*, float*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %n.addr, float** %xold.addr, float** %x.addr, i32* %toobig, float* %tol.addr, i32* %c), !dbg !47
  %8 = bitcast float* %y to i8*, !dbg !50
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %8) #5, !dbg !50
  %9 = bitcast float* %error to i8*, !dbg !50
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %9) #5, !dbg !50
  %10 = bitcast i32* %toobig to i8*, !dbg !50
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %10) #5, !dbg !50
  %11 = bitcast i32* %i to i8*, !dbg !50
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %11) #5, !dbg !50
  %12 = bitcast i32* %c to i8*, !dbg !50
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %12) #5, !dbg !50
  ret void, !dbg !50
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %n, float** dereferenceable(8) %xold, float** dereferenceable(8) %x, i32* dereferenceable(4) %toobig, float* dereferenceable(4) %tol, i32* dereferenceable(4) %c) #3 !dbg !51 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %n.addr = alloca i32*, align 8
  %xold.addr = alloca float**, align 8
  %x.addr = alloca float**, align 8
  %toobig.addr = alloca i32*, align 8
  %tol.addr = alloca float*, align 8
  %c.addr = alloca i32*, align 8
  %.omp.iv = alloca i32, align 4
  %tmp = alloca i32, align 4
  %.capture_expr. = alloca i32, align 4
  %.capture_expr.1 = alloca i32, align 4
  %i = alloca i32, align 4
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %i5 = alloca i32, align 4
  %i6 = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %.omp.iv13 = alloca i32, align 4
  %tmp14 = alloca i32, align 4
  %.capture_expr.15 = alloca i32, align 4
  %.capture_expr.17 = alloca i32, align 4
  %i23 = alloca i32, align 4
  %.omp.lb26 = alloca i32, align 4
  %.omp.ub27 = alloca i32, align 4
  %.omp.stride28 = alloca i32, align 4
  %.omp.is_last29 = alloca i32, align 4
  %i30 = alloca i32, align 4
  %y = alloca float, align 4
  %error = alloca float, align 4
  %toobig31 = alloca i32, align 4
  %i32 = alloca i32, align 4
  %.omp.reduction.red_list = alloca [1 x i8*], align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !27
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !62, metadata !DIExpression()), !dbg !91
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !27
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !63, metadata !DIExpression()), !dbg !91
  store i32* %n, i32** %n.addr, align 8, !tbaa !27
  call void @llvm.dbg.declare(metadata i32** %n.addr, metadata !64, metadata !DIExpression()), !dbg !92
  store float** %xold, float*** %xold.addr, align 8, !tbaa !27
  call void @llvm.dbg.declare(metadata float*** %xold.addr, metadata !65, metadata !DIExpression()), !dbg !93
  store float** %x, float*** %x.addr, align 8, !tbaa !27
  call void @llvm.dbg.declare(metadata float*** %x.addr, metadata !66, metadata !DIExpression()), !dbg !94
  store i32* %toobig, i32** %toobig.addr, align 8, !tbaa !27
  call void @llvm.dbg.declare(metadata i32** %toobig.addr, metadata !67, metadata !DIExpression()), !dbg !95
  store float* %tol, float** %tol.addr, align 8, !tbaa !27
  call void @llvm.dbg.declare(metadata float** %tol.addr, metadata !68, metadata !DIExpression()), !dbg !96
  store i32* %c, i32** %c.addr, align 8, !tbaa !27
  call void @llvm.dbg.declare(metadata i32** %c.addr, metadata !69, metadata !DIExpression()), !dbg !97
  %2 = load i32*, i32** %n.addr, align 8, !dbg !98, !tbaa !27
  %3 = load float**, float*** %xold.addr, align 8, !dbg !98, !tbaa !27
  %4 = load float**, float*** %x.addr, align 8, !dbg !98, !tbaa !27
  %5 = load i32*, i32** %toobig.addr, align 8, !dbg !98, !tbaa !27
  %6 = load float*, float** %tol.addr, align 8, !dbg !98, !tbaa !27
  %7 = load i32*, i32** %c.addr, align 8, !dbg !98, !tbaa !27
  br label %do.body, !dbg !99

do.body:                                          ; preds = %do.cond, %entry
  %8 = bitcast i32* %.omp.iv to i8*, !dbg !100
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #5, !dbg !100
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !70, metadata !DIExpression()), !dbg !101
  %9 = bitcast i32* %.capture_expr. to i8*, !dbg !100
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #5, !dbg !100
  call void @llvm.dbg.declare(metadata i32* %.capture_expr., metadata !74, metadata !DIExpression()), !dbg !101
  %10 = load i32, i32* %2, align 4, !dbg !102, !tbaa !33
  %sub = sub nsw i32 %10, 1, !dbg !103
  store i32 %sub, i32* %.capture_expr., align 4, !dbg !102, !tbaa !33
  %11 = bitcast i32* %.capture_expr.1 to i8*, !dbg !100
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #5, !dbg !100
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.1, metadata !74, metadata !DIExpression()), !dbg !101
  %12 = load i32, i32* %.capture_expr., align 4, !dbg !103, !tbaa !33
  %sub2 = sub nsw i32 %12, 1, !dbg !104
  %sub3 = sub nsw i32 %sub2, 1, !dbg !104
  %add = add nsw i32 %sub3, 1, !dbg !104
  %div = sdiv i32 %add, 1, !dbg !104
  %sub4 = sub nsw i32 %div, 1, !dbg !104
  store i32 %sub4, i32* %.capture_expr.1, align 4, !dbg !104, !tbaa !33
  %13 = bitcast i32* %i to i8*, !dbg !100
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %13) #5, !dbg !100
  call void @llvm.dbg.declare(metadata i32* %i, metadata !75, metadata !DIExpression()), !dbg !101
  store i32 1, i32* %i, align 4, !dbg !105, !tbaa !33
  %14 = bitcast i32* %i to i8*, !dbg !100
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %14) #5, !dbg !100
  %15 = load i32, i32* %.capture_expr., align 4, !dbg !103, !tbaa !33
  %cmp = icmp slt i32 1, %15, !dbg !104
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end, !dbg !100

omp.precond.then:                                 ; preds = %do.body
  %16 = bitcast i32* %.omp.lb to i8*, !dbg !100
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %16) #5, !dbg !100
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !76, metadata !DIExpression()), !dbg !101
  store i32 0, i32* %.omp.lb, align 4, !dbg !106, !tbaa !33
  %17 = bitcast i32* %.omp.ub to i8*, !dbg !100
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %17) #5, !dbg !100
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !77, metadata !DIExpression()), !dbg !101
  %18 = load i32, i32* %.capture_expr.1, align 4, !dbg !104, !tbaa !33
  store i32 %18, i32* %.omp.ub, align 4, !dbg !106, !tbaa !33
  %19 = bitcast i32* %.omp.stride to i8*, !dbg !100
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %19) #5, !dbg !100
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !78, metadata !DIExpression()), !dbg !101
  store i32 1, i32* %.omp.stride, align 4, !dbg !106, !tbaa !33
  %20 = bitcast i32* %.omp.is_last to i8*, !dbg !100
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %20) #5, !dbg !100
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !79, metadata !DIExpression()), !dbg !101
  store i32 0, i32* %.omp.is_last, align 4, !dbg !106, !tbaa !33
  %21 = bitcast i32* %i5 to i8*, !dbg !100
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %21) #5, !dbg !100
  call void @llvm.dbg.declare(metadata i32* %i5, metadata !75, metadata !DIExpression()), !dbg !101
  %22 = bitcast i32* %i6 to i8*, !dbg !100
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %22) #5, !dbg !100
  call void @llvm.dbg.declare(metadata i32* %i6, metadata !75, metadata !DIExpression()), !dbg !101
  %23 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !100
  store i8* getelementptr inbounds ([73 x i8], [73 x i8]* @1, i32 0, i32 0), i8** %23, align 8, !dbg !100, !tbaa !48
  %24 = load i32*, i32** %.global_tid..addr, align 8, !dbg !100
  %25 = load i32, i32* %24, align 4, !dbg !100, !tbaa !33
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %25, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !100
  %26 = load i32, i32* %.omp.ub, align 4, !dbg !106, !tbaa !33
  %27 = load i32, i32* %.capture_expr.1, align 4, !dbg !104, !tbaa !33
  %cmp7 = icmp sgt i32 %26, %27, !dbg !106
  br i1 %cmp7, label %cond.true, label %cond.false, !dbg !106

cond.true:                                        ; preds = %omp.precond.then
  %28 = load i32, i32* %.capture_expr.1, align 4, !dbg !104, !tbaa !33
  br label %cond.end, !dbg !106

cond.false:                                       ; preds = %omp.precond.then
  %29 = load i32, i32* %.omp.ub, align 4, !dbg !106, !tbaa !33
  br label %cond.end, !dbg !106

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %28, %cond.true ], [ %29, %cond.false ], !dbg !106
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !106, !tbaa !33
  %30 = load i32, i32* %.omp.lb, align 4, !dbg !106, !tbaa !33
  store i32 %30, i32* %.omp.iv, align 4, !dbg !106, !tbaa !33
  br label %omp.inner.for.cond, !dbg !100

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %31 = load i32, i32* %.omp.iv, align 4, !dbg !106, !tbaa !33
  %32 = load i32, i32* %.omp.ub, align 4, !dbg !106, !tbaa !33
  %cmp8 = icmp sle i32 %31, %32, !dbg !104
  br i1 %cmp8, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !100

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !100

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %33 = load i32, i32* %.omp.iv, align 4, !dbg !106, !tbaa !33
  %mul = mul nsw i32 %33, 1, !dbg !105
  %add9 = add nsw i32 1, %mul, !dbg !105
  store i32 %add9, i32* %i5, align 4, !dbg !105, !tbaa !33
  %34 = load float*, float** %4, align 8, !dbg !107, !tbaa !27
  %35 = load i32, i32* %i5, align 4, !dbg !109, !tbaa !33
  %idxprom = sext i32 %35 to i64, !dbg !107
  %arrayidx = getelementptr inbounds float, float* %34, i64 %idxprom, !dbg !107
  %36 = load float, float* %arrayidx, align 4, !dbg !107, !tbaa !36
  %37 = load float*, float** %3, align 8, !dbg !110, !tbaa !27
  %38 = load i32, i32* %i5, align 4, !dbg !111, !tbaa !33
  %idxprom10 = sext i32 %38 to i64, !dbg !110
  %arrayidx11 = getelementptr inbounds float, float* %37, i64 %idxprom10, !dbg !110
  store float %36, float* %arrayidx11, align 4, !dbg !112, !tbaa !36
  br label %omp.body.continue, !dbg !113

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !114

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %39 = load i32, i32* %.omp.iv, align 4, !dbg !106, !tbaa !33
  %add12 = add nsw i32 %39, 1, !dbg !104
  store i32 %add12, i32* %.omp.iv, align 4, !dbg !104, !tbaa !33
  br label %omp.inner.for.cond, !dbg !114, !llvm.loop !115

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !114

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %40 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !114
  store i8* getelementptr inbounds ([73 x i8], [73 x i8]* @2, i32 0, i32 0), i8** %40, align 8, !dbg !114, !tbaa !48
  %41 = load i32*, i32** %.global_tid..addr, align 8, !dbg !114
  %42 = load i32, i32* %41, align 4, !dbg !114, !tbaa !33
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %42), !dbg !114
  %43 = bitcast i32* %i6 to i8*, !dbg !114
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %43) #5, !dbg !114
  %44 = bitcast i32* %i5 to i8*, !dbg !114
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %44) #5, !dbg !114
  %45 = bitcast i32* %.omp.is_last to i8*, !dbg !114
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %45) #5, !dbg !114
  %46 = bitcast i32* %.omp.stride to i8*, !dbg !114
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %46) #5, !dbg !114
  %47 = bitcast i32* %.omp.ub to i8*, !dbg !114
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %47) #5, !dbg !114
  %48 = bitcast i32* %.omp.lb to i8*, !dbg !114
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %48) #5, !dbg !114
  br label %omp.precond.end, !dbg !114

omp.precond.end:                                  ; preds = %omp.loop.exit, %do.body
  %49 = bitcast i32* %.capture_expr.1 to i8*, !dbg !114
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %49) #5, !dbg !114
  %50 = bitcast i32* %.capture_expr. to i8*, !dbg !114
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %50) #5, !dbg !114
  %51 = bitcast i32* %.omp.iv to i8*, !dbg !114
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %51) #5, !dbg !114
  %52 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !116
  store i8* getelementptr inbounds ([73 x i8], [73 x i8]* @1, i32 0, i32 0), i8** %52, align 8, !dbg !116, !tbaa !48
  %53 = load i32*, i32** %.global_tid..addr, align 8, !dbg !116
  %54 = load i32, i32* %53, align 4, !dbg !116, !tbaa !33
  call void @__kmpc_barrier(%struct.ident_t* %.kmpc_loc.addr, i32 %54), !dbg !116
  %55 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !117
  store i8* getelementptr inbounds ([73 x i8], [73 x i8]* @3, i32 0, i32 0), i8** %55, align 8, !dbg !117, !tbaa !48
  %56 = load i32*, i32** %.global_tid..addr, align 8, !dbg !117
  %57 = load i32, i32* %56, align 4, !dbg !117, !tbaa !33
  %58 = call i32 @__kmpc_single(%struct.ident_t* %.kmpc_loc.addr, i32 %57), !dbg !117
  %59 = icmp ne i32 %58, 0, !dbg !117
  br i1 %59, label %omp_if.then, label %omp_if.end, !dbg !117

omp_if.then:                                      ; preds = %omp.precond.end
  store i32 0, i32* %5, align 4, !dbg !118, !tbaa !33
  call void @__kmpc_end_single(%struct.ident_t* %.kmpc_loc.addr, i32 %57), !dbg !121
  br label %omp_if.end, !dbg !121

omp_if.end:                                       ; preds = %omp_if.then, %omp.precond.end
  %60 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !122
  store i8* getelementptr inbounds ([73 x i8], [73 x i8]* @3, i32 0, i32 0), i8** %60, align 8, !dbg !122, !tbaa !48
  %61 = load i32*, i32** %.global_tid..addr, align 8, !dbg !122
  %62 = load i32, i32* %61, align 4, !dbg !122, !tbaa !33
  call void @__kmpc_barrier(%struct.ident_t* %.kmpc_loc.addr, i32 %62), !dbg !122
  %63 = bitcast i32* %.omp.iv13 to i8*, !dbg !123
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %63) #5, !dbg !123
  call void @llvm.dbg.declare(metadata i32* %.omp.iv13, metadata !80, metadata !DIExpression()), !dbg !124
  %64 = bitcast i32* %.capture_expr.15 to i8*, !dbg !123
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %64) #5, !dbg !123
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.15, metadata !82, metadata !DIExpression()), !dbg !124
  %65 = load i32, i32* %2, align 4, !dbg !125, !tbaa !33
  %sub16 = sub nsw i32 %65, 1, !dbg !126
  store i32 %sub16, i32* %.capture_expr.15, align 4, !dbg !125, !tbaa !33
  %66 = bitcast i32* %.capture_expr.17 to i8*, !dbg !123
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %66) #5, !dbg !123
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.17, metadata !82, metadata !DIExpression()), !dbg !124
  %67 = load i32, i32* %.capture_expr.15, align 4, !dbg !126, !tbaa !33
  %sub18 = sub nsw i32 %67, 1, !dbg !127
  %sub19 = sub nsw i32 %sub18, 1, !dbg !127
  %add20 = add nsw i32 %sub19, 1, !dbg !127
  %div21 = sdiv i32 %add20, 1, !dbg !127
  %sub22 = sub nsw i32 %div21, 1, !dbg !127
  store i32 %sub22, i32* %.capture_expr.17, align 4, !dbg !127, !tbaa !33
  %68 = bitcast i32* %i23 to i8*, !dbg !123
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %68) #5, !dbg !123
  call void @llvm.dbg.declare(metadata i32* %i23, metadata !83, metadata !DIExpression()), !dbg !124
  store i32 1, i32* %i23, align 4, !dbg !128, !tbaa !33
  %69 = bitcast i32* %i23 to i8*, !dbg !123
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %69) #5, !dbg !123
  %70 = load i32, i32* %.capture_expr.15, align 4, !dbg !126, !tbaa !33
  %cmp24 = icmp slt i32 1, %70, !dbg !127
  br i1 %cmp24, label %omp.precond.then25, label %omp.precond.end67, !dbg !123

omp.precond.then25:                               ; preds = %omp_if.end
  %71 = bitcast i32* %.omp.lb26 to i8*, !dbg !123
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %71) #5, !dbg !123
  call void @llvm.dbg.declare(metadata i32* %.omp.lb26, metadata !84, metadata !DIExpression()), !dbg !124
  store i32 0, i32* %.omp.lb26, align 4, !dbg !129, !tbaa !33
  %72 = bitcast i32* %.omp.ub27 to i8*, !dbg !123
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %72) #5, !dbg !123
  call void @llvm.dbg.declare(metadata i32* %.omp.ub27, metadata !85, metadata !DIExpression()), !dbg !124
  %73 = load i32, i32* %.capture_expr.17, align 4, !dbg !127, !tbaa !33
  store i32 %73, i32* %.omp.ub27, align 4, !dbg !129, !tbaa !33
  %74 = bitcast i32* %.omp.stride28 to i8*, !dbg !123
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %74) #5, !dbg !123
  call void @llvm.dbg.declare(metadata i32* %.omp.stride28, metadata !86, metadata !DIExpression()), !dbg !124
  store i32 1, i32* %.omp.stride28, align 4, !dbg !129, !tbaa !33
  %75 = bitcast i32* %.omp.is_last29 to i8*, !dbg !123
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %75) #5, !dbg !123
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last29, metadata !87, metadata !DIExpression()), !dbg !124
  store i32 0, i32* %.omp.is_last29, align 4, !dbg !129, !tbaa !33
  %76 = bitcast i32* %i30 to i8*, !dbg !123
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %76) #5, !dbg !123
  call void @llvm.dbg.declare(metadata i32* %i30, metadata !83, metadata !DIExpression()), !dbg !124
  %77 = bitcast float* %y to i8*, !dbg !123
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %77) #5, !dbg !123
  call void @llvm.dbg.declare(metadata float* %y, metadata !88, metadata !DIExpression()), !dbg !124
  %78 = bitcast float* %error to i8*, !dbg !123
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %78) #5, !dbg !123
  call void @llvm.dbg.declare(metadata float* %error, metadata !89, metadata !DIExpression()), !dbg !124
  %79 = bitcast i32* %toobig31 to i8*, !dbg !123
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %79) #5, !dbg !123
  call void @llvm.dbg.declare(metadata i32* %toobig31, metadata !90, metadata !DIExpression()), !dbg !124
  store i32 0, i32* %toobig31, align 4, !dbg !130, !tbaa !33
  %80 = bitcast i32* %i32 to i8*, !dbg !123
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %80) #5, !dbg !123
  call void @llvm.dbg.declare(metadata i32* %i32, metadata !83, metadata !DIExpression()), !dbg !124
  %81 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !123
  store i8* getelementptr inbounds ([73 x i8], [73 x i8]* @4, i32 0, i32 0), i8** %81, align 8, !dbg !123, !tbaa !48
  %82 = load i32*, i32** %.global_tid..addr, align 8, !dbg !123
  %83 = load i32, i32* %82, align 4, !dbg !123, !tbaa !33
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %83, i32 34, i32* %.omp.is_last29, i32* %.omp.lb26, i32* %.omp.ub27, i32* %.omp.stride28, i32 1, i32 1), !dbg !123
  %84 = load i32, i32* %.omp.ub27, align 4, !dbg !129, !tbaa !33
  %85 = load i32, i32* %.capture_expr.17, align 4, !dbg !127, !tbaa !33
  %cmp33 = icmp sgt i32 %84, %85, !dbg !129
  br i1 %cmp33, label %cond.true34, label %cond.false35, !dbg !129

cond.true34:                                      ; preds = %omp.precond.then25
  %86 = load i32, i32* %.capture_expr.17, align 4, !dbg !127, !tbaa !33
  br label %cond.end36, !dbg !129

cond.false35:                                     ; preds = %omp.precond.then25
  %87 = load i32, i32* %.omp.ub27, align 4, !dbg !129, !tbaa !33
  br label %cond.end36, !dbg !129

cond.end36:                                       ; preds = %cond.false35, %cond.true34
  %cond37 = phi i32 [ %86, %cond.true34 ], [ %87, %cond.false35 ], !dbg !129
  store i32 %cond37, i32* %.omp.ub27, align 4, !dbg !129, !tbaa !33
  %88 = load i32, i32* %.omp.lb26, align 4, !dbg !129, !tbaa !33
  store i32 %88, i32* %.omp.iv13, align 4, !dbg !129, !tbaa !33
  br label %omp.inner.for.cond38, !dbg !123

omp.inner.for.cond38:                             ; preds = %omp.inner.for.inc62, %cond.end36
  %89 = load i32, i32* %.omp.iv13, align 4, !dbg !129, !tbaa !33
  %90 = load i32, i32* %.omp.ub27, align 4, !dbg !129, !tbaa !33
  %cmp39 = icmp sle i32 %89, %90, !dbg !127
  br i1 %cmp39, label %omp.inner.for.body41, label %omp.inner.for.cond.cleanup40, !dbg !123

omp.inner.for.cond.cleanup40:                     ; preds = %omp.inner.for.cond38
  br label %omp.inner.for.end64, !dbg !123

omp.inner.for.body41:                             ; preds = %omp.inner.for.cond38
  %91 = load i32, i32* %.omp.iv13, align 4, !dbg !129, !tbaa !33
  %mul42 = mul nsw i32 %91, 1, !dbg !128
  %add43 = add nsw i32 1, %mul42, !dbg !128
  store i32 %add43, i32* %i30, align 4, !dbg !128, !tbaa !33
  %92 = load float*, float** %4, align 8, !dbg !131, !tbaa !27
  %93 = load i32, i32* %i30, align 4, !dbg !133, !tbaa !33
  %idxprom44 = sext i32 %93 to i64, !dbg !131
  %arrayidx45 = getelementptr inbounds float, float* %92, i64 %idxprom44, !dbg !131
  %94 = load float, float* %arrayidx45, align 4, !dbg !131, !tbaa !36
  store float %94, float* %y, align 4, !dbg !134, !tbaa !36
  %95 = load float*, float** %3, align 8, !dbg !135, !tbaa !27
  %96 = load i32, i32* %i30, align 4, !dbg !136, !tbaa !33
  %sub46 = sub nsw i32 %96, 1, !dbg !137
  %idxprom47 = sext i32 %sub46 to i64, !dbg !135
  %arrayidx48 = getelementptr inbounds float, float* %95, i64 %idxprom47, !dbg !135
  %97 = load float, float* %arrayidx48, align 4, !dbg !135, !tbaa !36
  %98 = load float*, float** %4, align 8, !dbg !138, !tbaa !27
  %99 = load i32, i32* %i30, align 4, !dbg !139, !tbaa !33
  %idxprom49 = sext i32 %99 to i64, !dbg !138
  %arrayidx50 = getelementptr inbounds float, float* %98, i64 %idxprom49, !dbg !138
  %100 = load float, float* %arrayidx50, align 4, !dbg !138, !tbaa !36
  %101 = load float*, float** %3, align 8, !dbg !140, !tbaa !27
  %102 = load i32, i32* %i30, align 4, !dbg !141, !tbaa !33
  %add51 = add nsw i32 %102, 1, !dbg !142
  %idxprom52 = sext i32 %add51 to i64, !dbg !140
  %arrayidx53 = getelementptr inbounds float, float* %101, i64 %idxprom52, !dbg !140
  %103 = load float, float* %arrayidx53, align 4, !dbg !140, !tbaa !36
  %call = call float @average(float %97, float %100, float %103), !dbg !143
  %104 = load float*, float** %4, align 8, !dbg !144, !tbaa !27
  %105 = load i32, i32* %i30, align 4, !dbg !145, !tbaa !33
  %idxprom54 = sext i32 %105 to i64, !dbg !144
  %arrayidx55 = getelementptr inbounds float, float* %104, i64 %idxprom54, !dbg !144
  store float %call, float* %arrayidx55, align 4, !dbg !146, !tbaa !36
  %106 = load float, float* %y, align 4, !dbg !147, !tbaa !36
  %107 = load float*, float** %4, align 8, !dbg !148, !tbaa !27
  %108 = load i32, i32* %i30, align 4, !dbg !149, !tbaa !33
  %idxprom56 = sext i32 %108 to i64, !dbg !148
  %arrayidx57 = getelementptr inbounds float, float* %107, i64 %idxprom56, !dbg !148
  %109 = load float, float* %arrayidx57, align 4, !dbg !148, !tbaa !36
  %sub58 = fsub float %106, %109, !dbg !150
  store float %sub58, float* %error, align 4, !dbg !151, !tbaa !36
  %110 = load float, float* %error, align 4, !dbg !152, !tbaa !36
  %111 = load float, float* %6, align 4, !dbg !154, !tbaa !36
  %cmp59 = fcmp ogt float %110, %111, !dbg !155
  br i1 %cmp59, label %if.then, label %lor.lhs.false, !dbg !156

lor.lhs.false:                                    ; preds = %omp.inner.for.body41
  %112 = load float, float* %error, align 4, !dbg !157, !tbaa !36
  %113 = load float, float* %6, align 4, !dbg !158, !tbaa !36
  %fneg = fneg float %113, !dbg !159
  %cmp60 = fcmp olt float %112, %fneg, !dbg !160
  br i1 %cmp60, label %if.then, label %if.end, !dbg !161

if.then:                                          ; preds = %lor.lhs.false, %omp.inner.for.body41
  %114 = load i32, i32* %toobig31, align 4, !dbg !162, !tbaa !33
  %inc = add nsw i32 %114, 1, !dbg !162
  store i32 %inc, i32* %toobig31, align 4, !dbg !162, !tbaa !33
  br label %if.end, !dbg !162

if.end:                                           ; preds = %if.then, %lor.lhs.false
  br label %omp.body.continue61, !dbg !163

omp.body.continue61:                              ; preds = %if.end
  br label %omp.inner.for.inc62, !dbg !164

omp.inner.for.inc62:                              ; preds = %omp.body.continue61
  %115 = load i32, i32* %.omp.iv13, align 4, !dbg !129, !tbaa !33
  %add63 = add nsw i32 %115, 1, !dbg !127
  store i32 %add63, i32* %.omp.iv13, align 4, !dbg !127, !tbaa !33
  br label %omp.inner.for.cond38, !dbg !164, !llvm.loop !165

omp.inner.for.end64:                              ; preds = %omp.inner.for.cond.cleanup40
  br label %omp.loop.exit65, !dbg !164

omp.loop.exit65:                                  ; preds = %omp.inner.for.end64
  %116 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !164
  store i8* getelementptr inbounds ([73 x i8], [73 x i8]* @5, i32 0, i32 0), i8** %116, align 8, !dbg !164, !tbaa !48
  %117 = load i32*, i32** %.global_tid..addr, align 8, !dbg !164
  %118 = load i32, i32* %117, align 4, !dbg !164, !tbaa !33
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %118), !dbg !164
  %119 = getelementptr inbounds [1 x i8*], [1 x i8*]* %.omp.reduction.red_list, i64 0, i64 0, !dbg !164
  %120 = bitcast i32* %toobig31 to i8*, !dbg !164
  store i8* %120, i8** %119, align 8, !dbg !164
  %121 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !164
  store i8* getelementptr inbounds ([73 x i8], [73 x i8]* @5, i32 0, i32 0), i8** %121, align 8, !dbg !164, !tbaa !48
  %122 = load i32*, i32** %.global_tid..addr, align 8, !dbg !164
  %123 = load i32, i32* %122, align 4, !dbg !164, !tbaa !33
  %124 = bitcast [1 x i8*]* %.omp.reduction.red_list to i8*, !dbg !164
  %125 = call i32 @__kmpc_reduce(%struct.ident_t* %.kmpc_loc.addr, i32 %123, i32 1, i64 8, i8* %124, void (i8*, i8*)* @.omp.reduction.reduction_func, [8 x i32]* @.gomp_critical_user_.reduction.var), !dbg !164
  switch i32 %125, label %.omp.reduction.default [
    i32 1, label %.omp.reduction.case1
    i32 2, label %.omp.reduction.case2
  ], !dbg !164

.omp.reduction.case1:                             ; preds = %omp.loop.exit65
  %126 = load i32, i32* %5, align 4, !dbg !130, !tbaa !33
  %127 = load i32, i32* %toobig31, align 4, !dbg !130, !tbaa !33
  %add66 = add nsw i32 %126, %127, !dbg !167
  store i32 %add66, i32* %5, align 4, !dbg !167, !tbaa !33
  call void @__kmpc_end_reduce(%struct.ident_t* %.kmpc_loc.addr, i32 %123, [8 x i32]* @.gomp_critical_user_.reduction.var), !dbg !164
  br label %.omp.reduction.default, !dbg !164

.omp.reduction.case2:                             ; preds = %omp.loop.exit65
  %128 = load i32, i32* %toobig31, align 4, !dbg !130, !tbaa !33
  %129 = atomicrmw add i32* %5, i32 %128 monotonic, !dbg !164
  call void @__kmpc_end_reduce(%struct.ident_t* %.kmpc_loc.addr, i32 %123, [8 x i32]* @.gomp_critical_user_.reduction.var), !dbg !164
  br label %.omp.reduction.default, !dbg !164

.omp.reduction.default:                           ; preds = %.omp.reduction.case2, %.omp.reduction.case1, %omp.loop.exit65
  %130 = bitcast i32* %i32 to i8*, !dbg !164
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %130) #5, !dbg !164
  %131 = bitcast i32* %toobig31 to i8*, !dbg !164
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %131) #5, !dbg !164
  %132 = bitcast float* %error to i8*, !dbg !164
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %132) #5, !dbg !164
  %133 = bitcast float* %y to i8*, !dbg !164
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %133) #5, !dbg !164
  %134 = bitcast i32* %i30 to i8*, !dbg !164
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %134) #5, !dbg !164
  %135 = bitcast i32* %.omp.is_last29 to i8*, !dbg !164
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %135) #5, !dbg !164
  %136 = bitcast i32* %.omp.stride28 to i8*, !dbg !164
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %136) #5, !dbg !164
  %137 = bitcast i32* %.omp.ub27 to i8*, !dbg !164
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %137) #5, !dbg !164
  %138 = bitcast i32* %.omp.lb26 to i8*, !dbg !164
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %138) #5, !dbg !164
  br label %omp.precond.end67, !dbg !164

omp.precond.end67:                                ; preds = %.omp.reduction.default, %omp_if.end
  %139 = bitcast i32* %.capture_expr.17 to i8*, !dbg !164
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %139) #5, !dbg !164
  %140 = bitcast i32* %.capture_expr.15 to i8*, !dbg !164
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %140) #5, !dbg !164
  %141 = bitcast i32* %.omp.iv13 to i8*, !dbg !164
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %141) #5, !dbg !164
  %142 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !166
  store i8* getelementptr inbounds ([73 x i8], [73 x i8]* @4, i32 0, i32 0), i8** %142, align 8, !dbg !166, !tbaa !48
  %143 = load i32*, i32** %.global_tid..addr, align 8, !dbg !166
  %144 = load i32, i32* %143, align 4, !dbg !166, !tbaa !33
  call void @__kmpc_barrier(%struct.ident_t* %.kmpc_loc.addr, i32 %144), !dbg !166
  %145 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !168
  store i8* getelementptr inbounds ([73 x i8], [73 x i8]* @6, i32 0, i32 0), i8** %145, align 8, !dbg !168, !tbaa !48
  %146 = load i32*, i32** %.global_tid..addr, align 8, !dbg !168
  %147 = load i32, i32* %146, align 4, !dbg !168, !tbaa !33
  %148 = call i32 @__kmpc_master(%struct.ident_t* %.kmpc_loc.addr, i32 %147), !dbg !168
  %149 = icmp ne i32 %148, 0, !dbg !168
  br i1 %149, label %omp_if.then68, label %omp_if.end70, !dbg !168

omp_if.then68:                                    ; preds = %omp.precond.end67
  %150 = load i32, i32* %7, align 4, !dbg !169, !tbaa !33
  %151 = load i32, i32* %5, align 4, !dbg !172, !tbaa !33
  %call69 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %150, i32 %151), !dbg !173
  call void @__kmpc_end_master(%struct.ident_t* %.kmpc_loc.addr, i32 %147), !dbg !174
  br label %omp_if.end70, !dbg !174

omp_if.end70:                                     ; preds = %omp_if.then68, %omp.precond.end67
  br label %do.cond, !dbg !175

do.cond:                                          ; preds = %omp_if.end70
  %152 = load i32, i32* %5, align 4, !dbg !176, !tbaa !33
  %cmp71 = icmp sgt i32 %152, 0, !dbg !177
  br i1 %cmp71, label %do.body, label %do.end, !dbg !175, !llvm.loop !178

do.end:                                           ; preds = %do.cond
  ret void, !dbg !180
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

declare dso_local void @__kmpc_barrier(%struct.ident_t*, i32)

declare dso_local void @__kmpc_end_single(%struct.ident_t*, i32)

declare dso_local i32 @__kmpc_single(%struct.ident_t*, i32)

declare !dbg !4 dso_local float @average(float, float, float) #4

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp.reduction.reduction_func(i8* %0, i8* %1) #3 !dbg !181 {
entry:
  %.addr = alloca i8*, align 8
  %.addr1 = alloca i8*, align 8
  store i8* %0, i8** %.addr, align 8, !tbaa !27
  call void @llvm.dbg.declare(metadata i8** %.addr, metadata !184, metadata !DIExpression()), !dbg !187
  store i8* %1, i8** %.addr1, align 8, !tbaa !27
  call void @llvm.dbg.declare(metadata i8** %.addr1, metadata !186, metadata !DIExpression()), !dbg !187
  %2 = load i8*, i8** %.addr, align 8, !dbg !188
  %3 = bitcast i8* %2 to [1 x i8*]*, !dbg !188
  %4 = load i8*, i8** %.addr1, align 8, !dbg !188
  %5 = bitcast i8* %4 to [1 x i8*]*, !dbg !188
  %6 = getelementptr inbounds [1 x i8*], [1 x i8*]* %5, i64 0, i64 0, !dbg !188
  %7 = load i8*, i8** %6, align 8, !dbg !188
  %8 = bitcast i8* %7 to i32*, !dbg !188
  %9 = getelementptr inbounds [1 x i8*], [1 x i8*]* %3, i64 0, i64 0, !dbg !188
  %10 = load i8*, i8** %9, align 8, !dbg !188
  %11 = bitcast i8* %10 to i32*, !dbg !188
  %12 = load i32, i32* %11, align 4, !dbg !189, !tbaa !33
  %13 = load i32, i32* %8, align 4, !dbg !189, !tbaa !33
  %add = add nsw i32 %12, %13, !dbg !190
  store i32 %add, i32* %11, align 4, !dbg !190, !tbaa !33
  ret void, !dbg !189
}

declare dso_local i32 @__kmpc_reduce(%struct.ident_t*, i32, i32, i64, i8*, void (i8*, i8*)*, [8 x i32]*)

declare dso_local void @__kmpc_end_reduce(%struct.ident_t*, i32, [8 x i32]*)

declare dso_local void @__kmpc_end_master(%struct.ident_t*, i32)

declare dso_local i32 @__kmpc_master(%struct.ident_t*, i32)

declare dso_local i32 @printf(i8*, ...) #4

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %n, float** dereferenceable(8) %xold, float** dereferenceable(8) %x, i32* dereferenceable(4) %toobig, float* dereferenceable(4) %tol, i32* dereferenceable(4) %c) #3 !dbg !191 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %n.addr = alloca i32*, align 8
  %xold.addr = alloca float**, align 8
  %x.addr = alloca float**, align 8
  %toobig.addr = alloca i32*, align 8
  %tol.addr = alloca float*, align 8
  %c.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !27
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !193, metadata !DIExpression()), !dbg !201
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !27
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !194, metadata !DIExpression()), !dbg !201
  store i32* %n, i32** %n.addr, align 8, !tbaa !27
  call void @llvm.dbg.declare(metadata i32** %n.addr, metadata !195, metadata !DIExpression()), !dbg !201
  store float** %xold, float*** %xold.addr, align 8, !tbaa !27
  call void @llvm.dbg.declare(metadata float*** %xold.addr, metadata !196, metadata !DIExpression()), !dbg !201
  store float** %x, float*** %x.addr, align 8, !tbaa !27
  call void @llvm.dbg.declare(metadata float*** %x.addr, metadata !197, metadata !DIExpression()), !dbg !201
  store i32* %toobig, i32** %toobig.addr, align 8, !tbaa !27
  call void @llvm.dbg.declare(metadata i32** %toobig.addr, metadata !198, metadata !DIExpression()), !dbg !201
  store float* %tol, float** %tol.addr, align 8, !tbaa !27
  call void @llvm.dbg.declare(metadata float** %tol.addr, metadata !199, metadata !DIExpression()), !dbg !201
  store i32* %c, i32** %c.addr, align 8, !tbaa !27
  call void @llvm.dbg.declare(metadata i32** %c.addr, metadata !200, metadata !DIExpression()), !dbg !201
  %0 = load i32*, i32** %n.addr, align 8, !dbg !202, !tbaa !27
  %1 = load float**, float*** %xold.addr, align 8, !dbg !202, !tbaa !27
  %2 = load float**, float*** %x.addr, align 8, !dbg !202, !tbaa !27
  %3 = load i32*, i32** %toobig.addr, align 8, !dbg !202, !tbaa !27
  %4 = load float*, float** %tol.addr, align 8, !dbg !202, !tbaa !27
  %5 = load i32*, i32** %c.addr, align 8, !dbg !202, !tbaa !27
  %6 = load i32*, i32** %.global_tid..addr, align 8, !dbg !202, !tbaa !27
  %7 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !202, !tbaa !27
  %8 = load i32*, i32** %n.addr, align 8, !dbg !202, !tbaa !27
  %9 = load float**, float*** %xold.addr, align 8, !dbg !202, !tbaa !27
  %10 = load float**, float*** %x.addr, align 8, !dbg !202, !tbaa !27
  %11 = load i32*, i32** %toobig.addr, align 8, !dbg !202, !tbaa !27
  %12 = load float*, float** %tol.addr, align 8, !dbg !202, !tbaa !27
  %13 = load i32*, i32** %c.addr, align 8, !dbg !202, !tbaa !27
  call void @.omp_outlined._debug__(i32* %6, i32* %7, i32* %8, float** %9, float** %10, i32* %11, float* %12, i32* %13) #5, !dbg !202
  ret void, !dbg !202
}

declare !callback !203 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

; Function Attrs: nounwind uwtable
define dso_local i32 @main() #0 !dbg !205 {
entry:
  %x = alloca float, align 4
  %y = alloca float, align 4
  %z = alloca i32, align 4
  %w = alloca float, align 4
  %0 = bitcast float* %x to i8*, !dbg !213
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #5, !dbg !213
  call void @llvm.dbg.declare(metadata float* %x, metadata !209, metadata !DIExpression()), !dbg !214
  store float 3.000000e+00, float* %x, align 4, !dbg !214, !tbaa !36
  %1 = bitcast float* %y to i8*, !dbg !215
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #5, !dbg !215
  call void @llvm.dbg.declare(metadata float* %y, metadata !210, metadata !DIExpression()), !dbg !216
  store float 2.000000e+00, float* %y, align 4, !dbg !216, !tbaa !36
  %2 = bitcast i32* %z to i8*, !dbg !217
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #5, !dbg !217
  call void @llvm.dbg.declare(metadata i32* %z, metadata !211, metadata !DIExpression()), !dbg !218
  store i32 1, i32* %z, align 4, !dbg !218, !tbaa !33
  %3 = bitcast float* %w to i8*, !dbg !219
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #5, !dbg !219
  call void @llvm.dbg.declare(metadata float* %w, metadata !212, metadata !DIExpression()), !dbg !220
  store float 2.000000e+00, float* %w, align 4, !dbg !220, !tbaa !36
  %4 = load i32, i32* %z, align 4, !dbg !221, !tbaa !33
  %5 = load float, float* %w, align 4, !dbg !222, !tbaa !36
  call void @master_example(float* %x, float* %y, i32 %4, float %5), !dbg !223
  %6 = bitcast float* %w to i8*, !dbg !224
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %6) #5, !dbg !224
  %7 = bitcast i32* %z to i8*, !dbg !224
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %7) #5, !dbg !224
  %8 = bitcast float* %y to i8*, !dbg !224
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %8) #5, !dbg !224
  %9 = bitcast float* %x to i8*, !dbg !224
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %9) #5, !dbg !224
  ret i32 0, !dbg !224
}

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.1 (git@github.com:coderrect-inc/classic-flang-llvm-project.git 385cb14c62f7038a201227dbe865453e88b40fe5)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "integration/openmp/master-iteration-counter-no.c", directory: "/home/rohan/OpenRace/tests/data")
!2 = !{}
!3 = !{!4}
!4 = !DISubprogram(name: "average", scope: !1, file: !1, line: 3, type: !5, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!5 = !DISubroutineType(types: !6)
!6 = !{!7, !7, !7, !7}
!7 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!8 = !{i32 7, !"Dwarf Version", i32 4}
!9 = !{i32 2, !"Debug Info Version", i32 3}
!10 = !{i32 1, !"wchar_size", i32 4}
!11 = !{!"clang version 10.0.1 (git@github.com:coderrect-inc/classic-flang-llvm-project.git 385cb14c62f7038a201227dbe865453e88b40fe5)"}
!12 = distinct !DISubprogram(name: "master_example", scope: !1, file: !1, line: 5, type: !13, scopeLine: 6, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !17)
!13 = !DISubroutineType(types: !14)
!14 = !{null, !15, !15, !16, !7}
!15 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!16 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!17 = !{!18, !19, !20, !21, !22, !23, !24, !25, !26}
!18 = !DILocalVariable(name: "x", arg: 1, scope: !12, file: !1, line: 5, type: !15)
!19 = !DILocalVariable(name: "xold", arg: 2, scope: !12, file: !1, line: 5, type: !15)
!20 = !DILocalVariable(name: "n", arg: 3, scope: !12, file: !1, line: 5, type: !16)
!21 = !DILocalVariable(name: "tol", arg: 4, scope: !12, file: !1, line: 5, type: !7)
!22 = !DILocalVariable(name: "c", scope: !12, file: !1, line: 7, type: !16)
!23 = !DILocalVariable(name: "i", scope: !12, file: !1, line: 7, type: !16)
!24 = !DILocalVariable(name: "toobig", scope: !12, file: !1, line: 7, type: !16)
!25 = !DILocalVariable(name: "error", scope: !12, file: !1, line: 8, type: !7)
!26 = !DILocalVariable(name: "y", scope: !12, file: !1, line: 8, type: !7)
!27 = !{!28, !28, i64 0}
!28 = !{!"any pointer", !29, i64 0}
!29 = !{!"omnipotent char", !30, i64 0}
!30 = !{!"Simple C/C++ TBAA"}
!31 = !DILocation(line: 5, column: 29, scope: !12)
!32 = !DILocation(line: 5, column: 39, scope: !12)
!33 = !{!34, !34, i64 0}
!34 = !{!"int", !29, i64 0}
!35 = !DILocation(line: 5, column: 49, scope: !12)
!36 = !{!37, !37, i64 0}
!37 = !{!"float", !29, i64 0}
!38 = !DILocation(line: 5, column: 58, scope: !12)
!39 = !DILocation(line: 7, column: 5, scope: !12)
!40 = !DILocation(line: 7, column: 9, scope: !12)
!41 = !DILocation(line: 7, column: 12, scope: !12)
!42 = !DILocation(line: 7, column: 15, scope: !12)
!43 = !DILocation(line: 8, column: 5, scope: !12)
!44 = !DILocation(line: 8, column: 11, scope: !12)
!45 = !DILocation(line: 8, column: 18, scope: !12)
!46 = !DILocation(line: 9, column: 7, scope: !12)
!47 = !DILocation(line: 10, column: 5, scope: !12)
!48 = !{!49, !28, i64 16}
!49 = !{!"ident_t", !34, i64 0, !34, i64 4, !34, i64 8, !34, i64 12, !28, i64 16}
!50 = !DILocation(line: 35, column: 1, scope: !12)
!51 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 11, type: !52, scopeLine: 11, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !61)
!52 = !DISubroutineType(types: !53)
!53 = !{null, !54, !54, !58, !59, !59, !58, !60, !58}
!54 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !55)
!55 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !56)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!58 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !16, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !15, size: 64)
!60 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !7, size: 64)
!61 = !{!62, !63, !64, !65, !66, !67, !68, !69, !70, !74, !74, !75, !76, !77, !78, !79, !75, !75, !80, !82, !82, !83, !84, !85, !86, !87, !83, !88, !89, !90, !83}
!62 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !51, type: !54, flags: DIFlagArtificial)
!63 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !51, type: !54, flags: DIFlagArtificial)
!64 = !DILocalVariable(name: "n", arg: 3, scope: !51, file: !1, line: 5, type: !58)
!65 = !DILocalVariable(name: "xold", arg: 4, scope: !51, file: !1, line: 5, type: !59)
!66 = !DILocalVariable(name: "x", arg: 5, scope: !51, file: !1, line: 5, type: !59)
!67 = !DILocalVariable(name: "toobig", arg: 6, scope: !51, file: !1, line: 7, type: !58)
!68 = !DILocalVariable(name: "tol", arg: 7, scope: !51, file: !1, line: 5, type: !60)
!69 = !DILocalVariable(name: "c", arg: 8, scope: !51, file: !1, line: 7, type: !58)
!70 = !DILocalVariable(name: ".omp.iv", scope: !71, type: !16, flags: DIFlagArtificial)
!71 = distinct !DILexicalBlock(scope: !72, file: !1, line: 14, column: 13)
!72 = distinct !DILexicalBlock(scope: !73, file: !1, line: 13, column: 9)
!73 = distinct !DILexicalBlock(scope: !51, file: !1, line: 11, column: 5)
!74 = !DILocalVariable(name: ".capture_expr.", scope: !71, type: !16, flags: DIFlagArtificial)
!75 = !DILocalVariable(name: "i", scope: !71, type: !16, flags: DIFlagArtificial)
!76 = !DILocalVariable(name: ".omp.lb", scope: !71, type: !16, flags: DIFlagArtificial)
!77 = !DILocalVariable(name: ".omp.ub", scope: !71, type: !16, flags: DIFlagArtificial)
!78 = !DILocalVariable(name: ".omp.stride", scope: !71, type: !16, flags: DIFlagArtificial)
!79 = !DILocalVariable(name: ".omp.is_last", scope: !71, type: !16, flags: DIFlagArtificial)
!80 = !DILocalVariable(name: ".omp.iv", scope: !81, type: !16, flags: DIFlagArtificial)
!81 = distinct !DILexicalBlock(scope: !72, file: !1, line: 22, column: 13)
!82 = !DILocalVariable(name: ".capture_expr.", scope: !81, type: !16, flags: DIFlagArtificial)
!83 = !DILocalVariable(name: "i", scope: !81, type: !16, flags: DIFlagArtificial)
!84 = !DILocalVariable(name: ".omp.lb", scope: !81, type: !16, flags: DIFlagArtificial)
!85 = !DILocalVariable(name: ".omp.ub", scope: !81, type: !16, flags: DIFlagArtificial)
!86 = !DILocalVariable(name: ".omp.stride", scope: !81, type: !16, flags: DIFlagArtificial)
!87 = !DILocalVariable(name: ".omp.is_last", scope: !81, type: !16, flags: DIFlagArtificial)
!88 = !DILocalVariable(name: "y", scope: !81, type: !7, flags: DIFlagArtificial)
!89 = !DILocalVariable(name: "error", scope: !81, type: !7, flags: DIFlagArtificial)
!90 = !DILocalVariable(name: "toobig", scope: !81, type: !16, flags: DIFlagArtificial)
!91 = !DILocation(line: 0, scope: !51)
!92 = !DILocation(line: 5, column: 49, scope: !51)
!93 = !DILocation(line: 5, column: 39, scope: !51)
!94 = !DILocation(line: 5, column: 29, scope: !51)
!95 = !DILocation(line: 7, column: 15, scope: !51)
!96 = !DILocation(line: 5, column: 58, scope: !51)
!97 = !DILocation(line: 7, column: 9, scope: !51)
!98 = !DILocation(line: 11, column: 5, scope: !51)
!99 = !DILocation(line: 12, column: 9, scope: !73)
!100 = !DILocation(line: 14, column: 13, scope: !72)
!101 = !DILocation(line: 0, scope: !71)
!102 = !DILocation(line: 15, column: 29, scope: !71)
!103 = !DILocation(line: 15, column: 30, scope: !71)
!104 = !DILocation(line: 15, column: 13, scope: !71)
!105 = !DILocation(line: 15, column: 34, scope: !71)
!106 = !DILocation(line: 15, column: 18, scope: !71)
!107 = !DILocation(line: 16, column: 23, scope: !108)
!108 = distinct !DILexicalBlock(scope: !71, file: !1, line: 15, column: 39)
!109 = !DILocation(line: 16, column: 25, scope: !108)
!110 = !DILocation(line: 16, column: 13, scope: !108)
!111 = !DILocation(line: 16, column: 18, scope: !108)
!112 = !DILocation(line: 16, column: 21, scope: !108)
!113 = !DILocation(line: 17, column: 13, scope: !108)
!114 = !DILocation(line: 14, column: 13, scope: !71)
!115 = distinct !{!115, !114, !116}
!116 = !DILocation(line: 14, column: 39, scope: !71)
!117 = !DILocation(line: 18, column: 13, scope: !72)
!118 = !DILocation(line: 20, column: 24, scope: !119)
!119 = distinct !DILexicalBlock(scope: !120, file: !1, line: 19, column: 13)
!120 = distinct !DILexicalBlock(scope: !72, file: !1, line: 18, column: 13)
!121 = !DILocation(line: 21, column: 13, scope: !119)
!122 = !DILocation(line: 18, column: 31, scope: !120)
!123 = !DILocation(line: 22, column: 13, scope: !72)
!124 = !DILocation(line: 0, scope: !81)
!125 = !DILocation(line: 23, column: 28, scope: !81)
!126 = !DILocation(line: 23, column: 29, scope: !81)
!127 = !DILocation(line: 23, column: 13, scope: !81)
!128 = !DILocation(line: 23, column: 33, scope: !81)
!129 = !DILocation(line: 23, column: 17, scope: !81)
!130 = !DILocation(line: 22, column: 60, scope: !81)
!131 = !DILocation(line: 24, column: 21, scope: !132)
!132 = distinct !DILexicalBlock(scope: !81, file: !1, line: 23, column: 38)
!133 = !DILocation(line: 24, column: 23, scope: !132)
!134 = !DILocation(line: 24, column: 19, scope: !132)
!135 = !DILocation(line: 25, column: 33, scope: !132)
!136 = !DILocation(line: 25, column: 38, scope: !132)
!137 = !DILocation(line: 25, column: 39, scope: !132)
!138 = !DILocation(line: 25, column: 44, scope: !132)
!139 = !DILocation(line: 25, column: 46, scope: !132)
!140 = !DILocation(line: 25, column: 50, scope: !132)
!141 = !DILocation(line: 25, column: 55, scope: !132)
!142 = !DILocation(line: 25, column: 56, scope: !132)
!143 = !DILocation(line: 25, column: 24, scope: !132)
!144 = !DILocation(line: 25, column: 17, scope: !132)
!145 = !DILocation(line: 25, column: 19, scope: !132)
!146 = !DILocation(line: 25, column: 22, scope: !132)
!147 = !DILocation(line: 26, column: 25, scope: !132)
!148 = !DILocation(line: 26, column: 29, scope: !132)
!149 = !DILocation(line: 26, column: 31, scope: !132)
!150 = !DILocation(line: 26, column: 27, scope: !132)
!151 = !DILocation(line: 26, column: 23, scope: !132)
!152 = !DILocation(line: 27, column: 20, scope: !153)
!153 = distinct !DILexicalBlock(scope: !132, file: !1, line: 27, column: 20)
!154 = !DILocation(line: 27, column: 28, scope: !153)
!155 = !DILocation(line: 27, column: 26, scope: !153)
!156 = !DILocation(line: 27, column: 32, scope: !153)
!157 = !DILocation(line: 27, column: 35, scope: !153)
!158 = !DILocation(line: 27, column: 44, scope: !153)
!159 = !DILocation(line: 27, column: 43, scope: !153)
!160 = !DILocation(line: 27, column: 41, scope: !153)
!161 = !DILocation(line: 27, column: 20, scope: !132)
!162 = !DILocation(line: 27, column: 49, scope: !153)
!163 = !DILocation(line: 28, column: 13, scope: !132)
!164 = !DILocation(line: 22, column: 13, scope: !81)
!165 = distinct !{!165, !164, !166}
!166 = !DILocation(line: 22, column: 67, scope: !81)
!167 = !DILocation(line: 22, column: 58, scope: !81)
!168 = !DILocation(line: 29, column: 13, scope: !72)
!169 = !DILocation(line: 31, column: 54, scope: !170)
!170 = distinct !DILexicalBlock(scope: !171, file: !1, line: 30, column: 13)
!171 = distinct !DILexicalBlock(scope: !72, file: !1, line: 29, column: 13)
!172 = !DILocation(line: 31, column: 57, scope: !170)
!173 = !DILocation(line: 31, column: 17, scope: !170)
!174 = !DILocation(line: 32, column: 13, scope: !170)
!175 = !DILocation(line: 33, column: 9, scope: !72)
!176 = !DILocation(line: 33, column: 18, scope: !73)
!177 = !DILocation(line: 33, column: 25, scope: !73)
!178 = distinct !{!178, !99, !179}
!179 = !DILocation(line: 33, column: 28, scope: !73)
!180 = !DILocation(line: 34, column: 5, scope: !51)
!181 = distinct !DISubprogram(linkageName: ".omp.reduction.reduction_func", scope: !1, file: !1, line: 22, type: !182, scopeLine: 22, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !183)
!182 = !DISubroutineType(types: !2)
!183 = !{!184, !186}
!184 = !DILocalVariable(arg: 1, scope: !181, type: !185, flags: DIFlagArtificial)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!186 = !DILocalVariable(arg: 2, scope: !181, type: !185, flags: DIFlagArtificial)
!187 = !DILocation(line: 0, scope: !181)
!188 = !DILocation(line: 22, column: 67, scope: !181)
!189 = !DILocation(line: 22, column: 60, scope: !181)
!190 = !DILocation(line: 22, column: 58, scope: !181)
!191 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 11, type: !52, scopeLine: 11, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !192)
!192 = !{!193, !194, !195, !196, !197, !198, !199, !200}
!193 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !191, type: !54, flags: DIFlagArtificial)
!194 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !191, type: !54, flags: DIFlagArtificial)
!195 = !DILocalVariable(name: "n", arg: 3, scope: !191, type: !58, flags: DIFlagArtificial)
!196 = !DILocalVariable(name: "xold", arg: 4, scope: !191, type: !59, flags: DIFlagArtificial)
!197 = !DILocalVariable(name: "x", arg: 5, scope: !191, type: !59, flags: DIFlagArtificial)
!198 = !DILocalVariable(name: "toobig", arg: 6, scope: !191, type: !58, flags: DIFlagArtificial)
!199 = !DILocalVariable(name: "tol", arg: 7, scope: !191, type: !60, flags: DIFlagArtificial)
!200 = !DILocalVariable(name: "c", arg: 8, scope: !191, type: !58, flags: DIFlagArtificial)
!201 = !DILocation(line: 0, scope: !191)
!202 = !DILocation(line: 11, column: 5, scope: !191)
!203 = !{!204}
!204 = !{i64 2, i64 -1, i64 -1, i1 true}
!205 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 37, type: !206, scopeLine: 37, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !208)
!206 = !DISubroutineType(types: !207)
!207 = !{!16}
!208 = !{!209, !210, !211, !212}
!209 = !DILocalVariable(name: "x", scope: !205, file: !1, line: 38, type: !7)
!210 = !DILocalVariable(name: "y", scope: !205, file: !1, line: 39, type: !7)
!211 = !DILocalVariable(name: "z", scope: !205, file: !1, line: 40, type: !16)
!212 = !DILocalVariable(name: "w", scope: !205, file: !1, line: 41, type: !7)
!213 = !DILocation(line: 38, column: 5, scope: !205)
!214 = !DILocation(line: 38, column: 11, scope: !205)
!215 = !DILocation(line: 39, column: 5, scope: !205)
!216 = !DILocation(line: 39, column: 11, scope: !205)
!217 = !DILocation(line: 40, column: 5, scope: !205)
!218 = !DILocation(line: 40, column: 9, scope: !205)
!219 = !DILocation(line: 41, column: 5, scope: !205)
!220 = !DILocation(line: 41, column: 11, scope: !205)
!221 = !DILocation(line: 42, column: 28, scope: !205)
!222 = !DILocation(line: 42, column: 31, scope: !205)
!223 = !DILocation(line: 42, column: 5, scope: !205)
!224 = !DILocation(line: 43, column: 1, scope: !205)
