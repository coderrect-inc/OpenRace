; ModuleID = 'DRB094-doall2-ordered-orig-no.c'
source_filename = "DRB094-doall2-ordered-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }
%struct.kmp_dim = type { i64, i64, i64 }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [45 x i8] c";DRB094-doall2-ordered-orig-no.c;main;62;1;;\00", align 1
@2 = private unnamed_addr constant [46 x i8] c";DRB094-doall2-ordered-orig-no.c;main;62;36;;\00", align 1
@a = common dso_local global [100 x [100 x i32]] zeroinitializer, align 16, !dbg !0
@3 = private unnamed_addr constant [46 x i8] c";DRB094-doall2-ordered-orig-no.c;main;67;21;;\00", align 1
@4 = private unnamed_addr constant [46 x i8] c";DRB094-doall2-ordered-orig-no.c;main;67;40;;\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"test i=%d j=%d\0A\00", align 1
@5 = private unnamed_addr constant [46 x i8] c";DRB094-doall2-ordered-orig-no.c;main;69;21;;\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
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
  call void @llvm.dbg.declare(metadata i32* %i, metadata !17, metadata !DIExpression()), !dbg !18
  call void @llvm.dbg.declare(metadata i32* %j, metadata !19, metadata !DIExpression()), !dbg !20
  %2 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !21
  store i8* getelementptr inbounds ([45 x i8], [45 x i8]* @1, i32 0, i32 0), i8** %2, align 8, !dbg !21
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 0, void (i32*, i32*, ...)* bitcast (void (i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*)), !dbg !21
  ret i32 0, !dbg !22
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid.) #2 !dbg !23 {
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
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !30, metadata !DIExpression()), !dbg !31
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !32, metadata !DIExpression()), !dbg !31
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !33, metadata !DIExpression()), !dbg !31
  %2 = bitcast [2 x %struct.kmp_dim]* %dims to i8*, !dbg !34
  call void @llvm.memset.p0i8.i64(i8* align 8 %2, i8 0, i64 48, i1 false), !dbg !34
  %3 = getelementptr inbounds [2 x %struct.kmp_dim], [2 x %struct.kmp_dim]* %dims, i64 0, i64 0, !dbg !34
  %4 = getelementptr inbounds %struct.kmp_dim, %struct.kmp_dim* %3, i32 0, i32 1, !dbg !34
  store i64 100, i64* %4, align 8, !dbg !34
  %5 = getelementptr inbounds %struct.kmp_dim, %struct.kmp_dim* %3, i32 0, i32 2, !dbg !34
  store i64 1, i64* %5, align 8, !dbg !34
  %6 = getelementptr inbounds [2 x %struct.kmp_dim], [2 x %struct.kmp_dim]* %dims, i64 0, i64 1, !dbg !34
  %7 = getelementptr inbounds %struct.kmp_dim, %struct.kmp_dim* %6, i32 0, i32 1, !dbg !34
  store i64 100, i64* %7, align 8, !dbg !34
  %8 = getelementptr inbounds %struct.kmp_dim, %struct.kmp_dim* %6, i32 0, i32 2, !dbg !34
  store i64 1, i64* %8, align 8, !dbg !34
  %9 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !34
  store i8* getelementptr inbounds ([45 x i8], [45 x i8]* @1, i32 0, i32 0), i8** %9, align 8, !dbg !34
  %10 = load i32*, i32** %.global_tid..addr, align 8, !dbg !34
  %11 = load i32, i32* %10, align 4, !dbg !34
  %12 = getelementptr inbounds [2 x %struct.kmp_dim], [2 x %struct.kmp_dim]* %dims, i64 0, i64 0, !dbg !34
  %13 = bitcast %struct.kmp_dim* %12 to i8*, !dbg !34
  call void @__kmpc_doacross_init(%struct.ident_t* %.kmpc_loc.addr, i32 %11, i32 2, i8* %13), !dbg !34
  %14 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !34
  store i8* getelementptr inbounds ([46 x i8], [46 x i8]* @2, i32 0, i32 0), i8** %14, align 8, !dbg !34
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !35, metadata !DIExpression()), !dbg !31
  store i32 0, i32* %.omp.lb, align 4, !dbg !36
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !37, metadata !DIExpression()), !dbg !31
  store i32 99, i32* %.omp.ub, align 4, !dbg !36
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !38, metadata !DIExpression()), !dbg !31
  store i32 1, i32* %.omp.stride, align 4, !dbg !36
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !39, metadata !DIExpression()), !dbg !31
  store i32 0, i32* %.omp.is_last, align 4, !dbg !36
  call void @llvm.dbg.declare(metadata i32* %i, metadata !40, metadata !DIExpression()), !dbg !31
  %15 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !34
  store i8* getelementptr inbounds ([45 x i8], [45 x i8]* @1, i32 0, i32 0), i8** %15, align 8, !dbg !34
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %11, i32 33, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !34
  br label %omp.dispatch.cond, !dbg !34

omp.dispatch.cond:                                ; preds = %omp.dispatch.inc, %entry
  %16 = load i32, i32* %.omp.ub, align 4, !dbg !36
  %cmp = icmp sgt i32 %16, 99, !dbg !36
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !36

cond.true:                                        ; preds = %omp.dispatch.cond
  br label %cond.end, !dbg !36

cond.false:                                       ; preds = %omp.dispatch.cond
  %17 = load i32, i32* %.omp.ub, align 4, !dbg !36
  br label %cond.end, !dbg !36

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 99, %cond.true ], [ %17, %cond.false ], !dbg !36
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !36
  %18 = load i32, i32* %.omp.lb, align 4, !dbg !36
  store i32 %18, i32* %.omp.iv, align 4, !dbg !36
  %19 = load i32, i32* %.omp.iv, align 4, !dbg !36
  %20 = load i32, i32* %.omp.ub, align 4, !dbg !36
  %cmp1 = icmp sle i32 %19, %20, !dbg !34
  br i1 %cmp1, label %omp.dispatch.body, label %omp.dispatch.end, !dbg !34

omp.dispatch.body:                                ; preds = %cond.end
  br label %omp.inner.for.cond, !dbg !34

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %omp.dispatch.body
  %21 = load i32, i32* %.omp.iv, align 4, !dbg !36
  %22 = load i32, i32* %.omp.ub, align 4, !dbg !36
  %cmp2 = icmp sle i32 %21, %22, !dbg !34
  br i1 %cmp2, label %omp.inner.for.body, label %omp.inner.for.end, !dbg !34

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %23 = load i32, i32* %.omp.iv, align 4, !dbg !36
  %mul = mul nsw i32 %23, 1, !dbg !41
  %add = add nsw i32 0, %mul, !dbg !41
  store i32 %add, i32* %i, align 4, !dbg !41
  store i32 0, i32* %j, align 4, !dbg !42
  br label %for.cond, !dbg !44

for.cond:                                         ; preds = %for.inc, %omp.inner.for.body
  %24 = load i32, i32* %j, align 4, !dbg !45
  %cmp3 = icmp slt i32 %24, 100, !dbg !47
  br i1 %cmp3, label %for.body, label %for.end, !dbg !48

for.body:                                         ; preds = %for.cond
  %25 = load i32, i32* %i, align 4, !dbg !49
  %idxprom = sext i32 %25 to i64, !dbg !51
  %arrayidx = getelementptr inbounds [100 x [100 x i32]], [100 x [100 x i32]]* @a, i64 0, i64 %idxprom, !dbg !51
  %26 = load i32, i32* %j, align 4, !dbg !52
  %idxprom4 = sext i32 %26 to i64, !dbg !51
  %arrayidx5 = getelementptr inbounds [100 x i32], [100 x i32]* %arrayidx, i64 0, i64 %idxprom4, !dbg !51
  %27 = load i32, i32* %arrayidx5, align 4, !dbg !51
  %add6 = add nsw i32 %27, 1, !dbg !53
  %28 = load i32, i32* %i, align 4, !dbg !54
  %idxprom7 = sext i32 %28 to i64, !dbg !55
  %arrayidx8 = getelementptr inbounds [100 x [100 x i32]], [100 x [100 x i32]]* @a, i64 0, i64 %idxprom7, !dbg !55
  %29 = load i32, i32* %j, align 4, !dbg !56
  %idxprom9 = sext i32 %29 to i64, !dbg !55
  %arrayidx10 = getelementptr inbounds [100 x i32], [100 x i32]* %arrayidx8, i64 0, i64 %idxprom9, !dbg !55
  store i32 %add6, i32* %arrayidx10, align 4, !dbg !57
  %30 = load i32, i32* %i, align 4, !dbg !58
  %sub = sub nsw i32 %30, 1, !dbg !59
  %sub11 = sub nsw i32 %sub, 0, !dbg !60
  %div = sdiv i32 %sub11, 1, !dbg !60
  %conv = sext i32 %div to i64, !dbg !61
  %31 = getelementptr inbounds [2 x i64], [2 x i64]* %.cnt.addr, i64 0, i64 0, !dbg !61
  store i64 %conv, i64* %31, align 8, !dbg !61
  %32 = load i32, i32* %j, align 4, !dbg !62
  %sub12 = sub nsw i32 %32, 0, !dbg !63
  %div13 = sdiv i32 %sub12, 1, !dbg !63
  %conv14 = sext i32 %div13 to i64, !dbg !61
  %33 = getelementptr inbounds [2 x i64], [2 x i64]* %.cnt.addr, i64 0, i64 1, !dbg !61
  store i64 %conv14, i64* %33, align 8, !dbg !61
  %34 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !61
  store i8* getelementptr inbounds ([46 x i8], [46 x i8]* @3, i32 0, i32 0), i8** %34, align 8, !dbg !61
  %35 = getelementptr inbounds [2 x i64], [2 x i64]* %.cnt.addr, i64 0, i64 0, !dbg !61
  call void @__kmpc_doacross_wait(%struct.ident_t* %.kmpc_loc.addr, i32 %11, i64* %35), !dbg !61
  %36 = load i32, i32* %i, align 4, !dbg !58
  %sub16 = sub nsw i32 %36, 0, !dbg !60
  %div17 = sdiv i32 %sub16, 1, !dbg !60
  %conv18 = sext i32 %div17 to i64, !dbg !61
  %37 = getelementptr inbounds [2 x i64], [2 x i64]* %.cnt.addr15, i64 0, i64 0, !dbg !61
  store i64 %conv18, i64* %37, align 8, !dbg !61
  %38 = load i32, i32* %j, align 4, !dbg !62
  %sub19 = sub nsw i32 %38, 1, !dbg !64
  %sub20 = sub nsw i32 %sub19, 0, !dbg !63
  %div21 = sdiv i32 %sub20, 1, !dbg !63
  %conv22 = sext i32 %div21 to i64, !dbg !61
  %39 = getelementptr inbounds [2 x i64], [2 x i64]* %.cnt.addr15, i64 0, i64 1, !dbg !61
  store i64 %conv22, i64* %39, align 8, !dbg !61
  %40 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !61
  store i8* getelementptr inbounds ([46 x i8], [46 x i8]* @4, i32 0, i32 0), i8** %40, align 8, !dbg !61
  %41 = getelementptr inbounds [2 x i64], [2 x i64]* %.cnt.addr15, i64 0, i64 0, !dbg !61
  call void @__kmpc_doacross_wait(%struct.ident_t* %.kmpc_loc.addr, i32 %11, i64* %41), !dbg !61
  %42 = load i32, i32* %i, align 4, !dbg !65
  %43 = load i32, i32* %j, align 4, !dbg !66
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %42, i32 %43), !dbg !67
  %44 = load i32, i32* %i, align 4, !dbg !58
  %sub24 = sub nsw i32 %44, 0, !dbg !60
  %div25 = sdiv i32 %sub24, 1, !dbg !60
  %conv26 = sext i32 %div25 to i64, !dbg !68
  %45 = getelementptr inbounds [2 x i64], [2 x i64]* %.cnt.addr23, i64 0, i64 0, !dbg !68
  store i64 %conv26, i64* %45, align 8, !dbg !68
  %46 = load i32, i32* %j, align 4, !dbg !62
  %sub27 = sub nsw i32 %46, 0, !dbg !63
  %div28 = sdiv i32 %sub27, 1, !dbg !63
  %conv29 = sext i32 %div28 to i64, !dbg !68
  %47 = getelementptr inbounds [2 x i64], [2 x i64]* %.cnt.addr23, i64 0, i64 1, !dbg !68
  store i64 %conv29, i64* %47, align 8, !dbg !68
  %48 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !68
  store i8* getelementptr inbounds ([46 x i8], [46 x i8]* @5, i32 0, i32 0), i8** %48, align 8, !dbg !68
  %49 = getelementptr inbounds [2 x i64], [2 x i64]* %.cnt.addr23, i64 0, i64 0, !dbg !68
  call void @__kmpc_doacross_post(%struct.ident_t* %.kmpc_loc.addr, i32 %11, i64* %49), !dbg !68
  br label %for.inc, !dbg !69

for.inc:                                          ; preds = %for.body
  %50 = load i32, i32* %j, align 4, !dbg !70
  %inc = add nsw i32 %50, 1, !dbg !70
  store i32 %inc, i32* %j, align 4, !dbg !70
  br label %for.cond, !dbg !71, !llvm.loop !72

for.end:                                          ; preds = %for.cond
  br label %omp.body.continue, !dbg !73

omp.body.continue:                                ; preds = %for.end
  br label %omp.inner.for.inc, !dbg !74

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %51 = load i32, i32* %.omp.iv, align 4, !dbg !36
  %add30 = add nsw i32 %51, 1, !dbg !34
  store i32 %add30, i32* %.omp.iv, align 4, !dbg !34
  br label %omp.inner.for.cond, !dbg !74, !llvm.loop !75

omp.inner.for.end:                                ; preds = %omp.inner.for.cond
  br label %omp.dispatch.inc, !dbg !74

omp.dispatch.inc:                                 ; preds = %omp.inner.for.end
  %52 = load i32, i32* %.omp.lb, align 4, !dbg !36
  %53 = load i32, i32* %.omp.stride, align 4, !dbg !36
  %add31 = add nsw i32 %52, %53, !dbg !34
  store i32 %add31, i32* %.omp.lb, align 4, !dbg !34
  %54 = load i32, i32* %.omp.ub, align 4, !dbg !36
  %55 = load i32, i32* %.omp.stride, align 4, !dbg !36
  %add32 = add nsw i32 %54, %55, !dbg !34
  store i32 %add32, i32* %.omp.ub, align 4, !dbg !34
  br label %omp.dispatch.cond, !dbg !74, !llvm.loop !77

omp.dispatch.end:                                 ; preds = %cond.end
  %56 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !74
  store i8* getelementptr inbounds ([46 x i8], [46 x i8]* @2, i32 0, i32 0), i8** %56, align 8, !dbg !74
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %11), !dbg !74
  call void @__kmpc_doacross_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %11), !dbg !74
  ret void, !dbg !78
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local void @__kmpc_doacross_init(%struct.ident_t*, i32, i32, i8*)

declare dso_local void @__kmpc_doacross_fini(%struct.ident_t*, i32)

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare dso_local void @__kmpc_doacross_wait(%struct.ident_t*, i32, i64*)

declare dso_local i32 @printf(i8*, ...) #4

declare dso_local void @__kmpc_doacross_post(%struct.ident_t*, i32, i64*)

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid.) #2 !dbg !79 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !80, metadata !DIExpression()), !dbg !81
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !82, metadata !DIExpression()), !dbg !81
  %0 = load i32*, i32** %.global_tid..addr, align 8, !dbg !83
  %1 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !83
  call void @.omp_outlined._debug__(i32* %0, i32* %1) #5, !dbg !83
  ret void, !dbg !83
}

declare !callback !84 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noinline norecurse nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!10, !11, !12}
!llvm.ident = !{!13}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "a", scope: !2, file: !3, line: 58, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.1 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "DRB094-doall2-ordered-orig-no.c", directory: "/home/yanze/code/OpenRace/tests/data/integration/dataracebench")
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
!14 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 59, type: !15, scopeLine: 60, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!15 = !DISubroutineType(types: !16)
!16 = !{!7}
!17 = !DILocalVariable(name: "i", scope: !14, file: !3, line: 61, type: !7)
!18 = !DILocation(line: 61, column: 7, scope: !14)
!19 = !DILocalVariable(name: "j", scope: !14, file: !3, line: 61, type: !7)
!20 = !DILocation(line: 61, column: 10, scope: !14)
!21 = !DILocation(line: 62, column: 1, scope: !14)
!22 = !DILocation(line: 71, column: 3, scope: !14)
!23 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !3, file: !3, line: 63, type: !24, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!24 = !DISubroutineType(types: !25)
!25 = !{null, !26, !26}
!26 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !27)
!27 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !28)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!30 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !23, type: !26, flags: DIFlagArtificial)
!31 = !DILocation(line: 0, scope: !23)
!32 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !23, type: !26, flags: DIFlagArtificial)
!33 = !DILocalVariable(name: ".omp.iv", scope: !23, type: !7, flags: DIFlagArtificial)
!34 = !DILocation(line: 63, column: 3, scope: !23)
!35 = !DILocalVariable(name: ".omp.lb", scope: !23, type: !7, flags: DIFlagArtificial)
!36 = !DILocation(line: 63, column: 8, scope: !23)
!37 = !DILocalVariable(name: ".omp.ub", scope: !23, type: !7, flags: DIFlagArtificial)
!38 = !DILocalVariable(name: ".omp.stride", scope: !23, type: !7, flags: DIFlagArtificial)
!39 = !DILocalVariable(name: ".omp.is_last", scope: !23, type: !7, flags: DIFlagArtificial)
!40 = !DILocalVariable(name: "i", scope: !23, type: !7, flags: DIFlagArtificial)
!41 = !DILocation(line: 63, column: 24, scope: !23)
!42 = !DILocation(line: 64, column: 12, scope: !43)
!43 = distinct !DILexicalBlock(scope: !23, file: !3, line: 64, column: 5)
!44 = !DILocation(line: 64, column: 10, scope: !43)
!45 = !DILocation(line: 64, column: 17, scope: !46)
!46 = distinct !DILexicalBlock(scope: !43, file: !3, line: 64, column: 5)
!47 = !DILocation(line: 64, column: 19, scope: !46)
!48 = !DILocation(line: 64, column: 5, scope: !43)
!49 = !DILocation(line: 66, column: 19, scope: !50)
!50 = distinct !DILexicalBlock(scope: !46, file: !3, line: 65, column: 5)
!51 = !DILocation(line: 66, column: 17, scope: !50)
!52 = !DILocation(line: 66, column: 22, scope: !50)
!53 = !DILocation(line: 66, column: 25, scope: !50)
!54 = !DILocation(line: 66, column: 9, scope: !50)
!55 = !DILocation(line: 66, column: 7, scope: !50)
!56 = !DILocation(line: 66, column: 12, scope: !50)
!57 = !DILocation(line: 66, column: 15, scope: !50)
!58 = !DILocation(line: 63, column: 8, scope: !50)
!59 = !DILocation(line: 67, column: 28, scope: !50)
!60 = !DILocation(line: 63, column: 3, scope: !50)
!61 = !DILocation(line: 67, column: 1, scope: !50)
!62 = !DILocation(line: 64, column: 10, scope: !50)
!63 = !DILocation(line: 64, column: 5, scope: !50)
!64 = !DILocation(line: 67, column: 48, scope: !50)
!65 = !DILocation(line: 68, column: 34, scope: !50)
!66 = !DILocation(line: 68, column: 36, scope: !50)
!67 = !DILocation(line: 68, column: 7, scope: !50)
!68 = !DILocation(line: 69, column: 1, scope: !50)
!69 = !DILocation(line: 70, column: 5, scope: !50)
!70 = !DILocation(line: 64, column: 27, scope: !46)
!71 = !DILocation(line: 64, column: 5, scope: !46)
!72 = distinct !{!72, !48, !73}
!73 = !DILocation(line: 70, column: 5, scope: !43)
!74 = !DILocation(line: 62, column: 1, scope: !23)
!75 = distinct !{!75, !74, !76}
!76 = !DILocation(line: 62, column: 36, scope: !23)
!77 = distinct !{!77, !74, !76}
!78 = !DILocation(line: 70, column: 5, scope: !23)
!79 = distinct !DISubprogram(name: ".omp_outlined.", scope: !3, file: !3, line: 63, type: !24, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!80 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !79, type: !26, flags: DIFlagArtificial)
!81 = !DILocation(line: 0, scope: !79)
!82 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !79, type: !26, flags: DIFlagArtificial)
!83 = !DILocation(line: 63, column: 3, scope: !79)
!84 = !{!85}
!85 = !{i64 2, i64 -1, i64 -1, i1 true}
