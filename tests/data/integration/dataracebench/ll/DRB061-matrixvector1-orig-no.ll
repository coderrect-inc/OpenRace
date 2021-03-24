; ModuleID = 'DRB061-matrixvector1-orig-no.c'
source_filename = "DRB061-matrixvector1-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [42 x i8] c";DRB061-matrixvector1-orig-no.c;mv;56;1;;\00", align 1
@a = common dso_local global [100 x [100 x double]] zeroinitializer, align 16, !dbg !0
@v = common dso_local global [100 x double] zeroinitializer, align 16, !dbg !6
@v_out = common dso_local global [100 x double] zeroinitializer, align 16, !dbg !12
@2 = private unnamed_addr constant [43 x i8] c";DRB061-matrixvector1-orig-no.c;mv;56;39;;\00", align 1
@3 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mv() #0 !dbg !20 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  call void @llvm.dbg.declare(metadata i32* %i, metadata !24, metadata !DIExpression()), !dbg !25
  call void @llvm.dbg.declare(metadata i32* %j, metadata !26, metadata !DIExpression()), !dbg !27
  %2 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !28
  store i8* getelementptr inbounds ([42 x i8], [42 x i8]* @1, i32 0, i32 0), i8** %2, align 8, !dbg !28
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 0, void (i32*, i32*, ...)* bitcast (void (i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*)), !dbg !28
  ret i32 0, !dbg !29
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid.) #2 !dbg !30 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %.omp.iv = alloca i32, align 4
  %tmp = alloca i32, align 4
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %i1 = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %sum = alloca float, align 4
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !37, metadata !DIExpression()), !dbg !38
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !39, metadata !DIExpression()), !dbg !38
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !40, metadata !DIExpression()), !dbg !38
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !41, metadata !DIExpression()), !dbg !38
  store i32 0, i32* %.omp.lb, align 4, !dbg !42
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !43, metadata !DIExpression()), !dbg !38
  store i32 99, i32* %.omp.ub, align 4, !dbg !42
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !44, metadata !DIExpression()), !dbg !38
  store i32 1, i32* %.omp.stride, align 4, !dbg !42
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !45, metadata !DIExpression()), !dbg !38
  store i32 0, i32* %.omp.is_last, align 4, !dbg !42
  call void @llvm.dbg.declare(metadata i32* %i, metadata !46, metadata !DIExpression()), !dbg !38
  call void @llvm.dbg.declare(metadata i32* %j, metadata !47, metadata !DIExpression()), !dbg !38
  call void @llvm.dbg.declare(metadata i32* %i1, metadata !46, metadata !DIExpression()), !dbg !38
  %2 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !48
  store i8* getelementptr inbounds ([42 x i8], [42 x i8]* @1, i32 0, i32 0), i8** %2, align 8, !dbg !48
  %3 = load i32*, i32** %.global_tid..addr, align 8, !dbg !48
  %4 = load i32, i32* %3, align 4, !dbg !48
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %4, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !48
  %5 = load i32, i32* %.omp.ub, align 4, !dbg !42
  %cmp = icmp sgt i32 %5, 99, !dbg !42
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !42

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !42

cond.false:                                       ; preds = %entry
  %6 = load i32, i32* %.omp.ub, align 4, !dbg !42
  br label %cond.end, !dbg !42

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 99, %cond.true ], [ %6, %cond.false ], !dbg !42
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !42
  %7 = load i32, i32* %.omp.lb, align 4, !dbg !42
  store i32 %7, i32* %.omp.iv, align 4, !dbg !42
  br label %omp.inner.for.cond, !dbg !48

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %8 = load i32, i32* %.omp.iv, align 4, !dbg !42
  %9 = load i32, i32* %.omp.ub, align 4, !dbg !42
  %cmp2 = icmp sle i32 %8, %9, !dbg !48
  br i1 %cmp2, label %omp.inner.for.body, label %omp.inner.for.end, !dbg !48

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %10 = load i32, i32* %.omp.iv, align 4, !dbg !42
  %mul = mul nsw i32 %10, 1, !dbg !49
  %add = add nsw i32 0, %mul, !dbg !49
  store i32 %add, i32* %i, align 4, !dbg !49
  call void @llvm.dbg.declare(metadata float* %sum, metadata !50, metadata !DIExpression()), !dbg !53
  store float 0.000000e+00, float* %sum, align 4, !dbg !53
  store i32 0, i32* %j, align 4, !dbg !54
  br label %for.cond, !dbg !56

for.cond:                                         ; preds = %for.inc, %omp.inner.for.body
  %11 = load i32, i32* %j, align 4, !dbg !57
  %cmp3 = icmp slt i32 %11, 100, !dbg !59
  br i1 %cmp3, label %for.body, label %for.end, !dbg !60

for.body:                                         ; preds = %for.cond
  %12 = load i32, i32* %i, align 4, !dbg !61
  %idxprom = sext i32 %12 to i64, !dbg !63
  %arrayidx = getelementptr inbounds [100 x [100 x double]], [100 x [100 x double]]* @a, i64 0, i64 %idxprom, !dbg !63
  %13 = load i32, i32* %j, align 4, !dbg !64
  %idxprom4 = sext i32 %13 to i64, !dbg !63
  %arrayidx5 = getelementptr inbounds [100 x double], [100 x double]* %arrayidx, i64 0, i64 %idxprom4, !dbg !63
  %14 = load double, double* %arrayidx5, align 8, !dbg !63
  %15 = load i32, i32* %j, align 4, !dbg !65
  %idxprom6 = sext i32 %15 to i64, !dbg !66
  %arrayidx7 = getelementptr inbounds [100 x double], [100 x double]* @v, i64 0, i64 %idxprom6, !dbg !66
  %16 = load double, double* %arrayidx7, align 8, !dbg !66
  %mul8 = fmul double %14, %16, !dbg !67
  %17 = load float, float* %sum, align 4, !dbg !68
  %conv = fpext float %17 to double, !dbg !68
  %add9 = fadd double %conv, %mul8, !dbg !68
  %conv10 = fptrunc double %add9 to float, !dbg !68
  store float %conv10, float* %sum, align 4, !dbg !68
  br label %for.inc, !dbg !69

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %j, align 4, !dbg !70
  %inc = add nsw i32 %18, 1, !dbg !70
  store i32 %inc, i32* %j, align 4, !dbg !70
  br label %for.cond, !dbg !71, !llvm.loop !72

for.end:                                          ; preds = %for.cond
  %19 = load float, float* %sum, align 4, !dbg !74
  %conv11 = fpext float %19 to double, !dbg !74
  %20 = load i32, i32* %i, align 4, !dbg !75
  %idxprom12 = sext i32 %20 to i64, !dbg !76
  %arrayidx13 = getelementptr inbounds [100 x double], [100 x double]* @v_out, i64 0, i64 %idxprom12, !dbg !76
  store double %conv11, double* %arrayidx13, align 8, !dbg !77
  br label %omp.body.continue, !dbg !78

omp.body.continue:                                ; preds = %for.end
  br label %omp.inner.for.inc, !dbg !79

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %21 = load i32, i32* %.omp.iv, align 4, !dbg !42
  %add14 = add nsw i32 %21, 1, !dbg !48
  store i32 %add14, i32* %.omp.iv, align 4, !dbg !48
  br label %omp.inner.for.cond, !dbg !79, !llvm.loop !80

omp.inner.for.end:                                ; preds = %omp.inner.for.cond
  br label %omp.loop.exit, !dbg !79

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %22 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !79
  store i8* getelementptr inbounds ([43 x i8], [43 x i8]* @2, i32 0, i32 0), i8** %22, align 8, !dbg !79
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %4), !dbg !79
  ret void, !dbg !82
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid.) #2 !dbg !83 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !84, metadata !DIExpression()), !dbg !85
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !86, metadata !DIExpression()), !dbg !85
  %0 = load i32*, i32** %.global_tid..addr, align 8, !dbg !87
  %1 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !87
  call void @.omp_outlined._debug__(i32* %0, i32* %1) #4, !dbg !87
  ret void, !dbg !87
}

declare !callback !88 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !90 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %call = call i32 @mv(), !dbg !91
  ret i32 0, !dbg !92
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noinline norecurse nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!16, !17, !18}
!llvm.ident = !{!19}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "a", scope: !2, file: !3, line: 52, type: !14, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.1 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "DRB061-matrixvector1-orig-no.c", directory: "/home/yanze/code/OpenRace/tests/data/integration/dataracebench")
!4 = !{}
!5 = !{!0, !6, !12}
!6 = !DIGlobalVariableExpression(var: !7, expr: !DIExpression())
!7 = distinct !DIGlobalVariable(name: "v", scope: !2, file: !3, line: 52, type: !8, isLocal: false, isDefinition: true)
!8 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 6400, elements: !10)
!9 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!10 = !{!11}
!11 = !DISubrange(count: 100)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(name: "v_out", scope: !2, file: !3, line: 52, type: !8, isLocal: false, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 640000, elements: !15)
!15 = !{!11, !11}
!16 = !{i32 7, !"Dwarf Version", i32 4}
!17 = !{i32 2, !"Debug Info Version", i32 3}
!18 = !{i32 1, !"wchar_size", i32 4}
!19 = !{!"clang version 10.0.1 "}
!20 = distinct !DISubprogram(name: "mv", scope: !3, file: !3, line: 53, type: !21, scopeLine: 54, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!21 = !DISubroutineType(types: !22)
!22 = !{!23}
!23 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!24 = !DILocalVariable(name: "i", scope: !20, file: !3, line: 55, type: !23)
!25 = !DILocation(line: 55, column: 7, scope: !20)
!26 = !DILocalVariable(name: "j", scope: !20, file: !3, line: 55, type: !23)
!27 = !DILocation(line: 55, column: 9, scope: !20)
!28 = !DILocation(line: 56, column: 1, scope: !20)
!29 = !DILocation(line: 66, column: 3, scope: !20)
!30 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !3, file: !3, line: 57, type: !31, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!31 = !DISubroutineType(types: !32)
!32 = !{null, !33, !33}
!33 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !34)
!34 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !35)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !23)
!37 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !30, type: !33, flags: DIFlagArtificial)
!38 = !DILocation(line: 0, scope: !30)
!39 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !30, type: !33, flags: DIFlagArtificial)
!40 = !DILocalVariable(name: ".omp.iv", scope: !30, type: !23, flags: DIFlagArtificial)
!41 = !DILocalVariable(name: ".omp.lb", scope: !30, type: !23, flags: DIFlagArtificial)
!42 = !DILocation(line: 57, column: 8, scope: !30)
!43 = !DILocalVariable(name: ".omp.ub", scope: !30, type: !23, flags: DIFlagArtificial)
!44 = !DILocalVariable(name: ".omp.stride", scope: !30, type: !23, flags: DIFlagArtificial)
!45 = !DILocalVariable(name: ".omp.is_last", scope: !30, type: !23, flags: DIFlagArtificial)
!46 = !DILocalVariable(name: "i", scope: !30, type: !23, flags: DIFlagArtificial)
!47 = !DILocalVariable(name: "j", scope: !30, type: !23, flags: DIFlagArtificial)
!48 = !DILocation(line: 57, column: 3, scope: !30)
!49 = !DILocation(line: 57, column: 22, scope: !30)
!50 = !DILocalVariable(name: "sum", scope: !51, file: !3, line: 59, type: !52)
!51 = distinct !DILexicalBlock(scope: !30, file: !3, line: 58, column: 3)
!52 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!53 = !DILocation(line: 59, column: 11, scope: !51)
!54 = !DILocation(line: 60, column: 12, scope: !55)
!55 = distinct !DILexicalBlock(scope: !51, file: !3, line: 60, column: 5)
!56 = !DILocation(line: 60, column: 10, scope: !55)
!57 = !DILocation(line: 60, column: 17, scope: !58)
!58 = distinct !DILexicalBlock(scope: !55, file: !3, line: 60, column: 5)
!59 = !DILocation(line: 60, column: 19, scope: !58)
!60 = !DILocation(line: 60, column: 5, scope: !55)
!61 = !DILocation(line: 62, column: 16, scope: !62)
!62 = distinct !DILexicalBlock(scope: !58, file: !3, line: 61, column: 5)
!63 = !DILocation(line: 62, column: 14, scope: !62)
!64 = !DILocation(line: 62, column: 19, scope: !62)
!65 = !DILocation(line: 62, column: 24, scope: !62)
!66 = !DILocation(line: 62, column: 22, scope: !62)
!67 = !DILocation(line: 62, column: 21, scope: !62)
!68 = !DILocation(line: 62, column: 11, scope: !62)
!69 = !DILocation(line: 63, column: 5, scope: !62)
!70 = !DILocation(line: 60, column: 25, scope: !58)
!71 = !DILocation(line: 60, column: 5, scope: !58)
!72 = distinct !{!72, !60, !73}
!73 = !DILocation(line: 63, column: 5, scope: !55)
!74 = !DILocation(line: 64, column: 16, scope: !51)
!75 = !DILocation(line: 64, column: 11, scope: !51)
!76 = !DILocation(line: 64, column: 5, scope: !51)
!77 = !DILocation(line: 64, column: 14, scope: !51)
!78 = !DILocation(line: 65, column: 3, scope: !51)
!79 = !DILocation(line: 56, column: 1, scope: !30)
!80 = distinct !{!80, !79, !81}
!81 = !DILocation(line: 56, column: 39, scope: !30)
!82 = !DILocation(line: 65, column: 3, scope: !30)
!83 = distinct !DISubprogram(name: ".omp_outlined.", scope: !3, file: !3, line: 57, type: !31, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!84 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !83, type: !33, flags: DIFlagArtificial)
!85 = !DILocation(line: 0, scope: !83)
!86 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !83, type: !33, flags: DIFlagArtificial)
!87 = !DILocation(line: 57, column: 3, scope: !83)
!88 = !{!89}
!89 = !{i64 2, i64 -1, i64 -1, i1 true}
!90 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 69, type: !21, scopeLine: 70, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!91 = !DILocation(line: 71, column: 3, scope: !90)
!92 = !DILocation(line: 72, column: 3, scope: !90)
