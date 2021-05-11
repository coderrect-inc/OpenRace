; ModuleID = 'integration/dataracebench/DRB095-doall2-taskloop-orig-yes.c'
source_filename = "integration/dataracebench/DRB095-doall2-taskloop-orig-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }
%struct.anon = type { i32* }
%struct.kmp_task_t_with_privates = type { %struct.kmp_task_t }
%struct.kmp_task_t = type { i8*, i32 (i32, i8*)*, i32, %union.kmp_cmplrdata_t, %union.kmp_cmplrdata_t, i64, i64, i64, i32, i8* }
%union.kmp_cmplrdata_t = type { i32 (i32, i8*)* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [73 x i8] c";integration/dataracebench/DRB095-doall2-taskloop-orig-yes.c;main;65;1;;\00", align 1
@2 = private unnamed_addr constant [73 x i8] c";integration/dataracebench/DRB095-doall2-taskloop-orig-yes.c;main;67;1;;\00", align 1
@a = common dso_local global [100 x [100 x i32]] zeroinitializer, align 16, !dbg !0
@3 = private unnamed_addr constant [73 x i8] c";integration/dataracebench/DRB095-doall2-taskloop-orig-yes.c;main;63;1;;\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"a[50][50]=%d\0A\00", align 1

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
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #6, !dbg !20
  call void @llvm.dbg.declare(metadata i32* %i, metadata !18, metadata !DIExpression()), !dbg !21
  %3 = bitcast i32* %j to i8*, !dbg !20
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #6, !dbg !20
  call void @llvm.dbg.declare(metadata i32* %j, metadata !19, metadata !DIExpression()), !dbg !22
  %4 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !23
  store i8* getelementptr inbounds ([73 x i8], [73 x i8]* @3, i32 0, i32 0), i8** %4, align 8, !dbg !23, !tbaa !24
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*)* @.omp_outlined..1 to void (i32*, i32*, ...)*), i32* %j), !dbg !23
  %5 = load i32, i32* getelementptr inbounds ([100 x [100 x i32]], [100 x [100 x i32]]* @a, i64 0, i64 50, i64 50), align 8, !dbg !30, !tbaa !31
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i32 %5), !dbg !32
  %6 = bitcast i32* %j to i8*, !dbg !33
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %6) #6, !dbg !33
  %7 = bitcast i32* %i to i8*, !dbg !33
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %7) #6, !dbg !33
  ret i32 0, !dbg !34
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %j) #3 !dbg !35 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %j.addr = alloca i32*, align 8
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %agg.captured = alloca %struct.anon, align 8
  %tmp = alloca i32, align 4
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !47
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !44, metadata !DIExpression()), !dbg !48
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !47
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !45, metadata !DIExpression()), !dbg !48
  store i32* %j, i32** %j.addr, align 8, !tbaa !47
  call void @llvm.dbg.declare(metadata i32** %j.addr, metadata !46, metadata !DIExpression()), !dbg !49
  %2 = load i32*, i32** %j.addr, align 8, !dbg !50, !tbaa !47
  %3 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !51
  store i8* getelementptr inbounds ([73 x i8], [73 x i8]* @1, i32 0, i32 0), i8** %3, align 8, !dbg !51, !tbaa !24
  %4 = load i32*, i32** %.global_tid..addr, align 8, !dbg !51
  %5 = load i32, i32* %4, align 4, !dbg !51, !tbaa !31
  %6 = call i32 @__kmpc_single(%struct.ident_t* %.kmpc_loc.addr, i32 %5), !dbg !51
  %7 = icmp ne i32 %6, 0, !dbg !51
  br i1 %7, label %omp_if.then, label %omp_if.end, !dbg !51

omp_if.then:                                      ; preds = %entry
  %8 = getelementptr inbounds %struct.anon, %struct.anon* %agg.captured, i32 0, i32 0, !dbg !53
  store i32* %2, i32** %8, align 8, !dbg !53, !tbaa !47
  %9 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !53
  store i8* getelementptr inbounds ([73 x i8], [73 x i8]* @2, i32 0, i32 0), i8** %9, align 8, !dbg !53, !tbaa !24
  call void @__kmpc_taskgroup(%struct.ident_t* %.kmpc_loc.addr, i32 %5), !dbg !53
  %10 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !53
  store i8* getelementptr inbounds ([73 x i8], [73 x i8]* @2, i32 0, i32 0), i8** %10, align 8, !dbg !53, !tbaa !24
  %11 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* %.kmpc_loc.addr, i32 %5, i32 1, i64 80, i64 8, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates*)* @.omp_task_entry. to i32 (i32, i8*)*)), !dbg !53
  %12 = bitcast i8* %11 to %struct.kmp_task_t_with_privates*, !dbg !53
  %13 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %12, i32 0, i32 0, !dbg !53
  %14 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %13, i32 0, i32 0, !dbg !53
  %15 = load i8*, i8** %14, align 8, !dbg !53, !tbaa !56
  %16 = bitcast %struct.anon* %agg.captured to i8*, !dbg !53
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 %16, i64 8, i1 false), !dbg !53, !tbaa.struct !60
  %17 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !53
  store i8* getelementptr inbounds ([73 x i8], [73 x i8]* @2, i32 0, i32 0), i8** %17, align 8, !dbg !53, !tbaa !24
  %18 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %13, i32 0, i32 5, !dbg !53
  store i64 0, i64* %18, align 8, !dbg !53, !tbaa !61
  %19 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %13, i32 0, i32 6, !dbg !53
  store i64 99, i64* %19, align 8, !dbg !53, !tbaa !61
  %20 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %13, i32 0, i32 7, !dbg !53
  store i64 1, i64* %20, align 8, !dbg !53, !tbaa !61
  %21 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %13, i32 0, i32 9, !dbg !53
  %22 = bitcast i8** %21 to i8*, !dbg !53
  call void @llvm.memset.p0i8.i64(i8* align 8 %22, i8 0, i64 8, i1 false), !dbg !53
  %23 = load i64, i64* %20, align 8, !dbg !53, !tbaa !62
  call void @__kmpc_taskloop(%struct.ident_t* %.kmpc_loc.addr, i32 %5, i8* %11, i32 1, i64* %18, i64* %19, i64 %23, i32 1, i32 0, i64 0, i8* null), !dbg !53
  call void @__kmpc_end_taskgroup(%struct.ident_t* %.kmpc_loc.addr, i32 %5), !dbg !63
  call void @__kmpc_end_single(%struct.ident_t* %.kmpc_loc.addr, i32 %5), !dbg !65
  br label %omp_if.end, !dbg !65

omp_if.end:                                       ; preds = %omp_if.then, %entry
  %24 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !66
  store i8* getelementptr inbounds ([73 x i8], [73 x i8]* @1, i32 0, i32 0), i8** %24, align 8, !dbg !66, !tbaa !24
  call void @__kmpc_barrier(%struct.ident_t* %.kmpc_loc.addr, i32 %5), !dbg !66
  ret void, !dbg !67
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local void @__kmpc_end_single(%struct.ident_t*, i32)

declare dso_local i32 @__kmpc_single(%struct.ident_t*, i32)

declare dso_local void @__kmpc_end_taskgroup(%struct.ident_t*, i32)

declare dso_local void @__kmpc_taskgroup(%struct.ident_t*, i32)

; Function Attrs: alwaysinline nounwind uwtable
define internal void @.omp_outlined.(i32 %.global_tid., i32* noalias %.part_id., i8* noalias %.privates., void (i8*, ...)* noalias %.copy_fn., i8* %.task_t., i64 %.lb., i64 %.ub., i64 %.st., i32 %.liter., i8* noalias %.reductions., %struct.anon* noalias %__context) #4 !dbg !68 {
entry:
  %.global_tid..addr = alloca i32, align 4
  %.part_id..addr = alloca i32*, align 8
  %.privates..addr = alloca i8*, align 8
  %.copy_fn..addr = alloca void (i8*, ...)*, align 8
  %.task_t..addr = alloca i8*, align 8
  %.lb..addr = alloca i64, align 8
  %.ub..addr = alloca i64, align 8
  %.st..addr = alloca i64, align 8
  %.liter..addr = alloca i32, align 4
  %.reductions..addr = alloca i8*, align 8
  %__context.addr = alloca %struct.anon*, align 8
  %tmp = alloca i32, align 4
  %i = alloca i32, align 4
  %.omp.iv = alloca i32, align 4
  store i32 %.global_tid., i32* %.global_tid..addr, align 4, !tbaa !31
  call void @llvm.dbg.declare(metadata i32* %.global_tid..addr, metadata !89, metadata !DIExpression()), !dbg !102
  store i32* %.part_id., i32** %.part_id..addr, align 8, !tbaa !47
  call void @llvm.dbg.declare(metadata i32** %.part_id..addr, metadata !90, metadata !DIExpression()), !dbg !102
  store i8* %.privates., i8** %.privates..addr, align 8, !tbaa !47
  call void @llvm.dbg.declare(metadata i8** %.privates..addr, metadata !91, metadata !DIExpression()), !dbg !102
  store void (i8*, ...)* %.copy_fn., void (i8*, ...)** %.copy_fn..addr, align 8, !tbaa !47
  call void @llvm.dbg.declare(metadata void (i8*, ...)** %.copy_fn..addr, metadata !92, metadata !DIExpression()), !dbg !102
  store i8* %.task_t., i8** %.task_t..addr, align 8, !tbaa !47
  call void @llvm.dbg.declare(metadata i8** %.task_t..addr, metadata !93, metadata !DIExpression()), !dbg !102
  store i64 %.lb., i64* %.lb..addr, align 8, !tbaa !61
  call void @llvm.dbg.declare(metadata i64* %.lb..addr, metadata !94, metadata !DIExpression()), !dbg !102
  store i64 %.ub., i64* %.ub..addr, align 8, !tbaa !61
  call void @llvm.dbg.declare(metadata i64* %.ub..addr, metadata !95, metadata !DIExpression()), !dbg !102
  store i64 %.st., i64* %.st..addr, align 8, !tbaa !61
  call void @llvm.dbg.declare(metadata i64* %.st..addr, metadata !96, metadata !DIExpression()), !dbg !102
  store i32 %.liter., i32* %.liter..addr, align 4, !tbaa !31
  call void @llvm.dbg.declare(metadata i32* %.liter..addr, metadata !97, metadata !DIExpression()), !dbg !102
  store i8* %.reductions., i8** %.reductions..addr, align 8, !tbaa !47
  call void @llvm.dbg.declare(metadata i8** %.reductions..addr, metadata !98, metadata !DIExpression()), !dbg !102
  store %struct.anon* %__context, %struct.anon** %__context.addr, align 8, !tbaa !47
  call void @llvm.dbg.declare(metadata %struct.anon** %__context.addr, metadata !99, metadata !DIExpression()), !dbg !102
  %0 = load %struct.anon*, %struct.anon** %__context.addr, align 8, !dbg !103
  %1 = bitcast i32* %i to i8*, !dbg !103
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #6, !dbg !103
  call void @llvm.dbg.declare(metadata i32* %i, metadata !100, metadata !DIExpression()), !dbg !102
  %2 = bitcast i32* %.omp.iv to i8*, !dbg !103
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #6, !dbg !103
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !101, metadata !DIExpression()), !dbg !102
  %3 = load i64, i64* %.lb..addr, align 8, !dbg !104, !tbaa !61
  %conv = trunc i64 %3 to i32, !dbg !104
  store i32 %conv, i32* %.omp.iv, align 4, !dbg !104, !tbaa !31
  %4 = getelementptr inbounds %struct.anon, %struct.anon* %0, i32 0, i32 0, !dbg !105
  %5 = load i32*, i32** %4, align 8, !dbg !105, !tbaa !107
  br label %omp.inner.for.cond, !dbg !109

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %entry
  %6 = load i32, i32* %.omp.iv, align 4, !dbg !110, !tbaa !31
  %conv1 = sext i32 %6 to i64, !dbg !110
  %7 = load i64, i64* %.ub..addr, align 8, !dbg !110, !tbaa !61
  %cmp = icmp ule i64 %conv1, %7, !dbg !111
  br i1 %cmp, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !109

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !109

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %8 = load i32, i32* %.omp.iv, align 4, !dbg !110, !tbaa !31
  %mul = mul nsw i32 %8, 1, !dbg !112
  %add = add nsw i32 0, %mul, !dbg !112
  store i32 %add, i32* %i, align 4, !dbg !112, !tbaa !31
  store i32 0, i32* %5, align 4, !dbg !113, !tbaa !31
  br label %for.cond, !dbg !115

for.cond:                                         ; preds = %for.inc, %omp.inner.for.body
  %9 = load i32, i32* %5, align 4, !dbg !116, !tbaa !31
  %cmp3 = icmp slt i32 %9, 100, !dbg !118
  br i1 %cmp3, label %for.body, label %for.end, !dbg !119

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %i, align 4, !dbg !120, !tbaa !31
  %idxprom = sext i32 %10 to i64, !dbg !121
  %arrayidx = getelementptr inbounds [100 x [100 x i32]], [100 x [100 x i32]]* @a, i64 0, i64 %idxprom, !dbg !121
  %11 = load i32, i32* %5, align 4, !dbg !122, !tbaa !31
  %idxprom5 = sext i32 %11 to i64, !dbg !121
  %arrayidx6 = getelementptr inbounds [100 x i32], [100 x i32]* %arrayidx, i64 0, i64 %idxprom5, !dbg !121
  %12 = load i32, i32* %arrayidx6, align 4, !dbg !123, !tbaa !31
  %add7 = add nsw i32 %12, 1, !dbg !123
  store i32 %add7, i32* %arrayidx6, align 4, !dbg !123, !tbaa !31
  br label %for.inc, !dbg !121

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %5, align 4, !dbg !124, !tbaa !31
  %inc = add nsw i32 %13, 1, !dbg !124
  store i32 %inc, i32* %5, align 4, !dbg !124, !tbaa !31
  br label %for.cond, !dbg !125, !llvm.loop !126

for.end:                                          ; preds = %for.cond
  br label %omp.body.continue, !dbg !127

omp.body.continue:                                ; preds = %for.end
  br label %omp.inner.for.inc, !dbg !128

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %14 = load i32, i32* %.omp.iv, align 4, !dbg !110, !tbaa !31
  %add8 = add nsw i32 %14, 1, !dbg !111
  store i32 %add8, i32* %.omp.iv, align 4, !dbg !111, !tbaa !31
  br label %omp.inner.for.cond, !dbg !128, !llvm.loop !129

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  %15 = bitcast i32* %.omp.iv to i8*, !dbg !130
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %15) #6, !dbg !130
  %16 = bitcast i32* %i to i8*, !dbg !130
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %16) #6, !dbg !130
  ret void, !dbg !131
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: norecurse nounwind uwtable
define internal i32 @.omp_task_entry.(i32 %0, %struct.kmp_task_t_with_privates* noalias %1) #3 !dbg !132 {
entry:
  %.addr = alloca i32, align 4
  %.addr1 = alloca %struct.kmp_task_t_with_privates*, align 8
  store i32 %0, i32* %.addr, align 4, !tbaa !31
  call void @llvm.dbg.declare(metadata i32* %.addr, metadata !135, metadata !DIExpression()), !dbg !147
  store %struct.kmp_task_t_with_privates* %1, %struct.kmp_task_t_with_privates** %.addr1, align 8, !tbaa !47
  call void @llvm.dbg.declare(metadata %struct.kmp_task_t_with_privates** %.addr1, metadata !136, metadata !DIExpression()), !dbg !147
  %2 = load i32, i32* %.addr, align 4, !dbg !148, !tbaa !31
  %3 = load %struct.kmp_task_t_with_privates*, %struct.kmp_task_t_with_privates** %.addr1, align 8, !dbg !148
  %4 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %3, i32 0, i32 0, !dbg !148
  %5 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 2, !dbg !148
  %6 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 0, !dbg !148
  %7 = load i8*, i8** %6, align 8, !dbg !148, !tbaa !56
  %8 = bitcast i8* %7 to %struct.anon*, !dbg !148
  %9 = bitcast %struct.kmp_task_t_with_privates* %3 to i8*, !dbg !148
  %10 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 5, !dbg !148
  %11 = load i64, i64* %10, align 8, !dbg !148, !tbaa !149
  %12 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 6, !dbg !148
  %13 = load i64, i64* %12, align 8, !dbg !148, !tbaa !150
  %14 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 7, !dbg !148
  %15 = load i64, i64* %14, align 8, !dbg !148, !tbaa !62
  %16 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 8, !dbg !148
  %17 = load i32, i32* %16, align 8, !dbg !148, !tbaa !151
  %18 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 9, !dbg !148
  %19 = load i8*, i8** %18, align 8, !dbg !148, !tbaa !152
  call void @.omp_outlined.(i32 %2, i32* %5, i8* null, void (i8*, ...)* null, i8* %9, i64 %11, i64 %13, i64 %15, i32 %17, i8* %19, %struct.anon* %8) #6, !dbg !148
  ret i32 0, !dbg !148
}

declare dso_local i8* @__kmpc_omp_task_alloc(%struct.ident_t*, i32, i32, i64, i64, i32 (i32, i8*)*)

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local void @__kmpc_taskloop(%struct.ident_t*, i32, i8*, i32, i64*, i64*, i64, i32, i32, i64, i8*)

declare dso_local void @__kmpc_barrier(%struct.ident_t*, i32)

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined..1(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %j) #3 !dbg !153 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %j.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !47
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !155, metadata !DIExpression()), !dbg !158
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !47
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !156, metadata !DIExpression()), !dbg !158
  store i32* %j, i32** %j.addr, align 8, !tbaa !47
  call void @llvm.dbg.declare(metadata i32** %j.addr, metadata !157, metadata !DIExpression()), !dbg !158
  %0 = load i32*, i32** %j.addr, align 8, !dbg !159, !tbaa !47
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !159, !tbaa !47
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !159, !tbaa !47
  %3 = load i32*, i32** %j.addr, align 8, !dbg !159, !tbaa !47
  call void @.omp_outlined._debug__(i32* %1, i32* %2, i32* %3) #6, !dbg !159
  ret void, !dbg !159
}

declare !callback !160 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

declare dso_local i32 @printf(i8*, ...) #5

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { alwaysinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!10, !11, !12}
!llvm.ident = !{!13}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "a", scope: !2, file: !3, line: 59, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "integration/dataracebench/DRB095-doall2-taskloop-orig-yes.c", directory: "/home/brad/Code/OpenRace/tests/data")
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
!14 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 60, type: !15, scopeLine: 61, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !17)
!15 = !DISubroutineType(types: !16)
!16 = !{!7}
!17 = !{!18, !19}
!18 = !DILocalVariable(name: "i", scope: !14, file: !3, line: 62, type: !7)
!19 = !DILocalVariable(name: "j", scope: !14, file: !3, line: 62, type: !7)
!20 = !DILocation(line: 62, column: 3, scope: !14)
!21 = !DILocation(line: 62, column: 7, scope: !14)
!22 = !DILocation(line: 62, column: 10, scope: !14)
!23 = !DILocation(line: 63, column: 1, scope: !14)
!24 = !{!25, !29, i64 16}
!25 = !{!"ident_t", !26, i64 0, !26, i64 4, !26, i64 8, !26, i64 12, !29, i64 16}
!26 = !{!"int", !27, i64 0}
!27 = !{!"omnipotent char", !28, i64 0}
!28 = !{!"Simple C/C++ TBAA"}
!29 = !{!"any pointer", !27, i64 0}
!30 = !DILocation(line: 73, column: 29, scope: !14)
!31 = !{!26, !26, i64 0}
!32 = !DILocation(line: 73, column: 3, scope: !14)
!33 = !DILocation(line: 75, column: 1, scope: !14)
!34 = !DILocation(line: 74, column: 3, scope: !14)
!35 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !3, file: !3, line: 64, type: !36, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !43)
!36 = !DISubroutineType(types: !37)
!37 = !{null, !38, !38, !42}
!38 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !39)
!39 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !40)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!42 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !7, size: 64)
!43 = !{!44, !45, !46}
!44 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !35, type: !38, flags: DIFlagArtificial)
!45 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !35, type: !38, flags: DIFlagArtificial)
!46 = !DILocalVariable(name: "j", arg: 3, scope: !35, file: !3, line: 62, type: !42)
!47 = !{!29, !29, i64 0}
!48 = !DILocation(line: 0, scope: !35)
!49 = !DILocation(line: 62, column: 10, scope: !35)
!50 = !DILocation(line: 64, column: 3, scope: !35)
!51 = !DILocation(line: 65, column: 1, scope: !52)
!52 = distinct !DILexicalBlock(scope: !35, file: !3, line: 64, column: 3)
!53 = !DILocation(line: 67, column: 1, scope: !54)
!54 = distinct !DILexicalBlock(scope: !55, file: !3, line: 66, column: 5)
!55 = distinct !DILexicalBlock(scope: !52, file: !3, line: 65, column: 1)
!56 = !{!57, !29, i64 0}
!57 = !{!"kmp_task_t_with_privates", !58, i64 0}
!58 = !{!"kmp_task_t", !29, i64 0, !29, i64 8, !26, i64 16, !27, i64 24, !27, i64 32, !59, i64 40, !59, i64 48, !59, i64 56, !26, i64 64, !29, i64 72}
!59 = !{!"long", !27, i64 0}
!60 = !{i64 0, i64 8, !47}
!61 = !{!59, !59, i64 0}
!62 = !{!57, !59, i64 56}
!63 = !DILocation(line: 67, column: 21, scope: !64)
!64 = distinct !DILexicalBlock(scope: !54, file: !3, line: 67, column: 1)
!65 = !DILocation(line: 71, column: 5, scope: !54)
!66 = !DILocation(line: 65, column: 19, scope: !55)
!67 = !DILocation(line: 72, column: 3, scope: !35)
!68 = distinct !DISubprogram(name: ".omp_outlined.", scope: !3, file: !3, line: 69, type: !69, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !88)
!69 = !DISubroutineType(types: !70)
!70 = !{null, !41, !38, !71, !74, !79, !80, !80, !82, !41, !71, !84}
!71 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !72)
!72 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !73)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !75)
!75 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !76)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!77 = !DISubroutineType(types: !78)
!78 = !{null, !71, null}
!79 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !73)
!80 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !81)
!81 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!82 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !83)
!83 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!84 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !85)
!85 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !86)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 67, size: 64, elements: !4)
!88 = !{!89, !90, !91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101}
!89 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !68, type: !41, flags: DIFlagArtificial)
!90 = !DILocalVariable(name: ".part_id.", arg: 2, scope: !68, type: !38, flags: DIFlagArtificial)
!91 = !DILocalVariable(name: ".privates.", arg: 3, scope: !68, type: !71, flags: DIFlagArtificial)
!92 = !DILocalVariable(name: ".copy_fn.", arg: 4, scope: !68, type: !74, flags: DIFlagArtificial)
!93 = !DILocalVariable(name: ".task_t.", arg: 5, scope: !68, type: !79, flags: DIFlagArtificial)
!94 = !DILocalVariable(name: ".lb.", arg: 6, scope: !68, type: !80, flags: DIFlagArtificial)
!95 = !DILocalVariable(name: ".ub.", arg: 7, scope: !68, type: !80, flags: DIFlagArtificial)
!96 = !DILocalVariable(name: ".st.", arg: 8, scope: !68, type: !82, flags: DIFlagArtificial)
!97 = !DILocalVariable(name: ".liter.", arg: 9, scope: !68, type: !41, flags: DIFlagArtificial)
!98 = !DILocalVariable(name: ".reductions.", arg: 10, scope: !68, type: !71, flags: DIFlagArtificial)
!99 = !DILocalVariable(name: "__context", arg: 11, scope: !68, type: !84, flags: DIFlagArtificial)
!100 = !DILocalVariable(name: "i", scope: !68, type: !7, flags: DIFlagArtificial)
!101 = !DILocalVariable(name: ".omp.iv", scope: !68, type: !7, flags: DIFlagArtificial)
!102 = !DILocation(line: 0, scope: !68)
!103 = !DILocation(line: 68, column: 7, scope: !68)
!104 = !DILocation(line: 68, column: 12, scope: !68)
!105 = !DILocation(line: 69, column: 14, scope: !106)
!106 = distinct !DILexicalBlock(scope: !68, file: !3, line: 67, column: 1)
!107 = !{!108, !29, i64 0}
!108 = !{!"", !29, i64 0}
!109 = !DILocation(line: 67, column: 1, scope: !68)
!110 = !DILocation(line: 68, column: 12, scope: !106)
!111 = !DILocation(line: 68, column: 7, scope: !106)
!112 = !DILocation(line: 68, column: 28, scope: !106)
!113 = !DILocation(line: 69, column: 16, scope: !114)
!114 = distinct !DILexicalBlock(scope: !106, file: !3, line: 69, column: 9)
!115 = !DILocation(line: 69, column: 14, scope: !114)
!116 = !DILocation(line: 69, column: 21, scope: !117)
!117 = distinct !DILexicalBlock(scope: !114, file: !3, line: 69, column: 9)
!118 = !DILocation(line: 69, column: 23, scope: !117)
!119 = !DILocation(line: 69, column: 9, scope: !114)
!120 = !DILocation(line: 70, column: 13, scope: !117)
!121 = !DILocation(line: 70, column: 11, scope: !117)
!122 = !DILocation(line: 70, column: 16, scope: !117)
!123 = !DILocation(line: 70, column: 18, scope: !117)
!124 = !DILocation(line: 69, column: 31, scope: !117)
!125 = !DILocation(line: 69, column: 9, scope: !117)
!126 = distinct !{!126, !119, !127}
!127 = !DILocation(line: 70, column: 20, scope: !114)
!128 = !DILocation(line: 67, column: 1, scope: !106)
!129 = distinct !{!129, !128, !130}
!130 = !DILocation(line: 67, column: 21, scope: !106)
!131 = !DILocation(line: 70, column: 20, scope: !68)
!132 = distinct !DISubprogram(linkageName: ".omp_task_entry.", scope: !3, file: !3, line: 67, type: !133, scopeLine: 67, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !134)
!133 = !DISubroutineType(types: !4)
!134 = !{!135, !136}
!135 = !DILocalVariable(arg: 1, scope: !132, type: !7, flags: DIFlagArtificial)
!136 = !DILocalVariable(arg: 2, scope: !132, type: !137, flags: DIFlagArtificial)
!137 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !138)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t_with_privates", file: !3, size: 640, elements: !140)
!140 = !{!141}
!141 = !DIDerivedType(tag: DW_TAG_member, scope: !139, file: !3, baseType: !142, size: 640)
!142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t", file: !3, size: 640, elements: !143)
!143 = !{!144, !146}
!144 = !DIDerivedType(tag: DW_TAG_member, scope: !142, file: !3, baseType: !145, size: 64, offset: 192)
!145 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "kmp_cmplrdata_t", file: !3, size: 64, elements: !4)
!146 = !DIDerivedType(tag: DW_TAG_member, scope: !142, file: !3, baseType: !145, size: 64, offset: 256)
!147 = !DILocation(line: 0, scope: !132)
!148 = !DILocation(line: 67, column: 1, scope: !132)
!149 = !{!57, !59, i64 40}
!150 = !{!57, !59, i64 48}
!151 = !{!57, !26, i64 64}
!152 = !{!57, !29, i64 72}
!153 = distinct !DISubprogram(name: ".omp_outlined..1", scope: !3, file: !3, line: 64, type: !36, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !154)
!154 = !{!155, !156, !157}
!155 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !153, type: !38, flags: DIFlagArtificial)
!156 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !153, type: !38, flags: DIFlagArtificial)
!157 = !DILocalVariable(name: "j", arg: 3, scope: !153, type: !42, flags: DIFlagArtificial)
!158 = !DILocation(line: 0, scope: !153)
!159 = !DILocation(line: 64, column: 3, scope: !153)
!160 = !{!161}
!161 = !{i64 2, i64 -1, i64 -1, i1 true}
