; ModuleID = 'integration/dataracebench/DRB051-getthreadnum-orig-no.c'
source_filename = "integration/dataracebench/DRB051-getthreadnum-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [69 x i8] c";integration/dataracebench/DRB051-getthreadnum-orig-no.c;main;56;1;;\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"numThreads=%d\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main() #0 !dbg !14 {
entry:
  %retval = alloca i32, align 4
  %numThreads = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32 0, i32* %retval, align 4
  %2 = bitcast i32* %numThreads to i8*, !dbg !17
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #5, !dbg !17
  call void @llvm.dbg.declare(metadata i32* %numThreads, metadata !16, metadata !DIExpression()), !dbg !18
  store i32 0, i32* %numThreads, align 4, !dbg !18, !tbaa !19
  %3 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !23
  store i8* getelementptr inbounds ([69 x i8], [69 x i8]* @1, i32 0, i32 0), i8** %3, align 8, !dbg !23, !tbaa !24
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %numThreads), !dbg !23
  %4 = load i32, i32* %numThreads, align 4, !dbg !27, !tbaa !19
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %4), !dbg !28
  %5 = bitcast i32* %numThreads to i8*, !dbg !29
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %5) #5, !dbg !29
  ret i32 0, !dbg !30
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %numThreads) #3 !dbg !31 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %numThreads.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !43
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !40, metadata !DIExpression()), !dbg !44
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !43
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !41, metadata !DIExpression()), !dbg !44
  store i32* %numThreads, i32** %numThreads.addr, align 8, !tbaa !43
  call void @llvm.dbg.declare(metadata i32** %numThreads.addr, metadata !42, metadata !DIExpression()), !dbg !45
  %0 = load i32*, i32** %numThreads.addr, align 8, !dbg !46, !tbaa !43
  %call = call i32 @omp_get_thread_num(), !dbg !47
  %cmp = icmp eq i32 %call, 0, !dbg !50
  br i1 %cmp, label %if.then, label %if.end, !dbg !51

if.then:                                          ; preds = %entry
  %call1 = call i32 @omp_get_num_threads(), !dbg !52
  store i32 %call1, i32* %0, align 4, !dbg !54, !tbaa !19
  br label %if.end, !dbg !55

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !56
}

declare !dbg !4 dso_local i32 @omp_get_thread_num() #4

declare !dbg !9 dso_local i32 @omp_get_num_threads() #4

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %numThreads) #3 !dbg !57 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %numThreads.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !43
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !59, metadata !DIExpression()), !dbg !62
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !43
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !60, metadata !DIExpression()), !dbg !62
  store i32* %numThreads, i32** %numThreads.addr, align 8, !tbaa !43
  call void @llvm.dbg.declare(metadata i32** %numThreads.addr, metadata !61, metadata !DIExpression()), !dbg !62
  %0 = load i32*, i32** %numThreads.addr, align 8, !dbg !63, !tbaa !43
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !63, !tbaa !43
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !63, !tbaa !43
  %3 = load i32*, i32** %numThreads.addr, align 8, !dbg !63, !tbaa !43
  call void @.omp_outlined._debug__(i32* %1, i32* %2, i32* %3) #5, !dbg !63
  ret void, !dbg !63
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare !callback !64 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

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
!llvm.module.flags = !{!10, !11, !12}
!llvm.ident = !{!13}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "integration/dataracebench/DRB051-getthreadnum-orig-no.c", directory: "/home/brad/Code/OpenRace/tests/data")
!2 = !{}
!3 = !{!4, !9}
!4 = !DISubprogram(name: "omp_get_thread_num", scope: !5, file: !5, line: 68, type: !6, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!5 = !DIFile(filename: "/usr/include/omp.h", directory: "")
!6 = !DISubroutineType(types: !7)
!7 = !{!8}
!8 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!9 = !DISubprogram(name: "omp_get_num_threads", scope: !5, file: !5, line: 64, type: !6, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!10 = !{i32 7, !"Dwarf Version", i32 4}
!11 = !{i32 2, !"Debug Info Version", i32 3}
!12 = !{i32 1, !"wchar_size", i32 4}
!13 = !{!"clang version 10.0.1 "}
!14 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 53, type: !6, scopeLine: 54, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !15)
!15 = !{!16}
!16 = !DILocalVariable(name: "numThreads", scope: !14, file: !1, line: 55, type: !8)
!17 = !DILocation(line: 55, column: 3, scope: !14)
!18 = !DILocation(line: 55, column: 7, scope: !14)
!19 = !{!20, !20, i64 0}
!20 = !{!"int", !21, i64 0}
!21 = !{!"omnipotent char", !22, i64 0}
!22 = !{!"Simple C/C++ TBAA"}
!23 = !DILocation(line: 56, column: 1, scope: !14)
!24 = !{!25, !26, i64 16}
!25 = !{!"ident_t", !20, i64 0, !20, i64 4, !20, i64 8, !20, i64 12, !26, i64 16}
!26 = !{!"any pointer", !21, i64 0}
!27 = !DILocation(line: 62, column: 30, scope: !14)
!28 = !DILocation(line: 62, column: 3, scope: !14)
!29 = !DILocation(line: 64, column: 1, scope: !14)
!30 = !DILocation(line: 63, column: 3, scope: !14)
!31 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 57, type: !32, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !39)
!32 = !DISubroutineType(types: !33)
!33 = !{null, !34, !34, !38}
!34 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !35)
!35 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !36)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!38 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !8, size: 64)
!39 = !{!40, !41, !42}
!40 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !31, type: !34, flags: DIFlagArtificial)
!41 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !31, type: !34, flags: DIFlagArtificial)
!42 = !DILocalVariable(name: "numThreads", arg: 3, scope: !31, file: !1, line: 55, type: !38)
!43 = !{!26, !26, i64 0}
!44 = !DILocation(line: 0, scope: !31)
!45 = !DILocation(line: 55, column: 7, scope: !31)
!46 = !DILocation(line: 57, column: 3, scope: !31)
!47 = !DILocation(line: 58, column: 10, scope: !48)
!48 = distinct !DILexicalBlock(scope: !49, file: !1, line: 58, column: 10)
!49 = distinct !DILexicalBlock(scope: !31, file: !1, line: 57, column: 3)
!50 = !DILocation(line: 58, column: 30, scope: !48)
!51 = !DILocation(line: 58, column: 10, scope: !49)
!52 = !DILocation(line: 59, column: 20, scope: !53)
!53 = distinct !DILexicalBlock(scope: !48, file: !1, line: 58, column: 36)
!54 = !DILocation(line: 59, column: 18, scope: !53)
!55 = !DILocation(line: 60, column: 5, scope: !53)
!56 = !DILocation(line: 61, column: 3, scope: !31)
!57 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 57, type: !32, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !58)
!58 = !{!59, !60, !61}
!59 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !57, type: !34, flags: DIFlagArtificial)
!60 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !57, type: !34, flags: DIFlagArtificial)
!61 = !DILocalVariable(name: "numThreads", arg: 3, scope: !57, type: !38, flags: DIFlagArtificial)
!62 = !DILocation(line: 0, scope: !57)
!63 = !DILocation(line: 57, column: 3, scope: !57)
!64 = !{!65}
!65 = !{i64 2, i64 -1, i64 -1, i1 true}
