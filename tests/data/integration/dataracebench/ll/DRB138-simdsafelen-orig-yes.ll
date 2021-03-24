; ModuleID = 'DRB138-simdsafelen-orig-yes.c'
source_filename = "DRB138-simdsafelen-orig-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [24 x i8] c"Expected: -1; Real: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !7 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %m = alloca i32, align 4
  %n = alloca i32, align 4
  %b = alloca [4 x i32], align 16
  %tmp = alloca i32, align 4
  %.capture_expr. = alloca i32, align 4
  %.capture_expr.1 = alloca i32, align 4
  %.capture_expr.2 = alloca i32, align 4
  %i5 = alloca i32, align 4
  %.omp.iv = alloca i32, align 4
  %i6 = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata i32* %i, metadata !11, metadata !DIExpression()), !dbg !12
  call void @llvm.dbg.declare(metadata i32* %m, metadata !13, metadata !DIExpression()), !dbg !14
  store i32 1, i32* %m, align 4, !dbg !14
  call void @llvm.dbg.declare(metadata i32* %n, metadata !15, metadata !DIExpression()), !dbg !16
  store i32 4, i32* %n, align 4, !dbg !16
  call void @llvm.dbg.declare(metadata [4 x i32]* %b, metadata !17, metadata !DIExpression()), !dbg !21
  %0 = bitcast [4 x i32]* %b to i8*, !dbg !21
  call void @llvm.memset.p0i8.i64(i8* align 16 %0, i8 0, i64 16, i1 false), !dbg !21
  call void @llvm.dbg.declare(metadata i32* %.capture_expr., metadata !22, metadata !DIExpression()), !dbg !24
  %1 = load i32, i32* %m, align 4, !dbg !25
  store i32 %1, i32* %.capture_expr., align 4, !dbg !25
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.1, metadata !22, metadata !DIExpression()), !dbg !24
  %2 = load i32, i32* %n, align 4, !dbg !26
  store i32 %2, i32* %.capture_expr.1, align 4, !dbg !26
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.2, metadata !22, metadata !DIExpression()), !dbg !24
  %3 = load i32, i32* %.capture_expr.1, align 4, !dbg !26
  %4 = load i32, i32* %.capture_expr., align 4, !dbg !25
  %sub = sub nsw i32 %3, %4, !dbg !27
  %sub3 = sub nsw i32 %sub, 1, !dbg !27
  %add = add nsw i32 %sub3, 1, !dbg !27
  %div = sdiv i32 %add, 1, !dbg !27
  %sub4 = sub nsw i32 %div, 1, !dbg !27
  store i32 %sub4, i32* %.capture_expr.2, align 4, !dbg !27
  call void @llvm.dbg.declare(metadata i32* %i5, metadata !28, metadata !DIExpression()), !dbg !24
  %5 = load i32, i32* %.capture_expr., align 4, !dbg !25
  store i32 %5, i32* %i5, align 4, !dbg !29
  %6 = load i32, i32* %.capture_expr., align 4, !dbg !25
  %7 = load i32, i32* %.capture_expr.1, align 4, !dbg !26
  %cmp = icmp slt i32 %6, %7, !dbg !27
  br i1 %cmp, label %simd.if.then, label %simd.if.end, !dbg !30

simd.if.then:                                     ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !31, metadata !DIExpression()), !dbg !24
  store i32 0, i32* %.omp.iv, align 4, !dbg !32
  call void @llvm.dbg.declare(metadata i32* %i6, metadata !28, metadata !DIExpression()), !dbg !24
  br label %omp.inner.for.cond, !dbg !30

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %simd.if.then
  %8 = load i32, i32* %.omp.iv, align 4, !dbg !32
  %9 = load i32, i32* %.capture_expr.2, align 4, !dbg !27
  %add7 = add nsw i32 %9, 1, !dbg !27
  %cmp8 = icmp slt i32 %8, %add7, !dbg !27
  br i1 %cmp8, label %omp.inner.for.body, label %omp.inner.for.end, !dbg !30

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %10 = load i32, i32* %.capture_expr., align 4, !dbg !25
  %11 = load i32, i32* %.omp.iv, align 4, !dbg !32
  %mul = mul nsw i32 %11, 1, !dbg !29
  %add9 = add nsw i32 %10, %mul, !dbg !29
  store i32 %add9, i32* %i6, align 4, !dbg !29
  %12 = load i32, i32* %i6, align 4, !dbg !33
  %13 = load i32, i32* %m, align 4, !dbg !34
  %sub10 = sub nsw i32 %12, %13, !dbg !35
  %idxprom = sext i32 %sub10 to i64, !dbg !36
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %b, i64 0, i64 %idxprom, !dbg !36
  %14 = load i32, i32* %arrayidx, align 4, !dbg !36
  %conv = sitofp i32 %14 to float, !dbg !36
  %sub11 = fsub float %conv, 1.000000e+00, !dbg !37
  %conv12 = fptosi float %sub11 to i32, !dbg !36
  %15 = load i32, i32* %i6, align 4, !dbg !38
  %idxprom13 = sext i32 %15 to i64, !dbg !39
  %arrayidx14 = getelementptr inbounds [4 x i32], [4 x i32]* %b, i64 0, i64 %idxprom13, !dbg !39
  store i32 %conv12, i32* %arrayidx14, align 4, !dbg !40
  br label %omp.body.continue, !dbg !39

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !41

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %16 = load i32, i32* %.omp.iv, align 4, !dbg !32
  %add15 = add nsw i32 %16, 1, !dbg !27
  store i32 %add15, i32* %.omp.iv, align 4, !dbg !27
  br label %omp.inner.for.cond, !dbg !41, !llvm.loop !42

omp.inner.for.end:                                ; preds = %omp.inner.for.cond
  %17 = load i32, i32* %.capture_expr., align 4, !dbg !25
  %18 = load i32, i32* %.capture_expr.1, align 4, !dbg !26
  %19 = load i32, i32* %.capture_expr., align 4, !dbg !25
  %sub16 = sub nsw i32 %18, %19, !dbg !27
  %sub17 = sub nsw i32 %sub16, 1, !dbg !27
  %add18 = add nsw i32 %sub17, 1, !dbg !27
  %div19 = sdiv i32 %add18, 1, !dbg !27
  %mul20 = mul nsw i32 %div19, 1, !dbg !29
  %add21 = add nsw i32 %17, %mul20, !dbg !29
  store i32 %add21, i32* %i, align 4, !dbg !29
  br label %simd.if.end, !dbg !41

simd.if.end:                                      ; preds = %omp.inner.for.end, %entry
  %arrayidx22 = getelementptr inbounds [4 x i32], [4 x i32]* %b, i64 0, i64 3, !dbg !46
  %20 = load i32, i32* %arrayidx22, align 4, !dbg !46
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %20), !dbg !47
  ret i32 0, !dbg !48
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @printf(i8*, ...) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.1 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "DRB138-simdsafelen-orig-yes.c", directory: "/home/yanze/code/OpenRace/tests/data/integration/dataracebench")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.1 "}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 19, type: !8, scopeLine: 19, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DILocalVariable(name: "i", scope: !7, file: !1, line: 21, type: !10)
!12 = !DILocation(line: 21, column: 7, scope: !7)
!13 = !DILocalVariable(name: "m", scope: !7, file: !1, line: 21, type: !10)
!14 = !DILocation(line: 21, column: 10, scope: !7)
!15 = !DILocalVariable(name: "n", scope: !7, file: !1, line: 21, type: !10)
!16 = !DILocation(line: 21, column: 15, scope: !7)
!17 = !DILocalVariable(name: "b", scope: !7, file: !1, line: 22, type: !18)
!18 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 128, elements: !19)
!19 = !{!20}
!20 = !DISubrange(count: 4)
!21 = !DILocation(line: 22, column: 7, scope: !7)
!22 = !DILocalVariable(name: ".capture_expr.", scope: !23, type: !10, flags: DIFlagArtificial)
!23 = distinct !DILexicalBlock(scope: !7, file: !1, line: 24, column: 3)
!24 = !DILocation(line: 0, scope: !23)
!25 = !DILocation(line: 25, column: 12, scope: !23)
!26 = !DILocation(line: 25, column: 17, scope: !23)
!27 = !DILocation(line: 25, column: 3, scope: !23)
!28 = !DILocalVariable(name: "i", scope: !23, type: !10, flags: DIFlagArtificial)
!29 = !DILocation(line: 25, column: 20, scope: !23)
!30 = !DILocation(line: 24, column: 3, scope: !7)
!31 = !DILocalVariable(name: ".omp.iv", scope: !23, type: !10, flags: DIFlagArtificial)
!32 = !DILocation(line: 25, column: 8, scope: !23)
!33 = !DILocation(line: 26, column: 14, scope: !23)
!34 = !DILocation(line: 26, column: 16, scope: !23)
!35 = !DILocation(line: 26, column: 15, scope: !23)
!36 = !DILocation(line: 26, column: 12, scope: !23)
!37 = !DILocation(line: 26, column: 19, scope: !23)
!38 = !DILocation(line: 26, column: 7, scope: !23)
!39 = !DILocation(line: 26, column: 5, scope: !23)
!40 = !DILocation(line: 26, column: 10, scope: !23)
!41 = !DILocation(line: 24, column: 3, scope: !23)
!42 = distinct !{!42, !41, !43, !44, !45}
!43 = !DILocation(line: 24, column: 30, scope: !23)
!44 = !{!"llvm.loop.vectorize.width", i32 2}
!45 = !{!"llvm.loop.vectorize.enable", i1 true}
!46 = !DILocation(line: 28, column: 37, scope: !7)
!47 = !DILocation(line: 28, column: 3, scope: !7)
!48 = !DILocation(line: 29, column: 3, scope: !7)
