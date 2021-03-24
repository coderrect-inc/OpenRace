; ModuleID = 'DRB106-taskwaitmissing-orig-yes.c'
source_filename = "DRB106-taskwaitmissing-orig-yes.c"
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
@1 = private unnamed_addr constant [46 x i8] c";DRB106-taskwaitmissing-orig-yes.c;fib;60;1;;\00", align 1
@2 = private unnamed_addr constant [46 x i8] c";DRB106-taskwaitmissing-orig-yes.c;fib;62;1;;\00", align 1
@3 = private unnamed_addr constant [46 x i8] c";DRB106-taskwaitmissing-orig-yes.c;fib;72;1;;\00", align 1
@4 = private unnamed_addr constant [47 x i8] c";DRB106-taskwaitmissing-orig-yes.c;main;81;4;;\00", align 1
@input = dso_local global i32 10, align 4, !dbg !0
@5 = private unnamed_addr constant [47 x i8] c";DRB106-taskwaitmissing-orig-yes.c;main;79;1;;\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"Fib(%d)=%d (correct answer should be 55)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
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
  store i8* getelementptr inbounds ([46 x i8], [46 x i8]* @1, i32 0, i32 0), i8** %2, align 8
  %3 = call i32 @__kmpc_global_thread_num(%struct.ident_t* %.kmpc_loc.addr)
  store i32 %n, i32* %n.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %n.addr, metadata !15, metadata !DIExpression()), !dbg !16
  %4 = load i32, i32* %n.addr, align 4, !dbg !17
  %cmp = icmp ult i32 %4, 2, !dbg !19
  br i1 %cmp, label %if.then, label %if.else, !dbg !20

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %n.addr, align 4, !dbg !21
  store i32 %5, i32* %retval, align 4, !dbg !22
  br label %return, !dbg !22

if.else:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %i, metadata !23, metadata !DIExpression()), !dbg !25
  call void @llvm.dbg.declare(metadata i32* %j, metadata !26, metadata !DIExpression()), !dbg !27
  %6 = getelementptr inbounds %struct.anon, %struct.anon* %agg.captured, i32 0, i32 0, !dbg !28
  store i32* %i, i32** %6, align 8, !dbg !28
  %7 = getelementptr inbounds %struct.anon, %struct.anon* %agg.captured, i32 0, i32 1, !dbg !28
  store i32* %n.addr, i32** %7, align 8, !dbg !28
  %8 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !28
  store i8* getelementptr inbounds ([46 x i8], [46 x i8]* @1, i32 0, i32 0), i8** %8, align 8, !dbg !28
  %9 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* %.kmpc_loc.addr, i32 %3, i32 1, i64 48, i64 16, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates*)* @.omp_task_entry. to i32 (i32, i8*)*)), !dbg !28
  %10 = bitcast i8* %9 to %struct.kmp_task_t_with_privates*, !dbg !28
  %11 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %10, i32 0, i32 0, !dbg !28
  %12 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %11, i32 0, i32 0, !dbg !28
  %13 = load i8*, i8** %12, align 8, !dbg !28
  %14 = bitcast %struct.anon* %agg.captured to i8*, !dbg !28
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 8 %14, i64 16, i1 false), !dbg !28
  %15 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %10, i32 0, i32 1, !dbg !28
  %16 = bitcast i8* %13 to %struct.anon*, !dbg !28
  %17 = getelementptr inbounds %struct..kmp_privates.t, %struct..kmp_privates.t* %15, i32 0, i32 0, !dbg !28
  %18 = getelementptr inbounds %struct.anon, %struct.anon* %16, i32 0, i32 1, !dbg !28
  %19 = load i32*, i32** %18, align 8, !dbg !28
  %20 = load i32, i32* %19, align 4, !dbg !29
  store i32 %20, i32* %17, align 8, !dbg !28
  %21 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !28
  store i8* getelementptr inbounds ([46 x i8], [46 x i8]* @1, i32 0, i32 0), i8** %21, align 8, !dbg !28
  %22 = call i32 @__kmpc_omp_task(%struct.ident_t* %.kmpc_loc.addr, i32 %3, i8* %9), !dbg !28
  %23 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %agg.captured1, i32 0, i32 0, !dbg !31
  store i32* %j, i32** %23, align 8, !dbg !31
  %24 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %agg.captured1, i32 0, i32 1, !dbg !31
  store i32* %n.addr, i32** %24, align 8, !dbg !31
  %25 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !31
  store i8* getelementptr inbounds ([46 x i8], [46 x i8]* @2, i32 0, i32 0), i8** %25, align 8, !dbg !31
  %26 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* %.kmpc_loc.addr, i32 %3, i32 1, i64 48, i64 16, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates.1*)* @.omp_task_entry..3 to i32 (i32, i8*)*)), !dbg !31
  %27 = bitcast i8* %26 to %struct.kmp_task_t_with_privates.1*, !dbg !31
  %28 = getelementptr inbounds %struct.kmp_task_t_with_privates.1, %struct.kmp_task_t_with_privates.1* %27, i32 0, i32 0, !dbg !31
  %29 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %28, i32 0, i32 0, !dbg !31
  %30 = load i8*, i8** %29, align 8, !dbg !31
  %31 = bitcast %struct.anon.0* %agg.captured1 to i8*, !dbg !31
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %30, i8* align 8 %31, i64 16, i1 false), !dbg !31
  %32 = getelementptr inbounds %struct.kmp_task_t_with_privates.1, %struct.kmp_task_t_with_privates.1* %27, i32 0, i32 1, !dbg !31
  %33 = bitcast i8* %30 to %struct.anon.0*, !dbg !31
  %34 = getelementptr inbounds %struct..kmp_privates.t.2, %struct..kmp_privates.t.2* %32, i32 0, i32 0, !dbg !31
  %35 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %33, i32 0, i32 1, !dbg !31
  %36 = load i32*, i32** %35, align 8, !dbg !31
  %37 = load i32, i32* %36, align 4, !dbg !32
  store i32 %37, i32* %34, align 8, !dbg !31
  %38 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !31
  store i8* getelementptr inbounds ([46 x i8], [46 x i8]* @2, i32 0, i32 0), i8** %38, align 8, !dbg !31
  %39 = call i32 @__kmpc_omp_task(%struct.ident_t* %.kmpc_loc.addr, i32 %3, i8* %26), !dbg !31
  call void @llvm.dbg.declare(metadata i32* %res, metadata !34, metadata !DIExpression()), !dbg !35
  %40 = load i32, i32* %i, align 4, !dbg !36
  %41 = load i32, i32* %j, align 4, !dbg !37
  %add = add nsw i32 %40, %41, !dbg !38
  store i32 %add, i32* %res, align 4, !dbg !35
  %42 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !39
  store i8* getelementptr inbounds ([46 x i8], [46 x i8]* @3, i32 0, i32 0), i8** %42, align 8, !dbg !39
  %43 = call i32 @__kmpc_omp_taskwait(%struct.ident_t* %.kmpc_loc.addr, i32 %3), !dbg !39
  %44 = load i32, i32* %res, align 4, !dbg !40
  store i32 %44, i32* %retval, align 4, !dbg !41
  br label %return, !dbg !41

return:                                           ; preds = %if.else, %if.then
  %45 = load i32, i32* %retval, align 4, !dbg !42
  ret i32 %45, !dbg !42
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind uwtable
define internal void @.omp_task_privates_map.(%struct..kmp_privates.t* noalias %0, i32** noalias %1) #2 !dbg !43 {
entry:
  %.addr = alloca %struct..kmp_privates.t*, align 8
  %.addr1 = alloca i32**, align 8
  store %struct..kmp_privates.t* %0, %struct..kmp_privates.t** %.addr, align 8
  call void @llvm.dbg.declare(metadata %struct..kmp_privates.t** %.addr, metadata !45, metadata !DIExpression()), !dbg !50
  store i32** %1, i32*** %.addr1, align 8
  call void @llvm.dbg.declare(metadata i32*** %.addr1, metadata !51, metadata !DIExpression()), !dbg !50
  %2 = load %struct..kmp_privates.t*, %struct..kmp_privates.t** %.addr, align 8, !dbg !56
  %3 = getelementptr inbounds %struct..kmp_privates.t, %struct..kmp_privates.t* %2, i32 0, i32 0, !dbg !56
  %4 = load i32**, i32*** %.addr1, align 8, !dbg !56
  store i32* %3, i32** %4, align 8, !dbg !56
  ret void, !dbg !56
}

; Function Attrs: noinline norecurse nounwind uwtable
define internal i32 @.omp_task_entry.(i32 %0, %struct.kmp_task_t_with_privates* noalias %1) #3 !dbg !57 {
entry:
  %.global_tid..addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %.global_tid..addr.i, metadata !58, metadata !DIExpression()), !dbg !79
  %.part_id..addr.i = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %.part_id..addr.i, metadata !81, metadata !DIExpression()), !dbg !79
  %.privates..addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %.privates..addr.i, metadata !82, metadata !DIExpression()), !dbg !79
  %.copy_fn..addr.i = alloca void (i8*, ...)*, align 8
  call void @llvm.dbg.declare(metadata void (i8*, ...)** %.copy_fn..addr.i, metadata !83, metadata !DIExpression()), !dbg !79
  %.task_t..addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %.task_t..addr.i, metadata !84, metadata !DIExpression()), !dbg !79
  %__context.addr.i = alloca %struct.anon*, align 8
  call void @llvm.dbg.declare(metadata %struct.anon** %__context.addr.i, metadata !85, metadata !DIExpression()), !dbg !79
  %.firstpriv.ptr.addr.i = alloca i32*, align 8
  %.addr = alloca i32, align 4
  %.addr1 = alloca %struct.kmp_task_t_with_privates*, align 8
  store i32 %0, i32* %.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %.addr, metadata !86, metadata !DIExpression()), !dbg !87
  store %struct.kmp_task_t_with_privates* %1, %struct.kmp_task_t_with_privates** %.addr1, align 8
  call void @llvm.dbg.declare(metadata %struct.kmp_task_t_with_privates** %.addr1, metadata !88, metadata !DIExpression()), !dbg !87
  %2 = load i32, i32* %.addr, align 4, !dbg !100
  %3 = load %struct.kmp_task_t_with_privates*, %struct.kmp_task_t_with_privates** %.addr1, align 8, !dbg !100
  %4 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %3, i32 0, i32 0, !dbg !100
  %5 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 2, !dbg !100
  %6 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 0, !dbg !100
  %7 = load i8*, i8** %6, align 8, !dbg !100
  %8 = bitcast i8* %7 to %struct.anon*, !dbg !100
  %9 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %3, i32 0, i32 1, !dbg !100
  %10 = bitcast %struct..kmp_privates.t* %9 to i8*, !dbg !100
  %11 = bitcast %struct.kmp_task_t_with_privates* %3 to i8*, !dbg !100
  store i32 %2, i32* %.global_tid..addr.i, align 4, !noalias !101
  store i32* %5, i32** %.part_id..addr.i, align 8, !noalias !101
  store i8* %10, i8** %.privates..addr.i, align 8, !noalias !101
  store void (i8*, ...)* bitcast (void (%struct..kmp_privates.t*, i32**)* @.omp_task_privates_map. to void (i8*, ...)*), void (i8*, ...)** %.copy_fn..addr.i, align 8, !noalias !101
  store i8* %11, i8** %.task_t..addr.i, align 8, !noalias !101
  store %struct.anon* %8, %struct.anon** %__context.addr.i, align 8, !noalias !101
  %12 = load %struct.anon*, %struct.anon** %__context.addr.i, align 8, !dbg !107, !noalias !101
  %13 = load void (i8*, ...)*, void (i8*, ...)** %.copy_fn..addr.i, align 8, !dbg !107, !noalias !101
  %14 = load i8*, i8** %.privates..addr.i, align 8, !dbg !107, !noalias !101
  call void (i8*, ...) %13(i8* %14, i32** %.firstpriv.ptr.addr.i) #7, !dbg !108
  %15 = load i32*, i32** %.firstpriv.ptr.addr.i, align 8, !dbg !107, !noalias !101
  %16 = load i32, i32* %15, align 4, !dbg !109
  %sub.i = sub i32 %16, 1, !dbg !110
  %call.i = call i32 @fib(i32 %sub.i) #7, !dbg !111
  %17 = getelementptr inbounds %struct.anon, %struct.anon* %12, i32 0, i32 0, !dbg !107
  %18 = load i32*, i32** %17, align 8, !dbg !107
  store i32 %call.i, i32* %18, align 4, !dbg !112
  ret i32 0, !dbg !100
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

declare dso_local i32 @__kmpc_global_thread_num(%struct.ident_t*)

declare dso_local i8* @__kmpc_omp_task_alloc(%struct.ident_t*, i32, i32, i64, i64, i32 (i32, i8*)*)

declare dso_local i32 @__kmpc_omp_task(%struct.ident_t*, i32, i8*)

; Function Attrs: noinline nounwind uwtable
define internal void @.omp_task_privates_map..2(%struct..kmp_privates.t.2* noalias %0, i32** noalias %1) #2 !dbg !113 {
entry:
  %.addr = alloca %struct..kmp_privates.t.2*, align 8
  %.addr1 = alloca i32**, align 8
  store %struct..kmp_privates.t.2* %0, %struct..kmp_privates.t.2** %.addr, align 8
  call void @llvm.dbg.declare(metadata %struct..kmp_privates.t.2** %.addr, metadata !114, metadata !DIExpression()), !dbg !119
  store i32** %1, i32*** %.addr1, align 8
  call void @llvm.dbg.declare(metadata i32*** %.addr1, metadata !120, metadata !DIExpression()), !dbg !119
  %2 = load %struct..kmp_privates.t.2*, %struct..kmp_privates.t.2** %.addr, align 8, !dbg !121
  %3 = getelementptr inbounds %struct..kmp_privates.t.2, %struct..kmp_privates.t.2* %2, i32 0, i32 0, !dbg !121
  %4 = load i32**, i32*** %.addr1, align 8, !dbg !121
  store i32* %3, i32** %4, align 8, !dbg !121
  ret void, !dbg !121
}

; Function Attrs: noinline norecurse nounwind uwtable
define internal i32 @.omp_task_entry..3(i32 %0, %struct.kmp_task_t_with_privates.1* noalias %1) #3 !dbg !122 {
entry:
  %.global_tid..addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %.global_tid..addr.i, metadata !123, metadata !DIExpression()), !dbg !131
  %.part_id..addr.i = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %.part_id..addr.i, metadata !133, metadata !DIExpression()), !dbg !131
  %.privates..addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %.privates..addr.i, metadata !134, metadata !DIExpression()), !dbg !131
  %.copy_fn..addr.i = alloca void (i8*, ...)*, align 8
  call void @llvm.dbg.declare(metadata void (i8*, ...)** %.copy_fn..addr.i, metadata !135, metadata !DIExpression()), !dbg !131
  %.task_t..addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %.task_t..addr.i, metadata !136, metadata !DIExpression()), !dbg !131
  %__context.addr.i = alloca %struct.anon.0*, align 8
  call void @llvm.dbg.declare(metadata %struct.anon.0** %__context.addr.i, metadata !137, metadata !DIExpression()), !dbg !131
  %.firstpriv.ptr.addr.i = alloca i32*, align 8
  %.addr = alloca i32, align 4
  %.addr1 = alloca %struct.kmp_task_t_with_privates.1*, align 8
  store i32 %0, i32* %.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %.addr, metadata !138, metadata !DIExpression()), !dbg !139
  store %struct.kmp_task_t_with_privates.1* %1, %struct.kmp_task_t_with_privates.1** %.addr1, align 8
  call void @llvm.dbg.declare(metadata %struct.kmp_task_t_with_privates.1** %.addr1, metadata !140, metadata !DIExpression()), !dbg !139
  %2 = load i32, i32* %.addr, align 4, !dbg !147
  %3 = load %struct.kmp_task_t_with_privates.1*, %struct.kmp_task_t_with_privates.1** %.addr1, align 8, !dbg !147
  %4 = getelementptr inbounds %struct.kmp_task_t_with_privates.1, %struct.kmp_task_t_with_privates.1* %3, i32 0, i32 0, !dbg !147
  %5 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 2, !dbg !147
  %6 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 0, !dbg !147
  %7 = load i8*, i8** %6, align 8, !dbg !147
  %8 = bitcast i8* %7 to %struct.anon.0*, !dbg !147
  %9 = getelementptr inbounds %struct.kmp_task_t_with_privates.1, %struct.kmp_task_t_with_privates.1* %3, i32 0, i32 1, !dbg !147
  %10 = bitcast %struct..kmp_privates.t.2* %9 to i8*, !dbg !147
  %11 = bitcast %struct.kmp_task_t_with_privates.1* %3 to i8*, !dbg !147
  store i32 %2, i32* %.global_tid..addr.i, align 4, !noalias !148
  store i32* %5, i32** %.part_id..addr.i, align 8, !noalias !148
  store i8* %10, i8** %.privates..addr.i, align 8, !noalias !148
  store void (i8*, ...)* bitcast (void (%struct..kmp_privates.t.2*, i32**)* @.omp_task_privates_map..2 to void (i8*, ...)*), void (i8*, ...)** %.copy_fn..addr.i, align 8, !noalias !148
  store i8* %11, i8** %.task_t..addr.i, align 8, !noalias !148
  store %struct.anon.0* %8, %struct.anon.0** %__context.addr.i, align 8, !noalias !148
  %12 = load %struct.anon.0*, %struct.anon.0** %__context.addr.i, align 8, !dbg !154, !noalias !148
  %13 = load void (i8*, ...)*, void (i8*, ...)** %.copy_fn..addr.i, align 8, !dbg !154, !noalias !148
  %14 = load i8*, i8** %.privates..addr.i, align 8, !dbg !154, !noalias !148
  call void (i8*, ...) %13(i8* %14, i32** %.firstpriv.ptr.addr.i) #7, !dbg !155
  %15 = load i32*, i32** %.firstpriv.ptr.addr.i, align 8, !dbg !154, !noalias !148
  %16 = load i32, i32* %15, align 4, !dbg !156
  %sub.i = sub i32 %16, 2, !dbg !157
  %call.i = call i32 @fib(i32 %sub.i) #7, !dbg !158
  %17 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %12, i32 0, i32 0, !dbg !154
  %18 = load i32*, i32** %17, align 8, !dbg !154
  store i32 %call.i, i32* %18, align 4, !dbg !159
  ret i32 0, !dbg !147
}

declare dso_local i32 @__kmpc_omp_taskwait(%struct.ident_t*, i32)

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !160 {
entry:
  %retval = alloca i32, align 4
  %result = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata i32* %result, metadata !163, metadata !DIExpression()), !dbg !164
  store i32 0, i32* %result, align 4, !dbg !164
  %2 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !165
  store i8* getelementptr inbounds ([47 x i8], [47 x i8]* @5, i32 0, i32 0), i8** %2, align 8, !dbg !165
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*)* @.omp_outlined..4 to void (i32*, i32*, ...)*), i32* %result), !dbg !165
  %3 = load i32, i32* @input, align 4, !dbg !166
  %4 = load i32, i32* %result, align 4, !dbg !167
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i32 %3, i32 %4), !dbg !168
  ret i32 0, !dbg !169
}

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %result) #5 !dbg !170 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %result.addr = alloca i32*, align 8
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !174, metadata !DIExpression()), !dbg !175
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !176, metadata !DIExpression()), !dbg !175
  store i32* %result, i32** %result.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %result.addr, metadata !177, metadata !DIExpression()), !dbg !178
  %2 = load i32*, i32** %result.addr, align 8, !dbg !179
  %3 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !180
  store i8* getelementptr inbounds ([47 x i8], [47 x i8]* @4, i32 0, i32 0), i8** %3, align 8, !dbg !180
  %4 = load i32*, i32** %.global_tid..addr, align 8, !dbg !180
  %5 = load i32, i32* %4, align 4, !dbg !180
  %6 = call i32 @__kmpc_single(%struct.ident_t* %.kmpc_loc.addr, i32 %5), !dbg !180
  %7 = icmp ne i32 %6, 0, !dbg !180
  br i1 %7, label %omp_if.then, label %omp_if.end, !dbg !180

omp_if.then:                                      ; preds = %entry
  %8 = load i32, i32* @input, align 4, !dbg !182
  %call = call i32 @fib(i32 %8), !dbg !185
  store i32 %call, i32* %2, align 4, !dbg !186
  call void @__kmpc_end_single(%struct.ident_t* %.kmpc_loc.addr, i32 %5), !dbg !187
  br label %omp_if.end, !dbg !187

omp_if.end:                                       ; preds = %omp_if.then, %entry
  %9 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !188
  store i8* getelementptr inbounds ([47 x i8], [47 x i8]* @4, i32 0, i32 0), i8** %9, align 8, !dbg !188
  call void @__kmpc_barrier(%struct.ident_t* %.kmpc_loc.addr, i32 %5), !dbg !188
  ret void, !dbg !189
}

declare dso_local void @__kmpc_end_single(%struct.ident_t*, i32)

declare dso_local i32 @__kmpc_single(%struct.ident_t*, i32)

declare dso_local void @__kmpc_barrier(%struct.ident_t*, i32)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined..4(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %result) #5 !dbg !190 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %result.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !191, metadata !DIExpression()), !dbg !192
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !193, metadata !DIExpression()), !dbg !192
  store i32* %result, i32** %result.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %result.addr, metadata !194, metadata !DIExpression()), !dbg !192
  %0 = load i32*, i32** %result.addr, align 8, !dbg !195
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !195
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !195
  %3 = load i32*, i32** %result.addr, align 8, !dbg !195
  call void @.omp_outlined._debug__(i32* %1, i32* %2, i32* %3) #7, !dbg !195
  ret void, !dbg !195
}

declare !callback !196 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

declare dso_local i32 @printf(i8*, ...) #6

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noinline norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind willreturn }
attributes #5 = { noinline norecurse nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!7, !8, !9}
!llvm.ident = !{!10}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "input", scope: !2, file: !3, line: 52, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.1 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "DRB106-taskwaitmissing-orig-yes.c", directory: "/home/yanze/code/OpenRace/tests/data/integration/dataracebench")
!4 = !{}
!5 = !{!0}
!6 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!7 = !{i32 7, !"Dwarf Version", i32 4}
!8 = !{i32 2, !"Debug Info Version", i32 3}
!9 = !{i32 1, !"wchar_size", i32 4}
!10 = !{!"clang version 10.0.1 "}
!11 = distinct !DISubprogram(name: "fib", scope: !3, file: !3, line: 53, type: !12, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!12 = !DISubroutineType(types: !13)
!13 = !{!14, !6}
!14 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!15 = !DILocalVariable(name: "n", arg: 1, scope: !11, file: !3, line: 53, type: !6)
!16 = !DILocation(line: 53, column: 22, scope: !11)
!17 = !DILocation(line: 55, column: 7, scope: !18)
!18 = distinct !DILexicalBlock(scope: !11, file: !3, line: 55, column: 7)
!19 = !DILocation(line: 55, column: 8, scope: !18)
!20 = !DILocation(line: 55, column: 7, scope: !11)
!21 = !DILocation(line: 56, column: 12, scope: !18)
!22 = !DILocation(line: 56, column: 5, scope: !18)
!23 = !DILocalVariable(name: "i", scope: !24, file: !3, line: 59, type: !14)
!24 = distinct !DILexicalBlock(scope: !18, file: !3, line: 58, column: 3)
!25 = !DILocation(line: 59, column: 9, scope: !24)
!26 = !DILocalVariable(name: "j", scope: !24, file: !3, line: 59, type: !14)
!27 = !DILocation(line: 59, column: 12, scope: !24)
!28 = !DILocation(line: 60, column: 1, scope: !24)
!29 = !DILocation(line: 61, column: 11, scope: !30)
!30 = distinct !DILexicalBlock(scope: !24, file: !3, line: 60, column: 1)
!31 = !DILocation(line: 62, column: 1, scope: !24)
!32 = !DILocation(line: 63, column: 11, scope: !33)
!33 = distinct !DILexicalBlock(scope: !24, file: !3, line: 62, column: 1)
!34 = !DILocalVariable(name: "res", scope: !24, file: !3, line: 65, type: !14)
!35 = !DILocation(line: 65, column: 9, scope: !24)
!36 = !DILocation(line: 65, column: 14, scope: !24)
!37 = !DILocation(line: 65, column: 16, scope: !24)
!38 = !DILocation(line: 65, column: 15, scope: !24)
!39 = !DILocation(line: 72, column: 1, scope: !24)
!40 = !DILocation(line: 73, column: 12, scope: !24)
!41 = !DILocation(line: 73, column: 5, scope: !24)
!42 = !DILocation(line: 75, column: 1, scope: !11)
!43 = distinct !DISubprogram(linkageName: ".omp_task_privates_map.", scope: !3, file: !3, line: 60, type: !44, scopeLine: 60, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!44 = !DISubroutineType(types: !4)
!45 = !DILocalVariable(arg: 1, scope: !43, type: !46, flags: DIFlagArtificial)
!46 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !47)
!47 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !48)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: ".kmp_privates.t", file: !3, size: 32, elements: !4)
!50 = !DILocation(line: 0, scope: !43)
!51 = !DILocalVariable(arg: 2, scope: !43, type: !52, flags: DIFlagArtificial)
!52 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !53)
!53 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !54)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!56 = !DILocation(line: 60, column: 1, scope: !43)
!57 = distinct !DISubprogram(linkageName: ".omp_task_entry.", scope: !3, file: !3, line: 60, type: !44, scopeLine: 60, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!58 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !59, type: !62, flags: DIFlagArtificial)
!59 = distinct !DISubprogram(name: ".omp_outlined.", scope: !3, file: !3, line: 61, type: !60, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!60 = !DISubroutineType(types: !61)
!61 = !{null, !62, !63, !66, !69, !74, !75}
!62 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!63 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !64)
!64 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !65)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !67)
!67 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !68)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !70)
!70 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !71)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = !DISubroutineType(types: !73)
!73 = !{null, !66, null}
!74 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !68)
!75 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !76)
!76 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !77)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!78 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !11, file: !3, line: 60, size: 128, elements: !4)
!79 = !DILocation(line: 0, scope: !59, inlinedAt: !80)
!80 = distinct !DILocation(line: 60, column: 1, scope: !57)
!81 = !DILocalVariable(name: ".part_id.", arg: 2, scope: !59, type: !63, flags: DIFlagArtificial)
!82 = !DILocalVariable(name: ".privates.", arg: 3, scope: !59, type: !66, flags: DIFlagArtificial)
!83 = !DILocalVariable(name: ".copy_fn.", arg: 4, scope: !59, type: !69, flags: DIFlagArtificial)
!84 = !DILocalVariable(name: ".task_t.", arg: 5, scope: !59, type: !74, flags: DIFlagArtificial)
!85 = !DILocalVariable(name: "__context", arg: 6, scope: !59, type: !75, flags: DIFlagArtificial)
!86 = !DILocalVariable(arg: 1, scope: !57, type: !14, flags: DIFlagArtificial)
!87 = !DILocation(line: 0, scope: !57)
!88 = !DILocalVariable(arg: 2, scope: !57, type: !89, flags: DIFlagArtificial)
!89 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !90)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t_with_privates", file: !3, size: 384, elements: !92)
!92 = !{!93, !99}
!93 = !DIDerivedType(tag: DW_TAG_member, scope: !91, file: !3, baseType: !94, size: 320)
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t", file: !3, size: 320, elements: !95)
!95 = !{!96, !98}
!96 = !DIDerivedType(tag: DW_TAG_member, scope: !94, file: !3, baseType: !97, size: 64, offset: 192)
!97 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "kmp_cmplrdata_t", file: !3, size: 64, elements: !4)
!98 = !DIDerivedType(tag: DW_TAG_member, scope: !94, file: !3, baseType: !97, size: 64, offset: 256)
!99 = !DIDerivedType(tag: DW_TAG_member, scope: !91, file: !3, baseType: !49, size: 32, offset: 320)
!100 = !DILocation(line: 60, column: 1, scope: !57)
!101 = !{!102, !104, !105, !106}
!102 = distinct !{!102, !103, !".omp_outlined.: %.part_id."}
!103 = distinct !{!103, !".omp_outlined."}
!104 = distinct !{!104, !103, !".omp_outlined.: %.privates."}
!105 = distinct !{!105, !103, !".omp_outlined.: %.copy_fn."}
!106 = distinct !{!106, !103, !".omp_outlined.: %__context"}
!107 = !DILocation(line: 61, column: 5, scope: !59, inlinedAt: !80)
!108 = !DILocation(line: 60, column: 1, scope: !59, inlinedAt: !80)
!109 = !DILocation(line: 61, column: 11, scope: !59, inlinedAt: !80)
!110 = !DILocation(line: 61, column: 12, scope: !59, inlinedAt: !80)
!111 = !DILocation(line: 61, column: 7, scope: !59, inlinedAt: !80)
!112 = !DILocation(line: 61, column: 6, scope: !59, inlinedAt: !80)
!113 = distinct !DISubprogram(linkageName: ".omp_task_privates_map..2", scope: !3, file: !3, line: 62, type: !44, scopeLine: 62, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!114 = !DILocalVariable(arg: 1, scope: !113, type: !115, flags: DIFlagArtificial)
!115 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !116)
!116 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !117)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: ".kmp_privates.t", file: !3, size: 32, elements: !4)
!119 = !DILocation(line: 0, scope: !113)
!120 = !DILocalVariable(arg: 2, scope: !113, type: !52, flags: DIFlagArtificial)
!121 = !DILocation(line: 62, column: 1, scope: !113)
!122 = distinct !DISubprogram(linkageName: ".omp_task_entry..3", scope: !3, file: !3, line: 62, type: !44, scopeLine: 62, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!123 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !124, type: !62, flags: DIFlagArtificial)
!124 = distinct !DISubprogram(name: ".omp_outlined..1", scope: !3, file: !3, line: 63, type: !125, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!125 = !DISubroutineType(types: !126)
!126 = !{null, !62, !63, !66, !69, !74, !127}
!127 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !128)
!128 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !129)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!130 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !11, file: !3, line: 62, size: 128, elements: !4)
!131 = !DILocation(line: 0, scope: !124, inlinedAt: !132)
!132 = distinct !DILocation(line: 62, column: 1, scope: !122)
!133 = !DILocalVariable(name: ".part_id.", arg: 2, scope: !124, type: !63, flags: DIFlagArtificial)
!134 = !DILocalVariable(name: ".privates.", arg: 3, scope: !124, type: !66, flags: DIFlagArtificial)
!135 = !DILocalVariable(name: ".copy_fn.", arg: 4, scope: !124, type: !69, flags: DIFlagArtificial)
!136 = !DILocalVariable(name: ".task_t.", arg: 5, scope: !124, type: !74, flags: DIFlagArtificial)
!137 = !DILocalVariable(name: "__context", arg: 6, scope: !124, type: !127, flags: DIFlagArtificial)
!138 = !DILocalVariable(arg: 1, scope: !122, type: !14, flags: DIFlagArtificial)
!139 = !DILocation(line: 0, scope: !122)
!140 = !DILocalVariable(arg: 2, scope: !122, type: !141, flags: DIFlagArtificial)
!141 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !142)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t_with_privates", file: !3, size: 384, elements: !144)
!144 = !{!145, !146}
!145 = !DIDerivedType(tag: DW_TAG_member, scope: !143, file: !3, baseType: !94, size: 320)
!146 = !DIDerivedType(tag: DW_TAG_member, scope: !143, file: !3, baseType: !118, size: 32, offset: 320)
!147 = !DILocation(line: 62, column: 1, scope: !122)
!148 = !{!149, !151, !152, !153}
!149 = distinct !{!149, !150, !".omp_outlined..1: %.part_id."}
!150 = distinct !{!150, !".omp_outlined..1"}
!151 = distinct !{!151, !150, !".omp_outlined..1: %.privates."}
!152 = distinct !{!152, !150, !".omp_outlined..1: %.copy_fn."}
!153 = distinct !{!153, !150, !".omp_outlined..1: %__context"}
!154 = !DILocation(line: 63, column: 5, scope: !124, inlinedAt: !132)
!155 = !DILocation(line: 62, column: 1, scope: !124, inlinedAt: !132)
!156 = !DILocation(line: 63, column: 11, scope: !124, inlinedAt: !132)
!157 = !DILocation(line: 63, column: 12, scope: !124, inlinedAt: !132)
!158 = !DILocation(line: 63, column: 7, scope: !124, inlinedAt: !132)
!159 = !DILocation(line: 63, column: 6, scope: !124, inlinedAt: !132)
!160 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 76, type: !161, scopeLine: 77, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!161 = !DISubroutineType(types: !162)
!162 = !{!14}
!163 = !DILocalVariable(name: "result", scope: !160, file: !3, line: 78, type: !14)
!164 = !DILocation(line: 78, column: 7, scope: !160)
!165 = !DILocation(line: 79, column: 1, scope: !160)
!166 = !DILocation(line: 86, column: 57, scope: !160)
!167 = !DILocation(line: 86, column: 64, scope: !160)
!168 = !DILocation(line: 86, column: 3, scope: !160)
!169 = !DILocation(line: 87, column: 3, scope: !160)
!170 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !3, file: !3, line: 80, type: !171, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!171 = !DISubroutineType(types: !172)
!172 = !{null, !63, !63, !173}
!173 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !14, size: 64)
!174 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !170, type: !63, flags: DIFlagArtificial)
!175 = !DILocation(line: 0, scope: !170)
!176 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !170, type: !63, flags: DIFlagArtificial)
!177 = !DILocalVariable(name: "result", arg: 3, scope: !170, file: !3, line: 78, type: !173)
!178 = !DILocation(line: 78, column: 7, scope: !170)
!179 = !DILocation(line: 80, column: 3, scope: !170)
!180 = !DILocation(line: 81, column: 4, scope: !181)
!181 = distinct !DILexicalBlock(scope: !170, file: !3, line: 80, column: 3)
!182 = !DILocation(line: 83, column: 20, scope: !183)
!183 = distinct !DILexicalBlock(scope: !184, file: !3, line: 82, column: 5)
!184 = distinct !DILexicalBlock(scope: !181, file: !3, line: 81, column: 4)
!185 = !DILocation(line: 83, column: 16, scope: !183)
!186 = !DILocation(line: 83, column: 14, scope: !183)
!187 = !DILocation(line: 84, column: 5, scope: !183)
!188 = !DILocation(line: 81, column: 22, scope: !184)
!189 = !DILocation(line: 85, column: 3, scope: !170)
!190 = distinct !DISubprogram(name: ".omp_outlined..4", scope: !3, file: !3, line: 80, type: !171, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!191 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !190, type: !63, flags: DIFlagArtificial)
!192 = !DILocation(line: 0, scope: !190)
!193 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !190, type: !63, flags: DIFlagArtificial)
!194 = !DILocalVariable(name: "result", arg: 3, scope: !190, type: !173, flags: DIFlagArtificial)
!195 = !DILocation(line: 80, column: 3, scope: !190)
!196 = !{!197}
!197 = !{i64 2, i64 -1, i64 -1, i1 true}
