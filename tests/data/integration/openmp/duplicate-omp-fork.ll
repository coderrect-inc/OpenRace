; ModuleID = 'integration/openmp/duplicate-omp-fork.c'
source_filename = "integration/openmp/duplicate-omp-fork.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [53 x i8] c";integration/openmp/duplicate-omp-fork.c;main;11;5;;\00", align 1
@2 = private unnamed_addr constant [54 x i8] c";integration/openmp/duplicate-omp-fork.c;main;11;29;;\00", align 1
@3 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@4 = private unnamed_addr constant [53 x i8] c";integration/openmp/duplicate-omp-fork.c;main;16;5;;\00", align 1
@5 = private unnamed_addr constant [54 x i8] c";integration/openmp/duplicate-omp-fork.c;main;16;29;;\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%d\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main() #0 !dbg !7 {
entry:
  %N = alloca i32, align 4
  %A = alloca [1000 x i32], align 16
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  %2 = bitcast i32* %N to i8*, !dbg !18
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #5, !dbg !18
  call void @llvm.dbg.declare(metadata i32* %N, metadata !12, metadata !DIExpression()), !dbg !19
  store i32 1000, i32* %N, align 4, !dbg !19, !tbaa !20
  %3 = bitcast [1000 x i32]* %A to i8*, !dbg !24
  call void @llvm.lifetime.start.p0i8(i64 4000, i8* %3) #5, !dbg !24
  call void @llvm.dbg.declare(metadata [1000 x i32]* %A, metadata !14, metadata !DIExpression()), !dbg !25
  %4 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !26
  store i8* getelementptr inbounds ([53 x i8], [53 x i8]* @1, i32 0, i32 0), i8** %4, align 8, !dbg !26, !tbaa !27
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 2, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, [1000 x i32]*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %N, [1000 x i32]* %A), !dbg !26
  %5 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !30
  store i8* getelementptr inbounds ([53 x i8], [53 x i8]* @4, i32 0, i32 0), i8** %5, align 8, !dbg !30, !tbaa !27
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 2, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, [1000 x i32]*)* @.omp_outlined..2 to void (i32*, i32*, ...)*), i32* %N, [1000 x i32]* %A), !dbg !30
  %arrayidx = getelementptr inbounds [1000 x i32], [1000 x i32]* %A, i64 0, i64 0, !dbg !31
  %6 = load i32, i32* %arrayidx, align 16, !dbg !31, !tbaa !20
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %6), !dbg !32
  %7 = bitcast [1000 x i32]* %A to i8*, !dbg !33
  call void @llvm.lifetime.end.p0i8(i64 4000, i8* %7) #5, !dbg !33
  %8 = bitcast i32* %N to i8*, !dbg !33
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %8) #5, !dbg !33
  ret i32 0, !dbg !33
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %N, [1000 x i32]* dereferenceable(4000) %A) #3 !dbg !34 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %N.addr = alloca i32*, align 8
  %A.addr = alloca [1000 x i32]*, align 8
  %.omp.iv = alloca i32, align 4
  %tmp = alloca i32, align 4
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %i = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !53
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !43, metadata !DIExpression()), !dbg !54
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !53
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !44, metadata !DIExpression()), !dbg !54
  store i32* %N, i32** %N.addr, align 8, !tbaa !53
  call void @llvm.dbg.declare(metadata i32** %N.addr, metadata !45, metadata !DIExpression()), !dbg !55
  store [1000 x i32]* %A, [1000 x i32]** %A.addr, align 8, !tbaa !53
  call void @llvm.dbg.declare(metadata [1000 x i32]** %A.addr, metadata !46, metadata !DIExpression()), !dbg !56
  %2 = load i32*, i32** %N.addr, align 8, !dbg !57, !tbaa !53
  %3 = load [1000 x i32]*, [1000 x i32]** %A.addr, align 8, !dbg !57, !tbaa !53
  %4 = bitcast i32* %.omp.iv to i8*, !dbg !57
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #5, !dbg !57
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !47, metadata !DIExpression()), !dbg !54
  %5 = bitcast i32* %.omp.lb to i8*, !dbg !57
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #5, !dbg !57
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !48, metadata !DIExpression()), !dbg !54
  store i32 0, i32* %.omp.lb, align 4, !dbg !58, !tbaa !20
  %6 = bitcast i32* %.omp.ub to i8*, !dbg !57
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #5, !dbg !57
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !49, metadata !DIExpression()), !dbg !54
  store i32 999, i32* %.omp.ub, align 4, !dbg !58, !tbaa !20
  %7 = bitcast i32* %.omp.stride to i8*, !dbg !57
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #5, !dbg !57
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !50, metadata !DIExpression()), !dbg !54
  store i32 1, i32* %.omp.stride, align 4, !dbg !58, !tbaa !20
  %8 = bitcast i32* %.omp.is_last to i8*, !dbg !57
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #5, !dbg !57
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !51, metadata !DIExpression()), !dbg !54
  store i32 0, i32* %.omp.is_last, align 4, !dbg !58, !tbaa !20
  %9 = bitcast i32* %i to i8*, !dbg !57
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #5, !dbg !57
  call void @llvm.dbg.declare(metadata i32* %i, metadata !52, metadata !DIExpression()), !dbg !54
  %10 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !57
  store i8* getelementptr inbounds ([53 x i8], [53 x i8]* @1, i32 0, i32 0), i8** %10, align 8, !dbg !57, !tbaa !27
  %11 = load i32*, i32** %.global_tid..addr, align 8, !dbg !57
  %12 = load i32, i32* %11, align 4, !dbg !57, !tbaa !20
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %12, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !57
  %13 = load i32, i32* %.omp.ub, align 4, !dbg !58, !tbaa !20
  %cmp = icmp sgt i32 %13, 999, !dbg !58
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !58

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !58

cond.false:                                       ; preds = %entry
  %14 = load i32, i32* %.omp.ub, align 4, !dbg !58, !tbaa !20
  br label %cond.end, !dbg !58

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 999, %cond.true ], [ %14, %cond.false ], !dbg !58
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !58, !tbaa !20
  %15 = load i32, i32* %.omp.lb, align 4, !dbg !58, !tbaa !20
  store i32 %15, i32* %.omp.iv, align 4, !dbg !58, !tbaa !20
  br label %omp.inner.for.cond, !dbg !57

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %16 = load i32, i32* %.omp.iv, align 4, !dbg !58, !tbaa !20
  %17 = load i32, i32* %.omp.ub, align 4, !dbg !58, !tbaa !20
  %cmp1 = icmp sle i32 %16, %17, !dbg !57
  br i1 %cmp1, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !57

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !57

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %18 = load i32, i32* %.omp.iv, align 4, !dbg !58, !tbaa !20
  %mul = mul nsw i32 %18, 1, !dbg !59
  %add = add nsw i32 0, %mul, !dbg !59
  store i32 %add, i32* %i, align 4, !dbg !59, !tbaa !20
  %19 = load i32, i32* %i, align 4, !dbg !60, !tbaa !20
  %20 = load i32, i32* %i, align 4, !dbg !62, !tbaa !20
  %idxprom = sext i32 %20 to i64, !dbg !63
  %arrayidx = getelementptr inbounds [1000 x i32], [1000 x i32]* %3, i64 0, i64 %idxprom, !dbg !63
  store i32 %19, i32* %arrayidx, align 4, !dbg !64, !tbaa !20
  br label %omp.body.continue, !dbg !65

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !66

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %21 = load i32, i32* %.omp.iv, align 4, !dbg !58, !tbaa !20
  %add2 = add nsw i32 %21, 1, !dbg !57
  store i32 %add2, i32* %.omp.iv, align 4, !dbg !57, !tbaa !20
  br label %omp.inner.for.cond, !dbg !66, !llvm.loop !67

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !66

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %22 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !66
  store i8* getelementptr inbounds ([54 x i8], [54 x i8]* @2, i32 0, i32 0), i8** %22, align 8, !dbg !66, !tbaa !27
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %12), !dbg !66
  %23 = bitcast i32* %i to i8*, !dbg !66
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %23) #5, !dbg !66
  %24 = bitcast i32* %.omp.is_last to i8*, !dbg !66
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %24) #5, !dbg !66
  %25 = bitcast i32* %.omp.stride to i8*, !dbg !66
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %25) #5, !dbg !66
  %26 = bitcast i32* %.omp.ub to i8*, !dbg !66
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %26) #5, !dbg !66
  %27 = bitcast i32* %.omp.lb to i8*, !dbg !66
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %27) #5, !dbg !66
  %28 = bitcast i32* %.omp.iv to i8*, !dbg !66
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %28) #5, !dbg !66
  ret void, !dbg !69
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %N, [1000 x i32]* dereferenceable(4000) %A) #3 !dbg !70 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %N.addr = alloca i32*, align 8
  %A.addr = alloca [1000 x i32]*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !53
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !72, metadata !DIExpression()), !dbg !76
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !53
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !73, metadata !DIExpression()), !dbg !76
  store i32* %N, i32** %N.addr, align 8, !tbaa !53
  call void @llvm.dbg.declare(metadata i32** %N.addr, metadata !74, metadata !DIExpression()), !dbg !76
  store [1000 x i32]* %A, [1000 x i32]** %A.addr, align 8, !tbaa !53
  call void @llvm.dbg.declare(metadata [1000 x i32]** %A.addr, metadata !75, metadata !DIExpression()), !dbg !76
  %0 = load i32*, i32** %N.addr, align 8, !dbg !77, !tbaa !53
  %1 = load [1000 x i32]*, [1000 x i32]** %A.addr, align 8, !dbg !77, !tbaa !53
  %2 = load i32*, i32** %.global_tid..addr, align 8, !dbg !77, !tbaa !53
  %3 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !77, !tbaa !53
  %4 = load i32*, i32** %N.addr, align 8, !dbg !77, !tbaa !53
  %5 = load [1000 x i32]*, [1000 x i32]** %A.addr, align 8, !dbg !77, !tbaa !53
  call void @.omp_outlined._debug__(i32* %2, i32* %3, i32* %4, [1000 x i32]* %5) #5, !dbg !77
  ret void, !dbg !77
}

declare !callback !78 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__.1(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %N, [1000 x i32]* dereferenceable(4000) %A) #3 !dbg !80 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %N.addr = alloca i32*, align 8
  %A.addr = alloca [1000 x i32]*, align 8
  %.omp.iv = alloca i32, align 4
  %tmp = alloca i32, align 4
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %i = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !53
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !82, metadata !DIExpression()), !dbg !92
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !53
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !83, metadata !DIExpression()), !dbg !92
  store i32* %N, i32** %N.addr, align 8, !tbaa !53
  call void @llvm.dbg.declare(metadata i32** %N.addr, metadata !84, metadata !DIExpression()), !dbg !93
  store [1000 x i32]* %A, [1000 x i32]** %A.addr, align 8, !tbaa !53
  call void @llvm.dbg.declare(metadata [1000 x i32]** %A.addr, metadata !85, metadata !DIExpression()), !dbg !94
  %2 = load i32*, i32** %N.addr, align 8, !dbg !95, !tbaa !53
  %3 = load [1000 x i32]*, [1000 x i32]** %A.addr, align 8, !dbg !95, !tbaa !53
  %4 = bitcast i32* %.omp.iv to i8*, !dbg !95
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #5, !dbg !95
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !86, metadata !DIExpression()), !dbg !92
  %5 = bitcast i32* %.omp.lb to i8*, !dbg !95
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #5, !dbg !95
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !87, metadata !DIExpression()), !dbg !92
  store i32 0, i32* %.omp.lb, align 4, !dbg !96, !tbaa !20
  %6 = bitcast i32* %.omp.ub to i8*, !dbg !95
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #5, !dbg !95
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !88, metadata !DIExpression()), !dbg !92
  store i32 999, i32* %.omp.ub, align 4, !dbg !96, !tbaa !20
  %7 = bitcast i32* %.omp.stride to i8*, !dbg !95
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #5, !dbg !95
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !89, metadata !DIExpression()), !dbg !92
  store i32 1, i32* %.omp.stride, align 4, !dbg !96, !tbaa !20
  %8 = bitcast i32* %.omp.is_last to i8*, !dbg !95
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #5, !dbg !95
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !90, metadata !DIExpression()), !dbg !92
  store i32 0, i32* %.omp.is_last, align 4, !dbg !96, !tbaa !20
  %9 = bitcast i32* %i to i8*, !dbg !95
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #5, !dbg !95
  call void @llvm.dbg.declare(metadata i32* %i, metadata !91, metadata !DIExpression()), !dbg !92
  %10 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !95
  store i8* getelementptr inbounds ([53 x i8], [53 x i8]* @4, i32 0, i32 0), i8** %10, align 8, !dbg !95, !tbaa !27
  %11 = load i32*, i32** %.global_tid..addr, align 8, !dbg !95
  %12 = load i32, i32* %11, align 4, !dbg !95, !tbaa !20
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %12, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !95
  %13 = load i32, i32* %.omp.ub, align 4, !dbg !96, !tbaa !20
  %cmp = icmp sgt i32 %13, 999, !dbg !96
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !96

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !96

cond.false:                                       ; preds = %entry
  %14 = load i32, i32* %.omp.ub, align 4, !dbg !96, !tbaa !20
  br label %cond.end, !dbg !96

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 999, %cond.true ], [ %14, %cond.false ], !dbg !96
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !96, !tbaa !20
  %15 = load i32, i32* %.omp.lb, align 4, !dbg !96, !tbaa !20
  store i32 %15, i32* %.omp.iv, align 4, !dbg !96, !tbaa !20
  br label %omp.inner.for.cond, !dbg !95

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %16 = load i32, i32* %.omp.iv, align 4, !dbg !96, !tbaa !20
  %17 = load i32, i32* %.omp.ub, align 4, !dbg !96, !tbaa !20
  %cmp1 = icmp sle i32 %16, %17, !dbg !95
  br i1 %cmp1, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !95

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !95

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %18 = load i32, i32* %.omp.iv, align 4, !dbg !96, !tbaa !20
  %mul = mul nsw i32 %18, 1, !dbg !97
  %add = add nsw i32 0, %mul, !dbg !97
  store i32 %add, i32* %i, align 4, !dbg !97, !tbaa !20
  %19 = load i32, i32* %i, align 4, !dbg !98, !tbaa !20
  %add2 = add nsw i32 %19, 1, !dbg !100
  %20 = load i32, i32* %i, align 4, !dbg !101, !tbaa !20
  %idxprom = sext i32 %20 to i64, !dbg !102
  %arrayidx = getelementptr inbounds [1000 x i32], [1000 x i32]* %3, i64 0, i64 %idxprom, !dbg !102
  %21 = load i32, i32* %arrayidx, align 4, !dbg !103, !tbaa !20
  %mul3 = mul nsw i32 %21, %add2, !dbg !103
  store i32 %mul3, i32* %arrayidx, align 4, !dbg !103, !tbaa !20
  br label %omp.body.continue, !dbg !104

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !105

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %22 = load i32, i32* %.omp.iv, align 4, !dbg !96, !tbaa !20
  %add4 = add nsw i32 %22, 1, !dbg !95
  store i32 %add4, i32* %.omp.iv, align 4, !dbg !95, !tbaa !20
  br label %omp.inner.for.cond, !dbg !105, !llvm.loop !106

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !105

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %23 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !105
  store i8* getelementptr inbounds ([54 x i8], [54 x i8]* @5, i32 0, i32 0), i8** %23, align 8, !dbg !105, !tbaa !27
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %12), !dbg !105
  %24 = bitcast i32* %i to i8*, !dbg !105
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %24) #5, !dbg !105
  %25 = bitcast i32* %.omp.is_last to i8*, !dbg !105
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %25) #5, !dbg !105
  %26 = bitcast i32* %.omp.stride to i8*, !dbg !105
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %26) #5, !dbg !105
  %27 = bitcast i32* %.omp.ub to i8*, !dbg !105
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %27) #5, !dbg !105
  %28 = bitcast i32* %.omp.lb to i8*, !dbg !105
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %28) #5, !dbg !105
  %29 = bitcast i32* %.omp.iv to i8*, !dbg !105
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %29) #5, !dbg !105
  ret void, !dbg !108
}

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined..2(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %N, [1000 x i32]* dereferenceable(4000) %A) #3 !dbg !109 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %N.addr = alloca i32*, align 8
  %A.addr = alloca [1000 x i32]*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !53
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !111, metadata !DIExpression()), !dbg !115
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !53
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !112, metadata !DIExpression()), !dbg !115
  store i32* %N, i32** %N.addr, align 8, !tbaa !53
  call void @llvm.dbg.declare(metadata i32** %N.addr, metadata !113, metadata !DIExpression()), !dbg !115
  store [1000 x i32]* %A, [1000 x i32]** %A.addr, align 8, !tbaa !53
  call void @llvm.dbg.declare(metadata [1000 x i32]** %A.addr, metadata !114, metadata !DIExpression()), !dbg !115
  %0 = load i32*, i32** %N.addr, align 8, !dbg !116, !tbaa !53
  %1 = load [1000 x i32]*, [1000 x i32]** %A.addr, align 8, !dbg !116, !tbaa !53
  %2 = load i32*, i32** %.global_tid..addr, align 8, !dbg !116, !tbaa !53
  %3 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !116, !tbaa !53
  %4 = load i32*, i32** %N.addr, align 8, !dbg !116, !tbaa !53
  %5 = load [1000 x i32]*, [1000 x i32]** %A.addr, align 8, !dbg !116, !tbaa !53
  call void @.omp_outlined._debug__.1(i32* %2, i32* %3, i32* %4, [1000 x i32]* %5) #5, !dbg !116
  ret void, !dbg !116
}

declare dso_local i32 @printf(i8*, ...) #4

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "integration/openmp/duplicate-omp-fork.c", directory: "/home/brad/Code/OpenRace/tests/data")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.1 "}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 7, type: !8, scopeLine: 7, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !11)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !{!12, !14}
!12 = !DILocalVariable(name: "N", scope: !7, file: !1, line: 8, type: !13)
!13 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!14 = !DILocalVariable(name: "A", scope: !7, file: !1, line: 9, type: !15)
!15 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 32000, elements: !16)
!16 = !{!17}
!17 = !DISubrange(count: 1000)
!18 = !DILocation(line: 8, column: 5, scope: !7)
!19 = !DILocation(line: 8, column: 15, scope: !7)
!20 = !{!21, !21, i64 0}
!21 = !{!"int", !22, i64 0}
!22 = !{!"omnipotent char", !23, i64 0}
!23 = !{!"Simple C/C++ TBAA"}
!24 = !DILocation(line: 9, column: 5, scope: !7)
!25 = !DILocation(line: 9, column: 9, scope: !7)
!26 = !DILocation(line: 11, column: 5, scope: !7)
!27 = !{!28, !29, i64 16}
!28 = !{!"ident_t", !21, i64 0, !21, i64 4, !21, i64 8, !21, i64 12, !29, i64 16}
!29 = !{!"any pointer", !22, i64 0}
!30 = !DILocation(line: 16, column: 5, scope: !7)
!31 = !DILocation(line: 21, column: 18, scope: !7)
!32 = !DILocation(line: 21, column: 5, scope: !7)
!33 = !DILocation(line: 22, column: 1, scope: !7)
!34 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 12, type: !35, scopeLine: 12, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !42)
!35 = !DISubroutineType(types: !36)
!36 = !{null, !37, !37, !40, !41}
!37 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!38 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !39)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!40 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !13, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !15, size: 64)
!42 = !{!43, !44, !45, !46, !47, !48, !49, !50, !51, !52}
!43 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !34, type: !37, flags: DIFlagArtificial)
!44 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !34, type: !37, flags: DIFlagArtificial)
!45 = !DILocalVariable(name: "N", arg: 3, scope: !34, file: !1, line: 8, type: !40)
!46 = !DILocalVariable(name: "A", arg: 4, scope: !34, file: !1, line: 9, type: !41)
!47 = !DILocalVariable(name: ".omp.iv", scope: !34, type: !10, flags: DIFlagArtificial)
!48 = !DILocalVariable(name: ".omp.lb", scope: !34, type: !10, flags: DIFlagArtificial)
!49 = !DILocalVariable(name: ".omp.ub", scope: !34, type: !10, flags: DIFlagArtificial)
!50 = !DILocalVariable(name: ".omp.stride", scope: !34, type: !10, flags: DIFlagArtificial)
!51 = !DILocalVariable(name: ".omp.is_last", scope: !34, type: !10, flags: DIFlagArtificial)
!52 = !DILocalVariable(name: "i", scope: !34, type: !10, flags: DIFlagArtificial)
!53 = !{!29, !29, i64 0}
!54 = !DILocation(line: 0, scope: !34)
!55 = !DILocation(line: 8, column: 15, scope: !34)
!56 = !DILocation(line: 9, column: 9, scope: !34)
!57 = !DILocation(line: 12, column: 5, scope: !34)
!58 = !DILocation(line: 12, column: 10, scope: !34)
!59 = !DILocation(line: 12, column: 29, scope: !34)
!60 = !DILocation(line: 13, column: 16, scope: !61)
!61 = distinct !DILexicalBlock(scope: !34, file: !1, line: 12, column: 34)
!62 = !DILocation(line: 13, column: 11, scope: !61)
!63 = !DILocation(line: 13, column: 9, scope: !61)
!64 = !DILocation(line: 13, column: 14, scope: !61)
!65 = !DILocation(line: 14, column: 5, scope: !61)
!66 = !DILocation(line: 11, column: 5, scope: !34)
!67 = distinct !{!67, !66, !68}
!68 = !DILocation(line: 11, column: 29, scope: !34)
!69 = !DILocation(line: 14, column: 5, scope: !34)
!70 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 12, type: !35, scopeLine: 12, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !71)
!71 = !{!72, !73, !74, !75}
!72 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !70, type: !37, flags: DIFlagArtificial)
!73 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !70, type: !37, flags: DIFlagArtificial)
!74 = !DILocalVariable(name: "N", arg: 3, scope: !70, type: !40, flags: DIFlagArtificial)
!75 = !DILocalVariable(name: "A", arg: 4, scope: !70, type: !41, flags: DIFlagArtificial)
!76 = !DILocation(line: 0, scope: !70)
!77 = !DILocation(line: 12, column: 5, scope: !70)
!78 = !{!79}
!79 = !{i64 2, i64 -1, i64 -1, i1 true}
!80 = distinct !DISubprogram(name: ".omp_outlined._debug__.1", scope: !1, file: !1, line: 17, type: !35, scopeLine: 17, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !81)
!81 = !{!82, !83, !84, !85, !86, !87, !88, !89, !90, !91}
!82 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !80, type: !37, flags: DIFlagArtificial)
!83 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !80, type: !37, flags: DIFlagArtificial)
!84 = !DILocalVariable(name: "N", arg: 3, scope: !80, file: !1, line: 8, type: !40)
!85 = !DILocalVariable(name: "A", arg: 4, scope: !80, file: !1, line: 9, type: !41)
!86 = !DILocalVariable(name: ".omp.iv", scope: !80, type: !10, flags: DIFlagArtificial)
!87 = !DILocalVariable(name: ".omp.lb", scope: !80, type: !10, flags: DIFlagArtificial)
!88 = !DILocalVariable(name: ".omp.ub", scope: !80, type: !10, flags: DIFlagArtificial)
!89 = !DILocalVariable(name: ".omp.stride", scope: !80, type: !10, flags: DIFlagArtificial)
!90 = !DILocalVariable(name: ".omp.is_last", scope: !80, type: !10, flags: DIFlagArtificial)
!91 = !DILocalVariable(name: "i", scope: !80, type: !10, flags: DIFlagArtificial)
!92 = !DILocation(line: 0, scope: !80)
!93 = !DILocation(line: 8, column: 15, scope: !80)
!94 = !DILocation(line: 9, column: 9, scope: !80)
!95 = !DILocation(line: 17, column: 5, scope: !80)
!96 = !DILocation(line: 17, column: 10, scope: !80)
!97 = !DILocation(line: 17, column: 28, scope: !80)
!98 = !DILocation(line: 18, column: 17, scope: !99)
!99 = distinct !DILexicalBlock(scope: !80, file: !1, line: 17, column: 33)
!100 = !DILocation(line: 18, column: 18, scope: !99)
!101 = !DILocation(line: 18, column: 11, scope: !99)
!102 = !DILocation(line: 18, column: 9, scope: !99)
!103 = !DILocation(line: 18, column: 14, scope: !99)
!104 = !DILocation(line: 19, column: 5, scope: !99)
!105 = !DILocation(line: 16, column: 5, scope: !80)
!106 = distinct !{!106, !105, !107}
!107 = !DILocation(line: 16, column: 29, scope: !80)
!108 = !DILocation(line: 19, column: 5, scope: !80)
!109 = distinct !DISubprogram(name: ".omp_outlined..2", scope: !1, file: !1, line: 17, type: !35, scopeLine: 17, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !110)
!110 = !{!111, !112, !113, !114}
!111 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !109, type: !37, flags: DIFlagArtificial)
!112 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !109, type: !37, flags: DIFlagArtificial)
!113 = !DILocalVariable(name: "N", arg: 3, scope: !109, type: !40, flags: DIFlagArtificial)
!114 = !DILocalVariable(name: "A", arg: 4, scope: !109, type: !41, flags: DIFlagArtificial)
!115 = !DILocation(line: 0, scope: !109)
!116 = !DILocation(line: 17, column: 5, scope: !109)
