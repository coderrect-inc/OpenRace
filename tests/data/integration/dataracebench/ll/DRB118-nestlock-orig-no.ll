; ModuleID = 'DRB118-nestlock-orig-no.c'
source_filename = "DRB118-nestlock-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }
%struct.pair = type { i32, i32, %struct.omp_nest_lock_t }
%struct.omp_nest_lock_t = type { i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 1026, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [39 x i8] c";DRB118-nestlock-orig-no.c;main;42;3;;\00", align 1
@2 = private unnamed_addr constant [40 x i8] c";DRB118-nestlock-orig-no.c;main;42;32;;\00", align 1
@3 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @incr_a(%struct.pair* %p) #0 !dbg !7 {
entry:
  %p.addr = alloca %struct.pair*, align 8
  store %struct.pair* %p, %struct.pair** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pair** %p.addr, metadata !24, metadata !DIExpression()), !dbg !25
  %0 = load %struct.pair*, %struct.pair** %p.addr, align 8, !dbg !26
  %a = getelementptr inbounds %struct.pair, %struct.pair* %0, i32 0, i32 0, !dbg !27
  %1 = load i32, i32* %a, align 8, !dbg !28
  %add = add nsw i32 %1, 1, !dbg !28
  store i32 %add, i32* %a, align 8, !dbg !28
  ret void, !dbg !29
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @incr_b(%struct.pair* %p) #0 !dbg !30 {
entry:
  %p.addr = alloca %struct.pair*, align 8
  store %struct.pair* %p, %struct.pair** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.pair** %p.addr, metadata !31, metadata !DIExpression()), !dbg !32
  %0 = load %struct.pair*, %struct.pair** %p.addr, align 8, !dbg !33
  %lck = getelementptr inbounds %struct.pair, %struct.pair* %0, i32 0, i32 2, !dbg !34
  call void @omp_set_nest_lock(%struct.omp_nest_lock_t* %lck), !dbg !35
  %1 = load %struct.pair*, %struct.pair** %p.addr, align 8, !dbg !36
  %b = getelementptr inbounds %struct.pair, %struct.pair* %1, i32 0, i32 1, !dbg !37
  %2 = load i32, i32* %b, align 4, !dbg !38
  %add = add nsw i32 %2, 1, !dbg !38
  store i32 %add, i32* %b, align 4, !dbg !38
  %3 = load %struct.pair*, %struct.pair** %p.addr, align 8, !dbg !39
  %lck1 = getelementptr inbounds %struct.pair, %struct.pair* %3, i32 0, i32 2, !dbg !40
  call void @omp_unset_nest_lock(%struct.omp_nest_lock_t* %lck1), !dbg !41
  ret void, !dbg !42
}

declare dso_local void @omp_set_nest_lock(%struct.omp_nest_lock_t*) #2

declare dso_local void @omp_unset_nest_lock(%struct.omp_nest_lock_t*) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !dbg !43 {
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
  store i32 %argc, i32* %argc.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %argc.addr, metadata !49, metadata !DIExpression()), !dbg !50
  store i8** %argv, i8*** %argv.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %argv.addr, metadata !51, metadata !DIExpression()), !dbg !52
  call void @llvm.dbg.declare(metadata [1 x %struct.pair]* %p, metadata !53, metadata !DIExpression()), !dbg !57
  %arraydecay = getelementptr inbounds [1 x %struct.pair], [1 x %struct.pair]* %p, i64 0, i64 0, !dbg !58
  %a = getelementptr inbounds %struct.pair, %struct.pair* %arraydecay, i32 0, i32 0, !dbg !58
  store i32 0, i32* %a, align 16, !dbg !59
  %arraydecay1 = getelementptr inbounds [1 x %struct.pair], [1 x %struct.pair]* %p, i64 0, i64 0, !dbg !60
  %b = getelementptr inbounds %struct.pair, %struct.pair* %arraydecay1, i32 0, i32 1, !dbg !60
  store i32 0, i32* %b, align 4, !dbg !61
  %arraydecay2 = getelementptr inbounds [1 x %struct.pair], [1 x %struct.pair]* %p, i64 0, i64 0, !dbg !62
  %lck = getelementptr inbounds %struct.pair, %struct.pair* %arraydecay2, i32 0, i32 2, !dbg !62
  call void @omp_init_nest_lock(%struct.omp_nest_lock_t* %lck), !dbg !63
  %2 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !64
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @1, i32 0, i32 0), i8** %2, align 8, !dbg !64
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, [1 x %struct.pair]*)* @.omp_outlined. to void (i32*, i32*, ...)*), [1 x %struct.pair]* %p), !dbg !64
  %arraydecay3 = getelementptr inbounds [1 x %struct.pair], [1 x %struct.pair]* %p, i64 0, i64 0, !dbg !65
  %lck4 = getelementptr inbounds %struct.pair, %struct.pair* %arraydecay3, i32 0, i32 2, !dbg !65
  call void @omp_destroy_nest_lock(%struct.omp_nest_lock_t* %lck4), !dbg !66
  %arraydecay5 = getelementptr inbounds [1 x %struct.pair], [1 x %struct.pair]* %p, i64 0, i64 0, !dbg !67
  %b6 = getelementptr inbounds %struct.pair, %struct.pair* %arraydecay5, i32 0, i32 1, !dbg !67
  %3 = load i32, i32* %b6, align 4, !dbg !67
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %3), !dbg !68
  ret i32 0, !dbg !69
}

declare dso_local void @omp_init_nest_lock(%struct.omp_nest_lock_t*) #2

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., [1 x %struct.pair]* dereferenceable(16) %p) #3 !dbg !70 {
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
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !78, metadata !DIExpression()), !dbg !79
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !80, metadata !DIExpression()), !dbg !79
  store [1 x %struct.pair]* %p, [1 x %struct.pair]** %p.addr, align 8
  call void @llvm.dbg.declare(metadata [1 x %struct.pair]** %p.addr, metadata !81, metadata !DIExpression()), !dbg !82
  %2 = load [1 x %struct.pair]*, [1 x %struct.pair]** %p.addr, align 8, !dbg !83
  store i32 0, i32* %.omp.sections.lb., align 4, !dbg !83
  store i32 1, i32* %.omp.sections.ub., align 4, !dbg !83
  store i32 1, i32* %.omp.sections.st., align 4, !dbg !83
  store i32 0, i32* %.omp.sections.il., align 4, !dbg !83
  %3 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !83
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @1, i32 0, i32 0), i8** %3, align 8, !dbg !83
  %4 = load i32*, i32** %.global_tid..addr, align 8, !dbg !83
  %5 = load i32, i32* %4, align 4, !dbg !83
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %5, i32 34, i32* %.omp.sections.il., i32* %.omp.sections.lb., i32* %.omp.sections.ub., i32* %.omp.sections.st., i32 1, i32 1), !dbg !83
  %6 = load i32, i32* %.omp.sections.ub., align 4, !dbg !83
  %7 = icmp slt i32 %6, 1, !dbg !83
  %8 = select i1 %7, i32 %6, i32 1, !dbg !83
  store i32 %8, i32* %.omp.sections.ub., align 4, !dbg !83
  %9 = load i32, i32* %.omp.sections.lb., align 4, !dbg !83
  store i32 %9, i32* %.omp.sections.iv., align 4, !dbg !83
  br label %omp.inner.for.cond, !dbg !83

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %entry
  %10 = load i32, i32* %.omp.sections.iv., align 4, !dbg !84
  %11 = load i32, i32* %.omp.sections.ub., align 4, !dbg !84
  %cmp = icmp sle i32 %10, %11, !dbg !84
  br i1 %cmp, label %omp.inner.for.body, label %omp.inner.for.end, !dbg !83

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %12 = load i32, i32* %.omp.sections.iv., align 4, !dbg !83
  switch i32 %12, label %.omp.sections.exit [
    i32 0, label %.omp.sections.case
    i32 1, label %.omp.sections.case5
  ], !dbg !83

.omp.sections.case:                               ; preds = %omp.inner.for.body
  %arraydecay = getelementptr inbounds [1 x %struct.pair], [1 x %struct.pair]* %2, i64 0, i64 0, !dbg !85
  %lck = getelementptr inbounds %struct.pair, %struct.pair* %arraydecay, i32 0, i32 2, !dbg !85
  call void @omp_set_nest_lock(%struct.omp_nest_lock_t* %lck), !dbg !88
  %arraydecay1 = getelementptr inbounds [1 x %struct.pair], [1 x %struct.pair]* %2, i64 0, i64 0, !dbg !89
  call void @incr_b(%struct.pair* %arraydecay1), !dbg !90
  %arraydecay2 = getelementptr inbounds [1 x %struct.pair], [1 x %struct.pair]* %2, i64 0, i64 0, !dbg !91
  call void @incr_a(%struct.pair* %arraydecay2), !dbg !92
  %arraydecay3 = getelementptr inbounds [1 x %struct.pair], [1 x %struct.pair]* %2, i64 0, i64 0, !dbg !93
  %lck4 = getelementptr inbounds %struct.pair, %struct.pair* %arraydecay3, i32 0, i32 2, !dbg !93
  call void @omp_unset_nest_lock(%struct.omp_nest_lock_t* %lck4), !dbg !94
  br label %.omp.sections.exit, !dbg !95

.omp.sections.case5:                              ; preds = %omp.inner.for.body
  %arraydecay6 = getelementptr inbounds [1 x %struct.pair], [1 x %struct.pair]* %2, i64 0, i64 0, !dbg !96
  call void @incr_b(%struct.pair* %arraydecay6), !dbg !98
  br label %.omp.sections.exit, !dbg !99

.omp.sections.exit:                               ; preds = %.omp.sections.case5, %.omp.sections.case, %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !99

omp.inner.for.inc:                                ; preds = %.omp.sections.exit
  %13 = load i32, i32* %.omp.sections.iv., align 4, !dbg !84
  %inc = add nsw i32 %13, 1, !dbg !84
  store i32 %inc, i32* %.omp.sections.iv., align 4, !dbg !84
  br label %omp.inner.for.cond, !dbg !99, !llvm.loop !100

omp.inner.for.end:                                ; preds = %omp.inner.for.cond
  %14 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !99
  store i8* getelementptr inbounds ([40 x i8], [40 x i8]* @2, i32 0, i32 0), i8** %14, align 8, !dbg !99
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %5), !dbg !99
  ret void, !dbg !102
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., [1 x %struct.pair]* dereferenceable(16) %p) #3 !dbg !103 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %p.addr = alloca [1 x %struct.pair]*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !104, metadata !DIExpression()), !dbg !105
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !106, metadata !DIExpression()), !dbg !105
  store [1 x %struct.pair]* %p, [1 x %struct.pair]** %p.addr, align 8
  call void @llvm.dbg.declare(metadata [1 x %struct.pair]** %p.addr, metadata !107, metadata !DIExpression()), !dbg !105
  %0 = load [1 x %struct.pair]*, [1 x %struct.pair]** %p.addr, align 8, !dbg !108
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !108
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !108
  %3 = load [1 x %struct.pair]*, [1 x %struct.pair]** %p.addr, align 8, !dbg !108
  call void @.omp_outlined._debug__(i32* %1, i32* %2, [1 x %struct.pair]* %3) #5, !dbg !108
  ret void, !dbg !108
}

declare !callback !109 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

declare dso_local void @omp_destroy_nest_lock(%struct.omp_nest_lock_t*) #2

declare dso_local i32 @printf(i8*, ...) #2

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
!1 = !DIFile(filename: "DRB118-nestlock-orig-no.c", directory: "/home/yanze/code/OpenRace/tests/data/integration/dataracebench")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.1 "}
!7 = distinct !DISubprogram(name: "incr_a", scope: !1, file: !1, line: 25, type: !8, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "pair", file: !1, line: 23, baseType: !12)
!12 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 20, size: 128, elements: !13)
!13 = !{!14, !16, !17}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !12, file: !1, line: 21, baseType: !15, size: 32)
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !12, file: !1, line: 21, baseType: !15, size: 32, offset: 32)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "lck", scope: !12, file: !1, line: 22, baseType: !18, size: 64, offset: 64)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "omp_nest_lock_t", file: !19, line: 95, baseType: !20)
!19 = !DIFile(filename: "/usr/include/omp.h", directory: "")
!20 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "omp_nest_lock_t", file: !19, line: 93, size: 64, elements: !21)
!21 = !{!22}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "_lk", scope: !20, file: !19, line: 94, baseType: !23, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!24 = !DILocalVariable(name: "p", arg: 1, scope: !7, file: !1, line: 25, type: !10)
!25 = !DILocation(line: 25, column: 19, scope: !7)
!26 = !DILocation(line: 26, column: 3, scope: !7)
!27 = !DILocation(line: 26, column: 6, scope: !7)
!28 = !DILocation(line: 26, column: 8, scope: !7)
!29 = !DILocation(line: 27, column: 1, scope: !7)
!30 = distinct !DISubprogram(name: "incr_b", scope: !1, file: !1, line: 28, type: !8, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!31 = !DILocalVariable(name: "p", arg: 1, scope: !30, file: !1, line: 28, type: !10)
!32 = !DILocation(line: 28, column: 19, scope: !30)
!33 = !DILocation(line: 29, column: 22, scope: !30)
!34 = !DILocation(line: 29, column: 25, scope: !30)
!35 = !DILocation(line: 29, column: 3, scope: !30)
!36 = !DILocation(line: 30, column: 5, scope: !30)
!37 = !DILocation(line: 30, column: 8, scope: !30)
!38 = !DILocation(line: 30, column: 10, scope: !30)
!39 = !DILocation(line: 31, column: 24, scope: !30)
!40 = !DILocation(line: 31, column: 27, scope: !30)
!41 = !DILocation(line: 31, column: 3, scope: !30)
!42 = !DILocation(line: 32, column: 1, scope: !30)
!43 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 35, type: !44, scopeLine: 36, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!44 = !DISubroutineType(types: !45)
!45 = !{!15, !15, !46}
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!49 = !DILocalVariable(name: "argc", arg: 1, scope: !43, file: !1, line: 35, type: !15)
!50 = !DILocation(line: 35, column: 14, scope: !43)
!51 = !DILocalVariable(name: "argv", arg: 2, scope: !43, file: !1, line: 35, type: !46)
!52 = !DILocation(line: 35, column: 26, scope: !43)
!53 = !DILocalVariable(name: "p", scope: !43, file: !1, line: 37, type: !54)
!54 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 128, elements: !55)
!55 = !{!56}
!56 = !DISubrange(count: 1)
!57 = !DILocation(line: 37, column: 8, scope: !43)
!58 = !DILocation(line: 38, column: 6, scope: !43)
!59 = !DILocation(line: 38, column: 8, scope: !43)
!60 = !DILocation(line: 39, column: 6, scope: !43)
!61 = !DILocation(line: 39, column: 8, scope: !43)
!62 = !DILocation(line: 40, column: 26, scope: !43)
!63 = !DILocation(line: 40, column: 3, scope: !43)
!64 = !DILocation(line: 42, column: 3, scope: !43)
!65 = !DILocation(line: 55, column: 29, scope: !43)
!66 = !DILocation(line: 55, column: 3, scope: !43)
!67 = !DILocation(line: 57, column: 20, scope: !43)
!68 = !DILocation(line: 57, column: 3, scope: !43)
!69 = !DILocation(line: 58, column: 3, scope: !43)
!70 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 43, type: !71, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!71 = !DISubroutineType(types: !72)
!72 = !{null, !73, !73, !77}
!73 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !74)
!74 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !75)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!77 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !54, size: 64)
!78 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !70, type: !73, flags: DIFlagArtificial)
!79 = !DILocation(line: 0, scope: !70)
!80 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !70, type: !73, flags: DIFlagArtificial)
!81 = !DILocalVariable(name: "p", arg: 3, scope: !70, file: !1, line: 37, type: !77)
!82 = !DILocation(line: 37, column: 8, scope: !70)
!83 = !DILocation(line: 43, column: 3, scope: !70)
!84 = !DILocation(line: 42, column: 3, scope: !70)
!85 = !DILocation(line: 46, column: 29, scope: !86)
!86 = distinct !DILexicalBlock(scope: !87, file: !1, line: 45, column: 5)
!87 = distinct !DILexicalBlock(scope: !70, file: !1, line: 44, column: 5)
!88 = !DILocation(line: 46, column: 7, scope: !86)
!89 = !DILocation(line: 47, column: 14, scope: !86)
!90 = !DILocation(line: 47, column: 7, scope: !86)
!91 = !DILocation(line: 48, column: 14, scope: !86)
!92 = !DILocation(line: 48, column: 7, scope: !86)
!93 = !DILocation(line: 49, column: 31, scope: !86)
!94 = !DILocation(line: 49, column: 7, scope: !86)
!95 = !DILocation(line: 44, column: 24, scope: !87)
!96 = !DILocation(line: 52, column: 14, scope: !97)
!97 = distinct !DILexicalBlock(scope: !70, file: !1, line: 51, column: 5)
!98 = !DILocation(line: 52, column: 7, scope: !97)
!99 = !DILocation(line: 51, column: 24, scope: !97)
!100 = distinct !{!100, !84, !101}
!101 = !DILocation(line: 42, column: 32, scope: !70)
!102 = !DILocation(line: 53, column: 3, scope: !70)
!103 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 43, type: !71, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!104 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !103, type: !73, flags: DIFlagArtificial)
!105 = !DILocation(line: 0, scope: !103)
!106 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !103, type: !73, flags: DIFlagArtificial)
!107 = !DILocalVariable(name: "p", arg: 3, scope: !103, type: !77, flags: DIFlagArtificial)
!108 = !DILocation(line: 43, column: 3, scope: !103)
!109 = !{!110}
!110 = !{i64 2, i64 -1, i64 -1, i1 true}
