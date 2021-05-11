; ModuleID = 'integration/dataracebench/DRB162-nolocksimd-orig-gpu-no.c'
source_filename = "integration/dataracebench/DRB162-nolocksimd-orig-gpu-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 2050, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [71 x i8] c";integration/dataracebench/DRB162-nolocksimd-orig-gpu-no.c;main;27;3;;\00", align 1
@2 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@3 = private unnamed_addr constant [72 x i8] c";integration/dataracebench/DRB162-nolocksimd-orig-gpu-no.c;main;27;55;;\00", align 1
@.gomp_critical_user_.reduction.var = common global [8 x i32] zeroinitializer
@4 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@5 = private unnamed_addr constant [71 x i8] c";integration/dataracebench/DRB162-nolocksimd-orig-gpu-no.c;main;26;3;;\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"%d\0A \00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main() #0 !dbg !7 {
entry:
  %retval = alloca i32, align 4
  %var = alloca [8 x i32], align 16
  %i = alloca i32, align 4
  %i1 = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = bitcast [8 x i32]* %var to i8*, !dbg !20
  call void @llvm.lifetime.start.p0i8(i64 32, i8* %0) #5, !dbg !20
  call void @llvm.dbg.declare(metadata [8 x i32]* %var, metadata !12, metadata !DIExpression()), !dbg !21
  %1 = bitcast i32* %i to i8*, !dbg !22
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #5, !dbg !22
  call void @llvm.dbg.declare(metadata i32* %i, metadata !16, metadata !DIExpression()), !dbg !23
  store i32 0, i32* %i, align 4, !dbg !23, !tbaa !24
  br label %for.cond, !dbg !22

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4, !dbg !28, !tbaa !24
  %cmp = icmp slt i32 %2, 8, !dbg !30
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !dbg !31

for.cond.cleanup:                                 ; preds = %for.cond
  %3 = bitcast i32* %i to i8*, !dbg !32
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %3) #5, !dbg !32
  br label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4, !dbg !33, !tbaa !24
  %idxprom = sext i32 %4 to i64, !dbg !35
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %var, i64 0, i64 %idxprom, !dbg !35
  store i32 0, i32* %arrayidx, align 4, !dbg !36, !tbaa !24
  br label %for.inc, !dbg !37

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4, !dbg !38, !tbaa !24
  %inc = add nsw i32 %5, 1, !dbg !38
  store i32 %inc, i32* %i, align 4, !dbg !38, !tbaa !24
  br label %for.cond, !dbg !32, !llvm.loop !39

for.end:                                          ; preds = %for.cond.cleanup
  call void @__omp_offloading_1030a_2160964_main_l25([8 x i32]* %var) #5, !dbg !41
  %6 = bitcast i32* %i1 to i8*, !dbg !43
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #5, !dbg !43
  call void @llvm.dbg.declare(metadata i32* %i1, metadata !18, metadata !DIExpression()), !dbg !44
  store i32 0, i32* %i1, align 4, !dbg !44, !tbaa !24
  br label %for.cond2, !dbg !43

for.cond2:                                        ; preds = %for.inc11, %for.end
  %7 = load i32, i32* %i1, align 4, !dbg !45, !tbaa !24
  %cmp3 = icmp slt i32 %7, 8, !dbg !47
  br i1 %cmp3, label %for.body5, label %for.cond.cleanup4, !dbg !48

for.cond.cleanup4:                                ; preds = %for.cond2
  %8 = bitcast i32* %i1 to i8*, !dbg !49
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %8) #5, !dbg !49
  br label %for.end13

for.body5:                                        ; preds = %for.cond2
  %9 = load i32, i32* %i1, align 4, !dbg !50, !tbaa !24
  %idxprom6 = sext i32 %9 to i64, !dbg !53
  %arrayidx7 = getelementptr inbounds [8 x i32], [8 x i32]* %var, i64 0, i64 %idxprom6, !dbg !53
  %10 = load i32, i32* %arrayidx7, align 4, !dbg !53, !tbaa !24
  %cmp8 = icmp ne i32 %10, 20, !dbg !54
  br i1 %cmp8, label %if.then, label %if.end, !dbg !55

if.then:                                          ; preds = %for.body5
  %11 = load i32, i32* %i1, align 4, !dbg !56, !tbaa !24
  %idxprom9 = sext i32 %11 to i64, !dbg !57
  %arrayidx10 = getelementptr inbounds [8 x i32], [8 x i32]* %var, i64 0, i64 %idxprom9, !dbg !57
  %12 = load i32, i32* %arrayidx10, align 4, !dbg !57, !tbaa !24
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %12), !dbg !58
  br label %if.end, !dbg !58

if.end:                                           ; preds = %if.then, %for.body5
  br label %for.inc11, !dbg !59

for.inc11:                                        ; preds = %if.end
  %13 = load i32, i32* %i1, align 4, !dbg !60, !tbaa !24
  %inc12 = add nsw i32 %13, 1, !dbg !60
  store i32 %inc12, i32* %i1, align 4, !dbg !60, !tbaa !24
  br label %for.cond2, !dbg !49, !llvm.loop !61

for.end13:                                        ; preds = %for.cond.cleanup4
  %14 = bitcast [8 x i32]* %var to i8*, !dbg !63
  call void @llvm.lifetime.end.p0i8(i64 32, i8* %14) #5, !dbg !63
  ret i32 0, !dbg !64
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: norecurse nounwind uwtable
define internal void @__omp_offloading_1030a_2160964_main_l25_debug__([8 x i32]* dereferenceable(32) %var) #3 !dbg !65 {
entry:
  %var.addr = alloca [8 x i32]*, align 8
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  %2 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4
  store i8* getelementptr inbounds ([71 x i8], [71 x i8]* @5, i32 0, i32 0), i8** %2, align 8, !tbaa !71
  %3 = call i32 @__kmpc_global_thread_num(%struct.ident_t* %.kmpc_loc.addr)
  store [8 x i32]* %var, [8 x i32]** %var.addr, align 8, !tbaa !74
  call void @llvm.dbg.declare(metadata [8 x i32]** %var.addr, metadata !70, metadata !DIExpression()), !dbg !75
  %4 = load [8 x i32]*, [8 x i32]** %var.addr, align 8, !dbg !76, !tbaa !74
  %5 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !76
  store i8* getelementptr inbounds ([71 x i8], [71 x i8]* @5, i32 0, i32 0), i8** %5, align 8, !dbg !76, !tbaa !71
  %6 = call i32 @__kmpc_push_num_teams(%struct.ident_t* %.kmpc_loc.addr, i32 %3, i32 1, i32 1048), !dbg !76
  %7 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !76
  store i8* getelementptr inbounds ([71 x i8], [71 x i8]* @5, i32 0, i32 0), i8** %7, align 8, !dbg !76, !tbaa !71
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_teams(%struct.ident_t* %.kmpc_loc.addr, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, [8 x i32]*)* @.omp_outlined..2 to void (i32*, i32*, ...)*), [8 x i32]* %4), !dbg !76
  ret void, !dbg !77
}

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., [8 x i32]* dereferenceable(32) %var) #3 !dbg !78 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %var.addr = alloca [8 x i32]*, align 8
  %.omp.iv = alloca i32, align 4
  %tmp = alloca i32, align 4
  %.omp.comb.lb = alloca i32, align 4
  %.omp.comb.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %i = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !74
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !86, metadata !DIExpression()), !dbg !96
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !74
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !87, metadata !DIExpression()), !dbg !96
  store [8 x i32]* %var, [8 x i32]** %var.addr, align 8, !tbaa !74
  call void @llvm.dbg.declare(metadata [8 x i32]** %var.addr, metadata !88, metadata !DIExpression()), !dbg !97
  %2 = load [8 x i32]*, [8 x i32]** %var.addr, align 8, !dbg !98, !tbaa !74
  %3 = bitcast i32* %.omp.iv to i8*, !dbg !98
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #5, !dbg !98
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !89, metadata !DIExpression()), !dbg !99
  %4 = bitcast i32* %.omp.comb.lb to i8*, !dbg !98
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #5, !dbg !98
  call void @llvm.dbg.declare(metadata i32* %.omp.comb.lb, metadata !91, metadata !DIExpression()), !dbg !99
  store i32 0, i32* %.omp.comb.lb, align 4, !dbg !100, !tbaa !24
  %5 = bitcast i32* %.omp.comb.ub to i8*, !dbg !98
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #5, !dbg !98
  call void @llvm.dbg.declare(metadata i32* %.omp.comb.ub, metadata !92, metadata !DIExpression()), !dbg !99
  store i32 19, i32* %.omp.comb.ub, align 4, !dbg !100, !tbaa !24
  %6 = bitcast i32* %.omp.stride to i8*, !dbg !98
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #5, !dbg !98
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !93, metadata !DIExpression()), !dbg !99
  store i32 1, i32* %.omp.stride, align 4, !dbg !100, !tbaa !24
  %7 = bitcast i32* %.omp.is_last to i8*, !dbg !98
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #5, !dbg !98
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !94, metadata !DIExpression()), !dbg !99
  store i32 0, i32* %.omp.is_last, align 4, !dbg !100, !tbaa !24
  %8 = bitcast i32* %i to i8*, !dbg !98
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #5, !dbg !98
  call void @llvm.dbg.declare(metadata i32* %i, metadata !95, metadata !DIExpression()), !dbg !99
  %9 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !98
  store i8* getelementptr inbounds ([71 x i8], [71 x i8]* @1, i32 0, i32 0), i8** %9, align 8, !dbg !98, !tbaa !71
  %10 = load i32*, i32** %.global_tid..addr, align 8, !dbg !98
  %11 = load i32, i32* %10, align 4, !dbg !98, !tbaa !24
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %11, i32 92, i32* %.omp.is_last, i32* %.omp.comb.lb, i32* %.omp.comb.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !98
  %12 = load i32, i32* %.omp.comb.ub, align 4, !dbg !100, !tbaa !24
  %cmp = icmp sgt i32 %12, 19, !dbg !100
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !100

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !100

cond.false:                                       ; preds = %entry
  %13 = load i32, i32* %.omp.comb.ub, align 4, !dbg !100, !tbaa !24
  br label %cond.end, !dbg !100

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 19, %cond.true ], [ %13, %cond.false ], !dbg !100
  store i32 %cond, i32* %.omp.comb.ub, align 4, !dbg !100, !tbaa !24
  %14 = load i32, i32* %.omp.comb.lb, align 4, !dbg !100, !tbaa !24
  store i32 %14, i32* %.omp.iv, align 4, !dbg !100, !tbaa !24
  br label %omp.inner.for.cond, !dbg !98

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %15 = load i32, i32* %.omp.iv, align 4, !dbg !100, !tbaa !24
  %16 = load i32, i32* %.omp.comb.ub, align 4, !dbg !100, !tbaa !24
  %cmp1 = icmp sle i32 %15, %16, !dbg !101
  br i1 %cmp1, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !98

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !98

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %17 = load i32, i32* %.omp.comb.lb, align 4, !dbg !102
  %18 = zext i32 %17 to i64, !dbg !102
  %19 = load i32, i32* %.omp.comb.ub, align 4, !dbg !102
  %20 = zext i32 %19 to i64, !dbg !102
  %21 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !102
  store i8* getelementptr inbounds ([71 x i8], [71 x i8]* @1, i32 0, i32 0), i8** %21, align 8, !dbg !102, !tbaa !71
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i64, i64, [8 x i32]*)* @.omp_outlined. to void (i32*, i32*, ...)*), i64 %18, i64 %20, [8 x i32]* %2), !dbg !102
  br label %omp.inner.for.inc, !dbg !103

omp.inner.for.inc:                                ; preds = %omp.inner.for.body
  %22 = load i32, i32* %.omp.iv, align 4, !dbg !100, !tbaa !24
  %23 = load i32, i32* %.omp.stride, align 4, !dbg !100, !tbaa !24
  %add = add nsw i32 %22, %23, !dbg !101
  store i32 %add, i32* %.omp.iv, align 4, !dbg !101, !tbaa !24
  br label %omp.inner.for.cond, !dbg !103, !llvm.loop !105

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !103

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %24 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !103
  store i8* getelementptr inbounds ([71 x i8], [71 x i8]* @1, i32 0, i32 0), i8** %24, align 8, !dbg !103, !tbaa !71
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %11), !dbg !103
  %25 = bitcast i32* %i to i8*, !dbg !103
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %25) #5, !dbg !103
  %26 = bitcast i32* %.omp.is_last to i8*, !dbg !103
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %26) #5, !dbg !103
  %27 = bitcast i32* %.omp.stride to i8*, !dbg !103
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %27) #5, !dbg !103
  %28 = bitcast i32* %.omp.comb.ub to i8*, !dbg !103
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %28) #5, !dbg !103
  %29 = bitcast i32* %.omp.comb.lb to i8*, !dbg !103
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %29) #5, !dbg !103
  %30 = bitcast i32* %.omp.iv to i8*, !dbg !103
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %30) #5, !dbg !103
  ret void, !dbg !107
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__.1(i32* noalias %.global_tid., i32* noalias %.bound_tid., i64 %.previous.lb., i64 %.previous.ub., [8 x i32]* dereferenceable(32) %var) #3 !dbg !108 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %.previous.lb..addr = alloca i64, align 8
  %.previous.ub..addr = alloca i64, align 8
  %var.addr = alloca [8 x i32]*, align 8
  %.omp.iv = alloca i32, align 4
  %tmp = alloca i32, align 4
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %var2 = alloca [8 x i32], align 16
  %i = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %tmp6 = alloca i32, align 4
  %.omp.iv7 = alloca i32, align 4
  %i8 = alloca i32, align 4
  %.omp.reduction.red_list = alloca [1 x i8*], align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !74
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !114, metadata !DIExpression()), !dbg !130
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !74
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !115, metadata !DIExpression()), !dbg !130
  store i64 %.previous.lb., i64* %.previous.lb..addr, align 8, !tbaa !131
  call void @llvm.dbg.declare(metadata i64* %.previous.lb..addr, metadata !116, metadata !DIExpression()), !dbg !130
  store i64 %.previous.ub., i64* %.previous.ub..addr, align 8, !tbaa !131
  call void @llvm.dbg.declare(metadata i64* %.previous.ub..addr, metadata !117, metadata !DIExpression()), !dbg !130
  store [8 x i32]* %var, [8 x i32]** %var.addr, align 8, !tbaa !74
  call void @llvm.dbg.declare(metadata [8 x i32]** %var.addr, metadata !118, metadata !DIExpression()), !dbg !133
  %2 = load [8 x i32]*, [8 x i32]** %var.addr, align 8, !dbg !134, !tbaa !74
  %3 = bitcast i32* %.omp.iv to i8*, !dbg !134
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #5, !dbg !134
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !119, metadata !DIExpression()), !dbg !130
  %4 = bitcast i32* %.omp.lb to i8*, !dbg !134
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #5, !dbg !134
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !120, metadata !DIExpression()), !dbg !130
  store i32 0, i32* %.omp.lb, align 4, !dbg !135, !tbaa !24
  %5 = bitcast i32* %.omp.ub to i8*, !dbg !134
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #5, !dbg !134
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !121, metadata !DIExpression()), !dbg !130
  store i32 19, i32* %.omp.ub, align 4, !dbg !135, !tbaa !24
  %6 = load i64, i64* %.previous.lb..addr, align 8, !dbg !134, !tbaa !131
  %conv = trunc i64 %6 to i32, !dbg !134
  %7 = load i64, i64* %.previous.ub..addr, align 8, !dbg !134, !tbaa !131
  %conv1 = trunc i64 %7 to i32, !dbg !134
  store i32 %conv, i32* %.omp.lb, align 4, !dbg !134, !tbaa !24
  store i32 %conv1, i32* %.omp.ub, align 4, !dbg !134, !tbaa !24
  %8 = bitcast i32* %.omp.stride to i8*, !dbg !134
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #5, !dbg !134
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !122, metadata !DIExpression()), !dbg !130
  store i32 1, i32* %.omp.stride, align 4, !dbg !135, !tbaa !24
  %9 = bitcast i32* %.omp.is_last to i8*, !dbg !134
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #5, !dbg !134
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !123, metadata !DIExpression()), !dbg !130
  store i32 0, i32* %.omp.is_last, align 4, !dbg !135, !tbaa !24
  %10 = bitcast [8 x i32]* %var2 to i8*, !dbg !134
  call void @llvm.lifetime.start.p0i8(i64 32, i8* %10) #5, !dbg !134
  call void @llvm.dbg.declare(metadata [8 x i32]* %var2, metadata !124, metadata !DIExpression()), !dbg !130
  %array.begin = getelementptr inbounds [8 x i32], [8 x i32]* %var2, i32 0, i32 0, !dbg !134
  %11 = getelementptr i32, i32* %array.begin, i64 8, !dbg !134
  %omp.arrayinit.isempty = icmp eq i32* %array.begin, %11, !dbg !134
  br i1 %omp.arrayinit.isempty, label %omp.arrayinit.done, label %omp.arrayinit.body, !dbg !134

omp.arrayinit.body:                               ; preds = %omp.arrayinit.body, %entry
  %omp.arraycpy.destElementPast = phi i32* [ %array.begin, %entry ], [ %omp.arraycpy.dest.element, %omp.arrayinit.body ], !dbg !134
  store i32 0, i32* %omp.arraycpy.destElementPast, align 4, !dbg !134, !tbaa !24
  %omp.arraycpy.dest.element = getelementptr i32, i32* %omp.arraycpy.destElementPast, i32 1, !dbg !134
  %omp.arraycpy.done = icmp eq i32* %omp.arraycpy.dest.element, %11, !dbg !134
  br i1 %omp.arraycpy.done, label %omp.arrayinit.done, label %omp.arrayinit.body, !dbg !134

omp.arrayinit.done:                               ; preds = %omp.arrayinit.body, %entry
  %lhs.begin = bitcast [8 x i32]* %2 to i32*, !dbg !134
  %rhs.begin = bitcast [8 x i32]* %var2 to i32*, !dbg !134
  %12 = bitcast i32* %i to i8*, !dbg !134
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #5, !dbg !134
  call void @llvm.dbg.declare(metadata i32* %i, metadata !125, metadata !DIExpression()), !dbg !130
  %13 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !134
  store i8* getelementptr inbounds ([71 x i8], [71 x i8]* @1, i32 0, i32 0), i8** %13, align 8, !dbg !134, !tbaa !71
  %14 = load i32*, i32** %.global_tid..addr, align 8, !dbg !134
  %15 = load i32, i32* %14, align 4, !dbg !134, !tbaa !24
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %15, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !134
  %16 = load i32, i32* %.omp.ub, align 4, !dbg !135, !tbaa !24
  %cmp = icmp sgt i32 %16, 19, !dbg !135
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !135

cond.true:                                        ; preds = %omp.arrayinit.done
  br label %cond.end, !dbg !135

cond.false:                                       ; preds = %omp.arrayinit.done
  %17 = load i32, i32* %.omp.ub, align 4, !dbg !135, !tbaa !24
  br label %cond.end, !dbg !135

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 19, %cond.true ], [ %17, %cond.false ], !dbg !135
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !135, !tbaa !24
  %18 = load i32, i32* %.omp.lb, align 4, !dbg !135, !tbaa !24
  store i32 %18, i32* %.omp.iv, align 4, !dbg !135, !tbaa !24
  br label %omp.inner.for.cond, !dbg !134

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc18, %cond.end
  %19 = load i32, i32* %.omp.iv, align 4, !dbg !135, !tbaa !24
  %20 = load i32, i32* %.omp.ub, align 4, !dbg !135, !tbaa !24
  %cmp4 = icmp sle i32 %19, %20, !dbg !134
  br i1 %cmp4, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !134

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end20, !dbg !134

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %21 = load i32, i32* %.omp.iv, align 4, !dbg !135, !tbaa !24
  %mul = mul nsw i32 %21, 1, !dbg !136
  %add = add nsw i32 0, %mul, !dbg !136
  store i32 %add, i32* %i, align 4, !dbg !136, !tbaa !24
  %22 = bitcast i32* %.omp.iv7 to i8*, !dbg !137
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %22) #5, !dbg !137
  call void @llvm.dbg.declare(metadata i32* %.omp.iv7, metadata !126, metadata !DIExpression()), !dbg !138
  store i32 0, i32* %.omp.iv7, align 4, !dbg !139, !tbaa !24
  %23 = bitcast i32* %i8 to i8*, !dbg !137
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %23) #5, !dbg !137
  call void @llvm.dbg.declare(metadata i32* %i8, metadata !129, metadata !DIExpression()), !dbg !138
  br label %omp.inner.for.cond9, !dbg !137

omp.inner.for.cond9:                              ; preds = %omp.inner.for.inc, %omp.inner.for.body
  %24 = load i32, i32* %.omp.iv7, align 4, !dbg !139, !tbaa !24, !llvm.access.group !140
  %cmp10 = icmp slt i32 %24, 8, !dbg !141
  br i1 %cmp10, label %omp.inner.for.body13, label %omp.inner.for.cond.cleanup12, !dbg !137

omp.inner.for.cond.cleanup12:                     ; preds = %omp.inner.for.cond9
  br label %omp.inner.for.end, !dbg !137

omp.inner.for.body13:                             ; preds = %omp.inner.for.cond9
  %25 = load i32, i32* %.omp.iv7, align 4, !dbg !139, !tbaa !24, !llvm.access.group !140
  %mul14 = mul nsw i32 %25, 1, !dbg !142
  %add15 = add nsw i32 0, %mul14, !dbg !142
  store i32 %add15, i32* %i8, align 4, !dbg !142, !tbaa !24, !llvm.access.group !140
  %26 = load i32, i32* %i8, align 4, !dbg !143, !tbaa !24, !llvm.access.group !140
  %idxprom = sext i32 %26 to i64, !dbg !145
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %var2, i64 0, i64 %idxprom, !dbg !145
  %27 = load i32, i32* %arrayidx, align 4, !dbg !146, !tbaa !24, !llvm.access.group !140
  %inc = add nsw i32 %27, 1, !dbg !146
  store i32 %inc, i32* %arrayidx, align 4, !dbg !146, !tbaa !24, !llvm.access.group !140
  br label %omp.body.continue, !dbg !147

omp.body.continue:                                ; preds = %omp.inner.for.body13
  br label %omp.inner.for.inc, !dbg !148

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %28 = load i32, i32* %.omp.iv7, align 4, !dbg !139, !tbaa !24, !llvm.access.group !140
  %add16 = add nsw i32 %28, 1, !dbg !141
  store i32 %add16, i32* %.omp.iv7, align 4, !dbg !141, !tbaa !24, !llvm.access.group !140
  br label %omp.inner.for.cond9, !dbg !148, !llvm.loop !149

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup12
  store i32 8, i32* %i8, align 4, !dbg !142, !tbaa !24
  %29 = bitcast i32* %i8 to i8*, !dbg !148
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %29) #5, !dbg !148
  %30 = bitcast i32* %.omp.iv7 to i8*, !dbg !148
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %30) #5, !dbg !148
  br label %omp.body.continue17, !dbg !153

omp.body.continue17:                              ; preds = %omp.inner.for.end
  br label %omp.inner.for.inc18, !dbg !154

omp.inner.for.inc18:                              ; preds = %omp.body.continue17
  %31 = load i32, i32* %.omp.iv, align 4, !dbg !135, !tbaa !24
  %add19 = add nsw i32 %31, 1, !dbg !134
  store i32 %add19, i32* %.omp.iv, align 4, !dbg !134, !tbaa !24
  br label %omp.inner.for.cond, !dbg !154, !llvm.loop !155

omp.inner.for.end20:                              ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !154

omp.loop.exit:                                    ; preds = %omp.inner.for.end20
  %32 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !154
  store i8* getelementptr inbounds ([72 x i8], [72 x i8]* @3, i32 0, i32 0), i8** %32, align 8, !dbg !154, !tbaa !71
  %33 = load i32*, i32** %.global_tid..addr, align 8, !dbg !154
  %34 = load i32, i32* %33, align 4, !dbg !154, !tbaa !24
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %34), !dbg !154
  %35 = getelementptr inbounds [1 x i8*], [1 x i8*]* %.omp.reduction.red_list, i64 0, i64 0, !dbg !154
  %36 = bitcast i32* %rhs.begin to i8*, !dbg !154
  store i8* %36, i8** %35, align 8, !dbg !154
  %37 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !154
  store i8* getelementptr inbounds ([72 x i8], [72 x i8]* @3, i32 0, i32 0), i8** %37, align 8, !dbg !154, !tbaa !71
  %38 = load i32*, i32** %.global_tid..addr, align 8, !dbg !154
  %39 = load i32, i32* %38, align 4, !dbg !154, !tbaa !24
  %40 = bitcast [1 x i8*]* %.omp.reduction.red_list to i8*, !dbg !154
  %41 = call i32 @__kmpc_reduce_nowait(%struct.ident_t* %.kmpc_loc.addr, i32 %39, i32 1, i64 8, i8* %40, void (i8*, i8*)* @.omp.reduction.reduction_func, [8 x i32]* @.gomp_critical_user_.reduction.var), !dbg !154
  switch i32 %41, label %.omp.reduction.default [
    i32 1, label %.omp.reduction.case1
    i32 2, label %.omp.reduction.case2
  ], !dbg !154

.omp.reduction.case1:                             ; preds = %omp.loop.exit
  %42 = getelementptr i32, i32* %lhs.begin, i64 8, !dbg !154
  %omp.arraycpy.isempty = icmp eq i32* %lhs.begin, %42, !dbg !154
  br i1 %omp.arraycpy.isempty, label %omp.arraycpy.done25, label %omp.arraycpy.body, !dbg !154

omp.arraycpy.body:                                ; preds = %omp.arraycpy.body, %.omp.reduction.case1
  %omp.arraycpy.srcElementPast = phi i32* [ %rhs.begin, %.omp.reduction.case1 ], [ %omp.arraycpy.src.element, %omp.arraycpy.body ], !dbg !154
  %omp.arraycpy.destElementPast21 = phi i32* [ %lhs.begin, %.omp.reduction.case1 ], [ %omp.arraycpy.dest.element23, %omp.arraycpy.body ], !dbg !154
  %43 = load i32, i32* %omp.arraycpy.destElementPast21, align 4, !dbg !157, !tbaa !24
  %44 = load i32, i32* %omp.arraycpy.srcElementPast, align 4, !dbg !157, !tbaa !24
  %add22 = add nsw i32 %43, %44, !dbg !158
  store i32 %add22, i32* %omp.arraycpy.destElementPast21, align 4, !dbg !158, !tbaa !24
  %omp.arraycpy.dest.element23 = getelementptr i32, i32* %omp.arraycpy.destElementPast21, i32 1, !dbg !154
  %omp.arraycpy.src.element = getelementptr i32, i32* %omp.arraycpy.srcElementPast, i32 1, !dbg !154
  %omp.arraycpy.done24 = icmp eq i32* %omp.arraycpy.dest.element23, %42, !dbg !154
  br i1 %omp.arraycpy.done24, label %omp.arraycpy.done25, label %omp.arraycpy.body, !dbg !154

omp.arraycpy.done25:                              ; preds = %omp.arraycpy.body, %.omp.reduction.case1
  call void @__kmpc_end_reduce_nowait(%struct.ident_t* %.kmpc_loc.addr, i32 %39, [8 x i32]* @.gomp_critical_user_.reduction.var), !dbg !154
  br label %.omp.reduction.default, !dbg !154

.omp.reduction.case2:                             ; preds = %omp.loop.exit
  %45 = getelementptr i32, i32* %lhs.begin, i64 8, !dbg !154
  %omp.arraycpy.isempty26 = icmp eq i32* %lhs.begin, %45, !dbg !154
  br i1 %omp.arraycpy.isempty26, label %omp.arraycpy.done33, label %omp.arraycpy.body27, !dbg !154

omp.arraycpy.body27:                              ; preds = %omp.arraycpy.body27, %.omp.reduction.case2
  %omp.arraycpy.srcElementPast28 = phi i32* [ %rhs.begin, %.omp.reduction.case2 ], [ %omp.arraycpy.src.element31, %omp.arraycpy.body27 ], !dbg !154
  %omp.arraycpy.destElementPast29 = phi i32* [ %lhs.begin, %.omp.reduction.case2 ], [ %omp.arraycpy.dest.element30, %omp.arraycpy.body27 ], !dbg !154
  %46 = load i32, i32* %omp.arraycpy.srcElementPast28, align 4, !dbg !157, !tbaa !24
  %47 = atomicrmw add i32* %omp.arraycpy.destElementPast29, i32 %46 monotonic, !dbg !154
  %omp.arraycpy.dest.element30 = getelementptr i32, i32* %omp.arraycpy.destElementPast29, i32 1, !dbg !154
  %omp.arraycpy.src.element31 = getelementptr i32, i32* %omp.arraycpy.srcElementPast28, i32 1, !dbg !154
  %omp.arraycpy.done32 = icmp eq i32* %omp.arraycpy.dest.element30, %45, !dbg !154
  br i1 %omp.arraycpy.done32, label %omp.arraycpy.done33, label %omp.arraycpy.body27, !dbg !154

omp.arraycpy.done33:                              ; preds = %omp.arraycpy.body27, %.omp.reduction.case2
  br label %.omp.reduction.default, !dbg !154

.omp.reduction.default:                           ; preds = %omp.arraycpy.done33, %omp.arraycpy.done25, %omp.loop.exit
  %48 = bitcast i32* %i to i8*, !dbg !154
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %48) #5, !dbg !154
  %49 = bitcast [8 x i32]* %var2 to i8*, !dbg !154
  call void @llvm.lifetime.end.p0i8(i64 32, i8* %49) #5, !dbg !154
  %50 = bitcast i32* %.omp.is_last to i8*, !dbg !154
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %50) #5, !dbg !154
  %51 = bitcast i32* %.omp.stride to i8*, !dbg !154
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %51) #5, !dbg !154
  %52 = bitcast i32* %.omp.ub to i8*, !dbg !154
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %52) #5, !dbg !154
  %53 = bitcast i32* %.omp.lb to i8*, !dbg !154
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %53) #5, !dbg !154
  %54 = bitcast i32* %.omp.iv to i8*, !dbg !154
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %54) #5, !dbg !154
  ret void, !dbg !159
}

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp.reduction.reduction_func(i8* %0, i8* %1) #3 !dbg !160 {
entry:
  %.addr = alloca i8*, align 8
  %.addr1 = alloca i8*, align 8
  store i8* %0, i8** %.addr, align 8, !tbaa !74
  call void @llvm.dbg.declare(metadata i8** %.addr, metadata !163, metadata !DIExpression()), !dbg !166
  store i8* %1, i8** %.addr1, align 8, !tbaa !74
  call void @llvm.dbg.declare(metadata i8** %.addr1, metadata !165, metadata !DIExpression()), !dbg !166
  %2 = load i8*, i8** %.addr, align 8, !dbg !167
  %3 = bitcast i8* %2 to [1 x i8*]*, !dbg !167
  %4 = load i8*, i8** %.addr1, align 8, !dbg !167
  %5 = bitcast i8* %4 to [1 x i8*]*, !dbg !167
  %6 = getelementptr inbounds [1 x i8*], [1 x i8*]* %5, i64 0, i64 0, !dbg !167
  %7 = load i8*, i8** %6, align 8, !dbg !167
  %8 = bitcast i8* %7 to i32*, !dbg !167
  %9 = getelementptr inbounds [1 x i8*], [1 x i8*]* %3, i64 0, i64 0, !dbg !167
  %10 = load i8*, i8** %9, align 8, !dbg !167
  %11 = bitcast i8* %10 to i32*, !dbg !167
  %12 = getelementptr i32, i32* %11, i64 8, !dbg !167
  %omp.arraycpy.isempty = icmp eq i32* %11, %12, !dbg !167
  br i1 %omp.arraycpy.isempty, label %omp.arraycpy.done2, label %omp.arraycpy.body, !dbg !167

omp.arraycpy.body:                                ; preds = %omp.arraycpy.body, %entry
  %omp.arraycpy.srcElementPast = phi i32* [ %8, %entry ], [ %omp.arraycpy.src.element, %omp.arraycpy.body ], !dbg !167
  %omp.arraycpy.destElementPast = phi i32* [ %11, %entry ], [ %omp.arraycpy.dest.element, %omp.arraycpy.body ], !dbg !167
  %13 = load i32, i32* %omp.arraycpy.destElementPast, align 4, !dbg !168, !tbaa !24
  %14 = load i32, i32* %omp.arraycpy.srcElementPast, align 4, !dbg !168, !tbaa !24
  %add = add nsw i32 %13, %14, !dbg !169
  store i32 %add, i32* %omp.arraycpy.destElementPast, align 4, !dbg !169, !tbaa !24
  %omp.arraycpy.dest.element = getelementptr i32, i32* %omp.arraycpy.destElementPast, i32 1, !dbg !167
  %omp.arraycpy.src.element = getelementptr i32, i32* %omp.arraycpy.srcElementPast, i32 1, !dbg !167
  %omp.arraycpy.done = icmp eq i32* %omp.arraycpy.dest.element, %12, !dbg !167
  br i1 %omp.arraycpy.done, label %omp.arraycpy.done2, label %omp.arraycpy.body, !dbg !167

omp.arraycpy.done2:                               ; preds = %omp.arraycpy.body, %entry
  ret void, !dbg !168
}

declare dso_local i32 @__kmpc_reduce_nowait(%struct.ident_t*, i32, i32, i64, i8*, void (i8*, i8*)*, [8 x i32]*)

declare dso_local void @__kmpc_end_reduce_nowait(%struct.ident_t*, i32, [8 x i32]*)

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i64 %.previous.lb., i64 %.previous.ub., [8 x i32]* dereferenceable(32) %var) #3 !dbg !170 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %.previous.lb..addr = alloca i64, align 8
  %.previous.ub..addr = alloca i64, align 8
  %var.addr = alloca [8 x i32]*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !74
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !172, metadata !DIExpression()), !dbg !177
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !74
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !173, metadata !DIExpression()), !dbg !177
  store i64 %.previous.lb., i64* %.previous.lb..addr, align 8, !tbaa !131
  call void @llvm.dbg.declare(metadata i64* %.previous.lb..addr, metadata !174, metadata !DIExpression()), !dbg !177
  store i64 %.previous.ub., i64* %.previous.ub..addr, align 8, !tbaa !131
  call void @llvm.dbg.declare(metadata i64* %.previous.ub..addr, metadata !175, metadata !DIExpression()), !dbg !177
  store [8 x i32]* %var, [8 x i32]** %var.addr, align 8, !tbaa !74
  call void @llvm.dbg.declare(metadata [8 x i32]** %var.addr, metadata !176, metadata !DIExpression()), !dbg !177
  %0 = load [8 x i32]*, [8 x i32]** %var.addr, align 8, !dbg !178, !tbaa !74
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !178, !tbaa !74
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !178, !tbaa !74
  %3 = load i64, i64* %.previous.lb..addr, align 8, !dbg !178, !tbaa !131
  %4 = load i64, i64* %.previous.ub..addr, align 8, !dbg !178, !tbaa !131
  %5 = load [8 x i32]*, [8 x i32]** %var.addr, align 8, !dbg !178, !tbaa !74
  call void @.omp_outlined._debug__.1(i32* %1, i32* %2, i64 %3, i64 %4, [8 x i32]* %5) #5, !dbg !178
  ret void, !dbg !178
}

declare !callback !179 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined..2(i32* noalias %.global_tid., i32* noalias %.bound_tid., [8 x i32]* dereferenceable(32) %var) #3 !dbg !181 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %var.addr = alloca [8 x i32]*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !74
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !183, metadata !DIExpression()), !dbg !186
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !74
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !184, metadata !DIExpression()), !dbg !186
  store [8 x i32]* %var, [8 x i32]** %var.addr, align 8, !tbaa !74
  call void @llvm.dbg.declare(metadata [8 x i32]** %var.addr, metadata !185, metadata !DIExpression()), !dbg !186
  %0 = load [8 x i32]*, [8 x i32]** %var.addr, align 8, !dbg !187, !tbaa !74
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !187, !tbaa !74
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !187, !tbaa !74
  %3 = load [8 x i32]*, [8 x i32]** %var.addr, align 8, !dbg !187, !tbaa !74
  call void @.omp_outlined._debug__(i32* %1, i32* %2, [8 x i32]* %3) #5, !dbg !187
  ret void, !dbg !187
}

declare dso_local i32 @__kmpc_global_thread_num(%struct.ident_t*)

declare dso_local i32 @__kmpc_push_num_teams(%struct.ident_t*, i32, i32, i32)

declare !callback !179 dso_local void @__kmpc_fork_teams(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

; Function Attrs: norecurse nounwind uwtable
define internal void @__omp_offloading_1030a_2160964_main_l25([8 x i32]* dereferenceable(32) %var) #3 !dbg !188 {
entry:
  %var.addr = alloca [8 x i32]*, align 8
  store [8 x i32]* %var, [8 x i32]** %var.addr, align 8, !tbaa !74
  call void @llvm.dbg.declare(metadata [8 x i32]** %var.addr, metadata !190, metadata !DIExpression()), !dbg !191
  %0 = load [8 x i32]*, [8 x i32]** %var.addr, align 8, !dbg !192, !tbaa !74
  %1 = load [8 x i32]*, [8 x i32]** %var.addr, align 8, !dbg !192, !tbaa !74
  call void @__omp_offloading_1030a_2160964_main_l25_debug__([8 x i32]* %1) #5, !dbg !192
  ret void, !dbg !192
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
!1 = !DIFile(filename: "integration/dataracebench/DRB162-nolocksimd-orig-gpu-no.c", directory: "/home/brad/Code/OpenRace/tests/data")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.1 "}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 18, type: !8, scopeLine: 18, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !11)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !{!12, !16, !18}
!12 = !DILocalVariable(name: "var", scope: !7, file: !1, line: 19, type: !13)
!13 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 256, elements: !14)
!14 = !{!15}
!15 = !DISubrange(count: 8)
!16 = !DILocalVariable(name: "i", scope: !17, file: !1, line: 21, type: !10)
!17 = distinct !DILexicalBlock(scope: !7, file: !1, line: 21, column: 3)
!18 = !DILocalVariable(name: "i", scope: !19, file: !1, line: 35, type: !10)
!19 = distinct !DILexicalBlock(scope: !7, file: !1, line: 35, column: 3)
!20 = !DILocation(line: 19, column: 3, scope: !7)
!21 = !DILocation(line: 19, column: 7, scope: !7)
!22 = !DILocation(line: 21, column: 7, scope: !17)
!23 = !DILocation(line: 21, column: 11, scope: !17)
!24 = !{!25, !25, i64 0}
!25 = !{!"int", !26, i64 0}
!26 = !{!"omnipotent char", !27, i64 0}
!27 = !{!"Simple C/C++ TBAA"}
!28 = !DILocation(line: 21, column: 16, scope: !29)
!29 = distinct !DILexicalBlock(scope: !17, file: !1, line: 21, column: 3)
!30 = !DILocation(line: 21, column: 17, scope: !29)
!31 = !DILocation(line: 21, column: 3, scope: !17)
!32 = !DILocation(line: 21, column: 3, scope: !29)
!33 = !DILocation(line: 22, column: 9, scope: !34)
!34 = distinct !DILexicalBlock(scope: !29, file: !1, line: 21, column: 25)
!35 = !DILocation(line: 22, column: 5, scope: !34)
!36 = !DILocation(line: 22, column: 12, scope: !34)
!37 = !DILocation(line: 23, column: 3, scope: !34)
!38 = !DILocation(line: 21, column: 22, scope: !29)
!39 = distinct !{!39, !31, !40}
!40 = !DILocation(line: 23, column: 3, scope: !17)
!41 = !DILocation(line: 25, column: 3, scope: !42)
!42 = distinct !DILexicalBlock(scope: !7, file: !1, line: 25, column: 3)
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
!56 = !DILocation(line: 36, column: 38, scope: !51)
!57 = !DILocation(line: 36, column: 34, scope: !51)
!58 = !DILocation(line: 36, column: 19, scope: !51)
!59 = !DILocation(line: 37, column: 3, scope: !52)
!60 = !DILocation(line: 35, column: 22, scope: !46)
!61 = distinct !{!61, !48, !62}
!62 = !DILocation(line: 37, column: 3, scope: !19)
!63 = !DILocation(line: 40, column: 1, scope: !7)
!64 = !DILocation(line: 39, column: 3, scope: !7)
!65 = distinct !DISubprogram(name: "__omp_offloading_1030a_2160964_main_l25_debug__", scope: !1, file: !1, line: 26, type: !66, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !69)
!66 = !DISubroutineType(types: !67)
!67 = !{null, !68}
!68 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !13, size: 64)
!69 = !{!70}
!70 = !DILocalVariable(name: "var", arg: 1, scope: !65, file: !1, line: 19, type: !68)
!71 = !{!72, !73, i64 16}
!72 = !{!"ident_t", !25, i64 0, !25, i64 4, !25, i64 8, !25, i64 12, !73, i64 16}
!73 = !{!"any pointer", !26, i64 0}
!74 = !{!73, !73, i64 0}
!75 = !DILocation(line: 19, column: 7, scope: !65)
!76 = !DILocation(line: 26, column: 3, scope: !65)
!77 = !DILocation(line: 26, column: 53, scope: !65)
!78 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 27, type: !79, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !85)
!79 = !DISubroutineType(types: !80)
!80 = !{null, !81, !81, !68}
!81 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !82)
!82 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !83)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!85 = !{!86, !87, !88, !89, !91, !92, !93, !94, !95}
!86 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !78, type: !81, flags: DIFlagArtificial)
!87 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !78, type: !81, flags: DIFlagArtificial)
!88 = !DILocalVariable(name: "var", arg: 3, scope: !78, file: !1, line: 19, type: !68)
!89 = !DILocalVariable(name: ".omp.iv", scope: !90, type: !10, flags: DIFlagArtificial)
!90 = distinct !DILexicalBlock(scope: !78, file: !1, line: 27, column: 3)
!91 = !DILocalVariable(name: ".omp.comb.lb", scope: !90, type: !10, flags: DIFlagArtificial)
!92 = !DILocalVariable(name: ".omp.comb.ub", scope: !90, type: !10, flags: DIFlagArtificial)
!93 = !DILocalVariable(name: ".omp.stride", scope: !90, type: !10, flags: DIFlagArtificial)
!94 = !DILocalVariable(name: ".omp.is_last", scope: !90, type: !10, flags: DIFlagArtificial)
!95 = !DILocalVariable(name: "i", scope: !90, type: !10, flags: DIFlagArtificial)
!96 = !DILocation(line: 0, scope: !78)
!97 = !DILocation(line: 19, column: 7, scope: !78)
!98 = !DILocation(line: 27, column: 3, scope: !78)
!99 = !DILocation(line: 0, scope: !90)
!100 = !DILocation(line: 28, column: 8, scope: !90)
!101 = !DILocation(line: 28, column: 3, scope: !90)
!102 = !DILocation(line: 27, column: 3, scope: !90)
!103 = !DILocation(line: 27, column: 55, scope: !104)
!104 = distinct !DILexicalBlock(scope: !90, file: !1, line: 27, column: 3)
!105 = distinct !{!105, !102, !106}
!106 = !DILocation(line: 27, column: 55, scope: !90)
!107 = !DILocation(line: 27, column: 55, scope: !78)
!108 = distinct !DISubprogram(name: ".omp_outlined._debug__.1", scope: !1, file: !1, line: 28, type: !109, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !113)
!109 = !DISubroutineType(types: !110)
!110 = !{null, !81, !81, !111, !111, !68}
!111 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !112)
!112 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!113 = !{!114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !126, !129}
!114 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !108, type: !81, flags: DIFlagArtificial)
!115 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !108, type: !81, flags: DIFlagArtificial)
!116 = !DILocalVariable(name: ".previous.lb.", arg: 3, scope: !108, type: !111, flags: DIFlagArtificial)
!117 = !DILocalVariable(name: ".previous.ub.", arg: 4, scope: !108, type: !111, flags: DIFlagArtificial)
!118 = !DILocalVariable(name: "var", arg: 5, scope: !108, file: !1, line: 19, type: !68)
!119 = !DILocalVariable(name: ".omp.iv", scope: !108, type: !10, flags: DIFlagArtificial)
!120 = !DILocalVariable(name: ".omp.lb", scope: !108, type: !10, flags: DIFlagArtificial)
!121 = !DILocalVariable(name: ".omp.ub", scope: !108, type: !10, flags: DIFlagArtificial)
!122 = !DILocalVariable(name: ".omp.stride", scope: !108, type: !10, flags: DIFlagArtificial)
!123 = !DILocalVariable(name: ".omp.is_last", scope: !108, type: !10, flags: DIFlagArtificial)
!124 = !DILocalVariable(name: "var", scope: !108, type: !13, flags: DIFlagArtificial)
!125 = !DILocalVariable(name: "i", scope: !108, type: !10, flags: DIFlagArtificial)
!126 = !DILocalVariable(name: ".omp.iv", scope: !127, type: !10, flags: DIFlagArtificial)
!127 = distinct !DILexicalBlock(scope: !128, file: !1, line: 29, column: 5)
!128 = distinct !DILexicalBlock(scope: !108, file: !1, line: 28, column: 26)
!129 = !DILocalVariable(name: "i", scope: !127, type: !10, flags: DIFlagArtificial)
!130 = !DILocation(line: 0, scope: !108)
!131 = !{!132, !132, i64 0}
!132 = !{!"long", !26, i64 0}
!133 = !DILocation(line: 19, column: 7, scope: !108)
!134 = !DILocation(line: 28, column: 3, scope: !108)
!135 = !DILocation(line: 28, column: 8, scope: !108)
!136 = !DILocation(line: 28, column: 22, scope: !108)
!137 = !DILocation(line: 29, column: 5, scope: !128)
!138 = !DILocation(line: 0, scope: !127)
!139 = !DILocation(line: 30, column: 9, scope: !127)
!140 = distinct !{}
!141 = !DILocation(line: 30, column: 5, scope: !127)
!142 = !DILocation(line: 30, column: 23, scope: !127)
!143 = !DILocation(line: 31, column: 11, scope: !144)
!144 = distinct !DILexicalBlock(scope: !127, file: !1, line: 30, column: 27)
!145 = !DILocation(line: 31, column: 7, scope: !144)
!146 = !DILocation(line: 31, column: 13, scope: !144)
!147 = !DILocation(line: 32, column: 5, scope: !144)
!148 = !DILocation(line: 29, column: 5, scope: !127)
!149 = distinct !{!149, !148, !150, !151, !152}
!150 = !DILocation(line: 29, column: 21, scope: !127)
!151 = !{!"llvm.loop.parallel_accesses", !140}
!152 = !{!"llvm.loop.vectorize.enable", i1 true}
!153 = !DILocation(line: 33, column: 3, scope: !128)
!154 = !DILocation(line: 27, column: 3, scope: !108)
!155 = distinct !{!155, !154, !156}
!156 = !DILocation(line: 27, column: 55, scope: !108)
!157 = !DILocation(line: 27, column: 51, scope: !108)
!158 = !DILocation(line: 27, column: 49, scope: !108)
!159 = !DILocation(line: 33, column: 3, scope: !108)
!160 = distinct !DISubprogram(linkageName: ".omp.reduction.reduction_func", scope: !1, file: !1, line: 27, type: !161, scopeLine: 27, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !162)
!161 = !DISubroutineType(types: !2)
!162 = !{!163, !165}
!163 = !DILocalVariable(arg: 1, scope: !160, type: !164, flags: DIFlagArtificial)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!165 = !DILocalVariable(arg: 2, scope: !160, type: !164, flags: DIFlagArtificial)
!166 = !DILocation(line: 0, scope: !160)
!167 = !DILocation(line: 27, column: 55, scope: !160)
!168 = !DILocation(line: 27, column: 51, scope: !160)
!169 = !DILocation(line: 27, column: 49, scope: !160)
!170 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 28, type: !109, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !171)
!171 = !{!172, !173, !174, !175, !176}
!172 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !170, type: !81, flags: DIFlagArtificial)
!173 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !170, type: !81, flags: DIFlagArtificial)
!174 = !DILocalVariable(name: ".previous.lb.", arg: 3, scope: !170, type: !111, flags: DIFlagArtificial)
!175 = !DILocalVariable(name: ".previous.ub.", arg: 4, scope: !170, type: !111, flags: DIFlagArtificial)
!176 = !DILocalVariable(name: "var", arg: 5, scope: !170, type: !68, flags: DIFlagArtificial)
!177 = !DILocation(line: 0, scope: !170)
!178 = !DILocation(line: 28, column: 3, scope: !170)
!179 = !{!180}
!180 = !{i64 2, i64 -1, i64 -1, i1 true}
!181 = distinct !DISubprogram(name: ".omp_outlined..2", scope: !1, file: !1, line: 27, type: !79, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !182)
!182 = !{!183, !184, !185}
!183 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !181, type: !81, flags: DIFlagArtificial)
!184 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !181, type: !81, flags: DIFlagArtificial)
!185 = !DILocalVariable(name: "var", arg: 3, scope: !181, type: !68, flags: DIFlagArtificial)
!186 = !DILocation(line: 0, scope: !181)
!187 = !DILocation(line: 27, column: 3, scope: !181)
!188 = distinct !DISubprogram(name: "__omp_offloading_1030a_2160964_main_l25", scope: !1, file: !1, line: 26, type: !66, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !189)
!189 = !{!190}
!190 = !DILocalVariable(name: "var", arg: 1, scope: !188, type: !68, flags: DIFlagArtificial)
!191 = !DILocation(line: 0, scope: !188)
!192 = !DILocation(line: 26, column: 3, scope: !188)
