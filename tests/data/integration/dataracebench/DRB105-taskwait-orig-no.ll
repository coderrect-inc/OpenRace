; ModuleID = 'integration/dataracebench/DRB105-taskwait-orig-no.c'
source_filename = "integration/dataracebench/DRB105-taskwait-orig-no.c"
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
@1 = private unnamed_addr constant [64 x i8] c";integration/dataracebench/DRB105-taskwait-orig-no.c;fib;60;1;;\00", align 1
@2 = private unnamed_addr constant [64 x i8] c";integration/dataracebench/DRB105-taskwait-orig-no.c;fib;62;1;;\00", align 1
@3 = private unnamed_addr constant [64 x i8] c";integration/dataracebench/DRB105-taskwait-orig-no.c;fib;64;1;;\00", align 1
@4 = private unnamed_addr constant [65 x i8] c";integration/dataracebench/DRB105-taskwait-orig-no.c;main;73;4;;\00", align 1
@input = dso_local global i32 30, align 4, !dbg !0
@5 = private unnamed_addr constant [65 x i8] c";integration/dataracebench/DRB105-taskwait-orig-no.c;main;71;1;;\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"Fib(%d)=%d\0A\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"result==832040\00", align 1
@.str.7 = private unnamed_addr constant [52 x i8] c"integration/dataracebench/DRB105-taskwait-orig-no.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [11 x i8] c"int main()\00", align 1

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
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  %2 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4
  store i8* getelementptr inbounds ([64 x i8], [64 x i8]* @1, i32 0, i32 0), i8** %2, align 8, !tbaa !21
  %3 = call i32 @__kmpc_global_thread_num(%struct.ident_t* %.kmpc_loc.addr)
  store i32 %n, i32* %n.addr, align 4, !tbaa !27
  call void @llvm.dbg.declare(metadata i32* %n.addr, metadata !16, metadata !DIExpression()), !dbg !28
  %4 = load i32, i32* %n.addr, align 4, !dbg !29, !tbaa !27
  %cmp = icmp ult i32 %4, 2, !dbg !30
  br i1 %cmp, label %if.then, label %if.else, !dbg !31

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %n.addr, align 4, !dbg !32, !tbaa !27
  store i32 %5, i32* %retval, align 4, !dbg !33
  br label %return, !dbg !33

if.else:                                          ; preds = %entry
  %6 = bitcast i32* %i to i8*, !dbg !34
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #7, !dbg !34
  call void @llvm.dbg.declare(metadata i32* %i, metadata !17, metadata !DIExpression()), !dbg !35
  %7 = bitcast i32* %j to i8*, !dbg !34
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #7, !dbg !34
  call void @llvm.dbg.declare(metadata i32* %j, metadata !20, metadata !DIExpression()), !dbg !36
  %8 = getelementptr inbounds %struct.anon, %struct.anon* %agg.captured, i32 0, i32 0, !dbg !37
  store i32* %i, i32** %8, align 8, !dbg !37, !tbaa !38
  %9 = getelementptr inbounds %struct.anon, %struct.anon* %agg.captured, i32 0, i32 1, !dbg !37
  store i32* %n.addr, i32** %9, align 8, !dbg !37, !tbaa !38
  %10 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !37
  store i8* getelementptr inbounds ([64 x i8], [64 x i8]* @1, i32 0, i32 0), i8** %10, align 8, !dbg !37, !tbaa !21
  %11 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* %.kmpc_loc.addr, i32 %3, i32 1, i64 48, i64 16, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates*)* @.omp_task_entry. to i32 (i32, i8*)*)), !dbg !37
  %12 = bitcast i8* %11 to %struct.kmp_task_t_with_privates*, !dbg !37
  %13 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %12, i32 0, i32 0, !dbg !37
  %14 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %13, i32 0, i32 0, !dbg !37
  %15 = load i8*, i8** %14, align 8, !dbg !37, !tbaa !39
  %16 = bitcast %struct.anon* %agg.captured to i8*, !dbg !37
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 %16, i64 16, i1 false), !dbg !37, !tbaa.struct !43
  %17 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %12, i32 0, i32 1, !dbg !37
  %18 = bitcast i8* %15 to %struct.anon*, !dbg !37
  %19 = getelementptr inbounds %struct..kmp_privates.t, %struct..kmp_privates.t* %17, i32 0, i32 0, !dbg !37
  %20 = getelementptr inbounds %struct.anon, %struct.anon* %18, i32 0, i32 1, !dbg !37
  %21 = load i32*, i32** %20, align 8, !dbg !37, !tbaa !44
  %22 = load i32, i32* %21, align 4, !dbg !46, !tbaa !27
  store i32 %22, i32* %19, align 8, !dbg !37, !tbaa !48
  %23 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !37
  store i8* getelementptr inbounds ([64 x i8], [64 x i8]* @1, i32 0, i32 0), i8** %23, align 8, !dbg !37, !tbaa !21
  %24 = call i32 @__kmpc_omp_task(%struct.ident_t* %.kmpc_loc.addr, i32 %3, i8* %11), !dbg !37
  %25 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %agg.captured1, i32 0, i32 0, !dbg !49
  store i32* %j, i32** %25, align 8, !dbg !49, !tbaa !38
  %26 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %agg.captured1, i32 0, i32 1, !dbg !49
  store i32* %n.addr, i32** %26, align 8, !dbg !49, !tbaa !38
  %27 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !49
  store i8* getelementptr inbounds ([64 x i8], [64 x i8]* @2, i32 0, i32 0), i8** %27, align 8, !dbg !49, !tbaa !21
  %28 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* %.kmpc_loc.addr, i32 %3, i32 1, i64 48, i64 16, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates.1*)* @.omp_task_entry..3 to i32 (i32, i8*)*)), !dbg !49
  %29 = bitcast i8* %28 to %struct.kmp_task_t_with_privates.1*, !dbg !49
  %30 = getelementptr inbounds %struct.kmp_task_t_with_privates.1, %struct.kmp_task_t_with_privates.1* %29, i32 0, i32 0, !dbg !49
  %31 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %30, i32 0, i32 0, !dbg !49
  %32 = load i8*, i8** %31, align 8, !dbg !49, !tbaa !39
  %33 = bitcast %struct.anon.0* %agg.captured1 to i8*, !dbg !49
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %32, i8* align 8 %33, i64 16, i1 false), !dbg !49, !tbaa.struct !43
  %34 = getelementptr inbounds %struct.kmp_task_t_with_privates.1, %struct.kmp_task_t_with_privates.1* %29, i32 0, i32 1, !dbg !49
  %35 = bitcast i8* %32 to %struct.anon.0*, !dbg !49
  %36 = getelementptr inbounds %struct..kmp_privates.t.2, %struct..kmp_privates.t.2* %34, i32 0, i32 0, !dbg !49
  %37 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %35, i32 0, i32 1, !dbg !49
  %38 = load i32*, i32** %37, align 8, !dbg !49, !tbaa !44
  %39 = load i32, i32* %38, align 4, !dbg !50, !tbaa !27
  store i32 %39, i32* %36, align 8, !dbg !49, !tbaa !48
  %40 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !49
  store i8* getelementptr inbounds ([64 x i8], [64 x i8]* @2, i32 0, i32 0), i8** %40, align 8, !dbg !49, !tbaa !21
  %41 = call i32 @__kmpc_omp_task(%struct.ident_t* %.kmpc_loc.addr, i32 %3, i8* %28), !dbg !49
  %42 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !52
  store i8* getelementptr inbounds ([64 x i8], [64 x i8]* @3, i32 0, i32 0), i8** %42, align 8, !dbg !52, !tbaa !21
  %43 = call i32 @__kmpc_omp_taskwait(%struct.ident_t* %.kmpc_loc.addr, i32 %3), !dbg !52
  %44 = load i32, i32* %i, align 4, !dbg !53, !tbaa !27
  %45 = load i32, i32* %j, align 4, !dbg !54, !tbaa !27
  %add = add nsw i32 %44, %45, !dbg !55
  store i32 %add, i32* %retval, align 4, !dbg !56
  %46 = bitcast i32* %j to i8*, !dbg !57
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %46) #7, !dbg !57
  %47 = bitcast i32* %i to i8*, !dbg !57
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %47) #7, !dbg !57
  br label %return

return:                                           ; preds = %if.else, %if.then
  %48 = load i32, i32* %retval, align 4, !dbg !58
  ret i32 %48, !dbg !58
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: alwaysinline nounwind uwtable
define internal void @.omp_outlined.(i32 %.global_tid., i32* noalias %.part_id., i8* noalias %.privates., void (i8*, ...)* noalias %.copy_fn., i8* %.task_t., %struct.anon* noalias %__context) #3 !dbg !59 {
entry:
  %.global_tid..addr = alloca i32, align 4
  %.part_id..addr = alloca i32*, align 8
  %.privates..addr = alloca i8*, align 8
  %.copy_fn..addr = alloca void (i8*, ...)*, align 8
  %.task_t..addr = alloca i8*, align 8
  %__context.addr = alloca %struct.anon*, align 8
  %.firstpriv.ptr.addr = alloca i32*, align 8
  store i32 %.global_tid., i32* %.global_tid..addr, align 4, !tbaa !27
  call void @llvm.dbg.declare(metadata i32* %.global_tid..addr, metadata !80, metadata !DIExpression()), !dbg !86
  store i32* %.part_id., i32** %.part_id..addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata i32** %.part_id..addr, metadata !81, metadata !DIExpression()), !dbg !86
  store i8* %.privates., i8** %.privates..addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata i8** %.privates..addr, metadata !82, metadata !DIExpression()), !dbg !86
  store void (i8*, ...)* %.copy_fn., void (i8*, ...)** %.copy_fn..addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata void (i8*, ...)** %.copy_fn..addr, metadata !83, metadata !DIExpression()), !dbg !86
  store i8* %.task_t., i8** %.task_t..addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata i8** %.task_t..addr, metadata !84, metadata !DIExpression()), !dbg !86
  store %struct.anon* %__context, %struct.anon** %__context.addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata %struct.anon** %__context.addr, metadata !85, metadata !DIExpression()), !dbg !86
  %0 = load %struct.anon*, %struct.anon** %__context.addr, align 8, !dbg !87
  %1 = load void (i8*, ...)*, void (i8*, ...)** %.copy_fn..addr, align 8, !dbg !87
  %2 = load i8*, i8** %.privates..addr, align 8, !dbg !87
  call void (i8*, ...) %1(i8* %2, i32** %.firstpriv.ptr.addr), !dbg !88
  %3 = load i32*, i32** %.firstpriv.ptr.addr, align 8, !dbg !87
  %4 = load i32, i32* %3, align 4, !dbg !89, !tbaa !27
  %sub = sub i32 %4, 1, !dbg !90
  %call = call i32 @fib(i32 %sub), !dbg !91
  %5 = getelementptr inbounds %struct.anon, %struct.anon* %0, i32 0, i32 0, !dbg !87
  %6 = load i32*, i32** %5, align 8, !dbg !87, !tbaa !92
  store i32 %call, i32* %6, align 4, !dbg !93, !tbaa !27
  ret void, !dbg !94
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @.omp_task_privates_map.(%struct..kmp_privates.t* noalias %0, i32** noalias %1) #3 !dbg !95 {
entry:
  %.addr = alloca %struct..kmp_privates.t*, align 8
  %.addr1 = alloca i32**, align 8
  store %struct..kmp_privates.t* %0, %struct..kmp_privates.t** %.addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata %struct..kmp_privates.t** %.addr, metadata !98, metadata !DIExpression()), !dbg !108
  store i32** %1, i32*** %.addr1, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata i32*** %.addr1, metadata !103, metadata !DIExpression()), !dbg !108
  %2 = load %struct..kmp_privates.t*, %struct..kmp_privates.t** %.addr, align 8, !dbg !109
  %3 = getelementptr inbounds %struct..kmp_privates.t, %struct..kmp_privates.t* %2, i32 0, i32 0, !dbg !109
  %4 = load i32**, i32*** %.addr1, align 8, !dbg !109
  store i32* %3, i32** %4, align 8, !dbg !109, !tbaa !38
  ret void, !dbg !109
}

; Function Attrs: norecurse nounwind uwtable
define internal i32 @.omp_task_entry.(i32 %0, %struct.kmp_task_t_with_privates* noalias %1) #4 !dbg !110 {
entry:
  %.addr = alloca i32, align 4
  %.addr1 = alloca %struct.kmp_task_t_with_privates*, align 8
  store i32 %0, i32* %.addr, align 4, !tbaa !27
  call void @llvm.dbg.declare(metadata i32* %.addr, metadata !112, metadata !DIExpression()), !dbg !125
  store %struct.kmp_task_t_with_privates* %1, %struct.kmp_task_t_with_privates** %.addr1, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata %struct.kmp_task_t_with_privates** %.addr1, metadata !113, metadata !DIExpression()), !dbg !125
  %2 = load i32, i32* %.addr, align 4, !dbg !126, !tbaa !27
  %3 = load %struct.kmp_task_t_with_privates*, %struct.kmp_task_t_with_privates** %.addr1, align 8, !dbg !126
  %4 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %3, i32 0, i32 0, !dbg !126
  %5 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 2, !dbg !126
  %6 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 0, !dbg !126
  %7 = load i8*, i8** %6, align 8, !dbg !126, !tbaa !39
  %8 = bitcast i8* %7 to %struct.anon*, !dbg !126
  %9 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %3, i32 0, i32 1, !dbg !126
  %10 = bitcast %struct..kmp_privates.t* %9 to i8*, !dbg !126
  %11 = bitcast %struct.kmp_task_t_with_privates* %3 to i8*, !dbg !126
  call void @.omp_outlined.(i32 %2, i32* %5, i8* %10, void (i8*, ...)* bitcast (void (%struct..kmp_privates.t*, i32**)* @.omp_task_privates_map. to void (i8*, ...)*), i8* %11, %struct.anon* %8) #7, !dbg !126
  ret i32 0, !dbg !126
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @__kmpc_global_thread_num(%struct.ident_t*)

declare dso_local i8* @__kmpc_omp_task_alloc(%struct.ident_t*, i32, i32, i64, i64, i32 (i32, i8*)*)

declare dso_local i32 @__kmpc_omp_task(%struct.ident_t*, i32, i8*)

; Function Attrs: alwaysinline nounwind uwtable
define internal void @.omp_outlined..1(i32 %.global_tid., i32* noalias %.part_id., i8* noalias %.privates., void (i8*, ...)* noalias %.copy_fn., i8* %.task_t., %struct.anon.0* noalias %__context) #3 !dbg !127 {
entry:
  %.global_tid..addr = alloca i32, align 4
  %.part_id..addr = alloca i32*, align 8
  %.privates..addr = alloca i8*, align 8
  %.copy_fn..addr = alloca void (i8*, ...)*, align 8
  %.task_t..addr = alloca i8*, align 8
  %__context.addr = alloca %struct.anon.0*, align 8
  %.firstpriv.ptr.addr = alloca i32*, align 8
  store i32 %.global_tid., i32* %.global_tid..addr, align 4, !tbaa !27
  call void @llvm.dbg.declare(metadata i32* %.global_tid..addr, metadata !135, metadata !DIExpression()), !dbg !141
  store i32* %.part_id., i32** %.part_id..addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata i32** %.part_id..addr, metadata !136, metadata !DIExpression()), !dbg !141
  store i8* %.privates., i8** %.privates..addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata i8** %.privates..addr, metadata !137, metadata !DIExpression()), !dbg !141
  store void (i8*, ...)* %.copy_fn., void (i8*, ...)** %.copy_fn..addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata void (i8*, ...)** %.copy_fn..addr, metadata !138, metadata !DIExpression()), !dbg !141
  store i8* %.task_t., i8** %.task_t..addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata i8** %.task_t..addr, metadata !139, metadata !DIExpression()), !dbg !141
  store %struct.anon.0* %__context, %struct.anon.0** %__context.addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata %struct.anon.0** %__context.addr, metadata !140, metadata !DIExpression()), !dbg !141
  %0 = load %struct.anon.0*, %struct.anon.0** %__context.addr, align 8, !dbg !142
  %1 = load void (i8*, ...)*, void (i8*, ...)** %.copy_fn..addr, align 8, !dbg !142
  %2 = load i8*, i8** %.privates..addr, align 8, !dbg !142
  call void (i8*, ...) %1(i8* %2, i32** %.firstpriv.ptr.addr), !dbg !143
  %3 = load i32*, i32** %.firstpriv.ptr.addr, align 8, !dbg !142
  %4 = load i32, i32* %3, align 4, !dbg !144, !tbaa !27
  %sub = sub i32 %4, 2, !dbg !145
  %call = call i32 @fib(i32 %sub), !dbg !146
  %5 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %0, i32 0, i32 0, !dbg !142
  %6 = load i32*, i32** %5, align 8, !dbg !142, !tbaa !92
  store i32 %call, i32* %6, align 4, !dbg !147, !tbaa !27
  ret void, !dbg !148
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @.omp_task_privates_map..2(%struct..kmp_privates.t.2* noalias %0, i32** noalias %1) #3 !dbg !149 {
entry:
  %.addr = alloca %struct..kmp_privates.t.2*, align 8
  %.addr1 = alloca i32**, align 8
  store %struct..kmp_privates.t.2* %0, %struct..kmp_privates.t.2** %.addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata %struct..kmp_privates.t.2** %.addr, metadata !151, metadata !DIExpression()), !dbg !157
  store i32** %1, i32*** %.addr1, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata i32*** %.addr1, metadata !156, metadata !DIExpression()), !dbg !157
  %2 = load %struct..kmp_privates.t.2*, %struct..kmp_privates.t.2** %.addr, align 8, !dbg !158
  %3 = getelementptr inbounds %struct..kmp_privates.t.2, %struct..kmp_privates.t.2* %2, i32 0, i32 0, !dbg !158
  %4 = load i32**, i32*** %.addr1, align 8, !dbg !158
  store i32* %3, i32** %4, align 8, !dbg !158, !tbaa !38
  ret void, !dbg !158
}

; Function Attrs: norecurse nounwind uwtable
define internal i32 @.omp_task_entry..3(i32 %0, %struct.kmp_task_t_with_privates.1* noalias %1) #4 !dbg !159 {
entry:
  %.addr = alloca i32, align 4
  %.addr1 = alloca %struct.kmp_task_t_with_privates.1*, align 8
  store i32 %0, i32* %.addr, align 4, !tbaa !27
  call void @llvm.dbg.declare(metadata i32* %.addr, metadata !161, metadata !DIExpression()), !dbg !169
  store %struct.kmp_task_t_with_privates.1* %1, %struct.kmp_task_t_with_privates.1** %.addr1, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata %struct.kmp_task_t_with_privates.1** %.addr1, metadata !162, metadata !DIExpression()), !dbg !169
  %2 = load i32, i32* %.addr, align 4, !dbg !170, !tbaa !27
  %3 = load %struct.kmp_task_t_with_privates.1*, %struct.kmp_task_t_with_privates.1** %.addr1, align 8, !dbg !170
  %4 = getelementptr inbounds %struct.kmp_task_t_with_privates.1, %struct.kmp_task_t_with_privates.1* %3, i32 0, i32 0, !dbg !170
  %5 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 2, !dbg !170
  %6 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 0, !dbg !170
  %7 = load i8*, i8** %6, align 8, !dbg !170, !tbaa !39
  %8 = bitcast i8* %7 to %struct.anon.0*, !dbg !170
  %9 = getelementptr inbounds %struct.kmp_task_t_with_privates.1, %struct.kmp_task_t_with_privates.1* %3, i32 0, i32 1, !dbg !170
  %10 = bitcast %struct..kmp_privates.t.2* %9 to i8*, !dbg !170
  %11 = bitcast %struct.kmp_task_t_with_privates.1* %3 to i8*, !dbg !170
  call void @.omp_outlined..1(i32 %2, i32* %5, i8* %10, void (i8*, ...)* bitcast (void (%struct..kmp_privates.t.2*, i32**)* @.omp_task_privates_map..2 to void (i8*, ...)*), i8* %11, %struct.anon.0* %8) #7, !dbg !170
  ret i32 0, !dbg !170
}

declare dso_local i32 @__kmpc_omp_taskwait(%struct.ident_t*, i32)

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @main() #0 !dbg !171 {
entry:
  %retval = alloca i32, align 4
  %result = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32 0, i32* %retval, align 4
  %2 = bitcast i32* %result to i8*, !dbg !176
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #7, !dbg !176
  call void @llvm.dbg.declare(metadata i32* %result, metadata !175, metadata !DIExpression()), !dbg !177
  store i32 0, i32* %result, align 4, !dbg !177, !tbaa !27
  %3 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !178
  store i8* getelementptr inbounds ([65 x i8], [65 x i8]* @5, i32 0, i32 0), i8** %3, align 8, !dbg !178, !tbaa !21
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*)* @.omp_outlined..4 to void (i32*, i32*, ...)*), i32* %result), !dbg !178
  %4 = load i32, i32* @input, align 4, !dbg !179, !tbaa !27
  %5 = load i32, i32* %result, align 4, !dbg !180, !tbaa !27
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i32 %4, i32 %5), !dbg !181
  %6 = load i32, i32* %result, align 4, !dbg !182, !tbaa !27
  %cmp = icmp eq i32 %6, 832040, !dbg !182
  br i1 %cmp, label %if.then, label %if.else, !dbg !185

if.then:                                          ; preds = %entry
  br label %if.end, !dbg !185

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.7, i64 0, i64 0), i32 79, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #8, !dbg !182
  unreachable, !dbg !182

if.end:                                           ; preds = %if.then
  %7 = bitcast i32* %result to i8*, !dbg !186
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %7) #7, !dbg !186
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
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !193, metadata !DIExpression()), !dbg !196
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !194, metadata !DIExpression()), !dbg !196
  store i32* %result, i32** %result.addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata i32** %result.addr, metadata !195, metadata !DIExpression()), !dbg !197
  %2 = load i32*, i32** %result.addr, align 8, !dbg !198, !tbaa !38
  %3 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !199
  store i8* getelementptr inbounds ([65 x i8], [65 x i8]* @4, i32 0, i32 0), i8** %3, align 8, !dbg !199, !tbaa !21
  %4 = load i32*, i32** %.global_tid..addr, align 8, !dbg !199
  %5 = load i32, i32* %4, align 4, !dbg !199, !tbaa !27
  %6 = call i32 @__kmpc_single(%struct.ident_t* %.kmpc_loc.addr, i32 %5), !dbg !199
  %7 = icmp ne i32 %6, 0, !dbg !199
  br i1 %7, label %omp_if.then, label %omp_if.end, !dbg !199

omp_if.then:                                      ; preds = %entry
  %8 = load i32, i32* @input, align 4, !dbg !201, !tbaa !27
  %call = call i32 @fib(i32 %8), !dbg !204
  store i32 %call, i32* %2, align 4, !dbg !205, !tbaa !27
  call void @__kmpc_end_single(%struct.ident_t* %.kmpc_loc.addr, i32 %5), !dbg !206
  br label %omp_if.end, !dbg !206

omp_if.end:                                       ; preds = %omp_if.then, %entry
  %9 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !207
  store i8* getelementptr inbounds ([65 x i8], [65 x i8]* @4, i32 0, i32 0), i8** %9, align 8, !dbg !207, !tbaa !21
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
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !211, metadata !DIExpression()), !dbg !214
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !212, metadata !DIExpression()), !dbg !214
  store i32* %result, i32** %result.addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata i32** %result.addr, metadata !213, metadata !DIExpression()), !dbg !214
  %0 = load i32*, i32** %result.addr, align 8, !dbg !215, !tbaa !38
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !215, !tbaa !38
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !215, !tbaa !38
  %3 = load i32*, i32** %result.addr, align 8, !dbg !215, !tbaa !38
  call void @.omp_outlined._debug__(i32* %1, i32* %2, i32* %3) #7, !dbg !215
  ret void, !dbg !215
}

declare !callback !216 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

declare dso_local i32 @printf(i8*, ...) #5

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) #6

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { alwaysinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!7, !8, !9}
!llvm.ident = !{!10}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "input", scope: !2, file: !3, line: 52, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "integration/dataracebench/DRB105-taskwait-orig-no.c", directory: "/home/brad/Code/OpenRace/tests/data")
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
!15 = !{!16, !17, !20}
!16 = !DILocalVariable(name: "n", arg: 1, scope: !11, file: !3, line: 53, type: !6)
!17 = !DILocalVariable(name: "i", scope: !18, file: !3, line: 59, type: !14)
!18 = distinct !DILexicalBlock(scope: !19, file: !3, line: 58, column: 3)
!19 = distinct !DILexicalBlock(scope: !11, file: !3, line: 55, column: 7)
!20 = !DILocalVariable(name: "j", scope: !18, file: !3, line: 59, type: !14)
!21 = !{!22, !26, i64 16}
!22 = !{!"ident_t", !23, i64 0, !23, i64 4, !23, i64 8, !23, i64 12, !26, i64 16}
!23 = !{!"int", !24, i64 0}
!24 = !{!"omnipotent char", !25, i64 0}
!25 = !{!"Simple C/C++ TBAA"}
!26 = !{!"any pointer", !24, i64 0}
!27 = !{!23, !23, i64 0}
!28 = !DILocation(line: 53, column: 22, scope: !11)
!29 = !DILocation(line: 55, column: 7, scope: !19)
!30 = !DILocation(line: 55, column: 8, scope: !19)
!31 = !DILocation(line: 55, column: 7, scope: !11)
!32 = !DILocation(line: 56, column: 12, scope: !19)
!33 = !DILocation(line: 56, column: 5, scope: !19)
!34 = !DILocation(line: 59, column: 5, scope: !18)
!35 = !DILocation(line: 59, column: 9, scope: !18)
!36 = !DILocation(line: 59, column: 12, scope: !18)
!37 = !DILocation(line: 60, column: 1, scope: !18)
!38 = !{!26, !26, i64 0}
!39 = !{!40, !26, i64 0}
!40 = !{!"kmp_task_t_with_privates", !41, i64 0, !42, i64 40}
!41 = !{!"kmp_task_t", !26, i64 0, !26, i64 8, !23, i64 16, !24, i64 24, !24, i64 32}
!42 = !{!".kmp_privates.t", !23, i64 0}
!43 = !{i64 0, i64 8, !38, i64 8, i64 8, !38}
!44 = !{!45, !26, i64 8}
!45 = !{!"", !26, i64 0, !26, i64 8}
!46 = !DILocation(line: 61, column: 11, scope: !47)
!47 = distinct !DILexicalBlock(scope: !18, file: !3, line: 60, column: 1)
!48 = !{!40, !23, i64 40}
!49 = !DILocation(line: 62, column: 1, scope: !18)
!50 = !DILocation(line: 63, column: 11, scope: !51)
!51 = distinct !DILexicalBlock(scope: !18, file: !3, line: 62, column: 1)
!52 = !DILocation(line: 64, column: 1, scope: !18)
!53 = !DILocation(line: 65, column: 12, scope: !18)
!54 = !DILocation(line: 65, column: 14, scope: !18)
!55 = !DILocation(line: 65, column: 13, scope: !18)
!56 = !DILocation(line: 65, column: 5, scope: !18)
!57 = !DILocation(line: 66, column: 3, scope: !19)
!58 = !DILocation(line: 67, column: 1, scope: !11)
!59 = distinct !DISubprogram(name: ".omp_outlined.", scope: !3, file: !3, line: 61, type: !60, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !79)
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
!79 = !{!80, !81, !82, !83, !84, !85}
!80 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !59, type: !62, flags: DIFlagArtificial)
!81 = !DILocalVariable(name: ".part_id.", arg: 2, scope: !59, type: !63, flags: DIFlagArtificial)
!82 = !DILocalVariable(name: ".privates.", arg: 3, scope: !59, type: !66, flags: DIFlagArtificial)
!83 = !DILocalVariable(name: ".copy_fn.", arg: 4, scope: !59, type: !69, flags: DIFlagArtificial)
!84 = !DILocalVariable(name: ".task_t.", arg: 5, scope: !59, type: !74, flags: DIFlagArtificial)
!85 = !DILocalVariable(name: "__context", arg: 6, scope: !59, type: !75, flags: DIFlagArtificial)
!86 = !DILocation(line: 0, scope: !59)
!87 = !DILocation(line: 61, column: 5, scope: !59)
!88 = !DILocation(line: 60, column: 1, scope: !59)
!89 = !DILocation(line: 61, column: 11, scope: !59)
!90 = !DILocation(line: 61, column: 12, scope: !59)
!91 = !DILocation(line: 61, column: 7, scope: !59)
!92 = !{!45, !26, i64 0}
!93 = !DILocation(line: 61, column: 6, scope: !59)
!94 = !DILocation(line: 61, column: 14, scope: !59)
!95 = distinct !DISubprogram(linkageName: ".omp_task_privates_map.", scope: !3, file: !3, line: 60, type: !96, scopeLine: 60, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !97)
!96 = !DISubroutineType(types: !4)
!97 = !{!98, !103}
!98 = !DILocalVariable(arg: 1, scope: !95, type: !99, flags: DIFlagArtificial)
!99 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100)
!100 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !101)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: ".kmp_privates.t", file: !3, size: 32, elements: !4)
!103 = !DILocalVariable(arg: 2, scope: !95, type: !104, flags: DIFlagArtificial)
!104 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !105)
!105 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !106)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!108 = !DILocation(line: 0, scope: !95)
!109 = !DILocation(line: 60, column: 1, scope: !95)
!110 = distinct !DISubprogram(linkageName: ".omp_task_entry.", scope: !3, file: !3, line: 60, type: !96, scopeLine: 60, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !111)
!111 = !{!112, !113}
!112 = !DILocalVariable(arg: 1, scope: !110, type: !14, flags: DIFlagArtificial)
!113 = !DILocalVariable(arg: 2, scope: !110, type: !114, flags: DIFlagArtificial)
!114 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !115)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t_with_privates", file: !3, size: 384, elements: !117)
!117 = !{!118, !124}
!118 = !DIDerivedType(tag: DW_TAG_member, scope: !116, file: !3, baseType: !119, size: 320)
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t", file: !3, size: 320, elements: !120)
!120 = !{!121, !123}
!121 = !DIDerivedType(tag: DW_TAG_member, scope: !119, file: !3, baseType: !122, size: 64, offset: 192)
!122 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "kmp_cmplrdata_t", file: !3, size: 64, elements: !4)
!123 = !DIDerivedType(tag: DW_TAG_member, scope: !119, file: !3, baseType: !122, size: 64, offset: 256)
!124 = !DIDerivedType(tag: DW_TAG_member, scope: !116, file: !3, baseType: !102, size: 32, offset: 320)
!125 = !DILocation(line: 0, scope: !110)
!126 = !DILocation(line: 60, column: 1, scope: !110)
!127 = distinct !DISubprogram(name: ".omp_outlined..1", scope: !3, file: !3, line: 63, type: !128, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !134)
!128 = !DISubroutineType(types: !129)
!129 = !{null, !62, !63, !66, !69, !74, !130}
!130 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !131)
!131 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !132)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !11, file: !3, line: 62, size: 128, elements: !4)
!134 = !{!135, !136, !137, !138, !139, !140}
!135 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !127, type: !62, flags: DIFlagArtificial)
!136 = !DILocalVariable(name: ".part_id.", arg: 2, scope: !127, type: !63, flags: DIFlagArtificial)
!137 = !DILocalVariable(name: ".privates.", arg: 3, scope: !127, type: !66, flags: DIFlagArtificial)
!138 = !DILocalVariable(name: ".copy_fn.", arg: 4, scope: !127, type: !69, flags: DIFlagArtificial)
!139 = !DILocalVariable(name: ".task_t.", arg: 5, scope: !127, type: !74, flags: DIFlagArtificial)
!140 = !DILocalVariable(name: "__context", arg: 6, scope: !127, type: !130, flags: DIFlagArtificial)
!141 = !DILocation(line: 0, scope: !127)
!142 = !DILocation(line: 63, column: 5, scope: !127)
!143 = !DILocation(line: 62, column: 1, scope: !127)
!144 = !DILocation(line: 63, column: 11, scope: !127)
!145 = !DILocation(line: 63, column: 12, scope: !127)
!146 = !DILocation(line: 63, column: 7, scope: !127)
!147 = !DILocation(line: 63, column: 6, scope: !127)
!148 = !DILocation(line: 63, column: 14, scope: !127)
!149 = distinct !DISubprogram(linkageName: ".omp_task_privates_map..2", scope: !3, file: !3, line: 62, type: !96, scopeLine: 62, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !150)
!150 = !{!151, !156}
!151 = !DILocalVariable(arg: 1, scope: !149, type: !152, flags: DIFlagArtificial)
!152 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !153)
!153 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !154)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: ".kmp_privates.t", file: !3, size: 32, elements: !4)
!156 = !DILocalVariable(arg: 2, scope: !149, type: !104, flags: DIFlagArtificial)
!157 = !DILocation(line: 0, scope: !149)
!158 = !DILocation(line: 62, column: 1, scope: !149)
!159 = distinct !DISubprogram(linkageName: ".omp_task_entry..3", scope: !3, file: !3, line: 62, type: !96, scopeLine: 62, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !160)
!160 = !{!161, !162}
!161 = !DILocalVariable(arg: 1, scope: !159, type: !14, flags: DIFlagArtificial)
!162 = !DILocalVariable(arg: 2, scope: !159, type: !163, flags: DIFlagArtificial)
!163 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !164)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t_with_privates", file: !3, size: 384, elements: !166)
!166 = !{!167, !168}
!167 = !DIDerivedType(tag: DW_TAG_member, scope: !165, file: !3, baseType: !119, size: 320)
!168 = !DIDerivedType(tag: DW_TAG_member, scope: !165, file: !3, baseType: !155, size: 32, offset: 320)
!169 = !DILocation(line: 0, scope: !159)
!170 = !DILocation(line: 62, column: 1, scope: !159)
!171 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 68, type: !172, scopeLine: 69, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !174)
!172 = !DISubroutineType(types: !173)
!173 = !{!14}
!174 = !{!175}
!175 = !DILocalVariable(name: "result", scope: !171, file: !3, line: 70, type: !14)
!176 = !DILocation(line: 70, column: 3, scope: !171)
!177 = !DILocation(line: 70, column: 7, scope: !171)
!178 = !DILocation(line: 71, column: 1, scope: !171)
!179 = !DILocation(line: 78, column: 27, scope: !171)
!180 = !DILocation(line: 78, column: 34, scope: !171)
!181 = !DILocation(line: 78, column: 3, scope: !171)
!182 = !DILocation(line: 79, column: 3, scope: !183)
!183 = distinct !DILexicalBlock(scope: !184, file: !3, line: 79, column: 3)
!184 = distinct !DILexicalBlock(scope: !171, file: !3, line: 79, column: 3)
!185 = !DILocation(line: 79, column: 3, scope: !184)
!186 = !DILocation(line: 81, column: 1, scope: !171)
!187 = !DILocation(line: 80, column: 3, scope: !171)
!188 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !3, file: !3, line: 72, type: !189, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !192)
!189 = !DISubroutineType(types: !190)
!190 = !{null, !63, !63, !191}
!191 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !14, size: 64)
!192 = !{!193, !194, !195}
!193 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !188, type: !63, flags: DIFlagArtificial)
!194 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !188, type: !63, flags: DIFlagArtificial)
!195 = !DILocalVariable(name: "result", arg: 3, scope: !188, file: !3, line: 70, type: !191)
!196 = !DILocation(line: 0, scope: !188)
!197 = !DILocation(line: 70, column: 7, scope: !188)
!198 = !DILocation(line: 72, column: 3, scope: !188)
!199 = !DILocation(line: 73, column: 4, scope: !200)
!200 = distinct !DILexicalBlock(scope: !188, file: !3, line: 72, column: 3)
!201 = !DILocation(line: 75, column: 20, scope: !202)
!202 = distinct !DILexicalBlock(scope: !203, file: !3, line: 74, column: 5)
!203 = distinct !DILexicalBlock(scope: !200, file: !3, line: 73, column: 4)
!204 = !DILocation(line: 75, column: 16, scope: !202)
!205 = !DILocation(line: 75, column: 14, scope: !202)
!206 = !DILocation(line: 76, column: 5, scope: !202)
!207 = !DILocation(line: 73, column: 22, scope: !203)
!208 = !DILocation(line: 77, column: 3, scope: !188)
!209 = distinct !DISubprogram(name: ".omp_outlined..4", scope: !3, file: !3, line: 72, type: !189, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !210)
!210 = !{!211, !212, !213}
!211 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !209, type: !63, flags: DIFlagArtificial)
!212 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !209, type: !63, flags: DIFlagArtificial)
!213 = !DILocalVariable(name: "result", arg: 3, scope: !209, type: !191, flags: DIFlagArtificial)
!214 = !DILocation(line: 0, scope: !209)
!215 = !DILocation(line: 72, column: 3, scope: !209)
!216 = !{!217}
!217 = !{i64 2, i64 -1, i64 -1, i1 true}
