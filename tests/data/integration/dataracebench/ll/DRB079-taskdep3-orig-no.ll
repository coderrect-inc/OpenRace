; ModuleID = 'DRB079-taskdep3-orig-no.c'
source_filename = "DRB079-taskdep3-orig-no.c"
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
@1 = private unnamed_addr constant [39 x i8] c";DRB079-taskdep3-orig-no.c;main;57;1;;\00", align 1
@2 = private unnamed_addr constant [39 x i8] c";DRB079-taskdep3-orig-no.c;main;59;1;;\00", align 1
@3 = private unnamed_addr constant [39 x i8] c";DRB079-taskdep3-orig-no.c;main;64;1;;\00", align 1
@4 = private unnamed_addr constant [39 x i8] c";DRB079-taskdep3-orig-no.c;main;66;1;;\00", align 1
@5 = private unnamed_addr constant [39 x i8] c";DRB079-taskdep3-orig-no.c;main;56;1;;\00", align 1
@.str.6 = private unnamed_addr constant [11 x i8] c"j=%d k=%d\0A\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"j==1 && k==1\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"DRB079-taskdep3-orig-no.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [11 x i8] c"int main()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !7 {
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
  call void @llvm.dbg.declare(metadata i32* %i, metadata !11, metadata !DIExpression()), !dbg !12
  store i32 0, i32* %i, align 4, !dbg !12
  call void @llvm.dbg.declare(metadata i32* %j, metadata !13, metadata !DIExpression()), !dbg !14
  call void @llvm.dbg.declare(metadata i32* %k, metadata !15, metadata !DIExpression()), !dbg !16
  %2 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !17
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @5, i32 0, i32 0), i8** %2, align 8, !dbg !17
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*, i32*)* @.omp_outlined..5 to void (i32*, i32*, ...)*), i32* %i, i32* %j, i32* %k), !dbg !17
  %3 = load i32, i32* %j, align 4, !dbg !18
  %4 = load i32, i32* %k, align 4, !dbg !19
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32 %3, i32 %4), !dbg !20
  %5 = load i32, i32* %j, align 4, !dbg !21
  %cmp = icmp eq i32 %5, 1, !dbg !21
  br i1 %cmp, label %land.lhs.true, label %if.else, !dbg !21

land.lhs.true:                                    ; preds = %entry
  %6 = load i32, i32* %k, align 4, !dbg !21
  %cmp1 = icmp eq i32 %6, 1, !dbg !21
  br i1 %cmp1, label %if.then, label %if.else, !dbg !24

if.then:                                          ; preds = %land.lhs.true
  br label %if.end, !dbg !24

if.else:                                          ; preds = %land.lhs.true, %entry
  call void @__assert_fail(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i32 70, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #7, !dbg !21
  unreachable, !dbg !21

if.end:                                           ; preds = %if.then
  ret i32 0, !dbg !25
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %i, i32* dereferenceable(4) %j, i32* dereferenceable(4) %k) #2 !dbg !26 {
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
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !34, metadata !DIExpression()), !dbg !35
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !36, metadata !DIExpression()), !dbg !35
  store i32* %i, i32** %i.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %i.addr, metadata !37, metadata !DIExpression()), !dbg !38
  store i32* %j, i32** %j.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %j.addr, metadata !39, metadata !DIExpression()), !dbg !40
  store i32* %k, i32** %k.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %k.addr, metadata !41, metadata !DIExpression()), !dbg !42
  %2 = load i32*, i32** %i.addr, align 8, !dbg !43
  %3 = load i32*, i32** %j.addr, align 8, !dbg !43
  %4 = load i32*, i32** %k.addr, align 8, !dbg !43
  %5 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !43
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @1, i32 0, i32 0), i8** %5, align 8, !dbg !43
  %6 = load i32*, i32** %.global_tid..addr, align 8, !dbg !43
  %7 = load i32, i32* %6, align 4, !dbg !43
  %8 = call i32 @__kmpc_single(%struct.ident_t* %.kmpc_loc.addr, i32 %7), !dbg !43
  %9 = icmp ne i32 %8, 0, !dbg !43
  br i1 %9, label %omp_if.then, label %omp_if.end, !dbg !43

omp_if.then:                                      ; preds = %entry
  %10 = getelementptr inbounds %struct.anon, %struct.anon* %agg.captured, i32 0, i32 0, !dbg !44
  store i32* %2, i32** %10, align 8, !dbg !44
  %11 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !44
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @2, i32 0, i32 0), i8** %11, align 8, !dbg !44
  %12 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* %.kmpc_loc.addr, i32 %7, i32 1, i64 40, i64 8, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates*)* @.omp_task_entry. to i32 (i32, i8*)*)), !dbg !44
  %13 = bitcast i8* %12 to %struct.kmp_task_t_with_privates*, !dbg !44
  %14 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %13, i32 0, i32 0, !dbg !44
  %15 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %14, i32 0, i32 0, !dbg !44
  %16 = load i8*, i8** %15, align 8, !dbg !44
  %17 = bitcast %struct.anon* %agg.captured to i8*, !dbg !44
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 %17, i64 8, i1 false), !dbg !44
  %18 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %.dep.arr.addr, i64 0, i64 0, !dbg !44
  %19 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %18, i32 0, i32 0, !dbg !44
  %20 = ptrtoint i32* %2 to i64, !dbg !44
  store i64 %20, i64* %19, align 8, !dbg !44
  %21 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %18, i32 0, i32 1, !dbg !44
  store i64 4, i64* %21, align 8, !dbg !44
  %22 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %18, i32 0, i32 2, !dbg !44
  store i8 3, i8* %22, align 8, !dbg !44
  %23 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %.dep.arr.addr, i64 0, i64 0, !dbg !44
  %24 = bitcast %struct.kmp_depend_info* %23 to i8*, !dbg !44
  %25 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !44
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @2, i32 0, i32 0), i8** %25, align 8, !dbg !44
  %26 = call i32 @__kmpc_omp_task_with_deps(%struct.ident_t* %.kmpc_loc.addr, i32 %7, i8* %12, i32 1, i8* %24, i32 0, i8* null), !dbg !44
  %27 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %agg.captured1, i32 0, i32 0, !dbg !47
  store i32* %3, i32** %27, align 8, !dbg !47
  %28 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %agg.captured1, i32 0, i32 1, !dbg !47
  store i32* %2, i32** %28, align 8, !dbg !47
  %29 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !47
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @3, i32 0, i32 0), i8** %29, align 8, !dbg !47
  %30 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* %.kmpc_loc.addr, i32 %7, i32 1, i64 40, i64 16, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates.1*)* @.omp_task_entry..2 to i32 (i32, i8*)*)), !dbg !47
  %31 = bitcast i8* %30 to %struct.kmp_task_t_with_privates.1*, !dbg !47
  %32 = getelementptr inbounds %struct.kmp_task_t_with_privates.1, %struct.kmp_task_t_with_privates.1* %31, i32 0, i32 0, !dbg !47
  %33 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %32, i32 0, i32 0, !dbg !47
  %34 = load i8*, i8** %33, align 8, !dbg !47
  %35 = bitcast %struct.anon.0* %agg.captured1 to i8*, !dbg !47
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %34, i8* align 8 %35, i64 16, i1 false), !dbg !47
  %36 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %.dep.arr.addr2, i64 0, i64 0, !dbg !47
  %37 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %36, i32 0, i32 0, !dbg !47
  %38 = ptrtoint i32* %2 to i64, !dbg !47
  store i64 %38, i64* %37, align 8, !dbg !47
  %39 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %36, i32 0, i32 1, !dbg !47
  store i64 4, i64* %39, align 8, !dbg !47
  %40 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %36, i32 0, i32 2, !dbg !47
  store i8 1, i8* %40, align 8, !dbg !47
  %41 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %.dep.arr.addr2, i64 0, i64 0, !dbg !47
  %42 = bitcast %struct.kmp_depend_info* %41 to i8*, !dbg !47
  %43 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !47
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @3, i32 0, i32 0), i8** %43, align 8, !dbg !47
  %44 = call i32 @__kmpc_omp_task_with_deps(%struct.ident_t* %.kmpc_loc.addr, i32 %7, i8* %30, i32 1, i8* %42, i32 0, i8* null), !dbg !47
  %45 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %agg.captured3, i32 0, i32 0, !dbg !48
  store i32* %4, i32** %45, align 8, !dbg !48
  %46 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %agg.captured3, i32 0, i32 1, !dbg !48
  store i32* %2, i32** %46, align 8, !dbg !48
  %47 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !48
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @4, i32 0, i32 0), i8** %47, align 8, !dbg !48
  %48 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* %.kmpc_loc.addr, i32 %7, i32 1, i64 40, i64 16, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates.3*)* @.omp_task_entry..4 to i32 (i32, i8*)*)), !dbg !48
  %49 = bitcast i8* %48 to %struct.kmp_task_t_with_privates.3*, !dbg !48
  %50 = getelementptr inbounds %struct.kmp_task_t_with_privates.3, %struct.kmp_task_t_with_privates.3* %49, i32 0, i32 0, !dbg !48
  %51 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %50, i32 0, i32 0, !dbg !48
  %52 = load i8*, i8** %51, align 8, !dbg !48
  %53 = bitcast %struct.anon.2* %agg.captured3 to i8*, !dbg !48
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %52, i8* align 8 %53, i64 16, i1 false), !dbg !48
  %54 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %.dep.arr.addr4, i64 0, i64 0, !dbg !48
  %55 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %54, i32 0, i32 0, !dbg !48
  %56 = ptrtoint i32* %2 to i64, !dbg !48
  store i64 %56, i64* %55, align 8, !dbg !48
  %57 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %54, i32 0, i32 1, !dbg !48
  store i64 4, i64* %57, align 8, !dbg !48
  %58 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %54, i32 0, i32 2, !dbg !48
  store i8 1, i8* %58, align 8, !dbg !48
  %59 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %.dep.arr.addr4, i64 0, i64 0, !dbg !48
  %60 = bitcast %struct.kmp_depend_info* %59 to i8*, !dbg !48
  %61 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !48
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @4, i32 0, i32 0), i8** %61, align 8, !dbg !48
  %62 = call i32 @__kmpc_omp_task_with_deps(%struct.ident_t* %.kmpc_loc.addr, i32 %7, i8* %48, i32 1, i8* %60, i32 0, i8* null), !dbg !48
  call void @__kmpc_end_single(%struct.ident_t* %.kmpc_loc.addr, i32 %7), !dbg !49
  br label %omp_if.end, !dbg !49

omp_if.end:                                       ; preds = %omp_if.then, %entry
  %63 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !50
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @1, i32 0, i32 0), i8** %63, align 8, !dbg !50
  call void @__kmpc_barrier(%struct.ident_t* %.kmpc_loc.addr, i32 %7), !dbg !50
  ret void, !dbg !51
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local void @__kmpc_end_single(%struct.ident_t*, i32)

declare dso_local i32 @__kmpc_single(%struct.ident_t*, i32)

declare dso_local i32 @sleep(i32) #4

; Function Attrs: noinline norecurse nounwind uwtable
define internal i32 @.omp_task_entry.(i32 %0, %struct.kmp_task_t_with_privates* noalias %1) #5 !dbg !52 {
entry:
  %.global_tid..addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %.global_tid..addr.i, metadata !54, metadata !DIExpression()), !dbg !71
  %.part_id..addr.i = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %.part_id..addr.i, metadata !73, metadata !DIExpression()), !dbg !71
  %.privates..addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %.privates..addr.i, metadata !74, metadata !DIExpression()), !dbg !71
  %.copy_fn..addr.i = alloca void (i8*, ...)*, align 8
  call void @llvm.dbg.declare(metadata void (i8*, ...)** %.copy_fn..addr.i, metadata !75, metadata !DIExpression()), !dbg !71
  %.task_t..addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %.task_t..addr.i, metadata !76, metadata !DIExpression()), !dbg !71
  %__context.addr.i = alloca %struct.anon*, align 8
  call void @llvm.dbg.declare(metadata %struct.anon** %__context.addr.i, metadata !77, metadata !DIExpression()), !dbg !71
  %.addr = alloca i32, align 4
  %.addr1 = alloca %struct.kmp_task_t_with_privates*, align 8
  store i32 %0, i32* %.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %.addr, metadata !78, metadata !DIExpression()), !dbg !79
  store %struct.kmp_task_t_with_privates* %1, %struct.kmp_task_t_with_privates** %.addr1, align 8
  call void @llvm.dbg.declare(metadata %struct.kmp_task_t_with_privates** %.addr1, metadata !80, metadata !DIExpression()), !dbg !79
  %2 = load i32, i32* %.addr, align 4, !dbg !91
  %3 = load %struct.kmp_task_t_with_privates*, %struct.kmp_task_t_with_privates** %.addr1, align 8, !dbg !91
  %4 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %3, i32 0, i32 0, !dbg !91
  %5 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 2, !dbg !91
  %6 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 0, !dbg !91
  %7 = load i8*, i8** %6, align 8, !dbg !91
  %8 = bitcast i8* %7 to %struct.anon*, !dbg !91
  %9 = bitcast %struct.kmp_task_t_with_privates* %3 to i8*, !dbg !91
  store i32 %2, i32* %.global_tid..addr.i, align 4, !noalias !92
  store i32* %5, i32** %.part_id..addr.i, align 8, !noalias !92
  store i8* null, i8** %.privates..addr.i, align 8, !noalias !92
  store void (i8*, ...)* null, void (i8*, ...)** %.copy_fn..addr.i, align 8, !noalias !92
  store i8* %9, i8** %.task_t..addr.i, align 8, !noalias !92
  store %struct.anon* %8, %struct.anon** %__context.addr.i, align 8, !noalias !92
  %10 = load %struct.anon*, %struct.anon** %__context.addr.i, align 8, !dbg !98, !noalias !92
  %call.i = call i32 @sleep(i32 3) #8, !dbg !99
  %11 = getelementptr inbounds %struct.anon, %struct.anon* %10, i32 0, i32 0, !dbg !101
  %12 = load i32*, i32** %11, align 8, !dbg !101
  store i32 1, i32* %12, align 4, !dbg !102
  ret i32 0, !dbg !91
}

declare dso_local i8* @__kmpc_omp_task_alloc(%struct.ident_t*, i32, i32, i64, i64, i32 (i32, i8*)*)

declare dso_local i32 @__kmpc_omp_task_with_deps(%struct.ident_t*, i32, i8*, i32, i8*, i32, i8*)

; Function Attrs: noinline norecurse nounwind uwtable
define internal i32 @.omp_task_entry..2(i32 %0, %struct.kmp_task_t_with_privates.1* noalias %1) #5 !dbg !103 {
entry:
  %.global_tid..addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %.global_tid..addr.i, metadata !104, metadata !DIExpression()), !dbg !112
  %.part_id..addr.i = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %.part_id..addr.i, metadata !114, metadata !DIExpression()), !dbg !112
  %.privates..addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %.privates..addr.i, metadata !115, metadata !DIExpression()), !dbg !112
  %.copy_fn..addr.i = alloca void (i8*, ...)*, align 8
  call void @llvm.dbg.declare(metadata void (i8*, ...)** %.copy_fn..addr.i, metadata !116, metadata !DIExpression()), !dbg !112
  %.task_t..addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %.task_t..addr.i, metadata !117, metadata !DIExpression()), !dbg !112
  %__context.addr.i = alloca %struct.anon.0*, align 8
  call void @llvm.dbg.declare(metadata %struct.anon.0** %__context.addr.i, metadata !118, metadata !DIExpression()), !dbg !112
  %.addr = alloca i32, align 4
  %.addr1 = alloca %struct.kmp_task_t_with_privates.1*, align 8
  store i32 %0, i32* %.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %.addr, metadata !119, metadata !DIExpression()), !dbg !120
  store %struct.kmp_task_t_with_privates.1* %1, %struct.kmp_task_t_with_privates.1** %.addr1, align 8
  call void @llvm.dbg.declare(metadata %struct.kmp_task_t_with_privates.1** %.addr1, metadata !121, metadata !DIExpression()), !dbg !120
  %2 = load i32, i32* %.addr, align 4, !dbg !127
  %3 = load %struct.kmp_task_t_with_privates.1*, %struct.kmp_task_t_with_privates.1** %.addr1, align 8, !dbg !127
  %4 = getelementptr inbounds %struct.kmp_task_t_with_privates.1, %struct.kmp_task_t_with_privates.1* %3, i32 0, i32 0, !dbg !127
  %5 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 2, !dbg !127
  %6 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 0, !dbg !127
  %7 = load i8*, i8** %6, align 8, !dbg !127
  %8 = bitcast i8* %7 to %struct.anon.0*, !dbg !127
  %9 = bitcast %struct.kmp_task_t_with_privates.1* %3 to i8*, !dbg !127
  store i32 %2, i32* %.global_tid..addr.i, align 4, !noalias !128
  store i32* %5, i32** %.part_id..addr.i, align 8, !noalias !128
  store i8* null, i8** %.privates..addr.i, align 8, !noalias !128
  store void (i8*, ...)* null, void (i8*, ...)** %.copy_fn..addr.i, align 8, !noalias !128
  store i8* %9, i8** %.task_t..addr.i, align 8, !noalias !128
  store %struct.anon.0* %8, %struct.anon.0** %__context.addr.i, align 8, !noalias !128
  %10 = load %struct.anon.0*, %struct.anon.0** %__context.addr.i, align 8, !dbg !134, !noalias !128
  %11 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %10, i32 0, i32 1, !dbg !135
  %12 = load i32*, i32** %11, align 8, !dbg !135
  %13 = load i32, i32* %12, align 4, !dbg !135
  %14 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %10, i32 0, i32 0, !dbg !134
  %15 = load i32*, i32** %14, align 8, !dbg !134
  store i32 %13, i32* %15, align 4, !dbg !136
  ret i32 0, !dbg !127
}

; Function Attrs: noinline norecurse nounwind uwtable
define internal i32 @.omp_task_entry..4(i32 %0, %struct.kmp_task_t_with_privates.3* noalias %1) #5 !dbg !137 {
entry:
  %.global_tid..addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %.global_tid..addr.i, metadata !138, metadata !DIExpression()), !dbg !146
  %.part_id..addr.i = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %.part_id..addr.i, metadata !148, metadata !DIExpression()), !dbg !146
  %.privates..addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %.privates..addr.i, metadata !149, metadata !DIExpression()), !dbg !146
  %.copy_fn..addr.i = alloca void (i8*, ...)*, align 8
  call void @llvm.dbg.declare(metadata void (i8*, ...)** %.copy_fn..addr.i, metadata !150, metadata !DIExpression()), !dbg !146
  %.task_t..addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %.task_t..addr.i, metadata !151, metadata !DIExpression()), !dbg !146
  %__context.addr.i = alloca %struct.anon.2*, align 8
  call void @llvm.dbg.declare(metadata %struct.anon.2** %__context.addr.i, metadata !152, metadata !DIExpression()), !dbg !146
  %.addr = alloca i32, align 4
  %.addr1 = alloca %struct.kmp_task_t_with_privates.3*, align 8
  store i32 %0, i32* %.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %.addr, metadata !153, metadata !DIExpression()), !dbg !154
  store %struct.kmp_task_t_with_privates.3* %1, %struct.kmp_task_t_with_privates.3** %.addr1, align 8
  call void @llvm.dbg.declare(metadata %struct.kmp_task_t_with_privates.3** %.addr1, metadata !155, metadata !DIExpression()), !dbg !154
  %2 = load i32, i32* %.addr, align 4, !dbg !161
  %3 = load %struct.kmp_task_t_with_privates.3*, %struct.kmp_task_t_with_privates.3** %.addr1, align 8, !dbg !161
  %4 = getelementptr inbounds %struct.kmp_task_t_with_privates.3, %struct.kmp_task_t_with_privates.3* %3, i32 0, i32 0, !dbg !161
  %5 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 2, !dbg !161
  %6 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 0, !dbg !161
  %7 = load i8*, i8** %6, align 8, !dbg !161
  %8 = bitcast i8* %7 to %struct.anon.2*, !dbg !161
  %9 = bitcast %struct.kmp_task_t_with_privates.3* %3 to i8*, !dbg !161
  store i32 %2, i32* %.global_tid..addr.i, align 4, !noalias !162
  store i32* %5, i32** %.part_id..addr.i, align 8, !noalias !162
  store i8* null, i8** %.privates..addr.i, align 8, !noalias !162
  store void (i8*, ...)* null, void (i8*, ...)** %.copy_fn..addr.i, align 8, !noalias !162
  store i8* %9, i8** %.task_t..addr.i, align 8, !noalias !162
  store %struct.anon.2* %8, %struct.anon.2** %__context.addr.i, align 8, !noalias !162
  %10 = load %struct.anon.2*, %struct.anon.2** %__context.addr.i, align 8, !dbg !168, !noalias !162
  %11 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %10, i32 0, i32 1, !dbg !169
  %12 = load i32*, i32** %11, align 8, !dbg !169
  %13 = load i32, i32* %12, align 4, !dbg !169
  %14 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %10, i32 0, i32 0, !dbg !168
  %15 = load i32*, i32** %14, align 8, !dbg !168
  store i32 %13, i32* %15, align 4, !dbg !170
  ret i32 0, !dbg !161
}

declare dso_local void @__kmpc_barrier(%struct.ident_t*, i32)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined..5(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %i, i32* dereferenceable(4) %j, i32* dereferenceable(4) %k) #2 !dbg !171 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %i.addr = alloca i32*, align 8
  %j.addr = alloca i32*, align 8
  %k.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !172, metadata !DIExpression()), !dbg !173
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !174, metadata !DIExpression()), !dbg !173
  store i32* %i, i32** %i.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %i.addr, metadata !175, metadata !DIExpression()), !dbg !173
  store i32* %j, i32** %j.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %j.addr, metadata !176, metadata !DIExpression()), !dbg !173
  store i32* %k, i32** %k.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %k.addr, metadata !177, metadata !DIExpression()), !dbg !173
  %0 = load i32*, i32** %i.addr, align 8, !dbg !178
  %1 = load i32*, i32** %j.addr, align 8, !dbg !178
  %2 = load i32*, i32** %k.addr, align 8, !dbg !178
  %3 = load i32*, i32** %.global_tid..addr, align 8, !dbg !178
  %4 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !178
  %5 = load i32*, i32** %i.addr, align 8, !dbg !178
  %6 = load i32*, i32** %j.addr, align 8, !dbg !178
  %7 = load i32*, i32** %k.addr, align 8, !dbg !178
  call void @.omp_outlined._debug__(i32* %3, i32* %4, i32* %5, i32* %6, i32* %7) #8, !dbg !178
  ret void, !dbg !178
}

declare !callback !179 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

declare dso_local i32 @printf(i8*, ...) #4

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) #6

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noinline norecurse nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noinline norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.1 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "DRB079-taskdep3-orig-no.c", directory: "/home/yanze/code/OpenRace/tests/data/integration/dataracebench")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.1 "}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 53, type: !8, scopeLine: 54, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DILocalVariable(name: "i", scope: !7, file: !1, line: 55, type: !10)
!12 = !DILocation(line: 55, column: 7, scope: !7)
!13 = !DILocalVariable(name: "j", scope: !7, file: !1, line: 55, type: !10)
!14 = !DILocation(line: 55, column: 12, scope: !7)
!15 = !DILocalVariable(name: "k", scope: !7, file: !1, line: 55, type: !10)
!16 = !DILocation(line: 55, column: 15, scope: !7)
!17 = !DILocation(line: 56, column: 1, scope: !7)
!18 = !DILocation(line: 69, column: 26, scope: !7)
!19 = !DILocation(line: 69, column: 29, scope: !7)
!20 = !DILocation(line: 69, column: 3, scope: !7)
!21 = !DILocation(line: 70, column: 3, scope: !22)
!22 = distinct !DILexicalBlock(scope: !23, file: !1, line: 70, column: 3)
!23 = distinct !DILexicalBlock(scope: !7, file: !1, line: 70, column: 3)
!24 = !DILocation(line: 70, column: 3, scope: !23)
!25 = !DILocation(line: 71, column: 3, scope: !7)
!26 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 57, type: !27, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!27 = !DISubroutineType(types: !28)
!28 = !{null, !29, !29, !33, !33, !33}
!29 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!30 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !31)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!33 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !10, size: 64)
!34 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !26, type: !29, flags: DIFlagArtificial)
!35 = !DILocation(line: 0, scope: !26)
!36 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !26, type: !29, flags: DIFlagArtificial)
!37 = !DILocalVariable(name: "i", arg: 3, scope: !26, file: !1, line: 55, type: !33)
!38 = !DILocation(line: 55, column: 7, scope: !26)
!39 = !DILocalVariable(name: "j", arg: 4, scope: !26, file: !1, line: 55, type: !33)
!40 = !DILocation(line: 55, column: 12, scope: !26)
!41 = !DILocalVariable(name: "k", arg: 5, scope: !26, file: !1, line: 55, type: !33)
!42 = !DILocation(line: 55, column: 15, scope: !26)
!43 = !DILocation(line: 57, column: 1, scope: !26)
!44 = !DILocation(line: 59, column: 1, scope: !45)
!45 = distinct !DILexicalBlock(scope: !46, file: !1, line: 58, column: 3)
!46 = distinct !DILexicalBlock(scope: !26, file: !1, line: 57, column: 1)
!47 = !DILocation(line: 64, column: 1, scope: !45)
!48 = !DILocation(line: 66, column: 1, scope: !45)
!49 = !DILocation(line: 68, column: 3, scope: !45)
!50 = !DILocation(line: 57, column: 19, scope: !46)
!51 = !DILocation(line: 57, column: 19, scope: !26)
!52 = distinct !DISubprogram(linkageName: ".omp_task_entry.", scope: !1, file: !1, line: 59, type: !53, scopeLine: 59, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!53 = !DISubroutineType(types: !2)
!54 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !55, type: !32, flags: DIFlagArtificial)
!55 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 62, type: !56, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!56 = !DISubroutineType(types: !57)
!57 = !{null, !32, !29, !58, !61, !66, !67}
!58 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !59)
!59 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !60)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !62)
!62 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !63)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!64 = !DISubroutineType(types: !65)
!65 = !{null, !58, null}
!66 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !60)
!67 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !68)
!68 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !69)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!70 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 59, size: 64, elements: !2)
!71 = !DILocation(line: 0, scope: !55, inlinedAt: !72)
!72 = distinct !DILocation(line: 59, column: 1, scope: !52)
!73 = !DILocalVariable(name: ".part_id.", arg: 2, scope: !55, type: !29, flags: DIFlagArtificial)
!74 = !DILocalVariable(name: ".privates.", arg: 3, scope: !55, type: !58, flags: DIFlagArtificial)
!75 = !DILocalVariable(name: ".copy_fn.", arg: 4, scope: !55, type: !61, flags: DIFlagArtificial)
!76 = !DILocalVariable(name: ".task_t.", arg: 5, scope: !55, type: !66, flags: DIFlagArtificial)
!77 = !DILocalVariable(name: "__context", arg: 6, scope: !55, type: !67, flags: DIFlagArtificial)
!78 = !DILocalVariable(arg: 1, scope: !52, type: !10, flags: DIFlagArtificial)
!79 = !DILocation(line: 0, scope: !52)
!80 = !DILocalVariable(arg: 2, scope: !52, type: !81, flags: DIFlagArtificial)
!81 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !82)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t_with_privates", file: !1, size: 320, elements: !84)
!84 = !{!85}
!85 = !DIDerivedType(tag: DW_TAG_member, scope: !83, file: !1, baseType: !86, size: 320)
!86 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t", file: !1, size: 320, elements: !87)
!87 = !{!88, !90}
!88 = !DIDerivedType(tag: DW_TAG_member, scope: !86, file: !1, baseType: !89, size: 64, offset: 192)
!89 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "kmp_cmplrdata_t", file: !1, size: 64, elements: !2)
!90 = !DIDerivedType(tag: DW_TAG_member, scope: !86, file: !1, baseType: !89, size: 64, offset: 256)
!91 = !DILocation(line: 59, column: 1, scope: !52)
!92 = !{!93, !95, !96, !97}
!93 = distinct !{!93, !94, !".omp_outlined.: %.part_id."}
!94 = distinct !{!94, !".omp_outlined."}
!95 = distinct !{!95, !94, !".omp_outlined.: %.privates."}
!96 = distinct !{!96, !94, !".omp_outlined.: %.copy_fn."}
!97 = distinct !{!97, !94, !".omp_outlined.: %__context"}
!98 = !DILocation(line: 60, column: 5, scope: !55, inlinedAt: !72)
!99 = !DILocation(line: 61, column: 7, scope: !100, inlinedAt: !72)
!100 = distinct !DILexicalBlock(scope: !55, file: !1, line: 60, column: 5)
!101 = !DILocation(line: 62, column: 7, scope: !100, inlinedAt: !72)
!102 = !DILocation(line: 62, column: 9, scope: !100, inlinedAt: !72)
!103 = distinct !DISubprogram(linkageName: ".omp_task_entry..2", scope: !1, file: !1, line: 64, type: !53, scopeLine: 64, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!104 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !105, type: !32, flags: DIFlagArtificial)
!105 = distinct !DISubprogram(name: ".omp_outlined..1", scope: !1, file: !1, line: 65, type: !106, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!106 = !DISubroutineType(types: !107)
!107 = !{null, !32, !29, !58, !61, !66, !108}
!108 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!109 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !110)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!111 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 64, size: 128, elements: !2)
!112 = !DILocation(line: 0, scope: !105, inlinedAt: !113)
!113 = distinct !DILocation(line: 64, column: 1, scope: !103)
!114 = !DILocalVariable(name: ".part_id.", arg: 2, scope: !105, type: !29, flags: DIFlagArtificial)
!115 = !DILocalVariable(name: ".privates.", arg: 3, scope: !105, type: !58, flags: DIFlagArtificial)
!116 = !DILocalVariable(name: ".copy_fn.", arg: 4, scope: !105, type: !61, flags: DIFlagArtificial)
!117 = !DILocalVariable(name: ".task_t.", arg: 5, scope: !105, type: !66, flags: DIFlagArtificial)
!118 = !DILocalVariable(name: "__context", arg: 6, scope: !105, type: !108, flags: DIFlagArtificial)
!119 = !DILocalVariable(arg: 1, scope: !103, type: !10, flags: DIFlagArtificial)
!120 = !DILocation(line: 0, scope: !103)
!121 = !DILocalVariable(arg: 2, scope: !103, type: !122, flags: DIFlagArtificial)
!122 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !123)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t_with_privates", file: !1, size: 320, elements: !125)
!125 = !{!126}
!126 = !DIDerivedType(tag: DW_TAG_member, scope: !124, file: !1, baseType: !86, size: 320)
!127 = !DILocation(line: 64, column: 1, scope: !103)
!128 = !{!129, !131, !132, !133}
!129 = distinct !{!129, !130, !".omp_outlined..1: %.part_id."}
!130 = distinct !{!130, !".omp_outlined..1"}
!131 = distinct !{!131, !130, !".omp_outlined..1: %.privates."}
!132 = distinct !{!132, !130, !".omp_outlined..1: %.copy_fn."}
!133 = distinct !{!133, !130, !".omp_outlined..1: %__context"}
!134 = !DILocation(line: 65, column: 5, scope: !105, inlinedAt: !113)
!135 = !DILocation(line: 65, column: 8, scope: !105, inlinedAt: !113)
!136 = !DILocation(line: 65, column: 7, scope: !105, inlinedAt: !113)
!137 = distinct !DISubprogram(linkageName: ".omp_task_entry..4", scope: !1, file: !1, line: 66, type: !53, scopeLine: 66, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!138 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !139, type: !32, flags: DIFlagArtificial)
!139 = distinct !DISubprogram(name: ".omp_outlined..3", scope: !1, file: !1, line: 67, type: !140, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!140 = !DISubroutineType(types: !141)
!141 = !{null, !32, !29, !58, !61, !66, !142}
!142 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !143)
!143 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !144)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!145 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 66, size: 128, elements: !2)
!146 = !DILocation(line: 0, scope: !139, inlinedAt: !147)
!147 = distinct !DILocation(line: 66, column: 1, scope: !137)
!148 = !DILocalVariable(name: ".part_id.", arg: 2, scope: !139, type: !29, flags: DIFlagArtificial)
!149 = !DILocalVariable(name: ".privates.", arg: 3, scope: !139, type: !58, flags: DIFlagArtificial)
!150 = !DILocalVariable(name: ".copy_fn.", arg: 4, scope: !139, type: !61, flags: DIFlagArtificial)
!151 = !DILocalVariable(name: ".task_t.", arg: 5, scope: !139, type: !66, flags: DIFlagArtificial)
!152 = !DILocalVariable(name: "__context", arg: 6, scope: !139, type: !142, flags: DIFlagArtificial)
!153 = !DILocalVariable(arg: 1, scope: !137, type: !10, flags: DIFlagArtificial)
!154 = !DILocation(line: 0, scope: !137)
!155 = !DILocalVariable(arg: 2, scope: !137, type: !156, flags: DIFlagArtificial)
!156 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !157)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t_with_privates", file: !1, size: 320, elements: !159)
!159 = !{!160}
!160 = !DIDerivedType(tag: DW_TAG_member, scope: !158, file: !1, baseType: !86, size: 320)
!161 = !DILocation(line: 66, column: 1, scope: !137)
!162 = !{!163, !165, !166, !167}
!163 = distinct !{!163, !164, !".omp_outlined..3: %.part_id."}
!164 = distinct !{!164, !".omp_outlined..3"}
!165 = distinct !{!165, !164, !".omp_outlined..3: %.privates."}
!166 = distinct !{!166, !164, !".omp_outlined..3: %.copy_fn."}
!167 = distinct !{!167, !164, !".omp_outlined..3: %__context"}
!168 = !DILocation(line: 67, column: 5, scope: !139, inlinedAt: !147)
!169 = !DILocation(line: 67, column: 8, scope: !139, inlinedAt: !147)
!170 = !DILocation(line: 67, column: 7, scope: !139, inlinedAt: !147)
!171 = distinct !DISubprogram(name: ".omp_outlined..5", scope: !1, file: !1, line: 57, type: !27, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!172 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !171, type: !29, flags: DIFlagArtificial)
!173 = !DILocation(line: 0, scope: !171)
!174 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !171, type: !29, flags: DIFlagArtificial)
!175 = !DILocalVariable(name: "i", arg: 3, scope: !171, type: !33, flags: DIFlagArtificial)
!176 = !DILocalVariable(name: "j", arg: 4, scope: !171, type: !33, flags: DIFlagArtificial)
!177 = !DILocalVariable(name: "k", arg: 5, scope: !171, type: !33, flags: DIFlagArtificial)
!178 = !DILocation(line: 57, column: 1, scope: !171)
!179 = !{!180}
!180 = !{i64 2, i64 -1, i64 -1, i1 true}
