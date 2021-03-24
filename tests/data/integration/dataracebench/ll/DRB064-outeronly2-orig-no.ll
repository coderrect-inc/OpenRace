; ModuleID = 'DRB064-outeronly2-orig-no.c'
source_filename = "DRB064-outeronly2-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@n = dso_local global i32 100, align 4, !dbg !0
@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [40 x i8] c";DRB064-outeronly2-orig-no.c;foo;59;1;;\00", align 1
@m = dso_local global i32 100, align 4, !dbg !12
@b = common dso_local global [100 x [100 x double]] zeroinitializer, align 16, !dbg !6
@2 = private unnamed_addr constant [41 x i8] c";DRB064-outeronly2-orig-no.c;foo;59;36;;\00", align 1
@3 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @foo() #0 !dbg !19 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  call void @llvm.dbg.declare(metadata i32* %i, metadata !22, metadata !DIExpression()), !dbg !23
  call void @llvm.dbg.declare(metadata i32* %j, metadata !24, metadata !DIExpression()), !dbg !25
  %2 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !26
  store i8* getelementptr inbounds ([40 x i8], [40 x i8]* @1, i32 0, i32 0), i8** %2, align 8, !dbg !26
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 0, void (i32*, i32*, ...)* bitcast (void (i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*)), !dbg !26
  ret void, !dbg !27
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid.) #2 !dbg !28 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %.omp.iv = alloca i32, align 4
  %tmp = alloca i32, align 4
  %.capture_expr. = alloca i32, align 4
  %.capture_expr.1 = alloca i32, align 4
  %i = alloca i32, align 4
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %j = alloca i32, align 4
  %i4 = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !35, metadata !DIExpression()), !dbg !36
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !37, metadata !DIExpression()), !dbg !36
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !38, metadata !DIExpression()), !dbg !36
  call void @llvm.dbg.declare(metadata i32* %.capture_expr., metadata !39, metadata !DIExpression()), !dbg !36
  %2 = load i32, i32* @n, align 4, !dbg !40
  store i32 %2, i32* %.capture_expr., align 4, !dbg !40
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.1, metadata !39, metadata !DIExpression()), !dbg !36
  %3 = load i32, i32* %.capture_expr., align 4, !dbg !40
  %sub = sub nsw i32 %3, 0, !dbg !41
  %sub2 = sub nsw i32 %sub, 1, !dbg !41
  %add = add nsw i32 %sub2, 1, !dbg !41
  %div = sdiv i32 %add, 1, !dbg !41
  %sub3 = sub nsw i32 %div, 1, !dbg !41
  store i32 %sub3, i32* %.capture_expr.1, align 4, !dbg !41
  call void @llvm.dbg.declare(metadata i32* %i, metadata !42, metadata !DIExpression()), !dbg !36
  store i32 0, i32* %i, align 4, !dbg !43
  %4 = load i32, i32* %.capture_expr., align 4, !dbg !40
  %cmp = icmp slt i32 0, %4, !dbg !41
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end, !dbg !41

omp.precond.then:                                 ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !44, metadata !DIExpression()), !dbg !36
  store i32 0, i32* %.omp.lb, align 4, !dbg !45
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !46, metadata !DIExpression()), !dbg !36
  %5 = load i32, i32* %.capture_expr.1, align 4, !dbg !41
  store i32 %5, i32* %.omp.ub, align 4, !dbg !45
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !47, metadata !DIExpression()), !dbg !36
  store i32 1, i32* %.omp.stride, align 4, !dbg !45
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !48, metadata !DIExpression()), !dbg !36
  store i32 0, i32* %.omp.is_last, align 4, !dbg !45
  call void @llvm.dbg.declare(metadata i32* %j, metadata !49, metadata !DIExpression()), !dbg !36
  call void @llvm.dbg.declare(metadata i32* %i4, metadata !42, metadata !DIExpression()), !dbg !36
  %6 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !41
  store i8* getelementptr inbounds ([40 x i8], [40 x i8]* @1, i32 0, i32 0), i8** %6, align 8, !dbg !41
  %7 = load i32*, i32** %.global_tid..addr, align 8, !dbg !41
  %8 = load i32, i32* %7, align 4, !dbg !41
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %8, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !41
  %9 = load i32, i32* %.omp.ub, align 4, !dbg !45
  %10 = load i32, i32* %.capture_expr.1, align 4, !dbg !41
  %cmp5 = icmp sgt i32 %9, %10, !dbg !45
  br i1 %cmp5, label %cond.true, label %cond.false, !dbg !45

cond.true:                                        ; preds = %omp.precond.then
  %11 = load i32, i32* %.capture_expr.1, align 4, !dbg !41
  br label %cond.end, !dbg !45

cond.false:                                       ; preds = %omp.precond.then
  %12 = load i32, i32* %.omp.ub, align 4, !dbg !45
  br label %cond.end, !dbg !45

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %11, %cond.true ], [ %12, %cond.false ], !dbg !45
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !45
  %13 = load i32, i32* %.omp.lb, align 4, !dbg !45
  store i32 %13, i32* %.omp.iv, align 4, !dbg !45
  br label %omp.inner.for.cond, !dbg !41

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %14 = load i32, i32* %.omp.iv, align 4, !dbg !45
  %15 = load i32, i32* %.omp.ub, align 4, !dbg !45
  %cmp6 = icmp sle i32 %14, %15, !dbg !41
  br i1 %cmp6, label %omp.inner.for.body, label %omp.inner.for.end, !dbg !41

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %16 = load i32, i32* %.omp.iv, align 4, !dbg !45
  %mul = mul nsw i32 %16, 1, !dbg !43
  %add7 = add nsw i32 0, %mul, !dbg !43
  store i32 %add7, i32* %i4, align 4, !dbg !43
  store i32 1, i32* %j, align 4, !dbg !50
  br label %for.cond, !dbg !52

for.cond:                                         ; preds = %for.inc, %omp.inner.for.body
  %17 = load i32, i32* %j, align 4, !dbg !53
  %18 = load i32, i32* @m, align 4, !dbg !55
  %cmp8 = icmp slt i32 %17, %18, !dbg !56
  br i1 %cmp8, label %for.body, label %for.end, !dbg !57

for.body:                                         ; preds = %for.cond
  %19 = load i32, i32* %i4, align 4, !dbg !58
  %idxprom = sext i32 %19 to i64, !dbg !59
  %arrayidx = getelementptr inbounds [100 x [100 x double]], [100 x [100 x double]]* @b, i64 0, i64 %idxprom, !dbg !59
  %20 = load i32, i32* %j, align 4, !dbg !60
  %sub9 = sub nsw i32 %20, 1, !dbg !61
  %idxprom10 = sext i32 %sub9 to i64, !dbg !59
  %arrayidx11 = getelementptr inbounds [100 x double], [100 x double]* %arrayidx, i64 0, i64 %idxprom10, !dbg !59
  %21 = load double, double* %arrayidx11, align 8, !dbg !59
  %22 = load i32, i32* %i4, align 4, !dbg !62
  %idxprom12 = sext i32 %22 to i64, !dbg !63
  %arrayidx13 = getelementptr inbounds [100 x [100 x double]], [100 x [100 x double]]* @b, i64 0, i64 %idxprom12, !dbg !63
  %23 = load i32, i32* %j, align 4, !dbg !64
  %idxprom14 = sext i32 %23 to i64, !dbg !63
  %arrayidx15 = getelementptr inbounds [100 x double], [100 x double]* %arrayidx13, i64 0, i64 %idxprom14, !dbg !63
  store double %21, double* %arrayidx15, align 8, !dbg !65
  br label %for.inc, !dbg !63

for.inc:                                          ; preds = %for.body
  %24 = load i32, i32* %j, align 4, !dbg !66
  %inc = add nsw i32 %24, 1, !dbg !66
  store i32 %inc, i32* %j, align 4, !dbg !66
  br label %for.cond, !dbg !67, !llvm.loop !68

for.end:                                          ; preds = %for.cond
  br label %omp.body.continue, !dbg !69

omp.body.continue:                                ; preds = %for.end
  br label %omp.inner.for.inc, !dbg !70

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %25 = load i32, i32* %.omp.iv, align 4, !dbg !45
  %add16 = add nsw i32 %25, 1, !dbg !41
  store i32 %add16, i32* %.omp.iv, align 4, !dbg !41
  br label %omp.inner.for.cond, !dbg !70, !llvm.loop !71

omp.inner.for.end:                                ; preds = %omp.inner.for.cond
  br label %omp.loop.exit, !dbg !70

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %26 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !70
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @2, i32 0, i32 0), i8** %26, align 8, !dbg !70
  %27 = load i32*, i32** %.global_tid..addr, align 8, !dbg !70
  %28 = load i32, i32* %27, align 4, !dbg !70
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %28), !dbg !70
  br label %omp.precond.end, !dbg !70

omp.precond.end:                                  ; preds = %omp.loop.exit, %entry
  ret void, !dbg !73
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid.) #2 !dbg !74 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !75, metadata !DIExpression()), !dbg !76
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !77, metadata !DIExpression()), !dbg !76
  %0 = load i32*, i32** %.global_tid..addr, align 8, !dbg !78
  %1 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !78
  call void @.omp_outlined._debug__(i32* %0, i32* %1) #4, !dbg !78
  ret void, !dbg !78
}

declare !callback !79 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !81 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @foo(), !dbg !84
  ret i32 0, !dbg !85
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noinline norecurse nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!15, !16, !17}
!llvm.ident = !{!18}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "n", scope: !2, file: !3, line: 53, type: !14, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.1 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "DRB064-outeronly2-orig-no.c", directory: "/home/yanze/code/OpenRace/tests/data/integration/dataracebench")
!4 = !{}
!5 = !{!6, !0, !12}
!6 = !DIGlobalVariableExpression(var: !7, expr: !DIExpression())
!7 = distinct !DIGlobalVariable(name: "b", scope: !2, file: !3, line: 54, type: !8, isLocal: false, isDefinition: true)
!8 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 640000, elements: !10)
!9 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!10 = !{!11, !11}
!11 = !DISubrange(count: 100)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(name: "m", scope: !2, file: !3, line: 53, type: !14, isLocal: false, isDefinition: true)
!14 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!15 = !{i32 7, !"Dwarf Version", i32 4}
!16 = !{i32 2, !"Debug Info Version", i32 3}
!17 = !{i32 1, !"wchar_size", i32 4}
!18 = !{!"clang version 10.0.1 "}
!19 = distinct !DISubprogram(name: "foo", scope: !3, file: !3, line: 56, type: !20, scopeLine: 57, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!20 = !DISubroutineType(types: !21)
!21 = !{null}
!22 = !DILocalVariable(name: "i", scope: !19, file: !3, line: 58, type: !14)
!23 = !DILocation(line: 58, column: 7, scope: !19)
!24 = !DILocalVariable(name: "j", scope: !19, file: !3, line: 58, type: !14)
!25 = !DILocation(line: 58, column: 9, scope: !19)
!26 = !DILocation(line: 59, column: 1, scope: !19)
!27 = !DILocation(line: 63, column: 1, scope: !19)
!28 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !3, file: !3, line: 60, type: !29, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!29 = !DISubroutineType(types: !30)
!30 = !{null, !31, !31}
!31 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !32)
!32 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !33)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!35 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !28, type: !31, flags: DIFlagArtificial)
!36 = !DILocation(line: 0, scope: !28)
!37 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !28, type: !31, flags: DIFlagArtificial)
!38 = !DILocalVariable(name: ".omp.iv", scope: !28, type: !14, flags: DIFlagArtificial)
!39 = !DILocalVariable(name: ".capture_expr.", scope: !28, type: !14, flags: DIFlagArtificial)
!40 = !DILocation(line: 60, column: 14, scope: !28)
!41 = !DILocation(line: 60, column: 3, scope: !28)
!42 = !DILocalVariable(name: "i", scope: !28, type: !14, flags: DIFlagArtificial)
!43 = !DILocation(line: 60, column: 16, scope: !28)
!44 = !DILocalVariable(name: ".omp.lb", scope: !28, type: !14, flags: DIFlagArtificial)
!45 = !DILocation(line: 60, column: 8, scope: !28)
!46 = !DILocalVariable(name: ".omp.ub", scope: !28, type: !14, flags: DIFlagArtificial)
!47 = !DILocalVariable(name: ".omp.stride", scope: !28, type: !14, flags: DIFlagArtificial)
!48 = !DILocalVariable(name: ".omp.is_last", scope: !28, type: !14, flags: DIFlagArtificial)
!49 = !DILocalVariable(name: "j", scope: !28, type: !14, flags: DIFlagArtificial)
!50 = !DILocation(line: 61, column: 11, scope: !51)
!51 = distinct !DILexicalBlock(scope: !28, file: !3, line: 61, column: 5)
!52 = !DILocation(line: 61, column: 10, scope: !51)
!53 = !DILocation(line: 61, column: 14, scope: !54)
!54 = distinct !DILexicalBlock(scope: !51, file: !3, line: 61, column: 5)
!55 = !DILocation(line: 61, column: 16, scope: !54)
!56 = !DILocation(line: 61, column: 15, scope: !54)
!57 = !DILocation(line: 61, column: 5, scope: !51)
!58 = !DILocation(line: 62, column: 17, scope: !54)
!59 = !DILocation(line: 62, column: 15, scope: !54)
!60 = !DILocation(line: 62, column: 20, scope: !54)
!61 = !DILocation(line: 62, column: 21, scope: !54)
!62 = !DILocation(line: 62, column: 9, scope: !54)
!63 = !DILocation(line: 62, column: 7, scope: !54)
!64 = !DILocation(line: 62, column: 12, scope: !54)
!65 = !DILocation(line: 62, column: 14, scope: !54)
!66 = !DILocation(line: 61, column: 19, scope: !54)
!67 = !DILocation(line: 61, column: 5, scope: !54)
!68 = distinct !{!68, !57, !69}
!69 = !DILocation(line: 62, column: 23, scope: !51)
!70 = !DILocation(line: 59, column: 1, scope: !28)
!71 = distinct !{!71, !70, !72}
!72 = !DILocation(line: 59, column: 36, scope: !28)
!73 = !DILocation(line: 62, column: 23, scope: !28)
!74 = distinct !DISubprogram(name: ".omp_outlined.", scope: !3, file: !3, line: 60, type: !29, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!75 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !74, type: !31, flags: DIFlagArtificial)
!76 = !DILocation(line: 0, scope: !74)
!77 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !74, type: !31, flags: DIFlagArtificial)
!78 = !DILocation(line: 60, column: 3, scope: !74)
!79 = !{!80}
!80 = !{i64 2, i64 -1, i64 -1, i1 true}
!81 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 65, type: !82, scopeLine: 66, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!82 = !DISubroutineType(types: !83)
!83 = !{!14}
!84 = !DILocation(line: 67, column: 3, scope: !81)
!85 = !DILocation(line: 68, column: 3, scope: !81)
