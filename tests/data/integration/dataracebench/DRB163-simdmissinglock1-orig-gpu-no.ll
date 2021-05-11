; ModuleID = 'integration/dataracebench/DRB163-simdmissinglock1-orig-gpu-no.c'
source_filename = "integration/dataracebench/DRB163-simdmissinglock1-orig-gpu-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 2050, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [77 x i8] c";integration/dataracebench/DRB163-simdmissinglock1-orig-gpu-no.c;main;27;3;;\00", align 1
@2 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@3 = private unnamed_addr constant [78 x i8] c";integration/dataracebench/DRB163-simdmissinglock1-orig-gpu-no.c;main;27;62;;\00", align 1
@.gomp_critical_user_.reduction.var = common global [8 x i32] zeroinitializer
@4 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@.str.4 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main() #0 !dbg !7 {
entry:
  %retval = alloca i32, align 4
  %var = alloca [64 x i32], align 16
  %i = alloca i32, align 4
  %i1 = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = bitcast [64 x i32]* %var to i8*, !dbg !20
  call void @llvm.lifetime.start.p0i8(i64 256, i8* %0) #5, !dbg !20
  call void @llvm.dbg.declare(metadata [64 x i32]* %var, metadata !12, metadata !DIExpression()), !dbg !21
  %1 = bitcast i32* %i to i8*, !dbg !22
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #5, !dbg !22
  call void @llvm.dbg.declare(metadata i32* %i, metadata !16, metadata !DIExpression()), !dbg !23
  store i32 0, i32* %i, align 4, !dbg !23, !tbaa !24
  br label %for.cond, !dbg !22

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4, !dbg !28, !tbaa !24
  %cmp = icmp slt i32 %2, 64, !dbg !30
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !dbg !31

for.cond.cleanup:                                 ; preds = %for.cond
  %3 = bitcast i32* %i to i8*, !dbg !32
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %3) #5, !dbg !32
  br label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4, !dbg !33, !tbaa !24
  %idxprom = sext i32 %4 to i64, !dbg !35
  %arrayidx = getelementptr inbounds [64 x i32], [64 x i32]* %var, i64 0, i64 %idxprom, !dbg !35
  store i32 0, i32* %arrayidx, align 4, !dbg !36, !tbaa !24
  br label %for.inc, !dbg !37

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4, !dbg !38, !tbaa !24
  %inc = add nsw i32 %5, 1, !dbg !38
  store i32 %inc, i32* %i, align 4, !dbg !38, !tbaa !24
  br label %for.cond, !dbg !32, !llvm.loop !39

for.end:                                          ; preds = %for.cond.cleanup
  call void @__omp_offloading_1030a_2160965_main_l26([64 x i32]* %var) #5, !dbg !41
  %6 = bitcast i32* %i1 to i8*, !dbg !43
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #5, !dbg !43
  call void @llvm.dbg.declare(metadata i32* %i1, metadata !18, metadata !DIExpression()), !dbg !44
  store i32 0, i32* %i1, align 4, !dbg !44, !tbaa !24
  br label %for.cond2, !dbg !43

for.cond2:                                        ; preds = %for.inc11, %for.end
  %7 = load i32, i32* %i1, align 4, !dbg !45, !tbaa !24
  %cmp3 = icmp slt i32 %7, 64, !dbg !47
  br i1 %cmp3, label %for.body5, label %for.cond.cleanup4, !dbg !48

for.cond.cleanup4:                                ; preds = %for.cond2
  %8 = bitcast i32* %i1 to i8*, !dbg !49
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %8) #5, !dbg !49
  br label %for.end13

for.body5:                                        ; preds = %for.cond2
  %9 = load i32, i32* %i1, align 4, !dbg !50, !tbaa !24
  %idxprom6 = sext i32 %9 to i64, !dbg !53
  %arrayidx7 = getelementptr inbounds [64 x i32], [64 x i32]* %var, i64 0, i64 %idxprom6, !dbg !53
  %10 = load i32, i32* %arrayidx7, align 4, !dbg !53, !tbaa !24
  %cmp8 = icmp ne i32 %10, 100, !dbg !54
  br i1 %cmp8, label %if.then, label %if.end, !dbg !55

if.then:                                          ; preds = %for.body5
  %11 = load i32, i32* %i1, align 4, !dbg !56, !tbaa !24
  %idxprom9 = sext i32 %11 to i64, !dbg !58
  %arrayidx10 = getelementptr inbounds [64 x i32], [64 x i32]* %var, i64 0, i64 %idxprom9, !dbg !58
  %12 = load i32, i32* %arrayidx10, align 4, !dbg !58, !tbaa !24
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %12), !dbg !59
  br label %if.end, !dbg !60

if.end:                                           ; preds = %if.then, %for.body5
  br label %for.inc11, !dbg !61

for.inc11:                                        ; preds = %if.end
  %13 = load i32, i32* %i1, align 4, !dbg !62, !tbaa !24
  %inc12 = add nsw i32 %13, 1, !dbg !62
  store i32 %inc12, i32* %i1, align 4, !dbg !62, !tbaa !24
  br label %for.cond2, !dbg !49, !llvm.loop !63

for.end13:                                        ; preds = %for.cond.cleanup4
  %14 = bitcast [64 x i32]* %var to i8*, !dbg !65
  call void @llvm.lifetime.end.p0i8(i64 256, i8* %14) #5, !dbg !65
  ret i32 0, !dbg !66
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: norecurse nounwind uwtable
define internal void @__omp_offloading_1030a_2160965_main_l26_debug__([64 x i32]* dereferenceable(256) %var) #3 !dbg !67 {
entry:
  %var.addr = alloca [64 x i32]*, align 8
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store [64 x i32]* %var, [64 x i32]** %var.addr, align 8, !tbaa !73
  call void @llvm.dbg.declare(metadata [64 x i32]** %var.addr, metadata !72, metadata !DIExpression()), !dbg !75
  %2 = load [64 x i32]*, [64 x i32]** %var.addr, align 8, !dbg !76, !tbaa !73
  %3 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !76
  store i8* getelementptr inbounds ([77 x i8], [77 x i8]* @1, i32 0, i32 0), i8** %3, align 8, !dbg !76, !tbaa !77
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_teams(%struct.ident_t* %.kmpc_loc.addr, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, [64 x i32]*)* @.omp_outlined..3 to void (i32*, i32*, ...)*), [64 x i32]* %2), !dbg !76
  ret void, !dbg !79
}

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., [64 x i32]* dereferenceable(256) %var) #3 !dbg !80 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %var.addr = alloca [64 x i32]*, align 8
  %var1 = alloca [64 x i32], align 16
  %.omp.iv = alloca i32, align 4
  %tmp = alloca i32, align 4
  %.omp.comb.lb = alloca i32, align 4
  %.omp.comb.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %i = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %.omp.reduction.red_list = alloca [1 x i8*], align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !73
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !88, metadata !DIExpression()), !dbg !98
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !73
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !89, metadata !DIExpression()), !dbg !98
  store [64 x i32]* %var, [64 x i32]** %var.addr, align 8, !tbaa !73
  call void @llvm.dbg.declare(metadata [64 x i32]** %var.addr, metadata !90, metadata !DIExpression()), !dbg !99
  %2 = load [64 x i32]*, [64 x i32]** %var.addr, align 8, !dbg !100, !tbaa !73
  %3 = bitcast [64 x i32]* %var1 to i8*, !dbg !100
  call void @llvm.lifetime.start.p0i8(i64 256, i8* %3) #5, !dbg !100
  call void @llvm.dbg.declare(metadata [64 x i32]* %var1, metadata !91, metadata !DIExpression()), !dbg !98
  %array.begin = getelementptr inbounds [64 x i32], [64 x i32]* %var1, i32 0, i32 0, !dbg !100
  %4 = getelementptr i32, i32* %array.begin, i64 64, !dbg !100
  %omp.arrayinit.isempty = icmp eq i32* %array.begin, %4, !dbg !100
  br i1 %omp.arrayinit.isempty, label %omp.arrayinit.done, label %omp.arrayinit.body, !dbg !100

omp.arrayinit.body:                               ; preds = %omp.arrayinit.body, %entry
  %omp.arraycpy.destElementPast = phi i32* [ %array.begin, %entry ], [ %omp.arraycpy.dest.element, %omp.arrayinit.body ], !dbg !100
  store i32 0, i32* %omp.arraycpy.destElementPast, align 4, !dbg !100, !tbaa !24
  %omp.arraycpy.dest.element = getelementptr i32, i32* %omp.arraycpy.destElementPast, i32 1, !dbg !100
  %omp.arraycpy.done = icmp eq i32* %omp.arraycpy.dest.element, %4, !dbg !100
  br i1 %omp.arraycpy.done, label %omp.arrayinit.done, label %omp.arrayinit.body, !dbg !100

omp.arrayinit.done:                               ; preds = %omp.arrayinit.body, %entry
  %lhs.begin = bitcast [64 x i32]* %2 to i32*, !dbg !100
  %rhs.begin = bitcast [64 x i32]* %var1 to i32*, !dbg !100
  %5 = bitcast i32* %.omp.iv to i8*, !dbg !100
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #5, !dbg !100
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !92, metadata !DIExpression()), !dbg !98
  %6 = bitcast i32* %.omp.comb.lb to i8*, !dbg !100
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #5, !dbg !100
  call void @llvm.dbg.declare(metadata i32* %.omp.comb.lb, metadata !93, metadata !DIExpression()), !dbg !98
  store i32 0, i32* %.omp.comb.lb, align 4, !dbg !101, !tbaa !24
  %7 = bitcast i32* %.omp.comb.ub to i8*, !dbg !100
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #5, !dbg !100
  call void @llvm.dbg.declare(metadata i32* %.omp.comb.ub, metadata !94, metadata !DIExpression()), !dbg !98
  store i32 99, i32* %.omp.comb.ub, align 4, !dbg !101, !tbaa !24
  %8 = bitcast i32* %.omp.stride to i8*, !dbg !100
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #5, !dbg !100
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !95, metadata !DIExpression()), !dbg !98
  store i32 1, i32* %.omp.stride, align 4, !dbg !101, !tbaa !24
  %9 = bitcast i32* %.omp.is_last to i8*, !dbg !100
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #5, !dbg !100
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !96, metadata !DIExpression()), !dbg !98
  store i32 0, i32* %.omp.is_last, align 4, !dbg !101, !tbaa !24
  %10 = bitcast i32* %i to i8*, !dbg !100
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #5, !dbg !100
  call void @llvm.dbg.declare(metadata i32* %i, metadata !97, metadata !DIExpression()), !dbg !98
  %11 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !100
  store i8* getelementptr inbounds ([77 x i8], [77 x i8]* @1, i32 0, i32 0), i8** %11, align 8, !dbg !100, !tbaa !77
  %12 = load i32*, i32** %.global_tid..addr, align 8, !dbg !100
  %13 = load i32, i32* %12, align 4, !dbg !100, !tbaa !24
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %13, i32 92, i32* %.omp.is_last, i32* %.omp.comb.lb, i32* %.omp.comb.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !100
  %14 = load i32, i32* %.omp.comb.ub, align 4, !dbg !101, !tbaa !24
  %cmp = icmp sgt i32 %14, 99, !dbg !101
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !101

cond.true:                                        ; preds = %omp.arrayinit.done
  br label %cond.end, !dbg !101

cond.false:                                       ; preds = %omp.arrayinit.done
  %15 = load i32, i32* %.omp.comb.ub, align 4, !dbg !101, !tbaa !24
  br label %cond.end, !dbg !101

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 99, %cond.true ], [ %15, %cond.false ], !dbg !101
  store i32 %cond, i32* %.omp.comb.ub, align 4, !dbg !101, !tbaa !24
  %16 = load i32, i32* %.omp.comb.lb, align 4, !dbg !101, !tbaa !24
  store i32 %16, i32* %.omp.iv, align 4, !dbg !101, !tbaa !24
  br label %omp.inner.for.cond, !dbg !100

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %17 = load i32, i32* %.omp.iv, align 4, !dbg !101, !tbaa !24
  %18 = load i32, i32* %.omp.comb.ub, align 4, !dbg !101, !tbaa !24
  %cmp2 = icmp sle i32 %17, %18, !dbg !100
  br i1 %cmp2, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !100

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !100

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %19 = load i32, i32* %.omp.comb.lb, align 4, !dbg !102
  %20 = zext i32 %19 to i64, !dbg !102
  %21 = load i32, i32* %.omp.comb.ub, align 4, !dbg !102
  %22 = zext i32 %21 to i64, !dbg !102
  %23 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !102
  store i8* getelementptr inbounds ([77 x i8], [77 x i8]* @1, i32 0, i32 0), i8** %23, align 8, !dbg !102, !tbaa !77
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i64, i64, [64 x i32]*)* @.omp_outlined. to void (i32*, i32*, ...)*), i64 %20, i64 %22, [64 x i32]* %var1), !dbg !102
  br label %omp.inner.for.inc, !dbg !103

omp.inner.for.inc:                                ; preds = %omp.inner.for.body
  %24 = load i32, i32* %.omp.iv, align 4, !dbg !101, !tbaa !24
  %25 = load i32, i32* %.omp.stride, align 4, !dbg !101, !tbaa !24
  %add = add nsw i32 %24, %25, !dbg !100
  store i32 %add, i32* %.omp.iv, align 4, !dbg !100, !tbaa !24
  br label %omp.inner.for.cond, !dbg !103, !llvm.loop !105

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !103

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %26 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !103
  store i8* getelementptr inbounds ([77 x i8], [77 x i8]* @1, i32 0, i32 0), i8** %26, align 8, !dbg !103, !tbaa !77
  %27 = load i32*, i32** %.global_tid..addr, align 8, !dbg !103
  %28 = load i32, i32* %27, align 4, !dbg !103, !tbaa !24
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %28), !dbg !103
  %29 = bitcast i32* %i to i8*, !dbg !103
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %29) #5, !dbg !103
  %30 = bitcast i32* %.omp.is_last to i8*, !dbg !103
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %30) #5, !dbg !103
  %31 = bitcast i32* %.omp.stride to i8*, !dbg !103
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %31) #5, !dbg !103
  %32 = bitcast i32* %.omp.comb.ub to i8*, !dbg !103
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %32) #5, !dbg !103
  %33 = bitcast i32* %.omp.comb.lb to i8*, !dbg !103
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %33) #5, !dbg !103
  %34 = bitcast i32* %.omp.iv to i8*, !dbg !103
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %34) #5, !dbg !103
  %35 = getelementptr inbounds [1 x i8*], [1 x i8*]* %.omp.reduction.red_list, i64 0, i64 0, !dbg !103
  %36 = bitcast i32* %rhs.begin to i8*, !dbg !103
  store i8* %36, i8** %35, align 8, !dbg !103
  %37 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !103
  store i8* getelementptr inbounds ([78 x i8], [78 x i8]* @3, i32 0, i32 0), i8** %37, align 8, !dbg !103, !tbaa !77
  %38 = load i32*, i32** %.global_tid..addr, align 8, !dbg !103
  %39 = load i32, i32* %38, align 4, !dbg !103, !tbaa !24
  %40 = bitcast [1 x i8*]* %.omp.reduction.red_list to i8*, !dbg !103
  %41 = call i32 @__kmpc_reduce_nowait(%struct.ident_t* %.kmpc_loc.addr, i32 %39, i32 1, i64 8, i8* %40, void (i8*, i8*)* @.omp.reduction.reduction_func.2, [8 x i32]* @.gomp_critical_user_.reduction.var), !dbg !103
  switch i32 %41, label %.omp.reduction.default [
    i32 1, label %.omp.reduction.case1
    i32 2, label %.omp.reduction.case2
  ], !dbg !103

.omp.reduction.case1:                             ; preds = %omp.loop.exit
  %42 = getelementptr i32, i32* %lhs.begin, i64 64, !dbg !103
  %omp.arraycpy.isempty = icmp eq i32* %lhs.begin, %42, !dbg !103
  br i1 %omp.arraycpy.isempty, label %omp.arraycpy.done7, label %omp.arraycpy.body, !dbg !103

omp.arraycpy.body:                                ; preds = %omp.arraycpy.body, %.omp.reduction.case1
  %omp.arraycpy.srcElementPast = phi i32* [ %rhs.begin, %.omp.reduction.case1 ], [ %omp.arraycpy.src.element, %omp.arraycpy.body ], !dbg !103
  %omp.arraycpy.destElementPast3 = phi i32* [ %lhs.begin, %.omp.reduction.case1 ], [ %omp.arraycpy.dest.element5, %omp.arraycpy.body ], !dbg !103
  %43 = load i32, i32* %omp.arraycpy.destElementPast3, align 4, !dbg !107, !tbaa !24
  %44 = load i32, i32* %omp.arraycpy.srcElementPast, align 4, !dbg !107, !tbaa !24
  %add4 = add nsw i32 %43, %44, !dbg !108
  store i32 %add4, i32* %omp.arraycpy.destElementPast3, align 4, !dbg !108, !tbaa !24
  %omp.arraycpy.dest.element5 = getelementptr i32, i32* %omp.arraycpy.destElementPast3, i32 1, !dbg !103
  %omp.arraycpy.src.element = getelementptr i32, i32* %omp.arraycpy.srcElementPast, i32 1, !dbg !103
  %omp.arraycpy.done6 = icmp eq i32* %omp.arraycpy.dest.element5, %42, !dbg !103
  br i1 %omp.arraycpy.done6, label %omp.arraycpy.done7, label %omp.arraycpy.body, !dbg !103

omp.arraycpy.done7:                               ; preds = %omp.arraycpy.body, %.omp.reduction.case1
  call void @__kmpc_end_reduce_nowait(%struct.ident_t* %.kmpc_loc.addr, i32 %39, [8 x i32]* @.gomp_critical_user_.reduction.var), !dbg !103
  br label %.omp.reduction.default, !dbg !103

.omp.reduction.case2:                             ; preds = %omp.loop.exit
  %45 = getelementptr i32, i32* %lhs.begin, i64 64, !dbg !103
  %omp.arraycpy.isempty8 = icmp eq i32* %lhs.begin, %45, !dbg !103
  br i1 %omp.arraycpy.isempty8, label %omp.arraycpy.done15, label %omp.arraycpy.body9, !dbg !103

omp.arraycpy.body9:                               ; preds = %omp.arraycpy.body9, %.omp.reduction.case2
  %omp.arraycpy.srcElementPast10 = phi i32* [ %rhs.begin, %.omp.reduction.case2 ], [ %omp.arraycpy.src.element13, %omp.arraycpy.body9 ], !dbg !103
  %omp.arraycpy.destElementPast11 = phi i32* [ %lhs.begin, %.omp.reduction.case2 ], [ %omp.arraycpy.dest.element12, %omp.arraycpy.body9 ], !dbg !103
  %46 = load i32, i32* %omp.arraycpy.srcElementPast10, align 4, !dbg !107, !tbaa !24
  %47 = atomicrmw add i32* %omp.arraycpy.destElementPast11, i32 %46 monotonic, !dbg !103
  %omp.arraycpy.dest.element12 = getelementptr i32, i32* %omp.arraycpy.destElementPast11, i32 1, !dbg !103
  %omp.arraycpy.src.element13 = getelementptr i32, i32* %omp.arraycpy.srcElementPast10, i32 1, !dbg !103
  %omp.arraycpy.done14 = icmp eq i32* %omp.arraycpy.dest.element12, %45, !dbg !103
  br i1 %omp.arraycpy.done14, label %omp.arraycpy.done15, label %omp.arraycpy.body9, !dbg !103

omp.arraycpy.done15:                              ; preds = %omp.arraycpy.body9, %.omp.reduction.case2
  br label %.omp.reduction.default, !dbg !103

.omp.reduction.default:                           ; preds = %omp.arraycpy.done15, %omp.arraycpy.done7, %omp.loop.exit
  %48 = bitcast [64 x i32]* %var1 to i8*, !dbg !103
  call void @llvm.lifetime.end.p0i8(i64 256, i8* %48) #5, !dbg !103
  ret void, !dbg !109
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__.1(i32* noalias %.global_tid., i32* noalias %.bound_tid., i64 %.previous.lb., i64 %.previous.ub., [64 x i32]* dereferenceable(256) %var) #3 !dbg !110 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %.previous.lb..addr = alloca i64, align 8
  %.previous.ub..addr = alloca i64, align 8
  %var.addr = alloca [64 x i32]*, align 8
  %.omp.iv = alloca i32, align 4
  %tmp = alloca i32, align 4
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %var2 = alloca [64 x i32], align 16
  %i = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %tmp6 = alloca i32, align 4
  %.omp.iv7 = alloca i32, align 4
  %i8 = alloca i32, align 4
  %.omp.reduction.red_list = alloca [1 x i8*], align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !73
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !116, metadata !DIExpression()), !dbg !132
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !73
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !117, metadata !DIExpression()), !dbg !132
  store i64 %.previous.lb., i64* %.previous.lb..addr, align 8, !tbaa !133
  call void @llvm.dbg.declare(metadata i64* %.previous.lb..addr, metadata !118, metadata !DIExpression()), !dbg !132
  store i64 %.previous.ub., i64* %.previous.ub..addr, align 8, !tbaa !133
  call void @llvm.dbg.declare(metadata i64* %.previous.ub..addr, metadata !119, metadata !DIExpression()), !dbg !132
  store [64 x i32]* %var, [64 x i32]** %var.addr, align 8, !tbaa !73
  call void @llvm.dbg.declare(metadata [64 x i32]** %var.addr, metadata !120, metadata !DIExpression()), !dbg !135
  %2 = load [64 x i32]*, [64 x i32]** %var.addr, align 8, !dbg !136, !tbaa !73
  %3 = bitcast i32* %.omp.iv to i8*, !dbg !136
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #5, !dbg !136
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !121, metadata !DIExpression()), !dbg !132
  %4 = bitcast i32* %.omp.lb to i8*, !dbg !136
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #5, !dbg !136
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !122, metadata !DIExpression()), !dbg !132
  store i32 0, i32* %.omp.lb, align 4, !dbg !137, !tbaa !24
  %5 = bitcast i32* %.omp.ub to i8*, !dbg !136
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #5, !dbg !136
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !123, metadata !DIExpression()), !dbg !132
  store i32 99, i32* %.omp.ub, align 4, !dbg !137, !tbaa !24
  %6 = load i64, i64* %.previous.lb..addr, align 8, !dbg !136, !tbaa !133
  %conv = trunc i64 %6 to i32, !dbg !136
  %7 = load i64, i64* %.previous.ub..addr, align 8, !dbg !136, !tbaa !133
  %conv1 = trunc i64 %7 to i32, !dbg !136
  store i32 %conv, i32* %.omp.lb, align 4, !dbg !136, !tbaa !24
  store i32 %conv1, i32* %.omp.ub, align 4, !dbg !136, !tbaa !24
  %8 = bitcast i32* %.omp.stride to i8*, !dbg !136
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #5, !dbg !136
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !124, metadata !DIExpression()), !dbg !132
  store i32 1, i32* %.omp.stride, align 4, !dbg !137, !tbaa !24
  %9 = bitcast i32* %.omp.is_last to i8*, !dbg !136
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #5, !dbg !136
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !125, metadata !DIExpression()), !dbg !132
  store i32 0, i32* %.omp.is_last, align 4, !dbg !137, !tbaa !24
  %10 = bitcast [64 x i32]* %var2 to i8*, !dbg !136
  call void @llvm.lifetime.start.p0i8(i64 256, i8* %10) #5, !dbg !136
  call void @llvm.dbg.declare(metadata [64 x i32]* %var2, metadata !126, metadata !DIExpression()), !dbg !132
  %array.begin = getelementptr inbounds [64 x i32], [64 x i32]* %var2, i32 0, i32 0, !dbg !136
  %11 = getelementptr i32, i32* %array.begin, i64 64, !dbg !136
  %omp.arrayinit.isempty = icmp eq i32* %array.begin, %11, !dbg !136
  br i1 %omp.arrayinit.isempty, label %omp.arrayinit.done, label %omp.arrayinit.body, !dbg !136

omp.arrayinit.body:                               ; preds = %omp.arrayinit.body, %entry
  %omp.arraycpy.destElementPast = phi i32* [ %array.begin, %entry ], [ %omp.arraycpy.dest.element, %omp.arrayinit.body ], !dbg !136
  store i32 0, i32* %omp.arraycpy.destElementPast, align 4, !dbg !136, !tbaa !24
  %omp.arraycpy.dest.element = getelementptr i32, i32* %omp.arraycpy.destElementPast, i32 1, !dbg !136
  %omp.arraycpy.done = icmp eq i32* %omp.arraycpy.dest.element, %11, !dbg !136
  br i1 %omp.arraycpy.done, label %omp.arrayinit.done, label %omp.arrayinit.body, !dbg !136

omp.arrayinit.done:                               ; preds = %omp.arrayinit.body, %entry
  %lhs.begin = bitcast [64 x i32]* %2 to i32*, !dbg !136
  %rhs.begin = bitcast [64 x i32]* %var2 to i32*, !dbg !136
  %12 = bitcast i32* %i to i8*, !dbg !136
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #5, !dbg !136
  call void @llvm.dbg.declare(metadata i32* %i, metadata !127, metadata !DIExpression()), !dbg !132
  %13 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !136
  store i8* getelementptr inbounds ([77 x i8], [77 x i8]* @1, i32 0, i32 0), i8** %13, align 8, !dbg !136, !tbaa !77
  %14 = load i32*, i32** %.global_tid..addr, align 8, !dbg !136
  %15 = load i32, i32* %14, align 4, !dbg !136, !tbaa !24
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %15, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !136
  %16 = load i32, i32* %.omp.ub, align 4, !dbg !137, !tbaa !24
  %cmp = icmp sgt i32 %16, 99, !dbg !137
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !137

cond.true:                                        ; preds = %omp.arrayinit.done
  br label %cond.end, !dbg !137

cond.false:                                       ; preds = %omp.arrayinit.done
  %17 = load i32, i32* %.omp.ub, align 4, !dbg !137, !tbaa !24
  br label %cond.end, !dbg !137

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 99, %cond.true ], [ %17, %cond.false ], !dbg !137
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !137, !tbaa !24
  %18 = load i32, i32* %.omp.lb, align 4, !dbg !137, !tbaa !24
  store i32 %18, i32* %.omp.iv, align 4, !dbg !137, !tbaa !24
  br label %omp.inner.for.cond, !dbg !136

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc18, %cond.end
  %19 = load i32, i32* %.omp.iv, align 4, !dbg !137, !tbaa !24
  %20 = load i32, i32* %.omp.ub, align 4, !dbg !137, !tbaa !24
  %cmp4 = icmp sle i32 %19, %20, !dbg !136
  br i1 %cmp4, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !136

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end20, !dbg !136

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %21 = load i32, i32* %.omp.iv, align 4, !dbg !137, !tbaa !24
  %mul = mul nsw i32 %21, 1, !dbg !138
  %add = add nsw i32 0, %mul, !dbg !138
  store i32 %add, i32* %i, align 4, !dbg !138, !tbaa !24
  %22 = bitcast i32* %.omp.iv7 to i8*, !dbg !139
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %22) #5, !dbg !139
  call void @llvm.dbg.declare(metadata i32* %.omp.iv7, metadata !128, metadata !DIExpression()), !dbg !140
  store i32 0, i32* %.omp.iv7, align 4, !dbg !141, !tbaa !24
  %23 = bitcast i32* %i8 to i8*, !dbg !139
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %23) #5, !dbg !139
  call void @llvm.dbg.declare(metadata i32* %i8, metadata !131, metadata !DIExpression()), !dbg !140
  br label %omp.inner.for.cond9, !dbg !139

omp.inner.for.cond9:                              ; preds = %omp.inner.for.inc, %omp.inner.for.body
  %24 = load i32, i32* %.omp.iv7, align 4, !dbg !141, !tbaa !24, !llvm.access.group !142
  %cmp10 = icmp slt i32 %24, 64, !dbg !143
  br i1 %cmp10, label %omp.inner.for.body13, label %omp.inner.for.cond.cleanup12, !dbg !139

omp.inner.for.cond.cleanup12:                     ; preds = %omp.inner.for.cond9
  br label %omp.inner.for.end, !dbg !139

omp.inner.for.body13:                             ; preds = %omp.inner.for.cond9
  %25 = load i32, i32* %.omp.iv7, align 4, !dbg !141, !tbaa !24, !llvm.access.group !142
  %mul14 = mul nsw i32 %25, 1, !dbg !144
  %add15 = add nsw i32 0, %mul14, !dbg !144
  store i32 %add15, i32* %i8, align 4, !dbg !144, !tbaa !24, !llvm.access.group !142
  %26 = load i32, i32* %i8, align 4, !dbg !145, !tbaa !24, !llvm.access.group !142
  %idxprom = sext i32 %26 to i64, !dbg !147
  %arrayidx = getelementptr inbounds [64 x i32], [64 x i32]* %var2, i64 0, i64 %idxprom, !dbg !147
  %27 = load i32, i32* %arrayidx, align 4, !dbg !148, !tbaa !24, !llvm.access.group !142
  %inc = add nsw i32 %27, 1, !dbg !148
  store i32 %inc, i32* %arrayidx, align 4, !dbg !148, !tbaa !24, !llvm.access.group !142
  br label %omp.body.continue, !dbg !149

omp.body.continue:                                ; preds = %omp.inner.for.body13
  br label %omp.inner.for.inc, !dbg !150

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %28 = load i32, i32* %.omp.iv7, align 4, !dbg !141, !tbaa !24, !llvm.access.group !142
  %add16 = add nsw i32 %28, 1, !dbg !143
  store i32 %add16, i32* %.omp.iv7, align 4, !dbg !143, !tbaa !24, !llvm.access.group !142
  br label %omp.inner.for.cond9, !dbg !150, !llvm.loop !151

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup12
  store i32 64, i32* %i8, align 4, !dbg !144, !tbaa !24
  %29 = bitcast i32* %i8 to i8*, !dbg !150
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %29) #5, !dbg !150
  %30 = bitcast i32* %.omp.iv7 to i8*, !dbg !150
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %30) #5, !dbg !150
  br label %omp.body.continue17, !dbg !155

omp.body.continue17:                              ; preds = %omp.inner.for.end
  br label %omp.inner.for.inc18, !dbg !156

omp.inner.for.inc18:                              ; preds = %omp.body.continue17
  %31 = load i32, i32* %.omp.iv, align 4, !dbg !137, !tbaa !24
  %add19 = add nsw i32 %31, 1, !dbg !136
  store i32 %add19, i32* %.omp.iv, align 4, !dbg !136, !tbaa !24
  br label %omp.inner.for.cond, !dbg !156, !llvm.loop !157

omp.inner.for.end20:                              ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !156

omp.loop.exit:                                    ; preds = %omp.inner.for.end20
  %32 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !156
  store i8* getelementptr inbounds ([78 x i8], [78 x i8]* @3, i32 0, i32 0), i8** %32, align 8, !dbg !156, !tbaa !77
  %33 = load i32*, i32** %.global_tid..addr, align 8, !dbg !156
  %34 = load i32, i32* %33, align 4, !dbg !156, !tbaa !24
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %34), !dbg !156
  %35 = getelementptr inbounds [1 x i8*], [1 x i8*]* %.omp.reduction.red_list, i64 0, i64 0, !dbg !156
  %36 = bitcast i32* %rhs.begin to i8*, !dbg !156
  store i8* %36, i8** %35, align 8, !dbg !156
  %37 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !156
  store i8* getelementptr inbounds ([78 x i8], [78 x i8]* @3, i32 0, i32 0), i8** %37, align 8, !dbg !156, !tbaa !77
  %38 = load i32*, i32** %.global_tid..addr, align 8, !dbg !156
  %39 = load i32, i32* %38, align 4, !dbg !156, !tbaa !24
  %40 = bitcast [1 x i8*]* %.omp.reduction.red_list to i8*, !dbg !156
  %41 = call i32 @__kmpc_reduce_nowait(%struct.ident_t* %.kmpc_loc.addr, i32 %39, i32 1, i64 8, i8* %40, void (i8*, i8*)* @.omp.reduction.reduction_func, [8 x i32]* @.gomp_critical_user_.reduction.var), !dbg !156
  switch i32 %41, label %.omp.reduction.default [
    i32 1, label %.omp.reduction.case1
    i32 2, label %.omp.reduction.case2
  ], !dbg !156

.omp.reduction.case1:                             ; preds = %omp.loop.exit
  %42 = getelementptr i32, i32* %lhs.begin, i64 64, !dbg !156
  %omp.arraycpy.isempty = icmp eq i32* %lhs.begin, %42, !dbg !156
  br i1 %omp.arraycpy.isempty, label %omp.arraycpy.done25, label %omp.arraycpy.body, !dbg !156

omp.arraycpy.body:                                ; preds = %omp.arraycpy.body, %.omp.reduction.case1
  %omp.arraycpy.srcElementPast = phi i32* [ %rhs.begin, %.omp.reduction.case1 ], [ %omp.arraycpy.src.element, %omp.arraycpy.body ], !dbg !156
  %omp.arraycpy.destElementPast21 = phi i32* [ %lhs.begin, %.omp.reduction.case1 ], [ %omp.arraycpy.dest.element23, %omp.arraycpy.body ], !dbg !156
  %43 = load i32, i32* %omp.arraycpy.destElementPast21, align 4, !dbg !159, !tbaa !24
  %44 = load i32, i32* %omp.arraycpy.srcElementPast, align 4, !dbg !159, !tbaa !24
  %add22 = add nsw i32 %43, %44, !dbg !160
  store i32 %add22, i32* %omp.arraycpy.destElementPast21, align 4, !dbg !160, !tbaa !24
  %omp.arraycpy.dest.element23 = getelementptr i32, i32* %omp.arraycpy.destElementPast21, i32 1, !dbg !156
  %omp.arraycpy.src.element = getelementptr i32, i32* %omp.arraycpy.srcElementPast, i32 1, !dbg !156
  %omp.arraycpy.done24 = icmp eq i32* %omp.arraycpy.dest.element23, %42, !dbg !156
  br i1 %omp.arraycpy.done24, label %omp.arraycpy.done25, label %omp.arraycpy.body, !dbg !156

omp.arraycpy.done25:                              ; preds = %omp.arraycpy.body, %.omp.reduction.case1
  call void @__kmpc_end_reduce_nowait(%struct.ident_t* %.kmpc_loc.addr, i32 %39, [8 x i32]* @.gomp_critical_user_.reduction.var), !dbg !156
  br label %.omp.reduction.default, !dbg !156

.omp.reduction.case2:                             ; preds = %omp.loop.exit
  %45 = getelementptr i32, i32* %lhs.begin, i64 64, !dbg !156
  %omp.arraycpy.isempty26 = icmp eq i32* %lhs.begin, %45, !dbg !156
  br i1 %omp.arraycpy.isempty26, label %omp.arraycpy.done33, label %omp.arraycpy.body27, !dbg !156

omp.arraycpy.body27:                              ; preds = %omp.arraycpy.body27, %.omp.reduction.case2
  %omp.arraycpy.srcElementPast28 = phi i32* [ %rhs.begin, %.omp.reduction.case2 ], [ %omp.arraycpy.src.element31, %omp.arraycpy.body27 ], !dbg !156
  %omp.arraycpy.destElementPast29 = phi i32* [ %lhs.begin, %.omp.reduction.case2 ], [ %omp.arraycpy.dest.element30, %omp.arraycpy.body27 ], !dbg !156
  %46 = load i32, i32* %omp.arraycpy.srcElementPast28, align 4, !dbg !159, !tbaa !24
  %47 = atomicrmw add i32* %omp.arraycpy.destElementPast29, i32 %46 monotonic, !dbg !156
  %omp.arraycpy.dest.element30 = getelementptr i32, i32* %omp.arraycpy.destElementPast29, i32 1, !dbg !156
  %omp.arraycpy.src.element31 = getelementptr i32, i32* %omp.arraycpy.srcElementPast28, i32 1, !dbg !156
  %omp.arraycpy.done32 = icmp eq i32* %omp.arraycpy.dest.element30, %45, !dbg !156
  br i1 %omp.arraycpy.done32, label %omp.arraycpy.done33, label %omp.arraycpy.body27, !dbg !156

omp.arraycpy.done33:                              ; preds = %omp.arraycpy.body27, %.omp.reduction.case2
  br label %.omp.reduction.default, !dbg !156

.omp.reduction.default:                           ; preds = %omp.arraycpy.done33, %omp.arraycpy.done25, %omp.loop.exit
  %48 = bitcast i32* %i to i8*, !dbg !156
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %48) #5, !dbg !156
  %49 = bitcast [64 x i32]* %var2 to i8*, !dbg !156
  call void @llvm.lifetime.end.p0i8(i64 256, i8* %49) #5, !dbg !156
  %50 = bitcast i32* %.omp.is_last to i8*, !dbg !156
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %50) #5, !dbg !156
  %51 = bitcast i32* %.omp.stride to i8*, !dbg !156
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %51) #5, !dbg !156
  %52 = bitcast i32* %.omp.ub to i8*, !dbg !156
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %52) #5, !dbg !156
  %53 = bitcast i32* %.omp.lb to i8*, !dbg !156
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %53) #5, !dbg !156
  %54 = bitcast i32* %.omp.iv to i8*, !dbg !156
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %54) #5, !dbg !156
  ret void, !dbg !161
}

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp.reduction.reduction_func(i8* %0, i8* %1) #3 !dbg !162 {
entry:
  %.addr = alloca i8*, align 8
  %.addr1 = alloca i8*, align 8
  store i8* %0, i8** %.addr, align 8, !tbaa !73
  call void @llvm.dbg.declare(metadata i8** %.addr, metadata !165, metadata !DIExpression()), !dbg !168
  store i8* %1, i8** %.addr1, align 8, !tbaa !73
  call void @llvm.dbg.declare(metadata i8** %.addr1, metadata !167, metadata !DIExpression()), !dbg !168
  %2 = load i8*, i8** %.addr, align 8, !dbg !169
  %3 = bitcast i8* %2 to [1 x i8*]*, !dbg !169
  %4 = load i8*, i8** %.addr1, align 8, !dbg !169
  %5 = bitcast i8* %4 to [1 x i8*]*, !dbg !169
  %6 = getelementptr inbounds [1 x i8*], [1 x i8*]* %5, i64 0, i64 0, !dbg !169
  %7 = load i8*, i8** %6, align 8, !dbg !169
  %8 = bitcast i8* %7 to i32*, !dbg !169
  %9 = getelementptr inbounds [1 x i8*], [1 x i8*]* %3, i64 0, i64 0, !dbg !169
  %10 = load i8*, i8** %9, align 8, !dbg !169
  %11 = bitcast i8* %10 to i32*, !dbg !169
  %12 = getelementptr i32, i32* %11, i64 64, !dbg !169
  %omp.arraycpy.isempty = icmp eq i32* %11, %12, !dbg !169
  br i1 %omp.arraycpy.isempty, label %omp.arraycpy.done2, label %omp.arraycpy.body, !dbg !169

omp.arraycpy.body:                                ; preds = %omp.arraycpy.body, %entry
  %omp.arraycpy.srcElementPast = phi i32* [ %8, %entry ], [ %omp.arraycpy.src.element, %omp.arraycpy.body ], !dbg !169
  %omp.arraycpy.destElementPast = phi i32* [ %11, %entry ], [ %omp.arraycpy.dest.element, %omp.arraycpy.body ], !dbg !169
  %13 = load i32, i32* %omp.arraycpy.destElementPast, align 4, !dbg !170, !tbaa !24
  %14 = load i32, i32* %omp.arraycpy.srcElementPast, align 4, !dbg !170, !tbaa !24
  %add = add nsw i32 %13, %14, !dbg !171
  store i32 %add, i32* %omp.arraycpy.destElementPast, align 4, !dbg !171, !tbaa !24
  %omp.arraycpy.dest.element = getelementptr i32, i32* %omp.arraycpy.destElementPast, i32 1, !dbg !169
  %omp.arraycpy.src.element = getelementptr i32, i32* %omp.arraycpy.srcElementPast, i32 1, !dbg !169
  %omp.arraycpy.done = icmp eq i32* %omp.arraycpy.dest.element, %12, !dbg !169
  br i1 %omp.arraycpy.done, label %omp.arraycpy.done2, label %omp.arraycpy.body, !dbg !169

omp.arraycpy.done2:                               ; preds = %omp.arraycpy.body, %entry
  ret void, !dbg !170
}

declare dso_local i32 @__kmpc_reduce_nowait(%struct.ident_t*, i32, i32, i64, i8*, void (i8*, i8*)*, [8 x i32]*)

declare dso_local void @__kmpc_end_reduce_nowait(%struct.ident_t*, i32, [8 x i32]*)

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i64 %.previous.lb., i64 %.previous.ub., [64 x i32]* dereferenceable(256) %var) #3 !dbg !172 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %.previous.lb..addr = alloca i64, align 8
  %.previous.ub..addr = alloca i64, align 8
  %var.addr = alloca [64 x i32]*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !73
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !174, metadata !DIExpression()), !dbg !179
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !73
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !175, metadata !DIExpression()), !dbg !179
  store i64 %.previous.lb., i64* %.previous.lb..addr, align 8, !tbaa !133
  call void @llvm.dbg.declare(metadata i64* %.previous.lb..addr, metadata !176, metadata !DIExpression()), !dbg !179
  store i64 %.previous.ub., i64* %.previous.ub..addr, align 8, !tbaa !133
  call void @llvm.dbg.declare(metadata i64* %.previous.ub..addr, metadata !177, metadata !DIExpression()), !dbg !179
  store [64 x i32]* %var, [64 x i32]** %var.addr, align 8, !tbaa !73
  call void @llvm.dbg.declare(metadata [64 x i32]** %var.addr, metadata !178, metadata !DIExpression()), !dbg !179
  %0 = load [64 x i32]*, [64 x i32]** %var.addr, align 8, !dbg !180, !tbaa !73
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !180, !tbaa !73
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !180, !tbaa !73
  %3 = load i64, i64* %.previous.lb..addr, align 8, !dbg !180, !tbaa !133
  %4 = load i64, i64* %.previous.ub..addr, align 8, !dbg !180, !tbaa !133
  %5 = load [64 x i32]*, [64 x i32]** %var.addr, align 8, !dbg !180, !tbaa !73
  call void @.omp_outlined._debug__.1(i32* %1, i32* %2, i64 %3, i64 %4, [64 x i32]* %5) #5, !dbg !180
  ret void, !dbg !180
}

declare !callback !181 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp.reduction.reduction_func.2(i8* %0, i8* %1) #3 !dbg !183 {
entry:
  %.addr = alloca i8*, align 8
  %.addr1 = alloca i8*, align 8
  store i8* %0, i8** %.addr, align 8, !tbaa !73
  call void @llvm.dbg.declare(metadata i8** %.addr, metadata !185, metadata !DIExpression()), !dbg !187
  store i8* %1, i8** %.addr1, align 8, !tbaa !73
  call void @llvm.dbg.declare(metadata i8** %.addr1, metadata !186, metadata !DIExpression()), !dbg !187
  %2 = load i8*, i8** %.addr, align 8, !dbg !188
  %3 = bitcast i8* %2 to [1 x i8*]*, !dbg !188
  %4 = load i8*, i8** %.addr1, align 8, !dbg !188
  %5 = bitcast i8* %4 to [1 x i8*]*, !dbg !188
  %6 = getelementptr inbounds [1 x i8*], [1 x i8*]* %5, i64 0, i64 0, !dbg !188
  %7 = load i8*, i8** %6, align 8, !dbg !188
  %8 = bitcast i8* %7 to i32*, !dbg !188
  %9 = getelementptr inbounds [1 x i8*], [1 x i8*]* %3, i64 0, i64 0, !dbg !188
  %10 = load i8*, i8** %9, align 8, !dbg !188
  %11 = bitcast i8* %10 to i32*, !dbg !188
  %12 = getelementptr i32, i32* %11, i64 64, !dbg !188
  %omp.arraycpy.isempty = icmp eq i32* %11, %12, !dbg !188
  br i1 %omp.arraycpy.isempty, label %omp.arraycpy.done2, label %omp.arraycpy.body, !dbg !188

omp.arraycpy.body:                                ; preds = %omp.arraycpy.body, %entry
  %omp.arraycpy.srcElementPast = phi i32* [ %8, %entry ], [ %omp.arraycpy.src.element, %omp.arraycpy.body ], !dbg !188
  %omp.arraycpy.destElementPast = phi i32* [ %11, %entry ], [ %omp.arraycpy.dest.element, %omp.arraycpy.body ], !dbg !188
  %13 = load i32, i32* %omp.arraycpy.destElementPast, align 4, !dbg !189, !tbaa !24
  %14 = load i32, i32* %omp.arraycpy.srcElementPast, align 4, !dbg !189, !tbaa !24
  %add = add nsw i32 %13, %14, !dbg !190
  store i32 %add, i32* %omp.arraycpy.destElementPast, align 4, !dbg !190, !tbaa !24
  %omp.arraycpy.dest.element = getelementptr i32, i32* %omp.arraycpy.destElementPast, i32 1, !dbg !188
  %omp.arraycpy.src.element = getelementptr i32, i32* %omp.arraycpy.srcElementPast, i32 1, !dbg !188
  %omp.arraycpy.done = icmp eq i32* %omp.arraycpy.dest.element, %12, !dbg !188
  br i1 %omp.arraycpy.done, label %omp.arraycpy.done2, label %omp.arraycpy.body, !dbg !188

omp.arraycpy.done2:                               ; preds = %omp.arraycpy.body, %entry
  ret void, !dbg !189
}

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined..3(i32* noalias %.global_tid., i32* noalias %.bound_tid., [64 x i32]* dereferenceable(256) %var) #3 !dbg !191 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %var.addr = alloca [64 x i32]*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !73
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !193, metadata !DIExpression()), !dbg !196
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !73
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !194, metadata !DIExpression()), !dbg !196
  store [64 x i32]* %var, [64 x i32]** %var.addr, align 8, !tbaa !73
  call void @llvm.dbg.declare(metadata [64 x i32]** %var.addr, metadata !195, metadata !DIExpression()), !dbg !196
  %0 = load [64 x i32]*, [64 x i32]** %var.addr, align 8, !dbg !197, !tbaa !73
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !197, !tbaa !73
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !197, !tbaa !73
  %3 = load [64 x i32]*, [64 x i32]** %var.addr, align 8, !dbg !197, !tbaa !73
  call void @.omp_outlined._debug__(i32* %1, i32* %2, [64 x i32]* %3) #5, !dbg !197
  ret void, !dbg !197
}

declare !callback !181 dso_local void @__kmpc_fork_teams(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

; Function Attrs: norecurse nounwind uwtable
define internal void @__omp_offloading_1030a_2160965_main_l26([64 x i32]* dereferenceable(256) %var) #3 !dbg !198 {
entry:
  %var.addr = alloca [64 x i32]*, align 8
  store [64 x i32]* %var, [64 x i32]** %var.addr, align 8, !tbaa !73
  call void @llvm.dbg.declare(metadata [64 x i32]** %var.addr, metadata !200, metadata !DIExpression()), !dbg !201
  %0 = load [64 x i32]*, [64 x i32]** %var.addr, align 8, !dbg !202, !tbaa !73
  %1 = load [64 x i32]*, [64 x i32]** %var.addr, align 8, !dbg !202, !tbaa !73
  call void @__omp_offloading_1030a_2160965_main_l26_debug__([64 x i32]* %1) #5, !dbg !202
  ret void, !dbg !202
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
!1 = !DIFile(filename: "integration/dataracebench/DRB163-simdmissinglock1-orig-gpu-no.c", directory: "/home/brad/Code/OpenRace/tests/data")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.1 "}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 19, type: !8, scopeLine: 19, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !11)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !{!12, !16, !18}
!12 = !DILocalVariable(name: "var", scope: !7, file: !1, line: 20, type: !13)
!13 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 2048, elements: !14)
!14 = !{!15}
!15 = !DISubrange(count: 64)
!16 = !DILocalVariable(name: "i", scope: !17, file: !1, line: 22, type: !10)
!17 = distinct !DILexicalBlock(scope: !7, file: !1, line: 22, column: 3)
!18 = !DILocalVariable(name: "i", scope: !19, file: !1, line: 35, type: !10)
!19 = distinct !DILexicalBlock(scope: !7, file: !1, line: 35, column: 3)
!20 = !DILocation(line: 20, column: 3, scope: !7)
!21 = !DILocation(line: 20, column: 7, scope: !7)
!22 = !DILocation(line: 22, column: 7, scope: !17)
!23 = !DILocation(line: 22, column: 11, scope: !17)
!24 = !{!25, !25, i64 0}
!25 = !{!"int", !26, i64 0}
!26 = !{!"omnipotent char", !27, i64 0}
!27 = !{!"Simple C/C++ TBAA"}
!28 = !DILocation(line: 22, column: 16, scope: !29)
!29 = distinct !DILexicalBlock(scope: !17, file: !1, line: 22, column: 3)
!30 = !DILocation(line: 22, column: 17, scope: !29)
!31 = !DILocation(line: 22, column: 3, scope: !17)
!32 = !DILocation(line: 22, column: 3, scope: !29)
!33 = !DILocation(line: 23, column: 9, scope: !34)
!34 = distinct !DILexicalBlock(scope: !29, file: !1, line: 22, column: 25)
!35 = !DILocation(line: 23, column: 5, scope: !34)
!36 = !DILocation(line: 23, column: 11, scope: !34)
!37 = !DILocation(line: 24, column: 3, scope: !34)
!38 = !DILocation(line: 22, column: 22, scope: !29)
!39 = distinct !{!39, !31, !40}
!40 = !DILocation(line: 24, column: 3, scope: !17)
!41 = !DILocation(line: 26, column: 3, scope: !42)
!42 = distinct !DILexicalBlock(scope: !7, file: !1, line: 26, column: 3)
!43 = !DILocation(line: 35, column: 7, scope: !19)
!44 = !DILocation(line: 35, column: 11, scope: !19)
!45 = !DILocation(line: 35, column: 16, scope: !46)
!46 = distinct !DILexicalBlock(scope: !19, file: !1, line: 35, column: 3)
!47 = !DILocation(line: 35, column: 17, scope: !46)
!48 = !DILocation(line: 35, column: 3, scope: !19)
!49 = !DILocation(line: 35, column: 3, scope: !46)
!50 = !DILocation(line: 36, column: 12, scope: !51)
!51 = distinct !DILexicalBlock(scope: !52, file: !1, line: 36, column: 8)
!52 = distinct !DILexicalBlock(scope: !46, file: !1, line: 35, column: 25)
!53 = !DILocation(line: 36, column: 8, scope: !51)
!54 = !DILocation(line: 36, column: 14, scope: !51)
!55 = !DILocation(line: 36, column: 8, scope: !52)
!56 = !DILocation(line: 37, column: 25, scope: !57)
!57 = distinct !DILexicalBlock(scope: !51, file: !1, line: 36, column: 20)
!58 = !DILocation(line: 37, column: 21, scope: !57)
!59 = !DILocation(line: 37, column: 7, scope: !57)
!60 = !DILocation(line: 38, column: 5, scope: !57)
!61 = !DILocation(line: 39, column: 3, scope: !52)
!62 = !DILocation(line: 35, column: 22, scope: !46)
!63 = distinct !{!63, !48, !64}
!64 = !DILocation(line: 39, column: 3, scope: !19)
!65 = !DILocation(line: 42, column: 1, scope: !7)
!66 = !DILocation(line: 41, column: 3, scope: !7)
!67 = distinct !DISubprogram(name: "__omp_offloading_1030a_2160965_main_l26_debug__", scope: !1, file: !1, line: 27, type: !68, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !71)
!68 = !DISubroutineType(types: !69)
!69 = !{null, !70}
!70 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !13, size: 64)
!71 = !{!72}
!72 = !DILocalVariable(name: "var", arg: 1, scope: !67, file: !1, line: 20, type: !70)
!73 = !{!74, !74, i64 0}
!74 = !{!"any pointer", !26, i64 0}
!75 = !DILocation(line: 20, column: 7, scope: !67)
!76 = !DILocation(line: 27, column: 3, scope: !67)
!77 = !{!78, !74, i64 16}
!78 = !{!"ident_t", !25, i64 0, !25, i64 4, !25, i64 8, !25, i64 12, !74, i64 16}
!79 = !DILocation(line: 27, column: 62, scope: !67)
!80 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 28, type: !81, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !87)
!81 = !DISubroutineType(types: !82)
!82 = !{null, !83, !83, !70}
!83 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !84)
!84 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !85)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!87 = !{!88, !89, !90, !91, !92, !93, !94, !95, !96, !97}
!88 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !80, type: !83, flags: DIFlagArtificial)
!89 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !80, type: !83, flags: DIFlagArtificial)
!90 = !DILocalVariable(name: "var", arg: 3, scope: !80, file: !1, line: 20, type: !70)
!91 = !DILocalVariable(name: "var", scope: !80, type: !13, flags: DIFlagArtificial)
!92 = !DILocalVariable(name: ".omp.iv", scope: !80, type: !10, flags: DIFlagArtificial)
!93 = !DILocalVariable(name: ".omp.comb.lb", scope: !80, type: !10, flags: DIFlagArtificial)
!94 = !DILocalVariable(name: ".omp.comb.ub", scope: !80, type: !10, flags: DIFlagArtificial)
!95 = !DILocalVariable(name: ".omp.stride", scope: !80, type: !10, flags: DIFlagArtificial)
!96 = !DILocalVariable(name: ".omp.is_last", scope: !80, type: !10, flags: DIFlagArtificial)
!97 = !DILocalVariable(name: "i", scope: !80, type: !10, flags: DIFlagArtificial)
!98 = !DILocation(line: 0, scope: !80)
!99 = !DILocation(line: 20, column: 7, scope: !80)
!100 = !DILocation(line: 28, column: 3, scope: !80)
!101 = !DILocation(line: 28, column: 8, scope: !80)
!102 = !DILocation(line: 27, column: 3, scope: !80)
!103 = !DILocation(line: 27, column: 62, scope: !104)
!104 = distinct !DILexicalBlock(scope: !80, file: !1, line: 27, column: 3)
!105 = distinct !{!105, !102, !106}
!106 = !DILocation(line: 27, column: 62, scope: !80)
!107 = !DILocation(line: 27, column: 57, scope: !80)
!108 = !DILocation(line: 27, column: 55, scope: !80)
!109 = !DILocation(line: 33, column: 3, scope: !80)
!110 = distinct !DISubprogram(name: ".omp_outlined._debug__.1", scope: !1, file: !1, line: 28, type: !111, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !115)
!111 = !DISubroutineType(types: !112)
!112 = !{null, !83, !83, !113, !113, !70}
!113 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !114)
!114 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!115 = !{!116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !127, !128, !131}
!116 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !110, type: !83, flags: DIFlagArtificial)
!117 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !110, type: !83, flags: DIFlagArtificial)
!118 = !DILocalVariable(name: ".previous.lb.", arg: 3, scope: !110, type: !113, flags: DIFlagArtificial)
!119 = !DILocalVariable(name: ".previous.ub.", arg: 4, scope: !110, type: !113, flags: DIFlagArtificial)
!120 = !DILocalVariable(name: "var", arg: 5, scope: !110, file: !1, line: 20, type: !70)
!121 = !DILocalVariable(name: ".omp.iv", scope: !110, type: !10, flags: DIFlagArtificial)
!122 = !DILocalVariable(name: ".omp.lb", scope: !110, type: !10, flags: DIFlagArtificial)
!123 = !DILocalVariable(name: ".omp.ub", scope: !110, type: !10, flags: DIFlagArtificial)
!124 = !DILocalVariable(name: ".omp.stride", scope: !110, type: !10, flags: DIFlagArtificial)
!125 = !DILocalVariable(name: ".omp.is_last", scope: !110, type: !10, flags: DIFlagArtificial)
!126 = !DILocalVariable(name: "var", scope: !110, type: !13, flags: DIFlagArtificial)
!127 = !DILocalVariable(name: "i", scope: !110, type: !10, flags: DIFlagArtificial)
!128 = !DILocalVariable(name: ".omp.iv", scope: !129, type: !10, flags: DIFlagArtificial)
!129 = distinct !DILexicalBlock(scope: !130, file: !1, line: 29, column: 5)
!130 = distinct !DILexicalBlock(scope: !110, file: !1, line: 28, column: 26)
!131 = !DILocalVariable(name: "i", scope: !129, type: !10, flags: DIFlagArtificial)
!132 = !DILocation(line: 0, scope: !110)
!133 = !{!134, !134, i64 0}
!134 = !{!"long", !26, i64 0}
!135 = !DILocation(line: 20, column: 7, scope: !110)
!136 = !DILocation(line: 28, column: 3, scope: !110)
!137 = !DILocation(line: 28, column: 8, scope: !110)
!138 = !DILocation(line: 28, column: 22, scope: !110)
!139 = !DILocation(line: 29, column: 5, scope: !130)
!140 = !DILocation(line: 0, scope: !129)
!141 = !DILocation(line: 30, column: 9, scope: !129)
!142 = distinct !{}
!143 = !DILocation(line: 30, column: 5, scope: !129)
!144 = !DILocation(line: 30, column: 23, scope: !129)
!145 = !DILocation(line: 31, column: 11, scope: !146)
!146 = distinct !DILexicalBlock(scope: !129, file: !1, line: 30, column: 27)
!147 = !DILocation(line: 31, column: 7, scope: !146)
!148 = !DILocation(line: 31, column: 13, scope: !146)
!149 = !DILocation(line: 32, column: 5, scope: !146)
!150 = !DILocation(line: 29, column: 5, scope: !129)
!151 = distinct !{!151, !150, !152, !153, !154}
!152 = !DILocation(line: 29, column: 21, scope: !129)
!153 = !{!"llvm.loop.parallel_accesses", !142}
!154 = !{!"llvm.loop.vectorize.enable", i1 true}
!155 = !DILocation(line: 33, column: 3, scope: !130)
!156 = !DILocation(line: 27, column: 3, scope: !110)
!157 = distinct !{!157, !156, !158}
!158 = !DILocation(line: 27, column: 62, scope: !110)
!159 = !DILocation(line: 27, column: 57, scope: !110)
!160 = !DILocation(line: 27, column: 55, scope: !110)
!161 = !DILocation(line: 33, column: 3, scope: !110)
!162 = distinct !DISubprogram(linkageName: ".omp.reduction.reduction_func", scope: !1, file: !1, line: 27, type: !163, scopeLine: 27, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !164)
!163 = !DISubroutineType(types: !2)
!164 = !{!165, !167}
!165 = !DILocalVariable(arg: 1, scope: !162, type: !166, flags: DIFlagArtificial)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!167 = !DILocalVariable(arg: 2, scope: !162, type: !166, flags: DIFlagArtificial)
!168 = !DILocation(line: 0, scope: !162)
!169 = !DILocation(line: 27, column: 62, scope: !162)
!170 = !DILocation(line: 27, column: 57, scope: !162)
!171 = !DILocation(line: 27, column: 55, scope: !162)
!172 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 28, type: !111, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !173)
!173 = !{!174, !175, !176, !177, !178}
!174 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !172, type: !83, flags: DIFlagArtificial)
!175 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !172, type: !83, flags: DIFlagArtificial)
!176 = !DILocalVariable(name: ".previous.lb.", arg: 3, scope: !172, type: !113, flags: DIFlagArtificial)
!177 = !DILocalVariable(name: ".previous.ub.", arg: 4, scope: !172, type: !113, flags: DIFlagArtificial)
!178 = !DILocalVariable(name: "var", arg: 5, scope: !172, type: !70, flags: DIFlagArtificial)
!179 = !DILocation(line: 0, scope: !172)
!180 = !DILocation(line: 28, column: 3, scope: !172)
!181 = !{!182}
!182 = !{i64 2, i64 -1, i64 -1, i1 true}
!183 = distinct !DISubprogram(linkageName: ".omp.reduction.reduction_func.2", scope: !1, file: !1, line: 27, type: !163, scopeLine: 27, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !184)
!184 = !{!185, !186}
!185 = !DILocalVariable(arg: 1, scope: !183, type: !166, flags: DIFlagArtificial)
!186 = !DILocalVariable(arg: 2, scope: !183, type: !166, flags: DIFlagArtificial)
!187 = !DILocation(line: 0, scope: !183)
!188 = !DILocation(line: 27, column: 62, scope: !183)
!189 = !DILocation(line: 27, column: 57, scope: !183)
!190 = !DILocation(line: 27, column: 55, scope: !183)
!191 = distinct !DISubprogram(name: ".omp_outlined..3", scope: !1, file: !1, line: 28, type: !81, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !192)
!192 = !{!193, !194, !195}
!193 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !191, type: !83, flags: DIFlagArtificial)
!194 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !191, type: !83, flags: DIFlagArtificial)
!195 = !DILocalVariable(name: "var", arg: 3, scope: !191, type: !70, flags: DIFlagArtificial)
!196 = !DILocation(line: 0, scope: !191)
!197 = !DILocation(line: 28, column: 3, scope: !191)
!198 = distinct !DISubprogram(name: "__omp_offloading_1030a_2160965_main_l26", scope: !1, file: !1, line: 27, type: !68, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !199)
!199 = !{!200}
!200 = !DILocalVariable(name: "var", arg: 1, scope: !198, type: !70, flags: DIFlagArtificial)
!201 = !DILocation(line: 0, scope: !198)
!202 = !DILocation(line: 27, column: 3, scope: !198)
