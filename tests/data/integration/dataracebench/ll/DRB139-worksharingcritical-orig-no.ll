; ModuleID = 'DRB139-worksharingcritical-orig-no.c'
source_filename = "DRB139-worksharingcritical-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 1026, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [50 x i8] c";DRB139-worksharingcritical-orig-no.c;main;27;3;;\00", align 1
@2 = private unnamed_addr constant [50 x i8] c";DRB139-worksharingcritical-orig-no.c;main;31;7;;\00", align 1
@.gomp_critical_user_name.var = common global [8 x i32] zeroinitializer
@3 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@4 = private unnamed_addr constant [51 x i8] c";DRB139-worksharingcritical-orig-no.c;main;35;11;;\00", align 1
@5 = private unnamed_addr constant [50 x i8] c";DRB139-worksharingcritical-orig-no.c;main;33;9;;\00", align 1
@6 = private unnamed_addr constant [51 x i8] c";DRB139-worksharingcritical-orig-no.c;main;27;32;;\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !7 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata i32* %i, metadata !11, metadata !DIExpression()), !dbg !12
  store i32 1, i32* %i, align 4, !dbg !12
  %2 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !13
  store i8* getelementptr inbounds ([50 x i8], [50 x i8]* @1, i32 0, i32 0), i8** %2, align 8, !dbg !13
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*)* @.omp_outlined..2 to void (i32*, i32*, ...)*), i32* %i), !dbg !13
  %3 = load i32, i32* %i, align 4, !dbg !14
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %3), !dbg !15
  ret i32 0, !dbg !16
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %i) #2 !dbg !17 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
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
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !25, metadata !DIExpression()), !dbg !26
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !27, metadata !DIExpression()), !dbg !26
  store i32* %i, i32** %i.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %i.addr, metadata !28, metadata !DIExpression()), !dbg !29
  %2 = load i32*, i32** %i.addr, align 8, !dbg !30
  store i32 0, i32* %.omp.sections.lb., align 4, !dbg !30
  store i32 0, i32* %.omp.sections.ub., align 4, !dbg !30
  store i32 1, i32* %.omp.sections.st., align 4, !dbg !30
  store i32 0, i32* %.omp.sections.il., align 4, !dbg !30
  %3 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !30
  store i8* getelementptr inbounds ([50 x i8], [50 x i8]* @1, i32 0, i32 0), i8** %3, align 8, !dbg !30
  %4 = load i32*, i32** %.global_tid..addr, align 8, !dbg !30
  %5 = load i32, i32* %4, align 4, !dbg !30
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %5, i32 34, i32* %.omp.sections.il., i32* %.omp.sections.lb., i32* %.omp.sections.ub., i32* %.omp.sections.st., i32 1, i32 1), !dbg !30
  %6 = load i32, i32* %.omp.sections.ub., align 4, !dbg !30
  %7 = icmp slt i32 %6, 0, !dbg !30
  %8 = select i1 %7, i32 %6, i32 0, !dbg !30
  store i32 %8, i32* %.omp.sections.ub., align 4, !dbg !30
  %9 = load i32, i32* %.omp.sections.lb., align 4, !dbg !30
  store i32 %9, i32* %.omp.sections.iv., align 4, !dbg !30
  br label %omp.inner.for.cond, !dbg !30

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %entry
  %10 = load i32, i32* %.omp.sections.iv., align 4, !dbg !31
  %11 = load i32, i32* %.omp.sections.ub., align 4, !dbg !31
  %cmp = icmp sle i32 %10, %11, !dbg !31
  br i1 %cmp, label %omp.inner.for.body, label %omp.inner.for.end, !dbg !30

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %12 = load i32, i32* %.omp.sections.iv., align 4, !dbg !30
  switch i32 %12, label %.omp.sections.exit [
    i32 0, label %.omp.sections.case
  ], !dbg !30

.omp.sections.case:                               ; preds = %omp.inner.for.body
  %13 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !32
  store i8* getelementptr inbounds ([50 x i8], [50 x i8]* @2, i32 0, i32 0), i8** %13, align 8, !dbg !32
  call void @__kmpc_critical(%struct.ident_t* %.kmpc_loc.addr, i32 %5, [8 x i32]* @.gomp_critical_user_name.var), !dbg !32
  %14 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !35
  store i8* getelementptr inbounds ([50 x i8], [50 x i8]* @5, i32 0, i32 0), i8** %14, align 8, !dbg !35
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %2), !dbg !35
  call void @__kmpc_end_critical(%struct.ident_t* %.kmpc_loc.addr, i32 %5, [8 x i32]* @.gomp_critical_user_name.var), !dbg !38
  br label %.omp.sections.exit, !dbg !39

.omp.sections.exit:                               ; preds = %.omp.sections.case, %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !39

omp.inner.for.inc:                                ; preds = %.omp.sections.exit
  %15 = load i32, i32* %.omp.sections.iv., align 4, !dbg !31
  %inc = add nsw i32 %15, 1, !dbg !31
  store i32 %inc, i32* %.omp.sections.iv., align 4, !dbg !31
  br label %omp.inner.for.cond, !dbg !39, !llvm.loop !40

omp.inner.for.end:                                ; preds = %omp.inner.for.cond
  %16 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !39
  store i8* getelementptr inbounds ([51 x i8], [51 x i8]* @6, i32 0, i32 0), i8** %16, align 8, !dbg !39
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %5), !dbg !39
  ret void, !dbg !42
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare dso_local void @__kmpc_end_critical(%struct.ident_t*, i32, [8 x i32]*)

declare dso_local void @__kmpc_critical(%struct.ident_t*, i32, [8 x i32]*)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined._debug__.1(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %i) #2 !dbg !43 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %i.addr = alloca i32*, align 8
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !44, metadata !DIExpression()), !dbg !45
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !46, metadata !DIExpression()), !dbg !45
  store i32* %i, i32** %i.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %i.addr, metadata !47, metadata !DIExpression()), !dbg !48
  %2 = load i32*, i32** %i.addr, align 8, !dbg !49
  %3 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !50
  store i8* getelementptr inbounds ([51 x i8], [51 x i8]* @4, i32 0, i32 0), i8** %3, align 8, !dbg !50
  %4 = load i32*, i32** %.global_tid..addr, align 8, !dbg !50
  %5 = load i32, i32* %4, align 4, !dbg !50
  %6 = call i32 @__kmpc_single(%struct.ident_t* %.kmpc_loc.addr, i32 %5), !dbg !50
  %7 = icmp ne i32 %6, 0, !dbg !50
  br i1 %7, label %omp_if.then, label %omp_if.end, !dbg !50

omp_if.then:                                      ; preds = %entry
  %8 = load i32, i32* %2, align 4, !dbg !52
  %inc = add nsw i32 %8, 1, !dbg !52
  store i32 %inc, i32* %2, align 4, !dbg !52
  call void @__kmpc_end_single(%struct.ident_t* %.kmpc_loc.addr, i32 %5), !dbg !55
  br label %omp_if.end, !dbg !55

omp_if.end:                                       ; preds = %omp_if.then, %entry
  %9 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !56
  store i8* getelementptr inbounds ([51 x i8], [51 x i8]* @4, i32 0, i32 0), i8** %9, align 8, !dbg !56
  call void @__kmpc_barrier(%struct.ident_t* %.kmpc_loc.addr, i32 %5), !dbg !56
  ret void, !dbg !57
}

declare dso_local void @__kmpc_end_single(%struct.ident_t*, i32)

declare dso_local i32 @__kmpc_single(%struct.ident_t*, i32)

declare dso_local void @__kmpc_barrier(%struct.ident_t*, i32)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %i) #2 !dbg !58 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %i.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !59, metadata !DIExpression()), !dbg !60
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !61, metadata !DIExpression()), !dbg !60
  store i32* %i, i32** %i.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %i.addr, metadata !62, metadata !DIExpression()), !dbg !60
  %0 = load i32*, i32** %i.addr, align 8, !dbg !63
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !63
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !63
  %3 = load i32*, i32** %i.addr, align 8, !dbg !63
  call void @.omp_outlined._debug__.1(i32* %1, i32* %2, i32* %3) #5, !dbg !63
  ret void, !dbg !63
}

declare !callback !64 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined..2(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %i) #2 !dbg !66 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %i.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !67, metadata !DIExpression()), !dbg !68
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !69, metadata !DIExpression()), !dbg !68
  store i32* %i, i32** %i.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %i.addr, metadata !70, metadata !DIExpression()), !dbg !68
  %0 = load i32*, i32** %i.addr, align 8, !dbg !71
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !71
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !71
  %3 = load i32*, i32** %i.addr, align 8, !dbg !71
  call void @.omp_outlined._debug__(i32* %1, i32* %2, i32* %3) #5, !dbg !71
  ret void, !dbg !71
}

declare dso_local i32 @printf(i8*, ...) #4

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noinline norecurse nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.1 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "DRB139-worksharingcritical-orig-no.c", directory: "/home/yanze/code/OpenRace/tests/data/integration/dataracebench")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.1 "}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 23, type: !8, scopeLine: 23, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DILocalVariable(name: "i", scope: !7, file: !1, line: 25, type: !10)
!12 = !DILocation(line: 25, column: 7, scope: !7)
!13 = !DILocation(line: 27, column: 3, scope: !7)
!14 = !DILocation(line: 44, column: 17, scope: !7)
!15 = !DILocation(line: 44, column: 3, scope: !7)
!16 = !DILocation(line: 45, column: 3, scope: !7)
!17 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 28, type: !18, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
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
!28 = !DILocalVariable(name: "i", arg: 3, scope: !17, file: !1, line: 25, type: !24)
!29 = !DILocation(line: 25, column: 7, scope: !17)
!30 = !DILocation(line: 28, column: 3, scope: !17)
!31 = !DILocation(line: 27, column: 3, scope: !17)
!32 = !DILocation(line: 31, column: 7, scope: !33)
!33 = distinct !DILexicalBlock(scope: !34, file: !1, line: 30, column: 5)
!34 = distinct !DILexicalBlock(scope: !17, file: !1, line: 29, column: 5)
!35 = !DILocation(line: 33, column: 9, scope: !36)
!36 = distinct !DILexicalBlock(scope: !37, file: !1, line: 32, column: 7)
!37 = distinct !DILexicalBlock(scope: !33, file: !1, line: 31, column: 7)
!38 = !DILocation(line: 40, column: 7, scope: !36)
!39 = !DILocation(line: 29, column: 24, scope: !34)
!40 = distinct !{!40, !31, !41}
!41 = !DILocation(line: 27, column: 32, scope: !17)
!42 = !DILocation(line: 42, column: 3, scope: !17)
!43 = distinct !DISubprogram(name: ".omp_outlined._debug__.1", scope: !1, file: !1, line: 34, type: !18, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!44 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !43, type: !20, flags: DIFlagArtificial)
!45 = !DILocation(line: 0, scope: !43)
!46 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !43, type: !20, flags: DIFlagArtificial)
!47 = !DILocalVariable(name: "i", arg: 3, scope: !43, file: !1, line: 25, type: !24)
!48 = !DILocation(line: 25, column: 7, scope: !43)
!49 = !DILocation(line: 34, column: 9, scope: !43)
!50 = !DILocation(line: 35, column: 11, scope: !51)
!51 = distinct !DILexicalBlock(scope: !43, file: !1, line: 34, column: 9)
!52 = !DILocation(line: 37, column: 14, scope: !53)
!53 = distinct !DILexicalBlock(scope: !54, file: !1, line: 36, column: 11)
!54 = distinct !DILexicalBlock(scope: !51, file: !1, line: 35, column: 11)
!55 = !DILocation(line: 38, column: 11, scope: !53)
!56 = !DILocation(line: 35, column: 29, scope: !54)
!57 = !DILocation(line: 39, column: 9, scope: !43)
!58 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 34, type: !18, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!59 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !58, type: !20, flags: DIFlagArtificial)
!60 = !DILocation(line: 0, scope: !58)
!61 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !58, type: !20, flags: DIFlagArtificial)
!62 = !DILocalVariable(name: "i", arg: 3, scope: !58, type: !24, flags: DIFlagArtificial)
!63 = !DILocation(line: 34, column: 9, scope: !58)
!64 = !{!65}
!65 = !{i64 2, i64 -1, i64 -1, i1 true}
!66 = distinct !DISubprogram(name: ".omp_outlined..2", scope: !1, file: !1, line: 28, type: !18, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!67 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !66, type: !20, flags: DIFlagArtificial)
!68 = !DILocation(line: 0, scope: !66)
!69 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !66, type: !20, flags: DIFlagArtificial)
!70 = !DILocalVariable(name: "i", arg: 3, scope: !66, type: !24, flags: DIFlagArtificial)
!71 = !DILocation(line: 28, column: 3, scope: !66)
