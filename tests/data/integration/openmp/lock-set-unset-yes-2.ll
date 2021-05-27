; ModuleID = 'integration/openmp/lock-set-unset-yes-2.c'
source_filename = "integration/openmp/lock-set-unset-yes-2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }
%struct.omp_lock_t = type { i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [55 x i8] c";integration/openmp/lock-set-unset-yes-2.c;main;10;2;;\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main() #0 !dbg !19 {
entry:
  %retval = alloca i32, align 4
  %writelock = alloca %struct.omp_lock_t, align 8
  %counter = alloca i32, align 4
  %another_counter = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32 0, i32* %retval, align 4
  %2 = bitcast %struct.omp_lock_t* %writelock to i8*, !dbg !28
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %2) #5, !dbg !28
  call void @llvm.dbg.declare(metadata %struct.omp_lock_t* %writelock, metadata !24, metadata !DIExpression()), !dbg !29
  %3 = bitcast i32* %counter to i8*, !dbg !30
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #5, !dbg !30
  call void @llvm.dbg.declare(metadata i32* %counter, metadata !26, metadata !DIExpression()), !dbg !31
  store i32 0, i32* %counter, align 4, !dbg !31, !tbaa !32
  %4 = bitcast i32* %another_counter to i8*, !dbg !36
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #5, !dbg !36
  call void @llvm.dbg.declare(metadata i32* %another_counter, metadata !27, metadata !DIExpression()), !dbg !37
  store i32 0, i32* %another_counter, align 4, !dbg !37, !tbaa !32
  %5 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !38
  store i8* getelementptr inbounds ([55 x i8], [55 x i8]* @1, i32 0, i32 0), i8** %5, align 8, !dbg !38, !tbaa !39
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, %struct.omp_lock_t*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %another_counter, %struct.omp_lock_t* %writelock, i32* %counter), !dbg !38
  call void @omp_destroy_lock(%struct.omp_lock_t* %writelock), !dbg !42
  %6 = bitcast i32* %another_counter to i8*, !dbg !43
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %6) #5, !dbg !43
  %7 = bitcast i32* %counter to i8*, !dbg !43
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %7) #5, !dbg !43
  %8 = bitcast %struct.omp_lock_t* %writelock to i8*, !dbg !43
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %8) #5, !dbg !43
  ret i32 0, !dbg !44
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %another_counter, %struct.omp_lock_t* dereferenceable(8) %writelock, i32* dereferenceable(4) %counter) #3 !dbg !45 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %another_counter.addr = alloca i32*, align 8
  %writelock.addr = alloca %struct.omp_lock_t*, align 8
  %counter.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !60
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !55, metadata !DIExpression()), !dbg !61
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !60
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !56, metadata !DIExpression()), !dbg !61
  store i32* %another_counter, i32** %another_counter.addr, align 8, !tbaa !60
  call void @llvm.dbg.declare(metadata i32** %another_counter.addr, metadata !57, metadata !DIExpression()), !dbg !62
  store %struct.omp_lock_t* %writelock, %struct.omp_lock_t** %writelock.addr, align 8, !tbaa !60
  call void @llvm.dbg.declare(metadata %struct.omp_lock_t** %writelock.addr, metadata !58, metadata !DIExpression()), !dbg !63
  store i32* %counter, i32** %counter.addr, align 8, !tbaa !60
  call void @llvm.dbg.declare(metadata i32** %counter.addr, metadata !59, metadata !DIExpression()), !dbg !64
  %0 = load i32*, i32** %another_counter.addr, align 8, !dbg !65, !tbaa !60
  %1 = load %struct.omp_lock_t*, %struct.omp_lock_t** %writelock.addr, align 8, !dbg !65, !tbaa !60
  %2 = load i32*, i32** %counter.addr, align 8, !dbg !65, !tbaa !60
  store i32 15, i32* %0, align 4, !dbg !66, !tbaa !32
  call void @omp_set_lock(%struct.omp_lock_t* %1), !dbg !68
  %3 = load i32, i32* %2, align 4, !dbg !69, !tbaa !32
  %inc = add nsw i32 %3, 1, !dbg !69
  store i32 %inc, i32* %2, align 4, !dbg !69, !tbaa !32
  call void @omp_unset_lock(%struct.omp_lock_t* %1), !dbg !70
  ret void, !dbg !71
}

declare !dbg !4 dso_local void @omp_set_lock(%struct.omp_lock_t*) #4

declare !dbg !13 dso_local void @omp_unset_lock(%struct.omp_lock_t*) #4

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %another_counter, %struct.omp_lock_t* dereferenceable(8) %writelock, i32* dereferenceable(4) %counter) #3 !dbg !72 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %another_counter.addr = alloca i32*, align 8
  %writelock.addr = alloca %struct.omp_lock_t*, align 8
  %counter.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !60
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !74, metadata !DIExpression()), !dbg !79
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !60
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !75, metadata !DIExpression()), !dbg !79
  store i32* %another_counter, i32** %another_counter.addr, align 8, !tbaa !60
  call void @llvm.dbg.declare(metadata i32** %another_counter.addr, metadata !76, metadata !DIExpression()), !dbg !79
  store %struct.omp_lock_t* %writelock, %struct.omp_lock_t** %writelock.addr, align 8, !tbaa !60
  call void @llvm.dbg.declare(metadata %struct.omp_lock_t** %writelock.addr, metadata !77, metadata !DIExpression()), !dbg !79
  store i32* %counter, i32** %counter.addr, align 8, !tbaa !60
  call void @llvm.dbg.declare(metadata i32** %counter.addr, metadata !78, metadata !DIExpression()), !dbg !79
  %0 = load i32*, i32** %another_counter.addr, align 8, !dbg !80, !tbaa !60
  %1 = load %struct.omp_lock_t*, %struct.omp_lock_t** %writelock.addr, align 8, !dbg !80, !tbaa !60
  %2 = load i32*, i32** %counter.addr, align 8, !dbg !80, !tbaa !60
  %3 = load i32*, i32** %.global_tid..addr, align 8, !dbg !80, !tbaa !60
  %4 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !80, !tbaa !60
  %5 = load i32*, i32** %another_counter.addr, align 8, !dbg !80, !tbaa !60
  %6 = load %struct.omp_lock_t*, %struct.omp_lock_t** %writelock.addr, align 8, !dbg !80, !tbaa !60
  %7 = load i32*, i32** %counter.addr, align 8, !dbg !80, !tbaa !60
  call void @.omp_outlined._debug__(i32* %3, i32* %4, i32* %5, %struct.omp_lock_t* %6, i32* %7) #5, !dbg !80
  ret void, !dbg !80
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare !callback !81 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

declare !dbg !14 dso_local void @omp_destroy_lock(%struct.omp_lock_t*) #4

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!15, !16, !17}
!llvm.ident = !{!18}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.0-4ubuntu1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "integration/openmp/lock-set-unset-yes-2.c", directory: "/home/tanzir/OpenRace/tests/data")
!2 = !{}
!3 = !{!4, !13, !14}
!4 = !DISubprogram(name: "omp_set_lock", scope: !5, file: !5, line: 87, type: !6, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!5 = !DIFile(filename: "/usr/lib/llvm-10/lib/clang/10.0.0/include/omp.h", directory: "")
!6 = !DISubroutineType(types: !7)
!7 = !{null, !8}
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "omp_lock_t", file: !5, line: 82, size: 64, elements: !10)
!10 = !{!11}
!11 = !DIDerivedType(tag: DW_TAG_member, name: "_lk", scope: !9, file: !5, line: 83, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!13 = !DISubprogram(name: "omp_unset_lock", scope: !5, file: !5, line: 88, type: !6, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!14 = !DISubprogram(name: "omp_destroy_lock", scope: !5, file: !5, line: 89, type: !6, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!15 = !{i32 7, !"Dwarf Version", i32 4}
!16 = !{i32 2, !"Debug Info Version", i32 3}
!17 = !{i32 1, !"wchar_size", i32 4}
!18 = !{!"clang version 10.0.0-4ubuntu1 "}
!19 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 4, type: !20, scopeLine: 4, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !23)
!20 = !DISubroutineType(types: !21)
!21 = !{!22}
!22 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!23 = !{!24, !26, !27}
!24 = !DILocalVariable(name: "writelock", scope: !19, file: !1, line: 5, type: !25)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "omp_lock_t", file: !5, line: 84, baseType: !9)
!26 = !DILocalVariable(name: "counter", scope: !19, file: !1, line: 7, type: !22)
!27 = !DILocalVariable(name: "another_counter", scope: !19, file: !1, line: 8, type: !22)
!28 = !DILocation(line: 5, column: 2, scope: !19)
!29 = !DILocation(line: 5, column: 13, scope: !19)
!30 = !DILocation(line: 7, column: 2, scope: !19)
!31 = !DILocation(line: 7, column: 6, scope: !19)
!32 = !{!33, !33, i64 0}
!33 = !{!"int", !34, i64 0}
!34 = !{!"omnipotent char", !35, i64 0}
!35 = !{!"Simple C/C++ TBAA"}
!36 = !DILocation(line: 8, column: 2, scope: !19)
!37 = !DILocation(line: 8, column: 6, scope: !19)
!38 = !DILocation(line: 10, column: 2, scope: !19)
!39 = !{!40, !41, i64 16}
!40 = !{!"ident_t", !33, i64 0, !33, i64 4, !33, i64 8, !33, i64 12, !41, i64 16}
!41 = !{!"any pointer", !34, i64 0}
!42 = !DILocation(line: 17, column: 2, scope: !19)
!43 = !DILocation(line: 19, column: 1, scope: !19)
!44 = !DILocation(line: 18, column: 2, scope: !19)
!45 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 11, type: !46, scopeLine: 11, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !54)
!46 = !DISubroutineType(types: !47)
!47 = !{null, !48, !48, !52, !53, !52}
!48 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !49)
!49 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !50)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !22)
!52 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !22, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !25, size: 64)
!54 = !{!55, !56, !57, !58, !59}
!55 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !45, type: !48, flags: DIFlagArtificial)
!56 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !45, type: !48, flags: DIFlagArtificial)
!57 = !DILocalVariable(name: "another_counter", arg: 3, scope: !45, file: !1, line: 8, type: !52)
!58 = !DILocalVariable(name: "writelock", arg: 4, scope: !45, file: !1, line: 5, type: !53)
!59 = !DILocalVariable(name: "counter", arg: 5, scope: !45, file: !1, line: 7, type: !52)
!60 = !{!41, !41, i64 0}
!61 = !DILocation(line: 0, scope: !45)
!62 = !DILocation(line: 8, column: 6, scope: !45)
!63 = !DILocation(line: 5, column: 13, scope: !45)
!64 = !DILocation(line: 7, column: 6, scope: !45)
!65 = !DILocation(line: 11, column: 2, scope: !45)
!66 = !DILocation(line: 12, column: 22, scope: !67)
!67 = distinct !DILexicalBlock(scope: !45, file: !1, line: 11, column: 2)
!68 = !DILocation(line: 13, column: 3, scope: !67)
!69 = !DILocation(line: 14, column: 11, scope: !67)
!70 = !DILocation(line: 15, column: 3, scope: !67)
!71 = !DILocation(line: 16, column: 2, scope: !45)
!72 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 11, type: !46, scopeLine: 11, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !73)
!73 = !{!74, !75, !76, !77, !78}
!74 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !72, type: !48, flags: DIFlagArtificial)
!75 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !72, type: !48, flags: DIFlagArtificial)
!76 = !DILocalVariable(name: "another_counter", arg: 3, scope: !72, type: !52, flags: DIFlagArtificial)
!77 = !DILocalVariable(name: "writelock", arg: 4, scope: !72, type: !53, flags: DIFlagArtificial)
!78 = !DILocalVariable(name: "counter", arg: 5, scope: !72, type: !52, flags: DIFlagArtificial)
!79 = !DILocation(line: 0, scope: !72)
!80 = !DILocation(line: 11, column: 2, scope: !72)
!81 = !{!82}
!82 = !{i64 2, i64 -1, i64 -1, i1 true}
