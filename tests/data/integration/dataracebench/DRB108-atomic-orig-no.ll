; ModuleID = 'integration/dataracebench/DRB108-atomic-orig-no.c'
source_filename = "integration/dataracebench/DRB108-atomic-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [63 x i8] c";integration/dataracebench/DRB108-atomic-orig-no.c;main;53;1;;\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"a=%d\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main() #0 !dbg !7 {
entry:
  %retval = alloca i32, align 4
  %a = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32 0, i32* %retval, align 4
  %2 = bitcast i32* %a to i8*, !dbg !13
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #5, !dbg !13
  call void @llvm.dbg.declare(metadata i32* %a, metadata !12, metadata !DIExpression()), !dbg !14
  store i32 0, i32* %a, align 4, !dbg !14, !tbaa !15
  %3 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !19
  store i8* getelementptr inbounds ([63 x i8], [63 x i8]* @1, i32 0, i32 0), i8** %3, align 8, !dbg !19, !tbaa !20
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %a), !dbg !19
  %4 = load i32, i32* %a, align 4, !dbg !23, !tbaa !15
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %4), !dbg !24
  %5 = bitcast i32* %a to i8*, !dbg !25
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %5) #5, !dbg !25
  ret i32 0, !dbg !26
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %a) #3 !dbg !27 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %a.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !39
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !36, metadata !DIExpression()), !dbg !40
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !39
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !37, metadata !DIExpression()), !dbg !40
  store i32* %a, i32** %a.addr, align 8, !tbaa !39
  call void @llvm.dbg.declare(metadata i32** %a.addr, metadata !38, metadata !DIExpression()), !dbg !41
  %0 = load i32*, i32** %a.addr, align 8, !dbg !42, !tbaa !39
  %1 = atomicrmw add i32* %0, i32 1 monotonic, !dbg !43
  ret void, !dbg !46
}

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %a) #3 !dbg !47 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %a.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !39
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !49, metadata !DIExpression()), !dbg !52
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !39
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !50, metadata !DIExpression()), !dbg !52
  store i32* %a, i32** %a.addr, align 8, !tbaa !39
  call void @llvm.dbg.declare(metadata i32** %a.addr, metadata !51, metadata !DIExpression()), !dbg !52
  %0 = load i32*, i32** %a.addr, align 8, !dbg !53, !tbaa !39
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !53, !tbaa !39
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !53, !tbaa !39
  %3 = load i32*, i32** %a.addr, align 8, !dbg !53, !tbaa !39
  call void @.omp_outlined._debug__(i32* %1, i32* %2, i32* %3) #5, !dbg !53
  ret void, !dbg !53
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare !callback !54 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

declare dso_local i32 @printf(i8*, ...) #4

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "integration/dataracebench/DRB108-atomic-orig-no.c", directory: "/home/brad/Code/OpenRace/tests/data")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.1 "}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 50, type: !8, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !11)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !{!12}
!12 = !DILocalVariable(name: "a", scope: !7, file: !1, line: 52, type: !10)
!13 = !DILocation(line: 52, column: 3, scope: !7)
!14 = !DILocation(line: 52, column: 7, scope: !7)
!15 = !{!16, !16, i64 0}
!16 = !{!"int", !17, i64 0}
!17 = !{!"omnipotent char", !18, i64 0}
!18 = !{!"Simple C/C++ TBAA"}
!19 = !DILocation(line: 53, column: 1, scope: !7)
!20 = !{!21, !22, i64 16}
!21 = !{!"ident_t", !16, i64 0, !16, i64 4, !16, i64 8, !16, i64 12, !22, i64 16}
!22 = !{!"any pointer", !17, i64 0}
!23 = !DILocation(line: 58, column: 20, scope: !7)
!24 = !DILocation(line: 58, column: 3, scope: !7)
!25 = !DILocation(line: 60, column: 1, scope: !7)
!26 = !DILocation(line: 59, column: 3, scope: !7)
!27 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 54, type: !28, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !35)
!28 = !DISubroutineType(types: !29)
!29 = !{null, !30, !30, !34}
!30 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !31)
!31 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !32)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!34 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !10, size: 64)
!35 = !{!36, !37, !38}
!36 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !27, type: !30, flags: DIFlagArtificial)
!37 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !27, type: !30, flags: DIFlagArtificial)
!38 = !DILocalVariable(name: "a", arg: 3, scope: !27, file: !1, line: 52, type: !34)
!39 = !{!22, !22, i64 0}
!40 = !DILocation(line: 0, scope: !27)
!41 = !DILocation(line: 52, column: 7, scope: !27)
!42 = !DILocation(line: 54, column: 3, scope: !27)
!43 = !DILocation(line: 56, column: 5, scope: !44)
!44 = distinct !DILexicalBlock(scope: !45, file: !1, line: 55, column: 1)
!45 = distinct !DILexicalBlock(scope: !27, file: !1, line: 54, column: 3)
!46 = !DILocation(line: 57, column: 3, scope: !27)
!47 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 54, type: !28, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !48)
!48 = !{!49, !50, !51}
!49 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !47, type: !30, flags: DIFlagArtificial)
!50 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !47, type: !30, flags: DIFlagArtificial)
!51 = !DILocalVariable(name: "a", arg: 3, scope: !47, type: !34, flags: DIFlagArtificial)
!52 = !DILocation(line: 0, scope: !47)
!53 = !DILocation(line: 54, column: 3, scope: !47)
!54 = !{!55}
!55 = !{i64 2, i64 -1, i64 -1, i1 true}
