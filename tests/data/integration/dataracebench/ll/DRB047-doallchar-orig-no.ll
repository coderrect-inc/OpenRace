; ModuleID = 'DRB047-doallchar-orig-no.c'
source_filename = "DRB047-doallchar-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [40 x i8] c";DRB047-doallchar-orig-no.c;main;57;1;;\00", align 1
@a = common dso_local global [100 x i8] zeroinitializer, align 16, !dbg !0
@2 = private unnamed_addr constant [41 x i8] c";DRB047-doallchar-orig-no.c;main;57;25;;\00", align 1
@3 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !14 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata i32* %i, metadata !18, metadata !DIExpression()), !dbg !19
  %2 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !20
  store i8* getelementptr inbounds ([40 x i8], [40 x i8]* @1, i32 0, i32 0), i8** %2, align 8, !dbg !20
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 0, void (i32*, i32*, ...)* bitcast (void (i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*)), !dbg !20
  ret i32 0, !dbg !21
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid.) #2 !dbg !22 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
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
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !29, metadata !DIExpression()), !dbg !30
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !31, metadata !DIExpression()), !dbg !30
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !32, metadata !DIExpression()), !dbg !30
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !33, metadata !DIExpression()), !dbg !30
  store i32 0, i32* %.omp.lb, align 4, !dbg !34
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !35, metadata !DIExpression()), !dbg !30
  store i32 99, i32* %.omp.ub, align 4, !dbg !34
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !36, metadata !DIExpression()), !dbg !30
  store i32 1, i32* %.omp.stride, align 4, !dbg !34
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !37, metadata !DIExpression()), !dbg !30
  store i32 0, i32* %.omp.is_last, align 4, !dbg !34
  call void @llvm.dbg.declare(metadata i32* %i, metadata !38, metadata !DIExpression()), !dbg !30
  %2 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !39
  store i8* getelementptr inbounds ([40 x i8], [40 x i8]* @1, i32 0, i32 0), i8** %2, align 8, !dbg !39
  %3 = load i32*, i32** %.global_tid..addr, align 8, !dbg !39
  %4 = load i32, i32* %3, align 4, !dbg !39
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %4, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !39
  %5 = load i32, i32* %.omp.ub, align 4, !dbg !34
  %cmp = icmp sgt i32 %5, 99, !dbg !34
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !34

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !34

cond.false:                                       ; preds = %entry
  %6 = load i32, i32* %.omp.ub, align 4, !dbg !34
  br label %cond.end, !dbg !34

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 99, %cond.true ], [ %6, %cond.false ], !dbg !34
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !34
  %7 = load i32, i32* %.omp.lb, align 4, !dbg !34
  store i32 %7, i32* %.omp.iv, align 4, !dbg !34
  br label %omp.inner.for.cond, !dbg !39

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %8 = load i32, i32* %.omp.iv, align 4, !dbg !34
  %9 = load i32, i32* %.omp.ub, align 4, !dbg !34
  %cmp1 = icmp sle i32 %8, %9, !dbg !39
  br i1 %cmp1, label %omp.inner.for.body, label %omp.inner.for.end, !dbg !39

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %10 = load i32, i32* %.omp.iv, align 4, !dbg !34
  %mul = mul nsw i32 %10, 1, !dbg !40
  %add = add nsw i32 0, %mul, !dbg !40
  store i32 %add, i32* %i, align 4, !dbg !40
  %11 = load i32, i32* %i, align 4, !dbg !41
  %idxprom = sext i32 %11 to i64, !dbg !42
  %arrayidx = getelementptr inbounds [100 x i8], [100 x i8]* @a, i64 0, i64 %idxprom, !dbg !42
  %12 = load i8, i8* %arrayidx, align 1, !dbg !42
  %conv = sext i8 %12 to i32, !dbg !42
  %add2 = add nsw i32 %conv, 1, !dbg !43
  %conv3 = trunc i32 %add2 to i8, !dbg !42
  %13 = load i32, i32* %i, align 4, !dbg !44
  %idxprom4 = sext i32 %13 to i64, !dbg !45
  %arrayidx5 = getelementptr inbounds [100 x i8], [100 x i8]* @a, i64 0, i64 %idxprom4, !dbg !45
  store i8 %conv3, i8* %arrayidx5, align 1, !dbg !46
  br label %omp.body.continue, !dbg !45

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !47

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %14 = load i32, i32* %.omp.iv, align 4, !dbg !34
  %add6 = add nsw i32 %14, 1, !dbg !39
  store i32 %add6, i32* %.omp.iv, align 4, !dbg !39
  br label %omp.inner.for.cond, !dbg !47, !llvm.loop !48

omp.inner.for.end:                                ; preds = %omp.inner.for.cond
  br label %omp.loop.exit, !dbg !47

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %15 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !47
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @2, i32 0, i32 0), i8** %15, align 8, !dbg !47
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %4), !dbg !47
  ret void, !dbg !50
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid.) #2 !dbg !51 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !52, metadata !DIExpression()), !dbg !53
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !54, metadata !DIExpression()), !dbg !53
  %0 = load i32*, i32** %.global_tid..addr, align 8, !dbg !55
  %1 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !55
  call void @.omp_outlined._debug__(i32* %0, i32* %1) #4, !dbg !55
  ret void, !dbg !55
}

declare !callback !56 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noinline norecurse nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!10, !11, !12}
!llvm.ident = !{!13}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "a", scope: !2, file: !3, line: 53, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.1 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "DRB047-doallchar-orig-no.c", directory: "/home/yanze/code/OpenRace/tests/data/integration/dataracebench")
!4 = !{}
!5 = !{!0}
!6 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 800, elements: !8)
!7 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!8 = !{!9}
!9 = !DISubrange(count: 100)
!10 = !{i32 7, !"Dwarf Version", i32 4}
!11 = !{i32 2, !"Debug Info Version", i32 3}
!12 = !{i32 1, !"wchar_size", i32 4}
!13 = !{!"clang version 10.0.1 "}
!14 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 54, type: !15, scopeLine: 55, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!15 = !DISubroutineType(types: !16)
!16 = !{!17}
!17 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!18 = !DILocalVariable(name: "i", scope: !14, file: !3, line: 56, type: !17)
!19 = !DILocation(line: 56, column: 7, scope: !14)
!20 = !DILocation(line: 57, column: 1, scope: !14)
!21 = !DILocation(line: 60, column: 3, scope: !14)
!22 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !3, file: !3, line: 58, type: !23, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!23 = !DISubroutineType(types: !24)
!24 = !{null, !25, !25}
!25 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !26)
!26 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !27)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!29 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !22, type: !25, flags: DIFlagArtificial)
!30 = !DILocation(line: 0, scope: !22)
!31 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !22, type: !25, flags: DIFlagArtificial)
!32 = !DILocalVariable(name: ".omp.iv", scope: !22, type: !17, flags: DIFlagArtificial)
!33 = !DILocalVariable(name: ".omp.lb", scope: !22, type: !17, flags: DIFlagArtificial)
!34 = !DILocation(line: 58, column: 8, scope: !22)
!35 = !DILocalVariable(name: ".omp.ub", scope: !22, type: !17, flags: DIFlagArtificial)
!36 = !DILocalVariable(name: ".omp.stride", scope: !22, type: !17, flags: DIFlagArtificial)
!37 = !DILocalVariable(name: ".omp.is_last", scope: !22, type: !17, flags: DIFlagArtificial)
!38 = !DILocalVariable(name: "i", scope: !22, type: !17, flags: DIFlagArtificial)
!39 = !DILocation(line: 58, column: 3, scope: !22)
!40 = !DILocation(line: 58, column: 18, scope: !22)
!41 = !DILocation(line: 59, column: 12, scope: !22)
!42 = !DILocation(line: 59, column: 10, scope: !22)
!43 = !DILocation(line: 59, column: 14, scope: !22)
!44 = !DILocation(line: 59, column: 7, scope: !22)
!45 = !DILocation(line: 59, column: 5, scope: !22)
!46 = !DILocation(line: 59, column: 9, scope: !22)
!47 = !DILocation(line: 57, column: 1, scope: !22)
!48 = distinct !{!48, !47, !49}
!49 = !DILocation(line: 57, column: 25, scope: !22)
!50 = !DILocation(line: 59, column: 15, scope: !22)
!51 = distinct !DISubprogram(name: ".omp_outlined.", scope: !3, file: !3, line: 58, type: !23, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!52 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !51, type: !25, flags: DIFlagArtificial)
!53 = !DILocation(line: 0, scope: !51)
!54 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !51, type: !25, flags: DIFlagArtificial)
!55 = !DILocation(line: 58, column: 3, scope: !51)
!56 = !{!57}
!57 = !{i64 2, i64 -1, i64 -1, i1 true}
