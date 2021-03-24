; ModuleID = 'DRB072-taskdep1-orig-no.c'
source_filename = "DRB072-taskdep1-orig-no.c"
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
@1 = private unnamed_addr constant [39 x i8] c";DRB072-taskdep1-orig-no.c;main;56;1;;\00", align 1
@2 = private unnamed_addr constant [39 x i8] c";DRB072-taskdep1-orig-no.c;main;58;1;;\00", align 1
@3 = private unnamed_addr constant [39 x i8] c";DRB072-taskdep1-orig-no.c;main;60;1;;\00", align 1
@4 = private unnamed_addr constant [39 x i8] c";DRB072-taskdep1-orig-no.c;main;55;1;;\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"i==2\00", align 1
@.str.5 = private unnamed_addr constant [26 x i8] c"DRB072-taskdep1-orig-no.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [11 x i8] c"int main()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !7 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata i32* %i, metadata !11, metadata !DIExpression()), !dbg !12
  store i32 0, i32* %i, align 4, !dbg !12
  %2 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !13
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @4, i32 0, i32 0), i8** %2, align 8, !dbg !13
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*)* @.omp_outlined..3 to void (i32*, i32*, ...)*), i32* %i), !dbg !13
  %3 = load i32, i32* %i, align 4, !dbg !14
  %cmp = icmp eq i32 %3, 2, !dbg !14
  br i1 %cmp, label %if.then, label %if.else, !dbg !17

if.then:                                          ; preds = %entry
  br label %if.end, !dbg !17

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.5, i64 0, i64 0), i32 64, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #6, !dbg !14
  unreachable, !dbg !14

if.end:                                           ; preds = %if.then
  ret i32 0, !dbg !18
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %i) #2 !dbg !19 {
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
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !27, metadata !DIExpression()), !dbg !28
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !29, metadata !DIExpression()), !dbg !28
  store i32* %i, i32** %i.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %i.addr, metadata !30, metadata !DIExpression()), !dbg !31
  %2 = load i32*, i32** %i.addr, align 8, !dbg !32
  %3 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !32
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @1, i32 0, i32 0), i8** %3, align 8, !dbg !32
  %4 = load i32*, i32** %.global_tid..addr, align 8, !dbg !32
  %5 = load i32, i32* %4, align 4, !dbg !32
  %6 = call i32 @__kmpc_single(%struct.ident_t* %.kmpc_loc.addr, i32 %5), !dbg !32
  %7 = icmp ne i32 %6, 0, !dbg !32
  br i1 %7, label %omp_if.then, label %omp_if.end, !dbg !32

omp_if.then:                                      ; preds = %entry
  %8 = getelementptr inbounds %struct.anon, %struct.anon* %agg.captured, i32 0, i32 0, !dbg !33
  store i32* %2, i32** %8, align 8, !dbg !33
  %9 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !33
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @2, i32 0, i32 0), i8** %9, align 8, !dbg !33
  %10 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* %.kmpc_loc.addr, i32 %5, i32 1, i64 40, i64 8, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates*)* @.omp_task_entry. to i32 (i32, i8*)*)), !dbg !33
  %11 = bitcast i8* %10 to %struct.kmp_task_t_with_privates*, !dbg !33
  %12 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %11, i32 0, i32 0, !dbg !33
  %13 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %12, i32 0, i32 0, !dbg !33
  %14 = load i8*, i8** %13, align 8, !dbg !33
  %15 = bitcast %struct.anon* %agg.captured to i8*, !dbg !33
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* align 8 %15, i64 8, i1 false), !dbg !33
  %16 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %.dep.arr.addr, i64 0, i64 0, !dbg !33
  %17 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %16, i32 0, i32 0, !dbg !33
  %18 = ptrtoint i32* %2 to i64, !dbg !33
  store i64 %18, i64* %17, align 8, !dbg !33
  %19 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %16, i32 0, i32 1, !dbg !33
  store i64 4, i64* %19, align 8, !dbg !33
  %20 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %16, i32 0, i32 2, !dbg !33
  store i8 3, i8* %20, align 8, !dbg !33
  %21 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %.dep.arr.addr, i64 0, i64 0, !dbg !33
  %22 = bitcast %struct.kmp_depend_info* %21 to i8*, !dbg !33
  %23 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !33
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @2, i32 0, i32 0), i8** %23, align 8, !dbg !33
  %24 = call i32 @__kmpc_omp_task_with_deps(%struct.ident_t* %.kmpc_loc.addr, i32 %5, i8* %10, i32 1, i8* %22, i32 0, i8* null), !dbg !33
  %25 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %agg.captured1, i32 0, i32 0, !dbg !36
  store i32* %2, i32** %25, align 8, !dbg !36
  %26 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !36
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @3, i32 0, i32 0), i8** %26, align 8, !dbg !36
  %27 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* %.kmpc_loc.addr, i32 %5, i32 1, i64 40, i64 8, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates.1*)* @.omp_task_entry..2 to i32 (i32, i8*)*)), !dbg !36
  %28 = bitcast i8* %27 to %struct.kmp_task_t_with_privates.1*, !dbg !36
  %29 = getelementptr inbounds %struct.kmp_task_t_with_privates.1, %struct.kmp_task_t_with_privates.1* %28, i32 0, i32 0, !dbg !36
  %30 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %29, i32 0, i32 0, !dbg !36
  %31 = load i8*, i8** %30, align 8, !dbg !36
  %32 = bitcast %struct.anon.0* %agg.captured1 to i8*, !dbg !36
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %31, i8* align 8 %32, i64 8, i1 false), !dbg !36
  %33 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %.dep.arr.addr2, i64 0, i64 0, !dbg !36
  %34 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %33, i32 0, i32 0, !dbg !36
  %35 = ptrtoint i32* %2 to i64, !dbg !36
  store i64 %35, i64* %34, align 8, !dbg !36
  %36 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %33, i32 0, i32 1, !dbg !36
  store i64 4, i64* %36, align 8, !dbg !36
  %37 = getelementptr inbounds %struct.kmp_depend_info, %struct.kmp_depend_info* %33, i32 0, i32 2, !dbg !36
  store i8 1, i8* %37, align 8, !dbg !36
  %38 = getelementptr inbounds [1 x %struct.kmp_depend_info], [1 x %struct.kmp_depend_info]* %.dep.arr.addr2, i64 0, i64 0, !dbg !36
  %39 = bitcast %struct.kmp_depend_info* %38 to i8*, !dbg !36
  %40 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !36
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @3, i32 0, i32 0), i8** %40, align 8, !dbg !36
  %41 = call i32 @__kmpc_omp_task_with_deps(%struct.ident_t* %.kmpc_loc.addr, i32 %5, i8* %27, i32 1, i8* %39, i32 0, i8* null), !dbg !36
  call void @__kmpc_end_single(%struct.ident_t* %.kmpc_loc.addr, i32 %5), !dbg !37
  br label %omp_if.end, !dbg !37

omp_if.end:                                       ; preds = %omp_if.then, %entry
  %42 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !38
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @1, i32 0, i32 0), i8** %42, align 8, !dbg !38
  call void @__kmpc_barrier(%struct.ident_t* %.kmpc_loc.addr, i32 %5), !dbg !38
  ret void, !dbg !39
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local void @__kmpc_end_single(%struct.ident_t*, i32)

declare dso_local i32 @__kmpc_single(%struct.ident_t*, i32)

; Function Attrs: noinline norecurse nounwind uwtable
define internal i32 @.omp_task_entry.(i32 %0, %struct.kmp_task_t_with_privates* noalias %1) #4 !dbg !40 {
entry:
  %.global_tid..addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %.global_tid..addr.i, metadata !42, metadata !DIExpression()), !dbg !59
  %.part_id..addr.i = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %.part_id..addr.i, metadata !61, metadata !DIExpression()), !dbg !59
  %.privates..addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %.privates..addr.i, metadata !62, metadata !DIExpression()), !dbg !59
  %.copy_fn..addr.i = alloca void (i8*, ...)*, align 8
  call void @llvm.dbg.declare(metadata void (i8*, ...)** %.copy_fn..addr.i, metadata !63, metadata !DIExpression()), !dbg !59
  %.task_t..addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %.task_t..addr.i, metadata !64, metadata !DIExpression()), !dbg !59
  %__context.addr.i = alloca %struct.anon*, align 8
  call void @llvm.dbg.declare(metadata %struct.anon** %__context.addr.i, metadata !65, metadata !DIExpression()), !dbg !59
  %.addr = alloca i32, align 4
  %.addr1 = alloca %struct.kmp_task_t_with_privates*, align 8
  store i32 %0, i32* %.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %.addr, metadata !66, metadata !DIExpression()), !dbg !67
  store %struct.kmp_task_t_with_privates* %1, %struct.kmp_task_t_with_privates** %.addr1, align 8
  call void @llvm.dbg.declare(metadata %struct.kmp_task_t_with_privates** %.addr1, metadata !68, metadata !DIExpression()), !dbg !67
  %2 = load i32, i32* %.addr, align 4, !dbg !79
  %3 = load %struct.kmp_task_t_with_privates*, %struct.kmp_task_t_with_privates** %.addr1, align 8, !dbg !79
  %4 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %3, i32 0, i32 0, !dbg !79
  %5 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 2, !dbg !79
  %6 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 0, !dbg !79
  %7 = load i8*, i8** %6, align 8, !dbg !79
  %8 = bitcast i8* %7 to %struct.anon*, !dbg !79
  %9 = bitcast %struct.kmp_task_t_with_privates* %3 to i8*, !dbg !79
  store i32 %2, i32* %.global_tid..addr.i, align 4, !noalias !80
  store i32* %5, i32** %.part_id..addr.i, align 8, !noalias !80
  store i8* null, i8** %.privates..addr.i, align 8, !noalias !80
  store void (i8*, ...)* null, void (i8*, ...)** %.copy_fn..addr.i, align 8, !noalias !80
  store i8* %9, i8** %.task_t..addr.i, align 8, !noalias !80
  store %struct.anon* %8, %struct.anon** %__context.addr.i, align 8, !noalias !80
  %10 = load %struct.anon*, %struct.anon** %__context.addr.i, align 8, !dbg !86, !noalias !80
  %11 = getelementptr inbounds %struct.anon, %struct.anon* %10, i32 0, i32 0, !dbg !86
  %12 = load i32*, i32** %11, align 8, !dbg !86
  store i32 1, i32* %12, align 4, !dbg !87
  ret i32 0, !dbg !79
}

declare dso_local i8* @__kmpc_omp_task_alloc(%struct.ident_t*, i32, i32, i64, i64, i32 (i32, i8*)*)

declare dso_local i32 @__kmpc_omp_task_with_deps(%struct.ident_t*, i32, i8*, i32, i8*, i32, i8*)

; Function Attrs: noinline norecurse nounwind uwtable
define internal i32 @.omp_task_entry..2(i32 %0, %struct.kmp_task_t_with_privates.1* noalias %1) #4 !dbg !88 {
entry:
  %.global_tid..addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %.global_tid..addr.i, metadata !89, metadata !DIExpression()), !dbg !97
  %.part_id..addr.i = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %.part_id..addr.i, metadata !99, metadata !DIExpression()), !dbg !97
  %.privates..addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %.privates..addr.i, metadata !100, metadata !DIExpression()), !dbg !97
  %.copy_fn..addr.i = alloca void (i8*, ...)*, align 8
  call void @llvm.dbg.declare(metadata void (i8*, ...)** %.copy_fn..addr.i, metadata !101, metadata !DIExpression()), !dbg !97
  %.task_t..addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %.task_t..addr.i, metadata !102, metadata !DIExpression()), !dbg !97
  %__context.addr.i = alloca %struct.anon.0*, align 8
  call void @llvm.dbg.declare(metadata %struct.anon.0** %__context.addr.i, metadata !103, metadata !DIExpression()), !dbg !97
  %.addr = alloca i32, align 4
  %.addr1 = alloca %struct.kmp_task_t_with_privates.1*, align 8
  store i32 %0, i32* %.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %.addr, metadata !104, metadata !DIExpression()), !dbg !105
  store %struct.kmp_task_t_with_privates.1* %1, %struct.kmp_task_t_with_privates.1** %.addr1, align 8
  call void @llvm.dbg.declare(metadata %struct.kmp_task_t_with_privates.1** %.addr1, metadata !106, metadata !DIExpression()), !dbg !105
  %2 = load i32, i32* %.addr, align 4, !dbg !112
  %3 = load %struct.kmp_task_t_with_privates.1*, %struct.kmp_task_t_with_privates.1** %.addr1, align 8, !dbg !112
  %4 = getelementptr inbounds %struct.kmp_task_t_with_privates.1, %struct.kmp_task_t_with_privates.1* %3, i32 0, i32 0, !dbg !112
  %5 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 2, !dbg !112
  %6 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 0, !dbg !112
  %7 = load i8*, i8** %6, align 8, !dbg !112
  %8 = bitcast i8* %7 to %struct.anon.0*, !dbg !112
  %9 = bitcast %struct.kmp_task_t_with_privates.1* %3 to i8*, !dbg !112
  store i32 %2, i32* %.global_tid..addr.i, align 4, !noalias !113
  store i32* %5, i32** %.part_id..addr.i, align 8, !noalias !113
  store i8* null, i8** %.privates..addr.i, align 8, !noalias !113
  store void (i8*, ...)* null, void (i8*, ...)** %.copy_fn..addr.i, align 8, !noalias !113
  store i8* %9, i8** %.task_t..addr.i, align 8, !noalias !113
  store %struct.anon.0* %8, %struct.anon.0** %__context.addr.i, align 8, !noalias !113
  %10 = load %struct.anon.0*, %struct.anon.0** %__context.addr.i, align 8, !dbg !119, !noalias !113
  %11 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %10, i32 0, i32 0, !dbg !119
  %12 = load i32*, i32** %11, align 8, !dbg !119
  store i32 2, i32* %12, align 4, !dbg !120
  ret i32 0, !dbg !112
}

declare dso_local void @__kmpc_barrier(%struct.ident_t*, i32)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined..3(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %i) #2 !dbg !121 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %i.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !122, metadata !DIExpression()), !dbg !123
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !124, metadata !DIExpression()), !dbg !123
  store i32* %i, i32** %i.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %i.addr, metadata !125, metadata !DIExpression()), !dbg !123
  %0 = load i32*, i32** %i.addr, align 8, !dbg !126
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !126
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !126
  %3 = load i32*, i32** %i.addr, align 8, !dbg !126
  call void @.omp_outlined._debug__(i32* %1, i32* %2, i32* %3) #7, !dbg !126
  ret void, !dbg !126
}

declare !callback !127 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) #5

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noinline norecurse nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { noinline norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.1 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "DRB072-taskdep1-orig-no.c", directory: "/home/yanze/code/OpenRace/tests/data/integration/dataracebench")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.1 "}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 52, type: !8, scopeLine: 53, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DILocalVariable(name: "i", scope: !7, file: !1, line: 54, type: !10)
!12 = !DILocation(line: 54, column: 7, scope: !7)
!13 = !DILocation(line: 55, column: 1, scope: !7)
!14 = !DILocation(line: 64, column: 3, scope: !15)
!15 = distinct !DILexicalBlock(scope: !16, file: !1, line: 64, column: 3)
!16 = distinct !DILexicalBlock(scope: !7, file: !1, line: 64, column: 3)
!17 = !DILocation(line: 64, column: 3, scope: !16)
!18 = !DILocation(line: 65, column: 3, scope: !7)
!19 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 56, type: !20, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!20 = !DISubroutineType(types: !21)
!21 = !{null, !22, !22, !26}
!22 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !23)
!23 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !24)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!26 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !10, size: 64)
!27 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !19, type: !22, flags: DIFlagArtificial)
!28 = !DILocation(line: 0, scope: !19)
!29 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !19, type: !22, flags: DIFlagArtificial)
!30 = !DILocalVariable(name: "i", arg: 3, scope: !19, file: !1, line: 54, type: !26)
!31 = !DILocation(line: 54, column: 7, scope: !19)
!32 = !DILocation(line: 56, column: 1, scope: !19)
!33 = !DILocation(line: 58, column: 1, scope: !34)
!34 = distinct !DILexicalBlock(scope: !35, file: !1, line: 57, column: 3)
!35 = distinct !DILexicalBlock(scope: !19, file: !1, line: 56, column: 1)
!36 = !DILocation(line: 60, column: 1, scope: !34)
!37 = !DILocation(line: 62, column: 3, scope: !34)
!38 = !DILocation(line: 56, column: 19, scope: !35)
!39 = !DILocation(line: 56, column: 19, scope: !19)
!40 = distinct !DISubprogram(linkageName: ".omp_task_entry.", scope: !1, file: !1, line: 58, type: !41, scopeLine: 58, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!41 = !DISubroutineType(types: !2)
!42 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !43, type: !25, flags: DIFlagArtificial)
!43 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 59, type: !44, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!44 = !DISubroutineType(types: !45)
!45 = !{null, !25, !22, !46, !49, !54, !55}
!46 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !47)
!47 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !48)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !50)
!50 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !51)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = !DISubroutineType(types: !53)
!53 = !{null, !46, null}
!54 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !48)
!55 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !56)
!56 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !57)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 58, size: 64, elements: !2)
!59 = !DILocation(line: 0, scope: !43, inlinedAt: !60)
!60 = distinct !DILocation(line: 58, column: 1, scope: !40)
!61 = !DILocalVariable(name: ".part_id.", arg: 2, scope: !43, type: !22, flags: DIFlagArtificial)
!62 = !DILocalVariable(name: ".privates.", arg: 3, scope: !43, type: !46, flags: DIFlagArtificial)
!63 = !DILocalVariable(name: ".copy_fn.", arg: 4, scope: !43, type: !49, flags: DIFlagArtificial)
!64 = !DILocalVariable(name: ".task_t.", arg: 5, scope: !43, type: !54, flags: DIFlagArtificial)
!65 = !DILocalVariable(name: "__context", arg: 6, scope: !43, type: !55, flags: DIFlagArtificial)
!66 = !DILocalVariable(arg: 1, scope: !40, type: !10, flags: DIFlagArtificial)
!67 = !DILocation(line: 0, scope: !40)
!68 = !DILocalVariable(arg: 2, scope: !40, type: !69, flags: DIFlagArtificial)
!69 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !70)
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t_with_privates", file: !1, size: 320, elements: !72)
!72 = !{!73}
!73 = !DIDerivedType(tag: DW_TAG_member, scope: !71, file: !1, baseType: !74, size: 320)
!74 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t", file: !1, size: 320, elements: !75)
!75 = !{!76, !78}
!76 = !DIDerivedType(tag: DW_TAG_member, scope: !74, file: !1, baseType: !77, size: 64, offset: 192)
!77 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "kmp_cmplrdata_t", file: !1, size: 64, elements: !2)
!78 = !DIDerivedType(tag: DW_TAG_member, scope: !74, file: !1, baseType: !77, size: 64, offset: 256)
!79 = !DILocation(line: 58, column: 1, scope: !40)
!80 = !{!81, !83, !84, !85}
!81 = distinct !{!81, !82, !".omp_outlined.: %.part_id."}
!82 = distinct !{!82, !".omp_outlined."}
!83 = distinct !{!83, !82, !".omp_outlined.: %.privates."}
!84 = distinct !{!84, !82, !".omp_outlined.: %.copy_fn."}
!85 = distinct !{!85, !82, !".omp_outlined.: %__context"}
!86 = !DILocation(line: 59, column: 5, scope: !43, inlinedAt: !60)
!87 = !DILocation(line: 59, column: 7, scope: !43, inlinedAt: !60)
!88 = distinct !DISubprogram(linkageName: ".omp_task_entry..2", scope: !1, file: !1, line: 60, type: !41, scopeLine: 60, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!89 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !90, type: !25, flags: DIFlagArtificial)
!90 = distinct !DISubprogram(name: ".omp_outlined..1", scope: !1, file: !1, line: 61, type: !91, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!91 = !DISubroutineType(types: !92)
!92 = !{null, !25, !22, !46, !49, !54, !93}
!93 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !94)
!94 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !95)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!96 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 60, size: 64, elements: !2)
!97 = !DILocation(line: 0, scope: !90, inlinedAt: !98)
!98 = distinct !DILocation(line: 60, column: 1, scope: !88)
!99 = !DILocalVariable(name: ".part_id.", arg: 2, scope: !90, type: !22, flags: DIFlagArtificial)
!100 = !DILocalVariable(name: ".privates.", arg: 3, scope: !90, type: !46, flags: DIFlagArtificial)
!101 = !DILocalVariable(name: ".copy_fn.", arg: 4, scope: !90, type: !49, flags: DIFlagArtificial)
!102 = !DILocalVariable(name: ".task_t.", arg: 5, scope: !90, type: !54, flags: DIFlagArtificial)
!103 = !DILocalVariable(name: "__context", arg: 6, scope: !90, type: !93, flags: DIFlagArtificial)
!104 = !DILocalVariable(arg: 1, scope: !88, type: !10, flags: DIFlagArtificial)
!105 = !DILocation(line: 0, scope: !88)
!106 = !DILocalVariable(arg: 2, scope: !88, type: !107, flags: DIFlagArtificial)
!107 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !108)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t_with_privates", file: !1, size: 320, elements: !110)
!110 = !{!111}
!111 = !DIDerivedType(tag: DW_TAG_member, scope: !109, file: !1, baseType: !74, size: 320)
!112 = !DILocation(line: 60, column: 1, scope: !88)
!113 = !{!114, !116, !117, !118}
!114 = distinct !{!114, !115, !".omp_outlined..1: %.part_id."}
!115 = distinct !{!115, !".omp_outlined..1"}
!116 = distinct !{!116, !115, !".omp_outlined..1: %.privates."}
!117 = distinct !{!117, !115, !".omp_outlined..1: %.copy_fn."}
!118 = distinct !{!118, !115, !".omp_outlined..1: %__context"}
!119 = !DILocation(line: 61, column: 5, scope: !90, inlinedAt: !98)
!120 = !DILocation(line: 61, column: 7, scope: !90, inlinedAt: !98)
!121 = distinct !DISubprogram(name: ".omp_outlined..3", scope: !1, file: !1, line: 56, type: !20, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!122 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !121, type: !22, flags: DIFlagArtificial)
!123 = !DILocation(line: 0, scope: !121)
!124 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !121, type: !22, flags: DIFlagArtificial)
!125 = !DILocalVariable(name: "i", arg: 3, scope: !121, type: !26, flags: DIFlagArtificial)
!126 = !DILocation(line: 56, column: 1, scope: !121)
!127 = !{!128}
!128 = !{i64 2, i64 -1, i64 -1, i1 true}
