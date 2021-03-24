; ModuleID = 'DRB133-taskdep5-orig-omp45-no.c'
source_filename = "DRB133-taskdep5-orig-omp45-no.c"
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
@1 = private unnamed_addr constant [44 x i8] c";DRB133-taskdep5-orig-omp45-no.c;foo;24;3;;\00", align 1
@2 = private unnamed_addr constant [44 x i8] c";DRB133-taskdep5-orig-omp45-no.c;foo;27;3;;\00", align 1
@3 = private unnamed_addr constant [44 x i8] c";DRB133-taskdep5-orig-omp45-no.c;foo;30;3;;\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"x=%d\0A\00", align 1
@4 = private unnamed_addr constant [44 x i8] c";DRB133-taskdep5-orig-omp45-no.c;foo;35;3;;\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"y=%d\0A\00", align 1
@5 = private unnamed_addr constant [45 x i8] c";DRB133-taskdep5-orig-omp45-no.c;main;42;3;;\00", align 1
@6 = private unnamed_addr constant [45 x i8] c";DRB133-taskdep5-orig-omp45-no.c;main;41;3;;\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
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
  store i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1, i32 0, i32 0), i8** %2, align 8
  %3 = call i32 @__kmpc_global_thread_num(%struct.ident_t* %.kmpc_loc.addr)
  call void @llvm.dbg.declare(metadata i32* %x, metadata !10, metadata !DIExpression()), !dbg !12
  store i32 0, i32* %x, align 4, !dbg !12
  call void @llvm.dbg.declare(metadata i32* %y, metadata !13, metadata !DIExpression()), !dbg !14
  store i32 2, i32* %y, align 4, !dbg !14
  %4 = getelementptr inbounds %struct.anon, %struct.anon* %agg.captured, i32 0, i32 0, !dbg !15
  store i32* %x, i32** %4, align 8, !dbg !15
  %5 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !15
  store i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1, i32 0, i32 0), i8** %5, align 8, !dbg !15
  %6 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* %.kmpc_loc.addr, i32 %3, i32 1, i64 40, i64 8, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates*)* @.omp_task_entry. to i32 (i32, i8*)*)), !dbg !15
  %7 = bitcast i8* %6 to %struct.kmp_task_t_with_privates*, !dbg !15
  %8 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %7, i32 0, i32 0, !dbg !15
  %9 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %8, i32 0, i32 0, !dbg !15
  %10 = load i8*, i8** %9, align 8, !dbg !15
  %11 = bitcast %struct.anon* %agg.captured to i8*, !dbg !15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 %11, i64 8, i1 false), !dbg !15
  %12 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %.dep.arr.addr, i64 0, i64 0, !dbg !15
  %13 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %12, i32 0, i32 0, !dbg !15
  %14 = ptrtoint i32* %x to i64, !dbg !15
  store i64 %14, i64* %13, align 8, !dbg !15
  %15 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %12, i32 0, i32 1, !dbg !15
  store i64 4, i64* %15, align 8, !dbg !15
  %16 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %12, i32 0, i32 2, !dbg !15
  store i8 3, i8* %16, align 8, !dbg !15
  %17 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %.dep.arr.addr, i64 0, i64 0, !dbg !15
  %18 = bitcast %struct.kmp_depend_info* %17 to i8*, !dbg !15
  %19 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !15
  store i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1, i32 0, i32 0), i8** %19, align 8, !dbg !15
  %20 = call i32 @__kmpc_omp_task_with_deps(%struct.ident_t* %.kmpc_loc.addr, i32 %3, i8* %6, i32 1, i8* %18, i32 0, i8* null), !dbg !15
  %21 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %agg.captured1, i32 0, i32 0, !dbg !16
  store i32* %y, i32** %21, align 8, !dbg !16
  %22 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %agg.captured1, i32 0, i32 1, !dbg !16
  store i32* %x, i32** %22, align 8, !dbg !16
  %23 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !16
  store i8* getelementptr inbounds ([44 x i8], [44 x i8]* @2, i32 0, i32 0), i8** %23, align 8, !dbg !16
  %24 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* %.kmpc_loc.addr, i32 %3, i32 1, i64 40, i64 16, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates.1*)* @.omp_task_entry..2 to i32 (i32, i8*)*)), !dbg !16
  %25 = bitcast i8* %24 to %struct.kmp_task_t_with_privates.1*, !dbg !16
  %26 = getelementptr inbounds %struct.kmp_task_t_with_privates.1, %struct.kmp_task_t_with_privates.1* %25, i32 0, i32 0, !dbg !16
  %27 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %26, i32 0, i32 0, !dbg !16
  %28 = load i8*, i8** %27, align 8, !dbg !16
  %29 = bitcast %struct.anon.0* %agg.captured1 to i8*, !dbg !16
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %28, i8* align 8 %29, i64 16, i1 false), !dbg !16
  %30 = getelementptr inbounds [2 x %struct.kmp_depend_info], [2 x %struct.kmp_depend_info]* %.dep.arr.addr2, i64 0, i64 0, !dbg !16
  %31 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %30, i32 0, i32 0, !dbg !16
  %32 = ptrtoint i32* %x to i64, !dbg !16
  store i64 %32, i64* %31, align 8, !dbg !16
  %33 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %30, i32 0, i32 1, !dbg !16
  store i64 4, i64* %33, align 8, !dbg !16
  %34 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %30, i32 0, i32 2, !dbg !16
  store i8 1, i8* %34, align 8, !dbg !16
  %35 = getelementptr inbounds [2 x %struct.kmp_depend_info], [2 x %struct.kmp_depend_info]* %.dep.arr.addr2, i64 0, i64 1, !dbg !16
  %36 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %35, i32 0, i32 0, !dbg !16
  %37 = ptrtoint i32* %y to i64, !dbg !16
  store i64 %37, i64* %36, align 8, !dbg !16
  %38 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %35, i32 0, i32 1, !dbg !16
  store i64 4, i64* %38, align 8, !dbg !16
  %39 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %35, i32 0, i32 2, !dbg !16
  store i8 3, i8* %39, align 8, !dbg !16
  %40 = getelementptr inbounds [2 x %struct.kmp_depend_info], [2 x %struct.kmp_depend_info]* %.dep.arr.addr2, i64 0, i64 0, !dbg !16
  %41 = bitcast %struct.kmp_depend_info* %40 to i8*, !dbg !16
  %42 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !16
  store i8* getelementptr inbounds ([44 x i8], [44 x i8]* @2, i32 0, i32 0), i8** %42, align 8, !dbg !16
  %43 = call i32 @__kmpc_omp_task_with_deps(%struct.ident_t* %.kmpc_loc.addr, i32 %3, i8* %24, i32 2, i8* %41, i32 0, i8* null), !dbg !16
  %44 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !17
  store i8* getelementptr inbounds ([44 x i8], [44 x i8]* @3, i32 0, i32 0), i8** %44, align 8, !dbg !17
  %45 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* %.kmpc_loc.addr, i32 %3, i32 1, i64 40, i64 0, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates.3*)* @.omp_task_entry..4 to i32 (i32, i8*)*)), !dbg !17
  %46 = bitcast i8* %45 to %struct.kmp_task_t_with_privates.3*, !dbg !17
  %47 = getelementptr inbounds %struct.kmp_task_t_with_privates.3, %struct.kmp_task_t_with_privates.3* %46, i32 0, i32 0, !dbg !17
  %48 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %.dep.arr.addr4, i64 0, i64 0, !dbg !17
  %49 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %48, i32 0, i32 0, !dbg !17
  %50 = ptrtoint i32* %x to i64, !dbg !17
  store i64 %50, i64* %49, align 8, !dbg !17
  %51 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %48, i32 0, i32 1, !dbg !17
  store i64 4, i64* %51, align 8, !dbg !17
  %52 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %48, i32 0, i32 2, !dbg !17
  store i8 1, i8* %52, align 8, !dbg !17
  %53 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %.dep.arr.addr4, i64 0, i64 0, !dbg !17
  %54 = bitcast %struct.kmp_depend_info* %53 to i8*, !dbg !17
  %55 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !17
  store i8* getelementptr inbounds ([44 x i8], [44 x i8]* @3, i32 0, i32 0), i8** %55, align 8, !dbg !17
  call void @__kmpc_omp_wait_deps(%struct.ident_t* %.kmpc_loc.addr, i32 %3, i32 1, i8* %54, i32 0, i8* null), !dbg !18
  call void @__kmpc_omp_task_begin_if0(%struct.ident_t* %.kmpc_loc.addr, i32 %3, i8* %45), !dbg !18
  %56 = call i32 @.omp_task_entry..4(i32 %3, %struct.kmp_task_t_with_privates.3* %46) #6, !dbg !20
  call void @__kmpc_omp_task_complete_if0(%struct.ident_t* %.kmpc_loc.addr, i32 %3, i8* %45), !dbg !18
  %57 = load i32, i32* %x, align 4, !dbg !22
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %57), !dbg !23
  %58 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !24
  store i8* getelementptr inbounds ([44 x i8], [44 x i8]* @4, i32 0, i32 0), i8** %58, align 8, !dbg !24
  %59 = call i32 @__kmpc_omp_taskwait(%struct.ident_t* %.kmpc_loc.addr, i32 %3), !dbg !24
  %60 = load i32, i32* %y, align 4, !dbg !25
  %call5 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %60), !dbg !26
  ret void, !dbg !27
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline norecurse nounwind uwtable
define internal i32 @.omp_task_entry.(i32 %0, %struct.kmp_task_t_with_privates* noalias %1) #2 !dbg !28 {
entry:
  %.global_tid..addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %.global_tid..addr.i, metadata !30, metadata !DIExpression()), !dbg !51
  %.part_id..addr.i = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %.part_id..addr.i, metadata !53, metadata !DIExpression()), !dbg !51
  %.privates..addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %.privates..addr.i, metadata !54, metadata !DIExpression()), !dbg !51
  %.copy_fn..addr.i = alloca void (i8*, ...)*, align 8
  call void @llvm.dbg.declare(metadata void (i8*, ...)** %.copy_fn..addr.i, metadata !55, metadata !DIExpression()), !dbg !51
  %.task_t..addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %.task_t..addr.i, metadata !56, metadata !DIExpression()), !dbg !51
  %__context.addr.i = alloca %struct.anon*, align 8
  call void @llvm.dbg.declare(metadata %struct.anon** %__context.addr.i, metadata !57, metadata !DIExpression()), !dbg !51
  %.addr = alloca i32, align 4
  %.addr1 = alloca %struct.kmp_task_t_with_privates*, align 8
  store i32 %0, i32* %.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %.addr, metadata !58, metadata !DIExpression()), !dbg !59
  store %struct.kmp_task_t_with_privates* %1, %struct.kmp_task_t_with_privates** %.addr1, align 8
  call void @llvm.dbg.declare(metadata %struct.kmp_task_t_with_privates** %.addr1, metadata !60, metadata !DIExpression()), !dbg !59
  %2 = load i32, i32* %.addr, align 4, !dbg !71
  %3 = load %struct.kmp_task_t_with_privates*, %struct.kmp_task_t_with_privates** %.addr1, align 8, !dbg !71
  %4 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %3, i32 0, i32 0, !dbg !71
  %5 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 2, !dbg !71
  %6 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 0, !dbg !71
  %7 = load i8*, i8** %6, align 8, !dbg !71
  %8 = bitcast i8* %7 to %struct.anon*, !dbg !71
  %9 = bitcast %struct.kmp_task_t_with_privates* %3 to i8*, !dbg !71
  store i32 %2, i32* %.global_tid..addr.i, align 4, !noalias !72
  store i32* %5, i32** %.part_id..addr.i, align 8, !noalias !72
  store i8* null, i8** %.privates..addr.i, align 8, !noalias !72
  store void (i8*, ...)* null, void (i8*, ...)** %.copy_fn..addr.i, align 8, !noalias !72
  store i8* %9, i8** %.task_t..addr.i, align 8, !noalias !72
  store %struct.anon* %8, %struct.anon** %__context.addr.i, align 8, !noalias !72
  %10 = load %struct.anon*, %struct.anon** %__context.addr.i, align 8, !dbg !78, !noalias !72
  %11 = getelementptr inbounds %struct.anon, %struct.anon* %10, i32 0, i32 0, !dbg !78
  %12 = load i32*, i32** %11, align 8, !dbg !78
  %13 = load i32, i32* %12, align 4, !dbg !79
  %inc.i = add nsw i32 %13, 1, !dbg !79
  store i32 %inc.i, i32* %12, align 4, !dbg !79
  ret i32 0, !dbg !71
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @__kmpc_global_thread_num(%struct.ident_t*)

declare dso_local i8* @__kmpc_omp_task_alloc(%struct.ident_t*, i32, i32, i64, i64, i32 (i32, i8*)*)

declare dso_local i32 @__kmpc_omp_task_with_deps(%struct.ident_t*, i32, i8*, i32, i8*, i32, i8*)

; Function Attrs: noinline norecurse nounwind uwtable
define internal i32 @.omp_task_entry..2(i32 %0, %struct.kmp_task_t_with_privates.1* noalias %1) #2 !dbg !80 {
entry:
  %.global_tid..addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %.global_tid..addr.i, metadata !81, metadata !DIExpression()), !dbg !89
  %.part_id..addr.i = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %.part_id..addr.i, metadata !91, metadata !DIExpression()), !dbg !89
  %.privates..addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %.privates..addr.i, metadata !92, metadata !DIExpression()), !dbg !89
  %.copy_fn..addr.i = alloca void (i8*, ...)*, align 8
  call void @llvm.dbg.declare(metadata void (i8*, ...)** %.copy_fn..addr.i, metadata !93, metadata !DIExpression()), !dbg !89
  %.task_t..addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %.task_t..addr.i, metadata !94, metadata !DIExpression()), !dbg !89
  %__context.addr.i = alloca %struct.anon.0*, align 8
  call void @llvm.dbg.declare(metadata %struct.anon.0** %__context.addr.i, metadata !95, metadata !DIExpression()), !dbg !89
  %.addr = alloca i32, align 4
  %.addr1 = alloca %struct.kmp_task_t_with_privates.1*, align 8
  store i32 %0, i32* %.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %.addr, metadata !96, metadata !DIExpression()), !dbg !97
  store %struct.kmp_task_t_with_privates.1* %1, %struct.kmp_task_t_with_privates.1** %.addr1, align 8
  call void @llvm.dbg.declare(metadata %struct.kmp_task_t_with_privates.1** %.addr1, metadata !98, metadata !DIExpression()), !dbg !97
  %2 = load i32, i32* %.addr, align 4, !dbg !104
  %3 = load %struct.kmp_task_t_with_privates.1*, %struct.kmp_task_t_with_privates.1** %.addr1, align 8, !dbg !104
  %4 = getelementptr inbounds %struct.kmp_task_t_with_privates.1, %struct.kmp_task_t_with_privates.1* %3, i32 0, i32 0, !dbg !104
  %5 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 2, !dbg !104
  %6 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 0, !dbg !104
  %7 = load i8*, i8** %6, align 8, !dbg !104
  %8 = bitcast i8* %7 to %struct.anon.0*, !dbg !104
  %9 = bitcast %struct.kmp_task_t_with_privates.1* %3 to i8*, !dbg !104
  store i32 %2, i32* %.global_tid..addr.i, align 4, !noalias !105
  store i32* %5, i32** %.part_id..addr.i, align 8, !noalias !105
  store i8* null, i8** %.privates..addr.i, align 8, !noalias !105
  store void (i8*, ...)* null, void (i8*, ...)** %.copy_fn..addr.i, align 8, !noalias !105
  store i8* %9, i8** %.task_t..addr.i, align 8, !noalias !105
  store %struct.anon.0* %8, %struct.anon.0** %__context.addr.i, align 8, !noalias !105
  %10 = load %struct.anon.0*, %struct.anon.0** %__context.addr.i, align 8, !dbg !111, !noalias !105
  %11 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %10, i32 0, i32 0, !dbg !112
  %12 = load i32*, i32** %11, align 8, !dbg !112
  %13 = load i32, i32* %12, align 4, !dbg !112
  %14 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %10, i32 0, i32 1, !dbg !113
  %15 = load i32*, i32** %14, align 8, !dbg !113
  %16 = load i32, i32* %15, align 4, !dbg !113
  %sub.i = sub nsw i32 %13, %16, !dbg !114
  %17 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %10, i32 0, i32 0, !dbg !111
  %18 = load i32*, i32** %17, align 8, !dbg !111
  store i32 %sub.i, i32* %18, align 4, !dbg !115
  ret i32 0, !dbg !104
}

; Function Attrs: noinline norecurse nounwind uwtable
define internal i32 @.omp_task_entry..4(i32 %0, %struct.kmp_task_t_with_privates.3* noalias %1) #2 !dbg !116 {
entry:
  %.global_tid..addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %.global_tid..addr.i, metadata !117, metadata !DIExpression()), !dbg !125
  %.part_id..addr.i = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %.part_id..addr.i, metadata !127, metadata !DIExpression()), !dbg !125
  %.privates..addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %.privates..addr.i, metadata !128, metadata !DIExpression()), !dbg !125
  %.copy_fn..addr.i = alloca void (i8*, ...)*, align 8
  call void @llvm.dbg.declare(metadata void (i8*, ...)** %.copy_fn..addr.i, metadata !129, metadata !DIExpression()), !dbg !125
  %.task_t..addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %.task_t..addr.i, metadata !130, metadata !DIExpression()), !dbg !125
  %__context.addr.i = alloca %struct.anon.2*, align 8
  call void @llvm.dbg.declare(metadata %struct.anon.2** %__context.addr.i, metadata !131, metadata !DIExpression()), !dbg !125
  %.addr = alloca i32, align 4
  %.addr1 = alloca %struct.kmp_task_t_with_privates.3*, align 8
  store i32 %0, i32* %.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %.addr, metadata !132, metadata !DIExpression()), !dbg !133
  store %struct.kmp_task_t_with_privates.3* %1, %struct.kmp_task_t_with_privates.3** %.addr1, align 8
  call void @llvm.dbg.declare(metadata %struct.kmp_task_t_with_privates.3** %.addr1, metadata !134, metadata !DIExpression()), !dbg !133
  %2 = load i32, i32* %.addr, align 4, !dbg !140
  %3 = load %struct.kmp_task_t_with_privates.3*, %struct.kmp_task_t_with_privates.3** %.addr1, align 8, !dbg !140
  %4 = getelementptr inbounds %struct.kmp_task_t_with_privates.3, %struct.kmp_task_t_with_privates.3* %3, i32 0, i32 0, !dbg !140
  %5 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 2, !dbg !140
  %6 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 0, !dbg !140
  %7 = load i8*, i8** %6, align 8, !dbg !140
  %8 = bitcast i8* %7 to %struct.anon.2*, !dbg !140
  %9 = bitcast %struct.kmp_task_t_with_privates.3* %3 to i8*, !dbg !140
  store i32 %2, i32* %.global_tid..addr.i, align 4, !noalias !141
  store i32* %5, i32** %.part_id..addr.i, align 8, !noalias !141
  store i8* null, i8** %.privates..addr.i, align 8, !noalias !141
  store void (i8*, ...)* null, void (i8*, ...)** %.copy_fn..addr.i, align 8, !noalias !141
  store i8* %9, i8** %.task_t..addr.i, align 8, !noalias !141
  store %struct.anon.2* %8, %struct.anon.2** %__context.addr.i, align 8, !noalias !141
  %10 = load %struct.anon.2*, %struct.anon.2** %__context.addr.i, align 8, !dbg !147, !noalias !141
  ret i32 0, !dbg !140
}

declare dso_local void @__kmpc_omp_wait_deps(%struct.ident_t*, i32, i32, i8*, i32, i8*)

declare dso_local void @__kmpc_omp_task_complete_if0(%struct.ident_t*, i32, i8*)

declare dso_local void @__kmpc_omp_task_begin_if0(%struct.ident_t*, i32, i8*)

declare dso_local i32 @printf(i8*, ...) #4

declare dso_local i32 @__kmpc_omp_taskwait(%struct.ident_t*, i32)

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !148 {
entry:
  %retval = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32 0, i32* %retval, align 4
  %2 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !151
  store i8* getelementptr inbounds ([45 x i8], [45 x i8]* @6, i32 0, i32 0), i8** %2, align 8, !dbg !151
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 0, void (i32*, i32*, ...)* bitcast (void (i32*, i32*)* @.omp_outlined..7 to void (i32*, i32*, ...)*)), !dbg !151
  ret i32 0, !dbg !152
}

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid.) #5 !dbg !153 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !156, metadata !DIExpression()), !dbg !157
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !158, metadata !DIExpression()), !dbg !157
  %2 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !159
  store i8* getelementptr inbounds ([45 x i8], [45 x i8]* @5, i32 0, i32 0), i8** %2, align 8, !dbg !159
  %3 = load i32*, i32** %.global_tid..addr, align 8, !dbg !159
  %4 = load i32, i32* %3, align 4, !dbg !159
  %5 = call i32 @__kmpc_single(%struct.ident_t* %.kmpc_loc.addr, i32 %4), !dbg !159
  %6 = icmp ne i32 %5, 0, !dbg !159
  br i1 %6, label %omp_if.then, label %omp_if.end, !dbg !159

omp_if.then:                                      ; preds = %entry
  call void @foo(), !dbg !160
  call void @__kmpc_end_single(%struct.ident_t* %.kmpc_loc.addr, i32 %4), !dbg !160
  br label %omp_if.end, !dbg !160

omp_if.end:                                       ; preds = %omp_if.then, %entry
  %7 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !162
  store i8* getelementptr inbounds ([45 x i8], [45 x i8]* @5, i32 0, i32 0), i8** %7, align 8, !dbg !162
  call void @__kmpc_barrier(%struct.ident_t* %.kmpc_loc.addr, i32 %4), !dbg !162
  ret void, !dbg !163
}

declare dso_local void @__kmpc_end_single(%struct.ident_t*, i32)

declare dso_local i32 @__kmpc_single(%struct.ident_t*, i32)

declare dso_local void @__kmpc_barrier(%struct.ident_t*, i32)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined..7(i32* noalias %.global_tid., i32* noalias %.bound_tid.) #5 !dbg !164 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !165, metadata !DIExpression()), !dbg !166
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !167, metadata !DIExpression()), !dbg !166
  %0 = load i32*, i32** %.global_tid..addr, align 8, !dbg !168
  %1 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !168
  call void @.omp_outlined._debug__(i32* %0, i32* %1) #6, !dbg !168
  ret void, !dbg !168
}

declare !callback !169 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noinline norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noinline norecurse nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.1 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "DRB133-taskdep5-orig-omp45-no.c", directory: "/home/yanze/code/OpenRace/tests/data/integration/dataracebench")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.1 "}
!7 = distinct !DISubprogram(name: "foo", scope: !1, file: !1, line: 21, type: !8, scopeLine: 21, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{null}
!10 = !DILocalVariable(name: "x", scope: !7, file: !1, line: 22, type: !11)
!11 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!12 = !DILocation(line: 22, column: 7, scope: !7)
!13 = !DILocalVariable(name: "y", scope: !7, file: !1, line: 22, type: !11)
!14 = !DILocation(line: 22, column: 14, scope: !7)
!15 = !DILocation(line: 24, column: 3, scope: !7)
!16 = !DILocation(line: 27, column: 3, scope: !7)
!17 = !DILocation(line: 30, column: 3, scope: !7)
!18 = !DILocation(line: 30, column: 37, scope: !19)
!19 = distinct !DILexicalBlock(scope: !7, file: !1, line: 30, column: 3)
!20 = !DILocation(line: 30, column: 3, scope: !21)
!21 = distinct !DILexicalBlock(scope: !19, file: !1, line: 30, column: 37)
!22 = !DILocation(line: 33, column: 19, scope: !7)
!23 = !DILocation(line: 33, column: 3, scope: !7)
!24 = !DILocation(line: 35, column: 3, scope: !7)
!25 = !DILocation(line: 37, column: 19, scope: !7)
!26 = !DILocation(line: 37, column: 3, scope: !7)
!27 = !DILocation(line: 38, column: 1, scope: !7)
!28 = distinct !DISubprogram(linkageName: ".omp_task_entry.", scope: !1, file: !1, line: 24, type: !29, scopeLine: 24, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!29 = !DISubroutineType(types: !2)
!30 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !31, type: !34, flags: DIFlagArtificial)
!31 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 25, type: !32, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!32 = !DISubroutineType(types: !33)
!33 = !{null, !34, !35, !38, !41, !46, !47}
!34 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!35 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !36)
!36 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !37)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !39)
!39 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !40)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!42 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !43)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = !DISubroutineType(types: !45)
!45 = !{null, !38, null}
!46 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !40)
!47 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !48)
!48 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !49)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !7, file: !1, line: 24, size: 64, elements: !2)
!51 = !DILocation(line: 0, scope: !31, inlinedAt: !52)
!52 = distinct !DILocation(line: 24, column: 3, scope: !28)
!53 = !DILocalVariable(name: ".part_id.", arg: 2, scope: !31, type: !35, flags: DIFlagArtificial)
!54 = !DILocalVariable(name: ".privates.", arg: 3, scope: !31, type: !38, flags: DIFlagArtificial)
!55 = !DILocalVariable(name: ".copy_fn.", arg: 4, scope: !31, type: !41, flags: DIFlagArtificial)
!56 = !DILocalVariable(name: ".task_t.", arg: 5, scope: !31, type: !46, flags: DIFlagArtificial)
!57 = !DILocalVariable(name: "__context", arg: 6, scope: !31, type: !47, flags: DIFlagArtificial)
!58 = !DILocalVariable(arg: 1, scope: !28, type: !11, flags: DIFlagArtificial)
!59 = !DILocation(line: 0, scope: !28)
!60 = !DILocalVariable(arg: 2, scope: !28, type: !61, flags: DIFlagArtificial)
!61 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !62)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t_with_privates", file: !1, size: 320, elements: !64)
!64 = !{!65}
!65 = !DIDerivedType(tag: DW_TAG_member, scope: !63, file: !1, baseType: !66, size: 320)
!66 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t", file: !1, size: 320, elements: !67)
!67 = !{!68, !70}
!68 = !DIDerivedType(tag: DW_TAG_member, scope: !66, file: !1, baseType: !69, size: 64, offset: 192)
!69 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "kmp_cmplrdata_t", file: !1, size: 64, elements: !2)
!70 = !DIDerivedType(tag: DW_TAG_member, scope: !66, file: !1, baseType: !69, size: 64, offset: 256)
!71 = !DILocation(line: 24, column: 3, scope: !28)
!72 = !{!73, !75, !76, !77}
!73 = distinct !{!73, !74, !".omp_outlined.: %.part_id."}
!74 = distinct !{!74, !".omp_outlined."}
!75 = distinct !{!75, !74, !".omp_outlined.: %.privates."}
!76 = distinct !{!76, !74, !".omp_outlined.: %.copy_fn."}
!77 = distinct !{!77, !74, !".omp_outlined.: %__context"}
!78 = !DILocation(line: 25, column: 3, scope: !31, inlinedAt: !52)
!79 = !DILocation(line: 25, column: 4, scope: !31, inlinedAt: !52)
!80 = distinct !DISubprogram(linkageName: ".omp_task_entry..2", scope: !1, file: !1, line: 27, type: !29, scopeLine: 27, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!81 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !82, type: !34, flags: DIFlagArtificial)
!82 = distinct !DISubprogram(name: ".omp_outlined..1", scope: !1, file: !1, line: 28, type: !83, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!83 = !DISubroutineType(types: !84)
!84 = !{null, !34, !35, !38, !41, !46, !85}
!85 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !86)
!86 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !87)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !7, file: !1, line: 27, size: 128, elements: !2)
!89 = !DILocation(line: 0, scope: !82, inlinedAt: !90)
!90 = distinct !DILocation(line: 27, column: 3, scope: !80)
!91 = !DILocalVariable(name: ".part_id.", arg: 2, scope: !82, type: !35, flags: DIFlagArtificial)
!92 = !DILocalVariable(name: ".privates.", arg: 3, scope: !82, type: !38, flags: DIFlagArtificial)
!93 = !DILocalVariable(name: ".copy_fn.", arg: 4, scope: !82, type: !41, flags: DIFlagArtificial)
!94 = !DILocalVariable(name: ".task_t.", arg: 5, scope: !82, type: !46, flags: DIFlagArtificial)
!95 = !DILocalVariable(name: "__context", arg: 6, scope: !82, type: !85, flags: DIFlagArtificial)
!96 = !DILocalVariable(arg: 1, scope: !80, type: !11, flags: DIFlagArtificial)
!97 = !DILocation(line: 0, scope: !80)
!98 = !DILocalVariable(arg: 2, scope: !80, type: !99, flags: DIFlagArtificial)
!99 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !100)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t_with_privates", file: !1, size: 320, elements: !102)
!102 = !{!103}
!103 = !DIDerivedType(tag: DW_TAG_member, scope: !101, file: !1, baseType: !66, size: 320)
!104 = !DILocation(line: 27, column: 3, scope: !80)
!105 = !{!106, !108, !109, !110}
!106 = distinct !{!106, !107, !".omp_outlined..1: %.part_id."}
!107 = distinct !{!107, !".omp_outlined..1"}
!108 = distinct !{!108, !107, !".omp_outlined..1: %.privates."}
!109 = distinct !{!109, !107, !".omp_outlined..1: %.copy_fn."}
!110 = distinct !{!110, !107, !".omp_outlined..1: %__context"}
!111 = !DILocation(line: 28, column: 3, scope: !82, inlinedAt: !90)
!112 = !DILocation(line: 28, column: 7, scope: !82, inlinedAt: !90)
!113 = !DILocation(line: 28, column: 9, scope: !82, inlinedAt: !90)
!114 = !DILocation(line: 28, column: 8, scope: !82, inlinedAt: !90)
!115 = !DILocation(line: 28, column: 5, scope: !82, inlinedAt: !90)
!116 = distinct !DISubprogram(linkageName: ".omp_task_entry..4", scope: !1, file: !1, line: 30, type: !29, scopeLine: 30, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!117 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !118, type: !34, flags: DIFlagArtificial)
!118 = distinct !DISubprogram(name: ".omp_outlined..3", scope: !1, file: !1, line: 30, type: !119, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!119 = !DISubroutineType(types: !120)
!120 = !{null, !34, !35, !38, !41, !46, !121}
!121 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !122)
!122 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !123)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !7, file: !1, line: 30, elements: !2)
!125 = !DILocation(line: 0, scope: !118, inlinedAt: !126)
!126 = distinct !DILocation(line: 30, column: 3, scope: !116)
!127 = !DILocalVariable(name: ".part_id.", arg: 2, scope: !118, type: !35, flags: DIFlagArtificial)
!128 = !DILocalVariable(name: ".privates.", arg: 3, scope: !118, type: !38, flags: DIFlagArtificial)
!129 = !DILocalVariable(name: ".copy_fn.", arg: 4, scope: !118, type: !41, flags: DIFlagArtificial)
!130 = !DILocalVariable(name: ".task_t.", arg: 5, scope: !118, type: !46, flags: DIFlagArtificial)
!131 = !DILocalVariable(name: "__context", arg: 6, scope: !118, type: !121, flags: DIFlagArtificial)
!132 = !DILocalVariable(arg: 1, scope: !116, type: !11, flags: DIFlagArtificial)
!133 = !DILocation(line: 0, scope: !116)
!134 = !DILocalVariable(arg: 2, scope: !116, type: !135, flags: DIFlagArtificial)
!135 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !136)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t_with_privates", file: !1, size: 320, elements: !138)
!138 = !{!139}
!139 = !DIDerivedType(tag: DW_TAG_member, scope: !137, file: !1, baseType: !66, size: 320)
!140 = !DILocation(line: 30, column: 3, scope: !116)
!141 = !{!142, !144, !145, !146}
!142 = distinct !{!142, !143, !".omp_outlined..3: %.part_id."}
!143 = distinct !{!143, !".omp_outlined..3"}
!144 = distinct !{!144, !143, !".omp_outlined..3: %.privates."}
!145 = distinct !{!145, !143, !".omp_outlined..3: %.copy_fn."}
!146 = distinct !{!146, !143, !".omp_outlined..3: %__context"}
!147 = !DILocation(line: 31, column: 3, scope: !118, inlinedAt: !126)
!148 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 40, type: !149, scopeLine: 40, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!149 = !DISubroutineType(types: !150)
!150 = !{!11}
!151 = !DILocation(line: 41, column: 3, scope: !148)
!152 = !DILocation(line: 45, column: 3, scope: !148)
!153 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 42, type: !154, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!154 = !DISubroutineType(types: !155)
!155 = !{null, !35, !35}
!156 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !153, type: !35, flags: DIFlagArtificial)
!157 = !DILocation(line: 0, scope: !153)
!158 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !153, type: !35, flags: DIFlagArtificial)
!159 = !DILocation(line: 42, column: 3, scope: !153)
!160 = !DILocation(line: 43, column: 3, scope: !161)
!161 = distinct !DILexicalBlock(scope: !153, file: !1, line: 42, column: 3)
!162 = !DILocation(line: 42, column: 21, scope: !161)
!163 = !DILocation(line: 42, column: 21, scope: !153)
!164 = distinct !DISubprogram(name: ".omp_outlined..7", scope: !1, file: !1, line: 42, type: !154, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!165 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !164, type: !35, flags: DIFlagArtificial)
!166 = !DILocation(line: 0, scope: !164)
!167 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !164, type: !35, flags: DIFlagArtificial)
!168 = !DILocation(line: 42, column: 3, scope: !164)
!169 = !{!170}
!170 = !{i64 2, i64 -1, i64 -1, i1 true}
