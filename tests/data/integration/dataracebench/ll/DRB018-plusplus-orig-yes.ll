; ModuleID = 'DRB018-plusplus-orig-yes.c'
source_filename = "DRB018-plusplus-orig-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@input = common dso_local global [1000 x i32] zeroinitializer, align 16, !dbg !0
@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [40 x i8] c";DRB018-plusplus-orig-yes.c;main;69;1;;\00", align 1
@output = common dso_local global [1000 x i32] zeroinitializer, align 16, !dbg !6
@2 = private unnamed_addr constant [41 x i8] c";DRB018-plusplus-orig-yes.c;main;69;25;;\00", align 1
@3 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"output[500]=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !16 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %inLen = alloca i32, align 4
  %outLen = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata i32* %i, metadata !19, metadata !DIExpression()), !dbg !20
  call void @llvm.dbg.declare(metadata i32* %inLen, metadata !21, metadata !DIExpression()), !dbg !22
  store i32 1000, i32* %inLen, align 4, !dbg !22
  call void @llvm.dbg.declare(metadata i32* %outLen, metadata !23, metadata !DIExpression()), !dbg !24
  store i32 0, i32* %outLen, align 4, !dbg !24
  store i32 0, i32* %i, align 4, !dbg !25
  br label %for.cond, !dbg !27

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4, !dbg !28
  %3 = load i32, i32* %inLen, align 4, !dbg !30
  %cmp = icmp slt i32 %2, %3, !dbg !31
  br i1 %cmp, label %for.body, label %for.end, !dbg !32

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4, !dbg !33
  %5 = load i32, i32* %i, align 4, !dbg !34
  %idxprom = sext i32 %5 to i64, !dbg !35
  %arrayidx = getelementptr inbounds [1000 x i32], [1000 x i32]* @input, i64 0, i64 %idxprom, !dbg !35
  store i32 %4, i32* %arrayidx, align 4, !dbg !36
  br label %for.inc, !dbg !35

for.inc:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !37
  %inc = add nsw i32 %6, 1, !dbg !37
  store i32 %inc, i32* %i, align 4, !dbg !37
  br label %for.cond, !dbg !38, !llvm.loop !39

for.end:                                          ; preds = %for.cond
  %7 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !41
  store i8* getelementptr inbounds ([40 x i8], [40 x i8]* @1, i32 0, i32 0), i8** %7, align 8, !dbg !41
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 2, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %inLen, i32* %outLen), !dbg !41
  %8 = load i32, i32* getelementptr inbounds ([1000 x i32], [1000 x i32]* @output, i64 0, i64 500), align 16, !dbg !42
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %8), !dbg !43
  ret i32 0, !dbg !44
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %inLen, i32* dereferenceable(4) %outLen) #2 !dbg !45 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %inLen.addr = alloca i32*, align 8
  %outLen.addr = alloca i32*, align 8
  %.omp.iv = alloca i32, align 4
  %tmp = alloca i32, align 4
  %.capture_expr. = alloca i32, align 4
  %.capture_expr.1 = alloca i32, align 4
  %i = alloca i32, align 4
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %i4 = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !53, metadata !DIExpression()), !dbg !54
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !55, metadata !DIExpression()), !dbg !54
  store i32* %inLen, i32** %inLen.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %inLen.addr, metadata !56, metadata !DIExpression()), !dbg !57
  store i32* %outLen, i32** %outLen.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %outLen.addr, metadata !58, metadata !DIExpression()), !dbg !59
  %2 = load i32*, i32** %inLen.addr, align 8, !dbg !60
  %3 = load i32*, i32** %outLen.addr, align 8, !dbg !60
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !61, metadata !DIExpression()), !dbg !54
  call void @llvm.dbg.declare(metadata i32* %.capture_expr., metadata !62, metadata !DIExpression()), !dbg !54
  %4 = load i32, i32* %2, align 4, !dbg !63
  store i32 %4, i32* %.capture_expr., align 4, !dbg !63
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.1, metadata !62, metadata !DIExpression()), !dbg !54
  %5 = load i32, i32* %.capture_expr., align 4, !dbg !63
  %sub = sub nsw i32 %5, 0, !dbg !60
  %sub2 = sub nsw i32 %sub, 1, !dbg !60
  %add = add nsw i32 %sub2, 1, !dbg !60
  %div = sdiv i32 %add, 1, !dbg !60
  %sub3 = sub nsw i32 %div, 1, !dbg !60
  store i32 %sub3, i32* %.capture_expr.1, align 4, !dbg !60
  call void @llvm.dbg.declare(metadata i32* %i, metadata !64, metadata !DIExpression()), !dbg !54
  store i32 0, i32* %i, align 4, !dbg !65
  %6 = load i32, i32* %.capture_expr., align 4, !dbg !63
  %cmp = icmp slt i32 0, %6, !dbg !60
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end, !dbg !60

omp.precond.then:                                 ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !66, metadata !DIExpression()), !dbg !54
  store i32 0, i32* %.omp.lb, align 4, !dbg !67
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !68, metadata !DIExpression()), !dbg !54
  %7 = load i32, i32* %.capture_expr.1, align 4, !dbg !60
  store i32 %7, i32* %.omp.ub, align 4, !dbg !67
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !69, metadata !DIExpression()), !dbg !54
  store i32 1, i32* %.omp.stride, align 4, !dbg !67
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !70, metadata !DIExpression()), !dbg !54
  store i32 0, i32* %.omp.is_last, align 4, !dbg !67
  call void @llvm.dbg.declare(metadata i32* %i4, metadata !64, metadata !DIExpression()), !dbg !54
  %8 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !60
  store i8* getelementptr inbounds ([40 x i8], [40 x i8]* @1, i32 0, i32 0), i8** %8, align 8, !dbg !60
  %9 = load i32*, i32** %.global_tid..addr, align 8, !dbg !60
  %10 = load i32, i32* %9, align 4, !dbg !60
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %10, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !60
  %11 = load i32, i32* %.omp.ub, align 4, !dbg !67
  %12 = load i32, i32* %.capture_expr.1, align 4, !dbg !60
  %cmp5 = icmp sgt i32 %11, %12, !dbg !67
  br i1 %cmp5, label %cond.true, label %cond.false, !dbg !67

cond.true:                                        ; preds = %omp.precond.then
  %13 = load i32, i32* %.capture_expr.1, align 4, !dbg !60
  br label %cond.end, !dbg !67

cond.false:                                       ; preds = %omp.precond.then
  %14 = load i32, i32* %.omp.ub, align 4, !dbg !67
  br label %cond.end, !dbg !67

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %13, %cond.true ], [ %14, %cond.false ], !dbg !67
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !67
  %15 = load i32, i32* %.omp.lb, align 4, !dbg !67
  store i32 %15, i32* %.omp.iv, align 4, !dbg !67
  br label %omp.inner.for.cond, !dbg !60

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %16 = load i32, i32* %.omp.iv, align 4, !dbg !67
  %17 = load i32, i32* %.omp.ub, align 4, !dbg !67
  %cmp6 = icmp sle i32 %16, %17, !dbg !60
  br i1 %cmp6, label %omp.inner.for.body, label %omp.inner.for.end, !dbg !60

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %18 = load i32, i32* %.omp.iv, align 4, !dbg !67
  %mul = mul nsw i32 %18, 1, !dbg !65
  %add7 = add nsw i32 0, %mul, !dbg !65
  store i32 %add7, i32* %i4, align 4, !dbg !65
  %19 = load i32, i32* %i4, align 4, !dbg !71
  %idxprom = sext i32 %19 to i64, !dbg !73
  %arrayidx = getelementptr inbounds [1000 x i32], [1000 x i32]* @input, i64 0, i64 %idxprom, !dbg !73
  %20 = load i32, i32* %arrayidx, align 4, !dbg !73
  %21 = load i32, i32* %3, align 4, !dbg !74
  %inc = add nsw i32 %21, 1, !dbg !74
  store i32 %inc, i32* %3, align 4, !dbg !74
  %idxprom8 = sext i32 %21 to i64, !dbg !75
  %arrayidx9 = getelementptr inbounds [1000 x i32], [1000 x i32]* @output, i64 0, i64 %idxprom8, !dbg !75
  store i32 %20, i32* %arrayidx9, align 4, !dbg !76
  br label %omp.body.continue, !dbg !77

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !78

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %22 = load i32, i32* %.omp.iv, align 4, !dbg !67
  %add10 = add nsw i32 %22, 1, !dbg !60
  store i32 %add10, i32* %.omp.iv, align 4, !dbg !60
  br label %omp.inner.for.cond, !dbg !78, !llvm.loop !79

omp.inner.for.end:                                ; preds = %omp.inner.for.cond
  br label %omp.loop.exit, !dbg !78

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %23 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !78
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @2, i32 0, i32 0), i8** %23, align 8, !dbg !78
  %24 = load i32*, i32** %.global_tid..addr, align 8, !dbg !78
  %25 = load i32, i32* %24, align 4, !dbg !78
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %25), !dbg !78
  br label %omp.precond.end, !dbg !78

omp.precond.end:                                  ; preds = %omp.loop.exit, %entry
  ret void, !dbg !81
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %inLen, i32* dereferenceable(4) %outLen) #2 !dbg !82 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %inLen.addr = alloca i32*, align 8
  %outLen.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !83, metadata !DIExpression()), !dbg !84
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !85, metadata !DIExpression()), !dbg !84
  store i32* %inLen, i32** %inLen.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %inLen.addr, metadata !86, metadata !DIExpression()), !dbg !84
  store i32* %outLen, i32** %outLen.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %outLen.addr, metadata !87, metadata !DIExpression()), !dbg !84
  %0 = load i32*, i32** %inLen.addr, align 8, !dbg !88
  %1 = load i32*, i32** %outLen.addr, align 8, !dbg !88
  %2 = load i32*, i32** %.global_tid..addr, align 8, !dbg !88
  %3 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !88
  %4 = load i32*, i32** %inLen.addr, align 8, !dbg !88
  %5 = load i32*, i32** %outLen.addr, align 8, !dbg !88
  call void @.omp_outlined._debug__(i32* %2, i32* %3, i32* %4, i32* %5) #5, !dbg !88
  ret void, !dbg !88
}

declare !callback !89 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

declare dso_local i32 @printf(i8*, ...) #4

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noinline norecurse nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!12, !13, !14}
!llvm.ident = !{!15}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "input", scope: !2, file: !3, line: 57, type: !8, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.1 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "DRB018-plusplus-orig-yes.c", directory: "/home/yanze/code/OpenRace/tests/data/integration/dataracebench")
!4 = !{}
!5 = !{!0, !6}
!6 = !DIGlobalVariableExpression(var: !7, expr: !DIExpression())
!7 = distinct !DIGlobalVariable(name: "output", scope: !2, file: !3, line: 58, type: !8, isLocal: false, isDefinition: true)
!8 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 32000, elements: !10)
!9 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!10 = !{!11}
!11 = !DISubrange(count: 1000)
!12 = !{i32 7, !"Dwarf Version", i32 4}
!13 = !{i32 2, !"Debug Info Version", i32 3}
!14 = !{i32 1, !"wchar_size", i32 4}
!15 = !{!"clang version 10.0.1 "}
!16 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 60, type: !17, scopeLine: 61, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!17 = !DISubroutineType(types: !18)
!18 = !{!9}
!19 = !DILocalVariable(name: "i", scope: !16, file: !3, line: 62, type: !9)
!20 = !DILocation(line: 62, column: 7, scope: !16)
!21 = !DILocalVariable(name: "inLen", scope: !16, file: !3, line: 63, type: !9)
!22 = !DILocation(line: 63, column: 7, scope: !16)
!23 = !DILocalVariable(name: "outLen", scope: !16, file: !3, line: 64, type: !9)
!24 = !DILocation(line: 64, column: 7, scope: !16)
!25 = !DILocation(line: 66, column: 9, scope: !26)
!26 = distinct !DILexicalBlock(scope: !16, file: !3, line: 66, column: 3)
!27 = !DILocation(line: 66, column: 8, scope: !26)
!28 = !DILocation(line: 66, column: 13, scope: !29)
!29 = distinct !DILexicalBlock(scope: !26, file: !3, line: 66, column: 3)
!30 = !DILocation(line: 66, column: 15, scope: !29)
!31 = !DILocation(line: 66, column: 14, scope: !29)
!32 = !DILocation(line: 66, column: 3, scope: !26)
!33 = !DILocation(line: 67, column: 15, scope: !29)
!34 = !DILocation(line: 67, column: 11, scope: !29)
!35 = !DILocation(line: 67, column: 5, scope: !29)
!36 = !DILocation(line: 67, column: 13, scope: !29)
!37 = !DILocation(line: 66, column: 22, scope: !29)
!38 = !DILocation(line: 66, column: 3, scope: !29)
!39 = distinct !{!39, !32, !40}
!40 = !DILocation(line: 67, column: 15, scope: !26)
!41 = !DILocation(line: 69, column: 1, scope: !16)
!42 = !DILocation(line: 75, column: 29, scope: !16)
!43 = !DILocation(line: 75, column: 3, scope: !16)
!44 = !DILocation(line: 77, column: 3, scope: !16)
!45 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !3, file: !3, line: 70, type: !46, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!46 = !DISubroutineType(types: !47)
!47 = !{null, !48, !48, !52, !52}
!48 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !49)
!49 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !50)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!52 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !9, size: 64)
!53 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !45, type: !48, flags: DIFlagArtificial)
!54 = !DILocation(line: 0, scope: !45)
!55 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !45, type: !48, flags: DIFlagArtificial)
!56 = !DILocalVariable(name: "inLen", arg: 3, scope: !45, file: !3, line: 63, type: !52)
!57 = !DILocation(line: 63, column: 7, scope: !45)
!58 = !DILocalVariable(name: "outLen", arg: 4, scope: !45, file: !3, line: 64, type: !52)
!59 = !DILocation(line: 64, column: 7, scope: !45)
!60 = !DILocation(line: 70, column: 3, scope: !45)
!61 = !DILocalVariable(name: ".omp.iv", scope: !45, type: !9, flags: DIFlagArtificial)
!62 = !DILocalVariable(name: ".capture_expr.", scope: !45, type: !9, flags: DIFlagArtificial)
!63 = !DILocation(line: 70, column: 15, scope: !45)
!64 = !DILocalVariable(name: "i", scope: !45, type: !9, flags: DIFlagArtificial)
!65 = !DILocation(line: 70, column: 22, scope: !45)
!66 = !DILocalVariable(name: ".omp.lb", scope: !45, type: !9, flags: DIFlagArtificial)
!67 = !DILocation(line: 70, column: 8, scope: !45)
!68 = !DILocalVariable(name: ".omp.ub", scope: !45, type: !9, flags: DIFlagArtificial)
!69 = !DILocalVariable(name: ".omp.stride", scope: !45, type: !9, flags: DIFlagArtificial)
!70 = !DILocalVariable(name: ".omp.is_last", scope: !45, type: !9, flags: DIFlagArtificial)
!71 = !DILocation(line: 72, column: 30, scope: !72)
!72 = distinct !DILexicalBlock(scope: !45, file: !3, line: 71, column: 3)
!73 = !DILocation(line: 72, column: 24, scope: !72)
!74 = !DILocation(line: 72, column: 18, scope: !72)
!75 = !DILocation(line: 72, column: 5, scope: !72)
!76 = !DILocation(line: 72, column: 22, scope: !72)
!77 = !DILocation(line: 73, column: 3, scope: !72)
!78 = !DILocation(line: 69, column: 1, scope: !45)
!79 = distinct !{!79, !78, !80}
!80 = !DILocation(line: 69, column: 25, scope: !45)
!81 = !DILocation(line: 73, column: 3, scope: !45)
!82 = distinct !DISubprogram(name: ".omp_outlined.", scope: !3, file: !3, line: 70, type: !46, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!83 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !82, type: !48, flags: DIFlagArtificial)
!84 = !DILocation(line: 0, scope: !82)
!85 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !82, type: !48, flags: DIFlagArtificial)
!86 = !DILocalVariable(name: "inLen", arg: 3, scope: !82, type: !52, flags: DIFlagArtificial)
!87 = !DILocalVariable(name: "outLen", arg: 4, scope: !82, type: !52, flags: DIFlagArtificial)
!88 = !DILocation(line: 70, column: 3, scope: !82)
!89 = !{!90}
!90 = !{i64 2, i64 -1, i64 -1, i1 true}
