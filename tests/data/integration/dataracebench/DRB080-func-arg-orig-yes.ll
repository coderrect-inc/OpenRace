; ModuleID = 'integration/dataracebench/DRB080-func-arg-orig-yes.c'
source_filename = "integration/dataracebench/DRB080-func-arg-orig-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [66 x i8] c";integration/dataracebench/DRB080-func-arg-orig-yes.c;main;65;3;;\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"i=%d\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @f1(i32* %q) #0 !dbg !7 {
entry:
  %q.addr = alloca i32*, align 8
  store i32* %q, i32** %q.addr, align 8, !tbaa !14
  call void @llvm.dbg.declare(metadata i32** %q.addr, metadata !13, metadata !DIExpression()), !dbg !18
  %0 = load i32*, i32** %q.addr, align 8, !dbg !19, !tbaa !14
  %1 = load i32, i32* %0, align 4, !dbg !20, !tbaa !21
  %add = add nsw i32 %1, 1, !dbg !20
  store i32 %add, i32* %0, align 4, !dbg !20, !tbaa !21
  ret void, !dbg !23
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @main() #0 !dbg !24 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32 0, i32* %retval, align 4
  %2 = bitcast i32* %i to i8*, !dbg !29
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #5, !dbg !29
  call void @llvm.dbg.declare(metadata i32* %i, metadata !28, metadata !DIExpression()), !dbg !30
  store i32 0, i32* %i, align 4, !dbg !30, !tbaa !21
  %3 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !31
  store i8* getelementptr inbounds ([66 x i8], [66 x i8]* @1, i32 0, i32 0), i8** %3, align 8, !dbg !31, !tbaa !32
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %i), !dbg !31
  %4 = load i32, i32* %i, align 4, !dbg !34, !tbaa !21
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %4), !dbg !35
  %5 = bitcast i32* %i to i8*, !dbg !36
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %5) #5, !dbg !36
  ret i32 0, !dbg !37
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %i) #3 !dbg !38 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %i.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !14
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !47, metadata !DIExpression()), !dbg !50
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !14
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !48, metadata !DIExpression()), !dbg !50
  store i32* %i, i32** %i.addr, align 8, !tbaa !14
  call void @llvm.dbg.declare(metadata i32** %i.addr, metadata !49, metadata !DIExpression()), !dbg !51
  %0 = load i32*, i32** %i.addr, align 8, !dbg !52, !tbaa !14
  call void @f1(i32* %0), !dbg !53
  ret void, !dbg !55
}

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %i) #3 !dbg !56 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %i.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !14
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !58, metadata !DIExpression()), !dbg !61
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !14
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !59, metadata !DIExpression()), !dbg !61
  store i32* %i, i32** %i.addr, align 8, !tbaa !14
  call void @llvm.dbg.declare(metadata i32** %i.addr, metadata !60, metadata !DIExpression()), !dbg !61
  %0 = load i32*, i32** %i.addr, align 8, !dbg !62, !tbaa !14
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !62, !tbaa !14
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !62, !tbaa !14
  %3 = load i32*, i32** %i.addr, align 8, !dbg !62, !tbaa !14
  call void @.omp_outlined._debug__(i32* %1, i32* %2, i32* %3) #5, !dbg !62
  ret void, !dbg !62
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare !callback !63 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

declare dso_local i32 @printf(i8*, ...) #4

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "integration/dataracebench/DRB080-func-arg-orig-yes.c", directory: "/home/brad/Code/OpenRace/tests/data")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.1 "}
!7 = distinct !DISubprogram(name: "f1", scope: !1, file: !1, line: 57, type: !8, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !12)
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!12 = !{!13}
!13 = !DILocalVariable(name: "q", arg: 1, scope: !7, file: !1, line: 57, type: !10)
!14 = !{!15, !15, i64 0}
!15 = !{!"any pointer", !16, i64 0}
!16 = !{!"omnipotent char", !17, i64 0}
!17 = !{!"Simple C/C++ TBAA"}
!18 = !DILocation(line: 57, column: 14, scope: !7)
!19 = !DILocation(line: 59, column: 4, scope: !7)
!20 = !DILocation(line: 59, column: 6, scope: !7)
!21 = !{!22, !22, i64 0}
!22 = !{!"int", !16, i64 0}
!23 = !DILocation(line: 60, column: 1, scope: !7)
!24 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 62, type: !25, scopeLine: 63, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !27)
!25 = !DISubroutineType(types: !26)
!26 = !{!11}
!27 = !{!28}
!28 = !DILocalVariable(name: "i", scope: !24, file: !1, line: 64, type: !11)
!29 = !DILocation(line: 64, column: 3, scope: !24)
!30 = !DILocation(line: 64, column: 7, scope: !24)
!31 = !DILocation(line: 65, column: 3, scope: !24)
!32 = !{!33, !15, i64 16}
!33 = !{!"ident_t", !22, i64 0, !22, i64 4, !22, i64 8, !22, i64 12, !15, i64 16}
!34 = !DILocation(line: 69, column: 20, scope: !24)
!35 = !DILocation(line: 69, column: 3, scope: !24)
!36 = !DILocation(line: 71, column: 1, scope: !24)
!37 = !DILocation(line: 70, column: 3, scope: !24)
!38 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 66, type: !39, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !46)
!39 = !DISubroutineType(types: !40)
!40 = !{null, !41, !41, !45}
!41 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!42 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !43)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!45 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !11, size: 64)
!46 = !{!47, !48, !49}
!47 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !38, type: !41, flags: DIFlagArtificial)
!48 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !38, type: !41, flags: DIFlagArtificial)
!49 = !DILocalVariable(name: "i", arg: 3, scope: !38, file: !1, line: 64, type: !45)
!50 = !DILocation(line: 0, scope: !38)
!51 = !DILocation(line: 64, column: 7, scope: !38)
!52 = !DILocation(line: 66, column: 3, scope: !38)
!53 = !DILocation(line: 67, column: 6, scope: !54)
!54 = distinct !DILexicalBlock(scope: !38, file: !1, line: 66, column: 3)
!55 = !DILocation(line: 68, column: 3, scope: !38)
!56 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 66, type: !39, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !57)
!57 = !{!58, !59, !60}
!58 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !56, type: !41, flags: DIFlagArtificial)
!59 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !56, type: !41, flags: DIFlagArtificial)
!60 = !DILocalVariable(name: "i", arg: 3, scope: !56, type: !45, flags: DIFlagArtificial)
!61 = !DILocation(line: 0, scope: !56)
!62 = !DILocation(line: 66, column: 3, scope: !56)
!63 = !{!64}
!64 = !{i64 2, i64 -1, i64 -1, i1 true}
