; ModuleID = 'integration/dataracebench/DRB022-reductionmissing-var-yes.c'
source_filename = "integration/dataracebench/DRB022-reductionmissing-var-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [73 x i8] c";integration/dataracebench/DRB022-reductionmissing-var-yes.c;main;67;1;;\00", align 1
@2 = private unnamed_addr constant [74 x i8] c";integration/dataracebench/DRB022-reductionmissing-var-yes.c;main;67;44;;\00", align 1
@3 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"sum = %f\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !dbg !13 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %temp = alloca float, align 4
  %sum = alloca float, align 4
  %len = alloca i32, align 4
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
  %4 = bitcast float* %temp to i8*, !dbg !44
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #4, !dbg !44
  call void @llvm.dbg.declare(metadata float* %temp, metadata !21, metadata !DIExpression()), !dbg !45
  %5 = bitcast float* %sum to i8*, !dbg !44
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #4, !dbg !44
  call void @llvm.dbg.declare(metadata float* %sum, metadata !23, metadata !DIExpression()), !dbg !46
  store float 0.000000e+00, float* %sum, align 4, !dbg !46, !tbaa !47
  %6 = bitcast i32* %len to i8*, !dbg !49
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #4, !dbg !49
  call void @llvm.dbg.declare(metadata i32* %len, metadata !24, metadata !DIExpression()), !dbg !50
  store i32 100, i32* %len, align 4, !dbg !50, !tbaa !33
  %7 = load i32, i32* %argc.addr, align 4, !dbg !51, !tbaa !33
  %cmp = icmp sgt i32 %7, 1, !dbg !53
  br i1 %cmp, label %if.then, label %if.end, !dbg !54

if.then:                                          ; preds = %entry
  %8 = load i8**, i8*** %argv.addr, align 8, !dbg !55, !tbaa !38
  %arrayidx = getelementptr inbounds i8*, i8** %8, i64 1, !dbg !55
  %9 = load i8*, i8** %arrayidx, align 8, !dbg !55, !tbaa !38
  %call = call i32 @atoi(i8* %9) #8, !dbg !56
  store i32 %call, i32* %len, align 4, !dbg !57, !tbaa !33
  br label %if.end, !dbg !58

if.end:                                           ; preds = %if.then, %entry
  %10 = load i32, i32* %len, align 4, !dbg !59, !tbaa !33
  %11 = zext i32 %10 to i64, !dbg !60
  %12 = load i32, i32* %len, align 4, !dbg !61, !tbaa !33
  %13 = zext i32 %12 to i64, !dbg !60
  %14 = call i8* @llvm.stacksave(), !dbg !60
  store i8* %14, i8** %saved_stack, align 8, !dbg !60
  %15 = mul nuw i64 %11, %13, !dbg !60
  %vla = alloca float, i64 %15, align 16, !dbg !60
  store i64 %11, i64* %__vla_expr0, align 8, !dbg !60
  store i64 %13, i64* %__vla_expr1, align 8, !dbg !60
  call void @llvm.dbg.declare(metadata i64* %__vla_expr0, metadata !25, metadata !DIExpression()), !dbg !62
  call void @llvm.dbg.declare(metadata i64* %__vla_expr1, metadata !27, metadata !DIExpression()), !dbg !62
  call void @llvm.dbg.declare(metadata float* %vla, metadata !28, metadata !DIExpression()), !dbg !63
  store i32 0, i32* %i, align 4, !dbg !64, !tbaa !33
  br label %for.cond, !dbg !66

for.cond:                                         ; preds = %for.inc8, %if.end
  %16 = load i32, i32* %i, align 4, !dbg !67, !tbaa !33
  %17 = load i32, i32* %len, align 4, !dbg !69, !tbaa !33
  %cmp1 = icmp slt i32 %16, %17, !dbg !70
  br i1 %cmp1, label %for.body, label %for.end10, !dbg !71

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4, !dbg !72, !tbaa !33
  br label %for.cond2, !dbg !74

for.cond2:                                        ; preds = %for.inc, %for.body
  %18 = load i32, i32* %j, align 4, !dbg !75, !tbaa !33
  %19 = load i32, i32* %len, align 4, !dbg !77, !tbaa !33
  %cmp3 = icmp slt i32 %18, %19, !dbg !78
  br i1 %cmp3, label %for.body4, label %for.end, !dbg !79

for.body4:                                        ; preds = %for.cond2
  %20 = load i32, i32* %i, align 4, !dbg !80, !tbaa !33
  %idxprom = sext i32 %20 to i64, !dbg !81
  %21 = mul nsw i64 %idxprom, %13, !dbg !81
  %arrayidx5 = getelementptr inbounds float, float* %vla, i64 %21, !dbg !81
  %22 = load i32, i32* %j, align 4, !dbg !82, !tbaa !33
  %idxprom6 = sext i32 %22 to i64, !dbg !81
  %arrayidx7 = getelementptr inbounds float, float* %arrayidx5, i64 %idxprom6, !dbg !81
  store float 5.000000e-01, float* %arrayidx7, align 4, !dbg !83, !tbaa !47
  br label %for.inc, !dbg !81

for.inc:                                          ; preds = %for.body4
  %23 = load i32, i32* %j, align 4, !dbg !84, !tbaa !33
  %inc = add nsw i32 %23, 1, !dbg !84
  store i32 %inc, i32* %j, align 4, !dbg !84, !tbaa !33
  br label %for.cond2, !dbg !85, !llvm.loop !86

for.end:                                          ; preds = %for.cond2
  br label %for.inc8, !dbg !87

for.inc8:                                         ; preds = %for.end
  %24 = load i32, i32* %i, align 4, !dbg !88, !tbaa !33
  %inc9 = add nsw i32 %24, 1, !dbg !88
  store i32 %inc9, i32* %i, align 4, !dbg !88, !tbaa !33
  br label %for.cond, !dbg !89, !llvm.loop !90

for.end10:                                        ; preds = %for.cond
  %25 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !92
  store i8* getelementptr inbounds ([73 x i8], [73 x i8]* @1, i32 0, i32 0), i8** %25, align 8, !dbg !92, !tbaa !93
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 5, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i64, i64, float*, float*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %len, i64 %11, i64 %13, float* %vla, float* %sum), !dbg !92
  %26 = load float, float* %sum, align 4, !dbg !95, !tbaa !47
  %conv = fpext float %26 to double, !dbg !95
  %call11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), double %conv), !dbg !96
  store i32 0, i32* %retval, align 4, !dbg !97
  %27 = load i8*, i8** %saved_stack, align 8, !dbg !98
  call void @llvm.stackrestore(i8* %27), !dbg !98
  %28 = bitcast i32* %len to i8*, !dbg !98
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %28) #4, !dbg !98
  %29 = bitcast float* %sum to i8*, !dbg !98
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %29) #4, !dbg !98
  %30 = bitcast float* %temp to i8*, !dbg !98
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %30) #4, !dbg !98
  %31 = bitcast i32* %j to i8*, !dbg !98
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %31) #4, !dbg !98
  %32 = bitcast i32* %i to i8*, !dbg !98
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %32) #4, !dbg !98
  %33 = load i32, i32* %retval, align 4, !dbg !98
  ret i32 %33, !dbg !98
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
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %len, i64 %vla, i64 %vla1, float* dereferenceable(4) %u, float* dereferenceable(4) %sum) #5 !dbg !112 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %vla.addr = alloca i64, align 8
  %vla.addr2 = alloca i64, align 8
  %u.addr = alloca float*, align 8
  %sum.addr = alloca float*, align 8
  %.omp.iv = alloca i32, align 4
  %tmp = alloca i32, align 4
  %.capture_expr. = alloca i32, align 4
  %.capture_expr.3 = alloca i32, align 4
  %i = alloca i32, align 4
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %temp = alloca float, align 4
  %i6 = alloca i32, align 4
  %j = alloca i32, align 4
  %i7 = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !122, metadata !DIExpression()), !dbg !138
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !123, metadata !DIExpression()), !dbg !138
  store i32* %len, i32** %len.addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !124, metadata !DIExpression()), !dbg !139
  store i64 %vla, i64* %vla.addr, align 8, !tbaa !140
  call void @llvm.dbg.declare(metadata i64* %vla.addr, metadata !125, metadata !DIExpression()), !dbg !138
  store i64 %vla1, i64* %vla.addr2, align 8, !tbaa !140
  call void @llvm.dbg.declare(metadata i64* %vla.addr2, metadata !126, metadata !DIExpression()), !dbg !138
  store float* %u, float** %u.addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata float** %u.addr, metadata !127, metadata !DIExpression()), !dbg !142
  store float* %sum, float** %sum.addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata float** %sum.addr, metadata !128, metadata !DIExpression()), !dbg !143
  %2 = load i32*, i32** %len.addr, align 8, !dbg !144, !tbaa !38
  %3 = load i64, i64* %vla.addr, align 8, !dbg !144, !tbaa !140
  %4 = load i64, i64* %vla.addr2, align 8, !dbg !144, !tbaa !140
  %5 = load float*, float** %u.addr, align 8, !dbg !144, !tbaa !38
  %6 = load float*, float** %sum.addr, align 8, !dbg !144, !tbaa !38
  %7 = bitcast i32* %.omp.iv to i8*, !dbg !144
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #4, !dbg !144
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !129, metadata !DIExpression()), !dbg !138
  %8 = bitcast i32* %.capture_expr. to i8*, !dbg !144
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #4, !dbg !144
  call void @llvm.dbg.declare(metadata i32* %.capture_expr., metadata !130, metadata !DIExpression()), !dbg !138
  %9 = load i32, i32* %2, align 4, !dbg !145, !tbaa !33
  store i32 %9, i32* %.capture_expr., align 4, !dbg !145, !tbaa !33
  %10 = bitcast i32* %.capture_expr.3 to i8*, !dbg !144
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #4, !dbg !144
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.3, metadata !130, metadata !DIExpression()), !dbg !138
  %11 = load i32, i32* %.capture_expr., align 4, !dbg !145, !tbaa !33
  %sub = sub nsw i32 %11, 0, !dbg !144
  %sub4 = sub nsw i32 %sub, 1, !dbg !144
  %add = add nsw i32 %sub4, 1, !dbg !144
  %div = sdiv i32 %add, 1, !dbg !144
  %sub5 = sub nsw i32 %div, 1, !dbg !144
  store i32 %sub5, i32* %.capture_expr.3, align 4, !dbg !144, !tbaa !33
  %12 = bitcast i32* %i to i8*, !dbg !144
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #4, !dbg !144
  call void @llvm.dbg.declare(metadata i32* %i, metadata !131, metadata !DIExpression()), !dbg !138
  store i32 0, i32* %i, align 4, !dbg !146, !tbaa !33
  %13 = bitcast i32* %i to i8*, !dbg !144
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %13) #4, !dbg !144
  %14 = load i32, i32* %.capture_expr., align 4, !dbg !145, !tbaa !33
  %cmp = icmp slt i32 0, %14, !dbg !144
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end, !dbg !144

omp.precond.then:                                 ; preds = %entry
  %15 = bitcast i32* %.omp.lb to i8*, !dbg !144
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %15) #4, !dbg !144
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !132, metadata !DIExpression()), !dbg !138
  store i32 0, i32* %.omp.lb, align 4, !dbg !147, !tbaa !33
  %16 = bitcast i32* %.omp.ub to i8*, !dbg !144
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %16) #4, !dbg !144
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !133, metadata !DIExpression()), !dbg !138
  %17 = load i32, i32* %.capture_expr.3, align 4, !dbg !144, !tbaa !33
  store i32 %17, i32* %.omp.ub, align 4, !dbg !147, !tbaa !33
  %18 = bitcast i32* %.omp.stride to i8*, !dbg !144
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %18) #4, !dbg !144
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !134, metadata !DIExpression()), !dbg !138
  store i32 1, i32* %.omp.stride, align 4, !dbg !147, !tbaa !33
  %19 = bitcast i32* %.omp.is_last to i8*, !dbg !144
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %19) #4, !dbg !144
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !135, metadata !DIExpression()), !dbg !138
  store i32 0, i32* %.omp.is_last, align 4, !dbg !147, !tbaa !33
  %20 = bitcast float* %temp to i8*, !dbg !144
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %20) #4, !dbg !144
  call void @llvm.dbg.declare(metadata float* %temp, metadata !136, metadata !DIExpression()), !dbg !138
  %21 = bitcast i32* %i6 to i8*, !dbg !144
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %21) #4, !dbg !144
  call void @llvm.dbg.declare(metadata i32* %i6, metadata !131, metadata !DIExpression()), !dbg !138
  %22 = bitcast i32* %j to i8*, !dbg !144
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %22) #4, !dbg !144
  call void @llvm.dbg.declare(metadata i32* %j, metadata !137, metadata !DIExpression()), !dbg !138
  %23 = bitcast i32* %i7 to i8*, !dbg !144
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %23) #4, !dbg !144
  call void @llvm.dbg.declare(metadata i32* %i7, metadata !131, metadata !DIExpression()), !dbg !138
  %24 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !144
  store i8* getelementptr inbounds ([73 x i8], [73 x i8]* @1, i32 0, i32 0), i8** %24, align 8, !dbg !144, !tbaa !93
  %25 = load i32*, i32** %.global_tid..addr, align 8, !dbg !144
  %26 = load i32, i32* %25, align 4, !dbg !144, !tbaa !33
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %26, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !144
  %27 = load i32, i32* %.omp.ub, align 4, !dbg !147, !tbaa !33
  %28 = load i32, i32* %.capture_expr.3, align 4, !dbg !144, !tbaa !33
  %cmp8 = icmp sgt i32 %27, %28, !dbg !147
  br i1 %cmp8, label %cond.true, label %cond.false, !dbg !147

cond.true:                                        ; preds = %omp.precond.then
  %29 = load i32, i32* %.capture_expr.3, align 4, !dbg !144, !tbaa !33
  br label %cond.end, !dbg !147

cond.false:                                       ; preds = %omp.precond.then
  %30 = load i32, i32* %.omp.ub, align 4, !dbg !147, !tbaa !33
  br label %cond.end, !dbg !147

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %29, %cond.true ], [ %30, %cond.false ], !dbg !147
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !147, !tbaa !33
  %31 = load i32, i32* %.omp.lb, align 4, !dbg !147, !tbaa !33
  store i32 %31, i32* %.omp.iv, align 4, !dbg !147, !tbaa !33
  br label %omp.inner.for.cond, !dbg !144

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %32 = load i32, i32* %.omp.iv, align 4, !dbg !147, !tbaa !33
  %33 = load i32, i32* %.omp.ub, align 4, !dbg !147, !tbaa !33
  %cmp9 = icmp sle i32 %32, %33, !dbg !144
  br i1 %cmp9, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !144

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !144

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %34 = load i32, i32* %.omp.iv, align 4, !dbg !147, !tbaa !33
  %mul = mul nsw i32 %34, 1, !dbg !146
  %add10 = add nsw i32 0, %mul, !dbg !146
  store i32 %add10, i32* %i6, align 4, !dbg !146, !tbaa !33
  store i32 0, i32* %j, align 4, !dbg !148, !tbaa !33
  br label %for.cond, !dbg !150

for.cond:                                         ; preds = %for.inc, %omp.inner.for.body
  %35 = load i32, i32* %j, align 4, !dbg !151, !tbaa !33
  %36 = load i32, i32* %2, align 4, !dbg !153, !tbaa !33
  %cmp11 = icmp slt i32 %35, %36, !dbg !154
  br i1 %cmp11, label %for.body, label %for.end, !dbg !155

for.body:                                         ; preds = %for.cond
  %37 = load i32, i32* %i6, align 4, !dbg !156, !tbaa !33
  %idxprom = sext i32 %37 to i64, !dbg !158
  %38 = mul nsw i64 %idxprom, %4, !dbg !158
  %arrayidx = getelementptr inbounds float, float* %5, i64 %38, !dbg !158
  %39 = load i32, i32* %j, align 4, !dbg !159, !tbaa !33
  %idxprom12 = sext i32 %39 to i64, !dbg !158
  %arrayidx13 = getelementptr inbounds float, float* %arrayidx, i64 %idxprom12, !dbg !158
  %40 = load float, float* %arrayidx13, align 4, !dbg !158, !tbaa !47
  store float %40, float* %temp, align 4, !dbg !160, !tbaa !47
  %41 = load float, float* %6, align 4, !dbg !161, !tbaa !47
  %42 = load float, float* %temp, align 4, !dbg !162, !tbaa !47
  %43 = load float, float* %temp, align 4, !dbg !163, !tbaa !47
  %mul14 = fmul float %42, %43, !dbg !164
  %add15 = fadd float %41, %mul14, !dbg !165
  store float %add15, float* %6, align 4, !dbg !166, !tbaa !47
  br label %for.inc, !dbg !167

for.inc:                                          ; preds = %for.body
  %44 = load i32, i32* %j, align 4, !dbg !168, !tbaa !33
  %inc = add nsw i32 %44, 1, !dbg !168
  store i32 %inc, i32* %j, align 4, !dbg !168, !tbaa !33
  br label %for.cond, !dbg !169, !llvm.loop !170

for.end:                                          ; preds = %for.cond
  br label %omp.body.continue, !dbg !171

omp.body.continue:                                ; preds = %for.end
  br label %omp.inner.for.inc, !dbg !172

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %45 = load i32, i32* %.omp.iv, align 4, !dbg !147, !tbaa !33
  %add16 = add nsw i32 %45, 1, !dbg !144
  store i32 %add16, i32* %.omp.iv, align 4, !dbg !144, !tbaa !33
  br label %omp.inner.for.cond, !dbg !172, !llvm.loop !173

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !172

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %46 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !172
  store i8* getelementptr inbounds ([74 x i8], [74 x i8]* @2, i32 0, i32 0), i8** %46, align 8, !dbg !172, !tbaa !93
  %47 = load i32*, i32** %.global_tid..addr, align 8, !dbg !172
  %48 = load i32, i32* %47, align 4, !dbg !172, !tbaa !33
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %48), !dbg !172
  %49 = bitcast i32* %i7 to i8*, !dbg !172
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %49) #4, !dbg !172
  %50 = bitcast i32* %j to i8*, !dbg !172
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %50) #4, !dbg !172
  %51 = bitcast i32* %i6 to i8*, !dbg !172
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %51) #4, !dbg !172
  %52 = bitcast float* %temp to i8*, !dbg !172
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %52) #4, !dbg !172
  %53 = bitcast i32* %.omp.is_last to i8*, !dbg !172
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %53) #4, !dbg !172
  %54 = bitcast i32* %.omp.stride to i8*, !dbg !172
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %54) #4, !dbg !172
  %55 = bitcast i32* %.omp.ub to i8*, !dbg !172
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %55) #4, !dbg !172
  %56 = bitcast i32* %.omp.lb to i8*, !dbg !172
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %56) #4, !dbg !172
  br label %omp.precond.end, !dbg !172

omp.precond.end:                                  ; preds = %omp.loop.exit, %entry
  %57 = bitcast i32* %.capture_expr.3 to i8*, !dbg !172
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %57) #4, !dbg !172
  %58 = bitcast i32* %.capture_expr. to i8*, !dbg !172
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %58) #4, !dbg !172
  %59 = bitcast i32* %.omp.iv to i8*, !dbg !172
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %59) #4, !dbg !172
  ret void, !dbg !175
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %len, i64 %vla, i64 %vla1, float* dereferenceable(4) %u, float* dereferenceable(4) %sum) #5 !dbg !176 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %vla.addr = alloca i64, align 8
  %vla.addr2 = alloca i64, align 8
  %u.addr = alloca float*, align 8
  %sum.addr = alloca float*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !178, metadata !DIExpression()), !dbg !185
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !179, metadata !DIExpression()), !dbg !185
  store i32* %len, i32** %len.addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !180, metadata !DIExpression()), !dbg !185
  store i64 %vla, i64* %vla.addr, align 8, !tbaa !140
  call void @llvm.dbg.declare(metadata i64* %vla.addr, metadata !181, metadata !DIExpression()), !dbg !185
  store i64 %vla1, i64* %vla.addr2, align 8, !tbaa !140
  call void @llvm.dbg.declare(metadata i64* %vla.addr2, metadata !182, metadata !DIExpression()), !dbg !185
  store float* %u, float** %u.addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata float** %u.addr, metadata !183, metadata !DIExpression()), !dbg !185
  store float* %sum, float** %sum.addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata float** %sum.addr, metadata !184, metadata !DIExpression()), !dbg !185
  %0 = load i32*, i32** %len.addr, align 8, !dbg !186, !tbaa !38
  %1 = load i64, i64* %vla.addr, align 8, !dbg !186, !tbaa !140
  %2 = load i64, i64* %vla.addr2, align 8, !dbg !186, !tbaa !140
  %3 = load float*, float** %u.addr, align 8, !dbg !186, !tbaa !38
  %4 = load float*, float** %sum.addr, align 8, !dbg !186, !tbaa !38
  %5 = load i32*, i32** %.global_tid..addr, align 8, !dbg !186, !tbaa !38
  %6 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !186, !tbaa !38
  %7 = load i32*, i32** %len.addr, align 8, !dbg !186, !tbaa !38
  %8 = load float*, float** %u.addr, align 8, !dbg !186, !tbaa !38
  %9 = load float*, float** %sum.addr, align 8, !dbg !186, !tbaa !38
  call void @.omp_outlined._debug__(i32* %5, i32* %6, i32* %7, i64 %1, i64 %2, float* %8, float* %9) #4, !dbg !186
  ret void, !dbg !186
}

declare !callback !187 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

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
!1 = !DIFile(filename: "integration/dataracebench/DRB022-reductionmissing-var-yes.c", directory: "/home/brad/Code/OpenRace/tests/data")
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
!13 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 55, type: !14, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !16)
!14 = !DISubroutineType(types: !15)
!15 = !{!4, !4, !5}
!16 = !{!17, !18, !19, !20, !21, !23, !24, !25, !27, !28}
!17 = !DILocalVariable(name: "argc", arg: 1, scope: !13, file: !1, line: 55, type: !4)
!18 = !DILocalVariable(name: "argv", arg: 2, scope: !13, file: !1, line: 55, type: !5)
!19 = !DILocalVariable(name: "i", scope: !13, file: !1, line: 57, type: !4)
!20 = !DILocalVariable(name: "j", scope: !13, file: !1, line: 57, type: !4)
!21 = !DILocalVariable(name: "temp", scope: !13, file: !1, line: 58, type: !22)
!22 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!23 = !DILocalVariable(name: "sum", scope: !13, file: !1, line: 58, type: !22)
!24 = !DILocalVariable(name: "len", scope: !13, file: !1, line: 59, type: !4)
!25 = !DILocalVariable(name: "__vla_expr0", scope: !13, type: !26, flags: DIFlagArtificial)
!26 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!27 = !DILocalVariable(name: "__vla_expr1", scope: !13, type: !26, flags: DIFlagArtificial)
!28 = !DILocalVariable(name: "u", scope: !13, file: !1, line: 62, type: !29)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, elements: !30)
!30 = !{!31, !32}
!31 = !DISubrange(count: !25)
!32 = !DISubrange(count: !27)
!33 = !{!34, !34, i64 0}
!34 = !{!"int", !35, i64 0}
!35 = !{!"omnipotent char", !36, i64 0}
!36 = !{!"Simple C/C++ TBAA"}
!37 = !DILocation(line: 55, column: 14, scope: !13)
!38 = !{!39, !39, i64 0}
!39 = !{!"any pointer", !35, i64 0}
!40 = !DILocation(line: 55, column: 26, scope: !13)
!41 = !DILocation(line: 57, column: 3, scope: !13)
!42 = !DILocation(line: 57, column: 7, scope: !13)
!43 = !DILocation(line: 57, column: 9, scope: !13)
!44 = !DILocation(line: 58, column: 3, scope: !13)
!45 = !DILocation(line: 58, column: 9, scope: !13)
!46 = !DILocation(line: 58, column: 15, scope: !13)
!47 = !{!48, !48, i64 0}
!48 = !{!"float", !35, i64 0}
!49 = !DILocation(line: 59, column: 3, scope: !13)
!50 = !DILocation(line: 59, column: 7, scope: !13)
!51 = !DILocation(line: 60, column: 7, scope: !52)
!52 = distinct !DILexicalBlock(scope: !13, file: !1, line: 60, column: 7)
!53 = !DILocation(line: 60, column: 11, scope: !52)
!54 = !DILocation(line: 60, column: 7, scope: !13)
!55 = !DILocation(line: 61, column: 16, scope: !52)
!56 = !DILocation(line: 61, column: 11, scope: !52)
!57 = !DILocation(line: 61, column: 9, scope: !52)
!58 = !DILocation(line: 61, column: 5, scope: !52)
!59 = !DILocation(line: 62, column: 11, scope: !13)
!60 = !DILocation(line: 62, column: 3, scope: !13)
!61 = !DILocation(line: 62, column: 16, scope: !13)
!62 = !DILocation(line: 0, scope: !13)
!63 = !DILocation(line: 62, column: 9, scope: !13)
!64 = !DILocation(line: 63, column: 10, scope: !65)
!65 = distinct !DILexicalBlock(scope: !13, file: !1, line: 63, column: 3)
!66 = !DILocation(line: 63, column: 8, scope: !65)
!67 = !DILocation(line: 63, column: 15, scope: !68)
!68 = distinct !DILexicalBlock(scope: !65, file: !1, line: 63, column: 3)
!69 = !DILocation(line: 63, column: 19, scope: !68)
!70 = !DILocation(line: 63, column: 17, scope: !68)
!71 = !DILocation(line: 63, column: 3, scope: !65)
!72 = !DILocation(line: 64, column: 12, scope: !73)
!73 = distinct !DILexicalBlock(scope: !68, file: !1, line: 64, column: 5)
!74 = !DILocation(line: 64, column: 10, scope: !73)
!75 = !DILocation(line: 64, column: 17, scope: !76)
!76 = distinct !DILexicalBlock(scope: !73, file: !1, line: 64, column: 5)
!77 = !DILocation(line: 64, column: 21, scope: !76)
!78 = !DILocation(line: 64, column: 19, scope: !76)
!79 = !DILocation(line: 64, column: 5, scope: !73)
!80 = !DILocation(line: 65, column: 11, scope: !76)
!81 = !DILocation(line: 65, column: 9, scope: !76)
!82 = !DILocation(line: 65, column: 14, scope: !76)
!83 = !DILocation(line: 65, column: 17, scope: !76)
!84 = !DILocation(line: 64, column: 27, scope: !76)
!85 = !DILocation(line: 64, column: 5, scope: !76)
!86 = distinct !{!86, !79, !87}
!87 = !DILocation(line: 65, column: 19, scope: !73)
!88 = !DILocation(line: 63, column: 25, scope: !68)
!89 = !DILocation(line: 63, column: 3, scope: !68)
!90 = distinct !{!90, !71, !91}
!91 = !DILocation(line: 65, column: 19, scope: !65)
!92 = !DILocation(line: 67, column: 1, scope: !13)
!93 = !{!94, !39, i64 16}
!94 = !{!"ident_t", !34, i64 0, !34, i64 4, !34, i64 8, !34, i64 12, !39, i64 16}
!95 = !DILocation(line: 74, column: 25, scope: !13)
!96 = !DILocation(line: 74, column: 3, scope: !13)
!97 = !DILocation(line: 75, column: 3, scope: !13)
!98 = !DILocation(line: 76, column: 1, scope: !13)
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
!112 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 68, type: !113, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !121)
!113 = !DISubroutineType(types: !114)
!114 = !{null, !115, !115, !119, !26, !26, !120, !120}
!115 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !116)
!116 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !117)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!119 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !4, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !22, size: 64)
!121 = !{!122, !123, !124, !125, !126, !127, !128, !129, !130, !130, !131, !132, !133, !134, !135, !136, !131, !137, !131}
!122 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !112, type: !115, flags: DIFlagArtificial)
!123 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !112, type: !115, flags: DIFlagArtificial)
!124 = !DILocalVariable(name: "len", arg: 3, scope: !112, file: !1, line: 59, type: !119)
!125 = !DILocalVariable(name: "vla", arg: 4, scope: !112, type: !26, flags: DIFlagArtificial)
!126 = !DILocalVariable(name: "vla", arg: 5, scope: !112, type: !26, flags: DIFlagArtificial)
!127 = !DILocalVariable(name: "u", arg: 6, scope: !112, file: !1, line: 62, type: !120)
!128 = !DILocalVariable(name: "sum", arg: 7, scope: !112, file: !1, line: 58, type: !120)
!129 = !DILocalVariable(name: ".omp.iv", scope: !112, type: !4, flags: DIFlagArtificial)
!130 = !DILocalVariable(name: ".capture_expr.", scope: !112, type: !4, flags: DIFlagArtificial)
!131 = !DILocalVariable(name: "i", scope: !112, type: !4, flags: DIFlagArtificial)
!132 = !DILocalVariable(name: ".omp.lb", scope: !112, type: !4, flags: DIFlagArtificial)
!133 = !DILocalVariable(name: ".omp.ub", scope: !112, type: !4, flags: DIFlagArtificial)
!134 = !DILocalVariable(name: ".omp.stride", scope: !112, type: !4, flags: DIFlagArtificial)
!135 = !DILocalVariable(name: ".omp.is_last", scope: !112, type: !4, flags: DIFlagArtificial)
!136 = !DILocalVariable(name: "temp", scope: !112, type: !22, flags: DIFlagArtificial)
!137 = !DILocalVariable(name: "j", scope: !112, type: !4, flags: DIFlagArtificial)
!138 = !DILocation(line: 0, scope: !112)
!139 = !DILocation(line: 59, column: 7, scope: !112)
!140 = !{!141, !141, i64 0}
!141 = !{!"long", !35, i64 0}
!142 = !DILocation(line: 62, column: 9, scope: !112)
!143 = !DILocation(line: 58, column: 15, scope: !112)
!144 = !DILocation(line: 68, column: 3, scope: !112)
!145 = !DILocation(line: 68, column: 19, scope: !112)
!146 = !DILocation(line: 68, column: 24, scope: !112)
!147 = !DILocation(line: 68, column: 8, scope: !112)
!148 = !DILocation(line: 69, column: 12, scope: !149)
!149 = distinct !DILexicalBlock(scope: !112, file: !1, line: 69, column: 5)
!150 = !DILocation(line: 69, column: 10, scope: !149)
!151 = !DILocation(line: 69, column: 17, scope: !152)
!152 = distinct !DILexicalBlock(scope: !149, file: !1, line: 69, column: 5)
!153 = !DILocation(line: 69, column: 21, scope: !152)
!154 = !DILocation(line: 69, column: 19, scope: !152)
!155 = !DILocation(line: 69, column: 5, scope: !149)
!156 = !DILocation(line: 71, column: 16, scope: !157)
!157 = distinct !DILexicalBlock(scope: !152, file: !1, line: 70, column: 5)
!158 = !DILocation(line: 71, column: 14, scope: !157)
!159 = !DILocation(line: 71, column: 19, scope: !157)
!160 = !DILocation(line: 71, column: 12, scope: !157)
!161 = !DILocation(line: 72, column: 13, scope: !157)
!162 = !DILocation(line: 72, column: 19, scope: !157)
!163 = !DILocation(line: 72, column: 26, scope: !157)
!164 = !DILocation(line: 72, column: 24, scope: !157)
!165 = !DILocation(line: 72, column: 17, scope: !157)
!166 = !DILocation(line: 72, column: 11, scope: !157)
!167 = !DILocation(line: 73, column: 5, scope: !157)
!168 = !DILocation(line: 69, column: 27, scope: !152)
!169 = !DILocation(line: 69, column: 5, scope: !152)
!170 = distinct !{!170, !155, !171}
!171 = !DILocation(line: 73, column: 5, scope: !149)
!172 = !DILocation(line: 67, column: 1, scope: !112)
!173 = distinct !{!173, !172, !174}
!174 = !DILocation(line: 67, column: 44, scope: !112)
!175 = !DILocation(line: 73, column: 5, scope: !112)
!176 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 68, type: !113, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !177)
!177 = !{!178, !179, !180, !181, !182, !183, !184}
!178 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !176, type: !115, flags: DIFlagArtificial)
!179 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !176, type: !115, flags: DIFlagArtificial)
!180 = !DILocalVariable(name: "len", arg: 3, scope: !176, type: !119, flags: DIFlagArtificial)
!181 = !DILocalVariable(name: "vla", arg: 4, scope: !176, type: !26, flags: DIFlagArtificial)
!182 = !DILocalVariable(name: "vla", arg: 5, scope: !176, type: !26, flags: DIFlagArtificial)
!183 = !DILocalVariable(name: "u", arg: 6, scope: !176, type: !120, flags: DIFlagArtificial)
!184 = !DILocalVariable(name: "sum", arg: 7, scope: !176, type: !120, flags: DIFlagArtificial)
!185 = !DILocation(line: 0, scope: !176)
!186 = !DILocation(line: 68, column: 3, scope: !176)
!187 = !{!188}
!188 = !{i64 2, i64 -1, i64 -1, i1 true}
