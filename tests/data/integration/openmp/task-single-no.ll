; ModuleID = 'integration/openmp/task-single-no.c'
source_filename = "integration/openmp/task-single-no.c"
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
@1 = private unnamed_addr constant [48 x i8] c";integration/openmp/task-single-no.c;main;7;1;;\00", align 1
@2 = private unnamed_addr constant [48 x i8] c";integration/openmp/task-single-no.c;main;9;1;;\00", align 1
@3 = private unnamed_addr constant [49 x i8] c";integration/openmp/task-single-no.c;main;14;1;;\00", align 1
@4 = private unnamed_addr constant [49 x i8] c";integration/openmp/task-single-no.c;main;16;1;;\00", align 1
@5 = private unnamed_addr constant [48 x i8] c";integration/openmp/task-single-no.c;main;5;1;;\00", align 1
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
  store i8* getelementptr inbounds ([48 x i8], [48 x i8]* @5, i32 0, i32 0), i8** %3, align 8, !dbg !19, !tbaa !20
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
  store i8* getelementptr inbounds ([48 x i8], [48 x i8]* @1, i32 0, i32 0), i8** %3, align 8, !dbg !42, !tbaa !20
  %4 = load i32*, i32** %.global_tid..addr, align 8, !dbg !42
  %5 = load i32, i32* %4, align 4, !dbg !42, !tbaa !15
  %6 = call i32 @__kmpc_single(%struct.ident_t* %.kmpc_loc.addr, i32 %5), !dbg !42
  %7 = icmp ne i32 %6, 0, !dbg !42
  br i1 %7, label %omp_if.then, label %omp_if.end, !dbg !42

omp_if.then:                                      ; preds = %entry
  %8 = getelementptr inbounds %struct.anon, %struct.anon* %agg.captured, i32 0, i32 0, !dbg !44
  store i32* %2, i32** %8, align 8, !dbg !44, !tbaa !38
  %9 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !44
  store i8* getelementptr inbounds ([48 x i8], [48 x i8]* @2, i32 0, i32 0), i8** %9, align 8, !dbg !44, !tbaa !20
  %10 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* %.kmpc_loc.addr, i32 %5, i32 1, i64 40, i64 8, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates*)* @.omp_task_entry. to i32 (i32, i8*)*)), !dbg !44
  %11 = bitcast i8* %10 to %struct.kmp_task_t_with_privates*, !dbg !44
  %12 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %11, i32 0, i32 0, !dbg !44
  %13 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %12, i32 0, i32 0, !dbg !44
  %14 = load i8*, i8** %13, align 8, !dbg !44, !tbaa !47
  %15 = bitcast %struct.anon* %agg.captured to i8*, !dbg !44
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* align 8 %15, i64 8, i1 false), !dbg !44, !tbaa.struct !50
  %16 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !44
  store i8* getelementptr inbounds ([48 x i8], [48 x i8]* @2, i32 0, i32 0), i8** %16, align 8, !dbg !44, !tbaa !20
  %17 = call i32 @__kmpc_omp_task(%struct.ident_t* %.kmpc_loc.addr, i32 %5, i8* %10), !dbg !44
  call void @__kmpc_end_single(%struct.ident_t* %.kmpc_loc.addr, i32 %5), !dbg !51
  br label %omp_if.end, !dbg !51

omp_if.end:                                       ; preds = %omp_if.then, %entry
  %18 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !52
  store i8* getelementptr inbounds ([48 x i8], [48 x i8]* @1, i32 0, i32 0), i8** %18, align 8, !dbg !52, !tbaa !20
  call void @__kmpc_barrier(%struct.ident_t* %.kmpc_loc.addr, i32 %5), !dbg !52
  %19 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !53
  store i8* getelementptr inbounds ([49 x i8], [49 x i8]* @3, i32 0, i32 0), i8** %19, align 8, !dbg !53, !tbaa !20
  %20 = call i32 @__kmpc_single(%struct.ident_t* %.kmpc_loc.addr, i32 %5), !dbg !53
  %21 = icmp ne i32 %20, 0, !dbg !53
  br i1 %21, label %omp_if.then1, label %omp_if.end3, !dbg !53

omp_if.then1:                                     ; preds = %omp_if.end
  %22 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %agg.captured2, i32 0, i32 0, !dbg !54
  store i32* %2, i32** %22, align 8, !dbg !54, !tbaa !38
  %23 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !54
  store i8* getelementptr inbounds ([49 x i8], [49 x i8]* @4, i32 0, i32 0), i8** %23, align 8, !dbg !54, !tbaa !20
  %24 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* %.kmpc_loc.addr, i32 %5, i32 1, i64 40, i64 8, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates.1*)* @.omp_task_entry..2 to i32 (i32, i8*)*)), !dbg !54
  %25 = bitcast i8* %24 to %struct.kmp_task_t_with_privates.1*, !dbg !54
  %26 = getelementptr inbounds %struct.kmp_task_t_with_privates.1, %struct.kmp_task_t_with_privates.1* %25, i32 0, i32 0, !dbg !54
  %27 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %26, i32 0, i32 0, !dbg !54
  %28 = load i8*, i8** %27, align 8, !dbg !54, !tbaa !47
  %29 = bitcast %struct.anon.0* %agg.captured2 to i8*, !dbg !54
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %28, i8* align 8 %29, i64 8, i1 false), !dbg !54, !tbaa.struct !50
  %30 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !54
  store i8* getelementptr inbounds ([49 x i8], [49 x i8]* @4, i32 0, i32 0), i8** %30, align 8, !dbg !54, !tbaa !20
  %31 = call i32 @__kmpc_omp_task(%struct.ident_t* %.kmpc_loc.addr, i32 %5, i8* %24), !dbg !54
  call void @__kmpc_end_single(%struct.ident_t* %.kmpc_loc.addr, i32 %5), !dbg !57
  br label %omp_if.end3, !dbg !57

omp_if.end3:                                      ; preds = %omp_if.then1, %omp_if.end
  %32 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !58
  store i8* getelementptr inbounds ([49 x i8], [49 x i8]* @3, i32 0, i32 0), i8** %32, align 8, !dbg !58, !tbaa !20
  call void @__kmpc_barrier(%struct.ident_t* %.kmpc_loc.addr, i32 %5), !dbg !58
  ret void, !dbg !59
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local void @__kmpc_end_single(%struct.ident_t*, i32)

declare dso_local i32 @__kmpc_single(%struct.ident_t*, i32)

; Function Attrs: alwaysinline nounwind uwtable
define internal void @.omp_outlined.(i32 %.global_tid., i32* noalias %.part_id., i8* noalias %.privates., void (i8*, ...)* noalias %.copy_fn., i8* %.task_t., %struct.anon* noalias %__context) #4 !dbg !60 {
entry:
  %.global_tid..addr = alloca i32, align 4
  %.part_id..addr = alloca i32*, align 8
  %.privates..addr = alloca i8*, align 8
  %.copy_fn..addr = alloca void (i8*, ...)*, align 8
  %.task_t..addr = alloca i8*, align 8
  %__context.addr = alloca %struct.anon*, align 8
  store i32 %.global_tid., i32* %.global_tid..addr, align 4, !tbaa !15
  call void @llvm.dbg.declare(metadata i32* %.global_tid..addr, metadata !77, metadata !DIExpression()), !dbg !83
  store i32* %.part_id., i32** %.part_id..addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata i32** %.part_id..addr, metadata !78, metadata !DIExpression()), !dbg !83
  store i8* %.privates., i8** %.privates..addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata i8** %.privates..addr, metadata !79, metadata !DIExpression()), !dbg !83
  store void (i8*, ...)* %.copy_fn., void (i8*, ...)** %.copy_fn..addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata void (i8*, ...)** %.copy_fn..addr, metadata !80, metadata !DIExpression()), !dbg !83
  store i8* %.task_t., i8** %.task_t..addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata i8** %.task_t..addr, metadata !81, metadata !DIExpression()), !dbg !83
  store %struct.anon* %__context, %struct.anon** %__context.addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata %struct.anon** %__context.addr, metadata !82, metadata !DIExpression()), !dbg !83
  %0 = load %struct.anon*, %struct.anon** %__context.addr, align 8, !dbg !84
  %1 = getelementptr inbounds %struct.anon, %struct.anon* %0, i32 0, i32 0, !dbg !85
  %2 = load i32*, i32** %1, align 8, !dbg !85, !tbaa !87
  store i32 1, i32* %2, align 4, !dbg !89, !tbaa !15
  ret void, !dbg !90
}

; Function Attrs: norecurse nounwind uwtable
define internal i32 @.omp_task_entry.(i32 %0, %struct.kmp_task_t_with_privates* noalias %1) #3 !dbg !91 {
entry:
  %.addr = alloca i32, align 4
  %.addr1 = alloca %struct.kmp_task_t_with_privates*, align 8
  store i32 %0, i32* %.addr, align 4, !tbaa !15
  call void @llvm.dbg.declare(metadata i32* %.addr, metadata !94, metadata !DIExpression()), !dbg !106
  store %struct.kmp_task_t_with_privates* %1, %struct.kmp_task_t_with_privates** %.addr1, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata %struct.kmp_task_t_with_privates** %.addr1, metadata !95, metadata !DIExpression()), !dbg !106
  %2 = load i32, i32* %.addr, align 4, !dbg !107, !tbaa !15
  %3 = load %struct.kmp_task_t_with_privates*, %struct.kmp_task_t_with_privates** %.addr1, align 8, !dbg !107
  %4 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %3, i32 0, i32 0, !dbg !107
  %5 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 2, !dbg !107
  %6 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 0, !dbg !107
  %7 = load i8*, i8** %6, align 8, !dbg !107, !tbaa !47
  %8 = bitcast i8* %7 to %struct.anon*, !dbg !107
  %9 = bitcast %struct.kmp_task_t_with_privates* %3 to i8*, !dbg !107
  call void @.omp_outlined.(i32 %2, i32* %5, i8* null, void (i8*, ...)* null, i8* %9, %struct.anon* %8) #6, !dbg !107
  ret i32 0, !dbg !107
}

declare dso_local i8* @__kmpc_omp_task_alloc(%struct.ident_t*, i32, i32, i64, i64, i32 (i32, i8*)*)

declare dso_local i32 @__kmpc_omp_task(%struct.ident_t*, i32, i8*)

declare dso_local void @__kmpc_barrier(%struct.ident_t*, i32)

; Function Attrs: alwaysinline nounwind uwtable
define internal void @.omp_outlined..1(i32 %.global_tid., i32* noalias %.part_id., i8* noalias %.privates., void (i8*, ...)* noalias %.copy_fn., i8* %.task_t., %struct.anon.0* noalias %__context) #4 !dbg !108 {
entry:
  %.global_tid..addr = alloca i32, align 4
  %.part_id..addr = alloca i32*, align 8
  %.privates..addr = alloca i8*, align 8
  %.copy_fn..addr = alloca void (i8*, ...)*, align 8
  %.task_t..addr = alloca i8*, align 8
  %__context.addr = alloca %struct.anon.0*, align 8
  store i32 %.global_tid., i32* %.global_tid..addr, align 4, !tbaa !15
  call void @llvm.dbg.declare(metadata i32* %.global_tid..addr, metadata !116, metadata !DIExpression()), !dbg !122
  store i32* %.part_id., i32** %.part_id..addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata i32** %.part_id..addr, metadata !117, metadata !DIExpression()), !dbg !122
  store i8* %.privates., i8** %.privates..addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata i8** %.privates..addr, metadata !118, metadata !DIExpression()), !dbg !122
  store void (i8*, ...)* %.copy_fn., void (i8*, ...)** %.copy_fn..addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata void (i8*, ...)** %.copy_fn..addr, metadata !119, metadata !DIExpression()), !dbg !122
  store i8* %.task_t., i8** %.task_t..addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata i8** %.task_t..addr, metadata !120, metadata !DIExpression()), !dbg !122
  store %struct.anon.0* %__context, %struct.anon.0** %__context.addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata %struct.anon.0** %__context.addr, metadata !121, metadata !DIExpression()), !dbg !122
  %0 = load %struct.anon.0*, %struct.anon.0** %__context.addr, align 8, !dbg !123
  %1 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %0, i32 0, i32 0, !dbg !124
  %2 = load i32*, i32** %1, align 8, !dbg !124, !tbaa !87
  store i32 2, i32* %2, align 4, !dbg !126, !tbaa !15
  ret void, !dbg !127
}

; Function Attrs: norecurse nounwind uwtable
define internal i32 @.omp_task_entry..2(i32 %0, %struct.kmp_task_t_with_privates.1* noalias %1) #3 !dbg !128 {
entry:
  %.addr = alloca i32, align 4
  %.addr1 = alloca %struct.kmp_task_t_with_privates.1*, align 8
  store i32 %0, i32* %.addr, align 4, !tbaa !15
  call void @llvm.dbg.declare(metadata i32* %.addr, metadata !130, metadata !DIExpression()), !dbg !137
  store %struct.kmp_task_t_with_privates.1* %1, %struct.kmp_task_t_with_privates.1** %.addr1, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata %struct.kmp_task_t_with_privates.1** %.addr1, metadata !131, metadata !DIExpression()), !dbg !137
  %2 = load i32, i32* %.addr, align 4, !dbg !138, !tbaa !15
  %3 = load %struct.kmp_task_t_with_privates.1*, %struct.kmp_task_t_with_privates.1** %.addr1, align 8, !dbg !138
  %4 = getelementptr inbounds %struct.kmp_task_t_with_privates.1, %struct.kmp_task_t_with_privates.1* %3, i32 0, i32 0, !dbg !138
  %5 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 2, !dbg !138
  %6 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 0, !dbg !138
  %7 = load i8*, i8** %6, align 8, !dbg !138, !tbaa !47
  %8 = bitcast i8* %7 to %struct.anon.0*, !dbg !138
  %9 = bitcast %struct.kmp_task_t_with_privates.1* %3 to i8*, !dbg !138
  call void @.omp_outlined..1(i32 %2, i32* %5, i8* null, void (i8*, ...)* null, i8* %9, %struct.anon.0* %8) #6, !dbg !138
  ret i32 0, !dbg !138
}

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined..3(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %counter) #3 !dbg !139 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %counter.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !141, metadata !DIExpression()), !dbg !144
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !142, metadata !DIExpression()), !dbg !144
  store i32* %counter, i32** %counter.addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata i32** %counter.addr, metadata !143, metadata !DIExpression()), !dbg !144
  %0 = load i32*, i32** %counter.addr, align 8, !dbg !145, !tbaa !38
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !145, !tbaa !38
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !145, !tbaa !38
  %3 = load i32*, i32** %counter.addr, align 8, !dbg !145, !tbaa !38
  call void @.omp_outlined._debug__(i32* %1, i32* %2, i32* %3) #6, !dbg !145
  ret void, !dbg !145
}

declare !callback !146 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

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
!1 = !DIFile(filename: "integration/openmp/task-single-no.c", directory: "/home/brad/Code/OpenRace/tests/data")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.1 "}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 3, type: !8, scopeLine: 3, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !11)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !{!12}
!12 = !DILocalVariable(name: "counter", scope: !7, file: !1, line: 4, type: !10)
!13 = !DILocation(line: 4, column: 3, scope: !7)
!14 = !DILocation(line: 4, column: 7, scope: !7)
!15 = !{!16, !16, i64 0}
!16 = !{!"int", !17, i64 0}
!17 = !{!"omnipotent char", !18, i64 0}
!18 = !{!"Simple C/C++ TBAA"}
!19 = !DILocation(line: 5, column: 1, scope: !7)
!20 = !{!21, !22, i64 16}
!21 = !{!"ident_t", !16, i64 0, !16, i64 4, !16, i64 8, !16, i64 12, !22, i64 16}
!22 = !{!"any pointer", !17, i64 0}
!23 = !DILocation(line: 21, column: 23, scope: !7)
!24 = !DILocation(line: 21, column: 3, scope: !7)
!25 = !DILocation(line: 22, column: 1, scope: !7)
!26 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 6, type: !27, scopeLine: 6, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !34)
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
!37 = !DILocalVariable(name: "counter", arg: 3, scope: !26, file: !1, line: 4, type: !33)
!38 = !{!22, !22, i64 0}
!39 = !DILocation(line: 0, scope: !26)
!40 = !DILocation(line: 4, column: 7, scope: !26)
!41 = !DILocation(line: 6, column: 3, scope: !26)
!42 = !DILocation(line: 7, column: 1, scope: !43)
!43 = distinct !DILexicalBlock(scope: !26, file: !1, line: 6, column: 3)
!44 = !DILocation(line: 9, column: 1, scope: !45)
!45 = distinct !DILexicalBlock(scope: !46, file: !1, line: 8, column: 5)
!46 = distinct !DILexicalBlock(scope: !43, file: !1, line: 7, column: 1)
!47 = !{!48, !22, i64 0}
!48 = !{!"kmp_task_t_with_privates", !49, i64 0}
!49 = !{!"kmp_task_t", !22, i64 0, !22, i64 8, !16, i64 16, !17, i64 24, !17, i64 32}
!50 = !{i64 0, i64 8, !38}
!51 = !DILocation(line: 11, column: 5, scope: !45)
!52 = !DILocation(line: 7, column: 19, scope: !46)
!53 = !DILocation(line: 14, column: 1, scope: !43)
!54 = !DILocation(line: 16, column: 1, scope: !55)
!55 = distinct !DILexicalBlock(scope: !56, file: !1, line: 15, column: 5)
!56 = distinct !DILexicalBlock(scope: !43, file: !1, line: 14, column: 1)
!57 = !DILocation(line: 18, column: 5, scope: !55)
!58 = !DILocation(line: 14, column: 19, scope: !56)
!59 = !DILocation(line: 19, column: 3, scope: !26)
!60 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 10, type: !61, scopeLine: 10, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !76)
!61 = !DISubroutineType(types: !62)
!62 = !{null, !32, !29, !63, !66, !71, !72}
!63 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !64)
!64 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !65)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !67)
!67 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !68)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DISubroutineType(types: !70)
!70 = !{null, !63, null}
!71 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !65)
!72 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !73)
!73 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !74)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 9, size: 64, elements: !2)
!76 = !{!77, !78, !79, !80, !81, !82}
!77 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !60, type: !32, flags: DIFlagArtificial)
!78 = !DILocalVariable(name: ".part_id.", arg: 2, scope: !60, type: !29, flags: DIFlagArtificial)
!79 = !DILocalVariable(name: ".privates.", arg: 3, scope: !60, type: !63, flags: DIFlagArtificial)
!80 = !DILocalVariable(name: ".copy_fn.", arg: 4, scope: !60, type: !66, flags: DIFlagArtificial)
!81 = !DILocalVariable(name: ".task_t.", arg: 5, scope: !60, type: !71, flags: DIFlagArtificial)
!82 = !DILocalVariable(name: "__context", arg: 6, scope: !60, type: !72, flags: DIFlagArtificial)
!83 = !DILocation(line: 0, scope: !60)
!84 = !DILocation(line: 10, column: 7, scope: !60)
!85 = !DILocation(line: 10, column: 9, scope: !86)
!86 = distinct !DILexicalBlock(scope: !60, file: !1, line: 10, column: 7)
!87 = !{!88, !22, i64 0}
!88 = !{!"", !22, i64 0}
!89 = !DILocation(line: 10, column: 17, scope: !86)
!90 = !DILocation(line: 10, column: 22, scope: !60)
!91 = distinct !DISubprogram(linkageName: ".omp_task_entry.", scope: !1, file: !1, line: 9, type: !92, scopeLine: 9, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !93)
!92 = !DISubroutineType(types: !2)
!93 = !{!94, !95}
!94 = !DILocalVariable(arg: 1, scope: !91, type: !10, flags: DIFlagArtificial)
!95 = !DILocalVariable(arg: 2, scope: !91, type: !96, flags: DIFlagArtificial)
!96 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !97)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!98 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t_with_privates", file: !1, size: 320, elements: !99)
!99 = !{!100}
!100 = !DIDerivedType(tag: DW_TAG_member, scope: !98, file: !1, baseType: !101, size: 320)
!101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t", file: !1, size: 320, elements: !102)
!102 = !{!103, !105}
!103 = !DIDerivedType(tag: DW_TAG_member, scope: !101, file: !1, baseType: !104, size: 64, offset: 192)
!104 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "kmp_cmplrdata_t", file: !1, size: 64, elements: !2)
!105 = !DIDerivedType(tag: DW_TAG_member, scope: !101, file: !1, baseType: !104, size: 64, offset: 256)
!106 = !DILocation(line: 0, scope: !91)
!107 = !DILocation(line: 9, column: 1, scope: !91)
!108 = distinct !DISubprogram(name: ".omp_outlined..1", scope: !1, file: !1, line: 17, type: !109, scopeLine: 17, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !115)
!109 = !DISubroutineType(types: !110)
!110 = !{null, !32, !29, !63, !66, !71, !111}
!111 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !112)
!112 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !113)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!114 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 16, size: 64, elements: !2)
!115 = !{!116, !117, !118, !119, !120, !121}
!116 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !108, type: !32, flags: DIFlagArtificial)
!117 = !DILocalVariable(name: ".part_id.", arg: 2, scope: !108, type: !29, flags: DIFlagArtificial)
!118 = !DILocalVariable(name: ".privates.", arg: 3, scope: !108, type: !63, flags: DIFlagArtificial)
!119 = !DILocalVariable(name: ".copy_fn.", arg: 4, scope: !108, type: !66, flags: DIFlagArtificial)
!120 = !DILocalVariable(name: ".task_t.", arg: 5, scope: !108, type: !71, flags: DIFlagArtificial)
!121 = !DILocalVariable(name: "__context", arg: 6, scope: !108, type: !111, flags: DIFlagArtificial)
!122 = !DILocation(line: 0, scope: !108)
!123 = !DILocation(line: 17, column: 7, scope: !108)
!124 = !DILocation(line: 17, column: 9, scope: !125)
!125 = distinct !DILexicalBlock(scope: !108, file: !1, line: 17, column: 7)
!126 = !DILocation(line: 17, column: 17, scope: !125)
!127 = !DILocation(line: 17, column: 22, scope: !108)
!128 = distinct !DISubprogram(linkageName: ".omp_task_entry..2", scope: !1, file: !1, line: 16, type: !92, scopeLine: 16, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !129)
!129 = !{!130, !131}
!130 = !DILocalVariable(arg: 1, scope: !128, type: !10, flags: DIFlagArtificial)
!131 = !DILocalVariable(arg: 2, scope: !128, type: !132, flags: DIFlagArtificial)
!132 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !133)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t_with_privates", file: !1, size: 320, elements: !135)
!135 = !{!136}
!136 = !DIDerivedType(tag: DW_TAG_member, scope: !134, file: !1, baseType: !101, size: 320)
!137 = !DILocation(line: 0, scope: !128)
!138 = !DILocation(line: 16, column: 1, scope: !128)
!139 = distinct !DISubprogram(name: ".omp_outlined..3", scope: !1, file: !1, line: 6, type: !27, scopeLine: 6, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !140)
!140 = !{!141, !142, !143}
!141 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !139, type: !29, flags: DIFlagArtificial)
!142 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !139, type: !29, flags: DIFlagArtificial)
!143 = !DILocalVariable(name: "counter", arg: 3, scope: !139, type: !33, flags: DIFlagArtificial)
!144 = !DILocation(line: 0, scope: !139)
!145 = !DILocation(line: 6, column: 3, scope: !139)
!146 = !{!147}
!147 = !{i64 2, i64 -1, i64 -1, i1 true}
