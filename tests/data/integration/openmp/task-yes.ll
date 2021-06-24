; ModuleID = 'integration/openmp/task-yes.c'
source_filename = "integration/openmp/task-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }
%struct.anon = type { i32* }
%struct.kmp_task_t_with_privates = type { %struct.kmp_task_t }
%struct.kmp_task_t = type { i8*, i32 (i32, i8*)*, i32, %union.kmp_cmplrdata_t, %union.kmp_cmplrdata_t }
%union.kmp_cmplrdata_t = type { i32 (i32, i8*)* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [43 x i8] c";integration/openmp/task-yes.c;main;12;1;;\00", align 1
@2 = private unnamed_addr constant [43 x i8] c";integration/openmp/task-yes.c;main;10;1;;\00", align 1
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
  store i8* getelementptr inbounds ([43 x i8], [43 x i8]* @2, i32 0, i32 0), i8** %3, align 8, !dbg !22, !tbaa !23
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
  %agg.captured = alloca %struct.anon, align 8
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
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
  %3 = getelementptr inbounds %struct.anon, %struct.anon* %agg.captured, i32 0, i32 0, !dbg !45
  store i32* %2, i32** %3, align 8, !dbg !45, !tbaa !41
  %4 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !45
  store i8* getelementptr inbounds ([43 x i8], [43 x i8]* @1, i32 0, i32 0), i8** %4, align 8, !dbg !45, !tbaa !23
  %5 = load i32*, i32** %.global_tid..addr, align 8, !dbg !45
  %6 = load i32, i32* %5, align 4, !dbg !45, !tbaa !18
  %7 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* %.kmpc_loc.addr, i32 %6, i32 1, i64 40, i64 8, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates*)* @.omp_task_entry. to i32 (i32, i8*)*)), !dbg !45
  %8 = bitcast i8* %7 to %struct.kmp_task_t_with_privates*, !dbg !45
  %9 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %8, i32 0, i32 0, !dbg !45
  %10 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %9, i32 0, i32 0, !dbg !45
  %11 = load i8*, i8** %10, align 8, !dbg !45, !tbaa !47
  %12 = bitcast %struct.anon* %agg.captured to i8*, !dbg !45
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 %12, i64 8, i1 false), !dbg !45, !tbaa.struct !50
  %13 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !45
  store i8* getelementptr inbounds ([43 x i8], [43 x i8]* @1, i32 0, i32 0), i8** %13, align 8, !dbg !45, !tbaa !23
  %14 = call i32 @__kmpc_omp_task(%struct.ident_t* %.kmpc_loc.addr, i32 %6, i8* %7), !dbg !45
  ret void, !dbg !51
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @.omp_outlined.(i32 %.global_tid., i32* noalias %.part_id., i8* noalias %.privates., void (i8*, ...)* noalias %.copy_fn., i8* %.task_t., %struct.anon* noalias %__context) #4 !dbg !52 {
entry:
  %.global_tid..addr = alloca i32, align 4
  %.part_id..addr = alloca i32*, align 8
  %.privates..addr = alloca i8*, align 8
  %.copy_fn..addr = alloca void (i8*, ...)*, align 8
  %.task_t..addr = alloca i8*, align 8
  %__context.addr = alloca %struct.anon*, align 8
  store i32 %.global_tid., i32* %.global_tid..addr, align 4, !tbaa !18
  call void @llvm.dbg.declare(metadata i32* %.global_tid..addr, metadata !69, metadata !DIExpression()), !dbg !75
  store i32* %.part_id., i32** %.part_id..addr, align 8, !tbaa !41
  call void @llvm.dbg.declare(metadata i32** %.part_id..addr, metadata !70, metadata !DIExpression()), !dbg !75
  store i8* %.privates., i8** %.privates..addr, align 8, !tbaa !41
  call void @llvm.dbg.declare(metadata i8** %.privates..addr, metadata !71, metadata !DIExpression()), !dbg !75
  store void (i8*, ...)* %.copy_fn., void (i8*, ...)** %.copy_fn..addr, align 8, !tbaa !41
  call void @llvm.dbg.declare(metadata void (i8*, ...)** %.copy_fn..addr, metadata !72, metadata !DIExpression()), !dbg !75
  store i8* %.task_t., i8** %.task_t..addr, align 8, !tbaa !41
  call void @llvm.dbg.declare(metadata i8** %.task_t..addr, metadata !73, metadata !DIExpression()), !dbg !75
  store %struct.anon* %__context, %struct.anon** %__context.addr, align 8, !tbaa !41
  call void @llvm.dbg.declare(metadata %struct.anon** %__context.addr, metadata !74, metadata !DIExpression()), !dbg !75
  %0 = load %struct.anon*, %struct.anon** %__context.addr, align 8, !dbg !76
  %call = call i32 @omp_get_thread_num(), !dbg !77
  %1 = getelementptr inbounds %struct.anon, %struct.anon* %0, i32 0, i32 0, !dbg !79
  %2 = load i32*, i32** %1, align 8, !dbg !79, !tbaa !80
  store i32 %call, i32* %2, align 4, !dbg !82, !tbaa !18
  ret void, !dbg !83
}

declare !dbg !4 dso_local i32 @omp_get_thread_num() #5

; Function Attrs: norecurse nounwind uwtable
define internal i32 @.omp_task_entry.(i32 %0, %struct.kmp_task_t_with_privates* noalias %1) #3 !dbg !84 {
entry:
  %.addr = alloca i32, align 4
  %.addr1 = alloca %struct.kmp_task_t_with_privates*, align 8
  store i32 %0, i32* %.addr, align 4, !tbaa !18
  call void @llvm.dbg.declare(metadata i32* %.addr, metadata !87, metadata !DIExpression()), !dbg !99
  store %struct.kmp_task_t_with_privates* %1, %struct.kmp_task_t_with_privates** %.addr1, align 8, !tbaa !41
  call void @llvm.dbg.declare(metadata %struct.kmp_task_t_with_privates** %.addr1, metadata !88, metadata !DIExpression()), !dbg !99
  %2 = load i32, i32* %.addr, align 4, !dbg !100, !tbaa !18
  %3 = load %struct.kmp_task_t_with_privates*, %struct.kmp_task_t_with_privates** %.addr1, align 8, !dbg !100
  %4 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %3, i32 0, i32 0, !dbg !100
  %5 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 2, !dbg !100
  %6 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 0, !dbg !100
  %7 = load i8*, i8** %6, align 8, !dbg !100, !tbaa !47
  %8 = bitcast i8* %7 to %struct.anon*, !dbg !100
  %9 = bitcast %struct.kmp_task_t_with_privates* %3 to i8*, !dbg !100
  call void @.omp_outlined.(i32 %2, i32* %5, i8* null, void (i8*, ...)* null, i8* %9, %struct.anon* %8) #6, !dbg !100
  ret i32 0, !dbg !100
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i8* @__kmpc_omp_task_alloc(%struct.ident_t*, i32, i32, i64, i64, i32 (i32, i8*)*)

declare dso_local i32 @__kmpc_omp_task(%struct.ident_t*, i32, i8*)

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined..1(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %shared) #3 !dbg !101 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %shared.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !41
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !103, metadata !DIExpression()), !dbg !106
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !41
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !104, metadata !DIExpression()), !dbg !106
  store i32* %shared, i32** %shared.addr, align 8, !tbaa !41
  call void @llvm.dbg.declare(metadata i32** %shared.addr, metadata !105, metadata !DIExpression()), !dbg !106
  %0 = load i32*, i32** %shared.addr, align 8, !dbg !107, !tbaa !41
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !107, !tbaa !41
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !107, !tbaa !41
  %3 = load i32*, i32** %shared.addr, align 8, !dbg !107, !tbaa !41
  call void @.omp_outlined._debug__(i32* %1, i32* %2, i32* %3) #6, !dbg !107
  ret void, !dbg !107
}

declare !callback !108 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

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
!1 = !DIFile(filename: "integration/openmp/task-yes.c", directory: "/home/brad/Code/OpenRace/tests/data")
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
!13 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 8, type: !6, scopeLine: 8, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !14)
!14 = !{!15}
!15 = !DILocalVariable(name: "shared", scope: !13, file: !1, line: 9, type: !8)
!16 = !DILocation(line: 9, column: 3, scope: !13)
!17 = !DILocation(line: 9, column: 7, scope: !13)
!18 = !{!19, !19, i64 0}
!19 = !{!"int", !20, i64 0}
!20 = !{!"omnipotent char", !21, i64 0}
!21 = !{!"Simple C/C++ TBAA"}
!22 = !DILocation(line: 10, column: 1, scope: !13)
!23 = !{!24, !25, i64 16}
!24 = !{!"ident_t", !19, i64 0, !19, i64 4, !19, i64 8, !19, i64 12, !25, i64 16}
!25 = !{!"any pointer", !20, i64 0}
!26 = !DILocation(line: 16, column: 18, scope: !13)
!27 = !DILocation(line: 16, column: 3, scope: !13)
!28 = !DILocation(line: 17, column: 1, scope: !13)
!29 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 11, type: !30, scopeLine: 11, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !37)
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
!40 = !DILocalVariable(name: "shared", arg: 3, scope: !29, file: !1, line: 9, type: !36)
!41 = !{!25, !25, i64 0}
!42 = !DILocation(line: 0, scope: !29)
!43 = !DILocation(line: 9, column: 7, scope: !29)
!44 = !DILocation(line: 11, column: 3, scope: !29)
!45 = !DILocation(line: 12, column: 1, scope: !46)
!46 = distinct !DILexicalBlock(scope: !29, file: !1, line: 11, column: 3)
!47 = !{!48, !25, i64 0}
!48 = !{!"kmp_task_t_with_privates", !49, i64 0}
!49 = !{!"kmp_task_t", !25, i64 0, !25, i64 8, !19, i64 16, !20, i64 24, !20, i64 32}
!50 = !{i64 0, i64 8, !41}
!51 = !DILocation(line: 14, column: 3, scope: !29)
!52 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 13, type: !53, scopeLine: 13, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !68)
!53 = !DISubroutineType(types: !54)
!54 = !{null, !35, !32, !55, !58, !63, !64}
!55 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !56)
!56 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !57)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !59)
!59 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !60)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DISubroutineType(types: !62)
!62 = !{null, !55, null}
!63 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !57)
!64 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !65)
!65 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !66)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !29, file: !1, line: 12, size: 64, elements: !2)
!68 = !{!69, !70, !71, !72, !73, !74}
!69 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !52, type: !35, flags: DIFlagArtificial)
!70 = !DILocalVariable(name: ".part_id.", arg: 2, scope: !52, type: !32, flags: DIFlagArtificial)
!71 = !DILocalVariable(name: ".privates.", arg: 3, scope: !52, type: !55, flags: DIFlagArtificial)
!72 = !DILocalVariable(name: ".copy_fn.", arg: 4, scope: !52, type: !58, flags: DIFlagArtificial)
!73 = !DILocalVariable(name: ".task_t.", arg: 5, scope: !52, type: !63, flags: DIFlagArtificial)
!74 = !DILocalVariable(name: "__context", arg: 6, scope: !52, type: !64, flags: DIFlagArtificial)
!75 = !DILocation(line: 0, scope: !52)
!76 = !DILocation(line: 13, column: 5, scope: !52)
!77 = !DILocation(line: 13, column: 16, scope: !78)
!78 = distinct !DILexicalBlock(scope: !52, file: !1, line: 13, column: 5)
!79 = !DILocation(line: 13, column: 7, scope: !78)
!80 = !{!81, !25, i64 0}
!81 = !{!"", !25, i64 0}
!82 = !DILocation(line: 13, column: 14, scope: !78)
!83 = !DILocation(line: 13, column: 38, scope: !52)
!84 = distinct !DISubprogram(linkageName: ".omp_task_entry.", scope: !1, file: !1, line: 12, type: !85, scopeLine: 12, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !86)
!85 = !DISubroutineType(types: !2)
!86 = !{!87, !88}
!87 = !DILocalVariable(arg: 1, scope: !84, type: !8, flags: DIFlagArtificial)
!88 = !DILocalVariable(arg: 2, scope: !84, type: !89, flags: DIFlagArtificial)
!89 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !90)
!90 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t_with_privates", file: !1, size: 320, elements: !92)
!92 = !{!93}
!93 = !DIDerivedType(tag: DW_TAG_member, scope: !91, file: !1, baseType: !94, size: 320)
!94 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t", file: !1, size: 320, elements: !95)
!95 = !{!96, !98}
!96 = !DIDerivedType(tag: DW_TAG_member, scope: !94, file: !1, baseType: !97, size: 64, offset: 192)
!97 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "kmp_cmplrdata_t", file: !1, size: 64, elements: !2)
!98 = !DIDerivedType(tag: DW_TAG_member, scope: !94, file: !1, baseType: !97, size: 64, offset: 256)
!99 = !DILocation(line: 0, scope: !84)
!100 = !DILocation(line: 12, column: 1, scope: !84)
!101 = distinct !DISubprogram(name: ".omp_outlined..1", scope: !1, file: !1, line: 11, type: !30, scopeLine: 11, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !102)
!102 = !{!103, !104, !105}
!103 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !101, type: !32, flags: DIFlagArtificial)
!104 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !101, type: !32, flags: DIFlagArtificial)
!105 = !DILocalVariable(name: "shared", arg: 3, scope: !101, type: !36, flags: DIFlagArtificial)
!106 = !DILocation(line: 0, scope: !101)
!107 = !DILocation(line: 11, column: 3, scope: !101)
!108 = !{!109}
!109 = !{i64 2, i64 -1, i64 -1, i1 true}
