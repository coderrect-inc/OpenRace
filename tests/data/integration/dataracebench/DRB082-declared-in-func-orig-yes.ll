; ModuleID = 'integration/dataracebench/DRB082-declared-in-func-orig-yes.c'
source_filename = "integration/dataracebench/DRB082-declared-in-func-orig-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@foo.q = internal global i32 0, align 4, !dbg !0
@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [74 x i8] c";integration/dataracebench/DRB082-declared-in-func-orig-yes.c;main;62;3;;\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @foo() #0 !dbg !2 {
entry:
  %0 = load i32, i32* @foo.q, align 4, !dbg !14, !tbaa !15
  %add = add nsw i32 %0, 1, !dbg !14
  store i32 %add, i32* @foo.q, align 4, !dbg !14, !tbaa !15
  ret void, !dbg !19
}

; Function Attrs: nounwind uwtable
define dso_local i32 @main() #0 !dbg !20 {
entry:
  %retval = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32 0, i32* %retval, align 4
  %2 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !23
  store i8* getelementptr inbounds ([74 x i8], [74 x i8]* @1, i32 0, i32 0), i8** %2, align 8, !dbg !23, !tbaa !24
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 0, void (i32*, i32*, ...)* bitcast (void (i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*)), !dbg !23
  ret i32 0, !dbg !27
}

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid.) #1 !dbg !28 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !36, metadata !DIExpression()), !dbg !39
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !37, metadata !DIExpression()), !dbg !39
  call void @foo(), !dbg !40
  ret void, !dbg !42
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid.) #1 !dbg !43 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !45, metadata !DIExpression()), !dbg !47
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !46, metadata !DIExpression()), !dbg !47
  %0 = load i32*, i32** %.global_tid..addr, align 8, !dbg !48, !tbaa !38
  %1 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !48, !tbaa !38
  call void @.omp_outlined._debug__(i32* %0, i32* %1) #4, !dbg !48
  ret void, !dbg !48
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare !callback !49 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!6}
!llvm.module.flags = !{!10, !11, !12}
!llvm.ident = !{!13}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "q", scope: !2, file: !3, line: 56, type: !9, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: "foo", scope: !3, file: !3, line: 54, type: !4, scopeLine: 55, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !7)
!3 = !DIFile(filename: "integration/dataracebench/DRB082-declared-in-func-orig-yes.c", directory: "/home/brad/Code/OpenRace/tests/data")
!4 = !DISubroutineType(types: !5)
!5 = !{null}
!6 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !7, globals: !8, splitDebugInlining: false, nameTableKind: None)
!7 = !{}
!8 = !{!0}
!9 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!10 = !{i32 7, !"Dwarf Version", i32 4}
!11 = !{i32 2, !"Debug Info Version", i32 3}
!12 = !{i32 1, !"wchar_size", i32 4}
!13 = !{!"clang version 10.0.1 "}
!14 = !DILocation(line: 57, column: 5, scope: !2)
!15 = !{!16, !16, i64 0}
!16 = !{!"int", !17, i64 0}
!17 = !{!"omnipotent char", !18, i64 0}
!18 = !{!"Simple C/C++ TBAA"}
!19 = !DILocation(line: 58, column: 1, scope: !2)
!20 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 60, type: !21, scopeLine: 61, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !7)
!21 = !DISubroutineType(types: !22)
!22 = !{!9}
!23 = !DILocation(line: 62, column: 3, scope: !20)
!24 = !{!25, !26, i64 16}
!25 = !{!"ident_t", !16, i64 0, !16, i64 4, !16, i64 8, !16, i64 12, !26, i64 16}
!26 = !{!"any pointer", !17, i64 0}
!27 = !DILocation(line: 66, column: 3, scope: !20)
!28 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !3, file: !3, line: 63, type: !29, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !35)
!29 = !DISubroutineType(types: !30)
!30 = !{null, !31, !31}
!31 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !32)
!32 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !33)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!35 = !{!36, !37}
!36 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !28, type: !31, flags: DIFlagArtificial)
!37 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !28, type: !31, flags: DIFlagArtificial)
!38 = !{!26, !26, i64 0}
!39 = !DILocation(line: 0, scope: !28)
!40 = !DILocation(line: 64, column: 6, scope: !41)
!41 = distinct !DILexicalBlock(scope: !28, file: !3, line: 63, column: 3)
!42 = !DILocation(line: 65, column: 3, scope: !28)
!43 = distinct !DISubprogram(name: ".omp_outlined.", scope: !3, file: !3, line: 63, type: !29, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !6, retainedNodes: !44)
!44 = !{!45, !46}
!45 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !43, type: !31, flags: DIFlagArtificial)
!46 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !43, type: !31, flags: DIFlagArtificial)
!47 = !DILocation(line: 0, scope: !43)
!48 = !DILocation(line: 63, column: 3, scope: !43)
!49 = !{!50}
!50 = !{i64 2, i64 -1, i64 -1, i1 true}
