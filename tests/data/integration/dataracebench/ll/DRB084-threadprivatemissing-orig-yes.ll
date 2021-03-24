; ModuleID = 'DRB084-threadprivatemissing-orig-yes.c'
source_filename = "DRB084-threadprivatemissing-orig-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@sum0 = dso_local global i32 0, align 4, !dbg !0
@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [52 x i8] c";DRB084-threadprivatemissing-orig-yes.c;main;69;1;;\00", align 1
@2 = private unnamed_addr constant [53 x i8] c";DRB084-threadprivatemissing-orig-yes.c;main;69;16;;\00", align 1
@3 = private unnamed_addr constant [52 x i8] c";DRB084-threadprivatemissing-orig-yes.c;main;74;1;;\00", align 1
@.gomp_critical_user_.var = common global [8 x i32] zeroinitializer
@4 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@5 = private unnamed_addr constant [52 x i8] c";DRB084-threadprivatemissing-orig-yes.c;main;67;1;;\00", align 1
@sum1 = dso_local global i32 0, align 4, !dbg !6
@.str.1 = private unnamed_addr constant [17 x i8] c"sum=%d; sum1=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @foo(i32 %i) #0 !dbg !13 {
entry:
  %i.addr = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr, metadata !16, metadata !DIExpression()), !dbg !17
  %0 = load i32, i32* @sum0, align 4, !dbg !18
  %1 = load i32, i32* %i.addr, align 4, !dbg !19
  %add = add nsw i32 %0, %1, !dbg !20
  store i32 %add, i32* @sum0, align 4, !dbg !21
  ret void, !dbg !22
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !23 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %sum = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata i32* %i, metadata !26, metadata !DIExpression()), !dbg !27
  call void @llvm.dbg.declare(metadata i32* %sum, metadata !28, metadata !DIExpression()), !dbg !29
  store i32 0, i32* %sum, align 4, !dbg !29
  %2 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !30
  store i8* getelementptr inbounds ([52 x i8], [52 x i8]* @5, i32 0, i32 0), i8** %2, align 8, !dbg !30
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %sum), !dbg !30
  store i32 1, i32* %i, align 4, !dbg !31
  br label %for.cond, !dbg !33

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4, !dbg !34
  %cmp = icmp sle i32 %3, 1000, !dbg !36
  br i1 %cmp, label %for.body, label %for.end, !dbg !37

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* @sum1, align 4, !dbg !38
  %5 = load i32, i32* %i, align 4, !dbg !40
  %add = add nsw i32 %4, %5, !dbg !41
  store i32 %add, i32* @sum1, align 4, !dbg !42
  br label %for.inc, !dbg !43

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !44
  %inc = add nsw i32 %6, 1, !dbg !44
  store i32 %inc, i32* %i, align 4, !dbg !44
  br label %for.cond, !dbg !45, !llvm.loop !46

for.end:                                          ; preds = %for.cond
  %7 = load i32, i32* %sum, align 4, !dbg !48
  %8 = load i32, i32* @sum1, align 4, !dbg !49
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %7, i32 %8), !dbg !50
  ret i32 0, !dbg !51
}

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %sum) #2 !dbg !52 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %sum.addr = alloca i32*, align 8
  %.omp.iv = alloca i32, align 4
  %tmp = alloca i32, align 4
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %i = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !60, metadata !DIExpression()), !dbg !61
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !62, metadata !DIExpression()), !dbg !61
  store i32* %sum, i32** %sum.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %sum.addr, metadata !63, metadata !DIExpression()), !dbg !64
  %2 = load i32*, i32** %sum.addr, align 8, !dbg !65
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !66, metadata !DIExpression()), !dbg !69
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !70, metadata !DIExpression()), !dbg !69
  store i32 0, i32* %.omp.lb, align 4, !dbg !71
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !72, metadata !DIExpression()), !dbg !69
  store i32 999, i32* %.omp.ub, align 4, !dbg !71
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !73, metadata !DIExpression()), !dbg !69
  store i32 1, i32* %.omp.stride, align 4, !dbg !71
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !74, metadata !DIExpression()), !dbg !69
  store i32 0, i32* %.omp.is_last, align 4, !dbg !71
  call void @llvm.dbg.declare(metadata i32* %i, metadata !75, metadata !DIExpression()), !dbg !69
  %3 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !76
  store i8* getelementptr inbounds ([52 x i8], [52 x i8]* @1, i32 0, i32 0), i8** %3, align 8, !dbg !76
  %4 = load i32*, i32** %.global_tid..addr, align 8, !dbg !76
  %5 = load i32, i32* %4, align 4, !dbg !76
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %5, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !76
  %6 = load i32, i32* %.omp.ub, align 4, !dbg !71
  %cmp = icmp sgt i32 %6, 999, !dbg !71
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !71

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !71

cond.false:                                       ; preds = %entry
  %7 = load i32, i32* %.omp.ub, align 4, !dbg !71
  br label %cond.end, !dbg !71

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 999, %cond.true ], [ %7, %cond.false ], !dbg !71
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !71
  %8 = load i32, i32* %.omp.lb, align 4, !dbg !71
  store i32 %8, i32* %.omp.iv, align 4, !dbg !71
  br label %omp.inner.for.cond, !dbg !76

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %9 = load i32, i32* %.omp.iv, align 4, !dbg !71
  %10 = load i32, i32* %.omp.ub, align 4, !dbg !71
  %cmp1 = icmp sle i32 %9, %10, !dbg !77
  br i1 %cmp1, label %omp.inner.for.body, label %omp.inner.for.end, !dbg !76

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %11 = load i32, i32* %.omp.iv, align 4, !dbg !71
  %mul = mul nsw i32 %11, 1, !dbg !78
  %add = add nsw i32 1, %mul, !dbg !78
  store i32 %add, i32* %i, align 4, !dbg !78
  %12 = load i32, i32* %i, align 4, !dbg !79
  call void @foo(i32 %12), !dbg !81
  br label %omp.body.continue, !dbg !82

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !83

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %13 = load i32, i32* %.omp.iv, align 4, !dbg !71
  %add2 = add nsw i32 %13, 1, !dbg !77
  store i32 %add2, i32* %.omp.iv, align 4, !dbg !77
  br label %omp.inner.for.cond, !dbg !83, !llvm.loop !84

omp.inner.for.end:                                ; preds = %omp.inner.for.cond
  br label %omp.loop.exit, !dbg !83

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %14 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !83
  store i8* getelementptr inbounds ([53 x i8], [53 x i8]* @2, i32 0, i32 0), i8** %14, align 8, !dbg !83
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %5), !dbg !83
  %15 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !85
  store i8* getelementptr inbounds ([52 x i8], [52 x i8]* @1, i32 0, i32 0), i8** %15, align 8, !dbg !85
  call void @__kmpc_barrier(%struct.ident_t* %.kmpc_loc.addr, i32 %5), !dbg !85
  %16 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !86
  store i8* getelementptr inbounds ([52 x i8], [52 x i8]* @3, i32 0, i32 0), i8** %16, align 8, !dbg !86
  call void @__kmpc_critical(%struct.ident_t* %.kmpc_loc.addr, i32 %5, [8 x i32]* @.gomp_critical_user_.var), !dbg !86
  %17 = load i32, i32* %2, align 4, !dbg !87
  %18 = load i32, i32* @sum0, align 4, !dbg !90
  %add3 = add nsw i32 %17, %18, !dbg !91
  store i32 %add3, i32* %2, align 4, !dbg !92
  call void @__kmpc_end_critical(%struct.ident_t* %.kmpc_loc.addr, i32 %5, [8 x i32]* @.gomp_critical_user_.var), !dbg !93
  ret void, !dbg !94
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

declare dso_local void @__kmpc_barrier(%struct.ident_t*, i32)

declare dso_local void @__kmpc_end_critical(%struct.ident_t*, i32, [8 x i32]*)

declare dso_local void @__kmpc_critical(%struct.ident_t*, i32, [8 x i32]*)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %sum) #2 !dbg !95 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %sum.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !96, metadata !DIExpression()), !dbg !97
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !98, metadata !DIExpression()), !dbg !97
  store i32* %sum, i32** %sum.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %sum.addr, metadata !99, metadata !DIExpression()), !dbg !97
  %0 = load i32*, i32** %sum.addr, align 8, !dbg !100
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !100
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !100
  %3 = load i32*, i32** %sum.addr, align 8, !dbg !100
  call void @.omp_outlined._debug__(i32* %1, i32* %2, i32* %3) #5, !dbg !100
  ret void, !dbg !100
}

declare !callback !101 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

declare dso_local i32 @printf(i8*, ...) #4

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noinline norecurse nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!9, !10, !11}
!llvm.ident = !{!12}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "sum0", scope: !2, file: !3, line: 56, type: !8, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.1 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "DRB084-threadprivatemissing-orig-yes.c", directory: "/home/yanze/code/OpenRace/tests/data/integration/dataracebench")
!4 = !{}
!5 = !{!0, !6}
!6 = !DIGlobalVariableExpression(var: !7, expr: !DIExpression())
!7 = distinct !DIGlobalVariable(name: "sum1", scope: !2, file: !3, line: 56, type: !8, isLocal: false, isDefinition: true)
!8 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!9 = !{i32 7, !"Dwarf Version", i32 4}
!10 = !{i32 2, !"Debug Info Version", i32 3}
!11 = !{i32 1, !"wchar_size", i32 4}
!12 = !{!"clang version 10.0.1 "}
!13 = distinct !DISubprogram(name: "foo", scope: !3, file: !3, line: 59, type: !14, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!14 = !DISubroutineType(types: !15)
!15 = !{null, !8}
!16 = !DILocalVariable(name: "i", arg: 1, scope: !13, file: !3, line: 59, type: !8)
!17 = !DILocation(line: 59, column: 15, scope: !13)
!18 = !DILocation(line: 61, column: 8, scope: !13)
!19 = !DILocation(line: 61, column: 13, scope: !13)
!20 = !DILocation(line: 61, column: 12, scope: !13)
!21 = !DILocation(line: 61, column: 7, scope: !13)
!22 = !DILocation(line: 62, column: 1, scope: !13)
!23 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 64, type: !24, scopeLine: 65, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!24 = !DISubroutineType(types: !25)
!25 = !{!8}
!26 = !DILocalVariable(name: "i", scope: !23, file: !3, line: 66, type: !8)
!27 = !DILocation(line: 66, column: 7, scope: !23)
!28 = !DILocalVariable(name: "sum", scope: !23, file: !3, line: 66, type: !8)
!29 = !DILocation(line: 66, column: 10, scope: !23)
!30 = !DILocation(line: 67, column: 1, scope: !23)
!31 = !DILocation(line: 80, column: 9, scope: !32)
!32 = distinct !DILexicalBlock(scope: !23, file: !3, line: 80, column: 3)
!33 = !DILocation(line: 80, column: 8, scope: !32)
!34 = !DILocation(line: 80, column: 12, scope: !35)
!35 = distinct !DILexicalBlock(scope: !32, file: !3, line: 80, column: 3)
!36 = !DILocation(line: 80, column: 13, scope: !35)
!37 = !DILocation(line: 80, column: 3, scope: !32)
!38 = !DILocation(line: 82, column: 10, scope: !39)
!39 = distinct !DILexicalBlock(scope: !35, file: !3, line: 81, column: 3)
!40 = !DILocation(line: 82, column: 15, scope: !39)
!41 = !DILocation(line: 82, column: 14, scope: !39)
!42 = !DILocation(line: 82, column: 9, scope: !39)
!43 = !DILocation(line: 83, column: 3, scope: !39)
!44 = !DILocation(line: 80, column: 21, scope: !35)
!45 = !DILocation(line: 80, column: 3, scope: !35)
!46 = distinct !{!46, !37, !47}
!47 = !DILocation(line: 83, column: 3, scope: !32)
!48 = !DILocation(line: 84, column: 30, scope: !23)
!49 = !DILocation(line: 84, column: 34, scope: !23)
!50 = !DILocation(line: 84, column: 3, scope: !23)
!51 = !DILocation(line: 86, column: 3, scope: !23)
!52 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !3, file: !3, line: 68, type: !53, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!53 = !DISubroutineType(types: !54)
!54 = !{null, !55, !55, !59}
!55 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !56)
!56 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !57)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!59 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !8, size: 64)
!60 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !52, type: !55, flags: DIFlagArtificial)
!61 = !DILocation(line: 0, scope: !52)
!62 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !52, type: !55, flags: DIFlagArtificial)
!63 = !DILocalVariable(name: "sum", arg: 3, scope: !52, file: !3, line: 66, type: !59)
!64 = !DILocation(line: 66, column: 10, scope: !52)
!65 = !DILocation(line: 68, column: 3, scope: !52)
!66 = !DILocalVariable(name: ".omp.iv", scope: !67, type: !8, flags: DIFlagArtificial)
!67 = distinct !DILexicalBlock(scope: !68, file: !3, line: 69, column: 1)
!68 = distinct !DILexicalBlock(scope: !52, file: !3, line: 68, column: 3)
!69 = !DILocation(line: 0, scope: !67)
!70 = !DILocalVariable(name: ".omp.lb", scope: !67, type: !8, flags: DIFlagArtificial)
!71 = !DILocation(line: 70, column: 10, scope: !67)
!72 = !DILocalVariable(name: ".omp.ub", scope: !67, type: !8, flags: DIFlagArtificial)
!73 = !DILocalVariable(name: ".omp.stride", scope: !67, type: !8, flags: DIFlagArtificial)
!74 = !DILocalVariable(name: ".omp.is_last", scope: !67, type: !8, flags: DIFlagArtificial)
!75 = !DILocalVariable(name: "i", scope: !67, type: !8, flags: DIFlagArtificial)
!76 = !DILocation(line: 69, column: 1, scope: !68)
!77 = !DILocation(line: 70, column: 5, scope: !67)
!78 = !DILocation(line: 70, column: 22, scope: !67)
!79 = !DILocation(line: 72, column: 13, scope: !80)
!80 = distinct !DILexicalBlock(scope: !67, file: !3, line: 71, column: 5)
!81 = !DILocation(line: 72, column: 8, scope: !80)
!82 = !DILocation(line: 73, column: 5, scope: !80)
!83 = !DILocation(line: 69, column: 1, scope: !67)
!84 = distinct !{!84, !83, !85}
!85 = !DILocation(line: 69, column: 16, scope: !67)
!86 = !DILocation(line: 74, column: 1, scope: !68)
!87 = !DILocation(line: 76, column: 12, scope: !88)
!88 = distinct !DILexicalBlock(scope: !89, file: !3, line: 75, column: 5)
!89 = distinct !DILexicalBlock(scope: !68, file: !3, line: 74, column: 1)
!90 = !DILocation(line: 76, column: 16, scope: !88)
!91 = !DILocation(line: 76, column: 15, scope: !88)
!92 = !DILocation(line: 76, column: 10, scope: !88)
!93 = !DILocation(line: 77, column: 5, scope: !88)
!94 = !DILocation(line: 78, column: 3, scope: !52)
!95 = distinct !DISubprogram(name: ".omp_outlined.", scope: !3, file: !3, line: 68, type: !53, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!96 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !95, type: !55, flags: DIFlagArtificial)
!97 = !DILocation(line: 0, scope: !95)
!98 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !95, type: !55, flags: DIFlagArtificial)
!99 = !DILocalVariable(name: "sum", arg: 3, scope: !95, type: !59, flags: DIFlagArtificial)
!100 = !DILocation(line: 68, column: 3, scope: !95)
!101 = !{!102}
!102 = !{i64 2, i64 -1, i64 -1, i1 true}
