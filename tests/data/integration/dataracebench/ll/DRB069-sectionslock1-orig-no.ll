; ModuleID = 'DRB069-sectionslock1-orig-no.c'
source_filename = "DRB069-sectionslock1-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }
%struct.omp_lock_t = type { i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 1026, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [44 x i8] c";DRB069-sectionslock1-orig-no.c;main;58;1;;\00", align 1
@2 = private unnamed_addr constant [45 x i8] c";DRB069-sectionslock1-orig-no.c;main;58;30;;\00", align 1
@3 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"i==3\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"DRB069-sectionslock1-orig-no.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [11 x i8] c"int main()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !7 {
entry:
  %retval = alloca i32, align 4
  %lck = alloca %struct.omp_lock_t, align 8
  %i = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata %struct.omp_lock_t* %lck, metadata !11, metadata !DIExpression()), !dbg !18
  call void @llvm.dbg.declare(metadata i32* %i, metadata !19, metadata !DIExpression()), !dbg !20
  store i32 0, i32* %i, align 4, !dbg !20
  call void @omp_init_lock(%struct.omp_lock_t* %lck), !dbg !21
  %2 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !22
  store i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1, i32 0, i32 0), i8** %2, align 8, !dbg !22
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 2, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, %struct.omp_lock_t*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), %struct.omp_lock_t* %lck, i32* %i), !dbg !22
  call void @omp_destroy_lock(%struct.omp_lock_t* %lck), !dbg !23
  %3 = load i32, i32* %i, align 4, !dbg !24
  %cmp = icmp eq i32 %3, 3, !dbg !24
  br i1 %cmp, label %if.then, label %if.else, !dbg !27

if.then:                                          ; preds = %entry
  br label %if.end, !dbg !27

if.else:                                          ; preds = %entry
  call void @__assert_fail(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i32 75, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #6, !dbg !24
  unreachable, !dbg !24

if.end:                                           ; preds = %if.then
  ret i32 0, !dbg !28
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local void @omp_init_lock(%struct.omp_lock_t*) #2

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., %struct.omp_lock_t* dereferenceable(8) %lck, i32* dereferenceable(4) %i) #3 !dbg !29 {
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
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !38, metadata !DIExpression()), !dbg !39
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !40, metadata !DIExpression()), !dbg !39
  store %struct.omp_lock_t* %lck, %struct.omp_lock_t** %lck.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.omp_lock_t** %lck.addr, metadata !41, metadata !DIExpression()), !dbg !42
  store i32* %i, i32** %i.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %i.addr, metadata !43, metadata !DIExpression()), !dbg !44
  %2 = load %struct.omp_lock_t*, %struct.omp_lock_t** %lck.addr, align 8, !dbg !45
  %3 = load i32*, i32** %i.addr, align 8, !dbg !45
  store i32 0, i32* %.omp.sections.lb., align 4, !dbg !45
  store i32 1, i32* %.omp.sections.ub., align 4, !dbg !45
  store i32 1, i32* %.omp.sections.st., align 4, !dbg !45
  store i32 0, i32* %.omp.sections.il., align 4, !dbg !45
  %4 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !45
  store i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1, i32 0, i32 0), i8** %4, align 8, !dbg !45
  %5 = load i32*, i32** %.global_tid..addr, align 8, !dbg !45
  %6 = load i32, i32* %5, align 4, !dbg !45
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %6, i32 34, i32* %.omp.sections.il., i32* %.omp.sections.lb., i32* %.omp.sections.ub., i32* %.omp.sections.st., i32 1, i32 1), !dbg !45
  %7 = load i32, i32* %.omp.sections.ub., align 4, !dbg !45
  %8 = icmp slt i32 %7, 1, !dbg !45
  %9 = select i1 %8, i32 %7, i32 1, !dbg !45
  store i32 %9, i32* %.omp.sections.ub., align 4, !dbg !45
  %10 = load i32, i32* %.omp.sections.lb., align 4, !dbg !45
  store i32 %10, i32* %.omp.sections.iv., align 4, !dbg !45
  br label %omp.inner.for.cond, !dbg !45

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %entry
  %11 = load i32, i32* %.omp.sections.iv., align 4, !dbg !46
  %12 = load i32, i32* %.omp.sections.ub., align 4, !dbg !46
  %cmp = icmp sle i32 %11, %12, !dbg !46
  br i1 %cmp, label %omp.inner.for.body, label %omp.inner.for.end, !dbg !45

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %13 = load i32, i32* %.omp.sections.iv., align 4, !dbg !45
  switch i32 %13, label %.omp.sections.exit [
    i32 0, label %.omp.sections.case
    i32 1, label %.omp.sections.case1
  ], !dbg !45

.omp.sections.case:                               ; preds = %omp.inner.for.body
  call void @omp_set_lock(%struct.omp_lock_t* %2), !dbg !47
  %14 = load i32, i32* %3, align 4, !dbg !50
  %add = add nsw i32 %14, 1, !dbg !50
  store i32 %add, i32* %3, align 4, !dbg !50
  call void @omp_unset_lock(%struct.omp_lock_t* %2), !dbg !51
  br label %.omp.sections.exit, !dbg !52

.omp.sections.case1:                              ; preds = %omp.inner.for.body
  call void @omp_set_lock(%struct.omp_lock_t* %2), !dbg !53
  %15 = load i32, i32* %3, align 4, !dbg !56
  %add2 = add nsw i32 %15, 2, !dbg !56
  store i32 %add2, i32* %3, align 4, !dbg !56
  call void @omp_unset_lock(%struct.omp_lock_t* %2), !dbg !57
  br label %.omp.sections.exit, !dbg !58

.omp.sections.exit:                               ; preds = %.omp.sections.case1, %.omp.sections.case, %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !58

omp.inner.for.inc:                                ; preds = %.omp.sections.exit
  %16 = load i32, i32* %.omp.sections.iv., align 4, !dbg !46
  %inc = add nsw i32 %16, 1, !dbg !46
  store i32 %inc, i32* %.omp.sections.iv., align 4, !dbg !46
  br label %omp.inner.for.cond, !dbg !58, !llvm.loop !59

omp.inner.for.end:                                ; preds = %omp.inner.for.cond
  %17 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !58
  store i8* getelementptr inbounds ([45 x i8], [45 x i8]* @2, i32 0, i32 0), i8** %17, align 8, !dbg !58
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %6), !dbg !58
  ret void, !dbg !61
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare dso_local void @omp_set_lock(%struct.omp_lock_t*) #2

declare dso_local void @omp_unset_lock(%struct.omp_lock_t*) #2

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., %struct.omp_lock_t* dereferenceable(8) %lck, i32* dereferenceable(4) %i) #3 !dbg !62 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %lck.addr = alloca %struct.omp_lock_t*, align 8
  %i.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !63, metadata !DIExpression()), !dbg !64
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !65, metadata !DIExpression()), !dbg !64
  store %struct.omp_lock_t* %lck, %struct.omp_lock_t** %lck.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.omp_lock_t** %lck.addr, metadata !66, metadata !DIExpression()), !dbg !64
  store i32* %i, i32** %i.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %i.addr, metadata !67, metadata !DIExpression()), !dbg !64
  %0 = load %struct.omp_lock_t*, %struct.omp_lock_t** %lck.addr, align 8, !dbg !68
  %1 = load i32*, i32** %i.addr, align 8, !dbg !68
  %2 = load i32*, i32** %.global_tid..addr, align 8, !dbg !68
  %3 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !68
  %4 = load %struct.omp_lock_t*, %struct.omp_lock_t** %lck.addr, align 8, !dbg !68
  %5 = load i32*, i32** %i.addr, align 8, !dbg !68
  call void @.omp_outlined._debug__(i32* %2, i32* %3, %struct.omp_lock_t* %4, i32* %5) #7, !dbg !68
  ret void, !dbg !68
}

declare !callback !69 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

declare dso_local void @omp_destroy_lock(%struct.omp_lock_t*) #2

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) #5

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noinline norecurse nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind willreturn }
attributes #5 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.1 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "DRB069-sectionslock1-orig-no.c", directory: "/home/yanze/code/OpenRace/tests/data/integration/dataracebench")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.1 "}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 53, type: !8, scopeLine: 54, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DILocalVariable(name: "lck", scope: !7, file: !1, line: 55, type: !12)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "omp_lock_t", file: !13, line: 84, baseType: !14)
!13 = !DIFile(filename: "/usr/include/omp.h", directory: "")
!14 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "omp_lock_t", file: !13, line: 82, size: 64, elements: !15)
!15 = !{!16}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "_lk", scope: !14, file: !13, line: 83, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!18 = !DILocation(line: 55, column: 14, scope: !7)
!19 = !DILocalVariable(name: "i", scope: !7, file: !1, line: 56, type: !10)
!20 = !DILocation(line: 56, column: 7, scope: !7)
!21 = !DILocation(line: 57, column: 3, scope: !7)
!22 = !DILocation(line: 58, column: 1, scope: !7)
!23 = !DILocation(line: 74, column: 3, scope: !7)
!24 = !DILocation(line: 75, column: 3, scope: !25)
!25 = distinct !DILexicalBlock(scope: !26, file: !1, line: 75, column: 3)
!26 = distinct !DILexicalBlock(scope: !7, file: !1, line: 75, column: 3)
!27 = !DILocation(line: 75, column: 3, scope: !26)
!28 = !DILocation(line: 76, column: 3, scope: !7)
!29 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 59, type: !30, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!30 = !DISubroutineType(types: !31)
!31 = !{null, !32, !32, !36, !37}
!32 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !33)
!33 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !34)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!36 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !12, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !10, size: 64)
!38 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !29, type: !32, flags: DIFlagArtificial)
!39 = !DILocation(line: 0, scope: !29)
!40 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !29, type: !32, flags: DIFlagArtificial)
!41 = !DILocalVariable(name: "lck", arg: 3, scope: !29, file: !1, line: 55, type: !36)
!42 = !DILocation(line: 55, column: 14, scope: !29)
!43 = !DILocalVariable(name: "i", arg: 4, scope: !29, file: !1, line: 56, type: !37)
!44 = !DILocation(line: 56, column: 7, scope: !29)
!45 = !DILocation(line: 59, column: 3, scope: !29)
!46 = !DILocation(line: 58, column: 1, scope: !29)
!47 = !DILocation(line: 62, column: 7, scope: !48)
!48 = distinct !DILexicalBlock(scope: !49, file: !1, line: 61, column: 5)
!49 = distinct !DILexicalBlock(scope: !29, file: !1, line: 60, column: 1)
!50 = !DILocation(line: 63, column: 9, scope: !48)
!51 = !DILocation(line: 64, column: 7, scope: !48)
!52 = !DILocation(line: 60, column: 20, scope: !49)
!53 = !DILocation(line: 68, column: 7, scope: !54)
!54 = distinct !DILexicalBlock(scope: !55, file: !1, line: 67, column: 5)
!55 = distinct !DILexicalBlock(scope: !29, file: !1, line: 66, column: 1)
!56 = !DILocation(line: 69, column: 9, scope: !54)
!57 = !DILocation(line: 70, column: 7, scope: !54)
!58 = !DILocation(line: 66, column: 20, scope: !55)
!59 = distinct !{!59, !46, !60}
!60 = !DILocation(line: 58, column: 30, scope: !29)
!61 = !DILocation(line: 72, column: 3, scope: !29)
!62 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 59, type: !30, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!63 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !62, type: !32, flags: DIFlagArtificial)
!64 = !DILocation(line: 0, scope: !62)
!65 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !62, type: !32, flags: DIFlagArtificial)
!66 = !DILocalVariable(name: "lck", arg: 3, scope: !62, type: !36, flags: DIFlagArtificial)
!67 = !DILocalVariable(name: "i", arg: 4, scope: !62, type: !37, flags: DIFlagArtificial)
!68 = !DILocation(line: 59, column: 3, scope: !62)
!69 = !{!70}
!70 = !{i64 2, i64 -1, i64 -1, i1 true}
