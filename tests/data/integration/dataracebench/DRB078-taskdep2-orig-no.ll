; ModuleID = 'integration/dataracebench/DRB078-taskdep2-orig-no.c'
source_filename = "integration/dataracebench/DRB078-taskdep2-orig-no.c"
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
@1 = private unnamed_addr constant [65 x i8] c";integration/dataracebench/DRB078-taskdep2-orig-no.c;main;57;1;;\00", align 1
@2 = private unnamed_addr constant [65 x i8] c";integration/dataracebench/DRB078-taskdep2-orig-no.c;main;59;1;;\00", align 1
@3 = private unnamed_addr constant [65 x i8] c";integration/dataracebench/DRB078-taskdep2-orig-no.c;main;64;1;;\00", align 1
@4 = private unnamed_addr constant [65 x i8] c";integration/dataracebench/DRB078-taskdep2-orig-no.c;main;56;1;;\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"i==2\00", align 1
@.str.5 = private unnamed_addr constant [52 x i8] c"integration/dataracebench/DRB078-taskdep2-orig-no.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [11 x i8] c"int main()\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main() #0 !dbg !13 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32 0, i32* %retval, align 4
  %2 = bitcast i32* %i to i8*, !dbg !19
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #7, !dbg !19
  call void @llvm.dbg.declare(metadata i32* %i, metadata !18, metadata !DIExpression()), !dbg !20
  store i32 0, i32* %i, align 4, !dbg !20, !tbaa !21
  %3 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !25
  store i8* getelementptr inbounds ([65 x i8], [65 x i8]* @4, i32 0, i32 0), i8** %3, align 8, !dbg !25, !tbaa !26
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*)* @.omp_outlined..3 to void (i32*, i32*, ...)*), i32* %i), !dbg !25
  %4 = load i32, i32* %i, align 4, !dbg !29, !tbaa !21
  %cmp = icmp eq i32 %4, 2, !dbg !29
  br i1 %cmp, label %if.then, label %if.else, !dbg !32

if.then:                                          ; preds = %entry
  br label %if.end, !dbg !32

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.5, i64 0, i64 0), i32 68, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #8, !dbg !29
  unreachable, !dbg !29

if.end:                                           ; preds = %if.then
  %5 = bitcast i32* %i to i8*, !dbg !33
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %5) #7, !dbg !33
  ret i32 0, !dbg !34
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %i) #3 !dbg !35 {
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
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !47
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !44, metadata !DIExpression()), !dbg !48
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !47
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !45, metadata !DIExpression()), !dbg !48
  store i32* %i, i32** %i.addr, align 8, !tbaa !47
  call void @llvm.dbg.declare(metadata i32** %i.addr, metadata !46, metadata !DIExpression()), !dbg !49
  %2 = load i32*, i32** %i.addr, align 8, !dbg !50, !tbaa !47
  %3 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !50
  store i8* getelementptr inbounds ([65 x i8], [65 x i8]* @1, i32 0, i32 0), i8** %3, align 8, !dbg !50, !tbaa !26
  %4 = load i32*, i32** %.global_tid..addr, align 8, !dbg !50
  %5 = load i32, i32* %4, align 4, !dbg !50, !tbaa !21
  %6 = call i32 @__kmpc_single(%struct.ident_t* %.kmpc_loc.addr, i32 %5), !dbg !50
  %7 = icmp ne i32 %6, 0, !dbg !50
  br i1 %7, label %omp_if.then, label %omp_if.end, !dbg !50

omp_if.then:                                      ; preds = %entry
  %8 = getelementptr inbounds %struct.anon, %struct.anon* %agg.captured, i32 0, i32 0, !dbg !51
  store i32* %2, i32** %8, align 8, !dbg !51, !tbaa !47
  %9 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !51
  store i8* getelementptr inbounds ([65 x i8], [65 x i8]* @2, i32 0, i32 0), i8** %9, align 8, !dbg !51, !tbaa !26
  %10 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* %.kmpc_loc.addr, i32 %5, i32 1, i64 40, i64 8, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates*)* @.omp_task_entry. to i32 (i32, i8*)*)), !dbg !51
  %11 = bitcast i8* %10 to %struct.kmp_task_t_with_privates*, !dbg !51
  %12 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %11, i32 0, i32 0, !dbg !51
  %13 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %12, i32 0, i32 0, !dbg !51
  %14 = load i8*, i8** %13, align 8, !dbg !51, !tbaa !54
  %15 = bitcast %struct.anon* %agg.captured to i8*, !dbg !51
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* align 8 %15, i64 8, i1 false), !dbg !51, !tbaa.struct !57
  %16 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %.dep.arr.addr, i64 0, i64 0, !dbg !51
  %17 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %16, i32 0, i32 0, !dbg !51
  %18 = ptrtoint i32* %2 to i64, !dbg !51
  store i64 %18, i64* %17, align 8, !dbg !51, !tbaa !58
  %19 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %16, i32 0, i32 1, !dbg !51
  store i64 4, i64* %19, align 8, !dbg !51, !tbaa !61
  %20 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %16, i32 0, i32 2, !dbg !51
  store i8 3, i8* %20, align 8, !dbg !51, !tbaa !62
  %21 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %.dep.arr.addr, i64 0, i64 0, !dbg !51
  %22 = bitcast %struct.kmp_depend_info* %21 to i8*, !dbg !51
  %23 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !51
  store i8* getelementptr inbounds ([65 x i8], [65 x i8]* @2, i32 0, i32 0), i8** %23, align 8, !dbg !51, !tbaa !26
  %24 = call i32 @__kmpc_omp_task_with_deps(%struct.ident_t* %.kmpc_loc.addr, i32 %5, i8* %10, i32 1, i8* %22, i32 0, i8* null), !dbg !51
  %25 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %agg.captured1, i32 0, i32 0, !dbg !63
  store i32* %2, i32** %25, align 8, !dbg !63, !tbaa !47
  %26 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !63
  store i8* getelementptr inbounds ([65 x i8], [65 x i8]* @3, i32 0, i32 0), i8** %26, align 8, !dbg !63, !tbaa !26
  %27 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* %.kmpc_loc.addr, i32 %5, i32 1, i64 40, i64 8, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates.1*)* @.omp_task_entry..2 to i32 (i32, i8*)*)), !dbg !63
  %28 = bitcast i8* %27 to %struct.kmp_task_t_with_privates.1*, !dbg !63
  %29 = getelementptr inbounds %struct.kmp_task_t_with_privates.1, %struct.kmp_task_t_with_privates.1* %28, i32 0, i32 0, !dbg !63
  %30 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %29, i32 0, i32 0, !dbg !63
  %31 = load i8*, i8** %30, align 8, !dbg !63, !tbaa !54
  %32 = bitcast %struct.anon.0* %agg.captured1 to i8*, !dbg !63
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %31, i8* align 8 %32, i64 8, i1 false), !dbg !63, !tbaa.struct !57
  %33 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %.dep.arr.addr2, i64 0, i64 0, !dbg !63
  %34 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %33, i32 0, i32 0, !dbg !63
  %35 = ptrtoint i32* %2 to i64, !dbg !63
  store i64 %35, i64* %34, align 8, !dbg !63, !tbaa !58
  %36 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %33, i32 0, i32 1, !dbg !63
  store i64 4, i64* %36, align 8, !dbg !63, !tbaa !61
  %37 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %33, i32 0, i32 2, !dbg !63
  store i8 3, i8* %37, align 8, !dbg !63, !tbaa !62
  %38 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %.dep.arr.addr2, i64 0, i64 0, !dbg !63
  %39 = bitcast %struct.kmp_depend_info* %38 to i8*, !dbg !63
  %40 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !63
  store i8* getelementptr inbounds ([65 x i8], [65 x i8]* @3, i32 0, i32 0), i8** %40, align 8, !dbg !63, !tbaa !26
  %41 = call i32 @__kmpc_omp_task_with_deps(%struct.ident_t* %.kmpc_loc.addr, i32 %5, i8* %27, i32 1, i8* %39, i32 0, i8* null), !dbg !63
  call void @__kmpc_end_single(%struct.ident_t* %.kmpc_loc.addr, i32 %5), !dbg !64
  br label %omp_if.end, !dbg !64

omp_if.end:                                       ; preds = %omp_if.then, %entry
  %42 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !65
  store i8* getelementptr inbounds ([65 x i8], [65 x i8]* @1, i32 0, i32 0), i8** %42, align 8, !dbg !65, !tbaa !26
  call void @__kmpc_barrier(%struct.ident_t* %.kmpc_loc.addr, i32 %5), !dbg !65
  ret void, !dbg !66
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local void @__kmpc_end_single(%struct.ident_t*, i32)

declare dso_local i32 @__kmpc_single(%struct.ident_t*, i32)

; Function Attrs: alwaysinline nounwind uwtable
define internal void @.omp_outlined.(i32 %.global_tid., i32* noalias %.part_id., i8* noalias %.privates., void (i8*, ...)* noalias %.copy_fn., i8* %.task_t., %struct.anon* noalias %__context) #4 !dbg !67 {
entry:
  %.global_tid..addr = alloca i32, align 4
  %.part_id..addr = alloca i32*, align 8
  %.privates..addr = alloca i8*, align 8
  %.copy_fn..addr = alloca void (i8*, ...)*, align 8
  %.task_t..addr = alloca i8*, align 8
  %__context.addr = alloca %struct.anon*, align 8
  store i32 %.global_tid., i32* %.global_tid..addr, align 4, !tbaa !21
  call void @llvm.dbg.declare(metadata i32* %.global_tid..addr, metadata !84, metadata !DIExpression()), !dbg !90
  store i32* %.part_id., i32** %.part_id..addr, align 8, !tbaa !47
  call void @llvm.dbg.declare(metadata i32** %.part_id..addr, metadata !85, metadata !DIExpression()), !dbg !90
  store i8* %.privates., i8** %.privates..addr, align 8, !tbaa !47
  call void @llvm.dbg.declare(metadata i8** %.privates..addr, metadata !86, metadata !DIExpression()), !dbg !90
  store void (i8*, ...)* %.copy_fn., void (i8*, ...)** %.copy_fn..addr, align 8, !tbaa !47
  call void @llvm.dbg.declare(metadata void (i8*, ...)** %.copy_fn..addr, metadata !87, metadata !DIExpression()), !dbg !90
  store i8* %.task_t., i8** %.task_t..addr, align 8, !tbaa !47
  call void @llvm.dbg.declare(metadata i8** %.task_t..addr, metadata !88, metadata !DIExpression()), !dbg !90
  store %struct.anon* %__context, %struct.anon** %__context.addr, align 8, !tbaa !47
  call void @llvm.dbg.declare(metadata %struct.anon** %__context.addr, metadata !89, metadata !DIExpression()), !dbg !90
  %0 = load %struct.anon*, %struct.anon** %__context.addr, align 8, !dbg !91
  %call = call i32 @sleep(i32 3), !dbg !92
  %1 = getelementptr inbounds %struct.anon, %struct.anon* %0, i32 0, i32 0, !dbg !94
  %2 = load i32*, i32** %1, align 8, !dbg !94, !tbaa !95
  store i32 1, i32* %2, align 4, !dbg !97, !tbaa !21
  ret void, !dbg !98
}

declare !dbg !4 dso_local i32 @sleep(i32) #5

; Function Attrs: norecurse nounwind uwtable
define internal i32 @.omp_task_entry.(i32 %0, %struct.kmp_task_t_with_privates* noalias %1) #3 !dbg !99 {
entry:
  %.addr = alloca i32, align 4
  %.addr1 = alloca %struct.kmp_task_t_with_privates*, align 8
  store i32 %0, i32* %.addr, align 4, !tbaa !21
  call void @llvm.dbg.declare(metadata i32* %.addr, metadata !102, metadata !DIExpression()), !dbg !114
  store %struct.kmp_task_t_with_privates* %1, %struct.kmp_task_t_with_privates** %.addr1, align 8, !tbaa !47
  call void @llvm.dbg.declare(metadata %struct.kmp_task_t_with_privates** %.addr1, metadata !103, metadata !DIExpression()), !dbg !114
  %2 = load i32, i32* %.addr, align 4, !dbg !115, !tbaa !21
  %3 = load %struct.kmp_task_t_with_privates*, %struct.kmp_task_t_with_privates** %.addr1, align 8, !dbg !115
  %4 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %3, i32 0, i32 0, !dbg !115
  %5 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 2, !dbg !115
  %6 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 0, !dbg !115
  %7 = load i8*, i8** %6, align 8, !dbg !115, !tbaa !54
  %8 = bitcast i8* %7 to %struct.anon*, !dbg !115
  %9 = bitcast %struct.kmp_task_t_with_privates* %3 to i8*, !dbg !115
  call void @.omp_outlined.(i32 %2, i32* %5, i8* null, void (i8*, ...)* null, i8* %9, %struct.anon* %8) #7, !dbg !115
  ret i32 0, !dbg !115
}

declare dso_local i8* @__kmpc_omp_task_alloc(%struct.ident_t*, i32, i32, i64, i64, i32 (i32, i8*)*)

declare dso_local i32 @__kmpc_omp_task_with_deps(%struct.ident_t*, i32, i8*, i32, i8*, i32, i8*)

; Function Attrs: alwaysinline nounwind uwtable
define internal void @.omp_outlined..1(i32 %.global_tid., i32* noalias %.part_id., i8* noalias %.privates., void (i8*, ...)* noalias %.copy_fn., i8* %.task_t., %struct.anon.0* noalias %__context) #4 !dbg !116 {
entry:
  %.global_tid..addr = alloca i32, align 4
  %.part_id..addr = alloca i32*, align 8
  %.privates..addr = alloca i8*, align 8
  %.copy_fn..addr = alloca void (i8*, ...)*, align 8
  %.task_t..addr = alloca i8*, align 8
  %__context.addr = alloca %struct.anon.0*, align 8
  store i32 %.global_tid., i32* %.global_tid..addr, align 4, !tbaa !21
  call void @llvm.dbg.declare(metadata i32* %.global_tid..addr, metadata !124, metadata !DIExpression()), !dbg !130
  store i32* %.part_id., i32** %.part_id..addr, align 8, !tbaa !47
  call void @llvm.dbg.declare(metadata i32** %.part_id..addr, metadata !125, metadata !DIExpression()), !dbg !130
  store i8* %.privates., i8** %.privates..addr, align 8, !tbaa !47
  call void @llvm.dbg.declare(metadata i8** %.privates..addr, metadata !126, metadata !DIExpression()), !dbg !130
  store void (i8*, ...)* %.copy_fn., void (i8*, ...)** %.copy_fn..addr, align 8, !tbaa !47
  call void @llvm.dbg.declare(metadata void (i8*, ...)** %.copy_fn..addr, metadata !127, metadata !DIExpression()), !dbg !130
  store i8* %.task_t., i8** %.task_t..addr, align 8, !tbaa !47
  call void @llvm.dbg.declare(metadata i8** %.task_t..addr, metadata !128, metadata !DIExpression()), !dbg !130
  store %struct.anon.0* %__context, %struct.anon.0** %__context.addr, align 8, !tbaa !47
  call void @llvm.dbg.declare(metadata %struct.anon.0** %__context.addr, metadata !129, metadata !DIExpression()), !dbg !130
  %0 = load %struct.anon.0*, %struct.anon.0** %__context.addr, align 8, !dbg !131
  %1 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %0, i32 0, i32 0, !dbg !131
  %2 = load i32*, i32** %1, align 8, !dbg !131, !tbaa !95
  store i32 2, i32* %2, align 4, !dbg !132, !tbaa !21
  ret void, !dbg !133
}

; Function Attrs: norecurse nounwind uwtable
define internal i32 @.omp_task_entry..2(i32 %0, %struct.kmp_task_t_with_privates.1* noalias %1) #3 !dbg !134 {
entry:
  %.addr = alloca i32, align 4
  %.addr1 = alloca %struct.kmp_task_t_with_privates.1*, align 8
  store i32 %0, i32* %.addr, align 4, !tbaa !21
  call void @llvm.dbg.declare(metadata i32* %.addr, metadata !136, metadata !DIExpression()), !dbg !143
  store %struct.kmp_task_t_with_privates.1* %1, %struct.kmp_task_t_with_privates.1** %.addr1, align 8, !tbaa !47
  call void @llvm.dbg.declare(metadata %struct.kmp_task_t_with_privates.1** %.addr1, metadata !137, metadata !DIExpression()), !dbg !143
  %2 = load i32, i32* %.addr, align 4, !dbg !144, !tbaa !21
  %3 = load %struct.kmp_task_t_with_privates.1*, %struct.kmp_task_t_with_privates.1** %.addr1, align 8, !dbg !144
  %4 = getelementptr inbounds %struct.kmp_task_t_with_privates.1, %struct.kmp_task_t_with_privates.1* %3, i32 0, i32 0, !dbg !144
  %5 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 2, !dbg !144
  %6 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 0, !dbg !144
  %7 = load i8*, i8** %6, align 8, !dbg !144, !tbaa !54
  %8 = bitcast i8* %7 to %struct.anon.0*, !dbg !144
  %9 = bitcast %struct.kmp_task_t_with_privates.1* %3 to i8*, !dbg !144
  call void @.omp_outlined..1(i32 %2, i32* %5, i8* null, void (i8*, ...)* null, i8* %9, %struct.anon.0* %8) #7, !dbg !144
  ret i32 0, !dbg !144
}

declare dso_local void @__kmpc_barrier(%struct.ident_t*, i32)

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined..3(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %i) #3 !dbg !145 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %i.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !47
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !147, metadata !DIExpression()), !dbg !150
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !47
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !148, metadata !DIExpression()), !dbg !150
  store i32* %i, i32** %i.addr, align 8, !tbaa !47
  call void @llvm.dbg.declare(metadata i32** %i.addr, metadata !149, metadata !DIExpression()), !dbg !150
  %0 = load i32*, i32** %i.addr, align 8, !dbg !151, !tbaa !47
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !151, !tbaa !47
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !151, !tbaa !47
  %3 = load i32*, i32** %i.addr, align 8, !dbg !151, !tbaa !47
  call void @.omp_outlined._debug__(i32* %1, i32* %2, i32* %3) #7, !dbg !151
  ret void, !dbg !151
}

declare !callback !152 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

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
!1 = !DIFile(filename: "integration/dataracebench/DRB078-taskdep2-orig-no.c", directory: "/home/brad/Code/OpenRace/tests/data")
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
!13 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 53, type: !14, scopeLine: 54, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !17)
!14 = !DISubroutineType(types: !15)
!15 = !{!16}
!16 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!17 = !{!18}
!18 = !DILocalVariable(name: "i", scope: !13, file: !1, line: 55, type: !16)
!19 = !DILocation(line: 55, column: 3, scope: !13)
!20 = !DILocation(line: 55, column: 7, scope: !13)
!21 = !{!22, !22, i64 0}
!22 = !{!"int", !23, i64 0}
!23 = !{!"omnipotent char", !24, i64 0}
!24 = !{!"Simple C/C++ TBAA"}
!25 = !DILocation(line: 56, column: 1, scope: !13)
!26 = !{!27, !28, i64 16}
!27 = !{!"ident_t", !22, i64 0, !22, i64 4, !22, i64 8, !22, i64 12, !28, i64 16}
!28 = !{!"any pointer", !23, i64 0}
!29 = !DILocation(line: 68, column: 3, scope: !30)
!30 = distinct !DILexicalBlock(scope: !31, file: !1, line: 68, column: 3)
!31 = distinct !DILexicalBlock(scope: !13, file: !1, line: 68, column: 3)
!32 = !DILocation(line: 68, column: 3, scope: !31)
!33 = !DILocation(line: 70, column: 1, scope: !13)
!34 = !DILocation(line: 69, column: 3, scope: !13)
!35 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 57, type: !36, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !43)
!36 = !DISubroutineType(types: !37)
!37 = !{null, !38, !38, !42}
!38 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !39)
!39 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !40)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!42 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !16, size: 64)
!43 = !{!44, !45, !46}
!44 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !35, type: !38, flags: DIFlagArtificial)
!45 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !35, type: !38, flags: DIFlagArtificial)
!46 = !DILocalVariable(name: "i", arg: 3, scope: !35, file: !1, line: 55, type: !42)
!47 = !{!28, !28, i64 0}
!48 = !DILocation(line: 0, scope: !35)
!49 = !DILocation(line: 55, column: 7, scope: !35)
!50 = !DILocation(line: 57, column: 1, scope: !35)
!51 = !DILocation(line: 59, column: 1, scope: !52)
!52 = distinct !DILexicalBlock(scope: !53, file: !1, line: 58, column: 3)
!53 = distinct !DILexicalBlock(scope: !35, file: !1, line: 57, column: 1)
!54 = !{!55, !28, i64 0}
!55 = !{!"kmp_task_t_with_privates", !56, i64 0}
!56 = !{!"kmp_task_t", !28, i64 0, !28, i64 8, !22, i64 16, !23, i64 24, !23, i64 32}
!57 = !{i64 0, i64 8, !47}
!58 = !{!59, !60, i64 0}
!59 = !{!"kmp_depend_info", !60, i64 0, !60, i64 8, !23, i64 16}
!60 = !{!"long", !23, i64 0}
!61 = !{!59, !60, i64 8}
!62 = !{!59, !23, i64 16}
!63 = !DILocation(line: 64, column: 1, scope: !52)
!64 = !DILocation(line: 66, column: 3, scope: !52)
!65 = !DILocation(line: 57, column: 19, scope: !53)
!66 = !DILocation(line: 57, column: 19, scope: !35)
!67 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 62, type: !68, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !83)
!68 = !DISubroutineType(types: !69)
!69 = !{null, !41, !38, !70, !73, !78, !79}
!70 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !71)
!71 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !72)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!73 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !74)
!74 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !75)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!76 = !DISubroutineType(types: !77)
!77 = !{null, !70, null}
!78 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !72)
!79 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !80)
!80 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !81)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!82 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 59, size: 64, elements: !2)
!83 = !{!84, !85, !86, !87, !88, !89}
!84 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !67, type: !41, flags: DIFlagArtificial)
!85 = !DILocalVariable(name: ".part_id.", arg: 2, scope: !67, type: !38, flags: DIFlagArtificial)
!86 = !DILocalVariable(name: ".privates.", arg: 3, scope: !67, type: !70, flags: DIFlagArtificial)
!87 = !DILocalVariable(name: ".copy_fn.", arg: 4, scope: !67, type: !73, flags: DIFlagArtificial)
!88 = !DILocalVariable(name: ".task_t.", arg: 5, scope: !67, type: !78, flags: DIFlagArtificial)
!89 = !DILocalVariable(name: "__context", arg: 6, scope: !67, type: !79, flags: DIFlagArtificial)
!90 = !DILocation(line: 0, scope: !67)
!91 = !DILocation(line: 60, column: 5, scope: !67)
!92 = !DILocation(line: 61, column: 7, scope: !93)
!93 = distinct !DILexicalBlock(scope: !67, file: !1, line: 60, column: 5)
!94 = !DILocation(line: 62, column: 7, scope: !93)
!95 = !{!96, !28, i64 0}
!96 = !{!"", !28, i64 0}
!97 = !DILocation(line: 62, column: 9, scope: !93)
!98 = !DILocation(line: 63, column: 5, scope: !67)
!99 = distinct !DISubprogram(linkageName: ".omp_task_entry.", scope: !1, file: !1, line: 59, type: !100, scopeLine: 59, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !101)
!100 = !DISubroutineType(types: !2)
!101 = !{!102, !103}
!102 = !DILocalVariable(arg: 1, scope: !99, type: !16, flags: DIFlagArtificial)
!103 = !DILocalVariable(arg: 2, scope: !99, type: !104, flags: DIFlagArtificial)
!104 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !105)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t_with_privates", file: !1, size: 320, elements: !107)
!107 = !{!108}
!108 = !DIDerivedType(tag: DW_TAG_member, scope: !106, file: !1, baseType: !109, size: 320)
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t", file: !1, size: 320, elements: !110)
!110 = !{!111, !113}
!111 = !DIDerivedType(tag: DW_TAG_member, scope: !109, file: !1, baseType: !112, size: 64, offset: 192)
!112 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "kmp_cmplrdata_t", file: !1, size: 64, elements: !2)
!113 = !DIDerivedType(tag: DW_TAG_member, scope: !109, file: !1, baseType: !112, size: 64, offset: 256)
!114 = !DILocation(line: 0, scope: !99)
!115 = !DILocation(line: 59, column: 1, scope: !99)
!116 = distinct !DISubprogram(name: ".omp_outlined..1", scope: !1, file: !1, line: 65, type: !117, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !123)
!117 = !DISubroutineType(types: !118)
!118 = !{null, !41, !38, !70, !73, !78, !119}
!119 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !120)
!120 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !121)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 64, size: 64, elements: !2)
!123 = !{!124, !125, !126, !127, !128, !129}
!124 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !116, type: !41, flags: DIFlagArtificial)
!125 = !DILocalVariable(name: ".part_id.", arg: 2, scope: !116, type: !38, flags: DIFlagArtificial)
!126 = !DILocalVariable(name: ".privates.", arg: 3, scope: !116, type: !70, flags: DIFlagArtificial)
!127 = !DILocalVariable(name: ".copy_fn.", arg: 4, scope: !116, type: !73, flags: DIFlagArtificial)
!128 = !DILocalVariable(name: ".task_t.", arg: 5, scope: !116, type: !78, flags: DIFlagArtificial)
!129 = !DILocalVariable(name: "__context", arg: 6, scope: !116, type: !119, flags: DIFlagArtificial)
!130 = !DILocation(line: 0, scope: !116)
!131 = !DILocation(line: 65, column: 5, scope: !116)
!132 = !DILocation(line: 65, column: 7, scope: !116)
!133 = !DILocation(line: 65, column: 9, scope: !116)
!134 = distinct !DISubprogram(linkageName: ".omp_task_entry..2", scope: !1, file: !1, line: 64, type: !100, scopeLine: 64, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !135)
!135 = !{!136, !137}
!136 = !DILocalVariable(arg: 1, scope: !134, type: !16, flags: DIFlagArtificial)
!137 = !DILocalVariable(arg: 2, scope: !134, type: !138, flags: DIFlagArtificial)
!138 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !139)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t_with_privates", file: !1, size: 320, elements: !141)
!141 = !{!142}
!142 = !DIDerivedType(tag: DW_TAG_member, scope: !140, file: !1, baseType: !109, size: 320)
!143 = !DILocation(line: 0, scope: !134)
!144 = !DILocation(line: 64, column: 1, scope: !134)
!145 = distinct !DISubprogram(name: ".omp_outlined..3", scope: !1, file: !1, line: 57, type: !36, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !146)
!146 = !{!147, !148, !149}
!147 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !145, type: !38, flags: DIFlagArtificial)
!148 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !145, type: !38, flags: DIFlagArtificial)
!149 = !DILocalVariable(name: "i", arg: 3, scope: !145, type: !42, flags: DIFlagArtificial)
!150 = !DILocation(line: 0, scope: !145)
!151 = !DILocation(line: 57, column: 1, scope: !145)
!152 = !{!153}
!153 = !{i64 2, i64 -1, i64 -1, i1 true}
