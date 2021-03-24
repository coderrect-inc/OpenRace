; ModuleID = 'DRB070-simd1-orig-no.c'
source_filename = "DRB070-simd1-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@b = common dso_local global [100 x i32] zeroinitializer, align 16, !dbg !0
@c = common dso_local global [100 x i32] zeroinitializer, align 16, !dbg !12
@a = common dso_local global [100 x i32] zeroinitializer, align 16, !dbg !6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !18 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %tmp = alloca i32, align 4
  %.omp.iv = alloca i32, align 4
  %i1 = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata i32* %i, metadata !21, metadata !DIExpression()), !dbg !22
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !23, metadata !DIExpression()), !dbg !25
  store i32 0, i32* %.omp.iv, align 4, !dbg !26
  call void @llvm.dbg.declare(metadata i32* %i1, metadata !27, metadata !DIExpression()), !dbg !25
  br label %omp.inner.for.cond, !dbg !28

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %entry
  %0 = load i32, i32* %.omp.iv, align 4, !dbg !26, !llvm.access.group !29
  %cmp = icmp slt i32 %0, 100, !dbg !30
  br i1 %cmp, label %omp.inner.for.body, label %omp.inner.for.end, !dbg !28

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %1 = load i32, i32* %.omp.iv, align 4, !dbg !26, !llvm.access.group !29
  %mul = mul nsw i32 %1, 1, !dbg !31
  %add = add nsw i32 0, %mul, !dbg !31
  store i32 %add, i32* %i1, align 4, !dbg !31, !llvm.access.group !29
  %2 = load i32, i32* %i1, align 4, !dbg !32, !llvm.access.group !29
  %idxprom = sext i32 %2 to i64, !dbg !33
  %arrayidx = getelementptr inbounds [100 x i32], [100 x i32]* @b, i64 0, i64 %idxprom, !dbg !33
  %3 = load i32, i32* %arrayidx, align 4, !dbg !33, !llvm.access.group !29
  %4 = load i32, i32* %i1, align 4, !dbg !34, !llvm.access.group !29
  %idxprom2 = sext i32 %4 to i64, !dbg !35
  %arrayidx3 = getelementptr inbounds [100 x i32], [100 x i32]* @c, i64 0, i64 %idxprom2, !dbg !35
  %5 = load i32, i32* %arrayidx3, align 4, !dbg !35, !llvm.access.group !29
  %mul4 = mul nsw i32 %3, %5, !dbg !36
  %6 = load i32, i32* %i1, align 4, !dbg !37, !llvm.access.group !29
  %idxprom5 = sext i32 %6 to i64, !dbg !38
  %arrayidx6 = getelementptr inbounds [100 x i32], [100 x i32]* @a, i64 0, i64 %idxprom5, !dbg !38
  store i32 %mul4, i32* %arrayidx6, align 4, !dbg !39, !llvm.access.group !29
  br label %omp.body.continue, !dbg !38

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !40

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %7 = load i32, i32* %.omp.iv, align 4, !dbg !26, !llvm.access.group !29
  %add7 = add nsw i32 %7, 1, !dbg !30
  store i32 %add7, i32* %.omp.iv, align 4, !dbg !30, !llvm.access.group !29
  br label %omp.inner.for.cond, !dbg !40, !llvm.loop !41

omp.inner.for.end:                                ; preds = %omp.inner.for.cond
  store i32 100, i32* %i, align 4, !dbg !31
  ret i32 0, !dbg !45
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!14, !15, !16}
!llvm.ident = !{!17}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "b", scope: !2, file: !3, line: 50, type: !8, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.1 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "DRB070-simd1-orig-no.c", directory: "/home/yanze/code/OpenRace/tests/data/integration/dataracebench")
!4 = !{}
!5 = !{!6, !0, !12}
!6 = !DIGlobalVariableExpression(var: !7, expr: !DIExpression())
!7 = distinct !DIGlobalVariable(name: "a", scope: !2, file: !3, line: 50, type: !8, isLocal: false, isDefinition: true)
!8 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 3200, elements: !10)
!9 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!10 = !{!11}
!11 = !DISubrange(count: 100)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(name: "c", scope: !2, file: !3, line: 50, type: !8, isLocal: false, isDefinition: true)
!14 = !{i32 7, !"Dwarf Version", i32 4}
!15 = !{i32 2, !"Debug Info Version", i32 3}
!16 = !{i32 1, !"wchar_size", i32 4}
!17 = !{!"clang version 10.0.1 "}
!18 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 51, type: !19, scopeLine: 52, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!19 = !DISubroutineType(types: !20)
!20 = !{!9}
!21 = !DILocalVariable(name: "i", scope: !18, file: !3, line: 53, type: !9)
!22 = !DILocation(line: 53, column: 7, scope: !18)
!23 = !DILocalVariable(name: ".omp.iv", scope: !24, type: !9, flags: DIFlagArtificial)
!24 = distinct !DILexicalBlock(scope: !18, file: !3, line: 54, column: 1)
!25 = !DILocation(line: 0, scope: !24)
!26 = !DILocation(line: 55, column: 8, scope: !24)
!27 = !DILocalVariable(name: "i", scope: !24, type: !9, flags: DIFlagArtificial)
!28 = !DILocation(line: 54, column: 1, scope: !18)
!29 = distinct !{}
!30 = !DILocation(line: 55, column: 3, scope: !24)
!31 = !DILocation(line: 55, column: 18, scope: !24)
!32 = !DILocation(line: 56, column: 12, scope: !24)
!33 = !DILocation(line: 56, column: 10, scope: !24)
!34 = !DILocation(line: 56, column: 17, scope: !24)
!35 = !DILocation(line: 56, column: 15, scope: !24)
!36 = !DILocation(line: 56, column: 14, scope: !24)
!37 = !DILocation(line: 56, column: 7, scope: !24)
!38 = !DILocation(line: 56, column: 5, scope: !24)
!39 = !DILocation(line: 56, column: 9, scope: !24)
!40 = !DILocation(line: 54, column: 1, scope: !24)
!41 = distinct !{!41, !40, !42, !43, !44}
!42 = !DILocation(line: 54, column: 17, scope: !24)
!43 = !{!"llvm.loop.parallel_accesses", !29}
!44 = !{!"llvm.loop.vectorize.enable", i1 true}
!45 = !DILocation(line: 57, column: 3, scope: !18)
