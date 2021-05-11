; ModuleID = 'integration/dataracebench/DRB024-simdtruedep-orig-yes.c'
source_filename = "integration/dataracebench/DRB024-simdtruedep-orig-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [15 x i8] c"i=%d a[%d]=%d\0A\00", align 1

; Function Attrs: nounwind uwtable
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
  store i32 %argc, i32* %argc.addr, align 4, !tbaa !28
  call void @llvm.dbg.declare(metadata i32* %argc.addr, metadata !15, metadata !DIExpression()), !dbg !32
  store i8** %argv, i8*** %argv.addr, align 8, !tbaa !33
  call void @llvm.dbg.declare(metadata i8*** %argv.addr, metadata !16, metadata !DIExpression()), !dbg !35
  %0 = bitcast i32* %i to i8*, !dbg !36
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #4, !dbg !36
  call void @llvm.dbg.declare(metadata i32* %i, metadata !17, metadata !DIExpression()), !dbg !37
  %1 = bitcast i32* %len to i8*, !dbg !38
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #4, !dbg !38
  call void @llvm.dbg.declare(metadata i32* %len, metadata !18, metadata !DIExpression()), !dbg !39
  store i32 100, i32* %len, align 4, !dbg !39, !tbaa !28
  %2 = bitcast [100 x i32]* %a to i8*, !dbg !40
  call void @llvm.lifetime.start.p0i8(i64 400, i8* %2) #4, !dbg !40
  call void @llvm.dbg.declare(metadata [100 x i32]* %a, metadata !19, metadata !DIExpression()), !dbg !41
  %3 = bitcast [100 x i32]* %b to i8*, !dbg !40
  call void @llvm.lifetime.start.p0i8(i64 400, i8* %3) #4, !dbg !40
  call void @llvm.dbg.declare(metadata [100 x i32]* %b, metadata !23, metadata !DIExpression()), !dbg !42
  store i32 0, i32* %i, align 4, !dbg !43, !tbaa !28
  br label %for.cond, !dbg !45

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4, !dbg !46, !tbaa !28
  %5 = load i32, i32* %len, align 4, !dbg !48, !tbaa !28
  %cmp = icmp slt i32 %4, %5, !dbg !49
  br i1 %cmp, label %for.body, label %for.end, !dbg !50

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4, !dbg !51, !tbaa !28
  %7 = load i32, i32* %i, align 4, !dbg !53, !tbaa !28
  %idxprom = sext i32 %7 to i64, !dbg !54
  %arrayidx = getelementptr inbounds [100 x i32], [100 x i32]* %a, i64 0, i64 %idxprom, !dbg !54
  store i32 %6, i32* %arrayidx, align 4, !dbg !55, !tbaa !28
  %8 = load i32, i32* %i, align 4, !dbg !56, !tbaa !28
  %add = add nsw i32 %8, 1, !dbg !57
  %9 = load i32, i32* %i, align 4, !dbg !58, !tbaa !28
  %idxprom1 = sext i32 %9 to i64, !dbg !59
  %arrayidx2 = getelementptr inbounds [100 x i32], [100 x i32]* %b, i64 0, i64 %idxprom1, !dbg !59
  store i32 %add, i32* %arrayidx2, align 4, !dbg !60, !tbaa !28
  br label %for.inc, !dbg !61

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4, !dbg !62, !tbaa !28
  %inc = add nsw i32 %10, 1, !dbg !62
  store i32 %inc, i32* %i, align 4, !dbg !62, !tbaa !28
  br label %for.cond, !dbg !63, !llvm.loop !64

for.end:                                          ; preds = %for.cond
  %11 = bitcast i32* %.capture_expr. to i8*, !dbg !66
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #4, !dbg !66
  call void @llvm.dbg.declare(metadata i32* %.capture_expr., metadata !24, metadata !DIExpression()), !dbg !67
  %12 = load i32, i32* %len, align 4, !dbg !68, !tbaa !28
  %sub = sub nsw i32 %12, 1, !dbg !69
  store i32 %sub, i32* %.capture_expr., align 4, !dbg !68, !tbaa !28
  %13 = bitcast i32* %.capture_expr.3 to i8*, !dbg !66
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %13) #4, !dbg !66
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.3, metadata !24, metadata !DIExpression()), !dbg !67
  %14 = load i32, i32* %.capture_expr., align 4, !dbg !69, !tbaa !28
  %sub4 = sub nsw i32 %14, 0, !dbg !70
  %sub5 = sub nsw i32 %sub4, 1, !dbg !70
  %add6 = add nsw i32 %sub5, 1, !dbg !70
  %div = sdiv i32 %add6, 1, !dbg !70
  %sub7 = sub nsw i32 %div, 1, !dbg !70
  store i32 %sub7, i32* %.capture_expr.3, align 4, !dbg !70, !tbaa !28
  %15 = bitcast i32* %i8 to i8*, !dbg !66
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %15) #4, !dbg !66
  call void @llvm.dbg.declare(metadata i32* %i8, metadata !26, metadata !DIExpression()), !dbg !67
  store i32 0, i32* %i8, align 4, !dbg !71, !tbaa !28
  %16 = bitcast i32* %i8 to i8*, !dbg !66
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %16) #4, !dbg !66
  %17 = load i32, i32* %.capture_expr., align 4, !dbg !69, !tbaa !28
  %cmp9 = icmp slt i32 0, %17, !dbg !70
  br i1 %cmp9, label %simd.if.then, label %simd.if.end, !dbg !66

simd.if.then:                                     ; preds = %for.end
  %18 = bitcast i32* %.omp.iv to i8*, !dbg !66
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %18) #4, !dbg !66
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !27, metadata !DIExpression()), !dbg !67
  store i32 0, i32* %.omp.iv, align 4, !dbg !72, !tbaa !28
  %19 = bitcast i32* %i10 to i8*, !dbg !66
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %19) #4, !dbg !66
  call void @llvm.dbg.declare(metadata i32* %i10, metadata !26, metadata !DIExpression()), !dbg !67
  br label %omp.inner.for.cond, !dbg !66

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %simd.if.then
  %20 = load i32, i32* %.omp.iv, align 4, !dbg !72, !tbaa !28, !llvm.access.group !73
  %21 = load i32, i32* %.capture_expr.3, align 4, !dbg !70, !tbaa !28, !llvm.access.group !73
  %add11 = add nsw i32 %21, 1, !dbg !70
  %cmp12 = icmp slt i32 %20, %add11, !dbg !70
  br i1 %cmp12, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !66

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !66

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %22 = load i32, i32* %.omp.iv, align 4, !dbg !72, !tbaa !28, !llvm.access.group !73
  %mul = mul nsw i32 %22, 1, !dbg !71
  %add13 = add nsw i32 0, %mul, !dbg !71
  store i32 %add13, i32* %i10, align 4, !dbg !71, !tbaa !28, !llvm.access.group !73
  %23 = load i32, i32* %i10, align 4, !dbg !74, !tbaa !28, !llvm.access.group !73
  %idxprom14 = sext i32 %23 to i64, !dbg !75
  %arrayidx15 = getelementptr inbounds [100 x i32], [100 x i32]* %a, i64 0, i64 %idxprom14, !dbg !75
  %24 = load i32, i32* %arrayidx15, align 4, !dbg !75, !tbaa !28, !llvm.access.group !73
  %25 = load i32, i32* %i10, align 4, !dbg !76, !tbaa !28, !llvm.access.group !73
  %idxprom16 = sext i32 %25 to i64, !dbg !77
  %arrayidx17 = getelementptr inbounds [100 x i32], [100 x i32]* %b, i64 0, i64 %idxprom16, !dbg !77
  %26 = load i32, i32* %arrayidx17, align 4, !dbg !77, !tbaa !28, !llvm.access.group !73
  %add18 = add nsw i32 %24, %26, !dbg !78
  %27 = load i32, i32* %i10, align 4, !dbg !79, !tbaa !28, !llvm.access.group !73
  %add19 = add nsw i32 %27, 1, !dbg !80
  %idxprom20 = sext i32 %add19 to i64, !dbg !81
  %arrayidx21 = getelementptr inbounds [100 x i32], [100 x i32]* %a, i64 0, i64 %idxprom20, !dbg !81
  store i32 %add18, i32* %arrayidx21, align 4, !dbg !82, !tbaa !28, !llvm.access.group !73
  br label %omp.body.continue, !dbg !81

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !83

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %28 = load i32, i32* %.omp.iv, align 4, !dbg !72, !tbaa !28, !llvm.access.group !73
  %add22 = add nsw i32 %28, 1, !dbg !70
  store i32 %add22, i32* %.omp.iv, align 4, !dbg !70, !tbaa !28, !llvm.access.group !73
  br label %omp.inner.for.cond, !dbg !83, !llvm.loop !84

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  %29 = load i32, i32* %.capture_expr., align 4, !dbg !69, !tbaa !28
  %sub23 = sub nsw i32 %29, 0, !dbg !70
  %sub24 = sub nsw i32 %sub23, 1, !dbg !70
  %add25 = add nsw i32 %sub24, 1, !dbg !70
  %div26 = sdiv i32 %add25, 1, !dbg !70
  %mul27 = mul nsw i32 %div26, 1, !dbg !71
  %add28 = add nsw i32 0, %mul27, !dbg !71
  store i32 %add28, i32* %i, align 4, !dbg !71, !tbaa !28
  %30 = bitcast i32* %i10 to i8*, !dbg !83
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %30) #4, !dbg !83
  br label %simd.if.end, !dbg !83

simd.if.end:                                      ; preds = %omp.inner.for.end, %for.end
  %31 = bitcast i32* %.omp.iv to i8*, !dbg !83
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %31) #4, !dbg !83
  %32 = bitcast i32* %.capture_expr.3 to i8*, !dbg !83
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %32) #4, !dbg !83
  %33 = bitcast i32* %.capture_expr. to i8*, !dbg !83
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %33) #4, !dbg !83
  store i32 0, i32* %i, align 4, !dbg !88, !tbaa !28
  br label %for.cond29, !dbg !90

for.cond29:                                       ; preds = %for.inc34, %simd.if.end
  %34 = load i32, i32* %i, align 4, !dbg !91, !tbaa !28
  %35 = load i32, i32* %len, align 4, !dbg !93, !tbaa !28
  %cmp30 = icmp slt i32 %34, %35, !dbg !94
  br i1 %cmp30, label %for.body31, label %for.end36, !dbg !95

for.body31:                                       ; preds = %for.cond29
  %36 = load i32, i32* %i, align 4, !dbg !96, !tbaa !28
  %37 = load i32, i32* %i, align 4, !dbg !97, !tbaa !28
  %38 = load i32, i32* %i, align 4, !dbg !98, !tbaa !28
  %idxprom32 = sext i32 %38 to i64, !dbg !99
  %arrayidx33 = getelementptr inbounds [100 x i32], [100 x i32]* %a, i64 0, i64 %idxprom32, !dbg !99
  %39 = load i32, i32* %arrayidx33, align 4, !dbg !99, !tbaa !28
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %37, i32 %39), !dbg !100
  br label %for.inc34, !dbg !100

for.inc34:                                        ; preds = %for.body31
  %40 = load i32, i32* %i, align 4, !dbg !101, !tbaa !28
  %inc35 = add nsw i32 %40, 1, !dbg !101
  store i32 %inc35, i32* %i, align 4, !dbg !101, !tbaa !28
  br label %for.cond29, !dbg !102, !llvm.loop !103

for.end36:                                        ; preds = %for.cond29
  %41 = bitcast [100 x i32]* %b to i8*, !dbg !105
  call void @llvm.lifetime.end.p0i8(i64 400, i8* %41) #4, !dbg !105
  %42 = bitcast [100 x i32]* %a to i8*, !dbg !105
  call void @llvm.lifetime.end.p0i8(i64 400, i8* %42) #4, !dbg !105
  %43 = bitcast i32* %len to i8*, !dbg !105
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %43) #4, !dbg !105
  %44 = bitcast i32* %i to i8*, !dbg !105
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %44) #4, !dbg !105
  ret i32 0, !dbg !106
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local i32 @printf(i8*, ...) #3

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "integration/dataracebench/DRB024-simdtruedep-orig-yes.c", directory: "/home/brad/Code/OpenRace/tests/data")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.1 "}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 52, type: !8, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !14)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !10, !11}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!14 = !{!15, !16, !17, !18, !19, !23, !24, !24, !26, !27, !26}
!15 = !DILocalVariable(name: "argc", arg: 1, scope: !7, file: !1, line: 52, type: !10)
!16 = !DILocalVariable(name: "argv", arg: 2, scope: !7, file: !1, line: 52, type: !11)
!17 = !DILocalVariable(name: "i", scope: !7, file: !1, line: 54, type: !10)
!18 = !DILocalVariable(name: "len", scope: !7, file: !1, line: 55, type: !10)
!19 = !DILocalVariable(name: "a", scope: !7, file: !1, line: 56, type: !20)
!20 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 3200, elements: !21)
!21 = !{!22}
!22 = !DISubrange(count: 100)
!23 = !DILocalVariable(name: "b", scope: !7, file: !1, line: 56, type: !20)
!24 = !DILocalVariable(name: ".capture_expr.", scope: !25, type: !10, flags: DIFlagArtificial)
!25 = distinct !DILexicalBlock(scope: !7, file: !1, line: 64, column: 1)
!26 = !DILocalVariable(name: "i", scope: !25, type: !10, flags: DIFlagArtificial)
!27 = !DILocalVariable(name: ".omp.iv", scope: !25, type: !10, flags: DIFlagArtificial)
!28 = !{!29, !29, i64 0}
!29 = !{!"int", !30, i64 0}
!30 = !{!"omnipotent char", !31, i64 0}
!31 = !{!"Simple C/C++ TBAA"}
!32 = !DILocation(line: 52, column: 14, scope: !7)
!33 = !{!34, !34, i64 0}
!34 = !{!"any pointer", !30, i64 0}
!35 = !DILocation(line: 52, column: 26, scope: !7)
!36 = !DILocation(line: 54, column: 3, scope: !7)
!37 = !DILocation(line: 54, column: 7, scope: !7)
!38 = !DILocation(line: 55, column: 3, scope: !7)
!39 = !DILocation(line: 55, column: 7, scope: !7)
!40 = !DILocation(line: 56, column: 3, scope: !7)
!41 = !DILocation(line: 56, column: 7, scope: !7)
!42 = !DILocation(line: 56, column: 15, scope: !7)
!43 = !DILocation(line: 58, column: 9, scope: !44)
!44 = distinct !DILexicalBlock(scope: !7, file: !1, line: 58, column: 3)
!45 = !DILocation(line: 58, column: 8, scope: !44)
!46 = !DILocation(line: 58, column: 12, scope: !47)
!47 = distinct !DILexicalBlock(scope: !44, file: !1, line: 58, column: 3)
!48 = !DILocation(line: 58, column: 14, scope: !47)
!49 = !DILocation(line: 58, column: 13, scope: !47)
!50 = !DILocation(line: 58, column: 3, scope: !44)
!51 = !DILocation(line: 60, column: 10, scope: !52)
!52 = distinct !DILexicalBlock(scope: !47, file: !1, line: 59, column: 3)
!53 = !DILocation(line: 60, column: 7, scope: !52)
!54 = !DILocation(line: 60, column: 5, scope: !52)
!55 = !DILocation(line: 60, column: 9, scope: !52)
!56 = !DILocation(line: 61, column: 10, scope: !52)
!57 = !DILocation(line: 61, column: 11, scope: !52)
!58 = !DILocation(line: 61, column: 7, scope: !52)
!59 = !DILocation(line: 61, column: 5, scope: !52)
!60 = !DILocation(line: 61, column: 9, scope: !52)
!61 = !DILocation(line: 62, column: 3, scope: !52)
!62 = !DILocation(line: 58, column: 19, scope: !47)
!63 = !DILocation(line: 58, column: 3, scope: !47)
!64 = distinct !{!64, !50, !65}
!65 = !DILocation(line: 62, column: 3, scope: !44)
!66 = !DILocation(line: 64, column: 1, scope: !7)
!67 = !DILocation(line: 0, scope: !25)
!68 = !DILocation(line: 65, column: 14, scope: !25)
!69 = !DILocation(line: 65, column: 17, scope: !25)
!70 = !DILocation(line: 65, column: 3, scope: !25)
!71 = !DILocation(line: 65, column: 20, scope: !25)
!72 = !DILocation(line: 65, column: 8, scope: !25)
!73 = distinct !{}
!74 = !DILocation(line: 66, column: 14, scope: !25)
!75 = !DILocation(line: 66, column: 12, scope: !25)
!76 = !DILocation(line: 66, column: 19, scope: !25)
!77 = !DILocation(line: 66, column: 17, scope: !25)
!78 = !DILocation(line: 66, column: 16, scope: !25)
!79 = !DILocation(line: 66, column: 7, scope: !25)
!80 = !DILocation(line: 66, column: 8, scope: !25)
!81 = !DILocation(line: 66, column: 5, scope: !25)
!82 = !DILocation(line: 66, column: 11, scope: !25)
!83 = !DILocation(line: 64, column: 1, scope: !25)
!84 = distinct !{!84, !83, !85, !86, !87}
!85 = !DILocation(line: 64, column: 18, scope: !25)
!86 = !{!"llvm.loop.parallel_accesses", !73}
!87 = !{!"llvm.loop.vectorize.enable", i1 true}
!88 = !DILocation(line: 68, column: 9, scope: !89)
!89 = distinct !DILexicalBlock(scope: !7, file: !1, line: 68, column: 3)
!90 = !DILocation(line: 68, column: 8, scope: !89)
!91 = !DILocation(line: 68, column: 12, scope: !92)
!92 = distinct !DILexicalBlock(scope: !89, file: !1, line: 68, column: 3)
!93 = !DILocation(line: 68, column: 14, scope: !92)
!94 = !DILocation(line: 68, column: 13, scope: !92)
!95 = !DILocation(line: 68, column: 3, scope: !89)
!96 = !DILocation(line: 69, column: 30, scope: !92)
!97 = !DILocation(line: 69, column: 32, scope: !92)
!98 = !DILocation(line: 69, column: 36, scope: !92)
!99 = !DILocation(line: 69, column: 34, scope: !92)
!100 = !DILocation(line: 69, column: 5, scope: !92)
!101 = !DILocation(line: 68, column: 19, scope: !92)
!102 = !DILocation(line: 68, column: 3, scope: !92)
!103 = distinct !{!103, !95, !104}
!104 = !DILocation(line: 69, column: 38, scope: !89)
!105 = !DILocation(line: 71, column: 1, scope: !7)
!106 = !DILocation(line: 70, column: 3, scope: !7)
