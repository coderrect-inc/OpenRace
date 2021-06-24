; ModuleID = 'integration/openmp/task-single-yes.c'
source_filename = "integration/openmp/task-single-yes.c"
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
@1 = private unnamed_addr constant [50 x i8] c";integration/openmp/task-single-yes.c;main;12;1;;\00", align 1
@2 = private unnamed_addr constant [50 x i8] c";integration/openmp/task-single-yes.c;main;14;1;;\00", align 1
@3 = private unnamed_addr constant [50 x i8] c";integration/openmp/task-single-yes.c;main;18;1;;\00", align 1
@4 = private unnamed_addr constant [50 x i8] c";integration/openmp/task-single-yes.c;main;20;1;;\00", align 1
@5 = private unnamed_addr constant [50 x i8] c";integration/openmp/task-single-yes.c;main;10;1;;\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"%d == 2\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main() #0 !dbg !7 {
entry:
  %counter = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  %2 = bitcast i32* %counter to i8*, !dbg !13
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #6, !dbg !13
  call void @llvm.dbg.declare(metadata i32* %counter, metadata !12, metadata !DIExpression()), !dbg !14
  store i32 0, i32* %counter, align 4, !dbg !14, !tbaa !15
  %3 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !19
  store i8* getelementptr inbounds ([50 x i8], [50 x i8]* @5, i32 0, i32 0), i8** %3, align 8, !dbg !19, !tbaa !20
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*)* @.omp_outlined..3 to void (i32*, i32*, ...)*), i32* %counter), !dbg !19
  %4 = load i32, i32* %counter, align 4, !dbg !23, !tbaa !15
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %4), !dbg !24
  %5 = bitcast i32* %counter to i8*, !dbg !25
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %5) #6, !dbg !25
  ret i32 0, !dbg !25
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %counter) #3 !dbg !26 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %counter.addr = alloca i32*, align 8
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %agg.captured = alloca %struct.anon, align 8
  %agg.captured2 = alloca %struct.anon.0, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !35, metadata !DIExpression()), !dbg !39
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !36, metadata !DIExpression()), !dbg !39
  store i32* %counter, i32** %counter.addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata i32** %counter.addr, metadata !37, metadata !DIExpression()), !dbg !40
  %2 = load i32*, i32** %counter.addr, align 8, !dbg !41, !tbaa !38
  %3 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !42
  store i8* getelementptr inbounds ([50 x i8], [50 x i8]* @1, i32 0, i32 0), i8** %3, align 8, !dbg !42, !tbaa !20
  %4 = load i32*, i32** %.global_tid..addr, align 8, !dbg !42
  %5 = load i32, i32* %4, align 4, !dbg !42, !tbaa !15
  %6 = call i32 @__kmpc_single(%struct.ident_t* %.kmpc_loc.addr, i32 %5), !dbg !42
  %7 = icmp ne i32 %6, 0, !dbg !42
  br i1 %7, label %omp_if.then, label %omp_if.end, !dbg !42

omp_if.then:                                      ; preds = %entry
  %8 = getelementptr inbounds %struct.anon, %struct.anon* %agg.captured, i32 0, i32 0, !dbg !44
  store i32* %2, i32** %8, align 8, !dbg !44, !tbaa !38
  %9 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !44
  store i8* getelementptr inbounds ([50 x i8], [50 x i8]* @2, i32 0, i32 0), i8** %9, align 8, !dbg !44, !tbaa !20
  %10 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* %.kmpc_loc.addr, i32 %5, i32 1, i64 40, i64 8, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates*)* @.omp_task_entry. to i32 (i32, i8*)*)), !dbg !44
  %11 = bitcast i8* %10 to %struct.kmp_task_t_with_privates*, !dbg !44
  %12 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %11, i32 0, i32 0, !dbg !44
  %13 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %12, i32 0, i32 0, !dbg !44
  %14 = load i8*, i8** %13, align 8, !dbg !44, !tbaa !47
  %15 = bitcast %struct.anon* %agg.captured to i8*, !dbg !44
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* align 8 %15, i64 8, i1 false), !dbg !44, !tbaa.struct !50
  %16 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !44
  store i8* getelementptr inbounds ([50 x i8], [50 x i8]* @2, i32 0, i32 0), i8** %16, align 8, !dbg !44, !tbaa !20
  %17 = call i32 @__kmpc_omp_task(%struct.ident_t* %.kmpc_loc.addr, i32 %5, i8* %10), !dbg !44
  call void @__kmpc_end_single(%struct.ident_t* %.kmpc_loc.addr, i32 %5), !dbg !51
  br label %omp_if.end, !dbg !51

omp_if.end:                                       ; preds = %omp_if.then, %entry
  %18 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !52
  store i8* getelementptr inbounds ([50 x i8], [50 x i8]* @3, i32 0, i32 0), i8** %18, align 8, !dbg !52, !tbaa !20
  %19 = call i32 @__kmpc_single(%struct.ident_t* %.kmpc_loc.addr, i32 %5), !dbg !52
  %20 = icmp ne i32 %19, 0, !dbg !52
  br i1 %20, label %omp_if.then1, label %omp_if.end3, !dbg !52

omp_if.then1:                                     ; preds = %omp_if.end
  %21 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %agg.captured2, i32 0, i32 0, !dbg !53
  store i32* %2, i32** %21, align 8, !dbg !53, !tbaa !38
  %22 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !53
  store i8* getelementptr inbounds ([50 x i8], [50 x i8]* @4, i32 0, i32 0), i8** %22, align 8, !dbg !53, !tbaa !20
  %23 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* %.kmpc_loc.addr, i32 %5, i32 1, i64 40, i64 8, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates.1*)* @.omp_task_entry..2 to i32 (i32, i8*)*)), !dbg !53
  %24 = bitcast i8* %23 to %struct.kmp_task_t_with_privates.1*, !dbg !53
  %25 = getelementptr inbounds %struct.kmp_task_t_with_privates.1, %struct.kmp_task_t_with_privates.1* %24, i32 0, i32 0, !dbg !53
  %26 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %25, i32 0, i32 0, !dbg !53
  %27 = load i8*, i8** %26, align 8, !dbg !53, !tbaa !47
  %28 = bitcast %struct.anon.0* %agg.captured2 to i8*, !dbg !53
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %27, i8* align 8 %28, i64 8, i1 false), !dbg !53, !tbaa.struct !50
  %29 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !53
  store i8* getelementptr inbounds ([50 x i8], [50 x i8]* @4, i32 0, i32 0), i8** %29, align 8, !dbg !53, !tbaa !20
  %30 = call i32 @__kmpc_omp_task(%struct.ident_t* %.kmpc_loc.addr, i32 %5, i8* %23), !dbg !53
  call void @__kmpc_end_single(%struct.ident_t* %.kmpc_loc.addr, i32 %5), !dbg !56
  br label %omp_if.end3, !dbg !56

omp_if.end3:                                      ; preds = %omp_if.then1, %omp_if.end
  %31 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !57
  store i8* getelementptr inbounds ([50 x i8], [50 x i8]* @3, i32 0, i32 0), i8** %31, align 8, !dbg !57, !tbaa !20
  call void @__kmpc_barrier(%struct.ident_t* %.kmpc_loc.addr, i32 %5), !dbg !57
  ret void, !dbg !58
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local void @__kmpc_end_single(%struct.ident_t*, i32)

declare dso_local i32 @__kmpc_single(%struct.ident_t*, i32)

; Function Attrs: alwaysinline nounwind uwtable
define internal void @.omp_outlined.(i32 %.global_tid., i32* noalias %.part_id., i8* noalias %.privates., void (i8*, ...)* noalias %.copy_fn., i8* %.task_t., %struct.anon* noalias %__context) #4 !dbg !59 {
entry:
  %.global_tid..addr = alloca i32, align 4
  %.part_id..addr = alloca i32*, align 8
  %.privates..addr = alloca i8*, align 8
  %.copy_fn..addr = alloca void (i8*, ...)*, align 8
  %.task_t..addr = alloca i8*, align 8
  %__context.addr = alloca %struct.anon*, align 8
  store i32 %.global_tid., i32* %.global_tid..addr, align 4, !tbaa !15
  call void @llvm.dbg.declare(metadata i32* %.global_tid..addr, metadata !76, metadata !DIExpression()), !dbg !82
  store i32* %.part_id., i32** %.part_id..addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata i32** %.part_id..addr, metadata !77, metadata !DIExpression()), !dbg !82
  store i8* %.privates., i8** %.privates..addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata i8** %.privates..addr, metadata !78, metadata !DIExpression()), !dbg !82
  store void (i8*, ...)* %.copy_fn., void (i8*, ...)** %.copy_fn..addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata void (i8*, ...)** %.copy_fn..addr, metadata !79, metadata !DIExpression()), !dbg !82
  store i8* %.task_t., i8** %.task_t..addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata i8** %.task_t..addr, metadata !80, metadata !DIExpression()), !dbg !82
  store %struct.anon* %__context, %struct.anon** %__context.addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata %struct.anon** %__context.addr, metadata !81, metadata !DIExpression()), !dbg !82
  %0 = load %struct.anon*, %struct.anon** %__context.addr, align 8, !dbg !83
  %1 = getelementptr inbounds %struct.anon, %struct.anon* %0, i32 0, i32 0, !dbg !84
  %2 = load i32*, i32** %1, align 8, !dbg !84, !tbaa !86
  store i32 1, i32* %2, align 4, !dbg !88, !tbaa !15
  ret void, !dbg !89
}

; Function Attrs: norecurse nounwind uwtable
define internal i32 @.omp_task_entry.(i32 %0, %struct.kmp_task_t_with_privates* noalias %1) #3 !dbg !90 {
entry:
  %.addr = alloca i32, align 4
  %.addr1 = alloca %struct.kmp_task_t_with_privates*, align 8
  store i32 %0, i32* %.addr, align 4, !tbaa !15
  call void @llvm.dbg.declare(metadata i32* %.addr, metadata !93, metadata !DIExpression()), !dbg !105
  store %struct.kmp_task_t_with_privates* %1, %struct.kmp_task_t_with_privates** %.addr1, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata %struct.kmp_task_t_with_privates** %.addr1, metadata !94, metadata !DIExpression()), !dbg !105
  %2 = load i32, i32* %.addr, align 4, !dbg !106, !tbaa !15
  %3 = load %struct.kmp_task_t_with_privates*, %struct.kmp_task_t_with_privates** %.addr1, align 8, !dbg !106
  %4 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %3, i32 0, i32 0, !dbg !106
  %5 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 2, !dbg !106
  %6 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 0, !dbg !106
  %7 = load i8*, i8** %6, align 8, !dbg !106, !tbaa !47
  %8 = bitcast i8* %7 to %struct.anon*, !dbg !106
  %9 = bitcast %struct.kmp_task_t_with_privates* %3 to i8*, !dbg !106
  call void @.omp_outlined.(i32 %2, i32* %5, i8* null, void (i8*, ...)* null, i8* %9, %struct.anon* %8) #6, !dbg !106
  ret i32 0, !dbg !106
}

declare dso_local i8* @__kmpc_omp_task_alloc(%struct.ident_t*, i32, i32, i64, i64, i32 (i32, i8*)*)

declare dso_local i32 @__kmpc_omp_task(%struct.ident_t*, i32, i8*)

; Function Attrs: alwaysinline nounwind uwtable
define internal void @.omp_outlined..1(i32 %.global_tid., i32* noalias %.part_id., i8* noalias %.privates., void (i8*, ...)* noalias %.copy_fn., i8* %.task_t., %struct.anon.0* noalias %__context) #4 !dbg !107 {
entry:
  %.global_tid..addr = alloca i32, align 4
  %.part_id..addr = alloca i32*, align 8
  %.privates..addr = alloca i8*, align 8
  %.copy_fn..addr = alloca void (i8*, ...)*, align 8
  %.task_t..addr = alloca i8*, align 8
  %__context.addr = alloca %struct.anon.0*, align 8
  store i32 %.global_tid., i32* %.global_tid..addr, align 4, !tbaa !15
  call void @llvm.dbg.declare(metadata i32* %.global_tid..addr, metadata !115, metadata !DIExpression()), !dbg !121
  store i32* %.part_id., i32** %.part_id..addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata i32** %.part_id..addr, metadata !116, metadata !DIExpression()), !dbg !121
  store i8* %.privates., i8** %.privates..addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata i8** %.privates..addr, metadata !117, metadata !DIExpression()), !dbg !121
  store void (i8*, ...)* %.copy_fn., void (i8*, ...)** %.copy_fn..addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata void (i8*, ...)** %.copy_fn..addr, metadata !118, metadata !DIExpression()), !dbg !121
  store i8* %.task_t., i8** %.task_t..addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata i8** %.task_t..addr, metadata !119, metadata !DIExpression()), !dbg !121
  store %struct.anon.0* %__context, %struct.anon.0** %__context.addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata %struct.anon.0** %__context.addr, metadata !120, metadata !DIExpression()), !dbg !121
  %0 = load %struct.anon.0*, %struct.anon.0** %__context.addr, align 8, !dbg !122
  %1 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %0, i32 0, i32 0, !dbg !123
  %2 = load i32*, i32** %1, align 8, !dbg !123, !tbaa !86
  store i32 2, i32* %2, align 4, !dbg !125, !tbaa !15
  ret void, !dbg !126
}

; Function Attrs: norecurse nounwind uwtable
define internal i32 @.omp_task_entry..2(i32 %0, %struct.kmp_task_t_with_privates.1* noalias %1) #3 !dbg !127 {
entry:
  %.addr = alloca i32, align 4
  %.addr1 = alloca %struct.kmp_task_t_with_privates.1*, align 8
  store i32 %0, i32* %.addr, align 4, !tbaa !15
  call void @llvm.dbg.declare(metadata i32* %.addr, metadata !129, metadata !DIExpression()), !dbg !136
  store %struct.kmp_task_t_with_privates.1* %1, %struct.kmp_task_t_with_privates.1** %.addr1, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata %struct.kmp_task_t_with_privates.1** %.addr1, metadata !130, metadata !DIExpression()), !dbg !136
  %2 = load i32, i32* %.addr, align 4, !dbg !137, !tbaa !15
  %3 = load %struct.kmp_task_t_with_privates.1*, %struct.kmp_task_t_with_privates.1** %.addr1, align 8, !dbg !137
  %4 = getelementptr inbounds %struct.kmp_task_t_with_privates.1, %struct.kmp_task_t_with_privates.1* %3, i32 0, i32 0, !dbg !137
  %5 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 2, !dbg !137
  %6 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 0, !dbg !137
  %7 = load i8*, i8** %6, align 8, !dbg !137, !tbaa !47
  %8 = bitcast i8* %7 to %struct.anon.0*, !dbg !137
  %9 = bitcast %struct.kmp_task_t_with_privates.1* %3 to i8*, !dbg !137
  call void @.omp_outlined..1(i32 %2, i32* %5, i8* null, void (i8*, ...)* null, i8* %9, %struct.anon.0* %8) #6, !dbg !137
  ret i32 0, !dbg !137
}

declare dso_local void @__kmpc_barrier(%struct.ident_t*, i32)

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined..3(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %counter) #3 !dbg !138 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %counter.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !140, metadata !DIExpression()), !dbg !143
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !141, metadata !DIExpression()), !dbg !143
  store i32* %counter, i32** %counter.addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata i32** %counter.addr, metadata !142, metadata !DIExpression()), !dbg !143
  %0 = load i32*, i32** %counter.addr, align 8, !dbg !144, !tbaa !38
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !144, !tbaa !38
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !144, !tbaa !38
  %3 = load i32*, i32** %counter.addr, align 8, !dbg !144, !tbaa !38
  call void @.omp_outlined._debug__(i32* %1, i32* %2, i32* %3) #6, !dbg !144
  ret void, !dbg !144
}

declare !callback !145 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

declare dso_local i32 @printf(i8*, ...) #5

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { alwaysinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "integration/openmp/task-single-yes.c", directory: "/home/brad/Code/OpenRace/tests/data")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.1 "}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 8, type: !8, scopeLine: 8, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !11)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !{!12}
!12 = !DILocalVariable(name: "counter", scope: !7, file: !1, line: 9, type: !10)
!13 = !DILocation(line: 9, column: 3, scope: !7)
!14 = !DILocation(line: 9, column: 7, scope: !7)
!15 = !{!16, !16, i64 0}
!16 = !{!"int", !17, i64 0}
!17 = !{!"omnipotent char", !18, i64 0}
!18 = !{!"Simple C/C++ TBAA"}
!19 = !DILocation(line: 10, column: 1, scope: !7)
!20 = !{!21, !22, i64 16}
!21 = !{!"ident_t", !16, i64 0, !16, i64 4, !16, i64 8, !16, i64 12, !22, i64 16}
!22 = !{!"any pointer", !17, i64 0}
!23 = !DILocation(line: 25, column: 23, scope: !7)
!24 = !DILocation(line: 25, column: 3, scope: !7)
!25 = !DILocation(line: 26, column: 1, scope: !7)
!26 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 11, type: !27, scopeLine: 11, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !34)
!27 = !DISubroutineType(types: !28)
!28 = !{null, !29, !29, !33}
!29 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!30 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !31)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!33 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !10, size: 64)
!34 = !{!35, !36, !37}
!35 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !26, type: !29, flags: DIFlagArtificial)
!36 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !26, type: !29, flags: DIFlagArtificial)
!37 = !DILocalVariable(name: "counter", arg: 3, scope: !26, file: !1, line: 9, type: !33)
!38 = !{!22, !22, i64 0}
!39 = !DILocation(line: 0, scope: !26)
!40 = !DILocation(line: 9, column: 7, scope: !26)
!41 = !DILocation(line: 11, column: 3, scope: !26)
!42 = !DILocation(line: 12, column: 1, scope: !43)
!43 = distinct !DILexicalBlock(scope: !26, file: !1, line: 11, column: 3)
!44 = !DILocation(line: 14, column: 1, scope: !45)
!45 = distinct !DILexicalBlock(scope: !46, file: !1, line: 13, column: 5)
!46 = distinct !DILexicalBlock(scope: !43, file: !1, line: 12, column: 1)
!47 = !{!48, !22, i64 0}
!48 = !{!"kmp_task_t_with_privates", !49, i64 0}
!49 = !{!"kmp_task_t", !22, i64 0, !22, i64 8, !16, i64 16, !17, i64 24, !17, i64 32}
!50 = !{i64 0, i64 8, !38}
!51 = !DILocation(line: 16, column: 5, scope: !45)
!52 = !DILocation(line: 18, column: 1, scope: !43)
!53 = !DILocation(line: 20, column: 1, scope: !54)
!54 = distinct !DILexicalBlock(scope: !55, file: !1, line: 19, column: 5)
!55 = distinct !DILexicalBlock(scope: !43, file: !1, line: 18, column: 1)
!56 = !DILocation(line: 22, column: 5, scope: !54)
!57 = !DILocation(line: 18, column: 19, scope: !55)
!58 = !DILocation(line: 23, column: 3, scope: !26)
!59 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 15, type: !60, scopeLine: 15, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !75)
!60 = !DISubroutineType(types: !61)
!61 = !{null, !32, !29, !62, !65, !70, !71}
!62 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !63)
!63 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !64)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !66)
!66 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !67)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DISubroutineType(types: !69)
!69 = !{null, !62, null}
!70 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !64)
!71 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !72)
!72 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !73)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!74 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 14, size: 64, elements: !2)
!75 = !{!76, !77, !78, !79, !80, !81}
!76 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !59, type: !32, flags: DIFlagArtificial)
!77 = !DILocalVariable(name: ".part_id.", arg: 2, scope: !59, type: !29, flags: DIFlagArtificial)
!78 = !DILocalVariable(name: ".privates.", arg: 3, scope: !59, type: !62, flags: DIFlagArtificial)
!79 = !DILocalVariable(name: ".copy_fn.", arg: 4, scope: !59, type: !65, flags: DIFlagArtificial)
!80 = !DILocalVariable(name: ".task_t.", arg: 5, scope: !59, type: !70, flags: DIFlagArtificial)
!81 = !DILocalVariable(name: "__context", arg: 6, scope: !59, type: !71, flags: DIFlagArtificial)
!82 = !DILocation(line: 0, scope: !59)
!83 = !DILocation(line: 15, column: 7, scope: !59)
!84 = !DILocation(line: 15, column: 9, scope: !85)
!85 = distinct !DILexicalBlock(scope: !59, file: !1, line: 15, column: 7)
!86 = !{!87, !22, i64 0}
!87 = !{!"", !22, i64 0}
!88 = !DILocation(line: 15, column: 17, scope: !85)
!89 = !DILocation(line: 15, column: 22, scope: !59)
!90 = distinct !DISubprogram(linkageName: ".omp_task_entry.", scope: !1, file: !1, line: 14, type: !91, scopeLine: 14, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !92)
!91 = !DISubroutineType(types: !2)
!92 = !{!93, !94}
!93 = !DILocalVariable(arg: 1, scope: !90, type: !10, flags: DIFlagArtificial)
!94 = !DILocalVariable(arg: 2, scope: !90, type: !95, flags: DIFlagArtificial)
!95 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !96)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!97 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t_with_privates", file: !1, size: 320, elements: !98)
!98 = !{!99}
!99 = !DIDerivedType(tag: DW_TAG_member, scope: !97, file: !1, baseType: !100, size: 320)
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t", file: !1, size: 320, elements: !101)
!101 = !{!102, !104}
!102 = !DIDerivedType(tag: DW_TAG_member, scope: !100, file: !1, baseType: !103, size: 64, offset: 192)
!103 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "kmp_cmplrdata_t", file: !1, size: 64, elements: !2)
!104 = !DIDerivedType(tag: DW_TAG_member, scope: !100, file: !1, baseType: !103, size: 64, offset: 256)
!105 = !DILocation(line: 0, scope: !90)
!106 = !DILocation(line: 14, column: 1, scope: !90)
!107 = distinct !DISubprogram(name: ".omp_outlined..1", scope: !1, file: !1, line: 21, type: !108, scopeLine: 21, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !114)
!108 = !DISubroutineType(types: !109)
!109 = !{null, !32, !29, !62, !65, !70, !110}
!110 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !111)
!111 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !112)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!113 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 20, size: 64, elements: !2)
!114 = !{!115, !116, !117, !118, !119, !120}
!115 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !107, type: !32, flags: DIFlagArtificial)
!116 = !DILocalVariable(name: ".part_id.", arg: 2, scope: !107, type: !29, flags: DIFlagArtificial)
!117 = !DILocalVariable(name: ".privates.", arg: 3, scope: !107, type: !62, flags: DIFlagArtificial)
!118 = !DILocalVariable(name: ".copy_fn.", arg: 4, scope: !107, type: !65, flags: DIFlagArtificial)
!119 = !DILocalVariable(name: ".task_t.", arg: 5, scope: !107, type: !70, flags: DIFlagArtificial)
!120 = !DILocalVariable(name: "__context", arg: 6, scope: !107, type: !110, flags: DIFlagArtificial)
!121 = !DILocation(line: 0, scope: !107)
!122 = !DILocation(line: 21, column: 7, scope: !107)
!123 = !DILocation(line: 21, column: 9, scope: !124)
!124 = distinct !DILexicalBlock(scope: !107, file: !1, line: 21, column: 7)
!125 = !DILocation(line: 21, column: 17, scope: !124)
!126 = !DILocation(line: 21, column: 22, scope: !107)
!127 = distinct !DISubprogram(linkageName: ".omp_task_entry..2", scope: !1, file: !1, line: 20, type: !91, scopeLine: 20, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !128)
!128 = !{!129, !130}
!129 = !DILocalVariable(arg: 1, scope: !127, type: !10, flags: DIFlagArtificial)
!130 = !DILocalVariable(arg: 2, scope: !127, type: !131, flags: DIFlagArtificial)
!131 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !132)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t_with_privates", file: !1, size: 320, elements: !134)
!134 = !{!135}
!135 = !DIDerivedType(tag: DW_TAG_member, scope: !133, file: !1, baseType: !100, size: 320)
!136 = !DILocation(line: 0, scope: !127)
!137 = !DILocation(line: 20, column: 1, scope: !127)
!138 = distinct !DISubprogram(name: ".omp_outlined..3", scope: !1, file: !1, line: 11, type: !27, scopeLine: 11, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !139)
!139 = !{!140, !141, !142}
!140 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !138, type: !29, flags: DIFlagArtificial)
!141 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !138, type: !29, flags: DIFlagArtificial)
!142 = !DILocalVariable(name: "counter", arg: 3, scope: !138, type: !33, flags: DIFlagArtificial)
!143 = !DILocation(line: 0, scope: !138)
!144 = !DILocation(line: 11, column: 3, scope: !138)
!145 = !{!146}
!146 = !{i64 2, i64 -1, i64 -1, i1 true}
