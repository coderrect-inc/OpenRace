; ModuleID = 'DRB119-nestlock-orig-yes.c'
source_filename = "DRB119-nestlock-orig-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }
%struct.pair = type { i32, i32, %struct.omp_nest_lock_t }
%struct.omp_nest_lock_t = type { i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 1026, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [40 x i8] c";DRB119-nestlock-orig-yes.c;main;43;3;;\00", align 1
@2 = private unnamed_addr constant [41 x i8] c";DRB119-nestlock-orig-yes.c;main;43;32;;\00", align 1
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
  %b = getelementptr inbounds %struct.pair, %struct.pair* %0, i32 0, i32 1, !dbg !34
  %1 = load i32, i32* %b, align 4, !dbg !35
  %add = add nsw i32 %1, 1, !dbg !35
  store i32 %add, i32* %b, align 4, !dbg !35
  ret void, !dbg !36
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !dbg !37 {
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
  call void @llvm.dbg.declare(metadata i32* %argc.addr, metadata !43, metadata !DIExpression()), !dbg !44
  store i8** %argv, i8*** %argv.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %argv.addr, metadata !45, metadata !DIExpression()), !dbg !46
  call void @llvm.dbg.declare(metadata [1 x %struct.pair]* %p, metadata !47, metadata !DIExpression()), !dbg !51
  %arraydecay = getelementptr inbounds [1 x %struct.pair], [1 x %struct.pair]* %p, i64 0, i64 0, !dbg !52
  %a = getelementptr inbounds %struct.pair, %struct.pair* %arraydecay, i32 0, i32 0, !dbg !52
  store i32 0, i32* %a, align 16, !dbg !53
  %arraydecay1 = getelementptr inbounds [1 x %struct.pair], [1 x %struct.pair]* %p, i64 0, i64 0, !dbg !54
  %b = getelementptr inbounds %struct.pair, %struct.pair* %arraydecay1, i32 0, i32 1, !dbg !54
  store i32 0, i32* %b, align 4, !dbg !55
  %arraydecay2 = getelementptr inbounds [1 x %struct.pair], [1 x %struct.pair]* %p, i64 0, i64 0, !dbg !56
  %lck = getelementptr inbounds %struct.pair, %struct.pair* %arraydecay2, i32 0, i32 2, !dbg !56
  call void @omp_init_nest_lock(%struct.omp_nest_lock_t* %lck), !dbg !57
  %2 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !58
  store i8* getelementptr inbounds ([40 x i8], [40 x i8]* @1, i32 0, i32 0), i8** %2, align 8, !dbg !58
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, [1 x %struct.pair]*)* @.omp_outlined. to void (i32*, i32*, ...)*), [1 x %struct.pair]* %p), !dbg !58
  %arraydecay3 = getelementptr inbounds [1 x %struct.pair], [1 x %struct.pair]* %p, i64 0, i64 0, !dbg !59
  %lck4 = getelementptr inbounds %struct.pair, %struct.pair* %arraydecay3, i32 0, i32 2, !dbg !59
  call void @omp_destroy_nest_lock(%struct.omp_nest_lock_t* %lck4), !dbg !60
  %arraydecay5 = getelementptr inbounds [1 x %struct.pair], [1 x %struct.pair]* %p, i64 0, i64 0, !dbg !61
  %b6 = getelementptr inbounds %struct.pair, %struct.pair* %arraydecay5, i32 0, i32 1, !dbg !61
  %3 = load i32, i32* %b6, align 4, !dbg !61
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %3), !dbg !62
  ret i32 0, !dbg !63
}

declare dso_local void @omp_init_nest_lock(%struct.omp_nest_lock_t*) #2

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., [1 x %struct.pair]* dereferenceable(16) %p) #3 !dbg !64 {
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
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !72, metadata !DIExpression()), !dbg !73
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !74, metadata !DIExpression()), !dbg !73
  store [1 x %struct.pair]* %p, [1 x %struct.pair]** %p.addr, align 8
  call void @llvm.dbg.declare(metadata [1 x %struct.pair]** %p.addr, metadata !75, metadata !DIExpression()), !dbg !76
  %2 = load [1 x %struct.pair]*, [1 x %struct.pair]** %p.addr, align 8, !dbg !77
  store i32 0, i32* %.omp.sections.lb., align 4, !dbg !77
  store i32 1, i32* %.omp.sections.ub., align 4, !dbg !77
  store i32 1, i32* %.omp.sections.st., align 4, !dbg !77
  store i32 0, i32* %.omp.sections.il., align 4, !dbg !77
  %3 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !77
  store i8* getelementptr inbounds ([40 x i8], [40 x i8]* @1, i32 0, i32 0), i8** %3, align 8, !dbg !77
  %4 = load i32*, i32** %.global_tid..addr, align 8, !dbg !77
  %5 = load i32, i32* %4, align 4, !dbg !77
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %5, i32 34, i32* %.omp.sections.il., i32* %.omp.sections.lb., i32* %.omp.sections.ub., i32* %.omp.sections.st., i32 1, i32 1), !dbg !77
  %6 = load i32, i32* %.omp.sections.ub., align 4, !dbg !77
  %7 = icmp slt i32 %6, 1, !dbg !77
  %8 = select i1 %7, i32 %6, i32 1, !dbg !77
  store i32 %8, i32* %.omp.sections.ub., align 4, !dbg !77
  %9 = load i32, i32* %.omp.sections.lb., align 4, !dbg !77
  store i32 %9, i32* %.omp.sections.iv., align 4, !dbg !77
  br label %omp.inner.for.cond, !dbg !77

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %entry
  %10 = load i32, i32* %.omp.sections.iv., align 4, !dbg !78
  %11 = load i32, i32* %.omp.sections.ub., align 4, !dbg !78
  %cmp = icmp sle i32 %10, %11, !dbg !78
  br i1 %cmp, label %omp.inner.for.body, label %omp.inner.for.end, !dbg !77

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %12 = load i32, i32* %.omp.sections.iv., align 4, !dbg !77
  switch i32 %12, label %.omp.sections.exit [
    i32 0, label %.omp.sections.case
    i32 1, label %.omp.sections.case5
  ], !dbg !77

.omp.sections.case:                               ; preds = %omp.inner.for.body
  %arraydecay = getelementptr inbounds [1 x %struct.pair], [1 x %struct.pair]* %2, i64 0, i64 0, !dbg !79
  %lck = getelementptr inbounds %struct.pair, %struct.pair* %arraydecay, i32 0, i32 2, !dbg !79
  call void @omp_set_nest_lock(%struct.omp_nest_lock_t* %lck), !dbg !82
  %arraydecay1 = getelementptr inbounds [1 x %struct.pair], [1 x %struct.pair]* %2, i64 0, i64 0, !dbg !83
  call void @incr_b(%struct.pair* %arraydecay1), !dbg !84
  %arraydecay2 = getelementptr inbounds [1 x %struct.pair], [1 x %struct.pair]* %2, i64 0, i64 0, !dbg !85
  call void @incr_a(%struct.pair* %arraydecay2), !dbg !86
  %arraydecay3 = getelementptr inbounds [1 x %struct.pair], [1 x %struct.pair]* %2, i64 0, i64 0, !dbg !87
  %lck4 = getelementptr inbounds %struct.pair, %struct.pair* %arraydecay3, i32 0, i32 2, !dbg !87
  call void @omp_unset_nest_lock(%struct.omp_nest_lock_t* %lck4), !dbg !88
  br label %.omp.sections.exit, !dbg !89

.omp.sections.case5:                              ; preds = %omp.inner.for.body
  %arraydecay6 = getelementptr inbounds [1 x %struct.pair], [1 x %struct.pair]* %2, i64 0, i64 0, !dbg !90
  call void @incr_b(%struct.pair* %arraydecay6), !dbg !92
  br label %.omp.sections.exit, !dbg !93

.omp.sections.exit:                               ; preds = %.omp.sections.case5, %.omp.sections.case, %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !93

omp.inner.for.inc:                                ; preds = %.omp.sections.exit
  %13 = load i32, i32* %.omp.sections.iv., align 4, !dbg !78
  %inc = add nsw i32 %13, 1, !dbg !78
  store i32 %inc, i32* %.omp.sections.iv., align 4, !dbg !78
  br label %omp.inner.for.cond, !dbg !93, !llvm.loop !94

omp.inner.for.end:                                ; preds = %omp.inner.for.cond
  %14 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !93
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @2, i32 0, i32 0), i8** %14, align 8, !dbg !93
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %5), !dbg !93
  ret void, !dbg !96
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare dso_local void @omp_set_nest_lock(%struct.omp_nest_lock_t*) #2

declare dso_local void @omp_unset_nest_lock(%struct.omp_nest_lock_t*) #2

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., [1 x %struct.pair]* dereferenceable(16) %p) #3 !dbg !97 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %p.addr = alloca [1 x %struct.pair]*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !98, metadata !DIExpression()), !dbg !99
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !100, metadata !DIExpression()), !dbg !99
  store [1 x %struct.pair]* %p, [1 x %struct.pair]** %p.addr, align 8
  call void @llvm.dbg.declare(metadata [1 x %struct.pair]** %p.addr, metadata !101, metadata !DIExpression()), !dbg !99
  %0 = load [1 x %struct.pair]*, [1 x %struct.pair]** %p.addr, align 8, !dbg !102
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !102
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !102
  %3 = load [1 x %struct.pair]*, [1 x %struct.pair]** %p.addr, align 8, !dbg !102
  call void @.omp_outlined._debug__(i32* %1, i32* %2, [1 x %struct.pair]* %3) #5, !dbg !102
  ret void, !dbg !102
}

declare !callback !103 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

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
!1 = !DIFile(filename: "DRB119-nestlock-orig-yes.c", directory: "/home/yanze/code/OpenRace/tests/data/integration/dataracebench")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.1 "}
!7 = distinct !DISubprogram(name: "incr_a", scope: !1, file: !1, line: 27, type: !8, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !11, size: 64)
!11 = !DIDerivedType(tag: DW_TAG_typedef, name: "pair", file: !1, line: 25, baseType: !12)
!12 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 22, size: 128, elements: !13)
!13 = !{!14, !16, !17}
!14 = !DIDerivedType(tag: DW_TAG_member, name: "a", scope: !12, file: !1, line: 23, baseType: !15, size: 32)
!15 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!16 = !DIDerivedType(tag: DW_TAG_member, name: "b", scope: !12, file: !1, line: 23, baseType: !15, size: 32, offset: 32)
!17 = !DIDerivedType(tag: DW_TAG_member, name: "lck", scope: !12, file: !1, line: 24, baseType: !18, size: 64, offset: 64)
!18 = !DIDerivedType(tag: DW_TAG_typedef, name: "omp_nest_lock_t", file: !19, line: 95, baseType: !20)
!19 = !DIFile(filename: "/usr/include/omp.h", directory: "")
!20 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "omp_nest_lock_t", file: !19, line: 93, size: 64, elements: !21)
!21 = !{!22}
!22 = !DIDerivedType(tag: DW_TAG_member, name: "_lk", scope: !20, file: !19, line: 94, baseType: !23, size: 64)
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!24 = !DILocalVariable(name: "p", arg: 1, scope: !7, file: !1, line: 27, type: !10)
!25 = !DILocation(line: 27, column: 19, scope: !7)
!26 = !DILocation(line: 28, column: 3, scope: !7)
!27 = !DILocation(line: 28, column: 6, scope: !7)
!28 = !DILocation(line: 28, column: 8, scope: !7)
!29 = !DILocation(line: 29, column: 1, scope: !7)
!30 = distinct !DISubprogram(name: "incr_b", scope: !1, file: !1, line: 31, type: !8, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!31 = !DILocalVariable(name: "p", arg: 1, scope: !30, file: !1, line: 31, type: !10)
!32 = !DILocation(line: 31, column: 19, scope: !30)
!33 = !DILocation(line: 32, column: 3, scope: !30)
!34 = !DILocation(line: 32, column: 6, scope: !30)
!35 = !DILocation(line: 32, column: 8, scope: !30)
!36 = !DILocation(line: 33, column: 1, scope: !30)
!37 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 36, type: !38, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!38 = !DISubroutineType(types: !39)
!39 = !{!15, !15, !40}
!40 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !41, size: 64)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!43 = !DILocalVariable(name: "argc", arg: 1, scope: !37, file: !1, line: 36, type: !15)
!44 = !DILocation(line: 36, column: 14, scope: !37)
!45 = !DILocalVariable(name: "argv", arg: 2, scope: !37, file: !1, line: 36, type: !40)
!46 = !DILocation(line: 36, column: 26, scope: !37)
!47 = !DILocalVariable(name: "p", scope: !37, file: !1, line: 38, type: !48)
!48 = !DICompositeType(tag: DW_TAG_array_type, baseType: !11, size: 128, elements: !49)
!49 = !{!50}
!50 = !DISubrange(count: 1)
!51 = !DILocation(line: 38, column: 8, scope: !37)
!52 = !DILocation(line: 39, column: 6, scope: !37)
!53 = !DILocation(line: 39, column: 8, scope: !37)
!54 = !DILocation(line: 40, column: 6, scope: !37)
!55 = !DILocation(line: 40, column: 8, scope: !37)
!56 = !DILocation(line: 41, column: 26, scope: !37)
!57 = !DILocation(line: 41, column: 3, scope: !37)
!58 = !DILocation(line: 43, column: 3, scope: !37)
!59 = !DILocation(line: 56, column: 29, scope: !37)
!60 = !DILocation(line: 56, column: 3, scope: !37)
!61 = !DILocation(line: 58, column: 20, scope: !37)
!62 = !DILocation(line: 58, column: 3, scope: !37)
!63 = !DILocation(line: 59, column: 3, scope: !37)
!64 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 44, type: !65, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!65 = !DISubroutineType(types: !66)
!66 = !{null, !67, !67, !71}
!67 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !68)
!68 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !69)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !15)
!71 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !48, size: 64)
!72 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !64, type: !67, flags: DIFlagArtificial)
!73 = !DILocation(line: 0, scope: !64)
!74 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !64, type: !67, flags: DIFlagArtificial)
!75 = !DILocalVariable(name: "p", arg: 3, scope: !64, file: !1, line: 38, type: !71)
!76 = !DILocation(line: 38, column: 8, scope: !64)
!77 = !DILocation(line: 44, column: 3, scope: !64)
!78 = !DILocation(line: 43, column: 3, scope: !64)
!79 = !DILocation(line: 47, column: 29, scope: !80)
!80 = distinct !DILexicalBlock(scope: !81, file: !1, line: 46, column: 5)
!81 = distinct !DILexicalBlock(scope: !64, file: !1, line: 45, column: 5)
!82 = !DILocation(line: 47, column: 7, scope: !80)
!83 = !DILocation(line: 48, column: 14, scope: !80)
!84 = !DILocation(line: 48, column: 7, scope: !80)
!85 = !DILocation(line: 49, column: 14, scope: !80)
!86 = !DILocation(line: 49, column: 7, scope: !80)
!87 = !DILocation(line: 50, column: 31, scope: !80)
!88 = !DILocation(line: 50, column: 7, scope: !80)
!89 = !DILocation(line: 45, column: 24, scope: !81)
!90 = !DILocation(line: 53, column: 14, scope: !91)
!91 = distinct !DILexicalBlock(scope: !64, file: !1, line: 52, column: 5)
!92 = !DILocation(line: 53, column: 7, scope: !91)
!93 = !DILocation(line: 52, column: 24, scope: !91)
!94 = distinct !{!94, !78, !95}
!95 = !DILocation(line: 43, column: 32, scope: !64)
!96 = !DILocation(line: 54, column: 3, scope: !64)
!97 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 44, type: !65, scopeLine: 44, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!98 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !97, type: !67, flags: DIFlagArtificial)
!99 = !DILocation(line: 0, scope: !97)
!100 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !97, type: !67, flags: DIFlagArtificial)
!101 = !DILocalVariable(name: "p", arg: 3, scope: !97, type: !71, flags: DIFlagArtificial)
!102 = !DILocation(line: 44, column: 3, scope: !97)
!103 = !{!104}
!104 = !{i64 2, i64 -1, i64 -1, i1 true}
