; ModuleID = 'integration/dataracebench/DRB118-nestlock-orig-no.c'
source_filename = "integration/dataracebench/DRB118-nestlock-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }
%struct.pair = type { i32, i32, %struct.omp_nest_lock_t }
%struct.omp_nest_lock_t = type { i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 1026, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [65 x i8] c";integration/dataracebench/DRB118-nestlock-orig-no.c;main;42;3;;\00", align 1
@2 = private unnamed_addr constant [66 x i8] c";integration/dataracebench/DRB118-nestlock-orig-no.c;main;42;32;;\00", align 1
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
  %lck = getelementptr inbounds %struct.pair, %struct.pair* %0, i32 0, i32 2, !dbg !52
  call void @omp_set_nest_lock(%struct.omp_nest_lock_t* %lck), !dbg !53
  %1 = load %struct.pair*, %struct.pair** %p.addr, align 8, !dbg !54, !tbaa !34
  %b = getelementptr inbounds %struct.pair, %struct.pair* %1, i32 0, i32 1, !dbg !55
  %2 = load i32, i32* %b, align 4, !dbg !56, !tbaa !57
  %add = add nsw i32 %2, 1, !dbg !56
  store i32 %add, i32* %b, align 4, !dbg !56, !tbaa !57
  %3 = load %struct.pair*, %struct.pair** %p.addr, align 8, !dbg !58, !tbaa !34
  %lck1 = getelementptr inbounds %struct.pair, %struct.pair* %3, i32 0, i32 2, !dbg !59
  call void @omp_unset_nest_lock(%struct.omp_nest_lock_t* %lck1), !dbg !60
  ret void, !dbg !61
}

declare !dbg !4 dso_local void @omp_set_nest_lock(%struct.omp_nest_lock_t*) #2

declare !dbg !13 dso_local void @omp_unset_nest_lock(%struct.omp_nest_lock_t*) #2

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !dbg !62 {
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
  store i32 %argc, i32* %argc.addr, align 4, !tbaa !75
  call void @llvm.dbg.declare(metadata i32* %argc.addr, metadata !69, metadata !DIExpression()), !dbg !76
  store i8** %argv, i8*** %argv.addr, align 8, !tbaa !34
  call void @llvm.dbg.declare(metadata i8*** %argv.addr, metadata !70, metadata !DIExpression()), !dbg !77
  %2 = bitcast [1 x %struct.pair]* %p to i8*, !dbg !78
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %2) #5, !dbg !78
  call void @llvm.dbg.declare(metadata [1 x %struct.pair]* %p, metadata !71, metadata !DIExpression()), !dbg !79
  %arraydecay = getelementptr inbounds [1 x %struct.pair], [1 x %struct.pair]* %p, i64 0, i64 0, !dbg !80
  %a = getelementptr inbounds %struct.pair, %struct.pair* %arraydecay, i32 0, i32 0, !dbg !80
  store i32 0, i32* %a, align 16, !dbg !81, !tbaa !42
  %arraydecay1 = getelementptr inbounds [1 x %struct.pair], [1 x %struct.pair]* %p, i64 0, i64 0, !dbg !82
  %b = getelementptr inbounds %struct.pair, %struct.pair* %arraydecay1, i32 0, i32 1, !dbg !82
  store i32 0, i32* %b, align 4, !dbg !83, !tbaa !57
  %arraydecay2 = getelementptr inbounds [1 x %struct.pair], [1 x %struct.pair]* %p, i64 0, i64 0, !dbg !84
  %lck = getelementptr inbounds %struct.pair, %struct.pair* %arraydecay2, i32 0, i32 2, !dbg !84
  call void @omp_init_nest_lock(%struct.omp_nest_lock_t* %lck), !dbg !85
  %3 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !86
  store i8* getelementptr inbounds ([65 x i8], [65 x i8]* @1, i32 0, i32 0), i8** %3, align 8, !dbg !86, !tbaa !87
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, [1 x %struct.pair]*)* @.omp_outlined. to void (i32*, i32*, ...)*), [1 x %struct.pair]* %p), !dbg !86
  %arraydecay3 = getelementptr inbounds [1 x %struct.pair], [1 x %struct.pair]* %p, i64 0, i64 0, !dbg !89
  %lck4 = getelementptr inbounds %struct.pair, %struct.pair* %arraydecay3, i32 0, i32 2, !dbg !89
  call void @omp_destroy_nest_lock(%struct.omp_nest_lock_t* %lck4), !dbg !90
  %arraydecay5 = getelementptr inbounds [1 x %struct.pair], [1 x %struct.pair]* %p, i64 0, i64 0, !dbg !91
  %b6 = getelementptr inbounds %struct.pair, %struct.pair* %arraydecay5, i32 0, i32 1, !dbg !91
  %4 = load i32, i32* %b6, align 4, !dbg !91, !tbaa !57
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %4), !dbg !92
  %5 = bitcast [1 x %struct.pair]* %p to i8*, !dbg !93
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %5) #5, !dbg !93
  ret i32 0, !dbg !94
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

declare !dbg !14 dso_local void @omp_init_nest_lock(%struct.omp_nest_lock_t*) #2

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., [1 x %struct.pair]* dereferenceable(16) %p) #4 !dbg !95 {
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
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !104, metadata !DIExpression()), !dbg !107
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !34
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !105, metadata !DIExpression()), !dbg !107
  store [1 x %struct.pair]* %p, [1 x %struct.pair]** %p.addr, align 8, !tbaa !34
  call void @llvm.dbg.declare(metadata [1 x %struct.pair]** %p.addr, metadata !106, metadata !DIExpression()), !dbg !108
  %2 = load [1 x %struct.pair]*, [1 x %struct.pair]** %p.addr, align 8, !dbg !109, !tbaa !34
  store i32 0, i32* %.omp.sections.lb., align 4, !dbg !109, !tbaa !75
  store i32 1, i32* %.omp.sections.ub., align 4, !dbg !109, !tbaa !75
  store i32 1, i32* %.omp.sections.st., align 4, !dbg !109, !tbaa !75
  store i32 0, i32* %.omp.sections.il., align 4, !dbg !109, !tbaa !75
  %3 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !109
  store i8* getelementptr inbounds ([65 x i8], [65 x i8]* @1, i32 0, i32 0), i8** %3, align 8, !dbg !109, !tbaa !87
  %4 = load i32*, i32** %.global_tid..addr, align 8, !dbg !109
  %5 = load i32, i32* %4, align 4, !dbg !109, !tbaa !75
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %5, i32 34, i32* %.omp.sections.il., i32* %.omp.sections.lb., i32* %.omp.sections.ub., i32* %.omp.sections.st., i32 1, i32 1), !dbg !109
  %6 = load i32, i32* %.omp.sections.ub., align 4, !dbg !109, !tbaa !75
  %7 = icmp slt i32 %6, 1, !dbg !109
  %8 = select i1 %7, i32 %6, i32 1, !dbg !109
  store i32 %8, i32* %.omp.sections.ub., align 4, !dbg !109, !tbaa !75
  %9 = load i32, i32* %.omp.sections.lb., align 4, !dbg !109, !tbaa !75
  store i32 %9, i32* %.omp.sections.iv., align 4, !dbg !109, !tbaa !75
  br label %omp.inner.for.cond, !dbg !109

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %entry
  %10 = load i32, i32* %.omp.sections.iv., align 4, !dbg !110, !tbaa !75
  %11 = load i32, i32* %.omp.sections.ub., align 4, !dbg !110, !tbaa !75
  %cmp = icmp sle i32 %10, %11, !dbg !110
  br i1 %cmp, label %omp.inner.for.body, label %omp.inner.for.end, !dbg !109

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %12 = load i32, i32* %.omp.sections.iv., align 4, !dbg !109, !tbaa !75
  switch i32 %12, label %.omp.sections.exit [
    i32 0, label %.omp.sections.case
    i32 1, label %.omp.sections.case5
  ], !dbg !109

.omp.sections.case:                               ; preds = %omp.inner.for.body
  %arraydecay = getelementptr inbounds [1 x %struct.pair], [1 x %struct.pair]* %2, i64 0, i64 0, !dbg !111
  %lck = getelementptr inbounds %struct.pair, %struct.pair* %arraydecay, i32 0, i32 2, !dbg !111
  call void @omp_set_nest_lock(%struct.omp_nest_lock_t* %lck), !dbg !114
  %arraydecay1 = getelementptr inbounds [1 x %struct.pair], [1 x %struct.pair]* %2, i64 0, i64 0, !dbg !115
  call void @incr_b(%struct.pair* %arraydecay1), !dbg !116
  %arraydecay2 = getelementptr inbounds [1 x %struct.pair], [1 x %struct.pair]* %2, i64 0, i64 0, !dbg !117
  call void @incr_a(%struct.pair* %arraydecay2), !dbg !118
  %arraydecay3 = getelementptr inbounds [1 x %struct.pair], [1 x %struct.pair]* %2, i64 0, i64 0, !dbg !119
  %lck4 = getelementptr inbounds %struct.pair, %struct.pair* %arraydecay3, i32 0, i32 2, !dbg !119
  call void @omp_unset_nest_lock(%struct.omp_nest_lock_t* %lck4), !dbg !120
  br label %.omp.sections.exit, !dbg !121

.omp.sections.case5:                              ; preds = %omp.inner.for.body
  %arraydecay6 = getelementptr inbounds [1 x %struct.pair], [1 x %struct.pair]* %2, i64 0, i64 0, !dbg !122
  call void @incr_b(%struct.pair* %arraydecay6), !dbg !124
  br label %.omp.sections.exit, !dbg !125

.omp.sections.exit:                               ; preds = %.omp.sections.case5, %.omp.sections.case, %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !125

omp.inner.for.inc:                                ; preds = %.omp.sections.exit
  %13 = load i32, i32* %.omp.sections.iv., align 4, !dbg !110, !tbaa !75
  %inc = add nsw i32 %13, 1, !dbg !110
  store i32 %inc, i32* %.omp.sections.iv., align 4, !dbg !110, !tbaa !75
  br label %omp.inner.for.cond, !dbg !125, !llvm.loop !126

omp.inner.for.end:                                ; preds = %omp.inner.for.cond
  %14 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !125
  store i8* getelementptr inbounds ([66 x i8], [66 x i8]* @2, i32 0, i32 0), i8** %14, align 8, !dbg !125, !tbaa !87
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %5), !dbg !125
  ret void, !dbg !128
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., [1 x %struct.pair]* dereferenceable(16) %p) #4 !dbg !129 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %p.addr = alloca [1 x %struct.pair]*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !34
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !131, metadata !DIExpression()), !dbg !134
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !34
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !132, metadata !DIExpression()), !dbg !134
  store [1 x %struct.pair]* %p, [1 x %struct.pair]** %p.addr, align 8, !tbaa !34
  call void @llvm.dbg.declare(metadata [1 x %struct.pair]** %p.addr, metadata !133, metadata !DIExpression()), !dbg !134
  %0 = load [1 x %struct.pair]*, [1 x %struct.pair]** %p.addr, align 8, !dbg !135, !tbaa !34
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !135, !tbaa !34
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !135, !tbaa !34
  %3 = load [1 x %struct.pair]*, [1 x %struct.pair]** %p.addr, align 8, !dbg !135, !tbaa !34
  call void @.omp_outlined._debug__(i32* %1, i32* %2, [1 x %struct.pair]* %3) #5, !dbg !135
  ret void, !dbg !135
}

declare !callback !136 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

declare !dbg !15 dso_local void @omp_destroy_nest_lock(%struct.omp_nest_lock_t*) #2

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!16, !17, !18}
!llvm.ident = !{!19}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "integration/dataracebench/DRB118-nestlock-orig-no.c", directory: "/home/brad/Code/OpenRace/tests/data")
!2 = !{}
!3 = !{!4, !13, !14, !15}
!4 = !DISubprogram(name: "omp_set_nest_lock", scope: !5, file: !5, line: 98, type: !6, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!5 = !DIFile(filename: "/usr/include/omp.h", directory: "")
!6 = !DISubroutineType(types: !7)
!7 = !{null, !8}
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "omp_nest_lock_t", file: !5, line: 93, size: 64, elements: !10)
!10 = !{!11}
!11 = !DIDerivedType(tag: DW_TAG_member, name: "_lk", scope: !9, file: !5, line: 94, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!13 = !DISubprogram(name: "omp_unset_nest_lock", scope: !5, file: !5, line: 99, type: !6, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!14 = !DISubprogram(name: "omp_init_nest_lock", scope: !5, file: !5, line: 97, type: !6, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!15 = !DISubprogram(name: "omp_destroy_nest_lock", scope: !5, file: !5, line: 100, type: !6, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!16 = !{i32 7, !"Dwarf Version", i32 4}
!17 = !{i32 2, !"Debug Info Version", i32 3}
!18 = !{i32 1, !"wchar_size", i32 4}
!19 = !{!"clang version 10.0.1 "}
!20 = distinct !DISubprogram(name: "incr_a", scope: !1, file: !1, line: 25, type: !21, scopeLine: 25, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !32)
!21 = !DISubroutineType(types: !22)
!22 = !{null, !23}
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_typedef, name: "pair", file: !1, line: 23, baseType: !25)
!25 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 20, size: 128, elements: !26)
!26 = !{!27, !29, !30}
!27 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !25, file: !1, line: 21, baseType: !28, size: 32)
!28 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!29 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !25, file: !1, line: 21, baseType: !28, size: 32, offset: 32)
!30 = !DIDerivedType(tag: DW_TAG_member, name: "lck", scope: !25, file: !1, line: 22, baseType: !31, size: 64, offset: 64)
!31 = !DIDerivedType(tag: DW_TAG_typedef, name: "omp_nest_lock_t", file: !5, line: 95, baseType: !9)
!32 = !{!33}
!33 = !DILocalVariable(name: "p", arg: 1, scope: !20, file: !1, line: 25, type: !23)
!34 = !{!35, !35, i64 0}
!35 = !{!"any pointer", !36, i64 0}
!36 = !{!"omnipotent char", !37, i64 0}
!37 = !{!"Simple C/C++ TBAA"}
!38 = !DILocation(line: 25, column: 19, scope: !20)
!39 = !DILocation(line: 26, column: 3, scope: !20)
!40 = !DILocation(line: 26, column: 6, scope: !20)
!41 = !DILocation(line: 26, column: 8, scope: !20)
!42 = !{!43, !44, i64 0}
!43 = !{!"", !44, i64 0, !44, i64 4, !45, i64 8}
!44 = !{!"int", !36, i64 0}
!45 = !{!"omp_nest_lock_t", !35, i64 0}
!46 = !DILocation(line: 27, column: 1, scope: !20)
!47 = distinct !DISubprogram(name: "incr_b", scope: !1, file: !1, line: 28, type: !21, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !48)
!48 = !{!49}
!49 = !DILocalVariable(name: "p", arg: 1, scope: !47, file: !1, line: 28, type: !23)
!50 = !DILocation(line: 28, column: 19, scope: !47)
!51 = !DILocation(line: 29, column: 22, scope: !47)
!52 = !DILocation(line: 29, column: 25, scope: !47)
!53 = !DILocation(line: 29, column: 3, scope: !47)
!54 = !DILocation(line: 30, column: 5, scope: !47)
!55 = !DILocation(line: 30, column: 8, scope: !47)
!56 = !DILocation(line: 30, column: 10, scope: !47)
!57 = !{!43, !44, i64 4}
!58 = !DILocation(line: 31, column: 24, scope: !47)
!59 = !DILocation(line: 31, column: 27, scope: !47)
!60 = !DILocation(line: 31, column: 3, scope: !47)
!61 = !DILocation(line: 32, column: 1, scope: !47)
!62 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 35, type: !63, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !68)
!63 = !DISubroutineType(types: !64)
!64 = !{!28, !28, !65}
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!67 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!68 = !{!69, !70, !71}
!69 = !DILocalVariable(name: "argc", arg: 1, scope: !62, file: !1, line: 35, type: !28)
!70 = !DILocalVariable(name: "argv", arg: 2, scope: !62, file: !1, line: 35, type: !65)
!71 = !DILocalVariable(name: "p", scope: !62, file: !1, line: 37, type: !72)
!72 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 128, elements: !73)
!73 = !{!74}
!74 = !DISubrange(count: 1)
!75 = !{!44, !44, i64 0}
!76 = !DILocation(line: 35, column: 14, scope: !62)
!77 = !DILocation(line: 35, column: 26, scope: !62)
!78 = !DILocation(line: 37, column: 3, scope: !62)
!79 = !DILocation(line: 37, column: 8, scope: !62)
!80 = !DILocation(line: 38, column: 6, scope: !62)
!81 = !DILocation(line: 38, column: 8, scope: !62)
!82 = !DILocation(line: 39, column: 6, scope: !62)
!83 = !DILocation(line: 39, column: 8, scope: !62)
!84 = !DILocation(line: 40, column: 26, scope: !62)
!85 = !DILocation(line: 40, column: 3, scope: !62)
!86 = !DILocation(line: 42, column: 3, scope: !62)
!87 = !{!88, !35, i64 16}
!88 = !{!"ident_t", !44, i64 0, !44, i64 4, !44, i64 8, !44, i64 12, !35, i64 16}
!89 = !DILocation(line: 55, column: 29, scope: !62)
!90 = !DILocation(line: 55, column: 3, scope: !62)
!91 = !DILocation(line: 57, column: 20, scope: !62)
!92 = !DILocation(line: 57, column: 3, scope: !62)
!93 = !DILocation(line: 59, column: 1, scope: !62)
!94 = !DILocation(line: 58, column: 3, scope: !62)
!95 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 43, type: !96, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !103)
!96 = !DISubroutineType(types: !97)
!97 = !{null, !98, !98, !102}
!98 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !99)
!99 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !100)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !28)
!102 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !72, size: 64)
!103 = !{!104, !105, !106}
!104 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !95, type: !98, flags: DIFlagArtificial)
!105 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !95, type: !98, flags: DIFlagArtificial)
!106 = !DILocalVariable(name: "p", arg: 3, scope: !95, file: !1, line: 37, type: !102)
!107 = !DILocation(line: 0, scope: !95)
!108 = !DILocation(line: 37, column: 8, scope: !95)
!109 = !DILocation(line: 43, column: 3, scope: !95)
!110 = !DILocation(line: 42, column: 3, scope: !95)
!111 = !DILocation(line: 46, column: 29, scope: !112)
!112 = distinct !DILexicalBlock(scope: !113, file: !1, line: 45, column: 5)
!113 = distinct !DILexicalBlock(scope: !95, file: !1, line: 44, column: 5)
!114 = !DILocation(line: 46, column: 7, scope: !112)
!115 = !DILocation(line: 47, column: 14, scope: !112)
!116 = !DILocation(line: 47, column: 7, scope: !112)
!117 = !DILocation(line: 48, column: 14, scope: !112)
!118 = !DILocation(line: 48, column: 7, scope: !112)
!119 = !DILocation(line: 49, column: 31, scope: !112)
!120 = !DILocation(line: 49, column: 7, scope: !112)
!121 = !DILocation(line: 44, column: 24, scope: !113)
!122 = !DILocation(line: 52, column: 14, scope: !123)
!123 = distinct !DILexicalBlock(scope: !95, file: !1, line: 51, column: 5)
!124 = !DILocation(line: 52, column: 7, scope: !123)
!125 = !DILocation(line: 51, column: 24, scope: !123)
!126 = distinct !{!126, !110, !127}
!127 = !DILocation(line: 42, column: 32, scope: !95)
!128 = !DILocation(line: 53, column: 3, scope: !95)
!129 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 43, type: !96, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !130)
!130 = !{!131, !132, !133}
!131 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !129, type: !98, flags: DIFlagArtificial)
!132 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !129, type: !98, flags: DIFlagArtificial)
!133 = !DILocalVariable(name: "p", arg: 3, scope: !129, type: !102, flags: DIFlagArtificial)
!134 = !DILocation(line: 0, scope: !129)
!135 = !DILocation(line: 43, column: 3, scope: !129)
!136 = !{!137}
!137 = !{i64 2, i64 -1, i64 -1, i1 true}
