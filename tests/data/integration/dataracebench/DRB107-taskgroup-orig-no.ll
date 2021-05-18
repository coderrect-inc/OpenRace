; ModuleID = 'integration/dataracebench/DRB107-taskgroup-orig-no.c'
source_filename = "integration/dataracebench/DRB107-taskgroup-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }
%struct.anon = type { i32* }
%struct.anon.0 = type { i32* }
%struct.kmp_task_t_with_privates = type { %struct.kmp_task_t }
%struct.kmp_task_t = type { i8*, i32 (i32, i8*)*, i32, %union.kmp_cmplrdata_t, %union.kmp_cmplrdata_t }
%union.kmp_cmplrdata_t = type { i32 (i32, i8*)* }
%struct.kmp_task_t_with_privates.1 = type { %struct.kmp_task_t }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [66 x i8] c";integration/dataracebench/DRB107-taskgroup-orig-no.c;main;59;1;;\00", align 1
@2 = private unnamed_addr constant [66 x i8] c";integration/dataracebench/DRB107-taskgroup-orig-no.c;main;61;1;;\00", align 1
@3 = private unnamed_addr constant [66 x i8] c";integration/dataracebench/DRB107-taskgroup-orig-no.c;main;63;1;;\00", align 1
@4 = private unnamed_addr constant [66 x i8] c";integration/dataracebench/DRB107-taskgroup-orig-no.c;main;69;1;;\00", align 1
@5 = private unnamed_addr constant [66 x i8] c";integration/dataracebench/DRB107-taskgroup-orig-no.c;main;57;1;;\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"result=%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"result==2\00", align 1
@.str.6 = private unnamed_addr constant [53 x i8] c"integration/dataracebench/DRB107-taskgroup-orig-no.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [11 x i8] c"int main()\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main() #0 !dbg !13 {
entry:
  %retval = alloca i32, align 4
  %result = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32 0, i32* %retval, align 4
  %2 = bitcast i32* %result to i8*, !dbg !19
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #7, !dbg !19
  call void @llvm.dbg.declare(metadata i32* %result, metadata !18, metadata !DIExpression()), !dbg !20
  store i32 0, i32* %result, align 4, !dbg !20, !tbaa !21
  %3 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !25
  store i8* getelementptr inbounds ([66 x i8], [66 x i8]* @5, i32 0, i32 0), i8** %3, align 8, !dbg !25, !tbaa !26
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*)* @.omp_outlined..3 to void (i32*, i32*, ...)*), i32* %result), !dbg !25
  %4 = load i32, i32* %result, align 4, !dbg !29, !tbaa !21
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %4), !dbg !30
  %5 = load i32, i32* %result, align 4, !dbg !31, !tbaa !21
  %cmp = icmp eq i32 %5, 2, !dbg !31
  br i1 %cmp, label %if.then, label %if.else, !dbg !34

if.then:                                          ; preds = %entry
  br label %if.end, !dbg !34

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.6, i64 0, i64 0), i32 76, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #8, !dbg !31
  unreachable, !dbg !31

if.end:                                           ; preds = %if.then
  %6 = bitcast i32* %result to i8*, !dbg !35
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %6) #7, !dbg !35
  ret i32 0, !dbg !36
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %result) #3 !dbg !37 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %result.addr = alloca i32*, align 8
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %agg.captured = alloca %struct.anon, align 8
  %agg.captured1 = alloca %struct.anon.0, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !49
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !46, metadata !DIExpression()), !dbg !50
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !49
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !47, metadata !DIExpression()), !dbg !50
  store i32* %result, i32** %result.addr, align 8, !tbaa !49
  call void @llvm.dbg.declare(metadata i32** %result.addr, metadata !48, metadata !DIExpression()), !dbg !51
  %2 = load i32*, i32** %result.addr, align 8, !dbg !52, !tbaa !49
  %3 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !53
  store i8* getelementptr inbounds ([66 x i8], [66 x i8]* @1, i32 0, i32 0), i8** %3, align 8, !dbg !53, !tbaa !26
  %4 = load i32*, i32** %.global_tid..addr, align 8, !dbg !53
  %5 = load i32, i32* %4, align 4, !dbg !53, !tbaa !21
  %6 = call i32 @__kmpc_single(%struct.ident_t* %.kmpc_loc.addr, i32 %5), !dbg !53
  %7 = icmp ne i32 %6, 0, !dbg !53
  br i1 %7, label %omp_if.then, label %omp_if.end, !dbg !53

omp_if.then:                                      ; preds = %entry
  %8 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !55
  store i8* getelementptr inbounds ([66 x i8], [66 x i8]* @2, i32 0, i32 0), i8** %8, align 8, !dbg !55, !tbaa !26
  call void @__kmpc_taskgroup(%struct.ident_t* %.kmpc_loc.addr, i32 %5), !dbg !55
  %9 = getelementptr inbounds %struct.anon, %struct.anon* %agg.captured, i32 0, i32 0, !dbg !58
  store i32* %2, i32** %9, align 8, !dbg !58, !tbaa !49
  %10 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !58
  store i8* getelementptr inbounds ([66 x i8], [66 x i8]* @3, i32 0, i32 0), i8** %10, align 8, !dbg !58, !tbaa !26
  %11 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* %.kmpc_loc.addr, i32 %5, i32 1, i64 40, i64 8, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates*)* @.omp_task_entry. to i32 (i32, i8*)*)), !dbg !58
  %12 = bitcast i8* %11 to %struct.kmp_task_t_with_privates*, !dbg !58
  %13 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %12, i32 0, i32 0, !dbg !58
  %14 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %13, i32 0, i32 0, !dbg !58
  %15 = load i8*, i8** %14, align 8, !dbg !58, !tbaa !61
  %16 = bitcast %struct.anon* %agg.captured to i8*, !dbg !58
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 %16, i64 8, i1 false), !dbg !58, !tbaa.struct !64
  %17 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !58
  store i8* getelementptr inbounds ([66 x i8], [66 x i8]* @3, i32 0, i32 0), i8** %17, align 8, !dbg !58, !tbaa !26
  %18 = call i32 @__kmpc_omp_task(%struct.ident_t* %.kmpc_loc.addr, i32 %5, i8* %11), !dbg !58
  call void @__kmpc_end_taskgroup(%struct.ident_t* %.kmpc_loc.addr, i32 %5), !dbg !65
  %19 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %agg.captured1, i32 0, i32 0, !dbg !66
  store i32* %2, i32** %19, align 8, !dbg !66, !tbaa !49
  %20 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !66
  store i8* getelementptr inbounds ([66 x i8], [66 x i8]* @4, i32 0, i32 0), i8** %20, align 8, !dbg !66, !tbaa !26
  %21 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* %.kmpc_loc.addr, i32 %5, i32 1, i64 40, i64 8, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates.1*)* @.omp_task_entry..2 to i32 (i32, i8*)*)), !dbg !66
  %22 = bitcast i8* %21 to %struct.kmp_task_t_with_privates.1*, !dbg !66
  %23 = getelementptr inbounds %struct.kmp_task_t_with_privates.1, %struct.kmp_task_t_with_privates.1* %22, i32 0, i32 0, !dbg !66
  %24 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %23, i32 0, i32 0, !dbg !66
  %25 = load i8*, i8** %24, align 8, !dbg !66, !tbaa !61
  %26 = bitcast %struct.anon.0* %agg.captured1 to i8*, !dbg !66
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %25, i8* align 8 %26, i64 8, i1 false), !dbg !66, !tbaa.struct !64
  %27 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !66
  store i8* getelementptr inbounds ([66 x i8], [66 x i8]* @4, i32 0, i32 0), i8** %27, align 8, !dbg !66, !tbaa !26
  %28 = call i32 @__kmpc_omp_task(%struct.ident_t* %.kmpc_loc.addr, i32 %5, i8* %21), !dbg !66
  call void @__kmpc_end_single(%struct.ident_t* %.kmpc_loc.addr, i32 %5), !dbg !67
  br label %omp_if.end, !dbg !67

omp_if.end:                                       ; preds = %omp_if.then, %entry
  %29 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !68
  store i8* getelementptr inbounds ([66 x i8], [66 x i8]* @1, i32 0, i32 0), i8** %29, align 8, !dbg !68, !tbaa !26
  call void @__kmpc_barrier(%struct.ident_t* %.kmpc_loc.addr, i32 %5), !dbg !68
  ret void, !dbg !69
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local void @__kmpc_end_single(%struct.ident_t*, i32)

declare dso_local i32 @__kmpc_single(%struct.ident_t*, i32)

declare dso_local void @__kmpc_end_taskgroup(%struct.ident_t*, i32)

declare dso_local void @__kmpc_taskgroup(%struct.ident_t*, i32)

; Function Attrs: alwaysinline nounwind uwtable
define internal void @.omp_outlined.(i32 %.global_tid., i32* noalias %.part_id., i8* noalias %.privates., void (i8*, ...)* noalias %.copy_fn., i8* %.task_t., %struct.anon* noalias %__context) #4 !dbg !70 {
entry:
  %.global_tid..addr = alloca i32, align 4
  %.part_id..addr = alloca i32*, align 8
  %.privates..addr = alloca i8*, align 8
  %.copy_fn..addr = alloca void (i8*, ...)*, align 8
  %.task_t..addr = alloca i8*, align 8
  %__context.addr = alloca %struct.anon*, align 8
  store i32 %.global_tid., i32* %.global_tid..addr, align 4, !tbaa !21
  call void @llvm.dbg.declare(metadata i32* %.global_tid..addr, metadata !87, metadata !DIExpression()), !dbg !93
  store i32* %.part_id., i32** %.part_id..addr, align 8, !tbaa !49
  call void @llvm.dbg.declare(metadata i32** %.part_id..addr, metadata !88, metadata !DIExpression()), !dbg !93
  store i8* %.privates., i8** %.privates..addr, align 8, !tbaa !49
  call void @llvm.dbg.declare(metadata i8** %.privates..addr, metadata !89, metadata !DIExpression()), !dbg !93
  store void (i8*, ...)* %.copy_fn., void (i8*, ...)** %.copy_fn..addr, align 8, !tbaa !49
  call void @llvm.dbg.declare(metadata void (i8*, ...)** %.copy_fn..addr, metadata !90, metadata !DIExpression()), !dbg !93
  store i8* %.task_t., i8** %.task_t..addr, align 8, !tbaa !49
  call void @llvm.dbg.declare(metadata i8** %.task_t..addr, metadata !91, metadata !DIExpression()), !dbg !93
  store %struct.anon* %__context, %struct.anon** %__context.addr, align 8, !tbaa !49
  call void @llvm.dbg.declare(metadata %struct.anon** %__context.addr, metadata !92, metadata !DIExpression()), !dbg !93
  %0 = load %struct.anon*, %struct.anon** %__context.addr, align 8, !dbg !94
  %call = call i32 @sleep(i32 3), !dbg !95
  %1 = getelementptr inbounds %struct.anon, %struct.anon* %0, i32 0, i32 0, !dbg !97
  %2 = load i32*, i32** %1, align 8, !dbg !97, !tbaa !98
  store i32 1, i32* %2, align 4, !dbg !100, !tbaa !21
  ret void, !dbg !101
}

declare !dbg !4 dso_local i32 @sleep(i32) #5

; Function Attrs: norecurse nounwind uwtable
define internal i32 @.omp_task_entry.(i32 %0, %struct.kmp_task_t_with_privates* noalias %1) #3 !dbg !102 {
entry:
  %.addr = alloca i32, align 4
  %.addr1 = alloca %struct.kmp_task_t_with_privates*, align 8
  store i32 %0, i32* %.addr, align 4, !tbaa !21
  call void @llvm.dbg.declare(metadata i32* %.addr, metadata !105, metadata !DIExpression()), !dbg !117
  store %struct.kmp_task_t_with_privates* %1, %struct.kmp_task_t_with_privates** %.addr1, align 8, !tbaa !49
  call void @llvm.dbg.declare(metadata %struct.kmp_task_t_with_privates** %.addr1, metadata !106, metadata !DIExpression()), !dbg !117
  %2 = load i32, i32* %.addr, align 4, !dbg !118, !tbaa !21
  %3 = load %struct.kmp_task_t_with_privates*, %struct.kmp_task_t_with_privates** %.addr1, align 8, !dbg !118
  %4 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %3, i32 0, i32 0, !dbg !118
  %5 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 2, !dbg !118
  %6 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 0, !dbg !118
  %7 = load i8*, i8** %6, align 8, !dbg !118, !tbaa !61
  %8 = bitcast i8* %7 to %struct.anon*, !dbg !118
  %9 = bitcast %struct.kmp_task_t_with_privates* %3 to i8*, !dbg !118
  call void @.omp_outlined.(i32 %2, i32* %5, i8* null, void (i8*, ...)* null, i8* %9, %struct.anon* %8) #7, !dbg !118
  ret i32 0, !dbg !118
}

declare dso_local i8* @__kmpc_omp_task_alloc(%struct.ident_t*, i32, i32, i64, i64, i32 (i32, i8*)*)

declare dso_local i32 @__kmpc_omp_task(%struct.ident_t*, i32, i8*)

; Function Attrs: alwaysinline nounwind uwtable
define internal void @.omp_outlined..1(i32 %.global_tid., i32* noalias %.part_id., i8* noalias %.privates., void (i8*, ...)* noalias %.copy_fn., i8* %.task_t., %struct.anon.0* noalias %__context) #4 !dbg !119 {
entry:
  %.global_tid..addr = alloca i32, align 4
  %.part_id..addr = alloca i32*, align 8
  %.privates..addr = alloca i8*, align 8
  %.copy_fn..addr = alloca void (i8*, ...)*, align 8
  %.task_t..addr = alloca i8*, align 8
  %__context.addr = alloca %struct.anon.0*, align 8
  store i32 %.global_tid., i32* %.global_tid..addr, align 4, !tbaa !21
  call void @llvm.dbg.declare(metadata i32* %.global_tid..addr, metadata !127, metadata !DIExpression()), !dbg !133
  store i32* %.part_id., i32** %.part_id..addr, align 8, !tbaa !49
  call void @llvm.dbg.declare(metadata i32** %.part_id..addr, metadata !128, metadata !DIExpression()), !dbg !133
  store i8* %.privates., i8** %.privates..addr, align 8, !tbaa !49
  call void @llvm.dbg.declare(metadata i8** %.privates..addr, metadata !129, metadata !DIExpression()), !dbg !133
  store void (i8*, ...)* %.copy_fn., void (i8*, ...)** %.copy_fn..addr, align 8, !tbaa !49
  call void @llvm.dbg.declare(metadata void (i8*, ...)** %.copy_fn..addr, metadata !130, metadata !DIExpression()), !dbg !133
  store i8* %.task_t., i8** %.task_t..addr, align 8, !tbaa !49
  call void @llvm.dbg.declare(metadata i8** %.task_t..addr, metadata !131, metadata !DIExpression()), !dbg !133
  store %struct.anon.0* %__context, %struct.anon.0** %__context.addr, align 8, !tbaa !49
  call void @llvm.dbg.declare(metadata %struct.anon.0** %__context.addr, metadata !132, metadata !DIExpression()), !dbg !133
  %0 = load %struct.anon.0*, %struct.anon.0** %__context.addr, align 8, !dbg !134
  %1 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %0, i32 0, i32 0, !dbg !135
  %2 = load i32*, i32** %1, align 8, !dbg !135, !tbaa !98
  store i32 2, i32* %2, align 4, !dbg !137, !tbaa !21
  ret void, !dbg !138
}

; Function Attrs: norecurse nounwind uwtable
define internal i32 @.omp_task_entry..2(i32 %0, %struct.kmp_task_t_with_privates.1* noalias %1) #3 !dbg !139 {
entry:
  %.addr = alloca i32, align 4
  %.addr1 = alloca %struct.kmp_task_t_with_privates.1*, align 8
  store i32 %0, i32* %.addr, align 4, !tbaa !21
  call void @llvm.dbg.declare(metadata i32* %.addr, metadata !141, metadata !DIExpression()), !dbg !148
  store %struct.kmp_task_t_with_privates.1* %1, %struct.kmp_task_t_with_privates.1** %.addr1, align 8, !tbaa !49
  call void @llvm.dbg.declare(metadata %struct.kmp_task_t_with_privates.1** %.addr1, metadata !142, metadata !DIExpression()), !dbg !148
  %2 = load i32, i32* %.addr, align 4, !dbg !149, !tbaa !21
  %3 = load %struct.kmp_task_t_with_privates.1*, %struct.kmp_task_t_with_privates.1** %.addr1, align 8, !dbg !149
  %4 = getelementptr inbounds %struct.kmp_task_t_with_privates.1, %struct.kmp_task_t_with_privates.1* %3, i32 0, i32 0, !dbg !149
  %5 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 2, !dbg !149
  %6 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 0, !dbg !149
  %7 = load i8*, i8** %6, align 8, !dbg !149, !tbaa !61
  %8 = bitcast i8* %7 to %struct.anon.0*, !dbg !149
  %9 = bitcast %struct.kmp_task_t_with_privates.1* %3 to i8*, !dbg !149
  call void @.omp_outlined..1(i32 %2, i32* %5, i8* null, void (i8*, ...)* null, i8* %9, %struct.anon.0* %8) #7, !dbg !149
  ret i32 0, !dbg !149
}

declare dso_local void @__kmpc_barrier(%struct.ident_t*, i32)

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined..3(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %result) #3 !dbg !150 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %result.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !49
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !152, metadata !DIExpression()), !dbg !155
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !49
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !153, metadata !DIExpression()), !dbg !155
  store i32* %result, i32** %result.addr, align 8, !tbaa !49
  call void @llvm.dbg.declare(metadata i32** %result.addr, metadata !154, metadata !DIExpression()), !dbg !155
  %0 = load i32*, i32** %result.addr, align 8, !dbg !156, !tbaa !49
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !156, !tbaa !49
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !156, !tbaa !49
  %3 = load i32*, i32** %result.addr, align 8, !dbg !156, !tbaa !49
  call void @.omp_outlined._debug__(i32* %1, i32* %2, i32* %3) #7, !dbg !156
  ret void, !dbg !156
}

declare !callback !157 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

declare dso_local i32 @printf(i8*, ...) #5

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) #6

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { alwaysinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!9, !10, !11}
!llvm.ident = !{!12}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "integration/dataracebench/DRB107-taskgroup-orig-no.c", directory: "/home/brad/Code/OpenRace/tests/data")
!2 = !{}
!3 = !{!4}
!4 = !DISubprogram(name: "sleep", scope: !5, file: !5, line: 453, type: !6, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!5 = !DIFile(filename: "/usr/include/unistd.h", directory: "")
!6 = !DISubroutineType(types: !7)
!7 = !{!8, !8}
!8 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!9 = !{i32 7, !"Dwarf Version", i32 4}
!10 = !{i32 2, !"Debug Info Version", i32 3}
!11 = !{i32 1, !"wchar_size", i32 4}
!12 = !{!"clang version 10.0.1 "}
!13 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 54, type: !14, scopeLine: 55, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !17)
!14 = !DISubroutineType(types: !15)
!15 = !{!16}
!16 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!17 = !{!18}
!18 = !DILocalVariable(name: "result", scope: !13, file: !1, line: 56, type: !16)
!19 = !DILocation(line: 56, column: 3, scope: !13)
!20 = !DILocation(line: 56, column: 7, scope: !13)
!21 = !{!22, !22, i64 0}
!22 = !{!"int", !23, i64 0}
!23 = !{!"omnipotent char", !24, i64 0}
!24 = !{!"Simple C/C++ TBAA"}
!25 = !DILocation(line: 57, column: 1, scope: !13)
!26 = !{!27, !28, i64 16}
!27 = !{!"ident_t", !22, i64 0, !22, i64 4, !22, i64 8, !22, i64 12, !28, i64 16}
!28 = !{!"any pointer", !23, i64 0}
!29 = !DILocation(line: 75, column: 26, scope: !13)
!30 = !DILocation(line: 75, column: 3, scope: !13)
!31 = !DILocation(line: 76, column: 3, scope: !32)
!32 = distinct !DILexicalBlock(scope: !33, file: !1, line: 76, column: 3)
!33 = distinct !DILexicalBlock(scope: !13, file: !1, line: 76, column: 3)
!34 = !DILocation(line: 76, column: 3, scope: !33)
!35 = !DILocation(line: 78, column: 1, scope: !13)
!36 = !DILocation(line: 77, column: 3, scope: !13)
!37 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 58, type: !38, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !45)
!38 = !DISubroutineType(types: !39)
!39 = !{null, !40, !40, !44}
!40 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !41)
!41 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !42)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!44 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !16, size: 64)
!45 = !{!46, !47, !48}
!46 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !37, type: !40, flags: DIFlagArtificial)
!47 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !37, type: !40, flags: DIFlagArtificial)
!48 = !DILocalVariable(name: "result", arg: 3, scope: !37, file: !1, line: 56, type: !44)
!49 = !{!28, !28, i64 0}
!50 = !DILocation(line: 0, scope: !37)
!51 = !DILocation(line: 56, column: 7, scope: !37)
!52 = !DILocation(line: 58, column: 3, scope: !37)
!53 = !DILocation(line: 59, column: 1, scope: !54)
!54 = distinct !DILexicalBlock(scope: !37, file: !1, line: 58, column: 3)
!55 = !DILocation(line: 61, column: 1, scope: !56)
!56 = distinct !DILexicalBlock(scope: !57, file: !1, line: 60, column: 5)
!57 = distinct !DILexicalBlock(scope: !54, file: !1, line: 59, column: 1)
!58 = !DILocation(line: 63, column: 1, scope: !59)
!59 = distinct !DILexicalBlock(scope: !60, file: !1, line: 62, column: 7)
!60 = distinct !DILexicalBlock(scope: !56, file: !1, line: 61, column: 1)
!61 = !{!62, !28, i64 0}
!62 = !{!"kmp_task_t_with_privates", !63, i64 0}
!63 = !{!"kmp_task_t", !28, i64 0, !28, i64 8, !22, i64 16, !23, i64 24, !23, i64 32}
!64 = !{i64 0, i64 8, !49}
!65 = !DILocation(line: 68, column: 7, scope: !59)
!66 = !DILocation(line: 69, column: 1, scope: !56)
!67 = !DILocation(line: 73, column: 5, scope: !56)
!68 = !DILocation(line: 59, column: 19, scope: !57)
!69 = !DILocation(line: 74, column: 3, scope: !37)
!70 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 66, type: !71, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !86)
!71 = !DISubroutineType(types: !72)
!72 = !{null, !43, !40, !73, !76, !81, !82}
!73 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !74)
!74 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !75)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !77)
!77 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !78)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = !DISubroutineType(types: !80)
!80 = !{null, !73, null}
!81 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !75)
!82 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !83)
!83 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !84)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 63, size: 64, elements: !2)
!86 = !{!87, !88, !89, !90, !91, !92}
!87 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !70, type: !43, flags: DIFlagArtificial)
!88 = !DILocalVariable(name: ".part_id.", arg: 2, scope: !70, type: !40, flags: DIFlagArtificial)
!89 = !DILocalVariable(name: ".privates.", arg: 3, scope: !70, type: !73, flags: DIFlagArtificial)
!90 = !DILocalVariable(name: ".copy_fn.", arg: 4, scope: !70, type: !76, flags: DIFlagArtificial)
!91 = !DILocalVariable(name: ".task_t.", arg: 5, scope: !70, type: !81, flags: DIFlagArtificial)
!92 = !DILocalVariable(name: "__context", arg: 6, scope: !70, type: !82, flags: DIFlagArtificial)
!93 = !DILocation(line: 0, scope: !70)
!94 = !DILocation(line: 64, column: 9, scope: !70)
!95 = !DILocation(line: 65, column: 11, scope: !96)
!96 = distinct !DILexicalBlock(scope: !70, file: !1, line: 64, column: 9)
!97 = !DILocation(line: 66, column: 11, scope: !96)
!98 = !{!99, !28, i64 0}
!99 = !{!"", !28, i64 0}
!100 = !DILocation(line: 66, column: 18, scope: !96)
!101 = !DILocation(line: 67, column: 9, scope: !70)
!102 = distinct !DISubprogram(linkageName: ".omp_task_entry.", scope: !1, file: !1, line: 63, type: !103, scopeLine: 63, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !104)
!103 = !DISubroutineType(types: !2)
!104 = !{!105, !106}
!105 = !DILocalVariable(arg: 1, scope: !102, type: !16, flags: DIFlagArtificial)
!106 = !DILocalVariable(arg: 2, scope: !102, type: !107, flags: DIFlagArtificial)
!107 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !108)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t_with_privates", file: !1, size: 320, elements: !110)
!110 = !{!111}
!111 = !DIDerivedType(tag: DW_TAG_member, scope: !109, file: !1, baseType: !112, size: 320)
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t", file: !1, size: 320, elements: !113)
!113 = !{!114, !116}
!114 = !DIDerivedType(tag: DW_TAG_member, scope: !112, file: !1, baseType: !115, size: 64, offset: 192)
!115 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "kmp_cmplrdata_t", file: !1, size: 64, elements: !2)
!116 = !DIDerivedType(tag: DW_TAG_member, scope: !112, file: !1, baseType: !115, size: 64, offset: 256)
!117 = !DILocation(line: 0, scope: !102)
!118 = !DILocation(line: 63, column: 1, scope: !102)
!119 = distinct !DISubprogram(name: ".omp_outlined..1", scope: !1, file: !1, line: 71, type: !120, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !126)
!120 = !DISubroutineType(types: !121)
!121 = !{null, !43, !40, !73, !76, !81, !122}
!122 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !123)
!123 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !124)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 69, size: 64, elements: !2)
!126 = !{!127, !128, !129, !130, !131, !132}
!127 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !119, type: !43, flags: DIFlagArtificial)
!128 = !DILocalVariable(name: ".part_id.", arg: 2, scope: !119, type: !40, flags: DIFlagArtificial)
!129 = !DILocalVariable(name: ".privates.", arg: 3, scope: !119, type: !73, flags: DIFlagArtificial)
!130 = !DILocalVariable(name: ".copy_fn.", arg: 4, scope: !119, type: !76, flags: DIFlagArtificial)
!131 = !DILocalVariable(name: ".task_t.", arg: 5, scope: !119, type: !81, flags: DIFlagArtificial)
!132 = !DILocalVariable(name: "__context", arg: 6, scope: !119, type: !122, flags: DIFlagArtificial)
!133 = !DILocation(line: 0, scope: !119)
!134 = !DILocation(line: 70, column: 7, scope: !119)
!135 = !DILocation(line: 71, column: 9, scope: !136)
!136 = distinct !DILexicalBlock(scope: !119, file: !1, line: 70, column: 7)
!137 = !DILocation(line: 71, column: 16, scope: !136)
!138 = !DILocation(line: 72, column: 7, scope: !119)
!139 = distinct !DISubprogram(linkageName: ".omp_task_entry..2", scope: !1, file: !1, line: 69, type: !103, scopeLine: 69, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !140)
!140 = !{!141, !142}
!141 = !DILocalVariable(arg: 1, scope: !139, type: !16, flags: DIFlagArtificial)
!142 = !DILocalVariable(arg: 2, scope: !139, type: !143, flags: DIFlagArtificial)
!143 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !144)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t_with_privates", file: !1, size: 320, elements: !146)
!146 = !{!147}
!147 = !DIDerivedType(tag: DW_TAG_member, scope: !145, file: !1, baseType: !112, size: 320)
!148 = !DILocation(line: 0, scope: !139)
!149 = !DILocation(line: 69, column: 1, scope: !139)
!150 = distinct !DISubprogram(name: ".omp_outlined..3", scope: !1, file: !1, line: 58, type: !38, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !151)
!151 = !{!152, !153, !154}
!152 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !150, type: !40, flags: DIFlagArtificial)
!153 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !150, type: !40, flags: DIFlagArtificial)
!154 = !DILocalVariable(name: "result", arg: 3, scope: !150, type: !44, flags: DIFlagArtificial)
!155 = !DILocation(line: 0, scope: !150)
!156 = !DILocation(line: 58, column: 3, scope: !150)
!157 = !{!158}
!158 = !{i64 2, i64 -1, i64 -1, i1 true}
