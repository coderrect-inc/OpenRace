; ModuleID = 'integration/openmp/lock-set-unset-no.c'
source_filename = "integration/openmp/lock-set-unset-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }
%struct.omp_lock_t = type { i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [52 x i8] c";integration/openmp/lock-set-unset-no.c;main;10;2;;\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main() #0 !dbg !21 {
entry:
  %retval = alloca i32, align 4
  %writelock = alloca %struct.omp_lock_t, align 8
  %counter = alloca i32, align 4
  %x = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32 0, i32* %retval, align 4
  %2 = bitcast %struct.omp_lock_t* %writelock to i8*, !dbg !29
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %2) #5, !dbg !29
  call void @llvm.dbg.declare(metadata %struct.omp_lock_t* %writelock, metadata !25, metadata !DIExpression()), !dbg !30
  call void @omp_init_lock(%struct.omp_lock_t* %writelock), !dbg !31
  %3 = bitcast i32* %counter to i8*, !dbg !32
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #5, !dbg !32
  call void @llvm.dbg.declare(metadata i32* %counter, metadata !27, metadata !DIExpression()), !dbg !33
  store i32 0, i32* %counter, align 4, !dbg !33, !tbaa !34
  %4 = bitcast i32* %x to i8*, !dbg !38
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #5, !dbg !38
  call void @llvm.dbg.declare(metadata i32* %x, metadata !28, metadata !DIExpression()), !dbg !39
  store i32 1000000, i32* %x, align 4, !dbg !39, !tbaa !34
  %5 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !40
  store i8* getelementptr inbounds ([52 x i8], [52 x i8]* @1, i32 0, i32 0), i8** %5, align 8, !dbg !40, !tbaa !41
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 2, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, %struct.omp_lock_t*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), %struct.omp_lock_t* %writelock, i32* %counter), !dbg !40
  call void @omp_destroy_lock(%struct.omp_lock_t* %writelock), !dbg !44
  %6 = bitcast i32* %x to i8*, !dbg !45
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %6) #5, !dbg !45
  %7 = bitcast i32* %counter to i8*, !dbg !45
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %7) #5, !dbg !45
  %8 = bitcast %struct.omp_lock_t* %writelock to i8*, !dbg !45
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %8) #5, !dbg !45
  ret i32 0, !dbg !46
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

declare !dbg !4 dso_local void @omp_init_lock(%struct.omp_lock_t*) #3

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., %struct.omp_lock_t* dereferenceable(8) %writelock, i32* dereferenceable(4) %counter) #4 !dbg !47 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %writelock.addr = alloca %struct.omp_lock_t*, align 8
  %counter.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !61
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !57, metadata !DIExpression()), !dbg !62
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !61
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !58, metadata !DIExpression()), !dbg !62
  store %struct.omp_lock_t* %writelock, %struct.omp_lock_t** %writelock.addr, align 8, !tbaa !61
  call void @llvm.dbg.declare(metadata %struct.omp_lock_t** %writelock.addr, metadata !59, metadata !DIExpression()), !dbg !63
  store i32* %counter, i32** %counter.addr, align 8, !tbaa !61
  call void @llvm.dbg.declare(metadata i32** %counter.addr, metadata !60, metadata !DIExpression()), !dbg !64
  %0 = load %struct.omp_lock_t*, %struct.omp_lock_t** %writelock.addr, align 8, !dbg !65, !tbaa !61
  %1 = load i32*, i32** %counter.addr, align 8, !dbg !65, !tbaa !61
  call void @omp_set_lock(%struct.omp_lock_t* %0), !dbg !66
  %2 = load i32, i32* %1, align 4, !dbg !68, !tbaa !34
  %inc = add nsw i32 %2, 1, !dbg !68
  store i32 %inc, i32* %1, align 4, !dbg !68, !tbaa !34
  call void @omp_unset_lock(%struct.omp_lock_t* %0), !dbg !69
  ret void, !dbg !70
}

declare !dbg !14 dso_local void @omp_set_lock(%struct.omp_lock_t*) #3

declare !dbg !15 dso_local void @omp_unset_lock(%struct.omp_lock_t*) #3

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., %struct.omp_lock_t* dereferenceable(8) %writelock, i32* dereferenceable(4) %counter) #4 !dbg !71 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %writelock.addr = alloca %struct.omp_lock_t*, align 8
  %counter.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !61
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !73, metadata !DIExpression()), !dbg !77
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !61
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !74, metadata !DIExpression()), !dbg !77
  store %struct.omp_lock_t* %writelock, %struct.omp_lock_t** %writelock.addr, align 8, !tbaa !61
  call void @llvm.dbg.declare(metadata %struct.omp_lock_t** %writelock.addr, metadata !75, metadata !DIExpression()), !dbg !77
  store i32* %counter, i32** %counter.addr, align 8, !tbaa !61
  call void @llvm.dbg.declare(metadata i32** %counter.addr, metadata !76, metadata !DIExpression()), !dbg !77
  %0 = load %struct.omp_lock_t*, %struct.omp_lock_t** %writelock.addr, align 8, !dbg !78, !tbaa !61
  %1 = load i32*, i32** %counter.addr, align 8, !dbg !78, !tbaa !61
  %2 = load i32*, i32** %.global_tid..addr, align 8, !dbg !78, !tbaa !61
  %3 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !78, !tbaa !61
  %4 = load %struct.omp_lock_t*, %struct.omp_lock_t** %writelock.addr, align 8, !dbg !78, !tbaa !61
  %5 = load i32*, i32** %counter.addr, align 8, !dbg !78, !tbaa !61
  call void @.omp_outlined._debug__(i32* %2, i32* %3, %struct.omp_lock_t* %4, i32* %5) #5, !dbg !78
  ret void, !dbg !78
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare !callback !79 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

declare !dbg !16 dso_local void @omp_destroy_lock(%struct.omp_lock_t*) #3

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!17, !18, !19}
!llvm.ident = !{!20}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.0-4ubuntu1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "integration/openmp/lock-set-unset-no.c", directory: "/home/tanzir/OpenRace/tests/data")
!2 = !{}
!3 = !{!4, !13, !14, !15, !16}
!4 = !DISubprogram(name: "omp_init_lock", scope: !5, file: !5, line: 86, type: !6, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!5 = !DIFile(filename: "/usr/lib/llvm-10/lib/clang/10.0.0/include/omp.h", directory: "")
!6 = !DISubroutineType(types: !7)
!7 = !{null, !8}
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "omp_lock_t", file: !5, line: 82, size: 64, elements: !10)
!10 = !{!11}
!11 = !DIDerivedType(tag: DW_TAG_member, name: "_lk", scope: !9, file: !5, line: 83, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !DISubprogram(name: "omp_set_lock", scope: !5, file: !5, line: 87, type: !6, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!15 = !DISubprogram(name: "omp_unset_lock", scope: !5, file: !5, line: 88, type: !6, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!16 = !DISubprogram(name: "omp_destroy_lock", scope: !5, file: !5, line: 89, type: !6, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!17 = !{i32 7, !"Dwarf Version", i32 4}
!18 = !{i32 2, !"Debug Info Version", i32 3}
!19 = !{i32 1, !"wchar_size", i32 4}
!20 = !{!"clang version 10.0.0-4ubuntu1 "}
!21 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 4, type: !22, scopeLine: 4, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !24)
!22 = !DISubroutineType(types: !23)
!23 = !{!13}
!24 = !{!25, !27, !28}
!25 = !DILocalVariable(name: "writelock", scope: !21, file: !1, line: 5, type: !26)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "omp_lock_t", file: !5, line: 84, baseType: !9)
!27 = !DILocalVariable(name: "counter", scope: !21, file: !1, line: 7, type: !13)
!28 = !DILocalVariable(name: "x", scope: !21, file: !1, line: 9, type: !13)
!29 = !DILocation(line: 5, column: 2, scope: !21)
!30 = !DILocation(line: 5, column: 13, scope: !21)
!31 = !DILocation(line: 6, column: 2, scope: !21)
!32 = !DILocation(line: 7, column: 2, scope: !21)
!33 = !DILocation(line: 7, column: 6, scope: !21)
!34 = !{!35, !35, i64 0}
!35 = !{!"int", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !DILocation(line: 9, column: 2, scope: !21)
!39 = !DILocation(line: 9, column: 6, scope: !21)
!40 = !DILocation(line: 10, column: 2, scope: !21)
!41 = !{!42, !43, i64 16}
!42 = !{!"ident_t", !35, i64 0, !35, i64 4, !35, i64 8, !35, i64 12, !43, i64 16}
!43 = !{!"any pointer", !36, i64 0}
!44 = !DILocation(line: 16, column: 2, scope: !21)
!45 = !DILocation(line: 18, column: 1, scope: !21)
!46 = !DILocation(line: 17, column: 2, scope: !21)
!47 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 11, type: !48, scopeLine: 11, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !56)
!48 = !DISubroutineType(types: !49)
!49 = !{null, !50, !50, !54, !55}
!50 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !51)
!51 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !52)
!52 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !53, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!54 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !26, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !13, size: 64)
!56 = !{!57, !58, !59, !60}
!57 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !47, type: !50, flags: DIFlagArtificial)
!58 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !47, type: !50, flags: DIFlagArtificial)
!59 = !DILocalVariable(name: "writelock", arg: 3, scope: !47, file: !1, line: 5, type: !54)
!60 = !DILocalVariable(name: "counter", arg: 4, scope: !47, file: !1, line: 7, type: !55)
!61 = !{!43, !43, i64 0}
!62 = !DILocation(line: 0, scope: !47)
!63 = !DILocation(line: 5, column: 13, scope: !47)
!64 = !DILocation(line: 7, column: 6, scope: !47)
!65 = !DILocation(line: 11, column: 2, scope: !47)
!66 = !DILocation(line: 12, column: 6, scope: !67)
!67 = distinct !DILexicalBlock(scope: !47, file: !1, line: 11, column: 2)
!68 = !DILocation(line: 13, column: 11, scope: !67)
!69 = !DILocation(line: 14, column: 3, scope: !67)
!70 = !DILocation(line: 15, column: 2, scope: !47)
!71 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 11, type: !48, scopeLine: 11, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !72)
!72 = !{!73, !74, !75, !76}
!73 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !71, type: !50, flags: DIFlagArtificial)
!74 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !71, type: !50, flags: DIFlagArtificial)
!75 = !DILocalVariable(name: "writelock", arg: 3, scope: !71, type: !54, flags: DIFlagArtificial)
!76 = !DILocalVariable(name: "counter", arg: 4, scope: !71, type: !55, flags: DIFlagArtificial)
!77 = !DILocation(line: 0, scope: !71)
!78 = !DILocation(line: 11, column: 2, scope: !71)
!79 = !{!80}
!80 = !{i64 2, i64 -1, i64 -1, i1 true}
