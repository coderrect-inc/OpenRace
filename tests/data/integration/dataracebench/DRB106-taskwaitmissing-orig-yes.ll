; ModuleID = 'integration/dataracebench/DRB106-taskwaitmissing-orig-yes.c'
source_filename = "integration/dataracebench/DRB106-taskwaitmissing-orig-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }
%struct.anon = type { i32*, i32* }
%struct.anon.0 = type { i32*, i32* }
%struct.kmp_task_t_with_privates = type { %struct.kmp_task_t, %struct..kmp_privates.t }
%struct.kmp_task_t = type { i8*, i32 (i32, i8*)*, i32, %union.kmp_cmplrdata_t, %union.kmp_cmplrdata_t }
%union.kmp_cmplrdata_t = type { i32 (i32, i8*)* }
%struct..kmp_privates.t = type { i32 }
%struct.kmp_task_t_with_privates.1 = type { %struct.kmp_task_t, %struct..kmp_privates.t.2 }
%struct..kmp_privates.t.2 = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [72 x i8] c";integration/dataracebench/DRB106-taskwaitmissing-orig-yes.c;fib;60;1;;\00", align 1
@2 = private unnamed_addr constant [72 x i8] c";integration/dataracebench/DRB106-taskwaitmissing-orig-yes.c;fib;62;1;;\00", align 1
@3 = private unnamed_addr constant [72 x i8] c";integration/dataracebench/DRB106-taskwaitmissing-orig-yes.c;fib;72;1;;\00", align 1
@4 = private unnamed_addr constant [73 x i8] c";integration/dataracebench/DRB106-taskwaitmissing-orig-yes.c;main;81;4;;\00", align 1
@input = dso_local global i32 10, align 4, !dbg !0
@5 = private unnamed_addr constant [73 x i8] c";integration/dataracebench/DRB106-taskwaitmissing-orig-yes.c;main;79;1;;\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"Fib(%d)=%d (correct answer should be 55)\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @fib(i32 %n) #0 !dbg !11 {
entry:
  %retval = alloca i32, align 4
  %n.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %agg.captured = alloca %struct.anon, align 8
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %agg.captured1 = alloca %struct.anon.0, align 8
  %res = alloca i32, align 4
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  %2 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4
  store i8* getelementptr inbounds ([72 x i8], [72 x i8]* @1, i32 0, i32 0), i8** %2, align 8, !tbaa !22
  %3 = call i32 @__kmpc_global_thread_num(%struct.ident_t* %.kmpc_loc.addr)
  store i32 %n, i32* %n.addr, align 4, !tbaa !28
  call void @llvm.dbg.declare(metadata i32* %n.addr, metadata !16, metadata !DIExpression()), !dbg !29
  %4 = load i32, i32* %n.addr, align 4, !dbg !30, !tbaa !28
  %cmp = icmp ult i32 %4, 2, !dbg !31
  br i1 %cmp, label %if.then, label %if.else, !dbg !32

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %n.addr, align 4, !dbg !33, !tbaa !28
  store i32 %5, i32* %retval, align 4, !dbg !34
  br label %return, !dbg !34

if.else:                                          ; preds = %entry
  %6 = bitcast i32* %i to i8*, !dbg !35
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #6, !dbg !35
  call void @llvm.dbg.declare(metadata i32* %i, metadata !17, metadata !DIExpression()), !dbg !36
  %7 = bitcast i32* %j to i8*, !dbg !35
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #6, !dbg !35
  call void @llvm.dbg.declare(metadata i32* %j, metadata !20, metadata !DIExpression()), !dbg !37
  %8 = getelementptr inbounds %struct.anon, %struct.anon* %agg.captured, i32 0, i32 0, !dbg !38
  store i32* %i, i32** %8, align 8, !dbg !38, !tbaa !39
  %9 = getelementptr inbounds %struct.anon, %struct.anon* %agg.captured, i32 0, i32 1, !dbg !38
  store i32* %n.addr, i32** %9, align 8, !dbg !38, !tbaa !39
  %10 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !38
  store i8* getelementptr inbounds ([72 x i8], [72 x i8]* @1, i32 0, i32 0), i8** %10, align 8, !dbg !38, !tbaa !22
  %11 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* %.kmpc_loc.addr, i32 %3, i32 1, i64 48, i64 16, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates*)* @.omp_task_entry. to i32 (i32, i8*)*)), !dbg !38
  %12 = bitcast i8* %11 to %struct.kmp_task_t_with_privates*, !dbg !38
  %13 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %12, i32 0, i32 0, !dbg !38
  %14 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %13, i32 0, i32 0, !dbg !38
  %15 = load i8*, i8** %14, align 8, !dbg !38, !tbaa !40
  %16 = bitcast %struct.anon* %agg.captured to i8*, !dbg !38
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 %16, i64 16, i1 false), !dbg !38, !tbaa.struct !44
  %17 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %12, i32 0, i32 1, !dbg !38
  %18 = bitcast i8* %15 to %struct.anon*, !dbg !38
  %19 = getelementptr inbounds %struct..kmp_privates.t, %struct..kmp_privates.t* %17, i32 0, i32 0, !dbg !38
  %20 = getelementptr inbounds %struct.anon, %struct.anon* %18, i32 0, i32 1, !dbg !38
  %21 = load i32*, i32** %20, align 8, !dbg !38, !tbaa !45
  %22 = load i32, i32* %21, align 4, !dbg !47, !tbaa !28
  store i32 %22, i32* %19, align 8, !dbg !38, !tbaa !49
  %23 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !38
  store i8* getelementptr inbounds ([72 x i8], [72 x i8]* @1, i32 0, i32 0), i8** %23, align 8, !dbg !38, !tbaa !22
  %24 = call i32 @__kmpc_omp_task(%struct.ident_t* %.kmpc_loc.addr, i32 %3, i8* %11), !dbg !38
  %25 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %agg.captured1, i32 0, i32 0, !dbg !50
  store i32* %j, i32** %25, align 8, !dbg !50, !tbaa !39
  %26 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %agg.captured1, i32 0, i32 1, !dbg !50
  store i32* %n.addr, i32** %26, align 8, !dbg !50, !tbaa !39
  %27 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !50
  store i8* getelementptr inbounds ([72 x i8], [72 x i8]* @2, i32 0, i32 0), i8** %27, align 8, !dbg !50, !tbaa !22
  %28 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* %.kmpc_loc.addr, i32 %3, i32 1, i64 48, i64 16, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates.1*)* @.omp_task_entry..3 to i32 (i32, i8*)*)), !dbg !50
  %29 = bitcast i8* %28 to %struct.kmp_task_t_with_privates.1*, !dbg !50
  %30 = getelementptr inbounds %struct.kmp_task_t_with_privates.1, %struct.kmp_task_t_with_privates.1* %29, i32 0, i32 0, !dbg !50
  %31 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %30, i32 0, i32 0, !dbg !50
  %32 = load i8*, i8** %31, align 8, !dbg !50, !tbaa !40
  %33 = bitcast %struct.anon.0* %agg.captured1 to i8*, !dbg !50
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %32, i8* align 8 %33, i64 16, i1 false), !dbg !50, !tbaa.struct !44
  %34 = getelementptr inbounds %struct.kmp_task_t_with_privates.1, %struct.kmp_task_t_with_privates.1* %29, i32 0, i32 1, !dbg !50
  %35 = bitcast i8* %32 to %struct.anon.0*, !dbg !50
  %36 = getelementptr inbounds %struct..kmp_privates.t.2, %struct..kmp_privates.t.2* %34, i32 0, i32 0, !dbg !50
  %37 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %35, i32 0, i32 1, !dbg !50
  %38 = load i32*, i32** %37, align 8, !dbg !50, !tbaa !45
  %39 = load i32, i32* %38, align 4, !dbg !51, !tbaa !28
  store i32 %39, i32* %36, align 8, !dbg !50, !tbaa !49
  %40 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !50
  store i8* getelementptr inbounds ([72 x i8], [72 x i8]* @2, i32 0, i32 0), i8** %40, align 8, !dbg !50, !tbaa !22
  %41 = call i32 @__kmpc_omp_task(%struct.ident_t* %.kmpc_loc.addr, i32 %3, i8* %28), !dbg !50
  %42 = bitcast i32* %res to i8*, !dbg !53
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %42) #6, !dbg !53
  call void @llvm.dbg.declare(metadata i32* %res, metadata !21, metadata !DIExpression()), !dbg !54
  %43 = load i32, i32* %i, align 4, !dbg !55, !tbaa !28
  %44 = load i32, i32* %j, align 4, !dbg !56, !tbaa !28
  %add = add nsw i32 %43, %44, !dbg !57
  store i32 %add, i32* %res, align 4, !dbg !54, !tbaa !28
  %45 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !58
  store i8* getelementptr inbounds ([72 x i8], [72 x i8]* @3, i32 0, i32 0), i8** %45, align 8, !dbg !58, !tbaa !22
  %46 = call i32 @__kmpc_omp_taskwait(%struct.ident_t* %.kmpc_loc.addr, i32 %3), !dbg !58
  %47 = load i32, i32* %res, align 4, !dbg !59, !tbaa !28
  store i32 %47, i32* %retval, align 4, !dbg !60
  %48 = bitcast i32* %res to i8*, !dbg !61
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %48) #6, !dbg !61
  %49 = bitcast i32* %j to i8*, !dbg !61
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %49) #6, !dbg !61
  %50 = bitcast i32* %i to i8*, !dbg !61
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %50) #6, !dbg !61
  br label %return

return:                                           ; preds = %if.else, %if.then
  %51 = load i32, i32* %retval, align 4, !dbg !62
  ret i32 %51, !dbg !62
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: alwaysinline nounwind uwtable
define internal void @.omp_outlined.(i32 %.global_tid., i32* noalias %.part_id., i8* noalias %.privates., void (i8*, ...)* noalias %.copy_fn., i8* %.task_t., %struct.anon* noalias %__context) #3 !dbg !63 {
entry:
  %.global_tid..addr = alloca i32, align 4
  %.part_id..addr = alloca i32*, align 8
  %.privates..addr = alloca i8*, align 8
  %.copy_fn..addr = alloca void (i8*, ...)*, align 8
  %.task_t..addr = alloca i8*, align 8
  %__context.addr = alloca %struct.anon*, align 8
  %.firstpriv.ptr.addr = alloca i32*, align 8
  store i32 %.global_tid., i32* %.global_tid..addr, align 4, !tbaa !28
  call void @llvm.dbg.declare(metadata i32* %.global_tid..addr, metadata !84, metadata !DIExpression()), !dbg !90
  store i32* %.part_id., i32** %.part_id..addr, align 8, !tbaa !39
  call void @llvm.dbg.declare(metadata i32** %.part_id..addr, metadata !85, metadata !DIExpression()), !dbg !90
  store i8* %.privates., i8** %.privates..addr, align 8, !tbaa !39
  call void @llvm.dbg.declare(metadata i8** %.privates..addr, metadata !86, metadata !DIExpression()), !dbg !90
  store void (i8*, ...)* %.copy_fn., void (i8*, ...)** %.copy_fn..addr, align 8, !tbaa !39
  call void @llvm.dbg.declare(metadata void (i8*, ...)** %.copy_fn..addr, metadata !87, metadata !DIExpression()), !dbg !90
  store i8* %.task_t., i8** %.task_t..addr, align 8, !tbaa !39
  call void @llvm.dbg.declare(metadata i8** %.task_t..addr, metadata !88, metadata !DIExpression()), !dbg !90
  store %struct.anon* %__context, %struct.anon** %__context.addr, align 8, !tbaa !39
  call void @llvm.dbg.declare(metadata %struct.anon** %__context.addr, metadata !89, metadata !DIExpression()), !dbg !90
  %0 = load %struct.anon*, %struct.anon** %__context.addr, align 8, !dbg !91
  %1 = load void (i8*, ...)*, void (i8*, ...)** %.copy_fn..addr, align 8, !dbg !91
  %2 = load i8*, i8** %.privates..addr, align 8, !dbg !91
  call void (i8*, ...) %1(i8* %2, i32** %.firstpriv.ptr.addr), !dbg !92
  %3 = load i32*, i32** %.firstpriv.ptr.addr, align 8, !dbg !91
  %4 = load i32, i32* %3, align 4, !dbg !93, !tbaa !28
  %sub = sub i32 %4, 1, !dbg !94
  %call = call i32 @fib(i32 %sub), !dbg !95
  %5 = getelementptr inbounds %struct.anon, %struct.anon* %0, i32 0, i32 0, !dbg !91
  %6 = load i32*, i32** %5, align 8, !dbg !91, !tbaa !96
  store i32 %call, i32* %6, align 4, !dbg !97, !tbaa !28
  ret void, !dbg !98
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @.omp_task_privates_map.(%struct..kmp_privates.t* noalias %0, i32** noalias %1) #3 !dbg !99 {
entry:
  %.addr = alloca %struct..kmp_privates.t*, align 8
  %.addr1 = alloca i32**, align 8
  store %struct..kmp_privates.t* %0, %struct..kmp_privates.t** %.addr, align 8, !tbaa !39
  call void @llvm.dbg.declare(metadata %struct..kmp_privates.t** %.addr, metadata !102, metadata !DIExpression()), !dbg !112
  store i32** %1, i32*** %.addr1, align 8, !tbaa !39
  call void @llvm.dbg.declare(metadata i32*** %.addr1, metadata !107, metadata !DIExpression()), !dbg !112
  %2 = load %struct..kmp_privates.t*, %struct..kmp_privates.t** %.addr, align 8, !dbg !113
  %3 = getelementptr inbounds %struct..kmp_privates.t, %struct..kmp_privates.t* %2, i32 0, i32 0, !dbg !113
  %4 = load i32**, i32*** %.addr1, align 8, !dbg !113
  store i32* %3, i32** %4, align 8, !dbg !113, !tbaa !39
  ret void, !dbg !113
}

; Function Attrs: norecurse nounwind uwtable
define internal i32 @.omp_task_entry.(i32 %0, %struct.kmp_task_t_with_privates* noalias %1) #4 !dbg !114 {
entry:
  %.addr = alloca i32, align 4
  %.addr1 = alloca %struct.kmp_task_t_with_privates*, align 8
  store i32 %0, i32* %.addr, align 4, !tbaa !28
  call void @llvm.dbg.declare(metadata i32* %.addr, metadata !116, metadata !DIExpression()), !dbg !129
  store %struct.kmp_task_t_with_privates* %1, %struct.kmp_task_t_with_privates** %.addr1, align 8, !tbaa !39
  call void @llvm.dbg.declare(metadata %struct.kmp_task_t_with_privates** %.addr1, metadata !117, metadata !DIExpression()), !dbg !129
  %2 = load i32, i32* %.addr, align 4, !dbg !130, !tbaa !28
  %3 = load %struct.kmp_task_t_with_privates*, %struct.kmp_task_t_with_privates** %.addr1, align 8, !dbg !130
  %4 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %3, i32 0, i32 0, !dbg !130
  %5 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 2, !dbg !130
  %6 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 0, !dbg !130
  %7 = load i8*, i8** %6, align 8, !dbg !130, !tbaa !40
  %8 = bitcast i8* %7 to %struct.anon*, !dbg !130
  %9 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %3, i32 0, i32 1, !dbg !130
  %10 = bitcast %struct..kmp_privates.t* %9 to i8*, !dbg !130
  %11 = bitcast %struct.kmp_task_t_with_privates* %3 to i8*, !dbg !130
  call void @.omp_outlined.(i32 %2, i32* %5, i8* %10, void (i8*, ...)* bitcast (void (%struct..kmp_privates.t*, i32**)* @.omp_task_privates_map. to void (i8*, ...)*), i8* %11, %struct.anon* %8) #6, !dbg !130
  ret i32 0, !dbg !130
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @__kmpc_global_thread_num(%struct.ident_t*)

declare dso_local i8* @__kmpc_omp_task_alloc(%struct.ident_t*, i32, i32, i64, i64, i32 (i32, i8*)*)

declare dso_local i32 @__kmpc_omp_task(%struct.ident_t*, i32, i8*)

; Function Attrs: alwaysinline nounwind uwtable
define internal void @.omp_outlined..1(i32 %.global_tid., i32* noalias %.part_id., i8* noalias %.privates., void (i8*, ...)* noalias %.copy_fn., i8* %.task_t., %struct.anon.0* noalias %__context) #3 !dbg !131 {
entry:
  %.global_tid..addr = alloca i32, align 4
  %.part_id..addr = alloca i32*, align 8
  %.privates..addr = alloca i8*, align 8
  %.copy_fn..addr = alloca void (i8*, ...)*, align 8
  %.task_t..addr = alloca i8*, align 8
  %__context.addr = alloca %struct.anon.0*, align 8
  %.firstpriv.ptr.addr = alloca i32*, align 8
  store i32 %.global_tid., i32* %.global_tid..addr, align 4, !tbaa !28
  call void @llvm.dbg.declare(metadata i32* %.global_tid..addr, metadata !139, metadata !DIExpression()), !dbg !145
  store i32* %.part_id., i32** %.part_id..addr, align 8, !tbaa !39
  call void @llvm.dbg.declare(metadata i32** %.part_id..addr, metadata !140, metadata !DIExpression()), !dbg !145
  store i8* %.privates., i8** %.privates..addr, align 8, !tbaa !39
  call void @llvm.dbg.declare(metadata i8** %.privates..addr, metadata !141, metadata !DIExpression()), !dbg !145
  store void (i8*, ...)* %.copy_fn., void (i8*, ...)** %.copy_fn..addr, align 8, !tbaa !39
  call void @llvm.dbg.declare(metadata void (i8*, ...)** %.copy_fn..addr, metadata !142, metadata !DIExpression()), !dbg !145
  store i8* %.task_t., i8** %.task_t..addr, align 8, !tbaa !39
  call void @llvm.dbg.declare(metadata i8** %.task_t..addr, metadata !143, metadata !DIExpression()), !dbg !145
  store %struct.anon.0* %__context, %struct.anon.0** %__context.addr, align 8, !tbaa !39
  call void @llvm.dbg.declare(metadata %struct.anon.0** %__context.addr, metadata !144, metadata !DIExpression()), !dbg !145
  %0 = load %struct.anon.0*, %struct.anon.0** %__context.addr, align 8, !dbg !146
  %1 = load void (i8*, ...)*, void (i8*, ...)** %.copy_fn..addr, align 8, !dbg !146
  %2 = load i8*, i8** %.privates..addr, align 8, !dbg !146
  call void (i8*, ...) %1(i8* %2, i32** %.firstpriv.ptr.addr), !dbg !147
  %3 = load i32*, i32** %.firstpriv.ptr.addr, align 8, !dbg !146
  %4 = load i32, i32* %3, align 4, !dbg !148, !tbaa !28
  %sub = sub i32 %4, 2, !dbg !149
  %call = call i32 @fib(i32 %sub), !dbg !150
  %5 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %0, i32 0, i32 0, !dbg !146
  %6 = load i32*, i32** %5, align 8, !dbg !146, !tbaa !96
  store i32 %call, i32* %6, align 4, !dbg !151, !tbaa !28
  ret void, !dbg !152
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @.omp_task_privates_map..2(%struct..kmp_privates.t.2* noalias %0, i32** noalias %1) #3 !dbg !153 {
entry:
  %.addr = alloca %struct..kmp_privates.t.2*, align 8
  %.addr1 = alloca i32**, align 8
  store %struct..kmp_privates.t.2* %0, %struct..kmp_privates.t.2** %.addr, align 8, !tbaa !39
  call void @llvm.dbg.declare(metadata %struct..kmp_privates.t.2** %.addr, metadata !155, metadata !DIExpression()), !dbg !161
  store i32** %1, i32*** %.addr1, align 8, !tbaa !39
  call void @llvm.dbg.declare(metadata i32*** %.addr1, metadata !160, metadata !DIExpression()), !dbg !161
  %2 = load %struct..kmp_privates.t.2*, %struct..kmp_privates.t.2** %.addr, align 8, !dbg !162
  %3 = getelementptr inbounds %struct..kmp_privates.t.2, %struct..kmp_privates.t.2* %2, i32 0, i32 0, !dbg !162
  %4 = load i32**, i32*** %.addr1, align 8, !dbg !162
  store i32* %3, i32** %4, align 8, !dbg !162, !tbaa !39
  ret void, !dbg !162
}

; Function Attrs: norecurse nounwind uwtable
define internal i32 @.omp_task_entry..3(i32 %0, %struct.kmp_task_t_with_privates.1* noalias %1) #4 !dbg !163 {
entry:
  %.addr = alloca i32, align 4
  %.addr1 = alloca %struct.kmp_task_t_with_privates.1*, align 8
  store i32 %0, i32* %.addr, align 4, !tbaa !28
  call void @llvm.dbg.declare(metadata i32* %.addr, metadata !165, metadata !DIExpression()), !dbg !173
  store %struct.kmp_task_t_with_privates.1* %1, %struct.kmp_task_t_with_privates.1** %.addr1, align 8, !tbaa !39
  call void @llvm.dbg.declare(metadata %struct.kmp_task_t_with_privates.1** %.addr1, metadata !166, metadata !DIExpression()), !dbg !173
  %2 = load i32, i32* %.addr, align 4, !dbg !174, !tbaa !28
  %3 = load %struct.kmp_task_t_with_privates.1*, %struct.kmp_task_t_with_privates.1** %.addr1, align 8, !dbg !174
  %4 = getelementptr inbounds %struct.kmp_task_t_with_privates.1, %struct.kmp_task_t_with_privates.1* %3, i32 0, i32 0, !dbg !174
  %5 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 2, !dbg !174
  %6 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 0, !dbg !174
  %7 = load i8*, i8** %6, align 8, !dbg !174, !tbaa !40
  %8 = bitcast i8* %7 to %struct.anon.0*, !dbg !174
  %9 = getelementptr inbounds %struct.kmp_task_t_with_privates.1, %struct.kmp_task_t_with_privates.1* %3, i32 0, i32 1, !dbg !174
  %10 = bitcast %struct..kmp_privates.t.2* %9 to i8*, !dbg !174
  %11 = bitcast %struct.kmp_task_t_with_privates.1* %3 to i8*, !dbg !174
  call void @.omp_outlined..1(i32 %2, i32* %5, i8* %10, void (i8*, ...)* bitcast (void (%struct..kmp_privates.t.2*, i32**)* @.omp_task_privates_map..2 to void (i8*, ...)*), i8* %11, %struct.anon.0* %8) #6, !dbg !174
  ret i32 0, !dbg !174
}

declare dso_local i32 @__kmpc_omp_taskwait(%struct.ident_t*, i32)

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @main() #0 !dbg !175 {
entry:
  %retval = alloca i32, align 4
  %result = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32 0, i32* %retval, align 4
  %2 = bitcast i32* %result to i8*, !dbg !180
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #6, !dbg !180
  call void @llvm.dbg.declare(metadata i32* %result, metadata !179, metadata !DIExpression()), !dbg !181
  store i32 0, i32* %result, align 4, !dbg !181, !tbaa !28
  %3 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !182
  store i8* getelementptr inbounds ([73 x i8], [73 x i8]* @5, i32 0, i32 0), i8** %3, align 8, !dbg !182, !tbaa !22
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*)* @.omp_outlined..4 to void (i32*, i32*, ...)*), i32* %result), !dbg !182
  %4 = load i32, i32* @input, align 4, !dbg !183, !tbaa !28
  %5 = load i32, i32* %result, align 4, !dbg !184, !tbaa !28
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i32 %4, i32 %5), !dbg !185
  %6 = bitcast i32* %result to i8*, !dbg !186
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %6) #6, !dbg !186
  ret i32 0, !dbg !187
}

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %result) #4 !dbg !188 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %result.addr = alloca i32*, align 8
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !39
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !193, metadata !DIExpression()), !dbg !196
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !39
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !194, metadata !DIExpression()), !dbg !196
  store i32* %result, i32** %result.addr, align 8, !tbaa !39
  call void @llvm.dbg.declare(metadata i32** %result.addr, metadata !195, metadata !DIExpression()), !dbg !197
  %2 = load i32*, i32** %result.addr, align 8, !dbg !198, !tbaa !39
  %3 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !199
  store i8* getelementptr inbounds ([73 x i8], [73 x i8]* @4, i32 0, i32 0), i8** %3, align 8, !dbg !199, !tbaa !22
  %4 = load i32*, i32** %.global_tid..addr, align 8, !dbg !199
  %5 = load i32, i32* %4, align 4, !dbg !199, !tbaa !28
  %6 = call i32 @__kmpc_single(%struct.ident_t* %.kmpc_loc.addr, i32 %5), !dbg !199
  %7 = icmp ne i32 %6, 0, !dbg !199
  br i1 %7, label %omp_if.then, label %omp_if.end, !dbg !199

omp_if.then:                                      ; preds = %entry
  %8 = load i32, i32* @input, align 4, !dbg !201, !tbaa !28
  %call = call i32 @fib(i32 %8), !dbg !204
  store i32 %call, i32* %2, align 4, !dbg !205, !tbaa !28
  call void @__kmpc_end_single(%struct.ident_t* %.kmpc_loc.addr, i32 %5), !dbg !206
  br label %omp_if.end, !dbg !206

omp_if.end:                                       ; preds = %omp_if.then, %entry
  %9 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !207
  store i8* getelementptr inbounds ([73 x i8], [73 x i8]* @4, i32 0, i32 0), i8** %9, align 8, !dbg !207, !tbaa !22
  call void @__kmpc_barrier(%struct.ident_t* %.kmpc_loc.addr, i32 %5), !dbg !207
  ret void, !dbg !208
}

declare dso_local void @__kmpc_end_single(%struct.ident_t*, i32)

declare dso_local i32 @__kmpc_single(%struct.ident_t*, i32)

declare dso_local void @__kmpc_barrier(%struct.ident_t*, i32)

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined..4(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %result) #4 !dbg !209 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %result.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !39
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !211, metadata !DIExpression()), !dbg !214
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !39
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !212, metadata !DIExpression()), !dbg !214
  store i32* %result, i32** %result.addr, align 8, !tbaa !39
  call void @llvm.dbg.declare(metadata i32** %result.addr, metadata !213, metadata !DIExpression()), !dbg !214
  %0 = load i32*, i32** %result.addr, align 8, !dbg !215, !tbaa !39
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !215, !tbaa !39
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !215, !tbaa !39
  %3 = load i32*, i32** %result.addr, align 8, !dbg !215, !tbaa !39
  call void @.omp_outlined._debug__(i32* %1, i32* %2, i32* %3) #6, !dbg !215
  ret void, !dbg !215
}

declare !callback !216 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

declare dso_local i32 @printf(i8*, ...) #5

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { alwaysinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!7, !8, !9}
!llvm.ident = !{!10}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "input", scope: !2, file: !3, line: 52, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "integration/dataracebench/DRB106-taskwaitmissing-orig-yes.c", directory: "/home/brad/Code/OpenRace/tests/data")
!4 = !{}
!5 = !{!0}
!6 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!7 = !{i32 7, !"Dwarf Version", i32 4}
!8 = !{i32 2, !"Debug Info Version", i32 3}
!9 = !{i32 1, !"wchar_size", i32 4}
!10 = !{!"clang version 10.0.1 "}
!11 = distinct !DISubprogram(name: "fib", scope: !3, file: !3, line: 53, type: !12, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !15)
!12 = !DISubroutineType(types: !13)
!13 = !{!14, !6}
!14 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!15 = !{!16, !17, !20, !21}
!16 = !DILocalVariable(name: "n", arg: 1, scope: !11, file: !3, line: 53, type: !6)
!17 = !DILocalVariable(name: "i", scope: !18, file: !3, line: 59, type: !14)
!18 = distinct !DILexicalBlock(scope: !19, file: !3, line: 58, column: 3)
!19 = distinct !DILexicalBlock(scope: !11, file: !3, line: 55, column: 7)
!20 = !DILocalVariable(name: "j", scope: !18, file: !3, line: 59, type: !14)
!21 = !DILocalVariable(name: "res", scope: !18, file: !3, line: 65, type: !14)
!22 = !{!23, !27, i64 16}
!23 = !{!"ident_t", !24, i64 0, !24, i64 4, !24, i64 8, !24, i64 12, !27, i64 16}
!24 = !{!"int", !25, i64 0}
!25 = !{!"omnipotent char", !26, i64 0}
!26 = !{!"Simple C/C++ TBAA"}
!27 = !{!"any pointer", !25, i64 0}
!28 = !{!24, !24, i64 0}
!29 = !DILocation(line: 53, column: 22, scope: !11)
!30 = !DILocation(line: 55, column: 7, scope: !19)
!31 = !DILocation(line: 55, column: 8, scope: !19)
!32 = !DILocation(line: 55, column: 7, scope: !11)
!33 = !DILocation(line: 56, column: 12, scope: !19)
!34 = !DILocation(line: 56, column: 5, scope: !19)
!35 = !DILocation(line: 59, column: 5, scope: !18)
!36 = !DILocation(line: 59, column: 9, scope: !18)
!37 = !DILocation(line: 59, column: 12, scope: !18)
!38 = !DILocation(line: 60, column: 1, scope: !18)
!39 = !{!27, !27, i64 0}
!40 = !{!41, !27, i64 0}
!41 = !{!"kmp_task_t_with_privates", !42, i64 0, !43, i64 40}
!42 = !{!"kmp_task_t", !27, i64 0, !27, i64 8, !24, i64 16, !25, i64 24, !25, i64 32}
!43 = !{!".kmp_privates.t", !24, i64 0}
!44 = !{i64 0, i64 8, !39, i64 8, i64 8, !39}
!45 = !{!46, !27, i64 8}
!46 = !{!"", !27, i64 0, !27, i64 8}
!47 = !DILocation(line: 61, column: 11, scope: !48)
!48 = distinct !DILexicalBlock(scope: !18, file: !3, line: 60, column: 1)
!49 = !{!41, !24, i64 40}
!50 = !DILocation(line: 62, column: 1, scope: !18)
!51 = !DILocation(line: 63, column: 11, scope: !52)
!52 = distinct !DILexicalBlock(scope: !18, file: !3, line: 62, column: 1)
!53 = !DILocation(line: 65, column: 5, scope: !18)
!54 = !DILocation(line: 65, column: 9, scope: !18)
!55 = !DILocation(line: 65, column: 14, scope: !18)
!56 = !DILocation(line: 65, column: 16, scope: !18)
!57 = !DILocation(line: 65, column: 15, scope: !18)
!58 = !DILocation(line: 72, column: 1, scope: !18)
!59 = !DILocation(line: 73, column: 12, scope: !18)
!60 = !DILocation(line: 73, column: 5, scope: !18)
!61 = !DILocation(line: 74, column: 3, scope: !19)
!62 = !DILocation(line: 75, column: 1, scope: !11)
!63 = distinct !DISubprogram(name: ".omp_outlined.", scope: !3, file: !3, line: 61, type: !64, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !83)
!64 = !DISubroutineType(types: !65)
!65 = !{null, !66, !67, !70, !73, !78, !79}
!66 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!67 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !68)
!68 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !69)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
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
!82 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !11, file: !3, line: 60, size: 128, elements: !4)
!83 = !{!84, !85, !86, !87, !88, !89}
!84 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !63, type: !66, flags: DIFlagArtificial)
!85 = !DILocalVariable(name: ".part_id.", arg: 2, scope: !63, type: !67, flags: DIFlagArtificial)
!86 = !DILocalVariable(name: ".privates.", arg: 3, scope: !63, type: !70, flags: DIFlagArtificial)
!87 = !DILocalVariable(name: ".copy_fn.", arg: 4, scope: !63, type: !73, flags: DIFlagArtificial)
!88 = !DILocalVariable(name: ".task_t.", arg: 5, scope: !63, type: !78, flags: DIFlagArtificial)
!89 = !DILocalVariable(name: "__context", arg: 6, scope: !63, type: !79, flags: DIFlagArtificial)
!90 = !DILocation(line: 0, scope: !63)
!91 = !DILocation(line: 61, column: 5, scope: !63)
!92 = !DILocation(line: 60, column: 1, scope: !63)
!93 = !DILocation(line: 61, column: 11, scope: !63)
!94 = !DILocation(line: 61, column: 12, scope: !63)
!95 = !DILocation(line: 61, column: 7, scope: !63)
!96 = !{!46, !27, i64 0}
!97 = !DILocation(line: 61, column: 6, scope: !63)
!98 = !DILocation(line: 61, column: 14, scope: !63)
!99 = distinct !DISubprogram(linkageName: ".omp_task_privates_map.", scope: !3, file: !3, line: 60, type: !100, scopeLine: 60, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !101)
!100 = !DISubroutineType(types: !4)
!101 = !{!102, !107}
!102 = !DILocalVariable(arg: 1, scope: !99, type: !103, flags: DIFlagArtificial)
!103 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !104)
!104 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !105)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: ".kmp_privates.t", file: !3, size: 32, elements: !4)
!107 = !DILocalVariable(arg: 2, scope: !99, type: !108, flags: DIFlagArtificial)
!108 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!109 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !110)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!112 = !DILocation(line: 0, scope: !99)
!113 = !DILocation(line: 60, column: 1, scope: !99)
!114 = distinct !DISubprogram(linkageName: ".omp_task_entry.", scope: !3, file: !3, line: 60, type: !100, scopeLine: 60, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !115)
!115 = !{!116, !117}
!116 = !DILocalVariable(arg: 1, scope: !114, type: !14, flags: DIFlagArtificial)
!117 = !DILocalVariable(arg: 2, scope: !114, type: !118, flags: DIFlagArtificial)
!118 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !119)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t_with_privates", file: !3, size: 384, elements: !121)
!121 = !{!122, !128}
!122 = !DIDerivedType(tag: DW_TAG_member, scope: !120, file: !3, baseType: !123, size: 320)
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t", file: !3, size: 320, elements: !124)
!124 = !{!125, !127}
!125 = !DIDerivedType(tag: DW_TAG_member, scope: !123, file: !3, baseType: !126, size: 64, offset: 192)
!126 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "kmp_cmplrdata_t", file: !3, size: 64, elements: !4)
!127 = !DIDerivedType(tag: DW_TAG_member, scope: !123, file: !3, baseType: !126, size: 64, offset: 256)
!128 = !DIDerivedType(tag: DW_TAG_member, scope: !120, file: !3, baseType: !106, size: 32, offset: 320)
!129 = !DILocation(line: 0, scope: !114)
!130 = !DILocation(line: 60, column: 1, scope: !114)
!131 = distinct !DISubprogram(name: ".omp_outlined..1", scope: !3, file: !3, line: 63, type: !132, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !138)
!132 = !DISubroutineType(types: !133)
!133 = !{null, !66, !67, !70, !73, !78, !134}
!134 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !135)
!135 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !136)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !11, file: !3, line: 62, size: 128, elements: !4)
!138 = !{!139, !140, !141, !142, !143, !144}
!139 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !131, type: !66, flags: DIFlagArtificial)
!140 = !DILocalVariable(name: ".part_id.", arg: 2, scope: !131, type: !67, flags: DIFlagArtificial)
!141 = !DILocalVariable(name: ".privates.", arg: 3, scope: !131, type: !70, flags: DIFlagArtificial)
!142 = !DILocalVariable(name: ".copy_fn.", arg: 4, scope: !131, type: !73, flags: DIFlagArtificial)
!143 = !DILocalVariable(name: ".task_t.", arg: 5, scope: !131, type: !78, flags: DIFlagArtificial)
!144 = !DILocalVariable(name: "__context", arg: 6, scope: !131, type: !134, flags: DIFlagArtificial)
!145 = !DILocation(line: 0, scope: !131)
!146 = !DILocation(line: 63, column: 5, scope: !131)
!147 = !DILocation(line: 62, column: 1, scope: !131)
!148 = !DILocation(line: 63, column: 11, scope: !131)
!149 = !DILocation(line: 63, column: 12, scope: !131)
!150 = !DILocation(line: 63, column: 7, scope: !131)
!151 = !DILocation(line: 63, column: 6, scope: !131)
!152 = !DILocation(line: 63, column: 14, scope: !131)
!153 = distinct !DISubprogram(linkageName: ".omp_task_privates_map..2", scope: !3, file: !3, line: 62, type: !100, scopeLine: 62, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !154)
!154 = !{!155, !160}
!155 = !DILocalVariable(arg: 1, scope: !153, type: !156, flags: DIFlagArtificial)
!156 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !157)
!157 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !158)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: ".kmp_privates.t", file: !3, size: 32, elements: !4)
!160 = !DILocalVariable(arg: 2, scope: !153, type: !108, flags: DIFlagArtificial)
!161 = !DILocation(line: 0, scope: !153)
!162 = !DILocation(line: 62, column: 1, scope: !153)
!163 = distinct !DISubprogram(linkageName: ".omp_task_entry..3", scope: !3, file: !3, line: 62, type: !100, scopeLine: 62, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !164)
!164 = !{!165, !166}
!165 = !DILocalVariable(arg: 1, scope: !163, type: !14, flags: DIFlagArtificial)
!166 = !DILocalVariable(arg: 2, scope: !163, type: !167, flags: DIFlagArtificial)
!167 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !168)
!168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t_with_privates", file: !3, size: 384, elements: !170)
!170 = !{!171, !172}
!171 = !DIDerivedType(tag: DW_TAG_member, scope: !169, file: !3, baseType: !123, size: 320)
!172 = !DIDerivedType(tag: DW_TAG_member, scope: !169, file: !3, baseType: !159, size: 32, offset: 320)
!173 = !DILocation(line: 0, scope: !163)
!174 = !DILocation(line: 62, column: 1, scope: !163)
!175 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 76, type: !176, scopeLine: 77, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !178)
!176 = !DISubroutineType(types: !177)
!177 = !{!14}
!178 = !{!179}
!179 = !DILocalVariable(name: "result", scope: !175, file: !3, line: 78, type: !14)
!180 = !DILocation(line: 78, column: 3, scope: !175)
!181 = !DILocation(line: 78, column: 7, scope: !175)
!182 = !DILocation(line: 79, column: 1, scope: !175)
!183 = !DILocation(line: 86, column: 57, scope: !175)
!184 = !DILocation(line: 86, column: 64, scope: !175)
!185 = !DILocation(line: 86, column: 3, scope: !175)
!186 = !DILocation(line: 88, column: 1, scope: !175)
!187 = !DILocation(line: 87, column: 3, scope: !175)
!188 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !3, file: !3, line: 80, type: !189, scopeLine: 80, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !192)
!189 = !DISubroutineType(types: !190)
!190 = !{null, !67, !67, !191}
!191 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !14, size: 64)
!192 = !{!193, !194, !195}
!193 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !188, type: !67, flags: DIFlagArtificial)
!194 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !188, type: !67, flags: DIFlagArtificial)
!195 = !DILocalVariable(name: "result", arg: 3, scope: !188, file: !3, line: 78, type: !191)
!196 = !DILocation(line: 0, scope: !188)
!197 = !DILocation(line: 78, column: 7, scope: !188)
!198 = !DILocation(line: 80, column: 3, scope: !188)
!199 = !DILocation(line: 81, column: 4, scope: !200)
!200 = distinct !DILexicalBlock(scope: !188, file: !3, line: 80, column: 3)
!201 = !DILocation(line: 83, column: 20, scope: !202)
!202 = distinct !DILexicalBlock(scope: !203, file: !3, line: 82, column: 5)
!203 = distinct !DILexicalBlock(scope: !200, file: !3, line: 81, column: 4)
!204 = !DILocation(line: 83, column: 16, scope: !202)
!205 = !DILocation(line: 83, column: 14, scope: !202)
!206 = !DILocation(line: 84, column: 5, scope: !202)
!207 = !DILocation(line: 81, column: 22, scope: !203)
!208 = !DILocation(line: 85, column: 3, scope: !188)
!209 = distinct !DISubprogram(name: ".omp_outlined..4", scope: !3, file: !3, line: 80, type: !189, scopeLine: 80, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !210)
!210 = !{!211, !212, !213}
!211 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !209, type: !67, flags: DIFlagArtificial)
!212 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !209, type: !67, flags: DIFlagArtificial)
!213 = !DILocalVariable(name: "result", arg: 3, scope: !209, type: !191, flags: DIFlagArtificial)
!214 = !DILocation(line: 0, scope: !209)
!215 = !DILocation(line: 80, column: 3, scope: !209)
!216 = !{!217}
!217 = !{i64 2, i64 -1, i64 -1, i1 true}
