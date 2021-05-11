; ModuleID = 'integration/dataracebench/DRB134-taskdep5-orig-omp45-yes.c'
source_filename = "integration/dataracebench/DRB134-taskdep5-orig-omp45-yes.c"
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
@1 = private unnamed_addr constant [71 x i8] c";integration/dataracebench/DRB134-taskdep5-orig-omp45-yes.c;foo;24;3;;\00", align 1
@2 = private unnamed_addr constant [71 x i8] c";integration/dataracebench/DRB134-taskdep5-orig-omp45-yes.c;foo;27;3;;\00", align 1
@3 = private unnamed_addr constant [71 x i8] c";integration/dataracebench/DRB134-taskdep5-orig-omp45-yes.c;foo;30;3;;\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"x=%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"y=%d\0A\00", align 1
@4 = private unnamed_addr constant [71 x i8] c";integration/dataracebench/DRB134-taskdep5-orig-omp45-yes.c;foo;36;3;;\00", align 1
@5 = private unnamed_addr constant [72 x i8] c";integration/dataracebench/DRB134-taskdep5-orig-omp45-yes.c;main;42;3;;\00", align 1
@6 = private unnamed_addr constant [72 x i8] c";integration/dataracebench/DRB134-taskdep5-orig-omp45-yes.c;main;41;3;;\00", align 1

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
  store i8* getelementptr inbounds ([71 x i8], [71 x i8]* @1, i32 0, i32 0), i8** %2, align 8, !tbaa !14
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
  store i8* getelementptr inbounds ([71 x i8], [71 x i8]* @1, i32 0, i32 0), i8** %7, align 8, !dbg !24, !tbaa !14
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
  store i8* getelementptr inbounds ([71 x i8], [71 x i8]* @1, i32 0, i32 0), i8** %21, align 8, !dbg !24, !tbaa !14
  %22 = call i32 @__kmpc_omp_task_with_deps(%struct.ident_t* %.kmpc_loc.addr, i32 %3, i8* %8, i32 1, i8* %20, i32 0, i8* null), !dbg !24
  %23 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %agg.captured1, i32 0, i32 0, !dbg !35
  store i32* %y, i32** %23, align 8, !dbg !35, !tbaa !25
  %24 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %agg.captured1, i32 0, i32 1, !dbg !35
  store i32* %x, i32** %24, align 8, !dbg !35, !tbaa !25
  %25 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !35
  store i8* getelementptr inbounds ([71 x i8], [71 x i8]* @2, i32 0, i32 0), i8** %25, align 8, !dbg !35, !tbaa !14
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
  store i8* getelementptr inbounds ([71 x i8], [71 x i8]* @2, i32 0, i32 0), i8** %44, align 8, !dbg !35, !tbaa !14
  %45 = call i32 @__kmpc_omp_task_with_deps(%struct.ident_t* %.kmpc_loc.addr, i32 %3, i8* %26, i32 2, i8* %43, i32 0, i8* null), !dbg !35
  %46 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !37
  store i8* getelementptr inbounds ([71 x i8], [71 x i8]* @3, i32 0, i32 0), i8** %46, align 8, !dbg !37, !tbaa !14
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
  store i8* getelementptr inbounds ([71 x i8], [71 x i8]* @3, i32 0, i32 0), i8** %57, align 8, !dbg !37, !tbaa !14
  call void @__kmpc_omp_wait_deps(%struct.ident_t* %.kmpc_loc.addr, i32 %3, i32 1, i8* %56, i32 0, i8* null), !dbg !38
  call void @__kmpc_omp_task_begin_if0(%struct.ident_t* %.kmpc_loc.addr, i32 %3, i8* %47), !dbg !38
  %58 = call i32 @.omp_task_entry..4(i32 %3, %struct.kmp_task_t_with_privates.3* %48) #6, !dbg !40
  call void @__kmpc_omp_task_complete_if0(%struct.ident_t* %.kmpc_loc.addr, i32 %3, i8* %47), !dbg !38
  %59 = load i32, i32* %x, align 4, !dbg !42, !tbaa !22
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %59), !dbg !43
  %60 = load i32, i32* %y, align 4, !dbg !44, !tbaa !22
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %60), !dbg !45
  %61 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !46
  store i8* getelementptr inbounds ([71 x i8], [71 x i8]* @4, i32 0, i32 0), i8** %61, align 8, !dbg !46, !tbaa !14
  %62 = call i32 @__kmpc_omp_taskwait(%struct.ident_t* %.kmpc_loc.addr, i32 %3), !dbg !46
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
  %1 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %0, i32 0, i32 1, !dbg !113
  %2 = load i32*, i32** %1, align 8, !dbg !113, !tbaa !114
  %3 = load i32, i32* %2, align 4, !dbg !113, !tbaa !22
  %4 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %0, i32 0, i32 0, !dbg !112
  %5 = load i32*, i32** %4, align 8, !dbg !112, !tbaa !116
  %6 = load i32, i32* %5, align 4, !dbg !117, !tbaa !22
  %sub = sub nsw i32 %6, %3, !dbg !117
  store i32 %sub, i32* %5, align 4, !dbg !117, !tbaa !22
  ret void, !dbg !113
}

; Function Attrs: norecurse nounwind uwtable
define internal i32 @.omp_task_entry..2(i32 %0, %struct.kmp_task_t_with_privates.1* noalias %1) #4 !dbg !118 {
entry:
  %.addr = alloca i32, align 4
  %.addr1 = alloca %struct.kmp_task_t_with_privates.1*, align 8
  store i32 %0, i32* %.addr, align 4, !tbaa !22
  call void @llvm.dbg.declare(metadata i32* %.addr, metadata !120, metadata !DIExpression()), !dbg !127
  store %struct.kmp_task_t_with_privates.1* %1, %struct.kmp_task_t_with_privates.1** %.addr1, align 8, !tbaa !25
  call void @llvm.dbg.declare(metadata %struct.kmp_task_t_with_privates.1** %.addr1, metadata !121, metadata !DIExpression()), !dbg !127
  %2 = load i32, i32* %.addr, align 4, !dbg !128, !tbaa !22
  %3 = load %struct.kmp_task_t_with_privates.1*, %struct.kmp_task_t_with_privates.1** %.addr1, align 8, !dbg !128
  %4 = getelementptr inbounds %struct.kmp_task_t_with_privates.1, %struct.kmp_task_t_with_privates.1* %3, i32 0, i32 0, !dbg !128
  %5 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 2, !dbg !128
  %6 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 0, !dbg !128
  %7 = load i8*, i8** %6, align 8, !dbg !128, !tbaa !26
  %8 = bitcast i8* %7 to %struct.anon.0*, !dbg !128
  %9 = bitcast %struct.kmp_task_t_with_privates.1* %3 to i8*, !dbg !128
  call void @.omp_outlined..1(i32 %2, i32* %5, i8* null, void (i8*, ...)* null, i8* %9, %struct.anon.0* %8) #6, !dbg !128
  ret i32 0, !dbg !128
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @.omp_outlined..3(i32 %.global_tid., i32* noalias %.part_id., i8* noalias %.privates., void (i8*, ...)* noalias %.copy_fn., i8* %.task_t., %struct.anon.2* noalias %__context) #3 !dbg !129 {
entry:
  %.global_tid..addr = alloca i32, align 4
  %.part_id..addr = alloca i32*, align 8
  %.privates..addr = alloca i8*, align 8
  %.copy_fn..addr = alloca void (i8*, ...)*, align 8
  %.task_t..addr = alloca i8*, align 8
  %__context.addr = alloca %struct.anon.2*, align 8
  store i32 %.global_tid., i32* %.global_tid..addr, align 4, !tbaa !22
  call void @llvm.dbg.declare(metadata i32* %.global_tid..addr, metadata !137, metadata !DIExpression()), !dbg !143
  store i32* %.part_id., i32** %.part_id..addr, align 8, !tbaa !25
  call void @llvm.dbg.declare(metadata i32** %.part_id..addr, metadata !138, metadata !DIExpression()), !dbg !143
  store i8* %.privates., i8** %.privates..addr, align 8, !tbaa !25
  call void @llvm.dbg.declare(metadata i8** %.privates..addr, metadata !139, metadata !DIExpression()), !dbg !143
  store void (i8*, ...)* %.copy_fn., void (i8*, ...)** %.copy_fn..addr, align 8, !tbaa !25
  call void @llvm.dbg.declare(metadata void (i8*, ...)** %.copy_fn..addr, metadata !140, metadata !DIExpression()), !dbg !143
  store i8* %.task_t., i8** %.task_t..addr, align 8, !tbaa !25
  call void @llvm.dbg.declare(metadata i8** %.task_t..addr, metadata !141, metadata !DIExpression()), !dbg !143
  store %struct.anon.2* %__context, %struct.anon.2** %__context.addr, align 8, !tbaa !25
  call void @llvm.dbg.declare(metadata %struct.anon.2** %__context.addr, metadata !142, metadata !DIExpression()), !dbg !143
  %0 = load %struct.anon.2*, %struct.anon.2** %__context.addr, align 8, !dbg !144
  ret void, !dbg !145
}

; Function Attrs: norecurse nounwind uwtable
define internal i32 @.omp_task_entry..4(i32 %0, %struct.kmp_task_t_with_privates.3* noalias %1) #4 !dbg !146 {
entry:
  %.addr = alloca i32, align 4
  %.addr1 = alloca %struct.kmp_task_t_with_privates.3*, align 8
  store i32 %0, i32* %.addr, align 4, !tbaa !22
  call void @llvm.dbg.declare(metadata i32* %.addr, metadata !148, metadata !DIExpression()), !dbg !155
  store %struct.kmp_task_t_with_privates.3* %1, %struct.kmp_task_t_with_privates.3** %.addr1, align 8, !tbaa !25
  call void @llvm.dbg.declare(metadata %struct.kmp_task_t_with_privates.3** %.addr1, metadata !149, metadata !DIExpression()), !dbg !155
  %2 = load i32, i32* %.addr, align 4, !dbg !156, !tbaa !22
  %3 = load %struct.kmp_task_t_with_privates.3*, %struct.kmp_task_t_with_privates.3** %.addr1, align 8, !dbg !156
  %4 = getelementptr inbounds %struct.kmp_task_t_with_privates.3, %struct.kmp_task_t_with_privates.3* %3, i32 0, i32 0, !dbg !156
  %5 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 2, !dbg !156
  %6 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 0, !dbg !156
  %7 = load i8*, i8** %6, align 8, !dbg !156, !tbaa !26
  %8 = bitcast i8* %7 to %struct.anon.2*, !dbg !156
  %9 = bitcast %struct.kmp_task_t_with_privates.3* %3 to i8*, !dbg !156
  call void @.omp_outlined..3(i32 %2, i32* %5, i8* null, void (i8*, ...)* null, i8* %9, %struct.anon.2* %8) #6, !dbg !156
  ret i32 0, !dbg !156
}

declare dso_local void @__kmpc_omp_wait_deps(%struct.ident_t*, i32, i32, i8*, i32, i8*)

declare dso_local void @__kmpc_omp_task_complete_if0(%struct.ident_t*, i32, i8*)

declare dso_local void @__kmpc_omp_task_begin_if0(%struct.ident_t*, i32, i8*)

declare dso_local i32 @printf(i8*, ...) #5

declare dso_local i32 @__kmpc_omp_taskwait(%struct.ident_t*, i32)

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @main() #0 !dbg !157 {
entry:
  %retval = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32 0, i32* %retval, align 4
  %2 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !160
  store i8* getelementptr inbounds ([72 x i8], [72 x i8]* @6, i32 0, i32 0), i8** %2, align 8, !dbg !160, !tbaa !14
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 0, void (i32*, i32*, ...)* bitcast (void (i32*, i32*)* @.omp_outlined..7 to void (i32*, i32*, ...)*)), !dbg !160
  ret i32 0, !dbg !161
}

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid.) #4 !dbg !162 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !25
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !166, metadata !DIExpression()), !dbg !168
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !25
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !167, metadata !DIExpression()), !dbg !168
  %2 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !169
  store i8* getelementptr inbounds ([72 x i8], [72 x i8]* @5, i32 0, i32 0), i8** %2, align 8, !dbg !169, !tbaa !14
  %3 = load i32*, i32** %.global_tid..addr, align 8, !dbg !169
  %4 = load i32, i32* %3, align 4, !dbg !169, !tbaa !22
  %5 = call i32 @__kmpc_single(%struct.ident_t* %.kmpc_loc.addr, i32 %4), !dbg !169
  %6 = icmp ne i32 %5, 0, !dbg !169
  br i1 %6, label %omp_if.then, label %omp_if.end, !dbg !169

omp_if.then:                                      ; preds = %entry
  call void @foo(), !dbg !170
  call void @__kmpc_end_single(%struct.ident_t* %.kmpc_loc.addr, i32 %4), !dbg !170
  br label %omp_if.end, !dbg !170

omp_if.end:                                       ; preds = %omp_if.then, %entry
  %7 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !172
  store i8* getelementptr inbounds ([72 x i8], [72 x i8]* @5, i32 0, i32 0), i8** %7, align 8, !dbg !172, !tbaa !14
  call void @__kmpc_barrier(%struct.ident_t* %.kmpc_loc.addr, i32 %4), !dbg !172
  ret void, !dbg !173
}

declare dso_local void @__kmpc_end_single(%struct.ident_t*, i32)

declare dso_local i32 @__kmpc_single(%struct.ident_t*, i32)

declare dso_local void @__kmpc_barrier(%struct.ident_t*, i32)

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined..7(i32* noalias %.global_tid., i32* noalias %.bound_tid.) #4 !dbg !174 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !25
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !176, metadata !DIExpression()), !dbg !178
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !25
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !177, metadata !DIExpression()), !dbg !178
  %0 = load i32*, i32** %.global_tid..addr, align 8, !dbg !179, !tbaa !25
  %1 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !179, !tbaa !25
  call void @.omp_outlined._debug__(i32* %0, i32* %1) #6, !dbg !179
  ret void, !dbg !179
}

declare !callback !180 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

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
!1 = !DIFile(filename: "integration/dataracebench/DRB134-taskdep5-orig-omp45-yes.c", directory: "/home/brad/Code/OpenRace/tests/data")
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
!44 = !DILocation(line: 34, column: 19, scope: !7)
!45 = !DILocation(line: 34, column: 3, scope: !7)
!46 = !DILocation(line: 36, column: 3, scope: !7)
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
!113 = !DILocation(line: 28, column: 8, scope: !97)
!114 = !{!115, !19, i64 8}
!115 = !{!"", !19, i64 0, !19, i64 8}
!116 = !{!115, !19, i64 0}
!117 = !DILocation(line: 28, column: 5, scope: !97)
!118 = distinct !DISubprogram(linkageName: ".omp_task_entry..2", scope: !1, file: !1, line: 27, type: !81, scopeLine: 27, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!119 = !{!120, !121}
!120 = !DILocalVariable(arg: 1, scope: !118, type: !12, flags: DIFlagArtificial)
!121 = !DILocalVariable(arg: 2, scope: !118, type: !122, flags: DIFlagArtificial)
!122 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !123)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t_with_privates", file: !1, size: 320, elements: !125)
!125 = !{!126}
!126 = !DIDerivedType(tag: DW_TAG_member, scope: !124, file: !1, baseType: !90, size: 320)
!127 = !DILocation(line: 0, scope: !118)
!128 = !DILocation(line: 27, column: 3, scope: !118)
!129 = distinct !DISubprogram(name: ".omp_outlined..3", scope: !1, file: !1, line: 30, type: !130, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !136)
!130 = !DISubroutineType(types: !131)
!131 = !{null, !51, !52, !55, !58, !63, !132}
!132 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !133)
!133 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !134)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!135 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !7, file: !1, line: 30, elements: !2)
!136 = !{!137, !138, !139, !140, !141, !142}
!137 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !129, type: !51, flags: DIFlagArtificial)
!138 = !DILocalVariable(name: ".part_id.", arg: 2, scope: !129, type: !52, flags: DIFlagArtificial)
!139 = !DILocalVariable(name: ".privates.", arg: 3, scope: !129, type: !55, flags: DIFlagArtificial)
!140 = !DILocalVariable(name: ".copy_fn.", arg: 4, scope: !129, type: !58, flags: DIFlagArtificial)
!141 = !DILocalVariable(name: ".task_t.", arg: 5, scope: !129, type: !63, flags: DIFlagArtificial)
!142 = !DILocalVariable(name: "__context", arg: 6, scope: !129, type: !132, flags: DIFlagArtificial)
!143 = !DILocation(line: 0, scope: !129)
!144 = !DILocation(line: 31, column: 3, scope: !129)
!145 = !DILocation(line: 31, column: 4, scope: !129)
!146 = distinct !DISubprogram(linkageName: ".omp_task_entry..4", scope: !1, file: !1, line: 30, type: !81, scopeLine: 30, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !147)
!147 = !{!148, !149}
!148 = !DILocalVariable(arg: 1, scope: !146, type: !12, flags: DIFlagArtificial)
!149 = !DILocalVariable(arg: 2, scope: !146, type: !150, flags: DIFlagArtificial)
!150 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !151)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t_with_privates", file: !1, size: 320, elements: !153)
!153 = !{!154}
!154 = !DIDerivedType(tag: DW_TAG_member, scope: !152, file: !1, baseType: !90, size: 320)
!155 = !DILocation(line: 0, scope: !146)
!156 = !DILocation(line: 30, column: 3, scope: !146)
!157 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 40, type: !158, scopeLine: 40, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!158 = !DISubroutineType(types: !159)
!159 = !{!12}
!160 = !DILocation(line: 41, column: 3, scope: !157)
!161 = !DILocation(line: 45, column: 3, scope: !157)
!162 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 42, type: !163, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !165)
!163 = !DISubroutineType(types: !164)
!164 = !{null, !52, !52}
!165 = !{!166, !167}
!166 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !162, type: !52, flags: DIFlagArtificial)
!167 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !162, type: !52, flags: DIFlagArtificial)
!168 = !DILocation(line: 0, scope: !162)
!169 = !DILocation(line: 42, column: 3, scope: !162)
!170 = !DILocation(line: 43, column: 3, scope: !171)
!171 = distinct !DILexicalBlock(scope: !162, file: !1, line: 42, column: 3)
!172 = !DILocation(line: 42, column: 21, scope: !171)
!173 = !DILocation(line: 42, column: 21, scope: !162)
!174 = distinct !DISubprogram(name: ".omp_outlined..7", scope: !1, file: !1, line: 42, type: !163, scopeLine: 42, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !175)
!175 = !{!176, !177}
!176 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !174, type: !52, flags: DIFlagArtificial)
!177 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !174, type: !52, flags: DIFlagArtificial)
!178 = !DILocation(line: 0, scope: !174)
!179 = !DILocation(line: 42, column: 3, scope: !174)
!180 = !{!181}
!181 = !{i64 2, i64 -1, i64 -1, i1 true}
