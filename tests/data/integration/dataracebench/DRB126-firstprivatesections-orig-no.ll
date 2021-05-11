; ModuleID = 'integration/dataracebench/DRB126-firstprivatesections-orig-no.c'
source_filename = "integration/dataracebench/DRB126-firstprivatesections-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 1026, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [77 x i8] c";integration/dataracebench/DRB126-firstprivatesections-orig-no.c;main;27;3;;\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@2 = private unnamed_addr constant [78 x i8] c";integration/dataracebench/DRB126-firstprivatesections-orig-no.c;main;27;53;;\00", align 1
@3 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@4 = private unnamed_addr constant [77 x i8] c";integration/dataracebench/DRB126-firstprivatesections-orig-no.c;main;26;3;;\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main() #0 !dbg !14 {
entry:
  %retval = alloca i32, align 4
  %section_count = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32 0, i32* %retval, align 4
  %2 = bitcast i32* %section_count to i8*, !dbg !19
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #5, !dbg !19
  call void @llvm.dbg.declare(metadata i32* %section_count, metadata !18, metadata !DIExpression()), !dbg !20
  store i32 0, i32* %section_count, align 4, !dbg !20, !tbaa !21
  call void @omp_set_dynamic(i32 0), !dbg !25
  call void @omp_set_num_threads(i32 1), !dbg !26
  %3 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !27
  store i8* getelementptr inbounds ([77 x i8], [77 x i8]* @4, i32 0, i32 0), i8** %3, align 8, !dbg !27, !tbaa !28
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %section_count), !dbg !27
  %4 = bitcast i32* %section_count to i8*, !dbg !31
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %4) #5, !dbg !31
  ret i32 0, !dbg !32
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

declare !dbg !4 dso_local void @omp_set_dynamic(i32) #3

declare !dbg !9 dso_local void @omp_set_num_threads(i32) #3

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %section_count) #4 !dbg !33 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %section_count.addr = alloca i32*, align 8
  %.omp.sections.lb. = alloca i32, align 4
  %.omp.sections.ub. = alloca i32, align 4
  %.omp.sections.st. = alloca i32, align 4
  %.omp.sections.il. = alloca i32, align 4
  %.omp.sections.iv. = alloca i32, align 4
  %section_count1 = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !47
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !42, metadata !DIExpression()), !dbg !48
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !47
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !43, metadata !DIExpression()), !dbg !48
  store i32* %section_count, i32** %section_count.addr, align 8, !tbaa !47
  call void @llvm.dbg.declare(metadata i32** %section_count.addr, metadata !44, metadata !DIExpression()), !dbg !49
  %2 = load i32*, i32** %section_count.addr, align 8, !dbg !50, !tbaa !47
  store i32 0, i32* %.omp.sections.lb., align 4, !dbg !50, !tbaa !21
  store i32 1, i32* %.omp.sections.ub., align 4, !dbg !50, !tbaa !21
  store i32 1, i32* %.omp.sections.st., align 4, !dbg !50, !tbaa !21
  store i32 0, i32* %.omp.sections.il., align 4, !dbg !50, !tbaa !21
  %3 = bitcast i32* %section_count1 to i8*, !dbg !50
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #5, !dbg !50
  call void @llvm.dbg.declare(metadata i32* %section_count1, metadata !45, metadata !DIExpression()), !dbg !51
  %4 = load i32, i32* %2, align 4, !dbg !52, !tbaa !21
  store i32 %4, i32* %section_count1, align 4, !dbg !52, !tbaa !21
  %5 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !50
  store i8* getelementptr inbounds ([77 x i8], [77 x i8]* @1, i32 0, i32 0), i8** %5, align 8, !dbg !50, !tbaa !28
  %6 = load i32*, i32** %.global_tid..addr, align 8, !dbg !50
  %7 = load i32, i32* %6, align 4, !dbg !50, !tbaa !21
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %7, i32 34, i32* %.omp.sections.il., i32* %.omp.sections.lb., i32* %.omp.sections.ub., i32* %.omp.sections.st., i32 1, i32 1), !dbg !50
  %8 = load i32, i32* %.omp.sections.ub., align 4, !dbg !50, !tbaa !21
  %9 = icmp slt i32 %8, 1, !dbg !50
  %10 = select i1 %9, i32 %8, i32 1, !dbg !50
  store i32 %10, i32* %.omp.sections.ub., align 4, !dbg !50, !tbaa !21
  %11 = load i32, i32* %.omp.sections.lb., align 4, !dbg !50, !tbaa !21
  store i32 %11, i32* %.omp.sections.iv., align 4, !dbg !50, !tbaa !21
  br label %omp.inner.for.cond, !dbg !50

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %entry
  %12 = load i32, i32* %.omp.sections.iv., align 4, !dbg !53, !tbaa !21
  %13 = load i32, i32* %.omp.sections.ub., align 4, !dbg !53, !tbaa !21
  %cmp = icmp sle i32 %12, %13, !dbg !53
  br i1 %cmp, label %omp.inner.for.body, label %omp.inner.for.end, !dbg !50

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %14 = load i32, i32* %.omp.sections.iv., align 4, !dbg !50, !tbaa !21
  switch i32 %14, label %.omp.sections.exit [
    i32 0, label %.omp.sections.case
    i32 1, label %.omp.sections.case2
  ], !dbg !50

.omp.sections.case:                               ; preds = %omp.inner.for.body
  %15 = load i32, i32* %section_count1, align 4, !dbg !54, !tbaa !21
  %inc = add nsw i32 %15, 1, !dbg !54
  store i32 %inc, i32* %section_count1, align 4, !dbg !54, !tbaa !21
  %16 = load i32, i32* %section_count1, align 4, !dbg !57, !tbaa !21
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %16), !dbg !58
  br label %.omp.sections.exit, !dbg !59

.omp.sections.case2:                              ; preds = %omp.inner.for.body
  %17 = load i32, i32* %section_count1, align 4, !dbg !60, !tbaa !21
  %inc3 = add nsw i32 %17, 1, !dbg !60
  store i32 %inc3, i32* %section_count1, align 4, !dbg !60, !tbaa !21
  %18 = load i32, i32* %section_count1, align 4, !dbg !63, !tbaa !21
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %18), !dbg !64
  br label %.omp.sections.exit, !dbg !65

.omp.sections.exit:                               ; preds = %.omp.sections.case2, %.omp.sections.case, %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !65

omp.inner.for.inc:                                ; preds = %.omp.sections.exit
  %19 = load i32, i32* %.omp.sections.iv., align 4, !dbg !53, !tbaa !21
  %inc5 = add nsw i32 %19, 1, !dbg !53
  store i32 %inc5, i32* %.omp.sections.iv., align 4, !dbg !53, !tbaa !21
  br label %omp.inner.for.cond, !dbg !65, !llvm.loop !66

omp.inner.for.end:                                ; preds = %omp.inner.for.cond
  %20 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !65
  store i8* getelementptr inbounds ([78 x i8], [78 x i8]* @2, i32 0, i32 0), i8** %20, align 8, !dbg !65, !tbaa !28
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %7), !dbg !65
  %21 = bitcast i32* %section_count1 to i8*, !dbg !65
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %21) #5, !dbg !65
  %22 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !67
  store i8* getelementptr inbounds ([77 x i8], [77 x i8]* @1, i32 0, i32 0), i8** %22, align 8, !dbg !67, !tbaa !28
  call void @__kmpc_barrier(%struct.ident_t* %.kmpc_loc.addr, i32 %7), !dbg !67
  ret void, !dbg !68
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare dso_local i32 @printf(i8*, ...) #3

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

declare dso_local void @__kmpc_barrier(%struct.ident_t*, i32)

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %section_count) #4 !dbg !69 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %section_count.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !47
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !71, metadata !DIExpression()), !dbg !74
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !47
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !72, metadata !DIExpression()), !dbg !74
  store i32* %section_count, i32** %section_count.addr, align 8, !tbaa !47
  call void @llvm.dbg.declare(metadata i32** %section_count.addr, metadata !73, metadata !DIExpression()), !dbg !74
  %0 = load i32*, i32** %section_count.addr, align 8, !dbg !75, !tbaa !47
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !75, !tbaa !47
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !75, !tbaa !47
  %3 = load i32*, i32** %section_count.addr, align 8, !dbg !75, !tbaa !47
  call void @.omp_outlined._debug__(i32* %1, i32* %2, i32* %3) #5, !dbg !75
  ret void, !dbg !75
}

declare !callback !76 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!10, !11, !12}
!llvm.ident = !{!13}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "integration/dataracebench/DRB126-firstprivatesections-orig-no.c", directory: "/home/brad/Code/OpenRace/tests/data")
!2 = !{}
!3 = !{!4, !9}
!4 = !DISubprogram(name: "omp_set_dynamic", scope: !5, file: !5, line: 58, type: !6, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!5 = !DIFile(filename: "/usr/include/omp.h", directory: "")
!6 = !DISubroutineType(types: !7)
!7 = !{null, !8}
!8 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!9 = !DISubprogram(name: "omp_set_num_threads", scope: !5, file: !5, line: 57, type: !6, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!10 = !{i32 7, !"Dwarf Version", i32 4}
!11 = !{i32 2, !"Debug Info Version", i32 3}
!12 = !{i32 1, !"wchar_size", i32 4}
!13 = !{!"clang version 10.0.1 "}
!14 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 20, type: !15, scopeLine: 20, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !17)
!15 = !DISubroutineType(types: !16)
!16 = !{!8}
!17 = !{!18}
!18 = !DILocalVariable(name: "section_count", scope: !14, file: !1, line: 21, type: !8)
!19 = !DILocation(line: 21, column: 3, scope: !14)
!20 = !DILocation(line: 21, column: 7, scope: !14)
!21 = !{!22, !22, i64 0}
!22 = !{!"int", !23, i64 0}
!23 = !{!"omnipotent char", !24, i64 0}
!24 = !{!"Simple C/C++ TBAA"}
!25 = !DILocation(line: 22, column: 3, scope: !14)
!26 = !DILocation(line: 24, column: 3, scope: !14)
!27 = !DILocation(line: 26, column: 3, scope: !14)
!28 = !{!29, !30, i64 16}
!29 = !{!"ident_t", !22, i64 0, !22, i64 4, !22, i64 8, !22, i64 12, !30, i64 16}
!30 = !{!"any pointer", !23, i64 0}
!31 = !DILocation(line: 41, column: 1, scope: !14)
!32 = !DILocation(line: 40, column: 3, scope: !14)
!33 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 27, type: !34, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !41)
!34 = !DISubroutineType(types: !35)
!35 = !{null, !36, !36, !40}
!36 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !37)
!37 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !38)
!38 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !39, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!40 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !8, size: 64)
!41 = !{!42, !43, !44, !45}
!42 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !33, type: !36, flags: DIFlagArtificial)
!43 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !33, type: !36, flags: DIFlagArtificial)
!44 = !DILocalVariable(name: "section_count", arg: 3, scope: !33, file: !1, line: 21, type: !40)
!45 = !DILocalVariable(name: "section_count", scope: !46, type: !8, flags: DIFlagArtificial)
!46 = distinct !DILexicalBlock(scope: !33, file: !1, line: 27, column: 3)
!47 = !{!30, !30, i64 0}
!48 = !DILocation(line: 0, scope: !33)
!49 = !DILocation(line: 21, column: 7, scope: !33)
!50 = !DILocation(line: 27, column: 3, scope: !33)
!51 = !DILocation(line: 0, scope: !46)
!52 = !DILocation(line: 27, column: 38, scope: !46)
!53 = !DILocation(line: 27, column: 3, scope: !46)
!54 = !DILocation(line: 31, column: 20, scope: !55)
!55 = distinct !DILexicalBlock(scope: !56, file: !1, line: 30, column: 5)
!56 = distinct !DILexicalBlock(scope: !46, file: !1, line: 29, column: 5)
!57 = !DILocation(line: 32, column: 21, scope: !55)
!58 = !DILocation(line: 32, column: 7, scope: !55)
!59 = !DILocation(line: 29, column: 24, scope: !56)
!60 = !DILocation(line: 36, column: 20, scope: !61)
!61 = distinct !DILexicalBlock(scope: !62, file: !1, line: 35, column: 5)
!62 = distinct !DILexicalBlock(scope: !46, file: !1, line: 34, column: 5)
!63 = !DILocation(line: 37, column: 21, scope: !61)
!64 = !DILocation(line: 37, column: 7, scope: !61)
!65 = !DILocation(line: 34, column: 24, scope: !62)
!66 = distinct !{!66, !53, !67}
!67 = !DILocation(line: 27, column: 53, scope: !46)
!68 = !DILocation(line: 27, column: 53, scope: !33)
!69 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 27, type: !34, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !70)
!70 = !{!71, !72, !73}
!71 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !69, type: !36, flags: DIFlagArtificial)
!72 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !69, type: !36, flags: DIFlagArtificial)
!73 = !DILocalVariable(name: "section_count", arg: 3, scope: !69, type: !40, flags: DIFlagArtificial)
!74 = !DILocation(line: 0, scope: !69)
!75 = !DILocation(line: 27, column: 3, scope: !69)
!76 = !{!77}
!77 = !{i64 2, i64 -1, i64 -1, i1 true}
