; ModuleID = 'integration/dataracebench/DRB035-truedepscalar-orig-yes.c'
source_filename = "integration/dataracebench/DRB035-truedepscalar-orig-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [71 x i8] c";integration/dataracebench/DRB035-truedepscalar-orig-yes.c;main;63;1;;\00", align 1
@2 = private unnamed_addr constant [72 x i8] c";integration/dataracebench/DRB035-truedepscalar-orig-yes.c;main;63;25;;\00", align 1
@3 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"a[50]=%d\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !dbg !7 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %tmp = alloca i32, align 4
  %len = alloca i32, align 4
  %a = alloca [100 x i32], align 16
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4, !tbaa !24
  call void @llvm.dbg.declare(metadata i32* %argc.addr, metadata !15, metadata !DIExpression()), !dbg !28
  store i8** %argv, i8*** %argv.addr, align 8, !tbaa !29
  call void @llvm.dbg.declare(metadata i8*** %argv.addr, metadata !16, metadata !DIExpression()), !dbg !31
  %2 = bitcast i32* %i to i8*, !dbg !32
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #5, !dbg !32
  call void @llvm.dbg.declare(metadata i32* %i, metadata !17, metadata !DIExpression()), !dbg !33
  %3 = bitcast i32* %tmp to i8*, !dbg !34
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #5, !dbg !34
  call void @llvm.dbg.declare(metadata i32* %tmp, metadata !18, metadata !DIExpression()), !dbg !35
  store i32 10, i32* %tmp, align 4, !dbg !36, !tbaa !24
  %4 = bitcast i32* %len to i8*, !dbg !37
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #5, !dbg !37
  call void @llvm.dbg.declare(metadata i32* %len, metadata !19, metadata !DIExpression()), !dbg !38
  store i32 100, i32* %len, align 4, !dbg !38, !tbaa !24
  %5 = bitcast [100 x i32]* %a to i8*, !dbg !39
  call void @llvm.lifetime.start.p0i8(i64 400, i8* %5) #5, !dbg !39
  call void @llvm.dbg.declare(metadata [100 x i32]* %a, metadata !20, metadata !DIExpression()), !dbg !40
  %6 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !41
  store i8* getelementptr inbounds ([71 x i8], [71 x i8]* @1, i32 0, i32 0), i8** %6, align 8, !dbg !41, !tbaa !42
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, [100 x i32]*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %len, [100 x i32]* %a, i32* %tmp), !dbg !41
  %arrayidx = getelementptr inbounds [100 x i32], [100 x i32]* %a, i64 0, i64 50, !dbg !44
  %7 = load i32, i32* %arrayidx, align 8, !dbg !44, !tbaa !24
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %7), !dbg !45
  %8 = bitcast [100 x i32]* %a to i8*, !dbg !46
  call void @llvm.lifetime.end.p0i8(i64 400, i8* %8) #5, !dbg !46
  %9 = bitcast i32* %len to i8*, !dbg !46
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %9) #5, !dbg !46
  %10 = bitcast i32* %tmp to i8*, !dbg !46
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %10) #5, !dbg !46
  %11 = bitcast i32* %i to i8*, !dbg !46
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %11) #5, !dbg !46
  ret i32 0, !dbg !47
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %len, [100 x i32]* dereferenceable(400) %a, i32* dereferenceable(4) %tmp) #3 !dbg !48 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %a.addr = alloca [100 x i32]*, align 8
  %tmp.addr = alloca i32*, align 8
  %.omp.iv = alloca i32, align 4
  %tmp1 = alloca i32, align 4
  %.capture_expr. = alloca i32, align 4
  %.capture_expr.2 = alloca i32, align 4
  %i = alloca i32, align 4
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %i5 = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !29
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !58, metadata !DIExpression()), !dbg !70
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !29
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !59, metadata !DIExpression()), !dbg !70
  store i32* %len, i32** %len.addr, align 8, !tbaa !29
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !60, metadata !DIExpression()), !dbg !71
  store [100 x i32]* %a, [100 x i32]** %a.addr, align 8, !tbaa !29
  call void @llvm.dbg.declare(metadata [100 x i32]** %a.addr, metadata !61, metadata !DIExpression()), !dbg !72
  store i32* %tmp, i32** %tmp.addr, align 8, !tbaa !29
  call void @llvm.dbg.declare(metadata i32** %tmp.addr, metadata !62, metadata !DIExpression()), !dbg !73
  %2 = load i32*, i32** %len.addr, align 8, !dbg !74, !tbaa !29
  %3 = load [100 x i32]*, [100 x i32]** %a.addr, align 8, !dbg !74, !tbaa !29
  %4 = load i32*, i32** %tmp.addr, align 8, !dbg !74, !tbaa !29
  %5 = bitcast i32* %.omp.iv to i8*, !dbg !74
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #5, !dbg !74
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !63, metadata !DIExpression()), !dbg !70
  %6 = bitcast i32* %.capture_expr. to i8*, !dbg !74
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #5, !dbg !74
  call void @llvm.dbg.declare(metadata i32* %.capture_expr., metadata !64, metadata !DIExpression()), !dbg !70
  %7 = load i32, i32* %2, align 4, !dbg !75, !tbaa !24
  store i32 %7, i32* %.capture_expr., align 4, !dbg !75, !tbaa !24
  %8 = bitcast i32* %.capture_expr.2 to i8*, !dbg !74
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #5, !dbg !74
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.2, metadata !64, metadata !DIExpression()), !dbg !70
  %9 = load i32, i32* %.capture_expr., align 4, !dbg !75, !tbaa !24
  %sub = sub nsw i32 %9, 0, !dbg !74
  %sub3 = sub nsw i32 %sub, 1, !dbg !74
  %add = add nsw i32 %sub3, 1, !dbg !74
  %div = sdiv i32 %add, 1, !dbg !74
  %sub4 = sub nsw i32 %div, 1, !dbg !74
  store i32 %sub4, i32* %.capture_expr.2, align 4, !dbg !74, !tbaa !24
  %10 = bitcast i32* %i to i8*, !dbg !74
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #5, !dbg !74
  call void @llvm.dbg.declare(metadata i32* %i, metadata !65, metadata !DIExpression()), !dbg !70
  store i32 0, i32* %i, align 4, !dbg !76, !tbaa !24
  %11 = bitcast i32* %i to i8*, !dbg !74
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %11) #5, !dbg !74
  %12 = load i32, i32* %.capture_expr., align 4, !dbg !75, !tbaa !24
  %cmp = icmp slt i32 0, %12, !dbg !74
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end, !dbg !74

omp.precond.then:                                 ; preds = %entry
  %13 = bitcast i32* %.omp.lb to i8*, !dbg !74
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %13) #5, !dbg !74
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !66, metadata !DIExpression()), !dbg !70
  store i32 0, i32* %.omp.lb, align 4, !dbg !77, !tbaa !24
  %14 = bitcast i32* %.omp.ub to i8*, !dbg !74
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %14) #5, !dbg !74
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !67, metadata !DIExpression()), !dbg !70
  %15 = load i32, i32* %.capture_expr.2, align 4, !dbg !74, !tbaa !24
  store i32 %15, i32* %.omp.ub, align 4, !dbg !77, !tbaa !24
  %16 = bitcast i32* %.omp.stride to i8*, !dbg !74
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %16) #5, !dbg !74
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !68, metadata !DIExpression()), !dbg !70
  store i32 1, i32* %.omp.stride, align 4, !dbg !77, !tbaa !24
  %17 = bitcast i32* %.omp.is_last to i8*, !dbg !74
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %17) #5, !dbg !74
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !69, metadata !DIExpression()), !dbg !70
  store i32 0, i32* %.omp.is_last, align 4, !dbg !77, !tbaa !24
  %18 = bitcast i32* %i5 to i8*, !dbg !74
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %18) #5, !dbg !74
  call void @llvm.dbg.declare(metadata i32* %i5, metadata !65, metadata !DIExpression()), !dbg !70
  %19 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !74
  store i8* getelementptr inbounds ([71 x i8], [71 x i8]* @1, i32 0, i32 0), i8** %19, align 8, !dbg !74, !tbaa !42
  %20 = load i32*, i32** %.global_tid..addr, align 8, !dbg !74
  %21 = load i32, i32* %20, align 4, !dbg !74, !tbaa !24
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %21, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !74
  %22 = load i32, i32* %.omp.ub, align 4, !dbg !77, !tbaa !24
  %23 = load i32, i32* %.capture_expr.2, align 4, !dbg !74, !tbaa !24
  %cmp6 = icmp sgt i32 %22, %23, !dbg !77
  br i1 %cmp6, label %cond.true, label %cond.false, !dbg !77

cond.true:                                        ; preds = %omp.precond.then
  %24 = load i32, i32* %.capture_expr.2, align 4, !dbg !74, !tbaa !24
  br label %cond.end, !dbg !77

cond.false:                                       ; preds = %omp.precond.then
  %25 = load i32, i32* %.omp.ub, align 4, !dbg !77, !tbaa !24
  br label %cond.end, !dbg !77

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %24, %cond.true ], [ %25, %cond.false ], !dbg !77
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !77, !tbaa !24
  %26 = load i32, i32* %.omp.lb, align 4, !dbg !77, !tbaa !24
  store i32 %26, i32* %.omp.iv, align 4, !dbg !77, !tbaa !24
  br label %omp.inner.for.cond, !dbg !74

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %27 = load i32, i32* %.omp.iv, align 4, !dbg !77, !tbaa !24
  %28 = load i32, i32* %.omp.ub, align 4, !dbg !77, !tbaa !24
  %cmp7 = icmp sle i32 %27, %28, !dbg !74
  br i1 %cmp7, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !74

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !74

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %29 = load i32, i32* %.omp.iv, align 4, !dbg !77, !tbaa !24
  %mul = mul nsw i32 %29, 1, !dbg !76
  %add8 = add nsw i32 0, %mul, !dbg !76
  store i32 %add8, i32* %i5, align 4, !dbg !76, !tbaa !24
  %30 = load i32, i32* %4, align 4, !dbg !78, !tbaa !24
  %31 = load i32, i32* %i5, align 4, !dbg !80, !tbaa !24
  %idxprom = sext i32 %31 to i64, !dbg !81
  %arrayidx = getelementptr inbounds [100 x i32], [100 x i32]* %3, i64 0, i64 %idxprom, !dbg !81
  store i32 %30, i32* %arrayidx, align 4, !dbg !82, !tbaa !24
  %32 = load i32, i32* %i5, align 4, !dbg !83, !tbaa !24
  %idxprom9 = sext i32 %32 to i64, !dbg !84
  %arrayidx10 = getelementptr inbounds [100 x i32], [100 x i32]* %3, i64 0, i64 %idxprom9, !dbg !84
  %33 = load i32, i32* %arrayidx10, align 4, !dbg !84, !tbaa !24
  %34 = load i32, i32* %i5, align 4, !dbg !85, !tbaa !24
  %add11 = add nsw i32 %33, %34, !dbg !86
  store i32 %add11, i32* %4, align 4, !dbg !87, !tbaa !24
  br label %omp.body.continue, !dbg !88

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !89

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %35 = load i32, i32* %.omp.iv, align 4, !dbg !77, !tbaa !24
  %add12 = add nsw i32 %35, 1, !dbg !74
  store i32 %add12, i32* %.omp.iv, align 4, !dbg !74, !tbaa !24
  br label %omp.inner.for.cond, !dbg !89, !llvm.loop !90

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !89

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %36 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !89
  store i8* getelementptr inbounds ([72 x i8], [72 x i8]* @2, i32 0, i32 0), i8** %36, align 8, !dbg !89, !tbaa !42
  %37 = load i32*, i32** %.global_tid..addr, align 8, !dbg !89
  %38 = load i32, i32* %37, align 4, !dbg !89, !tbaa !24
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %38), !dbg !89
  %39 = bitcast i32* %i5 to i8*, !dbg !89
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %39) #5, !dbg !89
  %40 = bitcast i32* %.omp.is_last to i8*, !dbg !89
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %40) #5, !dbg !89
  %41 = bitcast i32* %.omp.stride to i8*, !dbg !89
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %41) #5, !dbg !89
  %42 = bitcast i32* %.omp.ub to i8*, !dbg !89
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %42) #5, !dbg !89
  %43 = bitcast i32* %.omp.lb to i8*, !dbg !89
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %43) #5, !dbg !89
  br label %omp.precond.end, !dbg !89

omp.precond.end:                                  ; preds = %omp.loop.exit, %entry
  %44 = bitcast i32* %.capture_expr.2 to i8*, !dbg !89
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %44) #5, !dbg !89
  %45 = bitcast i32* %.capture_expr. to i8*, !dbg !89
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %45) #5, !dbg !89
  %46 = bitcast i32* %.omp.iv to i8*, !dbg !89
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %46) #5, !dbg !89
  ret void, !dbg !92
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %len, [100 x i32]* dereferenceable(400) %a, i32* dereferenceable(4) %tmp) #3 !dbg !93 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %a.addr = alloca [100 x i32]*, align 8
  %tmp.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !29
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !95, metadata !DIExpression()), !dbg !100
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !29
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !96, metadata !DIExpression()), !dbg !100
  store i32* %len, i32** %len.addr, align 8, !tbaa !29
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !97, metadata !DIExpression()), !dbg !100
  store [100 x i32]* %a, [100 x i32]** %a.addr, align 8, !tbaa !29
  call void @llvm.dbg.declare(metadata [100 x i32]** %a.addr, metadata !98, metadata !DIExpression()), !dbg !100
  store i32* %tmp, i32** %tmp.addr, align 8, !tbaa !29
  call void @llvm.dbg.declare(metadata i32** %tmp.addr, metadata !99, metadata !DIExpression()), !dbg !100
  %0 = load i32*, i32** %len.addr, align 8, !dbg !101, !tbaa !29
  %1 = load [100 x i32]*, [100 x i32]** %a.addr, align 8, !dbg !101, !tbaa !29
  %2 = load i32*, i32** %tmp.addr, align 8, !dbg !101, !tbaa !29
  %3 = load i32*, i32** %.global_tid..addr, align 8, !dbg !101, !tbaa !29
  %4 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !101, !tbaa !29
  %5 = load i32*, i32** %len.addr, align 8, !dbg !101, !tbaa !29
  %6 = load [100 x i32]*, [100 x i32]** %a.addr, align 8, !dbg !101, !tbaa !29
  %7 = load i32*, i32** %tmp.addr, align 8, !dbg !101, !tbaa !29
  call void @.omp_outlined._debug__(i32* %3, i32* %4, i32* %5, [100 x i32]* %6, i32* %7) #5, !dbg !101
  ret void, !dbg !101
}

declare !callback !102 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

declare dso_local i32 @printf(i8*, ...) #4

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "integration/dataracebench/DRB035-truedepscalar-orig-yes.c", directory: "/home/brad/Code/OpenRace/tests/data")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.1 "}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 54, type: !8, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !14)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !10, !11}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!14 = !{!15, !16, !17, !18, !19, !20}
!15 = !DILocalVariable(name: "argc", arg: 1, scope: !7, file: !1, line: 54, type: !10)
!16 = !DILocalVariable(name: "argv", arg: 2, scope: !7, file: !1, line: 54, type: !11)
!17 = !DILocalVariable(name: "i", scope: !7, file: !1, line: 56, type: !10)
!18 = !DILocalVariable(name: "tmp", scope: !7, file: !1, line: 57, type: !10)
!19 = !DILocalVariable(name: "len", scope: !7, file: !1, line: 59, type: !10)
!20 = !DILocalVariable(name: "a", scope: !7, file: !1, line: 61, type: !21)
!21 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 3200, elements: !22)
!22 = !{!23}
!23 = !DISubrange(count: 100)
!24 = !{!25, !25, i64 0}
!25 = !{!"int", !26, i64 0}
!26 = !{!"omnipotent char", !27, i64 0}
!27 = !{!"Simple C/C++ TBAA"}
!28 = !DILocation(line: 54, column: 14, scope: !7)
!29 = !{!30, !30, i64 0}
!30 = !{!"any pointer", !26, i64 0}
!31 = !DILocation(line: 54, column: 26, scope: !7)
!32 = !DILocation(line: 56, column: 3, scope: !7)
!33 = !DILocation(line: 56, column: 7, scope: !7)
!34 = !DILocation(line: 57, column: 3, scope: !7)
!35 = !DILocation(line: 57, column: 7, scope: !7)
!36 = !DILocation(line: 58, column: 7, scope: !7)
!37 = !DILocation(line: 59, column: 3, scope: !7)
!38 = !DILocation(line: 59, column: 7, scope: !7)
!39 = !DILocation(line: 61, column: 3, scope: !7)
!40 = !DILocation(line: 61, column: 7, scope: !7)
!41 = !DILocation(line: 63, column: 1, scope: !7)
!42 = !{!43, !30, i64 16}
!43 = !{!"ident_t", !25, i64 0, !25, i64 4, !25, i64 8, !25, i64 12, !30, i64 16}
!44 = !DILocation(line: 70, column: 24, scope: !7)
!45 = !DILocation(line: 70, column: 3, scope: !7)
!46 = !DILocation(line: 72, column: 1, scope: !7)
!47 = !DILocation(line: 71, column: 3, scope: !7)
!48 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 64, type: !49, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !57)
!49 = !DISubroutineType(types: !50)
!50 = !{null, !51, !51, !55, !56, !55}
!51 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !52)
!52 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !53)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!55 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !10, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !21, size: 64)
!57 = !{!58, !59, !60, !61, !62, !63, !64, !64, !65, !66, !67, !68, !69, !65}
!58 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !48, type: !51, flags: DIFlagArtificial)
!59 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !48, type: !51, flags: DIFlagArtificial)
!60 = !DILocalVariable(name: "len", arg: 3, scope: !48, file: !1, line: 59, type: !55)
!61 = !DILocalVariable(name: "a", arg: 4, scope: !48, file: !1, line: 61, type: !56)
!62 = !DILocalVariable(name: "tmp", arg: 5, scope: !48, file: !1, line: 57, type: !55)
!63 = !DILocalVariable(name: ".omp.iv", scope: !48, type: !10, flags: DIFlagArtificial)
!64 = !DILocalVariable(name: ".capture_expr.", scope: !48, type: !10, flags: DIFlagArtificial)
!65 = !DILocalVariable(name: "i", scope: !48, type: !10, flags: DIFlagArtificial)
!66 = !DILocalVariable(name: ".omp.lb", scope: !48, type: !10, flags: DIFlagArtificial)
!67 = !DILocalVariable(name: ".omp.ub", scope: !48, type: !10, flags: DIFlagArtificial)
!68 = !DILocalVariable(name: ".omp.stride", scope: !48, type: !10, flags: DIFlagArtificial)
!69 = !DILocalVariable(name: ".omp.is_last", scope: !48, type: !10, flags: DIFlagArtificial)
!70 = !DILocation(line: 0, scope: !48)
!71 = !DILocation(line: 59, column: 7, scope: !48)
!72 = !DILocation(line: 61, column: 7, scope: !48)
!73 = !DILocation(line: 57, column: 7, scope: !48)
!74 = !DILocation(line: 64, column: 3, scope: !48)
!75 = !DILocation(line: 64, column: 14, scope: !48)
!76 = !DILocation(line: 64, column: 18, scope: !48)
!77 = !DILocation(line: 64, column: 8, scope: !48)
!78 = !DILocation(line: 66, column: 12, scope: !79)
!79 = distinct !DILexicalBlock(scope: !48, file: !1, line: 65, column: 3)
!80 = !DILocation(line: 66, column: 7, scope: !79)
!81 = !DILocation(line: 66, column: 5, scope: !79)
!82 = !DILocation(line: 66, column: 10, scope: !79)
!83 = !DILocation(line: 67, column: 12, scope: !79)
!84 = !DILocation(line: 67, column: 10, scope: !79)
!85 = !DILocation(line: 67, column: 15, scope: !79)
!86 = !DILocation(line: 67, column: 14, scope: !79)
!87 = !DILocation(line: 67, column: 9, scope: !79)
!88 = !DILocation(line: 68, column: 3, scope: !79)
!89 = !DILocation(line: 63, column: 1, scope: !48)
!90 = distinct !{!90, !89, !91}
!91 = !DILocation(line: 63, column: 25, scope: !48)
!92 = !DILocation(line: 68, column: 3, scope: !48)
!93 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 64, type: !49, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !94)
!94 = !{!95, !96, !97, !98, !99}
!95 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !93, type: !51, flags: DIFlagArtificial)
!96 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !93, type: !51, flags: DIFlagArtificial)
!97 = !DILocalVariable(name: "len", arg: 3, scope: !93, type: !55, flags: DIFlagArtificial)
!98 = !DILocalVariable(name: "a", arg: 4, scope: !93, type: !56, flags: DIFlagArtificial)
!99 = !DILocalVariable(name: "tmp", arg: 5, scope: !93, type: !55, flags: DIFlagArtificial)
!100 = !DILocation(line: 0, scope: !93)
!101 = !DILocation(line: 64, column: 3, scope: !93)
!102 = !{!103}
!103 = !{i64 2, i64 -1, i64 -1, i1 true}
