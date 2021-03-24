; ModuleID = 'DRB170-nestedloops-orig-no.c'
source_filename = "DRB170-nestedloops-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [42 x i8] c";DRB170-nestedloops-orig-no.c;main;26;3;;\00", align 1
@2 = private unnamed_addr constant [43 x i8] c";DRB170-nestedloops-orig-no.c;main;26;48;;\00", align 1
@3 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !7 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %m = alloca i32, align 4
  %tmp1 = alloca double, align 8
  %a = alloca [12 x [12 x [12 x double]]], align 16
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata i32* %i, metadata !11, metadata !DIExpression()), !dbg !12
  call void @llvm.dbg.declare(metadata i32* %j, metadata !13, metadata !DIExpression()), !dbg !14
  call void @llvm.dbg.declare(metadata i32* %k, metadata !15, metadata !DIExpression()), !dbg !16
  call void @llvm.dbg.declare(metadata i32* %m, metadata !17, metadata !DIExpression()), !dbg !18
  call void @llvm.dbg.declare(metadata double* %tmp1, metadata !19, metadata !DIExpression()), !dbg !21
  call void @llvm.dbg.declare(metadata [12 x [12 x [12 x double]]]* %a, metadata !22, metadata !DIExpression()), !dbg !26
  store i32 3, i32* %m, align 4, !dbg !27
  %2 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !28
  store i8* getelementptr inbounds ([42 x i8], [42 x i8]* @1, i32 0, i32 0), i8** %2, align 8, !dbg !28
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 2, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, [12 x [12 x [12 x double]]]*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %m, [12 x [12 x [12 x double]]]* %a), !dbg !28
  ret i32 0, !dbg !29
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %m, [12 x [12 x [12 x double]]]* dereferenceable(13824) %a) #2 !dbg !30 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %m.addr = alloca i32*, align 8
  %a.addr = alloca [12 x [12 x [12 x double]]]*, align 8
  %.omp.iv = alloca i32, align 4
  %tmp = alloca i32, align 4
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %tmp1 = alloca double, align 8
  %i = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !39, metadata !DIExpression()), !dbg !40
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !41, metadata !DIExpression()), !dbg !40
  store i32* %m, i32** %m.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %m.addr, metadata !42, metadata !DIExpression()), !dbg !43
  store [12 x [12 x [12 x double]]]* %a, [12 x [12 x [12 x double]]]** %a.addr, align 8
  call void @llvm.dbg.declare(metadata [12 x [12 x [12 x double]]]** %a.addr, metadata !44, metadata !DIExpression()), !dbg !45
  %2 = load i32*, i32** %m.addr, align 8, !dbg !46
  %3 = load [12 x [12 x [12 x double]]]*, [12 x [12 x [12 x double]]]** %a.addr, align 8, !dbg !46
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !47, metadata !DIExpression()), !dbg !40
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !48, metadata !DIExpression()), !dbg !40
  store i32 0, i32* %.omp.lb, align 4, !dbg !49
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !50, metadata !DIExpression()), !dbg !40
  store i32 11, i32* %.omp.ub, align 4, !dbg !49
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !51, metadata !DIExpression()), !dbg !40
  store i32 1, i32* %.omp.stride, align 4, !dbg !49
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !52, metadata !DIExpression()), !dbg !40
  store i32 0, i32* %.omp.is_last, align 4, !dbg !49
  call void @llvm.dbg.declare(metadata i32* %j, metadata !53, metadata !DIExpression()), !dbg !40
  call void @llvm.dbg.declare(metadata i32* %k, metadata !54, metadata !DIExpression()), !dbg !40
  call void @llvm.dbg.declare(metadata double* %tmp1, metadata !55, metadata !DIExpression()), !dbg !40
  call void @llvm.dbg.declare(metadata i32* %i, metadata !56, metadata !DIExpression()), !dbg !40
  %4 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !46
  store i8* getelementptr inbounds ([42 x i8], [42 x i8]* @1, i32 0, i32 0), i8** %4, align 8, !dbg !46
  %5 = load i32*, i32** %.global_tid..addr, align 8, !dbg !46
  %6 = load i32, i32* %5, align 4, !dbg !46
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %6, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !46
  %7 = load i32, i32* %.omp.ub, align 4, !dbg !49
  %cmp = icmp sgt i32 %7, 11, !dbg !49
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !49

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !49

cond.false:                                       ; preds = %entry
  %8 = load i32, i32* %.omp.ub, align 4, !dbg !49
  br label %cond.end, !dbg !49

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 11, %cond.true ], [ %8, %cond.false ], !dbg !49
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !49
  %9 = load i32, i32* %.omp.lb, align 4, !dbg !49
  store i32 %9, i32* %.omp.iv, align 4, !dbg !49
  br label %omp.inner.for.cond, !dbg !46

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %10 = load i32, i32* %.omp.iv, align 4, !dbg !49
  %11 = load i32, i32* %.omp.ub, align 4, !dbg !49
  %cmp1 = icmp sle i32 %10, %11, !dbg !46
  br i1 %cmp1, label %omp.inner.for.body, label %omp.inner.for.end, !dbg !46

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %12 = load i32, i32* %.omp.iv, align 4, !dbg !49
  %mul = mul nsw i32 %12, 1, !dbg !57
  %add = add nsw i32 0, %mul, !dbg !57
  store i32 %add, i32* %i, align 4, !dbg !57
  store i32 0, i32* %j, align 4, !dbg !58
  br label %for.cond, !dbg !61

for.cond:                                         ; preds = %for.inc11, %omp.inner.for.body
  %13 = load i32, i32* %j, align 4, !dbg !62
  %cmp2 = icmp slt i32 %13, 12, !dbg !64
  br i1 %cmp2, label %for.body, label %for.end13, !dbg !65

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %k, align 4, !dbg !66
  br label %for.cond3, !dbg !69

for.cond3:                                        ; preds = %for.inc, %for.body
  %14 = load i32, i32* %k, align 4, !dbg !70
  %cmp4 = icmp slt i32 %14, 12, !dbg !72
  br i1 %cmp4, label %for.body5, label %for.end, !dbg !73

for.body5:                                        ; preds = %for.cond3
  %15 = load i32, i32* %2, align 4, !dbg !74
  %conv = sitofp i32 %15 to double, !dbg !74
  %div = fdiv double 6.000000e+00, %conv, !dbg !76
  store double %div, double* %tmp1, align 8, !dbg !77
  %16 = load double, double* %tmp1, align 8, !dbg !78
  %add6 = fadd double %16, 4.000000e+00, !dbg !79
  %17 = load i32, i32* %i, align 4, !dbg !80
  %idxprom = sext i32 %17 to i64, !dbg !81
  %arrayidx = getelementptr inbounds [12 x [12 x [12 x double]]], [12 x [12 x [12 x double]]]* %3, i64 0, i64 %idxprom, !dbg !81
  %18 = load i32, i32* %j, align 4, !dbg !82
  %idxprom7 = sext i32 %18 to i64, !dbg !81
  %arrayidx8 = getelementptr inbounds [12 x [12 x double]], [12 x [12 x double]]* %arrayidx, i64 0, i64 %idxprom7, !dbg !81
  %19 = load i32, i32* %k, align 4, !dbg !83
  %idxprom9 = sext i32 %19 to i64, !dbg !81
  %arrayidx10 = getelementptr inbounds [12 x double], [12 x double]* %arrayidx8, i64 0, i64 %idxprom9, !dbg !81
  store double %add6, double* %arrayidx10, align 8, !dbg !84
  br label %for.inc, !dbg !85

for.inc:                                          ; preds = %for.body5
  %20 = load i32, i32* %k, align 4, !dbg !86
  %inc = add nsw i32 %20, 1, !dbg !86
  store i32 %inc, i32* %k, align 4, !dbg !86
  br label %for.cond3, !dbg !87, !llvm.loop !88

for.end:                                          ; preds = %for.cond3
  br label %for.inc11, !dbg !90

for.inc11:                                        ; preds = %for.end
  %21 = load i32, i32* %j, align 4, !dbg !91
  %inc12 = add nsw i32 %21, 1, !dbg !91
  store i32 %inc12, i32* %j, align 4, !dbg !91
  br label %for.cond, !dbg !92, !llvm.loop !93

for.end13:                                        ; preds = %for.cond
  br label %omp.body.continue, !dbg !95

omp.body.continue:                                ; preds = %for.end13
  br label %omp.inner.for.inc, !dbg !96

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %22 = load i32, i32* %.omp.iv, align 4, !dbg !49
  %add14 = add nsw i32 %22, 1, !dbg !46
  store i32 %add14, i32* %.omp.iv, align 4, !dbg !46
  br label %omp.inner.for.cond, !dbg !96, !llvm.loop !97

omp.inner.for.end:                                ; preds = %omp.inner.for.cond
  br label %omp.loop.exit, !dbg !96

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %23 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !96
  store i8* getelementptr inbounds ([43 x i8], [43 x i8]* @2, i32 0, i32 0), i8** %23, align 8, !dbg !96
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %6), !dbg !96
  ret void, !dbg !99
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %m, [12 x [12 x [12 x double]]]* dereferenceable(13824) %a) #2 !dbg !100 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %m.addr = alloca i32*, align 8
  %a.addr = alloca [12 x [12 x [12 x double]]]*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !101, metadata !DIExpression()), !dbg !102
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !103, metadata !DIExpression()), !dbg !102
  store i32* %m, i32** %m.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %m.addr, metadata !104, metadata !DIExpression()), !dbg !102
  store [12 x [12 x [12 x double]]]* %a, [12 x [12 x [12 x double]]]** %a.addr, align 8
  call void @llvm.dbg.declare(metadata [12 x [12 x [12 x double]]]** %a.addr, metadata !105, metadata !DIExpression()), !dbg !102
  %0 = load i32*, i32** %m.addr, align 8, !dbg !106
  %1 = load [12 x [12 x [12 x double]]]*, [12 x [12 x [12 x double]]]** %a.addr, align 8, !dbg !106
  %2 = load i32*, i32** %.global_tid..addr, align 8, !dbg !106
  %3 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !106
  %4 = load i32*, i32** %m.addr, align 8, !dbg !106
  %5 = load [12 x [12 x [12 x double]]]*, [12 x [12 x [12 x double]]]** %a.addr, align 8, !dbg !106
  call void @.omp_outlined._debug__(i32* %2, i32* %3, i32* %4, [12 x [12 x [12 x double]]]* %5) #4, !dbg !106
  ret void, !dbg !106
}

declare !callback !107 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noinline norecurse nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.1 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "DRB170-nestedloops-orig-no.c", directory: "/home/yanze/code/OpenRace/tests/data/integration/dataracebench")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.1 "}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 18, type: !8, scopeLine: 18, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DILocalVariable(name: "i", scope: !7, file: !1, line: 19, type: !10)
!12 = !DILocation(line: 19, column: 7, scope: !7)
!13 = !DILocalVariable(name: "j", scope: !7, file: !1, line: 19, type: !10)
!14 = !DILocation(line: 19, column: 9, scope: !7)
!15 = !DILocalVariable(name: "k", scope: !7, file: !1, line: 19, type: !10)
!16 = !DILocation(line: 19, column: 11, scope: !7)
!17 = !DILocalVariable(name: "m", scope: !7, file: !1, line: 19, type: !10)
!18 = !DILocation(line: 19, column: 13, scope: !7)
!19 = !DILocalVariable(name: "tmp1", scope: !7, file: !1, line: 20, type: !20)
!20 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!21 = !DILocation(line: 20, column: 10, scope: !7)
!22 = !DILocalVariable(name: "a", scope: !7, file: !1, line: 22, type: !23)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !20, size: 110592, elements: !24)
!24 = !{!25, !25, !25}
!25 = !DISubrange(count: 12)
!26 = !DILocation(line: 22, column: 10, scope: !7)
!27 = !DILocation(line: 24, column: 5, scope: !7)
!28 = !DILocation(line: 26, column: 3, scope: !7)
!29 = !DILocation(line: 36, column: 3, scope: !7)
!30 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 27, type: !31, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!31 = !DISubroutineType(types: !32)
!32 = !{null, !33, !33, !37, !38}
!33 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !34)
!34 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !35)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!37 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !10, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !23, size: 64)
!39 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !30, type: !33, flags: DIFlagArtificial)
!40 = !DILocation(line: 0, scope: !30)
!41 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !30, type: !33, flags: DIFlagArtificial)
!42 = !DILocalVariable(name: "m", arg: 3, scope: !30, file: !1, line: 19, type: !37)
!43 = !DILocation(line: 19, column: 13, scope: !30)
!44 = !DILocalVariable(name: "a", arg: 4, scope: !30, file: !1, line: 22, type: !38)
!45 = !DILocation(line: 22, column: 10, scope: !30)
!46 = !DILocation(line: 27, column: 3, scope: !30)
!47 = !DILocalVariable(name: ".omp.iv", scope: !30, type: !10, flags: DIFlagArtificial)
!48 = !DILocalVariable(name: ".omp.lb", scope: !30, type: !10, flags: DIFlagArtificial)
!49 = !DILocation(line: 27, column: 8, scope: !30)
!50 = !DILocalVariable(name: ".omp.ub", scope: !30, type: !10, flags: DIFlagArtificial)
!51 = !DILocalVariable(name: ".omp.stride", scope: !30, type: !10, flags: DIFlagArtificial)
!52 = !DILocalVariable(name: ".omp.is_last", scope: !30, type: !10, flags: DIFlagArtificial)
!53 = !DILocalVariable(name: "j", scope: !30, type: !10, flags: DIFlagArtificial)
!54 = !DILocalVariable(name: "k", scope: !30, type: !10, flags: DIFlagArtificial)
!55 = !DILocalVariable(name: "tmp1", scope: !30, type: !20, flags: DIFlagArtificial)
!56 = !DILocalVariable(name: "i", scope: !30, type: !10, flags: DIFlagArtificial)
!57 = !DILocation(line: 27, column: 23, scope: !30)
!58 = !DILocation(line: 28, column: 12, scope: !59)
!59 = distinct !DILexicalBlock(scope: !60, file: !1, line: 28, column: 5)
!60 = distinct !DILexicalBlock(scope: !30, file: !1, line: 27, column: 28)
!61 = !DILocation(line: 28, column: 10, scope: !59)
!62 = !DILocation(line: 28, column: 17, scope: !63)
!63 = distinct !DILexicalBlock(scope: !59, file: !1, line: 28, column: 5)
!64 = !DILocation(line: 28, column: 19, scope: !63)
!65 = !DILocation(line: 28, column: 5, scope: !59)
!66 = !DILocation(line: 29, column: 14, scope: !67)
!67 = distinct !DILexicalBlock(scope: !68, file: !1, line: 29, column: 7)
!68 = distinct !DILexicalBlock(scope: !63, file: !1, line: 28, column: 30)
!69 = !DILocation(line: 29, column: 12, scope: !67)
!70 = !DILocation(line: 29, column: 19, scope: !71)
!71 = distinct !DILexicalBlock(scope: !67, file: !1, line: 29, column: 7)
!72 = !DILocation(line: 29, column: 21, scope: !71)
!73 = !DILocation(line: 29, column: 7, scope: !67)
!74 = !DILocation(line: 30, column: 20, scope: !75)
!75 = distinct !DILexicalBlock(scope: !71, file: !1, line: 29, column: 32)
!76 = !DILocation(line: 30, column: 19, scope: !75)
!77 = !DILocation(line: 30, column: 14, scope: !75)
!78 = !DILocation(line: 31, column: 22, scope: !75)
!79 = !DILocation(line: 31, column: 26, scope: !75)
!80 = !DILocation(line: 31, column: 11, scope: !75)
!81 = !DILocation(line: 31, column: 9, scope: !75)
!82 = !DILocation(line: 31, column: 14, scope: !75)
!83 = !DILocation(line: 31, column: 17, scope: !75)
!84 = !DILocation(line: 31, column: 20, scope: !75)
!85 = !DILocation(line: 32, column: 7, scope: !75)
!86 = !DILocation(line: 29, column: 28, scope: !71)
!87 = !DILocation(line: 29, column: 7, scope: !71)
!88 = distinct !{!88, !73, !89}
!89 = !DILocation(line: 32, column: 7, scope: !67)
!90 = !DILocation(line: 33, column: 5, scope: !68)
!91 = !DILocation(line: 28, column: 26, scope: !63)
!92 = !DILocation(line: 28, column: 5, scope: !63)
!93 = distinct !{!93, !65, !94}
!94 = !DILocation(line: 33, column: 5, scope: !59)
!95 = !DILocation(line: 34, column: 3, scope: !60)
!96 = !DILocation(line: 26, column: 3, scope: !30)
!97 = distinct !{!97, !96, !98}
!98 = !DILocation(line: 26, column: 48, scope: !30)
!99 = !DILocation(line: 34, column: 3, scope: !30)
!100 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 27, type: !31, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!101 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !100, type: !33, flags: DIFlagArtificial)
!102 = !DILocation(line: 0, scope: !100)
!103 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !100, type: !33, flags: DIFlagArtificial)
!104 = !DILocalVariable(name: "m", arg: 3, scope: !100, type: !37, flags: DIFlagArtificial)
!105 = !DILocalVariable(name: "a", arg: 4, scope: !100, type: !38, flags: DIFlagArtificial)
!106 = !DILocation(line: 27, column: 3, scope: !100)
!107 = !{!108}
!108 = !{i64 2, i64 -1, i64 -1, i1 true}
