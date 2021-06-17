; ModuleID = 'integration/openmp/get-thread-num-yes.c'
source_filename = "integration/openmp/get-thread-num-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [52 x i8] c";integration/openmp/get-thread-num-yes.c;main;7;1;;\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main() #0 !dbg !13 {
entry:
  %counter = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  %2 = bitcast i32* %counter to i8*, !dbg !16
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #5, !dbg !16
  call void @llvm.dbg.declare(metadata i32* %counter, metadata !15, metadata !DIExpression()), !dbg !17
  store i32 0, i32* %counter, align 4, !dbg !17, !tbaa !18
  %3 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !22
  store i8* getelementptr inbounds ([52 x i8], [52 x i8]* @1, i32 0, i32 0), i8** %3, align 8, !dbg !22, !tbaa !23
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %counter), !dbg !22
  %4 = load i32, i32* %counter, align 4, !dbg !26, !tbaa !18
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %4), !dbg !27
  %5 = bitcast i32* %counter to i8*, !dbg !28
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %5) #5, !dbg !28
  ret i32 0, !dbg !28
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %counter) #3 !dbg !29 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %counter.addr = alloca i32*, align 8
  %tid = alloca i32, align 4
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !43
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !38, metadata !DIExpression()), !dbg !44
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !43
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !39, metadata !DIExpression()), !dbg !44
  store i32* %counter, i32** %counter.addr, align 8, !tbaa !43
  call void @llvm.dbg.declare(metadata i32** %counter.addr, metadata !40, metadata !DIExpression()), !dbg !45
  %0 = load i32*, i32** %counter.addr, align 8, !dbg !46, !tbaa !43
  %1 = bitcast i32* %tid to i8*, !dbg !47
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #5, !dbg !47
  call void @llvm.dbg.declare(metadata i32* %tid, metadata !41, metadata !DIExpression()), !dbg !48
  %call = call i32 @omp_get_thread_num(), !dbg !49
  store i32 %call, i32* %tid, align 4, !dbg !48, !tbaa !18
  %2 = load i32, i32* %tid, align 4, !dbg !50, !tbaa !18
  %cmp = icmp sge i32 %2, 1, !dbg !52
  br i1 %cmp, label %if.then, label %if.end, !dbg !53

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %0, align 4, !dbg !54, !tbaa !18
  %inc = add nsw i32 %3, 1, !dbg !54
  store i32 %inc, i32* %0, align 4, !dbg !54, !tbaa !18
  br label %if.end, !dbg !56

if.end:                                           ; preds = %if.then, %entry
  %4 = bitcast i32* %tid to i8*, !dbg !57
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %4) #5, !dbg !57
  ret void, !dbg !57
}

declare !dbg !4 dso_local i32 @omp_get_thread_num() #4

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %counter) #3 !dbg !58 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %counter.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !43
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !60, metadata !DIExpression()), !dbg !63
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !43
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !61, metadata !DIExpression()), !dbg !63
  store i32* %counter, i32** %counter.addr, align 8, !tbaa !43
  call void @llvm.dbg.declare(metadata i32** %counter.addr, metadata !62, metadata !DIExpression()), !dbg !63
  %0 = load i32*, i32** %counter.addr, align 8, !dbg !64, !tbaa !43
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !64, !tbaa !43
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !64, !tbaa !43
  %3 = load i32*, i32** %counter.addr, align 8, !dbg !64, !tbaa !43
  call void @.omp_outlined._debug__(i32* %1, i32* %2, i32* %3) #5, !dbg !64
  ret void, !dbg !64
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare !callback !65 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

declare dso_local i32 @printf(i8*, ...) #4

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!9, !10, !11}
!llvm.ident = !{!12}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "integration/openmp/get-thread-num-yes.c", directory: "/home/brad/Code/OpenRace/tests/data")
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
!13 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 4, type: !6, scopeLine: 4, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !14)
!14 = !{!15}
!15 = !DILocalVariable(name: "counter", scope: !13, file: !1, line: 5, type: !8)
!16 = !DILocation(line: 5, column: 3, scope: !13)
!17 = !DILocation(line: 5, column: 7, scope: !13)
!18 = !{!19, !19, i64 0}
!19 = !{!"int", !20, i64 0}
!20 = !{!"omnipotent char", !21, i64 0}
!21 = !{!"Simple C/C++ TBAA"}
!22 = !DILocation(line: 7, column: 1, scope: !13)
!23 = !{!24, !25, i64 16}
!24 = !{!"ident_t", !19, i64 0, !19, i64 4, !19, i64 8, !19, i64 12, !25, i64 16}
!25 = !{!"any pointer", !20, i64 0}
!26 = !DILocation(line: 16, column: 18, scope: !13)
!27 = !DILocation(line: 16, column: 3, scope: !13)
!28 = !DILocation(line: 17, column: 1, scope: !13)
!29 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 8, type: !30, scopeLine: 8, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !37)
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
!40 = !DILocalVariable(name: "counter", arg: 3, scope: !29, file: !1, line: 5, type: !36)
!41 = !DILocalVariable(name: "tid", scope: !42, file: !1, line: 9, type: !8)
!42 = distinct !DILexicalBlock(scope: !29, file: !1, line: 8, column: 3)
!43 = !{!25, !25, i64 0}
!44 = !DILocation(line: 0, scope: !29)
!45 = !DILocation(line: 5, column: 7, scope: !29)
!46 = !DILocation(line: 8, column: 3, scope: !29)
!47 = !DILocation(line: 9, column: 5, scope: !42)
!48 = !DILocation(line: 9, column: 9, scope: !42)
!49 = !DILocation(line: 9, column: 15, scope: !42)
!50 = !DILocation(line: 11, column: 9, scope: !51)
!51 = distinct !DILexicalBlock(scope: !42, file: !1, line: 11, column: 9)
!52 = !DILocation(line: 11, column: 13, scope: !51)
!53 = !DILocation(line: 11, column: 9, scope: !42)
!54 = !DILocation(line: 12, column: 14, scope: !55)
!55 = distinct !DILexicalBlock(scope: !51, file: !1, line: 11, column: 19)
!56 = !DILocation(line: 13, column: 5, scope: !55)
!57 = !DILocation(line: 14, column: 3, scope: !29)
!58 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 8, type: !30, scopeLine: 8, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !59)
!59 = !{!60, !61, !62}
!60 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !58, type: !32, flags: DIFlagArtificial)
!61 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !58, type: !32, flags: DIFlagArtificial)
!62 = !DILocalVariable(name: "counter", arg: 3, scope: !58, type: !36, flags: DIFlagArtificial)
!63 = !DILocation(line: 0, scope: !58)
!64 = !DILocation(line: 8, column: 3, scope: !58)
!65 = !{!66}
!66 = !{i64 2, i64 -1, i64 -1, i1 true}
