; ModuleID = 'integration/dataracebench/DRB133-taskdep5-orig-omp45-no.c'
source_filename = "integration/dataracebench/DRB133-taskdep5-orig-omp45-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }
%struct.anon = type { i32* }
%struct.kmp_depend_info = type { i64, i64, i8 }
%struct.anon.0 = type { i32*, i32* }
%struct.anon.2 = type {}
%struct.kmp_task_t_with_privates = type { %struct.kmp_task_t }
%struct.kmp_task_t = type { i8*, i32 (i32, i8*)*, i32, %union.kmp_cmplrdata_t, %union.kmp_cmplrdata_t }
%union.kmp_cmplrdata_t = type { i32 (i32, i8*)* }
%struct.kmp_task_t_with_privates.1 = type { %struct.kmp_task_t }
%struct.kmp_task_t_with_privates.3 = type { %struct.kmp_task_t }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [70 x i8] c";integration/dataracebench/DRB133-taskdep5-orig-omp45-no.c;foo;24;3;;\00", align 1
@2 = private unnamed_addr constant [70 x i8] c";integration/dataracebench/DRB133-taskdep5-orig-omp45-no.c;foo;27;3;;\00", align 1
@3 = private unnamed_addr constant [70 x i8] c";integration/dataracebench/DRB133-taskdep5-orig-omp45-no.c;foo;30;3;;\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"x=%d\0A\00", align 1
@4 = private unnamed_addr constant [70 x i8] c";integration/dataracebench/DRB133-taskdep5-orig-omp45-no.c;foo;35;3;;\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"y=%d\0A\00", align 1
@5 = private unnamed_addr constant [71 x i8] c";integration/dataracebench/DRB133-taskdep5-orig-omp45-no.c;main;42;3;;\00", align 1
@6 = private unnamed_addr constant [71 x i8] c";integration/dataracebench/DRB133-taskdep5-orig-omp45-no.c;main;41;3;;\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @foo() #0 !dbg !7 {
entry:
  %x = alloca i32, align 4
  %y = alloca i32, align 4
  %agg.captured = alloca %struct.anon, align 8
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %.dep.arr.addr = alloca [1 x %struct.kmp_depend_info], align 8
  %agg.captured1 = alloca %struct.anon.0, align 8
  %.dep.arr.addr2 = alloca [2 x %struct.kmp_depend_info], align 8
  %agg.captured3 = alloca %struct.anon.2, align 1
  %.dep.arr.addr4 = alloca [1 x %struct.kmp_depend_info], align 8
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
  %24 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %agg.captured1, i32 0, i32 1, !dbg !35
  store i32* %x, i32** %24, align 8, !dbg !35, !tbaa !25
  %25 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !35
  store i8* getelementptr inbounds ([70 x i8], [70 x i8]* @2, i32 0, i32 0), i8** %25, align 8, !dbg !35, !tbaa !14
  %26 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* %.kmpc_loc.addr, i32 %3, i32 1, i64 40, i64 16, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates.1*)* @.omp_task_entry..2 to i32 (i32, i8*)*)), !dbg !35
  %27 = bitcast i8* %26 to %struct.kmp_task_t_with_privates.1*, !dbg !35
  %28 = getelementptr inbounds %struct.kmp_task_t_with_privates.1, %struct.kmp_task_t_with_privates.1* %27, i32 0, i32 0, !dbg !35
  %29 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %28, i32 0, i32 0, !dbg !35
  %30 = load i8*, i8** %29, align 8, !dbg !35, !tbaa !26
  %31 = bitcast %struct.anon.0* %agg.captured1 to i8*, !dbg !35
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %30, i8* align 8 %31, i64 16, i1 false), !dbg !35, !tbaa.struct !36
  %32 = getelementptr inbounds [2 x %struct.kmp_depend_info], [2 x %struct.kmp_depend_info]* %.dep.arr.addr2, i64 0, i64 0, !dbg !35
  %33 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %32, i32 0, i32 0, !dbg !35
  %34 = ptrtoint i32* %x to i64, !dbg !35
  store i64 %34, i64* %33, align 8, !dbg !35, !tbaa !30
  %35 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %32, i32 0, i32 1, !dbg !35
  store i64 4, i64* %35, align 8, !dbg !35, !tbaa !33
  %36 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %32, i32 0, i32 2, !dbg !35
  store i8 1, i8* %36, align 8, !dbg !35, !tbaa !34
  %37 = getelementptr inbounds [2 x %struct.kmp_depend_info], [2 x %struct.kmp_depend_info]* %.dep.arr.addr2, i64 0, i64 1, !dbg !35
  %38 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %37, i32 0, i32 0, !dbg !35
  %39 = ptrtoint i32* %y to i64, !dbg !35
  store i64 %39, i64* %38, align 8, !dbg !35, !tbaa !30
  %40 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %37, i32 0, i32 1, !dbg !35
  store i64 4, i64* %40, align 8, !dbg !35, !tbaa !33
  %41 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %37, i32 0, i32 2, !dbg !35
  store i8 3, i8* %41, align 8, !dbg !35, !tbaa !34
  %42 = getelementptr inbounds [2 x %struct.kmp_depend_info], [2 x %struct.kmp_depend_info]* %.dep.arr.addr2, i64 0, i64 0, !dbg !35
  %43 = bitcast %struct.kmp_depend_info* %42 to i8*, !dbg !35
  %44 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !35
  store i8* getelementptr inbounds ([70 x i8], [70 x i8]* @2, i32 0, i32 0), i8** %44, align 8, !dbg !35, !tbaa !14
  %45 = call i32 @__kmpc_omp_task_with_deps(%struct.ident_t* %.kmpc_loc.addr, i32 %3, i8* %26, i32 2, i8* %43, i32 0, i8* null), !dbg !35
  %46 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !37
  store i8* getelementptr inbounds ([70 x i8], [70 x i8]* @3, i32 0, i32 0), i8** %46, align 8, !dbg !37, !tbaa !14
  %47 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* %.kmpc_loc.addr, i32 %3, i32 1, i64 40, i64 0, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates.3*)* @.omp_task_entry..4 to i32 (i32, i8*)*)), !dbg !37
  %48 = bitcast i8* %47 to %struct.kmp_task_t_with_privates.3*, !dbg !37
  %49 = getelementptr inbounds %struct.kmp_task_t_with_privates.3, %struct.kmp_task_t_with_privates.3* %48, i32 0, i32 0, !dbg !37
  %50 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %.dep.arr.addr4, i64 0, i64 0, !dbg !37
  %51 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %50, i32 0, i32 0, !dbg !37
  %52 = ptrtoint i32* %x to i64, !dbg !37
  store i64 %52, i64* %51, align 8, !dbg !37, !tbaa !30
  %53 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %50, i32 0, i32 1, !dbg !37
  store i64 4, i64* %53, align 8, !dbg !37, !tbaa !33
  %54 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %50, i32 0, i32 2, !dbg !37
  store i8 1, i8* %54, align 8, !dbg !37, !tbaa !34
  %55 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %.dep.arr.addr4, i64 0, i64 0, !dbg !37
  %56 = bitcast %struct.kmp_depend_info* %55 to i8*, !dbg !37
  %57 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !37
  store i8* getelementptr inbounds ([70 x i8], [70 x i8]* @3, i32 0, i32 0), i8** %57, align 8, !dbg !37, !tbaa !14
  call void @__kmpc_omp_wait_deps(%struct.ident_t* %.kmpc_loc.addr, i32 %3, i32 1, i8* %56, i32 0, i8* null), !dbg !38
  call void @__kmpc_omp_task_begin_if0(%struct.ident_t* %.kmpc_loc.addr, i32 %3, i8* %47), !dbg !38
  %58 = call i32 @.omp_task_entry..4(i32 %3, %struct.kmp_task_t_with_privates.3* %48) #6, !dbg !40
  call void @__kmpc_omp_task_complete_if0(%struct.ident_t* %.kmpc_loc.addr, i32 %3, i8* %47), !dbg !38
  %59 = load i32, i32* %x, align 4, !dbg !42, !tbaa !22
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %59), !dbg !43
  %60 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !44
  store i8* getelementptr inbounds ([70 x i8], [70 x i8]* @4, i32 0, i32 0), i8** %60, align 8, !dbg !44, !tbaa !14
  %61 = call i32 @__kmpc_omp_taskwait(%struct.ident_t* %.kmpc_loc.addr, i32 %3), !dbg !44
  %62 = load i32, i32* %y, align 4, !dbg !45, !tbaa !22
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %62), !dbg !46
  %63 = bitcast i32* %y to i8*, !dbg !47
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %63) #6, !dbg !47
  %64 = bitcast i32* %x to i8*, !dbg !47
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %64) #6, !dbg !47
  ret void, !dbg !47
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: alwaysinline nounwind uwtable
define internal void @.omp_outlined.(i32 %.global_tid., i32* noalias %.part_id., i8* noalias %.privates., void (i8*, ...)* noalias %.copy_fn., i8* %.task_t., %struct.anon* noalias %__context) #3 !dbg !48 {
entry:
  %.global_tid..addr = alloca i32, align 4
  %.part_id..addr = alloca i32*, align 8
  %.privates..addr = alloca i8*, align 8
  %.copy_fn..addr = alloca void (i8*, ...)*, align 8
  %.task_t..addr = alloca i8*, align 8
  %__context.addr = alloca %struct.anon*, align 8
  store i32 %.global_tid., i32* %.global_tid..addr, align 4, !tbaa !22
  call void @llvm.dbg.declare(metadata i32* %.global_tid..addr, metadata !69, metadata !DIExpression()), !dbg !75
  store i32* %.part_id., i32** %.part_id..addr, align 8, !tbaa !25
  call void @llvm.dbg.declare(metadata i32** %.part_id..addr, metadata !70, metadata !DIExpression()), !dbg !75
  store i8* %.privates., i8** %.privates..addr, align 8, !tbaa !25
  call void @llvm.dbg.declare(metadata i8** %.privates..addr, metadata !71, metadata !DIExpression()), !dbg !75
  store void (i8*, ...)* %.copy_fn., void (i8*, ...)** %.copy_fn..addr, align 8, !tbaa !25
  call void @llvm.dbg.declare(metadata void (i8*, ...)** %.copy_fn..addr, metadata !72, metadata !DIExpression()), !dbg !75
  store i8* %.task_t., i8** %.task_t..addr, align 8, !tbaa !25
  call void @llvm.dbg.declare(metadata i8** %.task_t..addr, metadata !73, metadata !DIExpression()), !dbg !75
  store %struct.anon* %__context, %struct.anon** %__context.addr, align 8, !tbaa !25
  call void @llvm.dbg.declare(metadata %struct.anon** %__context.addr, metadata !74, metadata !DIExpression()), !dbg !75
  %0 = load %struct.anon*, %struct.anon** %__context.addr, align 8, !dbg !76
  %1 = getelementptr inbounds %struct.anon, %struct.anon* %0, i32 0, i32 0, !dbg !76
  %2 = load i32*, i32** %1, align 8, !dbg !76, !tbaa !77
  %3 = load i32, i32* %2, align 4, !dbg !79, !tbaa !22
  %inc = add nsw i32 %3, 1, !dbg !79
  store i32 %inc, i32* %2, align 4, !dbg !79, !tbaa !22
  ret void, !dbg !79
}

; Function Attrs: norecurse nounwind uwtable
define internal i32 @.omp_task_entry.(i32 %0, %struct.kmp_task_t_with_privates* noalias %1) #4 !dbg !80 {
entry:
  %.addr = alloca i32, align 4
  %.addr1 = alloca %struct.kmp_task_t_with_privates*, align 8
  store i32 %0, i32* %.addr, align 4, !tbaa !22
  call void @llvm.dbg.declare(metadata i32* %.addr, metadata !83, metadata !DIExpression()), !dbg !95
  store %struct.kmp_task_t_with_privates* %1, %struct.kmp_task_t_with_privates** %.addr1, align 8, !tbaa !25
  call void @llvm.dbg.declare(metadata %struct.kmp_task_t_with_privates** %.addr1, metadata !84, metadata !DIExpression()), !dbg !95
  %2 = load i32, i32* %.addr, align 4, !dbg !96, !tbaa !22
  %3 = load %struct.kmp_task_t_with_privates*, %struct.kmp_task_t_with_privates** %.addr1, align 8, !dbg !96
  %4 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %3, i32 0, i32 0, !dbg !96
  %5 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 2, !dbg !96
  %6 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 0, !dbg !96
  %7 = load i8*, i8** %6, align 8, !dbg !96, !tbaa !26
  %8 = bitcast i8* %7 to %struct.anon*, !dbg !96
  %9 = bitcast %struct.kmp_task_t_with_privates* %3 to i8*, !dbg !96
  call void @.omp_outlined.(i32 %2, i32* %5, i8* null, void (i8*, ...)* null, i8* %9, %struct.anon* %8) #6, !dbg !96
  ret i32 0, !dbg !96
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @__kmpc_global_thread_num(%struct.ident_t*)

declare dso_local i8* @__kmpc_omp_task_alloc(%struct.ident_t*, i32, i32, i64, i64, i32 (i32, i8*)*)

declare dso_local i32 @__kmpc_omp_task_with_deps(%struct.ident_t*, i32, i8*, i32, i8*, i32, i8*)

; Function Attrs: alwaysinline nounwind uwtable
define internal void @.omp_outlined..1(i32 %.global_tid., i32* noalias %.part_id., i8* noalias %.privates., void (i8*, ...)* noalias %.copy_fn., i8* %.task_t., %struct.anon.0* noalias %__context) #3 !dbg !97 {
entry:
  %.global_tid..addr = alloca i32, align 4
  %.part_id..addr = alloca i32*, align 8
  %.privates..addr = alloca i8*, align 8
  %.copy_fn..addr = alloca void (i8*, ...)*, align 8
  %.task_t..addr = alloca i8*, align 8
  %__context.addr = alloca %struct.anon.0*, align 8
  store i32 %.global_tid., i32* %.global_tid..addr, align 4, !tbaa !22
  call void @llvm.dbg.declare(metadata i32* %.global_tid..addr, metadata !105, metadata !DIExpression()), !dbg !111
  store i32* %.part_id., i32** %.part_id..addr, align 8, !tbaa !25
  call void @llvm.dbg.declare(metadata i32** %.part_id..addr, metadata !106, metadata !DIExpression()), !dbg !111
  store i8* %.privates., i8** %.privates..addr, align 8, !tbaa !25
  call void @llvm.dbg.declare(metadata i8** %.privates..addr, metadata !107, metadata !DIExpression()), !dbg !111
  store void (i8*, ...)* %.copy_fn., void (i8*, ...)** %.copy_fn..addr, align 8, !tbaa !25
  call void @llvm.dbg.declare(metadata void (i8*, ...)** %.copy_fn..addr, metadata !108, metadata !DIExpression()), !dbg !111
  store i8* %.task_t., i8** %.task_t..addr, align 8, !tbaa !25
  call void @llvm.dbg.declare(metadata i8** %.task_t..addr, metadata !109, metadata !DIExpression()), !dbg !111
  store %struct.anon.0* %__context, %struct.anon.0** %__context.addr, align 8, !tbaa !25
  call void @llvm.dbg.declare(metadata %struct.anon.0** %__context.addr, metadata !110, metadata !DIExpression()), !dbg !111
  %0 = load %struct.anon.0*, %struct.anon.0** %__context.addr, align 8, !dbg !112
  %1 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %0, i32 0, i32 0, !dbg !113
  %2 = load i32*, i32** %1, align 8, !dbg !113, !tbaa !114
  %3 = load i32, i32* %2, align 4, !dbg !113, !tbaa !22
  %4 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %0, i32 0, i32 1, !dbg !116
  %5 = load i32*, i32** %4, align 8, !dbg !116, !tbaa !117
  %6 = load i32, i32* %5, align 4, !dbg !116, !tbaa !22
  %sub = sub nsw i32 %3, %6, !dbg !118
  %7 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %0, i32 0, i32 0, !dbg !112
  %8 = load i32*, i32** %7, align 8, !dbg !112, !tbaa !114
  store i32 %sub, i32* %8, align 4, !dbg !119, !tbaa !22
  ret void, !dbg !116
}

; Function Attrs: norecurse nounwind uwtable
define internal i32 @.omp_task_entry..2(i32 %0, %struct.kmp_task_t_with_privates.1* noalias %1) #4 !dbg !120 {
entry:
  %.addr = alloca i32, align 4
  %.addr1 = alloca %struct.kmp_task_t_with_privates.1*, align 8
  store i32 %0, i32* %.addr, align 4, !tbaa !22
  call void @llvm.dbg.declare(metadata i32* %.addr, metadata !122, metadata !DIExpression()), !dbg !129
  store %struct.kmp_task_t_with_privates.1* %1, %struct.kmp_task_t_with_privates.1** %.addr1, align 8, !tbaa !25
  call void @llvm.dbg.declare(metadata %struct.kmp_task_t_with_privates.1** %.addr1, metadata !123, metadata !DIExpression()), !dbg !129
  %2 = load i32, i32* %.addr, align 4, !dbg !130, !tbaa !22
  %3 = load %struct.kmp_task_t_with_privates.1*, %struct.kmp_task_t_with_privates.1** %.addr1, align 8, !dbg !130
  %4 = getelementptr inbounds %struct.kmp_task_t_with_privates.1, %struct.kmp_task_t_with_privates.1* %3, i32 0, i32 0, !dbg !130
  %5 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 2, !dbg !130
  %6 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 0, !dbg !130
  %7 = load i8*, i8** %6, align 8, !dbg !130, !tbaa !26
  %8 = bitcast i8* %7 to %struct.anon.0*, !dbg !130
  %9 = bitcast %struct.kmp_task_t_with_privates.1* %3 to i8*, !dbg !130
  call void @.omp_outlined..1(i32 %2, i32* %5, i8* null, void (i8*, ...)* null, i8* %9, %struct.anon.0* %8) #6, !dbg !130
  ret i32 0, !dbg !130
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @.omp_outlined..3(i32 %.global_tid., i32* noalias %.part_id., i8* noalias %.privates., void (i8*, ...)* noalias %.copy_fn., i8* %.task_t., %struct.anon.2* noalias %__context) #3 !dbg !131 {
entry:
  %.global_tid..addr = alloca i32, align 4
  %.part_id..addr = alloca i32*, align 8
  %.privates..addr = alloca i8*, align 8
  %.copy_fn..addr = alloca void (i8*, ...)*, align 8
  %.task_t..addr = alloca i8*, align 8
  %__context.addr = alloca %struct.anon.2*, align 8
  store i32 %.global_tid., i32* %.global_tid..addr, align 4, !tbaa !22
  call void @llvm.dbg.declare(metadata i32* %.global_tid..addr, metadata !139, metadata !DIExpression()), !dbg !145
  store i32* %.part_id., i32** %.part_id..addr, align 8, !tbaa !25
  call void @llvm.dbg.declare(metadata i32** %.part_id..addr, metadata !140, metadata !DIExpression()), !dbg !145
  store i8* %.privates., i8** %.privates..addr, align 8, !tbaa !25
  call void @llvm.dbg.declare(metadata i8** %.privates..addr, metadata !141, metadata !DIExpression()), !dbg !145
  store void (i8*, ...)* %.copy_fn., void (i8*, ...)** %.copy_fn..addr, align 8, !tbaa !25
  call void @llvm.dbg.declare(metadata void (i8*, ...)** %.copy_fn..addr, metadata !142, metadata !DIExpression()), !dbg !145
  store i8* %.task_t., i8** %.task_t..addr, align 8, !tbaa !25
  call void @llvm.dbg.declare(metadata i8** %.task_t..addr, metadata !143, metadata !DIExpression()), !dbg !145
  store %struct.anon.2* %__context, %struct.anon.2** %__context.addr, align 8, !tbaa !25
  call void @llvm.dbg.declare(metadata %struct.anon.2** %__context.addr, metadata !144, metadata !DIExpression()), !dbg !145
  %0 = load %struct.anon.2*, %struct.anon.2** %__context.addr, align 8, !dbg !146
  ret void, !dbg !147
}

; Function Attrs: norecurse nounwind uwtable
define internal i32 @.omp_task_entry..4(i32 %0, %struct.kmp_task_t_with_privates.3* noalias %1) #4 !dbg !148 {
entry:
  %.addr = alloca i32, align 4
  %.addr1 = alloca %struct.kmp_task_t_with_privates.3*, align 8
  store i32 %0, i32* %.addr, align 4, !tbaa !22
  call void @llvm.dbg.declare(metadata i32* %.addr, metadata !150, metadata !DIExpression()), !dbg !157
  store %struct.kmp_task_t_with_privates.3* %1, %struct.kmp_task_t_with_privates.3** %.addr1, align 8, !tbaa !25
  call void @llvm.dbg.declare(metadata %struct.kmp_task_t_with_privates.3** %.addr1, metadata !151, metadata !DIExpression()), !dbg !157
  %2 = load i32, i32* %.addr, align 4, !dbg !158, !tbaa !22
  %3 = load %struct.kmp_task_t_with_privates.3*, %struct.kmp_task_t_with_privates.3** %.addr1, align 8, !dbg !158
  %4 = getelementptr inbounds %struct.kmp_task_t_with_privates.3, %struct.kmp_task_t_with_privates.3* %3, i32 0, i32 0, !dbg !158
  %5 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 2, !dbg !158
  %6 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 0, !dbg !158
  %7 = load i8*, i8** %6, align 8, !dbg !158, !tbaa !26
  %8 = bitcast i8* %7 to %struct.anon.2*, !dbg !158
  %9 = bitcast %struct.kmp_task_t_with_privates.3* %3 to i8*, !dbg !158
  call void @.omp_outlined..3(i32 %2, i32* %5, i8* null, void (i8*, ...)* null, i8* %9, %struct.anon.2* %8) #6, !dbg !158
  ret i32 0, !dbg !158
}

declare dso_local void @__kmpc_omp_wait_deps(%struct.ident_t*, i32, i32, i8*, i32, i8*)

declare dso_local void @__kmpc_omp_task_complete_if0(%struct.ident_t*, i32, i8*)

declare dso_local void @__kmpc_omp_task_begin_if0(%struct.ident_t*, i32, i8*)

declare dso_local i32 @printf(i8*, ...) #5

declare dso_local i32 @__kmpc_omp_taskwait(%struct.ident_t*, i32)

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @main() #0 !dbg !159 {
entry:
  %retval = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32 0, i32* %retval, align 4
  %2 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !162
  store i8* getelementptr inbounds ([71 x i8], [71 x i8]* @6, i32 0, i32 0), i8** %2, align 8, !dbg !162, !tbaa !14
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 0, void (i32*, i32*, ...)* bitcast (void (i32*, i32*)* @.omp_outlined..7 to void (i32*, i32*, ...)*)), !dbg !162
  ret i32 0, !dbg !163
}

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid.) #4 !dbg !164 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !25
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !168, metadata !DIExpression()), !dbg !170
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !25
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !169, metadata !DIExpression()), !dbg !170
  %2 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !171
  store i8* getelementptr inbounds ([71 x i8], [71 x i8]* @5, i32 0, i32 0), i8** %2, align 8, !dbg !171, !tbaa !14
  %3 = load i32*, i32** %.global_tid..addr, align 8, !dbg !171
  %4 = load i32, i32* %3, align 4, !dbg !171, !tbaa !22
  %5 = call i32 @__kmpc_single(%struct.ident_t* %.kmpc_loc.addr, i32 %4), !dbg !171
  %6 = icmp ne i32 %5, 0, !dbg !171
  br i1 %6, label %omp_if.then, label %omp_if.end, !dbg !171

omp_if.then:                                      ; preds = %entry
  call void @foo(), !dbg !172
  call void @__kmpc_end_single(%struct.ident_t* %.kmpc_loc.addr, i32 %4), !dbg !172
  br label %omp_if.end, !dbg !172

omp_if.end:                                       ; preds = %omp_if.then, %entry
  %7 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !174
  store i8* getelementptr inbounds ([71 x i8], [71 x i8]* @5, i32 0, i32 0), i8** %7, align 8, !dbg !174, !tbaa !14
  call void @__kmpc_barrier(%struct.ident_t* %.kmpc_loc.addr, i32 %4), !dbg !174
  ret void, !dbg !175
}

declare dso_local void @__kmpc_end_single(%struct.ident_t*, i32)

declare dso_local i32 @__kmpc_single(%struct.ident_t*, i32)

declare dso_local void @__kmpc_barrier(%struct.ident_t*, i32)

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined..7(i32* noalias %.global_tid., i32* noalias %.bound_tid.) #4 !dbg !176 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !25
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !178, metadata !DIExpression()), !dbg !180
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !25
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !179, metadata !DIExpression()), !dbg !180
  %0 = load i32*, i32** %.global_tid..addr, align 8, !dbg !181, !tbaa !25
  %1 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !181, !tbaa !25
  call void @.omp_outlined._debug__(i32* %0, i32* %1) #6, !dbg !181
  ret void, !dbg !181
}

declare !callback !182 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

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
!1 = !DIFile(filename: "integration/dataracebench/DRB133-taskdep5-orig-omp45-no.c", directory: "/home/brad/Code/OpenRace/tests/data")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.1 "}
!7 = distinct !DISubprogram(name: "foo", scope: !1, file: !1, line: 21, type: !8, scopeLine: 21, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!8 = !DISubroutineType(types: !9)
!9 = !{null}
!10 = !{!11, !13}
!11 = !DILocalVariable(name: "x", scope: !7, file: !1, line: 22, type: !12)
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !DILocalVariable(name: "y", scope: !7, file: !1, line: 22, type: !12)
!14 = !{!15, !19, i64 16}
!15 = !{!"ident_t", !16, i64 0, !16, i64 4, !16, i64 8, !16, i64 12, !19, i64 16}
!16 = !{!"int", !17, i64 0}
!17 = !{!"omnipotent char", !18, i64 0}
!18 = !{!"Simple C/C++ TBAA"}
!19 = !{!"any pointer", !17, i64 0}
!20 = !DILocation(line: 22, column: 3, scope: !7)
!21 = !DILocation(line: 22, column: 7, scope: !7)
!22 = !{!16, !16, i64 0}
!23 = !DILocation(line: 22, column: 14, scope: !7)
!24 = !DILocation(line: 24, column: 3, scope: !7)
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
!35 = !DILocation(line: 27, column: 3, scope: !7)
!36 = !{i64 0, i64 8, !25, i64 8, i64 8, !25}
!37 = !DILocation(line: 30, column: 3, scope: !7)
!38 = !DILocation(line: 30, column: 37, scope: !39)
!39 = distinct !DILexicalBlock(scope: !7, file: !1, line: 30, column: 3)
!40 = !DILocation(line: 30, column: 3, scope: !41)
!41 = distinct !DILexicalBlock(scope: !39, file: !1, line: 30, column: 37)
!42 = !DILocation(line: 33, column: 19, scope: !7)
!43 = !DILocation(line: 33, column: 3, scope: !7)
!44 = !DILocation(line: 35, column: 3, scope: !7)
!45 = !DILocation(line: 37, column: 19, scope: !7)
!46 = !DILocation(line: 37, column: 3, scope: !7)
!47 = !DILocation(line: 38, column: 1, scope: !7)
!48 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 25, type: !49, scopeLine: 25, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !68)
!49 = !DISubroutineType(types: !50)
!50 = !{null, !51, !52, !55, !58, !63, !64}
!51 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!52 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !53)
!53 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !54)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !56)
!56 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !57)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !59)
!59 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !60)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DISubroutineType(types: !62)
!62 = !{null, !55, null}
!63 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !57)
!64 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !65)
!65 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !66)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !7, file: !1, line: 24, size: 64, elements: !2)
!68 = !{!69, !70, !71, !72, !73, !74}
!69 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !48, type: !51, flags: DIFlagArtificial)
!70 = !DILocalVariable(name: ".part_id.", arg: 2, scope: !48, type: !52, flags: DIFlagArtificial)
!71 = !DILocalVariable(name: ".privates.", arg: 3, scope: !48, type: !55, flags: DIFlagArtificial)
!72 = !DILocalVariable(name: ".copy_fn.", arg: 4, scope: !48, type: !58, flags: DIFlagArtificial)
!73 = !DILocalVariable(name: ".task_t.", arg: 5, scope: !48, type: !63, flags: DIFlagArtificial)
!74 = !DILocalVariable(name: "__context", arg: 6, scope: !48, type: !64, flags: DIFlagArtificial)
!75 = !DILocation(line: 0, scope: !48)
!76 = !DILocation(line: 25, column: 3, scope: !48)
!77 = !{!78, !19, i64 0}
!78 = !{!"", !19, i64 0}
!79 = !DILocation(line: 25, column: 4, scope: !48)
!80 = distinct !DISubprogram(linkageName: ".omp_task_entry.", scope: !1, file: !1, line: 24, type: !81, scopeLine: 24, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !82)
!81 = !DISubroutineType(types: !2)
!82 = !{!83, !84}
!83 = !DILocalVariable(arg: 1, scope: !80, type: !12, flags: DIFlagArtificial)
!84 = !DILocalVariable(arg: 2, scope: !80, type: !85, flags: DIFlagArtificial)
!85 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !86)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t_with_privates", file: !1, size: 320, elements: !88)
!88 = !{!89}
!89 = !DIDerivedType(tag: DW_TAG_member, scope: !87, file: !1, baseType: !90, size: 320)
!90 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t", file: !1, size: 320, elements: !91)
!91 = !{!92, !94}
!92 = !DIDerivedType(tag: DW_TAG_member, scope: !90, file: !1, baseType: !93, size: 64, offset: 192)
!93 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "kmp_cmplrdata_t", file: !1, size: 64, elements: !2)
!94 = !DIDerivedType(tag: DW_TAG_member, scope: !90, file: !1, baseType: !93, size: 64, offset: 256)
!95 = !DILocation(line: 0, scope: !80)
!96 = !DILocation(line: 24, column: 3, scope: !80)
!97 = distinct !DISubprogram(name: ".omp_outlined..1", scope: !1, file: !1, line: 28, type: !98, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !104)
!98 = !DISubroutineType(types: !99)
!99 = !{null, !51, !52, !55, !58, !63, !100}
!100 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !101)
!101 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !102)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!103 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !7, file: !1, line: 27, size: 128, elements: !2)
!104 = !{!105, !106, !107, !108, !109, !110}
!105 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !97, type: !51, flags: DIFlagArtificial)
!106 = !DILocalVariable(name: ".part_id.", arg: 2, scope: !97, type: !52, flags: DIFlagArtificial)
!107 = !DILocalVariable(name: ".privates.", arg: 3, scope: !97, type: !55, flags: DIFlagArtificial)
!108 = !DILocalVariable(name: ".copy_fn.", arg: 4, scope: !97, type: !58, flags: DIFlagArtificial)
!109 = !DILocalVariable(name: ".task_t.", arg: 5, scope: !97, type: !63, flags: DIFlagArtificial)
!110 = !DILocalVariable(name: "__context", arg: 6, scope: !97, type: !100, flags: DIFlagArtificial)
!111 = !DILocation(line: 0, scope: !97)
!112 = !DILocation(line: 28, column: 3, scope: !97)
!113 = !DILocation(line: 28, column: 7, scope: !97)
!114 = !{!115, !19, i64 0}
!115 = !{!"", !19, i64 0, !19, i64 8}
!116 = !DILocation(line: 28, column: 9, scope: !97)
!117 = !{!115, !19, i64 8}
!118 = !DILocation(line: 28, column: 8, scope: !97)
!119 = !DILocation(line: 28, column: 5, scope: !97)
!120 = distinct !DISubprogram(linkageName: ".omp_task_entry..2", scope: !1, file: !1, line: 27, type: !81, scopeLine: 27, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !121)
!121 = !{!122, !123}
!122 = !DILocalVariable(arg: 1, scope: !120, type: !12, flags: DIFlagArtificial)
!123 = !DILocalVariable(arg: 2, scope: !120, type: !124, flags: DIFlagArtificial)
!124 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !125)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t_with_privates", file: !1, size: 320, elements: !127)
!127 = !{!128}
!128 = !DIDerivedType(tag: DW_TAG_member, scope: !126, file: !1, baseType: !90, size: 320)
!129 = !DILocation(line: 0, scope: !120)
!130 = !DILocation(line: 27, column: 3, scope: !120)
!131 = distinct !DISubprogram(name: ".omp_outlined..3", scope: !1, file: !1, line: 30, type: !132, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !138)
!132 = !DISubroutineType(types: !133)
!133 = !{null, !51, !52, !55, !58, !63, !134}
!134 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !135)
!135 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !136)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !7, file: !1, line: 30, elements: !2)
!138 = !{!139, !140, !141, !142, !143, !144}
!139 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !131, type: !51, flags: DIFlagArtificial)
!140 = !DILocalVariable(name: ".part_id.", arg: 2, scope: !131, type: !52, flags: DIFlagArtificial)
!141 = !DILocalVariable(name: ".privates.", arg: 3, scope: !131, type: !55, flags: DIFlagArtificial)
!142 = !DILocalVariable(name: ".copy_fn.", arg: 4, scope: !131, type: !58, flags: DIFlagArtificial)
!143 = !DILocalVariable(name: ".task_t.", arg: 5, scope: !131, type: !63, flags: DIFlagArtificial)
!144 = !DILocalVariable(name: "__context", arg: 6, scope: !131, type: !134, flags: DIFlagArtificial)
!145 = !DILocation(line: 0, scope: !131)
!146 = !DILocation(line: 31, column: 3, scope: !131)
!147 = !DILocation(line: 31, column: 4, scope: !131)
!148 = distinct !DISubprogram(linkageName: ".omp_task_entry..4", scope: !1, file: !1, line: 30, type: !81, scopeLine: 30, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !149)
!149 = !{!150, !151}
!150 = !DILocalVariable(arg: 1, scope: !148, type: !12, flags: DIFlagArtificial)
!151 = !DILocalVariable(arg: 2, scope: !148, type: !152, flags: DIFlagArtificial)
!152 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !153)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t_with_privates", file: !1, size: 320, elements: !155)
!155 = !{!156}
!156 = !DIDerivedType(tag: DW_TAG_member, scope: !154, file: !1, baseType: !90, size: 320)
!157 = !DILocation(line: 0, scope: !148)
!158 = !DILocation(line: 30, column: 3, scope: !148)
!159 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 40, type: !160, scopeLine: 40, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!160 = !DISubroutineType(types: !161)
!161 = !{!12}
!162 = !DILocation(line: 41, column: 3, scope: !159)
!163 = !DILocation(line: 45, column: 3, scope: !159)
!164 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 42, type: !165, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !167)
!165 = !DISubroutineType(types: !166)
!166 = !{null, !52, !52}
!167 = !{!168, !169}
!168 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !164, type: !52, flags: DIFlagArtificial)
!169 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !164, type: !52, flags: DIFlagArtificial)
!170 = !DILocation(line: 0, scope: !164)
!171 = !DILocation(line: 42, column: 3, scope: !164)
!172 = !DILocation(line: 43, column: 3, scope: !173)
!173 = distinct !DILexicalBlock(scope: !164, file: !1, line: 42, column: 3)
!174 = !DILocation(line: 42, column: 21, scope: !173)
!175 = !DILocation(line: 42, column: 21, scope: !164)
!176 = distinct !DISubprogram(name: ".omp_outlined..7", scope: !1, file: !1, line: 42, type: !165, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !177)
!177 = !{!178, !179}
!178 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !176, type: !52, flags: DIFlagArtificial)
!179 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !176, type: !52, flags: DIFlagArtificial)
!180 = !DILocation(line: 0, scope: !176)
!181 = !DILocation(line: 42, column: 3, scope: !176)
!182 = !{!183}
!183 = !{i64 2, i64 -1, i64 -1, i1 true}
