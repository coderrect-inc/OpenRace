; ModuleID = 'DRB001-antidep1-orig-yes.c'
source_filename = "DRB001-antidep1-orig-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [40 x i8] c";DRB001-antidep1-orig-yes.c;main;56;1;;\00", align 1
@2 = private unnamed_addr constant [41 x i8] c";DRB001-antidep1-orig-yes.c;main;56;25;;\00", align 1
@3 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@.str.1 = private unnamed_addr constant [11 x i8] c"a[500]=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !dbg !7 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %len = alloca i32, align 4
  %a = alloca [1000 x i32], align 16
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %argc.addr, metadata !14, metadata !DIExpression()), !dbg !15
  store i8** %argv, i8*** %argv.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %argv.addr, metadata !16, metadata !DIExpression()), !dbg !17
  call void @llvm.dbg.declare(metadata i32* %i, metadata !18, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.declare(metadata i32* %len, metadata !20, metadata !DIExpression()), !dbg !21
  store i32 1000, i32* %len, align 4, !dbg !21
  call void @llvm.dbg.declare(metadata [1000 x i32]* %a, metadata !22, metadata !DIExpression()), !dbg !26
  store i32 0, i32* %i, align 4, !dbg !27
  br label %for.cond, !dbg !29

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4, !dbg !30
  %3 = load i32, i32* %len, align 4, !dbg !32
  %cmp = icmp slt i32 %2, %3, !dbg !33
  br i1 %cmp, label %for.body, label %for.end, !dbg !34

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4, !dbg !35
  %5 = load i32, i32* %i, align 4, !dbg !37
  %idxprom = sext i32 %5 to i64, !dbg !38
  %arrayidx = getelementptr inbounds [1000 x i32], [1000 x i32]* %a, i64 0, i64 %idxprom, !dbg !38
  store i32 %4, i32* %arrayidx, align 4, !dbg !39
  br label %for.inc, !dbg !40

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !41
  %inc = add nsw i32 %6, 1, !dbg !41
  store i32 %inc, i32* %i, align 4, !dbg !41
  br label %for.cond, !dbg !42, !llvm.loop !43

for.end:                                          ; preds = %for.cond
  %7 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !45
  store i8* getelementptr inbounds ([40 x i8], [40 x i8]* @1, i32 0, i32 0), i8** %7, align 8, !dbg !45
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 2, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, [1000 x i32]*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %len, [1000 x i32]* %a), !dbg !45
  %arrayidx1 = getelementptr inbounds [1000 x i32], [1000 x i32]* %a, i64 0, i64 500, !dbg !46
  %8 = load i32, i32* %arrayidx1, align 16, !dbg !46
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %8), !dbg !47
  ret i32 0, !dbg !48
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %len, [1000 x i32]* dereferenceable(4000) %a) #2 !dbg !49 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %a.addr = alloca [1000 x i32]*, align 8
  %.omp.iv = alloca i32, align 4
  %tmp = alloca i32, align 4
  %.capture_expr. = alloca i32, align 4
  %.capture_expr.1 = alloca i32, align 4
  %i = alloca i32, align 4
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %i5 = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !58, metadata !DIExpression()), !dbg !59
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !60, metadata !DIExpression()), !dbg !59
  store i32* %len, i32** %len.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !61, metadata !DIExpression()), !dbg !62
  store [1000 x i32]* %a, [1000 x i32]** %a.addr, align 8
  call void @llvm.dbg.declare(metadata [1000 x i32]** %a.addr, metadata !63, metadata !DIExpression()), !dbg !64
  %2 = load i32*, i32** %len.addr, align 8, !dbg !65
  %3 = load [1000 x i32]*, [1000 x i32]** %a.addr, align 8, !dbg !65
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !66, metadata !DIExpression()), !dbg !59
  call void @llvm.dbg.declare(metadata i32* %.capture_expr., metadata !67, metadata !DIExpression()), !dbg !59
  %4 = load i32, i32* %2, align 4, !dbg !68
  %sub = sub nsw i32 %4, 1, !dbg !69
  store i32 %sub, i32* %.capture_expr., align 4, !dbg !68
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.1, metadata !67, metadata !DIExpression()), !dbg !59
  %5 = load i32, i32* %.capture_expr., align 4, !dbg !69
  %sub2 = sub nsw i32 %5, 0, !dbg !65
  %sub3 = sub nsw i32 %sub2, 1, !dbg !65
  %add = add nsw i32 %sub3, 1, !dbg !65
  %div = sdiv i32 %add, 1, !dbg !65
  %sub4 = sub nsw i32 %div, 1, !dbg !65
  store i32 %sub4, i32* %.capture_expr.1, align 4, !dbg !65
  call void @llvm.dbg.declare(metadata i32* %i, metadata !70, metadata !DIExpression()), !dbg !59
  store i32 0, i32* %i, align 4, !dbg !71
  %6 = load i32, i32* %.capture_expr., align 4, !dbg !69
  %cmp = icmp slt i32 0, %6, !dbg !65
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end, !dbg !65

omp.precond.then:                                 ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !72, metadata !DIExpression()), !dbg !59
  store i32 0, i32* %.omp.lb, align 4, !dbg !73
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !74, metadata !DIExpression()), !dbg !59
  %7 = load i32, i32* %.capture_expr.1, align 4, !dbg !65
  store i32 %7, i32* %.omp.ub, align 4, !dbg !73
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !75, metadata !DIExpression()), !dbg !59
  store i32 1, i32* %.omp.stride, align 4, !dbg !73
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !76, metadata !DIExpression()), !dbg !59
  store i32 0, i32* %.omp.is_last, align 4, !dbg !73
  call void @llvm.dbg.declare(metadata i32* %i5, metadata !70, metadata !DIExpression()), !dbg !59
  %8 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !65
  store i8* getelementptr inbounds ([40 x i8], [40 x i8]* @1, i32 0, i32 0), i8** %8, align 8, !dbg !65
  %9 = load i32*, i32** %.global_tid..addr, align 8, !dbg !65
  %10 = load i32, i32* %9, align 4, !dbg !65
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %10, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !65
  %11 = load i32, i32* %.omp.ub, align 4, !dbg !73
  %12 = load i32, i32* %.capture_expr.1, align 4, !dbg !65
  %cmp6 = icmp sgt i32 %11, %12, !dbg !73
  br i1 %cmp6, label %cond.true, label %cond.false, !dbg !73

cond.true:                                        ; preds = %omp.precond.then
  %13 = load i32, i32* %.capture_expr.1, align 4, !dbg !65
  br label %cond.end, !dbg !73

cond.false:                                       ; preds = %omp.precond.then
  %14 = load i32, i32* %.omp.ub, align 4, !dbg !73
  br label %cond.end, !dbg !73

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %13, %cond.true ], [ %14, %cond.false ], !dbg !73
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !73
  %15 = load i32, i32* %.omp.lb, align 4, !dbg !73
  store i32 %15, i32* %.omp.iv, align 4, !dbg !73
  br label %omp.inner.for.cond, !dbg !65

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %16 = load i32, i32* %.omp.iv, align 4, !dbg !73
  %17 = load i32, i32* %.omp.ub, align 4, !dbg !73
  %cmp7 = icmp sle i32 %16, %17, !dbg !65
  br i1 %cmp7, label %omp.inner.for.body, label %omp.inner.for.end, !dbg !65

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %18 = load i32, i32* %.omp.iv, align 4, !dbg !73
  %mul = mul nsw i32 %18, 1, !dbg !71
  %add8 = add nsw i32 0, %mul, !dbg !71
  store i32 %add8, i32* %i5, align 4, !dbg !71
  %19 = load i32, i32* %i5, align 4, !dbg !77
  %add9 = add nsw i32 %19, 1, !dbg !79
  %idxprom = sext i32 %add9 to i64, !dbg !80
  %arrayidx = getelementptr inbounds [1000 x i32], [1000 x i32]* %3, i64 0, i64 %idxprom, !dbg !80
  %20 = load i32, i32* %arrayidx, align 4, !dbg !80
  %add10 = add nsw i32 %20, 1, !dbg !81
  %21 = load i32, i32* %i5, align 4, !dbg !82
  %idxprom11 = sext i32 %21 to i64, !dbg !83
  %arrayidx12 = getelementptr inbounds [1000 x i32], [1000 x i32]* %3, i64 0, i64 %idxprom11, !dbg !83
  store i32 %add10, i32* %arrayidx12, align 4, !dbg !84
  br label %omp.body.continue, !dbg !85

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !86

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %22 = load i32, i32* %.omp.iv, align 4, !dbg !73
  %add13 = add nsw i32 %22, 1, !dbg !65
  store i32 %add13, i32* %.omp.iv, align 4, !dbg !65
  br label %omp.inner.for.cond, !dbg !86, !llvm.loop !87

omp.inner.for.end:                                ; preds = %omp.inner.for.cond
  br label %omp.loop.exit, !dbg !86

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %23 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !86
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @2, i32 0, i32 0), i8** %23, align 8, !dbg !86
  %24 = load i32*, i32** %.global_tid..addr, align 8, !dbg !86
  %25 = load i32, i32* %24, align 4, !dbg !86
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %25), !dbg !86
  br label %omp.precond.end, !dbg !86

omp.precond.end:                                  ; preds = %omp.loop.exit, %entry
  ret void, !dbg !89
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %len, [1000 x i32]* dereferenceable(4000) %a) #2 !dbg !90 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %a.addr = alloca [1000 x i32]*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !91, metadata !DIExpression()), !dbg !92
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !93, metadata !DIExpression()), !dbg !92
  store i32* %len, i32** %len.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !94, metadata !DIExpression()), !dbg !92
  store [1000 x i32]* %a, [1000 x i32]** %a.addr, align 8
  call void @llvm.dbg.declare(metadata [1000 x i32]** %a.addr, metadata !95, metadata !DIExpression()), !dbg !92
  %0 = load i32*, i32** %len.addr, align 8, !dbg !96
  %1 = load [1000 x i32]*, [1000 x i32]** %a.addr, align 8, !dbg !96
  %2 = load i32*, i32** %.global_tid..addr, align 8, !dbg !96
  %3 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !96
  %4 = load i32*, i32** %len.addr, align 8, !dbg !96
  %5 = load [1000 x i32]*, [1000 x i32]** %a.addr, align 8, !dbg !96
  call void @.omp_outlined._debug__(i32* %2, i32* %3, i32* %4, [1000 x i32]* %5) #5, !dbg !96
  ret void, !dbg !96
}

declare !callback !97 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

declare dso_local i32 @printf(i8*, ...) #4

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noinline norecurse nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.1 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "DRB001-antidep1-orig-yes.c", directory: "/home/yanze/code/OpenRace/tests/data/integration/dataracebench")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.1 "}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 46, type: !8, scopeLine: 46, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !10, !11}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!14 = !DILocalVariable(name: "argc", arg: 1, scope: !7, file: !1, line: 46, type: !10)
!15 = !DILocation(line: 46, column: 14, scope: !7)
!16 = !DILocalVariable(name: "argv", arg: 2, scope: !7, file: !1, line: 46, type: !11)
!17 = !DILocation(line: 46, column: 26, scope: !7)
!18 = !DILocalVariable(name: "i", scope: !7, file: !1, line: 47, type: !10)
!19 = !DILocation(line: 47, column: 7, scope: !7)
!20 = !DILocalVariable(name: "len", scope: !7, file: !1, line: 48, type: !10)
!21 = !DILocation(line: 48, column: 7, scope: !7)
!22 = !DILocalVariable(name: "a", scope: !7, file: !1, line: 50, type: !23)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 32000, elements: !24)
!24 = !{!25}
!25 = !DISubrange(count: 1000)
!26 = !DILocation(line: 50, column: 7, scope: !7)
!27 = !DILocation(line: 52, column: 10, scope: !28)
!28 = distinct !DILexicalBlock(scope: !7, file: !1, line: 52, column: 3)
!29 = !DILocation(line: 52, column: 8, scope: !28)
!30 = !DILocation(line: 52, column: 15, scope: !31)
!31 = distinct !DILexicalBlock(scope: !28, file: !1, line: 52, column: 3)
!32 = !DILocation(line: 52, column: 19, scope: !31)
!33 = !DILocation(line: 52, column: 17, scope: !31)
!34 = !DILocation(line: 52, column: 3, scope: !28)
!35 = !DILocation(line: 53, column: 12, scope: !36)
!36 = distinct !DILexicalBlock(scope: !31, file: !1, line: 52, column: 29)
!37 = !DILocation(line: 53, column: 7, scope: !36)
!38 = !DILocation(line: 53, column: 5, scope: !36)
!39 = !DILocation(line: 53, column: 10, scope: !36)
!40 = !DILocation(line: 54, column: 3, scope: !36)
!41 = !DILocation(line: 52, column: 25, scope: !31)
!42 = !DILocation(line: 52, column: 3, scope: !31)
!43 = distinct !{!43, !34, !44}
!44 = !DILocation(line: 54, column: 3, scope: !28)
!45 = !DILocation(line: 56, column: 1, scope: !7)
!46 = !DILocation(line: 61, column: 25, scope: !7)
!47 = !DILocation(line: 61, column: 3, scope: !7)
!48 = !DILocation(line: 62, column: 3, scope: !7)
!49 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 57, type: !50, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!50 = !DISubroutineType(types: !51)
!51 = !{null, !52, !52, !56, !57}
!52 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !53)
!53 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !54)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!56 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !10, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !23, size: 64)
!58 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !49, type: !52, flags: DIFlagArtificial)
!59 = !DILocation(line: 0, scope: !49)
!60 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !49, type: !52, flags: DIFlagArtificial)
!61 = !DILocalVariable(name: "len", arg: 3, scope: !49, file: !1, line: 48, type: !56)
!62 = !DILocation(line: 48, column: 7, scope: !49)
!63 = !DILocalVariable(name: "a", arg: 4, scope: !49, file: !1, line: 50, type: !57)
!64 = !DILocation(line: 50, column: 7, scope: !49)
!65 = !DILocation(line: 57, column: 3, scope: !49)
!66 = !DILocalVariable(name: ".omp.iv", scope: !49, type: !10, flags: DIFlagArtificial)
!67 = !DILocalVariable(name: ".capture_expr.", scope: !49, type: !10, flags: DIFlagArtificial)
!68 = !DILocation(line: 57, column: 19, scope: !49)
!69 = !DILocation(line: 57, column: 23, scope: !49)
!70 = !DILocalVariable(name: "i", scope: !49, type: !10, flags: DIFlagArtificial)
!71 = !DILocation(line: 57, column: 28, scope: !49)
!72 = !DILocalVariable(name: ".omp.lb", scope: !49, type: !10, flags: DIFlagArtificial)
!73 = !DILocation(line: 57, column: 8, scope: !49)
!74 = !DILocalVariable(name: ".omp.ub", scope: !49, type: !10, flags: DIFlagArtificial)
!75 = !DILocalVariable(name: ".omp.stride", scope: !49, type: !10, flags: DIFlagArtificial)
!76 = !DILocalVariable(name: ".omp.is_last", scope: !49, type: !10, flags: DIFlagArtificial)
!77 = !DILocation(line: 58, column: 14, scope: !78)
!78 = distinct !DILexicalBlock(scope: !49, file: !1, line: 57, column: 33)
!79 = !DILocation(line: 58, column: 16, scope: !78)
!80 = !DILocation(line: 58, column: 12, scope: !78)
!81 = !DILocation(line: 58, column: 21, scope: !78)
!82 = !DILocation(line: 58, column: 7, scope: !78)
!83 = !DILocation(line: 58, column: 5, scope: !78)
!84 = !DILocation(line: 58, column: 10, scope: !78)
!85 = !DILocation(line: 59, column: 3, scope: !78)
!86 = !DILocation(line: 56, column: 1, scope: !49)
!87 = distinct !{!87, !86, !88}
!88 = !DILocation(line: 56, column: 25, scope: !49)
!89 = !DILocation(line: 59, column: 3, scope: !49)
!90 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 57, type: !50, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!91 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !90, type: !52, flags: DIFlagArtificial)
!92 = !DILocation(line: 0, scope: !90)
!93 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !90, type: !52, flags: DIFlagArtificial)
!94 = !DILocalVariable(name: "len", arg: 3, scope: !90, type: !56, flags: DIFlagArtificial)
!95 = !DILocalVariable(name: "a", arg: 4, scope: !90, type: !57, flags: DIFlagArtificial)
!96 = !DILocation(line: 57, column: 3, scope: !90)
!97 = !{!98}
!98 = !{i64 2, i64 -1, i64 -1, i1 true}
