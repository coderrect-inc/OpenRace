; ModuleID = 'DRB130-mergeable-taskwait-orig-no.c'
source_filename = "DRB130-mergeable-taskwait-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }
%struct.anon = type { i32* }
%struct.kmp_task_t_with_privates = type { %struct.kmp_task_t }
%struct.kmp_task_t = type { i8*, i32 (i32, i8*)*, i32, %union.kmp_cmplrdata_t, %union.kmp_cmplrdata_t }
%union.kmp_cmplrdata_t = type { i32 (i32, i8*)* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [49 x i8] c";DRB130-mergeable-taskwait-orig-no.c;main;23;3;;\00", align 1
@2 = private unnamed_addr constant [49 x i8] c";DRB130-mergeable-taskwait-orig-no.c;main;27;3;;\00", align 1
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
  store i8* getelementptr inbounds ([49 x i8], [49 x i8]* @1, i32 0, i32 0), i8** %2, align 8
  %3 = call i32 @__kmpc_global_thread_num(%struct.ident_t* %.kmpc_loc.addr)
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata i32* %x, metadata !11, metadata !DIExpression()), !dbg !12
  store i32 2, i32* %x, align 4, !dbg !12
  %4 = getelementptr inbounds %struct.anon, %struct.anon* %agg.captured, i32 0, i32 0, !dbg !13
  store i32* %x, i32** %4, align 8, !dbg !13
  %5 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !13
  store i8* getelementptr inbounds ([49 x i8], [49 x i8]* @1, i32 0, i32 0), i8** %5, align 8, !dbg !13
  %6 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* %.kmpc_loc.addr, i32 %3, i32 1, i64 40, i64 8, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates*)* @.omp_task_entry. to i32 (i32, i8*)*)), !dbg !13
  %7 = bitcast i8* %6 to %struct.kmp_task_t_with_privates*, !dbg !13
  %8 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %7, i32 0, i32 0, !dbg !13
  %9 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %8, i32 0, i32 0, !dbg !13
  %10 = load i8*, i8** %9, align 8, !dbg !13
  %11 = bitcast %struct.anon* %agg.captured to i8*, !dbg !13
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 %11, i64 8, i1 false), !dbg !13
  %12 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !13
  store i8* getelementptr inbounds ([49 x i8], [49 x i8]* @1, i32 0, i32 0), i8** %12, align 8, !dbg !13
  %13 = call i32 @__kmpc_omp_task(%struct.ident_t* %.kmpc_loc.addr, i32 %3, i8* %6), !dbg !13
  %14 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !14
  store i8* getelementptr inbounds ([49 x i8], [49 x i8]* @2, i32 0, i32 0), i8** %14, align 8, !dbg !14
  %15 = call i32 @__kmpc_omp_taskwait(%struct.ident_t* %.kmpc_loc.addr, i32 %3), !dbg !14
  %16 = load i32, i32* %x, align 4, !dbg !15
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %16), !dbg !16
  ret i32 0, !dbg !17
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline norecurse nounwind uwtable
define internal i32 @.omp_task_entry.(i32 %0, %struct.kmp_task_t_with_privates* noalias %1) #2 !dbg !18 {
entry:
  %.global_tid..addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %.global_tid..addr.i, metadata !20, metadata !DIExpression()), !dbg !41
  %.part_id..addr.i = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %.part_id..addr.i, metadata !43, metadata !DIExpression()), !dbg !41
  %.privates..addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %.privates..addr.i, metadata !44, metadata !DIExpression()), !dbg !41
  %.copy_fn..addr.i = alloca void (i8*, ...)*, align 8
  call void @llvm.dbg.declare(metadata void (i8*, ...)** %.copy_fn..addr.i, metadata !45, metadata !DIExpression()), !dbg !41
  %.task_t..addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %.task_t..addr.i, metadata !46, metadata !DIExpression()), !dbg !41
  %__context.addr.i = alloca %struct.anon*, align 8
  call void @llvm.dbg.declare(metadata %struct.anon** %__context.addr.i, metadata !47, metadata !DIExpression()), !dbg !41
  %.addr = alloca i32, align 4
  %.addr1 = alloca %struct.kmp_task_t_with_privates*, align 8
  store i32 %0, i32* %.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %.addr, metadata !48, metadata !DIExpression()), !dbg !49
  store %struct.kmp_task_t_with_privates* %1, %struct.kmp_task_t_with_privates** %.addr1, align 8
  call void @llvm.dbg.declare(metadata %struct.kmp_task_t_with_privates** %.addr1, metadata !50, metadata !DIExpression()), !dbg !49
  %2 = load i32, i32* %.addr, align 4, !dbg !61
  %3 = load %struct.kmp_task_t_with_privates*, %struct.kmp_task_t_with_privates** %.addr1, align 8, !dbg !61
  %4 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %3, i32 0, i32 0, !dbg !61
  %5 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 2, !dbg !61
  %6 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 0, !dbg !61
  %7 = load i8*, i8** %6, align 8, !dbg !61
  %8 = bitcast i8* %7 to %struct.anon*, !dbg !61
  %9 = bitcast %struct.kmp_task_t_with_privates* %3 to i8*, !dbg !61
  store i32 %2, i32* %.global_tid..addr.i, align 4, !noalias !62
  store i32* %5, i32** %.part_id..addr.i, align 8, !noalias !62
  store i8* null, i8** %.privates..addr.i, align 8, !noalias !62
  store void (i8*, ...)* null, void (i8*, ...)** %.copy_fn..addr.i, align 8, !noalias !62
  store i8* %9, i8** %.task_t..addr.i, align 8, !noalias !62
  store %struct.anon* %8, %struct.anon** %__context.addr.i, align 8, !noalias !62
  %10 = load %struct.anon*, %struct.anon** %__context.addr.i, align 8, !dbg !68, !noalias !62
  %11 = getelementptr inbounds %struct.anon, %struct.anon* %10, i32 0, i32 0, !dbg !69
  %12 = load i32*, i32** %11, align 8, !dbg !69
  %13 = load i32, i32* %12, align 4, !dbg !71
  %inc.i = add nsw i32 %13, 1, !dbg !71
  store i32 %inc.i, i32* %12, align 4, !dbg !71
  ret i32 0, !dbg !61
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @__kmpc_global_thread_num(%struct.ident_t*)

declare dso_local i8* @__kmpc_omp_task_alloc(%struct.ident_t*, i32, i32, i64, i64, i32 (i32, i8*)*)

declare dso_local i32 @__kmpc_omp_task(%struct.ident_t*, i32, i8*)

declare dso_local i32 @__kmpc_omp_taskwait(%struct.ident_t*, i32)

declare dso_local i32 @printf(i8*, ...) #4

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noinline norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.1 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "DRB130-mergeable-taskwait-orig-no.c", directory: "/home/yanze/code/OpenRace/tests/data/integration/dataracebench")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.1 "}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 20, type: !8, scopeLine: 20, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DILocalVariable(name: "x", scope: !7, file: !1, line: 21, type: !10)
!12 = !DILocation(line: 21, column: 7, scope: !7)
!13 = !DILocation(line: 23, column: 3, scope: !7)
!14 = !DILocation(line: 27, column: 3, scope: !7)
!15 = !DILocation(line: 29, column: 17, scope: !7)
!16 = !DILocation(line: 29, column: 3, scope: !7)
!17 = !DILocation(line: 30, column: 3, scope: !7)
!18 = distinct !DISubprogram(linkageName: ".omp_task_entry.", scope: !1, file: !1, line: 23, type: !19, scopeLine: 23, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!19 = !DISubroutineType(types: !2)
!20 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !21, type: !24, flags: DIFlagArtificial)
!21 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 25, type: !22, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!22 = !DISubroutineType(types: !23)
!23 = !{null, !24, !25, !28, !31, !36, !37}
!24 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!25 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !26)
!26 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !27)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !29)
!29 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !30)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !32)
!32 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !33)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DISubroutineType(types: !35)
!35 = !{null, !28, null}
!36 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!37 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !38)
!38 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !39)
!39 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !40, size: 64)
!40 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !7, file: !1, line: 23, size: 64, elements: !2)
!41 = !DILocation(line: 0, scope: !21, inlinedAt: !42)
!42 = distinct !DILocation(line: 23, column: 3, scope: !18)
!43 = !DILocalVariable(name: ".part_id.", arg: 2, scope: !21, type: !25, flags: DIFlagArtificial)
!44 = !DILocalVariable(name: ".privates.", arg: 3, scope: !21, type: !28, flags: DIFlagArtificial)
!45 = !DILocalVariable(name: ".copy_fn.", arg: 4, scope: !21, type: !31, flags: DIFlagArtificial)
!46 = !DILocalVariable(name: ".task_t.", arg: 5, scope: !21, type: !36, flags: DIFlagArtificial)
!47 = !DILocalVariable(name: "__context", arg: 6, scope: !21, type: !37, flags: DIFlagArtificial)
!48 = !DILocalVariable(arg: 1, scope: !18, type: !10, flags: DIFlagArtificial)
!49 = !DILocation(line: 0, scope: !18)
!50 = !DILocalVariable(arg: 2, scope: !18, type: !51, flags: DIFlagArtificial)
!51 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !52)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t_with_privates", file: !1, size: 320, elements: !54)
!54 = !{!55}
!55 = !DIDerivedType(tag: DW_TAG_member, scope: !53, file: !1, baseType: !56, size: 320)
!56 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t", file: !1, size: 320, elements: !57)
!57 = !{!58, !60}
!58 = !DIDerivedType(tag: DW_TAG_member, scope: !56, file: !1, baseType: !59, size: 64, offset: 192)
!59 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "kmp_cmplrdata_t", file: !1, size: 64, elements: !2)
!60 = !DIDerivedType(tag: DW_TAG_member, scope: !56, file: !1, baseType: !59, size: 64, offset: 256)
!61 = !DILocation(line: 23, column: 3, scope: !18)
!62 = !{!63, !65, !66, !67}
!63 = distinct !{!63, !64, !".omp_outlined.: %.part_id."}
!64 = distinct !{!64, !".omp_outlined."}
!65 = distinct !{!65, !64, !".omp_outlined.: %.privates."}
!66 = distinct !{!66, !64, !".omp_outlined.: %.copy_fn."}
!67 = distinct !{!67, !64, !".omp_outlined.: %__context"}
!68 = !DILocation(line: 24, column: 3, scope: !21, inlinedAt: !42)
!69 = !DILocation(line: 25, column: 5, scope: !70, inlinedAt: !42)
!70 = distinct !DILexicalBlock(scope: !21, file: !1, line: 24, column: 3)
!71 = !DILocation(line: 25, column: 6, scope: !70, inlinedAt: !42)
