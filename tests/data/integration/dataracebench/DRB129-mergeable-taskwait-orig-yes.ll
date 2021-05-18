; ModuleID = 'integration/dataracebench/DRB129-mergeable-taskwait-orig-yes.c'
source_filename = "integration/dataracebench/DRB129-mergeable-taskwait-orig-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }
%struct.anon = type { i32* }
%struct.kmp_task_t_with_privates = type { %struct.kmp_task_t, %struct..kmp_privates.t }
%struct.kmp_task_t = type { i8*, i32 (i32, i8*)*, i32, %union.kmp_cmplrdata_t, %union.kmp_cmplrdata_t }
%union.kmp_cmplrdata_t = type { i32 (i32, i8*)* }
%struct..kmp_privates.t = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [76 x i8] c";integration/dataracebench/DRB129-mergeable-taskwait-orig-yes.c;main;25;3;;\00", align 1
@2 = private unnamed_addr constant [76 x i8] c";integration/dataracebench/DRB129-mergeable-taskwait-orig-yes.c;main;29;3;;\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main() #0 !dbg !7 {
entry:
  %retval = alloca i32, align 4
  %x = alloca i32, align 4
  %agg.captured = alloca %struct.anon, align 8
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  %2 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4
  store i8* getelementptr inbounds ([76 x i8], [76 x i8]* @1, i32 0, i32 0), i8** %2, align 8, !tbaa !13
  %3 = call i32 @__kmpc_global_thread_num(%struct.ident_t* %.kmpc_loc.addr)
  store i32 0, i32* %retval, align 4
  %4 = bitcast i32* %x to i8*, !dbg !19
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #6, !dbg !19
  call void @llvm.dbg.declare(metadata i32* %x, metadata !12, metadata !DIExpression()), !dbg !20
  store i32 2, i32* %x, align 4, !dbg !20, !tbaa !21
  %5 = getelementptr inbounds %struct.anon, %struct.anon* %agg.captured, i32 0, i32 0, !dbg !22
  store i32* %x, i32** %5, align 8, !dbg !22, !tbaa !23
  %6 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !22
  store i8* getelementptr inbounds ([76 x i8], [76 x i8]* @1, i32 0, i32 0), i8** %6, align 8, !dbg !22, !tbaa !13
  %7 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* %.kmpc_loc.addr, i32 %3, i32 1, i64 48, i64 8, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates*)* @.omp_task_entry. to i32 (i32, i8*)*)), !dbg !22
  %8 = bitcast i8* %7 to %struct.kmp_task_t_with_privates*, !dbg !22
  %9 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %8, i32 0, i32 0, !dbg !22
  %10 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %9, i32 0, i32 0, !dbg !22
  %11 = load i8*, i8** %10, align 8, !dbg !22, !tbaa !24
  %12 = bitcast %struct.anon* %agg.captured to i8*, !dbg !22
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %11, i8* align 8 %12, i64 8, i1 false), !dbg !22, !tbaa.struct !28
  %13 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %8, i32 0, i32 1, !dbg !22
  %14 = bitcast i8* %11 to %struct.anon*, !dbg !22
  %15 = getelementptr inbounds %struct..kmp_privates.t, %struct..kmp_privates.t* %13, i32 0, i32 0, !dbg !22
  %16 = getelementptr inbounds %struct.anon, %struct.anon* %14, i32 0, i32 0, !dbg !22
  %17 = load i32*, i32** %16, align 8, !dbg !22, !tbaa !29
  %18 = load i32, i32* %17, align 4, !dbg !31, !tbaa !21
  store i32 %18, i32* %15, align 8, !dbg !22, !tbaa !33
  %19 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !22
  store i8* getelementptr inbounds ([76 x i8], [76 x i8]* @1, i32 0, i32 0), i8** %19, align 8, !dbg !22, !tbaa !13
  %20 = call i32 @__kmpc_omp_task(%struct.ident_t* %.kmpc_loc.addr, i32 %3, i8* %7), !dbg !22
  %21 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !34
  store i8* getelementptr inbounds ([76 x i8], [76 x i8]* @2, i32 0, i32 0), i8** %21, align 8, !dbg !34, !tbaa !13
  %22 = call i32 @__kmpc_omp_taskwait(%struct.ident_t* %.kmpc_loc.addr, i32 %3), !dbg !34
  %23 = load i32, i32* %x, align 4, !dbg !35, !tbaa !21
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %23), !dbg !36
  %24 = bitcast i32* %x to i8*, !dbg !37
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %24) #6, !dbg !37
  ret i32 0, !dbg !38
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: alwaysinline nounwind uwtable
define internal void @.omp_outlined.(i32 %.global_tid., i32* noalias %.part_id., i8* noalias %.privates., void (i8*, ...)* noalias %.copy_fn., i8* %.task_t., %struct.anon* noalias %__context) #3 !dbg !39 {
entry:
  %.global_tid..addr = alloca i32, align 4
  %.part_id..addr = alloca i32*, align 8
  %.privates..addr = alloca i8*, align 8
  %.copy_fn..addr = alloca void (i8*, ...)*, align 8
  %.task_t..addr = alloca i8*, align 8
  %__context.addr = alloca %struct.anon*, align 8
  %.firstpriv.ptr.addr = alloca i32*, align 8
  store i32 %.global_tid., i32* %.global_tid..addr, align 4, !tbaa !21
  call void @llvm.dbg.declare(metadata i32* %.global_tid..addr, metadata !60, metadata !DIExpression()), !dbg !66
  store i32* %.part_id., i32** %.part_id..addr, align 8, !tbaa !23
  call void @llvm.dbg.declare(metadata i32** %.part_id..addr, metadata !61, metadata !DIExpression()), !dbg !66
  store i8* %.privates., i8** %.privates..addr, align 8, !tbaa !23
  call void @llvm.dbg.declare(metadata i8** %.privates..addr, metadata !62, metadata !DIExpression()), !dbg !66
  store void (i8*, ...)* %.copy_fn., void (i8*, ...)** %.copy_fn..addr, align 8, !tbaa !23
  call void @llvm.dbg.declare(metadata void (i8*, ...)** %.copy_fn..addr, metadata !63, metadata !DIExpression()), !dbg !66
  store i8* %.task_t., i8** %.task_t..addr, align 8, !tbaa !23
  call void @llvm.dbg.declare(metadata i8** %.task_t..addr, metadata !64, metadata !DIExpression()), !dbg !66
  store %struct.anon* %__context, %struct.anon** %__context.addr, align 8, !tbaa !23
  call void @llvm.dbg.declare(metadata %struct.anon** %__context.addr, metadata !65, metadata !DIExpression()), !dbg !66
  %0 = load %struct.anon*, %struct.anon** %__context.addr, align 8, !dbg !67
  %1 = load void (i8*, ...)*, void (i8*, ...)** %.copy_fn..addr, align 8, !dbg !67
  %2 = load i8*, i8** %.privates..addr, align 8, !dbg !67
  call void (i8*, ...) %1(i8* %2, i32** %.firstpriv.ptr.addr), !dbg !68
  %3 = load i32*, i32** %.firstpriv.ptr.addr, align 8, !dbg !67
  %4 = load i32, i32* %3, align 4, !dbg !69, !tbaa !21
  %inc = add nsw i32 %4, 1, !dbg !69
  store i32 %inc, i32* %3, align 4, !dbg !69, !tbaa !21
  ret void, !dbg !71
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @.omp_task_privates_map.(%struct..kmp_privates.t* noalias %0, i32** noalias %1) #3 !dbg !72 {
entry:
  %.addr = alloca %struct..kmp_privates.t*, align 8
  %.addr1 = alloca i32**, align 8
  store %struct..kmp_privates.t* %0, %struct..kmp_privates.t** %.addr, align 8, !tbaa !23
  call void @llvm.dbg.declare(metadata %struct..kmp_privates.t** %.addr, metadata !75, metadata !DIExpression()), !dbg !85
  store i32** %1, i32*** %.addr1, align 8, !tbaa !23
  call void @llvm.dbg.declare(metadata i32*** %.addr1, metadata !80, metadata !DIExpression()), !dbg !85
  %2 = load %struct..kmp_privates.t*, %struct..kmp_privates.t** %.addr, align 8, !dbg !86
  %3 = getelementptr inbounds %struct..kmp_privates.t, %struct..kmp_privates.t* %2, i32 0, i32 0, !dbg !86
  %4 = load i32**, i32*** %.addr1, align 8, !dbg !86
  store i32* %3, i32** %4, align 8, !dbg !86, !tbaa !23
  ret void, !dbg !86
}

; Function Attrs: norecurse nounwind uwtable
define internal i32 @.omp_task_entry.(i32 %0, %struct.kmp_task_t_with_privates* noalias %1) #4 !dbg !87 {
entry:
  %.addr = alloca i32, align 4
  %.addr1 = alloca %struct.kmp_task_t_with_privates*, align 8
  store i32 %0, i32* %.addr, align 4, !tbaa !21
  call void @llvm.dbg.declare(metadata i32* %.addr, metadata !89, metadata !DIExpression()), !dbg !102
  store %struct.kmp_task_t_with_privates* %1, %struct.kmp_task_t_with_privates** %.addr1, align 8, !tbaa !23
  call void @llvm.dbg.declare(metadata %struct.kmp_task_t_with_privates** %.addr1, metadata !90, metadata !DIExpression()), !dbg !102
  %2 = load i32, i32* %.addr, align 4, !dbg !103, !tbaa !21
  %3 = load %struct.kmp_task_t_with_privates*, %struct.kmp_task_t_with_privates** %.addr1, align 8, !dbg !103
  %4 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %3, i32 0, i32 0, !dbg !103
  %5 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 2, !dbg !103
  %6 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 0, !dbg !103
  %7 = load i8*, i8** %6, align 8, !dbg !103, !tbaa !24
  %8 = bitcast i8* %7 to %struct.anon*, !dbg !103
  %9 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %3, i32 0, i32 1, !dbg !103
  %10 = bitcast %struct..kmp_privates.t* %9 to i8*, !dbg !103
  %11 = bitcast %struct.kmp_task_t_with_privates* %3 to i8*, !dbg !103
  call void @.omp_outlined.(i32 %2, i32* %5, i8* %10, void (i8*, ...)* bitcast (void (%struct..kmp_privates.t*, i32**)* @.omp_task_privates_map. to void (i8*, ...)*), i8* %11, %struct.anon* %8) #6, !dbg !103
  ret i32 0, !dbg !103
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @__kmpc_global_thread_num(%struct.ident_t*)

declare dso_local i8* @__kmpc_omp_task_alloc(%struct.ident_t*, i32, i32, i64, i64, i32 (i32, i8*)*)

declare dso_local i32 @__kmpc_omp_task(%struct.ident_t*, i32, i8*)

declare dso_local i32 @__kmpc_omp_taskwait(%struct.ident_t*, i32)

declare dso_local i32 @printf(i8*, ...) #5

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { alwaysinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "integration/dataracebench/DRB129-mergeable-taskwait-orig-yes.c", directory: "/home/brad/Code/OpenRace/tests/data")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.1 "}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 22, type: !8, scopeLine: 22, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !11)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !{!12}
!12 = !DILocalVariable(name: "x", scope: !7, file: !1, line: 23, type: !10)
!13 = !{!14, !18, i64 16}
!14 = !{!"ident_t", !15, i64 0, !15, i64 4, !15, i64 8, !15, i64 12, !18, i64 16}
!15 = !{!"int", !16, i64 0}
!16 = !{!"omnipotent char", !17, i64 0}
!17 = !{!"Simple C/C++ TBAA"}
!18 = !{!"any pointer", !16, i64 0}
!19 = !DILocation(line: 23, column: 3, scope: !7)
!20 = !DILocation(line: 23, column: 7, scope: !7)
!21 = !{!15, !15, i64 0}
!22 = !DILocation(line: 25, column: 3, scope: !7)
!23 = !{!18, !18, i64 0}
!24 = !{!25, !18, i64 0}
!25 = !{!"kmp_task_t_with_privates", !26, i64 0, !27, i64 40}
!26 = !{!"kmp_task_t", !18, i64 0, !18, i64 8, !15, i64 16, !16, i64 24, !16, i64 32}
!27 = !{!".kmp_privates.t", !15, i64 0}
!28 = !{i64 0, i64 8, !23}
!29 = !{!30, !18, i64 0}
!30 = !{!"", !18, i64 0}
!31 = !DILocation(line: 27, column: 5, scope: !32)
!32 = distinct !DILexicalBlock(scope: !7, file: !1, line: 25, column: 3)
!33 = !{!25, !15, i64 40}
!34 = !DILocation(line: 29, column: 3, scope: !7)
!35 = !DILocation(line: 31, column: 17, scope: !7)
!36 = !DILocation(line: 31, column: 3, scope: !7)
!37 = !DILocation(line: 33, column: 1, scope: !7)
!38 = !DILocation(line: 32, column: 3, scope: !7)
!39 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 27, type: !40, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !59)
!40 = !DISubroutineType(types: !41)
!41 = !{null, !42, !43, !46, !49, !54, !55}
!42 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!43 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !44)
!44 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !45)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
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
!58 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !7, file: !1, line: 25, size: 64, elements: !2)
!59 = !{!60, !61, !62, !63, !64, !65}
!60 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !39, type: !42, flags: DIFlagArtificial)
!61 = !DILocalVariable(name: ".part_id.", arg: 2, scope: !39, type: !43, flags: DIFlagArtificial)
!62 = !DILocalVariable(name: ".privates.", arg: 3, scope: !39, type: !46, flags: DIFlagArtificial)
!63 = !DILocalVariable(name: ".copy_fn.", arg: 4, scope: !39, type: !49, flags: DIFlagArtificial)
!64 = !DILocalVariable(name: ".task_t.", arg: 5, scope: !39, type: !54, flags: DIFlagArtificial)
!65 = !DILocalVariable(name: "__context", arg: 6, scope: !39, type: !55, flags: DIFlagArtificial)
!66 = !DILocation(line: 0, scope: !39)
!67 = !DILocation(line: 26, column: 3, scope: !39)
!68 = !DILocation(line: 25, column: 3, scope: !39)
!69 = !DILocation(line: 27, column: 6, scope: !70)
!70 = distinct !DILexicalBlock(scope: !39, file: !1, line: 26, column: 3)
!71 = !DILocation(line: 28, column: 3, scope: !39)
!72 = distinct !DISubprogram(linkageName: ".omp_task_privates_map.", scope: !1, file: !1, line: 25, type: !73, scopeLine: 25, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !74)
!73 = !DISubroutineType(types: !2)
!74 = !{!75, !80}
!75 = !DILocalVariable(arg: 1, scope: !72, type: !76, flags: DIFlagArtificial)
!76 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !77)
!77 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !78)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: ".kmp_privates.t", file: !1, size: 32, elements: !2)
!80 = !DILocalVariable(arg: 2, scope: !72, type: !81, flags: DIFlagArtificial)
!81 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !82)
!82 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !83)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!85 = !DILocation(line: 0, scope: !72)
!86 = !DILocation(line: 25, column: 3, scope: !72)
!87 = distinct !DISubprogram(linkageName: ".omp_task_entry.", scope: !1, file: !1, line: 25, type: !73, scopeLine: 25, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !88)
!88 = !{!89, !90}
!89 = !DILocalVariable(arg: 1, scope: !87, type: !10, flags: DIFlagArtificial)
!90 = !DILocalVariable(arg: 2, scope: !87, type: !91, flags: DIFlagArtificial)
!91 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !92)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!93 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t_with_privates", file: !1, size: 384, elements: !94)
!94 = !{!95, !101}
!95 = !DIDerivedType(tag: DW_TAG_member, scope: !93, file: !1, baseType: !96, size: 320)
!96 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t", file: !1, size: 320, elements: !97)
!97 = !{!98, !100}
!98 = !DIDerivedType(tag: DW_TAG_member, scope: !96, file: !1, baseType: !99, size: 64, offset: 192)
!99 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "kmp_cmplrdata_t", file: !1, size: 64, elements: !2)
!100 = !DIDerivedType(tag: DW_TAG_member, scope: !96, file: !1, baseType: !99, size: 64, offset: 256)
!101 = !DIDerivedType(tag: DW_TAG_member, scope: !93, file: !1, baseType: !79, size: 32, offset: 320)
!102 = !DILocation(line: 0, scope: !87)
!103 = !DILocation(line: 25, column: 3, scope: !87)
