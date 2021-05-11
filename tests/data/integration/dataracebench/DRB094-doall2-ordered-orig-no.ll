; ModuleID = 'integration/dataracebench/DRB094-doall2-ordered-orig-no.c'
source_filename = "integration/dataracebench/DRB094-doall2-ordered-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }
%struct.kmp_dim = type { i64, i64, i64 }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [71 x i8] c";integration/dataracebench/DRB094-doall2-ordered-orig-no.c;main;62;1;;\00", align 1
@2 = private unnamed_addr constant [72 x i8] c";integration/dataracebench/DRB094-doall2-ordered-orig-no.c;main;62;36;;\00", align 1
@a = common dso_local global [100 x [100 x i32]] zeroinitializer, align 16, !dbg !0
@3 = private unnamed_addr constant [72 x i8] c";integration/dataracebench/DRB094-doall2-ordered-orig-no.c;main;67;21;;\00", align 1
@4 = private unnamed_addr constant [72 x i8] c";integration/dataracebench/DRB094-doall2-ordered-orig-no.c;main;67;40;;\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"test i=%d j=%d\0A\00", align 1
@5 = private unnamed_addr constant [72 x i8] c";integration/dataracebench/DRB094-doall2-ordered-orig-no.c;main;69;21;;\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main() #0 !dbg !14 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32 0, i32* %retval, align 4
  %2 = bitcast i32* %i to i8*, !dbg !20
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #5, !dbg !20
  call void @llvm.dbg.declare(metadata i32* %i, metadata !18, metadata !DIExpression()), !dbg !21
  %3 = bitcast i32* %j to i8*, !dbg !20
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #5, !dbg !20
  call void @llvm.dbg.declare(metadata i32* %j, metadata !19, metadata !DIExpression()), !dbg !22
  %4 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !23
  store i8* getelementptr inbounds ([71 x i8], [71 x i8]* @1, i32 0, i32 0), i8** %4, align 8, !dbg !23, !tbaa !24
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 0, void (i32*, i32*, ...)* bitcast (void (i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*)), !dbg !23
  %5 = bitcast i32* %j to i8*, !dbg !30
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %5) #5, !dbg !30
  %6 = bitcast i32* %i to i8*, !dbg !30
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %6) #5, !dbg !30
  ret i32 0, !dbg !31
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid.) #3 !dbg !32 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %.omp.iv = alloca i32, align 4
  %tmp = alloca i32, align 4
  %dims = alloca [2 x %struct.kmp_dim], align 8
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %.cnt.addr = alloca [2 x i64], align 8
  %.cnt.addr15 = alloca [2 x i64], align 8
  %.cnt.addr23 = alloca [2 x i64], align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !48
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !40, metadata !DIExpression()), !dbg !49
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !48
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !41, metadata !DIExpression()), !dbg !49
  %2 = bitcast i32* %.omp.iv to i8*, !dbg !50
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #5, !dbg !50
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !42, metadata !DIExpression()), !dbg !49
  %3 = bitcast [2 x %struct.kmp_dim]* %dims to i8*, !dbg !50
  call void @llvm.memset.p0i8.i64(i8* align 8 %3, i8 0, i64 48, i1 false), !dbg !50
  %4 = getelementptr inbounds [2 x %struct.kmp_dim], [2 x %struct.kmp_dim]* %dims, i64 0, i64 0, !dbg !50
  %5 = getelementptr inbounds %struct.kmp_dim, %struct.kmp_dim* %4, i32 0, i32 1, !dbg !50
  store i64 100, i64* %5, align 8, !dbg !50, !tbaa !51
  %6 = getelementptr inbounds %struct.kmp_dim, %struct.kmp_dim* %4, i32 0, i32 2, !dbg !50
  store i64 1, i64* %6, align 8, !dbg !50, !tbaa !54
  %7 = getelementptr inbounds [2 x %struct.kmp_dim], [2 x %struct.kmp_dim]* %dims, i64 0, i64 1, !dbg !50
  %8 = getelementptr inbounds %struct.kmp_dim, %struct.kmp_dim* %7, i32 0, i32 1, !dbg !50
  store i64 100, i64* %8, align 8, !dbg !50, !tbaa !51
  %9 = getelementptr inbounds %struct.kmp_dim, %struct.kmp_dim* %7, i32 0, i32 2, !dbg !50
  store i64 1, i64* %9, align 8, !dbg !50, !tbaa !54
  %10 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !50
  store i8* getelementptr inbounds ([71 x i8], [71 x i8]* @1, i32 0, i32 0), i8** %10, align 8, !dbg !50, !tbaa !24
  %11 = load i32*, i32** %.global_tid..addr, align 8, !dbg !50
  %12 = load i32, i32* %11, align 4, !dbg !50, !tbaa !55
  %13 = getelementptr inbounds [2 x %struct.kmp_dim], [2 x %struct.kmp_dim]* %dims, i64 0, i64 0, !dbg !50
  %14 = bitcast %struct.kmp_dim* %13 to i8*, !dbg !50
  call void @__kmpc_doacross_init(%struct.ident_t* %.kmpc_loc.addr, i32 %12, i32 2, i8* %14), !dbg !50
  %15 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !50
  store i8* getelementptr inbounds ([72 x i8], [72 x i8]* @2, i32 0, i32 0), i8** %15, align 8, !dbg !50, !tbaa !24
  %16 = bitcast i32* %.omp.lb to i8*, !dbg !50
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %16) #5, !dbg !50
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !43, metadata !DIExpression()), !dbg !49
  store i32 0, i32* %.omp.lb, align 4, !dbg !56, !tbaa !55
  %17 = bitcast i32* %.omp.ub to i8*, !dbg !50
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %17) #5, !dbg !50
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !44, metadata !DIExpression()), !dbg !49
  store i32 99, i32* %.omp.ub, align 4, !dbg !56, !tbaa !55
  %18 = bitcast i32* %.omp.stride to i8*, !dbg !50
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %18) #5, !dbg !50
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !45, metadata !DIExpression()), !dbg !49
  store i32 1, i32* %.omp.stride, align 4, !dbg !56, !tbaa !55
  %19 = bitcast i32* %.omp.is_last to i8*, !dbg !50
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %19) #5, !dbg !50
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !46, metadata !DIExpression()), !dbg !49
  store i32 0, i32* %.omp.is_last, align 4, !dbg !56, !tbaa !55
  %20 = bitcast i32* %i to i8*, !dbg !50
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %20) #5, !dbg !50
  call void @llvm.dbg.declare(metadata i32* %i, metadata !47, metadata !DIExpression()), !dbg !49
  %21 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !50
  store i8* getelementptr inbounds ([71 x i8], [71 x i8]* @1, i32 0, i32 0), i8** %21, align 8, !dbg !50, !tbaa !24
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %12, i32 33, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !50
  br label %omp.dispatch.cond, !dbg !50

omp.dispatch.cond:                                ; preds = %omp.dispatch.inc, %entry
  %22 = load i32, i32* %.omp.ub, align 4, !dbg !56, !tbaa !55
  %cmp = icmp sgt i32 %22, 99, !dbg !56
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !56

cond.true:                                        ; preds = %omp.dispatch.cond
  br label %cond.end, !dbg !56

cond.false:                                       ; preds = %omp.dispatch.cond
  %23 = load i32, i32* %.omp.ub, align 4, !dbg !56, !tbaa !55
  br label %cond.end, !dbg !56

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 99, %cond.true ], [ %23, %cond.false ], !dbg !56
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !56, !tbaa !55
  %24 = load i32, i32* %.omp.lb, align 4, !dbg !56, !tbaa !55
  store i32 %24, i32* %.omp.iv, align 4, !dbg !56, !tbaa !55
  %25 = load i32, i32* %.omp.iv, align 4, !dbg !56, !tbaa !55
  %26 = load i32, i32* %.omp.ub, align 4, !dbg !56, !tbaa !55
  %cmp1 = icmp sle i32 %25, %26, !dbg !50
  br i1 %cmp1, label %omp.dispatch.body, label %omp.dispatch.cleanup, !dbg !50

omp.dispatch.cleanup:                             ; preds = %cond.end
  br label %omp.dispatch.end, !dbg !50

omp.dispatch.body:                                ; preds = %cond.end
  br label %omp.inner.for.cond, !dbg !50

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %omp.dispatch.body
  %27 = load i32, i32* %.omp.iv, align 4, !dbg !56, !tbaa !55
  %28 = load i32, i32* %.omp.ub, align 4, !dbg !56, !tbaa !55
  %cmp2 = icmp sle i32 %27, %28, !dbg !50
  br i1 %cmp2, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !50

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !50

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %29 = load i32, i32* %.omp.iv, align 4, !dbg !56, !tbaa !55
  %mul = mul nsw i32 %29, 1, !dbg !57
  %add = add nsw i32 0, %mul, !dbg !57
  store i32 %add, i32* %i, align 4, !dbg !57, !tbaa !55
  store i32 0, i32* %j, align 4, !dbg !58, !tbaa !55
  br label %for.cond, !dbg !60

for.cond:                                         ; preds = %for.inc, %omp.inner.for.body
  %30 = load i32, i32* %j, align 4, !dbg !61, !tbaa !55
  %cmp3 = icmp slt i32 %30, 100, !dbg !63
  br i1 %cmp3, label %for.body, label %for.end, !dbg !64

for.body:                                         ; preds = %for.cond
  %31 = load i32, i32* %i, align 4, !dbg !65, !tbaa !55
  %idxprom = sext i32 %31 to i64, !dbg !67
  %arrayidx = getelementptr inbounds [100 x [100 x i32]], [100 x [100 x i32]]* @a, i64 0, i64 %idxprom, !dbg !67
  %32 = load i32, i32* %j, align 4, !dbg !68, !tbaa !55
  %idxprom4 = sext i32 %32 to i64, !dbg !67
  %arrayidx5 = getelementptr inbounds [100 x i32], [100 x i32]* %arrayidx, i64 0, i64 %idxprom4, !dbg !67
  %33 = load i32, i32* %arrayidx5, align 4, !dbg !67, !tbaa !55
  %add6 = add nsw i32 %33, 1, !dbg !69
  %34 = load i32, i32* %i, align 4, !dbg !70, !tbaa !55
  %idxprom7 = sext i32 %34 to i64, !dbg !71
  %arrayidx8 = getelementptr inbounds [100 x [100 x i32]], [100 x [100 x i32]]* @a, i64 0, i64 %idxprom7, !dbg !71
  %35 = load i32, i32* %j, align 4, !dbg !72, !tbaa !55
  %idxprom9 = sext i32 %35 to i64, !dbg !71
  %arrayidx10 = getelementptr inbounds [100 x i32], [100 x i32]* %arrayidx8, i64 0, i64 %idxprom9, !dbg !71
  store i32 %add6, i32* %arrayidx10, align 4, !dbg !73, !tbaa !55
  %36 = load i32, i32* %i, align 4, !dbg !74, !tbaa !55
  %sub = sub nsw i32 %36, 1, !dbg !75
  %sub11 = sub nsw i32 %sub, 0, !dbg !76
  %div = sdiv i32 %sub11, 1, !dbg !76
  %conv = sext i32 %div to i64, !dbg !77
  %37 = getelementptr inbounds [2 x i64], [2 x i64]* %.cnt.addr, i64 0, i64 0, !dbg !77
  store i64 %conv, i64* %37, align 8, !dbg !77, !tbaa !78
  %38 = load i32, i32* %j, align 4, !dbg !79, !tbaa !55
  %sub12 = sub nsw i32 %38, 0, !dbg !80
  %div13 = sdiv i32 %sub12, 1, !dbg !80
  %conv14 = sext i32 %div13 to i64, !dbg !77
  %39 = getelementptr inbounds [2 x i64], [2 x i64]* %.cnt.addr, i64 0, i64 1, !dbg !77
  store i64 %conv14, i64* %39, align 8, !dbg !77, !tbaa !78
  %40 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !77
  store i8* getelementptr inbounds ([72 x i8], [72 x i8]* @3, i32 0, i32 0), i8** %40, align 8, !dbg !77, !tbaa !24
  %41 = getelementptr inbounds [2 x i64], [2 x i64]* %.cnt.addr, i64 0, i64 0, !dbg !77
  call void @__kmpc_doacross_wait(%struct.ident_t* %.kmpc_loc.addr, i32 %12, i64* %41), !dbg !77
  %42 = load i32, i32* %i, align 4, !dbg !74, !tbaa !55
  %sub16 = sub nsw i32 %42, 0, !dbg !76
  %div17 = sdiv i32 %sub16, 1, !dbg !76
  %conv18 = sext i32 %div17 to i64, !dbg !77
  %43 = getelementptr inbounds [2 x i64], [2 x i64]* %.cnt.addr15, i64 0, i64 0, !dbg !77
  store i64 %conv18, i64* %43, align 8, !dbg !77, !tbaa !78
  %44 = load i32, i32* %j, align 4, !dbg !79, !tbaa !55
  %sub19 = sub nsw i32 %44, 1, !dbg !81
  %sub20 = sub nsw i32 %sub19, 0, !dbg !80
  %div21 = sdiv i32 %sub20, 1, !dbg !80
  %conv22 = sext i32 %div21 to i64, !dbg !77
  %45 = getelementptr inbounds [2 x i64], [2 x i64]* %.cnt.addr15, i64 0, i64 1, !dbg !77
  store i64 %conv22, i64* %45, align 8, !dbg !77, !tbaa !78
  %46 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !77
  store i8* getelementptr inbounds ([72 x i8], [72 x i8]* @4, i32 0, i32 0), i8** %46, align 8, !dbg !77, !tbaa !24
  %47 = getelementptr inbounds [2 x i64], [2 x i64]* %.cnt.addr15, i64 0, i64 0, !dbg !77
  call void @__kmpc_doacross_wait(%struct.ident_t* %.kmpc_loc.addr, i32 %12, i64* %47), !dbg !77
  %48 = load i32, i32* %i, align 4, !dbg !82, !tbaa !55
  %49 = load i32, i32* %j, align 4, !dbg !83, !tbaa !55
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %48, i32 %49), !dbg !84
  %50 = load i32, i32* %i, align 4, !dbg !74, !tbaa !55
  %sub24 = sub nsw i32 %50, 0, !dbg !76
  %div25 = sdiv i32 %sub24, 1, !dbg !76
  %conv26 = sext i32 %div25 to i64, !dbg !85
  %51 = getelementptr inbounds [2 x i64], [2 x i64]* %.cnt.addr23, i64 0, i64 0, !dbg !85
  store i64 %conv26, i64* %51, align 8, !dbg !85, !tbaa !78
  %52 = load i32, i32* %j, align 4, !dbg !79, !tbaa !55
  %sub27 = sub nsw i32 %52, 0, !dbg !80
  %div28 = sdiv i32 %sub27, 1, !dbg !80
  %conv29 = sext i32 %div28 to i64, !dbg !85
  %53 = getelementptr inbounds [2 x i64], [2 x i64]* %.cnt.addr23, i64 0, i64 1, !dbg !85
  store i64 %conv29, i64* %53, align 8, !dbg !85, !tbaa !78
  %54 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !85
  store i8* getelementptr inbounds ([72 x i8], [72 x i8]* @5, i32 0, i32 0), i8** %54, align 8, !dbg !85, !tbaa !24
  %55 = getelementptr inbounds [2 x i64], [2 x i64]* %.cnt.addr23, i64 0, i64 0, !dbg !85
  call void @__kmpc_doacross_post(%struct.ident_t* %.kmpc_loc.addr, i32 %12, i64* %55), !dbg !85
  br label %for.inc, !dbg !86

for.inc:                                          ; preds = %for.body
  %56 = load i32, i32* %j, align 4, !dbg !87, !tbaa !55
  %inc = add nsw i32 %56, 1, !dbg !87
  store i32 %inc, i32* %j, align 4, !dbg !87, !tbaa !55
  br label %for.cond, !dbg !88, !llvm.loop !89

for.end:                                          ; preds = %for.cond
  br label %omp.body.continue, !dbg !90

omp.body.continue:                                ; preds = %for.end
  br label %omp.inner.for.inc, !dbg !91

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %57 = load i32, i32* %.omp.iv, align 4, !dbg !56, !tbaa !55
  %add30 = add nsw i32 %57, 1, !dbg !50
  store i32 %add30, i32* %.omp.iv, align 4, !dbg !50, !tbaa !55
  br label %omp.inner.for.cond, !dbg !91, !llvm.loop !92

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.dispatch.inc, !dbg !91

omp.dispatch.inc:                                 ; preds = %omp.inner.for.end
  %58 = load i32, i32* %.omp.lb, align 4, !dbg !56, !tbaa !55
  %59 = load i32, i32* %.omp.stride, align 4, !dbg !56, !tbaa !55
  %add31 = add nsw i32 %58, %59, !dbg !50
  store i32 %add31, i32* %.omp.lb, align 4, !dbg !50, !tbaa !55
  %60 = load i32, i32* %.omp.ub, align 4, !dbg !56, !tbaa !55
  %61 = load i32, i32* %.omp.stride, align 4, !dbg !56, !tbaa !55
  %add32 = add nsw i32 %60, %61, !dbg !50
  store i32 %add32, i32* %.omp.ub, align 4, !dbg !50, !tbaa !55
  br label %omp.dispatch.cond, !dbg !91, !llvm.loop !94

omp.dispatch.end:                                 ; preds = %omp.dispatch.cleanup
  %62 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !91
  store i8* getelementptr inbounds ([72 x i8], [72 x i8]* @2, i32 0, i32 0), i8** %62, align 8, !dbg !91, !tbaa !24
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %12), !dbg !91
  %63 = bitcast i32* %i to i8*, !dbg !91
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %63) #5, !dbg !91
  %64 = bitcast i32* %.omp.is_last to i8*, !dbg !91
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %64) #5, !dbg !91
  %65 = bitcast i32* %.omp.stride to i8*, !dbg !91
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %65) #5, !dbg !91
  %66 = bitcast i32* %.omp.ub to i8*, !dbg !91
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %66) #5, !dbg !91
  %67 = bitcast i32* %.omp.lb to i8*, !dbg !91
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %67) #5, !dbg !91
  call void @__kmpc_doacross_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %12), !dbg !91
  %68 = bitcast i32* %.omp.iv to i8*, !dbg !91
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %68) #5, !dbg !91
  ret void, !dbg !95
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local void @__kmpc_doacross_init(%struct.ident_t*, i32, i32, i8*)

declare dso_local void @__kmpc_doacross_fini(%struct.ident_t*, i32)

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare dso_local void @__kmpc_doacross_wait(%struct.ident_t*, i32, i64*)

declare dso_local i32 @printf(i8*, ...) #4

declare dso_local void @__kmpc_doacross_post(%struct.ident_t*, i32, i64*)

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid.) #3 !dbg !96 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !48
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !98, metadata !DIExpression()), !dbg !100
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !48
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !99, metadata !DIExpression()), !dbg !100
  %0 = load i32*, i32** %.global_tid..addr, align 8, !dbg !101, !tbaa !48
  %1 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !101, !tbaa !48
  call void @.omp_outlined._debug__(i32* %0, i32* %1) #5, !dbg !101
  ret void, !dbg !101
}

declare !callback !102 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!10, !11, !12}
!llvm.ident = !{!13}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "a", scope: !2, file: !3, line: 58, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "integration/dataracebench/DRB094-doall2-ordered-orig-no.c", directory: "/home/brad/Code/OpenRace/tests/data")
!4 = !{}
!5 = !{!0}
!6 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 320000, elements: !8)
!7 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!8 = !{!9, !9}
!9 = !DISubrange(count: 100)
!10 = !{i32 7, !"Dwarf Version", i32 4}
!11 = !{i32 2, !"Debug Info Version", i32 3}
!12 = !{i32 1, !"wchar_size", i32 4}
!13 = !{!"clang version 10.0.1 "}
!14 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 59, type: !15, scopeLine: 60, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !17)
!15 = !DISubroutineType(types: !16)
!16 = !{!7}
!17 = !{!18, !19}
!18 = !DILocalVariable(name: "i", scope: !14, file: !3, line: 61, type: !7)
!19 = !DILocalVariable(name: "j", scope: !14, file: !3, line: 61, type: !7)
!20 = !DILocation(line: 61, column: 3, scope: !14)
!21 = !DILocation(line: 61, column: 7, scope: !14)
!22 = !DILocation(line: 61, column: 10, scope: !14)
!23 = !DILocation(line: 62, column: 1, scope: !14)
!24 = !{!25, !29, i64 16}
!25 = !{!"ident_t", !26, i64 0, !26, i64 4, !26, i64 8, !26, i64 12, !29, i64 16}
!26 = !{!"int", !27, i64 0}
!27 = !{!"omnipotent char", !28, i64 0}
!28 = !{!"Simple C/C++ TBAA"}
!29 = !{!"any pointer", !27, i64 0}
!30 = !DILocation(line: 72, column: 1, scope: !14)
!31 = !DILocation(line: 71, column: 3, scope: !14)
!32 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !3, file: !3, line: 63, type: !33, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !39)
!33 = !DISubroutineType(types: !34)
!34 = !{null, !35, !35}
!35 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !36)
!36 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !37)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!39 = !{!40, !41, !42, !43, !44, !45, !46, !47}
!40 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !32, type: !35, flags: DIFlagArtificial)
!41 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !32, type: !35, flags: DIFlagArtificial)
!42 = !DILocalVariable(name: ".omp.iv", scope: !32, type: !7, flags: DIFlagArtificial)
!43 = !DILocalVariable(name: ".omp.lb", scope: !32, type: !7, flags: DIFlagArtificial)
!44 = !DILocalVariable(name: ".omp.ub", scope: !32, type: !7, flags: DIFlagArtificial)
!45 = !DILocalVariable(name: ".omp.stride", scope: !32, type: !7, flags: DIFlagArtificial)
!46 = !DILocalVariable(name: ".omp.is_last", scope: !32, type: !7, flags: DIFlagArtificial)
!47 = !DILocalVariable(name: "i", scope: !32, type: !7, flags: DIFlagArtificial)
!48 = !{!29, !29, i64 0}
!49 = !DILocation(line: 0, scope: !32)
!50 = !DILocation(line: 63, column: 3, scope: !32)
!51 = !{!52, !53, i64 8}
!52 = !{!"kmp_dim", !53, i64 0, !53, i64 8, !53, i64 16}
!53 = !{!"long", !27, i64 0}
!54 = !{!52, !53, i64 16}
!55 = !{!26, !26, i64 0}
!56 = !DILocation(line: 63, column: 8, scope: !32)
!57 = !DILocation(line: 63, column: 24, scope: !32)
!58 = !DILocation(line: 64, column: 12, scope: !59)
!59 = distinct !DILexicalBlock(scope: !32, file: !3, line: 64, column: 5)
!60 = !DILocation(line: 64, column: 10, scope: !59)
!61 = !DILocation(line: 64, column: 17, scope: !62)
!62 = distinct !DILexicalBlock(scope: !59, file: !3, line: 64, column: 5)
!63 = !DILocation(line: 64, column: 19, scope: !62)
!64 = !DILocation(line: 64, column: 5, scope: !59)
!65 = !DILocation(line: 66, column: 19, scope: !66)
!66 = distinct !DILexicalBlock(scope: !62, file: !3, line: 65, column: 5)
!67 = !DILocation(line: 66, column: 17, scope: !66)
!68 = !DILocation(line: 66, column: 22, scope: !66)
!69 = !DILocation(line: 66, column: 25, scope: !66)
!70 = !DILocation(line: 66, column: 9, scope: !66)
!71 = !DILocation(line: 66, column: 7, scope: !66)
!72 = !DILocation(line: 66, column: 12, scope: !66)
!73 = !DILocation(line: 66, column: 15, scope: !66)
!74 = !DILocation(line: 63, column: 8, scope: !66)
!75 = !DILocation(line: 67, column: 28, scope: !66)
!76 = !DILocation(line: 63, column: 3, scope: !66)
!77 = !DILocation(line: 67, column: 1, scope: !66)
!78 = !{!53, !53, i64 0}
!79 = !DILocation(line: 64, column: 10, scope: !66)
!80 = !DILocation(line: 64, column: 5, scope: !66)
!81 = !DILocation(line: 67, column: 48, scope: !66)
!82 = !DILocation(line: 68, column: 34, scope: !66)
!83 = !DILocation(line: 68, column: 36, scope: !66)
!84 = !DILocation(line: 68, column: 7, scope: !66)
!85 = !DILocation(line: 69, column: 1, scope: !66)
!86 = !DILocation(line: 70, column: 5, scope: !66)
!87 = !DILocation(line: 64, column: 27, scope: !62)
!88 = !DILocation(line: 64, column: 5, scope: !62)
!89 = distinct !{!89, !64, !90}
!90 = !DILocation(line: 70, column: 5, scope: !59)
!91 = !DILocation(line: 62, column: 1, scope: !32)
!92 = distinct !{!92, !91, !93}
!93 = !DILocation(line: 62, column: 36, scope: !32)
!94 = distinct !{!94, !91, !93}
!95 = !DILocation(line: 70, column: 5, scope: !32)
!96 = distinct !DISubprogram(name: ".omp_outlined.", scope: !3, file: !3, line: 63, type: !33, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !97)
!97 = !{!98, !99}
!98 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !96, type: !35, flags: DIFlagArtificial)
!99 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !96, type: !35, flags: DIFlagArtificial)
!100 = !DILocation(line: 0, scope: !96)
!101 = !DILocation(line: 63, column: 3, scope: !96)
!102 = !{!103}
!103 = !{i64 2, i64 -1, i64 -1, i1 true}
