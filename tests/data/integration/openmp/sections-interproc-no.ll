; ModuleID = 'integration/openmp/sections-interproc-no.c'
source_filename = "integration/openmp/sections-interproc-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 1026, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [55 x i8] c";integration/openmp/sections-interproc-no.c;main;7;1;;\00", align 1
@2 = private unnamed_addr constant [56 x i8] c";integration/openmp/sections-interproc-no.c;main;7;30;;\00", align 1
@3 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8

; Function Attrs: nounwind uwtable
define dso_local void @update_counter(i32* %counter) #0 !dbg !7 {
entry:
  %counter.addr = alloca i32*, align 8
  store i32* %counter, i32** %counter.addr, align 8, !tbaa !14
  call void @llvm.dbg.declare(metadata i32** %counter.addr, metadata !13, metadata !DIExpression()), !dbg !18
  %0 = load i32*, i32** %counter.addr, align 8, !dbg !19, !tbaa !14
  %1 = load i32, i32* %0, align 4, !dbg !20, !tbaa !21
  %inc = add nsw i32 %1, 1, !dbg !20
  store i32 %inc, i32* %0, align 4, !dbg !20, !tbaa !21
  ret void, !dbg !23
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @main() #0 !dbg !24 {
entry:
  %counter1 = alloca i32, align 4
  %counter2 = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  %2 = bitcast i32* %counter1 to i8*, !dbg !30
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #4, !dbg !30
  call void @llvm.dbg.declare(metadata i32* %counter1, metadata !28, metadata !DIExpression()), !dbg !31
  store i32 0, i32* %counter1, align 4, !dbg !31, !tbaa !21
  %3 = bitcast i32* %counter2 to i8*, !dbg !32
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #4, !dbg !32
  call void @llvm.dbg.declare(metadata i32* %counter2, metadata !29, metadata !DIExpression()), !dbg !33
  store i32 0, i32* %counter2, align 4, !dbg !33, !tbaa !21
  %4 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !34
  store i8* getelementptr inbounds ([55 x i8], [55 x i8]* @1, i32 0, i32 0), i8** %4, align 8, !dbg !34, !tbaa !35
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 2, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %counter1, i32* %counter2), !dbg !34
  %5 = bitcast i32* %counter2 to i8*, !dbg !37
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %5) #4, !dbg !37
  %6 = bitcast i32* %counter1 to i8*, !dbg !37
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %6) #4, !dbg !37
  ret i32 0, !dbg !37
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %counter1, i32* dereferenceable(4) %counter2) #3 !dbg !38 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %counter1.addr = alloca i32*, align 8
  %counter2.addr = alloca i32*, align 8
  %.omp.sections.lb. = alloca i32, align 4
  %.omp.sections.ub. = alloca i32, align 4
  %.omp.sections.st. = alloca i32, align 4
  %.omp.sections.il. = alloca i32, align 4
  %.omp.sections.iv. = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !14
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !47, metadata !DIExpression()), !dbg !51
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !14
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !48, metadata !DIExpression()), !dbg !51
  store i32* %counter1, i32** %counter1.addr, align 8, !tbaa !14
  call void @llvm.dbg.declare(metadata i32** %counter1.addr, metadata !49, metadata !DIExpression()), !dbg !52
  store i32* %counter2, i32** %counter2.addr, align 8, !tbaa !14
  call void @llvm.dbg.declare(metadata i32** %counter2.addr, metadata !50, metadata !DIExpression()), !dbg !53
  %2 = load i32*, i32** %counter1.addr, align 8, !dbg !54, !tbaa !14
  %3 = load i32*, i32** %counter2.addr, align 8, !dbg !54, !tbaa !14
  store i32 0, i32* %.omp.sections.lb., align 4, !dbg !54, !tbaa !21
  store i32 1, i32* %.omp.sections.ub., align 4, !dbg !54, !tbaa !21
  store i32 1, i32* %.omp.sections.st., align 4, !dbg !54, !tbaa !21
  store i32 0, i32* %.omp.sections.il., align 4, !dbg !54, !tbaa !21
  %4 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !54
  store i8* getelementptr inbounds ([55 x i8], [55 x i8]* @1, i32 0, i32 0), i8** %4, align 8, !dbg !54, !tbaa !35
  %5 = load i32*, i32** %.global_tid..addr, align 8, !dbg !54
  %6 = load i32, i32* %5, align 4, !dbg !54, !tbaa !21
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %6, i32 34, i32* %.omp.sections.il., i32* %.omp.sections.lb., i32* %.omp.sections.ub., i32* %.omp.sections.st., i32 1, i32 1), !dbg !54
  %7 = load i32, i32* %.omp.sections.ub., align 4, !dbg !54, !tbaa !21
  %8 = icmp slt i32 %7, 1, !dbg !54
  %9 = select i1 %8, i32 %7, i32 1, !dbg !54
  store i32 %9, i32* %.omp.sections.ub., align 4, !dbg !54, !tbaa !21
  %10 = load i32, i32* %.omp.sections.lb., align 4, !dbg !54, !tbaa !21
  store i32 %10, i32* %.omp.sections.iv., align 4, !dbg !54, !tbaa !21
  br label %omp.inner.for.cond, !dbg !54

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %entry
  %11 = load i32, i32* %.omp.sections.iv., align 4, !dbg !55, !tbaa !21
  %12 = load i32, i32* %.omp.sections.ub., align 4, !dbg !55, !tbaa !21
  %cmp = icmp sle i32 %11, %12, !dbg !55
  br i1 %cmp, label %omp.inner.for.body, label %omp.inner.for.end, !dbg !54

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %13 = load i32, i32* %.omp.sections.iv., align 4, !dbg !54, !tbaa !21
  switch i32 %13, label %.omp.sections.exit [
    i32 0, label %.omp.sections.case
    i32 1, label %.omp.sections.case1
  ], !dbg !54

.omp.sections.case:                               ; preds = %omp.inner.for.body
  call void @update_counter(i32* %2), !dbg !56
  br label %.omp.sections.exit, !dbg !59

.omp.sections.case1:                              ; preds = %omp.inner.for.body
  call void @update_counter(i32* %3), !dbg !60
  br label %.omp.sections.exit, !dbg !63

.omp.sections.exit:                               ; preds = %.omp.sections.case1, %.omp.sections.case, %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !63

omp.inner.for.inc:                                ; preds = %.omp.sections.exit
  %14 = load i32, i32* %.omp.sections.iv., align 4, !dbg !55, !tbaa !21
  %inc = add nsw i32 %14, 1, !dbg !55
  store i32 %inc, i32* %.omp.sections.iv., align 4, !dbg !55, !tbaa !21
  br label %omp.inner.for.cond, !dbg !63, !llvm.loop !64

omp.inner.for.end:                                ; preds = %omp.inner.for.cond
  %15 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !63
  store i8* getelementptr inbounds ([56 x i8], [56 x i8]* @2, i32 0, i32 0), i8** %15, align 8, !dbg !63, !tbaa !35
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %6), !dbg !63
  ret void, !dbg !66
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %counter1, i32* dereferenceable(4) %counter2) #3 !dbg !67 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %counter1.addr = alloca i32*, align 8
  %counter2.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !14
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !69, metadata !DIExpression()), !dbg !73
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !14
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !70, metadata !DIExpression()), !dbg !73
  store i32* %counter1, i32** %counter1.addr, align 8, !tbaa !14
  call void @llvm.dbg.declare(metadata i32** %counter1.addr, metadata !71, metadata !DIExpression()), !dbg !73
  store i32* %counter2, i32** %counter2.addr, align 8, !tbaa !14
  call void @llvm.dbg.declare(metadata i32** %counter2.addr, metadata !72, metadata !DIExpression()), !dbg !73
  %0 = load i32*, i32** %counter1.addr, align 8, !dbg !74, !tbaa !14
  %1 = load i32*, i32** %counter2.addr, align 8, !dbg !74, !tbaa !14
  %2 = load i32*, i32** %.global_tid..addr, align 8, !dbg !74, !tbaa !14
  %3 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !74, !tbaa !14
  %4 = load i32*, i32** %counter1.addr, align 8, !dbg !74, !tbaa !14
  %5 = load i32*, i32** %counter2.addr, align 8, !dbg !74, !tbaa !14
  call void @.omp_outlined._debug__(i32* %2, i32* %3, i32* %4, i32* %5) #4, !dbg !74
  ret void, !dbg !74
}

declare !callback !75 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "integration/openmp/sections-interproc-no.c", directory: "/home/brad/Code/OpenRace/tests/data")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.1 "}
!7 = distinct !DISubprogram(name: "update_counter", scope: !1, file: !1, line: 1, type: !8, scopeLine: 1, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !12)
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!12 = !{!13}
!13 = !DILocalVariable(name: "counter", arg: 1, scope: !7, file: !1, line: 1, type: !10)
!14 = !{!15, !15, i64 0}
!15 = !{!"any pointer", !16, i64 0}
!16 = !{!"omnipotent char", !17, i64 0}
!17 = !{!"Simple C/C++ TBAA"}
!18 = !DILocation(line: 1, column: 26, scope: !7)
!19 = !DILocation(line: 1, column: 39, scope: !7)
!20 = !DILocation(line: 1, column: 47, scope: !7)
!21 = !{!22, !22, i64 0}
!22 = !{!"int", !16, i64 0}
!23 = !DILocation(line: 1, column: 51, scope: !7)
!24 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 3, type: !25, scopeLine: 3, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !27)
!25 = !DISubroutineType(types: !26)
!26 = !{!11}
!27 = !{!28, !29}
!28 = !DILocalVariable(name: "counter1", scope: !24, file: !1, line: 4, type: !11)
!29 = !DILocalVariable(name: "counter2", scope: !24, file: !1, line: 5, type: !11)
!30 = !DILocation(line: 4, column: 3, scope: !24)
!31 = !DILocation(line: 4, column: 7, scope: !24)
!32 = !DILocation(line: 5, column: 3, scope: !24)
!33 = !DILocation(line: 5, column: 7, scope: !24)
!34 = !DILocation(line: 7, column: 1, scope: !24)
!35 = !{!36, !15, i64 16}
!36 = !{!"ident_t", !22, i64 0, !22, i64 4, !22, i64 8, !22, i64 12, !15, i64 16}
!37 = !DILocation(line: 15, column: 1, scope: !24)
!38 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 8, type: !39, scopeLine: 8, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !46)
!39 = !DISubroutineType(types: !40)
!40 = !{null, !41, !41, !45, !45}
!41 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !42)
!42 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !43)
!43 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !44, size: 64)
!44 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!45 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !11, size: 64)
!46 = !{!47, !48, !49, !50}
!47 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !38, type: !41, flags: DIFlagArtificial)
!48 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !38, type: !41, flags: DIFlagArtificial)
!49 = !DILocalVariable(name: "counter1", arg: 3, scope: !38, file: !1, line: 4, type: !45)
!50 = !DILocalVariable(name: "counter2", arg: 4, scope: !38, file: !1, line: 5, type: !45)
!51 = !DILocation(line: 0, scope: !38)
!52 = !DILocation(line: 4, column: 7, scope: !38)
!53 = !DILocation(line: 5, column: 7, scope: !38)
!54 = !DILocation(line: 8, column: 3, scope: !38)
!55 = !DILocation(line: 7, column: 1, scope: !38)
!56 = !DILocation(line: 10, column: 7, scope: !57)
!57 = distinct !DILexicalBlock(scope: !58, file: !1, line: 10, column: 5)
!58 = distinct !DILexicalBlock(scope: !38, file: !1, line: 9, column: 1)
!59 = !DILocation(line: 9, column: 20, scope: !58)
!60 = !DILocation(line: 13, column: 7, scope: !61)
!61 = distinct !DILexicalBlock(scope: !62, file: !1, line: 13, column: 5)
!62 = distinct !DILexicalBlock(scope: !38, file: !1, line: 12, column: 1)
!63 = !DILocation(line: 12, column: 20, scope: !62)
!64 = distinct !{!64, !55, !65}
!65 = !DILocation(line: 7, column: 30, scope: !38)
!66 = !DILocation(line: 14, column: 3, scope: !38)
!67 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 8, type: !39, scopeLine: 8, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !68)
!68 = !{!69, !70, !71, !72}
!69 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !67, type: !41, flags: DIFlagArtificial)
!70 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !67, type: !41, flags: DIFlagArtificial)
!71 = !DILocalVariable(name: "counter1", arg: 3, scope: !67, type: !45, flags: DIFlagArtificial)
!72 = !DILocalVariable(name: "counter2", arg: 4, scope: !67, type: !45, flags: DIFlagArtificial)
!73 = !DILocation(line: 0, scope: !67)
!74 = !DILocation(line: 8, column: 3, scope: !67)
!75 = !{!76}
!76 = !{i64 2, i64 -1, i64 -1, i1 true}
