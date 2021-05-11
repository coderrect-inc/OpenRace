; ModuleID = 'integration/dataracebench/DRB011-minusminus-orig-yes.c'
source_filename = "integration/dataracebench/DRB011-minusminus-orig-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [68 x i8] c";integration/dataracebench/DRB011-minusminus-orig-yes.c;main;71;1;;\00", align 1
@2 = private unnamed_addr constant [69 x i8] c";integration/dataracebench/DRB011-minusminus-orig-yes.c;main;71;25;;\00", align 1
@3 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"numNodes2 = %d\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !dbg !7 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %len = alloca i32, align 4
  %numNodes = alloca i32, align 4
  %numNodes2 = alloca i32, align 4
  %x = alloca [100 x i32], align 16
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4, !tbaa !25
  call void @llvm.dbg.declare(metadata i32* %argc.addr, metadata !15, metadata !DIExpression()), !dbg !29
  store i8** %argv, i8*** %argv.addr, align 8, !tbaa !30
  call void @llvm.dbg.declare(metadata i8*** %argv.addr, metadata !16, metadata !DIExpression()), !dbg !32
  %2 = bitcast i32* %i to i8*, !dbg !33
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #5, !dbg !33
  call void @llvm.dbg.declare(metadata i32* %i, metadata !17, metadata !DIExpression()), !dbg !34
  %3 = bitcast i32* %len to i8*, !dbg !35
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #5, !dbg !35
  call void @llvm.dbg.declare(metadata i32* %len, metadata !18, metadata !DIExpression()), !dbg !36
  store i32 100, i32* %len, align 4, !dbg !36, !tbaa !25
  %4 = bitcast i32* %numNodes to i8*, !dbg !37
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #5, !dbg !37
  call void @llvm.dbg.declare(metadata i32* %numNodes, metadata !19, metadata !DIExpression()), !dbg !38
  %5 = load i32, i32* %len, align 4, !dbg !39, !tbaa !25
  store i32 %5, i32* %numNodes, align 4, !dbg !38, !tbaa !25
  %6 = bitcast i32* %numNodes2 to i8*, !dbg !37
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #5, !dbg !37
  call void @llvm.dbg.declare(metadata i32* %numNodes2, metadata !20, metadata !DIExpression()), !dbg !40
  store i32 0, i32* %numNodes2, align 4, !dbg !40, !tbaa !25
  %7 = bitcast [100 x i32]* %x to i8*, !dbg !41
  call void @llvm.lifetime.start.p0i8(i64 400, i8* %7) #5, !dbg !41
  call void @llvm.dbg.declare(metadata [100 x i32]* %x, metadata !21, metadata !DIExpression()), !dbg !42
  store i32 0, i32* %i, align 4, !dbg !43, !tbaa !25
  br label %for.cond, !dbg !45

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load i32, i32* %i, align 4, !dbg !46, !tbaa !25
  %9 = load i32, i32* %len, align 4, !dbg !48, !tbaa !25
  %cmp = icmp slt i32 %8, %9, !dbg !49
  br i1 %cmp, label %for.body, label %for.end, !dbg !50

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %i, align 4, !dbg !51, !tbaa !25
  %rem = srem i32 %10, 2, !dbg !54
  %cmp1 = icmp eq i32 %rem, 0, !dbg !55
  br i1 %cmp1, label %if.then, label %if.else, !dbg !56

if.then:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4, !dbg !57, !tbaa !25
  %idxprom = sext i32 %11 to i64, !dbg !58
  %arrayidx = getelementptr inbounds [100 x i32], [100 x i32]* %x, i64 0, i64 %idxprom, !dbg !58
  store i32 5, i32* %arrayidx, align 4, !dbg !59, !tbaa !25
  br label %if.end, !dbg !58

if.else:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4, !dbg !60, !tbaa !25
  %idxprom2 = sext i32 %12 to i64, !dbg !61
  %arrayidx3 = getelementptr inbounds [100 x i32], [100 x i32]* %x, i64 0, i64 %idxprom2, !dbg !61
  store i32 -5, i32* %arrayidx3, align 4, !dbg !62, !tbaa !25
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc, !dbg !63

for.inc:                                          ; preds = %if.end
  %13 = load i32, i32* %i, align 4, !dbg !64, !tbaa !25
  %inc = add nsw i32 %13, 1, !dbg !64
  store i32 %inc, i32* %i, align 4, !dbg !64, !tbaa !25
  br label %for.cond, !dbg !65, !llvm.loop !66

for.end:                                          ; preds = %for.cond
  %14 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !68
  store i8* getelementptr inbounds ([68 x i8], [68 x i8]* @1, i32 0, i32 0), i8** %14, align 8, !dbg !68, !tbaa !69
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, [100 x i32]*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %numNodes, [100 x i32]* %x, i32* %numNodes2), !dbg !68
  %15 = load i32, i32* %numNodes2, align 4, !dbg !71, !tbaa !25
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %15), !dbg !72
  %16 = bitcast [100 x i32]* %x to i8*, !dbg !73
  call void @llvm.lifetime.end.p0i8(i64 400, i8* %16) #5, !dbg !73
  %17 = bitcast i32* %numNodes2 to i8*, !dbg !73
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %17) #5, !dbg !73
  %18 = bitcast i32* %numNodes to i8*, !dbg !73
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %18) #5, !dbg !73
  %19 = bitcast i32* %len to i8*, !dbg !73
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %19) #5, !dbg !73
  %20 = bitcast i32* %i to i8*, !dbg !73
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %20) #5, !dbg !73
  ret i32 0, !dbg !74
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %numNodes, [100 x i32]* dereferenceable(400) %x, i32* dereferenceable(4) %numNodes2) #3 !dbg !75 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %numNodes.addr = alloca i32*, align 8
  %x.addr = alloca [100 x i32]*, align 8
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
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !30
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !85, metadata !DIExpression()), !dbg !97
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !30
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !86, metadata !DIExpression()), !dbg !97
  store i32* %numNodes, i32** %numNodes.addr, align 8, !tbaa !30
  call void @llvm.dbg.declare(metadata i32** %numNodes.addr, metadata !87, metadata !DIExpression()), !dbg !98
  store [100 x i32]* %x, [100 x i32]** %x.addr, align 8, !tbaa !30
  call void @llvm.dbg.declare(metadata [100 x i32]** %x.addr, metadata !88, metadata !DIExpression()), !dbg !99
  store i32* %numNodes2, i32** %numNodes2.addr, align 8, !tbaa !30
  call void @llvm.dbg.declare(metadata i32** %numNodes2.addr, metadata !89, metadata !DIExpression()), !dbg !100
  %2 = load i32*, i32** %numNodes.addr, align 8, !dbg !101, !tbaa !30
  %3 = load [100 x i32]*, [100 x i32]** %x.addr, align 8, !dbg !101, !tbaa !30
  %4 = load i32*, i32** %numNodes2.addr, align 8, !dbg !101, !tbaa !30
  %5 = bitcast i32* %.omp.iv to i8*, !dbg !101
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #5, !dbg !101
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !90, metadata !DIExpression()), !dbg !97
  %6 = bitcast i32* %.capture_expr. to i8*, !dbg !101
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #5, !dbg !101
  call void @llvm.dbg.declare(metadata i32* %.capture_expr., metadata !91, metadata !DIExpression()), !dbg !97
  %7 = load i32, i32* %2, align 4, !dbg !102, !tbaa !25
  %sub = sub nsw i32 %7, 1, !dbg !103
  store i32 %sub, i32* %.capture_expr., align 4, !dbg !102, !tbaa !25
  %8 = bitcast i32* %.capture_expr.1 to i8*, !dbg !101
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #5, !dbg !101
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.1, metadata !91, metadata !DIExpression()), !dbg !97
  %9 = load i32, i32* %.capture_expr., align 4, !dbg !103, !tbaa !25
  %sub2 = sub nsw i32 %9, -1, !dbg !101
  %sub3 = sub nsw i32 %sub2, 1, !dbg !101
  %add = add nsw i32 %sub3, 1, !dbg !101
  %div = sdiv i32 %add, 1, !dbg !101
  %sub4 = sub nsw i32 %div, 1, !dbg !101
  store i32 %sub4, i32* %.capture_expr.1, align 4, !dbg !101, !tbaa !25
  %10 = bitcast i32* %i to i8*, !dbg !101
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #5, !dbg !101
  call void @llvm.dbg.declare(metadata i32* %i, metadata !92, metadata !DIExpression()), !dbg !97
  %11 = load i32, i32* %.capture_expr., align 4, !dbg !103, !tbaa !25
  store i32 %11, i32* %i, align 4, !dbg !104, !tbaa !25
  %12 = bitcast i32* %i to i8*, !dbg !101
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %12) #5, !dbg !101
  %13 = load i32, i32* %.capture_expr., align 4, !dbg !103, !tbaa !25
  %cmp = icmp sgt i32 %13, -1, !dbg !101
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end, !dbg !101

omp.precond.then:                                 ; preds = %entry
  %14 = bitcast i32* %.omp.lb to i8*, !dbg !101
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %14) #5, !dbg !101
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !93, metadata !DIExpression()), !dbg !97
  store i32 0, i32* %.omp.lb, align 4, !dbg !105, !tbaa !25
  %15 = bitcast i32* %.omp.ub to i8*, !dbg !101
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %15) #5, !dbg !101
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !94, metadata !DIExpression()), !dbg !97
  %16 = load i32, i32* %.capture_expr.1, align 4, !dbg !101, !tbaa !25
  store i32 %16, i32* %.omp.ub, align 4, !dbg !105, !tbaa !25
  %17 = bitcast i32* %.omp.stride to i8*, !dbg !101
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %17) #5, !dbg !101
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !95, metadata !DIExpression()), !dbg !97
  store i32 1, i32* %.omp.stride, align 4, !dbg !105, !tbaa !25
  %18 = bitcast i32* %.omp.is_last to i8*, !dbg !101
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %18) #5, !dbg !101
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !96, metadata !DIExpression()), !dbg !97
  store i32 0, i32* %.omp.is_last, align 4, !dbg !105, !tbaa !25
  %19 = bitcast i32* %i5 to i8*, !dbg !101
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %19) #5, !dbg !101
  call void @llvm.dbg.declare(metadata i32* %i5, metadata !92, metadata !DIExpression()), !dbg !97
  %20 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !101
  store i8* getelementptr inbounds ([68 x i8], [68 x i8]* @1, i32 0, i32 0), i8** %20, align 8, !dbg !101, !tbaa !69
  %21 = load i32*, i32** %.global_tid..addr, align 8, !dbg !101
  %22 = load i32, i32* %21, align 4, !dbg !101, !tbaa !25
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %22, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !101
  %23 = load i32, i32* %.omp.ub, align 4, !dbg !105, !tbaa !25
  %24 = load i32, i32* %.capture_expr.1, align 4, !dbg !101, !tbaa !25
  %cmp6 = icmp sgt i32 %23, %24, !dbg !105
  br i1 %cmp6, label %cond.true, label %cond.false, !dbg !105

cond.true:                                        ; preds = %omp.precond.then
  %25 = load i32, i32* %.capture_expr.1, align 4, !dbg !101, !tbaa !25
  br label %cond.end, !dbg !105

cond.false:                                       ; preds = %omp.precond.then
  %26 = load i32, i32* %.omp.ub, align 4, !dbg !105, !tbaa !25
  br label %cond.end, !dbg !105

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %25, %cond.true ], [ %26, %cond.false ], !dbg !105
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !105, !tbaa !25
  %27 = load i32, i32* %.omp.lb, align 4, !dbg !105, !tbaa !25
  store i32 %27, i32* %.omp.iv, align 4, !dbg !105, !tbaa !25
  br label %omp.inner.for.cond, !dbg !101

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %28 = load i32, i32* %.omp.iv, align 4, !dbg !105, !tbaa !25
  %29 = load i32, i32* %.omp.ub, align 4, !dbg !105, !tbaa !25
  %cmp7 = icmp sle i32 %28, %29, !dbg !101
  br i1 %cmp7, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !101

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !101

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %30 = load i32, i32* %.capture_expr., align 4, !dbg !103, !tbaa !25
  %31 = load i32, i32* %.omp.iv, align 4, !dbg !105, !tbaa !25
  %mul = mul nsw i32 %31, 1, !dbg !104
  %sub8 = sub nsw i32 %30, %mul, !dbg !104
  store i32 %sub8, i32* %i5, align 4, !dbg !104, !tbaa !25
  %32 = load i32, i32* %i5, align 4, !dbg !106, !tbaa !25
  %idxprom = sext i32 %32 to i64, !dbg !109
  %arrayidx = getelementptr inbounds [100 x i32], [100 x i32]* %3, i64 0, i64 %idxprom, !dbg !109
  %33 = load i32, i32* %arrayidx, align 4, !dbg !109, !tbaa !25
  %cmp9 = icmp sle i32 %33, 0, !dbg !110
  br i1 %cmp9, label %if.then, label %if.end, !dbg !111

if.then:                                          ; preds = %omp.inner.for.body
  %34 = load i32, i32* %4, align 4, !dbg !112, !tbaa !25
  %dec = add nsw i32 %34, -1, !dbg !112
  store i32 %dec, i32* %4, align 4, !dbg !112, !tbaa !25
  br label %if.end, !dbg !114

if.end:                                           ; preds = %if.then, %omp.inner.for.body
  br label %omp.body.continue, !dbg !115

omp.body.continue:                                ; preds = %if.end
  br label %omp.inner.for.inc, !dbg !116

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %35 = load i32, i32* %.omp.iv, align 4, !dbg !105, !tbaa !25
  %add10 = add nsw i32 %35, 1, !dbg !101
  store i32 %add10, i32* %.omp.iv, align 4, !dbg !101, !tbaa !25
  br label %omp.inner.for.cond, !dbg !116, !llvm.loop !117

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !116

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %36 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !116
  store i8* getelementptr inbounds ([69 x i8], [69 x i8]* @2, i32 0, i32 0), i8** %36, align 8, !dbg !116, !tbaa !69
  %37 = load i32*, i32** %.global_tid..addr, align 8, !dbg !116
  %38 = load i32, i32* %37, align 4, !dbg !116, !tbaa !25
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %38), !dbg !116
  %39 = bitcast i32* %i5 to i8*, !dbg !116
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %39) #5, !dbg !116
  %40 = bitcast i32* %.omp.is_last to i8*, !dbg !116
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %40) #5, !dbg !116
  %41 = bitcast i32* %.omp.stride to i8*, !dbg !116
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %41) #5, !dbg !116
  %42 = bitcast i32* %.omp.ub to i8*, !dbg !116
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %42) #5, !dbg !116
  %43 = bitcast i32* %.omp.lb to i8*, !dbg !116
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %43) #5, !dbg !116
  br label %omp.precond.end, !dbg !116

omp.precond.end:                                  ; preds = %omp.loop.exit, %entry
  %44 = bitcast i32* %.capture_expr.1 to i8*, !dbg !116
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %44) #5, !dbg !116
  %45 = bitcast i32* %.capture_expr. to i8*, !dbg !116
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %45) #5, !dbg !116
  %46 = bitcast i32* %.omp.iv to i8*, !dbg !116
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %46) #5, !dbg !116
  ret void, !dbg !119
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %numNodes, [100 x i32]* dereferenceable(400) %x, i32* dereferenceable(4) %numNodes2) #3 !dbg !120 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %numNodes.addr = alloca i32*, align 8
  %x.addr = alloca [100 x i32]*, align 8
  %numNodes2.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !30
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !122, metadata !DIExpression()), !dbg !127
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !30
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !123, metadata !DIExpression()), !dbg !127
  store i32* %numNodes, i32** %numNodes.addr, align 8, !tbaa !30
  call void @llvm.dbg.declare(metadata i32** %numNodes.addr, metadata !124, metadata !DIExpression()), !dbg !127
  store [100 x i32]* %x, [100 x i32]** %x.addr, align 8, !tbaa !30
  call void @llvm.dbg.declare(metadata [100 x i32]** %x.addr, metadata !125, metadata !DIExpression()), !dbg !127
  store i32* %numNodes2, i32** %numNodes2.addr, align 8, !tbaa !30
  call void @llvm.dbg.declare(metadata i32** %numNodes2.addr, metadata !126, metadata !DIExpression()), !dbg !127
  %0 = load i32*, i32** %numNodes.addr, align 8, !dbg !128, !tbaa !30
  %1 = load [100 x i32]*, [100 x i32]** %x.addr, align 8, !dbg !128, !tbaa !30
  %2 = load i32*, i32** %numNodes2.addr, align 8, !dbg !128, !tbaa !30
  %3 = load i32*, i32** %.global_tid..addr, align 8, !dbg !128, !tbaa !30
  %4 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !128, !tbaa !30
  %5 = load i32*, i32** %numNodes.addr, align 8, !dbg !128, !tbaa !30
  %6 = load [100 x i32]*, [100 x i32]** %x.addr, align 8, !dbg !128, !tbaa !30
  %7 = load i32*, i32** %numNodes2.addr, align 8, !dbg !128, !tbaa !30
  call void @.omp_outlined._debug__(i32* %3, i32* %4, i32* %5, [100 x i32]* %6, i32* %7) #5, !dbg !128
  ret void, !dbg !128
}

declare !callback !129 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

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
!1 = !DIFile(filename: "integration/dataracebench/DRB011-minusminus-orig-yes.c", directory: "/home/brad/Code/OpenRace/tests/data")
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
!14 = !{!15, !16, !17, !18, !19, !20, !21}
!15 = !DILocalVariable(name: "argc", arg: 1, scope: !7, file: !1, line: 54, type: !10)
!16 = !DILocalVariable(name: "argv", arg: 2, scope: !7, file: !1, line: 54, type: !11)
!17 = !DILocalVariable(name: "i", scope: !7, file: !1, line: 56, type: !10)
!18 = !DILocalVariable(name: "len", scope: !7, file: !1, line: 57, type: !10)
!19 = !DILocalVariable(name: "numNodes", scope: !7, file: !1, line: 59, type: !10)
!20 = !DILocalVariable(name: "numNodes2", scope: !7, file: !1, line: 59, type: !10)
!21 = !DILocalVariable(name: "x", scope: !7, file: !1, line: 60, type: !22)
!22 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 3200, elements: !23)
!23 = !{!24}
!24 = !DISubrange(count: 100)
!25 = !{!26, !26, i64 0}
!26 = !{!"int", !27, i64 0}
!27 = !{!"omnipotent char", !28, i64 0}
!28 = !{!"Simple C/C++ TBAA"}
!29 = !DILocation(line: 54, column: 14, scope: !7)
!30 = !{!31, !31, i64 0}
!31 = !{!"any pointer", !27, i64 0}
!32 = !DILocation(line: 54, column: 26, scope: !7)
!33 = !DILocation(line: 56, column: 3, scope: !7)
!34 = !DILocation(line: 56, column: 7, scope: !7)
!35 = !DILocation(line: 57, column: 3, scope: !7)
!36 = !DILocation(line: 57, column: 7, scope: !7)
!37 = !DILocation(line: 59, column: 3, scope: !7)
!38 = !DILocation(line: 59, column: 7, scope: !7)
!39 = !DILocation(line: 59, column: 16, scope: !7)
!40 = !DILocation(line: 59, column: 21, scope: !7)
!41 = !DILocation(line: 60, column: 3, scope: !7)
!42 = !DILocation(line: 60, column: 7, scope: !7)
!43 = !DILocation(line: 63, column: 9, scope: !44)
!44 = distinct !DILexicalBlock(scope: !7, file: !1, line: 63, column: 3)
!45 = !DILocation(line: 63, column: 8, scope: !44)
!46 = !DILocation(line: 63, column: 13, scope: !47)
!47 = distinct !DILexicalBlock(scope: !44, file: !1, line: 63, column: 3)
!48 = !DILocation(line: 63, column: 16, scope: !47)
!49 = !DILocation(line: 63, column: 14, scope: !47)
!50 = !DILocation(line: 63, column: 3, scope: !44)
!51 = !DILocation(line: 65, column: 9, scope: !52)
!52 = distinct !DILexicalBlock(scope: !53, file: !1, line: 65, column: 9)
!53 = distinct !DILexicalBlock(scope: !47, file: !1, line: 64, column: 3)
!54 = !DILocation(line: 65, column: 10, scope: !52)
!55 = !DILocation(line: 65, column: 12, scope: !52)
!56 = !DILocation(line: 65, column: 9, scope: !53)
!57 = !DILocation(line: 66, column: 9, scope: !52)
!58 = !DILocation(line: 66, column: 7, scope: !52)
!59 = !DILocation(line: 66, column: 11, scope: !52)
!60 = !DILocation(line: 68, column: 9, scope: !52)
!61 = !DILocation(line: 68, column: 7, scope: !52)
!62 = !DILocation(line: 68, column: 11, scope: !52)
!63 = !DILocation(line: 69, column: 3, scope: !53)
!64 = !DILocation(line: 63, column: 22, scope: !47)
!65 = !DILocation(line: 63, column: 3, scope: !47)
!66 = distinct !{!66, !50, !67}
!67 = !DILocation(line: 69, column: 3, scope: !44)
!68 = !DILocation(line: 71, column: 1, scope: !7)
!69 = !{!70, !31, i64 16}
!70 = !{!"ident_t", !26, i64 0, !26, i64 4, !26, i64 8, !26, i64 12, !31, i64 16}
!71 = !DILocation(line: 77, column: 31, scope: !7)
!72 = !DILocation(line: 77, column: 3, scope: !7)
!73 = !DILocation(line: 79, column: 1, scope: !7)
!74 = !DILocation(line: 78, column: 3, scope: !7)
!75 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 72, type: !76, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !84)
!76 = !DISubroutineType(types: !77)
!77 = !{null, !78, !78, !82, !83, !82}
!78 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !79)
!79 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !80)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!82 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !10, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !22, size: 64)
!84 = !{!85, !86, !87, !88, !89, !90, !91, !91, !92, !93, !94, !95, !96, !92}
!85 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !75, type: !78, flags: DIFlagArtificial)
!86 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !75, type: !78, flags: DIFlagArtificial)
!87 = !DILocalVariable(name: "numNodes", arg: 3, scope: !75, file: !1, line: 59, type: !82)
!88 = !DILocalVariable(name: "x", arg: 4, scope: !75, file: !1, line: 60, type: !83)
!89 = !DILocalVariable(name: "numNodes2", arg: 5, scope: !75, file: !1, line: 59, type: !82)
!90 = !DILocalVariable(name: ".omp.iv", scope: !75, type: !10, flags: DIFlagArtificial)
!91 = !DILocalVariable(name: ".capture_expr.", scope: !75, type: !10, flags: DIFlagArtificial)
!92 = !DILocalVariable(name: "i", scope: !75, type: !10, flags: DIFlagArtificial)
!93 = !DILocalVariable(name: ".omp.lb", scope: !75, type: !10, flags: DIFlagArtificial)
!94 = !DILocalVariable(name: ".omp.ub", scope: !75, type: !10, flags: DIFlagArtificial)
!95 = !DILocalVariable(name: ".omp.stride", scope: !75, type: !10, flags: DIFlagArtificial)
!96 = !DILocalVariable(name: ".omp.is_last", scope: !75, type: !10, flags: DIFlagArtificial)
!97 = !DILocation(line: 0, scope: !75)
!98 = !DILocation(line: 59, column: 7, scope: !75)
!99 = !DILocation(line: 60, column: 7, scope: !75)
!100 = !DILocation(line: 59, column: 21, scope: !75)
!101 = !DILocation(line: 72, column: 3, scope: !75)
!102 = !DILocation(line: 72, column: 10, scope: !75)
!103 = !DILocation(line: 72, column: 18, scope: !75)
!104 = !DILocation(line: 72, column: 30, scope: !75)
!105 = !DILocation(line: 72, column: 8, scope: !75)
!106 = !DILocation(line: 73, column: 11, scope: !107)
!107 = distinct !DILexicalBlock(scope: !108, file: !1, line: 73, column: 9)
!108 = distinct !DILexicalBlock(scope: !75, file: !1, line: 72, column: 35)
!109 = !DILocation(line: 73, column: 9, scope: !107)
!110 = !DILocation(line: 73, column: 13, scope: !107)
!111 = !DILocation(line: 73, column: 9, scope: !108)
!112 = !DILocation(line: 74, column: 16, scope: !113)
!113 = distinct !DILexicalBlock(scope: !107, file: !1, line: 73, column: 18)
!114 = !DILocation(line: 75, column: 5, scope: !113)
!115 = !DILocation(line: 76, column: 3, scope: !108)
!116 = !DILocation(line: 71, column: 1, scope: !75)
!117 = distinct !{!117, !116, !118}
!118 = !DILocation(line: 71, column: 25, scope: !75)
!119 = !DILocation(line: 76, column: 3, scope: !75)
!120 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 72, type: !76, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !121)
!121 = !{!122, !123, !124, !125, !126}
!122 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !120, type: !78, flags: DIFlagArtificial)
!123 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !120, type: !78, flags: DIFlagArtificial)
!124 = !DILocalVariable(name: "numNodes", arg: 3, scope: !120, type: !82, flags: DIFlagArtificial)
!125 = !DILocalVariable(name: "x", arg: 4, scope: !120, type: !83, flags: DIFlagArtificial)
!126 = !DILocalVariable(name: "numNodes2", arg: 5, scope: !120, type: !82, flags: DIFlagArtificial)
!127 = !DILocation(line: 0, scope: !120)
!128 = !DILocation(line: 72, column: 3, scope: !120)
!129 = !{!130}
!130 = !{i64 2, i64 -1, i64 -1, i1 true}
