; ModuleID = 'integration/dataracebench/DRB019-plusplus-var-yes.c'
source_filename = "integration/dataracebench/DRB019-plusplus-var-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [65 x i8] c";integration/dataracebench/DRB019-plusplus-var-yes.c;main;70;1;;\00", align 1
@2 = private unnamed_addr constant [66 x i8] c";integration/dataracebench/DRB019-plusplus-var-yes.c;main;70;25;;\00", align 1
@3 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"output[0]=%d\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !dbg !13 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %inLen = alloca i32, align 4
  %outLen = alloca i32, align 4
  %saved_stack = alloca i8*, align 8
  %__vla_expr0 = alloca i64, align 8
  %__vla_expr1 = alloca i64, align 8
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4, !tbaa !33
  call void @llvm.dbg.declare(metadata i32* %argc.addr, metadata !17, metadata !DIExpression()), !dbg !37
  store i8** %argv, i8*** %argv.addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata i8*** %argv.addr, metadata !18, metadata !DIExpression()), !dbg !40
  %2 = bitcast i32* %i to i8*, !dbg !41
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #4, !dbg !41
  call void @llvm.dbg.declare(metadata i32* %i, metadata !19, metadata !DIExpression()), !dbg !42
  %3 = bitcast i32* %inLen to i8*, !dbg !43
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #4, !dbg !43
  call void @llvm.dbg.declare(metadata i32* %inLen, metadata !20, metadata !DIExpression()), !dbg !44
  store i32 1000, i32* %inLen, align 4, !dbg !44, !tbaa !33
  %4 = bitcast i32* %outLen to i8*, !dbg !45
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #4, !dbg !45
  call void @llvm.dbg.declare(metadata i32* %outLen, metadata !21, metadata !DIExpression()), !dbg !46
  store i32 0, i32* %outLen, align 4, !dbg !46, !tbaa !33
  %5 = load i32, i32* %argc.addr, align 4, !dbg !47, !tbaa !33
  %cmp = icmp sgt i32 %5, 1, !dbg !49
  br i1 %cmp, label %if.then, label %if.end, !dbg !50

if.then:                                          ; preds = %entry
  %6 = load i8**, i8*** %argv.addr, align 8, !dbg !51, !tbaa !38
  %arrayidx = getelementptr inbounds i8*, i8** %6, i64 1, !dbg !51
  %7 = load i8*, i8** %arrayidx, align 8, !dbg !51, !tbaa !38
  %call = call i32 @atoi(i8* %7) #8, !dbg !52
  store i32 %call, i32* %inLen, align 4, !dbg !53, !tbaa !33
  br label %if.end, !dbg !54

if.end:                                           ; preds = %if.then, %entry
  %8 = load i32, i32* %inLen, align 4, !dbg !55, !tbaa !33
  %9 = zext i32 %8 to i64, !dbg !56
  %10 = call i8* @llvm.stacksave(), !dbg !56
  store i8* %10, i8** %saved_stack, align 8, !dbg !56
  %vla = alloca i32, i64 %9, align 16, !dbg !56
  store i64 %9, i64* %__vla_expr0, align 8, !dbg !56
  call void @llvm.dbg.declare(metadata i64* %__vla_expr0, metadata !22, metadata !DIExpression()), !dbg !57
  call void @llvm.dbg.declare(metadata i32* %vla, metadata !24, metadata !DIExpression()), !dbg !58
  %11 = load i32, i32* %inLen, align 4, !dbg !59, !tbaa !33
  %12 = zext i32 %11 to i64, !dbg !60
  %vla1 = alloca i32, i64 %12, align 16, !dbg !60
  store i64 %12, i64* %__vla_expr1, align 8, !dbg !60
  call void @llvm.dbg.declare(metadata i64* %__vla_expr1, metadata !28, metadata !DIExpression()), !dbg !57
  call void @llvm.dbg.declare(metadata i32* %vla1, metadata !29, metadata !DIExpression()), !dbg !61
  store i32 0, i32* %i, align 4, !dbg !62, !tbaa !33
  br label %for.cond, !dbg !64

for.cond:                                         ; preds = %for.inc, %if.end
  %13 = load i32, i32* %i, align 4, !dbg !65, !tbaa !33
  %14 = load i32, i32* %inLen, align 4, !dbg !67, !tbaa !33
  %cmp2 = icmp slt i32 %13, %14, !dbg !68
  br i1 %cmp2, label %for.body, label %for.end, !dbg !69

for.body:                                         ; preds = %for.cond
  %15 = load i32, i32* %i, align 4, !dbg !70, !tbaa !33
  %16 = load i32, i32* %i, align 4, !dbg !71, !tbaa !33
  %idxprom = sext i32 %16 to i64, !dbg !72
  %arrayidx3 = getelementptr inbounds i32, i32* %vla, i64 %idxprom, !dbg !72
  store i32 %15, i32* %arrayidx3, align 4, !dbg !73, !tbaa !33
  br label %for.inc, !dbg !72

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %i, align 4, !dbg !74, !tbaa !33
  %inc = add nsw i32 %17, 1, !dbg !74
  store i32 %inc, i32* %i, align 4, !dbg !74, !tbaa !33
  br label %for.cond, !dbg !75, !llvm.loop !76

for.end:                                          ; preds = %for.cond
  %18 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !78
  store i8* getelementptr inbounds ([65 x i8], [65 x i8]* @1, i32 0, i32 0), i8** %18, align 8, !dbg !78, !tbaa !79
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 6, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i64, i32*, i32*, i64, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %inLen, i64 %12, i32* %vla1, i32* %outLen, i64 %9, i32* %vla), !dbg !78
  %arrayidx4 = getelementptr inbounds i32, i32* %vla1, i64 0, !dbg !81
  %19 = load i32, i32* %arrayidx4, align 16, !dbg !81, !tbaa !33
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %19), !dbg !82
  store i32 0, i32* %retval, align 4, !dbg !83
  %20 = load i8*, i8** %saved_stack, align 8, !dbg !84
  call void @llvm.stackrestore(i8* %20), !dbg !84
  %21 = bitcast i32* %outLen to i8*, !dbg !84
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %21) #4, !dbg !84
  %22 = bitcast i32* %inLen to i8*, !dbg !84
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %22) #4, !dbg !84
  %23 = bitcast i32* %i to i8*, !dbg !84
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %23) #4, !dbg !84
  %24 = load i32, i32* %retval, align 4, !dbg !84
  ret i32 %24, !dbg !84
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: inlinehint nounwind readonly uwtable
define available_externally dso_local i32 @atoi(i8* nonnull %__nptr) #3 !dbg !85 {
entry:
  %__nptr.addr = alloca i8*, align 8
  store i8* %__nptr, i8** %__nptr.addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata i8** %__nptr.addr, metadata !92, metadata !DIExpression()), !dbg !93
  %0 = load i8*, i8** %__nptr.addr, align 8, !dbg !94, !tbaa !38
  %call = call i64 @strtol(i8* %0, i8** null, i32 10) #4, !dbg !95
  %conv = trunc i64 %call to i32, !dbg !96
  ret i32 %conv, !dbg !97
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #4

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %inLen, i64 %vla, i32* dereferenceable(4) %output, i32* dereferenceable(4) %outLen, i64 %vla1, i32* dereferenceable(4) %input) #5 !dbg !98 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %inLen.addr = alloca i32*, align 8
  %vla.addr = alloca i64, align 8
  %output.addr = alloca i32*, align 8
  %outLen.addr = alloca i32*, align 8
  %vla.addr2 = alloca i64, align 8
  %input.addr = alloca i32*, align 8
  %.omp.iv = alloca i32, align 4
  %tmp = alloca i32, align 4
  %.capture_expr. = alloca i32, align 4
  %.capture_expr.3 = alloca i32, align 4
  %i = alloca i32, align 4
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %i6 = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !107, metadata !DIExpression()), !dbg !122
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !108, metadata !DIExpression()), !dbg !122
  store i32* %inLen, i32** %inLen.addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata i32** %inLen.addr, metadata !109, metadata !DIExpression()), !dbg !123
  store i64 %vla, i64* %vla.addr, align 8, !tbaa !124
  call void @llvm.dbg.declare(metadata i64* %vla.addr, metadata !110, metadata !DIExpression()), !dbg !122
  store i32* %output, i32** %output.addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata i32** %output.addr, metadata !111, metadata !DIExpression()), !dbg !126
  store i32* %outLen, i32** %outLen.addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata i32** %outLen.addr, metadata !112, metadata !DIExpression()), !dbg !127
  store i64 %vla1, i64* %vla.addr2, align 8, !tbaa !124
  call void @llvm.dbg.declare(metadata i64* %vla.addr2, metadata !113, metadata !DIExpression()), !dbg !122
  store i32* %input, i32** %input.addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata i32** %input.addr, metadata !114, metadata !DIExpression()), !dbg !128
  %2 = load i32*, i32** %inLen.addr, align 8, !dbg !129, !tbaa !38
  %3 = load i64, i64* %vla.addr, align 8, !dbg !129, !tbaa !124
  %4 = load i32*, i32** %output.addr, align 8, !dbg !129, !tbaa !38
  %5 = load i32*, i32** %outLen.addr, align 8, !dbg !129, !tbaa !38
  %6 = load i64, i64* %vla.addr2, align 8, !dbg !129, !tbaa !124
  %7 = load i32*, i32** %input.addr, align 8, !dbg !129, !tbaa !38
  %8 = bitcast i32* %.omp.iv to i8*, !dbg !129
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #4, !dbg !129
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !115, metadata !DIExpression()), !dbg !122
  %9 = bitcast i32* %.capture_expr. to i8*, !dbg !129
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #4, !dbg !129
  call void @llvm.dbg.declare(metadata i32* %.capture_expr., metadata !116, metadata !DIExpression()), !dbg !122
  %10 = load i32, i32* %2, align 4, !dbg !130, !tbaa !33
  store i32 %10, i32* %.capture_expr., align 4, !dbg !130, !tbaa !33
  %11 = bitcast i32* %.capture_expr.3 to i8*, !dbg !129
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #4, !dbg !129
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.3, metadata !116, metadata !DIExpression()), !dbg !122
  %12 = load i32, i32* %.capture_expr., align 4, !dbg !130, !tbaa !33
  %sub = sub nsw i32 %12, 0, !dbg !129
  %sub4 = sub nsw i32 %sub, 1, !dbg !129
  %add = add nsw i32 %sub4, 1, !dbg !129
  %div = sdiv i32 %add, 1, !dbg !129
  %sub5 = sub nsw i32 %div, 1, !dbg !129
  store i32 %sub5, i32* %.capture_expr.3, align 4, !dbg !129, !tbaa !33
  %13 = bitcast i32* %i to i8*, !dbg !129
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %13) #4, !dbg !129
  call void @llvm.dbg.declare(metadata i32* %i, metadata !117, metadata !DIExpression()), !dbg !122
  store i32 0, i32* %i, align 4, !dbg !131, !tbaa !33
  %14 = bitcast i32* %i to i8*, !dbg !129
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %14) #4, !dbg !129
  %15 = load i32, i32* %.capture_expr., align 4, !dbg !130, !tbaa !33
  %cmp = icmp slt i32 0, %15, !dbg !129
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end, !dbg !129

omp.precond.then:                                 ; preds = %entry
  %16 = bitcast i32* %.omp.lb to i8*, !dbg !129
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %16) #4, !dbg !129
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !118, metadata !DIExpression()), !dbg !122
  store i32 0, i32* %.omp.lb, align 4, !dbg !132, !tbaa !33
  %17 = bitcast i32* %.omp.ub to i8*, !dbg !129
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %17) #4, !dbg !129
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !119, metadata !DIExpression()), !dbg !122
  %18 = load i32, i32* %.capture_expr.3, align 4, !dbg !129, !tbaa !33
  store i32 %18, i32* %.omp.ub, align 4, !dbg !132, !tbaa !33
  %19 = bitcast i32* %.omp.stride to i8*, !dbg !129
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %19) #4, !dbg !129
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !120, metadata !DIExpression()), !dbg !122
  store i32 1, i32* %.omp.stride, align 4, !dbg !132, !tbaa !33
  %20 = bitcast i32* %.omp.is_last to i8*, !dbg !129
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %20) #4, !dbg !129
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !121, metadata !DIExpression()), !dbg !122
  store i32 0, i32* %.omp.is_last, align 4, !dbg !132, !tbaa !33
  %21 = bitcast i32* %i6 to i8*, !dbg !129
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %21) #4, !dbg !129
  call void @llvm.dbg.declare(metadata i32* %i6, metadata !117, metadata !DIExpression()), !dbg !122
  %22 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !129
  store i8* getelementptr inbounds ([65 x i8], [65 x i8]* @1, i32 0, i32 0), i8** %22, align 8, !dbg !129, !tbaa !79
  %23 = load i32*, i32** %.global_tid..addr, align 8, !dbg !129
  %24 = load i32, i32* %23, align 4, !dbg !129, !tbaa !33
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %24, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !129
  %25 = load i32, i32* %.omp.ub, align 4, !dbg !132, !tbaa !33
  %26 = load i32, i32* %.capture_expr.3, align 4, !dbg !129, !tbaa !33
  %cmp7 = icmp sgt i32 %25, %26, !dbg !132
  br i1 %cmp7, label %cond.true, label %cond.false, !dbg !132

cond.true:                                        ; preds = %omp.precond.then
  %27 = load i32, i32* %.capture_expr.3, align 4, !dbg !129, !tbaa !33
  br label %cond.end, !dbg !132

cond.false:                                       ; preds = %omp.precond.then
  %28 = load i32, i32* %.omp.ub, align 4, !dbg !132, !tbaa !33
  br label %cond.end, !dbg !132

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %27, %cond.true ], [ %28, %cond.false ], !dbg !132
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !132, !tbaa !33
  %29 = load i32, i32* %.omp.lb, align 4, !dbg !132, !tbaa !33
  store i32 %29, i32* %.omp.iv, align 4, !dbg !132, !tbaa !33
  br label %omp.inner.for.cond, !dbg !129

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %30 = load i32, i32* %.omp.iv, align 4, !dbg !132, !tbaa !33
  %31 = load i32, i32* %.omp.ub, align 4, !dbg !132, !tbaa !33
  %cmp8 = icmp sle i32 %30, %31, !dbg !129
  br i1 %cmp8, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !129

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !129

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %32 = load i32, i32* %.omp.iv, align 4, !dbg !132, !tbaa !33
  %mul = mul nsw i32 %32, 1, !dbg !131
  %add9 = add nsw i32 0, %mul, !dbg !131
  store i32 %add9, i32* %i6, align 4, !dbg !131, !tbaa !33
  %33 = load i32, i32* %i6, align 4, !dbg !133, !tbaa !33
  %idxprom = sext i32 %33 to i64, !dbg !135
  %arrayidx = getelementptr inbounds i32, i32* %7, i64 %idxprom, !dbg !135
  %34 = load i32, i32* %arrayidx, align 4, !dbg !135, !tbaa !33
  %35 = load i32, i32* %5, align 4, !dbg !136, !tbaa !33
  %inc = add nsw i32 %35, 1, !dbg !136
  store i32 %inc, i32* %5, align 4, !dbg !136, !tbaa !33
  %idxprom10 = sext i32 %35 to i64, !dbg !137
  %arrayidx11 = getelementptr inbounds i32, i32* %4, i64 %idxprom10, !dbg !137
  store i32 %34, i32* %arrayidx11, align 4, !dbg !138, !tbaa !33
  br label %omp.body.continue, !dbg !139

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !140

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %36 = load i32, i32* %.omp.iv, align 4, !dbg !132, !tbaa !33
  %add12 = add nsw i32 %36, 1, !dbg !129
  store i32 %add12, i32* %.omp.iv, align 4, !dbg !129, !tbaa !33
  br label %omp.inner.for.cond, !dbg !140, !llvm.loop !141

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !140

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %37 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !140
  store i8* getelementptr inbounds ([66 x i8], [66 x i8]* @2, i32 0, i32 0), i8** %37, align 8, !dbg !140, !tbaa !79
  %38 = load i32*, i32** %.global_tid..addr, align 8, !dbg !140
  %39 = load i32, i32* %38, align 4, !dbg !140, !tbaa !33
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %39), !dbg !140
  %40 = bitcast i32* %i6 to i8*, !dbg !140
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %40) #4, !dbg !140
  %41 = bitcast i32* %.omp.is_last to i8*, !dbg !140
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %41) #4, !dbg !140
  %42 = bitcast i32* %.omp.stride to i8*, !dbg !140
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %42) #4, !dbg !140
  %43 = bitcast i32* %.omp.ub to i8*, !dbg !140
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %43) #4, !dbg !140
  %44 = bitcast i32* %.omp.lb to i8*, !dbg !140
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %44) #4, !dbg !140
  br label %omp.precond.end, !dbg !140

omp.precond.end:                                  ; preds = %omp.loop.exit, %entry
  %45 = bitcast i32* %.capture_expr.3 to i8*, !dbg !140
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %45) #4, !dbg !140
  %46 = bitcast i32* %.capture_expr. to i8*, !dbg !140
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %46) #4, !dbg !140
  %47 = bitcast i32* %.omp.iv to i8*, !dbg !140
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %47) #4, !dbg !140
  ret void, !dbg !143
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %inLen, i64 %vla, i32* dereferenceable(4) %output, i32* dereferenceable(4) %outLen, i64 %vla1, i32* dereferenceable(4) %input) #5 !dbg !144 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %inLen.addr = alloca i32*, align 8
  %vla.addr = alloca i64, align 8
  %output.addr = alloca i32*, align 8
  %outLen.addr = alloca i32*, align 8
  %vla.addr2 = alloca i64, align 8
  %input.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !146, metadata !DIExpression()), !dbg !154
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !147, metadata !DIExpression()), !dbg !154
  store i32* %inLen, i32** %inLen.addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata i32** %inLen.addr, metadata !148, metadata !DIExpression()), !dbg !154
  store i64 %vla, i64* %vla.addr, align 8, !tbaa !124
  call void @llvm.dbg.declare(metadata i64* %vla.addr, metadata !149, metadata !DIExpression()), !dbg !154
  store i32* %output, i32** %output.addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata i32** %output.addr, metadata !150, metadata !DIExpression()), !dbg !154
  store i32* %outLen, i32** %outLen.addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata i32** %outLen.addr, metadata !151, metadata !DIExpression()), !dbg !154
  store i64 %vla1, i64* %vla.addr2, align 8, !tbaa !124
  call void @llvm.dbg.declare(metadata i64* %vla.addr2, metadata !152, metadata !DIExpression()), !dbg !154
  store i32* %input, i32** %input.addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata i32** %input.addr, metadata !153, metadata !DIExpression()), !dbg !154
  %0 = load i32*, i32** %inLen.addr, align 8, !dbg !155, !tbaa !38
  %1 = load i64, i64* %vla.addr, align 8, !dbg !155, !tbaa !124
  %2 = load i32*, i32** %output.addr, align 8, !dbg !155, !tbaa !38
  %3 = load i32*, i32** %outLen.addr, align 8, !dbg !155, !tbaa !38
  %4 = load i64, i64* %vla.addr2, align 8, !dbg !155, !tbaa !124
  %5 = load i32*, i32** %input.addr, align 8, !dbg !155, !tbaa !38
  %6 = load i32*, i32** %.global_tid..addr, align 8, !dbg !155, !tbaa !38
  %7 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !155, !tbaa !38
  %8 = load i32*, i32** %inLen.addr, align 8, !dbg !155, !tbaa !38
  %9 = load i32*, i32** %output.addr, align 8, !dbg !155, !tbaa !38
  %10 = load i32*, i32** %outLen.addr, align 8, !dbg !155, !tbaa !38
  %11 = load i32*, i32** %input.addr, align 8, !dbg !155, !tbaa !38
  call void @.omp_outlined._debug__(i32* %6, i32* %7, i32* %8, i64 %1, i32* %9, i32* %10, i64 %4, i32* %11) #4, !dbg !155
  ret void, !dbg !155
}

declare !callback !156 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

declare dso_local i32 @printf(i8*, ...) #6

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #4

; Function Attrs: nounwind
declare dso_local i64 @strtol(i8*, i8**, i32) #7

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { inlinehint nounwind readonly uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!9, !10, !11}
!llvm.ident = !{!12}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "integration/dataracebench/DRB019-plusplus-var-yes.c", directory: "/home/brad/Code/OpenRace/tests/data")
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
!13 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 56, type: !14, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !16)
!14 = !DISubroutineType(types: !15)
!15 = !{!4, !4, !5}
!16 = !{!17, !18, !19, !20, !21, !22, !24, !28, !29}
!17 = !DILocalVariable(name: "argc", arg: 1, scope: !13, file: !1, line: 56, type: !4)
!18 = !DILocalVariable(name: "argv", arg: 2, scope: !13, file: !1, line: 56, type: !5)
!19 = !DILocalVariable(name: "i", scope: !13, file: !1, line: 58, type: !4)
!20 = !DILocalVariable(name: "inLen", scope: !13, file: !1, line: 59, type: !4)
!21 = !DILocalVariable(name: "outLen", scope: !13, file: !1, line: 60, type: !4)
!22 = !DILocalVariable(name: "__vla_expr0", scope: !13, type: !23, flags: DIFlagArtificial)
!23 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!24 = !DILocalVariable(name: "input", scope: !13, file: !1, line: 65, type: !25)
!25 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !26)
!26 = !{!27}
!27 = !DISubrange(count: !22)
!28 = !DILocalVariable(name: "__vla_expr1", scope: !13, type: !23, flags: DIFlagArtificial)
!29 = !DILocalVariable(name: "output", scope: !13, file: !1, line: 66, type: !30)
!30 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !31)
!31 = !{!32}
!32 = !DISubrange(count: !28)
!33 = !{!34, !34, i64 0}
!34 = !{!"int", !35, i64 0}
!35 = !{!"omnipotent char", !36, i64 0}
!36 = !{!"Simple C/C++ TBAA"}
!37 = !DILocation(line: 56, column: 14, scope: !13)
!38 = !{!39, !39, i64 0}
!39 = !{!"any pointer", !35, i64 0}
!40 = !DILocation(line: 56, column: 26, scope: !13)
!41 = !DILocation(line: 58, column: 3, scope: !13)
!42 = !DILocation(line: 58, column: 7, scope: !13)
!43 = !DILocation(line: 59, column: 3, scope: !13)
!44 = !DILocation(line: 59, column: 7, scope: !13)
!45 = !DILocation(line: 60, column: 3, scope: !13)
!46 = !DILocation(line: 60, column: 7, scope: !13)
!47 = !DILocation(line: 62, column: 7, scope: !48)
!48 = distinct !DILexicalBlock(scope: !13, file: !1, line: 62, column: 7)
!49 = !DILocation(line: 62, column: 11, scope: !48)
!50 = !DILocation(line: 62, column: 7, scope: !13)
!51 = !DILocation(line: 63, column: 17, scope: !48)
!52 = !DILocation(line: 63, column: 12, scope: !48)
!53 = !DILocation(line: 63, column: 10, scope: !48)
!54 = !DILocation(line: 63, column: 5, scope: !48)
!55 = !DILocation(line: 65, column: 13, scope: !13)
!56 = !DILocation(line: 65, column: 3, scope: !13)
!57 = !DILocation(line: 0, scope: !13)
!58 = !DILocation(line: 65, column: 7, scope: !13)
!59 = !DILocation(line: 66, column: 14, scope: !13)
!60 = !DILocation(line: 66, column: 3, scope: !13)
!61 = !DILocation(line: 66, column: 7, scope: !13)
!62 = !DILocation(line: 67, column: 9, scope: !63)
!63 = distinct !DILexicalBlock(scope: !13, file: !1, line: 67, column: 3)
!64 = !DILocation(line: 67, column: 8, scope: !63)
!65 = !DILocation(line: 67, column: 13, scope: !66)
!66 = distinct !DILexicalBlock(scope: !63, file: !1, line: 67, column: 3)
!67 = !DILocation(line: 67, column: 15, scope: !66)
!68 = !DILocation(line: 67, column: 14, scope: !66)
!69 = !DILocation(line: 67, column: 3, scope: !63)
!70 = !DILocation(line: 68, column: 14, scope: !66)
!71 = !DILocation(line: 68, column: 11, scope: !66)
!72 = !DILocation(line: 68, column: 5, scope: !66)
!73 = !DILocation(line: 68, column: 13, scope: !66)
!74 = !DILocation(line: 67, column: 22, scope: !66)
!75 = !DILocation(line: 67, column: 3, scope: !66)
!76 = distinct !{!76, !69, !77}
!77 = !DILocation(line: 68, column: 14, scope: !63)
!78 = !DILocation(line: 70, column: 1, scope: !13)
!79 = !{!80, !39, i64 16}
!80 = !{!"ident_t", !34, i64 0, !34, i64 4, !34, i64 8, !34, i64 12, !39, i64 16}
!81 = !DILocation(line: 75, column: 28, scope: !13)
!82 = !DILocation(line: 75, column: 3, scope: !13)
!83 = !DILocation(line: 76, column: 3, scope: !13)
!84 = !DILocation(line: 77, column: 1, scope: !13)
!85 = distinct !DISubprogram(name: "atoi", scope: !86, file: !86, line: 361, type: !87, scopeLine: 362, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !91)
!86 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!87 = !DISubroutineType(types: !88)
!88 = !{!4, !89}
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!91 = !{!92}
!92 = !DILocalVariable(name: "__nptr", arg: 1, scope: !85, file: !86, line: 361, type: !89)
!93 = !DILocation(line: 361, column: 1, scope: !85)
!94 = !DILocation(line: 363, column: 24, scope: !85)
!95 = !DILocation(line: 363, column: 16, scope: !85)
!96 = !DILocation(line: 363, column: 10, scope: !85)
!97 = !DILocation(line: 363, column: 3, scope: !85)
!98 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 71, type: !99, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !106)
!99 = !DISubroutineType(types: !100)
!100 = !{null, !101, !101, !105, !23, !105, !105, !23, !105}
!101 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !102)
!102 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !103)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!105 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !4, size: 64)
!106 = !{!107, !108, !109, !110, !111, !112, !113, !114, !115, !116, !116, !117, !118, !119, !120, !121, !117}
!107 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !98, type: !101, flags: DIFlagArtificial)
!108 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !98, type: !101, flags: DIFlagArtificial)
!109 = !DILocalVariable(name: "inLen", arg: 3, scope: !98, file: !1, line: 59, type: !105)
!110 = !DILocalVariable(name: "vla", arg: 4, scope: !98, type: !23, flags: DIFlagArtificial)
!111 = !DILocalVariable(name: "output", arg: 5, scope: !98, file: !1, line: 66, type: !105)
!112 = !DILocalVariable(name: "outLen", arg: 6, scope: !98, file: !1, line: 60, type: !105)
!113 = !DILocalVariable(name: "vla", arg: 7, scope: !98, type: !23, flags: DIFlagArtificial)
!114 = !DILocalVariable(name: "input", arg: 8, scope: !98, file: !1, line: 65, type: !105)
!115 = !DILocalVariable(name: ".omp.iv", scope: !98, type: !4, flags: DIFlagArtificial)
!116 = !DILocalVariable(name: ".capture_expr.", scope: !98, type: !4, flags: DIFlagArtificial)
!117 = !DILocalVariable(name: "i", scope: !98, type: !4, flags: DIFlagArtificial)
!118 = !DILocalVariable(name: ".omp.lb", scope: !98, type: !4, flags: DIFlagArtificial)
!119 = !DILocalVariable(name: ".omp.ub", scope: !98, type: !4, flags: DIFlagArtificial)
!120 = !DILocalVariable(name: ".omp.stride", scope: !98, type: !4, flags: DIFlagArtificial)
!121 = !DILocalVariable(name: ".omp.is_last", scope: !98, type: !4, flags: DIFlagArtificial)
!122 = !DILocation(line: 0, scope: !98)
!123 = !DILocation(line: 59, column: 7, scope: !98)
!124 = !{!125, !125, i64 0}
!125 = !{!"long", !35, i64 0}
!126 = !DILocation(line: 66, column: 7, scope: !98)
!127 = !DILocation(line: 60, column: 7, scope: !98)
!128 = !DILocation(line: 65, column: 7, scope: !98)
!129 = !DILocation(line: 71, column: 3, scope: !98)
!130 = !DILocation(line: 71, column: 15, scope: !98)
!131 = !DILocation(line: 71, column: 22, scope: !98)
!132 = !DILocation(line: 71, column: 8, scope: !98)
!133 = !DILocation(line: 72, column: 30, scope: !134)
!134 = distinct !DILexicalBlock(scope: !98, file: !1, line: 71, column: 27)
!135 = !DILocation(line: 72, column: 24, scope: !134)
!136 = !DILocation(line: 72, column: 18, scope: !134)
!137 = !DILocation(line: 72, column: 5, scope: !134)
!138 = !DILocation(line: 72, column: 22, scope: !134)
!139 = !DILocation(line: 73, column: 3, scope: !134)
!140 = !DILocation(line: 70, column: 1, scope: !98)
!141 = distinct !{!141, !140, !142}
!142 = !DILocation(line: 70, column: 25, scope: !98)
!143 = !DILocation(line: 73, column: 3, scope: !98)
!144 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 71, type: !99, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !145)
!145 = !{!146, !147, !148, !149, !150, !151, !152, !153}
!146 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !144, type: !101, flags: DIFlagArtificial)
!147 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !144, type: !101, flags: DIFlagArtificial)
!148 = !DILocalVariable(name: "inLen", arg: 3, scope: !144, type: !105, flags: DIFlagArtificial)
!149 = !DILocalVariable(name: "vla", arg: 4, scope: !144, type: !23, flags: DIFlagArtificial)
!150 = !DILocalVariable(name: "output", arg: 5, scope: !144, type: !105, flags: DIFlagArtificial)
!151 = !DILocalVariable(name: "outLen", arg: 6, scope: !144, type: !105, flags: DIFlagArtificial)
!152 = !DILocalVariable(name: "vla", arg: 7, scope: !144, type: !23, flags: DIFlagArtificial)
!153 = !DILocalVariable(name: "input", arg: 8, scope: !144, type: !105, flags: DIFlagArtificial)
!154 = !DILocation(line: 0, scope: !144)
!155 = !DILocation(line: 71, column: 3, scope: !144)
!156 = !{!157}
!157 = !{i64 2, i64 -1, i64 -1, i1 true}
