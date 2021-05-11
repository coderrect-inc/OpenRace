; ModuleID = 'integration/dataracebench/DRB028-privatemissing-orig-yes.c'
source_filename = "integration/dataracebench/DRB028-privatemissing-orig-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [72 x i8] c";integration/dataracebench/DRB028-privatemissing-orig-yes.c;main;62;1;;\00", align 1
@2 = private unnamed_addr constant [73 x i8] c";integration/dataracebench/DRB028-privatemissing-orig-yes.c;main;62;25;;\00", align 1
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
  %4 = bitcast i32* %len to i8*, !dbg !36
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #5, !dbg !36
  call void @llvm.dbg.declare(metadata i32* %len, metadata !19, metadata !DIExpression()), !dbg !37
  store i32 100, i32* %len, align 4, !dbg !37, !tbaa !24
  %5 = bitcast [100 x i32]* %a to i8*, !dbg !38
  call void @llvm.lifetime.start.p0i8(i64 400, i8* %5) #5, !dbg !38
  call void @llvm.dbg.declare(metadata [100 x i32]* %a, metadata !20, metadata !DIExpression()), !dbg !39
  store i32 0, i32* %i, align 4, !dbg !40, !tbaa !24
  br label %for.cond, !dbg !42

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, i32* %i, align 4, !dbg !43, !tbaa !24
  %7 = load i32, i32* %len, align 4, !dbg !45, !tbaa !24
  %cmp = icmp slt i32 %6, %7, !dbg !46
  br i1 %cmp, label %for.body, label %for.end, !dbg !47

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %i, align 4, !dbg !48, !tbaa !24
  %9 = load i32, i32* %i, align 4, !dbg !49, !tbaa !24
  %idxprom = sext i32 %9 to i64, !dbg !50
  %arrayidx = getelementptr inbounds [100 x i32], [100 x i32]* %a, i64 0, i64 %idxprom, !dbg !50
  store i32 %8, i32* %arrayidx, align 4, !dbg !51, !tbaa !24
  br label %for.inc, !dbg !50

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4, !dbg !52, !tbaa !24
  %inc = add nsw i32 %10, 1, !dbg !52
  store i32 %inc, i32* %i, align 4, !dbg !52, !tbaa !24
  br label %for.cond, !dbg !53, !llvm.loop !54

for.end:                                          ; preds = %for.cond
  %11 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !56
  store i8* getelementptr inbounds ([72 x i8], [72 x i8]* @1, i32 0, i32 0), i8** %11, align 8, !dbg !56, !tbaa !57
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*, [100 x i32]*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %len, i32* %tmp, [100 x i32]* %a), !dbg !56
  %arrayidx1 = getelementptr inbounds [100 x i32], [100 x i32]* %a, i64 0, i64 50, !dbg !59
  %12 = load i32, i32* %arrayidx1, align 8, !dbg !59, !tbaa !24
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %12), !dbg !60
  %13 = bitcast [100 x i32]* %a to i8*, !dbg !61
  call void @llvm.lifetime.end.p0i8(i64 400, i8* %13) #5, !dbg !61
  %14 = bitcast i32* %len to i8*, !dbg !61
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %14) #5, !dbg !61
  %15 = bitcast i32* %tmp to i8*, !dbg !61
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %15) #5, !dbg !61
  %16 = bitcast i32* %i to i8*, !dbg !61
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %16) #5, !dbg !61
  ret i32 0, !dbg !62
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %len, i32* dereferenceable(4) %tmp, [100 x i32]* dereferenceable(400) %a) #3 !dbg !63 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %tmp.addr = alloca i32*, align 8
  %a.addr = alloca [100 x i32]*, align 8
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
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !73, metadata !DIExpression()), !dbg !85
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !29
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !74, metadata !DIExpression()), !dbg !85
  store i32* %len, i32** %len.addr, align 8, !tbaa !29
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !75, metadata !DIExpression()), !dbg !86
  store i32* %tmp, i32** %tmp.addr, align 8, !tbaa !29
  call void @llvm.dbg.declare(metadata i32** %tmp.addr, metadata !76, metadata !DIExpression()), !dbg !87
  store [100 x i32]* %a, [100 x i32]** %a.addr, align 8, !tbaa !29
  call void @llvm.dbg.declare(metadata [100 x i32]** %a.addr, metadata !77, metadata !DIExpression()), !dbg !88
  %2 = load i32*, i32** %len.addr, align 8, !dbg !89, !tbaa !29
  %3 = load i32*, i32** %tmp.addr, align 8, !dbg !89, !tbaa !29
  %4 = load [100 x i32]*, [100 x i32]** %a.addr, align 8, !dbg !89, !tbaa !29
  %5 = bitcast i32* %.omp.iv to i8*, !dbg !89
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #5, !dbg !89
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !78, metadata !DIExpression()), !dbg !85
  %6 = bitcast i32* %.capture_expr. to i8*, !dbg !89
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #5, !dbg !89
  call void @llvm.dbg.declare(metadata i32* %.capture_expr., metadata !79, metadata !DIExpression()), !dbg !85
  %7 = load i32, i32* %2, align 4, !dbg !90, !tbaa !24
  store i32 %7, i32* %.capture_expr., align 4, !dbg !90, !tbaa !24
  %8 = bitcast i32* %.capture_expr.2 to i8*, !dbg !89
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #5, !dbg !89
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.2, metadata !79, metadata !DIExpression()), !dbg !85
  %9 = load i32, i32* %.capture_expr., align 4, !dbg !90, !tbaa !24
  %sub = sub nsw i32 %9, 0, !dbg !89
  %sub3 = sub nsw i32 %sub, 1, !dbg !89
  %add = add nsw i32 %sub3, 1, !dbg !89
  %div = sdiv i32 %add, 1, !dbg !89
  %sub4 = sub nsw i32 %div, 1, !dbg !89
  store i32 %sub4, i32* %.capture_expr.2, align 4, !dbg !89, !tbaa !24
  %10 = bitcast i32* %i to i8*, !dbg !89
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #5, !dbg !89
  call void @llvm.dbg.declare(metadata i32* %i, metadata !80, metadata !DIExpression()), !dbg !85
  store i32 0, i32* %i, align 4, !dbg !91, !tbaa !24
  %11 = bitcast i32* %i to i8*, !dbg !89
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %11) #5, !dbg !89
  %12 = load i32, i32* %.capture_expr., align 4, !dbg !90, !tbaa !24
  %cmp = icmp slt i32 0, %12, !dbg !89
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end, !dbg !89

omp.precond.then:                                 ; preds = %entry
  %13 = bitcast i32* %.omp.lb to i8*, !dbg !89
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %13) #5, !dbg !89
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !81, metadata !DIExpression()), !dbg !85
  store i32 0, i32* %.omp.lb, align 4, !dbg !92, !tbaa !24
  %14 = bitcast i32* %.omp.ub to i8*, !dbg !89
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %14) #5, !dbg !89
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !82, metadata !DIExpression()), !dbg !85
  %15 = load i32, i32* %.capture_expr.2, align 4, !dbg !89, !tbaa !24
  store i32 %15, i32* %.omp.ub, align 4, !dbg !92, !tbaa !24
  %16 = bitcast i32* %.omp.stride to i8*, !dbg !89
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %16) #5, !dbg !89
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !83, metadata !DIExpression()), !dbg !85
  store i32 1, i32* %.omp.stride, align 4, !dbg !92, !tbaa !24
  %17 = bitcast i32* %.omp.is_last to i8*, !dbg !89
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %17) #5, !dbg !89
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !84, metadata !DIExpression()), !dbg !85
  store i32 0, i32* %.omp.is_last, align 4, !dbg !92, !tbaa !24
  %18 = bitcast i32* %i5 to i8*, !dbg !89
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %18) #5, !dbg !89
  call void @llvm.dbg.declare(metadata i32* %i5, metadata !80, metadata !DIExpression()), !dbg !85
  %19 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !89
  store i8* getelementptr inbounds ([72 x i8], [72 x i8]* @1, i32 0, i32 0), i8** %19, align 8, !dbg !89, !tbaa !57
  %20 = load i32*, i32** %.global_tid..addr, align 8, !dbg !89
  %21 = load i32, i32* %20, align 4, !dbg !89, !tbaa !24
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %21, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !89
  %22 = load i32, i32* %.omp.ub, align 4, !dbg !92, !tbaa !24
  %23 = load i32, i32* %.capture_expr.2, align 4, !dbg !89, !tbaa !24
  %cmp6 = icmp sgt i32 %22, %23, !dbg !92
  br i1 %cmp6, label %cond.true, label %cond.false, !dbg !92

cond.true:                                        ; preds = %omp.precond.then
  %24 = load i32, i32* %.capture_expr.2, align 4, !dbg !89, !tbaa !24
  br label %cond.end, !dbg !92

cond.false:                                       ; preds = %omp.precond.then
  %25 = load i32, i32* %.omp.ub, align 4, !dbg !92, !tbaa !24
  br label %cond.end, !dbg !92

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %24, %cond.true ], [ %25, %cond.false ], !dbg !92
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !92, !tbaa !24
  %26 = load i32, i32* %.omp.lb, align 4, !dbg !92, !tbaa !24
  store i32 %26, i32* %.omp.iv, align 4, !dbg !92, !tbaa !24
  br label %omp.inner.for.cond, !dbg !89

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %27 = load i32, i32* %.omp.iv, align 4, !dbg !92, !tbaa !24
  %28 = load i32, i32* %.omp.ub, align 4, !dbg !92, !tbaa !24
  %cmp7 = icmp sle i32 %27, %28, !dbg !89
  br i1 %cmp7, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !89

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !89

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %29 = load i32, i32* %.omp.iv, align 4, !dbg !92, !tbaa !24
  %mul = mul nsw i32 %29, 1, !dbg !91
  %add8 = add nsw i32 0, %mul, !dbg !91
  store i32 %add8, i32* %i5, align 4, !dbg !91, !tbaa !24
  %30 = load i32, i32* %i5, align 4, !dbg !93, !tbaa !24
  %idxprom = sext i32 %30 to i64, !dbg !95
  %arrayidx = getelementptr inbounds [100 x i32], [100 x i32]* %4, i64 0, i64 %idxprom, !dbg !95
  %31 = load i32, i32* %arrayidx, align 4, !dbg !95, !tbaa !24
  %32 = load i32, i32* %i5, align 4, !dbg !96, !tbaa !24
  %add9 = add nsw i32 %31, %32, !dbg !97
  store i32 %add9, i32* %3, align 4, !dbg !98, !tbaa !24
  %33 = load i32, i32* %3, align 4, !dbg !99, !tbaa !24
  %34 = load i32, i32* %i5, align 4, !dbg !100, !tbaa !24
  %idxprom10 = sext i32 %34 to i64, !dbg !101
  %arrayidx11 = getelementptr inbounds [100 x i32], [100 x i32]* %4, i64 0, i64 %idxprom10, !dbg !101
  store i32 %33, i32* %arrayidx11, align 4, !dbg !102, !tbaa !24
  br label %omp.body.continue, !dbg !103

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !104

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %35 = load i32, i32* %.omp.iv, align 4, !dbg !92, !tbaa !24
  %add12 = add nsw i32 %35, 1, !dbg !89
  store i32 %add12, i32* %.omp.iv, align 4, !dbg !89, !tbaa !24
  br label %omp.inner.for.cond, !dbg !104, !llvm.loop !105

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !104

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %36 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !104
  store i8* getelementptr inbounds ([73 x i8], [73 x i8]* @2, i32 0, i32 0), i8** %36, align 8, !dbg !104, !tbaa !57
  %37 = load i32*, i32** %.global_tid..addr, align 8, !dbg !104
  %38 = load i32, i32* %37, align 4, !dbg !104, !tbaa !24
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %38), !dbg !104
  %39 = bitcast i32* %i5 to i8*, !dbg !104
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %39) #5, !dbg !104
  %40 = bitcast i32* %.omp.is_last to i8*, !dbg !104
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %40) #5, !dbg !104
  %41 = bitcast i32* %.omp.stride to i8*, !dbg !104
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %41) #5, !dbg !104
  %42 = bitcast i32* %.omp.ub to i8*, !dbg !104
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %42) #5, !dbg !104
  %43 = bitcast i32* %.omp.lb to i8*, !dbg !104
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %43) #5, !dbg !104
  br label %omp.precond.end, !dbg !104

omp.precond.end:                                  ; preds = %omp.loop.exit, %entry
  %44 = bitcast i32* %.capture_expr.2 to i8*, !dbg !104
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %44) #5, !dbg !104
  %45 = bitcast i32* %.capture_expr. to i8*, !dbg !104
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %45) #5, !dbg !104
  %46 = bitcast i32* %.omp.iv to i8*, !dbg !104
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %46) #5, !dbg !104
  ret void, !dbg !107
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %len, i32* dereferenceable(4) %tmp, [100 x i32]* dereferenceable(400) %a) #3 !dbg !108 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %tmp.addr = alloca i32*, align 8
  %a.addr = alloca [100 x i32]*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !29
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !110, metadata !DIExpression()), !dbg !115
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !29
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !111, metadata !DIExpression()), !dbg !115
  store i32* %len, i32** %len.addr, align 8, !tbaa !29
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !112, metadata !DIExpression()), !dbg !115
  store i32* %tmp, i32** %tmp.addr, align 8, !tbaa !29
  call void @llvm.dbg.declare(metadata i32** %tmp.addr, metadata !113, metadata !DIExpression()), !dbg !115
  store [100 x i32]* %a, [100 x i32]** %a.addr, align 8, !tbaa !29
  call void @llvm.dbg.declare(metadata [100 x i32]** %a.addr, metadata !114, metadata !DIExpression()), !dbg !115
  %0 = load i32*, i32** %len.addr, align 8, !dbg !116, !tbaa !29
  %1 = load i32*, i32** %tmp.addr, align 8, !dbg !116, !tbaa !29
  %2 = load [100 x i32]*, [100 x i32]** %a.addr, align 8, !dbg !116, !tbaa !29
  %3 = load i32*, i32** %.global_tid..addr, align 8, !dbg !116, !tbaa !29
  %4 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !116, !tbaa !29
  %5 = load i32*, i32** %len.addr, align 8, !dbg !116, !tbaa !29
  %6 = load i32*, i32** %tmp.addr, align 8, !dbg !116, !tbaa !29
  %7 = load [100 x i32]*, [100 x i32]** %a.addr, align 8, !dbg !116, !tbaa !29
  call void @.omp_outlined._debug__(i32* %3, i32* %4, i32* %5, i32* %6, [100 x i32]* %7) #5, !dbg !116
  ret void, !dbg !116
}

declare !callback !117 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

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
!1 = !DIFile(filename: "integration/dataracebench/DRB028-privatemissing-orig-yes.c", directory: "/home/brad/Code/OpenRace/tests/data")
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
!14 = !{!15, !16, !17, !18, !19, !20}
!15 = !DILocalVariable(name: "argc", arg: 1, scope: !7, file: !1, line: 53, type: !10)
!16 = !DILocalVariable(name: "argv", arg: 2, scope: !7, file: !1, line: 53, type: !11)
!17 = !DILocalVariable(name: "i", scope: !7, file: !1, line: 55, type: !10)
!18 = !DILocalVariable(name: "tmp", scope: !7, file: !1, line: 56, type: !10)
!19 = !DILocalVariable(name: "len", scope: !7, file: !1, line: 57, type: !10)
!20 = !DILocalVariable(name: "a", scope: !7, file: !1, line: 58, type: !21)
!21 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 3200, elements: !22)
!22 = !{!23}
!23 = !DISubrange(count: 100)
!24 = !{!25, !25, i64 0}
!25 = !{!"int", !26, i64 0}
!26 = !{!"omnipotent char", !27, i64 0}
!27 = !{!"Simple C/C++ TBAA"}
!28 = !DILocation(line: 53, column: 14, scope: !7)
!29 = !{!30, !30, i64 0}
!30 = !{!"any pointer", !26, i64 0}
!31 = !DILocation(line: 53, column: 26, scope: !7)
!32 = !DILocation(line: 55, column: 3, scope: !7)
!33 = !DILocation(line: 55, column: 7, scope: !7)
!34 = !DILocation(line: 56, column: 3, scope: !7)
!35 = !DILocation(line: 56, column: 7, scope: !7)
!36 = !DILocation(line: 57, column: 3, scope: !7)
!37 = !DILocation(line: 57, column: 7, scope: !7)
!38 = !DILocation(line: 58, column: 3, scope: !7)
!39 = !DILocation(line: 58, column: 7, scope: !7)
!40 = !DILocation(line: 59, column: 9, scope: !41)
!41 = distinct !DILexicalBlock(scope: !7, file: !1, line: 59, column: 3)
!42 = !DILocation(line: 59, column: 8, scope: !41)
!43 = !DILocation(line: 59, column: 12, scope: !44)
!44 = distinct !DILexicalBlock(scope: !41, file: !1, line: 59, column: 3)
!45 = !DILocation(line: 59, column: 14, scope: !44)
!46 = !DILocation(line: 59, column: 13, scope: !44)
!47 = !DILocation(line: 59, column: 3, scope: !41)
!48 = !DILocation(line: 60, column: 10, scope: !44)
!49 = !DILocation(line: 60, column: 7, scope: !44)
!50 = !DILocation(line: 60, column: 5, scope: !44)
!51 = !DILocation(line: 60, column: 9, scope: !44)
!52 = !DILocation(line: 59, column: 19, scope: !44)
!53 = !DILocation(line: 59, column: 3, scope: !44)
!54 = distinct !{!54, !47, !55}
!55 = !DILocation(line: 60, column: 10, scope: !41)
!56 = !DILocation(line: 62, column: 1, scope: !7)
!57 = !{!58, !30, i64 16}
!58 = !{!"ident_t", !25, i64 0, !25, i64 4, !25, i64 8, !25, i64 12, !30, i64 16}
!59 = !DILocation(line: 69, column: 24, scope: !7)
!60 = !DILocation(line: 69, column: 3, scope: !7)
!61 = !DILocation(line: 71, column: 1, scope: !7)
!62 = !DILocation(line: 70, column: 3, scope: !7)
!63 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 63, type: !64, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !72)
!64 = !DISubroutineType(types: !65)
!65 = !{null, !66, !66, !70, !70, !71}
!66 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !67)
!67 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !68)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!70 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !10, size: 64)
!71 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !21, size: 64)
!72 = !{!73, !74, !75, !76, !77, !78, !79, !79, !80, !81, !82, !83, !84, !80}
!73 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !63, type: !66, flags: DIFlagArtificial)
!74 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !63, type: !66, flags: DIFlagArtificial)
!75 = !DILocalVariable(name: "len", arg: 3, scope: !63, file: !1, line: 57, type: !70)
!76 = !DILocalVariable(name: "tmp", arg: 4, scope: !63, file: !1, line: 56, type: !70)
!77 = !DILocalVariable(name: "a", arg: 5, scope: !63, file: !1, line: 58, type: !71)
!78 = !DILocalVariable(name: ".omp.iv", scope: !63, type: !10, flags: DIFlagArtificial)
!79 = !DILocalVariable(name: ".capture_expr.", scope: !63, type: !10, flags: DIFlagArtificial)
!80 = !DILocalVariable(name: "i", scope: !63, type: !10, flags: DIFlagArtificial)
!81 = !DILocalVariable(name: ".omp.lb", scope: !63, type: !10, flags: DIFlagArtificial)
!82 = !DILocalVariable(name: ".omp.ub", scope: !63, type: !10, flags: DIFlagArtificial)
!83 = !DILocalVariable(name: ".omp.stride", scope: !63, type: !10, flags: DIFlagArtificial)
!84 = !DILocalVariable(name: ".omp.is_last", scope: !63, type: !10, flags: DIFlagArtificial)
!85 = !DILocation(line: 0, scope: !63)
!86 = !DILocation(line: 57, column: 7, scope: !63)
!87 = !DILocation(line: 56, column: 7, scope: !63)
!88 = !DILocation(line: 58, column: 7, scope: !63)
!89 = !DILocation(line: 63, column: 3, scope: !63)
!90 = !DILocation(line: 63, column: 14, scope: !63)
!91 = !DILocation(line: 63, column: 18, scope: !63)
!92 = !DILocation(line: 63, column: 8, scope: !63)
!93 = !DILocation(line: 65, column: 12, scope: !94)
!94 = distinct !DILexicalBlock(scope: !63, file: !1, line: 64, column: 3)
!95 = !DILocation(line: 65, column: 10, scope: !94)
!96 = !DILocation(line: 65, column: 15, scope: !94)
!97 = !DILocation(line: 65, column: 14, scope: !94)
!98 = !DILocation(line: 65, column: 9, scope: !94)
!99 = !DILocation(line: 66, column: 12, scope: !94)
!100 = !DILocation(line: 66, column: 7, scope: !94)
!101 = !DILocation(line: 66, column: 5, scope: !94)
!102 = !DILocation(line: 66, column: 10, scope: !94)
!103 = !DILocation(line: 67, column: 3, scope: !94)
!104 = !DILocation(line: 62, column: 1, scope: !63)
!105 = distinct !{!105, !104, !106}
!106 = !DILocation(line: 62, column: 25, scope: !63)
!107 = !DILocation(line: 67, column: 3, scope: !63)
!108 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 63, type: !64, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !109)
!109 = !{!110, !111, !112, !113, !114}
!110 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !108, type: !66, flags: DIFlagArtificial)
!111 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !108, type: !66, flags: DIFlagArtificial)
!112 = !DILocalVariable(name: "len", arg: 3, scope: !108, type: !70, flags: DIFlagArtificial)
!113 = !DILocalVariable(name: "tmp", arg: 4, scope: !108, type: !70, flags: DIFlagArtificial)
!114 = !DILocalVariable(name: "a", arg: 5, scope: !108, type: !71, flags: DIFlagArtificial)
!115 = !DILocation(line: 0, scope: !108)
!116 = !DILocation(line: 63, column: 3, scope: !108)
!117 = !{!118}
!118 = !{i64 2, i64 -1, i64 -1, i1 true}
