; ModuleID = 'integration/dataracebench/DRB032-truedepfirstdimension-var-yes.c'
source_filename = "integration/dataracebench/DRB032-truedepfirstdimension-var-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [78 x i8] c";integration/dataracebench/DRB032-truedepfirstdimension-var-yes.c;main;66;1;;\00", align 1
@2 = private unnamed_addr constant [79 x i8] c";integration/dataracebench/DRB032-truedepfirstdimension-var-yes.c;main;66;36;;\00", align 1
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
  %n = alloca i32, align 4
  %m = alloca i32, align 4
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
  %3 = bitcast i32* %j to i8*, !dbg !41
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #4, !dbg !41
  call void @llvm.dbg.declare(metadata i32* %j, metadata !20, metadata !DIExpression()), !dbg !43
  %4 = bitcast i32* %len to i8*, !dbg !44
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #4, !dbg !44
  call void @llvm.dbg.declare(metadata i32* %len, metadata !21, metadata !DIExpression()), !dbg !45
  store i32 1000, i32* %len, align 4, !dbg !45, !tbaa !33
  %5 = load i32, i32* %argc.addr, align 4, !dbg !46, !tbaa !33
  %cmp = icmp sgt i32 %5, 1, !dbg !48
  br i1 %cmp, label %if.then, label %if.end, !dbg !49

if.then:                                          ; preds = %entry
  %6 = load i8**, i8*** %argv.addr, align 8, !dbg !50, !tbaa !38
  %arrayidx = getelementptr inbounds i8*, i8** %6, i64 1, !dbg !50
  %7 = load i8*, i8** %arrayidx, align 8, !dbg !50, !tbaa !38
  %call = call i32 @atoi(i8* %7) #7, !dbg !51
  store i32 %call, i32* %len, align 4, !dbg !52, !tbaa !33
  br label %if.end, !dbg !53

if.end:                                           ; preds = %if.then, %entry
  %8 = bitcast i32* %n to i8*, !dbg !54
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #4, !dbg !54
  call void @llvm.dbg.declare(metadata i32* %n, metadata !22, metadata !DIExpression()), !dbg !55
  %9 = load i32, i32* %len, align 4, !dbg !56, !tbaa !33
  store i32 %9, i32* %n, align 4, !dbg !55, !tbaa !33
  %10 = bitcast i32* %m to i8*, !dbg !54
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #4, !dbg !54
  call void @llvm.dbg.declare(metadata i32* %m, metadata !23, metadata !DIExpression()), !dbg !57
  %11 = load i32, i32* %len, align 4, !dbg !58, !tbaa !33
  store i32 %11, i32* %m, align 4, !dbg !57, !tbaa !33
  %12 = load i32, i32* %len, align 4, !dbg !59, !tbaa !33
  %13 = zext i32 %12 to i64, !dbg !60
  %14 = load i32, i32* %len, align 4, !dbg !61, !tbaa !33
  %15 = zext i32 %14 to i64, !dbg !60
  %16 = call i8* @llvm.stacksave(), !dbg !60
  store i8* %16, i8** %saved_stack, align 8, !dbg !60
  %17 = mul nuw i64 %13, %15, !dbg !60
  %vla = alloca double, i64 %17, align 16, !dbg !60
  store i64 %13, i64* %__vla_expr0, align 8, !dbg !60
  store i64 %15, i64* %__vla_expr1, align 8, !dbg !60
  call void @llvm.dbg.declare(metadata i64* %__vla_expr0, metadata !24, metadata !DIExpression()), !dbg !62
  call void @llvm.dbg.declare(metadata i64* %__vla_expr1, metadata !26, metadata !DIExpression()), !dbg !62
  call void @llvm.dbg.declare(metadata double* %vla, metadata !27, metadata !DIExpression()), !dbg !63
  store i32 0, i32* %i, align 4, !dbg !64, !tbaa !33
  br label %for.cond, !dbg !66

for.cond:                                         ; preds = %for.inc8, %if.end
  %18 = load i32, i32* %i, align 4, !dbg !67, !tbaa !33
  %19 = load i32, i32* %n, align 4, !dbg !69, !tbaa !33
  %cmp1 = icmp slt i32 %18, %19, !dbg !70
  br i1 %cmp1, label %for.body, label %for.end10, !dbg !71

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4, !dbg !72, !tbaa !33
  br label %for.cond2, !dbg !74

for.cond2:                                        ; preds = %for.inc, %for.body
  %20 = load i32, i32* %j, align 4, !dbg !75, !tbaa !33
  %21 = load i32, i32* %m, align 4, !dbg !77, !tbaa !33
  %cmp3 = icmp slt i32 %20, %21, !dbg !78
  br i1 %cmp3, label %for.body4, label %for.end, !dbg !79

for.body4:                                        ; preds = %for.cond2
  %22 = load i32, i32* %i, align 4, !dbg !80, !tbaa !33
  %idxprom = sext i32 %22 to i64, !dbg !81
  %23 = mul nsw i64 %idxprom, %15, !dbg !81
  %arrayidx5 = getelementptr inbounds double, double* %vla, i64 %23, !dbg !81
  %24 = load i32, i32* %j, align 4, !dbg !82, !tbaa !33
  %idxprom6 = sext i32 %24 to i64, !dbg !81
  %arrayidx7 = getelementptr inbounds double, double* %arrayidx5, i64 %idxprom6, !dbg !81
  store double 5.000000e-01, double* %arrayidx7, align 8, !dbg !83, !tbaa !84
  br label %for.inc, !dbg !81

for.inc:                                          ; preds = %for.body4
  %25 = load i32, i32* %j, align 4, !dbg !86, !tbaa !33
  %inc = add nsw i32 %25, 1, !dbg !86
  store i32 %inc, i32* %j, align 4, !dbg !86, !tbaa !33
  br label %for.cond2, !dbg !87, !llvm.loop !88

for.end:                                          ; preds = %for.cond2
  br label %for.inc8, !dbg !89

for.inc8:                                         ; preds = %for.end
  %26 = load i32, i32* %i, align 4, !dbg !90, !tbaa !33
  %inc9 = add nsw i32 %26, 1, !dbg !90
  store i32 %inc9, i32* %i, align 4, !dbg !90, !tbaa !33
  br label %for.cond, !dbg !91, !llvm.loop !92

for.end10:                                        ; preds = %for.cond
  %27 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !94
  store i8* getelementptr inbounds ([78 x i8], [78 x i8]* @1, i32 0, i32 0), i8** %27, align 8, !dbg !94, !tbaa !95
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 5, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*, i64, i64, double*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %n, i32* %m, i64 %13, i64 %15, double* %vla), !dbg !94
  store i32 0, i32* %retval, align 4, !dbg !97
  %28 = load i8*, i8** %saved_stack, align 8, !dbg !98
  call void @llvm.stackrestore(i8* %28), !dbg !98
  %29 = bitcast i32* %m to i8*, !dbg !98
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %29) #4, !dbg !98
  %30 = bitcast i32* %n to i8*, !dbg !98
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %30) #4, !dbg !98
  %31 = bitcast i32* %len to i8*, !dbg !98
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %31) #4, !dbg !98
  %32 = bitcast i32* %j to i8*, !dbg !98
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %32) #4, !dbg !98
  %33 = bitcast i32* %i to i8*, !dbg !98
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %33) #4, !dbg !98
  %34 = load i32, i32* %retval, align 4, !dbg !98
  ret i32 %34, !dbg !98
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: inlinehint nounwind readonly uwtable
define available_externally dso_local i32 @atoi(i8* nonnull %__nptr) #3 !dbg !99 {
entry:
  %__nptr.addr = alloca i8*, align 8
  store i8* %__nptr, i8** %__nptr.addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata i8** %__nptr.addr, metadata !106, metadata !DIExpression()), !dbg !107
  %0 = load i8*, i8** %__nptr.addr, align 8, !dbg !108, !tbaa !38
  %call = call i64 @strtol(i8* %0, i8** null, i32 10) #4, !dbg !109
  %conv = trunc i64 %call to i32, !dbg !110
  ret i32 %conv, !dbg !111
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #4

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %n, i32* dereferenceable(4) %m, i64 %vla, i64 %vla1, double* dereferenceable(8) %b) #5 !dbg !112 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %n.addr = alloca i32*, align 8
  %m.addr = alloca i32*, align 8
  %vla.addr = alloca i64, align 8
  %vla.addr2 = alloca i64, align 8
  %b.addr = alloca double*, align 8
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
  %i6 = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !122, metadata !DIExpression()), !dbg !137
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !123, metadata !DIExpression()), !dbg !137
  store i32* %n, i32** %n.addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata i32** %n.addr, metadata !124, metadata !DIExpression()), !dbg !138
  store i32* %m, i32** %m.addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata i32** %m.addr, metadata !125, metadata !DIExpression()), !dbg !139
  store i64 %vla, i64* %vla.addr, align 8, !tbaa !140
  call void @llvm.dbg.declare(metadata i64* %vla.addr, metadata !126, metadata !DIExpression()), !dbg !137
  store i64 %vla1, i64* %vla.addr2, align 8, !tbaa !140
  call void @llvm.dbg.declare(metadata i64* %vla.addr2, metadata !127, metadata !DIExpression()), !dbg !137
  store double* %b, double** %b.addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata double** %b.addr, metadata !128, metadata !DIExpression()), !dbg !142
  %2 = load i32*, i32** %n.addr, align 8, !dbg !143, !tbaa !38
  %3 = load i32*, i32** %m.addr, align 8, !dbg !143, !tbaa !38
  %4 = load i64, i64* %vla.addr, align 8, !dbg !143, !tbaa !140
  %5 = load i64, i64* %vla.addr2, align 8, !dbg !143, !tbaa !140
  %6 = load double*, double** %b.addr, align 8, !dbg !143, !tbaa !38
  %7 = bitcast i32* %.omp.iv to i8*, !dbg !143
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #4, !dbg !143
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !129, metadata !DIExpression()), !dbg !137
  %8 = bitcast i32* %.capture_expr. to i8*, !dbg !143
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #4, !dbg !143
  call void @llvm.dbg.declare(metadata i32* %.capture_expr., metadata !130, metadata !DIExpression()), !dbg !137
  %9 = load i32, i32* %2, align 4, !dbg !144, !tbaa !33
  store i32 %9, i32* %.capture_expr., align 4, !dbg !144, !tbaa !33
  %10 = bitcast i32* %.capture_expr.3 to i8*, !dbg !143
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #4, !dbg !143
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.3, metadata !130, metadata !DIExpression()), !dbg !137
  %11 = load i32, i32* %.capture_expr., align 4, !dbg !144, !tbaa !33
  %sub = sub nsw i32 %11, 1, !dbg !143
  %sub4 = sub nsw i32 %sub, 1, !dbg !143
  %add = add nsw i32 %sub4, 1, !dbg !143
  %div = sdiv i32 %add, 1, !dbg !143
  %sub5 = sub nsw i32 %div, 1, !dbg !143
  store i32 %sub5, i32* %.capture_expr.3, align 4, !dbg !143, !tbaa !33
  %12 = bitcast i32* %i to i8*, !dbg !143
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #4, !dbg !143
  call void @llvm.dbg.declare(metadata i32* %i, metadata !131, metadata !DIExpression()), !dbg !137
  store i32 1, i32* %i, align 4, !dbg !145, !tbaa !33
  %13 = bitcast i32* %i to i8*, !dbg !143
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %13) #4, !dbg !143
  %14 = load i32, i32* %.capture_expr., align 4, !dbg !144, !tbaa !33
  %cmp = icmp slt i32 1, %14, !dbg !143
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end, !dbg !143

omp.precond.then:                                 ; preds = %entry
  %15 = bitcast i32* %.omp.lb to i8*, !dbg !143
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %15) #4, !dbg !143
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !132, metadata !DIExpression()), !dbg !137
  store i32 0, i32* %.omp.lb, align 4, !dbg !146, !tbaa !33
  %16 = bitcast i32* %.omp.ub to i8*, !dbg !143
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %16) #4, !dbg !143
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !133, metadata !DIExpression()), !dbg !137
  %17 = load i32, i32* %.capture_expr.3, align 4, !dbg !143, !tbaa !33
  store i32 %17, i32* %.omp.ub, align 4, !dbg !146, !tbaa !33
  %18 = bitcast i32* %.omp.stride to i8*, !dbg !143
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %18) #4, !dbg !143
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !134, metadata !DIExpression()), !dbg !137
  store i32 1, i32* %.omp.stride, align 4, !dbg !146, !tbaa !33
  %19 = bitcast i32* %.omp.is_last to i8*, !dbg !143
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %19) #4, !dbg !143
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !135, metadata !DIExpression()), !dbg !137
  store i32 0, i32* %.omp.is_last, align 4, !dbg !146, !tbaa !33
  %20 = bitcast i32* %j to i8*, !dbg !143
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %20) #4, !dbg !143
  call void @llvm.dbg.declare(metadata i32* %j, metadata !136, metadata !DIExpression()), !dbg !137
  %21 = bitcast i32* %i6 to i8*, !dbg !143
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %21) #4, !dbg !143
  call void @llvm.dbg.declare(metadata i32* %i6, metadata !131, metadata !DIExpression()), !dbg !137
  %22 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !143
  store i8* getelementptr inbounds ([78 x i8], [78 x i8]* @1, i32 0, i32 0), i8** %22, align 8, !dbg !143, !tbaa !95
  %23 = load i32*, i32** %.global_tid..addr, align 8, !dbg !143
  %24 = load i32, i32* %23, align 4, !dbg !143, !tbaa !33
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %24, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !143
  %25 = load i32, i32* %.omp.ub, align 4, !dbg !146, !tbaa !33
  %26 = load i32, i32* %.capture_expr.3, align 4, !dbg !143, !tbaa !33
  %cmp7 = icmp sgt i32 %25, %26, !dbg !146
  br i1 %cmp7, label %cond.true, label %cond.false, !dbg !146

cond.true:                                        ; preds = %omp.precond.then
  %27 = load i32, i32* %.capture_expr.3, align 4, !dbg !143, !tbaa !33
  br label %cond.end, !dbg !146

cond.false:                                       ; preds = %omp.precond.then
  %28 = load i32, i32* %.omp.ub, align 4, !dbg !146, !tbaa !33
  br label %cond.end, !dbg !146

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %27, %cond.true ], [ %28, %cond.false ], !dbg !146
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !146, !tbaa !33
  %29 = load i32, i32* %.omp.lb, align 4, !dbg !146, !tbaa !33
  store i32 %29, i32* %.omp.iv, align 4, !dbg !146, !tbaa !33
  br label %omp.inner.for.cond, !dbg !143

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %30 = load i32, i32* %.omp.iv, align 4, !dbg !146, !tbaa !33
  %31 = load i32, i32* %.omp.ub, align 4, !dbg !146, !tbaa !33
  %cmp8 = icmp sle i32 %30, %31, !dbg !143
  br i1 %cmp8, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !143

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !143

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %32 = load i32, i32* %.omp.iv, align 4, !dbg !146, !tbaa !33
  %mul = mul nsw i32 %32, 1, !dbg !145
  %add9 = add nsw i32 1, %mul, !dbg !145
  store i32 %add9, i32* %i6, align 4, !dbg !145, !tbaa !33
  store i32 1, i32* %j, align 4, !dbg !147, !tbaa !33
  br label %for.cond, !dbg !149

for.cond:                                         ; preds = %for.inc, %omp.inner.for.body
  %33 = load i32, i32* %j, align 4, !dbg !150, !tbaa !33
  %34 = load i32, i32* %3, align 4, !dbg !152, !tbaa !33
  %cmp10 = icmp slt i32 %33, %34, !dbg !153
  br i1 %cmp10, label %for.body, label %for.end, !dbg !154

for.body:                                         ; preds = %for.cond
  %35 = load i32, i32* %i6, align 4, !dbg !155, !tbaa !33
  %sub11 = sub nsw i32 %35, 1, !dbg !156
  %idxprom = sext i32 %sub11 to i64, !dbg !157
  %36 = mul nsw i64 %idxprom, %5, !dbg !157
  %arrayidx = getelementptr inbounds double, double* %6, i64 %36, !dbg !157
  %37 = load i32, i32* %j, align 4, !dbg !158, !tbaa !33
  %sub12 = sub nsw i32 %37, 1, !dbg !159
  %idxprom13 = sext i32 %sub12 to i64, !dbg !157
  %arrayidx14 = getelementptr inbounds double, double* %arrayidx, i64 %idxprom13, !dbg !157
  %38 = load double, double* %arrayidx14, align 8, !dbg !157, !tbaa !84
  %39 = load i32, i32* %i6, align 4, !dbg !160, !tbaa !33
  %idxprom15 = sext i32 %39 to i64, !dbg !161
  %40 = mul nsw i64 %idxprom15, %5, !dbg !161
  %arrayidx16 = getelementptr inbounds double, double* %6, i64 %40, !dbg !161
  %41 = load i32, i32* %j, align 4, !dbg !162, !tbaa !33
  %idxprom17 = sext i32 %41 to i64, !dbg !161
  %arrayidx18 = getelementptr inbounds double, double* %arrayidx16, i64 %idxprom17, !dbg !161
  store double %38, double* %arrayidx18, align 8, !dbg !163, !tbaa !84
  br label %for.inc, !dbg !161

for.inc:                                          ; preds = %for.body
  %42 = load i32, i32* %j, align 4, !dbg !164, !tbaa !33
  %inc = add nsw i32 %42, 1, !dbg !164
  store i32 %inc, i32* %j, align 4, !dbg !164, !tbaa !33
  br label %for.cond, !dbg !165, !llvm.loop !166

for.end:                                          ; preds = %for.cond
  br label %omp.body.continue, !dbg !167

omp.body.continue:                                ; preds = %for.end
  br label %omp.inner.for.inc, !dbg !168

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %43 = load i32, i32* %.omp.iv, align 4, !dbg !146, !tbaa !33
  %add19 = add nsw i32 %43, 1, !dbg !143
  store i32 %add19, i32* %.omp.iv, align 4, !dbg !143, !tbaa !33
  br label %omp.inner.for.cond, !dbg !168, !llvm.loop !169

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !168

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %44 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !168
  store i8* getelementptr inbounds ([79 x i8], [79 x i8]* @2, i32 0, i32 0), i8** %44, align 8, !dbg !168, !tbaa !95
  %45 = load i32*, i32** %.global_tid..addr, align 8, !dbg !168
  %46 = load i32, i32* %45, align 4, !dbg !168, !tbaa !33
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %46), !dbg !168
  %47 = bitcast i32* %i6 to i8*, !dbg !168
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %47) #4, !dbg !168
  %48 = bitcast i32* %j to i8*, !dbg !168
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %48) #4, !dbg !168
  %49 = bitcast i32* %.omp.is_last to i8*, !dbg !168
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %49) #4, !dbg !168
  %50 = bitcast i32* %.omp.stride to i8*, !dbg !168
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %50) #4, !dbg !168
  %51 = bitcast i32* %.omp.ub to i8*, !dbg !168
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %51) #4, !dbg !168
  %52 = bitcast i32* %.omp.lb to i8*, !dbg !168
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %52) #4, !dbg !168
  br label %omp.precond.end, !dbg !168

omp.precond.end:                                  ; preds = %omp.loop.exit, %entry
  %53 = bitcast i32* %.capture_expr.3 to i8*, !dbg !168
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %53) #4, !dbg !168
  %54 = bitcast i32* %.capture_expr. to i8*, !dbg !168
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %54) #4, !dbg !168
  %55 = bitcast i32* %.omp.iv to i8*, !dbg !168
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %55) #4, !dbg !168
  ret void, !dbg !171
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %n, i32* dereferenceable(4) %m, i64 %vla, i64 %vla1, double* dereferenceable(8) %b) #5 !dbg !172 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %n.addr = alloca i32*, align 8
  %m.addr = alloca i32*, align 8
  %vla.addr = alloca i64, align 8
  %vla.addr2 = alloca i64, align 8
  %b.addr = alloca double*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !174, metadata !DIExpression()), !dbg !181
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !175, metadata !DIExpression()), !dbg !181
  store i32* %n, i32** %n.addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata i32** %n.addr, metadata !176, metadata !DIExpression()), !dbg !181
  store i32* %m, i32** %m.addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata i32** %m.addr, metadata !177, metadata !DIExpression()), !dbg !181
  store i64 %vla, i64* %vla.addr, align 8, !tbaa !140
  call void @llvm.dbg.declare(metadata i64* %vla.addr, metadata !178, metadata !DIExpression()), !dbg !181
  store i64 %vla1, i64* %vla.addr2, align 8, !tbaa !140
  call void @llvm.dbg.declare(metadata i64* %vla.addr2, metadata !179, metadata !DIExpression()), !dbg !181
  store double* %b, double** %b.addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata double** %b.addr, metadata !180, metadata !DIExpression()), !dbg !181
  %0 = load i32*, i32** %n.addr, align 8, !dbg !182, !tbaa !38
  %1 = load i32*, i32** %m.addr, align 8, !dbg !182, !tbaa !38
  %2 = load i64, i64* %vla.addr, align 8, !dbg !182, !tbaa !140
  %3 = load i64, i64* %vla.addr2, align 8, !dbg !182, !tbaa !140
  %4 = load double*, double** %b.addr, align 8, !dbg !182, !tbaa !38
  %5 = load i32*, i32** %.global_tid..addr, align 8, !dbg !182, !tbaa !38
  %6 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !182, !tbaa !38
  %7 = load i32*, i32** %n.addr, align 8, !dbg !182, !tbaa !38
  %8 = load i32*, i32** %m.addr, align 8, !dbg !182, !tbaa !38
  %9 = load double*, double** %b.addr, align 8, !dbg !182, !tbaa !38
  call void @.omp_outlined._debug__(i32* %5, i32* %6, i32* %7, i32* %8, i64 %2, i64 %3, double* %9) #4, !dbg !182
  ret void, !dbg !182
}

declare !callback !183 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

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
!1 = !DIFile(filename: "integration/dataracebench/DRB032-truedepfirstdimension-var-yes.c", directory: "/home/brad/Code/OpenRace/tests/data")
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
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !26, !27}
!17 = !DILocalVariable(name: "argc", arg: 1, scope: !13, file: !1, line: 52, type: !4)
!18 = !DILocalVariable(name: "argv", arg: 2, scope: !13, file: !1, line: 52, type: !5)
!19 = !DILocalVariable(name: "i", scope: !13, file: !1, line: 54, type: !4)
!20 = !DILocalVariable(name: "j", scope: !13, file: !1, line: 54, type: !4)
!21 = !DILocalVariable(name: "len", scope: !13, file: !1, line: 55, type: !4)
!22 = !DILocalVariable(name: "n", scope: !13, file: !1, line: 59, type: !4)
!23 = !DILocalVariable(name: "m", scope: !13, file: !1, line: 59, type: !4)
!24 = !DILocalVariable(name: "__vla_expr0", scope: !13, type: !25, flags: DIFlagArtificial)
!25 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!26 = !DILocalVariable(name: "__vla_expr1", scope: !13, type: !25, flags: DIFlagArtificial)
!27 = !DILocalVariable(name: "b", scope: !13, file: !1, line: 60, type: !28)
!28 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, elements: !30)
!29 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!30 = !{!31, !32}
!31 = !DISubrange(count: !24)
!32 = !DISubrange(count: !26)
!33 = !{!34, !34, i64 0}
!34 = !{!"int", !35, i64 0}
!35 = !{!"omnipotent char", !36, i64 0}
!36 = !{!"Simple C/C++ TBAA"}
!37 = !DILocation(line: 52, column: 14, scope: !13)
!38 = !{!39, !39, i64 0}
!39 = !{!"any pointer", !35, i64 0}
!40 = !DILocation(line: 52, column: 26, scope: !13)
!41 = !DILocation(line: 54, column: 3, scope: !13)
!42 = !DILocation(line: 54, column: 7, scope: !13)
!43 = !DILocation(line: 54, column: 9, scope: !13)
!44 = !DILocation(line: 55, column: 3, scope: !13)
!45 = !DILocation(line: 55, column: 7, scope: !13)
!46 = !DILocation(line: 56, column: 7, scope: !47)
!47 = distinct !DILexicalBlock(scope: !13, file: !1, line: 56, column: 7)
!48 = !DILocation(line: 56, column: 11, scope: !47)
!49 = !DILocation(line: 56, column: 7, scope: !13)
!50 = !DILocation(line: 57, column: 16, scope: !47)
!51 = !DILocation(line: 57, column: 11, scope: !47)
!52 = !DILocation(line: 57, column: 9, scope: !47)
!53 = !DILocation(line: 57, column: 5, scope: !47)
!54 = !DILocation(line: 59, column: 3, scope: !13)
!55 = !DILocation(line: 59, column: 7, scope: !13)
!56 = !DILocation(line: 59, column: 9, scope: !13)
!57 = !DILocation(line: 59, column: 14, scope: !13)
!58 = !DILocation(line: 59, column: 16, scope: !13)
!59 = !DILocation(line: 60, column: 12, scope: !13)
!60 = !DILocation(line: 60, column: 3, scope: !13)
!61 = !DILocation(line: 60, column: 17, scope: !13)
!62 = !DILocation(line: 0, scope: !13)
!63 = !DILocation(line: 60, column: 10, scope: !13)
!64 = !DILocation(line: 62, column: 9, scope: !65)
!65 = distinct !DILexicalBlock(scope: !13, file: !1, line: 62, column: 3)
!66 = !DILocation(line: 62, column: 8, scope: !65)
!67 = !DILocation(line: 62, column: 13, scope: !68)
!68 = distinct !DILexicalBlock(scope: !65, file: !1, line: 62, column: 3)
!69 = !DILocation(line: 62, column: 15, scope: !68)
!70 = !DILocation(line: 62, column: 14, scope: !68)
!71 = !DILocation(line: 62, column: 3, scope: !65)
!72 = !DILocation(line: 63, column: 11, scope: !73)
!73 = distinct !DILexicalBlock(scope: !68, file: !1, line: 63, column: 5)
!74 = !DILocation(line: 63, column: 10, scope: !73)
!75 = !DILocation(line: 63, column: 15, scope: !76)
!76 = distinct !DILexicalBlock(scope: !73, file: !1, line: 63, column: 5)
!77 = !DILocation(line: 63, column: 17, scope: !76)
!78 = !DILocation(line: 63, column: 16, scope: !76)
!79 = !DILocation(line: 63, column: 5, scope: !73)
!80 = !DILocation(line: 64, column: 9, scope: !76)
!81 = !DILocation(line: 64, column: 7, scope: !76)
!82 = !DILocation(line: 64, column: 12, scope: !76)
!83 = !DILocation(line: 64, column: 15, scope: !76)
!84 = !{!85, !85, i64 0}
!85 = !{!"double", !35, i64 0}
!86 = !DILocation(line: 63, column: 21, scope: !76)
!87 = !DILocation(line: 63, column: 5, scope: !76)
!88 = distinct !{!88, !79, !89}
!89 = !DILocation(line: 64, column: 17, scope: !73)
!90 = !DILocation(line: 62, column: 19, scope: !68)
!91 = !DILocation(line: 62, column: 3, scope: !68)
!92 = distinct !{!92, !71, !93}
!93 = !DILocation(line: 64, column: 17, scope: !65)
!94 = !DILocation(line: 66, column: 1, scope: !13)
!95 = !{!96, !39, i64 16}
!96 = !{!"ident_t", !34, i64 0, !34, i64 4, !34, i64 8, !34, i64 12, !39, i64 16}
!97 = !DILocation(line: 71, column: 3, scope: !13)
!98 = !DILocation(line: 72, column: 1, scope: !13)
!99 = distinct !DISubprogram(name: "atoi", scope: !100, file: !100, line: 361, type: !101, scopeLine: 362, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !105)
!100 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!101 = !DISubroutineType(types: !102)
!102 = !{!4, !103}
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!105 = !{!106}
!106 = !DILocalVariable(name: "__nptr", arg: 1, scope: !99, file: !100, line: 361, type: !103)
!107 = !DILocation(line: 361, column: 1, scope: !99)
!108 = !DILocation(line: 363, column: 24, scope: !99)
!109 = !DILocation(line: 363, column: 16, scope: !99)
!110 = !DILocation(line: 363, column: 10, scope: !99)
!111 = !DILocation(line: 363, column: 3, scope: !99)
!112 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 67, type: !113, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !121)
!113 = !DISubroutineType(types: !114)
!114 = !{null, !115, !115, !119, !119, !25, !25, !120}
!115 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !116)
!116 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !117)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!119 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !4, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !29, size: 64)
!121 = !{!122, !123, !124, !125, !126, !127, !128, !129, !130, !130, !131, !132, !133, !134, !135, !136, !131}
!122 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !112, type: !115, flags: DIFlagArtificial)
!123 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !112, type: !115, flags: DIFlagArtificial)
!124 = !DILocalVariable(name: "n", arg: 3, scope: !112, file: !1, line: 59, type: !119)
!125 = !DILocalVariable(name: "m", arg: 4, scope: !112, file: !1, line: 59, type: !119)
!126 = !DILocalVariable(name: "vla", arg: 5, scope: !112, type: !25, flags: DIFlagArtificial)
!127 = !DILocalVariable(name: "vla", arg: 6, scope: !112, type: !25, flags: DIFlagArtificial)
!128 = !DILocalVariable(name: "b", arg: 7, scope: !112, file: !1, line: 60, type: !120)
!129 = !DILocalVariable(name: ".omp.iv", scope: !112, type: !4, flags: DIFlagArtificial)
!130 = !DILocalVariable(name: ".capture_expr.", scope: !112, type: !4, flags: DIFlagArtificial)
!131 = !DILocalVariable(name: "i", scope: !112, type: !4, flags: DIFlagArtificial)
!132 = !DILocalVariable(name: ".omp.lb", scope: !112, type: !4, flags: DIFlagArtificial)
!133 = !DILocalVariable(name: ".omp.ub", scope: !112, type: !4, flags: DIFlagArtificial)
!134 = !DILocalVariable(name: ".omp.stride", scope: !112, type: !4, flags: DIFlagArtificial)
!135 = !DILocalVariable(name: ".omp.is_last", scope: !112, type: !4, flags: DIFlagArtificial)
!136 = !DILocalVariable(name: "j", scope: !112, type: !4, flags: DIFlagArtificial)
!137 = !DILocation(line: 0, scope: !112)
!138 = !DILocation(line: 59, column: 7, scope: !112)
!139 = !DILocation(line: 59, column: 14, scope: !112)
!140 = !{!141, !141, i64 0}
!141 = !{!"long", !35, i64 0}
!142 = !DILocation(line: 60, column: 10, scope: !112)
!143 = !DILocation(line: 67, column: 3, scope: !112)
!144 = !DILocation(line: 67, column: 14, scope: !112)
!145 = !DILocation(line: 67, column: 16, scope: !112)
!146 = !DILocation(line: 67, column: 8, scope: !112)
!147 = !DILocation(line: 68, column: 11, scope: !148)
!148 = distinct !DILexicalBlock(scope: !112, file: !1, line: 68, column: 5)
!149 = !DILocation(line: 68, column: 10, scope: !148)
!150 = !DILocation(line: 68, column: 14, scope: !151)
!151 = distinct !DILexicalBlock(scope: !148, file: !1, line: 68, column: 5)
!152 = !DILocation(line: 68, column: 16, scope: !151)
!153 = !DILocation(line: 68, column: 15, scope: !151)
!154 = !DILocation(line: 68, column: 5, scope: !148)
!155 = !DILocation(line: 69, column: 17, scope: !151)
!156 = !DILocation(line: 69, column: 18, scope: !151)
!157 = !DILocation(line: 69, column: 15, scope: !151)
!158 = !DILocation(line: 69, column: 22, scope: !151)
!159 = !DILocation(line: 69, column: 23, scope: !151)
!160 = !DILocation(line: 69, column: 9, scope: !151)
!161 = !DILocation(line: 69, column: 7, scope: !151)
!162 = !DILocation(line: 69, column: 12, scope: !151)
!163 = !DILocation(line: 69, column: 14, scope: !151)
!164 = !DILocation(line: 68, column: 19, scope: !151)
!165 = !DILocation(line: 68, column: 5, scope: !151)
!166 = distinct !{!166, !154, !167}
!167 = !DILocation(line: 69, column: 25, scope: !148)
!168 = !DILocation(line: 66, column: 1, scope: !112)
!169 = distinct !{!169, !168, !170}
!170 = !DILocation(line: 66, column: 36, scope: !112)
!171 = !DILocation(line: 69, column: 25, scope: !112)
!172 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 67, type: !113, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !173)
!173 = !{!174, !175, !176, !177, !178, !179, !180}
!174 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !172, type: !115, flags: DIFlagArtificial)
!175 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !172, type: !115, flags: DIFlagArtificial)
!176 = !DILocalVariable(name: "n", arg: 3, scope: !172, type: !119, flags: DIFlagArtificial)
!177 = !DILocalVariable(name: "m", arg: 4, scope: !172, type: !119, flags: DIFlagArtificial)
!178 = !DILocalVariable(name: "vla", arg: 5, scope: !172, type: !25, flags: DIFlagArtificial)
!179 = !DILocalVariable(name: "vla", arg: 6, scope: !172, type: !25, flags: DIFlagArtificial)
!180 = !DILocalVariable(name: "b", arg: 7, scope: !172, type: !120, flags: DIFlagArtificial)
!181 = !DILocation(line: 0, scope: !172)
!182 = !DILocation(line: 67, column: 3, scope: !172)
!183 = !{!184}
!184 = !{i64 2, i64 -1, i64 -1, i1 true}
