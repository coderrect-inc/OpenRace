; ModuleID = 'integration/openmp/task-master-single-yes.c'
source_filename = "integration/openmp/task-master-single-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }
%struct.anon = type { i32* }
%struct.kmp_task_t_with_privates = type { %struct.kmp_task_t }
%struct.kmp_task_t = type { i8*, i32 (i32, i8*)*, i32, %union.kmp_cmplrdata_t, %union.kmp_cmplrdata_t }
%union.kmp_cmplrdata_t = type { i32 (i32, i8*)* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [57 x i8] c";integration/openmp/task-master-single-yes.c;main;11;1;;\00", align 1
@2 = private unnamed_addr constant [57 x i8] c";integration/openmp/task-master-single-yes.c;main;13;1;;\00", align 1
@3 = private unnamed_addr constant [57 x i8] c";integration/openmp/task-master-single-yes.c;main;17;1;;\00", align 1
@4 = private unnamed_addr constant [56 x i8] c";integration/openmp/task-master-single-yes.c;main;9;1;;\00", align 1
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
  store i8* getelementptr inbounds ([56 x i8], [56 x i8]* @4, i32 0, i32 0), i8** %3, align 8, !dbg !22, !tbaa !23
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
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %agg.captured = alloca %struct.anon, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !41
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !38, metadata !DIExpression()), !dbg !42
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !41
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !39, metadata !DIExpression()), !dbg !42
  store i32* %shared, i32** %shared.addr, align 8, !tbaa !41
  call void @llvm.dbg.declare(metadata i32** %shared.addr, metadata !40, metadata !DIExpression()), !dbg !43
  %2 = load i32*, i32** %shared.addr, align 8, !dbg !44, !tbaa !41
  %3 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !45
  store i8* getelementptr inbounds ([57 x i8], [57 x i8]* @1, i32 0, i32 0), i8** %3, align 8, !dbg !45, !tbaa !23
  %4 = load i32*, i32** %.global_tid..addr, align 8, !dbg !45
  %5 = load i32, i32* %4, align 4, !dbg !45, !tbaa !18
  %6 = call i32 @__kmpc_master(%struct.ident_t* %.kmpc_loc.addr, i32 %5), !dbg !45
  %7 = icmp ne i32 %6, 0, !dbg !45
  br i1 %7, label %omp_if.then, label %omp_if.end, !dbg !45

omp_if.then:                                      ; preds = %entry
  %8 = getelementptr inbounds %struct.anon, %struct.anon* %agg.captured, i32 0, i32 0, !dbg !47
  store i32* %2, i32** %8, align 8, !dbg !47, !tbaa !41
  %9 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !47
  store i8* getelementptr inbounds ([57 x i8], [57 x i8]* @2, i32 0, i32 0), i8** %9, align 8, !dbg !47, !tbaa !23
  %10 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* %.kmpc_loc.addr, i32 %5, i32 1, i64 40, i64 8, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates*)* @.omp_task_entry. to i32 (i32, i8*)*)), !dbg !47
  %11 = bitcast i8* %10 to %struct.kmp_task_t_with_privates*, !dbg !47
  %12 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %11, i32 0, i32 0, !dbg !47
  %13 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %12, i32 0, i32 0, !dbg !47
  %14 = load i8*, i8** %13, align 8, !dbg !47, !tbaa !50
  %15 = bitcast %struct.anon* %agg.captured to i8*, !dbg !47
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %14, i8* align 8 %15, i64 8, i1 false), !dbg !47, !tbaa.struct !53
  %16 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !47
  store i8* getelementptr inbounds ([57 x i8], [57 x i8]* @2, i32 0, i32 0), i8** %16, align 8, !dbg !47, !tbaa !23
  %17 = call i32 @__kmpc_omp_task(%struct.ident_t* %.kmpc_loc.addr, i32 %5, i8* %10), !dbg !47
  call void @__kmpc_end_master(%struct.ident_t* %.kmpc_loc.addr, i32 %5), !dbg !54
  br label %omp_if.end, !dbg !54

omp_if.end:                                       ; preds = %omp_if.then, %entry
  %18 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !55
  store i8* getelementptr inbounds ([57 x i8], [57 x i8]* @3, i32 0, i32 0), i8** %18, align 8, !dbg !55, !tbaa !23
  %19 = call i32 @__kmpc_single(%struct.ident_t* %.kmpc_loc.addr, i32 %5), !dbg !55
  %20 = icmp ne i32 %19, 0, !dbg !55
  br i1 %20, label %omp_if.then1, label %omp_if.end2, !dbg !55

omp_if.then1:                                     ; preds = %omp_if.end
  %call = call i32 @omp_get_thread_num(), !dbg !56
  store i32 %call, i32* %2, align 4, !dbg !59, !tbaa !18
  call void @__kmpc_end_single(%struct.ident_t* %.kmpc_loc.addr, i32 %5), !dbg !60
  br label %omp_if.end2, !dbg !60

omp_if.end2:                                      ; preds = %omp_if.then1, %omp_if.end
  %21 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !61
  store i8* getelementptr inbounds ([57 x i8], [57 x i8]* @3, i32 0, i32 0), i8** %21, align 8, !dbg !61, !tbaa !23
  call void @__kmpc_barrier(%struct.ident_t* %.kmpc_loc.addr, i32 %5), !dbg !61
  ret void, !dbg !62
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local void @__kmpc_end_master(%struct.ident_t*, i32)

declare dso_local i32 @__kmpc_master(%struct.ident_t*, i32)

; Function Attrs: alwaysinline nounwind uwtable
define internal void @.omp_outlined.(i32 %.global_tid., i32* noalias %.part_id., i8* noalias %.privates., void (i8*, ...)* noalias %.copy_fn., i8* %.task_t., %struct.anon* noalias %__context) #4 !dbg !63 {
entry:
  %.global_tid..addr = alloca i32, align 4
  %.part_id..addr = alloca i32*, align 8
  %.privates..addr = alloca i8*, align 8
  %.copy_fn..addr = alloca void (i8*, ...)*, align 8
  %.task_t..addr = alloca i8*, align 8
  %__context.addr = alloca %struct.anon*, align 8
  store i32 %.global_tid., i32* %.global_tid..addr, align 4, !tbaa !18
  call void @llvm.dbg.declare(metadata i32* %.global_tid..addr, metadata !80, metadata !DIExpression()), !dbg !86
  store i32* %.part_id., i32** %.part_id..addr, align 8, !tbaa !41
  call void @llvm.dbg.declare(metadata i32** %.part_id..addr, metadata !81, metadata !DIExpression()), !dbg !86
  store i8* %.privates., i8** %.privates..addr, align 8, !tbaa !41
  call void @llvm.dbg.declare(metadata i8** %.privates..addr, metadata !82, metadata !DIExpression()), !dbg !86
  store void (i8*, ...)* %.copy_fn., void (i8*, ...)** %.copy_fn..addr, align 8, !tbaa !41
  call void @llvm.dbg.declare(metadata void (i8*, ...)** %.copy_fn..addr, metadata !83, metadata !DIExpression()), !dbg !86
  store i8* %.task_t., i8** %.task_t..addr, align 8, !tbaa !41
  call void @llvm.dbg.declare(metadata i8** %.task_t..addr, metadata !84, metadata !DIExpression()), !dbg !86
  store %struct.anon* %__context, %struct.anon** %__context.addr, align 8, !tbaa !41
  call void @llvm.dbg.declare(metadata %struct.anon** %__context.addr, metadata !85, metadata !DIExpression()), !dbg !86
  %0 = load %struct.anon*, %struct.anon** %__context.addr, align 8, !dbg !87
  %call = call i32 @omp_get_thread_num(), !dbg !88
  %1 = getelementptr inbounds %struct.anon, %struct.anon* %0, i32 0, i32 0, !dbg !90
  %2 = load i32*, i32** %1, align 8, !dbg !90, !tbaa !91
  store i32 %call, i32* %2, align 4, !dbg !93, !tbaa !18
  ret void, !dbg !94
}

declare !dbg !4 dso_local i32 @omp_get_thread_num() #5

; Function Attrs: norecurse nounwind uwtable
define internal i32 @.omp_task_entry.(i32 %0, %struct.kmp_task_t_with_privates* noalias %1) #3 !dbg !95 {
entry:
  %.addr = alloca i32, align 4
  %.addr1 = alloca %struct.kmp_task_t_with_privates*, align 8
  store i32 %0, i32* %.addr, align 4, !tbaa !18
  call void @llvm.dbg.declare(metadata i32* %.addr, metadata !98, metadata !DIExpression()), !dbg !110
  store %struct.kmp_task_t_with_privates* %1, %struct.kmp_task_t_with_privates** %.addr1, align 8, !tbaa !41
  call void @llvm.dbg.declare(metadata %struct.kmp_task_t_with_privates** %.addr1, metadata !99, metadata !DIExpression()), !dbg !110
  %2 = load i32, i32* %.addr, align 4, !dbg !111, !tbaa !18
  %3 = load %struct.kmp_task_t_with_privates*, %struct.kmp_task_t_with_privates** %.addr1, align 8, !dbg !111
  %4 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %3, i32 0, i32 0, !dbg !111
  %5 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 2, !dbg !111
  %6 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 0, !dbg !111
  %7 = load i8*, i8** %6, align 8, !dbg !111, !tbaa !50
  %8 = bitcast i8* %7 to %struct.anon*, !dbg !111
  %9 = bitcast %struct.kmp_task_t_with_privates* %3 to i8*, !dbg !111
  call void @.omp_outlined.(i32 %2, i32* %5, i8* null, void (i8*, ...)* null, i8* %9, %struct.anon* %8) #6, !dbg !111
  ret i32 0, !dbg !111
}

declare dso_local i8* @__kmpc_omp_task_alloc(%struct.ident_t*, i32, i32, i64, i64, i32 (i32, i8*)*)

declare dso_local i32 @__kmpc_omp_task(%struct.ident_t*, i32, i8*)

declare dso_local void @__kmpc_end_single(%struct.ident_t*, i32)

declare dso_local i32 @__kmpc_single(%struct.ident_t*, i32)

declare dso_local void @__kmpc_barrier(%struct.ident_t*, i32)

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined..1(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %shared) #3 !dbg !112 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %shared.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !41
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !114, metadata !DIExpression()), !dbg !117
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !41
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !115, metadata !DIExpression()), !dbg !117
  store i32* %shared, i32** %shared.addr, align 8, !tbaa !41
  call void @llvm.dbg.declare(metadata i32** %shared.addr, metadata !116, metadata !DIExpression()), !dbg !117
  %0 = load i32*, i32** %shared.addr, align 8, !dbg !118, !tbaa !41
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !118, !tbaa !41
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !118, !tbaa !41
  %3 = load i32*, i32** %shared.addr, align 8, !dbg !118, !tbaa !41
  call void @.omp_outlined._debug__(i32* %1, i32* %2, i32* %3) #6, !dbg !118
  ret void, !dbg !118
}

declare !callback !119 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

declare dso_local i32 @printf(i8*, ...) #5

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { alwaysinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!9, !10, !11}
!llvm.ident = !{!12}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "integration/openmp/task-master-single-yes.c", directory: "/home/brad/Code/OpenRace/tests/data")
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
!26 = !DILocation(line: 21, column: 18, scope: !13)
!27 = !DILocation(line: 21, column: 3, scope: !13)
!28 = !DILocation(line: 22, column: 1, scope: !13)
!29 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 10, type: !30, scopeLine: 10, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !37)
!30 = !DISubroutineType(types: !31)
!31 = !{null, !32, !32, !36}
!32 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !33)
!33 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !34)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!36 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !8, size: 64)
!37 = !{!38, !39, !40}
!38 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !29, type: !32, flags: DIFlagArtificial)
!39 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !29, type: !32, flags: DIFlagArtificial)
!40 = !DILocalVariable(name: "shared", arg: 3, scope: !29, file: !1, line: 8, type: !36)
!41 = !{!25, !25, i64 0}
!42 = !DILocation(line: 0, scope: !29)
!43 = !DILocation(line: 8, column: 7, scope: !29)
!44 = !DILocation(line: 10, column: 3, scope: !29)
!45 = !DILocation(line: 11, column: 1, scope: !46)
!46 = distinct !DILexicalBlock(scope: !29, file: !1, line: 10, column: 3)
!47 = !DILocation(line: 13, column: 1, scope: !48)
!48 = distinct !DILexicalBlock(scope: !49, file: !1, line: 12, column: 5)
!49 = distinct !DILexicalBlock(scope: !46, file: !1, line: 11, column: 1)
!50 = !{!51, !25, i64 0}
!51 = !{!"kmp_task_t_with_privates", !52, i64 0}
!52 = !{!"kmp_task_t", !25, i64 0, !25, i64 8, !19, i64 16, !20, i64 24, !20, i64 32}
!53 = !{i64 0, i64 8, !41}
!54 = !DILocation(line: 15, column: 5, scope: !48)
!55 = !DILocation(line: 17, column: 1, scope: !46)
!56 = !DILocation(line: 18, column: 16, scope: !57)
!57 = distinct !DILexicalBlock(scope: !58, file: !1, line: 18, column: 5)
!58 = distinct !DILexicalBlock(scope: !46, file: !1, line: 17, column: 1)
!59 = !DILocation(line: 18, column: 14, scope: !57)
!60 = !DILocation(line: 18, column: 38, scope: !57)
!61 = !DILocation(line: 17, column: 19, scope: !58)
!62 = !DILocation(line: 19, column: 3, scope: !29)
!63 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 14, type: !64, scopeLine: 14, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !79)
!64 = !DISubroutineType(types: !65)
!65 = !{null, !35, !32, !66, !69, !74, !75}
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
!78 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 13, size: 64, elements: !2)
!79 = !{!80, !81, !82, !83, !84, !85}
!80 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !63, type: !35, flags: DIFlagArtificial)
!81 = !DILocalVariable(name: ".part_id.", arg: 2, scope: !63, type: !32, flags: DIFlagArtificial)
!82 = !DILocalVariable(name: ".privates.", arg: 3, scope: !63, type: !66, flags: DIFlagArtificial)
!83 = !DILocalVariable(name: ".copy_fn.", arg: 4, scope: !63, type: !69, flags: DIFlagArtificial)
!84 = !DILocalVariable(name: ".task_t.", arg: 5, scope: !63, type: !74, flags: DIFlagArtificial)
!85 = !DILocalVariable(name: "__context", arg: 6, scope: !63, type: !75, flags: DIFlagArtificial)
!86 = !DILocation(line: 0, scope: !63)
!87 = !DILocation(line: 14, column: 7, scope: !63)
!88 = !DILocation(line: 14, column: 18, scope: !89)
!89 = distinct !DILexicalBlock(scope: !63, file: !1, line: 14, column: 7)
!90 = !DILocation(line: 14, column: 9, scope: !89)
!91 = !{!92, !25, i64 0}
!92 = !{!"", !25, i64 0}
!93 = !DILocation(line: 14, column: 16, scope: !89)
!94 = !DILocation(line: 14, column: 40, scope: !63)
!95 = distinct !DISubprogram(linkageName: ".omp_task_entry.", scope: !1, file: !1, line: 13, type: !96, scopeLine: 13, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !97)
!96 = !DISubroutineType(types: !2)
!97 = !{!98, !99}
!98 = !DILocalVariable(arg: 1, scope: !95, type: !8, flags: DIFlagArtificial)
!99 = !DILocalVariable(arg: 2, scope: !95, type: !100, flags: DIFlagArtificial)
!100 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !101)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t_with_privates", file: !1, size: 320, elements: !103)
!103 = !{!104}
!104 = !DIDerivedType(tag: DW_TAG_member, scope: !102, file: !1, baseType: !105, size: 320)
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t", file: !1, size: 320, elements: !106)
!106 = !{!107, !109}
!107 = !DIDerivedType(tag: DW_TAG_member, scope: !105, file: !1, baseType: !108, size: 64, offset: 192)
!108 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "kmp_cmplrdata_t", file: !1, size: 64, elements: !2)
!109 = !DIDerivedType(tag: DW_TAG_member, scope: !105, file: !1, baseType: !108, size: 64, offset: 256)
!110 = !DILocation(line: 0, scope: !95)
!111 = !DILocation(line: 13, column: 1, scope: !95)
!112 = distinct !DISubprogram(name: ".omp_outlined..1", scope: !1, file: !1, line: 10, type: !30, scopeLine: 10, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !113)
!113 = !{!114, !115, !116}
!114 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !112, type: !32, flags: DIFlagArtificial)
!115 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !112, type: !32, flags: DIFlagArtificial)
!116 = !DILocalVariable(name: "shared", arg: 3, scope: !112, type: !36, flags: DIFlagArtificial)
!117 = !DILocation(line: 0, scope: !112)
!118 = !DILocation(line: 10, column: 3, scope: !112)
!119 = !{!120}
!120 = !{i64 2, i64 -1, i64 -1, i1 true}
