; ModuleID = 'DRB050-functionparameter-orig-no.c'
source_filename = "DRB050-functionparameter-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [48 x i8] c";DRB050-functionparameter-orig-no.c;foo1;53;1;;\00", align 1
@2 = private unnamed_addr constant [49 x i8] c";DRB050-functionparameter-orig-no.c;foo1;53;25;;\00", align 1
@3 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@o1 = common dso_local global [100 x double] zeroinitializer, align 16, !dbg !0
@c = common dso_local global [100 x double] zeroinitializer, align 16, !dbg !6

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @foo1(double* %o1, double* %c, i32 %len) #0 !dbg !16 {
entry:
  %o1.addr = alloca double*, align 8
  %c.addr = alloca double*, align 8
  %len.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store double* %o1, double** %o1.addr, align 8
  call void @llvm.dbg.declare(metadata double** %o1.addr, metadata !21, metadata !DIExpression()), !dbg !22
  store double* %c, double** %c.addr, align 8
  call void @llvm.dbg.declare(metadata double** %c.addr, metadata !23, metadata !DIExpression()), !dbg !24
  store i32 %len, i32* %len.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %len.addr, metadata !25, metadata !DIExpression()), !dbg !26
  call void @llvm.dbg.declare(metadata i32* %i, metadata !27, metadata !DIExpression()), !dbg !28
  %2 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !29
  store i8* getelementptr inbounds ([48 x i8], [48 x i8]* @1, i32 0, i32 0), i8** %2, align 8, !dbg !29
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, double**, double**)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %len.addr, double** %c.addr, double** %o1.addr), !dbg !29
  ret void, !dbg !30
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %len, double** dereferenceable(8) %c, double** dereferenceable(8) %o1) #2 !dbg !31 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %c.addr = alloca double**, align 8
  %o1.addr = alloca double**, align 8
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
  %volnew_o8 = alloca double, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !40, metadata !DIExpression()), !dbg !41
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !42, metadata !DIExpression()), !dbg !41
  store i32* %len, i32** %len.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !43, metadata !DIExpression()), !dbg !44
  store double** %c, double*** %c.addr, align 8
  call void @llvm.dbg.declare(metadata double*** %c.addr, metadata !45, metadata !DIExpression()), !dbg !46
  store double** %o1, double*** %o1.addr, align 8
  call void @llvm.dbg.declare(metadata double*** %o1.addr, metadata !47, metadata !DIExpression()), !dbg !48
  %2 = load i32*, i32** %len.addr, align 8, !dbg !49
  %3 = load double**, double*** %c.addr, align 8, !dbg !49
  %4 = load double**, double*** %o1.addr, align 8, !dbg !49
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !50, metadata !DIExpression()), !dbg !41
  call void @llvm.dbg.declare(metadata i32* %.capture_expr., metadata !51, metadata !DIExpression()), !dbg !41
  %5 = load i32, i32* %2, align 4, !dbg !52
  store i32 %5, i32* %.capture_expr., align 4, !dbg !52
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.1, metadata !51, metadata !DIExpression()), !dbg !41
  %6 = load i32, i32* %.capture_expr., align 4, !dbg !52
  %sub = sub nsw i32 %6, 0, !dbg !49
  %sub2 = sub nsw i32 %sub, 1, !dbg !49
  %add = add nsw i32 %sub2, 1, !dbg !49
  %div = sdiv i32 %add, 1, !dbg !49
  %sub3 = sub nsw i32 %div, 1, !dbg !49
  store i32 %sub3, i32* %.capture_expr.1, align 4, !dbg !49
  call void @llvm.dbg.declare(metadata i32* %i, metadata !53, metadata !DIExpression()), !dbg !41
  store i32 0, i32* %i, align 4, !dbg !54
  %7 = load i32, i32* %.capture_expr., align 4, !dbg !52
  %cmp = icmp slt i32 0, %7, !dbg !49
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end, !dbg !49

omp.precond.then:                                 ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !55, metadata !DIExpression()), !dbg !41
  store i32 0, i32* %.omp.lb, align 4, !dbg !56
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !57, metadata !DIExpression()), !dbg !41
  %8 = load i32, i32* %.capture_expr.1, align 4, !dbg !49
  store i32 %8, i32* %.omp.ub, align 4, !dbg !56
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !58, metadata !DIExpression()), !dbg !41
  store i32 1, i32* %.omp.stride, align 4, !dbg !56
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !59, metadata !DIExpression()), !dbg !41
  store i32 0, i32* %.omp.is_last, align 4, !dbg !56
  call void @llvm.dbg.declare(metadata i32* %i4, metadata !53, metadata !DIExpression()), !dbg !41
  %9 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !49
  store i8* getelementptr inbounds ([48 x i8], [48 x i8]* @1, i32 0, i32 0), i8** %9, align 8, !dbg !49
  %10 = load i32*, i32** %.global_tid..addr, align 8, !dbg !49
  %11 = load i32, i32* %10, align 4, !dbg !49
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %11, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !49
  %12 = load i32, i32* %.omp.ub, align 4, !dbg !56
  %13 = load i32, i32* %.capture_expr.1, align 4, !dbg !49
  %cmp5 = icmp sgt i32 %12, %13, !dbg !56
  br i1 %cmp5, label %cond.true, label %cond.false, !dbg !56

cond.true:                                        ; preds = %omp.precond.then
  %14 = load i32, i32* %.capture_expr.1, align 4, !dbg !49
  br label %cond.end, !dbg !56

cond.false:                                       ; preds = %omp.precond.then
  %15 = load i32, i32* %.omp.ub, align 4, !dbg !56
  br label %cond.end, !dbg !56

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %14, %cond.true ], [ %15, %cond.false ], !dbg !56
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !56
  %16 = load i32, i32* %.omp.lb, align 4, !dbg !56
  store i32 %16, i32* %.omp.iv, align 4, !dbg !56
  br label %omp.inner.for.cond, !dbg !49

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %17 = load i32, i32* %.omp.iv, align 4, !dbg !56
  %18 = load i32, i32* %.omp.ub, align 4, !dbg !56
  %cmp6 = icmp sle i32 %17, %18, !dbg !49
  br i1 %cmp6, label %omp.inner.for.body, label %omp.inner.for.end, !dbg !49

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %19 = load i32, i32* %.omp.iv, align 4, !dbg !56
  %mul = mul nsw i32 %19, 1, !dbg !54
  %add7 = add nsw i32 0, %mul, !dbg !54
  store i32 %add7, i32* %i4, align 4, !dbg !54
  call void @llvm.dbg.declare(metadata double* %volnew_o8, metadata !60, metadata !DIExpression()), !dbg !62
  %20 = load double*, double** %3, align 8, !dbg !63
  %21 = load i32, i32* %i4, align 4, !dbg !64
  %idxprom = sext i32 %21 to i64, !dbg !63
  %arrayidx = getelementptr inbounds double, double* %20, i64 %idxprom, !dbg !63
  %22 = load double, double* %arrayidx, align 8, !dbg !63
  %mul8 = fmul double 5.000000e-01, %22, !dbg !65
  store double %mul8, double* %volnew_o8, align 8, !dbg !62
  %23 = load double, double* %volnew_o8, align 8, !dbg !66
  %24 = load double*, double** %4, align 8, !dbg !67
  %25 = load i32, i32* %i4, align 4, !dbg !68
  %idxprom9 = sext i32 %25 to i64, !dbg !67
  %arrayidx10 = getelementptr inbounds double, double* %24, i64 %idxprom9, !dbg !67
  store double %23, double* %arrayidx10, align 8, !dbg !69
  br label %omp.body.continue, !dbg !70

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !71

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %26 = load i32, i32* %.omp.iv, align 4, !dbg !56
  %add11 = add nsw i32 %26, 1, !dbg !49
  store i32 %add11, i32* %.omp.iv, align 4, !dbg !49
  br label %omp.inner.for.cond, !dbg !71, !llvm.loop !72

omp.inner.for.end:                                ; preds = %omp.inner.for.cond
  br label %omp.loop.exit, !dbg !71

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %27 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !71
  store i8* getelementptr inbounds ([49 x i8], [49 x i8]* @2, i32 0, i32 0), i8** %27, align 8, !dbg !71
  %28 = load i32*, i32** %.global_tid..addr, align 8, !dbg !71
  %29 = load i32, i32* %28, align 4, !dbg !71
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %29), !dbg !71
  br label %omp.precond.end, !dbg !71

omp.precond.end:                                  ; preds = %omp.loop.exit, %entry
  ret void, !dbg !74
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %len, double** dereferenceable(8) %c, double** dereferenceable(8) %o1) #2 !dbg !75 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %c.addr = alloca double**, align 8
  %o1.addr = alloca double**, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !76, metadata !DIExpression()), !dbg !77
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !78, metadata !DIExpression()), !dbg !77
  store i32* %len, i32** %len.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !79, metadata !DIExpression()), !dbg !77
  store double** %c, double*** %c.addr, align 8
  call void @llvm.dbg.declare(metadata double*** %c.addr, metadata !80, metadata !DIExpression()), !dbg !77
  store double** %o1, double*** %o1.addr, align 8
  call void @llvm.dbg.declare(metadata double*** %o1.addr, metadata !81, metadata !DIExpression()), !dbg !77
  %0 = load i32*, i32** %len.addr, align 8, !dbg !82
  %1 = load double**, double*** %c.addr, align 8, !dbg !82
  %2 = load double**, double*** %o1.addr, align 8, !dbg !82
  %3 = load i32*, i32** %.global_tid..addr, align 8, !dbg !82
  %4 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !82
  %5 = load i32*, i32** %len.addr, align 8, !dbg !82
  %6 = load double**, double*** %c.addr, align 8, !dbg !82
  %7 = load double**, double*** %o1.addr, align 8, !dbg !82
  call void @.omp_outlined._debug__(i32* %3, i32* %4, i32* %5, double** %6, double** %7) #4, !dbg !82
  ret void, !dbg !82
}

declare !callback !83 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !85 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @foo1(double* getelementptr inbounds ([100 x double], [100 x double]* @o1, i64 0, i64 0), double* getelementptr inbounds ([100 x double], [100 x double]* @c, i64 0, i64 0), i32 100), !dbg !88
  ret i32 0, !dbg !89
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noinline norecurse nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!12, !13, !14}
!llvm.ident = !{!15}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "o1", scope: !2, file: !3, line: 60, type: !8, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.1 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "DRB050-functionparameter-orig-no.c", directory: "/home/yanze/code/OpenRace/tests/data/integration/dataracebench")
!4 = !{}
!5 = !{!0, !6}
!6 = !DIGlobalVariableExpression(var: !7, expr: !DIExpression())
!7 = distinct !DIGlobalVariable(name: "c", scope: !2, file: !3, line: 61, type: !8, isLocal: false, isDefinition: true)
!8 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 6400, elements: !10)
!9 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!10 = !{!11}
!11 = !DISubrange(count: 100)
!12 = !{i32 7, !"Dwarf Version", i32 4}
!13 = !{i32 2, !"Debug Info Version", i32 3}
!14 = !{i32 1, !"wchar_size", i32 4}
!15 = !{!"clang version 10.0.1 "}
!16 = distinct !DISubprogram(name: "foo1", scope: !3, file: !3, line: 50, type: !17, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!17 = !DISubroutineType(types: !18)
!18 = !{null, !19, !19, !20}
!19 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!20 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!21 = !DILocalVariable(name: "o1", arg: 1, scope: !16, file: !3, line: 50, type: !19)
!22 = !DILocation(line: 50, column: 18, scope: !16)
!23 = !DILocalVariable(name: "c", arg: 2, scope: !16, file: !3, line: 50, type: !19)
!24 = !DILocation(line: 50, column: 31, scope: !16)
!25 = !DILocalVariable(name: "len", arg: 3, scope: !16, file: !3, line: 50, type: !20)
!26 = !DILocation(line: 50, column: 40, scope: !16)
!27 = !DILocalVariable(name: "i", scope: !16, file: !3, line: 52, type: !20)
!28 = !DILocation(line: 52, column: 7, scope: !16)
!29 = !DILocation(line: 53, column: 1, scope: !16)
!30 = !DILocation(line: 58, column: 1, scope: !16)
!31 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !3, file: !3, line: 54, type: !32, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!32 = !DISubroutineType(types: !33)
!33 = !{null, !34, !34, !38, !39, !39}
!34 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !35)
!35 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !36)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !20)
!38 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !20, size: 64)
!39 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !19, size: 64)
!40 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !31, type: !34, flags: DIFlagArtificial)
!41 = !DILocation(line: 0, scope: !31)
!42 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !31, type: !34, flags: DIFlagArtificial)
!43 = !DILocalVariable(name: "len", arg: 3, scope: !31, file: !3, line: 50, type: !38)
!44 = !DILocation(line: 50, column: 40, scope: !31)
!45 = !DILocalVariable(name: "c", arg: 4, scope: !31, file: !3, line: 50, type: !39)
!46 = !DILocation(line: 50, column: 31, scope: !31)
!47 = !DILocalVariable(name: "o1", arg: 5, scope: !31, file: !3, line: 50, type: !39)
!48 = !DILocation(line: 50, column: 18, scope: !31)
!49 = !DILocation(line: 54, column: 3, scope: !31)
!50 = !DILocalVariable(name: ".omp.iv", scope: !31, type: !20, flags: DIFlagArtificial)
!51 = !DILocalVariable(name: ".capture_expr.", scope: !31, type: !20, flags: DIFlagArtificial)
!52 = !DILocation(line: 54, column: 19, scope: !31)
!53 = !DILocalVariable(name: "i", scope: !31, type: !20, flags: DIFlagArtificial)
!54 = !DILocation(line: 54, column: 24, scope: !31)
!55 = !DILocalVariable(name: ".omp.lb", scope: !31, type: !20, flags: DIFlagArtificial)
!56 = !DILocation(line: 54, column: 8, scope: !31)
!57 = !DILocalVariable(name: ".omp.ub", scope: !31, type: !20, flags: DIFlagArtificial)
!58 = !DILocalVariable(name: ".omp.stride", scope: !31, type: !20, flags: DIFlagArtificial)
!59 = !DILocalVariable(name: ".omp.is_last", scope: !31, type: !20, flags: DIFlagArtificial)
!60 = !DILocalVariable(name: "volnew_o8", scope: !61, file: !3, line: 55, type: !9)
!61 = distinct !DILexicalBlock(scope: !31, file: !3, line: 54, column: 29)
!62 = !DILocation(line: 55, column: 12, scope: !61)
!63 = !DILocation(line: 55, column: 30, scope: !61)
!64 = !DILocation(line: 55, column: 32, scope: !61)
!65 = !DILocation(line: 55, column: 28, scope: !61)
!66 = !DILocation(line: 56, column: 13, scope: !61)
!67 = !DILocation(line: 56, column: 5, scope: !61)
!68 = !DILocation(line: 56, column: 8, scope: !61)
!69 = !DILocation(line: 56, column: 11, scope: !61)
!70 = !DILocation(line: 57, column: 3, scope: !61)
!71 = !DILocation(line: 53, column: 1, scope: !31)
!72 = distinct !{!72, !71, !73}
!73 = !DILocation(line: 53, column: 25, scope: !31)
!74 = !DILocation(line: 57, column: 3, scope: !31)
!75 = distinct !DISubprogram(name: ".omp_outlined.", scope: !3, file: !3, line: 54, type: !32, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!76 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !75, type: !34, flags: DIFlagArtificial)
!77 = !DILocation(line: 0, scope: !75)
!78 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !75, type: !34, flags: DIFlagArtificial)
!79 = !DILocalVariable(name: "len", arg: 3, scope: !75, type: !38, flags: DIFlagArtificial)
!80 = !DILocalVariable(name: "c", arg: 4, scope: !75, type: !39, flags: DIFlagArtificial)
!81 = !DILocalVariable(name: "o1", arg: 5, scope: !75, type: !39, flags: DIFlagArtificial)
!82 = !DILocation(line: 54, column: 3, scope: !75)
!83 = !{!84}
!84 = !{i64 2, i64 -1, i64 -1, i1 true}
!85 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 62, type: !86, scopeLine: 63, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!86 = !DISubroutineType(types: !87)
!87 = !{!20}
!88 = !DILocation(line: 64, column: 3, scope: !85)
!89 = !DILocation(line: 65, column: 3, scope: !85)
