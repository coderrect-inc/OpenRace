; ModuleID = 'DRB127-tasking-threadprivate1-orig-no.c'
source_filename = "DRB127-tasking-threadprivate1-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }
%struct.anon = type {}
%struct.kmp_task_t_with_privates.3 = type { %struct.kmp_task_t }
%struct.kmp_task_t = type { i8*, i32 (i32, i8*)*, i32, %union.kmp_cmplrdata_t, %union.kmp_cmplrdata_t }
%union.kmp_cmplrdata_t = type { i32 (i32, i8*)* }
%struct.kmp_task_t_with_privates = type { %struct.kmp_task_t }
%struct.anon.1 = type {}
%struct.kmp_task_t_with_privates.2 = type { %struct.kmp_task_t }
%struct.anon.0 = type {}

$_ZTW2tp = comdat any

@tp = dso_local thread_local global i32 0, align 4, !dbg !0
@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [53 x i8] c";DRB127-tasking-threadprivate1-orig-no.c;main;31;7;;\00", align 1
@var = common dso_local global i32 0, align 4, !dbg !6
@2 = private unnamed_addr constant [53 x i8] c";DRB127-tasking-threadprivate1-orig-no.c;main;28;5;;\00", align 1
@3 = private unnamed_addr constant [53 x i8] c";DRB127-tasking-threadprivate1-orig-no.c;main;26;3;;\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !13 {
entry:
  %retval = alloca i32, align 4
  %agg.captured = alloca %struct.anon, align 1
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  %2 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4
  store i8* getelementptr inbounds ([53 x i8], [53 x i8]* @3, i32 0, i32 0), i8** %2, align 8
  %3 = call i32 @__kmpc_global_thread_num(%struct.ident_t* %.kmpc_loc.addr)
  store i32 0, i32* %retval, align 4
  %4 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !16
  store i8* getelementptr inbounds ([53 x i8], [53 x i8]* @3, i32 0, i32 0), i8** %4, align 8, !dbg !16
  %5 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* %.kmpc_loc.addr, i32 %3, i32 1, i64 40, i64 0, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates.3*)* @.omp_task_entry..4 to i32 (i32, i8*)*)), !dbg !16
  %6 = bitcast i8* %5 to %struct.kmp_task_t_with_privates.3*, !dbg !16
  %7 = getelementptr inbounds %struct.kmp_task_t_with_privates.3, %struct.kmp_task_t_with_privates.3* %6, i32 0, i32 0, !dbg !16
  %8 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !16
  store i8* getelementptr inbounds ([53 x i8], [53 x i8]* @3, i32 0, i32 0), i8** %8, align 8, !dbg !16
  %9 = call i32 @__kmpc_omp_task(%struct.ident_t* %.kmpc_loc.addr, i32 %3, i8* %5), !dbg !16
  %10 = load i32, i32* @var, align 4, !dbg !17
  %cmp = icmp eq i32 %10, 2, !dbg !19
  br i1 %cmp, label %if.then, label %if.end, !dbg !20

if.then:                                          ; preds = %entry
  %11 = load i32, i32* @var, align 4, !dbg !21
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %11), !dbg !22
  br label %if.end, !dbg !22

if.end:                                           ; preds = %if.then, %entry
  ret i32 0, !dbg !23
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline norecurse nounwind uwtable
define internal i32 @.omp_task_entry.(i32 %0, %struct.kmp_task_t_with_privates* noalias %1) #2 !dbg !24 {
entry:
  %.global_tid..addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %.global_tid..addr.i, metadata !26, metadata !DIExpression()), !dbg !61
  %.part_id..addr.i = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %.part_id..addr.i, metadata !63, metadata !DIExpression()), !dbg !61
  %.privates..addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %.privates..addr.i, metadata !64, metadata !DIExpression()), !dbg !61
  %.copy_fn..addr.i = alloca void (i8*, ...)*, align 8
  call void @llvm.dbg.declare(metadata void (i8*, ...)** %.copy_fn..addr.i, metadata !65, metadata !DIExpression()), !dbg !61
  %.task_t..addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %.task_t..addr.i, metadata !66, metadata !DIExpression()), !dbg !61
  %__context.addr.i = alloca %struct.anon.1*, align 8
  call void @llvm.dbg.declare(metadata %struct.anon.1** %__context.addr.i, metadata !67, metadata !DIExpression()), !dbg !61
  %.addr = alloca i32, align 4
  %.addr1 = alloca %struct.kmp_task_t_with_privates*, align 8
  store i32 %0, i32* %.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %.addr, metadata !68, metadata !DIExpression()), !dbg !69
  store %struct.kmp_task_t_with_privates* %1, %struct.kmp_task_t_with_privates** %.addr1, align 8
  call void @llvm.dbg.declare(metadata %struct.kmp_task_t_with_privates** %.addr1, metadata !70, metadata !DIExpression()), !dbg !69
  %2 = load i32, i32* %.addr, align 4, !dbg !81
  %3 = load %struct.kmp_task_t_with_privates*, %struct.kmp_task_t_with_privates** %.addr1, align 8, !dbg !81
  %4 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %3, i32 0, i32 0, !dbg !81
  %5 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 2, !dbg !81
  %6 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 0, !dbg !81
  %7 = load i8*, i8** %6, align 8, !dbg !81
  %8 = bitcast i8* %7 to %struct.anon.1*, !dbg !81
  %9 = bitcast %struct.kmp_task_t_with_privates* %3 to i8*, !dbg !81
  store i32 %2, i32* %.global_tid..addr.i, align 4, !noalias !82
  store i32* %5, i32** %.part_id..addr.i, align 8, !noalias !82
  store i8* null, i8** %.privates..addr.i, align 8, !noalias !82
  store void (i8*, ...)* null, void (i8*, ...)** %.copy_fn..addr.i, align 8, !noalias !82
  store i8* %9, i8** %.task_t..addr.i, align 8, !noalias !82
  store %struct.anon.1* %8, %struct.anon.1** %__context.addr.i, align 8, !noalias !82
  %10 = load %struct.anon.1*, %struct.anon.1** %__context.addr.i, align 8, !dbg !88, !noalias !82
  ret i32 0, !dbg !81
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i8* @__kmpc_omp_task_alloc(%struct.ident_t*, i32, i32, i64, i64, i32 (i32, i8*)*)

declare dso_local i32 @__kmpc_omp_task(%struct.ident_t*, i32, i8*)

; Function Attrs: noinline norecurse nounwind uwtable
define internal i32 @.omp_task_entry..3(i32 %0, %struct.kmp_task_t_with_privates.2* noalias %1) #2 !dbg !89 {
entry:
  %.global_tid..addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %.global_tid..addr.i, metadata !90, metadata !DIExpression()), !dbg !91
  %.part_id..addr.i = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %.part_id..addr.i, metadata !93, metadata !DIExpression()), !dbg !91
  %.privates..addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %.privates..addr.i, metadata !94, metadata !DIExpression()), !dbg !91
  %.copy_fn..addr.i = alloca void (i8*, ...)*, align 8
  call void @llvm.dbg.declare(metadata void (i8*, ...)** %.copy_fn..addr.i, metadata !95, metadata !DIExpression()), !dbg !91
  %.task_t..addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %.task_t..addr.i, metadata !96, metadata !DIExpression()), !dbg !91
  %__context.addr.i = alloca %struct.anon.0*, align 8
  call void @llvm.dbg.declare(metadata %struct.anon.0** %__context.addr.i, metadata !97, metadata !DIExpression()), !dbg !91
  %.kmpc_loc.addr.i = alloca %struct.ident_t, align 8
  %.addr = alloca i32, align 4
  %.addr1 = alloca %struct.kmp_task_t_with_privates.2*, align 8
  store i32 %0, i32* %.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %.addr, metadata !98, metadata !DIExpression()), !dbg !99
  store %struct.kmp_task_t_with_privates.2* %1, %struct.kmp_task_t_with_privates.2** %.addr1, align 8
  call void @llvm.dbg.declare(metadata %struct.kmp_task_t_with_privates.2** %.addr1, metadata !100, metadata !DIExpression()), !dbg !99
  %2 = load i32, i32* %.addr, align 4, !dbg !106
  %3 = load %struct.kmp_task_t_with_privates.2*, %struct.kmp_task_t_with_privates.2** %.addr1, align 8, !dbg !106
  %4 = getelementptr inbounds %struct.kmp_task_t_with_privates.2, %struct.kmp_task_t_with_privates.2* %3, i32 0, i32 0, !dbg !106
  %5 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 2, !dbg !106
  %6 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 0, !dbg !106
  %7 = load i8*, i8** %6, align 8, !dbg !106
  %8 = bitcast i8* %7 to %struct.anon.0*, !dbg !106
  %9 = bitcast %struct.kmp_task_t_with_privates.2* %3 to i8*, !dbg !106
  %10 = bitcast %struct.ident_t* %.kmpc_loc.addr.i to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 bitcast (%struct.ident_t* @0 to i8*), i64 24, i1 false) #6, !noalias !107
  store i32 %2, i32* %.global_tid..addr.i, align 4, !noalias !107
  store i32* %5, i32** %.part_id..addr.i, align 8, !noalias !107
  store i8* null, i8** %.privates..addr.i, align 8, !noalias !107
  store void (i8*, ...)* null, void (i8*, ...)** %.copy_fn..addr.i, align 8, !noalias !107
  store i8* %9, i8** %.task_t..addr.i, align 8, !noalias !107
  store %struct.anon.0* %8, %struct.anon.0** %__context.addr.i, align 8, !noalias !107
  %11 = load %struct.anon.0*, %struct.anon.0** %__context.addr.i, align 8, !dbg !113, !noalias !107
  store i32 1, i32* @tp, align 4, !dbg !114
  %12 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr.i, i32 0, i32 4, !dbg !116
  store i8* getelementptr inbounds ([53 x i8], [53 x i8]* @1, i32 0, i32 0), i8** %12, align 8, !dbg !116, !noalias !107
  %13 = load i32, i32* %.global_tid..addr.i, align 4, !dbg !116, !noalias !107
  %14 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* %.kmpc_loc.addr.i, i32 %13, i32 1, i64 40, i64 0, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates*)* @.omp_task_entry. to i32 (i32, i8*)*)) #6, !dbg !116
  %15 = bitcast i8* %14 to %struct.kmp_task_t_with_privates*, !dbg !116
  %16 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %15, i32 0, i32 0, !dbg !116
  %17 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr.i, i32 0, i32 4, !dbg !116
  store i8* getelementptr inbounds ([53 x i8], [53 x i8]* @1, i32 0, i32 0), i8** %17, align 8, !dbg !116, !noalias !107
  %18 = call i32 @__kmpc_omp_task(%struct.ident_t* %.kmpc_loc.addr.i, i32 %13, i8* %14) #6, !dbg !116
  %19 = load i32, i32* @tp, align 4, !dbg !117
  store i32 %19, i32* @var, align 4, !dbg !118
  ret i32 0, !dbg !106
}

; Function Attrs: noinline norecurse nounwind uwtable
define internal i32 @.omp_task_entry..4(i32 %0, %struct.kmp_task_t_with_privates.3* noalias %1) #2 !dbg !119 {
entry:
  %.global_tid..addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %.global_tid..addr.i, metadata !120, metadata !DIExpression()), !dbg !121
  %.part_id..addr.i = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %.part_id..addr.i, metadata !123, metadata !DIExpression()), !dbg !121
  %.privates..addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %.privates..addr.i, metadata !124, metadata !DIExpression()), !dbg !121
  %.copy_fn..addr.i = alloca void (i8*, ...)*, align 8
  call void @llvm.dbg.declare(metadata void (i8*, ...)** %.copy_fn..addr.i, metadata !125, metadata !DIExpression()), !dbg !121
  %.task_t..addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %.task_t..addr.i, metadata !126, metadata !DIExpression()), !dbg !121
  %__context.addr.i = alloca %struct.anon*, align 8
  call void @llvm.dbg.declare(metadata %struct.anon** %__context.addr.i, metadata !127, metadata !DIExpression()), !dbg !121
  %.kmpc_loc.addr.i = alloca %struct.ident_t, align 8
  %.addr = alloca i32, align 4
  %.addr1 = alloca %struct.kmp_task_t_with_privates.3*, align 8
  store i32 %0, i32* %.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %.addr, metadata !128, metadata !DIExpression()), !dbg !129
  store %struct.kmp_task_t_with_privates.3* %1, %struct.kmp_task_t_with_privates.3** %.addr1, align 8
  call void @llvm.dbg.declare(metadata %struct.kmp_task_t_with_privates.3** %.addr1, metadata !130, metadata !DIExpression()), !dbg !129
  %2 = load i32, i32* %.addr, align 4, !dbg !136
  %3 = load %struct.kmp_task_t_with_privates.3*, %struct.kmp_task_t_with_privates.3** %.addr1, align 8, !dbg !136
  %4 = getelementptr inbounds %struct.kmp_task_t_with_privates.3, %struct.kmp_task_t_with_privates.3* %3, i32 0, i32 0, !dbg !136
  %5 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 2, !dbg !136
  %6 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 0, !dbg !136
  %7 = load i8*, i8** %6, align 8, !dbg !136
  %8 = bitcast i8* %7 to %struct.anon*, !dbg !136
  %9 = bitcast %struct.kmp_task_t_with_privates.3* %3 to i8*, !dbg !136
  %10 = bitcast %struct.ident_t* %.kmpc_loc.addr.i to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 bitcast (%struct.ident_t* @0 to i8*), i64 24, i1 false) #6, !noalias !137
  store i32 %2, i32* %.global_tid..addr.i, align 4, !noalias !137
  store i32* %5, i32** %.part_id..addr.i, align 8, !noalias !137
  store i8* null, i8** %.privates..addr.i, align 8, !noalias !137
  store void (i8*, ...)* null, void (i8*, ...)** %.copy_fn..addr.i, align 8, !noalias !137
  store i8* %9, i8** %.task_t..addr.i, align 8, !noalias !137
  store %struct.anon* %8, %struct.anon** %__context.addr.i, align 8, !noalias !137
  %11 = load %struct.anon*, %struct.anon** %__context.addr.i, align 8, !dbg !143, !noalias !137
  %12 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr.i, i32 0, i32 4, !dbg !144
  store i8* getelementptr inbounds ([53 x i8], [53 x i8]* @2, i32 0, i32 0), i8** %12, align 8, !dbg !144, !noalias !137
  %13 = load i32, i32* %.global_tid..addr.i, align 4, !dbg !144, !noalias !137
  %14 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* %.kmpc_loc.addr.i, i32 %13, i32 1, i64 40, i64 0, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates.2*)* @.omp_task_entry..3 to i32 (i32, i8*)*)) #6, !dbg !144
  %15 = bitcast i8* %14 to %struct.kmp_task_t_with_privates.2*, !dbg !144
  %16 = getelementptr inbounds %struct.kmp_task_t_with_privates.2, %struct.kmp_task_t_with_privates.2* %15, i32 0, i32 0, !dbg !144
  %17 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr.i, i32 0, i32 4, !dbg !144
  store i8* getelementptr inbounds ([53 x i8], [53 x i8]* @2, i32 0, i32 0), i8** %17, align 8, !dbg !144, !noalias !137
  %18 = call i32 @__kmpc_omp_task(%struct.ident_t* %.kmpc_loc.addr.i, i32 %13, i8* %14) #6, !dbg !144
  store i32 2, i32* @tp, align 4, !dbg !146
  ret i32 0, !dbg !136
}

declare dso_local i32 @__kmpc_global_thread_num(%struct.ident_t*)

declare dso_local i32 @printf(i8*, ...) #4

; Function Attrs: noinline nounwind uwtable
define weak_odr hidden i32* @_ZTW2tp() #5 comdat {
  ret i32* @tp
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noinline norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!9, !10, !11}
!llvm.ident = !{!12}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "tp", scope: !2, file: !3, line: 21, type: !8, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.1 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "DRB127-tasking-threadprivate1-orig-no.c", directory: "/home/yanze/code/OpenRace/tests/data/integration/dataracebench")
!4 = !{}
!5 = !{!0, !6}
!6 = !DIGlobalVariableExpression(var: !7, expr: !DIExpression())
!7 = distinct !DIGlobalVariable(name: "var", scope: !2, file: !3, line: 23, type: !8, isLocal: false, isDefinition: true)
!8 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!9 = !{i32 7, !"Dwarf Version", i32 4}
!10 = !{i32 2, !"Debug Info Version", i32 3}
!11 = !{i32 1, !"wchar_size", i32 4}
!12 = !{!"clang version 10.0.1 "}
!13 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 25, type: !14, scopeLine: 25, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!14 = !DISubroutineType(types: !15)
!15 = !{!8}
!16 = !DILocation(line: 26, column: 3, scope: !13)
!17 = !DILocation(line: 39, column: 6, scope: !18)
!18 = distinct !DILexicalBlock(scope: !13, file: !3, line: 39, column: 6)
!19 = !DILocation(line: 39, column: 9, scope: !18)
!20 = !DILocation(line: 39, column: 6, scope: !13)
!21 = !DILocation(line: 39, column: 28, scope: !18)
!22 = !DILocation(line: 39, column: 14, scope: !18)
!23 = !DILocation(line: 40, column: 3, scope: !13)
!24 = distinct !DISubprogram(linkageName: ".omp_task_entry.", scope: !3, file: !3, line: 31, type: !25, scopeLine: 31, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!25 = !DISubroutineType(types: !4)
!26 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !27, type: !30, flags: DIFlagArtificial)
!27 = distinct !DISubprogram(name: ".omp_outlined..2", scope: !3, file: !3, line: 31, type: !28, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!28 = !DISubroutineType(types: !29)
!29 = !{null, !30, !31, !34, !37, !42, !43}
!30 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!31 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !32)
!32 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !33)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !30, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !35)
!35 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !36)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!38 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !39)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = !DISubroutineType(types: !41)
!41 = !{null, !34, null}
!42 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !36)
!43 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !44)
!44 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !45)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !47, file: !3, line: 31, elements: !4)
!47 = distinct !DISubprogram(name: ".omp_outlined..1", scope: !3, file: !3, line: 28, type: !48, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!48 = !DISubroutineType(types: !49)
!49 = !{null, !30, !31, !34, !37, !42, !50}
!50 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !51)
!51 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !52)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !54, file: !3, line: 28, elements: !4)
!54 = distinct !DISubprogram(name: ".omp_outlined.", scope: !3, file: !3, line: 26, type: !55, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!55 = !DISubroutineType(types: !56)
!56 = !{null, !30, !31, !34, !37, !42, !57}
!57 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !58)
!58 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !59)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!60 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !13, file: !3, line: 26, elements: !4)
!61 = !DILocation(line: 0, scope: !27, inlinedAt: !62)
!62 = distinct !DILocation(line: 31, column: 7, scope: !24)
!63 = !DILocalVariable(name: ".part_id.", arg: 2, scope: !27, type: !31, flags: DIFlagArtificial)
!64 = !DILocalVariable(name: ".privates.", arg: 3, scope: !27, type: !34, flags: DIFlagArtificial)
!65 = !DILocalVariable(name: ".copy_fn.", arg: 4, scope: !27, type: !37, flags: DIFlagArtificial)
!66 = !DILocalVariable(name: ".task_t.", arg: 5, scope: !27, type: !42, flags: DIFlagArtificial)
!67 = !DILocalVariable(name: "__context", arg: 6, scope: !27, type: !43, flags: DIFlagArtificial)
!68 = !DILocalVariable(arg: 1, scope: !24, type: !8, flags: DIFlagArtificial)
!69 = !DILocation(line: 0, scope: !24)
!70 = !DILocalVariable(arg: 2, scope: !24, type: !71, flags: DIFlagArtificial)
!71 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !72)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!73 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t_with_privates", file: !3, size: 320, elements: !74)
!74 = !{!75}
!75 = !DIDerivedType(tag: DW_TAG_member, scope: !73, file: !3, baseType: !76, size: 320)
!76 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t", file: !3, size: 320, elements: !77)
!77 = !{!78, !80}
!78 = !DIDerivedType(tag: DW_TAG_member, scope: !76, file: !3, baseType: !79, size: 64, offset: 192)
!79 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "kmp_cmplrdata_t", file: !3, size: 64, elements: !4)
!80 = !DIDerivedType(tag: DW_TAG_member, scope: !76, file: !3, baseType: !79, size: 64, offset: 256)
!81 = !DILocation(line: 31, column: 7, scope: !24)
!82 = !{!83, !85, !86, !87}
!83 = distinct !{!83, !84, !".omp_outlined..2: %.part_id."}
!84 = distinct !{!84, !".omp_outlined..2"}
!85 = distinct !{!85, !84, !".omp_outlined..2: %.privates."}
!86 = distinct !{!86, !84, !".omp_outlined..2: %.copy_fn."}
!87 = distinct !{!87, !84, !".omp_outlined..2: %__context"}
!88 = !DILocation(line: 32, column: 7, scope: !27, inlinedAt: !62)
!89 = distinct !DISubprogram(linkageName: ".omp_task_entry..3", scope: !3, file: !3, line: 28, type: !25, scopeLine: 28, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!90 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !47, type: !30, flags: DIFlagArtificial)
!91 = !DILocation(line: 0, scope: !47, inlinedAt: !92)
!92 = distinct !DILocation(line: 28, column: 5, scope: !89)
!93 = !DILocalVariable(name: ".part_id.", arg: 2, scope: !47, type: !31, flags: DIFlagArtificial)
!94 = !DILocalVariable(name: ".privates.", arg: 3, scope: !47, type: !34, flags: DIFlagArtificial)
!95 = !DILocalVariable(name: ".copy_fn.", arg: 4, scope: !47, type: !37, flags: DIFlagArtificial)
!96 = !DILocalVariable(name: ".task_t.", arg: 5, scope: !47, type: !42, flags: DIFlagArtificial)
!97 = !DILocalVariable(name: "__context", arg: 6, scope: !47, type: !50, flags: DIFlagArtificial)
!98 = !DILocalVariable(arg: 1, scope: !89, type: !8, flags: DIFlagArtificial)
!99 = !DILocation(line: 0, scope: !89)
!100 = !DILocalVariable(arg: 2, scope: !89, type: !101, flags: DIFlagArtificial)
!101 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !102)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t_with_privates", file: !3, size: 320, elements: !104)
!104 = !{!105}
!105 = !DIDerivedType(tag: DW_TAG_member, scope: !103, file: !3, baseType: !76, size: 320)
!106 = !DILocation(line: 28, column: 5, scope: !89)
!107 = !{!108, !110, !111, !112}
!108 = distinct !{!108, !109, !".omp_outlined..1: %.part_id."}
!109 = distinct !{!109, !".omp_outlined..1"}
!110 = distinct !{!110, !109, !".omp_outlined..1: %.privates."}
!111 = distinct !{!111, !109, !".omp_outlined..1: %.copy_fn."}
!112 = distinct !{!112, !109, !".omp_outlined..1: %__context"}
!113 = !DILocation(line: 29, column: 5, scope: !47, inlinedAt: !92)
!114 = !DILocation(line: 30, column: 10, scope: !115, inlinedAt: !92)
!115 = distinct !DILexicalBlock(scope: !47, file: !3, line: 29, column: 5)
!116 = !DILocation(line: 31, column: 7, scope: !115, inlinedAt: !92)
!117 = !DILocation(line: 34, column: 13, scope: !115, inlinedAt: !92)
!118 = !DILocation(line: 34, column: 11, scope: !115, inlinedAt: !92)
!119 = distinct !DISubprogram(linkageName: ".omp_task_entry..4", scope: !3, file: !3, line: 26, type: !25, scopeLine: 26, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!120 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !54, type: !30, flags: DIFlagArtificial)
!121 = !DILocation(line: 0, scope: !54, inlinedAt: !122)
!122 = distinct !DILocation(line: 26, column: 3, scope: !119)
!123 = !DILocalVariable(name: ".part_id.", arg: 2, scope: !54, type: !31, flags: DIFlagArtificial)
!124 = !DILocalVariable(name: ".privates.", arg: 3, scope: !54, type: !34, flags: DIFlagArtificial)
!125 = !DILocalVariable(name: ".copy_fn.", arg: 4, scope: !54, type: !37, flags: DIFlagArtificial)
!126 = !DILocalVariable(name: ".task_t.", arg: 5, scope: !54, type: !42, flags: DIFlagArtificial)
!127 = !DILocalVariable(name: "__context", arg: 6, scope: !54, type: !57, flags: DIFlagArtificial)
!128 = !DILocalVariable(arg: 1, scope: !119, type: !8, flags: DIFlagArtificial)
!129 = !DILocation(line: 0, scope: !119)
!130 = !DILocalVariable(arg: 2, scope: !119, type: !131, flags: DIFlagArtificial)
!131 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !132)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t_with_privates", file: !3, size: 320, elements: !134)
!134 = !{!135}
!135 = !DIDerivedType(tag: DW_TAG_member, scope: !133, file: !3, baseType: !76, size: 320)
!136 = !DILocation(line: 26, column: 3, scope: !119)
!137 = !{!138, !140, !141, !142}
!138 = distinct !{!138, !139, !".omp_outlined.: %.part_id."}
!139 = distinct !{!139, !".omp_outlined."}
!140 = distinct !{!140, !139, !".omp_outlined.: %.privates."}
!141 = distinct !{!141, !139, !".omp_outlined.: %.copy_fn."}
!142 = distinct !{!142, !139, !".omp_outlined.: %__context"}
!143 = !DILocation(line: 27, column: 3, scope: !54, inlinedAt: !122)
!144 = !DILocation(line: 28, column: 5, scope: !145, inlinedAt: !122)
!145 = distinct !DILexicalBlock(scope: !54, file: !3, line: 27, column: 3)
!146 = !DILocation(line: 36, column: 7, scope: !145, inlinedAt: !122)
