; ModuleID = 'integration/dataracebench/DRB025-simdtruedep-var-yes.c'
source_filename = "integration/dataracebench/DRB025-simdtruedep-var-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !dbg !13 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %len = alloca i32, align 4
  %saved_stack = alloca i8*, align 8
  %__vla_expr0 = alloca i64, align 8
  %__vla_expr1 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %.capture_expr. = alloca i32, align 4
  %.capture_expr.6 = alloca i32, align 4
  %i11 = alloca i32, align 4
  %.omp.iv = alloca i32, align 4
  %i13 = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4, !tbaa !36
  call void @llvm.dbg.declare(metadata i32* %argc.addr, metadata !17, metadata !DIExpression()), !dbg !40
  store i8** %argv, i8*** %argv.addr, align 8, !tbaa !41
  call void @llvm.dbg.declare(metadata i8*** %argv.addr, metadata !18, metadata !DIExpression()), !dbg !43
  %0 = bitcast i32* %i to i8*, !dbg !44
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #4, !dbg !44
  call void @llvm.dbg.declare(metadata i32* %i, metadata !19, metadata !DIExpression()), !dbg !45
  %1 = bitcast i32* %len to i8*, !dbg !46
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #4, !dbg !46
  call void @llvm.dbg.declare(metadata i32* %len, metadata !20, metadata !DIExpression()), !dbg !47
  store i32 100, i32* %len, align 4, !dbg !47, !tbaa !36
  %2 = load i32, i32* %argc.addr, align 4, !dbg !48, !tbaa !36
  %cmp = icmp sgt i32 %2, 1, !dbg !50
  br i1 %cmp, label %if.then, label %if.end, !dbg !51

if.then:                                          ; preds = %entry
  %3 = load i8**, i8*** %argv.addr, align 8, !dbg !52, !tbaa !41
  %arrayidx = getelementptr inbounds i8*, i8** %3, i64 1, !dbg !52
  %4 = load i8*, i8** %arrayidx, align 8, !dbg !52, !tbaa !41
  %call = call i32 @atoi(i8* %4) #6, !dbg !53
  store i32 %call, i32* %len, align 4, !dbg !54, !tbaa !36
  br label %if.end, !dbg !55

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, i32* %len, align 4, !dbg !56, !tbaa !36
  %6 = zext i32 %5 to i64, !dbg !57
  %7 = call i8* @llvm.stacksave(), !dbg !57
  store i8* %7, i8** %saved_stack, align 8, !dbg !57
  %vla = alloca i32, i64 %6, align 16, !dbg !57
  store i64 %6, i64* %__vla_expr0, align 8, !dbg !57
  call void @llvm.dbg.declare(metadata i64* %__vla_expr0, metadata !21, metadata !DIExpression()), !dbg !58
  call void @llvm.dbg.declare(metadata i32* %vla, metadata !23, metadata !DIExpression()), !dbg !59
  %8 = load i32, i32* %len, align 4, !dbg !60, !tbaa !36
  %9 = zext i32 %8 to i64, !dbg !57
  %vla1 = alloca i32, i64 %9, align 16, !dbg !57
  store i64 %9, i64* %__vla_expr1, align 8, !dbg !57
  call void @llvm.dbg.declare(metadata i64* %__vla_expr1, metadata !27, metadata !DIExpression()), !dbg !58
  call void @llvm.dbg.declare(metadata i32* %vla1, metadata !28, metadata !DIExpression()), !dbg !61
  store i32 0, i32* %i, align 4, !dbg !62, !tbaa !36
  br label %for.cond, !dbg !64

for.cond:                                         ; preds = %for.inc, %if.end
  %10 = load i32, i32* %i, align 4, !dbg !65, !tbaa !36
  %11 = load i32, i32* %len, align 4, !dbg !67, !tbaa !36
  %cmp2 = icmp slt i32 %10, %11, !dbg !68
  br i1 %cmp2, label %for.body, label %for.end, !dbg !69

for.body:                                         ; preds = %for.cond
  %12 = load i32, i32* %i, align 4, !dbg !70, !tbaa !36
  %13 = load i32, i32* %i, align 4, !dbg !72, !tbaa !36
  %idxprom = sext i32 %13 to i64, !dbg !73
  %arrayidx3 = getelementptr inbounds i32, i32* %vla, i64 %idxprom, !dbg !73
  store i32 %12, i32* %arrayidx3, align 4, !dbg !74, !tbaa !36
  %14 = load i32, i32* %i, align 4, !dbg !75, !tbaa !36
  %add = add nsw i32 %14, 1, !dbg !76
  %15 = load i32, i32* %i, align 4, !dbg !77, !tbaa !36
  %idxprom4 = sext i32 %15 to i64, !dbg !78
  %arrayidx5 = getelementptr inbounds i32, i32* %vla1, i64 %idxprom4, !dbg !78
  store i32 %add, i32* %arrayidx5, align 4, !dbg !79, !tbaa !36
  br label %for.inc, !dbg !80

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %i, align 4, !dbg !81, !tbaa !36
  %inc = add nsw i32 %16, 1, !dbg !81
  store i32 %inc, i32* %i, align 4, !dbg !81, !tbaa !36
  br label %for.cond, !dbg !82, !llvm.loop !83

for.end:                                          ; preds = %for.cond
  %17 = bitcast i32* %.capture_expr. to i8*, !dbg !85
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %17) #4, !dbg !85
  call void @llvm.dbg.declare(metadata i32* %.capture_expr., metadata !32, metadata !DIExpression()), !dbg !86
  %18 = load i32, i32* %len, align 4, !dbg !87, !tbaa !36
  %sub = sub nsw i32 %18, 1, !dbg !88
  store i32 %sub, i32* %.capture_expr., align 4, !dbg !87, !tbaa !36
  %19 = bitcast i32* %.capture_expr.6 to i8*, !dbg !85
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %19) #4, !dbg !85
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.6, metadata !32, metadata !DIExpression()), !dbg !86
  %20 = load i32, i32* %.capture_expr., align 4, !dbg !88, !tbaa !36
  %sub7 = sub nsw i32 %20, 0, !dbg !89
  %sub8 = sub nsw i32 %sub7, 1, !dbg !89
  %add9 = add nsw i32 %sub8, 1, !dbg !89
  %div = sdiv i32 %add9, 1, !dbg !89
  %sub10 = sub nsw i32 %div, 1, !dbg !89
  store i32 %sub10, i32* %.capture_expr.6, align 4, !dbg !89, !tbaa !36
  %21 = bitcast i32* %i11 to i8*, !dbg !85
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %21) #4, !dbg !85
  call void @llvm.dbg.declare(metadata i32* %i11, metadata !34, metadata !DIExpression()), !dbg !86
  store i32 0, i32* %i11, align 4, !dbg !90, !tbaa !36
  %22 = bitcast i32* %i11 to i8*, !dbg !85
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %22) #4, !dbg !85
  %23 = load i32, i32* %.capture_expr., align 4, !dbg !88, !tbaa !36
  %cmp12 = icmp slt i32 0, %23, !dbg !89
  br i1 %cmp12, label %simd.if.then, label %simd.if.end, !dbg !85

simd.if.then:                                     ; preds = %for.end
  %24 = bitcast i32* %.omp.iv to i8*, !dbg !85
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %24) #4, !dbg !85
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !35, metadata !DIExpression()), !dbg !86
  store i32 0, i32* %.omp.iv, align 4, !dbg !91, !tbaa !36
  %25 = bitcast i32* %i13 to i8*, !dbg !85
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %25) #4, !dbg !85
  call void @llvm.dbg.declare(metadata i32* %i13, metadata !34, metadata !DIExpression()), !dbg !86
  br label %omp.inner.for.cond, !dbg !85

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %simd.if.then
  %26 = load i32, i32* %.omp.iv, align 4, !dbg !91, !tbaa !36, !llvm.access.group !92
  %27 = load i32, i32* %.capture_expr.6, align 4, !dbg !89, !tbaa !36, !llvm.access.group !92
  %add14 = add nsw i32 %27, 1, !dbg !89
  %cmp15 = icmp slt i32 %26, %add14, !dbg !89
  br i1 %cmp15, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !85

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !85

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %28 = load i32, i32* %.omp.iv, align 4, !dbg !91, !tbaa !36, !llvm.access.group !92
  %mul = mul nsw i32 %28, 1, !dbg !90
  %add16 = add nsw i32 0, %mul, !dbg !90
  store i32 %add16, i32* %i13, align 4, !dbg !90, !tbaa !36, !llvm.access.group !92
  %29 = load i32, i32* %i13, align 4, !dbg !93, !tbaa !36, !llvm.access.group !92
  %idxprom17 = sext i32 %29 to i64, !dbg !94
  %arrayidx18 = getelementptr inbounds i32, i32* %vla, i64 %idxprom17, !dbg !94
  %30 = load i32, i32* %arrayidx18, align 4, !dbg !94, !tbaa !36, !llvm.access.group !92
  %31 = load i32, i32* %i13, align 4, !dbg !95, !tbaa !36, !llvm.access.group !92
  %idxprom19 = sext i32 %31 to i64, !dbg !96
  %arrayidx20 = getelementptr inbounds i32, i32* %vla1, i64 %idxprom19, !dbg !96
  %32 = load i32, i32* %arrayidx20, align 4, !dbg !96, !tbaa !36, !llvm.access.group !92
  %mul21 = mul nsw i32 %30, %32, !dbg !97
  %33 = load i32, i32* %i13, align 4, !dbg !98, !tbaa !36, !llvm.access.group !92
  %add22 = add nsw i32 %33, 1, !dbg !99
  %idxprom23 = sext i32 %add22 to i64, !dbg !100
  %arrayidx24 = getelementptr inbounds i32, i32* %vla, i64 %idxprom23, !dbg !100
  store i32 %mul21, i32* %arrayidx24, align 4, !dbg !101, !tbaa !36, !llvm.access.group !92
  br label %omp.body.continue, !dbg !100

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !102

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %34 = load i32, i32* %.omp.iv, align 4, !dbg !91, !tbaa !36, !llvm.access.group !92
  %add25 = add nsw i32 %34, 1, !dbg !89
  store i32 %add25, i32* %.omp.iv, align 4, !dbg !89, !tbaa !36, !llvm.access.group !92
  br label %omp.inner.for.cond, !dbg !102, !llvm.loop !103

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  %35 = load i32, i32* %.capture_expr., align 4, !dbg !88, !tbaa !36
  %sub26 = sub nsw i32 %35, 0, !dbg !89
  %sub27 = sub nsw i32 %sub26, 1, !dbg !89
  %add28 = add nsw i32 %sub27, 1, !dbg !89
  %div29 = sdiv i32 %add28, 1, !dbg !89
  %mul30 = mul nsw i32 %div29, 1, !dbg !90
  %add31 = add nsw i32 0, %mul30, !dbg !90
  store i32 %add31, i32* %i, align 4, !dbg !90, !tbaa !36
  %36 = bitcast i32* %i13 to i8*, !dbg !102
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %36) #4, !dbg !102
  br label %simd.if.end, !dbg !102

simd.if.end:                                      ; preds = %omp.inner.for.end, %for.end
  %37 = bitcast i32* %.omp.iv to i8*, !dbg !102
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %37) #4, !dbg !102
  %38 = bitcast i32* %.capture_expr.6 to i8*, !dbg !102
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %38) #4, !dbg !102
  %39 = bitcast i32* %.capture_expr. to i8*, !dbg !102
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %39) #4, !dbg !102
  store i32 0, i32* %retval, align 4, !dbg !107
  %40 = load i8*, i8** %saved_stack, align 8, !dbg !108
  call void @llvm.stackrestore(i8* %40), !dbg !108
  %41 = bitcast i32* %len to i8*, !dbg !108
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %41) #4, !dbg !108
  %42 = bitcast i32* %i to i8*, !dbg !108
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %42) #4, !dbg !108
  %43 = load i32, i32* %retval, align 4, !dbg !108
  ret i32 %43, !dbg !108
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: inlinehint nounwind readonly uwtable
define available_externally dso_local i32 @atoi(i8* nonnull %__nptr) #3 !dbg !109 {
entry:
  %__nptr.addr = alloca i8*, align 8
  store i8* %__nptr, i8** %__nptr.addr, align 8, !tbaa !41
  call void @llvm.dbg.declare(metadata i8** %__nptr.addr, metadata !116, metadata !DIExpression()), !dbg !117
  %0 = load i8*, i8** %__nptr.addr, align 8, !dbg !118, !tbaa !41
  %call = call i64 @strtol(i8* %0, i8** null, i32 10) #4, !dbg !119
  %conv = trunc i64 %call to i32, !dbg !120
  ret i32 %conv, !dbg !121
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #4

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #4

; Function Attrs: nounwind
declare dso_local i64 @strtol(i8*, i8**, i32) #5

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { inlinehint nounwind readonly uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!9, !10, !11}
!llvm.ident = !{!12}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "integration/dataracebench/DRB025-simdtruedep-var-yes.c", directory: "/home/brad/Code/OpenRace/tests/data")
!2 = !{}
!3 = !{!4, !5, !8}
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!9 = !{i32 7, !"Dwarf Version", i32 4}
!10 = !{i32 2, !"Debug Info Version", i32 3}
!11 = !{i32 1, !"wchar_size", i32 4}
!12 = !{!"clang version 10.0.1 "}
!13 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 52, type: !14, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !16)
!14 = !DISubroutineType(types: !15)
!15 = !{!4, !4, !5}
!16 = !{!17, !18, !19, !20, !21, !23, !27, !28, !32, !32, !34, !35, !34}
!17 = !DILocalVariable(name: "argc", arg: 1, scope: !13, file: !1, line: 52, type: !4)
!18 = !DILocalVariable(name: "argv", arg: 2, scope: !13, file: !1, line: 52, type: !5)
!19 = !DILocalVariable(name: "i", scope: !13, file: !1, line: 54, type: !4)
!20 = !DILocalVariable(name: "len", scope: !13, file: !1, line: 55, type: !4)
!21 = !DILocalVariable(name: "__vla_expr0", scope: !13, type: !22, flags: DIFlagArtificial)
!22 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!23 = !DILocalVariable(name: "a", scope: !13, file: !1, line: 60, type: !24)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: !21)
!27 = !DILocalVariable(name: "__vla_expr1", scope: !13, type: !22, flags: DIFlagArtificial)
!28 = !DILocalVariable(name: "b", scope: !13, file: !1, line: 60, type: !29)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !30)
!30 = !{!31}
!31 = !DISubrange(count: !27)
!32 = !DILocalVariable(name: ".capture_expr.", scope: !33, type: !4, flags: DIFlagArtificial)
!33 = distinct !DILexicalBlock(scope: !13, file: !1, line: 66, column: 1)
!34 = !DILocalVariable(name: "i", scope: !33, type: !4, flags: DIFlagArtificial)
!35 = !DILocalVariable(name: ".omp.iv", scope: !33, type: !4, flags: DIFlagArtificial)
!36 = !{!37, !37, i64 0}
!37 = !{!"int", !38, i64 0}
!38 = !{!"omnipotent char", !39, i64 0}
!39 = !{!"Simple C/C++ TBAA"}
!40 = !DILocation(line: 52, column: 14, scope: !13)
!41 = !{!42, !42, i64 0}
!42 = !{!"any pointer", !38, i64 0}
!43 = !DILocation(line: 52, column: 26, scope: !13)
!44 = !DILocation(line: 54, column: 3, scope: !13)
!45 = !DILocation(line: 54, column: 7, scope: !13)
!46 = !DILocation(line: 55, column: 3, scope: !13)
!47 = !DILocation(line: 55, column: 7, scope: !13)
!48 = !DILocation(line: 57, column: 7, scope: !49)
!49 = distinct !DILexicalBlock(scope: !13, file: !1, line: 57, column: 7)
!50 = !DILocation(line: 57, column: 11, scope: !49)
!51 = !DILocation(line: 57, column: 7, scope: !13)
!52 = !DILocation(line: 58, column: 16, scope: !49)
!53 = !DILocation(line: 58, column: 11, scope: !49)
!54 = !DILocation(line: 58, column: 9, scope: !49)
!55 = !DILocation(line: 58, column: 5, scope: !49)
!56 = !DILocation(line: 60, column: 9, scope: !13)
!57 = !DILocation(line: 60, column: 3, scope: !13)
!58 = !DILocation(line: 0, scope: !13)
!59 = !DILocation(line: 60, column: 7, scope: !13)
!60 = !DILocation(line: 60, column: 17, scope: !13)
!61 = !DILocation(line: 60, column: 15, scope: !13)
!62 = !DILocation(line: 61, column: 9, scope: !63)
!63 = distinct !DILexicalBlock(scope: !13, file: !1, line: 61, column: 3)
!64 = !DILocation(line: 61, column: 8, scope: !63)
!65 = !DILocation(line: 61, column: 12, scope: !66)
!66 = distinct !DILexicalBlock(scope: !63, file: !1, line: 61, column: 3)
!67 = !DILocation(line: 61, column: 14, scope: !66)
!68 = !DILocation(line: 61, column: 13, scope: !66)
!69 = !DILocation(line: 61, column: 3, scope: !63)
!70 = !DILocation(line: 63, column: 10, scope: !71)
!71 = distinct !DILexicalBlock(scope: !66, file: !1, line: 62, column: 3)
!72 = !DILocation(line: 63, column: 7, scope: !71)
!73 = !DILocation(line: 63, column: 5, scope: !71)
!74 = !DILocation(line: 63, column: 9, scope: !71)
!75 = !DILocation(line: 64, column: 10, scope: !71)
!76 = !DILocation(line: 64, column: 11, scope: !71)
!77 = !DILocation(line: 64, column: 7, scope: !71)
!78 = !DILocation(line: 64, column: 5, scope: !71)
!79 = !DILocation(line: 64, column: 9, scope: !71)
!80 = !DILocation(line: 65, column: 3, scope: !71)
!81 = !DILocation(line: 61, column: 19, scope: !66)
!82 = !DILocation(line: 61, column: 3, scope: !66)
!83 = distinct !{!83, !69, !84}
!84 = !DILocation(line: 65, column: 3, scope: !63)
!85 = !DILocation(line: 66, column: 1, scope: !13)
!86 = !DILocation(line: 0, scope: !33)
!87 = !DILocation(line: 67, column: 14, scope: !33)
!88 = !DILocation(line: 67, column: 17, scope: !33)
!89 = !DILocation(line: 67, column: 3, scope: !33)
!90 = !DILocation(line: 67, column: 20, scope: !33)
!91 = !DILocation(line: 67, column: 8, scope: !33)
!92 = distinct !{}
!93 = !DILocation(line: 68, column: 14, scope: !33)
!94 = !DILocation(line: 68, column: 12, scope: !33)
!95 = !DILocation(line: 68, column: 19, scope: !33)
!96 = !DILocation(line: 68, column: 17, scope: !33)
!97 = !DILocation(line: 68, column: 16, scope: !33)
!98 = !DILocation(line: 68, column: 7, scope: !33)
!99 = !DILocation(line: 68, column: 8, scope: !33)
!100 = !DILocation(line: 68, column: 5, scope: !33)
!101 = !DILocation(line: 68, column: 11, scope: !33)
!102 = !DILocation(line: 66, column: 1, scope: !33)
!103 = distinct !{!103, !102, !104, !105, !106}
!104 = !DILocation(line: 66, column: 17, scope: !33)
!105 = !{!"llvm.loop.parallel_accesses", !92}
!106 = !{!"llvm.loop.vectorize.enable", i1 true}
!107 = !DILocation(line: 69, column: 3, scope: !13)
!108 = !DILocation(line: 70, column: 1, scope: !13)
!109 = distinct !DISubprogram(name: "atoi", scope: !110, file: !110, line: 361, type: !111, scopeLine: 362, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !115)
!110 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!111 = !DISubroutineType(types: !112)
!112 = !{!4, !113}
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!115 = !{!116}
!116 = !DILocalVariable(name: "__nptr", arg: 1, scope: !109, file: !110, line: 361, type: !113)
!117 = !DILocation(line: 361, column: 1, scope: !109)
!118 = !DILocation(line: 363, column: 24, scope: !109)
!119 = !DILocation(line: 363, column: 16, scope: !109)
!120 = !DILocation(line: 363, column: 10, scope: !109)
!121 = !DILocation(line: 363, column: 3, scope: !109)
