; ModuleID = 'integration/dataracebench/DRB135-taskdep-mutexinoutset-orig-no.c'
source_filename = "integration/dataracebench/DRB135-taskdep-mutexinoutset-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }
%struct.anon = type { i32* }
%struct.kmp_depend_info = type { i64, i64, i8 }
%struct.anon.0 = type { i32* }
%struct.anon.2 = type { i32* }
%struct.anon.4 = type { i32*, i32* }
%struct.anon.6 = type { i32*, i32* }
%struct.anon.8 = type { i32*, i32* }
%struct.kmp_task_t_with_privates = type { %struct.kmp_task_t }
%struct.kmp_task_t = type { i8*, i32 (i32, i8*)*, i32, %union.kmp_cmplrdata_t, %union.kmp_cmplrdata_t }
%union.kmp_cmplrdata_t = type { i32 (i32, i8*)* }
%struct.kmp_task_t_with_privates.1 = type { %struct.kmp_task_t }
%struct.kmp_task_t_with_privates.3 = type { %struct.kmp_task_t }
%struct.kmp_task_t_with_privates.5 = type { %struct.kmp_task_t }
%struct.kmp_task_t_with_privates.7 = type { %struct.kmp_task_t }
%struct.kmp_task_t_with_privates.9 = type { %struct.kmp_task_t }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [78 x i8] c";integration/dataracebench/DRB135-taskdep-mutexinoutset-orig-no.c;main;24;3;;\00", align 1
@2 = private unnamed_addr constant [78 x i8] c";integration/dataracebench/DRB135-taskdep-mutexinoutset-orig-no.c;main;26;5;;\00", align 1
@3 = private unnamed_addr constant [78 x i8] c";integration/dataracebench/DRB135-taskdep-mutexinoutset-orig-no.c;main;28;5;;\00", align 1
@4 = private unnamed_addr constant [78 x i8] c";integration/dataracebench/DRB135-taskdep-mutexinoutset-orig-no.c;main;30;5;;\00", align 1
@5 = private unnamed_addr constant [78 x i8] c";integration/dataracebench/DRB135-taskdep-mutexinoutset-orig-no.c;main;32;5;;\00", align 1
@6 = private unnamed_addr constant [78 x i8] c";integration/dataracebench/DRB135-taskdep-mutexinoutset-orig-no.c;main;34;5;;\00", align 1
@7 = private unnamed_addr constant [78 x i8] c";integration/dataracebench/DRB135-taskdep-mutexinoutset-orig-no.c;main;36;5;;\00", align 1
@8 = private unnamed_addr constant [78 x i8] c";integration/dataracebench/DRB135-taskdep-mutexinoutset-orig-no.c;main;23;3;;\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main() #0 !dbg !7 {
entry:
  %retval = alloca i32, align 4
  %a = alloca i32, align 4
  %b = alloca i32, align 4
  %c = alloca i32, align 4
  %d = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32 0, i32* %retval, align 4
  %2 = bitcast i32* %a to i8*, !dbg !16
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #6, !dbg !16
  call void @llvm.dbg.declare(metadata i32* %a, metadata !12, metadata !DIExpression()), !dbg !17
  %3 = bitcast i32* %b to i8*, !dbg !16
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #6, !dbg !16
  call void @llvm.dbg.declare(metadata i32* %b, metadata !13, metadata !DIExpression()), !dbg !18
  %4 = bitcast i32* %c to i8*, !dbg !16
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #6, !dbg !16
  call void @llvm.dbg.declare(metadata i32* %c, metadata !14, metadata !DIExpression()), !dbg !19
  %5 = bitcast i32* %d to i8*, !dbg !16
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #6, !dbg !16
  call void @llvm.dbg.declare(metadata i32* %d, metadata !15, metadata !DIExpression()), !dbg !20
  %6 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !21
  store i8* getelementptr inbounds ([78 x i8], [78 x i8]* @8, i32 0, i32 0), i8** %6, align 8, !dbg !21, !tbaa !22
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 4, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*, i32*, i32*)* @.omp_outlined..11 to void (i32*, i32*, ...)*), i32* %c, i32* %a, i32* %b, i32* %d), !dbg !21
  %7 = load i32, i32* %d, align 4, !dbg !28, !tbaa !29
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i32 %7), !dbg !30
  %8 = bitcast i32* %d to i8*, !dbg !31
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %8) #6, !dbg !31
  %9 = bitcast i32* %c to i8*, !dbg !31
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %9) #6, !dbg !31
  %10 = bitcast i32* %b to i8*, !dbg !31
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %10) #6, !dbg !31
  %11 = bitcast i32* %a to i8*, !dbg !31
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %11) #6, !dbg !31
  ret i32 0, !dbg !32
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %c, i32* dereferenceable(4) %a, i32* dereferenceable(4) %b, i32* dereferenceable(4) %d) #3 !dbg !33 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %c.addr = alloca i32*, align 8
  %a.addr = alloca i32*, align 8
  %b.addr = alloca i32*, align 8
  %d.addr = alloca i32*, align 8
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %agg.captured = alloca %struct.anon, align 8
  %.dep.arr.addr = alloca [1 x %struct.kmp_depend_info], align 8
  %agg.captured1 = alloca %struct.anon.0, align 8
  %.dep.arr.addr2 = alloca [1 x %struct.kmp_depend_info], align 8
  %agg.captured3 = alloca %struct.anon.2, align 8
  %.dep.arr.addr4 = alloca [1 x %struct.kmp_depend_info], align 8
  %agg.captured5 = alloca %struct.anon.4, align 8
  %.dep.arr.addr6 = alloca [2 x %struct.kmp_depend_info], align 8
  %agg.captured7 = alloca %struct.anon.6, align 8
  %.dep.arr.addr8 = alloca [2 x %struct.kmp_depend_info], align 8
  %agg.captured9 = alloca %struct.anon.8, align 8
  %.dep.arr.addr10 = alloca [1 x %struct.kmp_depend_info], align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !48
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !42, metadata !DIExpression()), !dbg !49
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !48
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !43, metadata !DIExpression()), !dbg !49
  store i32* %c, i32** %c.addr, align 8, !tbaa !48
  call void @llvm.dbg.declare(metadata i32** %c.addr, metadata !44, metadata !DIExpression()), !dbg !50
  store i32* %a, i32** %a.addr, align 8, !tbaa !48
  call void @llvm.dbg.declare(metadata i32** %a.addr, metadata !45, metadata !DIExpression()), !dbg !51
  store i32* %b, i32** %b.addr, align 8, !tbaa !48
  call void @llvm.dbg.declare(metadata i32** %b.addr, metadata !46, metadata !DIExpression()), !dbg !52
  store i32* %d, i32** %d.addr, align 8, !tbaa !48
  call void @llvm.dbg.declare(metadata i32** %d.addr, metadata !47, metadata !DIExpression()), !dbg !53
  %2 = load i32*, i32** %c.addr, align 8, !dbg !54, !tbaa !48
  %3 = load i32*, i32** %a.addr, align 8, !dbg !54, !tbaa !48
  %4 = load i32*, i32** %b.addr, align 8, !dbg !54, !tbaa !48
  %5 = load i32*, i32** %d.addr, align 8, !dbg !54, !tbaa !48
  %6 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !54
  store i8* getelementptr inbounds ([78 x i8], [78 x i8]* @1, i32 0, i32 0), i8** %6, align 8, !dbg !54, !tbaa !22
  %7 = load i32*, i32** %.global_tid..addr, align 8, !dbg !54
  %8 = load i32, i32* %7, align 4, !dbg !54, !tbaa !29
  %9 = call i32 @__kmpc_single(%struct.ident_t* %.kmpc_loc.addr, i32 %8), !dbg !54
  %10 = icmp ne i32 %9, 0, !dbg !54
  br i1 %10, label %omp_if.then, label %omp_if.end, !dbg !54

omp_if.then:                                      ; preds = %entry
  %11 = getelementptr inbounds %struct.anon, %struct.anon* %agg.captured, i32 0, i32 0, !dbg !55
  store i32* %2, i32** %11, align 8, !dbg !55, !tbaa !48
  %12 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !55
  store i8* getelementptr inbounds ([78 x i8], [78 x i8]* @2, i32 0, i32 0), i8** %12, align 8, !dbg !55, !tbaa !22
  %13 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* %.kmpc_loc.addr, i32 %8, i32 1, i64 40, i64 8, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates*)* @.omp_task_entry. to i32 (i32, i8*)*)), !dbg !55
  %14 = bitcast i8* %13 to %struct.kmp_task_t_with_privates*, !dbg !55
  %15 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %14, i32 0, i32 0, !dbg !55
  %16 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %15, i32 0, i32 0, !dbg !55
  %17 = load i8*, i8** %16, align 8, !dbg !55, !tbaa !58
  %18 = bitcast %struct.anon* %agg.captured to i8*, !dbg !55
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %17, i8* align 8 %18, i64 8, i1 false), !dbg !55, !tbaa.struct !61
  %19 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %.dep.arr.addr, i64 0, i64 0, !dbg !55
  %20 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %19, i32 0, i32 0, !dbg !55
  %21 = ptrtoint i32* %2 to i64, !dbg !55
  store i64 %21, i64* %20, align 8, !dbg !55, !tbaa !62
  %22 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %19, i32 0, i32 1, !dbg !55
  store i64 4, i64* %22, align 8, !dbg !55, !tbaa !65
  %23 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %19, i32 0, i32 2, !dbg !55
  store i8 3, i8* %23, align 8, !dbg !55, !tbaa !66
  %24 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %.dep.arr.addr, i64 0, i64 0, !dbg !55
  %25 = bitcast %struct.kmp_depend_info* %24 to i8*, !dbg !55
  %26 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !55
  store i8* getelementptr inbounds ([78 x i8], [78 x i8]* @2, i32 0, i32 0), i8** %26, align 8, !dbg !55, !tbaa !22
  %27 = call i32 @__kmpc_omp_task_with_deps(%struct.ident_t* %.kmpc_loc.addr, i32 %8, i8* %13, i32 1, i8* %25, i32 0, i8* null), !dbg !55
  %28 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %agg.captured1, i32 0, i32 0, !dbg !67
  store i32* %3, i32** %28, align 8, !dbg !67, !tbaa !48
  %29 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !67
  store i8* getelementptr inbounds ([78 x i8], [78 x i8]* @3, i32 0, i32 0), i8** %29, align 8, !dbg !67, !tbaa !22
  %30 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* %.kmpc_loc.addr, i32 %8, i32 1, i64 40, i64 8, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates.1*)* @.omp_task_entry..2 to i32 (i32, i8*)*)), !dbg !67
  %31 = bitcast i8* %30 to %struct.kmp_task_t_with_privates.1*, !dbg !67
  %32 = getelementptr inbounds %struct.kmp_task_t_with_privates.1, %struct.kmp_task_t_with_privates.1* %31, i32 0, i32 0, !dbg !67
  %33 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %32, i32 0, i32 0, !dbg !67
  %34 = load i8*, i8** %33, align 8, !dbg !67, !tbaa !58
  %35 = bitcast %struct.anon.0* %agg.captured1 to i8*, !dbg !67
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %34, i8* align 8 %35, i64 8, i1 false), !dbg !67, !tbaa.struct !61
  %36 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %.dep.arr.addr2, i64 0, i64 0, !dbg !67
  %37 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %36, i32 0, i32 0, !dbg !67
  %38 = ptrtoint i32* %3 to i64, !dbg !67
  store i64 %38, i64* %37, align 8, !dbg !67, !tbaa !62
  %39 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %36, i32 0, i32 1, !dbg !67
  store i64 4, i64* %39, align 8, !dbg !67, !tbaa !65
  %40 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %36, i32 0, i32 2, !dbg !67
  store i8 3, i8* %40, align 8, !dbg !67, !tbaa !66
  %41 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %.dep.arr.addr2, i64 0, i64 0, !dbg !67
  %42 = bitcast %struct.kmp_depend_info* %41 to i8*, !dbg !67
  %43 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !67
  store i8* getelementptr inbounds ([78 x i8], [78 x i8]* @3, i32 0, i32 0), i8** %43, align 8, !dbg !67, !tbaa !22
  %44 = call i32 @__kmpc_omp_task_with_deps(%struct.ident_t* %.kmpc_loc.addr, i32 %8, i8* %30, i32 1, i8* %42, i32 0, i8* null), !dbg !67
  %45 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %agg.captured3, i32 0, i32 0, !dbg !68
  store i32* %4, i32** %45, align 8, !dbg !68, !tbaa !48
  %46 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !68
  store i8* getelementptr inbounds ([78 x i8], [78 x i8]* @4, i32 0, i32 0), i8** %46, align 8, !dbg !68, !tbaa !22
  %47 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* %.kmpc_loc.addr, i32 %8, i32 1, i64 40, i64 8, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates.3*)* @.omp_task_entry..4 to i32 (i32, i8*)*)), !dbg !68
  %48 = bitcast i8* %47 to %struct.kmp_task_t_with_privates.3*, !dbg !68
  %49 = getelementptr inbounds %struct.kmp_task_t_with_privates.3, %struct.kmp_task_t_with_privates.3* %48, i32 0, i32 0, !dbg !68
  %50 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %49, i32 0, i32 0, !dbg !68
  %51 = load i8*, i8** %50, align 8, !dbg !68, !tbaa !58
  %52 = bitcast %struct.anon.2* %agg.captured3 to i8*, !dbg !68
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %51, i8* align 8 %52, i64 8, i1 false), !dbg !68, !tbaa.struct !61
  %53 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %.dep.arr.addr4, i64 0, i64 0, !dbg !68
  %54 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %53, i32 0, i32 0, !dbg !68
  %55 = ptrtoint i32* %4 to i64, !dbg !68
  store i64 %55, i64* %54, align 8, !dbg !68, !tbaa !62
  %56 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %53, i32 0, i32 1, !dbg !68
  store i64 4, i64* %56, align 8, !dbg !68, !tbaa !65
  %57 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %53, i32 0, i32 2, !dbg !68
  store i8 3, i8* %57, align 8, !dbg !68, !tbaa !66
  %58 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %.dep.arr.addr4, i64 0, i64 0, !dbg !68
  %59 = bitcast %struct.kmp_depend_info* %58 to i8*, !dbg !68
  %60 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !68
  store i8* getelementptr inbounds ([78 x i8], [78 x i8]* @4, i32 0, i32 0), i8** %60, align 8, !dbg !68, !tbaa !22
  %61 = call i32 @__kmpc_omp_task_with_deps(%struct.ident_t* %.kmpc_loc.addr, i32 %8, i8* %47, i32 1, i8* %59, i32 0, i8* null), !dbg !68
  %62 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %agg.captured5, i32 0, i32 0, !dbg !69
  store i32* %2, i32** %62, align 8, !dbg !69, !tbaa !48
  %63 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %agg.captured5, i32 0, i32 1, !dbg !69
  store i32* %3, i32** %63, align 8, !dbg !69, !tbaa !48
  %64 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !69
  store i8* getelementptr inbounds ([78 x i8], [78 x i8]* @5, i32 0, i32 0), i8** %64, align 8, !dbg !69, !tbaa !22
  %65 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* %.kmpc_loc.addr, i32 %8, i32 1, i64 40, i64 16, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates.5*)* @.omp_task_entry..6 to i32 (i32, i8*)*)), !dbg !69
  %66 = bitcast i8* %65 to %struct.kmp_task_t_with_privates.5*, !dbg !69
  %67 = getelementptr inbounds %struct.kmp_task_t_with_privates.5, %struct.kmp_task_t_with_privates.5* %66, i32 0, i32 0, !dbg !69
  %68 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %67, i32 0, i32 0, !dbg !69
  %69 = load i8*, i8** %68, align 8, !dbg !69, !tbaa !58
  %70 = bitcast %struct.anon.4* %agg.captured5 to i8*, !dbg !69
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %69, i8* align 8 %70, i64 16, i1 false), !dbg !69, !tbaa.struct !70
  %71 = getelementptr inbounds [2 x %struct.kmp_depend_info], [2 x %struct.kmp_depend_info]* %.dep.arr.addr6, i64 0, i64 0, !dbg !69
  %72 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %71, i32 0, i32 0, !dbg !69
  %73 = ptrtoint i32* %3 to i64, !dbg !69
  store i64 %73, i64* %72, align 8, !dbg !69, !tbaa !62
  %74 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %71, i32 0, i32 1, !dbg !69
  store i64 4, i64* %74, align 8, !dbg !69, !tbaa !65
  %75 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %71, i32 0, i32 2, !dbg !69
  store i8 1, i8* %75, align 8, !dbg !69, !tbaa !66
  %76 = getelementptr inbounds [2 x %struct.kmp_depend_info], [2 x %struct.kmp_depend_info]* %.dep.arr.addr6, i64 0, i64 1, !dbg !69
  %77 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %76, i32 0, i32 0, !dbg !69
  %78 = ptrtoint i32* %2 to i64, !dbg !69
  store i64 %78, i64* %77, align 8, !dbg !69, !tbaa !62
  %79 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %76, i32 0, i32 1, !dbg !69
  store i64 4, i64* %79, align 8, !dbg !69, !tbaa !65
  %80 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %76, i32 0, i32 2, !dbg !69
  store i8 4, i8* %80, align 8, !dbg !69, !tbaa !66
  %81 = getelementptr inbounds [2 x %struct.kmp_depend_info], [2 x %struct.kmp_depend_info]* %.dep.arr.addr6, i64 0, i64 0, !dbg !69
  %82 = bitcast %struct.kmp_depend_info* %81 to i8*, !dbg !69
  %83 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !69
  store i8* getelementptr inbounds ([78 x i8], [78 x i8]* @5, i32 0, i32 0), i8** %83, align 8, !dbg !69, !tbaa !22
  %84 = call i32 @__kmpc_omp_task_with_deps(%struct.ident_t* %.kmpc_loc.addr, i32 %8, i8* %65, i32 2, i8* %82, i32 0, i8* null), !dbg !69
  %85 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %agg.captured7, i32 0, i32 0, !dbg !71
  store i32* %2, i32** %85, align 8, !dbg !71, !tbaa !48
  %86 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %agg.captured7, i32 0, i32 1, !dbg !71
  store i32* %4, i32** %86, align 8, !dbg !71, !tbaa !48
  %87 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !71
  store i8* getelementptr inbounds ([78 x i8], [78 x i8]* @6, i32 0, i32 0), i8** %87, align 8, !dbg !71, !tbaa !22
  %88 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* %.kmpc_loc.addr, i32 %8, i32 1, i64 40, i64 16, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates.7*)* @.omp_task_entry..8 to i32 (i32, i8*)*)), !dbg !71
  %89 = bitcast i8* %88 to %struct.kmp_task_t_with_privates.7*, !dbg !71
  %90 = getelementptr inbounds %struct.kmp_task_t_with_privates.7, %struct.kmp_task_t_with_privates.7* %89, i32 0, i32 0, !dbg !71
  %91 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %90, i32 0, i32 0, !dbg !71
  %92 = load i8*, i8** %91, align 8, !dbg !71, !tbaa !58
  %93 = bitcast %struct.anon.6* %agg.captured7 to i8*, !dbg !71
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %92, i8* align 8 %93, i64 16, i1 false), !dbg !71, !tbaa.struct !70
  %94 = getelementptr inbounds [2 x %struct.kmp_depend_info], [2 x %struct.kmp_depend_info]* %.dep.arr.addr8, i64 0, i64 0, !dbg !71
  %95 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %94, i32 0, i32 0, !dbg !71
  %96 = ptrtoint i32* %4 to i64, !dbg !71
  store i64 %96, i64* %95, align 8, !dbg !71, !tbaa !62
  %97 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %94, i32 0, i32 1, !dbg !71
  store i64 4, i64* %97, align 8, !dbg !71, !tbaa !65
  %98 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %94, i32 0, i32 2, !dbg !71
  store i8 1, i8* %98, align 8, !dbg !71, !tbaa !66
  %99 = getelementptr inbounds [2 x %struct.kmp_depend_info], [2 x %struct.kmp_depend_info]* %.dep.arr.addr8, i64 0, i64 1, !dbg !71
  %100 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %99, i32 0, i32 0, !dbg !71
  %101 = ptrtoint i32* %2 to i64, !dbg !71
  store i64 %101, i64* %100, align 8, !dbg !71, !tbaa !62
  %102 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %99, i32 0, i32 1, !dbg !71
  store i64 4, i64* %102, align 8, !dbg !71, !tbaa !65
  %103 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %99, i32 0, i32 2, !dbg !71
  store i8 4, i8* %103, align 8, !dbg !71, !tbaa !66
  %104 = getelementptr inbounds [2 x %struct.kmp_depend_info], [2 x %struct.kmp_depend_info]* %.dep.arr.addr8, i64 0, i64 0, !dbg !71
  %105 = bitcast %struct.kmp_depend_info* %104 to i8*, !dbg !71
  %106 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !71
  store i8* getelementptr inbounds ([78 x i8], [78 x i8]* @6, i32 0, i32 0), i8** %106, align 8, !dbg !71, !tbaa !22
  %107 = call i32 @__kmpc_omp_task_with_deps(%struct.ident_t* %.kmpc_loc.addr, i32 %8, i8* %88, i32 2, i8* %105, i32 0, i8* null), !dbg !71
  %108 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %agg.captured9, i32 0, i32 0, !dbg !72
  store i32* %5, i32** %108, align 8, !dbg !72, !tbaa !48
  %109 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %agg.captured9, i32 0, i32 1, !dbg !72
  store i32* %2, i32** %109, align 8, !dbg !72, !tbaa !48
  %110 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !72
  store i8* getelementptr inbounds ([78 x i8], [78 x i8]* @7, i32 0, i32 0), i8** %110, align 8, !dbg !72, !tbaa !22
  %111 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* %.kmpc_loc.addr, i32 %8, i32 1, i64 40, i64 16, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates.9*)* @.omp_task_entry..10 to i32 (i32, i8*)*)), !dbg !72
  %112 = bitcast i8* %111 to %struct.kmp_task_t_with_privates.9*, !dbg !72
  %113 = getelementptr inbounds %struct.kmp_task_t_with_privates.9, %struct.kmp_task_t_with_privates.9* %112, i32 0, i32 0, !dbg !72
  %114 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %113, i32 0, i32 0, !dbg !72
  %115 = load i8*, i8** %114, align 8, !dbg !72, !tbaa !58
  %116 = bitcast %struct.anon.8* %agg.captured9 to i8*, !dbg !72
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %115, i8* align 8 %116, i64 16, i1 false), !dbg !72, !tbaa.struct !70
  %117 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %.dep.arr.addr10, i64 0, i64 0, !dbg !72
  %118 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %117, i32 0, i32 0, !dbg !72
  %119 = ptrtoint i32* %2 to i64, !dbg !72
  store i64 %119, i64* %118, align 8, !dbg !72, !tbaa !62
  %120 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %117, i32 0, i32 1, !dbg !72
  store i64 4, i64* %120, align 8, !dbg !72, !tbaa !65
  %121 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %117, i32 0, i32 2, !dbg !72
  store i8 1, i8* %121, align 8, !dbg !72, !tbaa !66
  %122 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %.dep.arr.addr10, i64 0, i64 0, !dbg !72
  %123 = bitcast %struct.kmp_depend_info* %122 to i8*, !dbg !72
  %124 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !72
  store i8* getelementptr inbounds ([78 x i8], [78 x i8]* @7, i32 0, i32 0), i8** %124, align 8, !dbg !72, !tbaa !22
  %125 = call i32 @__kmpc_omp_task_with_deps(%struct.ident_t* %.kmpc_loc.addr, i32 %8, i8* %111, i32 1, i8* %123, i32 0, i8* null), !dbg !72
  call void @__kmpc_end_single(%struct.ident_t* %.kmpc_loc.addr, i32 %8), !dbg !73
  br label %omp_if.end, !dbg !73

omp_if.end:                                       ; preds = %omp_if.then, %entry
  %126 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !74
  store i8* getelementptr inbounds ([78 x i8], [78 x i8]* @1, i32 0, i32 0), i8** %126, align 8, !dbg !74, !tbaa !22
  call void @__kmpc_barrier(%struct.ident_t* %.kmpc_loc.addr, i32 %8), !dbg !74
  ret void, !dbg !75
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local void @__kmpc_end_single(%struct.ident_t*, i32)

declare dso_local i32 @__kmpc_single(%struct.ident_t*, i32)

; Function Attrs: alwaysinline nounwind uwtable
define internal void @.omp_outlined.(i32 %.global_tid., i32* noalias %.part_id., i8* noalias %.privates., void (i8*, ...)* noalias %.copy_fn., i8* %.task_t., %struct.anon* noalias %__context) #4 !dbg !76 {
entry:
  %.global_tid..addr = alloca i32, align 4
  %.part_id..addr = alloca i32*, align 8
  %.privates..addr = alloca i8*, align 8
  %.copy_fn..addr = alloca void (i8*, ...)*, align 8
  %.task_t..addr = alloca i8*, align 8
  %__context.addr = alloca %struct.anon*, align 8
  store i32 %.global_tid., i32* %.global_tid..addr, align 4, !tbaa !29
  call void @llvm.dbg.declare(metadata i32* %.global_tid..addr, metadata !93, metadata !DIExpression()), !dbg !99
  store i32* %.part_id., i32** %.part_id..addr, align 8, !tbaa !48
  call void @llvm.dbg.declare(metadata i32** %.part_id..addr, metadata !94, metadata !DIExpression()), !dbg !99
  store i8* %.privates., i8** %.privates..addr, align 8, !tbaa !48
  call void @llvm.dbg.declare(metadata i8** %.privates..addr, metadata !95, metadata !DIExpression()), !dbg !99
  store void (i8*, ...)* %.copy_fn., void (i8*, ...)** %.copy_fn..addr, align 8, !tbaa !48
  call void @llvm.dbg.declare(metadata void (i8*, ...)** %.copy_fn..addr, metadata !96, metadata !DIExpression()), !dbg !99
  store i8* %.task_t., i8** %.task_t..addr, align 8, !tbaa !48
  call void @llvm.dbg.declare(metadata i8** %.task_t..addr, metadata !97, metadata !DIExpression()), !dbg !99
  store %struct.anon* %__context, %struct.anon** %__context.addr, align 8, !tbaa !48
  call void @llvm.dbg.declare(metadata %struct.anon** %__context.addr, metadata !98, metadata !DIExpression()), !dbg !99
  %0 = load %struct.anon*, %struct.anon** %__context.addr, align 8, !dbg !100
  %1 = getelementptr inbounds %struct.anon, %struct.anon* %0, i32 0, i32 0, !dbg !100
  %2 = load i32*, i32** %1, align 8, !dbg !100, !tbaa !101
  store i32 1, i32* %2, align 4, !dbg !103, !tbaa !29
  ret void, !dbg !104
}

; Function Attrs: norecurse nounwind uwtable
define internal i32 @.omp_task_entry.(i32 %0, %struct.kmp_task_t_with_privates* noalias %1) #3 !dbg !105 {
entry:
  %.addr = alloca i32, align 4
  %.addr1 = alloca %struct.kmp_task_t_with_privates*, align 8
  store i32 %0, i32* %.addr, align 4, !tbaa !29
  call void @llvm.dbg.declare(metadata i32* %.addr, metadata !108, metadata !DIExpression()), !dbg !120
  store %struct.kmp_task_t_with_privates* %1, %struct.kmp_task_t_with_privates** %.addr1, align 8, !tbaa !48
  call void @llvm.dbg.declare(metadata %struct.kmp_task_t_with_privates** %.addr1, metadata !109, metadata !DIExpression()), !dbg !120
  %2 = load i32, i32* %.addr, align 4, !dbg !121, !tbaa !29
  %3 = load %struct.kmp_task_t_with_privates*, %struct.kmp_task_t_with_privates** %.addr1, align 8, !dbg !121
  %4 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %3, i32 0, i32 0, !dbg !121
  %5 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 2, !dbg !121
  %6 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 0, !dbg !121
  %7 = load i8*, i8** %6, align 8, !dbg !121, !tbaa !58
  %8 = bitcast i8* %7 to %struct.anon*, !dbg !121
  %9 = bitcast %struct.kmp_task_t_with_privates* %3 to i8*, !dbg !121
  call void @.omp_outlined.(i32 %2, i32* %5, i8* null, void (i8*, ...)* null, i8* %9, %struct.anon* %8) #6, !dbg !121
  ret i32 0, !dbg !121
}

declare dso_local i8* @__kmpc_omp_task_alloc(%struct.ident_t*, i32, i32, i64, i64, i32 (i32, i8*)*)

declare dso_local i32 @__kmpc_omp_task_with_deps(%struct.ident_t*, i32, i8*, i32, i8*, i32, i8*)

; Function Attrs: alwaysinline nounwind uwtable
define internal void @.omp_outlined..1(i32 %.global_tid., i32* noalias %.part_id., i8* noalias %.privates., void (i8*, ...)* noalias %.copy_fn., i8* %.task_t., %struct.anon.0* noalias %__context) #4 !dbg !122 {
entry:
  %.global_tid..addr = alloca i32, align 4
  %.part_id..addr = alloca i32*, align 8
  %.privates..addr = alloca i8*, align 8
  %.copy_fn..addr = alloca void (i8*, ...)*, align 8
  %.task_t..addr = alloca i8*, align 8
  %__context.addr = alloca %struct.anon.0*, align 8
  store i32 %.global_tid., i32* %.global_tid..addr, align 4, !tbaa !29
  call void @llvm.dbg.declare(metadata i32* %.global_tid..addr, metadata !130, metadata !DIExpression()), !dbg !136
  store i32* %.part_id., i32** %.part_id..addr, align 8, !tbaa !48
  call void @llvm.dbg.declare(metadata i32** %.part_id..addr, metadata !131, metadata !DIExpression()), !dbg !136
  store i8* %.privates., i8** %.privates..addr, align 8, !tbaa !48
  call void @llvm.dbg.declare(metadata i8** %.privates..addr, metadata !132, metadata !DIExpression()), !dbg !136
  store void (i8*, ...)* %.copy_fn., void (i8*, ...)** %.copy_fn..addr, align 8, !tbaa !48
  call void @llvm.dbg.declare(metadata void (i8*, ...)** %.copy_fn..addr, metadata !133, metadata !DIExpression()), !dbg !136
  store i8* %.task_t., i8** %.task_t..addr, align 8, !tbaa !48
  call void @llvm.dbg.declare(metadata i8** %.task_t..addr, metadata !134, metadata !DIExpression()), !dbg !136
  store %struct.anon.0* %__context, %struct.anon.0** %__context.addr, align 8, !tbaa !48
  call void @llvm.dbg.declare(metadata %struct.anon.0** %__context.addr, metadata !135, metadata !DIExpression()), !dbg !136
  %0 = load %struct.anon.0*, %struct.anon.0** %__context.addr, align 8, !dbg !137
  %1 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %0, i32 0, i32 0, !dbg !137
  %2 = load i32*, i32** %1, align 8, !dbg !137, !tbaa !101
  store i32 2, i32* %2, align 4, !dbg !138, !tbaa !29
  ret void, !dbg !139
}

; Function Attrs: norecurse nounwind uwtable
define internal i32 @.omp_task_entry..2(i32 %0, %struct.kmp_task_t_with_privates.1* noalias %1) #3 !dbg !140 {
entry:
  %.addr = alloca i32, align 4
  %.addr1 = alloca %struct.kmp_task_t_with_privates.1*, align 8
  store i32 %0, i32* %.addr, align 4, !tbaa !29
  call void @llvm.dbg.declare(metadata i32* %.addr, metadata !142, metadata !DIExpression()), !dbg !149
  store %struct.kmp_task_t_with_privates.1* %1, %struct.kmp_task_t_with_privates.1** %.addr1, align 8, !tbaa !48
  call void @llvm.dbg.declare(metadata %struct.kmp_task_t_with_privates.1** %.addr1, metadata !143, metadata !DIExpression()), !dbg !149
  %2 = load i32, i32* %.addr, align 4, !dbg !150, !tbaa !29
  %3 = load %struct.kmp_task_t_with_privates.1*, %struct.kmp_task_t_with_privates.1** %.addr1, align 8, !dbg !150
  %4 = getelementptr inbounds %struct.kmp_task_t_with_privates.1, %struct.kmp_task_t_with_privates.1* %3, i32 0, i32 0, !dbg !150
  %5 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 2, !dbg !150
  %6 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 0, !dbg !150
  %7 = load i8*, i8** %6, align 8, !dbg !150, !tbaa !58
  %8 = bitcast i8* %7 to %struct.anon.0*, !dbg !150
  %9 = bitcast %struct.kmp_task_t_with_privates.1* %3 to i8*, !dbg !150
  call void @.omp_outlined..1(i32 %2, i32* %5, i8* null, void (i8*, ...)* null, i8* %9, %struct.anon.0* %8) #6, !dbg !150
  ret i32 0, !dbg !150
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @.omp_outlined..3(i32 %.global_tid., i32* noalias %.part_id., i8* noalias %.privates., void (i8*, ...)* noalias %.copy_fn., i8* %.task_t., %struct.anon.2* noalias %__context) #4 !dbg !151 {
entry:
  %.global_tid..addr = alloca i32, align 4
  %.part_id..addr = alloca i32*, align 8
  %.privates..addr = alloca i8*, align 8
  %.copy_fn..addr = alloca void (i8*, ...)*, align 8
  %.task_t..addr = alloca i8*, align 8
  %__context.addr = alloca %struct.anon.2*, align 8
  store i32 %.global_tid., i32* %.global_tid..addr, align 4, !tbaa !29
  call void @llvm.dbg.declare(metadata i32* %.global_tid..addr, metadata !159, metadata !DIExpression()), !dbg !165
  store i32* %.part_id., i32** %.part_id..addr, align 8, !tbaa !48
  call void @llvm.dbg.declare(metadata i32** %.part_id..addr, metadata !160, metadata !DIExpression()), !dbg !165
  store i8* %.privates., i8** %.privates..addr, align 8, !tbaa !48
  call void @llvm.dbg.declare(metadata i8** %.privates..addr, metadata !161, metadata !DIExpression()), !dbg !165
  store void (i8*, ...)* %.copy_fn., void (i8*, ...)** %.copy_fn..addr, align 8, !tbaa !48
  call void @llvm.dbg.declare(metadata void (i8*, ...)** %.copy_fn..addr, metadata !162, metadata !DIExpression()), !dbg !165
  store i8* %.task_t., i8** %.task_t..addr, align 8, !tbaa !48
  call void @llvm.dbg.declare(metadata i8** %.task_t..addr, metadata !163, metadata !DIExpression()), !dbg !165
  store %struct.anon.2* %__context, %struct.anon.2** %__context.addr, align 8, !tbaa !48
  call void @llvm.dbg.declare(metadata %struct.anon.2** %__context.addr, metadata !164, metadata !DIExpression()), !dbg !165
  %0 = load %struct.anon.2*, %struct.anon.2** %__context.addr, align 8, !dbg !166
  %1 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %0, i32 0, i32 0, !dbg !166
  %2 = load i32*, i32** %1, align 8, !dbg !166, !tbaa !101
  store i32 3, i32* %2, align 4, !dbg !167, !tbaa !29
  ret void, !dbg !168
}

; Function Attrs: norecurse nounwind uwtable
define internal i32 @.omp_task_entry..4(i32 %0, %struct.kmp_task_t_with_privates.3* noalias %1) #3 !dbg !169 {
entry:
  %.addr = alloca i32, align 4
  %.addr1 = alloca %struct.kmp_task_t_with_privates.3*, align 8
  store i32 %0, i32* %.addr, align 4, !tbaa !29
  call void @llvm.dbg.declare(metadata i32* %.addr, metadata !171, metadata !DIExpression()), !dbg !178
  store %struct.kmp_task_t_with_privates.3* %1, %struct.kmp_task_t_with_privates.3** %.addr1, align 8, !tbaa !48
  call void @llvm.dbg.declare(metadata %struct.kmp_task_t_with_privates.3** %.addr1, metadata !172, metadata !DIExpression()), !dbg !178
  %2 = load i32, i32* %.addr, align 4, !dbg !179, !tbaa !29
  %3 = load %struct.kmp_task_t_with_privates.3*, %struct.kmp_task_t_with_privates.3** %.addr1, align 8, !dbg !179
  %4 = getelementptr inbounds %struct.kmp_task_t_with_privates.3, %struct.kmp_task_t_with_privates.3* %3, i32 0, i32 0, !dbg !179
  %5 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 2, !dbg !179
  %6 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 0, !dbg !179
  %7 = load i8*, i8** %6, align 8, !dbg !179, !tbaa !58
  %8 = bitcast i8* %7 to %struct.anon.2*, !dbg !179
  %9 = bitcast %struct.kmp_task_t_with_privates.3* %3 to i8*, !dbg !179
  call void @.omp_outlined..3(i32 %2, i32* %5, i8* null, void (i8*, ...)* null, i8* %9, %struct.anon.2* %8) #6, !dbg !179
  ret i32 0, !dbg !179
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @.omp_outlined..5(i32 %.global_tid., i32* noalias %.part_id., i8* noalias %.privates., void (i8*, ...)* noalias %.copy_fn., i8* %.task_t., %struct.anon.4* noalias %__context) #4 !dbg !180 {
entry:
  %.global_tid..addr = alloca i32, align 4
  %.part_id..addr = alloca i32*, align 8
  %.privates..addr = alloca i8*, align 8
  %.copy_fn..addr = alloca void (i8*, ...)*, align 8
  %.task_t..addr = alloca i8*, align 8
  %__context.addr = alloca %struct.anon.4*, align 8
  store i32 %.global_tid., i32* %.global_tid..addr, align 4, !tbaa !29
  call void @llvm.dbg.declare(metadata i32* %.global_tid..addr, metadata !188, metadata !DIExpression()), !dbg !194
  store i32* %.part_id., i32** %.part_id..addr, align 8, !tbaa !48
  call void @llvm.dbg.declare(metadata i32** %.part_id..addr, metadata !189, metadata !DIExpression()), !dbg !194
  store i8* %.privates., i8** %.privates..addr, align 8, !tbaa !48
  call void @llvm.dbg.declare(metadata i8** %.privates..addr, metadata !190, metadata !DIExpression()), !dbg !194
  store void (i8*, ...)* %.copy_fn., void (i8*, ...)** %.copy_fn..addr, align 8, !tbaa !48
  call void @llvm.dbg.declare(metadata void (i8*, ...)** %.copy_fn..addr, metadata !191, metadata !DIExpression()), !dbg !194
  store i8* %.task_t., i8** %.task_t..addr, align 8, !tbaa !48
  call void @llvm.dbg.declare(metadata i8** %.task_t..addr, metadata !192, metadata !DIExpression()), !dbg !194
  store %struct.anon.4* %__context, %struct.anon.4** %__context.addr, align 8, !tbaa !48
  call void @llvm.dbg.declare(metadata %struct.anon.4** %__context.addr, metadata !193, metadata !DIExpression()), !dbg !194
  %0 = load %struct.anon.4*, %struct.anon.4** %__context.addr, align 8, !dbg !195
  %1 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %0, i32 0, i32 1, !dbg !196
  %2 = load i32*, i32** %1, align 8, !dbg !196, !tbaa !197
  %3 = load i32, i32* %2, align 4, !dbg !196, !tbaa !29
  %4 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %0, i32 0, i32 0, !dbg !195
  %5 = load i32*, i32** %4, align 8, !dbg !195, !tbaa !199
  %6 = load i32, i32* %5, align 4, !dbg !200, !tbaa !29
  %add = add nsw i32 %6, %3, !dbg !200
  store i32 %add, i32* %5, align 4, !dbg !200, !tbaa !29
  ret void, !dbg !196
}

; Function Attrs: norecurse nounwind uwtable
define internal i32 @.omp_task_entry..6(i32 %0, %struct.kmp_task_t_with_privates.5* noalias %1) #3 !dbg !201 {
entry:
  %.addr = alloca i32, align 4
  %.addr1 = alloca %struct.kmp_task_t_with_privates.5*, align 8
  store i32 %0, i32* %.addr, align 4, !tbaa !29
  call void @llvm.dbg.declare(metadata i32* %.addr, metadata !203, metadata !DIExpression()), !dbg !210
  store %struct.kmp_task_t_with_privates.5* %1, %struct.kmp_task_t_with_privates.5** %.addr1, align 8, !tbaa !48
  call void @llvm.dbg.declare(metadata %struct.kmp_task_t_with_privates.5** %.addr1, metadata !204, metadata !DIExpression()), !dbg !210
  %2 = load i32, i32* %.addr, align 4, !dbg !211, !tbaa !29
  %3 = load %struct.kmp_task_t_with_privates.5*, %struct.kmp_task_t_with_privates.5** %.addr1, align 8, !dbg !211
  %4 = getelementptr inbounds %struct.kmp_task_t_with_privates.5, %struct.kmp_task_t_with_privates.5* %3, i32 0, i32 0, !dbg !211
  %5 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 2, !dbg !211
  %6 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 0, !dbg !211
  %7 = load i8*, i8** %6, align 8, !dbg !211, !tbaa !58
  %8 = bitcast i8* %7 to %struct.anon.4*, !dbg !211
  %9 = bitcast %struct.kmp_task_t_with_privates.5* %3 to i8*, !dbg !211
  call void @.omp_outlined..5(i32 %2, i32* %5, i8* null, void (i8*, ...)* null, i8* %9, %struct.anon.4* %8) #6, !dbg !211
  ret i32 0, !dbg !211
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @.omp_outlined..7(i32 %.global_tid., i32* noalias %.part_id., i8* noalias %.privates., void (i8*, ...)* noalias %.copy_fn., i8* %.task_t., %struct.anon.6* noalias %__context) #4 !dbg !212 {
entry:
  %.global_tid..addr = alloca i32, align 4
  %.part_id..addr = alloca i32*, align 8
  %.privates..addr = alloca i8*, align 8
  %.copy_fn..addr = alloca void (i8*, ...)*, align 8
  %.task_t..addr = alloca i8*, align 8
  %__context.addr = alloca %struct.anon.6*, align 8
  store i32 %.global_tid., i32* %.global_tid..addr, align 4, !tbaa !29
  call void @llvm.dbg.declare(metadata i32* %.global_tid..addr, metadata !220, metadata !DIExpression()), !dbg !226
  store i32* %.part_id., i32** %.part_id..addr, align 8, !tbaa !48
  call void @llvm.dbg.declare(metadata i32** %.part_id..addr, metadata !221, metadata !DIExpression()), !dbg !226
  store i8* %.privates., i8** %.privates..addr, align 8, !tbaa !48
  call void @llvm.dbg.declare(metadata i8** %.privates..addr, metadata !222, metadata !DIExpression()), !dbg !226
  store void (i8*, ...)* %.copy_fn., void (i8*, ...)** %.copy_fn..addr, align 8, !tbaa !48
  call void @llvm.dbg.declare(metadata void (i8*, ...)** %.copy_fn..addr, metadata !223, metadata !DIExpression()), !dbg !226
  store i8* %.task_t., i8** %.task_t..addr, align 8, !tbaa !48
  call void @llvm.dbg.declare(metadata i8** %.task_t..addr, metadata !224, metadata !DIExpression()), !dbg !226
  store %struct.anon.6* %__context, %struct.anon.6** %__context.addr, align 8, !tbaa !48
  call void @llvm.dbg.declare(metadata %struct.anon.6** %__context.addr, metadata !225, metadata !DIExpression()), !dbg !226
  %0 = load %struct.anon.6*, %struct.anon.6** %__context.addr, align 8, !dbg !227
  %1 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %0, i32 0, i32 1, !dbg !228
  %2 = load i32*, i32** %1, align 8, !dbg !228, !tbaa !197
  %3 = load i32, i32* %2, align 4, !dbg !228, !tbaa !29
  %4 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %0, i32 0, i32 0, !dbg !227
  %5 = load i32*, i32** %4, align 8, !dbg !227, !tbaa !199
  %6 = load i32, i32* %5, align 4, !dbg !229, !tbaa !29
  %add = add nsw i32 %6, %3, !dbg !229
  store i32 %add, i32* %5, align 4, !dbg !229, !tbaa !29
  ret void, !dbg !228
}

; Function Attrs: norecurse nounwind uwtable
define internal i32 @.omp_task_entry..8(i32 %0, %struct.kmp_task_t_with_privates.7* noalias %1) #3 !dbg !230 {
entry:
  %.addr = alloca i32, align 4
  %.addr1 = alloca %struct.kmp_task_t_with_privates.7*, align 8
  store i32 %0, i32* %.addr, align 4, !tbaa !29
  call void @llvm.dbg.declare(metadata i32* %.addr, metadata !232, metadata !DIExpression()), !dbg !239
  store %struct.kmp_task_t_with_privates.7* %1, %struct.kmp_task_t_with_privates.7** %.addr1, align 8, !tbaa !48
  call void @llvm.dbg.declare(metadata %struct.kmp_task_t_with_privates.7** %.addr1, metadata !233, metadata !DIExpression()), !dbg !239
  %2 = load i32, i32* %.addr, align 4, !dbg !240, !tbaa !29
  %3 = load %struct.kmp_task_t_with_privates.7*, %struct.kmp_task_t_with_privates.7** %.addr1, align 8, !dbg !240
  %4 = getelementptr inbounds %struct.kmp_task_t_with_privates.7, %struct.kmp_task_t_with_privates.7* %3, i32 0, i32 0, !dbg !240
  %5 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 2, !dbg !240
  %6 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 0, !dbg !240
  %7 = load i8*, i8** %6, align 8, !dbg !240, !tbaa !58
  %8 = bitcast i8* %7 to %struct.anon.6*, !dbg !240
  %9 = bitcast %struct.kmp_task_t_with_privates.7* %3 to i8*, !dbg !240
  call void @.omp_outlined..7(i32 %2, i32* %5, i8* null, void (i8*, ...)* null, i8* %9, %struct.anon.6* %8) #6, !dbg !240
  ret i32 0, !dbg !240
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @.omp_outlined..9(i32 %.global_tid., i32* noalias %.part_id., i8* noalias %.privates., void (i8*, ...)* noalias %.copy_fn., i8* %.task_t., %struct.anon.8* noalias %__context) #4 !dbg !241 {
entry:
  %.global_tid..addr = alloca i32, align 4
  %.part_id..addr = alloca i32*, align 8
  %.privates..addr = alloca i8*, align 8
  %.copy_fn..addr = alloca void (i8*, ...)*, align 8
  %.task_t..addr = alloca i8*, align 8
  %__context.addr = alloca %struct.anon.8*, align 8
  store i32 %.global_tid., i32* %.global_tid..addr, align 4, !tbaa !29
  call void @llvm.dbg.declare(metadata i32* %.global_tid..addr, metadata !249, metadata !DIExpression()), !dbg !255
  store i32* %.part_id., i32** %.part_id..addr, align 8, !tbaa !48
  call void @llvm.dbg.declare(metadata i32** %.part_id..addr, metadata !250, metadata !DIExpression()), !dbg !255
  store i8* %.privates., i8** %.privates..addr, align 8, !tbaa !48
  call void @llvm.dbg.declare(metadata i8** %.privates..addr, metadata !251, metadata !DIExpression()), !dbg !255
  store void (i8*, ...)* %.copy_fn., void (i8*, ...)** %.copy_fn..addr, align 8, !tbaa !48
  call void @llvm.dbg.declare(metadata void (i8*, ...)** %.copy_fn..addr, metadata !252, metadata !DIExpression()), !dbg !255
  store i8* %.task_t., i8** %.task_t..addr, align 8, !tbaa !48
  call void @llvm.dbg.declare(metadata i8** %.task_t..addr, metadata !253, metadata !DIExpression()), !dbg !255
  store %struct.anon.8* %__context, %struct.anon.8** %__context.addr, align 8, !tbaa !48
  call void @llvm.dbg.declare(metadata %struct.anon.8** %__context.addr, metadata !254, metadata !DIExpression()), !dbg !255
  %0 = load %struct.anon.8*, %struct.anon.8** %__context.addr, align 8, !dbg !256
  %1 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %0, i32 0, i32 1, !dbg !257
  %2 = load i32*, i32** %1, align 8, !dbg !257, !tbaa !197
  %3 = load i32, i32* %2, align 4, !dbg !257, !tbaa !29
  %4 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %0, i32 0, i32 0, !dbg !256
  %5 = load i32*, i32** %4, align 8, !dbg !256, !tbaa !199
  store i32 %3, i32* %5, align 4, !dbg !258, !tbaa !29
  ret void, !dbg !257
}

; Function Attrs: norecurse nounwind uwtable
define internal i32 @.omp_task_entry..10(i32 %0, %struct.kmp_task_t_with_privates.9* noalias %1) #3 !dbg !259 {
entry:
  %.addr = alloca i32, align 4
  %.addr1 = alloca %struct.kmp_task_t_with_privates.9*, align 8
  store i32 %0, i32* %.addr, align 4, !tbaa !29
  call void @llvm.dbg.declare(metadata i32* %.addr, metadata !261, metadata !DIExpression()), !dbg !268
  store %struct.kmp_task_t_with_privates.9* %1, %struct.kmp_task_t_with_privates.9** %.addr1, align 8, !tbaa !48
  call void @llvm.dbg.declare(metadata %struct.kmp_task_t_with_privates.9** %.addr1, metadata !262, metadata !DIExpression()), !dbg !268
  %2 = load i32, i32* %.addr, align 4, !dbg !269, !tbaa !29
  %3 = load %struct.kmp_task_t_with_privates.9*, %struct.kmp_task_t_with_privates.9** %.addr1, align 8, !dbg !269
  %4 = getelementptr inbounds %struct.kmp_task_t_with_privates.9, %struct.kmp_task_t_with_privates.9* %3, i32 0, i32 0, !dbg !269
  %5 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 2, !dbg !269
  %6 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 0, !dbg !269
  %7 = load i8*, i8** %6, align 8, !dbg !269, !tbaa !58
  %8 = bitcast i8* %7 to %struct.anon.8*, !dbg !269
  %9 = bitcast %struct.kmp_task_t_with_privates.9* %3 to i8*, !dbg !269
  call void @.omp_outlined..9(i32 %2, i32* %5, i8* null, void (i8*, ...)* null, i8* %9, %struct.anon.8* %8) #6, !dbg !269
  ret i32 0, !dbg !269
}

declare dso_local void @__kmpc_barrier(%struct.ident_t*, i32)

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined..11(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %c, i32* dereferenceable(4) %a, i32* dereferenceable(4) %b, i32* dereferenceable(4) %d) #3 !dbg !270 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %c.addr = alloca i32*, align 8
  %a.addr = alloca i32*, align 8
  %b.addr = alloca i32*, align 8
  %d.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !48
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !272, metadata !DIExpression()), !dbg !278
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !48
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !273, metadata !DIExpression()), !dbg !278
  store i32* %c, i32** %c.addr, align 8, !tbaa !48
  call void @llvm.dbg.declare(metadata i32** %c.addr, metadata !274, metadata !DIExpression()), !dbg !278
  store i32* %a, i32** %a.addr, align 8, !tbaa !48
  call void @llvm.dbg.declare(metadata i32** %a.addr, metadata !275, metadata !DIExpression()), !dbg !278
  store i32* %b, i32** %b.addr, align 8, !tbaa !48
  call void @llvm.dbg.declare(metadata i32** %b.addr, metadata !276, metadata !DIExpression()), !dbg !278
  store i32* %d, i32** %d.addr, align 8, !tbaa !48
  call void @llvm.dbg.declare(metadata i32** %d.addr, metadata !277, metadata !DIExpression()), !dbg !278
  %0 = load i32*, i32** %c.addr, align 8, !dbg !279, !tbaa !48
  %1 = load i32*, i32** %a.addr, align 8, !dbg !279, !tbaa !48
  %2 = load i32*, i32** %b.addr, align 8, !dbg !279, !tbaa !48
  %3 = load i32*, i32** %d.addr, align 8, !dbg !279, !tbaa !48
  %4 = load i32*, i32** %.global_tid..addr, align 8, !dbg !279, !tbaa !48
  %5 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !279, !tbaa !48
  %6 = load i32*, i32** %c.addr, align 8, !dbg !279, !tbaa !48
  %7 = load i32*, i32** %a.addr, align 8, !dbg !279, !tbaa !48
  %8 = load i32*, i32** %b.addr, align 8, !dbg !279, !tbaa !48
  %9 = load i32*, i32** %d.addr, align 8, !dbg !279, !tbaa !48
  call void @.omp_outlined._debug__(i32* %4, i32* %5, i32* %6, i32* %7, i32* %8, i32* %9) #6, !dbg !279
  ret void, !dbg !279
}

declare !callback !280 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

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
!1 = !DIFile(filename: "integration/dataracebench/DRB135-taskdep-mutexinoutset-orig-no.c", directory: "/home/brad/Code/OpenRace/tests/data")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.1 "}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 20, type: !8, scopeLine: 20, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !11)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !{!12, !13, !14, !15}
!12 = !DILocalVariable(name: "a", scope: !7, file: !1, line: 21, type: !10)
!13 = !DILocalVariable(name: "b", scope: !7, file: !1, line: 21, type: !10)
!14 = !DILocalVariable(name: "c", scope: !7, file: !1, line: 21, type: !10)
!15 = !DILocalVariable(name: "d", scope: !7, file: !1, line: 21, type: !10)
!16 = !DILocation(line: 21, column: 3, scope: !7)
!17 = !DILocation(line: 21, column: 7, scope: !7)
!18 = !DILocation(line: 21, column: 10, scope: !7)
!19 = !DILocation(line: 21, column: 13, scope: !7)
!20 = !DILocation(line: 21, column: 16, scope: !7)
!21 = !DILocation(line: 23, column: 3, scope: !7)
!22 = !{!23, !27, i64 16}
!23 = !{!"ident_t", !24, i64 0, !24, i64 4, !24, i64 8, !24, i64 12, !27, i64 16}
!24 = !{!"int", !25, i64 0}
!25 = !{!"omnipotent char", !26, i64 0}
!26 = !{!"Simple C/C++ TBAA"}
!27 = !{!"any pointer", !25, i64 0}
!28 = !DILocation(line: 40, column: 17, scope: !7)
!29 = !{!24, !24, i64 0}
!30 = !DILocation(line: 40, column: 3, scope: !7)
!31 = !DILocation(line: 42, column: 1, scope: !7)
!32 = !DILocation(line: 41, column: 3, scope: !7)
!33 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 24, type: !34, scopeLine: 24, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !41)
!34 = !DISubroutineType(types: !35)
!35 = !{null, !36, !36, !40, !40, !40, !40}
!36 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !37)
!37 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !38)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!40 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !10, size: 64)
!41 = !{!42, !43, !44, !45, !46, !47}
!42 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !33, type: !36, flags: DIFlagArtificial)
!43 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !33, type: !36, flags: DIFlagArtificial)
!44 = !DILocalVariable(name: "c", arg: 3, scope: !33, file: !1, line: 21, type: !40)
!45 = !DILocalVariable(name: "a", arg: 4, scope: !33, file: !1, line: 21, type: !40)
!46 = !DILocalVariable(name: "b", arg: 5, scope: !33, file: !1, line: 21, type: !40)
!47 = !DILocalVariable(name: "d", arg: 6, scope: !33, file: !1, line: 21, type: !40)
!48 = !{!27, !27, i64 0}
!49 = !DILocation(line: 0, scope: !33)
!50 = !DILocation(line: 21, column: 13, scope: !33)
!51 = !DILocation(line: 21, column: 7, scope: !33)
!52 = !DILocation(line: 21, column: 10, scope: !33)
!53 = !DILocation(line: 21, column: 16, scope: !33)
!54 = !DILocation(line: 24, column: 3, scope: !33)
!55 = !DILocation(line: 26, column: 5, scope: !56)
!56 = distinct !DILexicalBlock(scope: !57, file: !1, line: 25, column: 3)
!57 = distinct !DILexicalBlock(scope: !33, file: !1, line: 24, column: 3)
!58 = !{!59, !27, i64 0}
!59 = !{!"kmp_task_t_with_privates", !60, i64 0}
!60 = !{!"kmp_task_t", !27, i64 0, !27, i64 8, !24, i64 16, !25, i64 24, !25, i64 32}
!61 = !{i64 0, i64 8, !48}
!62 = !{!63, !64, i64 0}
!63 = !{!"kmp_depend_info", !64, i64 0, !64, i64 8, !25, i64 16}
!64 = !{!"long", !25, i64 0}
!65 = !{!63, !64, i64 8}
!66 = !{!63, !25, i64 16}
!67 = !DILocation(line: 28, column: 5, scope: !56)
!68 = !DILocation(line: 30, column: 5, scope: !56)
!69 = !DILocation(line: 32, column: 5, scope: !56)
!70 = !{i64 0, i64 8, !48, i64 8, i64 8, !48}
!71 = !DILocation(line: 34, column: 5, scope: !56)
!72 = !DILocation(line: 36, column: 5, scope: !56)
!73 = !DILocation(line: 38, column: 3, scope: !56)
!74 = !DILocation(line: 24, column: 21, scope: !57)
!75 = !DILocation(line: 24, column: 21, scope: !33)
!76 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 27, type: !77, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !92)
!77 = !DISubroutineType(types: !78)
!78 = !{null, !39, !36, !79, !82, !87, !88}
!79 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !80)
!80 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !81)
!81 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!82 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !83)
!83 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !84)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!85 = !DISubroutineType(types: !86)
!86 = !{null, !79, null}
!87 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !81)
!88 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !89)
!89 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !90)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 26, size: 64, elements: !2)
!92 = !{!93, !94, !95, !96, !97, !98}
!93 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !76, type: !39, flags: DIFlagArtificial)
!94 = !DILocalVariable(name: ".part_id.", arg: 2, scope: !76, type: !36, flags: DIFlagArtificial)
!95 = !DILocalVariable(name: ".privates.", arg: 3, scope: !76, type: !79, flags: DIFlagArtificial)
!96 = !DILocalVariable(name: ".copy_fn.", arg: 4, scope: !76, type: !82, flags: DIFlagArtificial)
!97 = !DILocalVariable(name: ".task_t.", arg: 5, scope: !76, type: !87, flags: DIFlagArtificial)
!98 = !DILocalVariable(name: "__context", arg: 6, scope: !76, type: !88, flags: DIFlagArtificial)
!99 = !DILocation(line: 0, scope: !76)
!100 = !DILocation(line: 27, column: 7, scope: !76)
!101 = !{!102, !27, i64 0}
!102 = !{!"", !27, i64 0}
!103 = !DILocation(line: 27, column: 9, scope: !76)
!104 = !DILocation(line: 27, column: 11, scope: !76)
!105 = distinct !DISubprogram(linkageName: ".omp_task_entry.", scope: !1, file: !1, line: 26, type: !106, scopeLine: 26, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !107)
!106 = !DISubroutineType(types: !2)
!107 = !{!108, !109}
!108 = !DILocalVariable(arg: 1, scope: !105, type: !10, flags: DIFlagArtificial)
!109 = !DILocalVariable(arg: 2, scope: !105, type: !110, flags: DIFlagArtificial)
!110 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !111)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t_with_privates", file: !1, size: 320, elements: !113)
!113 = !{!114}
!114 = !DIDerivedType(tag: DW_TAG_member, scope: !112, file: !1, baseType: !115, size: 320)
!115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t", file: !1, size: 320, elements: !116)
!116 = !{!117, !119}
!117 = !DIDerivedType(tag: DW_TAG_member, scope: !115, file: !1, baseType: !118, size: 64, offset: 192)
!118 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "kmp_cmplrdata_t", file: !1, size: 64, elements: !2)
!119 = !DIDerivedType(tag: DW_TAG_member, scope: !115, file: !1, baseType: !118, size: 64, offset: 256)
!120 = !DILocation(line: 0, scope: !105)
!121 = !DILocation(line: 26, column: 5, scope: !105)
!122 = distinct !DISubprogram(name: ".omp_outlined..1", scope: !1, file: !1, line: 29, type: !123, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !129)
!123 = !DISubroutineType(types: !124)
!124 = !{null, !39, !36, !79, !82, !87, !125}
!125 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !126)
!126 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !127)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!128 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 28, size: 64, elements: !2)
!129 = !{!130, !131, !132, !133, !134, !135}
!130 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !122, type: !39, flags: DIFlagArtificial)
!131 = !DILocalVariable(name: ".part_id.", arg: 2, scope: !122, type: !36, flags: DIFlagArtificial)
!132 = !DILocalVariable(name: ".privates.", arg: 3, scope: !122, type: !79, flags: DIFlagArtificial)
!133 = !DILocalVariable(name: ".copy_fn.", arg: 4, scope: !122, type: !82, flags: DIFlagArtificial)
!134 = !DILocalVariable(name: ".task_t.", arg: 5, scope: !122, type: !87, flags: DIFlagArtificial)
!135 = !DILocalVariable(name: "__context", arg: 6, scope: !122, type: !125, flags: DIFlagArtificial)
!136 = !DILocation(line: 0, scope: !122)
!137 = !DILocation(line: 29, column: 7, scope: !122)
!138 = !DILocation(line: 29, column: 9, scope: !122)
!139 = !DILocation(line: 29, column: 11, scope: !122)
!140 = distinct !DISubprogram(linkageName: ".omp_task_entry..2", scope: !1, file: !1, line: 28, type: !106, scopeLine: 28, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !141)
!141 = !{!142, !143}
!142 = !DILocalVariable(arg: 1, scope: !140, type: !10, flags: DIFlagArtificial)
!143 = !DILocalVariable(arg: 2, scope: !140, type: !144, flags: DIFlagArtificial)
!144 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !145)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t_with_privates", file: !1, size: 320, elements: !147)
!147 = !{!148}
!148 = !DIDerivedType(tag: DW_TAG_member, scope: !146, file: !1, baseType: !115, size: 320)
!149 = !DILocation(line: 0, scope: !140)
!150 = !DILocation(line: 28, column: 5, scope: !140)
!151 = distinct !DISubprogram(name: ".omp_outlined..3", scope: !1, file: !1, line: 31, type: !152, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !158)
!152 = !DISubroutineType(types: !153)
!153 = !{null, !39, !36, !79, !82, !87, !154}
!154 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !155)
!155 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !156)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!157 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 30, size: 64, elements: !2)
!158 = !{!159, !160, !161, !162, !163, !164}
!159 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !151, type: !39, flags: DIFlagArtificial)
!160 = !DILocalVariable(name: ".part_id.", arg: 2, scope: !151, type: !36, flags: DIFlagArtificial)
!161 = !DILocalVariable(name: ".privates.", arg: 3, scope: !151, type: !79, flags: DIFlagArtificial)
!162 = !DILocalVariable(name: ".copy_fn.", arg: 4, scope: !151, type: !82, flags: DIFlagArtificial)
!163 = !DILocalVariable(name: ".task_t.", arg: 5, scope: !151, type: !87, flags: DIFlagArtificial)
!164 = !DILocalVariable(name: "__context", arg: 6, scope: !151, type: !154, flags: DIFlagArtificial)
!165 = !DILocation(line: 0, scope: !151)
!166 = !DILocation(line: 31, column: 7, scope: !151)
!167 = !DILocation(line: 31, column: 9, scope: !151)
!168 = !DILocation(line: 31, column: 11, scope: !151)
!169 = distinct !DISubprogram(linkageName: ".omp_task_entry..4", scope: !1, file: !1, line: 30, type: !106, scopeLine: 30, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !170)
!170 = !{!171, !172}
!171 = !DILocalVariable(arg: 1, scope: !169, type: !10, flags: DIFlagArtificial)
!172 = !DILocalVariable(arg: 2, scope: !169, type: !173, flags: DIFlagArtificial)
!173 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !174)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t_with_privates", file: !1, size: 320, elements: !176)
!176 = !{!177}
!177 = !DIDerivedType(tag: DW_TAG_member, scope: !175, file: !1, baseType: !115, size: 320)
!178 = !DILocation(line: 0, scope: !169)
!179 = !DILocation(line: 30, column: 5, scope: !169)
!180 = distinct !DISubprogram(name: ".omp_outlined..5", scope: !1, file: !1, line: 33, type: !181, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !187)
!181 = !DISubroutineType(types: !182)
!182 = !{null, !39, !36, !79, !82, !87, !183}
!183 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !184)
!184 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !185)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!186 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 32, size: 128, elements: !2)
!187 = !{!188, !189, !190, !191, !192, !193}
!188 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !180, type: !39, flags: DIFlagArtificial)
!189 = !DILocalVariable(name: ".part_id.", arg: 2, scope: !180, type: !36, flags: DIFlagArtificial)
!190 = !DILocalVariable(name: ".privates.", arg: 3, scope: !180, type: !79, flags: DIFlagArtificial)
!191 = !DILocalVariable(name: ".copy_fn.", arg: 4, scope: !180, type: !82, flags: DIFlagArtificial)
!192 = !DILocalVariable(name: ".task_t.", arg: 5, scope: !180, type: !87, flags: DIFlagArtificial)
!193 = !DILocalVariable(name: "__context", arg: 6, scope: !180, type: !183, flags: DIFlagArtificial)
!194 = !DILocation(line: 0, scope: !180)
!195 = !DILocation(line: 33, column: 7, scope: !180)
!196 = !DILocation(line: 33, column: 12, scope: !180)
!197 = !{!198, !27, i64 8}
!198 = !{!"", !27, i64 0, !27, i64 8}
!199 = !{!198, !27, i64 0}
!200 = !DILocation(line: 33, column: 9, scope: !180)
!201 = distinct !DISubprogram(linkageName: ".omp_task_entry..6", scope: !1, file: !1, line: 32, type: !106, scopeLine: 32, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !202)
!202 = !{!203, !204}
!203 = !DILocalVariable(arg: 1, scope: !201, type: !10, flags: DIFlagArtificial)
!204 = !DILocalVariable(arg: 2, scope: !201, type: !205, flags: DIFlagArtificial)
!205 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !206)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t_with_privates", file: !1, size: 320, elements: !208)
!208 = !{!209}
!209 = !DIDerivedType(tag: DW_TAG_member, scope: !207, file: !1, baseType: !115, size: 320)
!210 = !DILocation(line: 0, scope: !201)
!211 = !DILocation(line: 32, column: 5, scope: !201)
!212 = distinct !DISubprogram(name: ".omp_outlined..7", scope: !1, file: !1, line: 35, type: !213, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !219)
!213 = !DISubroutineType(types: !214)
!214 = !{null, !39, !36, !79, !82, !87, !215}
!215 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !216)
!216 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !217)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 34, size: 128, elements: !2)
!219 = !{!220, !221, !222, !223, !224, !225}
!220 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !212, type: !39, flags: DIFlagArtificial)
!221 = !DILocalVariable(name: ".part_id.", arg: 2, scope: !212, type: !36, flags: DIFlagArtificial)
!222 = !DILocalVariable(name: ".privates.", arg: 3, scope: !212, type: !79, flags: DIFlagArtificial)
!223 = !DILocalVariable(name: ".copy_fn.", arg: 4, scope: !212, type: !82, flags: DIFlagArtificial)
!224 = !DILocalVariable(name: ".task_t.", arg: 5, scope: !212, type: !87, flags: DIFlagArtificial)
!225 = !DILocalVariable(name: "__context", arg: 6, scope: !212, type: !215, flags: DIFlagArtificial)
!226 = !DILocation(line: 0, scope: !212)
!227 = !DILocation(line: 35, column: 7, scope: !212)
!228 = !DILocation(line: 35, column: 12, scope: !212)
!229 = !DILocation(line: 35, column: 9, scope: !212)
!230 = distinct !DISubprogram(linkageName: ".omp_task_entry..8", scope: !1, file: !1, line: 34, type: !106, scopeLine: 34, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !231)
!231 = !{!232, !233}
!232 = !DILocalVariable(arg: 1, scope: !230, type: !10, flags: DIFlagArtificial)
!233 = !DILocalVariable(arg: 2, scope: !230, type: !234, flags: DIFlagArtificial)
!234 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !235)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t_with_privates", file: !1, size: 320, elements: !237)
!237 = !{!238}
!238 = !DIDerivedType(tag: DW_TAG_member, scope: !236, file: !1, baseType: !115, size: 320)
!239 = !DILocation(line: 0, scope: !230)
!240 = !DILocation(line: 34, column: 5, scope: !230)
!241 = distinct !DISubprogram(name: ".omp_outlined..9", scope: !1, file: !1, line: 37, type: !242, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !248)
!242 = !DISubroutineType(types: !243)
!243 = !{null, !39, !36, !79, !82, !87, !244}
!244 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !245)
!245 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !246)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!247 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 36, size: 128, elements: !2)
!248 = !{!249, !250, !251, !252, !253, !254}
!249 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !241, type: !39, flags: DIFlagArtificial)
!250 = !DILocalVariable(name: ".part_id.", arg: 2, scope: !241, type: !36, flags: DIFlagArtificial)
!251 = !DILocalVariable(name: ".privates.", arg: 3, scope: !241, type: !79, flags: DIFlagArtificial)
!252 = !DILocalVariable(name: ".copy_fn.", arg: 4, scope: !241, type: !82, flags: DIFlagArtificial)
!253 = !DILocalVariable(name: ".task_t.", arg: 5, scope: !241, type: !87, flags: DIFlagArtificial)
!254 = !DILocalVariable(name: "__context", arg: 6, scope: !241, type: !244, flags: DIFlagArtificial)
!255 = !DILocation(line: 0, scope: !241)
!256 = !DILocation(line: 37, column: 7, scope: !241)
!257 = !DILocation(line: 37, column: 11, scope: !241)
!258 = !DILocation(line: 37, column: 9, scope: !241)
!259 = distinct !DISubprogram(linkageName: ".omp_task_entry..10", scope: !1, file: !1, line: 36, type: !106, scopeLine: 36, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !260)
!260 = !{!261, !262}
!261 = !DILocalVariable(arg: 1, scope: !259, type: !10, flags: DIFlagArtificial)
!262 = !DILocalVariable(arg: 2, scope: !259, type: !263, flags: DIFlagArtificial)
!263 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !264)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t_with_privates", file: !1, size: 320, elements: !266)
!266 = !{!267}
!267 = !DIDerivedType(tag: DW_TAG_member, scope: !265, file: !1, baseType: !115, size: 320)
!268 = !DILocation(line: 0, scope: !259)
!269 = !DILocation(line: 36, column: 5, scope: !259)
!270 = distinct !DISubprogram(name: ".omp_outlined..11", scope: !1, file: !1, line: 24, type: !34, scopeLine: 24, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !271)
!271 = !{!272, !273, !274, !275, !276, !277}
!272 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !270, type: !36, flags: DIFlagArtificial)
!273 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !270, type: !36, flags: DIFlagArtificial)
!274 = !DILocalVariable(name: "c", arg: 3, scope: !270, type: !40, flags: DIFlagArtificial)
!275 = !DILocalVariable(name: "a", arg: 4, scope: !270, type: !40, flags: DIFlagArtificial)
!276 = !DILocalVariable(name: "b", arg: 5, scope: !270, type: !40, flags: DIFlagArtificial)
!277 = !DILocalVariable(name: "d", arg: 6, scope: !270, type: !40, flags: DIFlagArtificial)
!278 = !DILocation(line: 0, scope: !270)
!279 = !DILocation(line: 24, column: 3, scope: !270)
!280 = !{!281}
!281 = !{i64 2, i64 -1, i64 -1, i1 true}
