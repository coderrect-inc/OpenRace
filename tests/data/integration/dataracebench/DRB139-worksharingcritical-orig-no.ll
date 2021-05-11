; ModuleID = 'integration/dataracebench/DRB139-worksharingcritical-orig-no.c'
source_filename = "integration/dataracebench/DRB139-worksharingcritical-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 1026, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [76 x i8] c";integration/dataracebench/DRB139-worksharingcritical-orig-no.c;main;27;3;;\00", align 1
@2 = private unnamed_addr constant [76 x i8] c";integration/dataracebench/DRB139-worksharingcritical-orig-no.c;main;31;7;;\00", align 1
@.gomp_critical_user_name.var = common global [8 x i32] zeroinitializer
@3 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@4 = private unnamed_addr constant [77 x i8] c";integration/dataracebench/DRB139-worksharingcritical-orig-no.c;main;35;11;;\00", align 1
@5 = private unnamed_addr constant [76 x i8] c";integration/dataracebench/DRB139-worksharingcritical-orig-no.c;main;33;9;;\00", align 1
@6 = private unnamed_addr constant [77 x i8] c";integration/dataracebench/DRB139-worksharingcritical-orig-no.c;main;27;32;;\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main() #0 !dbg !7 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32 0, i32* %retval, align 4
  %2 = bitcast i32* %i to i8*, !dbg !13
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #5, !dbg !13
  call void @llvm.dbg.declare(metadata i32* %i, metadata !12, metadata !DIExpression()), !dbg !14
  store i32 1, i32* %i, align 4, !dbg !14, !tbaa !15
  %3 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !19
  store i8* getelementptr inbounds ([76 x i8], [76 x i8]* @1, i32 0, i32 0), i8** %3, align 8, !dbg !19, !tbaa !20
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*)* @.omp_outlined..2 to void (i32*, i32*, ...)*), i32* %i), !dbg !19
  %4 = load i32, i32* %i, align 4, !dbg !23, !tbaa !15
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %4), !dbg !24
  %5 = bitcast i32* %i to i8*, !dbg !25
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %5) #5, !dbg !25
  ret i32 0, !dbg !26
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %i) #3 !dbg !27 {
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
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !39
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !36, metadata !DIExpression()), !dbg !40
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !39
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !37, metadata !DIExpression()), !dbg !40
  store i32* %i, i32** %i.addr, align 8, !tbaa !39
  call void @llvm.dbg.declare(metadata i32** %i.addr, metadata !38, metadata !DIExpression()), !dbg !41
  %2 = load i32*, i32** %i.addr, align 8, !dbg !42, !tbaa !39
  store i32 0, i32* %.omp.sections.lb., align 4, !dbg !42, !tbaa !15
  store i32 0, i32* %.omp.sections.ub., align 4, !dbg !42, !tbaa !15
  store i32 1, i32* %.omp.sections.st., align 4, !dbg !42, !tbaa !15
  store i32 0, i32* %.omp.sections.il., align 4, !dbg !42, !tbaa !15
  %3 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !42
  store i8* getelementptr inbounds ([76 x i8], [76 x i8]* @1, i32 0, i32 0), i8** %3, align 8, !dbg !42, !tbaa !20
  %4 = load i32*, i32** %.global_tid..addr, align 8, !dbg !42
  %5 = load i32, i32* %4, align 4, !dbg !42, !tbaa !15
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %5, i32 34, i32* %.omp.sections.il., i32* %.omp.sections.lb., i32* %.omp.sections.ub., i32* %.omp.sections.st., i32 1, i32 1), !dbg !42
  %6 = load i32, i32* %.omp.sections.ub., align 4, !dbg !42, !tbaa !15
  %7 = icmp slt i32 %6, 0, !dbg !42
  %8 = select i1 %7, i32 %6, i32 0, !dbg !42
  store i32 %8, i32* %.omp.sections.ub., align 4, !dbg !42, !tbaa !15
  %9 = load i32, i32* %.omp.sections.lb., align 4, !dbg !42, !tbaa !15
  store i32 %9, i32* %.omp.sections.iv., align 4, !dbg !42, !tbaa !15
  br label %omp.inner.for.cond, !dbg !42

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %entry
  %10 = load i32, i32* %.omp.sections.iv., align 4, !dbg !43, !tbaa !15
  %11 = load i32, i32* %.omp.sections.ub., align 4, !dbg !43, !tbaa !15
  %cmp = icmp sle i32 %10, %11, !dbg !43
  br i1 %cmp, label %omp.inner.for.body, label %omp.inner.for.end, !dbg !42

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %12 = load i32, i32* %.omp.sections.iv., align 4, !dbg !42, !tbaa !15
  switch i32 %12, label %.omp.sections.exit [
    i32 0, label %.omp.sections.case
  ], !dbg !42

.omp.sections.case:                               ; preds = %omp.inner.for.body
  %13 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !44
  store i8* getelementptr inbounds ([76 x i8], [76 x i8]* @2, i32 0, i32 0), i8** %13, align 8, !dbg !44, !tbaa !20
  call void @__kmpc_critical(%struct.ident_t* %.kmpc_loc.addr, i32 %5, [8 x i32]* @.gomp_critical_user_name.var), !dbg !44
  %14 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !47
  store i8* getelementptr inbounds ([76 x i8], [76 x i8]* @5, i32 0, i32 0), i8** %14, align 8, !dbg !47, !tbaa !20
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %2), !dbg !47
  call void @__kmpc_end_critical(%struct.ident_t* %.kmpc_loc.addr, i32 %5, [8 x i32]* @.gomp_critical_user_name.var), !dbg !50
  br label %.omp.sections.exit, !dbg !51

.omp.sections.exit:                               ; preds = %.omp.sections.case, %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !51

omp.inner.for.inc:                                ; preds = %.omp.sections.exit
  %15 = load i32, i32* %.omp.sections.iv., align 4, !dbg !43, !tbaa !15
  %inc = add nsw i32 %15, 1, !dbg !43
  store i32 %inc, i32* %.omp.sections.iv., align 4, !dbg !43, !tbaa !15
  br label %omp.inner.for.cond, !dbg !51, !llvm.loop !52

omp.inner.for.end:                                ; preds = %omp.inner.for.cond
  %16 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !51
  store i8* getelementptr inbounds ([77 x i8], [77 x i8]* @6, i32 0, i32 0), i8** %16, align 8, !dbg !51, !tbaa !20
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %5), !dbg !51
  ret void, !dbg !54
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare dso_local void @__kmpc_end_critical(%struct.ident_t*, i32, [8 x i32]*)

declare dso_local void @__kmpc_critical(%struct.ident_t*, i32, [8 x i32]*)

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__.1(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %i) #3 !dbg !55 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %i.addr = alloca i32*, align 8
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !39
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !57, metadata !DIExpression()), !dbg !60
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !39
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !58, metadata !DIExpression()), !dbg !60
  store i32* %i, i32** %i.addr, align 8, !tbaa !39
  call void @llvm.dbg.declare(metadata i32** %i.addr, metadata !59, metadata !DIExpression()), !dbg !61
  %2 = load i32*, i32** %i.addr, align 8, !dbg !62, !tbaa !39
  %3 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !63
  store i8* getelementptr inbounds ([77 x i8], [77 x i8]* @4, i32 0, i32 0), i8** %3, align 8, !dbg !63, !tbaa !20
  %4 = load i32*, i32** %.global_tid..addr, align 8, !dbg !63
  %5 = load i32, i32* %4, align 4, !dbg !63, !tbaa !15
  %6 = call i32 @__kmpc_single(%struct.ident_t* %.kmpc_loc.addr, i32 %5), !dbg !63
  %7 = icmp ne i32 %6, 0, !dbg !63
  br i1 %7, label %omp_if.then, label %omp_if.end, !dbg !63

omp_if.then:                                      ; preds = %entry
  %8 = load i32, i32* %2, align 4, !dbg !65, !tbaa !15
  %inc = add nsw i32 %8, 1, !dbg !65
  store i32 %inc, i32* %2, align 4, !dbg !65, !tbaa !15
  call void @__kmpc_end_single(%struct.ident_t* %.kmpc_loc.addr, i32 %5), !dbg !68
  br label %omp_if.end, !dbg !68

omp_if.end:                                       ; preds = %omp_if.then, %entry
  %9 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !69
  store i8* getelementptr inbounds ([77 x i8], [77 x i8]* @4, i32 0, i32 0), i8** %9, align 8, !dbg !69, !tbaa !20
  call void @__kmpc_barrier(%struct.ident_t* %.kmpc_loc.addr, i32 %5), !dbg !69
  ret void, !dbg !70
}

declare dso_local void @__kmpc_end_single(%struct.ident_t*, i32)

declare dso_local i32 @__kmpc_single(%struct.ident_t*, i32)

declare dso_local void @__kmpc_barrier(%struct.ident_t*, i32)

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %i) #3 !dbg !71 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %i.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !39
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !73, metadata !DIExpression()), !dbg !76
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !39
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !74, metadata !DIExpression()), !dbg !76
  store i32* %i, i32** %i.addr, align 8, !tbaa !39
  call void @llvm.dbg.declare(metadata i32** %i.addr, metadata !75, metadata !DIExpression()), !dbg !76
  %0 = load i32*, i32** %i.addr, align 8, !dbg !77, !tbaa !39
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !77, !tbaa !39
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !77, !tbaa !39
  %3 = load i32*, i32** %i.addr, align 8, !dbg !77, !tbaa !39
  call void @.omp_outlined._debug__.1(i32* %1, i32* %2, i32* %3) #5, !dbg !77
  ret void, !dbg !77
}

declare !callback !78 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined..2(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %i) #3 !dbg !80 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %i.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !39
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !82, metadata !DIExpression()), !dbg !85
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !39
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !83, metadata !DIExpression()), !dbg !85
  store i32* %i, i32** %i.addr, align 8, !tbaa !39
  call void @llvm.dbg.declare(metadata i32** %i.addr, metadata !84, metadata !DIExpression()), !dbg !85
  %0 = load i32*, i32** %i.addr, align 8, !dbg !86, !tbaa !39
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !86, !tbaa !39
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !86, !tbaa !39
  %3 = load i32*, i32** %i.addr, align 8, !dbg !86, !tbaa !39
  call void @.omp_outlined._debug__(i32* %1, i32* %2, i32* %3) #5, !dbg !86
  ret void, !dbg !86
}

declare dso_local i32 @printf(i8*, ...) #4

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
!1 = !DIFile(filename: "integration/dataracebench/DRB139-worksharingcritical-orig-no.c", directory: "/home/brad/Code/OpenRace/tests/data")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.1 "}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 23, type: !8, scopeLine: 23, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !11)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !{!12}
!12 = !DILocalVariable(name: "i", scope: !7, file: !1, line: 25, type: !10)
!13 = !DILocation(line: 25, column: 3, scope: !7)
!14 = !DILocation(line: 25, column: 7, scope: !7)
!15 = !{!16, !16, i64 0}
!16 = !{!"int", !17, i64 0}
!17 = !{!"omnipotent char", !18, i64 0}
!18 = !{!"Simple C/C++ TBAA"}
!19 = !DILocation(line: 27, column: 3, scope: !7)
!20 = !{!21, !22, i64 16}
!21 = !{!"ident_t", !16, i64 0, !16, i64 4, !16, i64 8, !16, i64 12, !22, i64 16}
!22 = !{!"any pointer", !17, i64 0}
!23 = !DILocation(line: 44, column: 17, scope: !7)
!24 = !DILocation(line: 44, column: 3, scope: !7)
!25 = !DILocation(line: 46, column: 1, scope: !7)
!26 = !DILocation(line: 45, column: 3, scope: !7)
!27 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 28, type: !28, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !35)
!28 = !DISubroutineType(types: !29)
!29 = !{null, !30, !30, !34}
!30 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !31)
!31 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !32)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!34 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !10, size: 64)
!35 = !{!36, !37, !38}
!36 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !27, type: !30, flags: DIFlagArtificial)
!37 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !27, type: !30, flags: DIFlagArtificial)
!38 = !DILocalVariable(name: "i", arg: 3, scope: !27, file: !1, line: 25, type: !34)
!39 = !{!22, !22, i64 0}
!40 = !DILocation(line: 0, scope: !27)
!41 = !DILocation(line: 25, column: 7, scope: !27)
!42 = !DILocation(line: 28, column: 3, scope: !27)
!43 = !DILocation(line: 27, column: 3, scope: !27)
!44 = !DILocation(line: 31, column: 7, scope: !45)
!45 = distinct !DILexicalBlock(scope: !46, file: !1, line: 30, column: 5)
!46 = distinct !DILexicalBlock(scope: !27, file: !1, line: 29, column: 5)
!47 = !DILocation(line: 33, column: 9, scope: !48)
!48 = distinct !DILexicalBlock(scope: !49, file: !1, line: 32, column: 7)
!49 = distinct !DILexicalBlock(scope: !45, file: !1, line: 31, column: 7)
!50 = !DILocation(line: 40, column: 7, scope: !48)
!51 = !DILocation(line: 29, column: 24, scope: !46)
!52 = distinct !{!52, !43, !53}
!53 = !DILocation(line: 27, column: 32, scope: !27)
!54 = !DILocation(line: 42, column: 3, scope: !27)
!55 = distinct !DISubprogram(name: ".omp_outlined._debug__.1", scope: !1, file: !1, line: 34, type: !28, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !56)
!56 = !{!57, !58, !59}
!57 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !55, type: !30, flags: DIFlagArtificial)
!58 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !55, type: !30, flags: DIFlagArtificial)
!59 = !DILocalVariable(name: "i", arg: 3, scope: !55, file: !1, line: 25, type: !34)
!60 = !DILocation(line: 0, scope: !55)
!61 = !DILocation(line: 25, column: 7, scope: !55)
!62 = !DILocation(line: 34, column: 9, scope: !55)
!63 = !DILocation(line: 35, column: 11, scope: !64)
!64 = distinct !DILexicalBlock(scope: !55, file: !1, line: 34, column: 9)
!65 = !DILocation(line: 37, column: 14, scope: !66)
!66 = distinct !DILexicalBlock(scope: !67, file: !1, line: 36, column: 11)
!67 = distinct !DILexicalBlock(scope: !64, file: !1, line: 35, column: 11)
!68 = !DILocation(line: 38, column: 11, scope: !66)
!69 = !DILocation(line: 35, column: 29, scope: !67)
!70 = !DILocation(line: 39, column: 9, scope: !55)
!71 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 34, type: !28, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !72)
!72 = !{!73, !74, !75}
!73 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !71, type: !30, flags: DIFlagArtificial)
!74 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !71, type: !30, flags: DIFlagArtificial)
!75 = !DILocalVariable(name: "i", arg: 3, scope: !71, type: !34, flags: DIFlagArtificial)
!76 = !DILocation(line: 0, scope: !71)
!77 = !DILocation(line: 34, column: 9, scope: !71)
!78 = !{!79}
!79 = !{i64 2, i64 -1, i64 -1, i1 true}
!80 = distinct !DISubprogram(name: ".omp_outlined..2", scope: !1, file: !1, line: 28, type: !28, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !81)
!81 = !{!82, !83, !84}
!82 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !80, type: !30, flags: DIFlagArtificial)
!83 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !80, type: !30, flags: DIFlagArtificial)
!84 = !DILocalVariable(name: "i", arg: 3, scope: !80, type: !34, flags: DIFlagArtificial)
!85 = !DILocation(line: 0, scope: !80)
!86 = !DILocation(line: 28, column: 3, scope: !80)
