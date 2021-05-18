; ModuleID = 'integration/dataracebench/DRB132-taskdep4-orig-omp45-no.c'
source_filename = "integration/dataracebench/DRB132-taskdep4-orig-omp45-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }
%struct.anon = type { i32* }
%struct.kmp_depend_info = type { i64, i64, i8 }
%struct.anon.0 = type { i32* }
%struct.anon.2 = type {}
%struct.kmp_task_t_with_privates = type { %struct.kmp_task_t }
%struct.kmp_task_t = type { i8*, i32 (i32, i8*)*, i32, %union.kmp_cmplrdata_t, %union.kmp_cmplrdata_t }
%union.kmp_cmplrdata_t = type { i32 (i32, i8*)* }
%struct.kmp_task_t_with_privates.1 = type { %struct.kmp_task_t }
%struct.kmp_task_t_with_privates.3 = type { %struct.kmp_task_t }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [70 x i8] c";integration/dataracebench/DRB132-taskdep4-orig-omp45-no.c;foo;22;3;;\00", align 1
@2 = private unnamed_addr constant [70 x i8] c";integration/dataracebench/DRB132-taskdep4-orig-omp45-no.c;foo;25;3;;\00", align 1
@3 = private unnamed_addr constant [70 x i8] c";integration/dataracebench/DRB132-taskdep4-orig-omp45-no.c;foo;28;3;;\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"x=%d\0A\00", align 1
@4 = private unnamed_addr constant [70 x i8] c";integration/dataracebench/DRB132-taskdep4-orig-omp45-no.c;foo;33;3;;\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"y=%d\0A\00", align 1
@5 = private unnamed_addr constant [71 x i8] c";integration/dataracebench/DRB132-taskdep4-orig-omp45-no.c;main;41;3;;\00", align 1
@6 = private unnamed_addr constant [71 x i8] c";integration/dataracebench/DRB132-taskdep4-orig-omp45-no.c;main;40;3;;\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @foo() #0 !dbg !7 {
entry:
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %agg.captured = alloca %struct.anon, align 8
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %.dep.arr.addr = alloca [1 x %struct.kmp_depend_info], align 8
  %agg.captured1 = alloca %struct.anon.0, align 8
  %agg.captured2 = alloca %struct.anon.2, align 1
  %.dep.arr.addr3 = alloca [1 x %struct.kmp_depend_info], align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  %2 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4
  store i8* getelementptr inbounds ([70 x i8], [70 x i8]* @1, i32 0, i32 0), i8** %2, align 8, !tbaa !14
  %3 = call i32 @__kmpc_global_thread_num(%struct.ident_t* %.kmpc_loc.addr)
  %4 = bitcast i32* %x to i8*, !dbg !20
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #6, !dbg !20
  call void @llvm.dbg.declare(metadata i32* %x, metadata !11, metadata !DIExpression()), !dbg !21
  store i32 0, i32* %x, align 4, !dbg !21, !tbaa !22
  %5 = bitcast i32* %y to i8*, !dbg !20
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #6, !dbg !20
  call void @llvm.dbg.declare(metadata i32* %y, metadata !13, metadata !DIExpression()), !dbg !23
  store i32 2, i32* %y, align 4, !dbg !23, !tbaa !22
  %6 = getelementptr inbounds %struct.anon, %struct.anon* %agg.captured, i32 0, i32 0, !dbg !24
  store i32* %x, i32** %6, align 8, !dbg !24, !tbaa !25
  %7 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !24
  store i8* getelementptr inbounds ([70 x i8], [70 x i8]* @1, i32 0, i32 0), i8** %7, align 8, !dbg !24, !tbaa !14
  %8 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* %.kmpc_loc.addr, i32 %3, i32 1, i64 40, i64 8, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates*)* @.omp_task_entry. to i32 (i32, i8*)*)), !dbg !24
  %9 = bitcast i8* %8 to %struct.kmp_task_t_with_privates*, !dbg !24
  %10 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %9, i32 0, i32 0, !dbg !24
  %11 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %10, i32 0, i32 0, !dbg !24
  %12 = load i8*, i8** %11, align 8, !dbg !24, !tbaa !26
  %13 = bitcast %struct.anon* %agg.captured to i8*, !dbg !24
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 %13, i64 8, i1 false), !dbg !24, !tbaa.struct !29
  %14 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %.dep.arr.addr, i64 0, i64 0, !dbg !24
  %15 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %14, i32 0, i32 0, !dbg !24
  %16 = ptrtoint i32* %x to i64, !dbg !24
  store i64 %16, i64* %15, align 8, !dbg !24, !tbaa !30
  %17 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %14, i32 0, i32 1, !dbg !24
  store i64 4, i64* %17, align 8, !dbg !24, !tbaa !33
  %18 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %14, i32 0, i32 2, !dbg !24
  store i8 3, i8* %18, align 8, !dbg !24, !tbaa !34
  %19 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %.dep.arr.addr, i64 0, i64 0, !dbg !24
  %20 = bitcast %struct.kmp_depend_info* %19 to i8*, !dbg !24
  %21 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !24
  store i8* getelementptr inbounds ([70 x i8], [70 x i8]* @1, i32 0, i32 0), i8** %21, align 8, !dbg !24, !tbaa !14
  %22 = call i32 @__kmpc_omp_task_with_deps(%struct.ident_t* %.kmpc_loc.addr, i32 %3, i8* %8, i32 1, i8* %20, i32 0, i8* null), !dbg !24
  %23 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %agg.captured1, i32 0, i32 0, !dbg !35
  store i32* %y, i32** %23, align 8, !dbg !35, !tbaa !25
  %24 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !35
  store i8* getelementptr inbounds ([70 x i8], [70 x i8]* @2, i32 0, i32 0), i8** %24, align 8, !dbg !35, !tbaa !14
  %25 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* %.kmpc_loc.addr, i32 %3, i32 1, i64 40, i64 8, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates.1*)* @.omp_task_entry..2 to i32 (i32, i8*)*)), !dbg !35
  %26 = bitcast i8* %25 to %struct.kmp_task_t_with_privates.1*, !dbg !35
  %27 = getelementptr inbounds %struct.kmp_task_t_with_privates.1, %struct.kmp_task_t_with_privates.1* %26, i32 0, i32 0, !dbg !35
  %28 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %27, i32 0, i32 0, !dbg !35
  %29 = load i8*, i8** %28, align 8, !dbg !35, !tbaa !26
  %30 = bitcast %struct.anon.0* %agg.captured1 to i8*, !dbg !35
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %29, i8* align 8 %30, i64 8, i1 false), !dbg !35, !tbaa.struct !29
  %31 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !35
  store i8* getelementptr inbounds ([70 x i8], [70 x i8]* @2, i32 0, i32 0), i8** %31, align 8, !dbg !35, !tbaa !14
  %32 = call i32 @__kmpc_omp_task(%struct.ident_t* %.kmpc_loc.addr, i32 %3, i8* %25), !dbg !35
  %33 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !36
  store i8* getelementptr inbounds ([70 x i8], [70 x i8]* @3, i32 0, i32 0), i8** %33, align 8, !dbg !36, !tbaa !14
  %34 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* %.kmpc_loc.addr, i32 %3, i32 1, i64 40, i64 0, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates.3*)* @.omp_task_entry..4 to i32 (i32, i8*)*)), !dbg !36
  %35 = bitcast i8* %34 to %struct.kmp_task_t_with_privates.3*, !dbg !36
  %36 = getelementptr inbounds %struct.kmp_task_t_with_privates.3, %struct.kmp_task_t_with_privates.3* %35, i32 0, i32 0, !dbg !36
  %37 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %.dep.arr.addr3, i64 0, i64 0, !dbg !36
  %38 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %37, i32 0, i32 0, !dbg !36
  %39 = ptrtoint i32* %x to i64, !dbg !36
  store i64 %39, i64* %38, align 8, !dbg !36, !tbaa !30
  %40 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %37, i32 0, i32 1, !dbg !36
  store i64 4, i64* %40, align 8, !dbg !36, !tbaa !33
  %41 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %37, i32 0, i32 2, !dbg !36
  store i8 1, i8* %41, align 8, !dbg !36, !tbaa !34
  %42 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %.dep.arr.addr3, i64 0, i64 0, !dbg !36
  %43 = bitcast %struct.kmp_depend_info* %42 to i8*, !dbg !36
  %44 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !36
  store i8* getelementptr inbounds ([70 x i8], [70 x i8]* @3, i32 0, i32 0), i8** %44, align 8, !dbg !36, !tbaa !14
  call void @__kmpc_omp_wait_deps(%struct.ident_t* %.kmpc_loc.addr, i32 %3, i32 1, i8* %43, i32 0, i8* null), !dbg !37
  call void @__kmpc_omp_task_begin_if0(%struct.ident_t* %.kmpc_loc.addr, i32 %3, i8* %34), !dbg !37
  %45 = call i32 @.omp_task_entry..4(i32 %3, %struct.kmp_task_t_with_privates.3* %35) #6, !dbg !39
  call void @__kmpc_omp_task_complete_if0(%struct.ident_t* %.kmpc_loc.addr, i32 %3, i8* %34), !dbg !37
  %46 = load i32, i32* %x, align 4, !dbg !41, !tbaa !22
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %46), !dbg !42
  %47 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !43
  store i8* getelementptr inbounds ([70 x i8], [70 x i8]* @4, i32 0, i32 0), i8** %47, align 8, !dbg !43, !tbaa !14
  %48 = call i32 @__kmpc_omp_taskwait(%struct.ident_t* %.kmpc_loc.addr, i32 %3), !dbg !43
  %49 = load i32, i32* %y, align 4, !dbg !44, !tbaa !22
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %49), !dbg !45
  %50 = bitcast i32* %y to i8*, !dbg !46
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %50) #6, !dbg !46
  %51 = bitcast i32* %x to i8*, !dbg !46
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %51) #6, !dbg !46
  ret void, !dbg !46
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: alwaysinline nounwind uwtable
define internal void @.omp_outlined.(i32 %.global_tid., i32* noalias %.part_id., i8* noalias %.privates., void (i8*, ...)* noalias %.copy_fn., i8* %.task_t., %struct.anon* noalias %__context) #3 !dbg !47 {
entry:
  %.global_tid..addr = alloca i32, align 4
  %.part_id..addr = alloca i32*, align 8
  %.privates..addr = alloca i8*, align 8
  %.copy_fn..addr = alloca void (i8*, ...)*, align 8
  %.task_t..addr = alloca i8*, align 8
  %__context.addr = alloca %struct.anon*, align 8
  store i32 %.global_tid., i32* %.global_tid..addr, align 4, !tbaa !22
  call void @llvm.dbg.declare(metadata i32* %.global_tid..addr, metadata !68, metadata !DIExpression()), !dbg !74
  store i32* %.part_id., i32** %.part_id..addr, align 8, !tbaa !25
  call void @llvm.dbg.declare(metadata i32** %.part_id..addr, metadata !69, metadata !DIExpression()), !dbg !74
  store i8* %.privates., i8** %.privates..addr, align 8, !tbaa !25
  call void @llvm.dbg.declare(metadata i8** %.privates..addr, metadata !70, metadata !DIExpression()), !dbg !74
  store void (i8*, ...)* %.copy_fn., void (i8*, ...)** %.copy_fn..addr, align 8, !tbaa !25
  call void @llvm.dbg.declare(metadata void (i8*, ...)** %.copy_fn..addr, metadata !71, metadata !DIExpression()), !dbg !74
  store i8* %.task_t., i8** %.task_t..addr, align 8, !tbaa !25
  call void @llvm.dbg.declare(metadata i8** %.task_t..addr, metadata !72, metadata !DIExpression()), !dbg !74
  store %struct.anon* %__context, %struct.anon** %__context.addr, align 8, !tbaa !25
  call void @llvm.dbg.declare(metadata %struct.anon** %__context.addr, metadata !73, metadata !DIExpression()), !dbg !74
  %0 = load %struct.anon*, %struct.anon** %__context.addr, align 8, !dbg !75
  %1 = getelementptr inbounds %struct.anon, %struct.anon* %0, i32 0, i32 0, !dbg !75
  %2 = load i32*, i32** %1, align 8, !dbg !75, !tbaa !76
  %3 = load i32, i32* %2, align 4, !dbg !78, !tbaa !22
  %inc = add nsw i32 %3, 1, !dbg !78
  store i32 %inc, i32* %2, align 4, !dbg !78, !tbaa !22
  ret void, !dbg !78
}

; Function Attrs: norecurse nounwind uwtable
define internal i32 @.omp_task_entry.(i32 %0, %struct.kmp_task_t_with_privates* noalias %1) #4 !dbg !79 {
entry:
  %.addr = alloca i32, align 4
  %.addr1 = alloca %struct.kmp_task_t_with_privates*, align 8
  store i32 %0, i32* %.addr, align 4, !tbaa !22
  call void @llvm.dbg.declare(metadata i32* %.addr, metadata !82, metadata !DIExpression()), !dbg !94
  store %struct.kmp_task_t_with_privates* %1, %struct.kmp_task_t_with_privates** %.addr1, align 8, !tbaa !25
  call void @llvm.dbg.declare(metadata %struct.kmp_task_t_with_privates** %.addr1, metadata !83, metadata !DIExpression()), !dbg !94
  %2 = load i32, i32* %.addr, align 4, !dbg !95, !tbaa !22
  %3 = load %struct.kmp_task_t_with_privates*, %struct.kmp_task_t_with_privates** %.addr1, align 8, !dbg !95
  %4 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %3, i32 0, i32 0, !dbg !95
  %5 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 2, !dbg !95
  %6 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 0, !dbg !95
  %7 = load i8*, i8** %6, align 8, !dbg !95, !tbaa !26
  %8 = bitcast i8* %7 to %struct.anon*, !dbg !95
  %9 = bitcast %struct.kmp_task_t_with_privates* %3 to i8*, !dbg !95
  call void @.omp_outlined.(i32 %2, i32* %5, i8* null, void (i8*, ...)* null, i8* %9, %struct.anon* %8) #6, !dbg !95
  ret i32 0, !dbg !95
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @__kmpc_global_thread_num(%struct.ident_t*)

declare dso_local i8* @__kmpc_omp_task_alloc(%struct.ident_t*, i32, i32, i64, i64, i32 (i32, i8*)*)

declare dso_local i32 @__kmpc_omp_task_with_deps(%struct.ident_t*, i32, i8*, i32, i8*, i32, i8*)

; Function Attrs: alwaysinline nounwind uwtable
define internal void @.omp_outlined..1(i32 %.global_tid., i32* noalias %.part_id., i8* noalias %.privates., void (i8*, ...)* noalias %.copy_fn., i8* %.task_t., %struct.anon.0* noalias %__context) #3 !dbg !96 {
entry:
  %.global_tid..addr = alloca i32, align 4
  %.part_id..addr = alloca i32*, align 8
  %.privates..addr = alloca i8*, align 8
  %.copy_fn..addr = alloca void (i8*, ...)*, align 8
  %.task_t..addr = alloca i8*, align 8
  %__context.addr = alloca %struct.anon.0*, align 8
  store i32 %.global_tid., i32* %.global_tid..addr, align 4, !tbaa !22
  call void @llvm.dbg.declare(metadata i32* %.global_tid..addr, metadata !104, metadata !DIExpression()), !dbg !110
  store i32* %.part_id., i32** %.part_id..addr, align 8, !tbaa !25
  call void @llvm.dbg.declare(metadata i32** %.part_id..addr, metadata !105, metadata !DIExpression()), !dbg !110
  store i8* %.privates., i8** %.privates..addr, align 8, !tbaa !25
  call void @llvm.dbg.declare(metadata i8** %.privates..addr, metadata !106, metadata !DIExpression()), !dbg !110
  store void (i8*, ...)* %.copy_fn., void (i8*, ...)** %.copy_fn..addr, align 8, !tbaa !25
  call void @llvm.dbg.declare(metadata void (i8*, ...)** %.copy_fn..addr, metadata !107, metadata !DIExpression()), !dbg !110
  store i8* %.task_t., i8** %.task_t..addr, align 8, !tbaa !25
  call void @llvm.dbg.declare(metadata i8** %.task_t..addr, metadata !108, metadata !DIExpression()), !dbg !110
  store %struct.anon.0* %__context, %struct.anon.0** %__context.addr, align 8, !tbaa !25
  call void @llvm.dbg.declare(metadata %struct.anon.0** %__context.addr, metadata !109, metadata !DIExpression()), !dbg !110
  %0 = load %struct.anon.0*, %struct.anon.0** %__context.addr, align 8, !dbg !111
  %1 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %0, i32 0, i32 0, !dbg !111
  %2 = load i32*, i32** %1, align 8, !dbg !111, !tbaa !76
  %3 = load i32, i32* %2, align 4, !dbg !112, !tbaa !22
  %dec = add nsw i32 %3, -1, !dbg !112
  store i32 %dec, i32* %2, align 4, !dbg !112, !tbaa !22
  ret void, !dbg !112
}

; Function Attrs: norecurse nounwind uwtable
define internal i32 @.omp_task_entry..2(i32 %0, %struct.kmp_task_t_with_privates.1* noalias %1) #4 !dbg !113 {
entry:
  %.addr = alloca i32, align 4
  %.addr1 = alloca %struct.kmp_task_t_with_privates.1*, align 8
  store i32 %0, i32* %.addr, align 4, !tbaa !22
  call void @llvm.dbg.declare(metadata i32* %.addr, metadata !115, metadata !DIExpression()), !dbg !122
  store %struct.kmp_task_t_with_privates.1* %1, %struct.kmp_task_t_with_privates.1** %.addr1, align 8, !tbaa !25
  call void @llvm.dbg.declare(metadata %struct.kmp_task_t_with_privates.1** %.addr1, metadata !116, metadata !DIExpression()), !dbg !122
  %2 = load i32, i32* %.addr, align 4, !dbg !123, !tbaa !22
  %3 = load %struct.kmp_task_t_with_privates.1*, %struct.kmp_task_t_with_privates.1** %.addr1, align 8, !dbg !123
  %4 = getelementptr inbounds %struct.kmp_task_t_with_privates.1, %struct.kmp_task_t_with_privates.1* %3, i32 0, i32 0, !dbg !123
  %5 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 2, !dbg !123
  %6 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 0, !dbg !123
  %7 = load i8*, i8** %6, align 8, !dbg !123, !tbaa !26
  %8 = bitcast i8* %7 to %struct.anon.0*, !dbg !123
  %9 = bitcast %struct.kmp_task_t_with_privates.1* %3 to i8*, !dbg !123
  call void @.omp_outlined..1(i32 %2, i32* %5, i8* null, void (i8*, ...)* null, i8* %9, %struct.anon.0* %8) #6, !dbg !123
  ret i32 0, !dbg !123
}

declare dso_local i32 @__kmpc_omp_task(%struct.ident_t*, i32, i8*)

; Function Attrs: alwaysinline nounwind uwtable
define internal void @.omp_outlined..3(i32 %.global_tid., i32* noalias %.part_id., i8* noalias %.privates., void (i8*, ...)* noalias %.copy_fn., i8* %.task_t., %struct.anon.2* noalias %__context) #3 !dbg !124 {
entry:
  %.global_tid..addr = alloca i32, align 4
  %.part_id..addr = alloca i32*, align 8
  %.privates..addr = alloca i8*, align 8
  %.copy_fn..addr = alloca void (i8*, ...)*, align 8
  %.task_t..addr = alloca i8*, align 8
  %__context.addr = alloca %struct.anon.2*, align 8
  store i32 %.global_tid., i32* %.global_tid..addr, align 4, !tbaa !22
  call void @llvm.dbg.declare(metadata i32* %.global_tid..addr, metadata !132, metadata !DIExpression()), !dbg !138
  store i32* %.part_id., i32** %.part_id..addr, align 8, !tbaa !25
  call void @llvm.dbg.declare(metadata i32** %.part_id..addr, metadata !133, metadata !DIExpression()), !dbg !138
  store i8* %.privates., i8** %.privates..addr, align 8, !tbaa !25
  call void @llvm.dbg.declare(metadata i8** %.privates..addr, metadata !134, metadata !DIExpression()), !dbg !138
  store void (i8*, ...)* %.copy_fn., void (i8*, ...)** %.copy_fn..addr, align 8, !tbaa !25
  call void @llvm.dbg.declare(metadata void (i8*, ...)** %.copy_fn..addr, metadata !135, metadata !DIExpression()), !dbg !138
  store i8* %.task_t., i8** %.task_t..addr, align 8, !tbaa !25
  call void @llvm.dbg.declare(metadata i8** %.task_t..addr, metadata !136, metadata !DIExpression()), !dbg !138
  store %struct.anon.2* %__context, %struct.anon.2** %__context.addr, align 8, !tbaa !25
  call void @llvm.dbg.declare(metadata %struct.anon.2** %__context.addr, metadata !137, metadata !DIExpression()), !dbg !138
  %0 = load %struct.anon.2*, %struct.anon.2** %__context.addr, align 8, !dbg !139
  ret void, !dbg !140
}

; Function Attrs: norecurse nounwind uwtable
define internal i32 @.omp_task_entry..4(i32 %0, %struct.kmp_task_t_with_privates.3* noalias %1) #4 !dbg !141 {
entry:
  %.addr = alloca i32, align 4
  %.addr1 = alloca %struct.kmp_task_t_with_privates.3*, align 8
  store i32 %0, i32* %.addr, align 4, !tbaa !22
  call void @llvm.dbg.declare(metadata i32* %.addr, metadata !143, metadata !DIExpression()), !dbg !150
  store %struct.kmp_task_t_with_privates.3* %1, %struct.kmp_task_t_with_privates.3** %.addr1, align 8, !tbaa !25
  call void @llvm.dbg.declare(metadata %struct.kmp_task_t_with_privates.3** %.addr1, metadata !144, metadata !DIExpression()), !dbg !150
  %2 = load i32, i32* %.addr, align 4, !dbg !151, !tbaa !22
  %3 = load %struct.kmp_task_t_with_privates.3*, %struct.kmp_task_t_with_privates.3** %.addr1, align 8, !dbg !151
  %4 = getelementptr inbounds %struct.kmp_task_t_with_privates.3, %struct.kmp_task_t_with_privates.3* %3, i32 0, i32 0, !dbg !151
  %5 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 2, !dbg !151
  %6 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 0, !dbg !151
  %7 = load i8*, i8** %6, align 8, !dbg !151, !tbaa !26
  %8 = bitcast i8* %7 to %struct.anon.2*, !dbg !151
  %9 = bitcast %struct.kmp_task_t_with_privates.3* %3 to i8*, !dbg !151
  call void @.omp_outlined..3(i32 %2, i32* %5, i8* null, void (i8*, ...)* null, i8* %9, %struct.anon.2* %8) #6, !dbg !151
  ret i32 0, !dbg !151
}

declare dso_local void @__kmpc_omp_wait_deps(%struct.ident_t*, i32, i32, i8*, i32, i8*)

declare dso_local void @__kmpc_omp_task_complete_if0(%struct.ident_t*, i32, i8*)

declare dso_local void @__kmpc_omp_task_begin_if0(%struct.ident_t*, i32, i8*)

declare dso_local i32 @printf(i8*, ...) #5

declare dso_local i32 @__kmpc_omp_taskwait(%struct.ident_t*, i32)

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @main() #0 !dbg !152 {
entry:
  %retval = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32 0, i32* %retval, align 4
  %2 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !155
  store i8* getelementptr inbounds ([71 x i8], [71 x i8]* @6, i32 0, i32 0), i8** %2, align 8, !dbg !155, !tbaa !14
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 0, void (i32*, i32*, ...)* bitcast (void (i32*, i32*)* @.omp_outlined..7 to void (i32*, i32*, ...)*)), !dbg !155
  ret i32 0, !dbg !156
}

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid.) #4 !dbg !157 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !25
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !161, metadata !DIExpression()), !dbg !163
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !25
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !162, metadata !DIExpression()), !dbg !163
  %2 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !164
  store i8* getelementptr inbounds ([71 x i8], [71 x i8]* @5, i32 0, i32 0), i8** %2, align 8, !dbg !164, !tbaa !14
  %3 = load i32*, i32** %.global_tid..addr, align 8, !dbg !164
  %4 = load i32, i32* %3, align 4, !dbg !164, !tbaa !22
  %5 = call i32 @__kmpc_single(%struct.ident_t* %.kmpc_loc.addr, i32 %4), !dbg !164
  %6 = icmp ne i32 %5, 0, !dbg !164
  br i1 %6, label %omp_if.then, label %omp_if.end, !dbg !164

omp_if.then:                                      ; preds = %entry
  call void @foo(), !dbg !165
  call void @__kmpc_end_single(%struct.ident_t* %.kmpc_loc.addr, i32 %4), !dbg !165
  br label %omp_if.end, !dbg !165

omp_if.end:                                       ; preds = %omp_if.then, %entry
  %7 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !167
  store i8* getelementptr inbounds ([71 x i8], [71 x i8]* @5, i32 0, i32 0), i8** %7, align 8, !dbg !167, !tbaa !14
  call void @__kmpc_barrier(%struct.ident_t* %.kmpc_loc.addr, i32 %4), !dbg !167
  ret void, !dbg !168
}

declare dso_local void @__kmpc_end_single(%struct.ident_t*, i32)

declare dso_local i32 @__kmpc_single(%struct.ident_t*, i32)

declare dso_local void @__kmpc_barrier(%struct.ident_t*, i32)

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined..7(i32* noalias %.global_tid., i32* noalias %.bound_tid.) #4 !dbg !169 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !25
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !171, metadata !DIExpression()), !dbg !173
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !25
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !172, metadata !DIExpression()), !dbg !173
  %0 = load i32*, i32** %.global_tid..addr, align 8, !dbg !174, !tbaa !25
  %1 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !174, !tbaa !25
  call void @.omp_outlined._debug__(i32* %0, i32* %1) #6, !dbg !174
  ret void, !dbg !174
}

declare !callback !175 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { alwaysinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "integration/dataracebench/DRB132-taskdep4-orig-omp45-no.c", directory: "/home/brad/Code/OpenRace/tests/data")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.1 "}
!7 = distinct !DISubprogram(name: "foo", scope: !1, file: !1, line: 18, type: !8, scopeLine: 18, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!8 = !DISubroutineType(types: !9)
!9 = !{null}
!10 = !{!11, !13}
!11 = !DILocalVariable(name: "x", scope: !7, file: !1, line: 20, type: !12)
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !DILocalVariable(name: "y", scope: !7, file: !1, line: 20, type: !12)
!14 = !{!15, !19, i64 16}
!15 = !{!"ident_t", !16, i64 0, !16, i64 4, !16, i64 8, !16, i64 12, !19, i64 16}
!16 = !{!"int", !17, i64 0}
!17 = !{!"omnipotent char", !18, i64 0}
!18 = !{!"Simple C/C++ TBAA"}
!19 = !{!"any pointer", !17, i64 0}
!20 = !DILocation(line: 20, column: 3, scope: !7)
!21 = !DILocation(line: 20, column: 7, scope: !7)
!22 = !{!16, !16, i64 0}
!23 = !DILocation(line: 20, column: 14, scope: !7)
!24 = !DILocation(line: 22, column: 3, scope: !7)
!25 = !{!19, !19, i64 0}
!26 = !{!27, !19, i64 0}
!27 = !{!"kmp_task_t_with_privates", !28, i64 0}
!28 = !{!"kmp_task_t", !19, i64 0, !19, i64 8, !16, i64 16, !17, i64 24, !17, i64 32}
!29 = !{i64 0, i64 8, !25}
!30 = !{!31, !32, i64 0}
!31 = !{!"kmp_depend_info", !32, i64 0, !32, i64 8, !17, i64 16}
!32 = !{!"long", !17, i64 0}
!33 = !{!31, !32, i64 8}
!34 = !{!31, !17, i64 16}
!35 = !DILocation(line: 25, column: 3, scope: !7)
!36 = !DILocation(line: 28, column: 3, scope: !7)
!37 = !DILocation(line: 28, column: 37, scope: !38)
!38 = distinct !DILexicalBlock(scope: !7, file: !1, line: 28, column: 3)
!39 = !DILocation(line: 28, column: 3, scope: !40)
!40 = distinct !DILexicalBlock(scope: !38, file: !1, line: 28, column: 37)
!41 = !DILocation(line: 31, column: 19, scope: !7)
!42 = !DILocation(line: 31, column: 3, scope: !7)
!43 = !DILocation(line: 33, column: 3, scope: !7)
!44 = !DILocation(line: 35, column: 19, scope: !7)
!45 = !DILocation(line: 35, column: 3, scope: !7)
!46 = !DILocation(line: 36, column: 1, scope: !7)
!47 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 23, type: !48, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !67)
!48 = !DISubroutineType(types: !49)
!49 = !{null, !50, !51, !54, !57, !62, !63}
!50 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!51 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !52)
!52 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !53)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !55)
!55 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !56)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !58)
!58 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !59)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!60 = !DISubroutineType(types: !61)
!61 = !{null, !54, null}
!62 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !56)
!63 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !64)
!64 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !65)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !7, file: !1, line: 22, size: 64, elements: !2)
!67 = !{!68, !69, !70, !71, !72, !73}
!68 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !47, type: !50, flags: DIFlagArtificial)
!69 = !DILocalVariable(name: ".part_id.", arg: 2, scope: !47, type: !51, flags: DIFlagArtificial)
!70 = !DILocalVariable(name: ".privates.", arg: 3, scope: !47, type: !54, flags: DIFlagArtificial)
!71 = !DILocalVariable(name: ".copy_fn.", arg: 4, scope: !47, type: !57, flags: DIFlagArtificial)
!72 = !DILocalVariable(name: ".task_t.", arg: 5, scope: !47, type: !62, flags: DIFlagArtificial)
!73 = !DILocalVariable(name: "__context", arg: 6, scope: !47, type: !63, flags: DIFlagArtificial)
!74 = !DILocation(line: 0, scope: !47)
!75 = !DILocation(line: 23, column: 3, scope: !47)
!76 = !{!77, !19, i64 0}
!77 = !{!"", !19, i64 0}
!78 = !DILocation(line: 23, column: 4, scope: !47)
!79 = distinct !DISubprogram(linkageName: ".omp_task_entry.", scope: !1, file: !1, line: 22, type: !80, scopeLine: 22, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !81)
!80 = !DISubroutineType(types: !2)
!81 = !{!82, !83}
!82 = !DILocalVariable(arg: 1, scope: !79, type: !12, flags: DIFlagArtificial)
!83 = !DILocalVariable(arg: 2, scope: !79, type: !84, flags: DIFlagArtificial)
!84 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !85)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!86 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t_with_privates", file: !1, size: 320, elements: !87)
!87 = !{!88}
!88 = !DIDerivedType(tag: DW_TAG_member, scope: !86, file: !1, baseType: !89, size: 320)
!89 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t", file: !1, size: 320, elements: !90)
!90 = !{!91, !93}
!91 = !DIDerivedType(tag: DW_TAG_member, scope: !89, file: !1, baseType: !92, size: 64, offset: 192)
!92 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "kmp_cmplrdata_t", file: !1, size: 64, elements: !2)
!93 = !DIDerivedType(tag: DW_TAG_member, scope: !89, file: !1, baseType: !92, size: 64, offset: 256)
!94 = !DILocation(line: 0, scope: !79)
!95 = !DILocation(line: 22, column: 3, scope: !79)
!96 = distinct !DISubprogram(name: ".omp_outlined..1", scope: !1, file: !1, line: 26, type: !97, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !103)
!97 = !DISubroutineType(types: !98)
!98 = !{null, !50, !51, !54, !57, !62, !99}
!99 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100)
!100 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !101)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!102 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !7, file: !1, line: 25, size: 64, elements: !2)
!103 = !{!104, !105, !106, !107, !108, !109}
!104 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !96, type: !50, flags: DIFlagArtificial)
!105 = !DILocalVariable(name: ".part_id.", arg: 2, scope: !96, type: !51, flags: DIFlagArtificial)
!106 = !DILocalVariable(name: ".privates.", arg: 3, scope: !96, type: !54, flags: DIFlagArtificial)
!107 = !DILocalVariable(name: ".copy_fn.", arg: 4, scope: !96, type: !57, flags: DIFlagArtificial)
!108 = !DILocalVariable(name: ".task_t.", arg: 5, scope: !96, type: !62, flags: DIFlagArtificial)
!109 = !DILocalVariable(name: "__context", arg: 6, scope: !96, type: !99, flags: DIFlagArtificial)
!110 = !DILocation(line: 0, scope: !96)
!111 = !DILocation(line: 26, column: 3, scope: !96)
!112 = !DILocation(line: 26, column: 4, scope: !96)
!113 = distinct !DISubprogram(linkageName: ".omp_task_entry..2", scope: !1, file: !1, line: 25, type: !80, scopeLine: 25, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !114)
!114 = !{!115, !116}
!115 = !DILocalVariable(arg: 1, scope: !113, type: !12, flags: DIFlagArtificial)
!116 = !DILocalVariable(arg: 2, scope: !113, type: !117, flags: DIFlagArtificial)
!117 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !118)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t_with_privates", file: !1, size: 320, elements: !120)
!120 = !{!121}
!121 = !DIDerivedType(tag: DW_TAG_member, scope: !119, file: !1, baseType: !89, size: 320)
!122 = !DILocation(line: 0, scope: !113)
!123 = !DILocation(line: 25, column: 3, scope: !113)
!124 = distinct !DISubprogram(name: ".omp_outlined..3", scope: !1, file: !1, line: 28, type: !125, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !131)
!125 = !DISubroutineType(types: !126)
!126 = !{null, !50, !51, !54, !57, !62, !127}
!127 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !128)
!128 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !129)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!130 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !7, file: !1, line: 28, elements: !2)
!131 = !{!132, !133, !134, !135, !136, !137}
!132 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !124, type: !50, flags: DIFlagArtificial)
!133 = !DILocalVariable(name: ".part_id.", arg: 2, scope: !124, type: !51, flags: DIFlagArtificial)
!134 = !DILocalVariable(name: ".privates.", arg: 3, scope: !124, type: !54, flags: DIFlagArtificial)
!135 = !DILocalVariable(name: ".copy_fn.", arg: 4, scope: !124, type: !57, flags: DIFlagArtificial)
!136 = !DILocalVariable(name: ".task_t.", arg: 5, scope: !124, type: !62, flags: DIFlagArtificial)
!137 = !DILocalVariable(name: "__context", arg: 6, scope: !124, type: !127, flags: DIFlagArtificial)
!138 = !DILocation(line: 0, scope: !124)
!139 = !DILocation(line: 29, column: 3, scope: !124)
!140 = !DILocation(line: 29, column: 4, scope: !124)
!141 = distinct !DISubprogram(linkageName: ".omp_task_entry..4", scope: !1, file: !1, line: 28, type: !80, scopeLine: 28, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !142)
!142 = !{!143, !144}
!143 = !DILocalVariable(arg: 1, scope: !141, type: !12, flags: DIFlagArtificial)
!144 = !DILocalVariable(arg: 2, scope: !141, type: !145, flags: DIFlagArtificial)
!145 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !146)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t_with_privates", file: !1, size: 320, elements: !148)
!148 = !{!149}
!149 = !DIDerivedType(tag: DW_TAG_member, scope: !147, file: !1, baseType: !89, size: 320)
!150 = !DILocation(line: 0, scope: !141)
!151 = !DILocation(line: 28, column: 3, scope: !141)
!152 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 39, type: !153, scopeLine: 39, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!153 = !DISubroutineType(types: !154)
!154 = !{!12}
!155 = !DILocation(line: 40, column: 3, scope: !152)
!156 = !DILocation(line: 44, column: 3, scope: !152)
!157 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 41, type: !158, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !160)
!158 = !DISubroutineType(types: !159)
!159 = !{null, !51, !51}
!160 = !{!161, !162}
!161 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !157, type: !51, flags: DIFlagArtificial)
!162 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !157, type: !51, flags: DIFlagArtificial)
!163 = !DILocation(line: 0, scope: !157)
!164 = !DILocation(line: 41, column: 3, scope: !157)
!165 = !DILocation(line: 42, column: 3, scope: !166)
!166 = distinct !DILexicalBlock(scope: !157, file: !1, line: 41, column: 3)
!167 = !DILocation(line: 41, column: 21, scope: !166)
!168 = !DILocation(line: 41, column: 21, scope: !157)
!169 = distinct !DISubprogram(name: ".omp_outlined..7", scope: !1, file: !1, line: 41, type: !158, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !170)
!170 = !{!171, !172}
!171 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !169, type: !51, flags: DIFlagArtificial)
!172 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !169, type: !51, flags: DIFlagArtificial)
!173 = !DILocation(line: 0, scope: !169)
!174 = !DILocation(line: 41, column: 3, scope: !169)
!175 = !{!176}
!176 = !{i64 2, i64 -1, i64 -1, i1 true}
