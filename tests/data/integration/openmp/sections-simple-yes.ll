; ModuleID = 'integration/openmp/sections-simple-yes.c'
source_filename = "integration/openmp/sections-simple-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 1026, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [53 x i8] c";integration/openmp/sections-simple-yes.c;main;5;5;;\00", align 1
@2 = private unnamed_addr constant [54 x i8] c";integration/openmp/sections-simple-yes.c;main;5;34;;\00", align 1
@3 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8

; Function Attrs: nounwind uwtable
define dso_local i32 @main() #0 !dbg !7 {
entry:
  %retval = alloca i32, align 4
  %x = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32 0, i32* %retval, align 4
  %2 = bitcast i32* %x to i8*, !dbg !13
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #4, !dbg !13
  call void @llvm.dbg.declare(metadata i32* %x, metadata !12, metadata !DIExpression()), !dbg !14
  store i32 0, i32* %x, align 4, !dbg !14, !tbaa !15
  %3 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !19
  store i8* getelementptr inbounds ([53 x i8], [53 x i8]* @1, i32 0, i32 0), i8** %3, align 8, !dbg !19, !tbaa !20
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %x), !dbg !19
  %4 = load i32, i32* %x, align 4, !dbg !23, !tbaa !15
  %5 = bitcast i32* %x to i8*, !dbg !24
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %5) #4, !dbg !24
  ret i32 %4, !dbg !25
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %x) #3 !dbg !26 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %x.addr = alloca i32*, align 8
  %.omp.sections.lb. = alloca i32, align 4
  %.omp.sections.ub. = alloca i32, align 4
  %.omp.sections.st. = alloca i32, align 4
  %.omp.sections.il. = alloca i32, align 4
  %.omp.sections.iv. = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !35, metadata !DIExpression()), !dbg !39
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !36, metadata !DIExpression()), !dbg !39
  store i32* %x, i32** %x.addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata i32** %x.addr, metadata !37, metadata !DIExpression()), !dbg !40
  %2 = load i32*, i32** %x.addr, align 8, !dbg !41, !tbaa !38
  store i32 0, i32* %.omp.sections.lb., align 4, !dbg !41, !tbaa !15
  store i32 1, i32* %.omp.sections.ub., align 4, !dbg !41, !tbaa !15
  store i32 1, i32* %.omp.sections.st., align 4, !dbg !41, !tbaa !15
  store i32 0, i32* %.omp.sections.il., align 4, !dbg !41, !tbaa !15
  %3 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !41
  store i8* getelementptr inbounds ([53 x i8], [53 x i8]* @1, i32 0, i32 0), i8** %3, align 8, !dbg !41, !tbaa !20
  %4 = load i32*, i32** %.global_tid..addr, align 8, !dbg !41
  %5 = load i32, i32* %4, align 4, !dbg !41, !tbaa !15
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %5, i32 34, i32* %.omp.sections.il., i32* %.omp.sections.lb., i32* %.omp.sections.ub., i32* %.omp.sections.st., i32 1, i32 1), !dbg !41
  %6 = load i32, i32* %.omp.sections.ub., align 4, !dbg !41, !tbaa !15
  %7 = icmp slt i32 %6, 1, !dbg !41
  %8 = select i1 %7, i32 %6, i32 1, !dbg !41
  store i32 %8, i32* %.omp.sections.ub., align 4, !dbg !41, !tbaa !15
  %9 = load i32, i32* %.omp.sections.lb., align 4, !dbg !41, !tbaa !15
  store i32 %9, i32* %.omp.sections.iv., align 4, !dbg !41, !tbaa !15
  br label %omp.inner.for.cond, !dbg !41

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %entry
  %10 = load i32, i32* %.omp.sections.iv., align 4, !dbg !42, !tbaa !15
  %11 = load i32, i32* %.omp.sections.ub., align 4, !dbg !42, !tbaa !15
  %cmp = icmp sle i32 %10, %11, !dbg !42
  br i1 %cmp, label %omp.inner.for.body, label %omp.inner.for.end, !dbg !41

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %12 = load i32, i32* %.omp.sections.iv., align 4, !dbg !41, !tbaa !15
  switch i32 %12, label %.omp.sections.exit [
    i32 0, label %.omp.sections.case
    i32 1, label %.omp.sections.case1
  ], !dbg !41

.omp.sections.case:                               ; preds = %omp.inner.for.body
  %13 = load i32, i32* %2, align 4, !dbg !43, !tbaa !15
  %inc = add nsw i32 %13, 1, !dbg !43
  store i32 %inc, i32* %2, align 4, !dbg !43, !tbaa !15
  br label %.omp.sections.exit, !dbg !45

.omp.sections.case1:                              ; preds = %omp.inner.for.body
  %14 = load i32, i32* %2, align 4, !dbg !46, !tbaa !15
  %dec = add nsw i32 %14, -1, !dbg !46
  store i32 %dec, i32* %2, align 4, !dbg !46, !tbaa !15
  br label %.omp.sections.exit, !dbg !48

.omp.sections.exit:                               ; preds = %.omp.sections.case1, %.omp.sections.case, %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !48

omp.inner.for.inc:                                ; preds = %.omp.sections.exit
  %15 = load i32, i32* %.omp.sections.iv., align 4, !dbg !42, !tbaa !15
  %inc2 = add nsw i32 %15, 1, !dbg !42
  store i32 %inc2, i32* %.omp.sections.iv., align 4, !dbg !42, !tbaa !15
  br label %omp.inner.for.cond, !dbg !48, !llvm.loop !49

omp.inner.for.end:                                ; preds = %omp.inner.for.cond
  %16 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !48
  store i8* getelementptr inbounds ([54 x i8], [54 x i8]* @2, i32 0, i32 0), i8** %16, align 8, !dbg !48, !tbaa !20
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %5), !dbg !48
  ret void, !dbg !51
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %x) #3 !dbg !52 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %x.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !54, metadata !DIExpression()), !dbg !57
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !55, metadata !DIExpression()), !dbg !57
  store i32* %x, i32** %x.addr, align 8, !tbaa !38
  call void @llvm.dbg.declare(metadata i32** %x.addr, metadata !56, metadata !DIExpression()), !dbg !57
  %0 = load i32*, i32** %x.addr, align 8, !dbg !58, !tbaa !38
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !58, !tbaa !38
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !58, !tbaa !38
  %3 = load i32*, i32** %x.addr, align 8, !dbg !58, !tbaa !38
  call void @.omp_outlined._debug__(i32* %1, i32* %2, i32* %3) #4, !dbg !58
  ret void, !dbg !58
}

declare !callback !59 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

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

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.1 (git@github.com:coderrect-inc/classic-flang-llvm-project.git 385cb14c62f7038a201227dbe865453e88b40fe5)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "integration/openmp/sections-simple-yes.c", directory: "/home/rohan/OpenRace/tests/data")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.1 (git@github.com:coderrect-inc/classic-flang-llvm-project.git 385cb14c62f7038a201227dbe865453e88b40fe5)"}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 1, type: !8, scopeLine: 2, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !11)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !{!12}
!12 = !DILocalVariable(name: "x", scope: !7, file: !1, line: 3, type: !10)
!13 = !DILocation(line: 3, column: 5, scope: !7)
!14 = !DILocation(line: 3, column: 9, scope: !7)
!15 = !{!16, !16, i64 0}
!16 = !{!"int", !17, i64 0}
!17 = !{!"omnipotent char", !18, i64 0}
!18 = !{!"Simple C/C++ TBAA"}
!19 = !DILocation(line: 5, column: 5, scope: !7)
!20 = !{!21, !22, i64 16}
!21 = !{!"ident_t", !16, i64 0, !16, i64 4, !16, i64 8, !16, i64 12, !22, i64 16}
!22 = !{!"any pointer", !17, i64 0}
!23 = !DILocation(line: 13, column: 12, scope: !7)
!24 = !DILocation(line: 14, column: 1, scope: !7)
!25 = !DILocation(line: 13, column: 5, scope: !7)
!26 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 6, type: !27, scopeLine: 6, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !34)
!27 = !DISubroutineType(types: !28)
!28 = !{null, !29, !29, !33}
!29 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!30 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !31)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!33 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !10, size: 64)
!34 = !{!35, !36, !37}
!35 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !26, type: !29, flags: DIFlagArtificial)
!36 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !26, type: !29, flags: DIFlagArtificial)
!37 = !DILocalVariable(name: "x", arg: 3, scope: !26, file: !1, line: 3, type: !33)
!38 = !{!22, !22, i64 0}
!39 = !DILocation(line: 0, scope: !26)
!40 = !DILocation(line: 3, column: 9, scope: !26)
!41 = !DILocation(line: 6, column: 5, scope: !26)
!42 = !DILocation(line: 5, column: 5, scope: !26)
!43 = !DILocation(line: 8, column: 9, scope: !44)
!44 = distinct !DILexicalBlock(scope: !26, file: !1, line: 7, column: 9)
!45 = !DILocation(line: 7, column: 28, scope: !44)
!46 = !DILocation(line: 10, column: 9, scope: !47)
!47 = distinct !DILexicalBlock(scope: !26, file: !1, line: 9, column: 9)
!48 = !DILocation(line: 9, column: 28, scope: !47)
!49 = distinct !{!49, !42, !50}
!50 = !DILocation(line: 5, column: 34, scope: !26)
!51 = !DILocation(line: 11, column: 5, scope: !26)
!52 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 6, type: !27, scopeLine: 6, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !53)
!53 = !{!54, !55, !56}
!54 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !52, type: !29, flags: DIFlagArtificial)
!55 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !52, type: !29, flags: DIFlagArtificial)
!56 = !DILocalVariable(name: "x", arg: 3, scope: !52, type: !33, flags: DIFlagArtificial)
!57 = !DILocation(line: 0, scope: !52)
!58 = !DILocation(line: 6, column: 5, scope: !52)
!59 = !{!60}
!60 = !{i64 2, i64 -1, i64 -1, i1 true}
