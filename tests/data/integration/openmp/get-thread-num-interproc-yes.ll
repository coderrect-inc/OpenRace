; ModuleID = 'integration/openmp/get-thread-num-interproc-yes.c'
source_filename = "integration/openmp/get-thread-num-interproc-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [62 x i8] c";integration/openmp/get-thread-num-interproc-yes.c;main;9;1;;\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @write_val(i32* %dest, i32 %val) #0 !dbg !13 {
entry:
  %dest.addr = alloca i32*, align 8
  %val.addr = alloca i32, align 4
  store i32* %dest, i32** %dest.addr, align 8, !tbaa !20
  call void @llvm.dbg.declare(metadata i32** %dest.addr, metadata !18, metadata !DIExpression()), !dbg !24
  store i32 %val, i32* %val.addr, align 4, !tbaa !25
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !19, metadata !DIExpression()), !dbg !27
  %0 = load i32, i32* %val.addr, align 4, !dbg !28, !tbaa !25
  %1 = load i32*, i32** %dest.addr, align 8, !dbg !29, !tbaa !20
  store i32 %0, i32* %1, align 4, !dbg !30, !tbaa !25
  ret void, !dbg !31
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @main() #0 !dbg !32 {
entry:
  %counter = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  %2 = bitcast i32* %counter to i8*, !dbg !35
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #5, !dbg !35
  call void @llvm.dbg.declare(metadata i32* %counter, metadata !34, metadata !DIExpression()), !dbg !36
  store i32 0, i32* %counter, align 4, !dbg !36, !tbaa !25
  %3 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !37
  store i8* getelementptr inbounds ([62 x i8], [62 x i8]* @1, i32 0, i32 0), i8** %3, align 8, !dbg !37, !tbaa !38
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %counter), !dbg !37
  %4 = load i32, i32* %counter, align 4, !dbg !40, !tbaa !25
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %4), !dbg !41
  %5 = bitcast i32* %counter to i8*, !dbg !42
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %5) #5, !dbg !42
  ret i32 0, !dbg !42
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %counter) #3 !dbg !43 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %counter.addr = alloca i32*, align 8
  %tid = alloca i32, align 4
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !20
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !52, metadata !DIExpression()), !dbg !57
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !20
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !53, metadata !DIExpression()), !dbg !57
  store i32* %counter, i32** %counter.addr, align 8, !tbaa !20
  call void @llvm.dbg.declare(metadata i32** %counter.addr, metadata !54, metadata !DIExpression()), !dbg !58
  %0 = load i32*, i32** %counter.addr, align 8, !dbg !59, !tbaa !20
  %1 = bitcast i32* %tid to i8*, !dbg !60
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #5, !dbg !60
  call void @llvm.dbg.declare(metadata i32* %tid, metadata !55, metadata !DIExpression()), !dbg !61
  %call = call i32 @omp_get_thread_num(), !dbg !62
  store i32 %call, i32* %tid, align 4, !dbg !61, !tbaa !25
  %2 = load i32, i32* %tid, align 4, !dbg !63, !tbaa !25
  %cmp = icmp sge i32 %2, 1, !dbg !65
  br i1 %cmp, label %if.then, label %if.end, !dbg !66

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %tid, align 4, !dbg !67, !tbaa !25
  call void @write_val(i32* %0, i32 %3), !dbg !69
  br label %if.end, !dbg !70

if.end:                                           ; preds = %if.then, %entry
  %4 = bitcast i32* %tid to i8*, !dbg !71
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %4) #5, !dbg !71
  ret void, !dbg !71
}

declare !dbg !4 dso_local i32 @omp_get_thread_num() #4

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %counter) #3 !dbg !72 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %counter.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !20
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !74, metadata !DIExpression()), !dbg !77
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !20
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !75, metadata !DIExpression()), !dbg !77
  store i32* %counter, i32** %counter.addr, align 8, !tbaa !20
  call void @llvm.dbg.declare(metadata i32** %counter.addr, metadata !76, metadata !DIExpression()), !dbg !77
  %0 = load i32*, i32** %counter.addr, align 8, !dbg !78, !tbaa !20
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !78, !tbaa !20
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !78, !tbaa !20
  %3 = load i32*, i32** %counter.addr, align 8, !dbg !78, !tbaa !20
  call void @.omp_outlined._debug__(i32* %1, i32* %2, i32* %3) #5, !dbg !78
  ret void, !dbg !78
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare !callback !79 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

declare dso_local i32 @printf(i8*, ...) #4

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!9, !10, !11}
!llvm.ident = !{!12}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "integration/openmp/get-thread-num-interproc-yes.c", directory: "/home/brad/Code/OpenRace/tests/data")
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
!13 = distinct !DISubprogram(name: "write_val", scope: !1, file: !1, line: 4, type: !14, scopeLine: 4, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !17)
!14 = !DISubroutineType(types: !15)
!15 = !{null, !16, !8}
!16 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!17 = !{!18, !19}
!18 = !DILocalVariable(name: "dest", arg: 1, scope: !13, file: !1, line: 4, type: !16)
!19 = !DILocalVariable(name: "val", arg: 2, scope: !13, file: !1, line: 4, type: !8)
!20 = !{!21, !21, i64 0}
!21 = !{!"any pointer", !22, i64 0}
!22 = !{!"omnipotent char", !23, i64 0}
!23 = !{!"Simple C/C++ TBAA"}
!24 = !DILocation(line: 4, column: 21, scope: !13)
!25 = !{!26, !26, i64 0}
!26 = !{!"int", !22, i64 0}
!27 = !DILocation(line: 4, column: 31, scope: !13)
!28 = !DILocation(line: 4, column: 46, scope: !13)
!29 = !DILocation(line: 4, column: 39, scope: !13)
!30 = !DILocation(line: 4, column: 44, scope: !13)
!31 = !DILocation(line: 4, column: 51, scope: !13)
!32 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 6, type: !6, scopeLine: 6, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !33)
!33 = !{!34}
!34 = !DILocalVariable(name: "counter", scope: !32, file: !1, line: 7, type: !8)
!35 = !DILocation(line: 7, column: 3, scope: !32)
!36 = !DILocation(line: 7, column: 7, scope: !32)
!37 = !DILocation(line: 9, column: 1, scope: !32)
!38 = !{!39, !21, i64 16}
!39 = !{!"ident_t", !26, i64 0, !26, i64 4, !26, i64 8, !26, i64 12, !21, i64 16}
!40 = !DILocation(line: 18, column: 18, scope: !32)
!41 = !DILocation(line: 18, column: 3, scope: !32)
!42 = !DILocation(line: 19, column: 1, scope: !32)
!43 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 10, type: !44, scopeLine: 10, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !51)
!44 = !DISubroutineType(types: !45)
!45 = !{null, !46, !46, !50}
!46 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !47)
!47 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !48)
!48 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !49, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!50 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !8, size: 64)
!51 = !{!52, !53, !54, !55}
!52 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !43, type: !46, flags: DIFlagArtificial)
!53 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !43, type: !46, flags: DIFlagArtificial)
!54 = !DILocalVariable(name: "counter", arg: 3, scope: !43, file: !1, line: 7, type: !50)
!55 = !DILocalVariable(name: "tid", scope: !56, file: !1, line: 11, type: !8)
!56 = distinct !DILexicalBlock(scope: !43, file: !1, line: 10, column: 3)
!57 = !DILocation(line: 0, scope: !43)
!58 = !DILocation(line: 7, column: 7, scope: !43)
!59 = !DILocation(line: 10, column: 3, scope: !43)
!60 = !DILocation(line: 11, column: 5, scope: !56)
!61 = !DILocation(line: 11, column: 9, scope: !56)
!62 = !DILocation(line: 11, column: 15, scope: !56)
!63 = !DILocation(line: 13, column: 9, scope: !64)
!64 = distinct !DILexicalBlock(scope: !56, file: !1, line: 13, column: 9)
!65 = !DILocation(line: 13, column: 13, scope: !64)
!66 = !DILocation(line: 13, column: 9, scope: !56)
!67 = !DILocation(line: 14, column: 27, scope: !68)
!68 = distinct !DILexicalBlock(scope: !64, file: !1, line: 13, column: 19)
!69 = !DILocation(line: 14, column: 7, scope: !68)
!70 = !DILocation(line: 15, column: 5, scope: !68)
!71 = !DILocation(line: 16, column: 3, scope: !43)
!72 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 10, type: !44, scopeLine: 10, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !73)
!73 = !{!74, !75, !76}
!74 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !72, type: !46, flags: DIFlagArtificial)
!75 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !72, type: !46, flags: DIFlagArtificial)
!76 = !DILocalVariable(name: "counter", arg: 3, scope: !72, type: !50, flags: DIFlagArtificial)
!77 = !DILocation(line: 0, scope: !72)
!78 = !DILocation(line: 10, column: 3, scope: !72)
!79 = !{!80}
!80 = !{i64 2, i64 -1, i64 -1, i1 true}
