; ModuleID = 'integration/dataracebench/DRB103-master-orig-no.c'
source_filename = "integration/dataracebench/DRB103-master-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [63 x i8] c";integration/dataracebench/DRB103-master-orig-no.c;main;53;1;;\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Number of Threads requested = %i\0A\00", align 1
@2 = private unnamed_addr constant [63 x i8] c";integration/dataracebench/DRB103-master-orig-no.c;main;51;1;;\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main() #0 !dbg !13 {
entry:
  %retval = alloca i32, align 4
  %k = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32 0, i32* %retval, align 4
  %2 = bitcast i32* %k to i8*, !dbg !16
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #5, !dbg !16
  call void @llvm.dbg.declare(metadata i32* %k, metadata !15, metadata !DIExpression()), !dbg !17
  %3 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !18
  store i8* getelementptr inbounds ([63 x i8], [63 x i8]* @2, i32 0, i32 0), i8** %3, align 8, !dbg !18, !tbaa !19
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %k), !dbg !18
  %4 = bitcast i32* %k to i8*, !dbg !25
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %4) #5, !dbg !25
  ret i32 0, !dbg !26
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %k) #3 !dbg !27 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %k.addr = alloca i32*, align 8
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !39
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !36, metadata !DIExpression()), !dbg !40
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !39
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !37, metadata !DIExpression()), !dbg !40
  store i32* %k, i32** %k.addr, align 8, !tbaa !39
  call void @llvm.dbg.declare(metadata i32** %k.addr, metadata !38, metadata !DIExpression()), !dbg !41
  %2 = load i32*, i32** %k.addr, align 8, !dbg !42, !tbaa !39
  %3 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !43
  store i8* getelementptr inbounds ([63 x i8], [63 x i8]* @1, i32 0, i32 0), i8** %3, align 8, !dbg !43, !tbaa !19
  %4 = load i32*, i32** %.global_tid..addr, align 8, !dbg !43
  %5 = load i32, i32* %4, align 4, !dbg !43, !tbaa !45
  %6 = call i32 @__kmpc_master(%struct.ident_t* %.kmpc_loc.addr, i32 %5), !dbg !43
  %7 = icmp ne i32 %6, 0, !dbg !43
  br i1 %7, label %omp_if.then, label %omp_if.end, !dbg !43

omp_if.then:                                      ; preds = %entry
  %call = call i32 @omp_get_num_threads(), !dbg !46
  store i32 %call, i32* %2, align 4, !dbg !49, !tbaa !45
  %8 = load i32, i32* %2, align 4, !dbg !50, !tbaa !45
  %call1 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %8), !dbg !51
  call void @__kmpc_end_master(%struct.ident_t* %.kmpc_loc.addr, i32 %5), !dbg !52
  br label %omp_if.end, !dbg !52

omp_if.end:                                       ; preds = %omp_if.then, %entry
  ret void, !dbg !53
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local void @__kmpc_end_master(%struct.ident_t*, i32)

declare dso_local i32 @__kmpc_master(%struct.ident_t*, i32)

declare !dbg !4 dso_local i32 @omp_get_num_threads() #4

declare dso_local i32 @printf(i8*, ...) #4

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %k) #3 !dbg !54 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %k.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !39
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !56, metadata !DIExpression()), !dbg !59
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !39
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !57, metadata !DIExpression()), !dbg !59
  store i32* %k, i32** %k.addr, align 8, !tbaa !39
  call void @llvm.dbg.declare(metadata i32** %k.addr, metadata !58, metadata !DIExpression()), !dbg !59
  %0 = load i32*, i32** %k.addr, align 8, !dbg !60, !tbaa !39
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !60, !tbaa !39
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !60, !tbaa !39
  %3 = load i32*, i32** %k.addr, align 8, !dbg !60, !tbaa !39
  call void @.omp_outlined._debug__(i32* %1, i32* %2, i32* %3) #5, !dbg !60
  ret void, !dbg !60
}

declare !callback !61 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

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
!1 = !DIFile(filename: "integration/dataracebench/DRB103-master-orig-no.c", directory: "/home/brad/Code/OpenRace/tests/data")
!2 = !{}
!3 = !{!4}
!4 = !DISubprogram(name: "omp_get_num_threads", scope: !5, file: !5, line: 64, type: !6, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!5 = !DIFile(filename: "/usr/include/omp.h", directory: "")
!6 = !DISubroutineType(types: !7)
!7 = !{!8}
!8 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!9 = !{i32 7, !"Dwarf Version", i32 4}
!10 = !{i32 2, !"Debug Info Version", i32 3}
!11 = !{i32 1, !"wchar_size", i32 4}
!12 = !{!"clang version 10.0.1 "}
!13 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 47, type: !6, scopeLine: 48, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !14)
!14 = !{!15}
!15 = !DILocalVariable(name: "k", scope: !13, file: !1, line: 49, type: !8)
!16 = !DILocation(line: 49, column: 3, scope: !13)
!17 = !DILocation(line: 49, column: 7, scope: !13)
!18 = !DILocation(line: 51, column: 1, scope: !13)
!19 = !{!20, !24, i64 16}
!20 = !{!"ident_t", !21, i64 0, !21, i64 4, !21, i64 8, !21, i64 12, !24, i64 16}
!21 = !{!"int", !22, i64 0}
!22 = !{!"omnipotent char", !23, i64 0}
!23 = !{!"Simple C/C++ TBAA"}
!24 = !{!"any pointer", !22, i64 0}
!25 = !DILocation(line: 60, column: 1, scope: !13)
!26 = !DILocation(line: 59, column: 3, scope: !13)
!27 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 52, type: !28, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !35)
!28 = !DISubroutineType(types: !29)
!29 = !{null, !30, !30, !34}
!30 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !31)
!31 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !32)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!34 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !8, size: 64)
!35 = !{!36, !37, !38}
!36 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !27, type: !30, flags: DIFlagArtificial)
!37 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !27, type: !30, flags: DIFlagArtificial)
!38 = !DILocalVariable(name: "k", arg: 3, scope: !27, file: !1, line: 49, type: !34)
!39 = !{!24, !24, i64 0}
!40 = !DILocation(line: 0, scope: !27)
!41 = !DILocation(line: 49, column: 7, scope: !27)
!42 = !DILocation(line: 52, column: 3, scope: !27)
!43 = !DILocation(line: 53, column: 1, scope: !44)
!44 = distinct !DILexicalBlock(scope: !27, file: !1, line: 52, column: 3)
!45 = !{!21, !21, i64 0}
!46 = !DILocation(line: 55, column: 11, scope: !47)
!47 = distinct !DILexicalBlock(scope: !48, file: !1, line: 54, column: 5)
!48 = distinct !DILexicalBlock(scope: !44, file: !1, line: 53, column: 1)
!49 = !DILocation(line: 55, column: 9, scope: !47)
!50 = !DILocation(line: 56, column: 52, scope: !47)
!51 = !DILocation(line: 56, column: 7, scope: !47)
!52 = !DILocation(line: 57, column: 5, scope: !47)
!53 = !DILocation(line: 58, column: 3, scope: !27)
!54 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 52, type: !28, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !55)
!55 = !{!56, !57, !58}
!56 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !54, type: !30, flags: DIFlagArtificial)
!57 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !54, type: !30, flags: DIFlagArtificial)
!58 = !DILocalVariable(name: "k", arg: 3, scope: !54, type: !34, flags: DIFlagArtificial)
!59 = !DILocation(line: 0, scope: !54)
!60 = !DILocation(line: 52, column: 3, scope: !54)
!61 = !{!62}
!62 = !{i64 2, i64 -1, i64 -1, i1 true}
