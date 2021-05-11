; ModuleID = 'integration/dataracebench/DRB125-single-orig-no.c'
source_filename = "integration/dataracebench/DRB125-single-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [63 x i8] c";integration/dataracebench/DRB125-single-orig-no.c;main;31;5;;\00", align 1
@2 = private unnamed_addr constant [63 x i8] c";integration/dataracebench/DRB125-single-orig-no.c;main;29;3;;\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !dbg !7 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %init = alloca i32, align 4
  %local = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4, !tbaa !19
  call void @llvm.dbg.declare(metadata i32* %argc.addr, metadata !15, metadata !DIExpression()), !dbg !23
  store i8** %argv, i8*** %argv.addr, align 8, !tbaa !24
  call void @llvm.dbg.declare(metadata i8*** %argv.addr, metadata !16, metadata !DIExpression()), !dbg !26
  %2 = bitcast i32* %init to i8*, !dbg !27
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #4, !dbg !27
  call void @llvm.dbg.declare(metadata i32* %init, metadata !17, metadata !DIExpression()), !dbg !28
  %3 = bitcast i32* %local to i8*, !dbg !27
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #4, !dbg !27
  call void @llvm.dbg.declare(metadata i32* %local, metadata !18, metadata !DIExpression()), !dbg !29
  %4 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !30
  store i8* getelementptr inbounds ([63 x i8], [63 x i8]* @2, i32 0, i32 0), i8** %4, align 8, !dbg !30, !tbaa !31
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %init), !dbg !30
  %5 = bitcast i32* %local to i8*, !dbg !33
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %5) #4, !dbg !33
  %6 = bitcast i32* %init to i8*, !dbg !33
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %6) #4, !dbg !33
  ret i32 0, !dbg !34
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %init) #3 !dbg !35 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %init.addr = alloca i32*, align 8
  %local = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !24
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !44, metadata !DIExpression()), !dbg !48
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !24
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !45, metadata !DIExpression()), !dbg !48
  store i32* %init, i32** %init.addr, align 8, !tbaa !24
  call void @llvm.dbg.declare(metadata i32** %init.addr, metadata !46, metadata !DIExpression()), !dbg !49
  %2 = load i32*, i32** %init.addr, align 8, !dbg !50, !tbaa !24
  %3 = bitcast i32* %local to i8*, !dbg !50
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #4, !dbg !50
  call void @llvm.dbg.declare(metadata i32* %local, metadata !47, metadata !DIExpression()), !dbg !48
  %4 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !51
  store i8* getelementptr inbounds ([63 x i8], [63 x i8]* @1, i32 0, i32 0), i8** %4, align 8, !dbg !51, !tbaa !31
  %5 = load i32*, i32** %.global_tid..addr, align 8, !dbg !51
  %6 = load i32, i32* %5, align 4, !dbg !51, !tbaa !19
  %7 = call i32 @__kmpc_single(%struct.ident_t* %.kmpc_loc.addr, i32 %6), !dbg !51
  %8 = icmp ne i32 %7, 0, !dbg !51
  br i1 %8, label %omp_if.then, label %omp_if.end, !dbg !51

omp_if.then:                                      ; preds = %entry
  store i32 10, i32* %2, align 4, !dbg !53, !tbaa !19
  call void @__kmpc_end_single(%struct.ident_t* %.kmpc_loc.addr, i32 %6), !dbg !56
  br label %omp_if.end, !dbg !56

omp_if.end:                                       ; preds = %omp_if.then, %entry
  %9 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !57
  store i8* getelementptr inbounds ([63 x i8], [63 x i8]* @1, i32 0, i32 0), i8** %9, align 8, !dbg !57, !tbaa !31
  call void @__kmpc_barrier(%struct.ident_t* %.kmpc_loc.addr, i32 %6), !dbg !57
  %10 = load i32, i32* %2, align 4, !dbg !58, !tbaa !19
  store i32 %10, i32* %local, align 4, !dbg !59, !tbaa !19
  %11 = bitcast i32* %local to i8*, !dbg !60
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %11) #4, !dbg !60
  ret void, !dbg !61
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local void @__kmpc_end_single(%struct.ident_t*, i32)

declare dso_local i32 @__kmpc_single(%struct.ident_t*, i32)

declare dso_local void @__kmpc_barrier(%struct.ident_t*, i32)

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %init) #3 !dbg !62 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %init.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !24
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !64, metadata !DIExpression()), !dbg !67
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !24
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !65, metadata !DIExpression()), !dbg !67
  store i32* %init, i32** %init.addr, align 8, !tbaa !24
  call void @llvm.dbg.declare(metadata i32** %init.addr, metadata !66, metadata !DIExpression()), !dbg !67
  %0 = load i32*, i32** %init.addr, align 8, !dbg !68, !tbaa !24
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !68, !tbaa !24
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !68, !tbaa !24
  %3 = load i32*, i32** %init.addr, align 8, !dbg !68, !tbaa !24
  call void @.omp_outlined._debug__(i32* %1, i32* %2, i32* %3) #4, !dbg !68
  ret void, !dbg !68
}

declare !callback !69 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "integration/dataracebench/DRB125-single-orig-no.c", directory: "/home/brad/Code/OpenRace/tests/data")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.1 "}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 25, type: !8, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !14)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !10, !11}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!14 = !{!15, !16, !17, !18}
!15 = !DILocalVariable(name: "argc", arg: 1, scope: !7, file: !1, line: 25, type: !10)
!16 = !DILocalVariable(name: "argv", arg: 2, scope: !7, file: !1, line: 25, type: !11)
!17 = !DILocalVariable(name: "init", scope: !7, file: !1, line: 27, type: !10)
!18 = !DILocalVariable(name: "local", scope: !7, file: !1, line: 27, type: !10)
!19 = !{!20, !20, i64 0}
!20 = !{!"int", !21, i64 0}
!21 = !{!"omnipotent char", !22, i64 0}
!22 = !{!"Simple C/C++ TBAA"}
!23 = !DILocation(line: 25, column: 15, scope: !7)
!24 = !{!25, !25, i64 0}
!25 = !{!"any pointer", !21, i64 0}
!26 = !DILocation(line: 25, column: 28, scope: !7)
!27 = !DILocation(line: 27, column: 3, scope: !7)
!28 = !DILocation(line: 27, column: 7, scope: !7)
!29 = !DILocation(line: 27, column: 13, scope: !7)
!30 = !DILocation(line: 29, column: 3, scope: !7)
!31 = !{!32, !25, i64 16}
!32 = !{!"ident_t", !20, i64 0, !20, i64 4, !20, i64 8, !20, i64 12, !25, i64 16}
!33 = !DILocation(line: 39, column: 1, scope: !7)
!34 = !DILocation(line: 38, column: 3, scope: !7)
!35 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 30, type: !36, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !43)
!36 = !DISubroutineType(types: !37)
!37 = !{null, !38, !38, !42}
!38 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !39)
!39 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !40)
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!42 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !10, size: 64)
!43 = !{!44, !45, !46, !47}
!44 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !35, type: !38, flags: DIFlagArtificial)
!45 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !35, type: !38, flags: DIFlagArtificial)
!46 = !DILocalVariable(name: "init", arg: 3, scope: !35, file: !1, line: 27, type: !42)
!47 = !DILocalVariable(name: "local", scope: !35, type: !10, flags: DIFlagArtificial)
!48 = !DILocation(line: 0, scope: !35)
!49 = !DILocation(line: 27, column: 7, scope: !35)
!50 = !DILocation(line: 30, column: 3, scope: !35)
!51 = !DILocation(line: 31, column: 5, scope: !52)
!52 = distinct !DILexicalBlock(scope: !35, file: !1, line: 30, column: 3)
!53 = !DILocation(line: 33, column: 10, scope: !54)
!54 = distinct !DILexicalBlock(scope: !55, file: !1, line: 32, column: 5)
!55 = distinct !DILexicalBlock(scope: !52, file: !1, line: 31, column: 5)
!56 = !DILocation(line: 34, column: 5, scope: !54)
!57 = !DILocation(line: 31, column: 23, scope: !55)
!58 = !DILocation(line: 35, column: 13, scope: !52)
!59 = !DILocation(line: 35, column: 11, scope: !52)
!60 = !DILocation(line: 36, column: 3, scope: !52)
!61 = !DILocation(line: 36, column: 3, scope: !35)
!62 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 30, type: !36, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !63)
!63 = !{!64, !65, !66}
!64 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !62, type: !38, flags: DIFlagArtificial)
!65 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !62, type: !38, flags: DIFlagArtificial)
!66 = !DILocalVariable(name: "init", arg: 3, scope: !62, type: !42, flags: DIFlagArtificial)
!67 = !DILocation(line: 0, scope: !62)
!68 = !DILocation(line: 30, column: 3, scope: !62)
!69 = !{!70}
!70 = !{i64 2, i64 -1, i64 -1, i1 true}
