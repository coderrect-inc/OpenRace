; ModuleID = 'integration/dataracebench/DRB020-privatemissing-var-yes.c'
source_filename = "integration/dataracebench/DRB020-privatemissing-var-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [71 x i8] c";integration/dataracebench/DRB020-privatemissing-var-yes.c;main;62;1;;\00", align 1
@2 = private unnamed_addr constant [72 x i8] c";integration/dataracebench/DRB020-privatemissing-var-yes.c;main;62;25;;\00", align 1
@3 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !dbg !13 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %tmp = alloca i32, align 4
  %len = alloca i32, align 4
  %saved_stack = alloca i8*, align 8
  %__vla_expr0 = alloca i64, align 8
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4, !tbaa !28
  call void @llvm.dbg.declare(metadata i32* %argc.addr, metadata !17, metadata !DIExpression()), !dbg !32
  store i8** %argv, i8*** %argv.addr, align 8, !tbaa !33
  call void @llvm.dbg.declare(metadata i8*** %argv.addr, metadata !18, metadata !DIExpression()), !dbg !35
  %2 = bitcast i32* %i to i8*, !dbg !36
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #4, !dbg !36
  call void @llvm.dbg.declare(metadata i32* %i, metadata !19, metadata !DIExpression()), !dbg !37
  %3 = bitcast i32* %tmp to i8*, !dbg !38
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #4, !dbg !38
  call void @llvm.dbg.declare(metadata i32* %tmp, metadata !20, metadata !DIExpression()), !dbg !39
  %4 = bitcast i32* %len to i8*, !dbg !40
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #4, !dbg !40
  call void @llvm.dbg.declare(metadata i32* %len, metadata !21, metadata !DIExpression()), !dbg !41
  store i32 100, i32* %len, align 4, !dbg !41, !tbaa !28
  %5 = load i32, i32* %argc.addr, align 4, !dbg !42, !tbaa !28
  %cmp = icmp sgt i32 %5, 1, !dbg !44
  br i1 %cmp, label %if.then, label %if.end, !dbg !45

if.then:                                          ; preds = %entry
  %6 = load i8**, i8*** %argv.addr, align 8, !dbg !46, !tbaa !33
  %arrayidx = getelementptr inbounds i8*, i8** %6, i64 1, !dbg !46
  %7 = load i8*, i8** %arrayidx, align 8, !dbg !46, !tbaa !33
  %call = call i32 @atoi(i8* %7) #7, !dbg !47
  store i32 %call, i32* %len, align 4, !dbg !48, !tbaa !28
  br label %if.end, !dbg !49

if.end:                                           ; preds = %if.then, %entry
  %8 = load i32, i32* %len, align 4, !dbg !50, !tbaa !28
  %9 = zext i32 %8 to i64, !dbg !51
  %10 = call i8* @llvm.stacksave(), !dbg !51
  store i8* %10, i8** %saved_stack, align 8, !dbg !51
  %vla = alloca i32, i64 %9, align 16, !dbg !51
  store i64 %9, i64* %__vla_expr0, align 8, !dbg !51
  call void @llvm.dbg.declare(metadata i64* %__vla_expr0, metadata !22, metadata !DIExpression()), !dbg !52
  call void @llvm.dbg.declare(metadata i32* %vla, metadata !24, metadata !DIExpression()), !dbg !53
  store i32 0, i32* %i, align 4, !dbg !54, !tbaa !28
  br label %for.cond, !dbg !56

for.cond:                                         ; preds = %for.inc, %if.end
  %11 = load i32, i32* %i, align 4, !dbg !57, !tbaa !28
  %12 = load i32, i32* %len, align 4, !dbg !59, !tbaa !28
  %cmp1 = icmp slt i32 %11, %12, !dbg !60
  br i1 %cmp1, label %for.body, label %for.end, !dbg !61

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %i, align 4, !dbg !62, !tbaa !28
  %14 = load i32, i32* %i, align 4, !dbg !63, !tbaa !28
  %idxprom = sext i32 %14 to i64, !dbg !64
  %arrayidx2 = getelementptr inbounds i32, i32* %vla, i64 %idxprom, !dbg !64
  store i32 %13, i32* %arrayidx2, align 4, !dbg !65, !tbaa !28
  br label %for.inc, !dbg !64

for.inc:                                          ; preds = %for.body
  %15 = load i32, i32* %i, align 4, !dbg !66, !tbaa !28
  %inc = add nsw i32 %15, 1, !dbg !66
  store i32 %inc, i32* %i, align 4, !dbg !66, !tbaa !28
  br label %for.cond, !dbg !67, !llvm.loop !68

for.end:                                          ; preds = %for.cond
  %16 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !70
  store i8* getelementptr inbounds ([71 x i8], [71 x i8]* @1, i32 0, i32 0), i8** %16, align 8, !dbg !70, !tbaa !71
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 4, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*, i64, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %len, i32* %tmp, i64 %9, i32* %vla), !dbg !70
  store i32 0, i32* %retval, align 4, !dbg !73
  %17 = load i8*, i8** %saved_stack, align 8, !dbg !74
  call void @llvm.stackrestore(i8* %17), !dbg !74
  %18 = bitcast i32* %len to i8*, !dbg !74
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %18) #4, !dbg !74
  %19 = bitcast i32* %tmp to i8*, !dbg !74
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %19) #4, !dbg !74
  %20 = bitcast i32* %i to i8*, !dbg !74
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %20) #4, !dbg !74
  %21 = load i32, i32* %retval, align 4, !dbg !74
  ret i32 %21, !dbg !74
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: inlinehint nounwind readonly uwtable
define available_externally dso_local i32 @atoi(i8* nonnull %__nptr) #3 !dbg !75 {
entry:
  %__nptr.addr = alloca i8*, align 8
  store i8* %__nptr, i8** %__nptr.addr, align 8, !tbaa !33
  call void @llvm.dbg.declare(metadata i8** %__nptr.addr, metadata !82, metadata !DIExpression()), !dbg !83
  %0 = load i8*, i8** %__nptr.addr, align 8, !dbg !84, !tbaa !33
  %call = call i64 @strtol(i8* %0, i8** null, i32 10) #4, !dbg !85
  %conv = trunc i64 %call to i32, !dbg !86
  ret i32 %conv, !dbg !87
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #4

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %len, i32* dereferenceable(4) %tmp, i64 %vla, i32* dereferenceable(4) %a) #5 !dbg !88 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %tmp.addr = alloca i32*, align 8
  %vla.addr = alloca i64, align 8
  %a.addr = alloca i32*, align 8
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
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !33
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !97, metadata !DIExpression()), !dbg !110
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !33
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !98, metadata !DIExpression()), !dbg !110
  store i32* %len, i32** %len.addr, align 8, !tbaa !33
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !99, metadata !DIExpression()), !dbg !111
  store i32* %tmp, i32** %tmp.addr, align 8, !tbaa !33
  call void @llvm.dbg.declare(metadata i32** %tmp.addr, metadata !100, metadata !DIExpression()), !dbg !112
  store i64 %vla, i64* %vla.addr, align 8, !tbaa !113
  call void @llvm.dbg.declare(metadata i64* %vla.addr, metadata !101, metadata !DIExpression()), !dbg !110
  store i32* %a, i32** %a.addr, align 8, !tbaa !33
  call void @llvm.dbg.declare(metadata i32** %a.addr, metadata !102, metadata !DIExpression()), !dbg !115
  %2 = load i32*, i32** %len.addr, align 8, !dbg !116, !tbaa !33
  %3 = load i32*, i32** %tmp.addr, align 8, !dbg !116, !tbaa !33
  %4 = load i64, i64* %vla.addr, align 8, !dbg !116, !tbaa !113
  %5 = load i32*, i32** %a.addr, align 8, !dbg !116, !tbaa !33
  %6 = bitcast i32* %.omp.iv to i8*, !dbg !116
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #4, !dbg !116
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !103, metadata !DIExpression()), !dbg !110
  %7 = bitcast i32* %.capture_expr. to i8*, !dbg !116
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #4, !dbg !116
  call void @llvm.dbg.declare(metadata i32* %.capture_expr., metadata !104, metadata !DIExpression()), !dbg !110
  %8 = load i32, i32* %2, align 4, !dbg !117, !tbaa !28
  store i32 %8, i32* %.capture_expr., align 4, !dbg !117, !tbaa !28
  %9 = bitcast i32* %.capture_expr.2 to i8*, !dbg !116
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #4, !dbg !116
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.2, metadata !104, metadata !DIExpression()), !dbg !110
  %10 = load i32, i32* %.capture_expr., align 4, !dbg !117, !tbaa !28
  %sub = sub nsw i32 %10, 0, !dbg !116
  %sub3 = sub nsw i32 %sub, 1, !dbg !116
  %add = add nsw i32 %sub3, 1, !dbg !116
  %div = sdiv i32 %add, 1, !dbg !116
  %sub4 = sub nsw i32 %div, 1, !dbg !116
  store i32 %sub4, i32* %.capture_expr.2, align 4, !dbg !116, !tbaa !28
  %11 = bitcast i32* %i to i8*, !dbg !116
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #4, !dbg !116
  call void @llvm.dbg.declare(metadata i32* %i, metadata !105, metadata !DIExpression()), !dbg !110
  store i32 0, i32* %i, align 4, !dbg !118, !tbaa !28
  %12 = bitcast i32* %i to i8*, !dbg !116
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %12) #4, !dbg !116
  %13 = load i32, i32* %.capture_expr., align 4, !dbg !117, !tbaa !28
  %cmp = icmp slt i32 0, %13, !dbg !116
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end, !dbg !116

omp.precond.then:                                 ; preds = %entry
  %14 = bitcast i32* %.omp.lb to i8*, !dbg !116
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %14) #4, !dbg !116
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !106, metadata !DIExpression()), !dbg !110
  store i32 0, i32* %.omp.lb, align 4, !dbg !119, !tbaa !28
  %15 = bitcast i32* %.omp.ub to i8*, !dbg !116
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %15) #4, !dbg !116
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !107, metadata !DIExpression()), !dbg !110
  %16 = load i32, i32* %.capture_expr.2, align 4, !dbg !116, !tbaa !28
  store i32 %16, i32* %.omp.ub, align 4, !dbg !119, !tbaa !28
  %17 = bitcast i32* %.omp.stride to i8*, !dbg !116
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %17) #4, !dbg !116
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !108, metadata !DIExpression()), !dbg !110
  store i32 1, i32* %.omp.stride, align 4, !dbg !119, !tbaa !28
  %18 = bitcast i32* %.omp.is_last to i8*, !dbg !116
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %18) #4, !dbg !116
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !109, metadata !DIExpression()), !dbg !110
  store i32 0, i32* %.omp.is_last, align 4, !dbg !119, !tbaa !28
  %19 = bitcast i32* %i5 to i8*, !dbg !116
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %19) #4, !dbg !116
  call void @llvm.dbg.declare(metadata i32* %i5, metadata !105, metadata !DIExpression()), !dbg !110
  %20 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !116
  store i8* getelementptr inbounds ([71 x i8], [71 x i8]* @1, i32 0, i32 0), i8** %20, align 8, !dbg !116, !tbaa !71
  %21 = load i32*, i32** %.global_tid..addr, align 8, !dbg !116
  %22 = load i32, i32* %21, align 4, !dbg !116, !tbaa !28
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %22, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !116
  %23 = load i32, i32* %.omp.ub, align 4, !dbg !119, !tbaa !28
  %24 = load i32, i32* %.capture_expr.2, align 4, !dbg !116, !tbaa !28
  %cmp6 = icmp sgt i32 %23, %24, !dbg !119
  br i1 %cmp6, label %cond.true, label %cond.false, !dbg !119

cond.true:                                        ; preds = %omp.precond.then
  %25 = load i32, i32* %.capture_expr.2, align 4, !dbg !116, !tbaa !28
  br label %cond.end, !dbg !119

cond.false:                                       ; preds = %omp.precond.then
  %26 = load i32, i32* %.omp.ub, align 4, !dbg !119, !tbaa !28
  br label %cond.end, !dbg !119

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %25, %cond.true ], [ %26, %cond.false ], !dbg !119
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !119, !tbaa !28
  %27 = load i32, i32* %.omp.lb, align 4, !dbg !119, !tbaa !28
  store i32 %27, i32* %.omp.iv, align 4, !dbg !119, !tbaa !28
  br label %omp.inner.for.cond, !dbg !116

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %28 = load i32, i32* %.omp.iv, align 4, !dbg !119, !tbaa !28
  %29 = load i32, i32* %.omp.ub, align 4, !dbg !119, !tbaa !28
  %cmp7 = icmp sle i32 %28, %29, !dbg !116
  br i1 %cmp7, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !116

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !116

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %30 = load i32, i32* %.omp.iv, align 4, !dbg !119, !tbaa !28
  %mul = mul nsw i32 %30, 1, !dbg !118
  %add8 = add nsw i32 0, %mul, !dbg !118
  store i32 %add8, i32* %i5, align 4, !dbg !118, !tbaa !28
  %31 = load i32, i32* %i5, align 4, !dbg !120, !tbaa !28
  %idxprom = sext i32 %31 to i64, !dbg !122
  %arrayidx = getelementptr inbounds i32, i32* %5, i64 %idxprom, !dbg !122
  %32 = load i32, i32* %arrayidx, align 4, !dbg !122, !tbaa !28
  %33 = load i32, i32* %i5, align 4, !dbg !123, !tbaa !28
  %add9 = add nsw i32 %32, %33, !dbg !124
  store i32 %add9, i32* %3, align 4, !dbg !125, !tbaa !28
  %34 = load i32, i32* %3, align 4, !dbg !126, !tbaa !28
  %35 = load i32, i32* %i5, align 4, !dbg !127, !tbaa !28
  %idxprom10 = sext i32 %35 to i64, !dbg !128
  %arrayidx11 = getelementptr inbounds i32, i32* %5, i64 %idxprom10, !dbg !128
  store i32 %34, i32* %arrayidx11, align 4, !dbg !129, !tbaa !28
  br label %omp.body.continue, !dbg !130

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !131

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %36 = load i32, i32* %.omp.iv, align 4, !dbg !119, !tbaa !28
  %add12 = add nsw i32 %36, 1, !dbg !116
  store i32 %add12, i32* %.omp.iv, align 4, !dbg !116, !tbaa !28
  br label %omp.inner.for.cond, !dbg !131, !llvm.loop !132

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !131

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %37 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !131
  store i8* getelementptr inbounds ([72 x i8], [72 x i8]* @2, i32 0, i32 0), i8** %37, align 8, !dbg !131, !tbaa !71
  %38 = load i32*, i32** %.global_tid..addr, align 8, !dbg !131
  %39 = load i32, i32* %38, align 4, !dbg !131, !tbaa !28
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %39), !dbg !131
  %40 = bitcast i32* %i5 to i8*, !dbg !131
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %40) #4, !dbg !131
  %41 = bitcast i32* %.omp.is_last to i8*, !dbg !131
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %41) #4, !dbg !131
  %42 = bitcast i32* %.omp.stride to i8*, !dbg !131
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %42) #4, !dbg !131
  %43 = bitcast i32* %.omp.ub to i8*, !dbg !131
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %43) #4, !dbg !131
  %44 = bitcast i32* %.omp.lb to i8*, !dbg !131
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %44) #4, !dbg !131
  br label %omp.precond.end, !dbg !131

omp.precond.end:                                  ; preds = %omp.loop.exit, %entry
  %45 = bitcast i32* %.capture_expr.2 to i8*, !dbg !131
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %45) #4, !dbg !131
  %46 = bitcast i32* %.capture_expr. to i8*, !dbg !131
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %46) #4, !dbg !131
  %47 = bitcast i32* %.omp.iv to i8*, !dbg !131
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %47) #4, !dbg !131
  ret void, !dbg !134
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %len, i32* dereferenceable(4) %tmp, i64 %vla, i32* dereferenceable(4) %a) #5 !dbg !135 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %tmp.addr = alloca i32*, align 8
  %vla.addr = alloca i64, align 8
  %a.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !33
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !137, metadata !DIExpression()), !dbg !143
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !33
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !138, metadata !DIExpression()), !dbg !143
  store i32* %len, i32** %len.addr, align 8, !tbaa !33
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !139, metadata !DIExpression()), !dbg !143
  store i32* %tmp, i32** %tmp.addr, align 8, !tbaa !33
  call void @llvm.dbg.declare(metadata i32** %tmp.addr, metadata !140, metadata !DIExpression()), !dbg !143
  store i64 %vla, i64* %vla.addr, align 8, !tbaa !113
  call void @llvm.dbg.declare(metadata i64* %vla.addr, metadata !141, metadata !DIExpression()), !dbg !143
  store i32* %a, i32** %a.addr, align 8, !tbaa !33
  call void @llvm.dbg.declare(metadata i32** %a.addr, metadata !142, metadata !DIExpression()), !dbg !143
  %0 = load i32*, i32** %len.addr, align 8, !dbg !144, !tbaa !33
  %1 = load i32*, i32** %tmp.addr, align 8, !dbg !144, !tbaa !33
  %2 = load i64, i64* %vla.addr, align 8, !dbg !144, !tbaa !113
  %3 = load i32*, i32** %a.addr, align 8, !dbg !144, !tbaa !33
  %4 = load i32*, i32** %.global_tid..addr, align 8, !dbg !144, !tbaa !33
  %5 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !144, !tbaa !33
  %6 = load i32*, i32** %len.addr, align 8, !dbg !144, !tbaa !33
  %7 = load i32*, i32** %tmp.addr, align 8, !dbg !144, !tbaa !33
  %8 = load i32*, i32** %a.addr, align 8, !dbg !144, !tbaa !33
  call void @.omp_outlined._debug__(i32* %4, i32* %5, i32* %6, i32* %7, i64 %2, i32* %8) #4, !dbg !144
  ret void, !dbg !144
}

declare !callback !145 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

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
!1 = !DIFile(filename: "integration/dataracebench/DRB020-privatemissing-var-yes.c", directory: "/home/brad/Code/OpenRace/tests/data")
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
!13 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 51, type: !14, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !16)
!14 = !DISubroutineType(types: !15)
!15 = !{!4, !4, !5}
!16 = !{!17, !18, !19, !20, !21, !22, !24}
!17 = !DILocalVariable(name: "argc", arg: 1, scope: !13, file: !1, line: 51, type: !4)
!18 = !DILocalVariable(name: "argv", arg: 2, scope: !13, file: !1, line: 51, type: !5)
!19 = !DILocalVariable(name: "i", scope: !13, file: !1, line: 53, type: !4)
!20 = !DILocalVariable(name: "tmp", scope: !13, file: !1, line: 54, type: !4)
!21 = !DILocalVariable(name: "len", scope: !13, file: !1, line: 55, type: !4)
!22 = !DILocalVariable(name: "__vla_expr0", scope: !13, type: !23, flags: DIFlagArtificial)
!23 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!24 = !DILocalVariable(name: "a", scope: !13, file: !1, line: 58, type: !25)
!25 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !26)
!26 = !{!27}
!27 = !DISubrange(count: !22)
!28 = !{!29, !29, i64 0}
!29 = !{!"int", !30, i64 0}
!30 = !{!"omnipotent char", !31, i64 0}
!31 = !{!"Simple C/C++ TBAA"}
!32 = !DILocation(line: 51, column: 14, scope: !13)
!33 = !{!34, !34, i64 0}
!34 = !{!"any pointer", !30, i64 0}
!35 = !DILocation(line: 51, column: 26, scope: !13)
!36 = !DILocation(line: 53, column: 3, scope: !13)
!37 = !DILocation(line: 53, column: 7, scope: !13)
!38 = !DILocation(line: 54, column: 3, scope: !13)
!39 = !DILocation(line: 54, column: 7, scope: !13)
!40 = !DILocation(line: 55, column: 3, scope: !13)
!41 = !DILocation(line: 55, column: 7, scope: !13)
!42 = !DILocation(line: 56, column: 7, scope: !43)
!43 = distinct !DILexicalBlock(scope: !13, file: !1, line: 56, column: 7)
!44 = !DILocation(line: 56, column: 11, scope: !43)
!45 = !DILocation(line: 56, column: 7, scope: !13)
!46 = !DILocation(line: 57, column: 16, scope: !43)
!47 = !DILocation(line: 57, column: 11, scope: !43)
!48 = !DILocation(line: 57, column: 9, scope: !43)
!49 = !DILocation(line: 57, column: 5, scope: !43)
!50 = !DILocation(line: 58, column: 9, scope: !13)
!51 = !DILocation(line: 58, column: 3, scope: !13)
!52 = !DILocation(line: 0, scope: !13)
!53 = !DILocation(line: 58, column: 7, scope: !13)
!54 = !DILocation(line: 59, column: 9, scope: !55)
!55 = distinct !DILexicalBlock(scope: !13, file: !1, line: 59, column: 3)
!56 = !DILocation(line: 59, column: 8, scope: !55)
!57 = !DILocation(line: 59, column: 12, scope: !58)
!58 = distinct !DILexicalBlock(scope: !55, file: !1, line: 59, column: 3)
!59 = !DILocation(line: 59, column: 14, scope: !58)
!60 = !DILocation(line: 59, column: 13, scope: !58)
!61 = !DILocation(line: 59, column: 3, scope: !55)
!62 = !DILocation(line: 60, column: 10, scope: !58)
!63 = !DILocation(line: 60, column: 7, scope: !58)
!64 = !DILocation(line: 60, column: 5, scope: !58)
!65 = !DILocation(line: 60, column: 9, scope: !58)
!66 = !DILocation(line: 59, column: 19, scope: !58)
!67 = !DILocation(line: 59, column: 3, scope: !58)
!68 = distinct !{!68, !61, !69}
!69 = !DILocation(line: 60, column: 10, scope: !55)
!70 = !DILocation(line: 62, column: 1, scope: !13)
!71 = !{!72, !34, i64 16}
!72 = !{!"ident_t", !29, i64 0, !29, i64 4, !29, i64 8, !29, i64 12, !34, i64 16}
!73 = !DILocation(line: 68, column: 3, scope: !13)
!74 = !DILocation(line: 69, column: 1, scope: !13)
!75 = distinct !DISubprogram(name: "atoi", scope: !76, file: !76, line: 361, type: !77, scopeLine: 362, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !81)
!76 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!77 = !DISubroutineType(types: !78)
!78 = !{!4, !79}
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!81 = !{!82}
!82 = !DILocalVariable(name: "__nptr", arg: 1, scope: !75, file: !76, line: 361, type: !79)
!83 = !DILocation(line: 361, column: 1, scope: !75)
!84 = !DILocation(line: 363, column: 24, scope: !75)
!85 = !DILocation(line: 363, column: 16, scope: !75)
!86 = !DILocation(line: 363, column: 10, scope: !75)
!87 = !DILocation(line: 363, column: 3, scope: !75)
!88 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 63, type: !89, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !96)
!89 = !DISubroutineType(types: !90)
!90 = !{null, !91, !91, !95, !95, !23, !95}
!91 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !92)
!92 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !93)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!95 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !4, size: 64)
!96 = !{!97, !98, !99, !100, !101, !102, !103, !104, !104, !105, !106, !107, !108, !109, !105}
!97 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !88, type: !91, flags: DIFlagArtificial)
!98 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !88, type: !91, flags: DIFlagArtificial)
!99 = !DILocalVariable(name: "len", arg: 3, scope: !88, file: !1, line: 55, type: !95)
!100 = !DILocalVariable(name: "tmp", arg: 4, scope: !88, file: !1, line: 54, type: !95)
!101 = !DILocalVariable(name: "vla", arg: 5, scope: !88, type: !23, flags: DIFlagArtificial)
!102 = !DILocalVariable(name: "a", arg: 6, scope: !88, file: !1, line: 58, type: !95)
!103 = !DILocalVariable(name: ".omp.iv", scope: !88, type: !4, flags: DIFlagArtificial)
!104 = !DILocalVariable(name: ".capture_expr.", scope: !88, type: !4, flags: DIFlagArtificial)
!105 = !DILocalVariable(name: "i", scope: !88, type: !4, flags: DIFlagArtificial)
!106 = !DILocalVariable(name: ".omp.lb", scope: !88, type: !4, flags: DIFlagArtificial)
!107 = !DILocalVariable(name: ".omp.ub", scope: !88, type: !4, flags: DIFlagArtificial)
!108 = !DILocalVariable(name: ".omp.stride", scope: !88, type: !4, flags: DIFlagArtificial)
!109 = !DILocalVariable(name: ".omp.is_last", scope: !88, type: !4, flags: DIFlagArtificial)
!110 = !DILocation(line: 0, scope: !88)
!111 = !DILocation(line: 55, column: 7, scope: !88)
!112 = !DILocation(line: 54, column: 7, scope: !88)
!113 = !{!114, !114, i64 0}
!114 = !{!"long", !30, i64 0}
!115 = !DILocation(line: 58, column: 7, scope: !88)
!116 = !DILocation(line: 63, column: 3, scope: !88)
!117 = !DILocation(line: 63, column: 14, scope: !88)
!118 = !DILocation(line: 63, column: 18, scope: !88)
!119 = !DILocation(line: 63, column: 8, scope: !88)
!120 = !DILocation(line: 65, column: 12, scope: !121)
!121 = distinct !DILexicalBlock(scope: !88, file: !1, line: 64, column: 3)
!122 = !DILocation(line: 65, column: 10, scope: !121)
!123 = !DILocation(line: 65, column: 15, scope: !121)
!124 = !DILocation(line: 65, column: 14, scope: !121)
!125 = !DILocation(line: 65, column: 9, scope: !121)
!126 = !DILocation(line: 66, column: 12, scope: !121)
!127 = !DILocation(line: 66, column: 7, scope: !121)
!128 = !DILocation(line: 66, column: 5, scope: !121)
!129 = !DILocation(line: 66, column: 10, scope: !121)
!130 = !DILocation(line: 67, column: 3, scope: !121)
!131 = !DILocation(line: 62, column: 1, scope: !88)
!132 = distinct !{!132, !131, !133}
!133 = !DILocation(line: 62, column: 25, scope: !88)
!134 = !DILocation(line: 67, column: 3, scope: !88)
!135 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 63, type: !89, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !136)
!136 = !{!137, !138, !139, !140, !141, !142}
!137 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !135, type: !91, flags: DIFlagArtificial)
!138 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !135, type: !91, flags: DIFlagArtificial)
!139 = !DILocalVariable(name: "len", arg: 3, scope: !135, type: !95, flags: DIFlagArtificial)
!140 = !DILocalVariable(name: "tmp", arg: 4, scope: !135, type: !95, flags: DIFlagArtificial)
!141 = !DILocalVariable(name: "vla", arg: 5, scope: !135, type: !23, flags: DIFlagArtificial)
!142 = !DILocalVariable(name: "a", arg: 6, scope: !135, type: !95, flags: DIFlagArtificial)
!143 = !DILocation(line: 0, scope: !135)
!144 = !DILocation(line: 63, column: 3, scope: !135)
!145 = !{!146}
!146 = !{i64 2, i64 -1, i64 -1, i1 true}
