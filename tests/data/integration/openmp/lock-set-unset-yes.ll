; ModuleID = 'integration/openmp/lock-set-unset-yes.c'
source_filename = "integration/openmp/lock-set-unset-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }
%struct.omp_lock_t = type { i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [53 x i8] c";integration/openmp/lock-set-unset-yes.c;main;10;2;;\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main() #0 !dbg !19 {
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
  %2 = bitcast %struct.omp_lock_t* %writelock to i8*, !dbg !27
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %2) #5, !dbg !27
  call void @llvm.dbg.declare(metadata %struct.omp_lock_t* %writelock, metadata !23, metadata !DIExpression()), !dbg !28
  call void @omp_init_lock(%struct.omp_lock_t* %writelock), !dbg !29
  %3 = bitcast i32* %counter to i8*, !dbg !30
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #5, !dbg !30
  call void @llvm.dbg.declare(metadata i32* %counter, metadata !25, metadata !DIExpression()), !dbg !31
  store i32 0, i32* %counter, align 4, !dbg !31, !tbaa !32
  %4 = bitcast i32* %x to i8*, !dbg !36
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #5, !dbg !36
  call void @llvm.dbg.declare(metadata i32* %x, metadata !26, metadata !DIExpression()), !dbg !37
  store i32 1000000, i32* %x, align 4, !dbg !37, !tbaa !32
  %5 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !38
  store i8* getelementptr inbounds ([53 x i8], [53 x i8]* @1, i32 0, i32 0), i8** %5, align 8, !dbg !38, !tbaa !39
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %counter), !dbg !38
  call void @omp_destroy_lock(%struct.omp_lock_t* %writelock), !dbg !42
  %6 = bitcast i32* %x to i8*, !dbg !43
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

declare !dbg !4 dso_local void @omp_init_lock(%struct.omp_lock_t*) #3

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %counter) #4 !dbg !45 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %counter.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !57
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !54, metadata !DIExpression()), !dbg !58
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !57
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !55, metadata !DIExpression()), !dbg !58
  store i32* %counter, i32** %counter.addr, align 8, !tbaa !57
  call void @llvm.dbg.declare(metadata i32** %counter.addr, metadata !56, metadata !DIExpression()), !dbg !59
  %0 = load i32*, i32** %counter.addr, align 8, !dbg !60, !tbaa !57
  %1 = load i32, i32* %0, align 4, !dbg !61, !tbaa !32
  %inc = add nsw i32 %1, 1, !dbg !61
  store i32 %inc, i32* %0, align 4, !dbg !61, !tbaa !32
  ret void, !dbg !63
}

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %counter) #4 !dbg !64 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %counter.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !57
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !66, metadata !DIExpression()), !dbg !69
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !57
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !67, metadata !DIExpression()), !dbg !69
  store i32* %counter, i32** %counter.addr, align 8, !tbaa !57
  call void @llvm.dbg.declare(metadata i32** %counter.addr, metadata !68, metadata !DIExpression()), !dbg !69
  %0 = load i32*, i32** %counter.addr, align 8, !dbg !70, !tbaa !57
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !70, !tbaa !57
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !70, !tbaa !57
  %3 = load i32*, i32** %counter.addr, align 8, !dbg !70, !tbaa !57
  call void @.omp_outlined._debug__(i32* %1, i32* %2, i32* %3) #5, !dbg !70
  ret void, !dbg !70
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare !callback !71 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

declare !dbg !14 dso_local void @omp_destroy_lock(%struct.omp_lock_t*) #3

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!15, !16, !17}
!llvm.ident = !{!18}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.0-4ubuntu1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "integration/openmp/lock-set-unset-yes.c", directory: "/home/tanzir/OpenRace/tests/data")
!2 = !{}
!3 = !{!4, !13, !14}
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
!14 = !DISubprogram(name: "omp_destroy_lock", scope: !5, file: !5, line: 89, type: !6, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!15 = !{i32 7, !"Dwarf Version", i32 4}
!16 = !{i32 2, !"Debug Info Version", i32 3}
!17 = !{i32 1, !"wchar_size", i32 4}
!18 = !{!"clang version 10.0.0-4ubuntu1 "}
!19 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 4, type: !20, scopeLine: 4, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !22)
!20 = !DISubroutineType(types: !21)
!21 = !{!13}
!22 = !{!23, !25, !26}
!23 = !DILocalVariable(name: "writelock", scope: !19, file: !1, line: 5, type: !24)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "omp_lock_t", file: !5, line: 84, baseType: !9)
!25 = !DILocalVariable(name: "counter", scope: !19, file: !1, line: 7, type: !13)
!26 = !DILocalVariable(name: "x", scope: !19, file: !1, line: 9, type: !13)
!27 = !DILocation(line: 5, column: 2, scope: !19)
!28 = !DILocation(line: 5, column: 13, scope: !19)
!29 = !DILocation(line: 6, column: 2, scope: !19)
!30 = !DILocation(line: 7, column: 2, scope: !19)
!31 = !DILocation(line: 7, column: 6, scope: !19)
!32 = !{!33, !33, i64 0}
!33 = !{!"int", !34, i64 0}
!34 = !{!"omnipotent char", !35, i64 0}
!35 = !{!"Simple C/C++ TBAA"}
!36 = !DILocation(line: 9, column: 2, scope: !19)
!37 = !DILocation(line: 9, column: 6, scope: !19)
!38 = !DILocation(line: 10, column: 2, scope: !19)
!39 = !{!40, !41, i64 16}
!40 = !{!"ident_t", !33, i64 0, !33, i64 4, !33, i64 8, !33, i64 12, !41, i64 16}
!41 = !{!"any pointer", !34, i64 0}
!42 = !DILocation(line: 16, column: 2, scope: !19)
!43 = !DILocation(line: 18, column: 1, scope: !19)
!44 = !DILocation(line: 17, column: 2, scope: !19)
!45 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 11, type: !46, scopeLine: 11, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !53)
!46 = !DISubroutineType(types: !47)
!47 = !{null, !48, !48, !52}
!48 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !49)
!49 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !50)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!52 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !13, size: 64)
!53 = !{!54, !55, !56}
!54 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !45, type: !48, flags: DIFlagArtificial)
!55 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !45, type: !48, flags: DIFlagArtificial)
!56 = !DILocalVariable(name: "counter", arg: 3, scope: !45, file: !1, line: 7, type: !52)
!57 = !{!41, !41, i64 0}
!58 = !DILocation(line: 0, scope: !45)
!59 = !DILocation(line: 7, column: 6, scope: !45)
!60 = !DILocation(line: 11, column: 2, scope: !45)
!61 = !DILocation(line: 13, column: 11, scope: !62)
!62 = distinct !DILexicalBlock(scope: !45, file: !1, line: 11, column: 2)
!63 = !DILocation(line: 15, column: 2, scope: !45)
!64 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 11, type: !46, scopeLine: 11, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !65)
!65 = !{!66, !67, !68}
!66 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !64, type: !48, flags: DIFlagArtificial)
!67 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !64, type: !48, flags: DIFlagArtificial)
!68 = !DILocalVariable(name: "counter", arg: 3, scope: !64, type: !52, flags: DIFlagArtificial)
!69 = !DILocation(line: 0, scope: !64)
!70 = !DILocation(line: 11, column: 2, scope: !64)
!71 = !{!72}
!72 = !{i64 2, i64 -1, i64 -1, i1 true}
