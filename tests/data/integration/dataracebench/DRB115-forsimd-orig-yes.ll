; ModuleID = 'integration/dataracebench/DRB115-forsimd-orig-yes.c'
source_filename = "integration/dataracebench/DRB115-forsimd-orig-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [65 x i8] c";integration/dataracebench/DRB115-forsimd-orig-yes.c;main;64;1;;\00", align 1
@2 = private unnamed_addr constant [66 x i8] c";integration/dataracebench/DRB115-forsimd-orig-yes.c;main;64;31;;\00", align 1
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
  %b = alloca [100 x i32], align 16
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
  %3 = bitcast i32* %len to i8*, !dbg !34
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #5, !dbg !34
  call void @llvm.dbg.declare(metadata i32* %len, metadata !18, metadata !DIExpression()), !dbg !35
  store i32 100, i32* %len, align 4, !dbg !35, !tbaa !24
  %4 = bitcast [100 x i32]* %a to i8*, !dbg !36
  call void @llvm.lifetime.start.p0i8(i64 400, i8* %4) #5, !dbg !36
  call void @llvm.dbg.declare(metadata [100 x i32]* %a, metadata !19, metadata !DIExpression()), !dbg !37
  %5 = bitcast [100 x i32]* %b to i8*, !dbg !36
  call void @llvm.lifetime.start.p0i8(i64 400, i8* %5) #5, !dbg !36
  call void @llvm.dbg.declare(metadata [100 x i32]* %b, metadata !23, metadata !DIExpression()), !dbg !38
  store i32 0, i32* %i, align 4, !dbg !39, !tbaa !24
  br label %for.cond, !dbg !41

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, i32* %i, align 4, !dbg !42, !tbaa !24
  %7 = load i32, i32* %len, align 4, !dbg !44, !tbaa !24
  %cmp = icmp slt i32 %6, %7, !dbg !45
  br i1 %cmp, label %for.body, label %for.end, !dbg !46

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* %i, align 4, !dbg !47, !tbaa !24
  %9 = load i32, i32* %i, align 4, !dbg !49, !tbaa !24
  %idxprom = sext i32 %9 to i64, !dbg !50
  %arrayidx = getelementptr inbounds [100 x i32], [100 x i32]* %a, i64 0, i64 %idxprom, !dbg !50
  store i32 %8, i32* %arrayidx, align 4, !dbg !51, !tbaa !24
  %10 = load i32, i32* %i, align 4, !dbg !52, !tbaa !24
  %add = add nsw i32 %10, 1, !dbg !53
  %11 = load i32, i32* %i, align 4, !dbg !54, !tbaa !24
  %idxprom1 = sext i32 %11 to i64, !dbg !55
  %arrayidx2 = getelementptr inbounds [100 x i32], [100 x i32]* %b, i64 0, i64 %idxprom1, !dbg !55
  store i32 %add, i32* %arrayidx2, align 4, !dbg !56, !tbaa !24
  br label %for.inc, !dbg !57

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4, !dbg !58, !tbaa !24
  %inc = add nsw i32 %12, 1, !dbg !58
  store i32 %inc, i32* %i, align 4, !dbg !58, !tbaa !24
  br label %for.cond, !dbg !59, !llvm.loop !60

for.end:                                          ; preds = %for.cond
  %13 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !62
  store i8* getelementptr inbounds ([65 x i8], [65 x i8]* @1, i32 0, i32 0), i8** %13, align 8, !dbg !62, !tbaa !63
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 4, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*, [100 x i32]*, [100 x i32]*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %i, i32* %len, [100 x i32]* %a, [100 x i32]* %b), !dbg !62
  %arrayidx3 = getelementptr inbounds [100 x i32], [100 x i32]* %a, i64 0, i64 50, !dbg !65
  %14 = load i32, i32* %arrayidx3, align 8, !dbg !65, !tbaa !24
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %14), !dbg !66
  %15 = bitcast [100 x i32]* %b to i8*, !dbg !67
  call void @llvm.lifetime.end.p0i8(i64 400, i8* %15) #5, !dbg !67
  %16 = bitcast [100 x i32]* %a to i8*, !dbg !67
  call void @llvm.lifetime.end.p0i8(i64 400, i8* %16) #5, !dbg !67
  %17 = bitcast i32* %len to i8*, !dbg !67
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %17) #5, !dbg !67
  %18 = bitcast i32* %i to i8*, !dbg !67
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %18) #5, !dbg !67
  ret i32 0, !dbg !68
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %i, i32* dereferenceable(4) %len, [100 x i32]* dereferenceable(400) %a, [100 x i32]* dereferenceable(400) %b) #3 !dbg !69 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %i.addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %a.addr = alloca [100 x i32]*, align 8
  %b.addr = alloca [100 x i32]*, align 8
  %.omp.iv = alloca i32, align 4
  %tmp = alloca i32, align 4
  %.capture_expr. = alloca i32, align 4
  %.capture_expr.1 = alloca i32, align 4
  %i5 = alloca i32, align 4
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %i6 = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !29
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !79, metadata !DIExpression()), !dbg !92
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !29
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !80, metadata !DIExpression()), !dbg !92
  store i32* %i, i32** %i.addr, align 8, !tbaa !29
  call void @llvm.dbg.declare(metadata i32** %i.addr, metadata !81, metadata !DIExpression()), !dbg !93
  store i32* %len, i32** %len.addr, align 8, !tbaa !29
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !82, metadata !DIExpression()), !dbg !94
  store [100 x i32]* %a, [100 x i32]** %a.addr, align 8, !tbaa !29
  call void @llvm.dbg.declare(metadata [100 x i32]** %a.addr, metadata !83, metadata !DIExpression()), !dbg !95
  store [100 x i32]* %b, [100 x i32]** %b.addr, align 8, !tbaa !29
  call void @llvm.dbg.declare(metadata [100 x i32]** %b.addr, metadata !84, metadata !DIExpression()), !dbg !96
  %2 = load i32*, i32** %i.addr, align 8, !dbg !97, !tbaa !29
  %3 = load i32*, i32** %len.addr, align 8, !dbg !97, !tbaa !29
  %4 = load [100 x i32]*, [100 x i32]** %a.addr, align 8, !dbg !97, !tbaa !29
  %5 = load [100 x i32]*, [100 x i32]** %b.addr, align 8, !dbg !97, !tbaa !29
  %6 = bitcast i32* %.omp.iv to i8*, !dbg !97
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #5, !dbg !97
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !85, metadata !DIExpression()), !dbg !92
  %7 = bitcast i32* %.capture_expr. to i8*, !dbg !97
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #5, !dbg !97
  call void @llvm.dbg.declare(metadata i32* %.capture_expr., metadata !86, metadata !DIExpression()), !dbg !92
  %8 = load i32, i32* %3, align 4, !dbg !98, !tbaa !24
  %sub = sub nsw i32 %8, 1, !dbg !99
  store i32 %sub, i32* %.capture_expr., align 4, !dbg !98, !tbaa !24
  %9 = bitcast i32* %.capture_expr.1 to i8*, !dbg !97
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #5, !dbg !97
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.1, metadata !86, metadata !DIExpression()), !dbg !92
  %10 = load i32, i32* %.capture_expr., align 4, !dbg !99, !tbaa !24
  %sub2 = sub nsw i32 %10, 0, !dbg !97
  %sub3 = sub nsw i32 %sub2, 1, !dbg !97
  %add = add nsw i32 %sub3, 1, !dbg !97
  %div = sdiv i32 %add, 1, !dbg !97
  %sub4 = sub nsw i32 %div, 1, !dbg !97
  store i32 %sub4, i32* %.capture_expr.1, align 4, !dbg !97, !tbaa !24
  %11 = bitcast i32* %i5 to i8*, !dbg !97
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #5, !dbg !97
  call void @llvm.dbg.declare(metadata i32* %i5, metadata !87, metadata !DIExpression()), !dbg !92
  store i32 0, i32* %i5, align 4, !dbg !100, !tbaa !24
  %12 = bitcast i32* %i5 to i8*, !dbg !97
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %12) #5, !dbg !97
  %13 = load i32, i32* %.capture_expr., align 4, !dbg !99, !tbaa !24
  %cmp = icmp slt i32 0, %13, !dbg !97
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end, !dbg !97

omp.precond.then:                                 ; preds = %entry
  %14 = bitcast i32* %.omp.lb to i8*, !dbg !97
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %14) #5, !dbg !97
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !88, metadata !DIExpression()), !dbg !92
  store i32 0, i32* %.omp.lb, align 4, !dbg !101, !tbaa !24
  %15 = bitcast i32* %.omp.ub to i8*, !dbg !97
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %15) #5, !dbg !97
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !89, metadata !DIExpression()), !dbg !92
  %16 = load i32, i32* %.capture_expr.1, align 4, !dbg !97, !tbaa !24
  store i32 %16, i32* %.omp.ub, align 4, !dbg !101, !tbaa !24
  %17 = bitcast i32* %.omp.stride to i8*, !dbg !97
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %17) #5, !dbg !97
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !90, metadata !DIExpression()), !dbg !92
  store i32 1, i32* %.omp.stride, align 4, !dbg !101, !tbaa !24
  %18 = bitcast i32* %.omp.is_last to i8*, !dbg !97
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %18) #5, !dbg !97
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !91, metadata !DIExpression()), !dbg !92
  store i32 0, i32* %.omp.is_last, align 4, !dbg !101, !tbaa !24
  %19 = bitcast i32* %i6 to i8*, !dbg !97
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %19) #5, !dbg !97
  call void @llvm.dbg.declare(metadata i32* %i6, metadata !87, metadata !DIExpression()), !dbg !92
  %20 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !97
  store i8* getelementptr inbounds ([65 x i8], [65 x i8]* @1, i32 0, i32 0), i8** %20, align 8, !dbg !97, !tbaa !63
  %21 = load i32*, i32** %.global_tid..addr, align 8, !dbg !97
  %22 = load i32, i32* %21, align 4, !dbg !97, !tbaa !24
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %22, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !97
  %23 = load i32, i32* %.omp.ub, align 4, !dbg !101, !tbaa !24
  %24 = load i32, i32* %.capture_expr.1, align 4, !dbg !97, !tbaa !24
  %cmp7 = icmp sgt i32 %23, %24, !dbg !101
  br i1 %cmp7, label %cond.true, label %cond.false, !dbg !101

cond.true:                                        ; preds = %omp.precond.then
  %25 = load i32, i32* %.capture_expr.1, align 4, !dbg !97, !tbaa !24
  br label %cond.end, !dbg !101

cond.false:                                       ; preds = %omp.precond.then
  %26 = load i32, i32* %.omp.ub, align 4, !dbg !101, !tbaa !24
  br label %cond.end, !dbg !101

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %25, %cond.true ], [ %26, %cond.false ], !dbg !101
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !101, !tbaa !24
  %27 = load i32, i32* %.omp.lb, align 4, !dbg !101, !tbaa !24
  store i32 %27, i32* %.omp.iv, align 4, !dbg !101, !tbaa !24
  br label %omp.inner.for.cond, !dbg !97

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %28 = load i32, i32* %.omp.iv, align 4, !dbg !101, !tbaa !24
  %29 = load i32, i32* %.omp.ub, align 4, !dbg !101, !tbaa !24
  %cmp8 = icmp sle i32 %28, %29, !dbg !97
  br i1 %cmp8, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !97

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !97

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %30 = load i32, i32* %.omp.iv, align 4, !dbg !101, !tbaa !24
  %mul = mul nsw i32 %30, 1, !dbg !100
  %add9 = add nsw i32 0, %mul, !dbg !100
  store i32 %add9, i32* %i6, align 4, !dbg !100, !tbaa !24
  %31 = load i32, i32* %i6, align 4, !dbg !102, !tbaa !24
  %idxprom = sext i32 %31 to i64, !dbg !103
  %arrayidx = getelementptr inbounds [100 x i32], [100 x i32]* %4, i64 0, i64 %idxprom, !dbg !103
  %32 = load i32, i32* %arrayidx, align 4, !dbg !103, !tbaa !24
  %33 = load i32, i32* %i6, align 4, !dbg !104, !tbaa !24
  %idxprom10 = sext i32 %33 to i64, !dbg !105
  %arrayidx11 = getelementptr inbounds [100 x i32], [100 x i32]* %5, i64 0, i64 %idxprom10, !dbg !105
  %34 = load i32, i32* %arrayidx11, align 4, !dbg !105, !tbaa !24
  %add12 = add nsw i32 %32, %34, !dbg !106
  %35 = load i32, i32* %i6, align 4, !dbg !107, !tbaa !24
  %add13 = add nsw i32 %35, 1, !dbg !108
  %idxprom14 = sext i32 %add13 to i64, !dbg !109
  %arrayidx15 = getelementptr inbounds [100 x i32], [100 x i32]* %4, i64 0, i64 %idxprom14, !dbg !109
  store i32 %add12, i32* %arrayidx15, align 4, !dbg !110, !tbaa !24
  br label %omp.body.continue, !dbg !109

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !111

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %36 = load i32, i32* %.omp.iv, align 4, !dbg !101, !tbaa !24
  %add16 = add nsw i32 %36, 1, !dbg !97
  store i32 %add16, i32* %.omp.iv, align 4, !dbg !97, !tbaa !24
  br label %omp.inner.for.cond, !dbg !111, !llvm.loop !112

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !111

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %37 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !111
  store i8* getelementptr inbounds ([66 x i8], [66 x i8]* @2, i32 0, i32 0), i8** %37, align 8, !dbg !111, !tbaa !63
  %38 = load i32*, i32** %.global_tid..addr, align 8, !dbg !111
  %39 = load i32, i32* %38, align 4, !dbg !111, !tbaa !24
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %39), !dbg !111
  %40 = load i32, i32* %.omp.is_last, align 4, !dbg !111, !tbaa !24
  %41 = icmp ne i32 %40, 0, !dbg !111
  br i1 %41, label %.omp.final.then, label %.omp.final.done, !dbg !111

.omp.final.then:                                  ; preds = %omp.loop.exit
  %42 = load i32, i32* %.capture_expr., align 4, !dbg !99, !tbaa !24
  %sub17 = sub nsw i32 %42, 0, !dbg !97
  %sub18 = sub nsw i32 %sub17, 1, !dbg !97
  %add19 = add nsw i32 %sub18, 1, !dbg !97
  %div20 = sdiv i32 %add19, 1, !dbg !97
  %mul21 = mul nsw i32 %div20, 1, !dbg !100
  %add22 = add nsw i32 0, %mul21, !dbg !100
  store i32 %add22, i32* %2, align 4, !dbg !100, !tbaa !24
  br label %.omp.final.done, !dbg !111

.omp.final.done:                                  ; preds = %.omp.final.then, %omp.loop.exit
  %43 = bitcast i32* %i6 to i8*, !dbg !111
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %43) #5, !dbg !111
  %44 = bitcast i32* %.omp.is_last to i8*, !dbg !111
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %44) #5, !dbg !111
  %45 = bitcast i32* %.omp.stride to i8*, !dbg !111
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %45) #5, !dbg !111
  %46 = bitcast i32* %.omp.ub to i8*, !dbg !111
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %46) #5, !dbg !111
  %47 = bitcast i32* %.omp.lb to i8*, !dbg !111
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %47) #5, !dbg !111
  br label %omp.precond.end, !dbg !111

omp.precond.end:                                  ; preds = %.omp.final.done, %entry
  %48 = bitcast i32* %.capture_expr.1 to i8*, !dbg !111
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %48) #5, !dbg !111
  %49 = bitcast i32* %.capture_expr. to i8*, !dbg !111
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %49) #5, !dbg !111
  %50 = bitcast i32* %.omp.iv to i8*, !dbg !111
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %50) #5, !dbg !111
  ret void, !dbg !115
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %i, i32* dereferenceable(4) %len, [100 x i32]* dereferenceable(400) %a, [100 x i32]* dereferenceable(400) %b) #3 !dbg !116 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %i.addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %a.addr = alloca [100 x i32]*, align 8
  %b.addr = alloca [100 x i32]*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !29
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !118, metadata !DIExpression()), !dbg !124
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !29
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !119, metadata !DIExpression()), !dbg !124
  store i32* %i, i32** %i.addr, align 8, !tbaa !29
  call void @llvm.dbg.declare(metadata i32** %i.addr, metadata !120, metadata !DIExpression()), !dbg !124
  store i32* %len, i32** %len.addr, align 8, !tbaa !29
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !121, metadata !DIExpression()), !dbg !124
  store [100 x i32]* %a, [100 x i32]** %a.addr, align 8, !tbaa !29
  call void @llvm.dbg.declare(metadata [100 x i32]** %a.addr, metadata !122, metadata !DIExpression()), !dbg !124
  store [100 x i32]* %b, [100 x i32]** %b.addr, align 8, !tbaa !29
  call void @llvm.dbg.declare(metadata [100 x i32]** %b.addr, metadata !123, metadata !DIExpression()), !dbg !124
  %0 = load i32*, i32** %i.addr, align 8, !dbg !125, !tbaa !29
  %1 = load i32*, i32** %len.addr, align 8, !dbg !125, !tbaa !29
  %2 = load [100 x i32]*, [100 x i32]** %a.addr, align 8, !dbg !125, !tbaa !29
  %3 = load [100 x i32]*, [100 x i32]** %b.addr, align 8, !dbg !125, !tbaa !29
  %4 = load i32*, i32** %.global_tid..addr, align 8, !dbg !125, !tbaa !29
  %5 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !125, !tbaa !29
  %6 = load i32*, i32** %i.addr, align 8, !dbg !125, !tbaa !29
  %7 = load i32*, i32** %len.addr, align 8, !dbg !125, !tbaa !29
  %8 = load [100 x i32]*, [100 x i32]** %a.addr, align 8, !dbg !125, !tbaa !29
  %9 = load [100 x i32]*, [100 x i32]** %b.addr, align 8, !dbg !125, !tbaa !29
  call void @.omp_outlined._debug__(i32* %4, i32* %5, i32* %6, i32* %7, [100 x i32]* %8, [100 x i32]* %9) #5, !dbg !125
  ret void, !dbg !125
}

declare !callback !126 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

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
!1 = !DIFile(filename: "integration/dataracebench/DRB115-forsimd-orig-yes.c", directory: "/home/brad/Code/OpenRace/tests/data")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.1 "}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 52, type: !8, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !14)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !10, !11}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!14 = !{!15, !16, !17, !18, !19, !23}
!15 = !DILocalVariable(name: "argc", arg: 1, scope: !7, file: !1, line: 52, type: !10)
!16 = !DILocalVariable(name: "argv", arg: 2, scope: !7, file: !1, line: 52, type: !11)
!17 = !DILocalVariable(name: "i", scope: !7, file: !1, line: 54, type: !10)
!18 = !DILocalVariable(name: "len", scope: !7, file: !1, line: 55, type: !10)
!19 = !DILocalVariable(name: "a", scope: !7, file: !1, line: 56, type: !20)
!20 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 3200, elements: !21)
!21 = !{!22}
!22 = !DISubrange(count: 100)
!23 = !DILocalVariable(name: "b", scope: !7, file: !1, line: 56, type: !20)
!24 = !{!25, !25, i64 0}
!25 = !{!"int", !26, i64 0}
!26 = !{!"omnipotent char", !27, i64 0}
!27 = !{!"Simple C/C++ TBAA"}
!28 = !DILocation(line: 52, column: 14, scope: !7)
!29 = !{!30, !30, i64 0}
!30 = !{!"any pointer", !26, i64 0}
!31 = !DILocation(line: 52, column: 26, scope: !7)
!32 = !DILocation(line: 54, column: 3, scope: !7)
!33 = !DILocation(line: 54, column: 7, scope: !7)
!34 = !DILocation(line: 55, column: 3, scope: !7)
!35 = !DILocation(line: 55, column: 7, scope: !7)
!36 = !DILocation(line: 56, column: 3, scope: !7)
!37 = !DILocation(line: 56, column: 7, scope: !7)
!38 = !DILocation(line: 56, column: 15, scope: !7)
!39 = !DILocation(line: 58, column: 9, scope: !40)
!40 = distinct !DILexicalBlock(scope: !7, file: !1, line: 58, column: 3)
!41 = !DILocation(line: 58, column: 8, scope: !40)
!42 = !DILocation(line: 58, column: 12, scope: !43)
!43 = distinct !DILexicalBlock(scope: !40, file: !1, line: 58, column: 3)
!44 = !DILocation(line: 58, column: 14, scope: !43)
!45 = !DILocation(line: 58, column: 13, scope: !43)
!46 = !DILocation(line: 58, column: 3, scope: !40)
!47 = !DILocation(line: 60, column: 10, scope: !48)
!48 = distinct !DILexicalBlock(scope: !43, file: !1, line: 59, column: 3)
!49 = !DILocation(line: 60, column: 7, scope: !48)
!50 = !DILocation(line: 60, column: 5, scope: !48)
!51 = !DILocation(line: 60, column: 9, scope: !48)
!52 = !DILocation(line: 61, column: 10, scope: !48)
!53 = !DILocation(line: 61, column: 11, scope: !48)
!54 = !DILocation(line: 61, column: 7, scope: !48)
!55 = !DILocation(line: 61, column: 5, scope: !48)
!56 = !DILocation(line: 61, column: 9, scope: !48)
!57 = !DILocation(line: 62, column: 3, scope: !48)
!58 = !DILocation(line: 58, column: 19, scope: !43)
!59 = !DILocation(line: 58, column: 3, scope: !43)
!60 = distinct !{!60, !46, !61}
!61 = !DILocation(line: 62, column: 3, scope: !40)
!62 = !DILocation(line: 64, column: 1, scope: !7)
!63 = !{!64, !30, i64 16}
!64 = !{!"ident_t", !25, i64 0, !25, i64 4, !25, i64 8, !25, i64 12, !30, i64 16}
!65 = !DILocation(line: 68, column: 23, scope: !7)
!66 = !DILocation(line: 68, column: 3, scope: !7)
!67 = !DILocation(line: 70, column: 1, scope: !7)
!68 = !DILocation(line: 69, column: 3, scope: !7)
!69 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 65, type: !70, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !78)
!70 = !DISubroutineType(types: !71)
!71 = !{null, !72, !72, !76, !76, !77, !77}
!72 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !73)
!73 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !74)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!76 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !10, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !20, size: 64)
!78 = !{!79, !80, !81, !82, !83, !84, !85, !86, !86, !87, !88, !89, !90, !91, !87}
!79 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !69, type: !72, flags: DIFlagArtificial)
!80 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !69, type: !72, flags: DIFlagArtificial)
!81 = !DILocalVariable(name: "i", arg: 3, scope: !69, file: !1, line: 54, type: !76)
!82 = !DILocalVariable(name: "len", arg: 4, scope: !69, file: !1, line: 55, type: !76)
!83 = !DILocalVariable(name: "a", arg: 5, scope: !69, file: !1, line: 56, type: !77)
!84 = !DILocalVariable(name: "b", arg: 6, scope: !69, file: !1, line: 56, type: !77)
!85 = !DILocalVariable(name: ".omp.iv", scope: !69, type: !10, flags: DIFlagArtificial)
!86 = !DILocalVariable(name: ".capture_expr.", scope: !69, type: !10, flags: DIFlagArtificial)
!87 = !DILocalVariable(name: "i", scope: !69, type: !10, flags: DIFlagArtificial)
!88 = !DILocalVariable(name: ".omp.lb", scope: !69, type: !10, flags: DIFlagArtificial)
!89 = !DILocalVariable(name: ".omp.ub", scope: !69, type: !10, flags: DIFlagArtificial)
!90 = !DILocalVariable(name: ".omp.stride", scope: !69, type: !10, flags: DIFlagArtificial)
!91 = !DILocalVariable(name: ".omp.is_last", scope: !69, type: !10, flags: DIFlagArtificial)
!92 = !DILocation(line: 0, scope: !69)
!93 = !DILocation(line: 54, column: 7, scope: !69)
!94 = !DILocation(line: 55, column: 7, scope: !69)
!95 = !DILocation(line: 56, column: 7, scope: !69)
!96 = !DILocation(line: 56, column: 15, scope: !69)
!97 = !DILocation(line: 65, column: 3, scope: !69)
!98 = !DILocation(line: 65, column: 14, scope: !69)
!99 = !DILocation(line: 65, column: 17, scope: !69)
!100 = !DILocation(line: 65, column: 20, scope: !69)
!101 = !DILocation(line: 65, column: 8, scope: !69)
!102 = !DILocation(line: 66, column: 14, scope: !69)
!103 = !DILocation(line: 66, column: 12, scope: !69)
!104 = !DILocation(line: 66, column: 19, scope: !69)
!105 = !DILocation(line: 66, column: 17, scope: !69)
!106 = !DILocation(line: 66, column: 16, scope: !69)
!107 = !DILocation(line: 66, column: 7, scope: !69)
!108 = !DILocation(line: 66, column: 8, scope: !69)
!109 = !DILocation(line: 66, column: 5, scope: !69)
!110 = !DILocation(line: 66, column: 11, scope: !69)
!111 = !DILocation(line: 64, column: 1, scope: !69)
!112 = distinct !{!112, !111, !113, !114}
!113 = !DILocation(line: 64, column: 31, scope: !69)
!114 = !{!"llvm.loop.vectorize.enable", i1 true}
!115 = !DILocation(line: 66, column: 20, scope: !69)
!116 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 65, type: !70, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !117)
!117 = !{!118, !119, !120, !121, !122, !123}
!118 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !116, type: !72, flags: DIFlagArtificial)
!119 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !116, type: !72, flags: DIFlagArtificial)
!120 = !DILocalVariable(name: "i", arg: 3, scope: !116, type: !76, flags: DIFlagArtificial)
!121 = !DILocalVariable(name: "len", arg: 4, scope: !116, type: !76, flags: DIFlagArtificial)
!122 = !DILocalVariable(name: "a", arg: 5, scope: !116, type: !77, flags: DIFlagArtificial)
!123 = !DILocalVariable(name: "b", arg: 6, scope: !116, type: !77, flags: DIFlagArtificial)
!124 = !DILocation(line: 0, scope: !116)
!125 = !DILocation(line: 65, column: 3, scope: !116)
!126 = !{!127}
!127 = !{i64 2, i64 -1, i64 -1, i1 true}
