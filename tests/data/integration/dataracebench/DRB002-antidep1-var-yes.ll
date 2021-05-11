; ModuleID = 'integration/dataracebench/DRB002-antidep1-var-yes.c'
source_filename = "integration/dataracebench/DRB002-antidep1-var-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [65 x i8] c";integration/dataracebench/DRB002-antidep1-var-yes.c;main;65;1;;\00", align 1
@2 = private unnamed_addr constant [66 x i8] c";integration/dataracebench/DRB002-antidep1-var-yes.c;main;65;25;;\00", align 1
@3 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !dbg !13 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %len = alloca i32, align 4
  %saved_stack = alloca i8*, align 8
  %__vla_expr0 = alloca i64, align 8
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4, !tbaa !27
  call void @llvm.dbg.declare(metadata i32* %argc.addr, metadata !17, metadata !DIExpression()), !dbg !31
  store i8** %argv, i8*** %argv.addr, align 8, !tbaa !32
  call void @llvm.dbg.declare(metadata i8*** %argv.addr, metadata !18, metadata !DIExpression()), !dbg !34
  %2 = bitcast i32* %i to i8*, !dbg !35
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #4, !dbg !35
  call void @llvm.dbg.declare(metadata i32* %i, metadata !19, metadata !DIExpression()), !dbg !36
  %3 = bitcast i32* %len to i8*, !dbg !37
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #4, !dbg !37
  call void @llvm.dbg.declare(metadata i32* %len, metadata !20, metadata !DIExpression()), !dbg !38
  store i32 1000, i32* %len, align 4, !dbg !38, !tbaa !27
  %4 = load i32, i32* %argc.addr, align 4, !dbg !39, !tbaa !27
  %cmp = icmp sgt i32 %4, 1, !dbg !41
  br i1 %cmp, label %if.then, label %if.end, !dbg !42

if.then:                                          ; preds = %entry
  %5 = load i8**, i8*** %argv.addr, align 8, !dbg !43, !tbaa !32
  %arrayidx = getelementptr inbounds i8*, i8** %5, i64 1, !dbg !43
  %6 = load i8*, i8** %arrayidx, align 8, !dbg !43, !tbaa !32
  %call = call i32 @atoi(i8* %6) #7, !dbg !44
  store i32 %call, i32* %len, align 4, !dbg !45, !tbaa !27
  br label %if.end, !dbg !46

if.end:                                           ; preds = %if.then, %entry
  %7 = load i32, i32* %len, align 4, !dbg !47, !tbaa !27
  %8 = zext i32 %7 to i64, !dbg !48
  %9 = call i8* @llvm.stacksave(), !dbg !48
  store i8* %9, i8** %saved_stack, align 8, !dbg !48
  %vla = alloca i32, i64 %8, align 16, !dbg !48
  store i64 %8, i64* %__vla_expr0, align 8, !dbg !48
  call void @llvm.dbg.declare(metadata i64* %__vla_expr0, metadata !21, metadata !DIExpression()), !dbg !49
  call void @llvm.dbg.declare(metadata i32* %vla, metadata !23, metadata !DIExpression()), !dbg !50
  store i32 0, i32* %i, align 4, !dbg !51, !tbaa !27
  br label %for.cond, !dbg !53

for.cond:                                         ; preds = %for.inc, %if.end
  %10 = load i32, i32* %i, align 4, !dbg !54, !tbaa !27
  %11 = load i32, i32* %len, align 4, !dbg !56, !tbaa !27
  %cmp1 = icmp slt i32 %10, %11, !dbg !57
  br i1 %cmp1, label %for.body, label %for.end, !dbg !58

for.body:                                         ; preds = %for.cond
  %12 = load i32, i32* %i, align 4, !dbg !59, !tbaa !27
  %13 = load i32, i32* %i, align 4, !dbg !60, !tbaa !27
  %idxprom = sext i32 %13 to i64, !dbg !61
  %arrayidx2 = getelementptr inbounds i32, i32* %vla, i64 %idxprom, !dbg !61
  store i32 %12, i32* %arrayidx2, align 4, !dbg !62, !tbaa !27
  br label %for.inc, !dbg !61

for.inc:                                          ; preds = %for.body
  %14 = load i32, i32* %i, align 4, !dbg !63, !tbaa !27
  %inc = add nsw i32 %14, 1, !dbg !63
  store i32 %inc, i32* %i, align 4, !dbg !63, !tbaa !27
  br label %for.cond, !dbg !64, !llvm.loop !65

for.end:                                          ; preds = %for.cond
  %15 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !67
  store i8* getelementptr inbounds ([65 x i8], [65 x i8]* @1, i32 0, i32 0), i8** %15, align 8, !dbg !67, !tbaa !68
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i64, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %len, i64 %8, i32* %vla), !dbg !67
  store i32 0, i32* %retval, align 4, !dbg !70
  %16 = load i8*, i8** %saved_stack, align 8, !dbg !71
  call void @llvm.stackrestore(i8* %16), !dbg !71
  %17 = bitcast i32* %len to i8*, !dbg !71
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %17) #4, !dbg !71
  %18 = bitcast i32* %i to i8*, !dbg !71
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %18) #4, !dbg !71
  %19 = load i32, i32* %retval, align 4, !dbg !71
  ret i32 %19, !dbg !71
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: inlinehint nounwind readonly uwtable
define available_externally dso_local i32 @atoi(i8* nonnull %__nptr) #3 !dbg !72 {
entry:
  %__nptr.addr = alloca i8*, align 8
  store i8* %__nptr, i8** %__nptr.addr, align 8, !tbaa !32
  call void @llvm.dbg.declare(metadata i8** %__nptr.addr, metadata !79, metadata !DIExpression()), !dbg !80
  %0 = load i8*, i8** %__nptr.addr, align 8, !dbg !81, !tbaa !32
  %call = call i64 @strtol(i8* %0, i8** null, i32 10) #4, !dbg !82
  %conv = trunc i64 %call to i32, !dbg !83
  ret i32 %conv, !dbg !84
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #4

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %len, i64 %vla, i32* dereferenceable(4) %a) #5 !dbg !85 {
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
  %i5 = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !32
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !94, metadata !DIExpression()), !dbg !106
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !32
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !95, metadata !DIExpression()), !dbg !106
  store i32* %len, i32** %len.addr, align 8, !tbaa !32
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !96, metadata !DIExpression()), !dbg !107
  store i64 %vla, i64* %vla.addr, align 8, !tbaa !108
  call void @llvm.dbg.declare(metadata i64* %vla.addr, metadata !97, metadata !DIExpression()), !dbg !106
  store i32* %a, i32** %a.addr, align 8, !tbaa !32
  call void @llvm.dbg.declare(metadata i32** %a.addr, metadata !98, metadata !DIExpression()), !dbg !110
  %2 = load i32*, i32** %len.addr, align 8, !dbg !111, !tbaa !32
  %3 = load i64, i64* %vla.addr, align 8, !dbg !111, !tbaa !108
  %4 = load i32*, i32** %a.addr, align 8, !dbg !111, !tbaa !32
  %5 = bitcast i32* %.omp.iv to i8*, !dbg !111
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #4, !dbg !111
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !99, metadata !DIExpression()), !dbg !106
  %6 = bitcast i32* %.capture_expr. to i8*, !dbg !111
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #4, !dbg !111
  call void @llvm.dbg.declare(metadata i32* %.capture_expr., metadata !100, metadata !DIExpression()), !dbg !106
  %7 = load i32, i32* %2, align 4, !dbg !112, !tbaa !27
  %sub = sub nsw i32 %7, 1, !dbg !113
  store i32 %sub, i32* %.capture_expr., align 4, !dbg !112, !tbaa !27
  %8 = bitcast i32* %.capture_expr.1 to i8*, !dbg !111
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #4, !dbg !111
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.1, metadata !100, metadata !DIExpression()), !dbg !106
  %9 = load i32, i32* %.capture_expr., align 4, !dbg !113, !tbaa !27
  %sub2 = sub nsw i32 %9, 0, !dbg !111
  %sub3 = sub nsw i32 %sub2, 1, !dbg !111
  %add = add nsw i32 %sub3, 1, !dbg !111
  %div = sdiv i32 %add, 1, !dbg !111
  %sub4 = sub nsw i32 %div, 1, !dbg !111
  store i32 %sub4, i32* %.capture_expr.1, align 4, !dbg !111, !tbaa !27
  %10 = bitcast i32* %i to i8*, !dbg !111
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #4, !dbg !111
  call void @llvm.dbg.declare(metadata i32* %i, metadata !101, metadata !DIExpression()), !dbg !106
  store i32 0, i32* %i, align 4, !dbg !114, !tbaa !27
  %11 = bitcast i32* %i to i8*, !dbg !111
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %11) #4, !dbg !111
  %12 = load i32, i32* %.capture_expr., align 4, !dbg !113, !tbaa !27
  %cmp = icmp slt i32 0, %12, !dbg !111
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end, !dbg !111

omp.precond.then:                                 ; preds = %entry
  %13 = bitcast i32* %.omp.lb to i8*, !dbg !111
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %13) #4, !dbg !111
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !102, metadata !DIExpression()), !dbg !106
  store i32 0, i32* %.omp.lb, align 4, !dbg !115, !tbaa !27
  %14 = bitcast i32* %.omp.ub to i8*, !dbg !111
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %14) #4, !dbg !111
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !103, metadata !DIExpression()), !dbg !106
  %15 = load i32, i32* %.capture_expr.1, align 4, !dbg !111, !tbaa !27
  store i32 %15, i32* %.omp.ub, align 4, !dbg !115, !tbaa !27
  %16 = bitcast i32* %.omp.stride to i8*, !dbg !111
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %16) #4, !dbg !111
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !104, metadata !DIExpression()), !dbg !106
  store i32 1, i32* %.omp.stride, align 4, !dbg !115, !tbaa !27
  %17 = bitcast i32* %.omp.is_last to i8*, !dbg !111
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %17) #4, !dbg !111
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !105, metadata !DIExpression()), !dbg !106
  store i32 0, i32* %.omp.is_last, align 4, !dbg !115, !tbaa !27
  %18 = bitcast i32* %i5 to i8*, !dbg !111
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %18) #4, !dbg !111
  call void @llvm.dbg.declare(metadata i32* %i5, metadata !101, metadata !DIExpression()), !dbg !106
  %19 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !111
  store i8* getelementptr inbounds ([65 x i8], [65 x i8]* @1, i32 0, i32 0), i8** %19, align 8, !dbg !111, !tbaa !68
  %20 = load i32*, i32** %.global_tid..addr, align 8, !dbg !111
  %21 = load i32, i32* %20, align 4, !dbg !111, !tbaa !27
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %21, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !111
  %22 = load i32, i32* %.omp.ub, align 4, !dbg !115, !tbaa !27
  %23 = load i32, i32* %.capture_expr.1, align 4, !dbg !111, !tbaa !27
  %cmp6 = icmp sgt i32 %22, %23, !dbg !115
  br i1 %cmp6, label %cond.true, label %cond.false, !dbg !115

cond.true:                                        ; preds = %omp.precond.then
  %24 = load i32, i32* %.capture_expr.1, align 4, !dbg !111, !tbaa !27
  br label %cond.end, !dbg !115

cond.false:                                       ; preds = %omp.precond.then
  %25 = load i32, i32* %.omp.ub, align 4, !dbg !115, !tbaa !27
  br label %cond.end, !dbg !115

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %24, %cond.true ], [ %25, %cond.false ], !dbg !115
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !115, !tbaa !27
  %26 = load i32, i32* %.omp.lb, align 4, !dbg !115, !tbaa !27
  store i32 %26, i32* %.omp.iv, align 4, !dbg !115, !tbaa !27
  br label %omp.inner.for.cond, !dbg !111

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %27 = load i32, i32* %.omp.iv, align 4, !dbg !115, !tbaa !27
  %28 = load i32, i32* %.omp.ub, align 4, !dbg !115, !tbaa !27
  %cmp7 = icmp sle i32 %27, %28, !dbg !111
  br i1 %cmp7, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !111

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !111

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %29 = load i32, i32* %.omp.iv, align 4, !dbg !115, !tbaa !27
  %mul = mul nsw i32 %29, 1, !dbg !114
  %add8 = add nsw i32 0, %mul, !dbg !114
  store i32 %add8, i32* %i5, align 4, !dbg !114, !tbaa !27
  %30 = load i32, i32* %i5, align 4, !dbg !116, !tbaa !27
  %add9 = add nsw i32 %30, 1, !dbg !117
  %idxprom = sext i32 %add9 to i64, !dbg !118
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 %idxprom, !dbg !118
  %31 = load i32, i32* %arrayidx, align 4, !dbg !118, !tbaa !27
  %add10 = add nsw i32 %31, 1, !dbg !119
  %32 = load i32, i32* %i5, align 4, !dbg !120, !tbaa !27
  %idxprom11 = sext i32 %32 to i64, !dbg !121
  %arrayidx12 = getelementptr inbounds i32, i32* %4, i64 %idxprom11, !dbg !121
  store i32 %add10, i32* %arrayidx12, align 4, !dbg !122, !tbaa !27
  br label %omp.body.continue, !dbg !121

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !123

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %33 = load i32, i32* %.omp.iv, align 4, !dbg !115, !tbaa !27
  %add13 = add nsw i32 %33, 1, !dbg !111
  store i32 %add13, i32* %.omp.iv, align 4, !dbg !111, !tbaa !27
  br label %omp.inner.for.cond, !dbg !123, !llvm.loop !124

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !123

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %34 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !123
  store i8* getelementptr inbounds ([66 x i8], [66 x i8]* @2, i32 0, i32 0), i8** %34, align 8, !dbg !123, !tbaa !68
  %35 = load i32*, i32** %.global_tid..addr, align 8, !dbg !123
  %36 = load i32, i32* %35, align 4, !dbg !123, !tbaa !27
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %36), !dbg !123
  %37 = bitcast i32* %i5 to i8*, !dbg !123
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %37) #4, !dbg !123
  %38 = bitcast i32* %.omp.is_last to i8*, !dbg !123
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %38) #4, !dbg !123
  %39 = bitcast i32* %.omp.stride to i8*, !dbg !123
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %39) #4, !dbg !123
  %40 = bitcast i32* %.omp.ub to i8*, !dbg !123
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %40) #4, !dbg !123
  %41 = bitcast i32* %.omp.lb to i8*, !dbg !123
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %41) #4, !dbg !123
  br label %omp.precond.end, !dbg !123

omp.precond.end:                                  ; preds = %omp.loop.exit, %entry
  %42 = bitcast i32* %.capture_expr.1 to i8*, !dbg !123
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %42) #4, !dbg !123
  %43 = bitcast i32* %.capture_expr. to i8*, !dbg !123
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %43) #4, !dbg !123
  %44 = bitcast i32* %.omp.iv to i8*, !dbg !123
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %44) #4, !dbg !123
  ret void, !dbg !126
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %len, i64 %vla, i32* dereferenceable(4) %a) #5 !dbg !127 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %vla.addr = alloca i64, align 8
  %a.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !32
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !129, metadata !DIExpression()), !dbg !134
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !32
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !130, metadata !DIExpression()), !dbg !134
  store i32* %len, i32** %len.addr, align 8, !tbaa !32
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !131, metadata !DIExpression()), !dbg !134
  store i64 %vla, i64* %vla.addr, align 8, !tbaa !108
  call void @llvm.dbg.declare(metadata i64* %vla.addr, metadata !132, metadata !DIExpression()), !dbg !134
  store i32* %a, i32** %a.addr, align 8, !tbaa !32
  call void @llvm.dbg.declare(metadata i32** %a.addr, metadata !133, metadata !DIExpression()), !dbg !134
  %0 = load i32*, i32** %len.addr, align 8, !dbg !135, !tbaa !32
  %1 = load i64, i64* %vla.addr, align 8, !dbg !135, !tbaa !108
  %2 = load i32*, i32** %a.addr, align 8, !dbg !135, !tbaa !32
  %3 = load i32*, i32** %.global_tid..addr, align 8, !dbg !135, !tbaa !32
  %4 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !135, !tbaa !32
  %5 = load i32*, i32** %len.addr, align 8, !dbg !135, !tbaa !32
  %6 = load i32*, i32** %a.addr, align 8, !dbg !135, !tbaa !32
  call void @.omp_outlined._debug__(i32* %3, i32* %4, i32* %5, i64 %1, i32* %6) #4, !dbg !135
  ret void, !dbg !135
}

declare !callback !136 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #4

; Function Attrs: nounwind
declare dso_local i64 @strtol(i8*, i8**, i32) #6

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { inlinehint nounwind readonly uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!9, !10, !11}
!llvm.ident = !{!12}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "integration/dataracebench/DRB002-antidep1-var-yes.c", directory: "/home/brad/Code/OpenRace/tests/data")
!2 = !{}
!3 = !{!4, !5, !8}
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!9 = !{i32 7, !"Dwarf Version", i32 4}
!10 = !{i32 2, !"Debug Info Version", i32 3}
!11 = !{i32 1, !"wchar_size", i32 4}
!12 = !{!"clang version 10.0.1 "}
!13 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 52, type: !14, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !16)
!14 = !DISubroutineType(types: !15)
!15 = !{!4, !4, !5}
!16 = !{!17, !18, !19, !20, !21, !23}
!17 = !DILocalVariable(name: "argc", arg: 1, scope: !13, file: !1, line: 52, type: !4)
!18 = !DILocalVariable(name: "argv", arg: 2, scope: !13, file: !1, line: 52, type: !5)
!19 = !DILocalVariable(name: "i", scope: !13, file: !1, line: 54, type: !4)
!20 = !DILocalVariable(name: "len", scope: !13, file: !1, line: 55, type: !4)
!21 = !DILocalVariable(name: "__vla_expr0", scope: !13, type: !22, flags: DIFlagArtificial)
!22 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!23 = !DILocalVariable(name: "a", scope: !13, file: !1, line: 60, type: !24)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: !21)
!27 = !{!28, !28, i64 0}
!28 = !{!"int", !29, i64 0}
!29 = !{!"omnipotent char", !30, i64 0}
!30 = !{!"Simple C/C++ TBAA"}
!31 = !DILocation(line: 52, column: 14, scope: !13)
!32 = !{!33, !33, i64 0}
!33 = !{!"any pointer", !29, i64 0}
!34 = !DILocation(line: 52, column: 26, scope: !13)
!35 = !DILocation(line: 54, column: 3, scope: !13)
!36 = !DILocation(line: 54, column: 7, scope: !13)
!37 = !DILocation(line: 55, column: 3, scope: !13)
!38 = !DILocation(line: 55, column: 7, scope: !13)
!39 = !DILocation(line: 57, column: 7, scope: !40)
!40 = distinct !DILexicalBlock(scope: !13, file: !1, line: 57, column: 7)
!41 = !DILocation(line: 57, column: 11, scope: !40)
!42 = !DILocation(line: 57, column: 7, scope: !13)
!43 = !DILocation(line: 58, column: 16, scope: !40)
!44 = !DILocation(line: 58, column: 11, scope: !40)
!45 = !DILocation(line: 58, column: 9, scope: !40)
!46 = !DILocation(line: 58, column: 5, scope: !40)
!47 = !DILocation(line: 60, column: 9, scope: !13)
!48 = !DILocation(line: 60, column: 3, scope: !13)
!49 = !DILocation(line: 0, scope: !13)
!50 = !DILocation(line: 60, column: 7, scope: !13)
!51 = !DILocation(line: 62, column: 9, scope: !52)
!52 = distinct !DILexicalBlock(scope: !13, file: !1, line: 62, column: 3)
!53 = !DILocation(line: 62, column: 8, scope: !52)
!54 = !DILocation(line: 62, column: 13, scope: !55)
!55 = distinct !DILexicalBlock(scope: !52, file: !1, line: 62, column: 3)
!56 = !DILocation(line: 62, column: 15, scope: !55)
!57 = !DILocation(line: 62, column: 14, scope: !55)
!58 = !DILocation(line: 62, column: 3, scope: !52)
!59 = !DILocation(line: 63, column: 11, scope: !55)
!60 = !DILocation(line: 63, column: 7, scope: !55)
!61 = !DILocation(line: 63, column: 5, scope: !55)
!62 = !DILocation(line: 63, column: 9, scope: !55)
!63 = !DILocation(line: 62, column: 21, scope: !55)
!64 = !DILocation(line: 62, column: 3, scope: !55)
!65 = distinct !{!65, !58, !66}
!66 = !DILocation(line: 63, column: 11, scope: !52)
!67 = !DILocation(line: 65, column: 1, scope: !13)
!68 = !{!69, !33, i64 16}
!69 = !{!"ident_t", !28, i64 0, !28, i64 4, !28, i64 8, !28, i64 12, !33, i64 16}
!70 = !DILocation(line: 69, column: 3, scope: !13)
!71 = !DILocation(line: 70, column: 1, scope: !13)
!72 = distinct !DISubprogram(name: "atoi", scope: !73, file: !73, line: 361, type: !74, scopeLine: 362, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !78)
!73 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!74 = !DISubroutineType(types: !75)
!75 = !{!4, !76}
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!78 = !{!79}
!79 = !DILocalVariable(name: "__nptr", arg: 1, scope: !72, file: !73, line: 361, type: !76)
!80 = !DILocation(line: 361, column: 1, scope: !72)
!81 = !DILocation(line: 363, column: 24, scope: !72)
!82 = !DILocation(line: 363, column: 16, scope: !72)
!83 = !DILocation(line: 363, column: 10, scope: !72)
!84 = !DILocation(line: 363, column: 3, scope: !72)
!85 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 66, type: !86, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !93)
!86 = !DISubroutineType(types: !87)
!87 = !{null, !88, !88, !92, !22, !92}
!88 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !89)
!89 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !90)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!92 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !4, size: 64)
!93 = !{!94, !95, !96, !97, !98, !99, !100, !100, !101, !102, !103, !104, !105, !101}
!94 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !85, type: !88, flags: DIFlagArtificial)
!95 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !85, type: !88, flags: DIFlagArtificial)
!96 = !DILocalVariable(name: "len", arg: 3, scope: !85, file: !1, line: 55, type: !92)
!97 = !DILocalVariable(name: "vla", arg: 4, scope: !85, type: !22, flags: DIFlagArtificial)
!98 = !DILocalVariable(name: "a", arg: 5, scope: !85, file: !1, line: 60, type: !92)
!99 = !DILocalVariable(name: ".omp.iv", scope: !85, type: !4, flags: DIFlagArtificial)
!100 = !DILocalVariable(name: ".capture_expr.", scope: !85, type: !4, flags: DIFlagArtificial)
!101 = !DILocalVariable(name: "i", scope: !85, type: !4, flags: DIFlagArtificial)
!102 = !DILocalVariable(name: ".omp.lb", scope: !85, type: !4, flags: DIFlagArtificial)
!103 = !DILocalVariable(name: ".omp.ub", scope: !85, type: !4, flags: DIFlagArtificial)
!104 = !DILocalVariable(name: ".omp.stride", scope: !85, type: !4, flags: DIFlagArtificial)
!105 = !DILocalVariable(name: ".omp.is_last", scope: !85, type: !4, flags: DIFlagArtificial)
!106 = !DILocation(line: 0, scope: !85)
!107 = !DILocation(line: 55, column: 7, scope: !85)
!108 = !{!109, !109, i64 0}
!109 = !{!"long", !29, i64 0}
!110 = !DILocation(line: 60, column: 7, scope: !85)
!111 = !DILocation(line: 66, column: 3, scope: !85)
!112 = !DILocation(line: 66, column: 15, scope: !85)
!113 = !DILocation(line: 66, column: 19, scope: !85)
!114 = !DILocation(line: 66, column: 23, scope: !85)
!115 = !DILocation(line: 66, column: 8, scope: !85)
!116 = !DILocation(line: 67, column: 12, scope: !85)
!117 = !DILocation(line: 67, column: 13, scope: !85)
!118 = !DILocation(line: 67, column: 10, scope: !85)
!119 = !DILocation(line: 67, column: 16, scope: !85)
!120 = !DILocation(line: 67, column: 7, scope: !85)
!121 = !DILocation(line: 67, column: 5, scope: !85)
!122 = !DILocation(line: 67, column: 9, scope: !85)
!123 = !DILocation(line: 65, column: 1, scope: !85)
!124 = distinct !{!124, !123, !125}
!125 = !DILocation(line: 65, column: 25, scope: !85)
!126 = !DILocation(line: 67, column: 17, scope: !85)
!127 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 66, type: !86, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !128)
!128 = !{!129, !130, !131, !132, !133}
!129 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !127, type: !88, flags: DIFlagArtificial)
!130 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !127, type: !88, flags: DIFlagArtificial)
!131 = !DILocalVariable(name: "len", arg: 3, scope: !127, type: !92, flags: DIFlagArtificial)
!132 = !DILocalVariable(name: "vla", arg: 4, scope: !127, type: !22, flags: DIFlagArtificial)
!133 = !DILocalVariable(name: "a", arg: 5, scope: !127, type: !92, flags: DIFlagArtificial)
!134 = !DILocation(line: 0, scope: !127)
!135 = !DILocation(line: 66, column: 3, scope: !127)
!136 = !{!137}
!137 = !{i64 2, i64 -1, i64 -1, i1 true}
