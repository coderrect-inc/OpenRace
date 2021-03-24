; ModuleID = 'DRB024-simdtruedep-orig-yes.c'
source_filename = "DRB024-simdtruedep-orig-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"i=%d a[%d]=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !dbg !7 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %len = alloca i32, align 4
  %a = alloca [100 x i32], align 16
  %b = alloca [100 x i32], align 16
  %tmp = alloca i32, align 4
  %.capture_expr. = alloca i32, align 4
  %.capture_expr.3 = alloca i32, align 4
  %i8 = alloca i32, align 4
  %.omp.iv = alloca i32, align 4
  %i10 = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %argc.addr, metadata !14, metadata !DIExpression()), !dbg !15
  store i8** %argv, i8*** %argv.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %argv.addr, metadata !16, metadata !DIExpression()), !dbg !17
  call void @llvm.dbg.declare(metadata i32* %i, metadata !18, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.declare(metadata i32* %len, metadata !20, metadata !DIExpression()), !dbg !21
  store i32 100, i32* %len, align 4, !dbg !21
  call void @llvm.dbg.declare(metadata [100 x i32]* %a, metadata !22, metadata !DIExpression()), !dbg !26
  call void @llvm.dbg.declare(metadata [100 x i32]* %b, metadata !27, metadata !DIExpression()), !dbg !28
  store i32 0, i32* %i, align 4, !dbg !29
  br label %for.cond, !dbg !31

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !32
  %1 = load i32, i32* %len, align 4, !dbg !34
  %cmp = icmp slt i32 %0, %1, !dbg !35
  br i1 %cmp, label %for.body, label %for.end, !dbg !36

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4, !dbg !37
  %3 = load i32, i32* %i, align 4, !dbg !39
  %idxprom = sext i32 %3 to i64, !dbg !40
  %arrayidx = getelementptr inbounds [100 x i32], [100 x i32]* %a, i64 0, i64 %idxprom, !dbg !40
  store i32 %2, i32* %arrayidx, align 4, !dbg !41
  %4 = load i32, i32* %i, align 4, !dbg !42
  %add = add nsw i32 %4, 1, !dbg !43
  %5 = load i32, i32* %i, align 4, !dbg !44
  %idxprom1 = sext i32 %5 to i64, !dbg !45
  %arrayidx2 = getelementptr inbounds [100 x i32], [100 x i32]* %b, i64 0, i64 %idxprom1, !dbg !45
  store i32 %add, i32* %arrayidx2, align 4, !dbg !46
  br label %for.inc, !dbg !47

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !48
  %inc = add nsw i32 %6, 1, !dbg !48
  store i32 %inc, i32* %i, align 4, !dbg !48
  br label %for.cond, !dbg !49, !llvm.loop !50

for.end:                                          ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i32* %.capture_expr., metadata !52, metadata !DIExpression()), !dbg !54
  %7 = load i32, i32* %len, align 4, !dbg !55
  %sub = sub nsw i32 %7, 1, !dbg !56
  store i32 %sub, i32* %.capture_expr., align 4, !dbg !55
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.3, metadata !52, metadata !DIExpression()), !dbg !54
  %8 = load i32, i32* %.capture_expr., align 4, !dbg !56
  %sub4 = sub nsw i32 %8, 0, !dbg !57
  %sub5 = sub nsw i32 %sub4, 1, !dbg !57
  %add6 = add nsw i32 %sub5, 1, !dbg !57
  %div = sdiv i32 %add6, 1, !dbg !57
  %sub7 = sub nsw i32 %div, 1, !dbg !57
  store i32 %sub7, i32* %.capture_expr.3, align 4, !dbg !57
  call void @llvm.dbg.declare(metadata i32* %i8, metadata !58, metadata !DIExpression()), !dbg !54
  store i32 0, i32* %i8, align 4, !dbg !59
  %9 = load i32, i32* %.capture_expr., align 4, !dbg !56
  %cmp9 = icmp slt i32 0, %9, !dbg !57
  br i1 %cmp9, label %simd.if.then, label %simd.if.end, !dbg !60

simd.if.then:                                     ; preds = %for.end
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !61, metadata !DIExpression()), !dbg !54
  store i32 0, i32* %.omp.iv, align 4, !dbg !62
  call void @llvm.dbg.declare(metadata i32* %i10, metadata !58, metadata !DIExpression()), !dbg !54
  br label %omp.inner.for.cond, !dbg !60

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %simd.if.then
  %10 = load i32, i32* %.omp.iv, align 4, !dbg !62, !llvm.access.group !63
  %11 = load i32, i32* %.capture_expr.3, align 4, !dbg !57, !llvm.access.group !63
  %add11 = add nsw i32 %11, 1, !dbg !57
  %cmp12 = icmp slt i32 %10, %add11, !dbg !57
  br i1 %cmp12, label %omp.inner.for.body, label %omp.inner.for.end, !dbg !60

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %12 = load i32, i32* %.omp.iv, align 4, !dbg !62, !llvm.access.group !63
  %mul = mul nsw i32 %12, 1, !dbg !59
  %add13 = add nsw i32 0, %mul, !dbg !59
  store i32 %add13, i32* %i10, align 4, !dbg !59, !llvm.access.group !63
  %13 = load i32, i32* %i10, align 4, !dbg !64, !llvm.access.group !63
  %idxprom14 = sext i32 %13 to i64, !dbg !65
  %arrayidx15 = getelementptr inbounds [100 x i32], [100 x i32]* %a, i64 0, i64 %idxprom14, !dbg !65
  %14 = load i32, i32* %arrayidx15, align 4, !dbg !65, !llvm.access.group !63
  %15 = load i32, i32* %i10, align 4, !dbg !66, !llvm.access.group !63
  %idxprom16 = sext i32 %15 to i64, !dbg !67
  %arrayidx17 = getelementptr inbounds [100 x i32], [100 x i32]* %b, i64 0, i64 %idxprom16, !dbg !67
  %16 = load i32, i32* %arrayidx17, align 4, !dbg !67, !llvm.access.group !63
  %add18 = add nsw i32 %14, %16, !dbg !68
  %17 = load i32, i32* %i10, align 4, !dbg !69, !llvm.access.group !63
  %add19 = add nsw i32 %17, 1, !dbg !70
  %idxprom20 = sext i32 %add19 to i64, !dbg !71
  %arrayidx21 = getelementptr inbounds [100 x i32], [100 x i32]* %a, i64 0, i64 %idxprom20, !dbg !71
  store i32 %add18, i32* %arrayidx21, align 4, !dbg !72, !llvm.access.group !63
  br label %omp.body.continue, !dbg !71

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !73

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %18 = load i32, i32* %.omp.iv, align 4, !dbg !62, !llvm.access.group !63
  %add22 = add nsw i32 %18, 1, !dbg !57
  store i32 %add22, i32* %.omp.iv, align 4, !dbg !57, !llvm.access.group !63
  br label %omp.inner.for.cond, !dbg !73, !llvm.loop !74

omp.inner.for.end:                                ; preds = %omp.inner.for.cond
  %19 = load i32, i32* %.capture_expr., align 4, !dbg !56
  %sub23 = sub nsw i32 %19, 0, !dbg !57
  %sub24 = sub nsw i32 %sub23, 1, !dbg !57
  %add25 = add nsw i32 %sub24, 1, !dbg !57
  %div26 = sdiv i32 %add25, 1, !dbg !57
  %mul27 = mul nsw i32 %div26, 1, !dbg !59
  %add28 = add nsw i32 0, %mul27, !dbg !59
  store i32 %add28, i32* %i, align 4, !dbg !59
  br label %simd.if.end, !dbg !73

simd.if.end:                                      ; preds = %omp.inner.for.end, %for.end
  store i32 0, i32* %i, align 4, !dbg !78
  br label %for.cond29, !dbg !80

for.cond29:                                       ; preds = %for.inc34, %simd.if.end
  %20 = load i32, i32* %i, align 4, !dbg !81
  %21 = load i32, i32* %len, align 4, !dbg !83
  %cmp30 = icmp slt i32 %20, %21, !dbg !84
  br i1 %cmp30, label %for.body31, label %for.end36, !dbg !85

for.body31:                                       ; preds = %for.cond29
  %22 = load i32, i32* %i, align 4, !dbg !86
  %23 = load i32, i32* %i, align 4, !dbg !87
  %24 = load i32, i32* %i, align 4, !dbg !88
  %idxprom32 = sext i32 %24 to i64, !dbg !89
  %arrayidx33 = getelementptr inbounds [100 x i32], [100 x i32]* %a, i64 0, i64 %idxprom32, !dbg !89
  %25 = load i32, i32* %arrayidx33, align 4, !dbg !89
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %23, i32 %25), !dbg !90
  br label %for.inc34, !dbg !90

for.inc34:                                        ; preds = %for.body31
  %26 = load i32, i32* %i, align 4, !dbg !91
  %inc35 = add nsw i32 %26, 1, !dbg !91
  store i32 %inc35, i32* %i, align 4, !dbg !91
  br label %for.cond29, !dbg !92, !llvm.loop !93

for.end36:                                        ; preds = %for.cond29
  ret i32 0, !dbg !95
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32 @printf(i8*, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.1 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "DRB024-simdtruedep-orig-yes.c", directory: "/home/yanze/code/OpenRace/tests/data/integration/dataracebench")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.1 "}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 52, type: !8, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !10, !11}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!14 = !DILocalVariable(name: "argc", arg: 1, scope: !7, file: !1, line: 52, type: !10)
!15 = !DILocation(line: 52, column: 14, scope: !7)
!16 = !DILocalVariable(name: "argv", arg: 2, scope: !7, file: !1, line: 52, type: !11)
!17 = !DILocation(line: 52, column: 26, scope: !7)
!18 = !DILocalVariable(name: "i", scope: !7, file: !1, line: 54, type: !10)
!19 = !DILocation(line: 54, column: 7, scope: !7)
!20 = !DILocalVariable(name: "len", scope: !7, file: !1, line: 55, type: !10)
!21 = !DILocation(line: 55, column: 7, scope: !7)
!22 = !DILocalVariable(name: "a", scope: !7, file: !1, line: 56, type: !23)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 3200, elements: !24)
!24 = !{!25}
!25 = !DISubrange(count: 100)
!26 = !DILocation(line: 56, column: 7, scope: !7)
!27 = !DILocalVariable(name: "b", scope: !7, file: !1, line: 56, type: !23)
!28 = !DILocation(line: 56, column: 15, scope: !7)
!29 = !DILocation(line: 58, column: 9, scope: !30)
!30 = distinct !DILexicalBlock(scope: !7, file: !1, line: 58, column: 3)
!31 = !DILocation(line: 58, column: 8, scope: !30)
!32 = !DILocation(line: 58, column: 12, scope: !33)
!33 = distinct !DILexicalBlock(scope: !30, file: !1, line: 58, column: 3)
!34 = !DILocation(line: 58, column: 14, scope: !33)
!35 = !DILocation(line: 58, column: 13, scope: !33)
!36 = !DILocation(line: 58, column: 3, scope: !30)
!37 = !DILocation(line: 60, column: 10, scope: !38)
!38 = distinct !DILexicalBlock(scope: !33, file: !1, line: 59, column: 3)
!39 = !DILocation(line: 60, column: 7, scope: !38)
!40 = !DILocation(line: 60, column: 5, scope: !38)
!41 = !DILocation(line: 60, column: 9, scope: !38)
!42 = !DILocation(line: 61, column: 10, scope: !38)
!43 = !DILocation(line: 61, column: 11, scope: !38)
!44 = !DILocation(line: 61, column: 7, scope: !38)
!45 = !DILocation(line: 61, column: 5, scope: !38)
!46 = !DILocation(line: 61, column: 9, scope: !38)
!47 = !DILocation(line: 62, column: 3, scope: !38)
!48 = !DILocation(line: 58, column: 19, scope: !33)
!49 = !DILocation(line: 58, column: 3, scope: !33)
!50 = distinct !{!50, !36, !51}
!51 = !DILocation(line: 62, column: 3, scope: !30)
!52 = !DILocalVariable(name: ".capture_expr.", scope: !53, type: !10, flags: DIFlagArtificial)
!53 = distinct !DILexicalBlock(scope: !7, file: !1, line: 64, column: 1)
!54 = !DILocation(line: 0, scope: !53)
!55 = !DILocation(line: 65, column: 14, scope: !53)
!56 = !DILocation(line: 65, column: 17, scope: !53)
!57 = !DILocation(line: 65, column: 3, scope: !53)
!58 = !DILocalVariable(name: "i", scope: !53, type: !10, flags: DIFlagArtificial)
!59 = !DILocation(line: 65, column: 20, scope: !53)
!60 = !DILocation(line: 64, column: 1, scope: !7)
!61 = !DILocalVariable(name: ".omp.iv", scope: !53, type: !10, flags: DIFlagArtificial)
!62 = !DILocation(line: 65, column: 8, scope: !53)
!63 = distinct !{}
!64 = !DILocation(line: 66, column: 14, scope: !53)
!65 = !DILocation(line: 66, column: 12, scope: !53)
!66 = !DILocation(line: 66, column: 19, scope: !53)
!67 = !DILocation(line: 66, column: 17, scope: !53)
!68 = !DILocation(line: 66, column: 16, scope: !53)
!69 = !DILocation(line: 66, column: 7, scope: !53)
!70 = !DILocation(line: 66, column: 8, scope: !53)
!71 = !DILocation(line: 66, column: 5, scope: !53)
!72 = !DILocation(line: 66, column: 11, scope: !53)
!73 = !DILocation(line: 64, column: 1, scope: !53)
!74 = distinct !{!74, !73, !75, !76, !77}
!75 = !DILocation(line: 64, column: 18, scope: !53)
!76 = !{!"llvm.loop.parallel_accesses", !63}
!77 = !{!"llvm.loop.vectorize.enable", i1 true}
!78 = !DILocation(line: 68, column: 9, scope: !79)
!79 = distinct !DILexicalBlock(scope: !7, file: !1, line: 68, column: 3)
!80 = !DILocation(line: 68, column: 8, scope: !79)
!81 = !DILocation(line: 68, column: 12, scope: !82)
!82 = distinct !DILexicalBlock(scope: !79, file: !1, line: 68, column: 3)
!83 = !DILocation(line: 68, column: 14, scope: !82)
!84 = !DILocation(line: 68, column: 13, scope: !82)
!85 = !DILocation(line: 68, column: 3, scope: !79)
!86 = !DILocation(line: 69, column: 30, scope: !82)
!87 = !DILocation(line: 69, column: 32, scope: !82)
!88 = !DILocation(line: 69, column: 36, scope: !82)
!89 = !DILocation(line: 69, column: 34, scope: !82)
!90 = !DILocation(line: 69, column: 5, scope: !82)
!91 = !DILocation(line: 68, column: 19, scope: !82)
!92 = !DILocation(line: 68, column: 3, scope: !82)
!93 = distinct !{!93, !85, !94}
!94 = !DILocation(line: 69, column: 38, scope: !79)
!95 = !DILocation(line: 70, column: 3, scope: !7)
