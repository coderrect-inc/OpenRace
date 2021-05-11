; ModuleID = 'integration/dataracebench/DRB138-simdsafelen-orig-yes.c'
source_filename = "integration/dataracebench/DRB138-simdsafelen-orig-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [24 x i8] c"Expected: -1; Real: %d\0A\00", align 1

; Function Attrs: nounwind uwtable
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
  %0 = bitcast i32* %i to i8*, !dbg !23
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #4, !dbg !23
  call void @llvm.dbg.declare(metadata i32* %i, metadata !12, metadata !DIExpression()), !dbg !24
  %1 = bitcast i32* %m to i8*, !dbg !23
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #4, !dbg !23
  call void @llvm.dbg.declare(metadata i32* %m, metadata !13, metadata !DIExpression()), !dbg !25
  store i32 1, i32* %m, align 4, !dbg !25, !tbaa !26
  %2 = bitcast i32* %n to i8*, !dbg !23
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #4, !dbg !23
  call void @llvm.dbg.declare(metadata i32* %n, metadata !14, metadata !DIExpression()), !dbg !30
  store i32 4, i32* %n, align 4, !dbg !30, !tbaa !26
  %3 = bitcast [4 x i32]* %b to i8*, !dbg !31
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %3) #4, !dbg !31
  call void @llvm.dbg.declare(metadata [4 x i32]* %b, metadata !15, metadata !DIExpression()), !dbg !32
  %4 = bitcast [4 x i32]* %b to i8*, !dbg !32
  call void @llvm.memset.p0i8.i64(i8* align 16 %4, i8 0, i64 16, i1 false), !dbg !32
  %5 = bitcast i32* %.capture_expr. to i8*, !dbg !33
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #4, !dbg !33
  call void @llvm.dbg.declare(metadata i32* %.capture_expr., metadata !19, metadata !DIExpression()), !dbg !34
  %6 = load i32, i32* %m, align 4, !dbg !35, !tbaa !26
  store i32 %6, i32* %.capture_expr., align 4, !dbg !35, !tbaa !26
  %7 = bitcast i32* %.capture_expr.1 to i8*, !dbg !33
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #4, !dbg !33
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.1, metadata !19, metadata !DIExpression()), !dbg !34
  %8 = load i32, i32* %n, align 4, !dbg !36, !tbaa !26
  store i32 %8, i32* %.capture_expr.1, align 4, !dbg !36, !tbaa !26
  %9 = bitcast i32* %.capture_expr.2 to i8*, !dbg !33
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #4, !dbg !33
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.2, metadata !19, metadata !DIExpression()), !dbg !34
  %10 = load i32, i32* %.capture_expr.1, align 4, !dbg !36, !tbaa !26
  %11 = load i32, i32* %.capture_expr., align 4, !dbg !35, !tbaa !26
  %sub = sub nsw i32 %10, %11, !dbg !37
  %sub3 = sub nsw i32 %sub, 1, !dbg !37
  %add = add nsw i32 %sub3, 1, !dbg !37
  %div = sdiv i32 %add, 1, !dbg !37
  %sub4 = sub nsw i32 %div, 1, !dbg !37
  store i32 %sub4, i32* %.capture_expr.2, align 4, !dbg !37, !tbaa !26
  %12 = bitcast i32* %i5 to i8*, !dbg !33
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #4, !dbg !33
  call void @llvm.dbg.declare(metadata i32* %i5, metadata !21, metadata !DIExpression()), !dbg !34
  %13 = load i32, i32* %.capture_expr., align 4, !dbg !35, !tbaa !26
  store i32 %13, i32* %i5, align 4, !dbg !38, !tbaa !26
  %14 = bitcast i32* %i5 to i8*, !dbg !33
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %14) #4, !dbg !33
  %15 = load i32, i32* %.capture_expr., align 4, !dbg !35, !tbaa !26
  %16 = load i32, i32* %.capture_expr.1, align 4, !dbg !36, !tbaa !26
  %cmp = icmp slt i32 %15, %16, !dbg !37
  br i1 %cmp, label %simd.if.then, label %simd.if.end, !dbg !33

simd.if.then:                                     ; preds = %entry
  %17 = bitcast i32* %.omp.iv to i8*, !dbg !33
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %17) #4, !dbg !33
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !22, metadata !DIExpression()), !dbg !34
  store i32 0, i32* %.omp.iv, align 4, !dbg !39, !tbaa !26
  %18 = bitcast i32* %i6 to i8*, !dbg !33
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %18) #4, !dbg !33
  call void @llvm.dbg.declare(metadata i32* %i6, metadata !21, metadata !DIExpression()), !dbg !34
  br label %omp.inner.for.cond, !dbg !33

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %simd.if.then
  %19 = load i32, i32* %.omp.iv, align 4, !dbg !39, !tbaa !26
  %20 = load i32, i32* %.capture_expr.2, align 4, !dbg !37, !tbaa !26
  %add7 = add nsw i32 %20, 1, !dbg !37
  %cmp8 = icmp slt i32 %19, %add7, !dbg !37
  br i1 %cmp8, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !33

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !33

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %21 = load i32, i32* %.capture_expr., align 4, !dbg !35, !tbaa !26
  %22 = load i32, i32* %.omp.iv, align 4, !dbg !39, !tbaa !26
  %mul = mul nsw i32 %22, 1, !dbg !38
  %add9 = add nsw i32 %21, %mul, !dbg !38
  store i32 %add9, i32* %i6, align 4, !dbg !38, !tbaa !26
  %23 = load i32, i32* %i6, align 4, !dbg !40, !tbaa !26
  %24 = load i32, i32* %m, align 4, !dbg !41, !tbaa !26
  %sub10 = sub nsw i32 %23, %24, !dbg !42
  %idxprom = sext i32 %sub10 to i64, !dbg !43
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %b, i64 0, i64 %idxprom, !dbg !43
  %25 = load i32, i32* %arrayidx, align 4, !dbg !43, !tbaa !26
  %conv = sitofp i32 %25 to float, !dbg !43
  %sub11 = fsub float %conv, 1.000000e+00, !dbg !44
  %conv12 = fptosi float %sub11 to i32, !dbg !43
  %26 = load i32, i32* %i6, align 4, !dbg !45, !tbaa !26
  %idxprom13 = sext i32 %26 to i64, !dbg !46
  %arrayidx14 = getelementptr inbounds [4 x i32], [4 x i32]* %b, i64 0, i64 %idxprom13, !dbg !46
  store i32 %conv12, i32* %arrayidx14, align 4, !dbg !47, !tbaa !26
  br label %omp.body.continue, !dbg !46

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !48

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %27 = load i32, i32* %.omp.iv, align 4, !dbg !39, !tbaa !26
  %add15 = add nsw i32 %27, 1, !dbg !37
  store i32 %add15, i32* %.omp.iv, align 4, !dbg !37, !tbaa !26
  br label %omp.inner.for.cond, !dbg !48, !llvm.loop !49

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  %28 = load i32, i32* %.capture_expr., align 4, !dbg !35, !tbaa !26
  %29 = load i32, i32* %.capture_expr.1, align 4, !dbg !36, !tbaa !26
  %30 = load i32, i32* %.capture_expr., align 4, !dbg !35, !tbaa !26
  %sub16 = sub nsw i32 %29, %30, !dbg !37
  %sub17 = sub nsw i32 %sub16, 1, !dbg !37
  %add18 = add nsw i32 %sub17, 1, !dbg !37
  %div19 = sdiv i32 %add18, 1, !dbg !37
  %mul20 = mul nsw i32 %div19, 1, !dbg !38
  %add21 = add nsw i32 %28, %mul20, !dbg !38
  store i32 %add21, i32* %i, align 4, !dbg !38, !tbaa !26
  %31 = bitcast i32* %i6 to i8*, !dbg !48
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %31) #4, !dbg !48
  br label %simd.if.end, !dbg !48

simd.if.end:                                      ; preds = %omp.inner.for.end, %entry
  %32 = bitcast i32* %.omp.iv to i8*, !dbg !48
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %32) #4, !dbg !48
  %33 = bitcast i32* %.capture_expr.2 to i8*, !dbg !48
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %33) #4, !dbg !48
  %34 = bitcast i32* %.capture_expr.1 to i8*, !dbg !48
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %34) #4, !dbg !48
  %35 = bitcast i32* %.capture_expr. to i8*, !dbg !48
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %35) #4, !dbg !48
  %arrayidx22 = getelementptr inbounds [4 x i32], [4 x i32]* %b, i64 0, i64 3, !dbg !53
  %36 = load i32, i32* %arrayidx22, align 4, !dbg !53, !tbaa !26
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %36), !dbg !54
  %37 = bitcast [4 x i32]* %b to i8*, !dbg !55
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %37) #4, !dbg !55
  %38 = bitcast i32* %n to i8*, !dbg !55
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %38) #4, !dbg !55
  %39 = bitcast i32* %m to i8*, !dbg !55
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %39) #4, !dbg !55
  %40 = bitcast i32* %i to i8*, !dbg !55
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %40) #4, !dbg !55
  ret i32 0, !dbg !56
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

declare dso_local i32 @printf(i8*, ...) #3

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "integration/dataracebench/DRB138-simdsafelen-orig-yes.c", directory: "/home/brad/Code/OpenRace/tests/data")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.1 "}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 19, type: !8, scopeLine: 19, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !11)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !{!12, !13, !14, !15, !19, !19, !19, !21, !22, !21}
!12 = !DILocalVariable(name: "i", scope: !7, file: !1, line: 21, type: !10)
!13 = !DILocalVariable(name: "m", scope: !7, file: !1, line: 21, type: !10)
!14 = !DILocalVariable(name: "n", scope: !7, file: !1, line: 21, type: !10)
!15 = !DILocalVariable(name: "b", scope: !7, file: !1, line: 22, type: !16)
!16 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 128, elements: !17)
!17 = !{!18}
!18 = !DISubrange(count: 4)
!19 = !DILocalVariable(name: ".capture_expr.", scope: !20, type: !10, flags: DIFlagArtificial)
!20 = distinct !DILexicalBlock(scope: !7, file: !1, line: 24, column: 3)
!21 = !DILocalVariable(name: "i", scope: !20, type: !10, flags: DIFlagArtificial)
!22 = !DILocalVariable(name: ".omp.iv", scope: !20, type: !10, flags: DIFlagArtificial)
!23 = !DILocation(line: 21, column: 3, scope: !7)
!24 = !DILocation(line: 21, column: 7, scope: !7)
!25 = !DILocation(line: 21, column: 10, scope: !7)
!26 = !{!27, !27, i64 0}
!27 = !{!"int", !28, i64 0}
!28 = !{!"omnipotent char", !29, i64 0}
!29 = !{!"Simple C/C++ TBAA"}
!30 = !DILocation(line: 21, column: 15, scope: !7)
!31 = !DILocation(line: 22, column: 3, scope: !7)
!32 = !DILocation(line: 22, column: 7, scope: !7)
!33 = !DILocation(line: 24, column: 3, scope: !7)
!34 = !DILocation(line: 0, scope: !20)
!35 = !DILocation(line: 25, column: 12, scope: !20)
!36 = !DILocation(line: 25, column: 17, scope: !20)
!37 = !DILocation(line: 25, column: 3, scope: !20)
!38 = !DILocation(line: 25, column: 20, scope: !20)
!39 = !DILocation(line: 25, column: 8, scope: !20)
!40 = !DILocation(line: 26, column: 14, scope: !20)
!41 = !DILocation(line: 26, column: 16, scope: !20)
!42 = !DILocation(line: 26, column: 15, scope: !20)
!43 = !DILocation(line: 26, column: 12, scope: !20)
!44 = !DILocation(line: 26, column: 19, scope: !20)
!45 = !DILocation(line: 26, column: 7, scope: !20)
!46 = !DILocation(line: 26, column: 5, scope: !20)
!47 = !DILocation(line: 26, column: 10, scope: !20)
!48 = !DILocation(line: 24, column: 3, scope: !20)
!49 = distinct !{!49, !48, !50, !51, !52}
!50 = !DILocation(line: 24, column: 30, scope: !20)
!51 = !{!"llvm.loop.vectorize.width", i32 2}
!52 = !{!"llvm.loop.vectorize.enable", i1 true}
!53 = !DILocation(line: 28, column: 37, scope: !7)
!54 = !DILocation(line: 28, column: 3, scope: !7)
!55 = !DILocation(line: 30, column: 1, scope: !7)
!56 = !DILocation(line: 29, column: 3, scope: !7)
