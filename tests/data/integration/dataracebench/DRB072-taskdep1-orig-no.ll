; ModuleID = 'integration/dataracebench/DRB072-taskdep1-orig-no.c'
source_filename = "integration/dataracebench/DRB072-taskdep1-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }
%struct.anon = type { i32* }
%struct.kmp_depend_info = type { i64, i64, i8 }
%struct.anon.0 = type { i32* }
%struct.kmp_task_t_with_privates = type { %struct.kmp_task_t }
%struct.kmp_task_t = type { i8*, i32 (i32, i8*)*, i32, %union.kmp_cmplrdata_t, %union.kmp_cmplrdata_t }
%union.kmp_cmplrdata_t = type { i32 (i32, i8*)* }
%struct.kmp_task_t_with_privates.1 = type { %struct.kmp_task_t }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [65 x i8] c";integration/dataracebench/DRB072-taskdep1-orig-no.c;main;56;1;;\00", align 1
@2 = private unnamed_addr constant [65 x i8] c";integration/dataracebench/DRB072-taskdep1-orig-no.c;main;58;1;;\00", align 1
@3 = private unnamed_addr constant [65 x i8] c";integration/dataracebench/DRB072-taskdep1-orig-no.c;main;60;1;;\00", align 1
@4 = private unnamed_addr constant [65 x i8] c";integration/dataracebench/DRB072-taskdep1-orig-no.c;main;55;1;;\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"i==2\00", align 1
@.str.5 = private unnamed_addr constant [52 x i8] c"integration/dataracebench/DRB072-taskdep1-orig-no.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [11 x i8] c"int main()\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main() #0 !dbg !7 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32 0, i32* %retval, align 4
  %2 = bitcast i32* %i to i8*, !dbg !13
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #6, !dbg !13
  call void @llvm.dbg.declare(metadata i32* %i, metadata !12, metadata !DIExpression()), !dbg !14
  store i32 0, i32* %i, align 4, !dbg !14, !tbaa !15
  %3 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !19
  store i8* getelementptr inbounds ([65 x i8], [65 x i8]* @4, i32 0, i32 0), i8** %3, align 8, !dbg !19, !tbaa !20
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*)* @.omp_outlined..3 to void (i32*, i32*, ...)*), i32* %i), !dbg !19
  %4 = load i32, i32* %i, align 4, !dbg !23, !tbaa !15
  %cmp = icmp eq i32 %4, 2, !dbg !23
  br i1 %cmp, label %if.then, label %if.else, !dbg !26

if.then:                                          ; preds = %entry
  br label %if.end, !dbg !26

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i64 0, i64 0), i32 64, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #7, !dbg !23
  unreachable, !dbg !23

if.end:                                           ; preds = %if.then
  %5 = bitcast i32* %i to i8*, !dbg !27
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %5) #6, !dbg !27
  ret i32 0, !dbg !28
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %i) #3 !dbg !29 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %i.addr = alloca i32*, align 8
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %agg.captured = alloca %struct.anon, align 8
  %.dep.arr.addr = alloca [1 x %struct.kmp_depend_info], align 8
  %agg.captured1 = alloca %struct.anon.0, align 8
  %.dep.arr.addr2 = alloca [1 x %struct.kmp_depend_info], align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !41
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !38, metadata !DIExpression()), !dbg !42
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !41
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !39, metadata !DIExpression()), !dbg !42
  store i32* %i, i32** %i.addr, align 8, !tbaa !41
  call void @llvm.dbg.declare(metadata i32** %i.addr, metadata !40, metadata !DIExpression()), !dbg !43
  %2 = load i32*, i32** %i.addr, align 8, !dbg !44, !tbaa !41
  %3 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !44
  store i8* getelementptr inbounds ([65 x i8], [65 x i8]* @1, i32 0, i32 0), i8** %3, align 8, !dbg !44, !tbaa !20
  %4 = load i32*, i32** %.global_tid..addr, align 8, !dbg !44
  %5 = load i32, i32* %4, align 4, !dbg !44, !tbaa !15
  %6 = call i32 @__kmpc_single(%struct.ident_t* %.kmpc_loc.addr, i32 %5), !dbg !44
  %7 = icmp ne i32 %6, 0, !dbg !44
  br i1 %7, label %omp_if.then, label %omp_if.end, !dbg !44

omp_if.then:                                      ; preds = %entry
  %8 = getelementptr inbounds %struct.anon, %struct.anon* %agg.captured, i32 0, i32 0, !dbg !45
  store i32* %2, i32** %8, align 8, !dbg !45, !tbaa !41
  %9 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !45
  store i8* getelementptr inbounds ([65 x i8], [65 x i8]* @2, i32 0, i32 0), i8** %9, align 8, !dbg !45, !tbaa !20
  %10 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* %.kmpc_loc.addr, i32 %5, i32 1, i64 40, i64 8, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates*)* @.omp_task_entry. to i32 (i32, i8*)*)), !dbg !45
  %11 = bitcast i8* %10 to %struct.kmp_task_t_with_privates*, !dbg !45
  %12 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %11, i32 0, i32 0, !dbg !45
  %13 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %12, i32 0, i32 0, !dbg !45
  %14 = load i8*, i8** %13, align 8, !dbg !45, !tbaa !48
  %15 = bitcast %struct.anon* %agg.captured to i8*, !dbg !45
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* align 8 %15, i64 8, i1 false), !dbg !45, !tbaa.struct !51
  %16 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %.dep.arr.addr, i64 0, i64 0, !dbg !45
  %17 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %16, i32 0, i32 0, !dbg !45
  %18 = ptrtoint i32* %2 to i64, !dbg !45
  store i64 %18, i64* %17, align 8, !dbg !45, !tbaa !52
  %19 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %16, i32 0, i32 1, !dbg !45
  store i64 4, i64* %19, align 8, !dbg !45, !tbaa !55
  %20 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %16, i32 0, i32 2, !dbg !45
  store i8 3, i8* %20, align 8, !dbg !45, !tbaa !56
  %21 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %.dep.arr.addr, i64 0, i64 0, !dbg !45
  %22 = bitcast %struct.kmp_depend_info* %21 to i8*, !dbg !45
  %23 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !45
  store i8* getelementptr inbounds ([65 x i8], [65 x i8]* @2, i32 0, i32 0), i8** %23, align 8, !dbg !45, !tbaa !20
  %24 = call i32 @__kmpc_omp_task_with_deps(%struct.ident_t* %.kmpc_loc.addr, i32 %5, i8* %10, i32 1, i8* %22, i32 0, i8* null), !dbg !45
  %25 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %agg.captured1, i32 0, i32 0, !dbg !57
  store i32* %2, i32** %25, align 8, !dbg !57, !tbaa !41
  %26 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !57
  store i8* getelementptr inbounds ([65 x i8], [65 x i8]* @3, i32 0, i32 0), i8** %26, align 8, !dbg !57, !tbaa !20
  %27 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* %.kmpc_loc.addr, i32 %5, i32 1, i64 40, i64 8, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates.1*)* @.omp_task_entry..2 to i32 (i32, i8*)*)), !dbg !57
  %28 = bitcast i8* %27 to %struct.kmp_task_t_with_privates.1*, !dbg !57
  %29 = getelementptr inbounds %struct.kmp_task_t_with_privates.1, %struct.kmp_task_t_with_privates.1* %28, i32 0, i32 0, !dbg !57
  %30 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %29, i32 0, i32 0, !dbg !57
  %31 = load i8*, i8** %30, align 8, !dbg !57, !tbaa !48
  %32 = bitcast %struct.anon.0* %agg.captured1 to i8*, !dbg !57
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %31, i8* align 8 %32, i64 8, i1 false), !dbg !57, !tbaa.struct !51
  %33 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %.dep.arr.addr2, i64 0, i64 0, !dbg !57
  %34 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %33, i32 0, i32 0, !dbg !57
  %35 = ptrtoint i32* %2 to i64, !dbg !57
  store i64 %35, i64* %34, align 8, !dbg !57, !tbaa !52
  %36 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %33, i32 0, i32 1, !dbg !57
  store i64 4, i64* %36, align 8, !dbg !57, !tbaa !55
  %37 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %33, i32 0, i32 2, !dbg !57
  store i8 1, i8* %37, align 8, !dbg !57, !tbaa !56
  %38 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %.dep.arr.addr2, i64 0, i64 0, !dbg !57
  %39 = bitcast %struct.kmp_depend_info* %38 to i8*, !dbg !57
  %40 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !57
  store i8* getelementptr inbounds ([65 x i8], [65 x i8]* @3, i32 0, i32 0), i8** %40, align 8, !dbg !57, !tbaa !20
  %41 = call i32 @__kmpc_omp_task_with_deps(%struct.ident_t* %.kmpc_loc.addr, i32 %5, i8* %27, i32 1, i8* %39, i32 0, i8* null), !dbg !57
  call void @__kmpc_end_single(%struct.ident_t* %.kmpc_loc.addr, i32 %5), !dbg !58
  br label %omp_if.end, !dbg !58

omp_if.end:                                       ; preds = %omp_if.then, %entry
  %42 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !59
  store i8* getelementptr inbounds ([65 x i8], [65 x i8]* @1, i32 0, i32 0), i8** %42, align 8, !dbg !59, !tbaa !20
  call void @__kmpc_barrier(%struct.ident_t* %.kmpc_loc.addr, i32 %5), !dbg !59
  ret void, !dbg !60
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local void @__kmpc_end_single(%struct.ident_t*, i32)

declare dso_local i32 @__kmpc_single(%struct.ident_t*, i32)

; Function Attrs: alwaysinline nounwind uwtable
define internal void @.omp_outlined.(i32 %.global_tid., i32* noalias %.part_id., i8* noalias %.privates., void (i8*, ...)* noalias %.copy_fn., i8* %.task_t., %struct.anon* noalias %__context) #4 !dbg !61 {
entry:
  %.global_tid..addr = alloca i32, align 4
  %.part_id..addr = alloca i32*, align 8
  %.privates..addr = alloca i8*, align 8
  %.copy_fn..addr = alloca void (i8*, ...)*, align 8
  %.task_t..addr = alloca i8*, align 8
  %__context.addr = alloca %struct.anon*, align 8
  store i32 %.global_tid., i32* %.global_tid..addr, align 4, !tbaa !15
  call void @llvm.dbg.declare(metadata i32* %.global_tid..addr, metadata !78, metadata !DIExpression()), !dbg !84
  store i32* %.part_id., i32** %.part_id..addr, align 8, !tbaa !41
  call void @llvm.dbg.declare(metadata i32** %.part_id..addr, metadata !79, metadata !DIExpression()), !dbg !84
  store i8* %.privates., i8** %.privates..addr, align 8, !tbaa !41
  call void @llvm.dbg.declare(metadata i8** %.privates..addr, metadata !80, metadata !DIExpression()), !dbg !84
  store void (i8*, ...)* %.copy_fn., void (i8*, ...)** %.copy_fn..addr, align 8, !tbaa !41
  call void @llvm.dbg.declare(metadata void (i8*, ...)** %.copy_fn..addr, metadata !81, metadata !DIExpression()), !dbg !84
  store i8* %.task_t., i8** %.task_t..addr, align 8, !tbaa !41
  call void @llvm.dbg.declare(metadata i8** %.task_t..addr, metadata !82, metadata !DIExpression()), !dbg !84
  store %struct.anon* %__context, %struct.anon** %__context.addr, align 8, !tbaa !41
  call void @llvm.dbg.declare(metadata %struct.anon** %__context.addr, metadata !83, metadata !DIExpression()), !dbg !84
  %0 = load %struct.anon*, %struct.anon** %__context.addr, align 8, !dbg !85
  %1 = getelementptr inbounds %struct.anon, %struct.anon* %0, i32 0, i32 0, !dbg !85
  %2 = load i32*, i32** %1, align 8, !dbg !85, !tbaa !86
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
  store %struct.kmp_task_t_with_privates* %1, %struct.kmp_task_t_with_privates** %.addr1, align 8, !tbaa !41
  call void @llvm.dbg.declare(metadata %struct.kmp_task_t_with_privates** %.addr1, metadata !94, metadata !DIExpression()), !dbg !105
  %2 = load i32, i32* %.addr, align 4, !dbg !106, !tbaa !15
  %3 = load %struct.kmp_task_t_with_privates*, %struct.kmp_task_t_with_privates** %.addr1, align 8, !dbg !106
  %4 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %3, i32 0, i32 0, !dbg !106
  %5 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 2, !dbg !106
  %6 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 0, !dbg !106
  %7 = load i8*, i8** %6, align 8, !dbg !106, !tbaa !48
  %8 = bitcast i8* %7 to %struct.anon*, !dbg !106
  %9 = bitcast %struct.kmp_task_t_with_privates* %3 to i8*, !dbg !106
  call void @.omp_outlined.(i32 %2, i32* %5, i8* null, void (i8*, ...)* null, i8* %9, %struct.anon* %8) #6, !dbg !106
  ret i32 0, !dbg !106
}

declare dso_local i8* @__kmpc_omp_task_alloc(%struct.ident_t*, i32, i32, i64, i64, i32 (i32, i8*)*)

declare dso_local i32 @__kmpc_omp_task_with_deps(%struct.ident_t*, i32, i8*, i32, i8*, i32, i8*)

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
  store i32* %.part_id., i32** %.part_id..addr, align 8, !tbaa !41
  call void @llvm.dbg.declare(metadata i32** %.part_id..addr, metadata !116, metadata !DIExpression()), !dbg !121
  store i8* %.privates., i8** %.privates..addr, align 8, !tbaa !41
  call void @llvm.dbg.declare(metadata i8** %.privates..addr, metadata !117, metadata !DIExpression()), !dbg !121
  store void (i8*, ...)* %.copy_fn., void (i8*, ...)** %.copy_fn..addr, align 8, !tbaa !41
  call void @llvm.dbg.declare(metadata void (i8*, ...)** %.copy_fn..addr, metadata !118, metadata !DIExpression()), !dbg !121
  store i8* %.task_t., i8** %.task_t..addr, align 8, !tbaa !41
  call void @llvm.dbg.declare(metadata i8** %.task_t..addr, metadata !119, metadata !DIExpression()), !dbg !121
  store %struct.anon.0* %__context, %struct.anon.0** %__context.addr, align 8, !tbaa !41
  call void @llvm.dbg.declare(metadata %struct.anon.0** %__context.addr, metadata !120, metadata !DIExpression()), !dbg !121
  %0 = load %struct.anon.0*, %struct.anon.0** %__context.addr, align 8, !dbg !122
  %1 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %0, i32 0, i32 0, !dbg !122
  %2 = load i32*, i32** %1, align 8, !dbg !122, !tbaa !86
  store i32 2, i32* %2, align 4, !dbg !123, !tbaa !15
  ret void, !dbg !124
}

; Function Attrs: norecurse nounwind uwtable
define internal i32 @.omp_task_entry..2(i32 %0, %struct.kmp_task_t_with_privates.1* noalias %1) #3 !dbg !125 {
entry:
  %.addr = alloca i32, align 4
  %.addr1 = alloca %struct.kmp_task_t_with_privates.1*, align 8
  store i32 %0, i32* %.addr, align 4, !tbaa !15
  call void @llvm.dbg.declare(metadata i32* %.addr, metadata !127, metadata !DIExpression()), !dbg !134
  store %struct.kmp_task_t_with_privates.1* %1, %struct.kmp_task_t_with_privates.1** %.addr1, align 8, !tbaa !41
  call void @llvm.dbg.declare(metadata %struct.kmp_task_t_with_privates.1** %.addr1, metadata !128, metadata !DIExpression()), !dbg !134
  %2 = load i32, i32* %.addr, align 4, !dbg !135, !tbaa !15
  %3 = load %struct.kmp_task_t_with_privates.1*, %struct.kmp_task_t_with_privates.1** %.addr1, align 8, !dbg !135
  %4 = getelementptr inbounds %struct.kmp_task_t_with_privates.1, %struct.kmp_task_t_with_privates.1* %3, i32 0, i32 0, !dbg !135
  %5 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 2, !dbg !135
  %6 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 0, !dbg !135
  %7 = load i8*, i8** %6, align 8, !dbg !135, !tbaa !48
  %8 = bitcast i8* %7 to %struct.anon.0*, !dbg !135
  %9 = bitcast %struct.kmp_task_t_with_privates.1* %3 to i8*, !dbg !135
  call void @.omp_outlined..1(i32 %2, i32* %5, i8* null, void (i8*, ...)* null, i8* %9, %struct.anon.0* %8) #6, !dbg !135
  ret i32 0, !dbg !135
}

declare dso_local void @__kmpc_barrier(%struct.ident_t*, i32)

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined..3(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %i) #3 !dbg !136 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %i.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !41
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !138, metadata !DIExpression()), !dbg !141
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !41
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !139, metadata !DIExpression()), !dbg !141
  store i32* %i, i32** %i.addr, align 8, !tbaa !41
  call void @llvm.dbg.declare(metadata i32** %i.addr, metadata !140, metadata !DIExpression()), !dbg !141
  %0 = load i32*, i32** %i.addr, align 8, !dbg !142, !tbaa !41
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !142, !tbaa !41
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !142, !tbaa !41
  %3 = load i32*, i32** %i.addr, align 8, !dbg !142, !tbaa !41
  call void @.omp_outlined._debug__(i32* %1, i32* %2, i32* %3) #6, !dbg !142
  ret void, !dbg !142
}

declare !callback !143 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) #5

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { alwaysinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "integration/dataracebench/DRB072-taskdep1-orig-no.c", directory: "/home/brad/Code/OpenRace/tests/data")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.1 "}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 52, type: !8, scopeLine: 53, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !11)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !{!12}
!12 = !DILocalVariable(name: "i", scope: !7, file: !1, line: 54, type: !10)
!13 = !DILocation(line: 54, column: 3, scope: !7)
!14 = !DILocation(line: 54, column: 7, scope: !7)
!15 = !{!16, !16, i64 0}
!16 = !{!"int", !17, i64 0}
!17 = !{!"omnipotent char", !18, i64 0}
!18 = !{!"Simple C/C++ TBAA"}
!19 = !DILocation(line: 55, column: 1, scope: !7)
!20 = !{!21, !22, i64 16}
!21 = !{!"ident_t", !16, i64 0, !16, i64 4, !16, i64 8, !16, i64 12, !22, i64 16}
!22 = !{!"any pointer", !17, i64 0}
!23 = !DILocation(line: 64, column: 3, scope: !24)
!24 = distinct !DILexicalBlock(scope: !25, file: !1, line: 64, column: 3)
!25 = distinct !DILexicalBlock(scope: !7, file: !1, line: 64, column: 3)
!26 = !DILocation(line: 64, column: 3, scope: !25)
!27 = !DILocation(line: 66, column: 1, scope: !7)
!28 = !DILocation(line: 65, column: 3, scope: !7)
!29 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 56, type: !30, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !37)
!30 = !DISubroutineType(types: !31)
!31 = !{null, !32, !32, !36}
!32 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !33)
!33 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !34)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!36 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !10, size: 64)
!37 = !{!38, !39, !40}
!38 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !29, type: !32, flags: DIFlagArtificial)
!39 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !29, type: !32, flags: DIFlagArtificial)
!40 = !DILocalVariable(name: "i", arg: 3, scope: !29, file: !1, line: 54, type: !36)
!41 = !{!22, !22, i64 0}
!42 = !DILocation(line: 0, scope: !29)
!43 = !DILocation(line: 54, column: 7, scope: !29)
!44 = !DILocation(line: 56, column: 1, scope: !29)
!45 = !DILocation(line: 58, column: 1, scope: !46)
!46 = distinct !DILexicalBlock(scope: !47, file: !1, line: 57, column: 3)
!47 = distinct !DILexicalBlock(scope: !29, file: !1, line: 56, column: 1)
!48 = !{!49, !22, i64 0}
!49 = !{!"kmp_task_t_with_privates", !50, i64 0}
!50 = !{!"kmp_task_t", !22, i64 0, !22, i64 8, !16, i64 16, !17, i64 24, !17, i64 32}
!51 = !{i64 0, i64 8, !41}
!52 = !{!53, !54, i64 0}
!53 = !{!"kmp_depend_info", !54, i64 0, !54, i64 8, !17, i64 16}
!54 = !{!"long", !17, i64 0}
!55 = !{!53, !54, i64 8}
!56 = !{!53, !17, i64 16}
!57 = !DILocation(line: 60, column: 1, scope: !46)
!58 = !DILocation(line: 62, column: 3, scope: !46)
!59 = !DILocation(line: 56, column: 19, scope: !47)
!60 = !DILocation(line: 56, column: 19, scope: !29)
!61 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 59, type: !62, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !77)
!62 = !DISubroutineType(types: !63)
!63 = !{null, !35, !32, !64, !67, !72, !73}
!64 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !65)
!65 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !66)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !68)
!68 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !69)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!70 = !DISubroutineType(types: !71)
!71 = !{null, !64, null}
!72 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !66)
!73 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !74)
!74 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !75)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!76 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 58, size: 64, elements: !2)
!77 = !{!78, !79, !80, !81, !82, !83}
!78 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !61, type: !35, flags: DIFlagArtificial)
!79 = !DILocalVariable(name: ".part_id.", arg: 2, scope: !61, type: !32, flags: DIFlagArtificial)
!80 = !DILocalVariable(name: ".privates.", arg: 3, scope: !61, type: !64, flags: DIFlagArtificial)
!81 = !DILocalVariable(name: ".copy_fn.", arg: 4, scope: !61, type: !67, flags: DIFlagArtificial)
!82 = !DILocalVariable(name: ".task_t.", arg: 5, scope: !61, type: !72, flags: DIFlagArtificial)
!83 = !DILocalVariable(name: "__context", arg: 6, scope: !61, type: !73, flags: DIFlagArtificial)
!84 = !DILocation(line: 0, scope: !61)
!85 = !DILocation(line: 59, column: 5, scope: !61)
!86 = !{!87, !22, i64 0}
!87 = !{!"", !22, i64 0}
!88 = !DILocation(line: 59, column: 7, scope: !61)
!89 = !DILocation(line: 59, column: 9, scope: !61)
!90 = distinct !DISubprogram(linkageName: ".omp_task_entry.", scope: !1, file: !1, line: 58, type: !91, scopeLine: 58, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !92)
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
!106 = !DILocation(line: 58, column: 1, scope: !90)
!107 = distinct !DISubprogram(name: ".omp_outlined..1", scope: !1, file: !1, line: 61, type: !108, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !114)
!108 = !DISubroutineType(types: !109)
!109 = !{null, !35, !32, !64, !67, !72, !110}
!110 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !111)
!111 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !112)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!113 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 60, size: 64, elements: !2)
!114 = !{!115, !116, !117, !118, !119, !120}
!115 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !107, type: !35, flags: DIFlagArtificial)
!116 = !DILocalVariable(name: ".part_id.", arg: 2, scope: !107, type: !32, flags: DIFlagArtificial)
!117 = !DILocalVariable(name: ".privates.", arg: 3, scope: !107, type: !64, flags: DIFlagArtificial)
!118 = !DILocalVariable(name: ".copy_fn.", arg: 4, scope: !107, type: !67, flags: DIFlagArtificial)
!119 = !DILocalVariable(name: ".task_t.", arg: 5, scope: !107, type: !72, flags: DIFlagArtificial)
!120 = !DILocalVariable(name: "__context", arg: 6, scope: !107, type: !110, flags: DIFlagArtificial)
!121 = !DILocation(line: 0, scope: !107)
!122 = !DILocation(line: 61, column: 5, scope: !107)
!123 = !DILocation(line: 61, column: 7, scope: !107)
!124 = !DILocation(line: 61, column: 9, scope: !107)
!125 = distinct !DISubprogram(linkageName: ".omp_task_entry..2", scope: !1, file: !1, line: 60, type: !91, scopeLine: 60, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !126)
!126 = !{!127, !128}
!127 = !DILocalVariable(arg: 1, scope: !125, type: !10, flags: DIFlagArtificial)
!128 = !DILocalVariable(arg: 2, scope: !125, type: !129, flags: DIFlagArtificial)
!129 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !130)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t_with_privates", file: !1, size: 320, elements: !132)
!132 = !{!133}
!133 = !DIDerivedType(tag: DW_TAG_member, scope: !131, file: !1, baseType: !100, size: 320)
!134 = !DILocation(line: 0, scope: !125)
!135 = !DILocation(line: 60, column: 1, scope: !125)
!136 = distinct !DISubprogram(name: ".omp_outlined..3", scope: !1, file: !1, line: 56, type: !30, scopeLine: 56, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !137)
!137 = !{!138, !139, !140}
!138 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !136, type: !32, flags: DIFlagArtificial)
!139 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !136, type: !32, flags: DIFlagArtificial)
!140 = !DILocalVariable(name: "i", arg: 3, scope: !136, type: !36, flags: DIFlagArtificial)
!141 = !DILocation(line: 0, scope: !136)
!142 = !DILocation(line: 56, column: 1, scope: !136)
!143 = !{!144}
!144 = !{i64 2, i64 -1, i64 -1, i1 true}
