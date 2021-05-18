; ModuleID = 'integration/dataracebench/DRB119-nestlock-orig-yes.c'
source_filename = "integration/dataracebench/DRB119-nestlock-orig-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }
%struct.pair = type { i32, i32, %struct.omp_nest_lock_t }
%struct.omp_nest_lock_t = type { i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 1026, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [66 x i8] c";integration/dataracebench/DRB119-nestlock-orig-yes.c;main;43;3;;\00", align 1
@2 = private unnamed_addr constant [67 x i8] c";integration/dataracebench/DRB119-nestlock-orig-yes.c;main;43;32;;\00", align 1
@3 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @incr_a(%struct.pair* %p) #0 !dbg !20 {
entry:
  %p.addr = alloca %struct.pair*, align 8
  store %struct.pair* %p, %struct.pair** %p.addr, align 8, !tbaa !34
  call void @llvm.dbg.declare(metadata %struct.pair** %p.addr, metadata !33, metadata !DIExpression()), !dbg !38
  %0 = load %struct.pair*, %struct.pair** %p.addr, align 8, !dbg !39, !tbaa !34
  %a = getelementptr inbounds %struct.pair, %struct.pair* %0, i32 0, i32 0, !dbg !40
  %1 = load i32, i32* %a, align 8, !dbg !41, !tbaa !42
  %add = add nsw i32 %1, 1, !dbg !41
  store i32 %add, i32* %a, align 8, !dbg !41, !tbaa !42
  ret void, !dbg !46
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define dso_local void @incr_b(%struct.pair* %p) #0 !dbg !47 {
entry:
  %p.addr = alloca %struct.pair*, align 8
  store %struct.pair* %p, %struct.pair** %p.addr, align 8, !tbaa !34
  call void @llvm.dbg.declare(metadata %struct.pair** %p.addr, metadata !49, metadata !DIExpression()), !dbg !50
  %0 = load %struct.pair*, %struct.pair** %p.addr, align 8, !dbg !51, !tbaa !34
  %b = getelementptr inbounds %struct.pair, %struct.pair* %0, i32 0, i32 1, !dbg !52
  %1 = load i32, i32* %b, align 4, !dbg !53, !tbaa !54
  %add = add nsw i32 %1, 1, !dbg !53
  store i32 %add, i32* %b, align 4, !dbg !53, !tbaa !54
  ret void, !dbg !55
}

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !dbg !56 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %p = alloca [1 x %struct.pair], align 16
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4, !tbaa !69
  call void @llvm.dbg.declare(metadata i32* %argc.addr, metadata !63, metadata !DIExpression()), !dbg !70
  store i8** %argv, i8*** %argv.addr, align 8, !tbaa !34
  call void @llvm.dbg.declare(metadata i8*** %argv.addr, metadata !64, metadata !DIExpression()), !dbg !71
  %2 = bitcast [1 x %struct.pair]* %p to i8*, !dbg !72
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %2) #5, !dbg !72
  call void @llvm.dbg.declare(metadata [1 x %struct.pair]* %p, metadata !65, metadata !DIExpression()), !dbg !73
  %arraydecay = getelementptr inbounds [1 x %struct.pair], [1 x %struct.pair]* %p, i64 0, i64 0, !dbg !74
  %a = getelementptr inbounds %struct.pair, %struct.pair* %arraydecay, i32 0, i32 0, !dbg !74
  store i32 0, i32* %a, align 16, !dbg !75, !tbaa !42
  %arraydecay1 = getelementptr inbounds [1 x %struct.pair], [1 x %struct.pair]* %p, i64 0, i64 0, !dbg !76
  %b = getelementptr inbounds %struct.pair, %struct.pair* %arraydecay1, i32 0, i32 1, !dbg !76
  store i32 0, i32* %b, align 4, !dbg !77, !tbaa !54
  %arraydecay2 = getelementptr inbounds [1 x %struct.pair], [1 x %struct.pair]* %p, i64 0, i64 0, !dbg !78
  %lck = getelementptr inbounds %struct.pair, %struct.pair* %arraydecay2, i32 0, i32 2, !dbg !78
  call void @omp_init_nest_lock(%struct.omp_nest_lock_t* %lck), !dbg !79
  %3 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !80
  store i8* getelementptr inbounds ([66 x i8], [66 x i8]* @1, i32 0, i32 0), i8** %3, align 8, !dbg !80, !tbaa !81
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, [1 x %struct.pair]*)* @.omp_outlined. to void (i32*, i32*, ...)*), [1 x %struct.pair]* %p), !dbg !80
  %arraydecay3 = getelementptr inbounds [1 x %struct.pair], [1 x %struct.pair]* %p, i64 0, i64 0, !dbg !83
  %lck4 = getelementptr inbounds %struct.pair, %struct.pair* %arraydecay3, i32 0, i32 2, !dbg !83
  call void @omp_destroy_nest_lock(%struct.omp_nest_lock_t* %lck4), !dbg !84
  %arraydecay5 = getelementptr inbounds [1 x %struct.pair], [1 x %struct.pair]* %p, i64 0, i64 0, !dbg !85
  %b6 = getelementptr inbounds %struct.pair, %struct.pair* %arraydecay5, i32 0, i32 1, !dbg !85
  %4 = load i32, i32* %b6, align 4, !dbg !85, !tbaa !54
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %4), !dbg !86
  %5 = bitcast [1 x %struct.pair]* %p to i8*, !dbg !87
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %5) #5, !dbg !87
  ret i32 0, !dbg !88
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

declare !dbg !4 dso_local void @omp_init_nest_lock(%struct.omp_nest_lock_t*) #3

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., [1 x %struct.pair]* dereferenceable(16) %p) #4 !dbg !89 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %p.addr = alloca [1 x %struct.pair]*, align 8
  %.omp.sections.lb. = alloca i32, align 4
  %.omp.sections.ub. = alloca i32, align 4
  %.omp.sections.st. = alloca i32, align 4
  %.omp.sections.il. = alloca i32, align 4
  %.omp.sections.iv. = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !34
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !98, metadata !DIExpression()), !dbg !101
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !34
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !99, metadata !DIExpression()), !dbg !101
  store [1 x %struct.pair]* %p, [1 x %struct.pair]** %p.addr, align 8, !tbaa !34
  call void @llvm.dbg.declare(metadata [1 x %struct.pair]** %p.addr, metadata !100, metadata !DIExpression()), !dbg !102
  %2 = load [1 x %struct.pair]*, [1 x %struct.pair]** %p.addr, align 8, !dbg !103, !tbaa !34
  store i32 0, i32* %.omp.sections.lb., align 4, !dbg !103, !tbaa !69
  store i32 1, i32* %.omp.sections.ub., align 4, !dbg !103, !tbaa !69
  store i32 1, i32* %.omp.sections.st., align 4, !dbg !103, !tbaa !69
  store i32 0, i32* %.omp.sections.il., align 4, !dbg !103, !tbaa !69
  %3 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !103
  store i8* getelementptr inbounds ([66 x i8], [66 x i8]* @1, i32 0, i32 0), i8** %3, align 8, !dbg !103, !tbaa !81
  %4 = load i32*, i32** %.global_tid..addr, align 8, !dbg !103
  %5 = load i32, i32* %4, align 4, !dbg !103, !tbaa !69
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %5, i32 34, i32* %.omp.sections.il., i32* %.omp.sections.lb., i32* %.omp.sections.ub., i32* %.omp.sections.st., i32 1, i32 1), !dbg !103
  %6 = load i32, i32* %.omp.sections.ub., align 4, !dbg !103, !tbaa !69
  %7 = icmp slt i32 %6, 1, !dbg !103
  %8 = select i1 %7, i32 %6, i32 1, !dbg !103
  store i32 %8, i32* %.omp.sections.ub., align 4, !dbg !103, !tbaa !69
  %9 = load i32, i32* %.omp.sections.lb., align 4, !dbg !103, !tbaa !69
  store i32 %9, i32* %.omp.sections.iv., align 4, !dbg !103, !tbaa !69
  br label %omp.inner.for.cond, !dbg !103

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %entry
  %10 = load i32, i32* %.omp.sections.iv., align 4, !dbg !104, !tbaa !69
  %11 = load i32, i32* %.omp.sections.ub., align 4, !dbg !104, !tbaa !69
  %cmp = icmp sle i32 %10, %11, !dbg !104
  br i1 %cmp, label %omp.inner.for.body, label %omp.inner.for.end, !dbg !103

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %12 = load i32, i32* %.omp.sections.iv., align 4, !dbg !103, !tbaa !69
  switch i32 %12, label %.omp.sections.exit [
    i32 0, label %.omp.sections.case
    i32 1, label %.omp.sections.case5
  ], !dbg !103

.omp.sections.case:                               ; preds = %omp.inner.for.body
  %arraydecay = getelementptr inbounds [1 x %struct.pair], [1 x %struct.pair]* %2, i64 0, i64 0, !dbg !105
  %lck = getelementptr inbounds %struct.pair, %struct.pair* %arraydecay, i32 0, i32 2, !dbg !105
  call void @omp_set_nest_lock(%struct.omp_nest_lock_t* %lck), !dbg !108
  %arraydecay1 = getelementptr inbounds [1 x %struct.pair], [1 x %struct.pair]* %2, i64 0, i64 0, !dbg !109
  call void @incr_b(%struct.pair* %arraydecay1), !dbg !110
  %arraydecay2 = getelementptr inbounds [1 x %struct.pair], [1 x %struct.pair]* %2, i64 0, i64 0, !dbg !111
  call void @incr_a(%struct.pair* %arraydecay2), !dbg !112
  %arraydecay3 = getelementptr inbounds [1 x %struct.pair], [1 x %struct.pair]* %2, i64 0, i64 0, !dbg !113
  %lck4 = getelementptr inbounds %struct.pair, %struct.pair* %arraydecay3, i32 0, i32 2, !dbg !113
  call void @omp_unset_nest_lock(%struct.omp_nest_lock_t* %lck4), !dbg !114
  br label %.omp.sections.exit, !dbg !115

.omp.sections.case5:                              ; preds = %omp.inner.for.body
  %arraydecay6 = getelementptr inbounds [1 x %struct.pair], [1 x %struct.pair]* %2, i64 0, i64 0, !dbg !116
  call void @incr_b(%struct.pair* %arraydecay6), !dbg !118
  br label %.omp.sections.exit, !dbg !119

.omp.sections.exit:                               ; preds = %.omp.sections.case5, %.omp.sections.case, %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !119

omp.inner.for.inc:                                ; preds = %.omp.sections.exit
  %13 = load i32, i32* %.omp.sections.iv., align 4, !dbg !104, !tbaa !69
  %inc = add nsw i32 %13, 1, !dbg !104
  store i32 %inc, i32* %.omp.sections.iv., align 4, !dbg !104, !tbaa !69
  br label %omp.inner.for.cond, !dbg !119, !llvm.loop !120

omp.inner.for.end:                                ; preds = %omp.inner.for.cond
  %14 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !119
  store i8* getelementptr inbounds ([67 x i8], [67 x i8]* @2, i32 0, i32 0), i8** %14, align 8, !dbg !119, !tbaa !81
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %5), !dbg !119
  ret void, !dbg !122
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare !dbg !13 dso_local void @omp_set_nest_lock(%struct.omp_nest_lock_t*) #3

declare !dbg !14 dso_local void @omp_unset_nest_lock(%struct.omp_nest_lock_t*) #3

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., [1 x %struct.pair]* dereferenceable(16) %p) #4 !dbg !123 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %p.addr = alloca [1 x %struct.pair]*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !34
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !125, metadata !DIExpression()), !dbg !128
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !34
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !126, metadata !DIExpression()), !dbg !128
  store [1 x %struct.pair]* %p, [1 x %struct.pair]** %p.addr, align 8, !tbaa !34
  call void @llvm.dbg.declare(metadata [1 x %struct.pair]** %p.addr, metadata !127, metadata !DIExpression()), !dbg !128
  %0 = load [1 x %struct.pair]*, [1 x %struct.pair]** %p.addr, align 8, !dbg !129, !tbaa !34
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !129, !tbaa !34
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !129, !tbaa !34
  %3 = load [1 x %struct.pair]*, [1 x %struct.pair]** %p.addr, align 8, !dbg !129, !tbaa !34
  call void @.omp_outlined._debug__(i32* %1, i32* %2, [1 x %struct.pair]* %3) #5, !dbg !129
  ret void, !dbg !129
}

declare !callback !130 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

declare !dbg !15 dso_local void @omp_destroy_nest_lock(%struct.omp_nest_lock_t*) #3

declare dso_local i32 @printf(i8*, ...) #3

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!16, !17, !18}
!llvm.ident = !{!19}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "integration/dataracebench/DRB119-nestlock-orig-yes.c", directory: "/home/brad/Code/OpenRace/tests/data")
!2 = !{}
!3 = !{!4, !13, !14, !15}
!4 = !DISubprogram(name: "omp_init_nest_lock", scope: !5, file: !5, line: 97, type: !6, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!5 = !DIFile(filename: "/usr/include/omp.h", directory: "")
!6 = !DISubroutineType(types: !7)
!7 = !{null, !8}
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "omp_nest_lock_t", file: !5, line: 93, size: 64, elements: !10)
!10 = !{!11}
!11 = !DIDerivedType(tag: DW_TAG_member, name: "_lk", scope: !9, file: !5, line: 94, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!13 = !DISubprogram(name: "omp_set_nest_lock", scope: !5, file: !5, line: 98, type: !6, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!14 = !DISubprogram(name: "omp_unset_nest_lock", scope: !5, file: !5, line: 99, type: !6, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!15 = !DISubprogram(name: "omp_destroy_nest_lock", scope: !5, file: !5, line: 100, type: !6, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!16 = !{i32 7, !"Dwarf Version", i32 4}
!17 = !{i32 2, !"Debug Info Version", i32 3}
!18 = !{i32 1, !"wchar_size", i32 4}
!19 = !{!"clang version 10.0.1 "}
!20 = distinct !DISubprogram(name: "incr_a", scope: !1, file: !1, line: 27, type: !21, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !32)
!21 = !DISubroutineType(types: !22)
!22 = !{null, !23}
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "pair", file: !1, line: 25, baseType: !25)
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 22, size: 128, elements: !26)
!26 = !{!27, !29, !30}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !25, file: !1, line: 23, baseType: !28, size: 32)
!28 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !25, file: !1, line: 23, baseType: !28, size: 32, offset: 32)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "lck", scope: !25, file: !1, line: 24, baseType: !31, size: 64, offset: 64)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "omp_nest_lock_t", file: !5, line: 95, baseType: !9)
!32 = !{!33}
!33 = !DILocalVariable(name: "p", arg: 1, scope: !20, file: !1, line: 27, type: !23)
!34 = !{!35, !35, i64 0}
!35 = !{!"any pointer", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !DILocation(line: 27, column: 19, scope: !20)
!39 = !DILocation(line: 28, column: 3, scope: !20)
!40 = !DILocation(line: 28, column: 6, scope: !20)
!41 = !DILocation(line: 28, column: 8, scope: !20)
!42 = !{!43, !44, i64 0}
!43 = !{!"", !44, i64 0, !44, i64 4, !45, i64 8}
!44 = !{!"int", !36, i64 0}
!45 = !{!"omp_nest_lock_t", !35, i64 0}
!46 = !DILocation(line: 29, column: 1, scope: !20)
!47 = distinct !DISubprogram(name: "incr_b", scope: !1, file: !1, line: 31, type: !21, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !48)
!48 = !{!49}
!49 = !DILocalVariable(name: "p", arg: 1, scope: !47, file: !1, line: 31, type: !23)
!50 = !DILocation(line: 31, column: 19, scope: !47)
!51 = !DILocation(line: 32, column: 3, scope: !47)
!52 = !DILocation(line: 32, column: 6, scope: !47)
!53 = !DILocation(line: 32, column: 8, scope: !47)
!54 = !{!43, !44, i64 4}
!55 = !DILocation(line: 33, column: 1, scope: !47)
!56 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 36, type: !57, scopeLine: 37, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !62)
!57 = !DISubroutineType(types: !58)
!58 = !{!28, !28, !59}
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !61, size: 64)
!61 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!62 = !{!63, !64, !65}
!63 = !DILocalVariable(name: "argc", arg: 1, scope: !56, file: !1, line: 36, type: !28)
!64 = !DILocalVariable(name: "argv", arg: 2, scope: !56, file: !1, line: 36, type: !59)
!65 = !DILocalVariable(name: "p", scope: !56, file: !1, line: 38, type: !66)
!66 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 128, elements: !67)
!67 = !{!68}
!68 = !DISubrange(count: 1)
!69 = !{!44, !44, i64 0}
!70 = !DILocation(line: 36, column: 14, scope: !56)
!71 = !DILocation(line: 36, column: 26, scope: !56)
!72 = !DILocation(line: 38, column: 3, scope: !56)
!73 = !DILocation(line: 38, column: 8, scope: !56)
!74 = !DILocation(line: 39, column: 6, scope: !56)
!75 = !DILocation(line: 39, column: 8, scope: !56)
!76 = !DILocation(line: 40, column: 6, scope: !56)
!77 = !DILocation(line: 40, column: 8, scope: !56)
!78 = !DILocation(line: 41, column: 26, scope: !56)
!79 = !DILocation(line: 41, column: 3, scope: !56)
!80 = !DILocation(line: 43, column: 3, scope: !56)
!81 = !{!82, !35, i64 16}
!82 = !{!"ident_t", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !35, i64 16}
!83 = !DILocation(line: 56, column: 29, scope: !56)
!84 = !DILocation(line: 56, column: 3, scope: !56)
!85 = !DILocation(line: 58, column: 20, scope: !56)
!86 = !DILocation(line: 58, column: 3, scope: !56)
!87 = !DILocation(line: 60, column: 1, scope: !56)
!88 = !DILocation(line: 59, column: 3, scope: !56)
!89 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 44, type: !90, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !97)
!90 = !DISubroutineType(types: !91)
!91 = !{null, !92, !92, !96}
!92 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !93)
!93 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !94)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !28)
!96 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !66, size: 64)
!97 = !{!98, !99, !100}
!98 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !89, type: !92, flags: DIFlagArtificial)
!99 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !89, type: !92, flags: DIFlagArtificial)
!100 = !DILocalVariable(name: "p", arg: 3, scope: !89, file: !1, line: 38, type: !96)
!101 = !DILocation(line: 0, scope: !89)
!102 = !DILocation(line: 38, column: 8, scope: !89)
!103 = !DILocation(line: 44, column: 3, scope: !89)
!104 = !DILocation(line: 43, column: 3, scope: !89)
!105 = !DILocation(line: 47, column: 29, scope: !106)
!106 = distinct !DILexicalBlock(scope: !107, file: !1, line: 46, column: 5)
!107 = distinct !DILexicalBlock(scope: !89, file: !1, line: 45, column: 5)
!108 = !DILocation(line: 47, column: 7, scope: !106)
!109 = !DILocation(line: 48, column: 14, scope: !106)
!110 = !DILocation(line: 48, column: 7, scope: !106)
!111 = !DILocation(line: 49, column: 14, scope: !106)
!112 = !DILocation(line: 49, column: 7, scope: !106)
!113 = !DILocation(line: 50, column: 31, scope: !106)
!114 = !DILocation(line: 50, column: 7, scope: !106)
!115 = !DILocation(line: 45, column: 24, scope: !107)
!116 = !DILocation(line: 53, column: 14, scope: !117)
!117 = distinct !DILexicalBlock(scope: !89, file: !1, line: 52, column: 5)
!118 = !DILocation(line: 53, column: 7, scope: !117)
!119 = !DILocation(line: 52, column: 24, scope: !117)
!120 = distinct !{!120, !104, !121}
!121 = !DILocation(line: 43, column: 32, scope: !89)
!122 = !DILocation(line: 54, column: 3, scope: !89)
!123 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 44, type: !90, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !124)
!124 = !{!125, !126, !127}
!125 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !123, type: !92, flags: DIFlagArtificial)
!126 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !123, type: !92, flags: DIFlagArtificial)
!127 = !DILocalVariable(name: "p", arg: 3, scope: !123, type: !96, flags: DIFlagArtificial)
!128 = !DILocation(line: 0, scope: !123)
!129 = !DILocation(line: 44, column: 3, scope: !123)
!130 = !{!131}
!131 = !{i64 2, i64 -1, i64 -1, i1 true}
