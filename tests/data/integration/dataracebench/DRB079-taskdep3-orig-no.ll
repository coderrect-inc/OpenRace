; ModuleID = 'integration/dataracebench/DRB079-taskdep3-orig-no.c'
source_filename = "integration/dataracebench/DRB079-taskdep3-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }
%struct.anon = type { i32* }
%struct.kmp_depend_info = type { i64, i64, i8 }
%struct.anon.0 = type { i32*, i32* }
%struct.anon.2 = type { i32*, i32* }
%struct.kmp_task_t_with_privates = type { %struct.kmp_task_t }
%struct.kmp_task_t = type { i8*, i32 (i32, i8*)*, i32, %union.kmp_cmplrdata_t, %union.kmp_cmplrdata_t }
%union.kmp_cmplrdata_t = type { i32 (i32, i8*)* }
%struct.kmp_task_t_with_privates.1 = type { %struct.kmp_task_t }
%struct.kmp_task_t_with_privates.3 = type { %struct.kmp_task_t }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [65 x i8] c";integration/dataracebench/DRB079-taskdep3-orig-no.c;main;57;1;;\00", align 1
@2 = private unnamed_addr constant [65 x i8] c";integration/dataracebench/DRB079-taskdep3-orig-no.c;main;59;1;;\00", align 1
@3 = private unnamed_addr constant [65 x i8] c";integration/dataracebench/DRB079-taskdep3-orig-no.c;main;64;1;;\00", align 1
@4 = private unnamed_addr constant [65 x i8] c";integration/dataracebench/DRB079-taskdep3-orig-no.c;main;66;1;;\00", align 1
@5 = private unnamed_addr constant [65 x i8] c";integration/dataracebench/DRB079-taskdep3-orig-no.c;main;56;1;;\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"j=%d k=%d\0A\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"j==1 && k==1\00", align 1
@.str.8 = private unnamed_addr constant [52 x i8] c"integration/dataracebench/DRB079-taskdep3-orig-no.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [11 x i8] c"int main()\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main() #0 !dbg !13 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32 0, i32* %retval, align 4
  %2 = bitcast i32* %i to i8*, !dbg !21
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #7, !dbg !21
  call void @llvm.dbg.declare(metadata i32* %i, metadata !18, metadata !DIExpression()), !dbg !22
  store i32 0, i32* %i, align 4, !dbg !22, !tbaa !23
  %3 = bitcast i32* %j to i8*, !dbg !21
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #7, !dbg !21
  call void @llvm.dbg.declare(metadata i32* %j, metadata !19, metadata !DIExpression()), !dbg !27
  %4 = bitcast i32* %k to i8*, !dbg !21
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #7, !dbg !21
  call void @llvm.dbg.declare(metadata i32* %k, metadata !20, metadata !DIExpression()), !dbg !28
  %5 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !29
  store i8* getelementptr inbounds ([65 x i8], [65 x i8]* @5, i32 0, i32 0), i8** %5, align 8, !dbg !29, !tbaa !30
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*, i32*)* @.omp_outlined..5 to void (i32*, i32*, ...)*), i32* %i, i32* %j, i32* %k), !dbg !29
  %6 = load i32, i32* %j, align 4, !dbg !33, !tbaa !23
  %7 = load i32, i32* %k, align 4, !dbg !34, !tbaa !23
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32 %6, i32 %7), !dbg !35
  %8 = load i32, i32* %j, align 4, !dbg !36, !tbaa !23
  %cmp = icmp eq i32 %8, 1, !dbg !36
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !36

land.lhs.true:                                    ; preds = %entry
  %9 = load i32, i32* %k, align 4, !dbg !36, !tbaa !23
  %cmp1 = icmp eq i32 %9, 1, !dbg !36
  br i1 %cmp1, label %if.then, label %if.else, !dbg !39

if.then:                                          ; preds = %land.lhs.true
  br label %if.end, !dbg !39

if.else:                                          ; preds = %land.lhs.true, %entry
  call void @__assert_fail(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.8, i64 0, i64 0), i32 70, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #8, !dbg !36
  unreachable, !dbg !36

if.end:                                           ; preds = %if.then
  %10 = bitcast i32* %k to i8*, !dbg !40
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %10) #7, !dbg !40
  %11 = bitcast i32* %j to i8*, !dbg !40
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %11) #7, !dbg !40
  %12 = bitcast i32* %i to i8*, !dbg !40
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %12) #7, !dbg !40
  ret i32 0, !dbg !41
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %i, i32* dereferenceable(4) %j, i32* dereferenceable(4) %k) #3 !dbg !42 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %i.addr = alloca i32*, align 8
  %j.addr = alloca i32*, align 8
  %k.addr = alloca i32*, align 8
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %agg.captured = alloca %struct.anon, align 8
  %.dep.arr.addr = alloca [1 x %struct.kmp_depend_info], align 8
  %agg.captured1 = alloca %struct.anon.0, align 8
  %.dep.arr.addr2 = alloca [1 x %struct.kmp_depend_info], align 8
  %agg.captured3 = alloca %struct.anon.2, align 8
  %.dep.arr.addr4 = alloca [1 x %struct.kmp_depend_info], align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !56
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !51, metadata !DIExpression()), !dbg !57
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !56
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !52, metadata !DIExpression()), !dbg !57
  store i32* %i, i32** %i.addr, align 8, !tbaa !56
  call void @llvm.dbg.declare(metadata i32** %i.addr, metadata !53, metadata !DIExpression()), !dbg !58
  store i32* %j, i32** %j.addr, align 8, !tbaa !56
  call void @llvm.dbg.declare(metadata i32** %j.addr, metadata !54, metadata !DIExpression()), !dbg !59
  store i32* %k, i32** %k.addr, align 8, !tbaa !56
  call void @llvm.dbg.declare(metadata i32** %k.addr, metadata !55, metadata !DIExpression()), !dbg !60
  %2 = load i32*, i32** %i.addr, align 8, !dbg !61, !tbaa !56
  %3 = load i32*, i32** %j.addr, align 8, !dbg !61, !tbaa !56
  %4 = load i32*, i32** %k.addr, align 8, !dbg !61, !tbaa !56
  %5 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !61
  store i8* getelementptr inbounds ([65 x i8], [65 x i8]* @1, i32 0, i32 0), i8** %5, align 8, !dbg !61, !tbaa !30
  %6 = load i32*, i32** %.global_tid..addr, align 8, !dbg !61
  %7 = load i32, i32* %6, align 4, !dbg !61, !tbaa !23
  %8 = call i32 @__kmpc_single(%struct.ident_t* %.kmpc_loc.addr, i32 %7), !dbg !61
  %9 = icmp ne i32 %8, 0, !dbg !61
  br i1 %9, label %omp_if.then, label %omp_if.end, !dbg !61

omp_if.then:                                      ; preds = %entry
  %10 = getelementptr inbounds %struct.anon, %struct.anon* %agg.captured, i32 0, i32 0, !dbg !62
  store i32* %2, i32** %10, align 8, !dbg !62, !tbaa !56
  %11 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !62
  store i8* getelementptr inbounds ([65 x i8], [65 x i8]* @2, i32 0, i32 0), i8** %11, align 8, !dbg !62, !tbaa !30
  %12 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* %.kmpc_loc.addr, i32 %7, i32 1, i64 40, i64 8, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates*)* @.omp_task_entry. to i32 (i32, i8*)*)), !dbg !62
  %13 = bitcast i8* %12 to %struct.kmp_task_t_with_privates*, !dbg !62
  %14 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %13, i32 0, i32 0, !dbg !62
  %15 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %14, i32 0, i32 0, !dbg !62
  %16 = load i8*, i8** %15, align 8, !dbg !62, !tbaa !65
  %17 = bitcast %struct.anon* %agg.captured to i8*, !dbg !62
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 %17, i64 8, i1 false), !dbg !62, !tbaa.struct !68
  %18 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %.dep.arr.addr, i64 0, i64 0, !dbg !62
  %19 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %18, i32 0, i32 0, !dbg !62
  %20 = ptrtoint i32* %2 to i64, !dbg !62
  store i64 %20, i64* %19, align 8, !dbg !62, !tbaa !69
  %21 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %18, i32 0, i32 1, !dbg !62
  store i64 4, i64* %21, align 8, !dbg !62, !tbaa !72
  %22 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %18, i32 0, i32 2, !dbg !62
  store i8 3, i8* %22, align 8, !dbg !62, !tbaa !73
  %23 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %.dep.arr.addr, i64 0, i64 0, !dbg !62
  %24 = bitcast %struct.kmp_depend_info* %23 to i8*, !dbg !62
  %25 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !62
  store i8* getelementptr inbounds ([65 x i8], [65 x i8]* @2, i32 0, i32 0), i8** %25, align 8, !dbg !62, !tbaa !30
  %26 = call i32 @__kmpc_omp_task_with_deps(%struct.ident_t* %.kmpc_loc.addr, i32 %7, i8* %12, i32 1, i8* %24, i32 0, i8* null), !dbg !62
  %27 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %agg.captured1, i32 0, i32 0, !dbg !74
  store i32* %3, i32** %27, align 8, !dbg !74, !tbaa !56
  %28 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %agg.captured1, i32 0, i32 1, !dbg !74
  store i32* %2, i32** %28, align 8, !dbg !74, !tbaa !56
  %29 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !74
  store i8* getelementptr inbounds ([65 x i8], [65 x i8]* @3, i32 0, i32 0), i8** %29, align 8, !dbg !74, !tbaa !30
  %30 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* %.kmpc_loc.addr, i32 %7, i32 1, i64 40, i64 16, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates.1*)* @.omp_task_entry..2 to i32 (i32, i8*)*)), !dbg !74
  %31 = bitcast i8* %30 to %struct.kmp_task_t_with_privates.1*, !dbg !74
  %32 = getelementptr inbounds %struct.kmp_task_t_with_privates.1, %struct.kmp_task_t_with_privates.1* %31, i32 0, i32 0, !dbg !74
  %33 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %32, i32 0, i32 0, !dbg !74
  %34 = load i8*, i8** %33, align 8, !dbg !74, !tbaa !65
  %35 = bitcast %struct.anon.0* %agg.captured1 to i8*, !dbg !74
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %34, i8* align 8 %35, i64 16, i1 false), !dbg !74, !tbaa.struct !75
  %36 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %.dep.arr.addr2, i64 0, i64 0, !dbg !74
  %37 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %36, i32 0, i32 0, !dbg !74
  %38 = ptrtoint i32* %2 to i64, !dbg !74
  store i64 %38, i64* %37, align 8, !dbg !74, !tbaa !69
  %39 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %36, i32 0, i32 1, !dbg !74
  store i64 4, i64* %39, align 8, !dbg !74, !tbaa !72
  %40 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %36, i32 0, i32 2, !dbg !74
  store i8 1, i8* %40, align 8, !dbg !74, !tbaa !73
  %41 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %.dep.arr.addr2, i64 0, i64 0, !dbg !74
  %42 = bitcast %struct.kmp_depend_info* %41 to i8*, !dbg !74
  %43 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !74
  store i8* getelementptr inbounds ([65 x i8], [65 x i8]* @3, i32 0, i32 0), i8** %43, align 8, !dbg !74, !tbaa !30
  %44 = call i32 @__kmpc_omp_task_with_deps(%struct.ident_t* %.kmpc_loc.addr, i32 %7, i8* %30, i32 1, i8* %42, i32 0, i8* null), !dbg !74
  %45 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %agg.captured3, i32 0, i32 0, !dbg !76
  store i32* %4, i32** %45, align 8, !dbg !76, !tbaa !56
  %46 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %agg.captured3, i32 0, i32 1, !dbg !76
  store i32* %2, i32** %46, align 8, !dbg !76, !tbaa !56
  %47 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !76
  store i8* getelementptr inbounds ([65 x i8], [65 x i8]* @4, i32 0, i32 0), i8** %47, align 8, !dbg !76, !tbaa !30
  %48 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* %.kmpc_loc.addr, i32 %7, i32 1, i64 40, i64 16, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates.3*)* @.omp_task_entry..4 to i32 (i32, i8*)*)), !dbg !76
  %49 = bitcast i8* %48 to %struct.kmp_task_t_with_privates.3*, !dbg !76
  %50 = getelementptr inbounds %struct.kmp_task_t_with_privates.3, %struct.kmp_task_t_with_privates.3* %49, i32 0, i32 0, !dbg !76
  %51 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %50, i32 0, i32 0, !dbg !76
  %52 = load i8*, i8** %51, align 8, !dbg !76, !tbaa !65
  %53 = bitcast %struct.anon.2* %agg.captured3 to i8*, !dbg !76
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %52, i8* align 8 %53, i64 16, i1 false), !dbg !76, !tbaa.struct !75
  %54 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %.dep.arr.addr4, i64 0, i64 0, !dbg !76
  %55 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %54, i32 0, i32 0, !dbg !76
  %56 = ptrtoint i32* %2 to i64, !dbg !76
  store i64 %56, i64* %55, align 8, !dbg !76, !tbaa !69
  %57 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %54, i32 0, i32 1, !dbg !76
  store i64 4, i64* %57, align 8, !dbg !76, !tbaa !72
  %58 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %54, i32 0, i32 2, !dbg !76
  store i8 1, i8* %58, align 8, !dbg !76, !tbaa !73
  %59 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %.dep.arr.addr4, i64 0, i64 0, !dbg !76
  %60 = bitcast %struct.kmp_depend_info* %59 to i8*, !dbg !76
  %61 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !76
  store i8* getelementptr inbounds ([65 x i8], [65 x i8]* @4, i32 0, i32 0), i8** %61, align 8, !dbg !76, !tbaa !30
  %62 = call i32 @__kmpc_omp_task_with_deps(%struct.ident_t* %.kmpc_loc.addr, i32 %7, i8* %48, i32 1, i8* %60, i32 0, i8* null), !dbg !76
  call void @__kmpc_end_single(%struct.ident_t* %.kmpc_loc.addr, i32 %7), !dbg !77
  br label %omp_if.end, !dbg !77

omp_if.end:                                       ; preds = %omp_if.then, %entry
  %63 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !78
  store i8* getelementptr inbounds ([65 x i8], [65 x i8]* @1, i32 0, i32 0), i8** %63, align 8, !dbg !78, !tbaa !30
  call void @__kmpc_barrier(%struct.ident_t* %.kmpc_loc.addr, i32 %7), !dbg !78
  ret void, !dbg !79
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local void @__kmpc_end_single(%struct.ident_t*, i32)

declare dso_local i32 @__kmpc_single(%struct.ident_t*, i32)

; Function Attrs: alwaysinline nounwind uwtable
define internal void @.omp_outlined.(i32 %.global_tid., i32* noalias %.part_id., i8* noalias %.privates., void (i8*, ...)* noalias %.copy_fn., i8* %.task_t., %struct.anon* noalias %__context) #4 !dbg !80 {
entry:
  %.global_tid..addr = alloca i32, align 4
  %.part_id..addr = alloca i32*, align 8
  %.privates..addr = alloca i8*, align 8
  %.copy_fn..addr = alloca void (i8*, ...)*, align 8
  %.task_t..addr = alloca i8*, align 8
  %__context.addr = alloca %struct.anon*, align 8
  store i32 %.global_tid., i32* %.global_tid..addr, align 4, !tbaa !23
  call void @llvm.dbg.declare(metadata i32* %.global_tid..addr, metadata !97, metadata !DIExpression()), !dbg !103
  store i32* %.part_id., i32** %.part_id..addr, align 8, !tbaa !56
  call void @llvm.dbg.declare(metadata i32** %.part_id..addr, metadata !98, metadata !DIExpression()), !dbg !103
  store i8* %.privates., i8** %.privates..addr, align 8, !tbaa !56
  call void @llvm.dbg.declare(metadata i8** %.privates..addr, metadata !99, metadata !DIExpression()), !dbg !103
  store void (i8*, ...)* %.copy_fn., void (i8*, ...)** %.copy_fn..addr, align 8, !tbaa !56
  call void @llvm.dbg.declare(metadata void (i8*, ...)** %.copy_fn..addr, metadata !100, metadata !DIExpression()), !dbg !103
  store i8* %.task_t., i8** %.task_t..addr, align 8, !tbaa !56
  call void @llvm.dbg.declare(metadata i8** %.task_t..addr, metadata !101, metadata !DIExpression()), !dbg !103
  store %struct.anon* %__context, %struct.anon** %__context.addr, align 8, !tbaa !56
  call void @llvm.dbg.declare(metadata %struct.anon** %__context.addr, metadata !102, metadata !DIExpression()), !dbg !103
  %0 = load %struct.anon*, %struct.anon** %__context.addr, align 8, !dbg !104
  %call = call i32 @sleep(i32 3), !dbg !105
  %1 = getelementptr inbounds %struct.anon, %struct.anon* %0, i32 0, i32 0, !dbg !107
  %2 = load i32*, i32** %1, align 8, !dbg !107, !tbaa !108
  store i32 1, i32* %2, align 4, !dbg !110, !tbaa !23
  ret void, !dbg !111
}

declare !dbg !4 dso_local i32 @sleep(i32) #5

; Function Attrs: norecurse nounwind uwtable
define internal i32 @.omp_task_entry.(i32 %0, %struct.kmp_task_t_with_privates* noalias %1) #3 !dbg !112 {
entry:
  %.addr = alloca i32, align 4
  %.addr1 = alloca %struct.kmp_task_t_with_privates*, align 8
  store i32 %0, i32* %.addr, align 4, !tbaa !23
  call void @llvm.dbg.declare(metadata i32* %.addr, metadata !115, metadata !DIExpression()), !dbg !127
  store %struct.kmp_task_t_with_privates* %1, %struct.kmp_task_t_with_privates** %.addr1, align 8, !tbaa !56
  call void @llvm.dbg.declare(metadata %struct.kmp_task_t_with_privates** %.addr1, metadata !116, metadata !DIExpression()), !dbg !127
  %2 = load i32, i32* %.addr, align 4, !dbg !128, !tbaa !23
  %3 = load %struct.kmp_task_t_with_privates*, %struct.kmp_task_t_with_privates** %.addr1, align 8, !dbg !128
  %4 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %3, i32 0, i32 0, !dbg !128
  %5 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 2, !dbg !128
  %6 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 0, !dbg !128
  %7 = load i8*, i8** %6, align 8, !dbg !128, !tbaa !65
  %8 = bitcast i8* %7 to %struct.anon*, !dbg !128
  %9 = bitcast %struct.kmp_task_t_with_privates* %3 to i8*, !dbg !128
  call void @.omp_outlined.(i32 %2, i32* %5, i8* null, void (i8*, ...)* null, i8* %9, %struct.anon* %8) #7, !dbg !128
  ret i32 0, !dbg !128
}

declare dso_local i8* @__kmpc_omp_task_alloc(%struct.ident_t*, i32, i32, i64, i64, i32 (i32, i8*)*)

declare dso_local i32 @__kmpc_omp_task_with_deps(%struct.ident_t*, i32, i8*, i32, i8*, i32, i8*)

; Function Attrs: alwaysinline nounwind uwtable
define internal void @.omp_outlined..1(i32 %.global_tid., i32* noalias %.part_id., i8* noalias %.privates., void (i8*, ...)* noalias %.copy_fn., i8* %.task_t., %struct.anon.0* noalias %__context) #4 !dbg !129 {
entry:
  %.global_tid..addr = alloca i32, align 4
  %.part_id..addr = alloca i32*, align 8
  %.privates..addr = alloca i8*, align 8
  %.copy_fn..addr = alloca void (i8*, ...)*, align 8
  %.task_t..addr = alloca i8*, align 8
  %__context.addr = alloca %struct.anon.0*, align 8
  store i32 %.global_tid., i32* %.global_tid..addr, align 4, !tbaa !23
  call void @llvm.dbg.declare(metadata i32* %.global_tid..addr, metadata !137, metadata !DIExpression()), !dbg !143
  store i32* %.part_id., i32** %.part_id..addr, align 8, !tbaa !56
  call void @llvm.dbg.declare(metadata i32** %.part_id..addr, metadata !138, metadata !DIExpression()), !dbg !143
  store i8* %.privates., i8** %.privates..addr, align 8, !tbaa !56
  call void @llvm.dbg.declare(metadata i8** %.privates..addr, metadata !139, metadata !DIExpression()), !dbg !143
  store void (i8*, ...)* %.copy_fn., void (i8*, ...)** %.copy_fn..addr, align 8, !tbaa !56
  call void @llvm.dbg.declare(metadata void (i8*, ...)** %.copy_fn..addr, metadata !140, metadata !DIExpression()), !dbg !143
  store i8* %.task_t., i8** %.task_t..addr, align 8, !tbaa !56
  call void @llvm.dbg.declare(metadata i8** %.task_t..addr, metadata !141, metadata !DIExpression()), !dbg !143
  store %struct.anon.0* %__context, %struct.anon.0** %__context.addr, align 8, !tbaa !56
  call void @llvm.dbg.declare(metadata %struct.anon.0** %__context.addr, metadata !142, metadata !DIExpression()), !dbg !143
  %0 = load %struct.anon.0*, %struct.anon.0** %__context.addr, align 8, !dbg !144
  %1 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %0, i32 0, i32 1, !dbg !145
  %2 = load i32*, i32** %1, align 8, !dbg !145, !tbaa !146
  %3 = load i32, i32* %2, align 4, !dbg !145, !tbaa !23
  %4 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %0, i32 0, i32 0, !dbg !144
  %5 = load i32*, i32** %4, align 8, !dbg !144, !tbaa !148
  store i32 %3, i32* %5, align 4, !dbg !149, !tbaa !23
  ret void, !dbg !145
}

; Function Attrs: norecurse nounwind uwtable
define internal i32 @.omp_task_entry..2(i32 %0, %struct.kmp_task_t_with_privates.1* noalias %1) #3 !dbg !150 {
entry:
  %.addr = alloca i32, align 4
  %.addr1 = alloca %struct.kmp_task_t_with_privates.1*, align 8
  store i32 %0, i32* %.addr, align 4, !tbaa !23
  call void @llvm.dbg.declare(metadata i32* %.addr, metadata !152, metadata !DIExpression()), !dbg !159
  store %struct.kmp_task_t_with_privates.1* %1, %struct.kmp_task_t_with_privates.1** %.addr1, align 8, !tbaa !56
  call void @llvm.dbg.declare(metadata %struct.kmp_task_t_with_privates.1** %.addr1, metadata !153, metadata !DIExpression()), !dbg !159
  %2 = load i32, i32* %.addr, align 4, !dbg !160, !tbaa !23
  %3 = load %struct.kmp_task_t_with_privates.1*, %struct.kmp_task_t_with_privates.1** %.addr1, align 8, !dbg !160
  %4 = getelementptr inbounds %struct.kmp_task_t_with_privates.1, %struct.kmp_task_t_with_privates.1* %3, i32 0, i32 0, !dbg !160
  %5 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 2, !dbg !160
  %6 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 0, !dbg !160
  %7 = load i8*, i8** %6, align 8, !dbg !160, !tbaa !65
  %8 = bitcast i8* %7 to %struct.anon.0*, !dbg !160
  %9 = bitcast %struct.kmp_task_t_with_privates.1* %3 to i8*, !dbg !160
  call void @.omp_outlined..1(i32 %2, i32* %5, i8* null, void (i8*, ...)* null, i8* %9, %struct.anon.0* %8) #7, !dbg !160
  ret i32 0, !dbg !160
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @.omp_outlined..3(i32 %.global_tid., i32* noalias %.part_id., i8* noalias %.privates., void (i8*, ...)* noalias %.copy_fn., i8* %.task_t., %struct.anon.2* noalias %__context) #4 !dbg !161 {
entry:
  %.global_tid..addr = alloca i32, align 4
  %.part_id..addr = alloca i32*, align 8
  %.privates..addr = alloca i8*, align 8
  %.copy_fn..addr = alloca void (i8*, ...)*, align 8
  %.task_t..addr = alloca i8*, align 8
  %__context.addr = alloca %struct.anon.2*, align 8
  store i32 %.global_tid., i32* %.global_tid..addr, align 4, !tbaa !23
  call void @llvm.dbg.declare(metadata i32* %.global_tid..addr, metadata !169, metadata !DIExpression()), !dbg !175
  store i32* %.part_id., i32** %.part_id..addr, align 8, !tbaa !56
  call void @llvm.dbg.declare(metadata i32** %.part_id..addr, metadata !170, metadata !DIExpression()), !dbg !175
  store i8* %.privates., i8** %.privates..addr, align 8, !tbaa !56
  call void @llvm.dbg.declare(metadata i8** %.privates..addr, metadata !171, metadata !DIExpression()), !dbg !175
  store void (i8*, ...)* %.copy_fn., void (i8*, ...)** %.copy_fn..addr, align 8, !tbaa !56
  call void @llvm.dbg.declare(metadata void (i8*, ...)** %.copy_fn..addr, metadata !172, metadata !DIExpression()), !dbg !175
  store i8* %.task_t., i8** %.task_t..addr, align 8, !tbaa !56
  call void @llvm.dbg.declare(metadata i8** %.task_t..addr, metadata !173, metadata !DIExpression()), !dbg !175
  store %struct.anon.2* %__context, %struct.anon.2** %__context.addr, align 8, !tbaa !56
  call void @llvm.dbg.declare(metadata %struct.anon.2** %__context.addr, metadata !174, metadata !DIExpression()), !dbg !175
  %0 = load %struct.anon.2*, %struct.anon.2** %__context.addr, align 8, !dbg !176
  %1 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %0, i32 0, i32 1, !dbg !177
  %2 = load i32*, i32** %1, align 8, !dbg !177, !tbaa !146
  %3 = load i32, i32* %2, align 4, !dbg !177, !tbaa !23
  %4 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %0, i32 0, i32 0, !dbg !176
  %5 = load i32*, i32** %4, align 8, !dbg !176, !tbaa !148
  store i32 %3, i32* %5, align 4, !dbg !178, !tbaa !23
  ret void, !dbg !177
}

; Function Attrs: norecurse nounwind uwtable
define internal i32 @.omp_task_entry..4(i32 %0, %struct.kmp_task_t_with_privates.3* noalias %1) #3 !dbg !179 {
entry:
  %.addr = alloca i32, align 4
  %.addr1 = alloca %struct.kmp_task_t_with_privates.3*, align 8
  store i32 %0, i32* %.addr, align 4, !tbaa !23
  call void @llvm.dbg.declare(metadata i32* %.addr, metadata !181, metadata !DIExpression()), !dbg !188
  store %struct.kmp_task_t_with_privates.3* %1, %struct.kmp_task_t_with_privates.3** %.addr1, align 8, !tbaa !56
  call void @llvm.dbg.declare(metadata %struct.kmp_task_t_with_privates.3** %.addr1, metadata !182, metadata !DIExpression()), !dbg !188
  %2 = load i32, i32* %.addr, align 4, !dbg !189, !tbaa !23
  %3 = load %struct.kmp_task_t_with_privates.3*, %struct.kmp_task_t_with_privates.3** %.addr1, align 8, !dbg !189
  %4 = getelementptr inbounds %struct.kmp_task_t_with_privates.3, %struct.kmp_task_t_with_privates.3* %3, i32 0, i32 0, !dbg !189
  %5 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 2, !dbg !189
  %6 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 0, !dbg !189
  %7 = load i8*, i8** %6, align 8, !dbg !189, !tbaa !65
  %8 = bitcast i8* %7 to %struct.anon.2*, !dbg !189
  %9 = bitcast %struct.kmp_task_t_with_privates.3* %3 to i8*, !dbg !189
  call void @.omp_outlined..3(i32 %2, i32* %5, i8* null, void (i8*, ...)* null, i8* %9, %struct.anon.2* %8) #7, !dbg !189
  ret i32 0, !dbg !189
}

declare dso_local void @__kmpc_barrier(%struct.ident_t*, i32)

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined..5(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %i, i32* dereferenceable(4) %j, i32* dereferenceable(4) %k) #3 !dbg !190 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %i.addr = alloca i32*, align 8
  %j.addr = alloca i32*, align 8
  %k.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !56
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !192, metadata !DIExpression()), !dbg !197
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !56
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !193, metadata !DIExpression()), !dbg !197
  store i32* %i, i32** %i.addr, align 8, !tbaa !56
  call void @llvm.dbg.declare(metadata i32** %i.addr, metadata !194, metadata !DIExpression()), !dbg !197
  store i32* %j, i32** %j.addr, align 8, !tbaa !56
  call void @llvm.dbg.declare(metadata i32** %j.addr, metadata !195, metadata !DIExpression()), !dbg !197
  store i32* %k, i32** %k.addr, align 8, !tbaa !56
  call void @llvm.dbg.declare(metadata i32** %k.addr, metadata !196, metadata !DIExpression()), !dbg !197
  %0 = load i32*, i32** %i.addr, align 8, !dbg !198, !tbaa !56
  %1 = load i32*, i32** %j.addr, align 8, !dbg !198, !tbaa !56
  %2 = load i32*, i32** %k.addr, align 8, !dbg !198, !tbaa !56
  %3 = load i32*, i32** %.global_tid..addr, align 8, !dbg !198, !tbaa !56
  %4 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !198, !tbaa !56
  %5 = load i32*, i32** %i.addr, align 8, !dbg !198, !tbaa !56
  %6 = load i32*, i32** %j.addr, align 8, !dbg !198, !tbaa !56
  %7 = load i32*, i32** %k.addr, align 8, !dbg !198, !tbaa !56
  call void @.omp_outlined._debug__(i32* %3, i32* %4, i32* %5, i32* %6, i32* %7) #7, !dbg !198
  ret void, !dbg !198
}

declare !callback !199 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

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
!1 = !DIFile(filename: "integration/dataracebench/DRB079-taskdep3-orig-no.c", directory: "/home/brad/Code/OpenRace/tests/data")
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
!17 = !{!18, !19, !20}
!18 = !DILocalVariable(name: "i", scope: !13, file: !1, line: 55, type: !16)
!19 = !DILocalVariable(name: "j", scope: !13, file: !1, line: 55, type: !16)
!20 = !DILocalVariable(name: "k", scope: !13, file: !1, line: 55, type: !16)
!21 = !DILocation(line: 55, column: 3, scope: !13)
!22 = !DILocation(line: 55, column: 7, scope: !13)
!23 = !{!24, !24, i64 0}
!24 = !{!"int", !25, i64 0}
!25 = !{!"omnipotent char", !26, i64 0}
!26 = !{!"Simple C/C++ TBAA"}
!27 = !DILocation(line: 55, column: 12, scope: !13)
!28 = !DILocation(line: 55, column: 15, scope: !13)
!29 = !DILocation(line: 56, column: 1, scope: !13)
!30 = !{!31, !32, i64 16}
!31 = !{!"ident_t", !24, i64 0, !24, i64 4, !24, i64 8, !24, i64 12, !32, i64 16}
!32 = !{!"any pointer", !25, i64 0}
!33 = !DILocation(line: 69, column: 26, scope: !13)
!34 = !DILocation(line: 69, column: 29, scope: !13)
!35 = !DILocation(line: 69, column: 3, scope: !13)
!36 = !DILocation(line: 70, column: 3, scope: !37)
!37 = distinct !DILexicalBlock(scope: !38, file: !1, line: 70, column: 3)
!38 = distinct !DILexicalBlock(scope: !13, file: !1, line: 70, column: 3)
!39 = !DILocation(line: 70, column: 3, scope: !38)
!40 = !DILocation(line: 72, column: 1, scope: !13)
!41 = !DILocation(line: 71, column: 3, scope: !13)
!42 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 57, type: !43, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !50)
!43 = !DISubroutineType(types: !44)
!44 = !{null, !45, !45, !49, !49, !49}
!45 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!46 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !47)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !16)
!49 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !16, size: 64)
!50 = !{!51, !52, !53, !54, !55}
!51 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !42, type: !45, flags: DIFlagArtificial)
!52 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !42, type: !45, flags: DIFlagArtificial)
!53 = !DILocalVariable(name: "i", arg: 3, scope: !42, file: !1, line: 55, type: !49)
!54 = !DILocalVariable(name: "j", arg: 4, scope: !42, file: !1, line: 55, type: !49)
!55 = !DILocalVariable(name: "k", arg: 5, scope: !42, file: !1, line: 55, type: !49)
!56 = !{!32, !32, i64 0}
!57 = !DILocation(line: 0, scope: !42)
!58 = !DILocation(line: 55, column: 7, scope: !42)
!59 = !DILocation(line: 55, column: 12, scope: !42)
!60 = !DILocation(line: 55, column: 15, scope: !42)
!61 = !DILocation(line: 57, column: 1, scope: !42)
!62 = !DILocation(line: 59, column: 1, scope: !63)
!63 = distinct !DILexicalBlock(scope: !64, file: !1, line: 58, column: 3)
!64 = distinct !DILexicalBlock(scope: !42, file: !1, line: 57, column: 1)
!65 = !{!66, !32, i64 0}
!66 = !{!"kmp_task_t_with_privates", !67, i64 0}
!67 = !{!"kmp_task_t", !32, i64 0, !32, i64 8, !24, i64 16, !25, i64 24, !25, i64 32}
!68 = !{i64 0, i64 8, !56}
!69 = !{!70, !71, i64 0}
!70 = !{!"kmp_depend_info", !71, i64 0, !71, i64 8, !25, i64 16}
!71 = !{!"long", !25, i64 0}
!72 = !{!70, !71, i64 8}
!73 = !{!70, !25, i64 16}
!74 = !DILocation(line: 64, column: 1, scope: !63)
!75 = !{i64 0, i64 8, !56, i64 8, i64 8, !56}
!76 = !DILocation(line: 66, column: 1, scope: !63)
!77 = !DILocation(line: 68, column: 3, scope: !63)
!78 = !DILocation(line: 57, column: 19, scope: !64)
!79 = !DILocation(line: 57, column: 19, scope: !42)
!80 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 62, type: !81, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !96)
!81 = !DISubroutineType(types: !82)
!82 = !{null, !48, !45, !83, !86, !91, !92}
!83 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !84)
!84 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !85)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !87)
!87 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !88)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!89 = !DISubroutineType(types: !90)
!90 = !{null, !83, null}
!91 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !85)
!92 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !93)
!93 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !94)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!95 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 59, size: 64, elements: !2)
!96 = !{!97, !98, !99, !100, !101, !102}
!97 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !80, type: !48, flags: DIFlagArtificial)
!98 = !DILocalVariable(name: ".part_id.", arg: 2, scope: !80, type: !45, flags: DIFlagArtificial)
!99 = !DILocalVariable(name: ".privates.", arg: 3, scope: !80, type: !83, flags: DIFlagArtificial)
!100 = !DILocalVariable(name: ".copy_fn.", arg: 4, scope: !80, type: !86, flags: DIFlagArtificial)
!101 = !DILocalVariable(name: ".task_t.", arg: 5, scope: !80, type: !91, flags: DIFlagArtificial)
!102 = !DILocalVariable(name: "__context", arg: 6, scope: !80, type: !92, flags: DIFlagArtificial)
!103 = !DILocation(line: 0, scope: !80)
!104 = !DILocation(line: 60, column: 5, scope: !80)
!105 = !DILocation(line: 61, column: 7, scope: !106)
!106 = distinct !DILexicalBlock(scope: !80, file: !1, line: 60, column: 5)
!107 = !DILocation(line: 62, column: 7, scope: !106)
!108 = !{!109, !32, i64 0}
!109 = !{!"", !32, i64 0}
!110 = !DILocation(line: 62, column: 9, scope: !106)
!111 = !DILocation(line: 63, column: 5, scope: !80)
!112 = distinct !DISubprogram(linkageName: ".omp_task_entry.", scope: !1, file: !1, line: 59, type: !113, scopeLine: 59, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !114)
!113 = !DISubroutineType(types: !2)
!114 = !{!115, !116}
!115 = !DILocalVariable(arg: 1, scope: !112, type: !16, flags: DIFlagArtificial)
!116 = !DILocalVariable(arg: 2, scope: !112, type: !117, flags: DIFlagArtificial)
!117 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !118)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t_with_privates", file: !1, size: 320, elements: !120)
!120 = !{!121}
!121 = !DIDerivedType(tag: DW_TAG_member, scope: !119, file: !1, baseType: !122, size: 320)
!122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t", file: !1, size: 320, elements: !123)
!123 = !{!124, !126}
!124 = !DIDerivedType(tag: DW_TAG_member, scope: !122, file: !1, baseType: !125, size: 64, offset: 192)
!125 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "kmp_cmplrdata_t", file: !1, size: 64, elements: !2)
!126 = !DIDerivedType(tag: DW_TAG_member, scope: !122, file: !1, baseType: !125, size: 64, offset: 256)
!127 = !DILocation(line: 0, scope: !112)
!128 = !DILocation(line: 59, column: 1, scope: !112)
!129 = distinct !DISubprogram(name: ".omp_outlined..1", scope: !1, file: !1, line: 65, type: !130, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !136)
!130 = !DISubroutineType(types: !131)
!131 = !{null, !48, !45, !83, !86, !91, !132}
!132 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !133)
!133 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !134)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!135 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 64, size: 128, elements: !2)
!136 = !{!137, !138, !139, !140, !141, !142}
!137 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !129, type: !48, flags: DIFlagArtificial)
!138 = !DILocalVariable(name: ".part_id.", arg: 2, scope: !129, type: !45, flags: DIFlagArtificial)
!139 = !DILocalVariable(name: ".privates.", arg: 3, scope: !129, type: !83, flags: DIFlagArtificial)
!140 = !DILocalVariable(name: ".copy_fn.", arg: 4, scope: !129, type: !86, flags: DIFlagArtificial)
!141 = !DILocalVariable(name: ".task_t.", arg: 5, scope: !129, type: !91, flags: DIFlagArtificial)
!142 = !DILocalVariable(name: "__context", arg: 6, scope: !129, type: !132, flags: DIFlagArtificial)
!143 = !DILocation(line: 0, scope: !129)
!144 = !DILocation(line: 65, column: 5, scope: !129)
!145 = !DILocation(line: 65, column: 8, scope: !129)
!146 = !{!147, !32, i64 8}
!147 = !{!"", !32, i64 0, !32, i64 8}
!148 = !{!147, !32, i64 0}
!149 = !DILocation(line: 65, column: 7, scope: !129)
!150 = distinct !DISubprogram(linkageName: ".omp_task_entry..2", scope: !1, file: !1, line: 64, type: !113, scopeLine: 64, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !151)
!151 = !{!152, !153}
!152 = !DILocalVariable(arg: 1, scope: !150, type: !16, flags: DIFlagArtificial)
!153 = !DILocalVariable(arg: 2, scope: !150, type: !154, flags: DIFlagArtificial)
!154 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !155)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t_with_privates", file: !1, size: 320, elements: !157)
!157 = !{!158}
!158 = !DIDerivedType(tag: DW_TAG_member, scope: !156, file: !1, baseType: !122, size: 320)
!159 = !DILocation(line: 0, scope: !150)
!160 = !DILocation(line: 64, column: 1, scope: !150)
!161 = distinct !DISubprogram(name: ".omp_outlined..3", scope: !1, file: !1, line: 67, type: !162, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !168)
!162 = !DISubroutineType(types: !163)
!163 = !{null, !48, !45, !83, !86, !91, !164}
!164 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !165)
!165 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !166)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 66, size: 128, elements: !2)
!168 = !{!169, !170, !171, !172, !173, !174}
!169 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !161, type: !48, flags: DIFlagArtificial)
!170 = !DILocalVariable(name: ".part_id.", arg: 2, scope: !161, type: !45, flags: DIFlagArtificial)
!171 = !DILocalVariable(name: ".privates.", arg: 3, scope: !161, type: !83, flags: DIFlagArtificial)
!172 = !DILocalVariable(name: ".copy_fn.", arg: 4, scope: !161, type: !86, flags: DIFlagArtificial)
!173 = !DILocalVariable(name: ".task_t.", arg: 5, scope: !161, type: !91, flags: DIFlagArtificial)
!174 = !DILocalVariable(name: "__context", arg: 6, scope: !161, type: !164, flags: DIFlagArtificial)
!175 = !DILocation(line: 0, scope: !161)
!176 = !DILocation(line: 67, column: 5, scope: !161)
!177 = !DILocation(line: 67, column: 8, scope: !161)
!178 = !DILocation(line: 67, column: 7, scope: !161)
!179 = distinct !DISubprogram(linkageName: ".omp_task_entry..4", scope: !1, file: !1, line: 66, type: !113, scopeLine: 66, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !180)
!180 = !{!181, !182}
!181 = !DILocalVariable(arg: 1, scope: !179, type: !16, flags: DIFlagArtificial)
!182 = !DILocalVariable(arg: 2, scope: !179, type: !183, flags: DIFlagArtificial)
!183 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !184)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t_with_privates", file: !1, size: 320, elements: !186)
!186 = !{!187}
!187 = !DIDerivedType(tag: DW_TAG_member, scope: !185, file: !1, baseType: !122, size: 320)
!188 = !DILocation(line: 0, scope: !179)
!189 = !DILocation(line: 66, column: 1, scope: !179)
!190 = distinct !DISubprogram(name: ".omp_outlined..5", scope: !1, file: !1, line: 57, type: !43, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !191)
!191 = !{!192, !193, !194, !195, !196}
!192 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !190, type: !45, flags: DIFlagArtificial)
!193 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !190, type: !45, flags: DIFlagArtificial)
!194 = !DILocalVariable(name: "i", arg: 3, scope: !190, type: !49, flags: DIFlagArtificial)
!195 = !DILocalVariable(name: "j", arg: 4, scope: !190, type: !49, flags: DIFlagArtificial)
!196 = !DILocalVariable(name: "k", arg: 5, scope: !190, type: !49, flags: DIFlagArtificial)
!197 = !DILocation(line: 0, scope: !190)
!198 = !DILocation(line: 57, column: 1, scope: !190)
!199 = !{!200}
!200 = !{i64 2, i64 -1, i64 -1, i1 true}
