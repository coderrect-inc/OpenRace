; ModuleID = 'integration/dataracebench/DRB057-jacobiinitialize-orig-no.c'
source_filename = "integration/dataracebench/DRB057-jacobiinitialize-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@n = dso_local global i32 200, align 4, !dbg !0
@dx = common dso_local global double 0.000000e+00, align 8, !dbg !18
@m = dso_local global i32 200, align 4, !dbg !22
@dy = common dso_local global double 0.000000e+00, align 8, !dbg !20
@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [79 x i8] c";integration/dataracebench/DRB057-jacobiinitialize-orig-no.c;initialize;68;1;;\00", align 1
@u = common dso_local global [200 x [200 x double]] zeroinitializer, align 16, !dbg !8
@alpha = dso_local global double 5.430000e-02, align 8, !dbg !24
@f = common dso_local global [200 x [200 x double]] zeroinitializer, align 16, !dbg !14
@2 = private unnamed_addr constant [80 x i8] c";integration/dataracebench/DRB057-jacobiinitialize-orig-no.c;initialize;68;44;;\00", align 1
@3 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@uold = common dso_local global [200 x [200 x double]] zeroinitializer, align 16, !dbg !16

; Function Attrs: nounwind uwtable
define dso_local void @initialize() #0 !dbg !30 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %xx = alloca i32, align 4
  %yy = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  %2 = bitcast i32* %i to i8*, !dbg !38
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #4, !dbg !38
  call void @llvm.dbg.declare(metadata i32* %i, metadata !34, metadata !DIExpression()), !dbg !39
  %3 = bitcast i32* %j to i8*, !dbg !38
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #4, !dbg !38
  call void @llvm.dbg.declare(metadata i32* %j, metadata !35, metadata !DIExpression()), !dbg !40
  %4 = bitcast i32* %xx to i8*, !dbg !38
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #4, !dbg !38
  call void @llvm.dbg.declare(metadata i32* %xx, metadata !36, metadata !DIExpression()), !dbg !41
  %5 = bitcast i32* %yy to i8*, !dbg !38
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #4, !dbg !38
  call void @llvm.dbg.declare(metadata i32* %yy, metadata !37, metadata !DIExpression()), !dbg !42
  %6 = load i32, i32* @n, align 4, !dbg !43, !tbaa !44
  %sub = sub nsw i32 %6, 1, !dbg !48
  %conv = sitofp i32 %sub to double, !dbg !49
  %div = fdiv double 2.000000e+00, %conv, !dbg !50
  store double %div, double* @dx, align 8, !dbg !51, !tbaa !52
  %7 = load i32, i32* @m, align 4, !dbg !54, !tbaa !44
  %sub1 = sub nsw i32 %7, 1, !dbg !55
  %conv2 = sitofp i32 %sub1 to double, !dbg !56
  %div3 = fdiv double 2.000000e+00, %conv2, !dbg !57
  store double %div3, double* @dy, align 8, !dbg !58, !tbaa !52
  %8 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !59
  store i8* getelementptr inbounds ([79 x i8], [79 x i8]* @1, i32 0, i32 0), i8** %8, align 8, !dbg !59, !tbaa !60
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 0, void (i32*, i32*, ...)* bitcast (void (i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*)), !dbg !59
  %9 = bitcast i32* %yy to i8*, !dbg !63
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %9) #4, !dbg !63
  %10 = bitcast i32* %xx to i8*, !dbg !63
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %10) #4, !dbg !63
  %11 = bitcast i32* %j to i8*, !dbg !63
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %11) #4, !dbg !63
  %12 = bitcast i32* %i to i8*, !dbg !63
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %12) #4, !dbg !63
  ret void, !dbg !63
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid.) #3 !dbg !64 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %.omp.iv = alloca i32, align 4
  %tmp = alloca i32, align 4
  %.capture_expr. = alloca i32, align 4
  %.capture_expr.1 = alloca i32, align 4
  %i = alloca i32, align 4
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %i4 = alloca i32, align 4
  %j = alloca i32, align 4
  %xx = alloca i32, align 4
  %yy = alloca i32, align 4
  %i5 = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !84
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !72, metadata !DIExpression()), !dbg !85
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !84
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !73, metadata !DIExpression()), !dbg !85
  %2 = bitcast i32* %.omp.iv to i8*, !dbg !86
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #4, !dbg !86
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !74, metadata !DIExpression()), !dbg !85
  %3 = bitcast i32* %.capture_expr. to i8*, !dbg !86
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #4, !dbg !86
  call void @llvm.dbg.declare(metadata i32* %.capture_expr., metadata !75, metadata !DIExpression()), !dbg !85
  %4 = load i32, i32* @n, align 4, !dbg !87, !tbaa !44
  store i32 %4, i32* %.capture_expr., align 4, !dbg !87, !tbaa !44
  %5 = bitcast i32* %.capture_expr.1 to i8*, !dbg !86
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #4, !dbg !86
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.1, metadata !75, metadata !DIExpression()), !dbg !85
  %6 = load i32, i32* %.capture_expr., align 4, !dbg !87, !tbaa !44
  %sub = sub nsw i32 %6, 0, !dbg !86
  %sub2 = sub nsw i32 %sub, 1, !dbg !86
  %add = add nsw i32 %sub2, 1, !dbg !86
  %div = sdiv i32 %add, 1, !dbg !86
  %sub3 = sub nsw i32 %div, 1, !dbg !86
  store i32 %sub3, i32* %.capture_expr.1, align 4, !dbg !86, !tbaa !44
  %7 = bitcast i32* %i to i8*, !dbg !86
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #4, !dbg !86
  call void @llvm.dbg.declare(metadata i32* %i, metadata !76, metadata !DIExpression()), !dbg !85
  store i32 0, i32* %i, align 4, !dbg !88, !tbaa !44
  %8 = bitcast i32* %i to i8*, !dbg !86
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %8) #4, !dbg !86
  %9 = load i32, i32* %.capture_expr., align 4, !dbg !87, !tbaa !44
  %cmp = icmp slt i32 0, %9, !dbg !86
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end, !dbg !86

omp.precond.then:                                 ; preds = %entry
  %10 = bitcast i32* %.omp.lb to i8*, !dbg !86
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #4, !dbg !86
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !77, metadata !DIExpression()), !dbg !85
  store i32 0, i32* %.omp.lb, align 4, !dbg !89, !tbaa !44
  %11 = bitcast i32* %.omp.ub to i8*, !dbg !86
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #4, !dbg !86
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !78, metadata !DIExpression()), !dbg !85
  %12 = load i32, i32* %.capture_expr.1, align 4, !dbg !86, !tbaa !44
  store i32 %12, i32* %.omp.ub, align 4, !dbg !89, !tbaa !44
  %13 = bitcast i32* %.omp.stride to i8*, !dbg !86
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %13) #4, !dbg !86
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !79, metadata !DIExpression()), !dbg !85
  store i32 1, i32* %.omp.stride, align 4, !dbg !89, !tbaa !44
  %14 = bitcast i32* %.omp.is_last to i8*, !dbg !86
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %14) #4, !dbg !86
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !80, metadata !DIExpression()), !dbg !85
  store i32 0, i32* %.omp.is_last, align 4, !dbg !89, !tbaa !44
  %15 = bitcast i32* %i4 to i8*, !dbg !86
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %15) #4, !dbg !86
  call void @llvm.dbg.declare(metadata i32* %i4, metadata !76, metadata !DIExpression()), !dbg !85
  %16 = bitcast i32* %j to i8*, !dbg !86
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %16) #4, !dbg !86
  call void @llvm.dbg.declare(metadata i32* %j, metadata !81, metadata !DIExpression()), !dbg !85
  %17 = bitcast i32* %xx to i8*, !dbg !86
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %17) #4, !dbg !86
  call void @llvm.dbg.declare(metadata i32* %xx, metadata !82, metadata !DIExpression()), !dbg !85
  %18 = bitcast i32* %yy to i8*, !dbg !86
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %18) #4, !dbg !86
  call void @llvm.dbg.declare(metadata i32* %yy, metadata !83, metadata !DIExpression()), !dbg !85
  %19 = bitcast i32* %i5 to i8*, !dbg !86
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %19) #4, !dbg !86
  call void @llvm.dbg.declare(metadata i32* %i5, metadata !76, metadata !DIExpression()), !dbg !85
  %20 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !86
  store i8* getelementptr inbounds ([79 x i8], [79 x i8]* @1, i32 0, i32 0), i8** %20, align 8, !dbg !86, !tbaa !60
  %21 = load i32*, i32** %.global_tid..addr, align 8, !dbg !86
  %22 = load i32, i32* %21, align 4, !dbg !86, !tbaa !44
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %22, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !86
  %23 = load i32, i32* %.omp.ub, align 4, !dbg !89, !tbaa !44
  %24 = load i32, i32* %.capture_expr.1, align 4, !dbg !86, !tbaa !44
  %cmp6 = icmp sgt i32 %23, %24, !dbg !89
  br i1 %cmp6, label %cond.true, label %cond.false, !dbg !89

cond.true:                                        ; preds = %omp.precond.then
  %25 = load i32, i32* %.capture_expr.1, align 4, !dbg !86, !tbaa !44
  br label %cond.end, !dbg !89

cond.false:                                       ; preds = %omp.precond.then
  %26 = load i32, i32* %.omp.ub, align 4, !dbg !89, !tbaa !44
  br label %cond.end, !dbg !89

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %25, %cond.true ], [ %26, %cond.false ], !dbg !89
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !89, !tbaa !44
  %27 = load i32, i32* %.omp.lb, align 4, !dbg !89, !tbaa !44
  store i32 %27, i32* %.omp.iv, align 4, !dbg !89, !tbaa !44
  br label %omp.inner.for.cond, !dbg !86

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %28 = load i32, i32* %.omp.iv, align 4, !dbg !89, !tbaa !44
  %29 = load i32, i32* %.omp.ub, align 4, !dbg !89, !tbaa !44
  %cmp7 = icmp sle i32 %28, %29, !dbg !86
  br i1 %cmp7, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !86

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !86

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %30 = load i32, i32* %.omp.iv, align 4, !dbg !89, !tbaa !44
  %mul = mul nsw i32 %30, 1, !dbg !88
  %add8 = add nsw i32 0, %mul, !dbg !88
  store i32 %add8, i32* %i4, align 4, !dbg !88, !tbaa !44
  store i32 0, i32* %j, align 4, !dbg !90, !tbaa !44
  br label %for.cond, !dbg !92

for.cond:                                         ; preds = %for.inc, %omp.inner.for.body
  %31 = load i32, i32* %j, align 4, !dbg !93, !tbaa !44
  %32 = load i32, i32* @m, align 4, !dbg !95, !tbaa !44
  %cmp9 = icmp slt i32 %31, %32, !dbg !96
  br i1 %cmp9, label %for.body, label %for.end, !dbg !97

for.body:                                         ; preds = %for.cond
  %33 = load double, double* @dx, align 8, !dbg !98, !tbaa !52
  %34 = load i32, i32* %i4, align 4, !dbg !100, !tbaa !44
  %sub10 = sub nsw i32 %34, 1, !dbg !101
  %conv = sitofp i32 %sub10 to double, !dbg !102
  %mul11 = fmul double %33, %conv, !dbg !103
  %add12 = fadd double -1.000000e+00, %mul11, !dbg !104
  %conv13 = fptosi double %add12 to i32, !dbg !105
  store i32 %conv13, i32* %xx, align 4, !dbg !106, !tbaa !44
  %35 = load double, double* @dy, align 8, !dbg !107, !tbaa !52
  %36 = load i32, i32* %j, align 4, !dbg !108, !tbaa !44
  %sub14 = sub nsw i32 %36, 1, !dbg !109
  %conv15 = sitofp i32 %sub14 to double, !dbg !110
  %mul16 = fmul double %35, %conv15, !dbg !111
  %add17 = fadd double -1.000000e+00, %mul16, !dbg !112
  %conv18 = fptosi double %add17 to i32, !dbg !113
  store i32 %conv18, i32* %yy, align 4, !dbg !114, !tbaa !44
  %37 = load i32, i32* %i4, align 4, !dbg !115, !tbaa !44
  %idxprom = sext i32 %37 to i64, !dbg !116
  %arrayidx = getelementptr inbounds [200 x [200 x double]], [200 x [200 x double]]* @u, i64 0, i64 %idxprom, !dbg !116
  %38 = load i32, i32* %j, align 4, !dbg !117, !tbaa !44
  %idxprom19 = sext i32 %38 to i64, !dbg !116
  %arrayidx20 = getelementptr inbounds [200 x double], [200 x double]* %arrayidx, i64 0, i64 %idxprom19, !dbg !116
  store double 0.000000e+00, double* %arrayidx20, align 8, !dbg !118, !tbaa !52
  %39 = load double, double* @alpha, align 8, !dbg !119, !tbaa !52
  %mul21 = fmul double -1.000000e+00, %39, !dbg !120
  %40 = load i32, i32* %xx, align 4, !dbg !121, !tbaa !44
  %41 = load i32, i32* %xx, align 4, !dbg !122, !tbaa !44
  %mul22 = mul nsw i32 %40, %41, !dbg !123
  %conv23 = sitofp i32 %mul22 to double, !dbg !121
  %sub24 = fsub double 1.000000e+00, %conv23, !dbg !124
  %mul25 = fmul double %mul21, %sub24, !dbg !125
  %42 = load i32, i32* %yy, align 4, !dbg !126, !tbaa !44
  %43 = load i32, i32* %yy, align 4, !dbg !127, !tbaa !44
  %mul26 = mul nsw i32 %42, %43, !dbg !128
  %conv27 = sitofp i32 %mul26 to double, !dbg !126
  %sub28 = fsub double 1.000000e+00, %conv27, !dbg !129
  %mul29 = fmul double %mul25, %sub28, !dbg !130
  %44 = load i32, i32* %xx, align 4, !dbg !131, !tbaa !44
  %45 = load i32, i32* %xx, align 4, !dbg !132, !tbaa !44
  %mul30 = mul nsw i32 %44, %45, !dbg !133
  %conv31 = sitofp i32 %mul30 to double, !dbg !131
  %sub32 = fsub double 1.000000e+00, %conv31, !dbg !134
  %mul33 = fmul double 2.000000e+00, %sub32, !dbg !135
  %sub34 = fsub double %mul29, %mul33, !dbg !136
  %46 = load i32, i32* %yy, align 4, !dbg !137, !tbaa !44
  %47 = load i32, i32* %yy, align 4, !dbg !138, !tbaa !44
  %mul35 = mul nsw i32 %46, %47, !dbg !139
  %conv36 = sitofp i32 %mul35 to double, !dbg !137
  %sub37 = fsub double 1.000000e+00, %conv36, !dbg !140
  %mul38 = fmul double 2.000000e+00, %sub37, !dbg !141
  %sub39 = fsub double %sub34, %mul38, !dbg !142
  %48 = load i32, i32* %i4, align 4, !dbg !143, !tbaa !44
  %idxprom40 = sext i32 %48 to i64, !dbg !144
  %arrayidx41 = getelementptr inbounds [200 x [200 x double]], [200 x [200 x double]]* @f, i64 0, i64 %idxprom40, !dbg !144
  %49 = load i32, i32* %j, align 4, !dbg !145, !tbaa !44
  %idxprom42 = sext i32 %49 to i64, !dbg !144
  %arrayidx43 = getelementptr inbounds [200 x double], [200 x double]* %arrayidx41, i64 0, i64 %idxprom42, !dbg !144
  store double %sub39, double* %arrayidx43, align 8, !dbg !146, !tbaa !52
  br label %for.inc, !dbg !147

for.inc:                                          ; preds = %for.body
  %50 = load i32, i32* %j, align 4, !dbg !148, !tbaa !44
  %inc = add nsw i32 %50, 1, !dbg !148
  store i32 %inc, i32* %j, align 4, !dbg !148, !tbaa !44
  br label %for.cond, !dbg !149, !llvm.loop !150

for.end:                                          ; preds = %for.cond
  br label %omp.body.continue, !dbg !151

omp.body.continue:                                ; preds = %for.end
  br label %omp.inner.for.inc, !dbg !152

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %51 = load i32, i32* %.omp.iv, align 4, !dbg !89, !tbaa !44
  %add44 = add nsw i32 %51, 1, !dbg !86
  store i32 %add44, i32* %.omp.iv, align 4, !dbg !86, !tbaa !44
  br label %omp.inner.for.cond, !dbg !152, !llvm.loop !153

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !152

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %52 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !152
  store i8* getelementptr inbounds ([80 x i8], [80 x i8]* @2, i32 0, i32 0), i8** %52, align 8, !dbg !152, !tbaa !60
  %53 = load i32*, i32** %.global_tid..addr, align 8, !dbg !152
  %54 = load i32, i32* %53, align 4, !dbg !152, !tbaa !44
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %54), !dbg !152
  %55 = bitcast i32* %i5 to i8*, !dbg !152
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %55) #4, !dbg !152
  %56 = bitcast i32* %yy to i8*, !dbg !152
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %56) #4, !dbg !152
  %57 = bitcast i32* %xx to i8*, !dbg !152
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %57) #4, !dbg !152
  %58 = bitcast i32* %j to i8*, !dbg !152
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %58) #4, !dbg !152
  %59 = bitcast i32* %i4 to i8*, !dbg !152
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %59) #4, !dbg !152
  %60 = bitcast i32* %.omp.is_last to i8*, !dbg !152
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %60) #4, !dbg !152
  %61 = bitcast i32* %.omp.stride to i8*, !dbg !152
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %61) #4, !dbg !152
  %62 = bitcast i32* %.omp.ub to i8*, !dbg !152
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %62) #4, !dbg !152
  %63 = bitcast i32* %.omp.lb to i8*, !dbg !152
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %63) #4, !dbg !152
  br label %omp.precond.end, !dbg !152

omp.precond.end:                                  ; preds = %omp.loop.exit, %entry
  %64 = bitcast i32* %.capture_expr.1 to i8*, !dbg !152
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %64) #4, !dbg !152
  %65 = bitcast i32* %.capture_expr. to i8*, !dbg !152
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %65) #4, !dbg !152
  %66 = bitcast i32* %.omp.iv to i8*, !dbg !152
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %66) #4, !dbg !152
  ret void, !dbg !155
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid.) #3 !dbg !156 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !84
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !158, metadata !DIExpression()), !dbg !160
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !84
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !159, metadata !DIExpression()), !dbg !160
  %0 = load i32*, i32** %.global_tid..addr, align 8, !dbg !161, !tbaa !84
  %1 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !161, !tbaa !84
  call void @.omp_outlined._debug__(i32* %0, i32* %1) #4, !dbg !161
  ret void, !dbg !161
}

declare !callback !162 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

; Function Attrs: nounwind uwtable
define dso_local i32 @main() #0 !dbg !164 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @initialize(), !dbg !166
  ret i32 0, !dbg !167
}

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!26, !27, !28}
!llvm.ident = !{!29}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "n", scope: !2, file: !3, line: 54, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !7, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "integration/dataracebench/DRB057-jacobiinitialize-orig-no.c", directory: "/home/brad/Code/OpenRace/tests/data")
!4 = !{}
!5 = !{!6}
!6 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!7 = !{!8, !14, !16, !18, !20, !0, !22, !24}
!8 = !DIGlobalVariableExpression(var: !9, expr: !DIExpression())
!9 = distinct !DIGlobalVariable(name: "u", scope: !2, file: !3, line: 56, type: !10, isLocal: false, isDefinition: true)
!10 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 2560000, elements: !12)
!11 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!12 = !{!13, !13}
!13 = !DISubrange(count: 200)
!14 = !DIGlobalVariableExpression(var: !15, expr: !DIExpression())
!15 = distinct !DIGlobalVariable(name: "f", scope: !2, file: !3, line: 56, type: !10, isLocal: false, isDefinition: true)
!16 = !DIGlobalVariableExpression(var: !17, expr: !DIExpression())
!17 = distinct !DIGlobalVariable(name: "uold", scope: !2, file: !3, line: 56, type: !10, isLocal: false, isDefinition: true)
!18 = !DIGlobalVariableExpression(var: !19, expr: !DIExpression())
!19 = distinct !DIGlobalVariable(name: "dx", scope: !2, file: !3, line: 57, type: !11, isLocal: false, isDefinition: true)
!20 = !DIGlobalVariableExpression(var: !21, expr: !DIExpression())
!21 = distinct !DIGlobalVariable(name: "dy", scope: !2, file: !3, line: 57, type: !11, isLocal: false, isDefinition: true)
!22 = !DIGlobalVariableExpression(var: !23, expr: !DIExpression())
!23 = distinct !DIGlobalVariable(name: "m", scope: !2, file: !3, line: 54, type: !6, isLocal: false, isDefinition: true)
!24 = !DIGlobalVariableExpression(var: !25, expr: !DIExpression())
!25 = distinct !DIGlobalVariable(name: "alpha", scope: !2, file: !3, line: 55, type: !11, isLocal: false, isDefinition: true)
!26 = !{i32 7, !"Dwarf Version", i32 4}
!27 = !{i32 2, !"Debug Info Version", i32 3}
!28 = !{i32 1, !"wchar_size", i32 4}
!29 = !{!"clang version 10.0.1 "}
!30 = distinct !DISubprogram(name: "initialize", scope: !3, file: !3, line: 60, type: !31, scopeLine: 61, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !33)
!31 = !DISubroutineType(types: !32)
!32 = !{null}
!33 = !{!34, !35, !36, !37}
!34 = !DILocalVariable(name: "i", scope: !30, file: !3, line: 62, type: !6)
!35 = !DILocalVariable(name: "j", scope: !30, file: !3, line: 62, type: !6)
!36 = !DILocalVariable(name: "xx", scope: !30, file: !3, line: 62, type: !6)
!37 = !DILocalVariable(name: "yy", scope: !30, file: !3, line: 62, type: !6)
!38 = !DILocation(line: 62, column: 3, scope: !30)
!39 = !DILocation(line: 62, column: 7, scope: !30)
!40 = !DILocation(line: 62, column: 10, scope: !30)
!41 = !DILocation(line: 62, column: 13, scope: !30)
!42 = !DILocation(line: 62, column: 17, scope: !30)
!43 = !DILocation(line: 64, column: 15, scope: !30)
!44 = !{!45, !45, i64 0}
!45 = !{!"int", !46, i64 0}
!46 = !{!"omnipotent char", !47, i64 0}
!47 = !{!"Simple C/C++ TBAA"}
!48 = !DILocation(line: 64, column: 17, scope: !30)
!49 = !DILocation(line: 64, column: 14, scope: !30)
!50 = !DILocation(line: 64, column: 12, scope: !30)
!51 = !DILocation(line: 64, column: 6, scope: !30)
!52 = !{!53, !53, i64 0}
!53 = !{!"double", !46, i64 0}
!54 = !DILocation(line: 65, column: 15, scope: !30)
!55 = !DILocation(line: 65, column: 17, scope: !30)
!56 = !DILocation(line: 65, column: 14, scope: !30)
!57 = !DILocation(line: 65, column: 12, scope: !30)
!58 = !DILocation(line: 65, column: 6, scope: !30)
!59 = !DILocation(line: 68, column: 1, scope: !30)
!60 = !{!61, !62, i64 16}
!61 = !{!"ident_t", !45, i64 0, !45, i64 4, !45, i64 8, !45, i64 12, !62, i64 16}
!62 = !{!"any pointer", !46, i64 0}
!63 = !DILocation(line: 79, column: 1, scope: !30)
!64 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !3, file: !3, line: 69, type: !65, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !71)
!65 = !DISubroutineType(types: !66)
!66 = !{null, !67, !67}
!67 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !68)
!68 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !69)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !6)
!71 = !{!72, !73, !74, !75, !75, !76, !77, !78, !79, !80, !76, !81, !82, !83, !76}
!72 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !64, type: !67, flags: DIFlagArtificial)
!73 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !64, type: !67, flags: DIFlagArtificial)
!74 = !DILocalVariable(name: ".omp.iv", scope: !64, type: !6, flags: DIFlagArtificial)
!75 = !DILocalVariable(name: ".capture_expr.", scope: !64, type: !6, flags: DIFlagArtificial)
!76 = !DILocalVariable(name: "i", scope: !64, type: !6, flags: DIFlagArtificial)
!77 = !DILocalVariable(name: ".omp.lb", scope: !64, type: !6, flags: DIFlagArtificial)
!78 = !DILocalVariable(name: ".omp.ub", scope: !64, type: !6, flags: DIFlagArtificial)
!79 = !DILocalVariable(name: ".omp.stride", scope: !64, type: !6, flags: DIFlagArtificial)
!80 = !DILocalVariable(name: ".omp.is_last", scope: !64, type: !6, flags: DIFlagArtificial)
!81 = !DILocalVariable(name: "j", scope: !64, type: !6, flags: DIFlagArtificial)
!82 = !DILocalVariable(name: "xx", scope: !64, type: !6, flags: DIFlagArtificial)
!83 = !DILocalVariable(name: "yy", scope: !64, type: !6, flags: DIFlagArtificial)
!84 = !{!62, !62, i64 0}
!85 = !DILocation(line: 0, scope: !64)
!86 = !DILocation(line: 69, column: 3, scope: !64)
!87 = !DILocation(line: 69, column: 19, scope: !64)
!88 = !DILocation(line: 69, column: 22, scope: !64)
!89 = !DILocation(line: 69, column: 8, scope: !64)
!90 = !DILocation(line: 70, column: 12, scope: !91)
!91 = distinct !DILexicalBlock(scope: !64, file: !3, line: 70, column: 5)
!92 = !DILocation(line: 70, column: 10, scope: !91)
!93 = !DILocation(line: 70, column: 17, scope: !94)
!94 = distinct !DILexicalBlock(scope: !91, file: !3, line: 70, column: 5)
!95 = !DILocation(line: 70, column: 21, scope: !94)
!96 = !DILocation(line: 70, column: 19, scope: !94)
!97 = !DILocation(line: 70, column: 5, scope: !91)
!98 = !DILocation(line: 72, column: 26, scope: !99)
!99 = distinct !DILexicalBlock(scope: !94, file: !3, line: 71, column: 5)
!100 = !DILocation(line: 72, column: 32, scope: !99)
!101 = !DILocation(line: 72, column: 34, scope: !99)
!102 = !DILocation(line: 72, column: 31, scope: !99)
!103 = !DILocation(line: 72, column: 29, scope: !99)
!104 = !DILocation(line: 72, column: 24, scope: !99)
!105 = !DILocation(line: 72, column: 12, scope: !99)
!106 = !DILocation(line: 72, column: 10, scope: !99)
!107 = !DILocation(line: 73, column: 26, scope: !99)
!108 = !DILocation(line: 73, column: 32, scope: !99)
!109 = !DILocation(line: 73, column: 34, scope: !99)
!110 = !DILocation(line: 73, column: 31, scope: !99)
!111 = !DILocation(line: 73, column: 29, scope: !99)
!112 = !DILocation(line: 73, column: 24, scope: !99)
!113 = !DILocation(line: 73, column: 12, scope: !99)
!114 = !DILocation(line: 73, column: 10, scope: !99)
!115 = !DILocation(line: 74, column: 9, scope: !99)
!116 = !DILocation(line: 74, column: 7, scope: !99)
!117 = !DILocation(line: 74, column: 12, scope: !99)
!118 = !DILocation(line: 74, column: 15, scope: !99)
!119 = !DILocation(line: 75, column: 24, scope: !99)
!120 = !DILocation(line: 75, column: 22, scope: !99)
!121 = !DILocation(line: 75, column: 39, scope: !99)
!122 = !DILocation(line: 75, column: 44, scope: !99)
!123 = !DILocation(line: 75, column: 42, scope: !99)
!124 = !DILocation(line: 75, column: 37, scope: !99)
!125 = !DILocation(line: 75, column: 30, scope: !99)
!126 = !DILocation(line: 75, column: 57, scope: !99)
!127 = !DILocation(line: 75, column: 62, scope: !99)
!128 = !DILocation(line: 75, column: 60, scope: !99)
!129 = !DILocation(line: 75, column: 55, scope: !99)
!130 = !DILocation(line: 75, column: 48, scope: !99)
!131 = !DILocation(line: 76, column: 24, scope: !99)
!132 = !DILocation(line: 76, column: 29, scope: !99)
!133 = !DILocation(line: 76, column: 27, scope: !99)
!134 = !DILocation(line: 76, column: 22, scope: !99)
!135 = !DILocation(line: 76, column: 15, scope: !99)
!136 = !DILocation(line: 76, column: 9, scope: !99)
!137 = !DILocation(line: 76, column: 48, scope: !99)
!138 = !DILocation(line: 76, column: 53, scope: !99)
!139 = !DILocation(line: 76, column: 51, scope: !99)
!140 = !DILocation(line: 76, column: 46, scope: !99)
!141 = !DILocation(line: 76, column: 39, scope: !99)
!142 = !DILocation(line: 76, column: 33, scope: !99)
!143 = !DILocation(line: 75, column: 9, scope: !99)
!144 = !DILocation(line: 75, column: 7, scope: !99)
!145 = !DILocation(line: 75, column: 12, scope: !99)
!146 = !DILocation(line: 75, column: 15, scope: !99)
!147 = !DILocation(line: 78, column: 5, scope: !99)
!148 = !DILocation(line: 70, column: 25, scope: !94)
!149 = !DILocation(line: 70, column: 5, scope: !94)
!150 = distinct !{!150, !97, !151}
!151 = !DILocation(line: 78, column: 5, scope: !91)
!152 = !DILocation(line: 68, column: 1, scope: !64)
!153 = distinct !{!153, !152, !154}
!154 = !DILocation(line: 68, column: 44, scope: !64)
!155 = !DILocation(line: 78, column: 5, scope: !64)
!156 = distinct !DISubprogram(name: ".omp_outlined.", scope: !3, file: !3, line: 69, type: !65, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !157)
!157 = !{!158, !159}
!158 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !156, type: !67, flags: DIFlagArtificial)
!159 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !156, type: !67, flags: DIFlagArtificial)
!160 = !DILocation(line: 0, scope: !156)
!161 = !DILocation(line: 69, column: 3, scope: !156)
!162 = !{!163}
!163 = !{i64 2, i64 -1, i64 -1, i1 true}
!164 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 81, type: !165, scopeLine: 82, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4)
!165 = !DISubroutineType(types: !5)
!166 = !DILocation(line: 83, column: 3, scope: !164)
!167 = !DILocation(line: 84, column: 3, scope: !164)
