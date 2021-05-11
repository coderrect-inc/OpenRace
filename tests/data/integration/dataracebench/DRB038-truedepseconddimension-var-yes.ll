; ModuleID = 'integration/dataracebench/DRB038-truedepseconddimension-var-yes.c'
source_filename = "integration/dataracebench/DRB038-truedepseconddimension-var-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [79 x i8] c";integration/dataracebench/DRB038-truedepseconddimension-var-yes.c;main;63;1;;\00", align 1
@2 = private unnamed_addr constant [80 x i8] c";integration/dataracebench/DRB038-truedepseconddimension-var-yes.c;main;63;25;;\00", align 1
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
  %12 = load i32, i32* %n, align 4, !dbg !59, !tbaa !33
  %13 = zext i32 %12 to i64, !dbg !60
  %14 = load i32, i32* %m, align 4, !dbg !61, !tbaa !33
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

for.cond:                                         ; preds = %for.inc, %if.end
  %18 = load i32, i32* %i, align 4, !dbg !67, !tbaa !33
  %19 = load i32, i32* %n, align 4, !dbg !69, !tbaa !33
  %cmp1 = icmp slt i32 %18, %19, !dbg !70
  br i1 %cmp1, label %for.body, label %for.end, !dbg !71

for.body:                                         ; preds = %for.cond
  %20 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !72
  store i8* getelementptr inbounds ([79 x i8], [79 x i8]* @1, i32 0, i32 0), i8** %20, align 8, !dbg !72, !tbaa !73
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 5, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i64, i64, double*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %m, i64 %13, i64 %15, double* %vla, i32* %i), !dbg !72
  br label %for.inc, !dbg !75

for.inc:                                          ; preds = %for.body
  %21 = load i32, i32* %i, align 4, !dbg !77, !tbaa !33
  %inc = add nsw i32 %21, 1, !dbg !77
  store i32 %inc, i32* %i, align 4, !dbg !77, !tbaa !33
  br label %for.cond, !dbg !78, !llvm.loop !79

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4, !dbg !81
  %22 = load i8*, i8** %saved_stack, align 8, !dbg !82
  call void @llvm.stackrestore(i8* %22), !dbg !82
  %23 = bitcast i32* %m to i8*, !dbg !82
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %23) #4, !dbg !82
  %24 = bitcast i32* %n to i8*, !dbg !82
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %24) #4, !dbg !82
  %25 = bitcast i32* %len to i8*, !dbg !82
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %25) #4, !dbg !82
  %26 = bitcast i32* %j to i8*, !dbg !82
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %26) #4, !dbg !82
  %27 = bitcast i32* %i to i8*, !dbg !82
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %27) #4, !dbg !82
  %28 = load i32, i32* %retval, align 4, !dbg !82
  ret i32 %28, !dbg !82
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: inlinehint nounwind readonly uwtable
define available_externally dso_local i32 @atoi(i8* nonnull %__nptr) #3 !dbg !83 {
entry:
  %__nptr.addr = alloca i8*, align 8
  store i8* %__nptr, i8** %__nptr.addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata i8** %__nptr.addr, metadata !90, metadata !DIExpression()), !dbg !91
  %0 = load i8*, i8** %__nptr.addr, align 8, !dbg !92, !tbaa !38
  %call = call i64 @strtol(i8* %0, i8** null, i32 10) #4, !dbg !93
  %conv = trunc i64 %call to i32, !dbg !94
  ret i32 %conv, !dbg !95
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #4

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %m, i64 %vla, i64 %vla1, double* dereferenceable(8) %b, i32* dereferenceable(4) %i) #5 !dbg !96 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %m.addr = alloca i32*, align 8
  %vla.addr = alloca i64, align 8
  %vla.addr2 = alloca i64, align 8
  %b.addr = alloca double*, align 8
  %i.addr = alloca i32*, align 8
  %.omp.iv = alloca i32, align 4
  %tmp = alloca i32, align 4
  %.capture_expr. = alloca i32, align 4
  %.capture_expr.3 = alloca i32, align 4
  %j = alloca i32, align 4
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %j6 = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !106, metadata !DIExpression()), !dbg !120
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !107, metadata !DIExpression()), !dbg !120
  store i32* %m, i32** %m.addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata i32** %m.addr, metadata !108, metadata !DIExpression()), !dbg !121
  store i64 %vla, i64* %vla.addr, align 8, !tbaa !122
  call void @llvm.dbg.declare(metadata i64* %vla.addr, metadata !109, metadata !DIExpression()), !dbg !120
  store i64 %vla1, i64* %vla.addr2, align 8, !tbaa !122
  call void @llvm.dbg.declare(metadata i64* %vla.addr2, metadata !110, metadata !DIExpression()), !dbg !120
  store double* %b, double** %b.addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata double** %b.addr, metadata !111, metadata !DIExpression()), !dbg !124
  store i32* %i, i32** %i.addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata i32** %i.addr, metadata !112, metadata !DIExpression()), !dbg !125
  %2 = load i32*, i32** %m.addr, align 8, !dbg !126, !tbaa !38
  %3 = load i64, i64* %vla.addr, align 8, !dbg !126, !tbaa !122
  %4 = load i64, i64* %vla.addr2, align 8, !dbg !126, !tbaa !122
  %5 = load double*, double** %b.addr, align 8, !dbg !126, !tbaa !38
  %6 = load i32*, i32** %i.addr, align 8, !dbg !126, !tbaa !38
  %7 = bitcast i32* %.omp.iv to i8*, !dbg !126
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #4, !dbg !126
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !113, metadata !DIExpression()), !dbg !120
  %8 = bitcast i32* %.capture_expr. to i8*, !dbg !126
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #4, !dbg !126
  call void @llvm.dbg.declare(metadata i32* %.capture_expr., metadata !114, metadata !DIExpression()), !dbg !120
  %9 = load i32, i32* %2, align 4, !dbg !127, !tbaa !33
  store i32 %9, i32* %.capture_expr., align 4, !dbg !127, !tbaa !33
  %10 = bitcast i32* %.capture_expr.3 to i8*, !dbg !126
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #4, !dbg !126
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.3, metadata !114, metadata !DIExpression()), !dbg !120
  %11 = load i32, i32* %.capture_expr., align 4, !dbg !127, !tbaa !33
  %sub = sub nsw i32 %11, 1, !dbg !126
  %sub4 = sub nsw i32 %sub, 1, !dbg !126
  %add = add nsw i32 %sub4, 1, !dbg !126
  %div = sdiv i32 %add, 1, !dbg !126
  %sub5 = sub nsw i32 %div, 1, !dbg !126
  store i32 %sub5, i32* %.capture_expr.3, align 4, !dbg !126, !tbaa !33
  %12 = bitcast i32* %j to i8*, !dbg !126
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #4, !dbg !126
  call void @llvm.dbg.declare(metadata i32* %j, metadata !115, metadata !DIExpression()), !dbg !120
  store i32 1, i32* %j, align 4, !dbg !128, !tbaa !33
  %13 = bitcast i32* %j to i8*, !dbg !126
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %13) #4, !dbg !126
  %14 = load i32, i32* %.capture_expr., align 4, !dbg !127, !tbaa !33
  %cmp = icmp slt i32 1, %14, !dbg !126
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end, !dbg !126

omp.precond.then:                                 ; preds = %entry
  %15 = bitcast i32* %.omp.lb to i8*, !dbg !126
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %15) #4, !dbg !126
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !116, metadata !DIExpression()), !dbg !120
  store i32 0, i32* %.omp.lb, align 4, !dbg !129, !tbaa !33
  %16 = bitcast i32* %.omp.ub to i8*, !dbg !126
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %16) #4, !dbg !126
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !117, metadata !DIExpression()), !dbg !120
  %17 = load i32, i32* %.capture_expr.3, align 4, !dbg !126, !tbaa !33
  store i32 %17, i32* %.omp.ub, align 4, !dbg !129, !tbaa !33
  %18 = bitcast i32* %.omp.stride to i8*, !dbg !126
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %18) #4, !dbg !126
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !118, metadata !DIExpression()), !dbg !120
  store i32 1, i32* %.omp.stride, align 4, !dbg !129, !tbaa !33
  %19 = bitcast i32* %.omp.is_last to i8*, !dbg !126
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %19) #4, !dbg !126
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !119, metadata !DIExpression()), !dbg !120
  store i32 0, i32* %.omp.is_last, align 4, !dbg !129, !tbaa !33
  %20 = bitcast i32* %j6 to i8*, !dbg !126
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %20) #4, !dbg !126
  call void @llvm.dbg.declare(metadata i32* %j6, metadata !115, metadata !DIExpression()), !dbg !120
  %21 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !126
  store i8* getelementptr inbounds ([79 x i8], [79 x i8]* @1, i32 0, i32 0), i8** %21, align 8, !dbg !126, !tbaa !73
  %22 = load i32*, i32** %.global_tid..addr, align 8, !dbg !126
  %23 = load i32, i32* %22, align 4, !dbg !126, !tbaa !33
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %23, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !126
  %24 = load i32, i32* %.omp.ub, align 4, !dbg !129, !tbaa !33
  %25 = load i32, i32* %.capture_expr.3, align 4, !dbg !126, !tbaa !33
  %cmp7 = icmp sgt i32 %24, %25, !dbg !129
  br i1 %cmp7, label %cond.true, label %cond.false, !dbg !129

cond.true:                                        ; preds = %omp.precond.then
  %26 = load i32, i32* %.capture_expr.3, align 4, !dbg !126, !tbaa !33
  br label %cond.end, !dbg !129

cond.false:                                       ; preds = %omp.precond.then
  %27 = load i32, i32* %.omp.ub, align 4, !dbg !129, !tbaa !33
  br label %cond.end, !dbg !129

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %26, %cond.true ], [ %27, %cond.false ], !dbg !129
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !129, !tbaa !33
  %28 = load i32, i32* %.omp.lb, align 4, !dbg !129, !tbaa !33
  store i32 %28, i32* %.omp.iv, align 4, !dbg !129, !tbaa !33
  br label %omp.inner.for.cond, !dbg !126

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %29 = load i32, i32* %.omp.iv, align 4, !dbg !129, !tbaa !33
  %30 = load i32, i32* %.omp.ub, align 4, !dbg !129, !tbaa !33
  %cmp8 = icmp sle i32 %29, %30, !dbg !126
  br i1 %cmp8, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !126

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !126

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %31 = load i32, i32* %.omp.iv, align 4, !dbg !129, !tbaa !33
  %mul = mul nsw i32 %31, 1, !dbg !128
  %add9 = add nsw i32 1, %mul, !dbg !128
  store i32 %add9, i32* %j6, align 4, !dbg !128, !tbaa !33
  %32 = load i32, i32* %6, align 4, !dbg !130, !tbaa !33
  %idxprom = sext i32 %32 to i64, !dbg !131
  %33 = mul nsw i64 %idxprom, %4, !dbg !131
  %arrayidx = getelementptr inbounds double, double* %5, i64 %33, !dbg !131
  %34 = load i32, i32* %j6, align 4, !dbg !132, !tbaa !33
  %sub10 = sub nsw i32 %34, 1, !dbg !133
  %idxprom11 = sext i32 %sub10 to i64, !dbg !131
  %arrayidx12 = getelementptr inbounds double, double* %arrayidx, i64 %idxprom11, !dbg !131
  %35 = load double, double* %arrayidx12, align 8, !dbg !131, !tbaa !134
  %36 = load i32, i32* %6, align 4, !dbg !136, !tbaa !33
  %idxprom13 = sext i32 %36 to i64, !dbg !137
  %37 = mul nsw i64 %idxprom13, %4, !dbg !137
  %arrayidx14 = getelementptr inbounds double, double* %5, i64 %37, !dbg !137
  %38 = load i32, i32* %j6, align 4, !dbg !138, !tbaa !33
  %idxprom15 = sext i32 %38 to i64, !dbg !137
  %arrayidx16 = getelementptr inbounds double, double* %arrayidx14, i64 %idxprom15, !dbg !137
  store double %35, double* %arrayidx16, align 8, !dbg !139, !tbaa !134
  br label %omp.body.continue, !dbg !137

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !140

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %39 = load i32, i32* %.omp.iv, align 4, !dbg !129, !tbaa !33
  %add17 = add nsw i32 %39, 1, !dbg !126
  store i32 %add17, i32* %.omp.iv, align 4, !dbg !126, !tbaa !33
  br label %omp.inner.for.cond, !dbg !140, !llvm.loop !141

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !140

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %40 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !140
  store i8* getelementptr inbounds ([80 x i8], [80 x i8]* @2, i32 0, i32 0), i8** %40, align 8, !dbg !140, !tbaa !73
  %41 = load i32*, i32** %.global_tid..addr, align 8, !dbg !140
  %42 = load i32, i32* %41, align 4, !dbg !140, !tbaa !33
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %42), !dbg !140
  %43 = bitcast i32* %j6 to i8*, !dbg !140
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %43) #4, !dbg !140
  %44 = bitcast i32* %.omp.is_last to i8*, !dbg !140
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %44) #4, !dbg !140
  %45 = bitcast i32* %.omp.stride to i8*, !dbg !140
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %45) #4, !dbg !140
  %46 = bitcast i32* %.omp.ub to i8*, !dbg !140
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %46) #4, !dbg !140
  %47 = bitcast i32* %.omp.lb to i8*, !dbg !140
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %47) #4, !dbg !140
  br label %omp.precond.end, !dbg !140

omp.precond.end:                                  ; preds = %omp.loop.exit, %entry
  %48 = bitcast i32* %.capture_expr.3 to i8*, !dbg !140
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %48) #4, !dbg !140
  %49 = bitcast i32* %.capture_expr. to i8*, !dbg !140
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %49) #4, !dbg !140
  %50 = bitcast i32* %.omp.iv to i8*, !dbg !140
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %50) #4, !dbg !140
  ret void, !dbg !143
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %m, i64 %vla, i64 %vla1, double* dereferenceable(8) %b, i32* dereferenceable(4) %i) #5 !dbg !144 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %m.addr = alloca i32*, align 8
  %vla.addr = alloca i64, align 8
  %vla.addr2 = alloca i64, align 8
  %b.addr = alloca double*, align 8
  %i.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !146, metadata !DIExpression()), !dbg !153
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !147, metadata !DIExpression()), !dbg !153
  store i32* %m, i32** %m.addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata i32** %m.addr, metadata !148, metadata !DIExpression()), !dbg !153
  store i64 %vla, i64* %vla.addr, align 8, !tbaa !122
  call void @llvm.dbg.declare(metadata i64* %vla.addr, metadata !149, metadata !DIExpression()), !dbg !153
  store i64 %vla1, i64* %vla.addr2, align 8, !tbaa !122
  call void @llvm.dbg.declare(metadata i64* %vla.addr2, metadata !150, metadata !DIExpression()), !dbg !153
  store double* %b, double** %b.addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata double** %b.addr, metadata !151, metadata !DIExpression()), !dbg !153
  store i32* %i, i32** %i.addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata i32** %i.addr, metadata !152, metadata !DIExpression()), !dbg !153
  %0 = load i32*, i32** %m.addr, align 8, !dbg !154, !tbaa !38
  %1 = load i64, i64* %vla.addr, align 8, !dbg !154, !tbaa !122
  %2 = load i64, i64* %vla.addr2, align 8, !dbg !154, !tbaa !122
  %3 = load double*, double** %b.addr, align 8, !dbg !154, !tbaa !38
  %4 = load i32*, i32** %i.addr, align 8, !dbg !154, !tbaa !38
  %5 = load i32*, i32** %.global_tid..addr, align 8, !dbg !154, !tbaa !38
  %6 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !154, !tbaa !38
  %7 = load i32*, i32** %m.addr, align 8, !dbg !154, !tbaa !38
  %8 = load double*, double** %b.addr, align 8, !dbg !154, !tbaa !38
  %9 = load i32*, i32** %i.addr, align 8, !dbg !154, !tbaa !38
  call void @.omp_outlined._debug__(i32* %5, i32* %6, i32* %7, i64 %1, i64 %2, double* %8, i32* %9) #4, !dbg !154
  ret void, !dbg !154
}

declare !callback !155 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

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
!1 = !DIFile(filename: "integration/dataracebench/DRB038-truedepseconddimension-var-yes.c", directory: "/home/brad/Code/OpenRace/tests/data")
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
!61 = !DILocation(line: 60, column: 15, scope: !13)
!62 = !DILocation(line: 0, scope: !13)
!63 = !DILocation(line: 60, column: 10, scope: !13)
!64 = !DILocation(line: 62, column: 9, scope: !65)
!65 = distinct !DILexicalBlock(scope: !13, file: !1, line: 62, column: 3)
!66 = !DILocation(line: 62, column: 8, scope: !65)
!67 = !DILocation(line: 62, column: 12, scope: !68)
!68 = distinct !DILexicalBlock(scope: !65, file: !1, line: 62, column: 3)
!69 = !DILocation(line: 62, column: 14, scope: !68)
!70 = !DILocation(line: 62, column: 13, scope: !68)
!71 = !DILocation(line: 62, column: 3, scope: !65)
!72 = !DILocation(line: 63, column: 1, scope: !68)
!73 = !{!74, !39, i64 16}
!74 = !{!"ident_t", !34, i64 0, !34, i64 4, !34, i64 8, !34, i64 12, !39, i64 16}
!75 = !DILocation(line: 63, column: 25, scope: !76)
!76 = distinct !DILexicalBlock(scope: !68, file: !1, line: 63, column: 1)
!77 = !DILocation(line: 62, column: 17, scope: !68)
!78 = !DILocation(line: 62, column: 3, scope: !68)
!79 = distinct !{!79, !71, !80}
!80 = !DILocation(line: 63, column: 25, scope: !65)
!81 = !DILocation(line: 67, column: 3, scope: !13)
!82 = !DILocation(line: 68, column: 1, scope: !13)
!83 = distinct !DISubprogram(name: "atoi", scope: !84, file: !84, line: 361, type: !85, scopeLine: 362, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !89)
!84 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!85 = !DISubroutineType(types: !86)
!86 = !{!4, !87}
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!89 = !{!90}
!90 = !DILocalVariable(name: "__nptr", arg: 1, scope: !83, file: !84, line: 361, type: !87)
!91 = !DILocation(line: 361, column: 1, scope: !83)
!92 = !DILocation(line: 363, column: 24, scope: !83)
!93 = !DILocation(line: 363, column: 16, scope: !83)
!94 = !DILocation(line: 363, column: 10, scope: !83)
!95 = !DILocation(line: 363, column: 3, scope: !83)
!96 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 64, type: !97, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !105)
!97 = !DISubroutineType(types: !98)
!98 = !{null, !99, !99, !103, !25, !25, !104, !103}
!99 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100)
!100 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !101)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!103 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !4, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !29, size: 64)
!105 = !{!106, !107, !108, !109, !110, !111, !112, !113, !114, !114, !115, !116, !117, !118, !119, !115}
!106 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !96, type: !99, flags: DIFlagArtificial)
!107 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !96, type: !99, flags: DIFlagArtificial)
!108 = !DILocalVariable(name: "m", arg: 3, scope: !96, file: !1, line: 59, type: !103)
!109 = !DILocalVariable(name: "vla", arg: 4, scope: !96, type: !25, flags: DIFlagArtificial)
!110 = !DILocalVariable(name: "vla", arg: 5, scope: !96, type: !25, flags: DIFlagArtificial)
!111 = !DILocalVariable(name: "b", arg: 6, scope: !96, file: !1, line: 60, type: !104)
!112 = !DILocalVariable(name: "i", arg: 7, scope: !96, file: !1, line: 54, type: !103)
!113 = !DILocalVariable(name: ".omp.iv", scope: !96, type: !4, flags: DIFlagArtificial)
!114 = !DILocalVariable(name: ".capture_expr.", scope: !96, type: !4, flags: DIFlagArtificial)
!115 = !DILocalVariable(name: "j", scope: !96, type: !4, flags: DIFlagArtificial)
!116 = !DILocalVariable(name: ".omp.lb", scope: !96, type: !4, flags: DIFlagArtificial)
!117 = !DILocalVariable(name: ".omp.ub", scope: !96, type: !4, flags: DIFlagArtificial)
!118 = !DILocalVariable(name: ".omp.stride", scope: !96, type: !4, flags: DIFlagArtificial)
!119 = !DILocalVariable(name: ".omp.is_last", scope: !96, type: !4, flags: DIFlagArtificial)
!120 = !DILocation(line: 0, scope: !96)
!121 = !DILocation(line: 59, column: 14, scope: !96)
!122 = !{!123, !123, i64 0}
!123 = !{!"long", !35, i64 0}
!124 = !DILocation(line: 60, column: 10, scope: !96)
!125 = !DILocation(line: 54, column: 7, scope: !96)
!126 = !DILocation(line: 64, column: 5, scope: !96)
!127 = !DILocation(line: 64, column: 16, scope: !96)
!128 = !DILocation(line: 64, column: 18, scope: !96)
!129 = !DILocation(line: 64, column: 10, scope: !96)
!130 = !DILocation(line: 65, column: 17, scope: !96)
!131 = !DILocation(line: 65, column: 15, scope: !96)
!132 = !DILocation(line: 65, column: 20, scope: !96)
!133 = !DILocation(line: 65, column: 21, scope: !96)
!134 = !{!135, !135, i64 0}
!135 = !{!"double", !35, i64 0}
!136 = !DILocation(line: 65, column: 9, scope: !96)
!137 = !DILocation(line: 65, column: 7, scope: !96)
!138 = !DILocation(line: 65, column: 12, scope: !96)
!139 = !DILocation(line: 65, column: 14, scope: !96)
!140 = !DILocation(line: 63, column: 1, scope: !96)
!141 = distinct !{!141, !140, !142}
!142 = !DILocation(line: 63, column: 25, scope: !96)
!143 = !DILocation(line: 65, column: 23, scope: !96)
!144 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 64, type: !97, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !145)
!145 = !{!146, !147, !148, !149, !150, !151, !152}
!146 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !144, type: !99, flags: DIFlagArtificial)
!147 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !144, type: !99, flags: DIFlagArtificial)
!148 = !DILocalVariable(name: "m", arg: 3, scope: !144, type: !103, flags: DIFlagArtificial)
!149 = !DILocalVariable(name: "vla", arg: 4, scope: !144, type: !25, flags: DIFlagArtificial)
!150 = !DILocalVariable(name: "vla", arg: 5, scope: !144, type: !25, flags: DIFlagArtificial)
!151 = !DILocalVariable(name: "b", arg: 6, scope: !144, type: !104, flags: DIFlagArtificial)
!152 = !DILocalVariable(name: "i", arg: 7, scope: !144, type: !103, flags: DIFlagArtificial)
!153 = !DILocation(line: 0, scope: !144)
!154 = !DILocation(line: 64, column: 5, scope: !144)
!155 = !{!156}
!156 = !{i64 2, i64 -1, i64 -1, i1 true}
