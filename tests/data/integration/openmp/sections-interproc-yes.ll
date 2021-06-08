; ModuleID = 'integration/openmp/sections-interproc-yes.c'
source_filename = "integration/openmp/sections-interproc-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 1026, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [56 x i8] c";integration/openmp/sections-interproc-yes.c;main;8;1;;\00", align 1
@2 = private unnamed_addr constant [57 x i8] c";integration/openmp/sections-interproc-yes.c;main;8;30;;\00", align 1
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
  %counter = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  %2 = bitcast i32* %counter to i8*, !dbg !29
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #4, !dbg !29
  call void @llvm.dbg.declare(metadata i32* %counter, metadata !28, metadata !DIExpression()), !dbg !30
  store i32 0, i32* %counter, align 4, !dbg !30, !tbaa !21
  %3 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !31
  store i8* getelementptr inbounds ([56 x i8], [56 x i8]* @1, i32 0, i32 0), i8** %3, align 8, !dbg !31, !tbaa !32
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %counter), !dbg !31
  %4 = bitcast i32* %counter to i8*, !dbg !34
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %4) #4, !dbg !34
  ret i32 0, !dbg !34
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %counter) #3 !dbg !35 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %counter.addr = alloca i32*, align 8
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
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !44, metadata !DIExpression()), !dbg !47
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !14
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !45, metadata !DIExpression()), !dbg !47
  store i32* %counter, i32** %counter.addr, align 8, !tbaa !14
  call void @llvm.dbg.declare(metadata i32** %counter.addr, metadata !46, metadata !DIExpression()), !dbg !48
  %2 = load i32*, i32** %counter.addr, align 8, !dbg !49, !tbaa !14
  store i32 0, i32* %.omp.sections.lb., align 4, !dbg !49, !tbaa !21
  store i32 1, i32* %.omp.sections.ub., align 4, !dbg !49, !tbaa !21
  store i32 1, i32* %.omp.sections.st., align 4, !dbg !49, !tbaa !21
  store i32 0, i32* %.omp.sections.il., align 4, !dbg !49, !tbaa !21
  %3 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !49
  store i8* getelementptr inbounds ([56 x i8], [56 x i8]* @1, i32 0, i32 0), i8** %3, align 8, !dbg !49, !tbaa !32
  %4 = load i32*, i32** %.global_tid..addr, align 8, !dbg !49
  %5 = load i32, i32* %4, align 4, !dbg !49, !tbaa !21
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %5, i32 34, i32* %.omp.sections.il., i32* %.omp.sections.lb., i32* %.omp.sections.ub., i32* %.omp.sections.st., i32 1, i32 1), !dbg !49
  %6 = load i32, i32* %.omp.sections.ub., align 4, !dbg !49, !tbaa !21
  %7 = icmp slt i32 %6, 1, !dbg !49
  %8 = select i1 %7, i32 %6, i32 1, !dbg !49
  store i32 %8, i32* %.omp.sections.ub., align 4, !dbg !49, !tbaa !21
  %9 = load i32, i32* %.omp.sections.lb., align 4, !dbg !49, !tbaa !21
  store i32 %9, i32* %.omp.sections.iv., align 4, !dbg !49, !tbaa !21
  br label %omp.inner.for.cond, !dbg !49

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %entry
  %10 = load i32, i32* %.omp.sections.iv., align 4, !dbg !50, !tbaa !21
  %11 = load i32, i32* %.omp.sections.ub., align 4, !dbg !50, !tbaa !21
  %cmp = icmp sle i32 %10, %11, !dbg !50
  br i1 %cmp, label %omp.inner.for.body, label %omp.inner.for.end, !dbg !49

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %12 = load i32, i32* %.omp.sections.iv., align 4, !dbg !49, !tbaa !21
  switch i32 %12, label %.omp.sections.exit [
    i32 0, label %.omp.sections.case
    i32 1, label %.omp.sections.case1
  ], !dbg !49

.omp.sections.case:                               ; preds = %omp.inner.for.body
  call void @update_counter(i32* %2), !dbg !51
  br label %.omp.sections.exit, !dbg !54

.omp.sections.case1:                              ; preds = %omp.inner.for.body
  call void @update_counter(i32* %2), !dbg !55
  br label %.omp.sections.exit, !dbg !58

.omp.sections.exit:                               ; preds = %.omp.sections.case1, %.omp.sections.case, %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !58

omp.inner.for.inc:                                ; preds = %.omp.sections.exit
  %13 = load i32, i32* %.omp.sections.iv., align 4, !dbg !50, !tbaa !21
  %inc = add nsw i32 %13, 1, !dbg !50
  store i32 %inc, i32* %.omp.sections.iv., align 4, !dbg !50, !tbaa !21
  br label %omp.inner.for.cond, !dbg !58, !llvm.loop !59

omp.inner.for.end:                                ; preds = %omp.inner.for.cond
  %14 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !58
  store i8* getelementptr inbounds ([57 x i8], [57 x i8]* @2, i32 0, i32 0), i8** %14, align 8, !dbg !58, !tbaa !32
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %5), !dbg !58
  ret void, !dbg !61
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %counter) #3 !dbg !62 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %counter.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !14
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !64, metadata !DIExpression()), !dbg !67
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !14
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !65, metadata !DIExpression()), !dbg !67
  store i32* %counter, i32** %counter.addr, align 8, !tbaa !14
  call void @llvm.dbg.declare(metadata i32** %counter.addr, metadata !66, metadata !DIExpression()), !dbg !67
  %0 = load i32*, i32** %counter.addr, align 8, !dbg !68, !tbaa !14
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !68, !tbaa !14
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !68, !tbaa !14
  %3 = load i32*, i32** %counter.addr, align 8, !dbg !68, !tbaa !14
  call void @.omp_outlined._debug__(i32* %1, i32* %2, i32* %3) #4, !dbg !68
  ret void, !dbg !68
}

declare !callback !69 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

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
!1 = !DIFile(filename: "integration/openmp/sections-interproc-yes.c", directory: "/home/brad/Code/OpenRace/tests/data")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.1 "}
!7 = distinct !DISubprogram(name: "update_counter", scope: !1, file: !1, line: 3, type: !8, scopeLine: 3, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !12)
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!12 = !{!13}
!13 = !DILocalVariable(name: "counter", arg: 1, scope: !7, file: !1, line: 3, type: !10)
!14 = !{!15, !15, i64 0}
!15 = !{!"any pointer", !16, i64 0}
!16 = !{!"omnipotent char", !17, i64 0}
!17 = !{!"Simple C/C++ TBAA"}
!18 = !DILocation(line: 3, column: 26, scope: !7)
!19 = !DILocation(line: 3, column: 39, scope: !7)
!20 = !DILocation(line: 3, column: 47, scope: !7)
!21 = !{!22, !22, i64 0}
!22 = !{!"int", !16, i64 0}
!23 = !DILocation(line: 3, column: 51, scope: !7)
!24 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 5, type: !25, scopeLine: 5, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !27)
!25 = !DISubroutineType(types: !26)
!26 = !{!11}
!27 = !{!28}
!28 = !DILocalVariable(name: "counter", scope: !24, file: !1, line: 6, type: !11)
!29 = !DILocation(line: 6, column: 3, scope: !24)
!30 = !DILocation(line: 6, column: 7, scope: !24)
!31 = !DILocation(line: 8, column: 1, scope: !24)
!32 = !{!33, !15, i64 16}
!33 = !{!"ident_t", !22, i64 0, !22, i64 4, !22, i64 8, !22, i64 12, !15, i64 16}
!34 = !DILocation(line: 16, column: 1, scope: !24)
!35 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 9, type: !36, scopeLine: 9, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !43)
!36 = !DISubroutineType(types: !37)
!37 = !{null, !38, !38, !42}
!38 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !39)
!39 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !40)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !11)
!42 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !11, size: 64)
!43 = !{!44, !45, !46}
!44 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !35, type: !38, flags: DIFlagArtificial)
!45 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !35, type: !38, flags: DIFlagArtificial)
!46 = !DILocalVariable(name: "counter", arg: 3, scope: !35, file: !1, line: 6, type: !42)
!47 = !DILocation(line: 0, scope: !35)
!48 = !DILocation(line: 6, column: 7, scope: !35)
!49 = !DILocation(line: 9, column: 3, scope: !35)
!50 = !DILocation(line: 8, column: 1, scope: !35)
!51 = !DILocation(line: 11, column: 7, scope: !52)
!52 = distinct !DILexicalBlock(scope: !53, file: !1, line: 11, column: 5)
!53 = distinct !DILexicalBlock(scope: !35, file: !1, line: 10, column: 1)
!54 = !DILocation(line: 10, column: 20, scope: !53)
!55 = !DILocation(line: 14, column: 7, scope: !56)
!56 = distinct !DILexicalBlock(scope: !57, file: !1, line: 14, column: 5)
!57 = distinct !DILexicalBlock(scope: !35, file: !1, line: 13, column: 1)
!58 = !DILocation(line: 13, column: 20, scope: !57)
!59 = distinct !{!59, !50, !60}
!60 = !DILocation(line: 8, column: 30, scope: !35)
!61 = !DILocation(line: 15, column: 3, scope: !35)
!62 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 9, type: !36, scopeLine: 9, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !63)
!63 = !{!64, !65, !66}
!64 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !62, type: !38, flags: DIFlagArtificial)
!65 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !62, type: !38, flags: DIFlagArtificial)
!66 = !DILocalVariable(name: "counter", arg: 3, scope: !62, type: !42, flags: DIFlagArtificial)
!67 = !DILocation(line: 0, scope: !62)
!68 = !DILocation(line: 9, column: 3, scope: !62)
!69 = !{!70}
!70 = !{i64 2, i64 -1, i64 -1, i1 true}
