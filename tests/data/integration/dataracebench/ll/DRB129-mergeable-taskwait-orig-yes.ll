; ModuleID = 'DRB129-mergeable-taskwait-orig-yes.c'
source_filename = "DRB129-mergeable-taskwait-orig-yes.c"
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
@1 = private unnamed_addr constant [50 x i8] c";DRB129-mergeable-taskwait-orig-yes.c;main;25;3;;\00", align 1
@2 = private unnamed_addr constant [50 x i8] c";DRB129-mergeable-taskwait-orig-yes.c;main;29;3;;\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
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
  store i8* getelementptr inbounds ([50 x i8], [50 x i8]* @1, i32 0, i32 0), i8** %2, align 8
  %3 = call i32 @__kmpc_global_thread_num(%struct.ident_t* %.kmpc_loc.addr)
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata i32* %x, metadata !11, metadata !DIExpression()), !dbg !12
  store i32 2, i32* %x, align 4, !dbg !12
  %4 = getelementptr inbounds %struct.anon, %struct.anon* %agg.captured, i32 0, i32 0, !dbg !13
  store i32* %x, i32** %4, align 8, !dbg !13
  %5 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !13
  store i8* getelementptr inbounds ([50 x i8], [50 x i8]* @1, i32 0, i32 0), i8** %5, align 8, !dbg !13
  %6 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* %.kmpc_loc.addr, i32 %3, i32 1, i64 48, i64 8, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates*)* @.omp_task_entry. to i32 (i32, i8*)*)), !dbg !13
  %7 = bitcast i8* %6 to %struct.kmp_task_t_with_privates*, !dbg !13
  %8 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %7, i32 0, i32 0, !dbg !13
  %9 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %8, i32 0, i32 0, !dbg !13
  %10 = load i8*, i8** %9, align 8, !dbg !13
  %11 = bitcast %struct.anon* %agg.captured to i8*, !dbg !13
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 %11, i64 8, i1 false), !dbg !13
  %12 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %7, i32 0, i32 1, !dbg !13
  %13 = bitcast i8* %10 to %struct.anon*, !dbg !13
  %14 = getelementptr inbounds %struct..kmp_privates.t, %struct..kmp_privates.t* %12, i32 0, i32 0, !dbg !13
  %15 = getelementptr inbounds %struct.anon, %struct.anon* %13, i32 0, i32 0, !dbg !13
  %16 = load i32*, i32** %15, align 8, !dbg !13
  %17 = load i32, i32* %16, align 4, !dbg !14
  store i32 %17, i32* %14, align 8, !dbg !13
  %18 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !13
  store i8* getelementptr inbounds ([50 x i8], [50 x i8]* @1, i32 0, i32 0), i8** %18, align 8, !dbg !13
  %19 = call i32 @__kmpc_omp_task(%struct.ident_t* %.kmpc_loc.addr, i32 %3, i8* %6), !dbg !13
  %20 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !16
  store i8* getelementptr inbounds ([50 x i8], [50 x i8]* @2, i32 0, i32 0), i8** %20, align 8, !dbg !16
  %21 = call i32 @__kmpc_omp_taskwait(%struct.ident_t* %.kmpc_loc.addr, i32 %3), !dbg !16
  %22 = load i32, i32* %x, align 4, !dbg !17
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %22), !dbg !18
  ret i32 0, !dbg !19
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind uwtable
define internal void @.omp_task_privates_map.(%struct..kmp_privates.t* noalias %0, i32** noalias %1) #2 !dbg !20 {
entry:
  %.addr = alloca %struct..kmp_privates.t*, align 8
  %.addr1 = alloca i32**, align 8
  store %struct..kmp_privates.t* %0, %struct..kmp_privates.t** %.addr, align 8
  call void @llvm.dbg.declare(metadata %struct..kmp_privates.t** %.addr, metadata !22, metadata !DIExpression()), !dbg !27
  store i32** %1, i32*** %.addr1, align 8
  call void @llvm.dbg.declare(metadata i32*** %.addr1, metadata !28, metadata !DIExpression()), !dbg !27
  %2 = load %struct..kmp_privates.t*, %struct..kmp_privates.t** %.addr, align 8, !dbg !33
  %3 = getelementptr inbounds %struct..kmp_privates.t, %struct..kmp_privates.t* %2, i32 0, i32 0, !dbg !33
  %4 = load i32**, i32*** %.addr1, align 8, !dbg !33
  store i32* %3, i32** %4, align 8, !dbg !33
  ret void, !dbg !33
}

; Function Attrs: noinline norecurse nounwind uwtable
define internal i32 @.omp_task_entry.(i32 %0, %struct.kmp_task_t_with_privates* noalias %1) #3 !dbg !34 {
entry:
  %.global_tid..addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %.global_tid..addr.i, metadata !35, metadata !DIExpression()), !dbg !56
  %.part_id..addr.i = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %.part_id..addr.i, metadata !58, metadata !DIExpression()), !dbg !56
  %.privates..addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %.privates..addr.i, metadata !59, metadata !DIExpression()), !dbg !56
  %.copy_fn..addr.i = alloca void (i8*, ...)*, align 8
  call void @llvm.dbg.declare(metadata void (i8*, ...)** %.copy_fn..addr.i, metadata !60, metadata !DIExpression()), !dbg !56
  %.task_t..addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %.task_t..addr.i, metadata !61, metadata !DIExpression()), !dbg !56
  %__context.addr.i = alloca %struct.anon*, align 8
  call void @llvm.dbg.declare(metadata %struct.anon** %__context.addr.i, metadata !62, metadata !DIExpression()), !dbg !56
  %.firstpriv.ptr.addr.i = alloca i32*, align 8
  %.addr = alloca i32, align 4
  %.addr1 = alloca %struct.kmp_task_t_with_privates*, align 8
  store i32 %0, i32* %.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %.addr, metadata !63, metadata !DIExpression()), !dbg !64
  store %struct.kmp_task_t_with_privates* %1, %struct.kmp_task_t_with_privates** %.addr1, align 8
  call void @llvm.dbg.declare(metadata %struct.kmp_task_t_with_privates** %.addr1, metadata !65, metadata !DIExpression()), !dbg !64
  %2 = load i32, i32* %.addr, align 4, !dbg !77
  %3 = load %struct.kmp_task_t_with_privates*, %struct.kmp_task_t_with_privates** %.addr1, align 8, !dbg !77
  %4 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %3, i32 0, i32 0, !dbg !77
  %5 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 2, !dbg !77
  %6 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 0, !dbg !77
  %7 = load i8*, i8** %6, align 8, !dbg !77
  %8 = bitcast i8* %7 to %struct.anon*, !dbg !77
  %9 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %3, i32 0, i32 1, !dbg !77
  %10 = bitcast %struct..kmp_privates.t* %9 to i8*, !dbg !77
  %11 = bitcast %struct.kmp_task_t_with_privates* %3 to i8*, !dbg !77
  store i32 %2, i32* %.global_tid..addr.i, align 4, !noalias !78
  store i32* %5, i32** %.part_id..addr.i, align 8, !noalias !78
  store i8* %10, i8** %.privates..addr.i, align 8, !noalias !78
  store void (i8*, ...)* bitcast (void (%struct..kmp_privates.t*, i32**)* @.omp_task_privates_map. to void (i8*, ...)*), void (i8*, ...)** %.copy_fn..addr.i, align 8, !noalias !78
  store i8* %11, i8** %.task_t..addr.i, align 8, !noalias !78
  store %struct.anon* %8, %struct.anon** %__context.addr.i, align 8, !noalias !78
  %12 = load %struct.anon*, %struct.anon** %__context.addr.i, align 8, !dbg !84, !noalias !78
  %13 = load void (i8*, ...)*, void (i8*, ...)** %.copy_fn..addr.i, align 8, !dbg !84, !noalias !78
  %14 = load i8*, i8** %.privates..addr.i, align 8, !dbg !84, !noalias !78
  call void (i8*, ...) %13(i8* %14, i32** %.firstpriv.ptr.addr.i) #6, !dbg !85
  %15 = load i32*, i32** %.firstpriv.ptr.addr.i, align 8, !dbg !84, !noalias !78
  %16 = load i32, i32* %15, align 4, !dbg !86
  %inc.i = add nsw i32 %16, 1, !dbg !86
  store i32 %inc.i, i32* %15, align 4, !dbg !86
  ret i32 0, !dbg !77
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

declare dso_local i32 @__kmpc_global_thread_num(%struct.ident_t*)

declare dso_local i8* @__kmpc_omp_task_alloc(%struct.ident_t*, i32, i32, i64, i64, i32 (i32, i8*)*)

declare dso_local i32 @__kmpc_omp_task(%struct.ident_t*, i32, i8*)

declare dso_local i32 @__kmpc_omp_taskwait(%struct.ident_t*, i32)

declare dso_local i32 @printf(i8*, ...) #5

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noinline norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind willreturn }
attributes #5 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.1 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "DRB129-mergeable-taskwait-orig-yes.c", directory: "/home/yanze/code/OpenRace/tests/data/integration/dataracebench")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.1 "}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 22, type: !8, scopeLine: 22, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DILocalVariable(name: "x", scope: !7, file: !1, line: 23, type: !10)
!12 = !DILocation(line: 23, column: 7, scope: !7)
!13 = !DILocation(line: 25, column: 3, scope: !7)
!14 = !DILocation(line: 27, column: 5, scope: !15)
!15 = distinct !DILexicalBlock(scope: !7, file: !1, line: 25, column: 3)
!16 = !DILocation(line: 29, column: 3, scope: !7)
!17 = !DILocation(line: 31, column: 17, scope: !7)
!18 = !DILocation(line: 31, column: 3, scope: !7)
!19 = !DILocation(line: 32, column: 3, scope: !7)
!20 = distinct !DISubprogram(linkageName: ".omp_task_privates_map.", scope: !1, file: !1, line: 25, type: !21, scopeLine: 25, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!21 = !DISubroutineType(types: !2)
!22 = !DILocalVariable(arg: 1, scope: !20, type: !23, flags: DIFlagArtificial)
!23 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !24)
!24 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !25)
!25 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !26, size: 64)
!26 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: ".kmp_privates.t", file: !1, size: 32, elements: !2)
!27 = !DILocation(line: 0, scope: !20)
!28 = !DILocalVariable(arg: 2, scope: !20, type: !29, flags: DIFlagArtificial)
!29 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!30 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !31)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!33 = !DILocation(line: 25, column: 3, scope: !20)
!34 = distinct !DISubprogram(linkageName: ".omp_task_entry.", scope: !1, file: !1, line: 25, type: !21, scopeLine: 25, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!35 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !36, type: !39, flags: DIFlagArtificial)
!36 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 27, type: !37, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!37 = !DISubroutineType(types: !38)
!38 = !{null, !39, !40, !43, !46, !51, !52}
!39 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!40 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !41)
!41 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !42)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !44)
!44 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !45)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !47)
!47 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !48)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = !DISubroutineType(types: !50)
!50 = !{null, !43, null}
!51 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!52 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !53)
!53 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !54)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !7, file: !1, line: 25, size: 64, elements: !2)
!56 = !DILocation(line: 0, scope: !36, inlinedAt: !57)
!57 = distinct !DILocation(line: 25, column: 3, scope: !34)
!58 = !DILocalVariable(name: ".part_id.", arg: 2, scope: !36, type: !40, flags: DIFlagArtificial)
!59 = !DILocalVariable(name: ".privates.", arg: 3, scope: !36, type: !43, flags: DIFlagArtificial)
!60 = !DILocalVariable(name: ".copy_fn.", arg: 4, scope: !36, type: !46, flags: DIFlagArtificial)
!61 = !DILocalVariable(name: ".task_t.", arg: 5, scope: !36, type: !51, flags: DIFlagArtificial)
!62 = !DILocalVariable(name: "__context", arg: 6, scope: !36, type: !52, flags: DIFlagArtificial)
!63 = !DILocalVariable(arg: 1, scope: !34, type: !10, flags: DIFlagArtificial)
!64 = !DILocation(line: 0, scope: !34)
!65 = !DILocalVariable(arg: 2, scope: !34, type: !66, flags: DIFlagArtificial)
!66 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !67)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t_with_privates", file: !1, size: 384, elements: !69)
!69 = !{!70, !76}
!70 = !DIDerivedType(tag: DW_TAG_member, scope: !68, file: !1, baseType: !71, size: 320)
!71 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t", file: !1, size: 320, elements: !72)
!72 = !{!73, !75}
!73 = !DIDerivedType(tag: DW_TAG_member, scope: !71, file: !1, baseType: !74, size: 64, offset: 192)
!74 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "kmp_cmplrdata_t", file: !1, size: 64, elements: !2)
!75 = !DIDerivedType(tag: DW_TAG_member, scope: !71, file: !1, baseType: !74, size: 64, offset: 256)
!76 = !DIDerivedType(tag: DW_TAG_member, scope: !68, file: !1, baseType: !26, size: 32, offset: 320)
!77 = !DILocation(line: 25, column: 3, scope: !34)
!78 = !{!79, !81, !82, !83}
!79 = distinct !{!79, !80, !".omp_outlined.: %.part_id."}
!80 = distinct !{!80, !".omp_outlined."}
!81 = distinct !{!81, !80, !".omp_outlined.: %.privates."}
!82 = distinct !{!82, !80, !".omp_outlined.: %.copy_fn."}
!83 = distinct !{!83, !80, !".omp_outlined.: %__context"}
!84 = !DILocation(line: 26, column: 3, scope: !36, inlinedAt: !57)
!85 = !DILocation(line: 25, column: 3, scope: !36, inlinedAt: !57)
!86 = !DILocation(line: 27, column: 6, scope: !87, inlinedAt: !57)
!87 = distinct !DILexicalBlock(scope: !36, file: !1, line: 26, column: 3)
