; ModuleID = 'integration/openmp/task-tid-no.c'
source_filename = "integration/openmp/task-tid-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }
%struct.anon = type { i32*, i32* }
%struct.kmp_task_t_with_privates = type { %struct.kmp_task_t, %struct..kmp_privates.t }
%struct.kmp_task_t = type { i8*, i32 (i32, i8*)*, i32, %union.kmp_cmplrdata_t, %union.kmp_cmplrdata_t }
%union.kmp_cmplrdata_t = type { i32 (i32, i8*)* }
%struct..kmp_privates.t = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [46 x i8] c";integration/openmp/task-tid-no.c;main;14;1;;\00", align 1
@2 = private unnamed_addr constant [45 x i8] c";integration/openmp/task-tid-no.c;main;9;1;;\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main() #0 !dbg !13 {
entry:
  %shared = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  %2 = bitcast i32* %shared to i8*, !dbg !16
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #6, !dbg !16
  call void @llvm.dbg.declare(metadata i32* %shared, metadata !15, metadata !DIExpression()), !dbg !17
  store i32 0, i32* %shared, align 4, !dbg !17, !tbaa !18
  %3 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !22
  store i8* getelementptr inbounds ([45 x i8], [45 x i8]* @2, i32 0, i32 0), i8** %3, align 8, !dbg !22, !tbaa !23
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*)* @.omp_outlined..1 to void (i32*, i32*, ...)*), i32* %shared), !dbg !22
  %4 = load i32, i32* %shared, align 4, !dbg !26, !tbaa !18
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %4), !dbg !27
  %5 = bitcast i32* %shared to i8*, !dbg !28
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %5) #6, !dbg !28
  ret i32 0, !dbg !28
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %shared) #3 !dbg !29 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %shared.addr = alloca i32*, align 8
  %tid = alloca i32, align 4
  %agg.captured = alloca %struct.anon, align 8
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !43
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !38, metadata !DIExpression()), !dbg !44
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !43
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !39, metadata !DIExpression()), !dbg !44
  store i32* %shared, i32** %shared.addr, align 8, !tbaa !43
  call void @llvm.dbg.declare(metadata i32** %shared.addr, metadata !40, metadata !DIExpression()), !dbg !45
  %2 = load i32*, i32** %shared.addr, align 8, !dbg !46, !tbaa !43
  %3 = bitcast i32* %tid to i8*, !dbg !47
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #6, !dbg !47
  call void @llvm.dbg.declare(metadata i32* %tid, metadata !41, metadata !DIExpression()), !dbg !48
  %call = call i32 @omp_get_thread_num(), !dbg !49
  store i32 %call, i32* %tid, align 4, !dbg !48, !tbaa !18
  %4 = load i32, i32* %tid, align 4, !dbg !50, !tbaa !18
  %cmp = icmp eq i32 %4, 0, !dbg !52
  br i1 %cmp, label %if.then, label %if.end, !dbg !53

if.then:                                          ; preds = %entry
  %5 = getelementptr inbounds %struct.anon, %struct.anon* %agg.captured, i32 0, i32 0, !dbg !54
  store i32* %2, i32** %5, align 8, !dbg !54, !tbaa !43
  %6 = getelementptr inbounds %struct.anon, %struct.anon* %agg.captured, i32 0, i32 1, !dbg !54
  store i32* %tid, i32** %6, align 8, !dbg !54, !tbaa !43
  %7 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !54
  store i8* getelementptr inbounds ([46 x i8], [46 x i8]* @1, i32 0, i32 0), i8** %7, align 8, !dbg !54, !tbaa !23
  %8 = load i32*, i32** %.global_tid..addr, align 8, !dbg !54
  %9 = load i32, i32* %8, align 4, !dbg !54, !tbaa !18
  %10 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* %.kmpc_loc.addr, i32 %9, i32 1, i64 48, i64 16, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates*)* @.omp_task_entry. to i32 (i32, i8*)*)), !dbg !54
  %11 = bitcast i8* %10 to %struct.kmp_task_t_with_privates*, !dbg !54
  %12 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %11, i32 0, i32 0, !dbg !54
  %13 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %12, i32 0, i32 0, !dbg !54
  %14 = load i8*, i8** %13, align 8, !dbg !54, !tbaa !56
  %15 = bitcast %struct.anon* %agg.captured to i8*, !dbg !54
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* align 8 %15, i64 16, i1 false), !dbg !54, !tbaa.struct !60
  %16 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %11, i32 0, i32 1, !dbg !54
  %17 = bitcast i8* %14 to %struct.anon*, !dbg !54
  %18 = getelementptr inbounds %struct..kmp_privates.t, %struct..kmp_privates.t* %16, i32 0, i32 0, !dbg !54
  %19 = getelementptr inbounds %struct.anon, %struct.anon* %17, i32 0, i32 1, !dbg !54
  %20 = load i32*, i32** %19, align 8, !dbg !54, !tbaa !61
  %21 = load i32, i32* %20, align 4, !dbg !63, !tbaa !18
  store i32 %21, i32* %18, align 8, !dbg !54, !tbaa !65
  %22 = load i32*, i32** %.global_tid..addr, align 8, !dbg !54
  %23 = load i32, i32* %22, align 4, !dbg !54, !tbaa !18
  %24 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !54
  store i8* getelementptr inbounds ([46 x i8], [46 x i8]* @1, i32 0, i32 0), i8** %24, align 8, !dbg !54, !tbaa !23
  %25 = call i32 @__kmpc_omp_task(%struct.ident_t* %.kmpc_loc.addr, i32 %23, i8* %10), !dbg !54
  br label %if.end, !dbg !66

if.end:                                           ; preds = %if.then, %entry
  %26 = bitcast i32* %tid to i8*, !dbg !67
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %26) #6, !dbg !67
  ret void, !dbg !67
}

declare !dbg !4 dso_local i32 @omp_get_thread_num() #4

; Function Attrs: alwaysinline nounwind uwtable
define internal void @.omp_outlined.(i32 %.global_tid., i32* noalias %.part_id., i8* noalias %.privates., void (i8*, ...)* noalias %.copy_fn., i8* %.task_t., %struct.anon* noalias %__context) #5 !dbg !68 {
entry:
  %.global_tid..addr = alloca i32, align 4
  %.part_id..addr = alloca i32*, align 8
  %.privates..addr = alloca i8*, align 8
  %.copy_fn..addr = alloca void (i8*, ...)*, align 8
  %.task_t..addr = alloca i8*, align 8
  %__context.addr = alloca %struct.anon*, align 8
  %.firstpriv.ptr.addr = alloca i32*, align 8
  store i32 %.global_tid., i32* %.global_tid..addr, align 4, !tbaa !18
  call void @llvm.dbg.declare(metadata i32* %.global_tid..addr, metadata !85, metadata !DIExpression()), !dbg !91
  store i32* %.part_id., i32** %.part_id..addr, align 8, !tbaa !43
  call void @llvm.dbg.declare(metadata i32** %.part_id..addr, metadata !86, metadata !DIExpression()), !dbg !91
  store i8* %.privates., i8** %.privates..addr, align 8, !tbaa !43
  call void @llvm.dbg.declare(metadata i8** %.privates..addr, metadata !87, metadata !DIExpression()), !dbg !91
  store void (i8*, ...)* %.copy_fn., void (i8*, ...)** %.copy_fn..addr, align 8, !tbaa !43
  call void @llvm.dbg.declare(metadata void (i8*, ...)** %.copy_fn..addr, metadata !88, metadata !DIExpression()), !dbg !91
  store i8* %.task_t., i8** %.task_t..addr, align 8, !tbaa !43
  call void @llvm.dbg.declare(metadata i8** %.task_t..addr, metadata !89, metadata !DIExpression()), !dbg !91
  store %struct.anon* %__context, %struct.anon** %__context.addr, align 8, !tbaa !43
  call void @llvm.dbg.declare(metadata %struct.anon** %__context.addr, metadata !90, metadata !DIExpression()), !dbg !91
  %0 = load %struct.anon*, %struct.anon** %__context.addr, align 8, !dbg !92
  %1 = load void (i8*, ...)*, void (i8*, ...)** %.copy_fn..addr, align 8, !dbg !92
  %2 = load i8*, i8** %.privates..addr, align 8, !dbg !92
  call void (i8*, ...) %1(i8* %2, i32** %.firstpriv.ptr.addr), !dbg !93
  %3 = load i32*, i32** %.firstpriv.ptr.addr, align 8, !dbg !92
  %4 = load i32, i32* %3, align 4, !dbg !94, !tbaa !18
  %5 = getelementptr inbounds %struct.anon, %struct.anon* %0, i32 0, i32 0, !dbg !96
  %6 = load i32*, i32** %5, align 8, !dbg !96, !tbaa !97
  store i32 %4, i32* %6, align 4, !dbg !98, !tbaa !18
  ret void, !dbg !99
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @.omp_task_privates_map.(%struct..kmp_privates.t* noalias %0, i32** noalias %1) #5 !dbg !100 {
entry:
  %.addr = alloca %struct..kmp_privates.t*, align 8
  %.addr1 = alloca i32**, align 8
  store %struct..kmp_privates.t* %0, %struct..kmp_privates.t** %.addr, align 8, !tbaa !43
  call void @llvm.dbg.declare(metadata %struct..kmp_privates.t** %.addr, metadata !103, metadata !DIExpression()), !dbg !113
  store i32** %1, i32*** %.addr1, align 8, !tbaa !43
  call void @llvm.dbg.declare(metadata i32*** %.addr1, metadata !108, metadata !DIExpression()), !dbg !113
  %2 = load %struct..kmp_privates.t*, %struct..kmp_privates.t** %.addr, align 8, !dbg !114
  %3 = getelementptr inbounds %struct..kmp_privates.t, %struct..kmp_privates.t* %2, i32 0, i32 0, !dbg !114
  %4 = load i32**, i32*** %.addr1, align 8, !dbg !114
  store i32* %3, i32** %4, align 8, !dbg !114, !tbaa !43
  ret void, !dbg !114
}

; Function Attrs: norecurse nounwind uwtable
define internal i32 @.omp_task_entry.(i32 %0, %struct.kmp_task_t_with_privates* noalias %1) #3 !dbg !115 {
entry:
  %.addr = alloca i32, align 4
  %.addr1 = alloca %struct.kmp_task_t_with_privates*, align 8
  store i32 %0, i32* %.addr, align 4, !tbaa !18
  call void @llvm.dbg.declare(metadata i32* %.addr, metadata !117, metadata !DIExpression()), !dbg !130
  store %struct.kmp_task_t_with_privates* %1, %struct.kmp_task_t_with_privates** %.addr1, align 8, !tbaa !43
  call void @llvm.dbg.declare(metadata %struct.kmp_task_t_with_privates** %.addr1, metadata !118, metadata !DIExpression()), !dbg !130
  %2 = load i32, i32* %.addr, align 4, !dbg !131, !tbaa !18
  %3 = load %struct.kmp_task_t_with_privates*, %struct.kmp_task_t_with_privates** %.addr1, align 8, !dbg !131
  %4 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %3, i32 0, i32 0, !dbg !131
  %5 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 2, !dbg !131
  %6 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 0, !dbg !131
  %7 = load i8*, i8** %6, align 8, !dbg !131, !tbaa !56
  %8 = bitcast i8* %7 to %struct.anon*, !dbg !131
  %9 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %3, i32 0, i32 1, !dbg !131
  %10 = bitcast %struct..kmp_privates.t* %9 to i8*, !dbg !131
  %11 = bitcast %struct.kmp_task_t_with_privates* %3 to i8*, !dbg !131
  call void @.omp_outlined.(i32 %2, i32* %5, i8* %10, void (i8*, ...)* bitcast (void (%struct..kmp_privates.t*, i32**)* @.omp_task_privates_map. to void (i8*, ...)*), i8* %11, %struct.anon* %8) #6, !dbg !131
  ret i32 0, !dbg !131
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @__kmpc_omp_task_alloc(%struct.ident_t*, i32, i32, i64, i64, i32 (i32, i8*)*)

declare dso_local i32 @__kmpc_omp_task(%struct.ident_t*, i32, i8*)

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined..1(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %shared) #3 !dbg !132 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %shared.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !43
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !134, metadata !DIExpression()), !dbg !137
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !43
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !135, metadata !DIExpression()), !dbg !137
  store i32* %shared, i32** %shared.addr, align 8, !tbaa !43
  call void @llvm.dbg.declare(metadata i32** %shared.addr, metadata !136, metadata !DIExpression()), !dbg !137
  %0 = load i32*, i32** %shared.addr, align 8, !dbg !138, !tbaa !43
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !138, !tbaa !43
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !138, !tbaa !43
  %3 = load i32*, i32** %shared.addr, align 8, !dbg !138, !tbaa !43
  call void @.omp_outlined._debug__(i32* %1, i32* %2, i32* %3) #6, !dbg !138
  ret void, !dbg !138
}

declare !callback !139 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

declare dso_local i32 @printf(i8*, ...) #4

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { alwaysinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!9, !10, !11}
!llvm.ident = !{!12}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "integration/openmp/task-tid-no.c", directory: "/home/brad/Code/OpenRace/tests/data")
!2 = !{}
!3 = !{!4}
!4 = !DISubprogram(name: "omp_get_thread_num", scope: !5, file: !5, line: 68, type: !6, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!5 = !DIFile(filename: "/usr/include/omp.h", directory: "")
!6 = !DISubroutineType(types: !7)
!7 = !{!8}
!8 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!9 = !{i32 7, !"Dwarf Version", i32 4}
!10 = !{i32 2, !"Debug Info Version", i32 3}
!11 = !{i32 1, !"wchar_size", i32 4}
!12 = !{!"clang version 10.0.1 "}
!13 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 7, type: !6, scopeLine: 7, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !14)
!14 = !{!15}
!15 = !DILocalVariable(name: "shared", scope: !13, file: !1, line: 8, type: !8)
!16 = !DILocation(line: 8, column: 3, scope: !13)
!17 = !DILocation(line: 8, column: 7, scope: !13)
!18 = !{!19, !19, i64 0}
!19 = !{!"int", !20, i64 0}
!20 = !{!"omnipotent char", !21, i64 0}
!21 = !{!"Simple C/C++ TBAA"}
!22 = !DILocation(line: 9, column: 1, scope: !13)
!23 = !{!24, !25, i64 16}
!24 = !{!"ident_t", !19, i64 0, !19, i64 4, !19, i64 8, !19, i64 12, !25, i64 16}
!25 = !{!"any pointer", !20, i64 0}
!26 = !DILocation(line: 19, column: 18, scope: !13)
!27 = !DILocation(line: 19, column: 3, scope: !13)
!28 = !DILocation(line: 20, column: 1, scope: !13)
!29 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 10, type: !30, scopeLine: 10, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !37)
!30 = !DISubroutineType(types: !31)
!31 = !{null, !32, !32, !36}
!32 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !33)
!33 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !34)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!36 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !8, size: 64)
!37 = !{!38, !39, !40, !41}
!38 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !29, type: !32, flags: DIFlagArtificial)
!39 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !29, type: !32, flags: DIFlagArtificial)
!40 = !DILocalVariable(name: "shared", arg: 3, scope: !29, file: !1, line: 8, type: !36)
!41 = !DILocalVariable(name: "tid", scope: !42, file: !1, line: 11, type: !8)
!42 = distinct !DILexicalBlock(scope: !29, file: !1, line: 10, column: 3)
!43 = !{!25, !25, i64 0}
!44 = !DILocation(line: 0, scope: !29)
!45 = !DILocation(line: 8, column: 7, scope: !29)
!46 = !DILocation(line: 10, column: 3, scope: !29)
!47 = !DILocation(line: 11, column: 5, scope: !42)
!48 = !DILocation(line: 11, column: 9, scope: !42)
!49 = !DILocation(line: 11, column: 15, scope: !42)
!50 = !DILocation(line: 13, column: 9, scope: !51)
!51 = distinct !DILexicalBlock(scope: !42, file: !1, line: 13, column: 9)
!52 = !DILocation(line: 13, column: 13, scope: !51)
!53 = !DILocation(line: 13, column: 9, scope: !42)
!54 = !DILocation(line: 14, column: 1, scope: !55)
!55 = distinct !DILexicalBlock(scope: !51, file: !1, line: 13, column: 19)
!56 = !{!57, !25, i64 0}
!57 = !{!"kmp_task_t_with_privates", !58, i64 0, !59, i64 40}
!58 = !{!"kmp_task_t", !25, i64 0, !25, i64 8, !19, i64 16, !20, i64 24, !20, i64 32}
!59 = !{!".kmp_privates.t", !19, i64 0}
!60 = !{i64 0, i64 8, !43, i64 8, i64 8, !43}
!61 = !{!62, !25, i64 8}
!62 = !{!"", !25, i64 0, !25, i64 8}
!63 = !DILocation(line: 15, column: 18, scope: !64)
!64 = distinct !DILexicalBlock(scope: !55, file: !1, line: 14, column: 1)
!65 = !{!57, !19, i64 40}
!66 = !DILocation(line: 16, column: 5, scope: !55)
!67 = !DILocation(line: 17, column: 3, scope: !29)
!68 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 15, type: !69, scopeLine: 15, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !84)
!69 = !DISubroutineType(types: !70)
!70 = !{null, !35, !32, !71, !74, !79, !80}
!71 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !72)
!72 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !73)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !75)
!75 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !76)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!77 = !DISubroutineType(types: !78)
!78 = !{null, !71, null}
!79 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !73)
!80 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !81)
!81 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !82)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!83 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !29, file: !1, line: 14, size: 128, elements: !2)
!84 = !{!85, !86, !87, !88, !89, !90}
!85 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !68, type: !35, flags: DIFlagArtificial)
!86 = !DILocalVariable(name: ".part_id.", arg: 2, scope: !68, type: !32, flags: DIFlagArtificial)
!87 = !DILocalVariable(name: ".privates.", arg: 3, scope: !68, type: !71, flags: DIFlagArtificial)
!88 = !DILocalVariable(name: ".copy_fn.", arg: 4, scope: !68, type: !74, flags: DIFlagArtificial)
!89 = !DILocalVariable(name: ".task_t.", arg: 5, scope: !68, type: !79, flags: DIFlagArtificial)
!90 = !DILocalVariable(name: "__context", arg: 6, scope: !68, type: !80, flags: DIFlagArtificial)
!91 = !DILocation(line: 0, scope: !68)
!92 = !DILocation(line: 15, column: 7, scope: !68)
!93 = !DILocation(line: 14, column: 1, scope: !68)
!94 = !DILocation(line: 15, column: 18, scope: !95)
!95 = distinct !DILexicalBlock(scope: !68, file: !1, line: 15, column: 7)
!96 = !DILocation(line: 15, column: 9, scope: !95)
!97 = !{!62, !25, i64 0}
!98 = !DILocation(line: 15, column: 16, scope: !95)
!99 = !DILocation(line: 15, column: 23, scope: !68)
!100 = distinct !DISubprogram(linkageName: ".omp_task_privates_map.", scope: !1, file: !1, line: 14, type: !101, scopeLine: 14, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !102)
!101 = !DISubroutineType(types: !2)
!102 = !{!103, !108}
!103 = !DILocalVariable(arg: 1, scope: !100, type: !104, flags: DIFlagArtificial)
!104 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !105)
!105 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !106)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!107 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: ".kmp_privates.t", file: !1, size: 32, elements: !2)
!108 = !DILocalVariable(arg: 2, scope: !100, type: !109, flags: DIFlagArtificial)
!109 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !110)
!110 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !111)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!113 = !DILocation(line: 0, scope: !100)
!114 = !DILocation(line: 14, column: 1, scope: !100)
!115 = distinct !DISubprogram(linkageName: ".omp_task_entry.", scope: !1, file: !1, line: 14, type: !101, scopeLine: 14, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !116)
!116 = !{!117, !118}
!117 = !DILocalVariable(arg: 1, scope: !115, type: !8, flags: DIFlagArtificial)
!118 = !DILocalVariable(arg: 2, scope: !115, type: !119, flags: DIFlagArtificial)
!119 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !120)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t_with_privates", file: !1, size: 384, elements: !122)
!122 = !{!123, !129}
!123 = !DIDerivedType(tag: DW_TAG_member, scope: !121, file: !1, baseType: !124, size: 320)
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t", file: !1, size: 320, elements: !125)
!125 = !{!126, !128}
!126 = !DIDerivedType(tag: DW_TAG_member, scope: !124, file: !1, baseType: !127, size: 64, offset: 192)
!127 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "kmp_cmplrdata_t", file: !1, size: 64, elements: !2)
!128 = !DIDerivedType(tag: DW_TAG_member, scope: !124, file: !1, baseType: !127, size: 64, offset: 256)
!129 = !DIDerivedType(tag: DW_TAG_member, scope: !121, file: !1, baseType: !107, size: 32, offset: 320)
!130 = !DILocation(line: 0, scope: !115)
!131 = !DILocation(line: 14, column: 1, scope: !115)
!132 = distinct !DISubprogram(name: ".omp_outlined..1", scope: !1, file: !1, line: 10, type: !30, scopeLine: 10, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !133)
!133 = !{!134, !135, !136}
!134 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !132, type: !32, flags: DIFlagArtificial)
!135 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !132, type: !32, flags: DIFlagArtificial)
!136 = !DILocalVariable(name: "shared", arg: 3, scope: !132, type: !36, flags: DIFlagArtificial)
!137 = !DILocation(line: 0, scope: !132)
!138 = !DILocation(line: 10, column: 3, scope: !132)
!139 = !{!140}
!140 = !{i64 2, i64 -1, i64 -1, i1 true}
