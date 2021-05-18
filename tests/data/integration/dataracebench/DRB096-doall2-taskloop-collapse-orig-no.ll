; ModuleID = 'integration/dataracebench/DRB096-doall2-taskloop-collapse-orig-no.c'
source_filename = "integration/dataracebench/DRB096-doall2-taskloop-collapse-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }
%struct.anon = type {}
%struct.kmp_task_t_with_privates = type { %struct.kmp_task_t }
%struct.kmp_task_t = type { i8*, i32 (i32, i8*)*, i32, %union.kmp_cmplrdata_t, %union.kmp_cmplrdata_t, i64, i64, i64, i32, i8* }
%union.kmp_cmplrdata_t = type { i32 (i32, i8*)* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [81 x i8] c";integration/dataracebench/DRB096-doall2-taskloop-collapse-orig-no.c;main;63;1;;\00", align 1
@2 = private unnamed_addr constant [81 x i8] c";integration/dataracebench/DRB096-doall2-taskloop-collapse-orig-no.c;main;65;1;;\00", align 1
@a = common dso_local global [100 x [100 x i32]] zeroinitializer, align 16, !dbg !0
@3 = private unnamed_addr constant [81 x i8] c";integration/dataracebench/DRB096-doall2-taskloop-collapse-orig-no.c;main;61;1;;\00", align 1
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
  store i8* getelementptr inbounds ([81 x i8], [81 x i8]* @3, i32 0, i32 0), i8** %4, align 8, !dbg !23, !tbaa !24
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 0, void (i32*, i32*, ...)* bitcast (void (i32*, i32*)* @.omp_outlined..1 to void (i32*, i32*, ...)*)), !dbg !23
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
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid.) #3 !dbg !35 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %agg.captured = alloca %struct.anon, align 1
  %tmp = alloca i32, align 4
  %tmp1 = alloca i32, align 4
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !45
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !43, metadata !DIExpression()), !dbg !46
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !45
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !44, metadata !DIExpression()), !dbg !46
  %2 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !47
  store i8* getelementptr inbounds ([81 x i8], [81 x i8]* @1, i32 0, i32 0), i8** %2, align 8, !dbg !47, !tbaa !24
  %3 = load i32*, i32** %.global_tid..addr, align 8, !dbg !47
  %4 = load i32, i32* %3, align 4, !dbg !47, !tbaa !31
  %5 = call i32 @__kmpc_single(%struct.ident_t* %.kmpc_loc.addr, i32 %4), !dbg !47
  %6 = icmp ne i32 %5, 0, !dbg !47
  br i1 %6, label %omp_if.then, label %omp_if.end, !dbg !47

omp_if.then:                                      ; preds = %entry
  %7 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !49
  store i8* getelementptr inbounds ([81 x i8], [81 x i8]* @2, i32 0, i32 0), i8** %7, align 8, !dbg !49, !tbaa !24
  call void @__kmpc_taskgroup(%struct.ident_t* %.kmpc_loc.addr, i32 %4), !dbg !49
  %8 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !49
  store i8* getelementptr inbounds ([81 x i8], [81 x i8]* @2, i32 0, i32 0), i8** %8, align 8, !dbg !49, !tbaa !24
  %9 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* %.kmpc_loc.addr, i32 %4, i32 1, i64 80, i64 0, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates*)* @.omp_task_entry. to i32 (i32, i8*)*)), !dbg !49
  %10 = bitcast i8* %9 to %struct.kmp_task_t_with_privates*, !dbg !49
  %11 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %10, i32 0, i32 0, !dbg !49
  %12 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !49
  store i8* getelementptr inbounds ([81 x i8], [81 x i8]* @2, i32 0, i32 0), i8** %12, align 8, !dbg !49, !tbaa !24
  %13 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %11, i32 0, i32 5, !dbg !49
  store i64 0, i64* %13, align 8, !dbg !49, !tbaa !52
  %14 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %11, i32 0, i32 6, !dbg !49
  store i64 9999, i64* %14, align 8, !dbg !49, !tbaa !52
  %15 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %11, i32 0, i32 7, !dbg !49
  store i64 1, i64* %15, align 8, !dbg !49, !tbaa !52
  %16 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %11, i32 0, i32 9, !dbg !49
  %17 = bitcast i8** %16 to i8*, !dbg !49
  call void @llvm.memset.p0i8.i64(i8* align 8 %17, i8 0, i64 8, i1 false), !dbg !49
  %18 = load i64, i64* %15, align 8, !dbg !49, !tbaa !54
  call void @__kmpc_taskloop(%struct.ident_t* %.kmpc_loc.addr, i32 %4, i8* %9, i32 1, i64* %13, i64* %14, i64 %18, i32 1, i32 0, i64 0, i8* null), !dbg !49
  call void @__kmpc_end_taskgroup(%struct.ident_t* %.kmpc_loc.addr, i32 %4), !dbg !57
  call void @__kmpc_end_single(%struct.ident_t* %.kmpc_loc.addr, i32 %4), !dbg !59
  br label %omp_if.end, !dbg !59

omp_if.end:                                       ; preds = %omp_if.then, %entry
  %19 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !60
  store i8* getelementptr inbounds ([81 x i8], [81 x i8]* @1, i32 0, i32 0), i8** %19, align 8, !dbg !60, !tbaa !24
  call void @__kmpc_barrier(%struct.ident_t* %.kmpc_loc.addr, i32 %4), !dbg !60
  ret void, !dbg !61
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local void @__kmpc_end_single(%struct.ident_t*, i32)

declare dso_local i32 @__kmpc_single(%struct.ident_t*, i32)

declare dso_local void @__kmpc_end_taskgroup(%struct.ident_t*, i32)

declare dso_local void @__kmpc_taskgroup(%struct.ident_t*, i32)

; Function Attrs: alwaysinline nounwind uwtable
define internal void @.omp_outlined.(i32 %.global_tid., i32* noalias %.part_id., i8* noalias %.privates., void (i8*, ...)* noalias %.copy_fn., i8* %.task_t., i64 %.lb., i64 %.ub., i64 %.st., i32 %.liter., i8* noalias %.reductions., %struct.anon* noalias %__context) #4 !dbg !62 {
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
  %tmp1 = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %.omp.iv = alloca i32, align 4
  store i32 %.global_tid., i32* %.global_tid..addr, align 4, !tbaa !31
  call void @llvm.dbg.declare(metadata i32* %.global_tid..addr, metadata !83, metadata !DIExpression()), !dbg !97
  store i32* %.part_id., i32** %.part_id..addr, align 8, !tbaa !45
  call void @llvm.dbg.declare(metadata i32** %.part_id..addr, metadata !84, metadata !DIExpression()), !dbg !97
  store i8* %.privates., i8** %.privates..addr, align 8, !tbaa !45
  call void @llvm.dbg.declare(metadata i8** %.privates..addr, metadata !85, metadata !DIExpression()), !dbg !97
  store void (i8*, ...)* %.copy_fn., void (i8*, ...)** %.copy_fn..addr, align 8, !tbaa !45
  call void @llvm.dbg.declare(metadata void (i8*, ...)** %.copy_fn..addr, metadata !86, metadata !DIExpression()), !dbg !97
  store i8* %.task_t., i8** %.task_t..addr, align 8, !tbaa !45
  call void @llvm.dbg.declare(metadata i8** %.task_t..addr, metadata !87, metadata !DIExpression()), !dbg !97
  store i64 %.lb., i64* %.lb..addr, align 8, !tbaa !52
  call void @llvm.dbg.declare(metadata i64* %.lb..addr, metadata !88, metadata !DIExpression()), !dbg !97
  store i64 %.ub., i64* %.ub..addr, align 8, !tbaa !52
  call void @llvm.dbg.declare(metadata i64* %.ub..addr, metadata !89, metadata !DIExpression()), !dbg !97
  store i64 %.st., i64* %.st..addr, align 8, !tbaa !52
  call void @llvm.dbg.declare(metadata i64* %.st..addr, metadata !90, metadata !DIExpression()), !dbg !97
  store i32 %.liter., i32* %.liter..addr, align 4, !tbaa !31
  call void @llvm.dbg.declare(metadata i32* %.liter..addr, metadata !91, metadata !DIExpression()), !dbg !97
  store i8* %.reductions., i8** %.reductions..addr, align 8, !tbaa !45
  call void @llvm.dbg.declare(metadata i8** %.reductions..addr, metadata !92, metadata !DIExpression()), !dbg !97
  store %struct.anon* %__context, %struct.anon** %__context.addr, align 8, !tbaa !45
  call void @llvm.dbg.declare(metadata %struct.anon** %__context.addr, metadata !93, metadata !DIExpression()), !dbg !97
  %0 = load %struct.anon*, %struct.anon** %__context.addr, align 8, !dbg !98
  %1 = bitcast i32* %i to i8*, !dbg !98
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #6, !dbg !98
  call void @llvm.dbg.declare(metadata i32* %i, metadata !94, metadata !DIExpression()), !dbg !97
  %2 = bitcast i32* %j to i8*, !dbg !98
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #6, !dbg !98
  call void @llvm.dbg.declare(metadata i32* %j, metadata !95, metadata !DIExpression()), !dbg !97
  %3 = bitcast i32* %.omp.iv to i8*, !dbg !98
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #6, !dbg !98
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !96, metadata !DIExpression()), !dbg !97
  %4 = load i64, i64* %.lb..addr, align 8, !dbg !99, !tbaa !52
  %conv = trunc i64 %4 to i32, !dbg !99
  store i32 %conv, i32* %.omp.iv, align 4, !dbg !99, !tbaa !31
  br label %omp.inner.for.cond, !dbg !100

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %entry
  %5 = load i32, i32* %.omp.iv, align 4, !dbg !101, !tbaa !31
  %conv2 = sext i32 %5 to i64, !dbg !101
  %6 = load i64, i64* %.ub..addr, align 8, !dbg !101, !tbaa !52
  %cmp = icmp ule i64 %conv2, %6, !dbg !103
  br i1 %cmp, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !100

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !100

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %7 = load i32, i32* %.omp.iv, align 4, !dbg !101, !tbaa !31
  %div = sdiv i32 %7, 100, !dbg !104
  %mul = mul nsw i32 %div, 1, !dbg !104
  %add = add nsw i32 0, %mul, !dbg !104
  store i32 %add, i32* %i, align 4, !dbg !104, !tbaa !31
  %8 = load i32, i32* %.omp.iv, align 4, !dbg !101, !tbaa !31
  %9 = load i32, i32* %.omp.iv, align 4, !dbg !101, !tbaa !31
  %div4 = sdiv i32 %9, 100, !dbg !104
  %mul5 = mul nsw i32 %div4, 100, !dbg !104
  %sub = sub nsw i32 %8, %mul5, !dbg !104
  %mul6 = mul nsw i32 %sub, 1, !dbg !105
  %add7 = add nsw i32 0, %mul6, !dbg !105
  store i32 %add7, i32* %j, align 4, !dbg !105, !tbaa !31
  %10 = load i32, i32* %i, align 4, !dbg !106, !tbaa !31
  %idxprom = sext i32 %10 to i64, !dbg !107
  %arrayidx = getelementptr inbounds [100 x [100 x i32]], [100 x [100 x i32]]* @a, i64 0, i64 %idxprom, !dbg !107
  %11 = load i32, i32* %j, align 4, !dbg !108, !tbaa !31
  %idxprom8 = sext i32 %11 to i64, !dbg !107
  %arrayidx9 = getelementptr inbounds [100 x i32], [100 x i32]* %arrayidx, i64 0, i64 %idxprom8, !dbg !107
  %12 = load i32, i32* %arrayidx9, align 4, !dbg !109, !tbaa !31
  %add10 = add nsw i32 %12, 1, !dbg !109
  store i32 %add10, i32* %arrayidx9, align 4, !dbg !109, !tbaa !31
  br label %omp.body.continue, !dbg !107

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !110

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %13 = load i32, i32* %.omp.iv, align 4, !dbg !101, !tbaa !31
  %add11 = add nsw i32 %13, 1, !dbg !103
  store i32 %add11, i32* %.omp.iv, align 4, !dbg !103, !tbaa !31
  br label %omp.inner.for.cond, !dbg !110, !llvm.loop !111

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  %14 = bitcast i32* %.omp.iv to i8*, !dbg !112
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %14) #6, !dbg !112
  %15 = bitcast i32* %j to i8*, !dbg !112
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %15) #6, !dbg !112
  %16 = bitcast i32* %i to i8*, !dbg !112
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %16) #6, !dbg !112
  ret void, !dbg !113
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: norecurse nounwind uwtable
define internal i32 @.omp_task_entry.(i32 %0, %struct.kmp_task_t_with_privates* noalias %1) #3 !dbg !114 {
entry:
  %.addr = alloca i32, align 4
  %.addr1 = alloca %struct.kmp_task_t_with_privates*, align 8
  store i32 %0, i32* %.addr, align 4, !tbaa !31
  call void @llvm.dbg.declare(metadata i32* %.addr, metadata !117, metadata !DIExpression()), !dbg !129
  store %struct.kmp_task_t_with_privates* %1, %struct.kmp_task_t_with_privates** %.addr1, align 8, !tbaa !45
  call void @llvm.dbg.declare(metadata %struct.kmp_task_t_with_privates** %.addr1, metadata !118, metadata !DIExpression()), !dbg !129
  %2 = load i32, i32* %.addr, align 4, !dbg !130, !tbaa !31
  %3 = load %struct.kmp_task_t_with_privates*, %struct.kmp_task_t_with_privates** %.addr1, align 8, !dbg !130
  %4 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %3, i32 0, i32 0, !dbg !130
  %5 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 2, !dbg !130
  %6 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 0, !dbg !130
  %7 = load i8*, i8** %6, align 8, !dbg !130, !tbaa !131
  %8 = bitcast i8* %7 to %struct.anon*, !dbg !130
  %9 = bitcast %struct.kmp_task_t_with_privates* %3 to i8*, !dbg !130
  %10 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 5, !dbg !130
  %11 = load i64, i64* %10, align 8, !dbg !130, !tbaa !132
  %12 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 6, !dbg !130
  %13 = load i64, i64* %12, align 8, !dbg !130, !tbaa !133
  %14 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 7, !dbg !130
  %15 = load i64, i64* %14, align 8, !dbg !130, !tbaa !54
  %16 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 8, !dbg !130
  %17 = load i32, i32* %16, align 8, !dbg !130, !tbaa !134
  %18 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 9, !dbg !130
  %19 = load i8*, i8** %18, align 8, !dbg !130, !tbaa !135
  call void @.omp_outlined.(i32 %2, i32* %5, i8* null, void (i8*, ...)* null, i8* %9, i64 %11, i64 %13, i64 %15, i32 %17, i8* %19, %struct.anon* %8) #6, !dbg !130
  ret i32 0, !dbg !130
}

declare dso_local i8* @__kmpc_omp_task_alloc(%struct.ident_t*, i32, i32, i64, i64, i32 (i32, i8*)*)

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local void @__kmpc_taskloop(%struct.ident_t*, i32, i8*, i32, i64*, i64*, i64, i32, i32, i64, i8*)

declare dso_local void @__kmpc_barrier(%struct.ident_t*, i32)

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined..1(i32* noalias %.global_tid., i32* noalias %.bound_tid.) #3 !dbg !136 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !45
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !138, metadata !DIExpression()), !dbg !140
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !45
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !139, metadata !DIExpression()), !dbg !140
  %0 = load i32*, i32** %.global_tid..addr, align 8, !dbg !141, !tbaa !45
  %1 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !141, !tbaa !45
  call void @.omp_outlined._debug__(i32* %0, i32* %1) #6, !dbg !141
  ret void, !dbg !141
}

declare !callback !142 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

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
!1 = distinct !DIGlobalVariable(name: "a", scope: !2, file: !3, line: 57, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "integration/dataracebench/DRB096-doall2-taskloop-collapse-orig-no.c", directory: "/home/brad/Code/OpenRace/tests/data")
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
!14 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 58, type: !15, scopeLine: 59, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !17)
!15 = !DISubroutineType(types: !16)
!16 = !{!7}
!17 = !{!18, !19}
!18 = !DILocalVariable(name: "i", scope: !14, file: !3, line: 60, type: !7)
!19 = !DILocalVariable(name: "j", scope: !14, file: !3, line: 60, type: !7)
!20 = !DILocation(line: 60, column: 3, scope: !14)
!21 = !DILocation(line: 60, column: 7, scope: !14)
!22 = !DILocation(line: 60, column: 10, scope: !14)
!23 = !DILocation(line: 61, column: 1, scope: !14)
!24 = !{!25, !29, i64 16}
!25 = !{!"ident_t", !26, i64 0, !26, i64 4, !26, i64 8, !26, i64 12, !29, i64 16}
!26 = !{!"int", !27, i64 0}
!27 = !{!"omnipotent char", !28, i64 0}
!28 = !{!"Simple C/C++ TBAA"}
!29 = !{!"any pointer", !27, i64 0}
!30 = !DILocation(line: 71, column: 29, scope: !14)
!31 = !{!26, !26, i64 0}
!32 = !DILocation(line: 71, column: 3, scope: !14)
!33 = !DILocation(line: 73, column: 1, scope: !14)
!34 = !DILocation(line: 72, column: 3, scope: !14)
!35 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !3, file: !3, line: 62, type: !36, scopeLine: 62, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !42)
!36 = !DISubroutineType(types: !37)
!37 = !{null, !38, !38}
!38 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !39)
!39 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !40)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!42 = !{!43, !44}
!43 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !35, type: !38, flags: DIFlagArtificial)
!44 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !35, type: !38, flags: DIFlagArtificial)
!45 = !{!29, !29, i64 0}
!46 = !DILocation(line: 0, scope: !35)
!47 = !DILocation(line: 63, column: 1, scope: !48)
!48 = distinct !DILexicalBlock(scope: !35, file: !3, line: 62, column: 3)
!49 = !DILocation(line: 65, column: 1, scope: !50)
!50 = distinct !DILexicalBlock(scope: !51, file: !3, line: 64, column: 5)
!51 = distinct !DILexicalBlock(scope: !48, file: !3, line: 63, column: 1)
!52 = !{!53, !53, i64 0}
!53 = !{!"long", !27, i64 0}
!54 = !{!55, !53, i64 56}
!55 = !{!"kmp_task_t_with_privates", !56, i64 0}
!56 = !{!"kmp_task_t", !29, i64 0, !29, i64 8, !26, i64 16, !27, i64 24, !27, i64 32, !53, i64 40, !53, i64 48, !53, i64 56, !26, i64 64, !29, i64 72}
!57 = !DILocation(line: 65, column: 33, scope: !58)
!58 = distinct !DILexicalBlock(scope: !50, file: !3, line: 65, column: 1)
!59 = !DILocation(line: 69, column: 5, scope: !50)
!60 = !DILocation(line: 63, column: 19, scope: !51)
!61 = !DILocation(line: 70, column: 3, scope: !35)
!62 = distinct !DISubprogram(name: ".omp_outlined.", scope: !3, file: !3, line: 65, type: !63, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !82)
!63 = !DISubroutineType(types: !64)
!64 = !{null, !41, !38, !65, !68, !73, !74, !74, !76, !41, !65, !78}
!65 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !66)
!66 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !67)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !69)
!69 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !70)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = !DISubroutineType(types: !72)
!72 = !{null, !65, null}
!73 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !67)
!74 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !75)
!75 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!76 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !77)
!77 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!78 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !79)
!79 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !80)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !3, line: 65, elements: !4)
!82 = !{!83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96}
!83 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !62, type: !41, flags: DIFlagArtificial)
!84 = !DILocalVariable(name: ".part_id.", arg: 2, scope: !62, type: !38, flags: DIFlagArtificial)
!85 = !DILocalVariable(name: ".privates.", arg: 3, scope: !62, type: !65, flags: DIFlagArtificial)
!86 = !DILocalVariable(name: ".copy_fn.", arg: 4, scope: !62, type: !68, flags: DIFlagArtificial)
!87 = !DILocalVariable(name: ".task_t.", arg: 5, scope: !62, type: !73, flags: DIFlagArtificial)
!88 = !DILocalVariable(name: ".lb.", arg: 6, scope: !62, type: !74, flags: DIFlagArtificial)
!89 = !DILocalVariable(name: ".ub.", arg: 7, scope: !62, type: !74, flags: DIFlagArtificial)
!90 = !DILocalVariable(name: ".st.", arg: 8, scope: !62, type: !76, flags: DIFlagArtificial)
!91 = !DILocalVariable(name: ".liter.", arg: 9, scope: !62, type: !41, flags: DIFlagArtificial)
!92 = !DILocalVariable(name: ".reductions.", arg: 10, scope: !62, type: !65, flags: DIFlagArtificial)
!93 = !DILocalVariable(name: "__context", arg: 11, scope: !62, type: !78, flags: DIFlagArtificial)
!94 = !DILocalVariable(name: "i", scope: !62, type: !7, flags: DIFlagArtificial)
!95 = !DILocalVariable(name: "j", scope: !62, type: !7, flags: DIFlagArtificial)
!96 = !DILocalVariable(name: ".omp.iv", scope: !62, type: !7, flags: DIFlagArtificial)
!97 = !DILocation(line: 0, scope: !62)
!98 = !DILocation(line: 66, column: 7, scope: !62)
!99 = !DILocation(line: 66, column: 12, scope: !62)
!100 = !DILocation(line: 65, column: 1, scope: !62)
!101 = !DILocation(line: 66, column: 12, scope: !102)
!102 = distinct !DILexicalBlock(scope: !62, file: !3, line: 65, column: 1)
!103 = !DILocation(line: 66, column: 7, scope: !102)
!104 = !DILocation(line: 66, column: 28, scope: !102)
!105 = !DILocation(line: 67, column: 30, scope: !102)
!106 = !DILocation(line: 68, column: 13, scope: !102)
!107 = !DILocation(line: 68, column: 11, scope: !102)
!108 = !DILocation(line: 68, column: 16, scope: !102)
!109 = !DILocation(line: 68, column: 18, scope: !102)
!110 = !DILocation(line: 65, column: 1, scope: !102)
!111 = distinct !{!111, !110, !112}
!112 = !DILocation(line: 65, column: 33, scope: !102)
!113 = !DILocation(line: 68, column: 20, scope: !62)
!114 = distinct !DISubprogram(linkageName: ".omp_task_entry.", scope: !3, file: !3, line: 65, type: !115, scopeLine: 65, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !116)
!115 = !DISubroutineType(types: !4)
!116 = !{!117, !118}
!117 = !DILocalVariable(arg: 1, scope: !114, type: !7, flags: DIFlagArtificial)
!118 = !DILocalVariable(arg: 2, scope: !114, type: !119, flags: DIFlagArtificial)
!119 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !120)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t_with_privates", file: !3, size: 640, elements: !122)
!122 = !{!123}
!123 = !DIDerivedType(tag: DW_TAG_member, scope: !121, file: !3, baseType: !124, size: 640)
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t", file: !3, size: 640, elements: !125)
!125 = !{!126, !128}
!126 = !DIDerivedType(tag: DW_TAG_member, scope: !124, file: !3, baseType: !127, size: 64, offset: 192)
!127 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "kmp_cmplrdata_t", file: !3, size: 64, elements: !4)
!128 = !DIDerivedType(tag: DW_TAG_member, scope: !124, file: !3, baseType: !127, size: 64, offset: 256)
!129 = !DILocation(line: 0, scope: !114)
!130 = !DILocation(line: 65, column: 1, scope: !114)
!131 = !{!55, !29, i64 0}
!132 = !{!55, !53, i64 40}
!133 = !{!55, !53, i64 48}
!134 = !{!55, !26, i64 64}
!135 = !{!55, !29, i64 72}
!136 = distinct !DISubprogram(name: ".omp_outlined..1", scope: !3, file: !3, line: 62, type: !36, scopeLine: 62, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !137)
!137 = !{!138, !139}
!138 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !136, type: !38, flags: DIFlagArtificial)
!139 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !136, type: !38, flags: DIFlagArtificial)
!140 = !DILocation(line: 0, scope: !136)
!141 = !DILocation(line: 62, column: 3, scope: !136)
!142 = !{!143}
!143 = !{i64 2, i64 -1, i64 -1, i1 true}
