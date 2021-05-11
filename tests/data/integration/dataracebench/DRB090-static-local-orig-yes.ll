; ModuleID = 'integration/dataracebench/DRB090-static-local-orig-yes.c'
source_filename = "integration/dataracebench/DRB090-static-local-orig-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@main.tmp = internal global i32 0, align 4, !dbg !0
@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [70 x i8] c";integration/dataracebench/DRB090-static-local-orig-yes.c;main;70;1;;\00", align 1
@2 = private unnamed_addr constant [71 x i8] c";integration/dataracebench/DRB090-static-local-orig-yes.c;main;70;16;;\00", align 1
@3 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@4 = private unnamed_addr constant [70 x i8] c";integration/dataracebench/DRB090-static-local-orig-yes.c;main;67;1;;\00", align 1
@5 = private unnamed_addr constant [70 x i8] c";integration/dataracebench/DRB090-static-local-orig-yes.c;main;82;1;;\00", align 1
@6 = private unnamed_addr constant [71 x i8] c";integration/dataracebench/DRB090-static-local-orig-yes.c;main;82;16;;\00", align 1
@7 = private unnamed_addr constant [70 x i8] c";integration/dataracebench/DRB090-static-local-orig-yes.c;main;79;1;;\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"a[50]=%d b[50]=%d\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !dbg !35 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %len = alloca i32, align 4
  %saved_stack = alloca i8*, align 8
  %__vla_expr0 = alloca i64, align 8
  %__vla_expr1 = alloca i64, align 8
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4, !tbaa !56
  call void @llvm.dbg.declare(metadata i32* %argc.addr, metadata !42, metadata !DIExpression()), !dbg !60
  store i8** %argv, i8*** %argv.addr, align 8, !tbaa !61
  call void @llvm.dbg.declare(metadata i8*** %argv.addr, metadata !43, metadata !DIExpression()), !dbg !63
  %2 = bitcast i32* %i to i8*, !dbg !64
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #3, !dbg !64
  call void @llvm.dbg.declare(metadata i32* %i, metadata !44, metadata !DIExpression()), !dbg !65
  %3 = bitcast i32* %len to i8*, !dbg !66
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #3, !dbg !66
  call void @llvm.dbg.declare(metadata i32* %len, metadata !45, metadata !DIExpression()), !dbg !67
  store i32 100, i32* %len, align 4, !dbg !67, !tbaa !56
  %4 = load i32, i32* %len, align 4, !dbg !68, !tbaa !56
  %5 = zext i32 %4 to i64, !dbg !69
  %6 = call i8* @llvm.stacksave(), !dbg !69
  store i8* %6, i8** %saved_stack, align 8, !dbg !69
  %vla = alloca i32, i64 %5, align 16, !dbg !69
  store i64 %5, i64* %__vla_expr0, align 8, !dbg !69
  call void @llvm.dbg.declare(metadata i64* %__vla_expr0, metadata !46, metadata !DIExpression()), !dbg !70
  call void @llvm.dbg.declare(metadata i32* %vla, metadata !47, metadata !DIExpression()), !dbg !71
  %7 = load i32, i32* %len, align 4, !dbg !72, !tbaa !56
  %8 = zext i32 %7 to i64, !dbg !69
  %vla1 = alloca i32, i64 %8, align 16, !dbg !69
  store i64 %8, i64* %__vla_expr1, align 8, !dbg !69
  call void @llvm.dbg.declare(metadata i64* %__vla_expr1, metadata !51, metadata !DIExpression()), !dbg !70
  call void @llvm.dbg.declare(metadata i32* %vla1, metadata !52, metadata !DIExpression()), !dbg !73
  store i32 0, i32* %i, align 4, !dbg !74, !tbaa !56
  br label %for.cond, !dbg !76

for.cond:                                         ; preds = %for.inc, %entry
  %9 = load i32, i32* %i, align 4, !dbg !77, !tbaa !56
  %10 = load i32, i32* %len, align 4, !dbg !79, !tbaa !56
  %cmp = icmp slt i32 %9, %10, !dbg !80
  br i1 %cmp, label %for.body, label %for.end, !dbg !81

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %i, align 4, !dbg !82, !tbaa !56
  %12 = load i32, i32* %i, align 4, !dbg !84, !tbaa !56
  %idxprom = sext i32 %12 to i64, !dbg !85
  %arrayidx = getelementptr inbounds i32, i32* %vla, i64 %idxprom, !dbg !85
  store i32 %11, i32* %arrayidx, align 4, !dbg !86, !tbaa !56
  %13 = load i32, i32* %i, align 4, !dbg !87, !tbaa !56
  %14 = load i32, i32* %i, align 4, !dbg !88, !tbaa !56
  %idxprom2 = sext i32 %14 to i64, !dbg !89
  %arrayidx3 = getelementptr inbounds i32, i32* %vla1, i64 %idxprom2, !dbg !89
  store i32 %13, i32* %arrayidx3, align 4, !dbg !90, !tbaa !56
  br label %for.inc, !dbg !91

for.inc:                                          ; preds = %for.body
  %15 = load i32, i32* %i, align 4, !dbg !92, !tbaa !56
  %inc = add nsw i32 %15, 1, !dbg !92
  store i32 %inc, i32* %i, align 4, !dbg !92, !tbaa !56
  br label %for.cond, !dbg !93, !llvm.loop !94

for.end:                                          ; preds = %for.cond
  %16 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !96
  store i8* getelementptr inbounds ([70 x i8], [70 x i8]* @4, i32 0, i32 0), i8** %16, align 8, !dbg !96, !tbaa !97
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i64, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %len, i64 %5, i32* %vla), !dbg !96
  %17 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !99
  store i8* getelementptr inbounds ([70 x i8], [70 x i8]* @7, i32 0, i32 0), i8** %17, align 8, !dbg !99, !tbaa !97
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i64, i32*)* @.omp_outlined..2 to void (i32*, i32*, ...)*), i32* %len, i64 %8, i32* %vla1), !dbg !99
  %arrayidx4 = getelementptr inbounds i32, i32* %vla, i64 50, !dbg !100
  %18 = load i32, i32* %arrayidx4, align 8, !dbg !100, !tbaa !56
  %arrayidx5 = getelementptr inbounds i32, i32* %vla1, i64 50, !dbg !101
  %19 = load i32, i32* %arrayidx5, align 8, !dbg !101, !tbaa !56
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %18, i32 %19), !dbg !102
  store i32 0, i32* %retval, align 4, !dbg !103
  %20 = load i8*, i8** %saved_stack, align 8, !dbg !104
  call void @llvm.stackrestore(i8* %20), !dbg !104
  %21 = bitcast i32* %len to i8*, !dbg !104
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %21) #3, !dbg !104
  %22 = bitcast i32* %i to i8*, !dbg !104
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %22) #3, !dbg !104
  %23 = load i32, i32* %retval, align 4, !dbg !104
  ret i32 %23, !dbg !104
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %len, i64 %vla, i32* dereferenceable(4) %a) #4 !dbg !2 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %vla.addr = alloca i64, align 8
  %a.addr = alloca i32*, align 8
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
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !61
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !17, metadata !DIExpression()), !dbg !105
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !61
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !18, metadata !DIExpression()), !dbg !105
  store i32* %len, i32** %len.addr, align 8, !tbaa !61
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !19, metadata !DIExpression()), !dbg !106
  store i64 %vla, i64* %vla.addr, align 8, !tbaa !107
  call void @llvm.dbg.declare(metadata i64* %vla.addr, metadata !20, metadata !DIExpression()), !dbg !105
  store i32* %a, i32** %a.addr, align 8, !tbaa !61
  call void @llvm.dbg.declare(metadata i32** %a.addr, metadata !21, metadata !DIExpression()), !dbg !109
  %2 = load i32*, i32** %len.addr, align 8, !dbg !110, !tbaa !61
  %3 = load i64, i64* %vla.addr, align 8, !dbg !110, !tbaa !107
  %4 = load i32*, i32** %a.addr, align 8, !dbg !110, !tbaa !61
  %5 = bitcast i32* %.omp.iv to i8*, !dbg !111
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #3, !dbg !111
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !22, metadata !DIExpression()), !dbg !112
  %6 = bitcast i32* %.capture_expr. to i8*, !dbg !111
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #3, !dbg !111
  call void @llvm.dbg.declare(metadata i32* %.capture_expr., metadata !25, metadata !DIExpression()), !dbg !112
  %7 = load i32, i32* %2, align 4, !dbg !113, !tbaa !56
  store i32 %7, i32* %.capture_expr., align 4, !dbg !113, !tbaa !56
  %8 = bitcast i32* %.capture_expr.1 to i8*, !dbg !111
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #3, !dbg !111
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.1, metadata !25, metadata !DIExpression()), !dbg !112
  %9 = load i32, i32* %.capture_expr., align 4, !dbg !113, !tbaa !56
  %sub = sub nsw i32 %9, 0, !dbg !114
  %sub2 = sub nsw i32 %sub, 1, !dbg !114
  %add = add nsw i32 %sub2, 1, !dbg !114
  %div = sdiv i32 %add, 1, !dbg !114
  %sub3 = sub nsw i32 %div, 1, !dbg !114
  store i32 %sub3, i32* %.capture_expr.1, align 4, !dbg !114, !tbaa !56
  %10 = bitcast i32* %i to i8*, !dbg !111
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #3, !dbg !111
  call void @llvm.dbg.declare(metadata i32* %i, metadata !26, metadata !DIExpression()), !dbg !112
  store i32 0, i32* %i, align 4, !dbg !115, !tbaa !56
  %11 = bitcast i32* %i to i8*, !dbg !111
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %11) #3, !dbg !111
  %12 = load i32, i32* %.capture_expr., align 4, !dbg !113, !tbaa !56
  %cmp = icmp slt i32 0, %12, !dbg !114
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end, !dbg !111

omp.precond.then:                                 ; preds = %entry
  %13 = bitcast i32* %.omp.lb to i8*, !dbg !111
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %13) #3, !dbg !111
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !27, metadata !DIExpression()), !dbg !112
  store i32 0, i32* %.omp.lb, align 4, !dbg !116, !tbaa !56
  %14 = bitcast i32* %.omp.ub to i8*, !dbg !111
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %14) #3, !dbg !111
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !28, metadata !DIExpression()), !dbg !112
  %15 = load i32, i32* %.capture_expr.1, align 4, !dbg !114, !tbaa !56
  store i32 %15, i32* %.omp.ub, align 4, !dbg !116, !tbaa !56
  %16 = bitcast i32* %.omp.stride to i8*, !dbg !111
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %16) #3, !dbg !111
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !29, metadata !DIExpression()), !dbg !112
  store i32 1, i32* %.omp.stride, align 4, !dbg !116, !tbaa !56
  %17 = bitcast i32* %.omp.is_last to i8*, !dbg !111
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %17) #3, !dbg !111
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !30, metadata !DIExpression()), !dbg !112
  store i32 0, i32* %.omp.is_last, align 4, !dbg !116, !tbaa !56
  %18 = bitcast i32* %i4 to i8*, !dbg !111
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %18) #3, !dbg !111
  call void @llvm.dbg.declare(metadata i32* %i4, metadata !26, metadata !DIExpression()), !dbg !112
  %19 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !111
  store i8* getelementptr inbounds ([70 x i8], [70 x i8]* @1, i32 0, i32 0), i8** %19, align 8, !dbg !111, !tbaa !97
  %20 = load i32*, i32** %.global_tid..addr, align 8, !dbg !111
  %21 = load i32, i32* %20, align 4, !dbg !111, !tbaa !56
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %21, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !111
  %22 = load i32, i32* %.omp.ub, align 4, !dbg !116, !tbaa !56
  %23 = load i32, i32* %.capture_expr.1, align 4, !dbg !114, !tbaa !56
  %cmp5 = icmp sgt i32 %22, %23, !dbg !116
  br i1 %cmp5, label %cond.true, label %cond.false, !dbg !116

cond.true:                                        ; preds = %omp.precond.then
  %24 = load i32, i32* %.capture_expr.1, align 4, !dbg !114, !tbaa !56
  br label %cond.end, !dbg !116

cond.false:                                       ; preds = %omp.precond.then
  %25 = load i32, i32* %.omp.ub, align 4, !dbg !116, !tbaa !56
  br label %cond.end, !dbg !116

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %24, %cond.true ], [ %25, %cond.false ], !dbg !116
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !116, !tbaa !56
  %26 = load i32, i32* %.omp.lb, align 4, !dbg !116, !tbaa !56
  store i32 %26, i32* %.omp.iv, align 4, !dbg !116, !tbaa !56
  br label %omp.inner.for.cond, !dbg !111

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %27 = load i32, i32* %.omp.iv, align 4, !dbg !116, !tbaa !56
  %28 = load i32, i32* %.omp.ub, align 4, !dbg !116, !tbaa !56
  %cmp6 = icmp sle i32 %27, %28, !dbg !114
  br i1 %cmp6, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !111

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !111

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %29 = load i32, i32* %.omp.iv, align 4, !dbg !116, !tbaa !56
  %mul = mul nsw i32 %29, 1, !dbg !115
  %add7 = add nsw i32 0, %mul, !dbg !115
  store i32 %add7, i32* %i4, align 4, !dbg !115, !tbaa !56
  %30 = load i32, i32* %i4, align 4, !dbg !117, !tbaa !56
  %idxprom = sext i32 %30 to i64, !dbg !119
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 %idxprom, !dbg !119
  %31 = load i32, i32* %arrayidx, align 4, !dbg !119, !tbaa !56
  %32 = load i32, i32* %i4, align 4, !dbg !120, !tbaa !56
  %add8 = add nsw i32 %31, %32, !dbg !121
  store i32 %add8, i32* @main.tmp, align 4, !dbg !122, !tbaa !56
  %33 = load i32, i32* @main.tmp, align 4, !dbg !123, !tbaa !56
  %34 = load i32, i32* %i4, align 4, !dbg !124, !tbaa !56
  %idxprom9 = sext i32 %34 to i64, !dbg !125
  %arrayidx10 = getelementptr inbounds i32, i32* %4, i64 %idxprom9, !dbg !125
  store i32 %33, i32* %arrayidx10, align 4, !dbg !126, !tbaa !56
  br label %omp.body.continue, !dbg !127

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !128

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %35 = load i32, i32* %.omp.iv, align 4, !dbg !116, !tbaa !56
  %add11 = add nsw i32 %35, 1, !dbg !114
  store i32 %add11, i32* %.omp.iv, align 4, !dbg !114, !tbaa !56
  br label %omp.inner.for.cond, !dbg !128, !llvm.loop !129

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !128

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %36 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !128
  store i8* getelementptr inbounds ([71 x i8], [71 x i8]* @2, i32 0, i32 0), i8** %36, align 8, !dbg !128, !tbaa !97
  %37 = load i32*, i32** %.global_tid..addr, align 8, !dbg !128
  %38 = load i32, i32* %37, align 4, !dbg !128, !tbaa !56
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %38), !dbg !128
  %39 = bitcast i32* %i4 to i8*, !dbg !128
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %39) #3, !dbg !128
  %40 = bitcast i32* %.omp.is_last to i8*, !dbg !128
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %40) #3, !dbg !128
  %41 = bitcast i32* %.omp.stride to i8*, !dbg !128
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %41) #3, !dbg !128
  %42 = bitcast i32* %.omp.ub to i8*, !dbg !128
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %42) #3, !dbg !128
  %43 = bitcast i32* %.omp.lb to i8*, !dbg !128
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %43) #3, !dbg !128
  br label %omp.precond.end, !dbg !128

omp.precond.end:                                  ; preds = %omp.loop.exit, %entry
  %44 = bitcast i32* %.capture_expr.1 to i8*, !dbg !128
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %44) #3, !dbg !128
  %45 = bitcast i32* %.capture_expr. to i8*, !dbg !128
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %45) #3, !dbg !128
  %46 = bitcast i32* %.omp.iv to i8*, !dbg !128
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %46) #3, !dbg !128
  %47 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !130
  store i8* getelementptr inbounds ([70 x i8], [70 x i8]* @1, i32 0, i32 0), i8** %47, align 8, !dbg !130, !tbaa !97
  %48 = load i32*, i32** %.global_tid..addr, align 8, !dbg !130
  %49 = load i32, i32* %48, align 4, !dbg !130, !tbaa !56
  call void @__kmpc_barrier(%struct.ident_t* %.kmpc_loc.addr, i32 %49), !dbg !130
  ret void, !dbg !131
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

declare dso_local void @__kmpc_barrier(%struct.ident_t*, i32)

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %len, i64 %vla, i32* dereferenceable(4) %a) #4 !dbg !132 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %vla.addr = alloca i64, align 8
  %a.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !61
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !134, metadata !DIExpression()), !dbg !139
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !61
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !135, metadata !DIExpression()), !dbg !139
  store i32* %len, i32** %len.addr, align 8, !tbaa !61
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !136, metadata !DIExpression()), !dbg !139
  store i64 %vla, i64* %vla.addr, align 8, !tbaa !107
  call void @llvm.dbg.declare(metadata i64* %vla.addr, metadata !137, metadata !DIExpression()), !dbg !139
  store i32* %a, i32** %a.addr, align 8, !tbaa !61
  call void @llvm.dbg.declare(metadata i32** %a.addr, metadata !138, metadata !DIExpression()), !dbg !139
  %0 = load i32*, i32** %len.addr, align 8, !dbg !140, !tbaa !61
  %1 = load i64, i64* %vla.addr, align 8, !dbg !140, !tbaa !107
  %2 = load i32*, i32** %a.addr, align 8, !dbg !140, !tbaa !61
  %3 = load i32*, i32** %.global_tid..addr, align 8, !dbg !140, !tbaa !61
  %4 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !140, !tbaa !61
  %5 = load i32*, i32** %len.addr, align 8, !dbg !140, !tbaa !61
  %6 = load i32*, i32** %a.addr, align 8, !dbg !140, !tbaa !61
  call void @.omp_outlined._debug__(i32* %3, i32* %4, i32* %5, i64 %1, i32* %6) #3, !dbg !140
  ret void, !dbg !140
}

declare !callback !141 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__.1(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %len, i64 %vla, i32* dereferenceable(4) %b) #4 !dbg !143 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %vla.addr = alloca i64, align 8
  %b.addr = alloca i32*, align 8
  %tmp = alloca i32, align 4
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
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !61
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !145, metadata !DIExpression()), !dbg !160
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !61
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !146, metadata !DIExpression()), !dbg !160
  store i32* %len, i32** %len.addr, align 8, !tbaa !61
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !147, metadata !DIExpression()), !dbg !161
  store i64 %vla, i64* %vla.addr, align 8, !tbaa !107
  call void @llvm.dbg.declare(metadata i64* %vla.addr, metadata !148, metadata !DIExpression()), !dbg !160
  store i32* %b, i32** %b.addr, align 8, !tbaa !61
  call void @llvm.dbg.declare(metadata i32** %b.addr, metadata !149, metadata !DIExpression()), !dbg !162
  %2 = load i32*, i32** %len.addr, align 8, !dbg !163, !tbaa !61
  %3 = load i64, i64* %vla.addr, align 8, !dbg !163, !tbaa !107
  %4 = load i32*, i32** %b.addr, align 8, !dbg !163, !tbaa !61
  %5 = bitcast i32* %tmp to i8*, !dbg !164
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #3, !dbg !164
  call void @llvm.dbg.declare(metadata i32* %tmp, metadata !150, metadata !DIExpression()), !dbg !165
  %6 = bitcast i32* %.omp.iv to i8*, !dbg !166
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #3, !dbg !166
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !152, metadata !DIExpression()), !dbg !167
  %7 = bitcast i32* %.capture_expr. to i8*, !dbg !166
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #3, !dbg !166
  call void @llvm.dbg.declare(metadata i32* %.capture_expr., metadata !154, metadata !DIExpression()), !dbg !167
  %8 = load i32, i32* %2, align 4, !dbg !168, !tbaa !56
  store i32 %8, i32* %.capture_expr., align 4, !dbg !168, !tbaa !56
  %9 = bitcast i32* %.capture_expr.2 to i8*, !dbg !166
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #3, !dbg !166
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.2, metadata !154, metadata !DIExpression()), !dbg !167
  %10 = load i32, i32* %.capture_expr., align 4, !dbg !168, !tbaa !56
  %sub = sub nsw i32 %10, 0, !dbg !169
  %sub3 = sub nsw i32 %sub, 1, !dbg !169
  %add = add nsw i32 %sub3, 1, !dbg !169
  %div = sdiv i32 %add, 1, !dbg !169
  %sub4 = sub nsw i32 %div, 1, !dbg !169
  store i32 %sub4, i32* %.capture_expr.2, align 4, !dbg !169, !tbaa !56
  %11 = bitcast i32* %i to i8*, !dbg !166
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #3, !dbg !166
  call void @llvm.dbg.declare(metadata i32* %i, metadata !155, metadata !DIExpression()), !dbg !167
  store i32 0, i32* %i, align 4, !dbg !170, !tbaa !56
  %12 = bitcast i32* %i to i8*, !dbg !166
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %12) #3, !dbg !166
  %13 = load i32, i32* %.capture_expr., align 4, !dbg !168, !tbaa !56
  %cmp = icmp slt i32 0, %13, !dbg !169
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end, !dbg !166

omp.precond.then:                                 ; preds = %entry
  %14 = bitcast i32* %.omp.lb to i8*, !dbg !166
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %14) #3, !dbg !166
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !156, metadata !DIExpression()), !dbg !167
  store i32 0, i32* %.omp.lb, align 4, !dbg !171, !tbaa !56
  %15 = bitcast i32* %.omp.ub to i8*, !dbg !166
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %15) #3, !dbg !166
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !157, metadata !DIExpression()), !dbg !167
  %16 = load i32, i32* %.capture_expr.2, align 4, !dbg !169, !tbaa !56
  store i32 %16, i32* %.omp.ub, align 4, !dbg !171, !tbaa !56
  %17 = bitcast i32* %.omp.stride to i8*, !dbg !166
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %17) #3, !dbg !166
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !158, metadata !DIExpression()), !dbg !167
  store i32 1, i32* %.omp.stride, align 4, !dbg !171, !tbaa !56
  %18 = bitcast i32* %.omp.is_last to i8*, !dbg !166
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %18) #3, !dbg !166
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !159, metadata !DIExpression()), !dbg !167
  store i32 0, i32* %.omp.is_last, align 4, !dbg !171, !tbaa !56
  %19 = bitcast i32* %i5 to i8*, !dbg !166
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %19) #3, !dbg !166
  call void @llvm.dbg.declare(metadata i32* %i5, metadata !155, metadata !DIExpression()), !dbg !167
  %20 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !166
  store i8* getelementptr inbounds ([70 x i8], [70 x i8]* @5, i32 0, i32 0), i8** %20, align 8, !dbg !166, !tbaa !97
  %21 = load i32*, i32** %.global_tid..addr, align 8, !dbg !166
  %22 = load i32, i32* %21, align 4, !dbg !166, !tbaa !56
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %22, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !166
  %23 = load i32, i32* %.omp.ub, align 4, !dbg !171, !tbaa !56
  %24 = load i32, i32* %.capture_expr.2, align 4, !dbg !169, !tbaa !56
  %cmp6 = icmp sgt i32 %23, %24, !dbg !171
  br i1 %cmp6, label %cond.true, label %cond.false, !dbg !171

cond.true:                                        ; preds = %omp.precond.then
  %25 = load i32, i32* %.capture_expr.2, align 4, !dbg !169, !tbaa !56
  br label %cond.end, !dbg !171

cond.false:                                       ; preds = %omp.precond.then
  %26 = load i32, i32* %.omp.ub, align 4, !dbg !171, !tbaa !56
  br label %cond.end, !dbg !171

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %25, %cond.true ], [ %26, %cond.false ], !dbg !171
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !171, !tbaa !56
  %27 = load i32, i32* %.omp.lb, align 4, !dbg !171, !tbaa !56
  store i32 %27, i32* %.omp.iv, align 4, !dbg !171, !tbaa !56
  br label %omp.inner.for.cond, !dbg !166

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %28 = load i32, i32* %.omp.iv, align 4, !dbg !171, !tbaa !56
  %29 = load i32, i32* %.omp.ub, align 4, !dbg !171, !tbaa !56
  %cmp7 = icmp sle i32 %28, %29, !dbg !169
  br i1 %cmp7, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !166

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !166

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %30 = load i32, i32* %.omp.iv, align 4, !dbg !171, !tbaa !56
  %mul = mul nsw i32 %30, 1, !dbg !170
  %add8 = add nsw i32 0, %mul, !dbg !170
  store i32 %add8, i32* %i5, align 4, !dbg !170, !tbaa !56
  %31 = load i32, i32* %i5, align 4, !dbg !172, !tbaa !56
  %idxprom = sext i32 %31 to i64, !dbg !174
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 %idxprom, !dbg !174
  %32 = load i32, i32* %arrayidx, align 4, !dbg !174, !tbaa !56
  %33 = load i32, i32* %i5, align 4, !dbg !175, !tbaa !56
  %add9 = add nsw i32 %32, %33, !dbg !176
  store i32 %add9, i32* %tmp, align 4, !dbg !177, !tbaa !56
  %34 = load i32, i32* %tmp, align 4, !dbg !178, !tbaa !56
  %35 = load i32, i32* %i5, align 4, !dbg !179, !tbaa !56
  %idxprom10 = sext i32 %35 to i64, !dbg !180
  %arrayidx11 = getelementptr inbounds i32, i32* %4, i64 %idxprom10, !dbg !180
  store i32 %34, i32* %arrayidx11, align 4, !dbg !181, !tbaa !56
  br label %omp.body.continue, !dbg !182

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !183

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %36 = load i32, i32* %.omp.iv, align 4, !dbg !171, !tbaa !56
  %add12 = add nsw i32 %36, 1, !dbg !169
  store i32 %add12, i32* %.omp.iv, align 4, !dbg !169, !tbaa !56
  br label %omp.inner.for.cond, !dbg !183, !llvm.loop !184

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !183

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %37 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !183
  store i8* getelementptr inbounds ([71 x i8], [71 x i8]* @6, i32 0, i32 0), i8** %37, align 8, !dbg !183, !tbaa !97
  %38 = load i32*, i32** %.global_tid..addr, align 8, !dbg !183
  %39 = load i32, i32* %38, align 4, !dbg !183, !tbaa !56
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %39), !dbg !183
  %40 = bitcast i32* %i5 to i8*, !dbg !183
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %40) #3, !dbg !183
  %41 = bitcast i32* %.omp.is_last to i8*, !dbg !183
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %41) #3, !dbg !183
  %42 = bitcast i32* %.omp.stride to i8*, !dbg !183
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %42) #3, !dbg !183
  %43 = bitcast i32* %.omp.ub to i8*, !dbg !183
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %43) #3, !dbg !183
  %44 = bitcast i32* %.omp.lb to i8*, !dbg !183
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %44) #3, !dbg !183
  br label %omp.precond.end, !dbg !183

omp.precond.end:                                  ; preds = %omp.loop.exit, %entry
  %45 = bitcast i32* %.capture_expr.2 to i8*, !dbg !183
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %45) #3, !dbg !183
  %46 = bitcast i32* %.capture_expr. to i8*, !dbg !183
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %46) #3, !dbg !183
  %47 = bitcast i32* %.omp.iv to i8*, !dbg !183
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %47) #3, !dbg !183
  %48 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !185
  store i8* getelementptr inbounds ([70 x i8], [70 x i8]* @5, i32 0, i32 0), i8** %48, align 8, !dbg !185, !tbaa !97
  %49 = load i32*, i32** %.global_tid..addr, align 8, !dbg !185
  %50 = load i32, i32* %49, align 4, !dbg !185, !tbaa !56
  call void @__kmpc_barrier(%struct.ident_t* %.kmpc_loc.addr, i32 %50), !dbg !185
  %51 = bitcast i32* %tmp to i8*, !dbg !186
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %51) #3, !dbg !186
  ret void, !dbg !186
}

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined..2(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %len, i64 %vla, i32* dereferenceable(4) %b) #4 !dbg !187 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %vla.addr = alloca i64, align 8
  %b.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !61
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !189, metadata !DIExpression()), !dbg !194
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !61
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !190, metadata !DIExpression()), !dbg !194
  store i32* %len, i32** %len.addr, align 8, !tbaa !61
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !191, metadata !DIExpression()), !dbg !194
  store i64 %vla, i64* %vla.addr, align 8, !tbaa !107
  call void @llvm.dbg.declare(metadata i64* %vla.addr, metadata !192, metadata !DIExpression()), !dbg !194
  store i32* %b, i32** %b.addr, align 8, !tbaa !61
  call void @llvm.dbg.declare(metadata i32** %b.addr, metadata !193, metadata !DIExpression()), !dbg !194
  %0 = load i32*, i32** %len.addr, align 8, !dbg !195, !tbaa !61
  %1 = load i64, i64* %vla.addr, align 8, !dbg !195, !tbaa !107
  %2 = load i32*, i32** %b.addr, align 8, !dbg !195, !tbaa !61
  %3 = load i32*, i32** %.global_tid..addr, align 8, !dbg !195, !tbaa !61
  %4 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !195, !tbaa !61
  %5 = load i32*, i32** %len.addr, align 8, !dbg !195, !tbaa !61
  %6 = load i32*, i32** %b.addr, align 8, !dbg !195, !tbaa !61
  call void @.omp_outlined._debug__.1(i32* %3, i32* %4, i32* %5, i64 %1, i32* %6) #3, !dbg !195
  ret void, !dbg !195
}

declare dso_local i32 @printf(i8*, ...) #5

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { nounwind }
attributes #4 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!13}
!llvm.module.flags = !{!31, !32, !33}
!llvm.ident = !{!34}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "tmp", scope: !2, file: !3, line: 69, type: !10, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !3, file: !3, line: 68, type: !4, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !16)
!3 = !DIFile(filename: "integration/dataracebench/DRB090-static-local-orig-yes.c", directory: "/home/brad/Code/OpenRace/tests/data")
!4 = !DISubroutineType(types: !5)
!5 = !{null, !6, !6, !11, !12, !11}
!6 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!7 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !8)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !10, size: 64)
!12 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!13 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !14, globals: !15, splitDebugInlining: false, nameTableKind: None)
!14 = !{}
!15 = !{!0}
!16 = !{!17, !18, !19, !20, !21, !22, !25, !25, !26, !27, !28, !29, !30, !26}
!17 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !2, type: !6, flags: DIFlagArtificial)
!18 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !2, type: !6, flags: DIFlagArtificial)
!19 = !DILocalVariable(name: "len", arg: 3, scope: !2, file: !3, line: 61, type: !11)
!20 = !DILocalVariable(name: "vla", arg: 4, scope: !2, type: !12, flags: DIFlagArtificial)
!21 = !DILocalVariable(name: "a", arg: 5, scope: !2, file: !3, line: 62, type: !11)
!22 = !DILocalVariable(name: ".omp.iv", scope: !23, type: !10, flags: DIFlagArtificial)
!23 = distinct !DILexicalBlock(scope: !24, file: !3, line: 70, column: 1)
!24 = distinct !DILexicalBlock(scope: !2, file: !3, line: 68, column: 3)
!25 = !DILocalVariable(name: ".capture_expr.", scope: !23, type: !10, flags: DIFlagArtificial)
!26 = !DILocalVariable(name: "i", scope: !23, type: !10, flags: DIFlagArtificial)
!27 = !DILocalVariable(name: ".omp.lb", scope: !23, type: !10, flags: DIFlagArtificial)
!28 = !DILocalVariable(name: ".omp.ub", scope: !23, type: !10, flags: DIFlagArtificial)
!29 = !DILocalVariable(name: ".omp.stride", scope: !23, type: !10, flags: DIFlagArtificial)
!30 = !DILocalVariable(name: ".omp.is_last", scope: !23, type: !10, flags: DIFlagArtificial)
!31 = !{i32 7, !"Dwarf Version", i32 4}
!32 = !{i32 2, !"Debug Info Version", i32 3}
!33 = !{i32 1, !"wchar_size", i32 4}
!34 = !{!"clang version 10.0.1 "}
!35 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 58, type: !36, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !41)
!36 = !DISubroutineType(types: !37)
!37 = !{!10, !10, !38}
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!41 = !{!42, !43, !44, !45, !46, !47, !51, !52}
!42 = !DILocalVariable(name: "argc", arg: 1, scope: !35, file: !3, line: 58, type: !10)
!43 = !DILocalVariable(name: "argv", arg: 2, scope: !35, file: !3, line: 58, type: !38)
!44 = !DILocalVariable(name: "i", scope: !35, file: !3, line: 60, type: !10)
!45 = !DILocalVariable(name: "len", scope: !35, file: !3, line: 61, type: !10)
!46 = !DILocalVariable(name: "__vla_expr0", scope: !35, type: !12, flags: DIFlagArtificial)
!47 = !DILocalVariable(name: "a", scope: !35, file: !3, line: 62, type: !48)
!48 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, elements: !49)
!49 = !{!50}
!50 = !DISubrange(count: !46)
!51 = !DILocalVariable(name: "__vla_expr1", scope: !35, type: !12, flags: DIFlagArtificial)
!52 = !DILocalVariable(name: "b", scope: !35, file: !3, line: 62, type: !53)
!53 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, elements: !54)
!54 = !{!55}
!55 = !DISubrange(count: !51)
!56 = !{!57, !57, i64 0}
!57 = !{!"int", !58, i64 0}
!58 = !{!"omnipotent char", !59, i64 0}
!59 = !{!"Simple C/C++ TBAA"}
!60 = !DILocation(line: 58, column: 14, scope: !35)
!61 = !{!62, !62, i64 0}
!62 = !{!"any pointer", !58, i64 0}
!63 = !DILocation(line: 58, column: 26, scope: !35)
!64 = !DILocation(line: 60, column: 3, scope: !35)
!65 = !DILocation(line: 60, column: 7, scope: !35)
!66 = !DILocation(line: 61, column: 3, scope: !35)
!67 = !DILocation(line: 61, column: 7, scope: !35)
!68 = !DILocation(line: 62, column: 9, scope: !35)
!69 = !DILocation(line: 62, column: 3, scope: !35)
!70 = !DILocation(line: 0, scope: !35)
!71 = !DILocation(line: 62, column: 7, scope: !35)
!72 = !DILocation(line: 62, column: 17, scope: !35)
!73 = !DILocation(line: 62, column: 15, scope: !35)
!74 = !DILocation(line: 64, column: 9, scope: !75)
!75 = distinct !DILexicalBlock(scope: !35, file: !3, line: 64, column: 3)
!76 = !DILocation(line: 64, column: 8, scope: !75)
!77 = !DILocation(line: 64, column: 12, scope: !78)
!78 = distinct !DILexicalBlock(scope: !75, file: !3, line: 64, column: 3)
!79 = !DILocation(line: 64, column: 14, scope: !78)
!80 = !DILocation(line: 64, column: 13, scope: !78)
!81 = !DILocation(line: 64, column: 3, scope: !75)
!82 = !DILocation(line: 65, column: 11, scope: !83)
!83 = distinct !DILexicalBlock(scope: !78, file: !3, line: 65, column: 3)
!84 = !DILocation(line: 65, column: 8, scope: !83)
!85 = !DILocation(line: 65, column: 6, scope: !83)
!86 = !DILocation(line: 65, column: 10, scope: !83)
!87 = !DILocation(line: 65, column: 19, scope: !83)
!88 = !DILocation(line: 65, column: 16, scope: !83)
!89 = !DILocation(line: 65, column: 14, scope: !83)
!90 = !DILocation(line: 65, column: 18, scope: !83)
!91 = !DILocation(line: 65, column: 21, scope: !83)
!92 = !DILocation(line: 64, column: 19, scope: !78)
!93 = !DILocation(line: 64, column: 3, scope: !78)
!94 = distinct !{!94, !81, !95}
!95 = !DILocation(line: 65, column: 21, scope: !75)
!96 = !DILocation(line: 67, column: 1, scope: !35)
!97 = !{!98, !62, i64 16}
!98 = !{!"ident_t", !57, i64 0, !57, i64 4, !57, i64 8, !57, i64 12, !62, i64 16}
!99 = !DILocation(line: 79, column: 1, scope: !35)
!100 = !DILocation(line: 90, column: 33, scope: !35)
!101 = !DILocation(line: 90, column: 40, scope: !35)
!102 = !DILocation(line: 90, column: 3, scope: !35)
!103 = !DILocation(line: 92, column: 3, scope: !35)
!104 = !DILocation(line: 93, column: 1, scope: !35)
!105 = !DILocation(line: 0, scope: !2)
!106 = !DILocation(line: 61, column: 7, scope: !2)
!107 = !{!108, !108, i64 0}
!108 = !{!"long", !58, i64 0}
!109 = !DILocation(line: 62, column: 7, scope: !2)
!110 = !DILocation(line: 68, column: 3, scope: !2)
!111 = !DILocation(line: 70, column: 1, scope: !24)
!112 = !DILocation(line: 0, scope: !23)
!113 = !DILocation(line: 71, column: 16, scope: !23)
!114 = !DILocation(line: 71, column: 5, scope: !23)
!115 = !DILocation(line: 71, column: 20, scope: !23)
!116 = !DILocation(line: 71, column: 10, scope: !23)
!117 = !DILocation(line: 73, column: 15, scope: !118)
!118 = distinct !DILexicalBlock(scope: !23, file: !3, line: 72, column: 5)
!119 = !DILocation(line: 73, column: 13, scope: !118)
!120 = !DILocation(line: 73, column: 18, scope: !118)
!121 = !DILocation(line: 73, column: 17, scope: !118)
!122 = !DILocation(line: 73, column: 11, scope: !118)
!123 = !DILocation(line: 74, column: 14, scope: !118)
!124 = !DILocation(line: 74, column: 9, scope: !118)
!125 = !DILocation(line: 74, column: 7, scope: !118)
!126 = !DILocation(line: 74, column: 12, scope: !118)
!127 = !DILocation(line: 75, column: 5, scope: !118)
!128 = !DILocation(line: 70, column: 1, scope: !23)
!129 = distinct !{!129, !128, !130}
!130 = !DILocation(line: 70, column: 16, scope: !23)
!131 = !DILocation(line: 76, column: 3, scope: !2)
!132 = distinct !DISubprogram(name: ".omp_outlined.", scope: !3, file: !3, line: 68, type: !4, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !133)
!133 = !{!134, !135, !136, !137, !138}
!134 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !132, type: !6, flags: DIFlagArtificial)
!135 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !132, type: !6, flags: DIFlagArtificial)
!136 = !DILocalVariable(name: "len", arg: 3, scope: !132, type: !11, flags: DIFlagArtificial)
!137 = !DILocalVariable(name: "vla", arg: 4, scope: !132, type: !12, flags: DIFlagArtificial)
!138 = !DILocalVariable(name: "a", arg: 5, scope: !132, type: !11, flags: DIFlagArtificial)
!139 = !DILocation(line: 0, scope: !132)
!140 = !DILocation(line: 68, column: 3, scope: !132)
!141 = !{!142}
!142 = !{i64 2, i64 -1, i64 -1, i1 true}
!143 = distinct !DISubprogram(name: ".omp_outlined._debug__.1", scope: !3, file: !3, line: 80, type: !4, scopeLine: 80, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !144)
!144 = !{!145, !146, !147, !148, !149, !150, !152, !154, !154, !155, !156, !157, !158, !159, !155}
!145 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !143, type: !6, flags: DIFlagArtificial)
!146 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !143, type: !6, flags: DIFlagArtificial)
!147 = !DILocalVariable(name: "len", arg: 3, scope: !143, file: !3, line: 61, type: !11)
!148 = !DILocalVariable(name: "vla", arg: 4, scope: !143, type: !12, flags: DIFlagArtificial)
!149 = !DILocalVariable(name: "b", arg: 5, scope: !143, file: !3, line: 62, type: !11)
!150 = !DILocalVariable(name: "tmp", scope: !151, file: !3, line: 81, type: !10)
!151 = distinct !DILexicalBlock(scope: !143, file: !3, line: 80, column: 3)
!152 = !DILocalVariable(name: ".omp.iv", scope: !153, type: !10, flags: DIFlagArtificial)
!153 = distinct !DILexicalBlock(scope: !151, file: !3, line: 82, column: 1)
!154 = !DILocalVariable(name: ".capture_expr.", scope: !153, type: !10, flags: DIFlagArtificial)
!155 = !DILocalVariable(name: "i", scope: !153, type: !10, flags: DIFlagArtificial)
!156 = !DILocalVariable(name: ".omp.lb", scope: !153, type: !10, flags: DIFlagArtificial)
!157 = !DILocalVariable(name: ".omp.ub", scope: !153, type: !10, flags: DIFlagArtificial)
!158 = !DILocalVariable(name: ".omp.stride", scope: !153, type: !10, flags: DIFlagArtificial)
!159 = !DILocalVariable(name: ".omp.is_last", scope: !153, type: !10, flags: DIFlagArtificial)
!160 = !DILocation(line: 0, scope: !143)
!161 = !DILocation(line: 61, column: 7, scope: !143)
!162 = !DILocation(line: 62, column: 15, scope: !143)
!163 = !DILocation(line: 80, column: 3, scope: !143)
!164 = !DILocation(line: 81, column: 5, scope: !151)
!165 = !DILocation(line: 81, column: 9, scope: !151)
!166 = !DILocation(line: 82, column: 1, scope: !151)
!167 = !DILocation(line: 0, scope: !153)
!168 = !DILocation(line: 83, column: 16, scope: !153)
!169 = !DILocation(line: 83, column: 5, scope: !153)
!170 = !DILocation(line: 83, column: 20, scope: !153)
!171 = !DILocation(line: 83, column: 10, scope: !153)
!172 = !DILocation(line: 85, column: 15, scope: !173)
!173 = distinct !DILexicalBlock(scope: !153, file: !3, line: 84, column: 5)
!174 = !DILocation(line: 85, column: 13, scope: !173)
!175 = !DILocation(line: 85, column: 18, scope: !173)
!176 = !DILocation(line: 85, column: 17, scope: !173)
!177 = !DILocation(line: 85, column: 11, scope: !173)
!178 = !DILocation(line: 86, column: 14, scope: !173)
!179 = !DILocation(line: 86, column: 9, scope: !173)
!180 = !DILocation(line: 86, column: 7, scope: !173)
!181 = !DILocation(line: 86, column: 12, scope: !173)
!182 = !DILocation(line: 87, column: 5, scope: !173)
!183 = !DILocation(line: 82, column: 1, scope: !153)
!184 = distinct !{!184, !183, !185}
!185 = !DILocation(line: 82, column: 16, scope: !153)
!186 = !DILocation(line: 88, column: 3, scope: !143)
!187 = distinct !DISubprogram(name: ".omp_outlined..2", scope: !3, file: !3, line: 80, type: !4, scopeLine: 80, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !13, retainedNodes: !188)
!188 = !{!189, !190, !191, !192, !193}
!189 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !187, type: !6, flags: DIFlagArtificial)
!190 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !187, type: !6, flags: DIFlagArtificial)
!191 = !DILocalVariable(name: "len", arg: 3, scope: !187, type: !11, flags: DIFlagArtificial)
!192 = !DILocalVariable(name: "vla", arg: 4, scope: !187, type: !12, flags: DIFlagArtificial)
!193 = !DILocalVariable(name: "b", arg: 5, scope: !187, type: !11, flags: DIFlagArtificial)
!194 = !DILocation(line: 0, scope: !187)
!195 = !DILocation(line: 80, column: 3, scope: !187)
