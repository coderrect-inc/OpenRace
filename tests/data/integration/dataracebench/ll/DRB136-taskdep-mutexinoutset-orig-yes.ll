; ModuleID = 'DRB136-taskdep-mutexinoutset-orig-yes.c'
source_filename = "DRB136-taskdep-mutexinoutset-orig-yes.c"
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
@1 = private unnamed_addr constant [53 x i8] c";DRB136-taskdep-mutexinoutset-orig-yes.c;main;23;3;;\00", align 1
@2 = private unnamed_addr constant [53 x i8] c";DRB136-taskdep-mutexinoutset-orig-yes.c;main;25;5;;\00", align 1
@3 = private unnamed_addr constant [53 x i8] c";DRB136-taskdep-mutexinoutset-orig-yes.c;main;27;5;;\00", align 1
@4 = private unnamed_addr constant [53 x i8] c";DRB136-taskdep-mutexinoutset-orig-yes.c;main;29;5;;\00", align 1
@5 = private unnamed_addr constant [53 x i8] c";DRB136-taskdep-mutexinoutset-orig-yes.c;main;31;5;;\00", align 1
@6 = private unnamed_addr constant [53 x i8] c";DRB136-taskdep-mutexinoutset-orig-yes.c;main;33;5;;\00", align 1
@7 = private unnamed_addr constant [53 x i8] c";DRB136-taskdep-mutexinoutset-orig-yes.c;main;35;5;;\00", align 1
@8 = private unnamed_addr constant [53 x i8] c";DRB136-taskdep-mutexinoutset-orig-yes.c;main;22;3;;\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
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
  call void @llvm.dbg.declare(metadata i32* %a, metadata !11, metadata !DIExpression()), !dbg !12
  call void @llvm.dbg.declare(metadata i32* %b, metadata !13, metadata !DIExpression()), !dbg !14
  call void @llvm.dbg.declare(metadata i32* %c, metadata !15, metadata !DIExpression()), !dbg !16
  call void @llvm.dbg.declare(metadata i32* %d, metadata !17, metadata !DIExpression()), !dbg !18
  %2 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !19
  store i8* getelementptr inbounds ([53 x i8], [53 x i8]* @8, i32 0, i32 0), i8** %2, align 8, !dbg !19
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 4, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*, i32*, i32*)* @.omp_outlined..11 to void (i32*, i32*, ...)*), i32* %c, i32* %a, i32* %b, i32* %d), !dbg !19
  %3 = load i32, i32* %d, align 4, !dbg !20
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i32 %3), !dbg !21
  ret i32 0, !dbg !22
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %c, i32* dereferenceable(4) %a, i32* dereferenceable(4) %b, i32* dereferenceable(4) %d) #2 !dbg !23 {
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
  %.dep.arr.addr6 = alloca [1 x %struct.kmp_depend_info], align 8
  %agg.captured7 = alloca %struct.anon.6, align 8
  %.dep.arr.addr8 = alloca [1 x %struct.kmp_depend_info], align 8
  %agg.captured9 = alloca %struct.anon.8, align 8
  %.dep.arr.addr10 = alloca [1 x %struct.kmp_depend_info], align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !31, metadata !DIExpression()), !dbg !32
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !33, metadata !DIExpression()), !dbg !32
  store i32* %c, i32** %c.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %c.addr, metadata !34, metadata !DIExpression()), !dbg !35
  store i32* %a, i32** %a.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %a.addr, metadata !36, metadata !DIExpression()), !dbg !37
  store i32* %b, i32** %b.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %b.addr, metadata !38, metadata !DIExpression()), !dbg !39
  store i32* %d, i32** %d.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %d.addr, metadata !40, metadata !DIExpression()), !dbg !41
  %2 = load i32*, i32** %c.addr, align 8, !dbg !42
  %3 = load i32*, i32** %a.addr, align 8, !dbg !42
  %4 = load i32*, i32** %b.addr, align 8, !dbg !42
  %5 = load i32*, i32** %d.addr, align 8, !dbg !42
  %6 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !42
  store i8* getelementptr inbounds ([53 x i8], [53 x i8]* @1, i32 0, i32 0), i8** %6, align 8, !dbg !42
  %7 = load i32*, i32** %.global_tid..addr, align 8, !dbg !42
  %8 = load i32, i32* %7, align 4, !dbg !42
  %9 = call i32 @__kmpc_single(%struct.ident_t* %.kmpc_loc.addr, i32 %8), !dbg !42
  %10 = icmp ne i32 %9, 0, !dbg !42
  br i1 %10, label %omp_if.then, label %omp_if.end, !dbg !42

omp_if.then:                                      ; preds = %entry
  %11 = getelementptr inbounds %struct.anon, %struct.anon* %agg.captured, i32 0, i32 0, !dbg !43
  store i32* %2, i32** %11, align 8, !dbg !43
  %12 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !43
  store i8* getelementptr inbounds ([53 x i8], [53 x i8]* @2, i32 0, i32 0), i8** %12, align 8, !dbg !43
  %13 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* %.kmpc_loc.addr, i32 %8, i32 1, i64 40, i64 8, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates*)* @.omp_task_entry. to i32 (i32, i8*)*)), !dbg !43
  %14 = bitcast i8* %13 to %struct.kmp_task_t_with_privates*, !dbg !43
  %15 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %14, i32 0, i32 0, !dbg !43
  %16 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %15, i32 0, i32 0, !dbg !43
  %17 = load i8*, i8** %16, align 8, !dbg !43
  %18 = bitcast %struct.anon* %agg.captured to i8*, !dbg !43
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %17, i8* align 8 %18, i64 8, i1 false), !dbg !43
  %19 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %.dep.arr.addr, i64 0, i64 0, !dbg !43
  %20 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %19, i32 0, i32 0, !dbg !43
  %21 = ptrtoint i32* %2 to i64, !dbg !43
  store i64 %21, i64* %20, align 8, !dbg !43
  %22 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %19, i32 0, i32 1, !dbg !43
  store i64 4, i64* %22, align 8, !dbg !43
  %23 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %19, i32 0, i32 2, !dbg !43
  store i8 3, i8* %23, align 8, !dbg !43
  %24 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %.dep.arr.addr, i64 0, i64 0, !dbg !43
  %25 = bitcast %struct.kmp_depend_info* %24 to i8*, !dbg !43
  %26 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !43
  store i8* getelementptr inbounds ([53 x i8], [53 x i8]* @2, i32 0, i32 0), i8** %26, align 8, !dbg !43
  %27 = call i32 @__kmpc_omp_task_with_deps(%struct.ident_t* %.kmpc_loc.addr, i32 %8, i8* %13, i32 1, i8* %25, i32 0, i8* null), !dbg !43
  %28 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %agg.captured1, i32 0, i32 0, !dbg !46
  store i32* %3, i32** %28, align 8, !dbg !46
  %29 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !46
  store i8* getelementptr inbounds ([53 x i8], [53 x i8]* @3, i32 0, i32 0), i8** %29, align 8, !dbg !46
  %30 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* %.kmpc_loc.addr, i32 %8, i32 1, i64 40, i64 8, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates.1*)* @.omp_task_entry..2 to i32 (i32, i8*)*)), !dbg !46
  %31 = bitcast i8* %30 to %struct.kmp_task_t_with_privates.1*, !dbg !46
  %32 = getelementptr inbounds %struct.kmp_task_t_with_privates.1, %struct.kmp_task_t_with_privates.1* %31, i32 0, i32 0, !dbg !46
  %33 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %32, i32 0, i32 0, !dbg !46
  %34 = load i8*, i8** %33, align 8, !dbg !46
  %35 = bitcast %struct.anon.0* %agg.captured1 to i8*, !dbg !46
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %34, i8* align 8 %35, i64 8, i1 false), !dbg !46
  %36 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %.dep.arr.addr2, i64 0, i64 0, !dbg !46
  %37 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %36, i32 0, i32 0, !dbg !46
  %38 = ptrtoint i32* %3 to i64, !dbg !46
  store i64 %38, i64* %37, align 8, !dbg !46
  %39 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %36, i32 0, i32 1, !dbg !46
  store i64 4, i64* %39, align 8, !dbg !46
  %40 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %36, i32 0, i32 2, !dbg !46
  store i8 3, i8* %40, align 8, !dbg !46
  %41 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %.dep.arr.addr2, i64 0, i64 0, !dbg !46
  %42 = bitcast %struct.kmp_depend_info* %41 to i8*, !dbg !46
  %43 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !46
  store i8* getelementptr inbounds ([53 x i8], [53 x i8]* @3, i32 0, i32 0), i8** %43, align 8, !dbg !46
  %44 = call i32 @__kmpc_omp_task_with_deps(%struct.ident_t* %.kmpc_loc.addr, i32 %8, i8* %30, i32 1, i8* %42, i32 0, i8* null), !dbg !46
  %45 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %agg.captured3, i32 0, i32 0, !dbg !47
  store i32* %4, i32** %45, align 8, !dbg !47
  %46 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !47
  store i8* getelementptr inbounds ([53 x i8], [53 x i8]* @4, i32 0, i32 0), i8** %46, align 8, !dbg !47
  %47 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* %.kmpc_loc.addr, i32 %8, i32 1, i64 40, i64 8, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates.3*)* @.omp_task_entry..4 to i32 (i32, i8*)*)), !dbg !47
  %48 = bitcast i8* %47 to %struct.kmp_task_t_with_privates.3*, !dbg !47
  %49 = getelementptr inbounds %struct.kmp_task_t_with_privates.3, %struct.kmp_task_t_with_privates.3* %48, i32 0, i32 0, !dbg !47
  %50 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %49, i32 0, i32 0, !dbg !47
  %51 = load i8*, i8** %50, align 8, !dbg !47
  %52 = bitcast %struct.anon.2* %agg.captured3 to i8*, !dbg !47
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %51, i8* align 8 %52, i64 8, i1 false), !dbg !47
  %53 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %.dep.arr.addr4, i64 0, i64 0, !dbg !47
  %54 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %53, i32 0, i32 0, !dbg !47
  %55 = ptrtoint i32* %4 to i64, !dbg !47
  store i64 %55, i64* %54, align 8, !dbg !47
  %56 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %53, i32 0, i32 1, !dbg !47
  store i64 4, i64* %56, align 8, !dbg !47
  %57 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %53, i32 0, i32 2, !dbg !47
  store i8 3, i8* %57, align 8, !dbg !47
  %58 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %.dep.arr.addr4, i64 0, i64 0, !dbg !47
  %59 = bitcast %struct.kmp_depend_info* %58 to i8*, !dbg !47
  %60 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !47
  store i8* getelementptr inbounds ([53 x i8], [53 x i8]* @4, i32 0, i32 0), i8** %60, align 8, !dbg !47
  %61 = call i32 @__kmpc_omp_task_with_deps(%struct.ident_t* %.kmpc_loc.addr, i32 %8, i8* %47, i32 1, i8* %59, i32 0, i8* null), !dbg !47
  %62 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %agg.captured5, i32 0, i32 0, !dbg !48
  store i32* %2, i32** %62, align 8, !dbg !48
  %63 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %agg.captured5, i32 0, i32 1, !dbg !48
  store i32* %3, i32** %63, align 8, !dbg !48
  %64 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !48
  store i8* getelementptr inbounds ([53 x i8], [53 x i8]* @5, i32 0, i32 0), i8** %64, align 8, !dbg !48
  %65 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* %.kmpc_loc.addr, i32 %8, i32 1, i64 40, i64 16, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates.5*)* @.omp_task_entry..6 to i32 (i32, i8*)*)), !dbg !48
  %66 = bitcast i8* %65 to %struct.kmp_task_t_with_privates.5*, !dbg !48
  %67 = getelementptr inbounds %struct.kmp_task_t_with_privates.5, %struct.kmp_task_t_with_privates.5* %66, i32 0, i32 0, !dbg !48
  %68 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %67, i32 0, i32 0, !dbg !48
  %69 = load i8*, i8** %68, align 8, !dbg !48
  %70 = bitcast %struct.anon.4* %agg.captured5 to i8*, !dbg !48
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %69, i8* align 8 %70, i64 16, i1 false), !dbg !48
  %71 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %.dep.arr.addr6, i64 0, i64 0, !dbg !48
  %72 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %71, i32 0, i32 0, !dbg !48
  %73 = ptrtoint i32* %3 to i64, !dbg !48
  store i64 %73, i64* %72, align 8, !dbg !48
  %74 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %71, i32 0, i32 1, !dbg !48
  store i64 4, i64* %74, align 8, !dbg !48
  %75 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %71, i32 0, i32 2, !dbg !48
  store i8 1, i8* %75, align 8, !dbg !48
  %76 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %.dep.arr.addr6, i64 0, i64 0, !dbg !48
  %77 = bitcast %struct.kmp_depend_info* %76 to i8*, !dbg !48
  %78 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !48
  store i8* getelementptr inbounds ([53 x i8], [53 x i8]* @5, i32 0, i32 0), i8** %78, align 8, !dbg !48
  %79 = call i32 @__kmpc_omp_task_with_deps(%struct.ident_t* %.kmpc_loc.addr, i32 %8, i8* %65, i32 1, i8* %77, i32 0, i8* null), !dbg !48
  %80 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %agg.captured7, i32 0, i32 0, !dbg !49
  store i32* %2, i32** %80, align 8, !dbg !49
  %81 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %agg.captured7, i32 0, i32 1, !dbg !49
  store i32* %4, i32** %81, align 8, !dbg !49
  %82 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !49
  store i8* getelementptr inbounds ([53 x i8], [53 x i8]* @6, i32 0, i32 0), i8** %82, align 8, !dbg !49
  %83 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* %.kmpc_loc.addr, i32 %8, i32 1, i64 40, i64 16, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates.7*)* @.omp_task_entry..8 to i32 (i32, i8*)*)), !dbg !49
  %84 = bitcast i8* %83 to %struct.kmp_task_t_with_privates.7*, !dbg !49
  %85 = getelementptr inbounds %struct.kmp_task_t_with_privates.7, %struct.kmp_task_t_with_privates.7* %84, i32 0, i32 0, !dbg !49
  %86 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %85, i32 0, i32 0, !dbg !49
  %87 = load i8*, i8** %86, align 8, !dbg !49
  %88 = bitcast %struct.anon.6* %agg.captured7 to i8*, !dbg !49
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %87, i8* align 8 %88, i64 16, i1 false), !dbg !49
  %89 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %.dep.arr.addr8, i64 0, i64 0, !dbg !49
  %90 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %89, i32 0, i32 0, !dbg !49
  %91 = ptrtoint i32* %4 to i64, !dbg !49
  store i64 %91, i64* %90, align 8, !dbg !49
  %92 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %89, i32 0, i32 1, !dbg !49
  store i64 4, i64* %92, align 8, !dbg !49
  %93 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %89, i32 0, i32 2, !dbg !49
  store i8 1, i8* %93, align 8, !dbg !49
  %94 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %.dep.arr.addr8, i64 0, i64 0, !dbg !49
  %95 = bitcast %struct.kmp_depend_info* %94 to i8*, !dbg !49
  %96 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !49
  store i8* getelementptr inbounds ([53 x i8], [53 x i8]* @6, i32 0, i32 0), i8** %96, align 8, !dbg !49
  %97 = call i32 @__kmpc_omp_task_with_deps(%struct.ident_t* %.kmpc_loc.addr, i32 %8, i8* %83, i32 1, i8* %95, i32 0, i8* null), !dbg !49
  %98 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %agg.captured9, i32 0, i32 0, !dbg !50
  store i32* %5, i32** %98, align 8, !dbg !50
  %99 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %agg.captured9, i32 0, i32 1, !dbg !50
  store i32* %2, i32** %99, align 8, !dbg !50
  %100 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !50
  store i8* getelementptr inbounds ([53 x i8], [53 x i8]* @7, i32 0, i32 0), i8** %100, align 8, !dbg !50
  %101 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* %.kmpc_loc.addr, i32 %8, i32 1, i64 40, i64 16, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates.9*)* @.omp_task_entry..10 to i32 (i32, i8*)*)), !dbg !50
  %102 = bitcast i8* %101 to %struct.kmp_task_t_with_privates.9*, !dbg !50
  %103 = getelementptr inbounds %struct.kmp_task_t_with_privates.9, %struct.kmp_task_t_with_privates.9* %102, i32 0, i32 0, !dbg !50
  %104 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %103, i32 0, i32 0, !dbg !50
  %105 = load i8*, i8** %104, align 8, !dbg !50
  %106 = bitcast %struct.anon.8* %agg.captured9 to i8*, !dbg !50
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %105, i8* align 8 %106, i64 16, i1 false), !dbg !50
  %107 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %.dep.arr.addr10, i64 0, i64 0, !dbg !50
  %108 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %107, i32 0, i32 0, !dbg !50
  %109 = ptrtoint i32* %2 to i64, !dbg !50
  store i64 %109, i64* %108, align 8, !dbg !50
  %110 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %107, i32 0, i32 1, !dbg !50
  store i64 4, i64* %110, align 8, !dbg !50
  %111 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %107, i32 0, i32 2, !dbg !50
  store i8 1, i8* %111, align 8, !dbg !50
  %112 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %.dep.arr.addr10, i64 0, i64 0, !dbg !50
  %113 = bitcast %struct.kmp_depend_info* %112 to i8*, !dbg !50
  %114 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !50
  store i8* getelementptr inbounds ([53 x i8], [53 x i8]* @7, i32 0, i32 0), i8** %114, align 8, !dbg !50
  %115 = call i32 @__kmpc_omp_task_with_deps(%struct.ident_t* %.kmpc_loc.addr, i32 %8, i8* %101, i32 1, i8* %113, i32 0, i8* null), !dbg !50
  call void @__kmpc_end_single(%struct.ident_t* %.kmpc_loc.addr, i32 %8), !dbg !51
  br label %omp_if.end, !dbg !51

omp_if.end:                                       ; preds = %omp_if.then, %entry
  %116 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !52
  store i8* getelementptr inbounds ([53 x i8], [53 x i8]* @1, i32 0, i32 0), i8** %116, align 8, !dbg !52
  call void @__kmpc_barrier(%struct.ident_t* %.kmpc_loc.addr, i32 %8), !dbg !52
  ret void, !dbg !53
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local void @__kmpc_end_single(%struct.ident_t*, i32)

declare dso_local i32 @__kmpc_single(%struct.ident_t*, i32)

; Function Attrs: noinline norecurse nounwind uwtable
define internal i32 @.omp_task_entry.(i32 %0, %struct.kmp_task_t_with_privates* noalias %1) #4 !dbg !54 {
entry:
  %.global_tid..addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %.global_tid..addr.i, metadata !56, metadata !DIExpression()), !dbg !73
  %.part_id..addr.i = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %.part_id..addr.i, metadata !75, metadata !DIExpression()), !dbg !73
  %.privates..addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %.privates..addr.i, metadata !76, metadata !DIExpression()), !dbg !73
  %.copy_fn..addr.i = alloca void (i8*, ...)*, align 8
  call void @llvm.dbg.declare(metadata void (i8*, ...)** %.copy_fn..addr.i, metadata !77, metadata !DIExpression()), !dbg !73
  %.task_t..addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %.task_t..addr.i, metadata !78, metadata !DIExpression()), !dbg !73
  %__context.addr.i = alloca %struct.anon*, align 8
  call void @llvm.dbg.declare(metadata %struct.anon** %__context.addr.i, metadata !79, metadata !DIExpression()), !dbg !73
  %.addr = alloca i32, align 4
  %.addr1 = alloca %struct.kmp_task_t_with_privates*, align 8
  store i32 %0, i32* %.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %.addr, metadata !80, metadata !DIExpression()), !dbg !81
  store %struct.kmp_task_t_with_privates* %1, %struct.kmp_task_t_with_privates** %.addr1, align 8
  call void @llvm.dbg.declare(metadata %struct.kmp_task_t_with_privates** %.addr1, metadata !82, metadata !DIExpression()), !dbg !81
  %2 = load i32, i32* %.addr, align 4, !dbg !93
  %3 = load %struct.kmp_task_t_with_privates*, %struct.kmp_task_t_with_privates** %.addr1, align 8, !dbg !93
  %4 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %3, i32 0, i32 0, !dbg !93
  %5 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 2, !dbg !93
  %6 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 0, !dbg !93
  %7 = load i8*, i8** %6, align 8, !dbg !93
  %8 = bitcast i8* %7 to %struct.anon*, !dbg !93
  %9 = bitcast %struct.kmp_task_t_with_privates* %3 to i8*, !dbg !93
  store i32 %2, i32* %.global_tid..addr.i, align 4, !noalias !94
  store i32* %5, i32** %.part_id..addr.i, align 8, !noalias !94
  store i8* null, i8** %.privates..addr.i, align 8, !noalias !94
  store void (i8*, ...)* null, void (i8*, ...)** %.copy_fn..addr.i, align 8, !noalias !94
  store i8* %9, i8** %.task_t..addr.i, align 8, !noalias !94
  store %struct.anon* %8, %struct.anon** %__context.addr.i, align 8, !noalias !94
  %10 = load %struct.anon*, %struct.anon** %__context.addr.i, align 8, !dbg !100, !noalias !94
  %11 = getelementptr inbounds %struct.anon, %struct.anon* %10, i32 0, i32 0, !dbg !100
  %12 = load i32*, i32** %11, align 8, !dbg !100
  store i32 1, i32* %12, align 4, !dbg !101
  ret i32 0, !dbg !93
}

declare dso_local i8* @__kmpc_omp_task_alloc(%struct.ident_t*, i32, i32, i64, i64, i32 (i32, i8*)*)

declare dso_local i32 @__kmpc_omp_task_with_deps(%struct.ident_t*, i32, i8*, i32, i8*, i32, i8*)

; Function Attrs: noinline norecurse nounwind uwtable
define internal i32 @.omp_task_entry..2(i32 %0, %struct.kmp_task_t_with_privates.1* noalias %1) #4 !dbg !102 {
entry:
  %.global_tid..addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %.global_tid..addr.i, metadata !103, metadata !DIExpression()), !dbg !111
  %.part_id..addr.i = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %.part_id..addr.i, metadata !113, metadata !DIExpression()), !dbg !111
  %.privates..addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %.privates..addr.i, metadata !114, metadata !DIExpression()), !dbg !111
  %.copy_fn..addr.i = alloca void (i8*, ...)*, align 8
  call void @llvm.dbg.declare(metadata void (i8*, ...)** %.copy_fn..addr.i, metadata !115, metadata !DIExpression()), !dbg !111
  %.task_t..addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %.task_t..addr.i, metadata !116, metadata !DIExpression()), !dbg !111
  %__context.addr.i = alloca %struct.anon.0*, align 8
  call void @llvm.dbg.declare(metadata %struct.anon.0** %__context.addr.i, metadata !117, metadata !DIExpression()), !dbg !111
  %.addr = alloca i32, align 4
  %.addr1 = alloca %struct.kmp_task_t_with_privates.1*, align 8
  store i32 %0, i32* %.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %.addr, metadata !118, metadata !DIExpression()), !dbg !119
  store %struct.kmp_task_t_with_privates.1* %1, %struct.kmp_task_t_with_privates.1** %.addr1, align 8
  call void @llvm.dbg.declare(metadata %struct.kmp_task_t_with_privates.1** %.addr1, metadata !120, metadata !DIExpression()), !dbg !119
  %2 = load i32, i32* %.addr, align 4, !dbg !126
  %3 = load %struct.kmp_task_t_with_privates.1*, %struct.kmp_task_t_with_privates.1** %.addr1, align 8, !dbg !126
  %4 = getelementptr inbounds %struct.kmp_task_t_with_privates.1, %struct.kmp_task_t_with_privates.1* %3, i32 0, i32 0, !dbg !126
  %5 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 2, !dbg !126
  %6 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 0, !dbg !126
  %7 = load i8*, i8** %6, align 8, !dbg !126
  %8 = bitcast i8* %7 to %struct.anon.0*, !dbg !126
  %9 = bitcast %struct.kmp_task_t_with_privates.1* %3 to i8*, !dbg !126
  store i32 %2, i32* %.global_tid..addr.i, align 4, !noalias !127
  store i32* %5, i32** %.part_id..addr.i, align 8, !noalias !127
  store i8* null, i8** %.privates..addr.i, align 8, !noalias !127
  store void (i8*, ...)* null, void (i8*, ...)** %.copy_fn..addr.i, align 8, !noalias !127
  store i8* %9, i8** %.task_t..addr.i, align 8, !noalias !127
  store %struct.anon.0* %8, %struct.anon.0** %__context.addr.i, align 8, !noalias !127
  %10 = load %struct.anon.0*, %struct.anon.0** %__context.addr.i, align 8, !dbg !133, !noalias !127
  %11 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %10, i32 0, i32 0, !dbg !133
  %12 = load i32*, i32** %11, align 8, !dbg !133
  store i32 2, i32* %12, align 4, !dbg !134
  ret i32 0, !dbg !126
}

; Function Attrs: noinline norecurse nounwind uwtable
define internal i32 @.omp_task_entry..4(i32 %0, %struct.kmp_task_t_with_privates.3* noalias %1) #4 !dbg !135 {
entry:
  %.global_tid..addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %.global_tid..addr.i, metadata !136, metadata !DIExpression()), !dbg !144
  %.part_id..addr.i = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %.part_id..addr.i, metadata !146, metadata !DIExpression()), !dbg !144
  %.privates..addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %.privates..addr.i, metadata !147, metadata !DIExpression()), !dbg !144
  %.copy_fn..addr.i = alloca void (i8*, ...)*, align 8
  call void @llvm.dbg.declare(metadata void (i8*, ...)** %.copy_fn..addr.i, metadata !148, metadata !DIExpression()), !dbg !144
  %.task_t..addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %.task_t..addr.i, metadata !149, metadata !DIExpression()), !dbg !144
  %__context.addr.i = alloca %struct.anon.2*, align 8
  call void @llvm.dbg.declare(metadata %struct.anon.2** %__context.addr.i, metadata !150, metadata !DIExpression()), !dbg !144
  %.addr = alloca i32, align 4
  %.addr1 = alloca %struct.kmp_task_t_with_privates.3*, align 8
  store i32 %0, i32* %.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %.addr, metadata !151, metadata !DIExpression()), !dbg !152
  store %struct.kmp_task_t_with_privates.3* %1, %struct.kmp_task_t_with_privates.3** %.addr1, align 8
  call void @llvm.dbg.declare(metadata %struct.kmp_task_t_with_privates.3** %.addr1, metadata !153, metadata !DIExpression()), !dbg !152
  %2 = load i32, i32* %.addr, align 4, !dbg !159
  %3 = load %struct.kmp_task_t_with_privates.3*, %struct.kmp_task_t_with_privates.3** %.addr1, align 8, !dbg !159
  %4 = getelementptr inbounds %struct.kmp_task_t_with_privates.3, %struct.kmp_task_t_with_privates.3* %3, i32 0, i32 0, !dbg !159
  %5 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 2, !dbg !159
  %6 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 0, !dbg !159
  %7 = load i8*, i8** %6, align 8, !dbg !159
  %8 = bitcast i8* %7 to %struct.anon.2*, !dbg !159
  %9 = bitcast %struct.kmp_task_t_with_privates.3* %3 to i8*, !dbg !159
  store i32 %2, i32* %.global_tid..addr.i, align 4, !noalias !160
  store i32* %5, i32** %.part_id..addr.i, align 8, !noalias !160
  store i8* null, i8** %.privates..addr.i, align 8, !noalias !160
  store void (i8*, ...)* null, void (i8*, ...)** %.copy_fn..addr.i, align 8, !noalias !160
  store i8* %9, i8** %.task_t..addr.i, align 8, !noalias !160
  store %struct.anon.2* %8, %struct.anon.2** %__context.addr.i, align 8, !noalias !160
  %10 = load %struct.anon.2*, %struct.anon.2** %__context.addr.i, align 8, !dbg !166, !noalias !160
  %11 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %10, i32 0, i32 0, !dbg !166
  %12 = load i32*, i32** %11, align 8, !dbg !166
  store i32 3, i32* %12, align 4, !dbg !167
  ret i32 0, !dbg !159
}

; Function Attrs: noinline norecurse nounwind uwtable
define internal i32 @.omp_task_entry..6(i32 %0, %struct.kmp_task_t_with_privates.5* noalias %1) #4 !dbg !168 {
entry:
  %.global_tid..addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %.global_tid..addr.i, metadata !169, metadata !DIExpression()), !dbg !177
  %.part_id..addr.i = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %.part_id..addr.i, metadata !179, metadata !DIExpression()), !dbg !177
  %.privates..addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %.privates..addr.i, metadata !180, metadata !DIExpression()), !dbg !177
  %.copy_fn..addr.i = alloca void (i8*, ...)*, align 8
  call void @llvm.dbg.declare(metadata void (i8*, ...)** %.copy_fn..addr.i, metadata !181, metadata !DIExpression()), !dbg !177
  %.task_t..addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %.task_t..addr.i, metadata !182, metadata !DIExpression()), !dbg !177
  %__context.addr.i = alloca %struct.anon.4*, align 8
  call void @llvm.dbg.declare(metadata %struct.anon.4** %__context.addr.i, metadata !183, metadata !DIExpression()), !dbg !177
  %.addr = alloca i32, align 4
  %.addr1 = alloca %struct.kmp_task_t_with_privates.5*, align 8
  store i32 %0, i32* %.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %.addr, metadata !184, metadata !DIExpression()), !dbg !185
  store %struct.kmp_task_t_with_privates.5* %1, %struct.kmp_task_t_with_privates.5** %.addr1, align 8
  call void @llvm.dbg.declare(metadata %struct.kmp_task_t_with_privates.5** %.addr1, metadata !186, metadata !DIExpression()), !dbg !185
  %2 = load i32, i32* %.addr, align 4, !dbg !192
  %3 = load %struct.kmp_task_t_with_privates.5*, %struct.kmp_task_t_with_privates.5** %.addr1, align 8, !dbg !192
  %4 = getelementptr inbounds %struct.kmp_task_t_with_privates.5, %struct.kmp_task_t_with_privates.5* %3, i32 0, i32 0, !dbg !192
  %5 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 2, !dbg !192
  %6 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 0, !dbg !192
  %7 = load i8*, i8** %6, align 8, !dbg !192
  %8 = bitcast i8* %7 to %struct.anon.4*, !dbg !192
  %9 = bitcast %struct.kmp_task_t_with_privates.5* %3 to i8*, !dbg !192
  store i32 %2, i32* %.global_tid..addr.i, align 4, !noalias !193
  store i32* %5, i32** %.part_id..addr.i, align 8, !noalias !193
  store i8* null, i8** %.privates..addr.i, align 8, !noalias !193
  store void (i8*, ...)* null, void (i8*, ...)** %.copy_fn..addr.i, align 8, !noalias !193
  store i8* %9, i8** %.task_t..addr.i, align 8, !noalias !193
  store %struct.anon.4* %8, %struct.anon.4** %__context.addr.i, align 8, !noalias !193
  %10 = load %struct.anon.4*, %struct.anon.4** %__context.addr.i, align 8, !dbg !199, !noalias !193
  %11 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %10, i32 0, i32 1, !dbg !200
  %12 = load i32*, i32** %11, align 8, !dbg !200
  %13 = load i32, i32* %12, align 4, !dbg !200
  %14 = getelementptr inbounds %struct.anon.4, %struct.anon.4* %10, i32 0, i32 0, !dbg !199
  %15 = load i32*, i32** %14, align 8, !dbg !199
  %16 = load i32, i32* %15, align 4, !dbg !201
  %add.i = add nsw i32 %16, %13, !dbg !201
  store i32 %add.i, i32* %15, align 4, !dbg !201
  ret i32 0, !dbg !192
}

; Function Attrs: noinline norecurse nounwind uwtable
define internal i32 @.omp_task_entry..8(i32 %0, %struct.kmp_task_t_with_privates.7* noalias %1) #4 !dbg !202 {
entry:
  %.global_tid..addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %.global_tid..addr.i, metadata !203, metadata !DIExpression()), !dbg !211
  %.part_id..addr.i = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %.part_id..addr.i, metadata !213, metadata !DIExpression()), !dbg !211
  %.privates..addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %.privates..addr.i, metadata !214, metadata !DIExpression()), !dbg !211
  %.copy_fn..addr.i = alloca void (i8*, ...)*, align 8
  call void @llvm.dbg.declare(metadata void (i8*, ...)** %.copy_fn..addr.i, metadata !215, metadata !DIExpression()), !dbg !211
  %.task_t..addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %.task_t..addr.i, metadata !216, metadata !DIExpression()), !dbg !211
  %__context.addr.i = alloca %struct.anon.6*, align 8
  call void @llvm.dbg.declare(metadata %struct.anon.6** %__context.addr.i, metadata !217, metadata !DIExpression()), !dbg !211
  %.addr = alloca i32, align 4
  %.addr1 = alloca %struct.kmp_task_t_with_privates.7*, align 8
  store i32 %0, i32* %.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %.addr, metadata !218, metadata !DIExpression()), !dbg !219
  store %struct.kmp_task_t_with_privates.7* %1, %struct.kmp_task_t_with_privates.7** %.addr1, align 8
  call void @llvm.dbg.declare(metadata %struct.kmp_task_t_with_privates.7** %.addr1, metadata !220, metadata !DIExpression()), !dbg !219
  %2 = load i32, i32* %.addr, align 4, !dbg !226
  %3 = load %struct.kmp_task_t_with_privates.7*, %struct.kmp_task_t_with_privates.7** %.addr1, align 8, !dbg !226
  %4 = getelementptr inbounds %struct.kmp_task_t_with_privates.7, %struct.kmp_task_t_with_privates.7* %3, i32 0, i32 0, !dbg !226
  %5 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 2, !dbg !226
  %6 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 0, !dbg !226
  %7 = load i8*, i8** %6, align 8, !dbg !226
  %8 = bitcast i8* %7 to %struct.anon.6*, !dbg !226
  %9 = bitcast %struct.kmp_task_t_with_privates.7* %3 to i8*, !dbg !226
  store i32 %2, i32* %.global_tid..addr.i, align 4, !noalias !227
  store i32* %5, i32** %.part_id..addr.i, align 8, !noalias !227
  store i8* null, i8** %.privates..addr.i, align 8, !noalias !227
  store void (i8*, ...)* null, void (i8*, ...)** %.copy_fn..addr.i, align 8, !noalias !227
  store i8* %9, i8** %.task_t..addr.i, align 8, !noalias !227
  store %struct.anon.6* %8, %struct.anon.6** %__context.addr.i, align 8, !noalias !227
  %10 = load %struct.anon.6*, %struct.anon.6** %__context.addr.i, align 8, !dbg !233, !noalias !227
  %11 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %10, i32 0, i32 1, !dbg !234
  %12 = load i32*, i32** %11, align 8, !dbg !234
  %13 = load i32, i32* %12, align 4, !dbg !234
  %14 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %10, i32 0, i32 0, !dbg !233
  %15 = load i32*, i32** %14, align 8, !dbg !233
  %16 = load i32, i32* %15, align 4, !dbg !235
  %add.i = add nsw i32 %16, %13, !dbg !235
  store i32 %add.i, i32* %15, align 4, !dbg !235
  ret i32 0, !dbg !226
}

; Function Attrs: noinline norecurse nounwind uwtable
define internal i32 @.omp_task_entry..10(i32 %0, %struct.kmp_task_t_with_privates.9* noalias %1) #4 !dbg !236 {
entry:
  %.global_tid..addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %.global_tid..addr.i, metadata !237, metadata !DIExpression()), !dbg !245
  %.part_id..addr.i = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %.part_id..addr.i, metadata !247, metadata !DIExpression()), !dbg !245
  %.privates..addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %.privates..addr.i, metadata !248, metadata !DIExpression()), !dbg !245
  %.copy_fn..addr.i = alloca void (i8*, ...)*, align 8
  call void @llvm.dbg.declare(metadata void (i8*, ...)** %.copy_fn..addr.i, metadata !249, metadata !DIExpression()), !dbg !245
  %.task_t..addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %.task_t..addr.i, metadata !250, metadata !DIExpression()), !dbg !245
  %__context.addr.i = alloca %struct.anon.8*, align 8
  call void @llvm.dbg.declare(metadata %struct.anon.8** %__context.addr.i, metadata !251, metadata !DIExpression()), !dbg !245
  %.addr = alloca i32, align 4
  %.addr1 = alloca %struct.kmp_task_t_with_privates.9*, align 8
  store i32 %0, i32* %.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %.addr, metadata !252, metadata !DIExpression()), !dbg !253
  store %struct.kmp_task_t_with_privates.9* %1, %struct.kmp_task_t_with_privates.9** %.addr1, align 8
  call void @llvm.dbg.declare(metadata %struct.kmp_task_t_with_privates.9** %.addr1, metadata !254, metadata !DIExpression()), !dbg !253
  %2 = load i32, i32* %.addr, align 4, !dbg !260
  %3 = load %struct.kmp_task_t_with_privates.9*, %struct.kmp_task_t_with_privates.9** %.addr1, align 8, !dbg !260
  %4 = getelementptr inbounds %struct.kmp_task_t_with_privates.9, %struct.kmp_task_t_with_privates.9* %3, i32 0, i32 0, !dbg !260
  %5 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 2, !dbg !260
  %6 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 0, !dbg !260
  %7 = load i8*, i8** %6, align 8, !dbg !260
  %8 = bitcast i8* %7 to %struct.anon.8*, !dbg !260
  %9 = bitcast %struct.kmp_task_t_with_privates.9* %3 to i8*, !dbg !260
  store i32 %2, i32* %.global_tid..addr.i, align 4, !noalias !261
  store i32* %5, i32** %.part_id..addr.i, align 8, !noalias !261
  store i8* null, i8** %.privates..addr.i, align 8, !noalias !261
  store void (i8*, ...)* null, void (i8*, ...)** %.copy_fn..addr.i, align 8, !noalias !261
  store i8* %9, i8** %.task_t..addr.i, align 8, !noalias !261
  store %struct.anon.8* %8, %struct.anon.8** %__context.addr.i, align 8, !noalias !261
  %10 = load %struct.anon.8*, %struct.anon.8** %__context.addr.i, align 8, !dbg !267, !noalias !261
  %11 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %10, i32 0, i32 1, !dbg !268
  %12 = load i32*, i32** %11, align 8, !dbg !268
  %13 = load i32, i32* %12, align 4, !dbg !268
  %14 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %10, i32 0, i32 0, !dbg !267
  %15 = load i32*, i32** %14, align 8, !dbg !267
  store i32 %13, i32* %15, align 4, !dbg !269
  ret i32 0, !dbg !260
}

declare dso_local void @__kmpc_barrier(%struct.ident_t*, i32)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined..11(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %c, i32* dereferenceable(4) %a, i32* dereferenceable(4) %b, i32* dereferenceable(4) %d) #2 !dbg !270 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %c.addr = alloca i32*, align 8
  %a.addr = alloca i32*, align 8
  %b.addr = alloca i32*, align 8
  %d.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !271, metadata !DIExpression()), !dbg !272
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !273, metadata !DIExpression()), !dbg !272
  store i32* %c, i32** %c.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %c.addr, metadata !274, metadata !DIExpression()), !dbg !272
  store i32* %a, i32** %a.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %a.addr, metadata !275, metadata !DIExpression()), !dbg !272
  store i32* %b, i32** %b.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %b.addr, metadata !276, metadata !DIExpression()), !dbg !272
  store i32* %d, i32** %d.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %d.addr, metadata !277, metadata !DIExpression()), !dbg !272
  %0 = load i32*, i32** %c.addr, align 8, !dbg !278
  %1 = load i32*, i32** %a.addr, align 8, !dbg !278
  %2 = load i32*, i32** %b.addr, align 8, !dbg !278
  %3 = load i32*, i32** %d.addr, align 8, !dbg !278
  %4 = load i32*, i32** %.global_tid..addr, align 8, !dbg !278
  %5 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !278
  %6 = load i32*, i32** %c.addr, align 8, !dbg !278
  %7 = load i32*, i32** %a.addr, align 8, !dbg !278
  %8 = load i32*, i32** %b.addr, align 8, !dbg !278
  %9 = load i32*, i32** %d.addr, align 8, !dbg !278
  call void @.omp_outlined._debug__(i32* %4, i32* %5, i32* %6, i32* %7, i32* %8, i32* %9) #6, !dbg !278
  ret void, !dbg !278
}

declare !callback !279 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

declare dso_local i32 @printf(i8*, ...) #5

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noinline norecurse nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { noinline norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.1 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "DRB136-taskdep-mutexinoutset-orig-yes.c", directory: "/home/yanze/code/OpenRace/tests/data/integration/dataracebench")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.1 "}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 19, type: !8, scopeLine: 19, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DILocalVariable(name: "a", scope: !7, file: !1, line: 20, type: !10)
!12 = !DILocation(line: 20, column: 7, scope: !7)
!13 = !DILocalVariable(name: "b", scope: !7, file: !1, line: 20, type: !10)
!14 = !DILocation(line: 20, column: 10, scope: !7)
!15 = !DILocalVariable(name: "c", scope: !7, file: !1, line: 20, type: !10)
!16 = !DILocation(line: 20, column: 13, scope: !7)
!17 = !DILocalVariable(name: "d", scope: !7, file: !1, line: 20, type: !10)
!18 = !DILocation(line: 20, column: 16, scope: !7)
!19 = !DILocation(line: 22, column: 3, scope: !7)
!20 = !DILocation(line: 39, column: 17, scope: !7)
!21 = !DILocation(line: 39, column: 3, scope: !7)
!22 = !DILocation(line: 40, column: 3, scope: !7)
!23 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 23, type: !24, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!24 = !DISubroutineType(types: !25)
!25 = !{null, !26, !26, !30, !30, !30, !30}
!26 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !27)
!27 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !28)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!30 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !10, size: 64)
!31 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !23, type: !26, flags: DIFlagArtificial)
!32 = !DILocation(line: 0, scope: !23)
!33 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !23, type: !26, flags: DIFlagArtificial)
!34 = !DILocalVariable(name: "c", arg: 3, scope: !23, file: !1, line: 20, type: !30)
!35 = !DILocation(line: 20, column: 13, scope: !23)
!36 = !DILocalVariable(name: "a", arg: 4, scope: !23, file: !1, line: 20, type: !30)
!37 = !DILocation(line: 20, column: 7, scope: !23)
!38 = !DILocalVariable(name: "b", arg: 5, scope: !23, file: !1, line: 20, type: !30)
!39 = !DILocation(line: 20, column: 10, scope: !23)
!40 = !DILocalVariable(name: "d", arg: 6, scope: !23, file: !1, line: 20, type: !30)
!41 = !DILocation(line: 20, column: 16, scope: !23)
!42 = !DILocation(line: 23, column: 3, scope: !23)
!43 = !DILocation(line: 25, column: 5, scope: !44)
!44 = distinct !DILexicalBlock(scope: !45, file: !1, line: 24, column: 3)
!45 = distinct !DILexicalBlock(scope: !23, file: !1, line: 23, column: 3)
!46 = !DILocation(line: 27, column: 5, scope: !44)
!47 = !DILocation(line: 29, column: 5, scope: !44)
!48 = !DILocation(line: 31, column: 5, scope: !44)
!49 = !DILocation(line: 33, column: 5, scope: !44)
!50 = !DILocation(line: 35, column: 5, scope: !44)
!51 = !DILocation(line: 37, column: 3, scope: !44)
!52 = !DILocation(line: 23, column: 21, scope: !45)
!53 = !DILocation(line: 23, column: 21, scope: !23)
!54 = distinct !DISubprogram(linkageName: ".omp_task_entry.", scope: !1, file: !1, line: 25, type: !55, scopeLine: 25, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!55 = !DISubroutineType(types: !2)
!56 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !57, type: !29, flags: DIFlagArtificial)
!57 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 26, type: !58, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!58 = !DISubroutineType(types: !59)
!59 = !{null, !29, !26, !60, !63, !68, !69}
!60 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !61)
!61 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !62)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !64)
!64 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !65)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = !DISubroutineType(types: !67)
!67 = !{null, !60, null}
!68 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !62)
!69 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !70)
!70 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !71)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 25, size: 64, elements: !2)
!73 = !DILocation(line: 0, scope: !57, inlinedAt: !74)
!74 = distinct !DILocation(line: 25, column: 5, scope: !54)
!75 = !DILocalVariable(name: ".part_id.", arg: 2, scope: !57, type: !26, flags: DIFlagArtificial)
!76 = !DILocalVariable(name: ".privates.", arg: 3, scope: !57, type: !60, flags: DIFlagArtificial)
!77 = !DILocalVariable(name: ".copy_fn.", arg: 4, scope: !57, type: !63, flags: DIFlagArtificial)
!78 = !DILocalVariable(name: ".task_t.", arg: 5, scope: !57, type: !68, flags: DIFlagArtificial)
!79 = !DILocalVariable(name: "__context", arg: 6, scope: !57, type: !69, flags: DIFlagArtificial)
!80 = !DILocalVariable(arg: 1, scope: !54, type: !10, flags: DIFlagArtificial)
!81 = !DILocation(line: 0, scope: !54)
!82 = !DILocalVariable(arg: 2, scope: !54, type: !83, flags: DIFlagArtificial)
!83 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !84)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t_with_privates", file: !1, size: 320, elements: !86)
!86 = !{!87}
!87 = !DIDerivedType(tag: DW_TAG_member, scope: !85, file: !1, baseType: !88, size: 320)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t", file: !1, size: 320, elements: !89)
!89 = !{!90, !92}
!90 = !DIDerivedType(tag: DW_TAG_member, scope: !88, file: !1, baseType: !91, size: 64, offset: 192)
!91 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "kmp_cmplrdata_t", file: !1, size: 64, elements: !2)
!92 = !DIDerivedType(tag: DW_TAG_member, scope: !88, file: !1, baseType: !91, size: 64, offset: 256)
!93 = !DILocation(line: 25, column: 5, scope: !54)
!94 = !{!95, !97, !98, !99}
!95 = distinct !{!95, !96, !".omp_outlined.: %.part_id."}
!96 = distinct !{!96, !".omp_outlined."}
!97 = distinct !{!97, !96, !".omp_outlined.: %.privates."}
!98 = distinct !{!98, !96, !".omp_outlined.: %.copy_fn."}
!99 = distinct !{!99, !96, !".omp_outlined.: %__context"}
!100 = !DILocation(line: 26, column: 7, scope: !57, inlinedAt: !74)
!101 = !DILocation(line: 26, column: 9, scope: !57, inlinedAt: !74)
!102 = distinct !DISubprogram(linkageName: ".omp_task_entry..2", scope: !1, file: !1, line: 27, type: !55, scopeLine: 27, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!103 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !104, type: !29, flags: DIFlagArtificial)
!104 = distinct !DISubprogram(name: ".omp_outlined..1", scope: !1, file: !1, line: 28, type: !105, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!105 = !DISubroutineType(types: !106)
!106 = !{null, !29, !26, !60, !63, !68, !107}
!107 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !108)
!108 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !109)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 27, size: 64, elements: !2)
!111 = !DILocation(line: 0, scope: !104, inlinedAt: !112)
!112 = distinct !DILocation(line: 27, column: 5, scope: !102)
!113 = !DILocalVariable(name: ".part_id.", arg: 2, scope: !104, type: !26, flags: DIFlagArtificial)
!114 = !DILocalVariable(name: ".privates.", arg: 3, scope: !104, type: !60, flags: DIFlagArtificial)
!115 = !DILocalVariable(name: ".copy_fn.", arg: 4, scope: !104, type: !63, flags: DIFlagArtificial)
!116 = !DILocalVariable(name: ".task_t.", arg: 5, scope: !104, type: !68, flags: DIFlagArtificial)
!117 = !DILocalVariable(name: "__context", arg: 6, scope: !104, type: !107, flags: DIFlagArtificial)
!118 = !DILocalVariable(arg: 1, scope: !102, type: !10, flags: DIFlagArtificial)
!119 = !DILocation(line: 0, scope: !102)
!120 = !DILocalVariable(arg: 2, scope: !102, type: !121, flags: DIFlagArtificial)
!121 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !122)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t_with_privates", file: !1, size: 320, elements: !124)
!124 = !{!125}
!125 = !DIDerivedType(tag: DW_TAG_member, scope: !123, file: !1, baseType: !88, size: 320)
!126 = !DILocation(line: 27, column: 5, scope: !102)
!127 = !{!128, !130, !131, !132}
!128 = distinct !{!128, !129, !".omp_outlined..1: %.part_id."}
!129 = distinct !{!129, !".omp_outlined..1"}
!130 = distinct !{!130, !129, !".omp_outlined..1: %.privates."}
!131 = distinct !{!131, !129, !".omp_outlined..1: %.copy_fn."}
!132 = distinct !{!132, !129, !".omp_outlined..1: %__context"}
!133 = !DILocation(line: 28, column: 7, scope: !104, inlinedAt: !112)
!134 = !DILocation(line: 28, column: 9, scope: !104, inlinedAt: !112)
!135 = distinct !DISubprogram(linkageName: ".omp_task_entry..4", scope: !1, file: !1, line: 29, type: !55, scopeLine: 29, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!136 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !137, type: !29, flags: DIFlagArtificial)
!137 = distinct !DISubprogram(name: ".omp_outlined..3", scope: !1, file: !1, line: 30, type: !138, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!138 = !DISubroutineType(types: !139)
!139 = !{null, !29, !26, !60, !63, !68, !140}
!140 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !141)
!141 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !142)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 29, size: 64, elements: !2)
!144 = !DILocation(line: 0, scope: !137, inlinedAt: !145)
!145 = distinct !DILocation(line: 29, column: 5, scope: !135)
!146 = !DILocalVariable(name: ".part_id.", arg: 2, scope: !137, type: !26, flags: DIFlagArtificial)
!147 = !DILocalVariable(name: ".privates.", arg: 3, scope: !137, type: !60, flags: DIFlagArtificial)
!148 = !DILocalVariable(name: ".copy_fn.", arg: 4, scope: !137, type: !63, flags: DIFlagArtificial)
!149 = !DILocalVariable(name: ".task_t.", arg: 5, scope: !137, type: !68, flags: DIFlagArtificial)
!150 = !DILocalVariable(name: "__context", arg: 6, scope: !137, type: !140, flags: DIFlagArtificial)
!151 = !DILocalVariable(arg: 1, scope: !135, type: !10, flags: DIFlagArtificial)
!152 = !DILocation(line: 0, scope: !135)
!153 = !DILocalVariable(arg: 2, scope: !135, type: !154, flags: DIFlagArtificial)
!154 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !155)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t_with_privates", file: !1, size: 320, elements: !157)
!157 = !{!158}
!158 = !DIDerivedType(tag: DW_TAG_member, scope: !156, file: !1, baseType: !88, size: 320)
!159 = !DILocation(line: 29, column: 5, scope: !135)
!160 = !{!161, !163, !164, !165}
!161 = distinct !{!161, !162, !".omp_outlined..3: %.part_id."}
!162 = distinct !{!162, !".omp_outlined..3"}
!163 = distinct !{!163, !162, !".omp_outlined..3: %.privates."}
!164 = distinct !{!164, !162, !".omp_outlined..3: %.copy_fn."}
!165 = distinct !{!165, !162, !".omp_outlined..3: %__context"}
!166 = !DILocation(line: 30, column: 7, scope: !137, inlinedAt: !145)
!167 = !DILocation(line: 30, column: 9, scope: !137, inlinedAt: !145)
!168 = distinct !DISubprogram(linkageName: ".omp_task_entry..6", scope: !1, file: !1, line: 31, type: !55, scopeLine: 31, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!169 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !170, type: !29, flags: DIFlagArtificial)
!170 = distinct !DISubprogram(name: ".omp_outlined..5", scope: !1, file: !1, line: 32, type: !171, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!171 = !DISubroutineType(types: !172)
!172 = !{null, !29, !26, !60, !63, !68, !173}
!173 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !174)
!174 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !175)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 31, size: 128, elements: !2)
!177 = !DILocation(line: 0, scope: !170, inlinedAt: !178)
!178 = distinct !DILocation(line: 31, column: 5, scope: !168)
!179 = !DILocalVariable(name: ".part_id.", arg: 2, scope: !170, type: !26, flags: DIFlagArtificial)
!180 = !DILocalVariable(name: ".privates.", arg: 3, scope: !170, type: !60, flags: DIFlagArtificial)
!181 = !DILocalVariable(name: ".copy_fn.", arg: 4, scope: !170, type: !63, flags: DIFlagArtificial)
!182 = !DILocalVariable(name: ".task_t.", arg: 5, scope: !170, type: !68, flags: DIFlagArtificial)
!183 = !DILocalVariable(name: "__context", arg: 6, scope: !170, type: !173, flags: DIFlagArtificial)
!184 = !DILocalVariable(arg: 1, scope: !168, type: !10, flags: DIFlagArtificial)
!185 = !DILocation(line: 0, scope: !168)
!186 = !DILocalVariable(arg: 2, scope: !168, type: !187, flags: DIFlagArtificial)
!187 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !188)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t_with_privates", file: !1, size: 320, elements: !190)
!190 = !{!191}
!191 = !DIDerivedType(tag: DW_TAG_member, scope: !189, file: !1, baseType: !88, size: 320)
!192 = !DILocation(line: 31, column: 5, scope: !168)
!193 = !{!194, !196, !197, !198}
!194 = distinct !{!194, !195, !".omp_outlined..5: %.part_id."}
!195 = distinct !{!195, !".omp_outlined..5"}
!196 = distinct !{!196, !195, !".omp_outlined..5: %.privates."}
!197 = distinct !{!197, !195, !".omp_outlined..5: %.copy_fn."}
!198 = distinct !{!198, !195, !".omp_outlined..5: %__context"}
!199 = !DILocation(line: 32, column: 7, scope: !170, inlinedAt: !178)
!200 = !DILocation(line: 32, column: 12, scope: !170, inlinedAt: !178)
!201 = !DILocation(line: 32, column: 9, scope: !170, inlinedAt: !178)
!202 = distinct !DISubprogram(linkageName: ".omp_task_entry..8", scope: !1, file: !1, line: 33, type: !55, scopeLine: 33, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!203 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !204, type: !29, flags: DIFlagArtificial)
!204 = distinct !DISubprogram(name: ".omp_outlined..7", scope: !1, file: !1, line: 34, type: !205, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!205 = !DISubroutineType(types: !206)
!206 = !{null, !29, !26, !60, !63, !68, !207}
!207 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !208)
!208 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !209)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 33, size: 128, elements: !2)
!211 = !DILocation(line: 0, scope: !204, inlinedAt: !212)
!212 = distinct !DILocation(line: 33, column: 5, scope: !202)
!213 = !DILocalVariable(name: ".part_id.", arg: 2, scope: !204, type: !26, flags: DIFlagArtificial)
!214 = !DILocalVariable(name: ".privates.", arg: 3, scope: !204, type: !60, flags: DIFlagArtificial)
!215 = !DILocalVariable(name: ".copy_fn.", arg: 4, scope: !204, type: !63, flags: DIFlagArtificial)
!216 = !DILocalVariable(name: ".task_t.", arg: 5, scope: !204, type: !68, flags: DIFlagArtificial)
!217 = !DILocalVariable(name: "__context", arg: 6, scope: !204, type: !207, flags: DIFlagArtificial)
!218 = !DILocalVariable(arg: 1, scope: !202, type: !10, flags: DIFlagArtificial)
!219 = !DILocation(line: 0, scope: !202)
!220 = !DILocalVariable(arg: 2, scope: !202, type: !221, flags: DIFlagArtificial)
!221 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !222)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t_with_privates", file: !1, size: 320, elements: !224)
!224 = !{!225}
!225 = !DIDerivedType(tag: DW_TAG_member, scope: !223, file: !1, baseType: !88, size: 320)
!226 = !DILocation(line: 33, column: 5, scope: !202)
!227 = !{!228, !230, !231, !232}
!228 = distinct !{!228, !229, !".omp_outlined..7: %.part_id."}
!229 = distinct !{!229, !".omp_outlined..7"}
!230 = distinct !{!230, !229, !".omp_outlined..7: %.privates."}
!231 = distinct !{!231, !229, !".omp_outlined..7: %.copy_fn."}
!232 = distinct !{!232, !229, !".omp_outlined..7: %__context"}
!233 = !DILocation(line: 34, column: 7, scope: !204, inlinedAt: !212)
!234 = !DILocation(line: 34, column: 12, scope: !204, inlinedAt: !212)
!235 = !DILocation(line: 34, column: 9, scope: !204, inlinedAt: !212)
!236 = distinct !DISubprogram(linkageName: ".omp_task_entry..10", scope: !1, file: !1, line: 35, type: !55, scopeLine: 35, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!237 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !238, type: !29, flags: DIFlagArtificial)
!238 = distinct !DISubprogram(name: ".omp_outlined..9", scope: !1, file: !1, line: 36, type: !239, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!239 = !DISubroutineType(types: !240)
!240 = !{null, !29, !26, !60, !63, !68, !241}
!241 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !242)
!242 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !243)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!244 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 35, size: 128, elements: !2)
!245 = !DILocation(line: 0, scope: !238, inlinedAt: !246)
!246 = distinct !DILocation(line: 35, column: 5, scope: !236)
!247 = !DILocalVariable(name: ".part_id.", arg: 2, scope: !238, type: !26, flags: DIFlagArtificial)
!248 = !DILocalVariable(name: ".privates.", arg: 3, scope: !238, type: !60, flags: DIFlagArtificial)
!249 = !DILocalVariable(name: ".copy_fn.", arg: 4, scope: !238, type: !63, flags: DIFlagArtificial)
!250 = !DILocalVariable(name: ".task_t.", arg: 5, scope: !238, type: !68, flags: DIFlagArtificial)
!251 = !DILocalVariable(name: "__context", arg: 6, scope: !238, type: !241, flags: DIFlagArtificial)
!252 = !DILocalVariable(arg: 1, scope: !236, type: !10, flags: DIFlagArtificial)
!253 = !DILocation(line: 0, scope: !236)
!254 = !DILocalVariable(arg: 2, scope: !236, type: !255, flags: DIFlagArtificial)
!255 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !256)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t_with_privates", file: !1, size: 320, elements: !258)
!258 = !{!259}
!259 = !DIDerivedType(tag: DW_TAG_member, scope: !257, file: !1, baseType: !88, size: 320)
!260 = !DILocation(line: 35, column: 5, scope: !236)
!261 = !{!262, !264, !265, !266}
!262 = distinct !{!262, !263, !".omp_outlined..9: %.part_id."}
!263 = distinct !{!263, !".omp_outlined..9"}
!264 = distinct !{!264, !263, !".omp_outlined..9: %.privates."}
!265 = distinct !{!265, !263, !".omp_outlined..9: %.copy_fn."}
!266 = distinct !{!266, !263, !".omp_outlined..9: %__context"}
!267 = !DILocation(line: 36, column: 7, scope: !238, inlinedAt: !246)
!268 = !DILocation(line: 36, column: 11, scope: !238, inlinedAt: !246)
!269 = !DILocation(line: 36, column: 9, scope: !238, inlinedAt: !246)
!270 = distinct !DISubprogram(name: ".omp_outlined..11", scope: !1, file: !1, line: 23, type: !24, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!271 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !270, type: !26, flags: DIFlagArtificial)
!272 = !DILocation(line: 0, scope: !270)
!273 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !270, type: !26, flags: DIFlagArtificial)
!274 = !DILocalVariable(name: "c", arg: 3, scope: !270, type: !30, flags: DIFlagArtificial)
!275 = !DILocalVariable(name: "a", arg: 4, scope: !270, type: !30, flags: DIFlagArtificial)
!276 = !DILocalVariable(name: "b", arg: 5, scope: !270, type: !30, flags: DIFlagArtificial)
!277 = !DILocalVariable(name: "d", arg: 6, scope: !270, type: !30, flags: DIFlagArtificial)
!278 = !DILocation(line: 23, column: 3, scope: !270)
!279 = !{!280}
!280 = !{i64 2, i64 -1, i64 -1, i1 true}
