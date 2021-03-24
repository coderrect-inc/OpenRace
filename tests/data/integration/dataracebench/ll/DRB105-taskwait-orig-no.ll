; ModuleID = 'DRB105-taskwait-orig-no.c'
source_filename = "DRB105-taskwait-orig-no.c"
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
@1 = private unnamed_addr constant [38 x i8] c";DRB105-taskwait-orig-no.c;fib;60;1;;\00", align 1
@2 = private unnamed_addr constant [38 x i8] c";DRB105-taskwait-orig-no.c;fib;62;1;;\00", align 1
@3 = private unnamed_addr constant [38 x i8] c";DRB105-taskwait-orig-no.c;fib;64;1;;\00", align 1
@4 = private unnamed_addr constant [39 x i8] c";DRB105-taskwait-orig-no.c;main;73;4;;\00", align 1
@input = dso_local global i32 30, align 4, !dbg !0
@5 = private unnamed_addr constant [39 x i8] c";DRB105-taskwait-orig-no.c;main;71;1;;\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"Fib(%d)=%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"result==832040\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"DRB105-taskwait-orig-no.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [11 x i8] c"int main()\00", align 1

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
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  %2 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4
  store i8* getelementptr inbounds ([38 x i8], [38 x i8]* @1, i32 0, i32 0), i8** %2, align 8
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
  store i8* getelementptr inbounds ([38 x i8], [38 x i8]* @1, i32 0, i32 0), i8** %8, align 8, !dbg !28
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
  store i8* getelementptr inbounds ([38 x i8], [38 x i8]* @1, i32 0, i32 0), i8** %21, align 8, !dbg !28
  %22 = call i32 @__kmpc_omp_task(%struct.ident_t* %.kmpc_loc.addr, i32 %3, i8* %9), !dbg !28
  %23 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %agg.captured1, i32 0, i32 0, !dbg !31
  store i32* %j, i32** %23, align 8, !dbg !31
  %24 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %agg.captured1, i32 0, i32 1, !dbg !31
  store i32* %n.addr, i32** %24, align 8, !dbg !31
  %25 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !31
  store i8* getelementptr inbounds ([38 x i8], [38 x i8]* @2, i32 0, i32 0), i8** %25, align 8, !dbg !31
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
  store i8* getelementptr inbounds ([38 x i8], [38 x i8]* @2, i32 0, i32 0), i8** %38, align 8, !dbg !31
  %39 = call i32 @__kmpc_omp_task(%struct.ident_t* %.kmpc_loc.addr, i32 %3, i8* %26), !dbg !31
  %40 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !34
  store i8* getelementptr inbounds ([38 x i8], [38 x i8]* @3, i32 0, i32 0), i8** %40, align 8, !dbg !34
  %41 = call i32 @__kmpc_omp_taskwait(%struct.ident_t* %.kmpc_loc.addr, i32 %3), !dbg !34
  %42 = load i32, i32* %i, align 4, !dbg !35
  %43 = load i32, i32* %j, align 4, !dbg !36
  %add = add nsw i32 %42, %43, !dbg !37
  store i32 %add, i32* %retval, align 4, !dbg !38
  br label %return, !dbg !38

return:                                           ; preds = %if.else, %if.then
  %44 = load i32, i32* %retval, align 4, !dbg !39
  ret i32 %44, !dbg !39
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind uwtable
define internal void @.omp_task_privates_map.(%struct..kmp_privates.t* noalias %0, i32** noalias %1) #2 !dbg !40 {
entry:
  %.addr = alloca %struct..kmp_privates.t*, align 8
  %.addr1 = alloca i32**, align 8
  store %struct..kmp_privates.t* %0, %struct..kmp_privates.t** %.addr, align 8
  call void @llvm.dbg.declare(metadata %struct..kmp_privates.t** %.addr, metadata !42, metadata !DIExpression()), !dbg !47
  store i32** %1, i32*** %.addr1, align 8
  call void @llvm.dbg.declare(metadata i32*** %.addr1, metadata !48, metadata !DIExpression()), !dbg !47
  %2 = load %struct..kmp_privates.t*, %struct..kmp_privates.t** %.addr, align 8, !dbg !53
  %3 = getelementptr inbounds %struct..kmp_privates.t, %struct..kmp_privates.t* %2, i32 0, i32 0, !dbg !53
  %4 = load i32**, i32*** %.addr1, align 8, !dbg !53
  store i32* %3, i32** %4, align 8, !dbg !53
  ret void, !dbg !53
}

; Function Attrs: noinline norecurse nounwind uwtable
define internal i32 @.omp_task_entry.(i32 %0, %struct.kmp_task_t_with_privates* noalias %1) #3 !dbg !54 {
entry:
  %.global_tid..addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %.global_tid..addr.i, metadata !55, metadata !DIExpression()), !dbg !76
  %.part_id..addr.i = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %.part_id..addr.i, metadata !78, metadata !DIExpression()), !dbg !76
  %.privates..addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %.privates..addr.i, metadata !79, metadata !DIExpression()), !dbg !76
  %.copy_fn..addr.i = alloca void (i8*, ...)*, align 8
  call void @llvm.dbg.declare(metadata void (i8*, ...)** %.copy_fn..addr.i, metadata !80, metadata !DIExpression()), !dbg !76
  %.task_t..addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %.task_t..addr.i, metadata !81, metadata !DIExpression()), !dbg !76
  %__context.addr.i = alloca %struct.anon*, align 8
  call void @llvm.dbg.declare(metadata %struct.anon** %__context.addr.i, metadata !82, metadata !DIExpression()), !dbg !76
  %.firstpriv.ptr.addr.i = alloca i32*, align 8
  %.addr = alloca i32, align 4
  %.addr1 = alloca %struct.kmp_task_t_with_privates*, align 8
  store i32 %0, i32* %.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %.addr, metadata !83, metadata !DIExpression()), !dbg !84
  store %struct.kmp_task_t_with_privates* %1, %struct.kmp_task_t_with_privates** %.addr1, align 8
  call void @llvm.dbg.declare(metadata %struct.kmp_task_t_with_privates** %.addr1, metadata !85, metadata !DIExpression()), !dbg !84
  %2 = load i32, i32* %.addr, align 4, !dbg !97
  %3 = load %struct.kmp_task_t_with_privates*, %struct.kmp_task_t_with_privates** %.addr1, align 8, !dbg !97
  %4 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %3, i32 0, i32 0, !dbg !97
  %5 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 2, !dbg !97
  %6 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 0, !dbg !97
  %7 = load i8*, i8** %6, align 8, !dbg !97
  %8 = bitcast i8* %7 to %struct.anon*, !dbg !97
  %9 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %3, i32 0, i32 1, !dbg !97
  %10 = bitcast %struct..kmp_privates.t* %9 to i8*, !dbg !97
  %11 = bitcast %struct.kmp_task_t_with_privates* %3 to i8*, !dbg !97
  store i32 %2, i32* %.global_tid..addr.i, align 4, !noalias !98
  store i32* %5, i32** %.part_id..addr.i, align 8, !noalias !98
  store i8* %10, i8** %.privates..addr.i, align 8, !noalias !98
  store void (i8*, ...)* bitcast (void (%struct..kmp_privates.t*, i32**)* @.omp_task_privates_map. to void (i8*, ...)*), void (i8*, ...)** %.copy_fn..addr.i, align 8, !noalias !98
  store i8* %11, i8** %.task_t..addr.i, align 8, !noalias !98
  store %struct.anon* %8, %struct.anon** %__context.addr.i, align 8, !noalias !98
  %12 = load %struct.anon*, %struct.anon** %__context.addr.i, align 8, !dbg !104, !noalias !98
  %13 = load void (i8*, ...)*, void (i8*, ...)** %.copy_fn..addr.i, align 8, !dbg !104, !noalias !98
  %14 = load i8*, i8** %.privates..addr.i, align 8, !dbg !104, !noalias !98
  call void (i8*, ...) %13(i8* %14, i32** %.firstpriv.ptr.addr.i) #8, !dbg !105
  %15 = load i32*, i32** %.firstpriv.ptr.addr.i, align 8, !dbg !104, !noalias !98
  %16 = load i32, i32* %15, align 4, !dbg !106
  %sub.i = sub i32 %16, 1, !dbg !107
  %call.i = call i32 @fib(i32 %sub.i) #8, !dbg !108
  %17 = getelementptr inbounds %struct.anon, %struct.anon* %12, i32 0, i32 0, !dbg !104
  %18 = load i32*, i32** %17, align 8, !dbg !104
  store i32 %call.i, i32* %18, align 4, !dbg !109
  ret i32 0, !dbg !97
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

declare dso_local i32 @__kmpc_global_thread_num(%struct.ident_t*)

declare dso_local i8* @__kmpc_omp_task_alloc(%struct.ident_t*, i32, i32, i64, i64, i32 (i32, i8*)*)

declare dso_local i32 @__kmpc_omp_task(%struct.ident_t*, i32, i8*)

; Function Attrs: noinline nounwind uwtable
define internal void @.omp_task_privates_map..2(%struct..kmp_privates.t.2* noalias %0, i32** noalias %1) #2 !dbg !110 {
entry:
  %.addr = alloca %struct..kmp_privates.t.2*, align 8
  %.addr1 = alloca i32**, align 8
  store %struct..kmp_privates.t.2* %0, %struct..kmp_privates.t.2** %.addr, align 8
  call void @llvm.dbg.declare(metadata %struct..kmp_privates.t.2** %.addr, metadata !111, metadata !DIExpression()), !dbg !116
  store i32** %1, i32*** %.addr1, align 8
  call void @llvm.dbg.declare(metadata i32*** %.addr1, metadata !117, metadata !DIExpression()), !dbg !116
  %2 = load %struct..kmp_privates.t.2*, %struct..kmp_privates.t.2** %.addr, align 8, !dbg !118
  %3 = getelementptr inbounds %struct..kmp_privates.t.2, %struct..kmp_privates.t.2* %2, i32 0, i32 0, !dbg !118
  %4 = load i32**, i32*** %.addr1, align 8, !dbg !118
  store i32* %3, i32** %4, align 8, !dbg !118
  ret void, !dbg !118
}

; Function Attrs: noinline norecurse nounwind uwtable
define internal i32 @.omp_task_entry..3(i32 %0, %struct.kmp_task_t_with_privates.1* noalias %1) #3 !dbg !119 {
entry:
  %.global_tid..addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %.global_tid..addr.i, metadata !120, metadata !DIExpression()), !dbg !128
  %.part_id..addr.i = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %.part_id..addr.i, metadata !130, metadata !DIExpression()), !dbg !128
  %.privates..addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %.privates..addr.i, metadata !131, metadata !DIExpression()), !dbg !128
  %.copy_fn..addr.i = alloca void (i8*, ...)*, align 8
  call void @llvm.dbg.declare(metadata void (i8*, ...)** %.copy_fn..addr.i, metadata !132, metadata !DIExpression()), !dbg !128
  %.task_t..addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %.task_t..addr.i, metadata !133, metadata !DIExpression()), !dbg !128
  %__context.addr.i = alloca %struct.anon.0*, align 8
  call void @llvm.dbg.declare(metadata %struct.anon.0** %__context.addr.i, metadata !134, metadata !DIExpression()), !dbg !128
  %.firstpriv.ptr.addr.i = alloca i32*, align 8
  %.addr = alloca i32, align 4
  %.addr1 = alloca %struct.kmp_task_t_with_privates.1*, align 8
  store i32 %0, i32* %.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %.addr, metadata !135, metadata !DIExpression()), !dbg !136
  store %struct.kmp_task_t_with_privates.1* %1, %struct.kmp_task_t_with_privates.1** %.addr1, align 8
  call void @llvm.dbg.declare(metadata %struct.kmp_task_t_with_privates.1** %.addr1, metadata !137, metadata !DIExpression()), !dbg !136
  %2 = load i32, i32* %.addr, align 4, !dbg !144
  %3 = load %struct.kmp_task_t_with_privates.1*, %struct.kmp_task_t_with_privates.1** %.addr1, align 8, !dbg !144
  %4 = getelementptr inbounds %struct.kmp_task_t_with_privates.1, %struct.kmp_task_t_with_privates.1* %3, i32 0, i32 0, !dbg !144
  %5 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 2, !dbg !144
  %6 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 0, !dbg !144
  %7 = load i8*, i8** %6, align 8, !dbg !144
  %8 = bitcast i8* %7 to %struct.anon.0*, !dbg !144
  %9 = getelementptr inbounds %struct.kmp_task_t_with_privates.1, %struct.kmp_task_t_with_privates.1* %3, i32 0, i32 1, !dbg !144
  %10 = bitcast %struct..kmp_privates.t.2* %9 to i8*, !dbg !144
  %11 = bitcast %struct.kmp_task_t_with_privates.1* %3 to i8*, !dbg !144
  store i32 %2, i32* %.global_tid..addr.i, align 4, !noalias !145
  store i32* %5, i32** %.part_id..addr.i, align 8, !noalias !145
  store i8* %10, i8** %.privates..addr.i, align 8, !noalias !145
  store void (i8*, ...)* bitcast (void (%struct..kmp_privates.t.2*, i32**)* @.omp_task_privates_map..2 to void (i8*, ...)*), void (i8*, ...)** %.copy_fn..addr.i, align 8, !noalias !145
  store i8* %11, i8** %.task_t..addr.i, align 8, !noalias !145
  store %struct.anon.0* %8, %struct.anon.0** %__context.addr.i, align 8, !noalias !145
  %12 = load %struct.anon.0*, %struct.anon.0** %__context.addr.i, align 8, !dbg !151, !noalias !145
  %13 = load void (i8*, ...)*, void (i8*, ...)** %.copy_fn..addr.i, align 8, !dbg !151, !noalias !145
  %14 = load i8*, i8** %.privates..addr.i, align 8, !dbg !151, !noalias !145
  call void (i8*, ...) %13(i8* %14, i32** %.firstpriv.ptr.addr.i) #8, !dbg !152
  %15 = load i32*, i32** %.firstpriv.ptr.addr.i, align 8, !dbg !151, !noalias !145
  %16 = load i32, i32* %15, align 4, !dbg !153
  %sub.i = sub i32 %16, 2, !dbg !154
  %call.i = call i32 @fib(i32 %sub.i) #8, !dbg !155
  %17 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %12, i32 0, i32 0, !dbg !151
  %18 = load i32*, i32** %17, align 8, !dbg !151
  store i32 %call.i, i32* %18, align 4, !dbg !156
  ret i32 0, !dbg !144
}

declare dso_local i32 @__kmpc_omp_taskwait(%struct.ident_t*, i32)

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !157 {
entry:
  %retval = alloca i32, align 4
  %result = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata i32* %result, metadata !160, metadata !DIExpression()), !dbg !161
  store i32 0, i32* %result, align 4, !dbg !161
  %2 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !162
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @5, i32 0, i32 0), i8** %2, align 8, !dbg !162
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*)* @.omp_outlined..4 to void (i32*, i32*, ...)*), i32* %result), !dbg !162
  %3 = load i32, i32* @input, align 4, !dbg !163
  %4 = load i32, i32* %result, align 4, !dbg !164
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 %3, i32 %4), !dbg !165
  %5 = load i32, i32* %result, align 4, !dbg !166
  %cmp = icmp eq i32 %5, 832040, !dbg !166
  br i1 %cmp, label %if.then, label %if.else, !dbg !169

if.then:                                          ; preds = %entry
  br label %if.end, !dbg !169

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 79, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #9, !dbg !166
  unreachable, !dbg !166

if.end:                                           ; preds = %if.then
  ret i32 0, !dbg !170
}

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %result) #5 !dbg !171 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %result.addr = alloca i32*, align 8
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !175, metadata !DIExpression()), !dbg !176
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !177, metadata !DIExpression()), !dbg !176
  store i32* %result, i32** %result.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %result.addr, metadata !178, metadata !DIExpression()), !dbg !179
  %2 = load i32*, i32** %result.addr, align 8, !dbg !180
  %3 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !181
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @4, i32 0, i32 0), i8** %3, align 8, !dbg !181
  %4 = load i32*, i32** %.global_tid..addr, align 8, !dbg !181
  %5 = load i32, i32* %4, align 4, !dbg !181
  %6 = call i32 @__kmpc_single(%struct.ident_t* %.kmpc_loc.addr, i32 %5), !dbg !181
  %7 = icmp ne i32 %6, 0, !dbg !181
  br i1 %7, label %omp_if.then, label %omp_if.end, !dbg !181

omp_if.then:                                      ; preds = %entry
  %8 = load i32, i32* @input, align 4, !dbg !183
  %call = call i32 @fib(i32 %8), !dbg !186
  store i32 %call, i32* %2, align 4, !dbg !187
  call void @__kmpc_end_single(%struct.ident_t* %.kmpc_loc.addr, i32 %5), !dbg !188
  br label %omp_if.end, !dbg !188

omp_if.end:                                       ; preds = %omp_if.then, %entry
  %9 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !189
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @4, i32 0, i32 0), i8** %9, align 8, !dbg !189
  call void @__kmpc_barrier(%struct.ident_t* %.kmpc_loc.addr, i32 %5), !dbg !189
  ret void, !dbg !190
}

declare dso_local void @__kmpc_end_single(%struct.ident_t*, i32)

declare dso_local i32 @__kmpc_single(%struct.ident_t*, i32)

declare dso_local void @__kmpc_barrier(%struct.ident_t*, i32)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined..4(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %result) #5 !dbg !191 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %result.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !192, metadata !DIExpression()), !dbg !193
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !194, metadata !DIExpression()), !dbg !193
  store i32* %result, i32** %result.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %result.addr, metadata !195, metadata !DIExpression()), !dbg !193
  %0 = load i32*, i32** %result.addr, align 8, !dbg !196
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !196
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !196
  %3 = load i32*, i32** %result.addr, align 8, !dbg !196
  call void @.omp_outlined._debug__(i32* %1, i32* %2, i32* %3) #8, !dbg !196
  ret void, !dbg !196
}

declare !callback !197 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

declare dso_local i32 @printf(i8*, ...) #6

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) #7

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noinline norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind willreturn }
attributes #5 = { noinline norecurse nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind }
attributes #9 = { noreturn nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!7, !8, !9}
!llvm.ident = !{!10}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "input", scope: !2, file: !3, line: 52, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.1 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "DRB105-taskwait-orig-no.c", directory: "/home/yanze/code/OpenRace/tests/data/integration/dataracebench")
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
!34 = !DILocation(line: 64, column: 1, scope: !24)
!35 = !DILocation(line: 65, column: 12, scope: !24)
!36 = !DILocation(line: 65, column: 14, scope: !24)
!37 = !DILocation(line: 65, column: 13, scope: !24)
!38 = !DILocation(line: 65, column: 5, scope: !24)
!39 = !DILocation(line: 67, column: 1, scope: !11)
!40 = distinct !DISubprogram(linkageName: ".omp_task_privates_map.", scope: !3, file: !3, line: 60, type: !41, scopeLine: 60, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!41 = !DISubroutineType(types: !4)
!42 = !DILocalVariable(arg: 1, scope: !40, type: !43, flags: DIFlagArtificial)
!43 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !44)
!44 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !45)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: ".kmp_privates.t", file: !3, size: 32, elements: !4)
!47 = !DILocation(line: 0, scope: !40)
!48 = !DILocalVariable(arg: 2, scope: !40, type: !49, flags: DIFlagArtificial)
!49 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !50)
!50 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !51)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!53 = !DILocation(line: 60, column: 1, scope: !40)
!54 = distinct !DISubprogram(linkageName: ".omp_task_entry.", scope: !3, file: !3, line: 60, type: !41, scopeLine: 60, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!55 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !56, type: !59, flags: DIFlagArtificial)
!56 = distinct !DISubprogram(name: ".omp_outlined.", scope: !3, file: !3, line: 61, type: !57, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!57 = !DISubroutineType(types: !58)
!58 = !{null, !59, !60, !63, !66, !71, !72}
!59 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!60 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !61)
!61 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !62)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !64)
!64 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !65)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !67)
!67 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !68)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DISubroutineType(types: !70)
!70 = !{null, !63, null}
!71 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !65)
!72 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !73)
!73 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !74)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !11, file: !3, line: 60, size: 128, elements: !4)
!76 = !DILocation(line: 0, scope: !56, inlinedAt: !77)
!77 = distinct !DILocation(line: 60, column: 1, scope: !54)
!78 = !DILocalVariable(name: ".part_id.", arg: 2, scope: !56, type: !60, flags: DIFlagArtificial)
!79 = !DILocalVariable(name: ".privates.", arg: 3, scope: !56, type: !63, flags: DIFlagArtificial)
!80 = !DILocalVariable(name: ".copy_fn.", arg: 4, scope: !56, type: !66, flags: DIFlagArtificial)
!81 = !DILocalVariable(name: ".task_t.", arg: 5, scope: !56, type: !71, flags: DIFlagArtificial)
!82 = !DILocalVariable(name: "__context", arg: 6, scope: !56, type: !72, flags: DIFlagArtificial)
!83 = !DILocalVariable(arg: 1, scope: !54, type: !14, flags: DIFlagArtificial)
!84 = !DILocation(line: 0, scope: !54)
!85 = !DILocalVariable(arg: 2, scope: !54, type: !86, flags: DIFlagArtificial)
!86 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !87)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t_with_privates", file: !3, size: 384, elements: !89)
!89 = !{!90, !96}
!90 = !DIDerivedType(tag: DW_TAG_member, scope: !88, file: !3, baseType: !91, size: 320)
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t", file: !3, size: 320, elements: !92)
!92 = !{!93, !95}
!93 = !DIDerivedType(tag: DW_TAG_member, scope: !91, file: !3, baseType: !94, size: 64, offset: 192)
!94 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "kmp_cmplrdata_t", file: !3, size: 64, elements: !4)
!95 = !DIDerivedType(tag: DW_TAG_member, scope: !91, file: !3, baseType: !94, size: 64, offset: 256)
!96 = !DIDerivedType(tag: DW_TAG_member, scope: !88, file: !3, baseType: !46, size: 32, offset: 320)
!97 = !DILocation(line: 60, column: 1, scope: !54)
!98 = !{!99, !101, !102, !103}
!99 = distinct !{!99, !100, !".omp_outlined.: %.part_id."}
!100 = distinct !{!100, !".omp_outlined."}
!101 = distinct !{!101, !100, !".omp_outlined.: %.privates."}
!102 = distinct !{!102, !100, !".omp_outlined.: %.copy_fn."}
!103 = distinct !{!103, !100, !".omp_outlined.: %__context"}
!104 = !DILocation(line: 61, column: 5, scope: !56, inlinedAt: !77)
!105 = !DILocation(line: 60, column: 1, scope: !56, inlinedAt: !77)
!106 = !DILocation(line: 61, column: 11, scope: !56, inlinedAt: !77)
!107 = !DILocation(line: 61, column: 12, scope: !56, inlinedAt: !77)
!108 = !DILocation(line: 61, column: 7, scope: !56, inlinedAt: !77)
!109 = !DILocation(line: 61, column: 6, scope: !56, inlinedAt: !77)
!110 = distinct !DISubprogram(linkageName: ".omp_task_privates_map..2", scope: !3, file: !3, line: 62, type: !41, scopeLine: 62, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!111 = !DILocalVariable(arg: 1, scope: !110, type: !112, flags: DIFlagArtificial)
!112 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !113)
!113 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !114)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: ".kmp_privates.t", file: !3, size: 32, elements: !4)
!116 = !DILocation(line: 0, scope: !110)
!117 = !DILocalVariable(arg: 2, scope: !110, type: !49, flags: DIFlagArtificial)
!118 = !DILocation(line: 62, column: 1, scope: !110)
!119 = distinct !DISubprogram(linkageName: ".omp_task_entry..3", scope: !3, file: !3, line: 62, type: !41, scopeLine: 62, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!120 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !121, type: !59, flags: DIFlagArtificial)
!121 = distinct !DISubprogram(name: ".omp_outlined..1", scope: !3, file: !3, line: 63, type: !122, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!122 = !DISubroutineType(types: !123)
!123 = !{null, !59, !60, !63, !66, !71, !124}
!124 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !125)
!125 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !126)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!127 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !11, file: !3, line: 62, size: 128, elements: !4)
!128 = !DILocation(line: 0, scope: !121, inlinedAt: !129)
!129 = distinct !DILocation(line: 62, column: 1, scope: !119)
!130 = !DILocalVariable(name: ".part_id.", arg: 2, scope: !121, type: !60, flags: DIFlagArtificial)
!131 = !DILocalVariable(name: ".privates.", arg: 3, scope: !121, type: !63, flags: DIFlagArtificial)
!132 = !DILocalVariable(name: ".copy_fn.", arg: 4, scope: !121, type: !66, flags: DIFlagArtificial)
!133 = !DILocalVariable(name: ".task_t.", arg: 5, scope: !121, type: !71, flags: DIFlagArtificial)
!134 = !DILocalVariable(name: "__context", arg: 6, scope: !121, type: !124, flags: DIFlagArtificial)
!135 = !DILocalVariable(arg: 1, scope: !119, type: !14, flags: DIFlagArtificial)
!136 = !DILocation(line: 0, scope: !119)
!137 = !DILocalVariable(arg: 2, scope: !119, type: !138, flags: DIFlagArtificial)
!138 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !139)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t_with_privates", file: !3, size: 384, elements: !141)
!141 = !{!142, !143}
!142 = !DIDerivedType(tag: DW_TAG_member, scope: !140, file: !3, baseType: !91, size: 320)
!143 = !DIDerivedType(tag: DW_TAG_member, scope: !140, file: !3, baseType: !115, size: 32, offset: 320)
!144 = !DILocation(line: 62, column: 1, scope: !119)
!145 = !{!146, !148, !149, !150}
!146 = distinct !{!146, !147, !".omp_outlined..1: %.part_id."}
!147 = distinct !{!147, !".omp_outlined..1"}
!148 = distinct !{!148, !147, !".omp_outlined..1: %.privates."}
!149 = distinct !{!149, !147, !".omp_outlined..1: %.copy_fn."}
!150 = distinct !{!150, !147, !".omp_outlined..1: %__context"}
!151 = !DILocation(line: 63, column: 5, scope: !121, inlinedAt: !129)
!152 = !DILocation(line: 62, column: 1, scope: !121, inlinedAt: !129)
!153 = !DILocation(line: 63, column: 11, scope: !121, inlinedAt: !129)
!154 = !DILocation(line: 63, column: 12, scope: !121, inlinedAt: !129)
!155 = !DILocation(line: 63, column: 7, scope: !121, inlinedAt: !129)
!156 = !DILocation(line: 63, column: 6, scope: !121, inlinedAt: !129)
!157 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 68, type: !158, scopeLine: 69, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!158 = !DISubroutineType(types: !159)
!159 = !{!14}
!160 = !DILocalVariable(name: "result", scope: !157, file: !3, line: 70, type: !14)
!161 = !DILocation(line: 70, column: 7, scope: !157)
!162 = !DILocation(line: 71, column: 1, scope: !157)
!163 = !DILocation(line: 78, column: 27, scope: !157)
!164 = !DILocation(line: 78, column: 34, scope: !157)
!165 = !DILocation(line: 78, column: 3, scope: !157)
!166 = !DILocation(line: 79, column: 3, scope: !167)
!167 = distinct !DILexicalBlock(scope: !168, file: !3, line: 79, column: 3)
!168 = distinct !DILexicalBlock(scope: !157, file: !3, line: 79, column: 3)
!169 = !DILocation(line: 79, column: 3, scope: !168)
!170 = !DILocation(line: 80, column: 3, scope: !157)
!171 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !3, file: !3, line: 72, type: !172, scopeLine: 72, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!172 = !DISubroutineType(types: !173)
!173 = !{null, !60, !60, !174}
!174 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !14, size: 64)
!175 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !171, type: !60, flags: DIFlagArtificial)
!176 = !DILocation(line: 0, scope: !171)
!177 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !171, type: !60, flags: DIFlagArtificial)
!178 = !DILocalVariable(name: "result", arg: 3, scope: !171, file: !3, line: 70, type: !174)
!179 = !DILocation(line: 70, column: 7, scope: !171)
!180 = !DILocation(line: 72, column: 3, scope: !171)
!181 = !DILocation(line: 73, column: 4, scope: !182)
!182 = distinct !DILexicalBlock(scope: !171, file: !3, line: 72, column: 3)
!183 = !DILocation(line: 75, column: 20, scope: !184)
!184 = distinct !DILexicalBlock(scope: !185, file: !3, line: 74, column: 5)
!185 = distinct !DILexicalBlock(scope: !182, file: !3, line: 73, column: 4)
!186 = !DILocation(line: 75, column: 16, scope: !184)
!187 = !DILocation(line: 75, column: 14, scope: !184)
!188 = !DILocation(line: 76, column: 5, scope: !184)
!189 = !DILocation(line: 73, column: 22, scope: !185)
!190 = !DILocation(line: 77, column: 3, scope: !171)
!191 = distinct !DISubprogram(name: ".omp_outlined..4", scope: !3, file: !3, line: 72, type: !172, scopeLine: 72, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!192 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !191, type: !60, flags: DIFlagArtificial)
!193 = !DILocation(line: 0, scope: !191)
!194 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !191, type: !60, flags: DIFlagArtificial)
!195 = !DILocalVariable(name: "result", arg: 3, scope: !191, type: !174, flags: DIFlagArtificial)
!196 = !DILocation(line: 72, column: 3, scope: !191)
!197 = !{!198}
!198 = !{i64 2, i64 -1, i64 -1, i1 true}
