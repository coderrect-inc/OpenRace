; ModuleID = 'integration/openmp/get-thread-num-nested-branch-no.c'
source_filename = "integration/openmp/get-thread-num-nested-branch-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [65 x i8] c";integration/openmp/get-thread-num-nested-branch-no.c;main;7;1;;\00", align 1
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
  store i8* getelementptr inbounds ([65 x i8], [65 x i8]* @1, i32 0, i32 0), i8** %3, align 8, !dbg !22, !tbaa !23
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
  %local = alloca i32, align 4
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !44
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !38, metadata !DIExpression()), !dbg !45
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !44
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !39, metadata !DIExpression()), !dbg !45
  store i32* %counter, i32** %counter.addr, align 8, !tbaa !44
  call void @llvm.dbg.declare(metadata i32** %counter.addr, metadata !40, metadata !DIExpression()), !dbg !46
  %0 = load i32*, i32** %counter.addr, align 8, !dbg !47, !tbaa !44
  %1 = bitcast i32* %tid to i8*, !dbg !48
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #5, !dbg !48
  call void @llvm.dbg.declare(metadata i32* %tid, metadata !41, metadata !DIExpression()), !dbg !49
  %call = call i32 @omp_get_thread_num(), !dbg !50
  store i32 %call, i32* %tid, align 4, !dbg !49, !tbaa !18
  %2 = bitcast i32* %local to i8*, !dbg !51
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #5, !dbg !51
  call void @llvm.dbg.declare(metadata i32* %local, metadata !43, metadata !DIExpression()), !dbg !52
  store i32 0, i32* %local, align 4, !dbg !52, !tbaa !18
  %3 = load i32, i32* %tid, align 4, !dbg !53, !tbaa !18
  %cmp = icmp eq i32 %3, 1, !dbg !55
  br i1 %cmp, label %if.then, label %if.end3, !dbg !56

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %tid, align 4, !dbg !57, !tbaa !18
  %cmp1 = icmp sge i32 %4, 3, !dbg !60
  br i1 %cmp1, label %if.then2, label %if.else, !dbg !61

if.then2:                                         ; preds = %if.then
  %5 = load i32, i32* %tid, align 4, !dbg !62, !tbaa !18
  store i32 %5, i32* %0, align 4, !dbg !64, !tbaa !18
  br label %if.end, !dbg !65

if.else:                                          ; preds = %if.then
  %6 = load i32, i32* %local, align 4, !dbg !66, !tbaa !18
  %inc = add nsw i32 %6, 1, !dbg !66
  store i32 %inc, i32* %local, align 4, !dbg !66, !tbaa !18
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  br label %if.end3, !dbg !68

if.end3:                                          ; preds = %if.end, %entry
  %7 = bitcast i32* %local to i8*, !dbg !69
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %7) #5, !dbg !69
  %8 = bitcast i32* %tid to i8*, !dbg !69
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %8) #5, !dbg !69
  ret void, !dbg !69
}

declare !dbg !4 dso_local i32 @omp_get_thread_num() #4

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %counter) #3 !dbg !70 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %counter.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !44
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !72, metadata !DIExpression()), !dbg !75
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !44
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !73, metadata !DIExpression()), !dbg !75
  store i32* %counter, i32** %counter.addr, align 8, !tbaa !44
  call void @llvm.dbg.declare(metadata i32** %counter.addr, metadata !74, metadata !DIExpression()), !dbg !75
  %0 = load i32*, i32** %counter.addr, align 8, !dbg !76, !tbaa !44
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !76, !tbaa !44
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !76, !tbaa !44
  %3 = load i32*, i32** %counter.addr, align 8, !dbg !76, !tbaa !44
  call void @.omp_outlined._debug__(i32* %1, i32* %2, i32* %3) #5, !dbg !76
  ret void, !dbg !76
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare !callback !77 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

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
!1 = !DIFile(filename: "integration/openmp/get-thread-num-nested-branch-no.c", directory: "/home/brad/Code/OpenRace/tests/data")
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
!26 = !DILocation(line: 22, column: 18, scope: !13)
!27 = !DILocation(line: 22, column: 3, scope: !13)
!28 = !DILocation(line: 23, column: 1, scope: !13)
!29 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 8, type: !30, scopeLine: 8, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !37)
!30 = !DISubroutineType(types: !31)
!31 = !{null, !32, !32, !36}
!32 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !33)
!33 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !34)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!36 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !8, size: 64)
!37 = !{!38, !39, !40, !41, !43}
!38 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !29, type: !32, flags: DIFlagArtificial)
!39 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !29, type: !32, flags: DIFlagArtificial)
!40 = !DILocalVariable(name: "counter", arg: 3, scope: !29, file: !1, line: 5, type: !36)
!41 = !DILocalVariable(name: "tid", scope: !42, file: !1, line: 9, type: !8)
!42 = distinct !DILexicalBlock(scope: !29, file: !1, line: 8, column: 3)
!43 = !DILocalVariable(name: "local", scope: !42, file: !1, line: 11, type: !8)
!44 = !{!25, !25, i64 0}
!45 = !DILocation(line: 0, scope: !29)
!46 = !DILocation(line: 5, column: 7, scope: !29)
!47 = !DILocation(line: 8, column: 3, scope: !29)
!48 = !DILocation(line: 9, column: 5, scope: !42)
!49 = !DILocation(line: 9, column: 9, scope: !42)
!50 = !DILocation(line: 9, column: 15, scope: !42)
!51 = !DILocation(line: 11, column: 5, scope: !42)
!52 = !DILocation(line: 11, column: 9, scope: !42)
!53 = !DILocation(line: 13, column: 9, scope: !54)
!54 = distinct !DILexicalBlock(scope: !42, file: !1, line: 13, column: 9)
!55 = !DILocation(line: 13, column: 13, scope: !54)
!56 = !DILocation(line: 13, column: 9, scope: !42)
!57 = !DILocation(line: 14, column: 11, scope: !58)
!58 = distinct !DILexicalBlock(scope: !59, file: !1, line: 14, column: 11)
!59 = distinct !DILexicalBlock(scope: !54, file: !1, line: 13, column: 19)
!60 = !DILocation(line: 14, column: 15, scope: !58)
!61 = !DILocation(line: 14, column: 11, scope: !59)
!62 = !DILocation(line: 15, column: 19, scope: !63)
!63 = distinct !DILexicalBlock(scope: !58, file: !1, line: 14, column: 21)
!64 = !DILocation(line: 15, column: 17, scope: !63)
!65 = !DILocation(line: 16, column: 7, scope: !63)
!66 = !DILocation(line: 17, column: 14, scope: !67)
!67 = distinct !DILexicalBlock(scope: !58, file: !1, line: 16, column: 14)
!68 = !DILocation(line: 19, column: 5, scope: !59)
!69 = !DILocation(line: 20, column: 3, scope: !29)
!70 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 8, type: !30, scopeLine: 8, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !71)
!71 = !{!72, !73, !74}
!72 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !70, type: !32, flags: DIFlagArtificial)
!73 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !70, type: !32, flags: DIFlagArtificial)
!74 = !DILocalVariable(name: "counter", arg: 3, scope: !70, type: !36, flags: DIFlagArtificial)
!75 = !DILocation(line: 0, scope: !70)
!76 = !DILocation(line: 8, column: 3, scope: !70)
!77 = !{!78}
!78 = !{i64 2, i64 -1, i64 -1, i1 true}
