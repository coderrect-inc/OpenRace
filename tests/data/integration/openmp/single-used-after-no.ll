; ModuleID = 'integration/openmp/single-used-after-no.c'
source_filename = "integration/openmp/single-used-after-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [54 x i8] c";integration/openmp/single-used-after-no.c;main;9;1;;\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"init=%d\0A\00", align 1
@2 = private unnamed_addr constant [54 x i8] c";integration/openmp/single-used-after-no.c;main;7;1;;\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main() #0 !dbg !7 {
entry:
  %retval = alloca i32, align 4
  %x = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32 0, i32* %retval, align 4
  %2 = bitcast i32* %x to i8*, !dbg !13
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #5, !dbg !13
  call void @llvm.dbg.declare(metadata i32* %x, metadata !12, metadata !DIExpression()), !dbg !14
  store i32 0, i32* %x, align 4, !dbg !14, !tbaa !15
  %3 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !19
  store i8* getelementptr inbounds ([54 x i8], [54 x i8]* @2, i32 0, i32 0), i8** %3, align 8, !dbg !19, !tbaa !20
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %x), !dbg !19
  %4 = bitcast i32* %x to i8*, !dbg !23
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %4) #5, !dbg !23
  ret i32 0, !dbg !24
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %x) #3 !dbg !25 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %x.addr = alloca i32*, align 8
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !37
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !34, metadata !DIExpression()), !dbg !38
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !37
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !35, metadata !DIExpression()), !dbg !38
  store i32* %x, i32** %x.addr, align 8, !tbaa !37
  call void @llvm.dbg.declare(metadata i32** %x.addr, metadata !36, metadata !DIExpression()), !dbg !39
  %2 = load i32*, i32** %x.addr, align 8, !dbg !40, !tbaa !37
  %3 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !41
  store i8* getelementptr inbounds ([54 x i8], [54 x i8]* @1, i32 0, i32 0), i8** %3, align 8, !dbg !41, !tbaa !20
  %4 = load i32*, i32** %.global_tid..addr, align 8, !dbg !41
  %5 = load i32, i32* %4, align 4, !dbg !41, !tbaa !15
  %6 = call i32 @__kmpc_single(%struct.ident_t* %.kmpc_loc.addr, i32 %5), !dbg !41
  %7 = icmp ne i32 %6, 0, !dbg !41
  br i1 %7, label %omp_if.then, label %omp_if.end, !dbg !41

omp_if.then:                                      ; preds = %entry
  store i32 1, i32* %2, align 4, !dbg !43, !tbaa !15
  call void @__kmpc_end_single(%struct.ident_t* %.kmpc_loc.addr, i32 %5), !dbg !46
  br label %omp_if.end, !dbg !46

omp_if.end:                                       ; preds = %omp_if.then, %entry
  %8 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !47
  store i8* getelementptr inbounds ([54 x i8], [54 x i8]* @1, i32 0, i32 0), i8** %8, align 8, !dbg !47, !tbaa !20
  call void @__kmpc_barrier(%struct.ident_t* %.kmpc_loc.addr, i32 %5), !dbg !47
  %9 = load i32, i32* %2, align 4, !dbg !48, !tbaa !15
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0), i32 %9), !dbg !49
  ret void, !dbg !50
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local void @__kmpc_end_single(%struct.ident_t*, i32)

declare dso_local i32 @__kmpc_single(%struct.ident_t*, i32)

declare dso_local void @__kmpc_barrier(%struct.ident_t*, i32)

declare dso_local i32 @printf(i8*, ...) #4

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %x) #3 !dbg !51 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %x.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !37
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !53, metadata !DIExpression()), !dbg !56
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !37
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !54, metadata !DIExpression()), !dbg !56
  store i32* %x, i32** %x.addr, align 8, !tbaa !37
  call void @llvm.dbg.declare(metadata i32** %x.addr, metadata !55, metadata !DIExpression()), !dbg !56
  %0 = load i32*, i32** %x.addr, align 8, !dbg !57, !tbaa !37
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !57, !tbaa !37
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !57, !tbaa !37
  %3 = load i32*, i32** %x.addr, align 8, !dbg !57, !tbaa !37
  call void @.omp_outlined._debug__(i32* %1, i32* %2, i32* %3) #5, !dbg !57
  ret void, !dbg !57
}

declare !callback !58 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "integration/openmp/single-used-after-no.c", directory: "/home/addisoncrump/git/OpenRace/tests/data")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.1 "}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 3, type: !8, scopeLine: 4, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !11)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !{!12}
!12 = !DILocalVariable(name: "x", scope: !7, file: !1, line: 5, type: !10)
!13 = !DILocation(line: 5, column: 3, scope: !7)
!14 = !DILocation(line: 5, column: 7, scope: !7)
!15 = !{!16, !16, i64 0}
!16 = !{!"int", !17, i64 0}
!17 = !{!"omnipotent char", !18, i64 0}
!18 = !{!"Simple C/C++ TBAA"}
!19 = !DILocation(line: 7, column: 1, scope: !7)
!20 = !{!21, !22, i64 16}
!21 = !{!"ident_t", !16, i64 0, !16, i64 4, !16, i64 8, !16, i64 12, !22, i64 16}
!22 = !{!"any pointer", !17, i64 0}
!23 = !DILocation(line: 18, column: 1, scope: !7)
!24 = !DILocation(line: 17, column: 3, scope: !7)
!25 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 8, type: !26, scopeLine: 8, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !33)
!26 = !DISubroutineType(types: !27)
!27 = !{null, !28, !28, !32}
!28 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !29)
!29 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !30)
!30 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !31, size: 64)
!31 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!32 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !10, size: 64)
!33 = !{!34, !35, !36}
!34 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !25, type: !28, flags: DIFlagArtificial)
!35 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !25, type: !28, flags: DIFlagArtificial)
!36 = !DILocalVariable(name: "x", arg: 3, scope: !25, file: !1, line: 5, type: !32)
!37 = !{!22, !22, i64 0}
!38 = !DILocation(line: 0, scope: !25)
!39 = !DILocation(line: 5, column: 7, scope: !25)
!40 = !DILocation(line: 8, column: 3, scope: !25)
!41 = !DILocation(line: 9, column: 1, scope: !42)
!42 = distinct !DILexicalBlock(scope: !25, file: !1, line: 8, column: 3)
!43 = !DILocation(line: 11, column: 9, scope: !44)
!44 = distinct !DILexicalBlock(scope: !45, file: !1, line: 10, column: 5)
!45 = distinct !DILexicalBlock(scope: !42, file: !1, line: 9, column: 1)
!46 = !DILocation(line: 12, column: 5, scope: !44)
!47 = !DILocation(line: 9, column: 19, scope: !45)
!48 = !DILocation(line: 14, column: 25, scope: !42)
!49 = !DILocation(line: 14, column: 5, scope: !42)
!50 = !DILocation(line: 15, column: 3, scope: !25)
!51 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 8, type: !26, scopeLine: 8, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !52)
!52 = !{!53, !54, !55}
!53 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !51, type: !28, flags: DIFlagArtificial)
!54 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !51, type: !28, flags: DIFlagArtificial)
!55 = !DILocalVariable(name: "x", arg: 3, scope: !51, type: !32, flags: DIFlagArtificial)
!56 = !DILocation(line: 0, scope: !51)
!57 = !DILocation(line: 8, column: 3, scope: !51)
!58 = !{!59}
!59 = !{i64 2, i64 -1, i64 -1, i1 true}
