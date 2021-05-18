; ModuleID = 'integration/dataracebench/DRB004-antidep2-var-yes.c'
source_filename = "integration/dataracebench/DRB004-antidep2-var-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [65 x i8] c";integration/dataracebench/DRB004-antidep2-var-yes.c;main;67;1;;\00", align 1
@2 = private unnamed_addr constant [66 x i8] c";integration/dataracebench/DRB004-antidep2-var-yes.c;main;67;36;;\00", align 1
@3 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !dbg !13 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %len = alloca i32, align 4
  %saved_stack = alloca i8*, align 8
  %__vla_expr0 = alloca i64, align 8
  %__vla_expr1 = alloca i64, align 8
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4, !tbaa !31
  call void @llvm.dbg.declare(metadata i32* %argc.addr, metadata !17, metadata !DIExpression()), !dbg !35
  store i8** %argv, i8*** %argv.addr, align 8, !tbaa !36
  call void @llvm.dbg.declare(metadata i8*** %argv.addr, metadata !18, metadata !DIExpression()), !dbg !38
  %2 = bitcast i32* %i to i8*, !dbg !39
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #4, !dbg !39
  call void @llvm.dbg.declare(metadata i32* %i, metadata !19, metadata !DIExpression()), !dbg !40
  %3 = bitcast i32* %j to i8*, !dbg !39
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #4, !dbg !39
  call void @llvm.dbg.declare(metadata i32* %j, metadata !20, metadata !DIExpression()), !dbg !41
  %4 = bitcast i32* %len to i8*, !dbg !42
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #4, !dbg !42
  call void @llvm.dbg.declare(metadata i32* %len, metadata !21, metadata !DIExpression()), !dbg !43
  store i32 20, i32* %len, align 4, !dbg !43, !tbaa !31
  %5 = load i32, i32* %argc.addr, align 4, !dbg !44, !tbaa !31
  %cmp = icmp sgt i32 %5, 1, !dbg !46
  br i1 %cmp, label %if.then, label %if.end, !dbg !47

if.then:                                          ; preds = %entry
  %6 = load i8**, i8*** %argv.addr, align 8, !dbg !48, !tbaa !36
  %arrayidx = getelementptr inbounds i8*, i8** %6, i64 1, !dbg !48
  %7 = load i8*, i8** %arrayidx, align 8, !dbg !48, !tbaa !36
  %call = call i32 @atoi(i8* %7) #7, !dbg !49
  store i32 %call, i32* %len, align 4, !dbg !50, !tbaa !31
  br label %if.end, !dbg !51

if.end:                                           ; preds = %if.then, %entry
  %8 = load i32, i32* %len, align 4, !dbg !52, !tbaa !31
  %9 = zext i32 %8 to i64, !dbg !53
  %10 = load i32, i32* %len, align 4, !dbg !54, !tbaa !31
  %11 = zext i32 %10 to i64, !dbg !53
  %12 = call i8* @llvm.stacksave(), !dbg !53
  store i8* %12, i8** %saved_stack, align 8, !dbg !53
  %13 = mul nuw i64 %9, %11, !dbg !53
  %vla = alloca double, i64 %13, align 16, !dbg !53
  store i64 %9, i64* %__vla_expr0, align 8, !dbg !53
  store i64 %11, i64* %__vla_expr1, align 8, !dbg !53
  call void @llvm.dbg.declare(metadata i64* %__vla_expr0, metadata !22, metadata !DIExpression()), !dbg !55
  call void @llvm.dbg.declare(metadata i64* %__vla_expr1, metadata !24, metadata !DIExpression()), !dbg !55
  call void @llvm.dbg.declare(metadata double* %vla, metadata !25, metadata !DIExpression()), !dbg !56
  store i32 0, i32* %i, align 4, !dbg !57, !tbaa !31
  br label %for.cond, !dbg !59

for.cond:                                         ; preds = %for.inc8, %if.end
  %14 = load i32, i32* %i, align 4, !dbg !60, !tbaa !31
  %15 = load i32, i32* %len, align 4, !dbg !62, !tbaa !31
  %cmp1 = icmp slt i32 %14, %15, !dbg !63
  br i1 %cmp1, label %for.body, label %for.end10, !dbg !64

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4, !dbg !65, !tbaa !31
  br label %for.cond2, !dbg !67

for.cond2:                                        ; preds = %for.inc, %for.body
  %16 = load i32, i32* %j, align 4, !dbg !68, !tbaa !31
  %17 = load i32, i32* %len, align 4, !dbg !70, !tbaa !31
  %cmp3 = icmp slt i32 %16, %17, !dbg !71
  br i1 %cmp3, label %for.body4, label %for.end, !dbg !72

for.body4:                                        ; preds = %for.cond2
  %18 = load i32, i32* %i, align 4, !dbg !73, !tbaa !31
  %idxprom = sext i32 %18 to i64, !dbg !74
  %19 = mul nsw i64 %idxprom, %11, !dbg !74
  %arrayidx5 = getelementptr inbounds double, double* %vla, i64 %19, !dbg !74
  %20 = load i32, i32* %j, align 4, !dbg !75, !tbaa !31
  %idxprom6 = sext i32 %20 to i64, !dbg !74
  %arrayidx7 = getelementptr inbounds double, double* %arrayidx5, i64 %idxprom6, !dbg !74
  store double 5.000000e-01, double* %arrayidx7, align 8, !dbg !76, !tbaa !77
  br label %for.inc, !dbg !74

for.inc:                                          ; preds = %for.body4
  %21 = load i32, i32* %j, align 4, !dbg !79, !tbaa !31
  %inc = add nsw i32 %21, 1, !dbg !79
  store i32 %inc, i32* %j, align 4, !dbg !79, !tbaa !31
  br label %for.cond2, !dbg !80, !llvm.loop !81

for.end:                                          ; preds = %for.cond2
  br label %for.inc8, !dbg !82

for.inc8:                                         ; preds = %for.end
  %22 = load i32, i32* %i, align 4, !dbg !83, !tbaa !31
  %inc9 = add nsw i32 %22, 1, !dbg !83
  store i32 %inc9, i32* %i, align 4, !dbg !83, !tbaa !31
  br label %for.cond, !dbg !84, !llvm.loop !85

for.end10:                                        ; preds = %for.cond
  %23 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !87
  store i8* getelementptr inbounds ([65 x i8], [65 x i8]* @1, i32 0, i32 0), i8** %23, align 8, !dbg !87, !tbaa !88
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 4, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i64, i64, double*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %len, i64 %9, i64 %11, double* %vla), !dbg !87
  store i32 0, i32* %retval, align 4, !dbg !90
  %24 = load i8*, i8** %saved_stack, align 8, !dbg !91
  call void @llvm.stackrestore(i8* %24), !dbg !91
  %25 = bitcast i32* %len to i8*, !dbg !91
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %25) #4, !dbg !91
  %26 = bitcast i32* %j to i8*, !dbg !91
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %26) #4, !dbg !91
  %27 = bitcast i32* %i to i8*, !dbg !91
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %27) #4, !dbg !91
  %28 = load i32, i32* %retval, align 4, !dbg !91
  ret i32 %28, !dbg !91
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: inlinehint nounwind readonly uwtable
define available_externally dso_local i32 @atoi(i8* nonnull %__nptr) #3 !dbg !92 {
entry:
  %__nptr.addr = alloca i8*, align 8
  store i8* %__nptr, i8** %__nptr.addr, align 8, !tbaa !36
  call void @llvm.dbg.declare(metadata i8** %__nptr.addr, metadata !99, metadata !DIExpression()), !dbg !100
  %0 = load i8*, i8** %__nptr.addr, align 8, !dbg !101, !tbaa !36
  %call = call i64 @strtol(i8* %0, i8** null, i32 10) #4, !dbg !102
  %conv = trunc i64 %call to i32, !dbg !103
  ret i32 %conv, !dbg !104
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #4

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %len, i64 %vla, i64 %vla1, double* dereferenceable(8) %a) #5 !dbg !105 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %vla.addr = alloca i64, align 8
  %vla.addr2 = alloca i64, align 8
  %a.addr = alloca double*, align 8
  %.omp.iv = alloca i32, align 4
  %tmp = alloca i32, align 4
  %.capture_expr. = alloca i32, align 4
  %.capture_expr.3 = alloca i32, align 4
  %i = alloca i32, align 4
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %j = alloca i32, align 4
  %i7 = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !36
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !115, metadata !DIExpression()), !dbg !129
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !36
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !116, metadata !DIExpression()), !dbg !129
  store i32* %len, i32** %len.addr, align 8, !tbaa !36
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !117, metadata !DIExpression()), !dbg !130
  store i64 %vla, i64* %vla.addr, align 8, !tbaa !131
  call void @llvm.dbg.declare(metadata i64* %vla.addr, metadata !118, metadata !DIExpression()), !dbg !129
  store i64 %vla1, i64* %vla.addr2, align 8, !tbaa !131
  call void @llvm.dbg.declare(metadata i64* %vla.addr2, metadata !119, metadata !DIExpression()), !dbg !129
  store double* %a, double** %a.addr, align 8, !tbaa !36
  call void @llvm.dbg.declare(metadata double** %a.addr, metadata !120, metadata !DIExpression()), !dbg !133
  %2 = load i32*, i32** %len.addr, align 8, !dbg !134, !tbaa !36
  %3 = load i64, i64* %vla.addr, align 8, !dbg !134, !tbaa !131
  %4 = load i64, i64* %vla.addr2, align 8, !dbg !134, !tbaa !131
  %5 = load double*, double** %a.addr, align 8, !dbg !134, !tbaa !36
  %6 = bitcast i32* %.omp.iv to i8*, !dbg !134
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #4, !dbg !134
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !121, metadata !DIExpression()), !dbg !129
  %7 = bitcast i32* %.capture_expr. to i8*, !dbg !134
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #4, !dbg !134
  call void @llvm.dbg.declare(metadata i32* %.capture_expr., metadata !122, metadata !DIExpression()), !dbg !129
  %8 = load i32, i32* %2, align 4, !dbg !135, !tbaa !31
  %sub = sub nsw i32 %8, 1, !dbg !136
  store i32 %sub, i32* %.capture_expr., align 4, !dbg !135, !tbaa !31
  %9 = bitcast i32* %.capture_expr.3 to i8*, !dbg !134
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #4, !dbg !134
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.3, metadata !122, metadata !DIExpression()), !dbg !129
  %10 = load i32, i32* %.capture_expr., align 4, !dbg !136, !tbaa !31
  %sub4 = sub nsw i32 %10, 0, !dbg !134
  %sub5 = sub nsw i32 %sub4, 1, !dbg !134
  %add = add nsw i32 %sub5, 1, !dbg !134
  %div = sdiv i32 %add, 1, !dbg !134
  %sub6 = sub nsw i32 %div, 1, !dbg !134
  store i32 %sub6, i32* %.capture_expr.3, align 4, !dbg !134, !tbaa !31
  %11 = bitcast i32* %i to i8*, !dbg !134
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #4, !dbg !134
  call void @llvm.dbg.declare(metadata i32* %i, metadata !123, metadata !DIExpression()), !dbg !129
  store i32 0, i32* %i, align 4, !dbg !137, !tbaa !31
  %12 = bitcast i32* %i to i8*, !dbg !134
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %12) #4, !dbg !134
  %13 = load i32, i32* %.capture_expr., align 4, !dbg !136, !tbaa !31
  %cmp = icmp slt i32 0, %13, !dbg !134
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end, !dbg !134

omp.precond.then:                                 ; preds = %entry
  %14 = bitcast i32* %.omp.lb to i8*, !dbg !134
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %14) #4, !dbg !134
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !124, metadata !DIExpression()), !dbg !129
  store i32 0, i32* %.omp.lb, align 4, !dbg !138, !tbaa !31
  %15 = bitcast i32* %.omp.ub to i8*, !dbg !134
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %15) #4, !dbg !134
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !125, metadata !DIExpression()), !dbg !129
  %16 = load i32, i32* %.capture_expr.3, align 4, !dbg !134, !tbaa !31
  store i32 %16, i32* %.omp.ub, align 4, !dbg !138, !tbaa !31
  %17 = bitcast i32* %.omp.stride to i8*, !dbg !134
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %17) #4, !dbg !134
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !126, metadata !DIExpression()), !dbg !129
  store i32 1, i32* %.omp.stride, align 4, !dbg !138, !tbaa !31
  %18 = bitcast i32* %.omp.is_last to i8*, !dbg !134
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %18) #4, !dbg !134
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !127, metadata !DIExpression()), !dbg !129
  store i32 0, i32* %.omp.is_last, align 4, !dbg !138, !tbaa !31
  %19 = bitcast i32* %j to i8*, !dbg !134
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %19) #4, !dbg !134
  call void @llvm.dbg.declare(metadata i32* %j, metadata !128, metadata !DIExpression()), !dbg !129
  %20 = bitcast i32* %i7 to i8*, !dbg !134
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %20) #4, !dbg !134
  call void @llvm.dbg.declare(metadata i32* %i7, metadata !123, metadata !DIExpression()), !dbg !129
  %21 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !134
  store i8* getelementptr inbounds ([65 x i8], [65 x i8]* @1, i32 0, i32 0), i8** %21, align 8, !dbg !134, !tbaa !88
  %22 = load i32*, i32** %.global_tid..addr, align 8, !dbg !134
  %23 = load i32, i32* %22, align 4, !dbg !134, !tbaa !31
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %23, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !134
  %24 = load i32, i32* %.omp.ub, align 4, !dbg !138, !tbaa !31
  %25 = load i32, i32* %.capture_expr.3, align 4, !dbg !134, !tbaa !31
  %cmp8 = icmp sgt i32 %24, %25, !dbg !138
  br i1 %cmp8, label %cond.true, label %cond.false, !dbg !138

cond.true:                                        ; preds = %omp.precond.then
  %26 = load i32, i32* %.capture_expr.3, align 4, !dbg !134, !tbaa !31
  br label %cond.end, !dbg !138

cond.false:                                       ; preds = %omp.precond.then
  %27 = load i32, i32* %.omp.ub, align 4, !dbg !138, !tbaa !31
  br label %cond.end, !dbg !138

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %26, %cond.true ], [ %27, %cond.false ], !dbg !138
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !138, !tbaa !31
  %28 = load i32, i32* %.omp.lb, align 4, !dbg !138, !tbaa !31
  store i32 %28, i32* %.omp.iv, align 4, !dbg !138, !tbaa !31
  br label %omp.inner.for.cond, !dbg !134

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %29 = load i32, i32* %.omp.iv, align 4, !dbg !138, !tbaa !31
  %30 = load i32, i32* %.omp.ub, align 4, !dbg !138, !tbaa !31
  %cmp9 = icmp sle i32 %29, %30, !dbg !134
  br i1 %cmp9, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !134

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !134

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %31 = load i32, i32* %.omp.iv, align 4, !dbg !138, !tbaa !31
  %mul = mul nsw i32 %31, 1, !dbg !137
  %add10 = add nsw i32 0, %mul, !dbg !137
  store i32 %add10, i32* %i7, align 4, !dbg !137, !tbaa !31
  store i32 0, i32* %j, align 4, !dbg !139, !tbaa !31
  br label %for.cond, !dbg !142

for.cond:                                         ; preds = %for.inc, %omp.inner.for.body
  %32 = load i32, i32* %j, align 4, !dbg !143, !tbaa !31
  %33 = load i32, i32* %2, align 4, !dbg !145, !tbaa !31
  %cmp11 = icmp slt i32 %32, %33, !dbg !146
  br i1 %cmp11, label %for.body, label %for.end, !dbg !147

for.body:                                         ; preds = %for.cond
  %34 = load i32, i32* %i7, align 4, !dbg !148, !tbaa !31
  %add12 = add nsw i32 %34, 1, !dbg !150
  %idxprom = sext i32 %add12 to i64, !dbg !151
  %35 = mul nsw i64 %idxprom, %4, !dbg !151
  %arrayidx = getelementptr inbounds double, double* %5, i64 %35, !dbg !151
  %36 = load i32, i32* %j, align 4, !dbg !152, !tbaa !31
  %idxprom13 = sext i32 %36 to i64, !dbg !151
  %arrayidx14 = getelementptr inbounds double, double* %arrayidx, i64 %idxprom13, !dbg !151
  %37 = load double, double* %arrayidx14, align 8, !dbg !151, !tbaa !77
  %38 = load i32, i32* %i7, align 4, !dbg !153, !tbaa !31
  %idxprom15 = sext i32 %38 to i64, !dbg !154
  %39 = mul nsw i64 %idxprom15, %4, !dbg !154
  %arrayidx16 = getelementptr inbounds double, double* %5, i64 %39, !dbg !154
  %40 = load i32, i32* %j, align 4, !dbg !155, !tbaa !31
  %idxprom17 = sext i32 %40 to i64, !dbg !154
  %arrayidx18 = getelementptr inbounds double, double* %arrayidx16, i64 %idxprom17, !dbg !154
  %41 = load double, double* %arrayidx18, align 8, !dbg !156, !tbaa !77
  %add19 = fadd double %41, %37, !dbg !156
  store double %add19, double* %arrayidx18, align 8, !dbg !156, !tbaa !77
  br label %for.inc, !dbg !157

for.inc:                                          ; preds = %for.body
  %42 = load i32, i32* %j, align 4, !dbg !158, !tbaa !31
  %add20 = add nsw i32 %42, 1, !dbg !158
  store i32 %add20, i32* %j, align 4, !dbg !158, !tbaa !31
  br label %for.cond, !dbg !159, !llvm.loop !160

for.end:                                          ; preds = %for.cond
  br label %omp.body.continue, !dbg !162

omp.body.continue:                                ; preds = %for.end
  br label %omp.inner.for.inc, !dbg !163

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %43 = load i32, i32* %.omp.iv, align 4, !dbg !138, !tbaa !31
  %add21 = add nsw i32 %43, 1, !dbg !134
  store i32 %add21, i32* %.omp.iv, align 4, !dbg !134, !tbaa !31
  br label %omp.inner.for.cond, !dbg !163, !llvm.loop !164

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !163

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %44 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !163
  store i8* getelementptr inbounds ([66 x i8], [66 x i8]* @2, i32 0, i32 0), i8** %44, align 8, !dbg !163, !tbaa !88
  %45 = load i32*, i32** %.global_tid..addr, align 8, !dbg !163
  %46 = load i32, i32* %45, align 4, !dbg !163, !tbaa !31
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %46), !dbg !163
  %47 = bitcast i32* %i7 to i8*, !dbg !163
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %47) #4, !dbg !163
  %48 = bitcast i32* %j to i8*, !dbg !163
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %48) #4, !dbg !163
  %49 = bitcast i32* %.omp.is_last to i8*, !dbg !163
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %49) #4, !dbg !163
  %50 = bitcast i32* %.omp.stride to i8*, !dbg !163
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %50) #4, !dbg !163
  %51 = bitcast i32* %.omp.ub to i8*, !dbg !163
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %51) #4, !dbg !163
  %52 = bitcast i32* %.omp.lb to i8*, !dbg !163
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %52) #4, !dbg !163
  br label %omp.precond.end, !dbg !163

omp.precond.end:                                  ; preds = %omp.loop.exit, %entry
  %53 = bitcast i32* %.capture_expr.3 to i8*, !dbg !163
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %53) #4, !dbg !163
  %54 = bitcast i32* %.capture_expr. to i8*, !dbg !163
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %54) #4, !dbg !163
  %55 = bitcast i32* %.omp.iv to i8*, !dbg !163
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %55) #4, !dbg !163
  ret void, !dbg !166
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %len, i64 %vla, i64 %vla1, double* dereferenceable(8) %a) #5 !dbg !167 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %vla.addr = alloca i64, align 8
  %vla.addr2 = alloca i64, align 8
  %a.addr = alloca double*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !36
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !169, metadata !DIExpression()), !dbg !175
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !36
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !170, metadata !DIExpression()), !dbg !175
  store i32* %len, i32** %len.addr, align 8, !tbaa !36
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !171, metadata !DIExpression()), !dbg !175
  store i64 %vla, i64* %vla.addr, align 8, !tbaa !131
  call void @llvm.dbg.declare(metadata i64* %vla.addr, metadata !172, metadata !DIExpression()), !dbg !175
  store i64 %vla1, i64* %vla.addr2, align 8, !tbaa !131
  call void @llvm.dbg.declare(metadata i64* %vla.addr2, metadata !173, metadata !DIExpression()), !dbg !175
  store double* %a, double** %a.addr, align 8, !tbaa !36
  call void @llvm.dbg.declare(metadata double** %a.addr, metadata !174, metadata !DIExpression()), !dbg !175
  %0 = load i32*, i32** %len.addr, align 8, !dbg !176, !tbaa !36
  %1 = load i64, i64* %vla.addr, align 8, !dbg !176, !tbaa !131
  %2 = load i64, i64* %vla.addr2, align 8, !dbg !176, !tbaa !131
  %3 = load double*, double** %a.addr, align 8, !dbg !176, !tbaa !36
  %4 = load i32*, i32** %.global_tid..addr, align 8, !dbg !176, !tbaa !36
  %5 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !176, !tbaa !36
  %6 = load i32*, i32** %len.addr, align 8, !dbg !176, !tbaa !36
  %7 = load double*, double** %a.addr, align 8, !dbg !176, !tbaa !36
  call void @.omp_outlined._debug__(i32* %4, i32* %5, i32* %6, i64 %1, i64 %2, double* %7) #4, !dbg !176
  ret void, !dbg !176
}

declare !callback !177 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

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
!1 = !DIFile(filename: "integration/dataracebench/DRB004-antidep2-var-yes.c", directory: "/home/brad/Code/OpenRace/tests/data")
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
!13 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 53, type: !14, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !16)
!14 = !DISubroutineType(types: !15)
!15 = !{!4, !4, !5}
!16 = !{!17, !18, !19, !20, !21, !22, !24, !25}
!17 = !DILocalVariable(name: "argc", arg: 1, scope: !13, file: !1, line: 53, type: !4)
!18 = !DILocalVariable(name: "argv", arg: 2, scope: !13, file: !1, line: 53, type: !5)
!19 = !DILocalVariable(name: "i", scope: !13, file: !1, line: 55, type: !4)
!20 = !DILocalVariable(name: "j", scope: !13, file: !1, line: 55, type: !4)
!21 = !DILocalVariable(name: "len", scope: !13, file: !1, line: 56, type: !4)
!22 = !DILocalVariable(name: "__vla_expr0", scope: !13, type: !23, flags: DIFlagArtificial)
!23 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!24 = !DILocalVariable(name: "__vla_expr1", scope: !13, type: !23, flags: DIFlagArtificial)
!25 = !DILocalVariable(name: "a", scope: !13, file: !1, line: 61, type: !26)
!26 = !DICompositeType(tag: DW_TAG_array_type, baseType: !27, elements: !28)
!27 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!28 = !{!29, !30}
!29 = !DISubrange(count: !22)
!30 = !DISubrange(count: !24)
!31 = !{!32, !32, i64 0}
!32 = !{!"int", !33, i64 0}
!33 = !{!"omnipotent char", !34, i64 0}
!34 = !{!"Simple C/C++ TBAA"}
!35 = !DILocation(line: 53, column: 14, scope: !13)
!36 = !{!37, !37, i64 0}
!37 = !{!"any pointer", !33, i64 0}
!38 = !DILocation(line: 53, column: 25, scope: !13)
!39 = !DILocation(line: 55, column: 3, scope: !13)
!40 = !DILocation(line: 55, column: 7, scope: !13)
!41 = !DILocation(line: 55, column: 10, scope: !13)
!42 = !DILocation(line: 56, column: 3, scope: !13)
!43 = !DILocation(line: 56, column: 7, scope: !13)
!44 = !DILocation(line: 58, column: 7, scope: !45)
!45 = distinct !DILexicalBlock(scope: !13, file: !1, line: 58, column: 7)
!46 = !DILocation(line: 58, column: 11, scope: !45)
!47 = !DILocation(line: 58, column: 7, scope: !13)
!48 = !DILocation(line: 59, column: 16, scope: !45)
!49 = !DILocation(line: 59, column: 11, scope: !45)
!50 = !DILocation(line: 59, column: 9, scope: !45)
!51 = !DILocation(line: 59, column: 5, scope: !45)
!52 = !DILocation(line: 61, column: 12, scope: !13)
!53 = !DILocation(line: 61, column: 3, scope: !13)
!54 = !DILocation(line: 61, column: 17, scope: !13)
!55 = !DILocation(line: 0, scope: !13)
!56 = !DILocation(line: 61, column: 10, scope: !13)
!57 = !DILocation(line: 63, column: 9, scope: !58)
!58 = distinct !DILexicalBlock(scope: !13, file: !1, line: 63, column: 3)
!59 = !DILocation(line: 63, column: 8, scope: !58)
!60 = !DILocation(line: 63, column: 13, scope: !61)
!61 = distinct !DILexicalBlock(scope: !58, file: !1, line: 63, column: 3)
!62 = !DILocation(line: 63, column: 16, scope: !61)
!63 = !DILocation(line: 63, column: 14, scope: !61)
!64 = !DILocation(line: 63, column: 3, scope: !58)
!65 = !DILocation(line: 64, column: 11, scope: !66)
!66 = distinct !DILexicalBlock(scope: !61, file: !1, line: 64, column: 5)
!67 = !DILocation(line: 64, column: 10, scope: !66)
!68 = !DILocation(line: 64, column: 15, scope: !69)
!69 = distinct !DILexicalBlock(scope: !66, file: !1, line: 64, column: 5)
!70 = !DILocation(line: 64, column: 17, scope: !69)
!71 = !DILocation(line: 64, column: 16, scope: !69)
!72 = !DILocation(line: 64, column: 5, scope: !66)
!73 = !DILocation(line: 65, column: 9, scope: !69)
!74 = !DILocation(line: 65, column: 7, scope: !69)
!75 = !DILocation(line: 65, column: 12, scope: !69)
!76 = !DILocation(line: 65, column: 15, scope: !69)
!77 = !{!78, !78, i64 0}
!78 = !{!"double", !33, i64 0}
!79 = !DILocation(line: 64, column: 23, scope: !69)
!80 = !DILocation(line: 64, column: 5, scope: !69)
!81 = distinct !{!81, !72, !82}
!82 = !DILocation(line: 65, column: 17, scope: !66)
!83 = !DILocation(line: 63, column: 22, scope: !61)
!84 = !DILocation(line: 63, column: 3, scope: !61)
!85 = distinct !{!85, !64, !86}
!86 = !DILocation(line: 65, column: 17, scope: !58)
!87 = !DILocation(line: 67, column: 1, scope: !13)
!88 = !{!89, !37, i64 16}
!89 = !{!"ident_t", !32, i64 0, !32, i64 4, !32, i64 8, !32, i64 12, !37, i64 16}
!90 = !DILocation(line: 73, column: 3, scope: !13)
!91 = !DILocation(line: 74, column: 1, scope: !13)
!92 = distinct !DISubprogram(name: "atoi", scope: !93, file: !93, line: 361, type: !94, scopeLine: 362, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !98)
!93 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!94 = !DISubroutineType(types: !95)
!95 = !{!4, !96}
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!98 = !{!99}
!99 = !DILocalVariable(name: "__nptr", arg: 1, scope: !92, file: !93, line: 361, type: !96)
!100 = !DILocation(line: 361, column: 1, scope: !92)
!101 = !DILocation(line: 363, column: 24, scope: !92)
!102 = !DILocation(line: 363, column: 16, scope: !92)
!103 = !DILocation(line: 363, column: 10, scope: !92)
!104 = !DILocation(line: 363, column: 3, scope: !92)
!105 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 68, type: !106, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !114)
!106 = !DISubroutineType(types: !107)
!107 = !{null, !108, !108, !112, !23, !23, !113}
!108 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!109 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !110)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!112 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !4, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !27, size: 64)
!114 = !{!115, !116, !117, !118, !119, !120, !121, !122, !122, !123, !124, !125, !126, !127, !128, !123}
!115 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !105, type: !108, flags: DIFlagArtificial)
!116 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !105, type: !108, flags: DIFlagArtificial)
!117 = !DILocalVariable(name: "len", arg: 3, scope: !105, file: !1, line: 56, type: !112)
!118 = !DILocalVariable(name: "vla", arg: 4, scope: !105, type: !23, flags: DIFlagArtificial)
!119 = !DILocalVariable(name: "vla", arg: 5, scope: !105, type: !23, flags: DIFlagArtificial)
!120 = !DILocalVariable(name: "a", arg: 6, scope: !105, file: !1, line: 61, type: !113)
!121 = !DILocalVariable(name: ".omp.iv", scope: !105, type: !4, flags: DIFlagArtificial)
!122 = !DILocalVariable(name: ".capture_expr.", scope: !105, type: !4, flags: DIFlagArtificial)
!123 = !DILocalVariable(name: "i", scope: !105, type: !4, flags: DIFlagArtificial)
!124 = !DILocalVariable(name: ".omp.lb", scope: !105, type: !4, flags: DIFlagArtificial)
!125 = !DILocalVariable(name: ".omp.ub", scope: !105, type: !4, flags: DIFlagArtificial)
!126 = !DILocalVariable(name: ".omp.stride", scope: !105, type: !4, flags: DIFlagArtificial)
!127 = !DILocalVariable(name: ".omp.is_last", scope: !105, type: !4, flags: DIFlagArtificial)
!128 = !DILocalVariable(name: "j", scope: !105, type: !4, flags: DIFlagArtificial)
!129 = !DILocation(line: 0, scope: !105)
!130 = !DILocation(line: 56, column: 7, scope: !105)
!131 = !{!132, !132, i64 0}
!132 = !{!"long", !33, i64 0}
!133 = !DILocation(line: 61, column: 10, scope: !105)
!134 = !DILocation(line: 68, column: 3, scope: !105)
!135 = !DILocation(line: 68, column: 19, scope: !105)
!136 = !DILocation(line: 68, column: 23, scope: !105)
!137 = !DILocation(line: 68, column: 28, scope: !105)
!138 = !DILocation(line: 68, column: 8, scope: !105)
!139 = !DILocation(line: 69, column: 12, scope: !140)
!140 = distinct !DILexicalBlock(scope: !141, file: !1, line: 69, column: 5)
!141 = distinct !DILexicalBlock(scope: !105, file: !1, line: 68, column: 36)
!142 = !DILocation(line: 69, column: 10, scope: !140)
!143 = !DILocation(line: 69, column: 17, scope: !144)
!144 = distinct !DILexicalBlock(scope: !140, file: !1, line: 69, column: 5)
!145 = !DILocation(line: 69, column: 21, scope: !144)
!146 = !DILocation(line: 69, column: 19, scope: !144)
!147 = !DILocation(line: 69, column: 5, scope: !140)
!148 = !DILocation(line: 70, column: 20, scope: !149)
!149 = distinct !DILexicalBlock(scope: !144, file: !1, line: 69, column: 35)
!150 = !DILocation(line: 70, column: 22, scope: !149)
!151 = !DILocation(line: 70, column: 18, scope: !149)
!152 = !DILocation(line: 70, column: 27, scope: !149)
!153 = !DILocation(line: 70, column: 9, scope: !149)
!154 = !DILocation(line: 70, column: 7, scope: !149)
!155 = !DILocation(line: 70, column: 12, scope: !149)
!156 = !DILocation(line: 70, column: 15, scope: !149)
!157 = !DILocation(line: 71, column: 5, scope: !149)
!158 = !DILocation(line: 69, column: 29, scope: !144)
!159 = !DILocation(line: 69, column: 5, scope: !144)
!160 = distinct !{!160, !147, !161}
!161 = !DILocation(line: 71, column: 5, scope: !140)
!162 = !DILocation(line: 72, column: 3, scope: !141)
!163 = !DILocation(line: 67, column: 1, scope: !105)
!164 = distinct !{!164, !163, !165}
!165 = !DILocation(line: 67, column: 36, scope: !105)
!166 = !DILocation(line: 72, column: 3, scope: !105)
!167 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 68, type: !106, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !168)
!168 = !{!169, !170, !171, !172, !173, !174}
!169 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !167, type: !108, flags: DIFlagArtificial)
!170 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !167, type: !108, flags: DIFlagArtificial)
!171 = !DILocalVariable(name: "len", arg: 3, scope: !167, type: !112, flags: DIFlagArtificial)
!172 = !DILocalVariable(name: "vla", arg: 4, scope: !167, type: !23, flags: DIFlagArtificial)
!173 = !DILocalVariable(name: "vla", arg: 5, scope: !167, type: !23, flags: DIFlagArtificial)
!174 = !DILocalVariable(name: "a", arg: 6, scope: !167, type: !113, flags: DIFlagArtificial)
!175 = !DILocation(line: 0, scope: !167)
!176 = !DILocation(line: 68, column: 3, scope: !167)
!177 = !{!178}
!178 = !{i64 2, i64 -1, i64 -1, i1 true}
