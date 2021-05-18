; ModuleID = 'integration/dataracebench/DRB113-default-orig-no.c'
source_filename = "integration/dataracebench/DRB113-default-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [64 x i8] c";integration/dataracebench/DRB113-default-orig-no.c;main;58;1;;\00", align 1
@2 = private unnamed_addr constant [65 x i8] c";integration/dataracebench/DRB113-default-orig-no.c;main;58;62;;\00", align 1
@a = common dso_local global [100 x [100 x i32]] zeroinitializer, align 16, !dbg !0
@3 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@4 = private unnamed_addr constant [64 x i8] c";integration/dataracebench/DRB113-default-orig-no.c;main;63;1;;\00", align 1
@b = common dso_local global [100 x [100 x i32]] zeroinitializer, align 16, !dbg !6
@5 = private unnamed_addr constant [65 x i8] c";integration/dataracebench/DRB113-default-orig-no.c;main;63;54;;\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main() #0 !dbg !16 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32 0, i32* %retval, align 4
  %2 = bitcast i32* %i to i8*, !dbg !22
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #4, !dbg !22
  call void @llvm.dbg.declare(metadata i32* %i, metadata !20, metadata !DIExpression()), !dbg !23
  %3 = bitcast i32* %j to i8*, !dbg !22
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #4, !dbg !22
  call void @llvm.dbg.declare(metadata i32* %j, metadata !21, metadata !DIExpression()), !dbg !24
  %4 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !25
  store i8* getelementptr inbounds ([64 x i8], [64 x i8]* @1, i32 0, i32 0), i8** %4, align 8, !dbg !25, !tbaa !26
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, [100 x [100 x i32]]*)* @.omp_outlined. to void (i32*, i32*, ...)*), [100 x [100 x i32]]* @a), !dbg !25
  %5 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !32
  store i8* getelementptr inbounds ([64 x i8], [64 x i8]* @4, i32 0, i32 0), i8** %5, align 8, !dbg !32, !tbaa !26
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 0, void (i32*, i32*, ...)* bitcast (void (i32*, i32*)* @.omp_outlined..2 to void (i32*, i32*, ...)*)), !dbg !32
  %6 = bitcast i32* %j to i8*, !dbg !33
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %6) #4, !dbg !33
  %7 = bitcast i32* %i to i8*, !dbg !33
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %7) #4, !dbg !33
  ret i32 0, !dbg !34
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., [100 x [100 x i32]]* dereferenceable(40000) %a) #3 !dbg !35 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %a.addr = alloca [100 x [100 x i32]]*, align 8
  %.omp.iv = alloca i32, align 4
  %tmp = alloca i32, align 4
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %i1 = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !54
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !44, metadata !DIExpression()), !dbg !55
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !54
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !45, metadata !DIExpression()), !dbg !55
  store [100 x [100 x i32]]* %a, [100 x [100 x i32]]** %a.addr, align 8, !tbaa !54
  call void @llvm.dbg.declare(metadata [100 x [100 x i32]]** %a.addr, metadata !46, metadata !DIExpression()), !dbg !56
  %2 = load [100 x [100 x i32]]*, [100 x [100 x i32]]** %a.addr, align 8, !dbg !57, !tbaa !54
  %3 = bitcast i32* %.omp.iv to i8*, !dbg !57
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #4, !dbg !57
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !47, metadata !DIExpression()), !dbg !55
  %4 = bitcast i32* %.omp.lb to i8*, !dbg !57
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #4, !dbg !57
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !48, metadata !DIExpression()), !dbg !55
  store i32 0, i32* %.omp.lb, align 4, !dbg !58, !tbaa !59
  %5 = bitcast i32* %.omp.ub to i8*, !dbg !57
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #4, !dbg !57
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !49, metadata !DIExpression()), !dbg !55
  store i32 99, i32* %.omp.ub, align 4, !dbg !58, !tbaa !59
  %6 = bitcast i32* %.omp.stride to i8*, !dbg !57
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #4, !dbg !57
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !50, metadata !DIExpression()), !dbg !55
  store i32 1, i32* %.omp.stride, align 4, !dbg !58, !tbaa !59
  %7 = bitcast i32* %.omp.is_last to i8*, !dbg !57
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #4, !dbg !57
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !51, metadata !DIExpression()), !dbg !55
  store i32 0, i32* %.omp.is_last, align 4, !dbg !58, !tbaa !59
  %8 = bitcast i32* %i to i8*, !dbg !57
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #4, !dbg !57
  call void @llvm.dbg.declare(metadata i32* %i, metadata !52, metadata !DIExpression()), !dbg !55
  %9 = bitcast i32* %j to i8*, !dbg !57
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #4, !dbg !57
  call void @llvm.dbg.declare(metadata i32* %j, metadata !53, metadata !DIExpression()), !dbg !55
  %10 = bitcast i32* %i1 to i8*, !dbg !57
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #4, !dbg !57
  call void @llvm.dbg.declare(metadata i32* %i1, metadata !52, metadata !DIExpression()), !dbg !55
  %11 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !57
  store i8* getelementptr inbounds ([64 x i8], [64 x i8]* @1, i32 0, i32 0), i8** %11, align 8, !dbg !57, !tbaa !26
  %12 = load i32*, i32** %.global_tid..addr, align 8, !dbg !57
  %13 = load i32, i32* %12, align 4, !dbg !57, !tbaa !59
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %13, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !57
  %14 = load i32, i32* %.omp.ub, align 4, !dbg !58, !tbaa !59
  %cmp = icmp sgt i32 %14, 99, !dbg !58
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !58

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !58

cond.false:                                       ; preds = %entry
  %15 = load i32, i32* %.omp.ub, align 4, !dbg !58, !tbaa !59
  br label %cond.end, !dbg !58

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 99, %cond.true ], [ %15, %cond.false ], !dbg !58
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !58, !tbaa !59
  %16 = load i32, i32* %.omp.lb, align 4, !dbg !58, !tbaa !59
  store i32 %16, i32* %.omp.iv, align 4, !dbg !58, !tbaa !59
  br label %omp.inner.for.cond, !dbg !57

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %17 = load i32, i32* %.omp.iv, align 4, !dbg !58, !tbaa !59
  %18 = load i32, i32* %.omp.ub, align 4, !dbg !58, !tbaa !59
  %cmp2 = icmp sle i32 %17, %18, !dbg !57
  br i1 %cmp2, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !57

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !57

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %19 = load i32, i32* %.omp.iv, align 4, !dbg !58, !tbaa !59
  %mul = mul nsw i32 %19, 1, !dbg !60
  %add = add nsw i32 0, %mul, !dbg !60
  store i32 %add, i32* %i, align 4, !dbg !60, !tbaa !59
  store i32 0, i32* %j, align 4, !dbg !61, !tbaa !59
  br label %for.cond, !dbg !63

for.cond:                                         ; preds = %for.inc, %omp.inner.for.body
  %20 = load i32, i32* %j, align 4, !dbg !64, !tbaa !59
  %cmp3 = icmp slt i32 %20, 100, !dbg !66
  br i1 %cmp3, label %for.body, label %for.end, !dbg !67

for.body:                                         ; preds = %for.cond
  %21 = load i32, i32* %i, align 4, !dbg !68, !tbaa !59
  %idxprom = sext i32 %21 to i64, !dbg !69
  %arrayidx = getelementptr inbounds [100 x [100 x i32]], [100 x [100 x i32]]* %2, i64 0, i64 %idxprom, !dbg !69
  %22 = load i32, i32* %j, align 4, !dbg !70, !tbaa !59
  %idxprom4 = sext i32 %22 to i64, !dbg !69
  %arrayidx5 = getelementptr inbounds [100 x i32], [100 x i32]* %arrayidx, i64 0, i64 %idxprom4, !dbg !69
  %23 = load i32, i32* %arrayidx5, align 4, !dbg !69, !tbaa !59
  %add6 = add nsw i32 %23, 1, !dbg !71
  %24 = load i32, i32* %i, align 4, !dbg !72, !tbaa !59
  %idxprom7 = sext i32 %24 to i64, !dbg !73
  %arrayidx8 = getelementptr inbounds [100 x [100 x i32]], [100 x [100 x i32]]* %2, i64 0, i64 %idxprom7, !dbg !73
  %25 = load i32, i32* %j, align 4, !dbg !74, !tbaa !59
  %idxprom9 = sext i32 %25 to i64, !dbg !73
  %arrayidx10 = getelementptr inbounds [100 x i32], [100 x i32]* %arrayidx8, i64 0, i64 %idxprom9, !dbg !73
  store i32 %add6, i32* %arrayidx10, align 4, !dbg !75, !tbaa !59
  br label %for.inc, !dbg !73

for.inc:                                          ; preds = %for.body
  %26 = load i32, i32* %j, align 4, !dbg !76, !tbaa !59
  %inc = add nsw i32 %26, 1, !dbg !76
  store i32 %inc, i32* %j, align 4, !dbg !76, !tbaa !59
  br label %for.cond, !dbg !77, !llvm.loop !78

for.end:                                          ; preds = %for.cond
  br label %omp.body.continue, !dbg !79

omp.body.continue:                                ; preds = %for.end
  br label %omp.inner.for.inc, !dbg !80

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %27 = load i32, i32* %.omp.iv, align 4, !dbg !58, !tbaa !59
  %add11 = add nsw i32 %27, 1, !dbg !57
  store i32 %add11, i32* %.omp.iv, align 4, !dbg !57, !tbaa !59
  br label %omp.inner.for.cond, !dbg !80, !llvm.loop !81

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !80

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %28 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !80
  store i8* getelementptr inbounds ([65 x i8], [65 x i8]* @2, i32 0, i32 0), i8** %28, align 8, !dbg !80, !tbaa !26
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %13), !dbg !80
  %29 = bitcast i32* %i1 to i8*, !dbg !80
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %29) #4, !dbg !80
  %30 = bitcast i32* %j to i8*, !dbg !80
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %30) #4, !dbg !80
  %31 = bitcast i32* %i to i8*, !dbg !80
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %31) #4, !dbg !80
  %32 = bitcast i32* %.omp.is_last to i8*, !dbg !80
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %32) #4, !dbg !80
  %33 = bitcast i32* %.omp.stride to i8*, !dbg !80
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %33) #4, !dbg !80
  %34 = bitcast i32* %.omp.ub to i8*, !dbg !80
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %34) #4, !dbg !80
  %35 = bitcast i32* %.omp.lb to i8*, !dbg !80
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %35) #4, !dbg !80
  %36 = bitcast i32* %.omp.iv to i8*, !dbg !80
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %36) #4, !dbg !80
  ret void, !dbg !83
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., [100 x [100 x i32]]* dereferenceable(40000) %a) #3 !dbg !84 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %a.addr = alloca [100 x [100 x i32]]*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !54
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !86, metadata !DIExpression()), !dbg !89
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !54
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !87, metadata !DIExpression()), !dbg !89
  store [100 x [100 x i32]]* %a, [100 x [100 x i32]]** %a.addr, align 8, !tbaa !54
  call void @llvm.dbg.declare(metadata [100 x [100 x i32]]** %a.addr, metadata !88, metadata !DIExpression()), !dbg !89
  %0 = load [100 x [100 x i32]]*, [100 x [100 x i32]]** %a.addr, align 8, !dbg !90, !tbaa !54
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !90, !tbaa !54
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !90, !tbaa !54
  %3 = load [100 x [100 x i32]]*, [100 x [100 x i32]]** %a.addr, align 8, !dbg !90, !tbaa !54
  call void @.omp_outlined._debug__(i32* %1, i32* %2, [100 x [100 x i32]]* %3) #4, !dbg !90
  ret void, !dbg !90
}

declare !callback !91 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__.1(i32* noalias %.global_tid., i32* noalias %.bound_tid.) #3 !dbg !93 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %.omp.iv = alloca i32, align 4
  %tmp = alloca i32, align 4
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %i1 = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !54
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !97, metadata !DIExpression()), !dbg !106
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !54
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !98, metadata !DIExpression()), !dbg !106
  %2 = bitcast i32* %.omp.iv to i8*, !dbg !107
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #4, !dbg !107
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !99, metadata !DIExpression()), !dbg !106
  %3 = bitcast i32* %.omp.lb to i8*, !dbg !107
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #4, !dbg !107
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !100, metadata !DIExpression()), !dbg !106
  store i32 0, i32* %.omp.lb, align 4, !dbg !108, !tbaa !59
  %4 = bitcast i32* %.omp.ub to i8*, !dbg !107
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #4, !dbg !107
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !101, metadata !DIExpression()), !dbg !106
  store i32 99, i32* %.omp.ub, align 4, !dbg !108, !tbaa !59
  %5 = bitcast i32* %.omp.stride to i8*, !dbg !107
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #4, !dbg !107
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !102, metadata !DIExpression()), !dbg !106
  store i32 1, i32* %.omp.stride, align 4, !dbg !108, !tbaa !59
  %6 = bitcast i32* %.omp.is_last to i8*, !dbg !107
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #4, !dbg !107
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !103, metadata !DIExpression()), !dbg !106
  store i32 0, i32* %.omp.is_last, align 4, !dbg !108, !tbaa !59
  %7 = bitcast i32* %i to i8*, !dbg !107
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #4, !dbg !107
  call void @llvm.dbg.declare(metadata i32* %i, metadata !104, metadata !DIExpression()), !dbg !106
  %8 = bitcast i32* %j to i8*, !dbg !107
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #4, !dbg !107
  call void @llvm.dbg.declare(metadata i32* %j, metadata !105, metadata !DIExpression()), !dbg !106
  %9 = bitcast i32* %i1 to i8*, !dbg !107
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #4, !dbg !107
  call void @llvm.dbg.declare(metadata i32* %i1, metadata !104, metadata !DIExpression()), !dbg !106
  %10 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !107
  store i8* getelementptr inbounds ([64 x i8], [64 x i8]* @4, i32 0, i32 0), i8** %10, align 8, !dbg !107, !tbaa !26
  %11 = load i32*, i32** %.global_tid..addr, align 8, !dbg !107
  %12 = load i32, i32* %11, align 4, !dbg !107, !tbaa !59
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %12, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !107
  %13 = load i32, i32* %.omp.ub, align 4, !dbg !108, !tbaa !59
  %cmp = icmp sgt i32 %13, 99, !dbg !108
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !108

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !108

cond.false:                                       ; preds = %entry
  %14 = load i32, i32* %.omp.ub, align 4, !dbg !108, !tbaa !59
  br label %cond.end, !dbg !108

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 99, %cond.true ], [ %14, %cond.false ], !dbg !108
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !108, !tbaa !59
  %15 = load i32, i32* %.omp.lb, align 4, !dbg !108, !tbaa !59
  store i32 %15, i32* %.omp.iv, align 4, !dbg !108, !tbaa !59
  br label %omp.inner.for.cond, !dbg !107

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %16 = load i32, i32* %.omp.iv, align 4, !dbg !108, !tbaa !59
  %17 = load i32, i32* %.omp.ub, align 4, !dbg !108, !tbaa !59
  %cmp2 = icmp sle i32 %16, %17, !dbg !107
  br i1 %cmp2, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !107

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !107

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %18 = load i32, i32* %.omp.iv, align 4, !dbg !108, !tbaa !59
  %mul = mul nsw i32 %18, 1, !dbg !109
  %add = add nsw i32 0, %mul, !dbg !109
  store i32 %add, i32* %i, align 4, !dbg !109, !tbaa !59
  store i32 0, i32* %j, align 4, !dbg !110, !tbaa !59
  br label %for.cond, !dbg !112

for.cond:                                         ; preds = %for.inc, %omp.inner.for.body
  %19 = load i32, i32* %j, align 4, !dbg !113, !tbaa !59
  %cmp3 = icmp slt i32 %19, 100, !dbg !115
  br i1 %cmp3, label %for.body, label %for.end, !dbg !116

for.body:                                         ; preds = %for.cond
  %20 = load i32, i32* %i, align 4, !dbg !117, !tbaa !59
  %idxprom = sext i32 %20 to i64, !dbg !118
  %arrayidx = getelementptr inbounds [100 x [100 x i32]], [100 x [100 x i32]]* @b, i64 0, i64 %idxprom, !dbg !118
  %21 = load i32, i32* %j, align 4, !dbg !119, !tbaa !59
  %idxprom4 = sext i32 %21 to i64, !dbg !118
  %arrayidx5 = getelementptr inbounds [100 x i32], [100 x i32]* %arrayidx, i64 0, i64 %idxprom4, !dbg !118
  %22 = load i32, i32* %arrayidx5, align 4, !dbg !118, !tbaa !59
  %add6 = add nsw i32 %22, 1, !dbg !120
  %23 = load i32, i32* %i, align 4, !dbg !121, !tbaa !59
  %idxprom7 = sext i32 %23 to i64, !dbg !122
  %arrayidx8 = getelementptr inbounds [100 x [100 x i32]], [100 x [100 x i32]]* @b, i64 0, i64 %idxprom7, !dbg !122
  %24 = load i32, i32* %j, align 4, !dbg !123, !tbaa !59
  %idxprom9 = sext i32 %24 to i64, !dbg !122
  %arrayidx10 = getelementptr inbounds [100 x i32], [100 x i32]* %arrayidx8, i64 0, i64 %idxprom9, !dbg !122
  store i32 %add6, i32* %arrayidx10, align 4, !dbg !124, !tbaa !59
  br label %for.inc, !dbg !122

for.inc:                                          ; preds = %for.body
  %25 = load i32, i32* %j, align 4, !dbg !125, !tbaa !59
  %inc = add nsw i32 %25, 1, !dbg !125
  store i32 %inc, i32* %j, align 4, !dbg !125, !tbaa !59
  br label %for.cond, !dbg !126, !llvm.loop !127

for.end:                                          ; preds = %for.cond
  br label %omp.body.continue, !dbg !128

omp.body.continue:                                ; preds = %for.end
  br label %omp.inner.for.inc, !dbg !129

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %26 = load i32, i32* %.omp.iv, align 4, !dbg !108, !tbaa !59
  %add11 = add nsw i32 %26, 1, !dbg !107
  store i32 %add11, i32* %.omp.iv, align 4, !dbg !107, !tbaa !59
  br label %omp.inner.for.cond, !dbg !129, !llvm.loop !130

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !129

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %27 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !129
  store i8* getelementptr inbounds ([65 x i8], [65 x i8]* @5, i32 0, i32 0), i8** %27, align 8, !dbg !129, !tbaa !26
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %12), !dbg !129
  %28 = bitcast i32* %i1 to i8*, !dbg !129
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %28) #4, !dbg !129
  %29 = bitcast i32* %j to i8*, !dbg !129
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %29) #4, !dbg !129
  %30 = bitcast i32* %i to i8*, !dbg !129
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %30) #4, !dbg !129
  %31 = bitcast i32* %.omp.is_last to i8*, !dbg !129
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %31) #4, !dbg !129
  %32 = bitcast i32* %.omp.stride to i8*, !dbg !129
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %32) #4, !dbg !129
  %33 = bitcast i32* %.omp.ub to i8*, !dbg !129
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %33) #4, !dbg !129
  %34 = bitcast i32* %.omp.lb to i8*, !dbg !129
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %34) #4, !dbg !129
  %35 = bitcast i32* %.omp.iv to i8*, !dbg !129
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %35) #4, !dbg !129
  ret void, !dbg !132
}

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined..2(i32* noalias %.global_tid., i32* noalias %.bound_tid.) #3 !dbg !133 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !54
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !135, metadata !DIExpression()), !dbg !137
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !54
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !136, metadata !DIExpression()), !dbg !137
  %0 = load i32*, i32** %.global_tid..addr, align 8, !dbg !138, !tbaa !54
  %1 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !138, !tbaa !54
  call void @.omp_outlined._debug__.1(i32* %0, i32* %1) #4, !dbg !138
  ret void, !dbg !138
}

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!12, !13, !14}
!llvm.ident = !{!15}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "a", scope: !2, file: !3, line: 53, type: !8, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "integration/dataracebench/DRB113-default-orig-no.c", directory: "/home/brad/Code/OpenRace/tests/data")
!4 = !{}
!5 = !{!0, !6}
!6 = !DIGlobalVariableExpression(var: !7, expr: !DIExpression())
!7 = distinct !DIGlobalVariable(name: "b", scope: !2, file: !3, line: 54, type: !8, isLocal: false, isDefinition: true)
!8 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 320000, elements: !10)
!9 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!10 = !{!11, !11}
!11 = !DISubrange(count: 100)
!12 = !{i32 7, !"Dwarf Version", i32 4}
!13 = !{i32 2, !"Debug Info Version", i32 3}
!14 = !{i32 1, !"wchar_size", i32 4}
!15 = !{!"clang version 10.0.1 "}
!16 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 55, type: !17, scopeLine: 56, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !19)
!17 = !DISubroutineType(types: !18)
!18 = !{!9}
!19 = !{!20, !21}
!20 = !DILocalVariable(name: "i", scope: !16, file: !3, line: 57, type: !9)
!21 = !DILocalVariable(name: "j", scope: !16, file: !3, line: 57, type: !9)
!22 = !DILocation(line: 57, column: 3, scope: !16)
!23 = !DILocation(line: 57, column: 7, scope: !16)
!24 = !DILocation(line: 57, column: 9, scope: !16)
!25 = !DILocation(line: 58, column: 1, scope: !16)
!26 = !{!27, !31, i64 16}
!27 = !{!"ident_t", !28, i64 0, !28, i64 4, !28, i64 8, !28, i64 12, !31, i64 16}
!28 = !{!"int", !29, i64 0}
!29 = !{!"omnipotent char", !30, i64 0}
!30 = !{!"Simple C/C++ TBAA"}
!31 = !{!"any pointer", !29, i64 0}
!32 = !DILocation(line: 63, column: 1, scope: !16)
!33 = !DILocation(line: 69, column: 1, scope: !16)
!34 = !DILocation(line: 68, column: 3, scope: !16)
!35 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !3, file: !3, line: 59, type: !36, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !43)
!36 = !DISubroutineType(types: !37)
!37 = !{null, !38, !38, !42}
!38 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !39)
!39 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !40)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!42 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !8, size: 64)
!43 = !{!44, !45, !46, !47, !48, !49, !50, !51, !52, !53, !52}
!44 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !35, type: !38, flags: DIFlagArtificial)
!45 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !35, type: !38, flags: DIFlagArtificial)
!46 = !DILocalVariable(name: "a", arg: 3, scope: !35, file: !3, line: 53, type: !42)
!47 = !DILocalVariable(name: ".omp.iv", scope: !35, type: !9, flags: DIFlagArtificial)
!48 = !DILocalVariable(name: ".omp.lb", scope: !35, type: !9, flags: DIFlagArtificial)
!49 = !DILocalVariable(name: ".omp.ub", scope: !35, type: !9, flags: DIFlagArtificial)
!50 = !DILocalVariable(name: ".omp.stride", scope: !35, type: !9, flags: DIFlagArtificial)
!51 = !DILocalVariable(name: ".omp.is_last", scope: !35, type: !9, flags: DIFlagArtificial)
!52 = !DILocalVariable(name: "i", scope: !35, type: !9, flags: DIFlagArtificial)
!53 = !DILocalVariable(name: "j", scope: !35, type: !9, flags: DIFlagArtificial)
!54 = !{!31, !31, i64 0}
!55 = !DILocation(line: 0, scope: !35)
!56 = !DILocation(line: 53, column: 5, scope: !35)
!57 = !DILocation(line: 59, column: 3, scope: !35)
!58 = !DILocation(line: 59, column: 8, scope: !35)
!59 = !{!28, !28, i64 0}
!60 = !DILocation(line: 59, column: 18, scope: !35)
!61 = !DILocation(line: 60, column: 11, scope: !62)
!62 = distinct !DILexicalBlock(scope: !35, file: !3, line: 60, column: 5)
!63 = !DILocation(line: 60, column: 10, scope: !62)
!64 = !DILocation(line: 60, column: 14, scope: !65)
!65 = distinct !DILexicalBlock(scope: !62, file: !3, line: 60, column: 5)
!66 = !DILocation(line: 60, column: 15, scope: !65)
!67 = !DILocation(line: 60, column: 5, scope: !62)
!68 = !DILocation(line: 61, column: 17, scope: !65)
!69 = !DILocation(line: 61, column: 15, scope: !65)
!70 = !DILocation(line: 61, column: 20, scope: !65)
!71 = !DILocation(line: 61, column: 22, scope: !65)
!72 = !DILocation(line: 61, column: 9, scope: !65)
!73 = !DILocation(line: 61, column: 7, scope: !65)
!74 = !DILocation(line: 61, column: 12, scope: !65)
!75 = !DILocation(line: 61, column: 14, scope: !65)
!76 = !DILocation(line: 60, column: 21, scope: !65)
!77 = !DILocation(line: 60, column: 5, scope: !65)
!78 = distinct !{!78, !67, !79}
!79 = !DILocation(line: 61, column: 23, scope: !62)
!80 = !DILocation(line: 58, column: 1, scope: !35)
!81 = distinct !{!81, !80, !82}
!82 = !DILocation(line: 58, column: 62, scope: !35)
!83 = !DILocation(line: 61, column: 23, scope: !35)
!84 = distinct !DISubprogram(name: ".omp_outlined.", scope: !3, file: !3, line: 59, type: !36, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !85)
!85 = !{!86, !87, !88}
!86 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !84, type: !38, flags: DIFlagArtificial)
!87 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !84, type: !38, flags: DIFlagArtificial)
!88 = !DILocalVariable(name: "a", arg: 3, scope: !84, type: !42, flags: DIFlagArtificial)
!89 = !DILocation(line: 0, scope: !84)
!90 = !DILocation(line: 59, column: 3, scope: !84)
!91 = !{!92}
!92 = !{i64 2, i64 -1, i64 -1, i1 true}
!93 = distinct !DISubprogram(name: ".omp_outlined._debug__.1", scope: !3, file: !3, line: 64, type: !94, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !96)
!94 = !DISubroutineType(types: !95)
!95 = !{null, !38, !38}
!96 = !{!97, !98, !99, !100, !101, !102, !103, !104, !105, !104}
!97 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !93, type: !38, flags: DIFlagArtificial)
!98 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !93, type: !38, flags: DIFlagArtificial)
!99 = !DILocalVariable(name: ".omp.iv", scope: !93, type: !9, flags: DIFlagArtificial)
!100 = !DILocalVariable(name: ".omp.lb", scope: !93, type: !9, flags: DIFlagArtificial)
!101 = !DILocalVariable(name: ".omp.ub", scope: !93, type: !9, flags: DIFlagArtificial)
!102 = !DILocalVariable(name: ".omp.stride", scope: !93, type: !9, flags: DIFlagArtificial)
!103 = !DILocalVariable(name: ".omp.is_last", scope: !93, type: !9, flags: DIFlagArtificial)
!104 = !DILocalVariable(name: "i", scope: !93, type: !9, flags: DIFlagArtificial)
!105 = !DILocalVariable(name: "j", scope: !93, type: !9, flags: DIFlagArtificial)
!106 = !DILocation(line: 0, scope: !93)
!107 = !DILocation(line: 64, column: 3, scope: !93)
!108 = !DILocation(line: 64, column: 8, scope: !93)
!109 = !DILocation(line: 64, column: 18, scope: !93)
!110 = !DILocation(line: 65, column: 11, scope: !111)
!111 = distinct !DILexicalBlock(scope: !93, file: !3, line: 65, column: 5)
!112 = !DILocation(line: 65, column: 10, scope: !111)
!113 = !DILocation(line: 65, column: 14, scope: !114)
!114 = distinct !DILexicalBlock(scope: !111, file: !3, line: 65, column: 5)
!115 = !DILocation(line: 65, column: 15, scope: !114)
!116 = !DILocation(line: 65, column: 5, scope: !111)
!117 = !DILocation(line: 66, column: 17, scope: !114)
!118 = !DILocation(line: 66, column: 15, scope: !114)
!119 = !DILocation(line: 66, column: 20, scope: !114)
!120 = !DILocation(line: 66, column: 22, scope: !114)
!121 = !DILocation(line: 66, column: 9, scope: !114)
!122 = !DILocation(line: 66, column: 7, scope: !114)
!123 = !DILocation(line: 66, column: 12, scope: !114)
!124 = !DILocation(line: 66, column: 14, scope: !114)
!125 = !DILocation(line: 65, column: 21, scope: !114)
!126 = !DILocation(line: 65, column: 5, scope: !114)
!127 = distinct !{!127, !116, !128}
!128 = !DILocation(line: 66, column: 23, scope: !111)
!129 = !DILocation(line: 63, column: 1, scope: !93)
!130 = distinct !{!130, !129, !131}
!131 = !DILocation(line: 63, column: 54, scope: !93)
!132 = !DILocation(line: 66, column: 23, scope: !93)
!133 = distinct !DISubprogram(name: ".omp_outlined..2", scope: !3, file: !3, line: 64, type: !94, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !134)
!134 = !{!135, !136}
!135 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !133, type: !38, flags: DIFlagArtificial)
!136 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !133, type: !38, flags: DIFlagArtificial)
!137 = !DILocation(line: 0, scope: !133)
!138 = !DILocation(line: 64, column: 3, scope: !133)
