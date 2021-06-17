; ModuleID = 'integration/openmp/get-thread-num-loop-yes.c'
source_filename = "integration/openmp/get-thread-num-loop-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [57 x i8] c";integration/openmp/get-thread-num-loop-yes.c;main;7;1;;\00", align 1
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
  store i8* getelementptr inbounds ([57 x i8], [57 x i8]* @1, i32 0, i32 0), i8** %3, align 8, !dbg !22, !tbaa !23
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
  %i = alloca i32, align 4
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !47
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !38, metadata !DIExpression()), !dbg !48
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !47
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !39, metadata !DIExpression()), !dbg !48
  store i32* %counter, i32** %counter.addr, align 8, !tbaa !47
  call void @llvm.dbg.declare(metadata i32** %counter.addr, metadata !40, metadata !DIExpression()), !dbg !49
  %0 = load i32*, i32** %counter.addr, align 8, !dbg !50, !tbaa !47
  %1 = bitcast i32* %tid to i8*, !dbg !51
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #5, !dbg !51
  call void @llvm.dbg.declare(metadata i32* %tid, metadata !41, metadata !DIExpression()), !dbg !52
  %call = call i32 @omp_get_thread_num(), !dbg !53
  store i32 %call, i32* %tid, align 4, !dbg !52, !tbaa !18
  %2 = load i32, i32* %tid, align 4, !dbg !54, !tbaa !18
  %cmp = icmp sge i32 %2, 1, !dbg !55
  br i1 %cmp, label %if.then, label %if.end, !dbg !56

if.then:                                          ; preds = %entry
  %3 = bitcast i32* %i to i8*, !dbg !57
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #5, !dbg !57
  call void @llvm.dbg.declare(metadata i32* %i, metadata !43, metadata !DIExpression()), !dbg !58
  store i32 0, i32* %i, align 4, !dbg !58, !tbaa !18
  br label %for.cond, !dbg !57

for.cond:                                         ; preds = %for.inc, %if.then
  %4 = load i32, i32* %i, align 4, !dbg !59, !tbaa !18
  %5 = load i32, i32* %tid, align 4, !dbg !61, !tbaa !18
  %cmp1 = icmp slt i32 %4, %5, !dbg !62
  br i1 %cmp1, label %for.body, label %for.cond.cleanup, !dbg !63

for.cond.cleanup:                                 ; preds = %for.cond
  %6 = bitcast i32* %i to i8*, !dbg !64
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %6) #5, !dbg !64
  br label %for.end

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %0, align 4, !dbg !65, !tbaa !18
  %inc = add nsw i32 %7, 1, !dbg !65
  store i32 %inc, i32* %0, align 4, !dbg !65, !tbaa !18
  br label %for.inc, !dbg !67

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !68, !tbaa !18
  %inc2 = add nsw i32 %8, 1, !dbg !68
  store i32 %inc2, i32* %i, align 4, !dbg !68, !tbaa !18
  br label %for.cond, !dbg !64, !llvm.loop !69

for.end:                                          ; preds = %for.cond.cleanup
  br label %if.end, !dbg !71

if.end:                                           ; preds = %for.end, %entry
  %9 = bitcast i32* %tid to i8*, !dbg !72
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %9) #5, !dbg !72
  ret void, !dbg !72
}

declare !dbg !4 dso_local i32 @omp_get_thread_num() #4

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %counter) #3 !dbg !73 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %counter.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !47
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !75, metadata !DIExpression()), !dbg !78
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !47
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !76, metadata !DIExpression()), !dbg !78
  store i32* %counter, i32** %counter.addr, align 8, !tbaa !47
  call void @llvm.dbg.declare(metadata i32** %counter.addr, metadata !77, metadata !DIExpression()), !dbg !78
  %0 = load i32*, i32** %counter.addr, align 8, !dbg !79, !tbaa !47
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !79, !tbaa !47
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !79, !tbaa !47
  %3 = load i32*, i32** %counter.addr, align 8, !dbg !79, !tbaa !47
  call void @.omp_outlined._debug__(i32* %1, i32* %2, i32* %3) #5, !dbg !79
  ret void, !dbg !79
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare !callback !80 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

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
!1 = !DIFile(filename: "integration/openmp/get-thread-num-loop-yes.c", directory: "/home/brad/Code/OpenRace/tests/data")
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
!26 = !DILocation(line: 18, column: 18, scope: !13)
!27 = !DILocation(line: 18, column: 3, scope: !13)
!28 = !DILocation(line: 19, column: 1, scope: !13)
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
!43 = !DILocalVariable(name: "i", scope: !44, file: !1, line: 12, type: !8)
!44 = distinct !DILexicalBlock(scope: !45, file: !1, line: 12, column: 7)
!45 = distinct !DILexicalBlock(scope: !46, file: !1, line: 11, column: 19)
!46 = distinct !DILexicalBlock(scope: !42, file: !1, line: 11, column: 9)
!47 = !{!25, !25, i64 0}
!48 = !DILocation(line: 0, scope: !29)
!49 = !DILocation(line: 5, column: 7, scope: !29)
!50 = !DILocation(line: 8, column: 3, scope: !29)
!51 = !DILocation(line: 9, column: 5, scope: !42)
!52 = !DILocation(line: 9, column: 9, scope: !42)
!53 = !DILocation(line: 9, column: 15, scope: !42)
!54 = !DILocation(line: 11, column: 9, scope: !46)
!55 = !DILocation(line: 11, column: 13, scope: !46)
!56 = !DILocation(line: 11, column: 9, scope: !42)
!57 = !DILocation(line: 12, column: 12, scope: !44)
!58 = !DILocation(line: 12, column: 16, scope: !44)
!59 = !DILocation(line: 12, column: 23, scope: !60)
!60 = distinct !DILexicalBlock(scope: !44, file: !1, line: 12, column: 7)
!61 = !DILocation(line: 12, column: 27, scope: !60)
!62 = !DILocation(line: 12, column: 25, scope: !60)
!63 = !DILocation(line: 12, column: 7, scope: !44)
!64 = !DILocation(line: 12, column: 7, scope: !60)
!65 = !DILocation(line: 13, column: 16, scope: !66)
!66 = distinct !DILexicalBlock(scope: !60, file: !1, line: 12, column: 37)
!67 = !DILocation(line: 14, column: 7, scope: !66)
!68 = !DILocation(line: 12, column: 33, scope: !60)
!69 = distinct !{!69, !63, !70}
!70 = !DILocation(line: 14, column: 7, scope: !44)
!71 = !DILocation(line: 15, column: 5, scope: !45)
!72 = !DILocation(line: 16, column: 3, scope: !29)
!73 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 8, type: !30, scopeLine: 8, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !74)
!74 = !{!75, !76, !77}
!75 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !73, type: !32, flags: DIFlagArtificial)
!76 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !73, type: !32, flags: DIFlagArtificial)
!77 = !DILocalVariable(name: "counter", arg: 3, scope: !73, type: !36, flags: DIFlagArtificial)
!78 = !DILocation(line: 0, scope: !73)
!79 = !DILocation(line: 8, column: 3, scope: !73)
!80 = !{!81}
!81 = !{i64 2, i64 -1, i64 -1, i1 true}
