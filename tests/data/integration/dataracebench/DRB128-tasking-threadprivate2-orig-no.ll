; ModuleID = 'integration/dataracebench/DRB128-tasking-threadprivate2-orig-no.c'
source_filename = "integration/dataracebench/DRB128-tasking-threadprivate2-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }
%struct.anon = type {}
%struct.kmp_task_t_with_privates.3 = type { %struct.kmp_task_t }
%struct.kmp_task_t = type { i8*, i32 (i32, i8*)*, i32, %union.kmp_cmplrdata_t, %union.kmp_cmplrdata_t }
%union.kmp_cmplrdata_t = type { i32 (i32, i8*)* }
%struct.anon.0 = type {}
%struct.kmp_task_t_with_privates.2 = type { %struct.kmp_task_t }
%struct.anon.1 = type {}
%struct.kmp_task_t_with_privates = type { %struct.kmp_task_t }

$_ZTW2tp = comdat any

@tp = dso_local thread_local global i32 0, align 4, !dbg !0
@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [79 x i8] c";integration/dataracebench/DRB128-tasking-threadprivate2-orig-no.c;main;32;7;;\00", align 1
@var = common dso_local global i32 0, align 4, !dbg !6
@2 = private unnamed_addr constant [79 x i8] c";integration/dataracebench/DRB128-tasking-threadprivate2-orig-no.c;main;29;5;;\00", align 1
@3 = private unnamed_addr constant [79 x i8] c";integration/dataracebench/DRB128-tasking-threadprivate2-orig-no.c;main;27;3;;\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main() #0 !dbg !13 {
entry:
  %retval = alloca i32, align 4
  %agg.captured = alloca %struct.anon, align 1
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  %2 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4
  store i8* getelementptr inbounds ([79 x i8], [79 x i8]* @3, i32 0, i32 0), i8** %2, align 8, !tbaa !16
  %3 = call i32 @__kmpc_global_thread_num(%struct.ident_t* %.kmpc_loc.addr)
  store i32 0, i32* %retval, align 4
  %4 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !22
  store i8* getelementptr inbounds ([79 x i8], [79 x i8]* @3, i32 0, i32 0), i8** %4, align 8, !dbg !22, !tbaa !16
  %5 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* %.kmpc_loc.addr, i32 %3, i32 1, i64 40, i64 0, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates.3*)* @.omp_task_entry..4 to i32 (i32, i8*)*)), !dbg !22
  %6 = bitcast i8* %5 to %struct.kmp_task_t_with_privates.3*, !dbg !22
  %7 = getelementptr inbounds %struct.kmp_task_t_with_privates.3, %struct.kmp_task_t_with_privates.3* %6, i32 0, i32 0, !dbg !22
  %8 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !22
  store i8* getelementptr inbounds ([79 x i8], [79 x i8]* @3, i32 0, i32 0), i8** %8, align 8, !dbg !22, !tbaa !16
  %9 = call i32 @__kmpc_omp_task(%struct.ident_t* %.kmpc_loc.addr, i32 %3, i8* %5), !dbg !22
  ret i32 0, !dbg !23
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @.omp_outlined.(i32 %.global_tid., i32* noalias %.part_id., i8* noalias %.privates., void (i8*, ...)* noalias %.copy_fn., i8* %.task_t., %struct.anon* noalias %__context) #1 !dbg !24 {
entry:
  %.global_tid..addr = alloca i32, align 4
  %.part_id..addr = alloca i32*, align 8
  %.privates..addr = alloca i8*, align 8
  %.copy_fn..addr = alloca void (i8*, ...)*, align 8
  %.task_t..addr = alloca i8*, align 8
  %__context.addr = alloca %struct.anon*, align 8
  %agg.captured = alloca %struct.anon.0, align 1
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32 %.global_tid., i32* %.global_tid..addr, align 4, !tbaa !51
  call void @llvm.dbg.declare(metadata i32* %.global_tid..addr, metadata !45, metadata !DIExpression()), !dbg !52
  store i32* %.part_id., i32** %.part_id..addr, align 8, !tbaa !53
  call void @llvm.dbg.declare(metadata i32** %.part_id..addr, metadata !46, metadata !DIExpression()), !dbg !52
  store i8* %.privates., i8** %.privates..addr, align 8, !tbaa !53
  call void @llvm.dbg.declare(metadata i8** %.privates..addr, metadata !47, metadata !DIExpression()), !dbg !52
  store void (i8*, ...)* %.copy_fn., void (i8*, ...)** %.copy_fn..addr, align 8, !tbaa !53
  call void @llvm.dbg.declare(metadata void (i8*, ...)** %.copy_fn..addr, metadata !48, metadata !DIExpression()), !dbg !52
  store i8* %.task_t., i8** %.task_t..addr, align 8, !tbaa !53
  call void @llvm.dbg.declare(metadata i8** %.task_t..addr, metadata !49, metadata !DIExpression()), !dbg !52
  store %struct.anon* %__context, %struct.anon** %__context.addr, align 8, !tbaa !53
  call void @llvm.dbg.declare(metadata %struct.anon** %__context.addr, metadata !50, metadata !DIExpression()), !dbg !52
  %2 = load %struct.anon*, %struct.anon** %__context.addr, align 8, !dbg !54
  %3 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !55
  store i8* getelementptr inbounds ([79 x i8], [79 x i8]* @2, i32 0, i32 0), i8** %3, align 8, !dbg !55, !tbaa !16
  %4 = load i32, i32* %.global_tid..addr, align 4, !dbg !55, !tbaa !51
  %5 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* %.kmpc_loc.addr, i32 %4, i32 1, i64 40, i64 0, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates.2*)* @.omp_task_entry..3 to i32 (i32, i8*)*)), !dbg !55
  %6 = bitcast i8* %5 to %struct.kmp_task_t_with_privates.2*, !dbg !55
  %7 = getelementptr inbounds %struct.kmp_task_t_with_privates.2, %struct.kmp_task_t_with_privates.2* %6, i32 0, i32 0, !dbg !55
  %8 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !55
  store i8* getelementptr inbounds ([79 x i8], [79 x i8]* @2, i32 0, i32 0), i8** %8, align 8, !dbg !55, !tbaa !16
  %9 = call i32 @__kmpc_omp_task(%struct.ident_t* %.kmpc_loc.addr, i32 %4, i8* %5), !dbg !55
  ret void, !dbg !57
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: alwaysinline nounwind uwtable
define internal void @.omp_outlined..1(i32 %.global_tid., i32* noalias %.part_id., i8* noalias %.privates., void (i8*, ...)* noalias %.copy_fn., i8* %.task_t., %struct.anon.0* noalias %__context) #1 !dbg !58 {
entry:
  %.global_tid..addr = alloca i32, align 4
  %.part_id..addr = alloca i32*, align 8
  %.privates..addr = alloca i8*, align 8
  %.copy_fn..addr = alloca void (i8*, ...)*, align 8
  %.task_t..addr = alloca i8*, align 8
  %__context.addr = alloca %struct.anon.0*, align 8
  %agg.captured = alloca %struct.anon.1, align 1
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32 %.global_tid., i32* %.global_tid..addr, align 4, !tbaa !51
  call void @llvm.dbg.declare(metadata i32* %.global_tid..addr, metadata !66, metadata !DIExpression()), !dbg !72
  store i32* %.part_id., i32** %.part_id..addr, align 8, !tbaa !53
  call void @llvm.dbg.declare(metadata i32** %.part_id..addr, metadata !67, metadata !DIExpression()), !dbg !72
  store i8* %.privates., i8** %.privates..addr, align 8, !tbaa !53
  call void @llvm.dbg.declare(metadata i8** %.privates..addr, metadata !68, metadata !DIExpression()), !dbg !72
  store void (i8*, ...)* %.copy_fn., void (i8*, ...)** %.copy_fn..addr, align 8, !tbaa !53
  call void @llvm.dbg.declare(metadata void (i8*, ...)** %.copy_fn..addr, metadata !69, metadata !DIExpression()), !dbg !72
  store i8* %.task_t., i8** %.task_t..addr, align 8, !tbaa !53
  call void @llvm.dbg.declare(metadata i8** %.task_t..addr, metadata !70, metadata !DIExpression()), !dbg !72
  store %struct.anon.0* %__context, %struct.anon.0** %__context.addr, align 8, !tbaa !53
  call void @llvm.dbg.declare(metadata %struct.anon.0** %__context.addr, metadata !71, metadata !DIExpression()), !dbg !72
  %2 = load %struct.anon.0*, %struct.anon.0** %__context.addr, align 8, !dbg !73
  store i32 1, i32* @tp, align 4, !dbg !74, !tbaa !51
  %3 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !76
  store i8* getelementptr inbounds ([79 x i8], [79 x i8]* @1, i32 0, i32 0), i8** %3, align 8, !dbg !76, !tbaa !16
  %4 = load i32, i32* %.global_tid..addr, align 4, !dbg !76, !tbaa !51
  %5 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* %.kmpc_loc.addr, i32 %4, i32 1, i64 40, i64 0, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates*)* @.omp_task_entry. to i32 (i32, i8*)*)), !dbg !76
  %6 = bitcast i8* %5 to %struct.kmp_task_t_with_privates*, !dbg !76
  %7 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %6, i32 0, i32 0, !dbg !76
  %8 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !76
  store i8* getelementptr inbounds ([79 x i8], [79 x i8]* @1, i32 0, i32 0), i8** %8, align 8, !dbg !76, !tbaa !16
  %9 = call i32 @__kmpc_omp_task(%struct.ident_t* %.kmpc_loc.addr, i32 %4, i8* %5), !dbg !76
  %10 = load i32, i32* @tp, align 4, !dbg !77, !tbaa !51
  store i32 %10, i32* @var, align 4, !dbg !78, !tbaa !51
  ret void, !dbg !79
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @.omp_outlined..2(i32 %.global_tid., i32* noalias %.part_id., i8* noalias %.privates., void (i8*, ...)* noalias %.copy_fn., i8* %.task_t., %struct.anon.1* noalias %__context) #1 !dbg !80 {
entry:
  %.global_tid..addr = alloca i32, align 4
  %.part_id..addr = alloca i32*, align 8
  %.privates..addr = alloca i8*, align 8
  %.copy_fn..addr = alloca void (i8*, ...)*, align 8
  %.task_t..addr = alloca i8*, align 8
  %__context.addr = alloca %struct.anon.1*, align 8
  store i32 %.global_tid., i32* %.global_tid..addr, align 4, !tbaa !51
  call void @llvm.dbg.declare(metadata i32* %.global_tid..addr, metadata !88, metadata !DIExpression()), !dbg !94
  store i32* %.part_id., i32** %.part_id..addr, align 8, !tbaa !53
  call void @llvm.dbg.declare(metadata i32** %.part_id..addr, metadata !89, metadata !DIExpression()), !dbg !94
  store i8* %.privates., i8** %.privates..addr, align 8, !tbaa !53
  call void @llvm.dbg.declare(metadata i8** %.privates..addr, metadata !90, metadata !DIExpression()), !dbg !94
  store void (i8*, ...)* %.copy_fn., void (i8*, ...)** %.copy_fn..addr, align 8, !tbaa !53
  call void @llvm.dbg.declare(metadata void (i8*, ...)** %.copy_fn..addr, metadata !91, metadata !DIExpression()), !dbg !94
  store i8* %.task_t., i8** %.task_t..addr, align 8, !tbaa !53
  call void @llvm.dbg.declare(metadata i8** %.task_t..addr, metadata !92, metadata !DIExpression()), !dbg !94
  store %struct.anon.1* %__context, %struct.anon.1** %__context.addr, align 8, !tbaa !53
  call void @llvm.dbg.declare(metadata %struct.anon.1** %__context.addr, metadata !93, metadata !DIExpression()), !dbg !94
  %0 = load %struct.anon.1*, %struct.anon.1** %__context.addr, align 8, !dbg !95
  ret void, !dbg !96
}

; Function Attrs: norecurse nounwind uwtable
define internal i32 @.omp_task_entry.(i32 %0, %struct.kmp_task_t_with_privates* noalias %1) #3 !dbg !97 {
entry:
  %.addr = alloca i32, align 4
  %.addr1 = alloca %struct.kmp_task_t_with_privates*, align 8
  store i32 %0, i32* %.addr, align 4, !tbaa !51
  call void @llvm.dbg.declare(metadata i32* %.addr, metadata !100, metadata !DIExpression()), !dbg !112
  store %struct.kmp_task_t_with_privates* %1, %struct.kmp_task_t_with_privates** %.addr1, align 8, !tbaa !53
  call void @llvm.dbg.declare(metadata %struct.kmp_task_t_with_privates** %.addr1, metadata !101, metadata !DIExpression()), !dbg !112
  %2 = load i32, i32* %.addr, align 4, !dbg !113, !tbaa !51
  %3 = load %struct.kmp_task_t_with_privates*, %struct.kmp_task_t_with_privates** %.addr1, align 8, !dbg !113
  %4 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %3, i32 0, i32 0, !dbg !113
  %5 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 2, !dbg !113
  %6 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 0, !dbg !113
  %7 = load i8*, i8** %6, align 8, !dbg !113, !tbaa !114
  %8 = bitcast i8* %7 to %struct.anon.1*, !dbg !113
  %9 = bitcast %struct.kmp_task_t_with_privates* %3 to i8*, !dbg !113
  call void @.omp_outlined..2(i32 %2, i32* %5, i8* null, void (i8*, ...)* null, i8* %9, %struct.anon.1* %8) #6, !dbg !113
  ret i32 0, !dbg !113
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

declare dso_local i8* @__kmpc_omp_task_alloc(%struct.ident_t*, i32, i32, i64, i64, i32 (i32, i8*)*)

declare dso_local i32 @__kmpc_omp_task(%struct.ident_t*, i32, i8*)

; Function Attrs: norecurse nounwind uwtable
define internal i32 @.omp_task_entry..3(i32 %0, %struct.kmp_task_t_with_privates.2* noalias %1) #3 !dbg !117 {
entry:
  %.addr = alloca i32, align 4
  %.addr1 = alloca %struct.kmp_task_t_with_privates.2*, align 8
  store i32 %0, i32* %.addr, align 4, !tbaa !51
  call void @llvm.dbg.declare(metadata i32* %.addr, metadata !119, metadata !DIExpression()), !dbg !126
  store %struct.kmp_task_t_with_privates.2* %1, %struct.kmp_task_t_with_privates.2** %.addr1, align 8, !tbaa !53
  call void @llvm.dbg.declare(metadata %struct.kmp_task_t_with_privates.2** %.addr1, metadata !120, metadata !DIExpression()), !dbg !126
  %2 = load i32, i32* %.addr, align 4, !dbg !127, !tbaa !51
  %3 = load %struct.kmp_task_t_with_privates.2*, %struct.kmp_task_t_with_privates.2** %.addr1, align 8, !dbg !127
  %4 = getelementptr inbounds %struct.kmp_task_t_with_privates.2, %struct.kmp_task_t_with_privates.2* %3, i32 0, i32 0, !dbg !127
  %5 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 2, !dbg !127
  %6 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 0, !dbg !127
  %7 = load i8*, i8** %6, align 8, !dbg !127, !tbaa !114
  %8 = bitcast i8* %7 to %struct.anon.0*, !dbg !127
  %9 = bitcast %struct.kmp_task_t_with_privates.2* %3 to i8*, !dbg !127
  call void @.omp_outlined..1(i32 %2, i32* %5, i8* null, void (i8*, ...)* null, i8* %9, %struct.anon.0* %8) #6, !dbg !127
  ret i32 0, !dbg !127
}

; Function Attrs: norecurse nounwind uwtable
define internal i32 @.omp_task_entry..4(i32 %0, %struct.kmp_task_t_with_privates.3* noalias %1) #3 !dbg !128 {
entry:
  %.addr = alloca i32, align 4
  %.addr1 = alloca %struct.kmp_task_t_with_privates.3*, align 8
  store i32 %0, i32* %.addr, align 4, !tbaa !51
  call void @llvm.dbg.declare(metadata i32* %.addr, metadata !130, metadata !DIExpression()), !dbg !137
  store %struct.kmp_task_t_with_privates.3* %1, %struct.kmp_task_t_with_privates.3** %.addr1, align 8, !tbaa !53
  call void @llvm.dbg.declare(metadata %struct.kmp_task_t_with_privates.3** %.addr1, metadata !131, metadata !DIExpression()), !dbg !137
  %2 = load i32, i32* %.addr, align 4, !dbg !138, !tbaa !51
  %3 = load %struct.kmp_task_t_with_privates.3*, %struct.kmp_task_t_with_privates.3** %.addr1, align 8, !dbg !138
  %4 = getelementptr inbounds %struct.kmp_task_t_with_privates.3, %struct.kmp_task_t_with_privates.3* %3, i32 0, i32 0, !dbg !138
  %5 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 2, !dbg !138
  %6 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 0, !dbg !138
  %7 = load i8*, i8** %6, align 8, !dbg !138, !tbaa !114
  %8 = bitcast i8* %7 to %struct.anon*, !dbg !138
  %9 = bitcast %struct.kmp_task_t_with_privates.3* %3 to i8*, !dbg !138
  call void @.omp_outlined.(i32 %2, i32* %5, i8* null, void (i8*, ...)* null, i8* %9, %struct.anon* %8) #6, !dbg !138
  ret i32 0, !dbg !138
}

declare dso_local i32 @__kmpc_global_thread_num(%struct.ident_t*)

; Function Attrs: nounwind uwtable
define weak_odr hidden i32* @_ZTW2tp() #5 comdat {
  ret i32* @tp
}

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { alwaysinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind willreturn }
attributes #5 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!9, !10, !11}
!llvm.ident = !{!12}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "tp", scope: !2, file: !3, line: 22, type: !8, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "integration/dataracebench/DRB128-tasking-threadprivate2-orig-no.c", directory: "/home/brad/Code/OpenRace/tests/data")
!4 = !{}
!5 = !{!0, !6}
!6 = !DIGlobalVariableExpression(var: !7, expr: !DIExpression())
!7 = distinct !DIGlobalVariable(name: "var", scope: !2, file: !3, line: 24, type: !8, isLocal: false, isDefinition: true)
!8 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!9 = !{i32 7, !"Dwarf Version", i32 4}
!10 = !{i32 2, !"Debug Info Version", i32 3}
!11 = !{i32 1, !"wchar_size", i32 4}
!12 = !{!"clang version 10.0.1 "}
!13 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 26, type: !14, scopeLine: 26, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4)
!14 = !DISubroutineType(types: !15)
!15 = !{!8}
!16 = !{!17, !21, i64 16}
!17 = !{!"ident_t", !18, i64 0, !18, i64 4, !18, i64 8, !18, i64 12, !21, i64 16}
!18 = !{!"int", !19, i64 0}
!19 = !{!"omnipotent char", !20, i64 0}
!20 = !{!"Simple C/C++ TBAA"}
!21 = !{!"any pointer", !19, i64 0}
!22 = !DILocation(line: 27, column: 3, scope: !13)
!23 = !DILocation(line: 38, column: 3, scope: !13)
!24 = distinct !DISubprogram(name: ".omp_outlined.", scope: !3, file: !3, line: 27, type: !25, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !44)
!25 = !DISubroutineType(types: !26)
!26 = !{null, !27, !28, !31, !34, !39, !40}
!27 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!28 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !29)
!29 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !30)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !32)
!32 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !33)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !35)
!35 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !36)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DISubroutineType(types: !38)
!38 = !{null, !31, null}
!39 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !33)
!40 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !41)
!41 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !42)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !13, file: !3, line: 27, elements: !4)
!44 = !{!45, !46, !47, !48, !49, !50}
!45 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !24, type: !27, flags: DIFlagArtificial)
!46 = !DILocalVariable(name: ".part_id.", arg: 2, scope: !24, type: !28, flags: DIFlagArtificial)
!47 = !DILocalVariable(name: ".privates.", arg: 3, scope: !24, type: !31, flags: DIFlagArtificial)
!48 = !DILocalVariable(name: ".copy_fn.", arg: 4, scope: !24, type: !34, flags: DIFlagArtificial)
!49 = !DILocalVariable(name: ".task_t.", arg: 5, scope: !24, type: !39, flags: DIFlagArtificial)
!50 = !DILocalVariable(name: "__context", arg: 6, scope: !24, type: !40, flags: DIFlagArtificial)
!51 = !{!18, !18, i64 0}
!52 = !DILocation(line: 0, scope: !24)
!53 = !{!21, !21, i64 0}
!54 = !DILocation(line: 28, column: 3, scope: !24)
!55 = !DILocation(line: 29, column: 5, scope: !56)
!56 = distinct !DILexicalBlock(scope: !24, file: !3, line: 28, column: 3)
!57 = !DILocation(line: 37, column: 3, scope: !24)
!58 = distinct !DISubprogram(name: ".omp_outlined..1", scope: !3, file: !3, line: 29, type: !59, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !65)
!59 = !DISubroutineType(types: !60)
!60 = !{null, !27, !28, !31, !34, !39, !61}
!61 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !62)
!62 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !63)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!64 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !24, file: !3, line: 29, elements: !4)
!65 = !{!66, !67, !68, !69, !70, !71}
!66 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !58, type: !27, flags: DIFlagArtificial)
!67 = !DILocalVariable(name: ".part_id.", arg: 2, scope: !58, type: !28, flags: DIFlagArtificial)
!68 = !DILocalVariable(name: ".privates.", arg: 3, scope: !58, type: !31, flags: DIFlagArtificial)
!69 = !DILocalVariable(name: ".copy_fn.", arg: 4, scope: !58, type: !34, flags: DIFlagArtificial)
!70 = !DILocalVariable(name: ".task_t.", arg: 5, scope: !58, type: !39, flags: DIFlagArtificial)
!71 = !DILocalVariable(name: "__context", arg: 6, scope: !58, type: !61, flags: DIFlagArtificial)
!72 = !DILocation(line: 0, scope: !58)
!73 = !DILocation(line: 30, column: 5, scope: !58)
!74 = !DILocation(line: 31, column: 10, scope: !75)
!75 = distinct !DILexicalBlock(scope: !58, file: !3, line: 30, column: 5)
!76 = !DILocation(line: 32, column: 7, scope: !75)
!77 = !DILocation(line: 35, column: 13, scope: !75)
!78 = !DILocation(line: 35, column: 11, scope: !75)
!79 = !DILocation(line: 36, column: 5, scope: !58)
!80 = distinct !DISubprogram(name: ".omp_outlined..2", scope: !3, file: !3, line: 32, type: !81, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !87)
!81 = !DISubroutineType(types: !82)
!82 = !{null, !27, !28, !31, !34, !39, !83}
!83 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !84)
!84 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !85)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!86 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !58, file: !3, line: 32, elements: !4)
!87 = !{!88, !89, !90, !91, !92, !93}
!88 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !80, type: !27, flags: DIFlagArtificial)
!89 = !DILocalVariable(name: ".part_id.", arg: 2, scope: !80, type: !28, flags: DIFlagArtificial)
!90 = !DILocalVariable(name: ".privates.", arg: 3, scope: !80, type: !31, flags: DIFlagArtificial)
!91 = !DILocalVariable(name: ".copy_fn.", arg: 4, scope: !80, type: !34, flags: DIFlagArtificial)
!92 = !DILocalVariable(name: ".task_t.", arg: 5, scope: !80, type: !39, flags: DIFlagArtificial)
!93 = !DILocalVariable(name: "__context", arg: 6, scope: !80, type: !83, flags: DIFlagArtificial)
!94 = !DILocation(line: 0, scope: !80)
!95 = !DILocation(line: 33, column: 7, scope: !80)
!96 = !DILocation(line: 34, column: 7, scope: !80)
!97 = distinct !DISubprogram(linkageName: ".omp_task_entry.", scope: !3, file: !3, line: 32, type: !98, scopeLine: 32, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !99)
!98 = !DISubroutineType(types: !4)
!99 = !{!100, !101}
!100 = !DILocalVariable(arg: 1, scope: !97, type: !8, flags: DIFlagArtificial)
!101 = !DILocalVariable(arg: 2, scope: !97, type: !102, flags: DIFlagArtificial)
!102 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !103)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t_with_privates", file: !3, size: 320, elements: !105)
!105 = !{!106}
!106 = !DIDerivedType(tag: DW_TAG_member, scope: !104, file: !3, baseType: !107, size: 320)
!107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t", file: !3, size: 320, elements: !108)
!108 = !{!109, !111}
!109 = !DIDerivedType(tag: DW_TAG_member, scope: !107, file: !3, baseType: !110, size: 64, offset: 192)
!110 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "kmp_cmplrdata_t", file: !3, size: 64, elements: !4)
!111 = !DIDerivedType(tag: DW_TAG_member, scope: !107, file: !3, baseType: !110, size: 64, offset: 256)
!112 = !DILocation(line: 0, scope: !97)
!113 = !DILocation(line: 32, column: 7, scope: !97)
!114 = !{!115, !21, i64 0}
!115 = !{!"kmp_task_t_with_privates", !116, i64 0}
!116 = !{!"kmp_task_t", !21, i64 0, !21, i64 8, !18, i64 16, !19, i64 24, !19, i64 32}
!117 = distinct !DISubprogram(linkageName: ".omp_task_entry..3", scope: !3, file: !3, line: 29, type: !98, scopeLine: 29, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !118)
!118 = !{!119, !120}
!119 = !DILocalVariable(arg: 1, scope: !117, type: !8, flags: DIFlagArtificial)
!120 = !DILocalVariable(arg: 2, scope: !117, type: !121, flags: DIFlagArtificial)
!121 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !122)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t_with_privates", file: !3, size: 320, elements: !124)
!124 = !{!125}
!125 = !DIDerivedType(tag: DW_TAG_member, scope: !123, file: !3, baseType: !107, size: 320)
!126 = !DILocation(line: 0, scope: !117)
!127 = !DILocation(line: 29, column: 5, scope: !117)
!128 = distinct !DISubprogram(linkageName: ".omp_task_entry..4", scope: !3, file: !3, line: 27, type: !98, scopeLine: 27, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !129)
!129 = !{!130, !131}
!130 = !DILocalVariable(arg: 1, scope: !128, type: !8, flags: DIFlagArtificial)
!131 = !DILocalVariable(arg: 2, scope: !128, type: !132, flags: DIFlagArtificial)
!132 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !133)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t_with_privates", file: !3, size: 320, elements: !135)
!135 = !{!136}
!136 = !DIDerivedType(tag: DW_TAG_member, scope: !134, file: !3, baseType: !107, size: 320)
!137 = !DILocation(line: 0, scope: !128)
!138 = !DILocation(line: 27, column: 3, scope: !128)
