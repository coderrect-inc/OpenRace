; ModuleID = 'integration/dataracebench/DRB069-sectionslock1-orig-no.c'
source_filename = "integration/dataracebench/DRB069-sectionslock1-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }
%struct.omp_lock_t = type { i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 1026, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [70 x i8] c";integration/dataracebench/DRB069-sectionslock1-orig-no.c;main;58;1;;\00", align 1
@2 = private unnamed_addr constant [71 x i8] c";integration/dataracebench/DRB069-sectionslock1-orig-no.c;main;58;30;;\00", align 1
@3 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"i==3\00", align 1
@.str.2 = private unnamed_addr constant [57 x i8] c"integration/dataracebench/DRB069-sectionslock1-orig-no.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [11 x i8] c"int main()\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main() #0 !dbg !20 {
entry:
  %retval = alloca i32, align 4
  %lck = alloca %struct.omp_lock_t, align 8
  %i = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32 0, i32* %retval, align 4
  %2 = bitcast %struct.omp_lock_t* %lck to i8*, !dbg !28
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %2) #6, !dbg !28
  call void @llvm.dbg.declare(metadata %struct.omp_lock_t* %lck, metadata !25, metadata !DIExpression()), !dbg !29
  %3 = bitcast i32* %i to i8*, !dbg !30
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #6, !dbg !30
  call void @llvm.dbg.declare(metadata i32* %i, metadata !27, metadata !DIExpression()), !dbg !31
  store i32 0, i32* %i, align 4, !dbg !31, !tbaa !32
  call void @omp_init_lock(%struct.omp_lock_t* %lck), !dbg !36
  %4 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !37
  store i8* getelementptr inbounds ([70 x i8], [70 x i8]* @1, i32 0, i32 0), i8** %4, align 8, !dbg !37, !tbaa !38
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 2, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, %struct.omp_lock_t*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), %struct.omp_lock_t* %lck, i32* %i), !dbg !37
  call void @omp_destroy_lock(%struct.omp_lock_t* %lck), !dbg !41
  %5 = load i32, i32* %i, align 4, !dbg !42, !tbaa !32
  %cmp = icmp eq i32 %5, 3, !dbg !42
  br i1 %cmp, label %if.then, label %if.else, !dbg !45

if.then:                                          ; preds = %entry
  br label %if.end, !dbg !45

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.2, i64 0, i64 0), i32 75, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #7, !dbg !42
  unreachable, !dbg !42

if.end:                                           ; preds = %if.then
  %6 = bitcast i32* %i to i8*, !dbg !46
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %6) #6, !dbg !46
  %7 = bitcast %struct.omp_lock_t* %lck to i8*, !dbg !46
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %7) #6, !dbg !46
  ret i32 0, !dbg !47
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

declare !dbg !4 dso_local void @omp_init_lock(%struct.omp_lock_t*) #3

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., %struct.omp_lock_t* dereferenceable(8) %lck, i32* dereferenceable(4) %i) #4 !dbg !48 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %lck.addr = alloca %struct.omp_lock_t*, align 8
  %i.addr = alloca i32*, align 8
  %.omp.sections.lb. = alloca i32, align 4
  %.omp.sections.ub. = alloca i32, align 4
  %.omp.sections.st. = alloca i32, align 4
  %.omp.sections.il. = alloca i32, align 4
  %.omp.sections.iv. = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !62
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !58, metadata !DIExpression()), !dbg !63
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !62
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !59, metadata !DIExpression()), !dbg !63
  store %struct.omp_lock_t* %lck, %struct.omp_lock_t** %lck.addr, align 8, !tbaa !62
  call void @llvm.dbg.declare(metadata %struct.omp_lock_t** %lck.addr, metadata !60, metadata !DIExpression()), !dbg !64
  store i32* %i, i32** %i.addr, align 8, !tbaa !62
  call void @llvm.dbg.declare(metadata i32** %i.addr, metadata !61, metadata !DIExpression()), !dbg !65
  %2 = load %struct.omp_lock_t*, %struct.omp_lock_t** %lck.addr, align 8, !dbg !66, !tbaa !62
  %3 = load i32*, i32** %i.addr, align 8, !dbg !66, !tbaa !62
  store i32 0, i32* %.omp.sections.lb., align 4, !dbg !66, !tbaa !32
  store i32 1, i32* %.omp.sections.ub., align 4, !dbg !66, !tbaa !32
  store i32 1, i32* %.omp.sections.st., align 4, !dbg !66, !tbaa !32
  store i32 0, i32* %.omp.sections.il., align 4, !dbg !66, !tbaa !32
  %4 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !66
  store i8* getelementptr inbounds ([70 x i8], [70 x i8]* @1, i32 0, i32 0), i8** %4, align 8, !dbg !66, !tbaa !38
  %5 = load i32*, i32** %.global_tid..addr, align 8, !dbg !66
  %6 = load i32, i32* %5, align 4, !dbg !66, !tbaa !32
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %6, i32 34, i32* %.omp.sections.il., i32* %.omp.sections.lb., i32* %.omp.sections.ub., i32* %.omp.sections.st., i32 1, i32 1), !dbg !66
  %7 = load i32, i32* %.omp.sections.ub., align 4, !dbg !66, !tbaa !32
  %8 = icmp slt i32 %7, 1, !dbg !66
  %9 = select i1 %8, i32 %7, i32 1, !dbg !66
  store i32 %9, i32* %.omp.sections.ub., align 4, !dbg !66, !tbaa !32
  %10 = load i32, i32* %.omp.sections.lb., align 4, !dbg !66, !tbaa !32
  store i32 %10, i32* %.omp.sections.iv., align 4, !dbg !66, !tbaa !32
  br label %omp.inner.for.cond, !dbg !66

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %entry
  %11 = load i32, i32* %.omp.sections.iv., align 4, !dbg !67, !tbaa !32
  %12 = load i32, i32* %.omp.sections.ub., align 4, !dbg !67, !tbaa !32
  %cmp = icmp sle i32 %11, %12, !dbg !67
  br i1 %cmp, label %omp.inner.for.body, label %omp.inner.for.end, !dbg !66

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %13 = load i32, i32* %.omp.sections.iv., align 4, !dbg !66, !tbaa !32
  switch i32 %13, label %.omp.sections.exit [
    i32 0, label %.omp.sections.case
    i32 1, label %.omp.sections.case1
  ], !dbg !66

.omp.sections.case:                               ; preds = %omp.inner.for.body
  call void @omp_set_lock(%struct.omp_lock_t* %2), !dbg !68
  %14 = load i32, i32* %3, align 4, !dbg !71, !tbaa !32
  %add = add nsw i32 %14, 1, !dbg !71
  store i32 %add, i32* %3, align 4, !dbg !71, !tbaa !32
  call void @omp_unset_lock(%struct.omp_lock_t* %2), !dbg !72
  br label %.omp.sections.exit, !dbg !73

.omp.sections.case1:                              ; preds = %omp.inner.for.body
  call void @omp_set_lock(%struct.omp_lock_t* %2), !dbg !74
  %15 = load i32, i32* %3, align 4, !dbg !77, !tbaa !32
  %add2 = add nsw i32 %15, 2, !dbg !77
  store i32 %add2, i32* %3, align 4, !dbg !77, !tbaa !32
  call void @omp_unset_lock(%struct.omp_lock_t* %2), !dbg !78
  br label %.omp.sections.exit, !dbg !79

.omp.sections.exit:                               ; preds = %.omp.sections.case1, %.omp.sections.case, %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !79

omp.inner.for.inc:                                ; preds = %.omp.sections.exit
  %16 = load i32, i32* %.omp.sections.iv., align 4, !dbg !67, !tbaa !32
  %inc = add nsw i32 %16, 1, !dbg !67
  store i32 %inc, i32* %.omp.sections.iv., align 4, !dbg !67, !tbaa !32
  br label %omp.inner.for.cond, !dbg !79, !llvm.loop !80

omp.inner.for.end:                                ; preds = %omp.inner.for.cond
  %17 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !79
  store i8* getelementptr inbounds ([71 x i8], [71 x i8]* @2, i32 0, i32 0), i8** %17, align 8, !dbg !79, !tbaa !38
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %6), !dbg !79
  ret void, !dbg !82
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare !dbg !13 dso_local void @omp_set_lock(%struct.omp_lock_t*) #3

declare !dbg !14 dso_local void @omp_unset_lock(%struct.omp_lock_t*) #3

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., %struct.omp_lock_t* dereferenceable(8) %lck, i32* dereferenceable(4) %i) #4 !dbg !83 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %lck.addr = alloca %struct.omp_lock_t*, align 8
  %i.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !62
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !85, metadata !DIExpression()), !dbg !89
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !62
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !86, metadata !DIExpression()), !dbg !89
  store %struct.omp_lock_t* %lck, %struct.omp_lock_t** %lck.addr, align 8, !tbaa !62
  call void @llvm.dbg.declare(metadata %struct.omp_lock_t** %lck.addr, metadata !87, metadata !DIExpression()), !dbg !89
  store i32* %i, i32** %i.addr, align 8, !tbaa !62
  call void @llvm.dbg.declare(metadata i32** %i.addr, metadata !88, metadata !DIExpression()), !dbg !89
  %0 = load %struct.omp_lock_t*, %struct.omp_lock_t** %lck.addr, align 8, !dbg !90, !tbaa !62
  %1 = load i32*, i32** %i.addr, align 8, !dbg !90, !tbaa !62
  %2 = load i32*, i32** %.global_tid..addr, align 8, !dbg !90, !tbaa !62
  %3 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !90, !tbaa !62
  %4 = load %struct.omp_lock_t*, %struct.omp_lock_t** %lck.addr, align 8, !dbg !90, !tbaa !62
  %5 = load i32*, i32** %i.addr, align 8, !dbg !90, !tbaa !62
  call void @.omp_outlined._debug__(i32* %2, i32* %3, %struct.omp_lock_t* %4, i32* %5) #6, !dbg !90
  ret void, !dbg !90
}

declare !callback !91 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

declare !dbg !15 dso_local void @omp_destroy_lock(%struct.omp_lock_t*) #3

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) #5

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!16, !17, !18}
!llvm.ident = !{!19}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "integration/dataracebench/DRB069-sectionslock1-orig-no.c", directory: "/home/brad/Code/OpenRace/tests/data")
!2 = !{}
!3 = !{!4, !13, !14, !15}
!4 = !DISubprogram(name: "omp_init_lock", scope: !5, file: !5, line: 86, type: !6, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!5 = !DIFile(filename: "/usr/include/omp.h", directory: "")
!6 = !DISubroutineType(types: !7)
!7 = !{null, !8}
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "omp_lock_t", file: !5, line: 82, size: 64, elements: !10)
!10 = !{!11}
!11 = !DIDerivedType(tag: DW_TAG_member, name: "_lk", scope: !9, file: !5, line: 83, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!13 = !DISubprogram(name: "omp_set_lock", scope: !5, file: !5, line: 87, type: !6, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!14 = !DISubprogram(name: "omp_unset_lock", scope: !5, file: !5, line: 88, type: !6, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!15 = !DISubprogram(name: "omp_destroy_lock", scope: !5, file: !5, line: 89, type: !6, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!16 = !{i32 7, !"Dwarf Version", i32 4}
!17 = !{i32 2, !"Debug Info Version", i32 3}
!18 = !{i32 1, !"wchar_size", i32 4}
!19 = !{!"clang version 10.0.1 "}
!20 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 53, type: !21, scopeLine: 54, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !24)
!21 = !DISubroutineType(types: !22)
!22 = !{!23}
!23 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!24 = !{!25, !27}
!25 = !DILocalVariable(name: "lck", scope: !20, file: !1, line: 55, type: !26)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "omp_lock_t", file: !5, line: 84, baseType: !9)
!27 = !DILocalVariable(name: "i", scope: !20, file: !1, line: 56, type: !23)
!28 = !DILocation(line: 55, column: 3, scope: !20)
!29 = !DILocation(line: 55, column: 14, scope: !20)
!30 = !DILocation(line: 56, column: 3, scope: !20)
!31 = !DILocation(line: 56, column: 7, scope: !20)
!32 = !{!33, !33, i64 0}
!33 = !{!"int", !34, i64 0}
!34 = !{!"omnipotent char", !35, i64 0}
!35 = !{!"Simple C/C++ TBAA"}
!36 = !DILocation(line: 57, column: 3, scope: !20)
!37 = !DILocation(line: 58, column: 1, scope: !20)
!38 = !{!39, !40, i64 16}
!39 = !{!"ident_t", !33, i64 0, !33, i64 4, !33, i64 8, !33, i64 12, !40, i64 16}
!40 = !{!"any pointer", !34, i64 0}
!41 = !DILocation(line: 74, column: 3, scope: !20)
!42 = !DILocation(line: 75, column: 3, scope: !43)
!43 = distinct !DILexicalBlock(scope: !44, file: !1, line: 75, column: 3)
!44 = distinct !DILexicalBlock(scope: !20, file: !1, line: 75, column: 3)
!45 = !DILocation(line: 75, column: 3, scope: !44)
!46 = !DILocation(line: 77, column: 1, scope: !20)
!47 = !DILocation(line: 76, column: 3, scope: !20)
!48 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 59, type: !49, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !57)
!49 = !DISubroutineType(types: !50)
!50 = !{null, !51, !51, !55, !56}
!51 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !52)
!52 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !53)
!53 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !54, size: 64)
!54 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !23)
!55 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !26, size: 64)
!56 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !23, size: 64)
!57 = !{!58, !59, !60, !61}
!58 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !48, type: !51, flags: DIFlagArtificial)
!59 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !48, type: !51, flags: DIFlagArtificial)
!60 = !DILocalVariable(name: "lck", arg: 3, scope: !48, file: !1, line: 55, type: !55)
!61 = !DILocalVariable(name: "i", arg: 4, scope: !48, file: !1, line: 56, type: !56)
!62 = !{!40, !40, i64 0}
!63 = !DILocation(line: 0, scope: !48)
!64 = !DILocation(line: 55, column: 14, scope: !48)
!65 = !DILocation(line: 56, column: 7, scope: !48)
!66 = !DILocation(line: 59, column: 3, scope: !48)
!67 = !DILocation(line: 58, column: 1, scope: !48)
!68 = !DILocation(line: 62, column: 7, scope: !69)
!69 = distinct !DILexicalBlock(scope: !70, file: !1, line: 61, column: 5)
!70 = distinct !DILexicalBlock(scope: !48, file: !1, line: 60, column: 1)
!71 = !DILocation(line: 63, column: 9, scope: !69)
!72 = !DILocation(line: 64, column: 7, scope: !69)
!73 = !DILocation(line: 60, column: 20, scope: !70)
!74 = !DILocation(line: 68, column: 7, scope: !75)
!75 = distinct !DILexicalBlock(scope: !76, file: !1, line: 67, column: 5)
!76 = distinct !DILexicalBlock(scope: !48, file: !1, line: 66, column: 1)
!77 = !DILocation(line: 69, column: 9, scope: !75)
!78 = !DILocation(line: 70, column: 7, scope: !75)
!79 = !DILocation(line: 66, column: 20, scope: !76)
!80 = distinct !{!80, !67, !81}
!81 = !DILocation(line: 58, column: 30, scope: !48)
!82 = !DILocation(line: 72, column: 3, scope: !48)
!83 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 59, type: !49, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !84)
!84 = !{!85, !86, !87, !88}
!85 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !83, type: !51, flags: DIFlagArtificial)
!86 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !83, type: !51, flags: DIFlagArtificial)
!87 = !DILocalVariable(name: "lck", arg: 3, scope: !83, type: !55, flags: DIFlagArtificial)
!88 = !DILocalVariable(name: "i", arg: 4, scope: !83, type: !56, flags: DIFlagArtificial)
!89 = !DILocation(line: 0, scope: !83)
!90 = !DILocation(line: 59, column: 3, scope: !83)
!91 = !{!92}
!92 = !{i64 2, i64 -1, i64 -1, i1 true}
