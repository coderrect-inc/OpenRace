; ModuleID = 'integration/dataracebench/DRB012-minusminus-var-yes.c'
source_filename = "integration/dataracebench/DRB012-minusminus-var-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [67 x i8] c";integration/dataracebench/DRB012-minusminus-var-yes.c;main;71;1;;\00", align 1
@2 = private unnamed_addr constant [68 x i8] c";integration/dataracebench/DRB012-minusminus-var-yes.c;main;71;25;;\00", align 1
@3 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !dbg !13 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %len = alloca i32, align 4
  %numNodes = alloca i32, align 4
  %numNodes2 = alloca i32, align 4
  %saved_stack = alloca i8*, align 8
  %__vla_expr0 = alloca i64, align 8
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4, !tbaa !29
  call void @llvm.dbg.declare(metadata i32* %argc.addr, metadata !17, metadata !DIExpression()), !dbg !33
  store i8** %argv, i8*** %argv.addr, align 8, !tbaa !34
  call void @llvm.dbg.declare(metadata i8*** %argv.addr, metadata !18, metadata !DIExpression()), !dbg !36
  %2 = bitcast i32* %i to i8*, !dbg !37
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #4, !dbg !37
  call void @llvm.dbg.declare(metadata i32* %i, metadata !19, metadata !DIExpression()), !dbg !38
  %3 = bitcast i32* %len to i8*, !dbg !39
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #4, !dbg !39
  call void @llvm.dbg.declare(metadata i32* %len, metadata !20, metadata !DIExpression()), !dbg !40
  store i32 100, i32* %len, align 4, !dbg !40, !tbaa !29
  %4 = load i32, i32* %argc.addr, align 4, !dbg !41, !tbaa !29
  %cmp = icmp sgt i32 %4, 1, !dbg !43
  br i1 %cmp, label %if.then, label %if.end, !dbg !44

if.then:                                          ; preds = %entry
  %5 = load i8**, i8*** %argv.addr, align 8, !dbg !45, !tbaa !34
  %arrayidx = getelementptr inbounds i8*, i8** %5, i64 1, !dbg !45
  %6 = load i8*, i8** %arrayidx, align 8, !dbg !45, !tbaa !34
  %call = call i32 @atoi(i8* %6) #7, !dbg !46
  store i32 %call, i32* %len, align 4, !dbg !47, !tbaa !29
  br label %if.end, !dbg !48

if.end:                                           ; preds = %if.then, %entry
  %7 = bitcast i32* %numNodes to i8*, !dbg !49
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #4, !dbg !49
  call void @llvm.dbg.declare(metadata i32* %numNodes, metadata !21, metadata !DIExpression()), !dbg !50
  %8 = load i32, i32* %len, align 4, !dbg !51, !tbaa !29
  store i32 %8, i32* %numNodes, align 4, !dbg !50, !tbaa !29
  %9 = bitcast i32* %numNodes2 to i8*, !dbg !49
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #4, !dbg !49
  call void @llvm.dbg.declare(metadata i32* %numNodes2, metadata !22, metadata !DIExpression()), !dbg !52
  store i32 0, i32* %numNodes2, align 4, !dbg !52, !tbaa !29
  %10 = load i32, i32* %len, align 4, !dbg !53, !tbaa !29
  %11 = zext i32 %10 to i64, !dbg !54
  %12 = call i8* @llvm.stacksave(), !dbg !54
  store i8* %12, i8** %saved_stack, align 8, !dbg !54
  %vla = alloca i32, i64 %11, align 16, !dbg !54
  store i64 %11, i64* %__vla_expr0, align 8, !dbg !54
  call void @llvm.dbg.declare(metadata i64* %__vla_expr0, metadata !23, metadata !DIExpression()), !dbg !55
  call void @llvm.dbg.declare(metadata i32* %vla, metadata !25, metadata !DIExpression()), !dbg !56
  store i32 0, i32* %i, align 4, !dbg !57, !tbaa !29
  br label %for.cond, !dbg !59

for.cond:                                         ; preds = %for.inc, %if.end
  %13 = load i32, i32* %i, align 4, !dbg !60, !tbaa !29
  %14 = load i32, i32* %len, align 4, !dbg !62, !tbaa !29
  %cmp1 = icmp slt i32 %13, %14, !dbg !63
  br i1 %cmp1, label %for.body, label %for.end, !dbg !64

for.body:                                         ; preds = %for.cond
  %15 = load i32, i32* %i, align 4, !dbg !65, !tbaa !29
  %rem = srem i32 %15, 2, !dbg !68
  %cmp2 = icmp eq i32 %rem, 0, !dbg !69
  br i1 %cmp2, label %if.then3, label %if.else, !dbg !70

if.then3:                                         ; preds = %for.body
  %16 = load i32, i32* %i, align 4, !dbg !71, !tbaa !29
  %idxprom = sext i32 %16 to i64, !dbg !72
  %arrayidx4 = getelementptr inbounds i32, i32* %vla, i64 %idxprom, !dbg !72
  store i32 5, i32* %arrayidx4, align 4, !dbg !73, !tbaa !29
  br label %if.end7, !dbg !72

if.else:                                          ; preds = %for.body
  %17 = load i32, i32* %i, align 4, !dbg !74, !tbaa !29
  %idxprom5 = sext i32 %17 to i64, !dbg !75
  %arrayidx6 = getelementptr inbounds i32, i32* %vla, i64 %idxprom5, !dbg !75
  store i32 -5, i32* %arrayidx6, align 4, !dbg !76, !tbaa !29
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then3
  br label %for.inc, !dbg !77

for.inc:                                          ; preds = %if.end7
  %18 = load i32, i32* %i, align 4, !dbg !78, !tbaa !29
  %inc = add nsw i32 %18, 1, !dbg !78
  store i32 %inc, i32* %i, align 4, !dbg !78, !tbaa !29
  br label %for.cond, !dbg !79, !llvm.loop !80

for.end:                                          ; preds = %for.cond
  %19 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !82
  store i8* getelementptr inbounds ([67 x i8], [67 x i8]* @1, i32 0, i32 0), i8** %19, align 8, !dbg !82, !tbaa !83
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 4, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i64, i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %numNodes, i64 %11, i32* %vla, i32* %numNodes2), !dbg !82
  store i32 0, i32* %retval, align 4, !dbg !85
  %20 = load i8*, i8** %saved_stack, align 8, !dbg !86
  call void @llvm.stackrestore(i8* %20), !dbg !86
  %21 = bitcast i32* %numNodes2 to i8*, !dbg !86
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %21) #4, !dbg !86
  %22 = bitcast i32* %numNodes to i8*, !dbg !86
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %22) #4, !dbg !86
  %23 = bitcast i32* %len to i8*, !dbg !86
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %23) #4, !dbg !86
  %24 = bitcast i32* %i to i8*, !dbg !86
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %24) #4, !dbg !86
  %25 = load i32, i32* %retval, align 4, !dbg !86
  ret i32 %25, !dbg !86
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: inlinehint nounwind readonly uwtable
define available_externally dso_local i32 @atoi(i8* nonnull %__nptr) #3 !dbg !87 {
entry:
  %__nptr.addr = alloca i8*, align 8
  store i8* %__nptr, i8** %__nptr.addr, align 8, !tbaa !34
  call void @llvm.dbg.declare(metadata i8** %__nptr.addr, metadata !94, metadata !DIExpression()), !dbg !95
  %0 = load i8*, i8** %__nptr.addr, align 8, !dbg !96, !tbaa !34
  %call = call i64 @strtol(i8* %0, i8** null, i32 10) #4, !dbg !97
  %conv = trunc i64 %call to i32, !dbg !98
  ret i32 %conv, !dbg !99
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #4

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %numNodes, i64 %vla, i32* dereferenceable(4) %x, i32* dereferenceable(4) %numNodes2) #5 !dbg !100 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %numNodes.addr = alloca i32*, align 8
  %vla.addr = alloca i64, align 8
  %x.addr = alloca i32*, align 8
  %numNodes2.addr = alloca i32*, align 8
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
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !34
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !109, metadata !DIExpression()), !dbg !122
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !34
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !110, metadata !DIExpression()), !dbg !122
  store i32* %numNodes, i32** %numNodes.addr, align 8, !tbaa !34
  call void @llvm.dbg.declare(metadata i32** %numNodes.addr, metadata !111, metadata !DIExpression()), !dbg !123
  store i64 %vla, i64* %vla.addr, align 8, !tbaa !124
  call void @llvm.dbg.declare(metadata i64* %vla.addr, metadata !112, metadata !DIExpression()), !dbg !122
  store i32* %x, i32** %x.addr, align 8, !tbaa !34
  call void @llvm.dbg.declare(metadata i32** %x.addr, metadata !113, metadata !DIExpression()), !dbg !126
  store i32* %numNodes2, i32** %numNodes2.addr, align 8, !tbaa !34
  call void @llvm.dbg.declare(metadata i32** %numNodes2.addr, metadata !114, metadata !DIExpression()), !dbg !127
  %2 = load i32*, i32** %numNodes.addr, align 8, !dbg !128, !tbaa !34
  %3 = load i64, i64* %vla.addr, align 8, !dbg !128, !tbaa !124
  %4 = load i32*, i32** %x.addr, align 8, !dbg !128, !tbaa !34
  %5 = load i32*, i32** %numNodes2.addr, align 8, !dbg !128, !tbaa !34
  %6 = bitcast i32* %.omp.iv to i8*, !dbg !128
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #4, !dbg !128
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !115, metadata !DIExpression()), !dbg !122
  %7 = bitcast i32* %.capture_expr. to i8*, !dbg !128
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #4, !dbg !128
  call void @llvm.dbg.declare(metadata i32* %.capture_expr., metadata !116, metadata !DIExpression()), !dbg !122
  %8 = load i32, i32* %2, align 4, !dbg !129, !tbaa !29
  %sub = sub nsw i32 %8, 1, !dbg !130
  store i32 %sub, i32* %.capture_expr., align 4, !dbg !129, !tbaa !29
  %9 = bitcast i32* %.capture_expr.1 to i8*, !dbg !128
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #4, !dbg !128
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.1, metadata !116, metadata !DIExpression()), !dbg !122
  %10 = load i32, i32* %.capture_expr., align 4, !dbg !130, !tbaa !29
  %sub2 = sub nsw i32 %10, -1, !dbg !128
  %sub3 = sub nsw i32 %sub2, 1, !dbg !128
  %add = add nsw i32 %sub3, 1, !dbg !128
  %div = sdiv i32 %add, 1, !dbg !128
  %sub4 = sub nsw i32 %div, 1, !dbg !128
  store i32 %sub4, i32* %.capture_expr.1, align 4, !dbg !128, !tbaa !29
  %11 = bitcast i32* %i to i8*, !dbg !128
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #4, !dbg !128
  call void @llvm.dbg.declare(metadata i32* %i, metadata !117, metadata !DIExpression()), !dbg !122
  %12 = load i32, i32* %.capture_expr., align 4, !dbg !130, !tbaa !29
  store i32 %12, i32* %i, align 4, !dbg !131, !tbaa !29
  %13 = bitcast i32* %i to i8*, !dbg !128
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %13) #4, !dbg !128
  %14 = load i32, i32* %.capture_expr., align 4, !dbg !130, !tbaa !29
  %cmp = icmp sgt i32 %14, -1, !dbg !128
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end, !dbg !128

omp.precond.then:                                 ; preds = %entry
  %15 = bitcast i32* %.omp.lb to i8*, !dbg !128
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %15) #4, !dbg !128
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !118, metadata !DIExpression()), !dbg !122
  store i32 0, i32* %.omp.lb, align 4, !dbg !132, !tbaa !29
  %16 = bitcast i32* %.omp.ub to i8*, !dbg !128
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %16) #4, !dbg !128
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !119, metadata !DIExpression()), !dbg !122
  %17 = load i32, i32* %.capture_expr.1, align 4, !dbg !128, !tbaa !29
  store i32 %17, i32* %.omp.ub, align 4, !dbg !132, !tbaa !29
  %18 = bitcast i32* %.omp.stride to i8*, !dbg !128
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %18) #4, !dbg !128
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !120, metadata !DIExpression()), !dbg !122
  store i32 1, i32* %.omp.stride, align 4, !dbg !132, !tbaa !29
  %19 = bitcast i32* %.omp.is_last to i8*, !dbg !128
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %19) #4, !dbg !128
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !121, metadata !DIExpression()), !dbg !122
  store i32 0, i32* %.omp.is_last, align 4, !dbg !132, !tbaa !29
  %20 = bitcast i32* %i5 to i8*, !dbg !128
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %20) #4, !dbg !128
  call void @llvm.dbg.declare(metadata i32* %i5, metadata !117, metadata !DIExpression()), !dbg !122
  %21 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !128
  store i8* getelementptr inbounds ([67 x i8], [67 x i8]* @1, i32 0, i32 0), i8** %21, align 8, !dbg !128, !tbaa !83
  %22 = load i32*, i32** %.global_tid..addr, align 8, !dbg !128
  %23 = load i32, i32* %22, align 4, !dbg !128, !tbaa !29
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %23, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !128
  %24 = load i32, i32* %.omp.ub, align 4, !dbg !132, !tbaa !29
  %25 = load i32, i32* %.capture_expr.1, align 4, !dbg !128, !tbaa !29
  %cmp6 = icmp sgt i32 %24, %25, !dbg !132
  br i1 %cmp6, label %cond.true, label %cond.false, !dbg !132

cond.true:                                        ; preds = %omp.precond.then
  %26 = load i32, i32* %.capture_expr.1, align 4, !dbg !128, !tbaa !29
  br label %cond.end, !dbg !132

cond.false:                                       ; preds = %omp.precond.then
  %27 = load i32, i32* %.omp.ub, align 4, !dbg !132, !tbaa !29
  br label %cond.end, !dbg !132

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %26, %cond.true ], [ %27, %cond.false ], !dbg !132
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !132, !tbaa !29
  %28 = load i32, i32* %.omp.lb, align 4, !dbg !132, !tbaa !29
  store i32 %28, i32* %.omp.iv, align 4, !dbg !132, !tbaa !29
  br label %omp.inner.for.cond, !dbg !128

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %29 = load i32, i32* %.omp.iv, align 4, !dbg !132, !tbaa !29
  %30 = load i32, i32* %.omp.ub, align 4, !dbg !132, !tbaa !29
  %cmp7 = icmp sle i32 %29, %30, !dbg !128
  br i1 %cmp7, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !128

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !128

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %31 = load i32, i32* %.capture_expr., align 4, !dbg !130, !tbaa !29
  %32 = load i32, i32* %.omp.iv, align 4, !dbg !132, !tbaa !29
  %mul = mul nsw i32 %32, 1, !dbg !131
  %sub8 = sub nsw i32 %31, %mul, !dbg !131
  store i32 %sub8, i32* %i5, align 4, !dbg !131, !tbaa !29
  %33 = load i32, i32* %i5, align 4, !dbg !133, !tbaa !29
  %idxprom = sext i32 %33 to i64, !dbg !136
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 %idxprom, !dbg !136
  %34 = load i32, i32* %arrayidx, align 4, !dbg !136, !tbaa !29
  %cmp9 = icmp sle i32 %34, 0, !dbg !137
  br i1 %cmp9, label %if.then, label %if.end, !dbg !138

if.then:                                          ; preds = %omp.inner.for.body
  %35 = load i32, i32* %5, align 4, !dbg !139, !tbaa !29
  %dec = add nsw i32 %35, -1, !dbg !139
  store i32 %dec, i32* %5, align 4, !dbg !139, !tbaa !29
  br label %if.end, !dbg !141

if.end:                                           ; preds = %if.then, %omp.inner.for.body
  br label %omp.body.continue, !dbg !142

omp.body.continue:                                ; preds = %if.end
  br label %omp.inner.for.inc, !dbg !143

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %36 = load i32, i32* %.omp.iv, align 4, !dbg !132, !tbaa !29
  %add10 = add nsw i32 %36, 1, !dbg !128
  store i32 %add10, i32* %.omp.iv, align 4, !dbg !128, !tbaa !29
  br label %omp.inner.for.cond, !dbg !143, !llvm.loop !144

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !143

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %37 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !143
  store i8* getelementptr inbounds ([68 x i8], [68 x i8]* @2, i32 0, i32 0), i8** %37, align 8, !dbg !143, !tbaa !83
  %38 = load i32*, i32** %.global_tid..addr, align 8, !dbg !143
  %39 = load i32, i32* %38, align 4, !dbg !143, !tbaa !29
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %39), !dbg !143
  %40 = bitcast i32* %i5 to i8*, !dbg !143
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %40) #4, !dbg !143
  %41 = bitcast i32* %.omp.is_last to i8*, !dbg !143
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %41) #4, !dbg !143
  %42 = bitcast i32* %.omp.stride to i8*, !dbg !143
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %42) #4, !dbg !143
  %43 = bitcast i32* %.omp.ub to i8*, !dbg !143
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %43) #4, !dbg !143
  %44 = bitcast i32* %.omp.lb to i8*, !dbg !143
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %44) #4, !dbg !143
  br label %omp.precond.end, !dbg !143

omp.precond.end:                                  ; preds = %omp.loop.exit, %entry
  %45 = bitcast i32* %.capture_expr.1 to i8*, !dbg !143
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %45) #4, !dbg !143
  %46 = bitcast i32* %.capture_expr. to i8*, !dbg !143
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %46) #4, !dbg !143
  %47 = bitcast i32* %.omp.iv to i8*, !dbg !143
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %47) #4, !dbg !143
  ret void, !dbg !146
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %numNodes, i64 %vla, i32* dereferenceable(4) %x, i32* dereferenceable(4) %numNodes2) #5 !dbg !147 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %numNodes.addr = alloca i32*, align 8
  %vla.addr = alloca i64, align 8
  %x.addr = alloca i32*, align 8
  %numNodes2.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !34
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !149, metadata !DIExpression()), !dbg !155
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !34
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !150, metadata !DIExpression()), !dbg !155
  store i32* %numNodes, i32** %numNodes.addr, align 8, !tbaa !34
  call void @llvm.dbg.declare(metadata i32** %numNodes.addr, metadata !151, metadata !DIExpression()), !dbg !155
  store i64 %vla, i64* %vla.addr, align 8, !tbaa !124
  call void @llvm.dbg.declare(metadata i64* %vla.addr, metadata !152, metadata !DIExpression()), !dbg !155
  store i32* %x, i32** %x.addr, align 8, !tbaa !34
  call void @llvm.dbg.declare(metadata i32** %x.addr, metadata !153, metadata !DIExpression()), !dbg !155
  store i32* %numNodes2, i32** %numNodes2.addr, align 8, !tbaa !34
  call void @llvm.dbg.declare(metadata i32** %numNodes2.addr, metadata !154, metadata !DIExpression()), !dbg !155
  %0 = load i32*, i32** %numNodes.addr, align 8, !dbg !156, !tbaa !34
  %1 = load i64, i64* %vla.addr, align 8, !dbg !156, !tbaa !124
  %2 = load i32*, i32** %x.addr, align 8, !dbg !156, !tbaa !34
  %3 = load i32*, i32** %numNodes2.addr, align 8, !dbg !156, !tbaa !34
  %4 = load i32*, i32** %.global_tid..addr, align 8, !dbg !156, !tbaa !34
  %5 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !156, !tbaa !34
  %6 = load i32*, i32** %numNodes.addr, align 8, !dbg !156, !tbaa !34
  %7 = load i32*, i32** %x.addr, align 8, !dbg !156, !tbaa !34
  %8 = load i32*, i32** %numNodes2.addr, align 8, !dbg !156, !tbaa !34
  call void @.omp_outlined._debug__(i32* %4, i32* %5, i32* %6, i64 %1, i32* %7, i32* %8) #4, !dbg !156
  ret void, !dbg !156
}

declare !callback !157 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

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
!1 = !DIFile(filename: "integration/dataracebench/DRB012-minusminus-var-yes.c", directory: "/home/brad/Code/OpenRace/tests/data")
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
!16 = !{!17, !18, !19, !20, !21, !22, !23, !25}
!17 = !DILocalVariable(name: "argc", arg: 1, scope: !13, file: !1, line: 52, type: !4)
!18 = !DILocalVariable(name: "argv", arg: 2, scope: !13, file: !1, line: 52, type: !5)
!19 = !DILocalVariable(name: "i", scope: !13, file: !1, line: 54, type: !4)
!20 = !DILocalVariable(name: "len", scope: !13, file: !1, line: 55, type: !4)
!21 = !DILocalVariable(name: "numNodes", scope: !13, file: !1, line: 60, type: !4)
!22 = !DILocalVariable(name: "numNodes2", scope: !13, file: !1, line: 60, type: !4)
!23 = !DILocalVariable(name: "__vla_expr0", scope: !13, type: !24, flags: DIFlagArtificial)
!24 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!25 = !DILocalVariable(name: "x", scope: !13, file: !1, line: 61, type: !26)
!26 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !27)
!27 = !{!28}
!28 = !DISubrange(count: !23)
!29 = !{!30, !30, i64 0}
!30 = !{!"int", !31, i64 0}
!31 = !{!"omnipotent char", !32, i64 0}
!32 = !{!"Simple C/C++ TBAA"}
!33 = !DILocation(line: 52, column: 14, scope: !13)
!34 = !{!35, !35, i64 0}
!35 = !{!"any pointer", !31, i64 0}
!36 = !DILocation(line: 52, column: 26, scope: !13)
!37 = !DILocation(line: 54, column: 3, scope: !13)
!38 = !DILocation(line: 54, column: 7, scope: !13)
!39 = !DILocation(line: 55, column: 3, scope: !13)
!40 = !DILocation(line: 55, column: 7, scope: !13)
!41 = !DILocation(line: 57, column: 7, scope: !42)
!42 = distinct !DILexicalBlock(scope: !13, file: !1, line: 57, column: 7)
!43 = !DILocation(line: 57, column: 11, scope: !42)
!44 = !DILocation(line: 57, column: 7, scope: !13)
!45 = !DILocation(line: 58, column: 16, scope: !42)
!46 = !DILocation(line: 58, column: 11, scope: !42)
!47 = !DILocation(line: 58, column: 9, scope: !42)
!48 = !DILocation(line: 58, column: 5, scope: !42)
!49 = !DILocation(line: 60, column: 3, scope: !13)
!50 = !DILocation(line: 60, column: 7, scope: !13)
!51 = !DILocation(line: 60, column: 16, scope: !13)
!52 = !DILocation(line: 60, column: 21, scope: !13)
!53 = !DILocation(line: 61, column: 9, scope: !13)
!54 = !DILocation(line: 61, column: 3, scope: !13)
!55 = !DILocation(line: 0, scope: !13)
!56 = !DILocation(line: 61, column: 7, scope: !13)
!57 = !DILocation(line: 63, column: 9, scope: !58)
!58 = distinct !DILexicalBlock(scope: !13, file: !1, line: 63, column: 3)
!59 = !DILocation(line: 63, column: 8, scope: !58)
!60 = !DILocation(line: 63, column: 13, scope: !61)
!61 = distinct !DILexicalBlock(scope: !58, file: !1, line: 63, column: 3)
!62 = !DILocation(line: 63, column: 16, scope: !61)
!63 = !DILocation(line: 63, column: 14, scope: !61)
!64 = !DILocation(line: 63, column: 3, scope: !58)
!65 = !DILocation(line: 65, column: 9, scope: !66)
!66 = distinct !DILexicalBlock(scope: !67, file: !1, line: 65, column: 9)
!67 = distinct !DILexicalBlock(scope: !61, file: !1, line: 64, column: 3)
!68 = !DILocation(line: 65, column: 10, scope: !66)
!69 = !DILocation(line: 65, column: 12, scope: !66)
!70 = !DILocation(line: 65, column: 9, scope: !67)
!71 = !DILocation(line: 66, column: 9, scope: !66)
!72 = !DILocation(line: 66, column: 7, scope: !66)
!73 = !DILocation(line: 66, column: 11, scope: !66)
!74 = !DILocation(line: 68, column: 9, scope: !66)
!75 = !DILocation(line: 68, column: 7, scope: !66)
!76 = !DILocation(line: 68, column: 11, scope: !66)
!77 = !DILocation(line: 69, column: 3, scope: !67)
!78 = !DILocation(line: 63, column: 22, scope: !61)
!79 = !DILocation(line: 63, column: 3, scope: !61)
!80 = distinct !{!80, !64, !81}
!81 = !DILocation(line: 69, column: 3, scope: !58)
!82 = !DILocation(line: 71, column: 1, scope: !13)
!83 = !{!84, !35, i64 16}
!84 = !{!"ident_t", !30, i64 0, !30, i64 4, !30, i64 8, !30, i64 12, !35, i64 16}
!85 = !DILocation(line: 77, column: 3, scope: !13)
!86 = !DILocation(line: 78, column: 1, scope: !13)
!87 = distinct !DISubprogram(name: "atoi", scope: !88, file: !88, line: 361, type: !89, scopeLine: 362, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !93)
!88 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!89 = !DISubroutineType(types: !90)
!90 = !{!4, !91}
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!93 = !{!94}
!94 = !DILocalVariable(name: "__nptr", arg: 1, scope: !87, file: !88, line: 361, type: !91)
!95 = !DILocation(line: 361, column: 1, scope: !87)
!96 = !DILocation(line: 363, column: 24, scope: !87)
!97 = !DILocation(line: 363, column: 16, scope: !87)
!98 = !DILocation(line: 363, column: 10, scope: !87)
!99 = !DILocation(line: 363, column: 3, scope: !87)
!100 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 72, type: !101, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !108)
!101 = !DISubroutineType(types: !102)
!102 = !{null, !103, !103, !107, !24, !107, !107}
!103 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !104)
!104 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !105)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!107 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !4, size: 64)
!108 = !{!109, !110, !111, !112, !113, !114, !115, !116, !116, !117, !118, !119, !120, !121, !117}
!109 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !100, type: !103, flags: DIFlagArtificial)
!110 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !100, type: !103, flags: DIFlagArtificial)
!111 = !DILocalVariable(name: "numNodes", arg: 3, scope: !100, file: !1, line: 60, type: !107)
!112 = !DILocalVariable(name: "vla", arg: 4, scope: !100, type: !24, flags: DIFlagArtificial)
!113 = !DILocalVariable(name: "x", arg: 5, scope: !100, file: !1, line: 61, type: !107)
!114 = !DILocalVariable(name: "numNodes2", arg: 6, scope: !100, file: !1, line: 60, type: !107)
!115 = !DILocalVariable(name: ".omp.iv", scope: !100, type: !4, flags: DIFlagArtificial)
!116 = !DILocalVariable(name: ".capture_expr.", scope: !100, type: !4, flags: DIFlagArtificial)
!117 = !DILocalVariable(name: "i", scope: !100, type: !4, flags: DIFlagArtificial)
!118 = !DILocalVariable(name: ".omp.lb", scope: !100, type: !4, flags: DIFlagArtificial)
!119 = !DILocalVariable(name: ".omp.ub", scope: !100, type: !4, flags: DIFlagArtificial)
!120 = !DILocalVariable(name: ".omp.stride", scope: !100, type: !4, flags: DIFlagArtificial)
!121 = !DILocalVariable(name: ".omp.is_last", scope: !100, type: !4, flags: DIFlagArtificial)
!122 = !DILocation(line: 0, scope: !100)
!123 = !DILocation(line: 60, column: 7, scope: !100)
!124 = !{!125, !125, i64 0}
!125 = !{!"long", !31, i64 0}
!126 = !DILocation(line: 61, column: 7, scope: !100)
!127 = !DILocation(line: 60, column: 21, scope: !100)
!128 = !DILocation(line: 72, column: 3, scope: !100)
!129 = !DILocation(line: 72, column: 10, scope: !100)
!130 = !DILocation(line: 72, column: 18, scope: !100)
!131 = !DILocation(line: 72, column: 30, scope: !100)
!132 = !DILocation(line: 72, column: 8, scope: !100)
!133 = !DILocation(line: 73, column: 11, scope: !134)
!134 = distinct !DILexicalBlock(scope: !135, file: !1, line: 73, column: 9)
!135 = distinct !DILexicalBlock(scope: !100, file: !1, line: 72, column: 35)
!136 = !DILocation(line: 73, column: 9, scope: !134)
!137 = !DILocation(line: 73, column: 13, scope: !134)
!138 = !DILocation(line: 73, column: 9, scope: !135)
!139 = !DILocation(line: 74, column: 16, scope: !140)
!140 = distinct !DILexicalBlock(scope: !134, file: !1, line: 73, column: 18)
!141 = !DILocation(line: 75, column: 5, scope: !140)
!142 = !DILocation(line: 76, column: 3, scope: !135)
!143 = !DILocation(line: 71, column: 1, scope: !100)
!144 = distinct !{!144, !143, !145}
!145 = !DILocation(line: 71, column: 25, scope: !100)
!146 = !DILocation(line: 76, column: 3, scope: !100)
!147 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 72, type: !101, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !148)
!148 = !{!149, !150, !151, !152, !153, !154}
!149 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !147, type: !103, flags: DIFlagArtificial)
!150 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !147, type: !103, flags: DIFlagArtificial)
!151 = !DILocalVariable(name: "numNodes", arg: 3, scope: !147, type: !107, flags: DIFlagArtificial)
!152 = !DILocalVariable(name: "vla", arg: 4, scope: !147, type: !24, flags: DIFlagArtificial)
!153 = !DILocalVariable(name: "x", arg: 5, scope: !147, type: !107, flags: DIFlagArtificial)
!154 = !DILocalVariable(name: "numNodes2", arg: 6, scope: !147, type: !107, flags: DIFlagArtificial)
!155 = !DILocation(line: 0, scope: !147)
!156 = !DILocation(line: 72, column: 3, scope: !147)
!157 = !{!158}
!158 = !{i64 2, i64 -1, i64 -1, i1 true}
