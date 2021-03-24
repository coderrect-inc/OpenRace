; ModuleID = 'DRB107-taskgroup-orig-no.c'
source_filename = "DRB107-taskgroup-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }
%struct.anon = type { i32* }
%struct.anon.0 = type { i32* }
%struct.kmp_task_t_with_privates = type { %struct.kmp_task_t }
%struct.kmp_task_t = type { i8*, i32 (i32, i8*)*, i32, %union.kmp_cmplrdata_t, %union.kmp_cmplrdata_t }
%union.kmp_cmplrdata_t = type { i32 (i32, i8*)* }
%struct.kmp_task_t_with_privates.1 = type { %struct.kmp_task_t }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [40 x i8] c";DRB107-taskgroup-orig-no.c;main;59;1;;\00", align 1
@2 = private unnamed_addr constant [40 x i8] c";DRB107-taskgroup-orig-no.c;main;61;1;;\00", align 1
@3 = private unnamed_addr constant [40 x i8] c";DRB107-taskgroup-orig-no.c;main;63;1;;\00", align 1
@4 = private unnamed_addr constant [40 x i8] c";DRB107-taskgroup-orig-no.c;main;69;1;;\00", align 1
@5 = private unnamed_addr constant [40 x i8] c";DRB107-taskgroup-orig-no.c;main;57;1;;\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"result=%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"result==2\00", align 1
@.str.6 = private unnamed_addr constant [27 x i8] c"DRB107-taskgroup-orig-no.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [11 x i8] c"int main()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !7 {
entry:
  %retval = alloca i32, align 4
  %result = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata i32* %result, metadata !11, metadata !DIExpression()), !dbg !12
  store i32 0, i32* %result, align 4, !dbg !12
  %2 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !13
  store i8* getelementptr inbounds ([40 x i8], [40 x i8]* @5, i32 0, i32 0), i8** %2, align 8, !dbg !13
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*)* @.omp_outlined..3 to void (i32*, i32*, ...)*), i32* %result), !dbg !13
  %3 = load i32, i32* %result, align 4, !dbg !14
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.4, i64 0, i64 0), i32 %3), !dbg !15
  %4 = load i32, i32* %result, align 4, !dbg !16
  %cmp = icmp eq i32 %4, 2, !dbg !16
  br i1 %cmp, label %if.then, label %if.else, !dbg !19

if.then:                                          ; preds = %entry
  br label %if.end, !dbg !19

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32 76, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #7, !dbg !16
  unreachable, !dbg !16

if.end:                                           ; preds = %if.then
  ret i32 0, !dbg !20
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %result) #2 !dbg !21 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %result.addr = alloca i32*, align 8
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %agg.captured = alloca %struct.anon, align 8
  %agg.captured1 = alloca %struct.anon.0, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !29, metadata !DIExpression()), !dbg !30
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !31, metadata !DIExpression()), !dbg !30
  store i32* %result, i32** %result.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %result.addr, metadata !32, metadata !DIExpression()), !dbg !33
  %2 = load i32*, i32** %result.addr, align 8, !dbg !34
  %3 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !35
  store i8* getelementptr inbounds ([40 x i8], [40 x i8]* @1, i32 0, i32 0), i8** %3, align 8, !dbg !35
  %4 = load i32*, i32** %.global_tid..addr, align 8, !dbg !35
  %5 = load i32, i32* %4, align 4, !dbg !35
  %6 = call i32 @__kmpc_single(%struct.ident_t* %.kmpc_loc.addr, i32 %5), !dbg !35
  %7 = icmp ne i32 %6, 0, !dbg !35
  br i1 %7, label %omp_if.then, label %omp_if.end, !dbg !35

omp_if.then:                                      ; preds = %entry
  %8 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !37
  store i8* getelementptr inbounds ([40 x i8], [40 x i8]* @2, i32 0, i32 0), i8** %8, align 8, !dbg !37
  call void @__kmpc_taskgroup(%struct.ident_t* %.kmpc_loc.addr, i32 %5), !dbg !37
  %9 = getelementptr inbounds %struct.anon, %struct.anon* %agg.captured, i32 0, i32 0, !dbg !40
  store i32* %2, i32** %9, align 8, !dbg !40
  %10 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !40
  store i8* getelementptr inbounds ([40 x i8], [40 x i8]* @3, i32 0, i32 0), i8** %10, align 8, !dbg !40
  %11 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* %.kmpc_loc.addr, i32 %5, i32 1, i64 40, i64 8, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates*)* @.omp_task_entry. to i32 (i32, i8*)*)), !dbg !40
  %12 = bitcast i8* %11 to %struct.kmp_task_t_with_privates*, !dbg !40
  %13 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %12, i32 0, i32 0, !dbg !40
  %14 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %13, i32 0, i32 0, !dbg !40
  %15 = load i8*, i8** %14, align 8, !dbg !40
  %16 = bitcast %struct.anon* %agg.captured to i8*, !dbg !40
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 %16, i64 8, i1 false), !dbg !40
  %17 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !40
  store i8* getelementptr inbounds ([40 x i8], [40 x i8]* @3, i32 0, i32 0), i8** %17, align 8, !dbg !40
  %18 = call i32 @__kmpc_omp_task(%struct.ident_t* %.kmpc_loc.addr, i32 %5, i8* %11), !dbg !40
  call void @__kmpc_end_taskgroup(%struct.ident_t* %.kmpc_loc.addr, i32 %5), !dbg !43
  %19 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %agg.captured1, i32 0, i32 0, !dbg !44
  store i32* %2, i32** %19, align 8, !dbg !44
  %20 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !44
  store i8* getelementptr inbounds ([40 x i8], [40 x i8]* @4, i32 0, i32 0), i8** %20, align 8, !dbg !44
  %21 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* %.kmpc_loc.addr, i32 %5, i32 1, i64 40, i64 8, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates.1*)* @.omp_task_entry..2 to i32 (i32, i8*)*)), !dbg !44
  %22 = bitcast i8* %21 to %struct.kmp_task_t_with_privates.1*, !dbg !44
  %23 = getelementptr inbounds %struct.kmp_task_t_with_privates.1, %struct.kmp_task_t_with_privates.1* %22, i32 0, i32 0, !dbg !44
  %24 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %23, i32 0, i32 0, !dbg !44
  %25 = load i8*, i8** %24, align 8, !dbg !44
  %26 = bitcast %struct.anon.0* %agg.captured1 to i8*, !dbg !44
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %25, i8* align 8 %26, i64 8, i1 false), !dbg !44
  %27 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !44
  store i8* getelementptr inbounds ([40 x i8], [40 x i8]* @4, i32 0, i32 0), i8** %27, align 8, !dbg !44
  %28 = call i32 @__kmpc_omp_task(%struct.ident_t* %.kmpc_loc.addr, i32 %5, i8* %21), !dbg !44
  call void @__kmpc_end_single(%struct.ident_t* %.kmpc_loc.addr, i32 %5), !dbg !45
  br label %omp_if.end, !dbg !45

omp_if.end:                                       ; preds = %omp_if.then, %entry
  %29 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !46
  store i8* getelementptr inbounds ([40 x i8], [40 x i8]* @1, i32 0, i32 0), i8** %29, align 8, !dbg !46
  call void @__kmpc_barrier(%struct.ident_t* %.kmpc_loc.addr, i32 %5), !dbg !46
  ret void, !dbg !47
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local void @__kmpc_end_single(%struct.ident_t*, i32)

declare dso_local i32 @__kmpc_single(%struct.ident_t*, i32)

declare dso_local void @__kmpc_end_taskgroup(%struct.ident_t*, i32)

declare dso_local void @__kmpc_taskgroup(%struct.ident_t*, i32)

declare dso_local i32 @sleep(i32) #4

; Function Attrs: noinline norecurse nounwind uwtable
define internal i32 @.omp_task_entry.(i32 %0, %struct.kmp_task_t_with_privates* noalias %1) #5 !dbg !48 {
entry:
  %.global_tid..addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %.global_tid..addr.i, metadata !50, metadata !DIExpression()), !dbg !67
  %.part_id..addr.i = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %.part_id..addr.i, metadata !69, metadata !DIExpression()), !dbg !67
  %.privates..addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %.privates..addr.i, metadata !70, metadata !DIExpression()), !dbg !67
  %.copy_fn..addr.i = alloca void (i8*, ...)*, align 8
  call void @llvm.dbg.declare(metadata void (i8*, ...)** %.copy_fn..addr.i, metadata !71, metadata !DIExpression()), !dbg !67
  %.task_t..addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %.task_t..addr.i, metadata !72, metadata !DIExpression()), !dbg !67
  %__context.addr.i = alloca %struct.anon*, align 8
  call void @llvm.dbg.declare(metadata %struct.anon** %__context.addr.i, metadata !73, metadata !DIExpression()), !dbg !67
  %.addr = alloca i32, align 4
  %.addr1 = alloca %struct.kmp_task_t_with_privates*, align 8
  store i32 %0, i32* %.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %.addr, metadata !74, metadata !DIExpression()), !dbg !75
  store %struct.kmp_task_t_with_privates* %1, %struct.kmp_task_t_with_privates** %.addr1, align 8
  call void @llvm.dbg.declare(metadata %struct.kmp_task_t_with_privates** %.addr1, metadata !76, metadata !DIExpression()), !dbg !75
  %2 = load i32, i32* %.addr, align 4, !dbg !87
  %3 = load %struct.kmp_task_t_with_privates*, %struct.kmp_task_t_with_privates** %.addr1, align 8, !dbg !87
  %4 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %3, i32 0, i32 0, !dbg !87
  %5 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 2, !dbg !87
  %6 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 0, !dbg !87
  %7 = load i8*, i8** %6, align 8, !dbg !87
  %8 = bitcast i8* %7 to %struct.anon*, !dbg !87
  %9 = bitcast %struct.kmp_task_t_with_privates* %3 to i8*, !dbg !87
  store i32 %2, i32* %.global_tid..addr.i, align 4, !noalias !88
  store i32* %5, i32** %.part_id..addr.i, align 8, !noalias !88
  store i8* null, i8** %.privates..addr.i, align 8, !noalias !88
  store void (i8*, ...)* null, void (i8*, ...)** %.copy_fn..addr.i, align 8, !noalias !88
  store i8* %9, i8** %.task_t..addr.i, align 8, !noalias !88
  store %struct.anon* %8, %struct.anon** %__context.addr.i, align 8, !noalias !88
  %10 = load %struct.anon*, %struct.anon** %__context.addr.i, align 8, !dbg !94, !noalias !88
  %call.i = call i32 @sleep(i32 3) #8, !dbg !95
  %11 = getelementptr inbounds %struct.anon, %struct.anon* %10, i32 0, i32 0, !dbg !97
  %12 = load i32*, i32** %11, align 8, !dbg !97
  store i32 1, i32* %12, align 4, !dbg !98
  ret i32 0, !dbg !87
}

declare dso_local i8* @__kmpc_omp_task_alloc(%struct.ident_t*, i32, i32, i64, i64, i32 (i32, i8*)*)

declare dso_local i32 @__kmpc_omp_task(%struct.ident_t*, i32, i8*)

; Function Attrs: noinline norecurse nounwind uwtable
define internal i32 @.omp_task_entry..2(i32 %0, %struct.kmp_task_t_with_privates.1* noalias %1) #5 !dbg !99 {
entry:
  %.global_tid..addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %.global_tid..addr.i, metadata !100, metadata !DIExpression()), !dbg !108
  %.part_id..addr.i = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %.part_id..addr.i, metadata !110, metadata !DIExpression()), !dbg !108
  %.privates..addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %.privates..addr.i, metadata !111, metadata !DIExpression()), !dbg !108
  %.copy_fn..addr.i = alloca void (i8*, ...)*, align 8
  call void @llvm.dbg.declare(metadata void (i8*, ...)** %.copy_fn..addr.i, metadata !112, metadata !DIExpression()), !dbg !108
  %.task_t..addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %.task_t..addr.i, metadata !113, metadata !DIExpression()), !dbg !108
  %__context.addr.i = alloca %struct.anon.0*, align 8
  call void @llvm.dbg.declare(metadata %struct.anon.0** %__context.addr.i, metadata !114, metadata !DIExpression()), !dbg !108
  %.addr = alloca i32, align 4
  %.addr1 = alloca %struct.kmp_task_t_with_privates.1*, align 8
  store i32 %0, i32* %.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %.addr, metadata !115, metadata !DIExpression()), !dbg !116
  store %struct.kmp_task_t_with_privates.1* %1, %struct.kmp_task_t_with_privates.1** %.addr1, align 8
  call void @llvm.dbg.declare(metadata %struct.kmp_task_t_with_privates.1** %.addr1, metadata !117, metadata !DIExpression()), !dbg !116
  %2 = load i32, i32* %.addr, align 4, !dbg !123
  %3 = load %struct.kmp_task_t_with_privates.1*, %struct.kmp_task_t_with_privates.1** %.addr1, align 8, !dbg !123
  %4 = getelementptr inbounds %struct.kmp_task_t_with_privates.1, %struct.kmp_task_t_with_privates.1* %3, i32 0, i32 0, !dbg !123
  %5 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 2, !dbg !123
  %6 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 0, !dbg !123
  %7 = load i8*, i8** %6, align 8, !dbg !123
  %8 = bitcast i8* %7 to %struct.anon.0*, !dbg !123
  %9 = bitcast %struct.kmp_task_t_with_privates.1* %3 to i8*, !dbg !123
  store i32 %2, i32* %.global_tid..addr.i, align 4, !noalias !124
  store i32* %5, i32** %.part_id..addr.i, align 8, !noalias !124
  store i8* null, i8** %.privates..addr.i, align 8, !noalias !124
  store void (i8*, ...)* null, void (i8*, ...)** %.copy_fn..addr.i, align 8, !noalias !124
  store i8* %9, i8** %.task_t..addr.i, align 8, !noalias !124
  store %struct.anon.0* %8, %struct.anon.0** %__context.addr.i, align 8, !noalias !124
  %10 = load %struct.anon.0*, %struct.anon.0** %__context.addr.i, align 8, !dbg !130, !noalias !124
  %11 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %10, i32 0, i32 0, !dbg !131
  %12 = load i32*, i32** %11, align 8, !dbg !131
  store i32 2, i32* %12, align 4, !dbg !133
  ret i32 0, !dbg !123
}

declare dso_local void @__kmpc_barrier(%struct.ident_t*, i32)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined..3(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %result) #2 !dbg !134 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %result.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !135, metadata !DIExpression()), !dbg !136
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !137, metadata !DIExpression()), !dbg !136
  store i32* %result, i32** %result.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %result.addr, metadata !138, metadata !DIExpression()), !dbg !136
  %0 = load i32*, i32** %result.addr, align 8, !dbg !139
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !139
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !139
  %3 = load i32*, i32** %result.addr, align 8, !dbg !139
  call void @.omp_outlined._debug__(i32* %1, i32* %2, i32* %3) #8, !dbg !139
  ret void, !dbg !139
}

declare !callback !140 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

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
!1 = !DIFile(filename: "DRB107-taskgroup-orig-no.c", directory: "/home/yanze/code/OpenRace/tests/data/integration/dataracebench")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.1 "}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 54, type: !8, scopeLine: 55, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DILocalVariable(name: "result", scope: !7, file: !1, line: 56, type: !10)
!12 = !DILocation(line: 56, column: 7, scope: !7)
!13 = !DILocation(line: 57, column: 1, scope: !7)
!14 = !DILocation(line: 75, column: 26, scope: !7)
!15 = !DILocation(line: 75, column: 3, scope: !7)
!16 = !DILocation(line: 76, column: 3, scope: !17)
!17 = distinct !DILexicalBlock(scope: !18, file: !1, line: 76, column: 3)
!18 = distinct !DILexicalBlock(scope: !7, file: !1, line: 76, column: 3)
!19 = !DILocation(line: 76, column: 3, scope: !18)
!20 = !DILocation(line: 77, column: 3, scope: !7)
!21 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 58, type: !22, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!22 = !DISubroutineType(types: !23)
!23 = !{null, !24, !24, !28}
!24 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !25)
!25 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !26)
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!28 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !10, size: 64)
!29 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !21, type: !24, flags: DIFlagArtificial)
!30 = !DILocation(line: 0, scope: !21)
!31 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !21, type: !24, flags: DIFlagArtificial)
!32 = !DILocalVariable(name: "result", arg: 3, scope: !21, file: !1, line: 56, type: !28)
!33 = !DILocation(line: 56, column: 7, scope: !21)
!34 = !DILocation(line: 58, column: 3, scope: !21)
!35 = !DILocation(line: 59, column: 1, scope: !36)
!36 = distinct !DILexicalBlock(scope: !21, file: !1, line: 58, column: 3)
!37 = !DILocation(line: 61, column: 1, scope: !38)
!38 = distinct !DILexicalBlock(scope: !39, file: !1, line: 60, column: 5)
!39 = distinct !DILexicalBlock(scope: !36, file: !1, line: 59, column: 1)
!40 = !DILocation(line: 63, column: 1, scope: !41)
!41 = distinct !DILexicalBlock(scope: !42, file: !1, line: 62, column: 7)
!42 = distinct !DILexicalBlock(scope: !38, file: !1, line: 61, column: 1)
!43 = !DILocation(line: 68, column: 7, scope: !41)
!44 = !DILocation(line: 69, column: 1, scope: !38)
!45 = !DILocation(line: 73, column: 5, scope: !38)
!46 = !DILocation(line: 59, column: 19, scope: !39)
!47 = !DILocation(line: 74, column: 3, scope: !21)
!48 = distinct !DISubprogram(linkageName: ".omp_task_entry.", scope: !1, file: !1, line: 63, type: !49, scopeLine: 63, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!49 = !DISubroutineType(types: !2)
!50 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !51, type: !27, flags: DIFlagArtificial)
!51 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 66, type: !52, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!52 = !DISubroutineType(types: !53)
!53 = !{null, !27, !24, !54, !57, !62, !63}
!54 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !55)
!55 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !56)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !58)
!58 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !59)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!60 = !DISubroutineType(types: !61)
!61 = !{null, !54, null}
!62 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !56)
!63 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !64)
!64 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !65)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 63, size: 64, elements: !2)
!67 = !DILocation(line: 0, scope: !51, inlinedAt: !68)
!68 = distinct !DILocation(line: 63, column: 1, scope: !48)
!69 = !DILocalVariable(name: ".part_id.", arg: 2, scope: !51, type: !24, flags: DIFlagArtificial)
!70 = !DILocalVariable(name: ".privates.", arg: 3, scope: !51, type: !54, flags: DIFlagArtificial)
!71 = !DILocalVariable(name: ".copy_fn.", arg: 4, scope: !51, type: !57, flags: DIFlagArtificial)
!72 = !DILocalVariable(name: ".task_t.", arg: 5, scope: !51, type: !62, flags: DIFlagArtificial)
!73 = !DILocalVariable(name: "__context", arg: 6, scope: !51, type: !63, flags: DIFlagArtificial)
!74 = !DILocalVariable(arg: 1, scope: !48, type: !10, flags: DIFlagArtificial)
!75 = !DILocation(line: 0, scope: !48)
!76 = !DILocalVariable(arg: 2, scope: !48, type: !77, flags: DIFlagArtificial)
!77 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !78)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t_with_privates", file: !1, size: 320, elements: !80)
!80 = !{!81}
!81 = !DIDerivedType(tag: DW_TAG_member, scope: !79, file: !1, baseType: !82, size: 320)
!82 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t", file: !1, size: 320, elements: !83)
!83 = !{!84, !86}
!84 = !DIDerivedType(tag: DW_TAG_member, scope: !82, file: !1, baseType: !85, size: 64, offset: 192)
!85 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "kmp_cmplrdata_t", file: !1, size: 64, elements: !2)
!86 = !DIDerivedType(tag: DW_TAG_member, scope: !82, file: !1, baseType: !85, size: 64, offset: 256)
!87 = !DILocation(line: 63, column: 1, scope: !48)
!88 = !{!89, !91, !92, !93}
!89 = distinct !{!89, !90, !".omp_outlined.: %.part_id."}
!90 = distinct !{!90, !".omp_outlined."}
!91 = distinct !{!91, !90, !".omp_outlined.: %.privates."}
!92 = distinct !{!92, !90, !".omp_outlined.: %.copy_fn."}
!93 = distinct !{!93, !90, !".omp_outlined.: %__context"}
!94 = !DILocation(line: 64, column: 9, scope: !51, inlinedAt: !68)
!95 = !DILocation(line: 65, column: 11, scope: !96, inlinedAt: !68)
!96 = distinct !DILexicalBlock(scope: !51, file: !1, line: 64, column: 9)
!97 = !DILocation(line: 66, column: 11, scope: !96, inlinedAt: !68)
!98 = !DILocation(line: 66, column: 18, scope: !96, inlinedAt: !68)
!99 = distinct !DISubprogram(linkageName: ".omp_task_entry..2", scope: !1, file: !1, line: 69, type: !49, scopeLine: 69, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!100 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !101, type: !27, flags: DIFlagArtificial)
!101 = distinct !DISubprogram(name: ".omp_outlined..1", scope: !1, file: !1, line: 71, type: !102, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!102 = !DISubroutineType(types: !103)
!103 = !{null, !27, !24, !54, !57, !62, !104}
!104 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !105)
!105 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !106)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!107 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 69, size: 64, elements: !2)
!108 = !DILocation(line: 0, scope: !101, inlinedAt: !109)
!109 = distinct !DILocation(line: 69, column: 1, scope: !99)
!110 = !DILocalVariable(name: ".part_id.", arg: 2, scope: !101, type: !24, flags: DIFlagArtificial)
!111 = !DILocalVariable(name: ".privates.", arg: 3, scope: !101, type: !54, flags: DIFlagArtificial)
!112 = !DILocalVariable(name: ".copy_fn.", arg: 4, scope: !101, type: !57, flags: DIFlagArtificial)
!113 = !DILocalVariable(name: ".task_t.", arg: 5, scope: !101, type: !62, flags: DIFlagArtificial)
!114 = !DILocalVariable(name: "__context", arg: 6, scope: !101, type: !104, flags: DIFlagArtificial)
!115 = !DILocalVariable(arg: 1, scope: !99, type: !10, flags: DIFlagArtificial)
!116 = !DILocation(line: 0, scope: !99)
!117 = !DILocalVariable(arg: 2, scope: !99, type: !118, flags: DIFlagArtificial)
!118 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !119)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t_with_privates", file: !1, size: 320, elements: !121)
!121 = !{!122}
!122 = !DIDerivedType(tag: DW_TAG_member, scope: !120, file: !1, baseType: !82, size: 320)
!123 = !DILocation(line: 69, column: 1, scope: !99)
!124 = !{!125, !127, !128, !129}
!125 = distinct !{!125, !126, !".omp_outlined..1: %.part_id."}
!126 = distinct !{!126, !".omp_outlined..1"}
!127 = distinct !{!127, !126, !".omp_outlined..1: %.privates."}
!128 = distinct !{!128, !126, !".omp_outlined..1: %.copy_fn."}
!129 = distinct !{!129, !126, !".omp_outlined..1: %__context"}
!130 = !DILocation(line: 70, column: 7, scope: !101, inlinedAt: !109)
!131 = !DILocation(line: 71, column: 9, scope: !132, inlinedAt: !109)
!132 = distinct !DILexicalBlock(scope: !101, file: !1, line: 70, column: 7)
!133 = !DILocation(line: 71, column: 16, scope: !132, inlinedAt: !109)
!134 = distinct !DISubprogram(name: ".omp_outlined..3", scope: !1, file: !1, line: 58, type: !22, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!135 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !134, type: !24, flags: DIFlagArtificial)
!136 = !DILocation(line: 0, scope: !134)
!137 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !134, type: !24, flags: DIFlagArtificial)
!138 = !DILocalVariable(name: "result", arg: 3, scope: !134, type: !28, flags: DIFlagArtificial)
!139 = !DILocation(line: 58, column: 3, scope: !134)
!140 = !{!141}
!141 = !{i64 2, i64 -1, i64 -1, i1 true}
