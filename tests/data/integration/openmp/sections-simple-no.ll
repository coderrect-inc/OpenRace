; ModuleID = 'integration/openmp/sections-simple-no.c'
source_filename = "integration/openmp/sections-simple-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 1026, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [52 x i8] c";integration/openmp/sections-simple-no.c;main;5;1;;\00", align 1
@2 = private unnamed_addr constant [53 x i8] c";integration/openmp/sections-simple-no.c;main;5;30;;\00", align 1
@3 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8

; Function Attrs: nounwind uwtable
define dso_local i32 @main() #0 !dbg !7 {
entry:
  %countUp = alloca i32, align 4
  %countDown = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  %2 = bitcast i32* %countUp to i8*, !dbg !15
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #4, !dbg !15
  call void @llvm.dbg.declare(metadata i32* %countUp, metadata !12, metadata !DIExpression()), !dbg !16
  store i32 0, i32* %countUp, align 4, !dbg !16, !tbaa !17
  %3 = bitcast i32* %countDown to i8*, !dbg !21
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #4, !dbg !21
  call void @llvm.dbg.declare(metadata i32* %countDown, metadata !14, metadata !DIExpression()), !dbg !22
  store i32 1000, i32* %countDown, align 4, !dbg !22, !tbaa !17
  %4 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !23
  store i8* getelementptr inbounds ([52 x i8], [52 x i8]* @1, i32 0, i32 0), i8** %4, align 8, !dbg !23, !tbaa !24
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 2, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %countUp, i32* %countDown), !dbg !23
  %5 = bitcast i32* %countDown to i8*, !dbg !27
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %5) #4, !dbg !27
  %6 = bitcast i32* %countUp to i8*, !dbg !27
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %6) #4, !dbg !27
  ret i32 0, !dbg !27
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %countUp, i32* dereferenceable(4) %countDown) #3 !dbg !28 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %countUp.addr = alloca i32*, align 8
  %countDown.addr = alloca i32*, align 8
  %.omp.sections.lb. = alloca i32, align 4
  %.omp.sections.ub. = alloca i32, align 4
  %.omp.sections.st. = alloca i32, align 4
  %.omp.sections.il. = alloca i32, align 4
  %.omp.sections.iv. = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !41
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !37, metadata !DIExpression()), !dbg !42
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !41
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !38, metadata !DIExpression()), !dbg !42
  store i32* %countUp, i32** %countUp.addr, align 8, !tbaa !41
  call void @llvm.dbg.declare(metadata i32** %countUp.addr, metadata !39, metadata !DIExpression()), !dbg !43
  store i32* %countDown, i32** %countDown.addr, align 8, !tbaa !41
  call void @llvm.dbg.declare(metadata i32** %countDown.addr, metadata !40, metadata !DIExpression()), !dbg !44
  %2 = load i32*, i32** %countUp.addr, align 8, !dbg !45, !tbaa !41
  %3 = load i32*, i32** %countDown.addr, align 8, !dbg !45, !tbaa !41
  store i32 0, i32* %.omp.sections.lb., align 4, !dbg !45, !tbaa !17
  store i32 1, i32* %.omp.sections.ub., align 4, !dbg !45, !tbaa !17
  store i32 1, i32* %.omp.sections.st., align 4, !dbg !45, !tbaa !17
  store i32 0, i32* %.omp.sections.il., align 4, !dbg !45, !tbaa !17
  %4 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !45
  store i8* getelementptr inbounds ([52 x i8], [52 x i8]* @1, i32 0, i32 0), i8** %4, align 8, !dbg !45, !tbaa !24
  %5 = load i32*, i32** %.global_tid..addr, align 8, !dbg !45
  %6 = load i32, i32* %5, align 4, !dbg !45, !tbaa !17
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %6, i32 34, i32* %.omp.sections.il., i32* %.omp.sections.lb., i32* %.omp.sections.ub., i32* %.omp.sections.st., i32 1, i32 1), !dbg !45
  %7 = load i32, i32* %.omp.sections.ub., align 4, !dbg !45, !tbaa !17
  %8 = icmp slt i32 %7, 1, !dbg !45
  %9 = select i1 %8, i32 %7, i32 1, !dbg !45
  store i32 %9, i32* %.omp.sections.ub., align 4, !dbg !45, !tbaa !17
  %10 = load i32, i32* %.omp.sections.lb., align 4, !dbg !45, !tbaa !17
  store i32 %10, i32* %.omp.sections.iv., align 4, !dbg !45, !tbaa !17
  br label %omp.inner.for.cond, !dbg !45

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %entry
  %11 = load i32, i32* %.omp.sections.iv., align 4, !dbg !46, !tbaa !17
  %12 = load i32, i32* %.omp.sections.ub., align 4, !dbg !46, !tbaa !17
  %cmp = icmp sle i32 %11, %12, !dbg !46
  br i1 %cmp, label %omp.inner.for.body, label %omp.inner.for.end, !dbg !45

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %13 = load i32, i32* %.omp.sections.iv., align 4, !dbg !45, !tbaa !17
  switch i32 %13, label %.omp.sections.exit [
    i32 0, label %.omp.sections.case
    i32 1, label %.omp.sections.case1
  ], !dbg !45

.omp.sections.case:                               ; preds = %omp.inner.for.body
  %14 = load i32, i32* %2, align 4, !dbg !47, !tbaa !17
  %inc = add i32 %14, 1, !dbg !47
  store i32 %inc, i32* %2, align 4, !dbg !47, !tbaa !17
  br label %.omp.sections.exit, !dbg !50

.omp.sections.case1:                              ; preds = %omp.inner.for.body
  %15 = load i32, i32* %3, align 4, !dbg !51, !tbaa !17
  %dec = add i32 %15, -1, !dbg !51
  store i32 %dec, i32* %3, align 4, !dbg !51, !tbaa !17
  br label %.omp.sections.exit, !dbg !54

.omp.sections.exit:                               ; preds = %.omp.sections.case1, %.omp.sections.case, %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !54

omp.inner.for.inc:                                ; preds = %.omp.sections.exit
  %16 = load i32, i32* %.omp.sections.iv., align 4, !dbg !46, !tbaa !17
  %inc2 = add nsw i32 %16, 1, !dbg !46
  store i32 %inc2, i32* %.omp.sections.iv., align 4, !dbg !46, !tbaa !17
  br label %omp.inner.for.cond, !dbg !54, !llvm.loop !55

omp.inner.for.end:                                ; preds = %omp.inner.for.cond
  %17 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !54
  store i8* getelementptr inbounds ([53 x i8], [53 x i8]* @2, i32 0, i32 0), i8** %17, align 8, !dbg !54, !tbaa !24
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %6), !dbg !54
  ret void, !dbg !57
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %countUp, i32* dereferenceable(4) %countDown) #3 !dbg !58 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %countUp.addr = alloca i32*, align 8
  %countDown.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !41
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !60, metadata !DIExpression()), !dbg !64
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !41
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !61, metadata !DIExpression()), !dbg !64
  store i32* %countUp, i32** %countUp.addr, align 8, !tbaa !41
  call void @llvm.dbg.declare(metadata i32** %countUp.addr, metadata !62, metadata !DIExpression()), !dbg !64
  store i32* %countDown, i32** %countDown.addr, align 8, !tbaa !41
  call void @llvm.dbg.declare(metadata i32** %countDown.addr, metadata !63, metadata !DIExpression()), !dbg !64
  %0 = load i32*, i32** %countUp.addr, align 8, !dbg !65, !tbaa !41
  %1 = load i32*, i32** %countDown.addr, align 8, !dbg !65, !tbaa !41
  %2 = load i32*, i32** %.global_tid..addr, align 8, !dbg !65, !tbaa !41
  %3 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !65, !tbaa !41
  %4 = load i32*, i32** %countUp.addr, align 8, !dbg !65, !tbaa !41
  %5 = load i32*, i32** %countDown.addr, align 8, !dbg !65, !tbaa !41
  call void @.omp_outlined._debug__(i32* %2, i32* %3, i32* %4, i32* %5) #4, !dbg !65
  ret void, !dbg !65
}

declare !callback !66 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "integration/openmp/sections-simple-no.c", directory: "/home/brad/Code/OpenRace/tests/data")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.1 "}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 1, type: !8, scopeLine: 1, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !11)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !{!12, !14}
!12 = !DILocalVariable(name: "countUp", scope: !7, file: !1, line: 2, type: !13)
!13 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!14 = !DILocalVariable(name: "countDown", scope: !7, file: !1, line: 3, type: !13)
!15 = !DILocation(line: 2, column: 3, scope: !7)
!16 = !DILocation(line: 2, column: 12, scope: !7)
!17 = !{!18, !18, i64 0}
!18 = !{!"int", !19, i64 0}
!19 = !{!"omnipotent char", !20, i64 0}
!20 = !{!"Simple C/C++ TBAA"}
!21 = !DILocation(line: 3, column: 3, scope: !7)
!22 = !DILocation(line: 3, column: 12, scope: !7)
!23 = !DILocation(line: 5, column: 1, scope: !7)
!24 = !{!25, !26, i64 16}
!25 = !{!"ident_t", !18, i64 0, !18, i64 4, !18, i64 8, !18, i64 12, !26, i64 16}
!26 = !{!"any pointer", !19, i64 0}
!27 = !DILocation(line: 13, column: 1, scope: !7)
!28 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 6, type: !29, scopeLine: 6, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !36)
!29 = !DISubroutineType(types: !30)
!30 = !{null, !31, !31, !35, !35}
!31 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !32)
!32 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !33)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!35 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !13, size: 64)
!36 = !{!37, !38, !39, !40}
!37 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !28, type: !31, flags: DIFlagArtificial)
!38 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !28, type: !31, flags: DIFlagArtificial)
!39 = !DILocalVariable(name: "countUp", arg: 3, scope: !28, file: !1, line: 2, type: !35)
!40 = !DILocalVariable(name: "countDown", arg: 4, scope: !28, file: !1, line: 3, type: !35)
!41 = !{!26, !26, i64 0}
!42 = !DILocation(line: 0, scope: !28)
!43 = !DILocation(line: 2, column: 12, scope: !28)
!44 = !DILocation(line: 3, column: 12, scope: !28)
!45 = !DILocation(line: 6, column: 3, scope: !28)
!46 = !DILocation(line: 5, column: 1, scope: !28)
!47 = !DILocation(line: 8, column: 14, scope: !48)
!48 = distinct !DILexicalBlock(scope: !49, file: !1, line: 8, column: 5)
!49 = distinct !DILexicalBlock(scope: !28, file: !1, line: 7, column: 1)
!50 = !DILocation(line: 7, column: 20, scope: !49)
!51 = !DILocation(line: 11, column: 16, scope: !52)
!52 = distinct !DILexicalBlock(scope: !53, file: !1, line: 11, column: 5)
!53 = distinct !DILexicalBlock(scope: !28, file: !1, line: 10, column: 1)
!54 = !DILocation(line: 10, column: 20, scope: !53)
!55 = distinct !{!55, !46, !56}
!56 = !DILocation(line: 5, column: 30, scope: !28)
!57 = !DILocation(line: 12, column: 3, scope: !28)
!58 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 6, type: !29, scopeLine: 6, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !59)
!59 = !{!60, !61, !62, !63}
!60 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !58, type: !31, flags: DIFlagArtificial)
!61 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !58, type: !31, flags: DIFlagArtificial)
!62 = !DILocalVariable(name: "countUp", arg: 3, scope: !58, type: !35, flags: DIFlagArtificial)
!63 = !DILocalVariable(name: "countDown", arg: 4, scope: !58, type: !35, flags: DIFlagArtificial)
!64 = !DILocation(line: 0, scope: !58)
!65 = !DILocation(line: 6, column: 3, scope: !58)
!66 = !{!67}
!67 = !{i64 2, i64 -1, i64 -1, i1 true}
