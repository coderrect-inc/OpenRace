; ModuleID = 'integration/dataracebench/DRB029-truedep1-orig-yes.c'
source_filename = "integration/dataracebench/DRB029-truedep1-orig-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [66 x i8] c";integration/dataracebench/DRB029-truedep1-orig-yes.c;main;62;1;;\00", align 1
@2 = private unnamed_addr constant [67 x i8] c";integration/dataracebench/DRB029-truedep1-orig-yes.c;main;62;25;;\00", align 1
@3 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"a[50]=%d\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !dbg !7 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %len = alloca i32, align 4
  %a = alloca [100 x i32], align 16
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4, !tbaa !23
  call void @llvm.dbg.declare(metadata i32* %argc.addr, metadata !15, metadata !DIExpression()), !dbg !27
  store i8** %argv, i8*** %argv.addr, align 8, !tbaa !28
  call void @llvm.dbg.declare(metadata i8*** %argv.addr, metadata !16, metadata !DIExpression()), !dbg !30
  %2 = bitcast i32* %i to i8*, !dbg !31
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #5, !dbg !31
  call void @llvm.dbg.declare(metadata i32* %i, metadata !17, metadata !DIExpression()), !dbg !32
  %3 = bitcast i32* %len to i8*, !dbg !33
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #5, !dbg !33
  call void @llvm.dbg.declare(metadata i32* %len, metadata !18, metadata !DIExpression()), !dbg !34
  store i32 100, i32* %len, align 4, !dbg !34, !tbaa !23
  %4 = bitcast [100 x i32]* %a to i8*, !dbg !35
  call void @llvm.lifetime.start.p0i8(i64 400, i8* %4) #5, !dbg !35
  call void @llvm.dbg.declare(metadata [100 x i32]* %a, metadata !19, metadata !DIExpression()), !dbg !36
  store i32 0, i32* %i, align 4, !dbg !37, !tbaa !23
  br label %for.cond, !dbg !39

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %i, align 4, !dbg !40, !tbaa !23
  %6 = load i32, i32* %len, align 4, !dbg !42, !tbaa !23
  %cmp = icmp slt i32 %5, %6, !dbg !43
  br i1 %cmp, label %for.body, label %for.end, !dbg !44

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4, !dbg !45, !tbaa !23
  %8 = load i32, i32* %i, align 4, !dbg !46, !tbaa !23
  %idxprom = sext i32 %8 to i64, !dbg !47
  %arrayidx = getelementptr inbounds [100 x i32], [100 x i32]* %a, i64 0, i64 %idxprom, !dbg !47
  store i32 %7, i32* %arrayidx, align 4, !dbg !48, !tbaa !23
  br label %for.inc, !dbg !47

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4, !dbg !49, !tbaa !23
  %inc = add nsw i32 %9, 1, !dbg !49
  store i32 %inc, i32* %i, align 4, !dbg !49, !tbaa !23
  br label %for.cond, !dbg !50, !llvm.loop !51

for.end:                                          ; preds = %for.cond
  %10 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !53
  store i8* getelementptr inbounds ([66 x i8], [66 x i8]* @1, i32 0, i32 0), i8** %10, align 8, !dbg !53, !tbaa !54
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 2, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, [100 x i32]*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %len, [100 x i32]* %a), !dbg !53
  %arrayidx1 = getelementptr inbounds [100 x i32], [100 x i32]* %a, i64 0, i64 50, !dbg !56
  %11 = load i32, i32* %arrayidx1, align 8, !dbg !56, !tbaa !23
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %11), !dbg !57
  %12 = bitcast [100 x i32]* %a to i8*, !dbg !58
  call void @llvm.lifetime.end.p0i8(i64 400, i8* %12) #5, !dbg !58
  %13 = bitcast i32* %len to i8*, !dbg !58
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %13) #5, !dbg !58
  %14 = bitcast i32* %i to i8*, !dbg !58
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %14) #5, !dbg !58
  ret i32 0, !dbg !59
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %len, [100 x i32]* dereferenceable(400) %a) #3 !dbg !60 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %a.addr = alloca [100 x i32]*, align 8
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
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !28
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !70, metadata !DIExpression()), !dbg !81
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !28
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !71, metadata !DIExpression()), !dbg !81
  store i32* %len, i32** %len.addr, align 8, !tbaa !28
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !72, metadata !DIExpression()), !dbg !82
  store [100 x i32]* %a, [100 x i32]** %a.addr, align 8, !tbaa !28
  call void @llvm.dbg.declare(metadata [100 x i32]** %a.addr, metadata !73, metadata !DIExpression()), !dbg !83
  %2 = load i32*, i32** %len.addr, align 8, !dbg !84, !tbaa !28
  %3 = load [100 x i32]*, [100 x i32]** %a.addr, align 8, !dbg !84, !tbaa !28
  %4 = bitcast i32* %.omp.iv to i8*, !dbg !84
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #5, !dbg !84
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !74, metadata !DIExpression()), !dbg !81
  %5 = bitcast i32* %.capture_expr. to i8*, !dbg !84
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #5, !dbg !84
  call void @llvm.dbg.declare(metadata i32* %.capture_expr., metadata !75, metadata !DIExpression()), !dbg !81
  %6 = load i32, i32* %2, align 4, !dbg !85, !tbaa !23
  %sub = sub nsw i32 %6, 1, !dbg !86
  store i32 %sub, i32* %.capture_expr., align 4, !dbg !85, !tbaa !23
  %7 = bitcast i32* %.capture_expr.1 to i8*, !dbg !84
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #5, !dbg !84
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.1, metadata !75, metadata !DIExpression()), !dbg !81
  %8 = load i32, i32* %.capture_expr., align 4, !dbg !86, !tbaa !23
  %sub2 = sub nsw i32 %8, 0, !dbg !84
  %sub3 = sub nsw i32 %sub2, 1, !dbg !84
  %add = add nsw i32 %sub3, 1, !dbg !84
  %div = sdiv i32 %add, 1, !dbg !84
  %sub4 = sub nsw i32 %div, 1, !dbg !84
  store i32 %sub4, i32* %.capture_expr.1, align 4, !dbg !84, !tbaa !23
  %9 = bitcast i32* %i to i8*, !dbg !84
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #5, !dbg !84
  call void @llvm.dbg.declare(metadata i32* %i, metadata !76, metadata !DIExpression()), !dbg !81
  store i32 0, i32* %i, align 4, !dbg !87, !tbaa !23
  %10 = bitcast i32* %i to i8*, !dbg !84
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %10) #5, !dbg !84
  %11 = load i32, i32* %.capture_expr., align 4, !dbg !86, !tbaa !23
  %cmp = icmp slt i32 0, %11, !dbg !84
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end, !dbg !84

omp.precond.then:                                 ; preds = %entry
  %12 = bitcast i32* %.omp.lb to i8*, !dbg !84
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #5, !dbg !84
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !77, metadata !DIExpression()), !dbg !81
  store i32 0, i32* %.omp.lb, align 4, !dbg !88, !tbaa !23
  %13 = bitcast i32* %.omp.ub to i8*, !dbg !84
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %13) #5, !dbg !84
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !78, metadata !DIExpression()), !dbg !81
  %14 = load i32, i32* %.capture_expr.1, align 4, !dbg !84, !tbaa !23
  store i32 %14, i32* %.omp.ub, align 4, !dbg !88, !tbaa !23
  %15 = bitcast i32* %.omp.stride to i8*, !dbg !84
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %15) #5, !dbg !84
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !79, metadata !DIExpression()), !dbg !81
  store i32 1, i32* %.omp.stride, align 4, !dbg !88, !tbaa !23
  %16 = bitcast i32* %.omp.is_last to i8*, !dbg !84
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %16) #5, !dbg !84
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !80, metadata !DIExpression()), !dbg !81
  store i32 0, i32* %.omp.is_last, align 4, !dbg !88, !tbaa !23
  %17 = bitcast i32* %i5 to i8*, !dbg !84
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %17) #5, !dbg !84
  call void @llvm.dbg.declare(metadata i32* %i5, metadata !76, metadata !DIExpression()), !dbg !81
  %18 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !84
  store i8* getelementptr inbounds ([66 x i8], [66 x i8]* @1, i32 0, i32 0), i8** %18, align 8, !dbg !84, !tbaa !54
  %19 = load i32*, i32** %.global_tid..addr, align 8, !dbg !84
  %20 = load i32, i32* %19, align 4, !dbg !84, !tbaa !23
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %20, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !84
  %21 = load i32, i32* %.omp.ub, align 4, !dbg !88, !tbaa !23
  %22 = load i32, i32* %.capture_expr.1, align 4, !dbg !84, !tbaa !23
  %cmp6 = icmp sgt i32 %21, %22, !dbg !88
  br i1 %cmp6, label %cond.true, label %cond.false, !dbg !88

cond.true:                                        ; preds = %omp.precond.then
  %23 = load i32, i32* %.capture_expr.1, align 4, !dbg !84, !tbaa !23
  br label %cond.end, !dbg !88

cond.false:                                       ; preds = %omp.precond.then
  %24 = load i32, i32* %.omp.ub, align 4, !dbg !88, !tbaa !23
  br label %cond.end, !dbg !88

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %23, %cond.true ], [ %24, %cond.false ], !dbg !88
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !88, !tbaa !23
  %25 = load i32, i32* %.omp.lb, align 4, !dbg !88, !tbaa !23
  store i32 %25, i32* %.omp.iv, align 4, !dbg !88, !tbaa !23
  br label %omp.inner.for.cond, !dbg !84

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %26 = load i32, i32* %.omp.iv, align 4, !dbg !88, !tbaa !23
  %27 = load i32, i32* %.omp.ub, align 4, !dbg !88, !tbaa !23
  %cmp7 = icmp sle i32 %26, %27, !dbg !84
  br i1 %cmp7, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !84

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !84

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %28 = load i32, i32* %.omp.iv, align 4, !dbg !88, !tbaa !23
  %mul = mul nsw i32 %28, 1, !dbg !87
  %add8 = add nsw i32 0, %mul, !dbg !87
  store i32 %add8, i32* %i5, align 4, !dbg !87, !tbaa !23
  %29 = load i32, i32* %i5, align 4, !dbg !89, !tbaa !23
  %idxprom = sext i32 %29 to i64, !dbg !90
  %arrayidx = getelementptr inbounds [100 x i32], [100 x i32]* %3, i64 0, i64 %idxprom, !dbg !90
  %30 = load i32, i32* %arrayidx, align 4, !dbg !90, !tbaa !23
  %add9 = add nsw i32 %30, 1, !dbg !91
  %31 = load i32, i32* %i5, align 4, !dbg !92, !tbaa !23
  %add10 = add nsw i32 %31, 1, !dbg !93
  %idxprom11 = sext i32 %add10 to i64, !dbg !94
  %arrayidx12 = getelementptr inbounds [100 x i32], [100 x i32]* %3, i64 0, i64 %idxprom11, !dbg !94
  store i32 %add9, i32* %arrayidx12, align 4, !dbg !95, !tbaa !23
  br label %omp.body.continue, !dbg !94

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !96

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %32 = load i32, i32* %.omp.iv, align 4, !dbg !88, !tbaa !23
  %add13 = add nsw i32 %32, 1, !dbg !84
  store i32 %add13, i32* %.omp.iv, align 4, !dbg !84, !tbaa !23
  br label %omp.inner.for.cond, !dbg !96, !llvm.loop !97

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !96

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %33 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !96
  store i8* getelementptr inbounds ([67 x i8], [67 x i8]* @2, i32 0, i32 0), i8** %33, align 8, !dbg !96, !tbaa !54
  %34 = load i32*, i32** %.global_tid..addr, align 8, !dbg !96
  %35 = load i32, i32* %34, align 4, !dbg !96, !tbaa !23
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %35), !dbg !96
  %36 = bitcast i32* %i5 to i8*, !dbg !96
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %36) #5, !dbg !96
  %37 = bitcast i32* %.omp.is_last to i8*, !dbg !96
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %37) #5, !dbg !96
  %38 = bitcast i32* %.omp.stride to i8*, !dbg !96
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %38) #5, !dbg !96
  %39 = bitcast i32* %.omp.ub to i8*, !dbg !96
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %39) #5, !dbg !96
  %40 = bitcast i32* %.omp.lb to i8*, !dbg !96
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %40) #5, !dbg !96
  br label %omp.precond.end, !dbg !96

omp.precond.end:                                  ; preds = %omp.loop.exit, %entry
  %41 = bitcast i32* %.capture_expr.1 to i8*, !dbg !96
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %41) #5, !dbg !96
  %42 = bitcast i32* %.capture_expr. to i8*, !dbg !96
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %42) #5, !dbg !96
  %43 = bitcast i32* %.omp.iv to i8*, !dbg !96
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %43) #5, !dbg !96
  ret void, !dbg !99
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %len, [100 x i32]* dereferenceable(400) %a) #3 !dbg !100 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %a.addr = alloca [100 x i32]*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !28
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !102, metadata !DIExpression()), !dbg !106
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !28
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !103, metadata !DIExpression()), !dbg !106
  store i32* %len, i32** %len.addr, align 8, !tbaa !28
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !104, metadata !DIExpression()), !dbg !106
  store [100 x i32]* %a, [100 x i32]** %a.addr, align 8, !tbaa !28
  call void @llvm.dbg.declare(metadata [100 x i32]** %a.addr, metadata !105, metadata !DIExpression()), !dbg !106
  %0 = load i32*, i32** %len.addr, align 8, !dbg !107, !tbaa !28
  %1 = load [100 x i32]*, [100 x i32]** %a.addr, align 8, !dbg !107, !tbaa !28
  %2 = load i32*, i32** %.global_tid..addr, align 8, !dbg !107, !tbaa !28
  %3 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !107, !tbaa !28
  %4 = load i32*, i32** %len.addr, align 8, !dbg !107, !tbaa !28
  %5 = load [100 x i32]*, [100 x i32]** %a.addr, align 8, !dbg !107, !tbaa !28
  call void @.omp_outlined._debug__(i32* %2, i32* %3, i32* %4, [100 x i32]* %5) #5, !dbg !107
  ret void, !dbg !107
}

declare !callback !108 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

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
!1 = !DIFile(filename: "integration/dataracebench/DRB029-truedep1-orig-yes.c", directory: "/home/brad/Code/OpenRace/tests/data")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.1 "}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 53, type: !8, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !14)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !10, !11}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!14 = !{!15, !16, !17, !18, !19}
!15 = !DILocalVariable(name: "argc", arg: 1, scope: !7, file: !1, line: 53, type: !10)
!16 = !DILocalVariable(name: "argv", arg: 2, scope: !7, file: !1, line: 53, type: !11)
!17 = !DILocalVariable(name: "i", scope: !7, file: !1, line: 55, type: !10)
!18 = !DILocalVariable(name: "len", scope: !7, file: !1, line: 56, type: !10)
!19 = !DILocalVariable(name: "a", scope: !7, file: !1, line: 57, type: !20)
!20 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 3200, elements: !21)
!21 = !{!22}
!22 = !DISubrange(count: 100)
!23 = !{!24, !24, i64 0}
!24 = !{!"int", !25, i64 0}
!25 = !{!"omnipotent char", !26, i64 0}
!26 = !{!"Simple C/C++ TBAA"}
!27 = !DILocation(line: 53, column: 14, scope: !7)
!28 = !{!29, !29, i64 0}
!29 = !{!"any pointer", !25, i64 0}
!30 = !DILocation(line: 53, column: 26, scope: !7)
!31 = !DILocation(line: 55, column: 3, scope: !7)
!32 = !DILocation(line: 55, column: 7, scope: !7)
!33 = !DILocation(line: 56, column: 3, scope: !7)
!34 = !DILocation(line: 56, column: 7, scope: !7)
!35 = !DILocation(line: 57, column: 3, scope: !7)
!36 = !DILocation(line: 57, column: 7, scope: !7)
!37 = !DILocation(line: 59, column: 9, scope: !38)
!38 = distinct !DILexicalBlock(scope: !7, file: !1, line: 59, column: 3)
!39 = !DILocation(line: 59, column: 8, scope: !38)
!40 = !DILocation(line: 59, column: 12, scope: !41)
!41 = distinct !DILexicalBlock(scope: !38, file: !1, line: 59, column: 3)
!42 = !DILocation(line: 59, column: 14, scope: !41)
!43 = !DILocation(line: 59, column: 13, scope: !41)
!44 = !DILocation(line: 59, column: 3, scope: !38)
!45 = !DILocation(line: 60, column: 10, scope: !41)
!46 = !DILocation(line: 60, column: 7, scope: !41)
!47 = !DILocation(line: 60, column: 5, scope: !41)
!48 = !DILocation(line: 60, column: 9, scope: !41)
!49 = !DILocation(line: 59, column: 19, scope: !41)
!50 = !DILocation(line: 59, column: 3, scope: !41)
!51 = distinct !{!51, !44, !52}
!52 = !DILocation(line: 60, column: 10, scope: !38)
!53 = !DILocation(line: 62, column: 1, scope: !7)
!54 = !{!55, !29, i64 16}
!55 = !{!"ident_t", !24, i64 0, !24, i64 4, !24, i64 8, !24, i64 12, !29, i64 16}
!56 = !DILocation(line: 66, column: 24, scope: !7)
!57 = !DILocation(line: 66, column: 3, scope: !7)
!58 = !DILocation(line: 68, column: 1, scope: !7)
!59 = !DILocation(line: 67, column: 3, scope: !7)
!60 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 63, type: !61, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !69)
!61 = !DISubroutineType(types: !62)
!62 = !{null, !63, !63, !67, !68}
!63 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !64)
!64 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !65)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!67 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !10, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !20, size: 64)
!69 = !{!70, !71, !72, !73, !74, !75, !75, !76, !77, !78, !79, !80, !76}
!70 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !60, type: !63, flags: DIFlagArtificial)
!71 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !60, type: !63, flags: DIFlagArtificial)
!72 = !DILocalVariable(name: "len", arg: 3, scope: !60, file: !1, line: 56, type: !67)
!73 = !DILocalVariable(name: "a", arg: 4, scope: !60, file: !1, line: 57, type: !68)
!74 = !DILocalVariable(name: ".omp.iv", scope: !60, type: !10, flags: DIFlagArtificial)
!75 = !DILocalVariable(name: ".capture_expr.", scope: !60, type: !10, flags: DIFlagArtificial)
!76 = !DILocalVariable(name: "i", scope: !60, type: !10, flags: DIFlagArtificial)
!77 = !DILocalVariable(name: ".omp.lb", scope: !60, type: !10, flags: DIFlagArtificial)
!78 = !DILocalVariable(name: ".omp.ub", scope: !60, type: !10, flags: DIFlagArtificial)
!79 = !DILocalVariable(name: ".omp.stride", scope: !60, type: !10, flags: DIFlagArtificial)
!80 = !DILocalVariable(name: ".omp.is_last", scope: !60, type: !10, flags: DIFlagArtificial)
!81 = !DILocation(line: 0, scope: !60)
!82 = !DILocation(line: 56, column: 7, scope: !60)
!83 = !DILocation(line: 57, column: 7, scope: !60)
!84 = !DILocation(line: 63, column: 3, scope: !60)
!85 = !DILocation(line: 63, column: 14, scope: !60)
!86 = !DILocation(line: 63, column: 17, scope: !60)
!87 = !DILocation(line: 63, column: 20, scope: !60)
!88 = !DILocation(line: 63, column: 8, scope: !60)
!89 = !DILocation(line: 64, column: 14, scope: !60)
!90 = !DILocation(line: 64, column: 12, scope: !60)
!91 = !DILocation(line: 64, column: 16, scope: !60)
!92 = !DILocation(line: 64, column: 7, scope: !60)
!93 = !DILocation(line: 64, column: 8, scope: !60)
!94 = !DILocation(line: 64, column: 5, scope: !60)
!95 = !DILocation(line: 64, column: 11, scope: !60)
!96 = !DILocation(line: 62, column: 1, scope: !60)
!97 = distinct !{!97, !96, !98}
!98 = !DILocation(line: 62, column: 25, scope: !60)
!99 = !DILocation(line: 64, column: 17, scope: !60)
!100 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 63, type: !61, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !101)
!101 = !{!102, !103, !104, !105}
!102 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !100, type: !63, flags: DIFlagArtificial)
!103 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !100, type: !63, flags: DIFlagArtificial)
!104 = !DILocalVariable(name: "len", arg: 3, scope: !100, type: !67, flags: DIFlagArtificial)
!105 = !DILocalVariable(name: "a", arg: 4, scope: !100, type: !68, flags: DIFlagArtificial)
!106 = !DILocation(line: 0, scope: !100)
!107 = !DILocation(line: 63, column: 3, scope: !100)
!108 = !{!109}
!109 = !{i64 2, i64 -1, i64 -1, i1 true}
