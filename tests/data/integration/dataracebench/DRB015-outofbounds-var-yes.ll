; ModuleID = 'integration/dataracebench/DRB015-outofbounds-var-yes.c'
source_filename = "integration/dataracebench/DRB015-outofbounds-var-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [68 x i8] c";integration/dataracebench/DRB015-outofbounds-var-yes.c;main;77;1;;\00", align 1
@2 = private unnamed_addr constant [69 x i8] c";integration/dataracebench/DRB015-outofbounds-var-yes.c;main;77;36;;\00", align 1
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
  store i32 100, i32* %len, align 4, !dbg !45, !tbaa !33
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
  %18 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !64
  store i8* getelementptr inbounds ([68 x i8], [68 x i8]* @1, i32 0, i32 0), i8** %18, align 8, !dbg !64, !tbaa !65
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 5, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*, i64, i64, double*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %n, i32* %m, i64 %13, i64 %15, double* %vla), !dbg !64
  store i32 0, i32* %retval, align 4, !dbg !67
  %19 = load i8*, i8** %saved_stack, align 8, !dbg !68
  call void @llvm.stackrestore(i8* %19), !dbg !68
  %20 = bitcast i32* %m to i8*, !dbg !68
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %20) #4, !dbg !68
  %21 = bitcast i32* %n to i8*, !dbg !68
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %21) #4, !dbg !68
  %22 = bitcast i32* %len to i8*, !dbg !68
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %22) #4, !dbg !68
  %23 = bitcast i32* %j to i8*, !dbg !68
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %23) #4, !dbg !68
  %24 = bitcast i32* %i to i8*, !dbg !68
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %24) #4, !dbg !68
  %25 = load i32, i32* %retval, align 4, !dbg !68
  ret i32 %25, !dbg !68
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: inlinehint nounwind readonly uwtable
define available_externally dso_local i32 @atoi(i8* nonnull %__nptr) #3 !dbg !69 {
entry:
  %__nptr.addr = alloca i8*, align 8
  store i8* %__nptr, i8** %__nptr.addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata i8** %__nptr.addr, metadata !76, metadata !DIExpression()), !dbg !77
  %0 = load i8*, i8** %__nptr.addr, align 8, !dbg !78, !tbaa !38
  %call = call i64 @strtol(i8* %0, i8** null, i32 10) #4, !dbg !79
  %conv = trunc i64 %call to i32, !dbg !80
  ret i32 %conv, !dbg !81
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #4

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %n, i32* dereferenceable(4) %m, i64 %vla, i64 %vla1, double* dereferenceable(8) %b) #5 !dbg !82 {
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
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !92, metadata !DIExpression()), !dbg !107
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !93, metadata !DIExpression()), !dbg !107
  store i32* %n, i32** %n.addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata i32** %n.addr, metadata !94, metadata !DIExpression()), !dbg !108
  store i32* %m, i32** %m.addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata i32** %m.addr, metadata !95, metadata !DIExpression()), !dbg !109
  store i64 %vla, i64* %vla.addr, align 8, !tbaa !110
  call void @llvm.dbg.declare(metadata i64* %vla.addr, metadata !96, metadata !DIExpression()), !dbg !107
  store i64 %vla1, i64* %vla.addr2, align 8, !tbaa !110
  call void @llvm.dbg.declare(metadata i64* %vla.addr2, metadata !97, metadata !DIExpression()), !dbg !107
  store double* %b, double** %b.addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata double** %b.addr, metadata !98, metadata !DIExpression()), !dbg !112
  %2 = load i32*, i32** %n.addr, align 8, !dbg !113, !tbaa !38
  %3 = load i32*, i32** %m.addr, align 8, !dbg !113, !tbaa !38
  %4 = load i64, i64* %vla.addr, align 8, !dbg !113, !tbaa !110
  %5 = load i64, i64* %vla.addr2, align 8, !dbg !113, !tbaa !110
  %6 = load double*, double** %b.addr, align 8, !dbg !113, !tbaa !38
  %7 = bitcast i32* %.omp.iv to i8*, !dbg !113
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #4, !dbg !113
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !99, metadata !DIExpression()), !dbg !107
  %8 = bitcast i32* %.capture_expr. to i8*, !dbg !113
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #4, !dbg !113
  call void @llvm.dbg.declare(metadata i32* %.capture_expr., metadata !100, metadata !DIExpression()), !dbg !107
  %9 = load i32, i32* %2, align 4, !dbg !114, !tbaa !33
  store i32 %9, i32* %.capture_expr., align 4, !dbg !114, !tbaa !33
  %10 = bitcast i32* %.capture_expr.3 to i8*, !dbg !113
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #4, !dbg !113
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.3, metadata !100, metadata !DIExpression()), !dbg !107
  %11 = load i32, i32* %.capture_expr., align 4, !dbg !114, !tbaa !33
  %sub = sub nsw i32 %11, 1, !dbg !113
  %sub4 = sub nsw i32 %sub, 1, !dbg !113
  %add = add nsw i32 %sub4, 1, !dbg !113
  %div = sdiv i32 %add, 1, !dbg !113
  %sub5 = sub nsw i32 %div, 1, !dbg !113
  store i32 %sub5, i32* %.capture_expr.3, align 4, !dbg !113, !tbaa !33
  %12 = bitcast i32* %i to i8*, !dbg !113
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #4, !dbg !113
  call void @llvm.dbg.declare(metadata i32* %i, metadata !101, metadata !DIExpression()), !dbg !107
  store i32 1, i32* %i, align 4, !dbg !115, !tbaa !33
  %13 = bitcast i32* %i to i8*, !dbg !113
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %13) #4, !dbg !113
  %14 = load i32, i32* %.capture_expr., align 4, !dbg !114, !tbaa !33
  %cmp = icmp slt i32 1, %14, !dbg !113
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end, !dbg !113

omp.precond.then:                                 ; preds = %entry
  %15 = bitcast i32* %.omp.lb to i8*, !dbg !113
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %15) #4, !dbg !113
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !102, metadata !DIExpression()), !dbg !107
  store i32 0, i32* %.omp.lb, align 4, !dbg !116, !tbaa !33
  %16 = bitcast i32* %.omp.ub to i8*, !dbg !113
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %16) #4, !dbg !113
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !103, metadata !DIExpression()), !dbg !107
  %17 = load i32, i32* %.capture_expr.3, align 4, !dbg !113, !tbaa !33
  store i32 %17, i32* %.omp.ub, align 4, !dbg !116, !tbaa !33
  %18 = bitcast i32* %.omp.stride to i8*, !dbg !113
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %18) #4, !dbg !113
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !104, metadata !DIExpression()), !dbg !107
  store i32 1, i32* %.omp.stride, align 4, !dbg !116, !tbaa !33
  %19 = bitcast i32* %.omp.is_last to i8*, !dbg !113
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %19) #4, !dbg !113
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !105, metadata !DIExpression()), !dbg !107
  store i32 0, i32* %.omp.is_last, align 4, !dbg !116, !tbaa !33
  %20 = bitcast i32* %j to i8*, !dbg !113
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %20) #4, !dbg !113
  call void @llvm.dbg.declare(metadata i32* %j, metadata !106, metadata !DIExpression()), !dbg !107
  %21 = bitcast i32* %i6 to i8*, !dbg !113
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %21) #4, !dbg !113
  call void @llvm.dbg.declare(metadata i32* %i6, metadata !101, metadata !DIExpression()), !dbg !107
  %22 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !113
  store i8* getelementptr inbounds ([68 x i8], [68 x i8]* @1, i32 0, i32 0), i8** %22, align 8, !dbg !113, !tbaa !65
  %23 = load i32*, i32** %.global_tid..addr, align 8, !dbg !113
  %24 = load i32, i32* %23, align 4, !dbg !113, !tbaa !33
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %24, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !113
  %25 = load i32, i32* %.omp.ub, align 4, !dbg !116, !tbaa !33
  %26 = load i32, i32* %.capture_expr.3, align 4, !dbg !113, !tbaa !33
  %cmp7 = icmp sgt i32 %25, %26, !dbg !116
  br i1 %cmp7, label %cond.true, label %cond.false, !dbg !116

cond.true:                                        ; preds = %omp.precond.then
  %27 = load i32, i32* %.capture_expr.3, align 4, !dbg !113, !tbaa !33
  br label %cond.end, !dbg !116

cond.false:                                       ; preds = %omp.precond.then
  %28 = load i32, i32* %.omp.ub, align 4, !dbg !116, !tbaa !33
  br label %cond.end, !dbg !116

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %27, %cond.true ], [ %28, %cond.false ], !dbg !116
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !116, !tbaa !33
  %29 = load i32, i32* %.omp.lb, align 4, !dbg !116, !tbaa !33
  store i32 %29, i32* %.omp.iv, align 4, !dbg !116, !tbaa !33
  br label %omp.inner.for.cond, !dbg !113

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %30 = load i32, i32* %.omp.iv, align 4, !dbg !116, !tbaa !33
  %31 = load i32, i32* %.omp.ub, align 4, !dbg !116, !tbaa !33
  %cmp8 = icmp sle i32 %30, %31, !dbg !113
  br i1 %cmp8, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !113

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !113

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %32 = load i32, i32* %.omp.iv, align 4, !dbg !116, !tbaa !33
  %mul = mul nsw i32 %32, 1, !dbg !115
  %add9 = add nsw i32 1, %mul, !dbg !115
  store i32 %add9, i32* %i6, align 4, !dbg !115, !tbaa !33
  store i32 0, i32* %j, align 4, !dbg !117, !tbaa !33
  br label %for.cond, !dbg !119

for.cond:                                         ; preds = %for.inc, %omp.inner.for.body
  %33 = load i32, i32* %j, align 4, !dbg !120, !tbaa !33
  %34 = load i32, i32* %3, align 4, !dbg !122, !tbaa !33
  %cmp10 = icmp slt i32 %33, %34, !dbg !123
  br i1 %cmp10, label %for.body, label %for.end, !dbg !124

for.body:                                         ; preds = %for.cond
  %35 = load i32, i32* %i6, align 4, !dbg !125, !tbaa !33
  %idxprom = sext i32 %35 to i64, !dbg !126
  %36 = mul nsw i64 %idxprom, %5, !dbg !126
  %arrayidx = getelementptr inbounds double, double* %6, i64 %36, !dbg !126
  %37 = load i32, i32* %j, align 4, !dbg !127, !tbaa !33
  %sub11 = sub nsw i32 %37, 1, !dbg !128
  %idxprom12 = sext i32 %sub11 to i64, !dbg !126
  %arrayidx13 = getelementptr inbounds double, double* %arrayidx, i64 %idxprom12, !dbg !126
  %38 = load double, double* %arrayidx13, align 8, !dbg !126, !tbaa !129
  %39 = load i32, i32* %i6, align 4, !dbg !131, !tbaa !33
  %idxprom14 = sext i32 %39 to i64, !dbg !132
  %40 = mul nsw i64 %idxprom14, %5, !dbg !132
  %arrayidx15 = getelementptr inbounds double, double* %6, i64 %40, !dbg !132
  %41 = load i32, i32* %j, align 4, !dbg !133, !tbaa !33
  %idxprom16 = sext i32 %41 to i64, !dbg !132
  %arrayidx17 = getelementptr inbounds double, double* %arrayidx15, i64 %idxprom16, !dbg !132
  store double %38, double* %arrayidx17, align 8, !dbg !134, !tbaa !129
  br label %for.inc, !dbg !132

for.inc:                                          ; preds = %for.body
  %42 = load i32, i32* %j, align 4, !dbg !135, !tbaa !33
  %inc = add nsw i32 %42, 1, !dbg !135
  store i32 %inc, i32* %j, align 4, !dbg !135, !tbaa !33
  br label %for.cond, !dbg !136, !llvm.loop !137

for.end:                                          ; preds = %for.cond
  br label %omp.body.continue, !dbg !138

omp.body.continue:                                ; preds = %for.end
  br label %omp.inner.for.inc, !dbg !139

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %43 = load i32, i32* %.omp.iv, align 4, !dbg !116, !tbaa !33
  %add18 = add nsw i32 %43, 1, !dbg !113
  store i32 %add18, i32* %.omp.iv, align 4, !dbg !113, !tbaa !33
  br label %omp.inner.for.cond, !dbg !139, !llvm.loop !140

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !139

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %44 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !139
  store i8* getelementptr inbounds ([69 x i8], [69 x i8]* @2, i32 0, i32 0), i8** %44, align 8, !dbg !139, !tbaa !65
  %45 = load i32*, i32** %.global_tid..addr, align 8, !dbg !139
  %46 = load i32, i32* %45, align 4, !dbg !139, !tbaa !33
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %46), !dbg !139
  %47 = bitcast i32* %i6 to i8*, !dbg !139
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %47) #4, !dbg !139
  %48 = bitcast i32* %j to i8*, !dbg !139
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %48) #4, !dbg !139
  %49 = bitcast i32* %.omp.is_last to i8*, !dbg !139
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %49) #4, !dbg !139
  %50 = bitcast i32* %.omp.stride to i8*, !dbg !139
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %50) #4, !dbg !139
  %51 = bitcast i32* %.omp.ub to i8*, !dbg !139
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %51) #4, !dbg !139
  %52 = bitcast i32* %.omp.lb to i8*, !dbg !139
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %52) #4, !dbg !139
  br label %omp.precond.end, !dbg !139

omp.precond.end:                                  ; preds = %omp.loop.exit, %entry
  %53 = bitcast i32* %.capture_expr.3 to i8*, !dbg !139
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %53) #4, !dbg !139
  %54 = bitcast i32* %.capture_expr. to i8*, !dbg !139
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %54) #4, !dbg !139
  %55 = bitcast i32* %.omp.iv to i8*, !dbg !139
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %55) #4, !dbg !139
  ret void, !dbg !142
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %n, i32* dereferenceable(4) %m, i64 %vla, i64 %vla1, double* dereferenceable(8) %b) #5 !dbg !143 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %n.addr = alloca i32*, align 8
  %m.addr = alloca i32*, align 8
  %vla.addr = alloca i64, align 8
  %vla.addr2 = alloca i64, align 8
  %b.addr = alloca double*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !145, metadata !DIExpression()), !dbg !152
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !146, metadata !DIExpression()), !dbg !152
  store i32* %n, i32** %n.addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata i32** %n.addr, metadata !147, metadata !DIExpression()), !dbg !152
  store i32* %m, i32** %m.addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata i32** %m.addr, metadata !148, metadata !DIExpression()), !dbg !152
  store i64 %vla, i64* %vla.addr, align 8, !tbaa !110
  call void @llvm.dbg.declare(metadata i64* %vla.addr, metadata !149, metadata !DIExpression()), !dbg !152
  store i64 %vla1, i64* %vla.addr2, align 8, !tbaa !110
  call void @llvm.dbg.declare(metadata i64* %vla.addr2, metadata !150, metadata !DIExpression()), !dbg !152
  store double* %b, double** %b.addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata double** %b.addr, metadata !151, metadata !DIExpression()), !dbg !152
  %0 = load i32*, i32** %n.addr, align 8, !dbg !153, !tbaa !38
  %1 = load i32*, i32** %m.addr, align 8, !dbg !153, !tbaa !38
  %2 = load i64, i64* %vla.addr, align 8, !dbg !153, !tbaa !110
  %3 = load i64, i64* %vla.addr2, align 8, !dbg !153, !tbaa !110
  %4 = load double*, double** %b.addr, align 8, !dbg !153, !tbaa !38
  %5 = load i32*, i32** %.global_tid..addr, align 8, !dbg !153, !tbaa !38
  %6 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !153, !tbaa !38
  %7 = load i32*, i32** %n.addr, align 8, !dbg !153, !tbaa !38
  %8 = load i32*, i32** %m.addr, align 8, !dbg !153, !tbaa !38
  %9 = load double*, double** %b.addr, align 8, !dbg !153, !tbaa !38
  call void @.omp_outlined._debug__(i32* %5, i32* %6, i32* %7, i32* %8, i64 %2, i64 %3, double* %9) #4, !dbg !153
  ret void, !dbg !153
}

declare !callback !154 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

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
!1 = !DIFile(filename: "integration/dataracebench/DRB015-outofbounds-var-yes.c", directory: "/home/brad/Code/OpenRace/tests/data")
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
!13 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 68, type: !14, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !16)
!14 = !DISubroutineType(types: !15)
!15 = !{!4, !4, !5}
!16 = !{!17, !18, !19, !20, !21, !22, !23, !24, !26, !27}
!17 = !DILocalVariable(name: "argc", arg: 1, scope: !13, file: !1, line: 68, type: !4)
!18 = !DILocalVariable(name: "argv", arg: 2, scope: !13, file: !1, line: 68, type: !5)
!19 = !DILocalVariable(name: "i", scope: !13, file: !1, line: 70, type: !4)
!20 = !DILocalVariable(name: "j", scope: !13, file: !1, line: 70, type: !4)
!21 = !DILocalVariable(name: "len", scope: !13, file: !1, line: 71, type: !4)
!22 = !DILocalVariable(name: "n", scope: !13, file: !1, line: 75, type: !4)
!23 = !DILocalVariable(name: "m", scope: !13, file: !1, line: 75, type: !4)
!24 = !DILocalVariable(name: "__vla_expr0", scope: !13, type: !25, flags: DIFlagArtificial)
!25 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!26 = !DILocalVariable(name: "__vla_expr1", scope: !13, type: !25, flags: DIFlagArtificial)
!27 = !DILocalVariable(name: "b", scope: !13, file: !1, line: 76, type: !28)
!28 = !DICompositeType(tag: DW_TAG_array_type, baseType: !29, elements: !30)
!29 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!30 = !{!31, !32}
!31 = !DISubrange(count: !24)
!32 = !DISubrange(count: !26)
!33 = !{!34, !34, i64 0}
!34 = !{!"int", !35, i64 0}
!35 = !{!"omnipotent char", !36, i64 0}
!36 = !{!"Simple C/C++ TBAA"}
!37 = !DILocation(line: 68, column: 14, scope: !13)
!38 = !{!39, !39, i64 0}
!39 = !{!"any pointer", !35, i64 0}
!40 = !DILocation(line: 68, column: 26, scope: !13)
!41 = !DILocation(line: 70, column: 3, scope: !13)
!42 = !DILocation(line: 70, column: 7, scope: !13)
!43 = !DILocation(line: 70, column: 9, scope: !13)
!44 = !DILocation(line: 71, column: 3, scope: !13)
!45 = !DILocation(line: 71, column: 7, scope: !13)
!46 = !DILocation(line: 72, column: 7, scope: !47)
!47 = distinct !DILexicalBlock(scope: !13, file: !1, line: 72, column: 7)
!48 = !DILocation(line: 72, column: 11, scope: !47)
!49 = !DILocation(line: 72, column: 7, scope: !13)
!50 = !DILocation(line: 73, column: 16, scope: !47)
!51 = !DILocation(line: 73, column: 11, scope: !47)
!52 = !DILocation(line: 73, column: 9, scope: !47)
!53 = !DILocation(line: 73, column: 5, scope: !47)
!54 = !DILocation(line: 75, column: 3, scope: !13)
!55 = !DILocation(line: 75, column: 7, scope: !13)
!56 = !DILocation(line: 75, column: 9, scope: !13)
!57 = !DILocation(line: 75, column: 14, scope: !13)
!58 = !DILocation(line: 75, column: 16, scope: !13)
!59 = !DILocation(line: 76, column: 12, scope: !13)
!60 = !DILocation(line: 76, column: 3, scope: !13)
!61 = !DILocation(line: 76, column: 15, scope: !13)
!62 = !DILocation(line: 0, scope: !13)
!63 = !DILocation(line: 76, column: 10, scope: !13)
!64 = !DILocation(line: 77, column: 1, scope: !13)
!65 = !{!66, !39, i64 16}
!66 = !{!"ident_t", !34, i64 0, !34, i64 4, !34, i64 8, !34, i64 12, !39, i64 16}
!67 = !DILocation(line: 82, column: 2, scope: !13)
!68 = !DILocation(line: 83, column: 1, scope: !13)
!69 = distinct !DISubprogram(name: "atoi", scope: !70, file: !70, line: 361, type: !71, scopeLine: 362, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !75)
!70 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!71 = !DISubroutineType(types: !72)
!72 = !{!4, !73}
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!75 = !{!76}
!76 = !DILocalVariable(name: "__nptr", arg: 1, scope: !69, file: !70, line: 361, type: !73)
!77 = !DILocation(line: 361, column: 1, scope: !69)
!78 = !DILocation(line: 363, column: 24, scope: !69)
!79 = !DILocation(line: 363, column: 16, scope: !69)
!80 = !DILocation(line: 363, column: 10, scope: !69)
!81 = !DILocation(line: 363, column: 3, scope: !69)
!82 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 78, type: !83, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !91)
!83 = !DISubroutineType(types: !84)
!84 = !{null, !85, !85, !89, !89, !25, !25, !90}
!85 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !86)
!86 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !87)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!89 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !4, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !29, size: 64)
!91 = !{!92, !93, !94, !95, !96, !97, !98, !99, !100, !100, !101, !102, !103, !104, !105, !106, !101}
!92 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !82, type: !85, flags: DIFlagArtificial)
!93 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !82, type: !85, flags: DIFlagArtificial)
!94 = !DILocalVariable(name: "n", arg: 3, scope: !82, file: !1, line: 75, type: !89)
!95 = !DILocalVariable(name: "m", arg: 4, scope: !82, file: !1, line: 75, type: !89)
!96 = !DILocalVariable(name: "vla", arg: 5, scope: !82, type: !25, flags: DIFlagArtificial)
!97 = !DILocalVariable(name: "vla", arg: 6, scope: !82, type: !25, flags: DIFlagArtificial)
!98 = !DILocalVariable(name: "b", arg: 7, scope: !82, file: !1, line: 76, type: !90)
!99 = !DILocalVariable(name: ".omp.iv", scope: !82, type: !4, flags: DIFlagArtificial)
!100 = !DILocalVariable(name: ".capture_expr.", scope: !82, type: !4, flags: DIFlagArtificial)
!101 = !DILocalVariable(name: "i", scope: !82, type: !4, flags: DIFlagArtificial)
!102 = !DILocalVariable(name: ".omp.lb", scope: !82, type: !4, flags: DIFlagArtificial)
!103 = !DILocalVariable(name: ".omp.ub", scope: !82, type: !4, flags: DIFlagArtificial)
!104 = !DILocalVariable(name: ".omp.stride", scope: !82, type: !4, flags: DIFlagArtificial)
!105 = !DILocalVariable(name: ".omp.is_last", scope: !82, type: !4, flags: DIFlagArtificial)
!106 = !DILocalVariable(name: "j", scope: !82, type: !4, flags: DIFlagArtificial)
!107 = !DILocation(line: 0, scope: !82)
!108 = !DILocation(line: 75, column: 7, scope: !82)
!109 = !DILocation(line: 75, column: 14, scope: !82)
!110 = !{!111, !111, i64 0}
!111 = !{!"long", !35, i64 0}
!112 = !DILocation(line: 76, column: 10, scope: !82)
!113 = !DILocation(line: 78, column: 3, scope: !82)
!114 = !DILocation(line: 78, column: 14, scope: !82)
!115 = !DILocation(line: 78, column: 16, scope: !82)
!116 = !DILocation(line: 78, column: 8, scope: !82)
!117 = !DILocation(line: 79, column: 11, scope: !118)
!118 = distinct !DILexicalBlock(scope: !82, file: !1, line: 79, column: 5)
!119 = !DILocation(line: 79, column: 10, scope: !118)
!120 = !DILocation(line: 79, column: 14, scope: !121)
!121 = distinct !DILexicalBlock(scope: !118, file: !1, line: 79, column: 5)
!122 = !DILocation(line: 79, column: 16, scope: !121)
!123 = !DILocation(line: 79, column: 15, scope: !121)
!124 = !DILocation(line: 79, column: 5, scope: !118)
!125 = !DILocation(line: 80, column: 17, scope: !121)
!126 = !DILocation(line: 80, column: 15, scope: !121)
!127 = !DILocation(line: 80, column: 20, scope: !121)
!128 = !DILocation(line: 80, column: 21, scope: !121)
!129 = !{!130, !130, i64 0}
!130 = !{!"double", !35, i64 0}
!131 = !DILocation(line: 80, column: 9, scope: !121)
!132 = !DILocation(line: 80, column: 7, scope: !121)
!133 = !DILocation(line: 80, column: 12, scope: !121)
!134 = !DILocation(line: 80, column: 14, scope: !121)
!135 = !DILocation(line: 79, column: 19, scope: !121)
!136 = !DILocation(line: 79, column: 5, scope: !121)
!137 = distinct !{!137, !124, !138}
!138 = !DILocation(line: 80, column: 23, scope: !118)
!139 = !DILocation(line: 77, column: 1, scope: !82)
!140 = distinct !{!140, !139, !141}
!141 = !DILocation(line: 77, column: 36, scope: !82)
!142 = !DILocation(line: 80, column: 23, scope: !82)
!143 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 78, type: !83, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!144 = !{!145, !146, !147, !148, !149, !150, !151}
!145 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !143, type: !85, flags: DIFlagArtificial)
!146 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !143, type: !85, flags: DIFlagArtificial)
!147 = !DILocalVariable(name: "n", arg: 3, scope: !143, type: !89, flags: DIFlagArtificial)
!148 = !DILocalVariable(name: "m", arg: 4, scope: !143, type: !89, flags: DIFlagArtificial)
!149 = !DILocalVariable(name: "vla", arg: 5, scope: !143, type: !25, flags: DIFlagArtificial)
!150 = !DILocalVariable(name: "vla", arg: 6, scope: !143, type: !25, flags: DIFlagArtificial)
!151 = !DILocalVariable(name: "b", arg: 7, scope: !143, type: !90, flags: DIFlagArtificial)
!152 = !DILocation(line: 0, scope: !143)
!153 = !DILocation(line: 78, column: 3, scope: !143)
!154 = !{!155}
!155 = !{i64 2, i64 -1, i64 -1, i1 true}
