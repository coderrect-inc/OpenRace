; ModuleID = 'DRB126-firstprivatesections-orig-no.c'
source_filename = "DRB126-firstprivatesections-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 1026, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [51 x i8] c";DRB126-firstprivatesections-orig-no.c;main;27;3;;\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@2 = private unnamed_addr constant [52 x i8] c";DRB126-firstprivatesections-orig-no.c;main;27;53;;\00", align 1
@3 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@4 = private unnamed_addr constant [51 x i8] c";DRB126-firstprivatesections-orig-no.c;main;26;3;;\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !7 {
entry:
  %retval = alloca i32, align 4
  %section_count = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata i32* %section_count, metadata !11, metadata !DIExpression()), !dbg !12
  store i32 0, i32* %section_count, align 4, !dbg !12
  call void @omp_set_dynamic(i32 0), !dbg !13
  call void @omp_set_num_threads(i32 1), !dbg !14
  %2 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !15
  store i8* getelementptr inbounds ([51 x i8], [51 x i8]* @4, i32 0, i32 0), i8** %2, align 8, !dbg !15
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %section_count), !dbg !15
  ret i32 0, !dbg !16
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local void @omp_set_dynamic(i32) #2

declare dso_local void @omp_set_num_threads(i32) #2

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %section_count) #3 !dbg !17 {
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
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !25, metadata !DIExpression()), !dbg !26
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !27, metadata !DIExpression()), !dbg !26
  store i32* %section_count, i32** %section_count.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %section_count.addr, metadata !28, metadata !DIExpression()), !dbg !29
  %2 = load i32*, i32** %section_count.addr, align 8, !dbg !30
  store i32 0, i32* %.omp.sections.lb., align 4, !dbg !30
  store i32 1, i32* %.omp.sections.ub., align 4, !dbg !30
  store i32 1, i32* %.omp.sections.st., align 4, !dbg !30
  store i32 0, i32* %.omp.sections.il., align 4, !dbg !30
  call void @llvm.dbg.declare(metadata i32* %section_count1, metadata !31, metadata !DIExpression()), !dbg !33
  %3 = load i32, i32* %2, align 4, !dbg !34
  store i32 %3, i32* %section_count1, align 4, !dbg !34
  %4 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !30
  store i8* getelementptr inbounds ([51 x i8], [51 x i8]* @1, i32 0, i32 0), i8** %4, align 8, !dbg !30
  %5 = load i32*, i32** %.global_tid..addr, align 8, !dbg !30
  %6 = load i32, i32* %5, align 4, !dbg !30
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %6, i32 34, i32* %.omp.sections.il., i32* %.omp.sections.lb., i32* %.omp.sections.ub., i32* %.omp.sections.st., i32 1, i32 1), !dbg !30
  %7 = load i32, i32* %.omp.sections.ub., align 4, !dbg !30
  %8 = icmp slt i32 %7, 1, !dbg !30
  %9 = select i1 %8, i32 %7, i32 1, !dbg !30
  store i32 %9, i32* %.omp.sections.ub., align 4, !dbg !30
  %10 = load i32, i32* %.omp.sections.lb., align 4, !dbg !30
  store i32 %10, i32* %.omp.sections.iv., align 4, !dbg !30
  br label %omp.inner.for.cond, !dbg !30

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %entry
  %11 = load i32, i32* %.omp.sections.iv., align 4, !dbg !35
  %12 = load i32, i32* %.omp.sections.ub., align 4, !dbg !35
  %cmp = icmp sle i32 %11, %12, !dbg !35
  br i1 %cmp, label %omp.inner.for.body, label %omp.inner.for.end, !dbg !30

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %13 = load i32, i32* %.omp.sections.iv., align 4, !dbg !30
  switch i32 %13, label %.omp.sections.exit [
    i32 0, label %.omp.sections.case
    i32 1, label %.omp.sections.case2
  ], !dbg !30

.omp.sections.case:                               ; preds = %omp.inner.for.body
  %14 = load i32, i32* %section_count1, align 4, !dbg !36
  %inc = add nsw i32 %14, 1, !dbg !36
  store i32 %inc, i32* %section_count1, align 4, !dbg !36
  %15 = load i32, i32* %section_count1, align 4, !dbg !39
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %15), !dbg !40
  br label %.omp.sections.exit, !dbg !41

.omp.sections.case2:                              ; preds = %omp.inner.for.body
  %16 = load i32, i32* %section_count1, align 4, !dbg !42
  %inc3 = add nsw i32 %16, 1, !dbg !42
  store i32 %inc3, i32* %section_count1, align 4, !dbg !42
  %17 = load i32, i32* %section_count1, align 4, !dbg !45
  %call4 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %17), !dbg !46
  br label %.omp.sections.exit, !dbg !47

.omp.sections.exit:                               ; preds = %.omp.sections.case2, %.omp.sections.case, %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !47

omp.inner.for.inc:                                ; preds = %.omp.sections.exit
  %18 = load i32, i32* %.omp.sections.iv., align 4, !dbg !35
  %inc5 = add nsw i32 %18, 1, !dbg !35
  store i32 %inc5, i32* %.omp.sections.iv., align 4, !dbg !35
  br label %omp.inner.for.cond, !dbg !47, !llvm.loop !48

omp.inner.for.end:                                ; preds = %omp.inner.for.cond
  %19 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !47
  store i8* getelementptr inbounds ([52 x i8], [52 x i8]* @2, i32 0, i32 0), i8** %19, align 8, !dbg !47
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %6), !dbg !47
  %20 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !49
  store i8* getelementptr inbounds ([51 x i8], [51 x i8]* @1, i32 0, i32 0), i8** %20, align 8, !dbg !49
  call void @__kmpc_barrier(%struct.ident_t* %.kmpc_loc.addr, i32 %6), !dbg !49
  ret void, !dbg !50
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare dso_local i32 @printf(i8*, ...) #2

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

declare dso_local void @__kmpc_barrier(%struct.ident_t*, i32)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %section_count) #3 !dbg !51 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %section_count.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !52, metadata !DIExpression()), !dbg !53
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !54, metadata !DIExpression()), !dbg !53
  store i32* %section_count, i32** %section_count.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %section_count.addr, metadata !55, metadata !DIExpression()), !dbg !53
  %0 = load i32*, i32** %section_count.addr, align 8, !dbg !56
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !56
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !56
  %3 = load i32*, i32** %section_count.addr, align 8, !dbg !56
  call void @.omp_outlined._debug__(i32* %1, i32* %2, i32* %3) #5, !dbg !56
  ret void, !dbg !56
}

declare !callback !57 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noinline norecurse nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind willreturn }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.1 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "DRB126-firstprivatesections-orig-no.c", directory: "/home/yanze/code/OpenRace/tests/data/integration/dataracebench")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.1 "}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 20, type: !8, scopeLine: 20, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DILocalVariable(name: "section_count", scope: !7, file: !1, line: 21, type: !10)
!12 = !DILocation(line: 21, column: 7, scope: !7)
!13 = !DILocation(line: 22, column: 3, scope: !7)
!14 = !DILocation(line: 24, column: 3, scope: !7)
!15 = !DILocation(line: 26, column: 3, scope: !7)
!16 = !DILocation(line: 40, column: 3, scope: !7)
!17 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 27, type: !18, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!18 = !DISubroutineType(types: !19)
!19 = !{null, !20, !20, !24}
!20 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!21 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !22)
!22 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!24 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !10, size: 64)
!25 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !17, type: !20, flags: DIFlagArtificial)
!26 = !DILocation(line: 0, scope: !17)
!27 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !17, type: !20, flags: DIFlagArtificial)
!28 = !DILocalVariable(name: "section_count", arg: 3, scope: !17, file: !1, line: 21, type: !24)
!29 = !DILocation(line: 21, column: 7, scope: !17)
!30 = !DILocation(line: 27, column: 3, scope: !17)
!31 = !DILocalVariable(name: "section_count", scope: !32, type: !10, flags: DIFlagArtificial)
!32 = distinct !DILexicalBlock(scope: !17, file: !1, line: 27, column: 3)
!33 = !DILocation(line: 0, scope: !32)
!34 = !DILocation(line: 27, column: 38, scope: !32)
!35 = !DILocation(line: 27, column: 3, scope: !32)
!36 = !DILocation(line: 31, column: 20, scope: !37)
!37 = distinct !DILexicalBlock(scope: !38, file: !1, line: 30, column: 5)
!38 = distinct !DILexicalBlock(scope: !32, file: !1, line: 29, column: 5)
!39 = !DILocation(line: 32, column: 21, scope: !37)
!40 = !DILocation(line: 32, column: 7, scope: !37)
!41 = !DILocation(line: 29, column: 24, scope: !38)
!42 = !DILocation(line: 36, column: 20, scope: !43)
!43 = distinct !DILexicalBlock(scope: !44, file: !1, line: 35, column: 5)
!44 = distinct !DILexicalBlock(scope: !32, file: !1, line: 34, column: 5)
!45 = !DILocation(line: 37, column: 21, scope: !43)
!46 = !DILocation(line: 37, column: 7, scope: !43)
!47 = !DILocation(line: 34, column: 24, scope: !44)
!48 = distinct !{!48, !35, !49}
!49 = !DILocation(line: 27, column: 53, scope: !32)
!50 = !DILocation(line: 27, column: 53, scope: !17)
!51 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 27, type: !18, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!52 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !51, type: !20, flags: DIFlagArtificial)
!53 = !DILocation(line: 0, scope: !51)
!54 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !51, type: !20, flags: DIFlagArtificial)
!55 = !DILocalVariable(name: "section_count", arg: 3, scope: !51, type: !24, flags: DIFlagArtificial)
!56 = !DILocation(line: 27, column: 3, scope: !51)
!57 = !{!58}
!58 = !{i64 2, i64 -1, i64 -1, i1 true}
