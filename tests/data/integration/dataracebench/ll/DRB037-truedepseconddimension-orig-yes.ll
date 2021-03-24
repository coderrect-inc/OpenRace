; ModuleID = 'DRB037-truedepseconddimension-orig-yes.c'
source_filename = "DRB037-truedepseconddimension-orig-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [54 x i8] c";DRB037-truedepseconddimension-orig-yes.c;main;61;1;;\00", align 1
@b = common dso_local global [1000 x [1000 x double]] zeroinitializer, align 16, !dbg !0
@2 = private unnamed_addr constant [55 x i8] c";DRB037-truedepseconddimension-orig-yes.c;main;61;25;;\00", align 1
@3 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"b[500][500]=%f\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !dbg !14 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %n = alloca i32, align 4
  %m = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %argc.addr, metadata !21, metadata !DIExpression()), !dbg !22
  store i8** %argv, i8*** %argv.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %argv.addr, metadata !23, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata i32* %i, metadata !25, metadata !DIExpression()), !dbg !26
  call void @llvm.dbg.declare(metadata i32* %j, metadata !27, metadata !DIExpression()), !dbg !28
  call void @llvm.dbg.declare(metadata i32* %n, metadata !29, metadata !DIExpression()), !dbg !30
  store i32 1000, i32* %n, align 4, !dbg !30
  call void @llvm.dbg.declare(metadata i32* %m, metadata !31, metadata !DIExpression()), !dbg !32
  store i32 1000, i32* %m, align 4, !dbg !32
  store i32 0, i32* %i, align 4, !dbg !33
  br label %for.cond, !dbg !35

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4, !dbg !36
  %3 = load i32, i32* %n, align 4, !dbg !38
  %cmp = icmp slt i32 %2, %3, !dbg !39
  br i1 %cmp, label %for.body, label %for.end, !dbg !40

for.body:                                         ; preds = %for.cond
  %4 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !41
  store i8* getelementptr inbounds ([54 x i8], [54 x i8]* @1, i32 0, i32 0), i8** %4, align 8, !dbg !41
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 2, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %m, i32* %i), !dbg !41
  br label %for.inc, !dbg !42

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4, !dbg !44
  %inc = add nsw i32 %5, 1, !dbg !44
  store i32 %inc, i32* %i, align 4, !dbg !44
  br label %for.cond, !dbg !45, !llvm.loop !46

for.end:                                          ; preds = %for.cond
  %6 = load double, double* getelementptr inbounds ([1000 x [1000 x double]], [1000 x [1000 x double]]* @b, i64 0, i64 500, i64 500), align 16, !dbg !48
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), double %6), !dbg !49
  ret i32 0, !dbg !50
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %m, i32* dereferenceable(4) %i) #2 !dbg !51 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %m.addr = alloca i32*, align 8
  %i.addr = alloca i32*, align 8
  %.omp.iv = alloca i32, align 4
  %tmp = alloca i32, align 4
  %.capture_expr. = alloca i32, align 4
  %.capture_expr.1 = alloca i32, align 4
  %j = alloca i32, align 4
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %j4 = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !59, metadata !DIExpression()), !dbg !60
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !61, metadata !DIExpression()), !dbg !60
  store i32* %m, i32** %m.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %m.addr, metadata !62, metadata !DIExpression()), !dbg !63
  store i32* %i, i32** %i.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %i.addr, metadata !64, metadata !DIExpression()), !dbg !65
  %2 = load i32*, i32** %m.addr, align 8, !dbg !66
  %3 = load i32*, i32** %i.addr, align 8, !dbg !66
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !67, metadata !DIExpression()), !dbg !60
  call void @llvm.dbg.declare(metadata i32* %.capture_expr., metadata !68, metadata !DIExpression()), !dbg !60
  %4 = load i32, i32* %2, align 4, !dbg !69
  store i32 %4, i32* %.capture_expr., align 4, !dbg !69
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.1, metadata !68, metadata !DIExpression()), !dbg !60
  %5 = load i32, i32* %.capture_expr., align 4, !dbg !69
  %sub = sub nsw i32 %5, 1, !dbg !66
  %sub2 = sub nsw i32 %sub, 1, !dbg !66
  %add = add nsw i32 %sub2, 1, !dbg !66
  %div = sdiv i32 %add, 1, !dbg !66
  %sub3 = sub nsw i32 %div, 1, !dbg !66
  store i32 %sub3, i32* %.capture_expr.1, align 4, !dbg !66
  call void @llvm.dbg.declare(metadata i32* %j, metadata !70, metadata !DIExpression()), !dbg !60
  store i32 1, i32* %j, align 4, !dbg !71
  %6 = load i32, i32* %.capture_expr., align 4, !dbg !69
  %cmp = icmp slt i32 1, %6, !dbg !66
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end, !dbg !66

omp.precond.then:                                 ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !72, metadata !DIExpression()), !dbg !60
  store i32 0, i32* %.omp.lb, align 4, !dbg !73
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !74, metadata !DIExpression()), !dbg !60
  %7 = load i32, i32* %.capture_expr.1, align 4, !dbg !66
  store i32 %7, i32* %.omp.ub, align 4, !dbg !73
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !75, metadata !DIExpression()), !dbg !60
  store i32 1, i32* %.omp.stride, align 4, !dbg !73
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !76, metadata !DIExpression()), !dbg !60
  store i32 0, i32* %.omp.is_last, align 4, !dbg !73
  call void @llvm.dbg.declare(metadata i32* %j4, metadata !70, metadata !DIExpression()), !dbg !60
  %8 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !66
  store i8* getelementptr inbounds ([54 x i8], [54 x i8]* @1, i32 0, i32 0), i8** %8, align 8, !dbg !66
  %9 = load i32*, i32** %.global_tid..addr, align 8, !dbg !66
  %10 = load i32, i32* %9, align 4, !dbg !66
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %10, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !66
  %11 = load i32, i32* %.omp.ub, align 4, !dbg !73
  %12 = load i32, i32* %.capture_expr.1, align 4, !dbg !66
  %cmp5 = icmp sgt i32 %11, %12, !dbg !73
  br i1 %cmp5, label %cond.true, label %cond.false, !dbg !73

cond.true:                                        ; preds = %omp.precond.then
  %13 = load i32, i32* %.capture_expr.1, align 4, !dbg !66
  br label %cond.end, !dbg !73

cond.false:                                       ; preds = %omp.precond.then
  %14 = load i32, i32* %.omp.ub, align 4, !dbg !73
  br label %cond.end, !dbg !73

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %13, %cond.true ], [ %14, %cond.false ], !dbg !73
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !73
  %15 = load i32, i32* %.omp.lb, align 4, !dbg !73
  store i32 %15, i32* %.omp.iv, align 4, !dbg !73
  br label %omp.inner.for.cond, !dbg !66

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %16 = load i32, i32* %.omp.iv, align 4, !dbg !73
  %17 = load i32, i32* %.omp.ub, align 4, !dbg !73
  %cmp6 = icmp sle i32 %16, %17, !dbg !66
  br i1 %cmp6, label %omp.inner.for.body, label %omp.inner.for.end, !dbg !66

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %18 = load i32, i32* %.omp.iv, align 4, !dbg !73
  %mul = mul nsw i32 %18, 1, !dbg !71
  %add7 = add nsw i32 1, %mul, !dbg !71
  store i32 %add7, i32* %j4, align 4, !dbg !71
  %19 = load i32, i32* %3, align 4, !dbg !77
  %idxprom = sext i32 %19 to i64, !dbg !78
  %arrayidx = getelementptr inbounds [1000 x [1000 x double]], [1000 x [1000 x double]]* @b, i64 0, i64 %idxprom, !dbg !78
  %20 = load i32, i32* %j4, align 4, !dbg !79
  %sub8 = sub nsw i32 %20, 1, !dbg !80
  %idxprom9 = sext i32 %sub8 to i64, !dbg !78
  %arrayidx10 = getelementptr inbounds [1000 x double], [1000 x double]* %arrayidx, i64 0, i64 %idxprom9, !dbg !78
  %21 = load double, double* %arrayidx10, align 8, !dbg !78
  %22 = load i32, i32* %3, align 4, !dbg !81
  %idxprom11 = sext i32 %22 to i64, !dbg !82
  %arrayidx12 = getelementptr inbounds [1000 x [1000 x double]], [1000 x [1000 x double]]* @b, i64 0, i64 %idxprom11, !dbg !82
  %23 = load i32, i32* %j4, align 4, !dbg !83
  %idxprom13 = sext i32 %23 to i64, !dbg !82
  %arrayidx14 = getelementptr inbounds [1000 x double], [1000 x double]* %arrayidx12, i64 0, i64 %idxprom13, !dbg !82
  store double %21, double* %arrayidx14, align 8, !dbg !84
  br label %omp.body.continue, !dbg !82

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !85

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %24 = load i32, i32* %.omp.iv, align 4, !dbg !73
  %add15 = add nsw i32 %24, 1, !dbg !66
  store i32 %add15, i32* %.omp.iv, align 4, !dbg !66
  br label %omp.inner.for.cond, !dbg !85, !llvm.loop !86

omp.inner.for.end:                                ; preds = %omp.inner.for.cond
  br label %omp.loop.exit, !dbg !85

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %25 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !85
  store i8* getelementptr inbounds ([55 x i8], [55 x i8]* @2, i32 0, i32 0), i8** %25, align 8, !dbg !85
  %26 = load i32*, i32** %.global_tid..addr, align 8, !dbg !85
  %27 = load i32, i32* %26, align 4, !dbg !85
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %27), !dbg !85
  br label %omp.precond.end, !dbg !85

omp.precond.end:                                  ; preds = %omp.loop.exit, %entry
  ret void, !dbg !88
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %m, i32* dereferenceable(4) %i) #2 !dbg !89 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %m.addr = alloca i32*, align 8
  %i.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !90, metadata !DIExpression()), !dbg !91
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !92, metadata !DIExpression()), !dbg !91
  store i32* %m, i32** %m.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %m.addr, metadata !93, metadata !DIExpression()), !dbg !91
  store i32* %i, i32** %i.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %i.addr, metadata !94, metadata !DIExpression()), !dbg !91
  %0 = load i32*, i32** %m.addr, align 8, !dbg !95
  %1 = load i32*, i32** %i.addr, align 8, !dbg !95
  %2 = load i32*, i32** %.global_tid..addr, align 8, !dbg !95
  %3 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !95
  %4 = load i32*, i32** %m.addr, align 8, !dbg !95
  %5 = load i32*, i32** %i.addr, align 8, !dbg !95
  call void @.omp_outlined._debug__(i32* %2, i32* %3, i32* %4, i32* %5) #5, !dbg !95
  ret void, !dbg !95
}

declare !callback !96 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

declare dso_local i32 @printf(i8*, ...) #4

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noinline norecurse nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!10, !11, !12}
!llvm.ident = !{!13}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "b", scope: !2, file: !3, line: 54, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.1 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "DRB037-truedepseconddimension-orig-yes.c", directory: "/home/yanze/code/OpenRace/tests/data/integration/dataracebench")
!4 = !{}
!5 = !{!0}
!6 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 64000000, elements: !8)
!7 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!8 = !{!9, !9}
!9 = !DISubrange(count: 1000)
!10 = !{i32 7, !"Dwarf Version", i32 4}
!11 = !{i32 2, !"Debug Info Version", i32 3}
!12 = !{i32 1, !"wchar_size", i32 4}
!13 = !{!"clang version 10.0.1 "}
!14 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 56, type: !15, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!15 = !DISubroutineType(types: !16)
!16 = !{!17, !17, !18}
!17 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !20, size: 64)
!20 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!21 = !DILocalVariable(name: "argc", arg: 1, scope: !14, file: !3, line: 56, type: !17)
!22 = !DILocation(line: 56, column: 14, scope: !14)
!23 = !DILocalVariable(name: "argv", arg: 2, scope: !14, file: !3, line: 56, type: !18)
!24 = !DILocation(line: 56, column: 26, scope: !14)
!25 = !DILocalVariable(name: "i", scope: !14, file: !3, line: 58, type: !17)
!26 = !DILocation(line: 58, column: 7, scope: !14)
!27 = !DILocalVariable(name: "j", scope: !14, file: !3, line: 58, type: !17)
!28 = !DILocation(line: 58, column: 9, scope: !14)
!29 = !DILocalVariable(name: "n", scope: !14, file: !3, line: 59, type: !17)
!30 = !DILocation(line: 59, column: 7, scope: !14)
!31 = !DILocalVariable(name: "m", scope: !14, file: !3, line: 59, type: !17)
!32 = !DILocation(line: 59, column: 15, scope: !14)
!33 = !DILocation(line: 60, column: 9, scope: !34)
!34 = distinct !DILexicalBlock(scope: !14, file: !3, line: 60, column: 3)
!35 = !DILocation(line: 60, column: 8, scope: !34)
!36 = !DILocation(line: 60, column: 12, scope: !37)
!37 = distinct !DILexicalBlock(scope: !34, file: !3, line: 60, column: 3)
!38 = !DILocation(line: 60, column: 14, scope: !37)
!39 = !DILocation(line: 60, column: 13, scope: !37)
!40 = !DILocation(line: 60, column: 3, scope: !34)
!41 = !DILocation(line: 61, column: 1, scope: !37)
!42 = !DILocation(line: 61, column: 25, scope: !43)
!43 = distinct !DILexicalBlock(scope: !37, file: !3, line: 61, column: 1)
!44 = !DILocation(line: 60, column: 17, scope: !37)
!45 = !DILocation(line: 60, column: 3, scope: !37)
!46 = distinct !{!46, !40, !47}
!47 = !DILocation(line: 61, column: 25, scope: !34)
!48 = !DILocation(line: 65, column: 30, scope: !14)
!49 = !DILocation(line: 65, column: 3, scope: !14)
!50 = !DILocation(line: 66, column: 3, scope: !14)
!51 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !3, file: !3, line: 62, type: !52, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!52 = !DISubroutineType(types: !53)
!53 = !{null, !54, !54, !58, !58}
!54 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !55)
!55 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !56)
!56 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !57, size: 64)
!57 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!58 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !17, size: 64)
!59 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !51, type: !54, flags: DIFlagArtificial)
!60 = !DILocation(line: 0, scope: !51)
!61 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !51, type: !54, flags: DIFlagArtificial)
!62 = !DILocalVariable(name: "m", arg: 3, scope: !51, file: !3, line: 59, type: !58)
!63 = !DILocation(line: 59, column: 15, scope: !51)
!64 = !DILocalVariable(name: "i", arg: 4, scope: !51, file: !3, line: 58, type: !58)
!65 = !DILocation(line: 58, column: 7, scope: !51)
!66 = !DILocation(line: 62, column: 5, scope: !51)
!67 = !DILocalVariable(name: ".omp.iv", scope: !51, type: !17, flags: DIFlagArtificial)
!68 = !DILocalVariable(name: ".capture_expr.", scope: !51, type: !17, flags: DIFlagArtificial)
!69 = !DILocation(line: 62, column: 16, scope: !51)
!70 = !DILocalVariable(name: "j", scope: !51, type: !17, flags: DIFlagArtificial)
!71 = !DILocation(line: 62, column: 18, scope: !51)
!72 = !DILocalVariable(name: ".omp.lb", scope: !51, type: !17, flags: DIFlagArtificial)
!73 = !DILocation(line: 62, column: 10, scope: !51)
!74 = !DILocalVariable(name: ".omp.ub", scope: !51, type: !17, flags: DIFlagArtificial)
!75 = !DILocalVariable(name: ".omp.stride", scope: !51, type: !17, flags: DIFlagArtificial)
!76 = !DILocalVariable(name: ".omp.is_last", scope: !51, type: !17, flags: DIFlagArtificial)
!77 = !DILocation(line: 63, column: 17, scope: !51)
!78 = !DILocation(line: 63, column: 15, scope: !51)
!79 = !DILocation(line: 63, column: 20, scope: !51)
!80 = !DILocation(line: 63, column: 21, scope: !51)
!81 = !DILocation(line: 63, column: 9, scope: !51)
!82 = !DILocation(line: 63, column: 7, scope: !51)
!83 = !DILocation(line: 63, column: 12, scope: !51)
!84 = !DILocation(line: 63, column: 14, scope: !51)
!85 = !DILocation(line: 61, column: 1, scope: !51)
!86 = distinct !{!86, !85, !87}
!87 = !DILocation(line: 61, column: 25, scope: !51)
!88 = !DILocation(line: 63, column: 23, scope: !51)
!89 = distinct !DISubprogram(name: ".omp_outlined.", scope: !3, file: !3, line: 62, type: !52, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!90 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !89, type: !54, flags: DIFlagArtificial)
!91 = !DILocation(line: 0, scope: !89)
!92 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !89, type: !54, flags: DIFlagArtificial)
!93 = !DILocalVariable(name: "m", arg: 3, scope: !89, type: !58, flags: DIFlagArtificial)
!94 = !DILocalVariable(name: "i", arg: 4, scope: !89, type: !58, flags: DIFlagArtificial)
!95 = !DILocation(line: 62, column: 5, scope: !89)
!96 = !{!97}
!97 = !{i64 2, i64 -1, i64 -1, i1 true}
