; ModuleID = 'DRB060-matrixmultiply-orig-no.c'
source_filename = "DRB060-matrixmultiply-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [44 x i8] c";DRB060-matrixmultiply-orig-no.c;mmm;59;1;;\00", align 1
@c = common dso_local global [100 x [100 x double]] zeroinitializer, align 16, !dbg !0
@a = common dso_local global [100 x [100 x double]] zeroinitializer, align 16, !dbg !6
@b = common dso_local global [100 x [100 x double]] zeroinitializer, align 16, !dbg !12
@2 = private unnamed_addr constant [45 x i8] c";DRB060-matrixmultiply-orig-no.c;mmm;59;38;;\00", align 1
@3 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mmm() #0 !dbg !18 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  call void @llvm.dbg.declare(metadata i32* %i, metadata !22, metadata !DIExpression()), !dbg !23
  call void @llvm.dbg.declare(metadata i32* %j, metadata !24, metadata !DIExpression()), !dbg !25
  call void @llvm.dbg.declare(metadata i32* %k, metadata !26, metadata !DIExpression()), !dbg !27
  %2 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !28
  store i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1, i32 0, i32 0), i8** %2, align 8, !dbg !28
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
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %i = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
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
  call void @llvm.dbg.declare(metadata i32* %j, metadata !46, metadata !DIExpression()), !dbg !38
  call void @llvm.dbg.declare(metadata i32* %k, metadata !47, metadata !DIExpression()), !dbg !38
  call void @llvm.dbg.declare(metadata i32* %i, metadata !48, metadata !DIExpression()), !dbg !38
  %2 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !49
  store i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1, i32 0, i32 0), i8** %2, align 8, !dbg !49
  %3 = load i32*, i32** %.global_tid..addr, align 8, !dbg !49
  %4 = load i32, i32* %3, align 4, !dbg !49
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %4, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !49
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
  br label %omp.inner.for.cond, !dbg !49

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %8 = load i32, i32* %.omp.iv, align 4, !dbg !42
  %9 = load i32, i32* %.omp.ub, align 4, !dbg !42
  %cmp1 = icmp sle i32 %8, %9, !dbg !49
  br i1 %cmp1, label %omp.inner.for.body, label %omp.inner.for.end, !dbg !49

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %10 = load i32, i32* %.omp.iv, align 4, !dbg !42
  %mul = mul nsw i32 %10, 1, !dbg !50
  %add = add nsw i32 0, %mul, !dbg !50
  store i32 %add, i32* %i, align 4, !dbg !50
  store i32 0, i32* %k, align 4, !dbg !51
  br label %for.cond, !dbg !53

for.cond:                                         ; preds = %for.inc22, %omp.inner.for.body
  %11 = load i32, i32* %k, align 4, !dbg !54
  %cmp2 = icmp slt i32 %11, 100, !dbg !56
  br i1 %cmp2, label %for.body, label %for.end24, !dbg !57

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4, !dbg !58
  br label %for.cond3, !dbg !60

for.cond3:                                        ; preds = %for.inc, %for.body
  %12 = load i32, i32* %j, align 4, !dbg !61
  %cmp4 = icmp slt i32 %12, 100, !dbg !63
  br i1 %cmp4, label %for.body5, label %for.end, !dbg !64

for.body5:                                        ; preds = %for.cond3
  %13 = load i32, i32* %i, align 4, !dbg !65
  %idxprom = sext i32 %13 to i64, !dbg !66
  %arrayidx = getelementptr inbounds [100 x [100 x double]], [100 x [100 x double]]* @c, i64 0, i64 %idxprom, !dbg !66
  %14 = load i32, i32* %j, align 4, !dbg !67
  %idxprom6 = sext i32 %14 to i64, !dbg !66
  %arrayidx7 = getelementptr inbounds [100 x double], [100 x double]* %arrayidx, i64 0, i64 %idxprom6, !dbg !66
  %15 = load double, double* %arrayidx7, align 8, !dbg !66
  %16 = load i32, i32* %i, align 4, !dbg !68
  %idxprom8 = sext i32 %16 to i64, !dbg !69
  %arrayidx9 = getelementptr inbounds [100 x [100 x double]], [100 x [100 x double]]* @a, i64 0, i64 %idxprom8, !dbg !69
  %17 = load i32, i32* %k, align 4, !dbg !70
  %idxprom10 = sext i32 %17 to i64, !dbg !69
  %arrayidx11 = getelementptr inbounds [100 x double], [100 x double]* %arrayidx9, i64 0, i64 %idxprom10, !dbg !69
  %18 = load double, double* %arrayidx11, align 8, !dbg !69
  %19 = load i32, i32* %k, align 4, !dbg !71
  %idxprom12 = sext i32 %19 to i64, !dbg !72
  %arrayidx13 = getelementptr inbounds [100 x [100 x double]], [100 x [100 x double]]* @b, i64 0, i64 %idxprom12, !dbg !72
  %20 = load i32, i32* %j, align 4, !dbg !73
  %idxprom14 = sext i32 %20 to i64, !dbg !72
  %arrayidx15 = getelementptr inbounds [100 x double], [100 x double]* %arrayidx13, i64 0, i64 %idxprom14, !dbg !72
  %21 = load double, double* %arrayidx15, align 8, !dbg !72
  %mul16 = fmul double %18, %21, !dbg !74
  %add17 = fadd double %15, %mul16, !dbg !75
  %22 = load i32, i32* %i, align 4, !dbg !76
  %idxprom18 = sext i32 %22 to i64, !dbg !77
  %arrayidx19 = getelementptr inbounds [100 x [100 x double]], [100 x [100 x double]]* @c, i64 0, i64 %idxprom18, !dbg !77
  %23 = load i32, i32* %j, align 4, !dbg !78
  %idxprom20 = sext i32 %23 to i64, !dbg !77
  %arrayidx21 = getelementptr inbounds [100 x double], [100 x double]* %arrayidx19, i64 0, i64 %idxprom20, !dbg !77
  store double %add17, double* %arrayidx21, align 8, !dbg !79
  br label %for.inc, !dbg !77

for.inc:                                          ; preds = %for.body5
  %24 = load i32, i32* %j, align 4, !dbg !80
  %inc = add nsw i32 %24, 1, !dbg !80
  store i32 %inc, i32* %j, align 4, !dbg !80
  br label %for.cond3, !dbg !81, !llvm.loop !82

for.end:                                          ; preds = %for.cond3
  br label %for.inc22, !dbg !83

for.inc22:                                        ; preds = %for.end
  %25 = load i32, i32* %k, align 4, !dbg !84
  %inc23 = add nsw i32 %25, 1, !dbg !84
  store i32 %inc23, i32* %k, align 4, !dbg !84
  br label %for.cond, !dbg !85, !llvm.loop !86

for.end24:                                        ; preds = %for.cond
  br label %omp.body.continue, !dbg !87

omp.body.continue:                                ; preds = %for.end24
  br label %omp.inner.for.inc, !dbg !88

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %26 = load i32, i32* %.omp.iv, align 4, !dbg !42
  %add25 = add nsw i32 %26, 1, !dbg !49
  store i32 %add25, i32* %.omp.iv, align 4, !dbg !49
  br label %omp.inner.for.cond, !dbg !88, !llvm.loop !89

omp.inner.for.end:                                ; preds = %omp.inner.for.cond
  br label %omp.loop.exit, !dbg !88

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %27 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !88
  store i8* getelementptr inbounds ([45 x i8], [45 x i8]* @2, i32 0, i32 0), i8** %27, align 8, !dbg !88
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %4), !dbg !88
  ret void, !dbg !91
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid.) #2 !dbg !92 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !93, metadata !DIExpression()), !dbg !94
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !95, metadata !DIExpression()), !dbg !94
  %0 = load i32*, i32** %.global_tid..addr, align 8, !dbg !96
  %1 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !96
  call void @.omp_outlined._debug__(i32* %0, i32* %1) #4, !dbg !96
  ret void, !dbg !96
}

declare !callback !97 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !99 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %call = call i32 @mmm(), !dbg !100
  ret i32 0, !dbg !101
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noinline norecurse nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!14, !15, !16}
!llvm.ident = !{!17}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "c", scope: !2, file: !3, line: 54, type: !8, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.1 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "DRB060-matrixmultiply-orig-no.c", directory: "/home/yanze/code/OpenRace/tests/data/integration/dataracebench")
!4 = !{}
!5 = !{!6, !12, !0}
!6 = !DIGlobalVariableExpression(var: !7, expr: !DIExpression())
!7 = distinct !DIGlobalVariable(name: "a", scope: !2, file: !3, line: 54, type: !8, isLocal: false, isDefinition: true)
!8 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 640000, elements: !10)
!9 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!10 = !{!11, !11}
!11 = !DISubrange(count: 100)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(name: "b", scope: !2, file: !3, line: 54, type: !8, isLocal: false, isDefinition: true)
!14 = !{i32 7, !"Dwarf Version", i32 4}
!15 = !{i32 2, !"Debug Info Version", i32 3}
!16 = !{i32 1, !"wchar_size", i32 4}
!17 = !{!"clang version 10.0.1 "}
!18 = distinct !DISubprogram(name: "mmm", scope: !3, file: !3, line: 56, type: !19, scopeLine: 57, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!19 = !DISubroutineType(types: !20)
!20 = !{!21}
!21 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!22 = !DILocalVariable(name: "i", scope: !18, file: !3, line: 58, type: !21)
!23 = !DILocation(line: 58, column: 7, scope: !18)
!24 = !DILocalVariable(name: "j", scope: !18, file: !3, line: 58, type: !21)
!25 = !DILocation(line: 58, column: 9, scope: !18)
!26 = !DILocalVariable(name: "k", scope: !18, file: !3, line: 58, type: !21)
!27 = !DILocation(line: 58, column: 11, scope: !18)
!28 = !DILocation(line: 59, column: 1, scope: !18)
!29 = !DILocation(line: 64, column: 3, scope: !18)
!30 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !3, file: !3, line: 60, type: !31, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!31 = !DISubroutineType(types: !32)
!32 = !{null, !33, !33}
!33 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !34)
!34 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !35)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !21)
!37 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !30, type: !33, flags: DIFlagArtificial)
!38 = !DILocation(line: 0, scope: !30)
!39 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !30, type: !33, flags: DIFlagArtificial)
!40 = !DILocalVariable(name: ".omp.iv", scope: !30, type: !21, flags: DIFlagArtificial)
!41 = !DILocalVariable(name: ".omp.lb", scope: !30, type: !21, flags: DIFlagArtificial)
!42 = !DILocation(line: 60, column: 8, scope: !30)
!43 = !DILocalVariable(name: ".omp.ub", scope: !30, type: !21, flags: DIFlagArtificial)
!44 = !DILocalVariable(name: ".omp.stride", scope: !30, type: !21, flags: DIFlagArtificial)
!45 = !DILocalVariable(name: ".omp.is_last", scope: !30, type: !21, flags: DIFlagArtificial)
!46 = !DILocalVariable(name: "j", scope: !30, type: !21, flags: DIFlagArtificial)
!47 = !DILocalVariable(name: "k", scope: !30, type: !21, flags: DIFlagArtificial)
!48 = !DILocalVariable(name: "i", scope: !30, type: !21, flags: DIFlagArtificial)
!49 = !DILocation(line: 60, column: 3, scope: !30)
!50 = !DILocation(line: 60, column: 22, scope: !30)
!51 = !DILocation(line: 61, column: 12, scope: !52)
!52 = distinct !DILexicalBlock(scope: !30, file: !3, line: 61, column: 5)
!53 = !DILocation(line: 61, column: 10, scope: !52)
!54 = !DILocation(line: 61, column: 17, scope: !55)
!55 = distinct !DILexicalBlock(scope: !52, file: !3, line: 61, column: 5)
!56 = !DILocation(line: 61, column: 19, scope: !55)
!57 = !DILocation(line: 61, column: 5, scope: !52)
!58 = !DILocation(line: 62, column: 14, scope: !59)
!59 = distinct !DILexicalBlock(scope: !55, file: !3, line: 62, column: 7)
!60 = !DILocation(line: 62, column: 12, scope: !59)
!61 = !DILocation(line: 62, column: 19, scope: !62)
!62 = distinct !DILexicalBlock(scope: !59, file: !3, line: 62, column: 7)
!63 = !DILocation(line: 62, column: 21, scope: !62)
!64 = !DILocation(line: 62, column: 7, scope: !59)
!65 = !DILocation(line: 63, column: 20, scope: !62)
!66 = !DILocation(line: 63, column: 18, scope: !62)
!67 = !DILocation(line: 63, column: 23, scope: !62)
!68 = !DILocation(line: 63, column: 28, scope: !62)
!69 = !DILocation(line: 63, column: 26, scope: !62)
!70 = !DILocation(line: 63, column: 31, scope: !62)
!71 = !DILocation(line: 63, column: 36, scope: !62)
!72 = !DILocation(line: 63, column: 34, scope: !62)
!73 = !DILocation(line: 63, column: 39, scope: !62)
!74 = !DILocation(line: 63, column: 33, scope: !62)
!75 = !DILocation(line: 63, column: 25, scope: !62)
!76 = !DILocation(line: 63, column: 11, scope: !62)
!77 = !DILocation(line: 63, column: 9, scope: !62)
!78 = !DILocation(line: 63, column: 14, scope: !62)
!79 = !DILocation(line: 63, column: 16, scope: !62)
!80 = !DILocation(line: 62, column: 27, scope: !62)
!81 = !DILocation(line: 62, column: 7, scope: !62)
!82 = distinct !{!82, !64, !83}
!83 = !DILocation(line: 63, column: 40, scope: !59)
!84 = !DILocation(line: 61, column: 25, scope: !55)
!85 = !DILocation(line: 61, column: 5, scope: !55)
!86 = distinct !{!86, !57, !87}
!87 = !DILocation(line: 63, column: 40, scope: !52)
!88 = !DILocation(line: 59, column: 1, scope: !30)
!89 = distinct !{!89, !88, !90}
!90 = !DILocation(line: 59, column: 38, scope: !30)
!91 = !DILocation(line: 63, column: 40, scope: !30)
!92 = distinct !DISubprogram(name: ".omp_outlined.", scope: !3, file: !3, line: 60, type: !31, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!93 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !92, type: !33, flags: DIFlagArtificial)
!94 = !DILocation(line: 0, scope: !92)
!95 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !92, type: !33, flags: DIFlagArtificial)
!96 = !DILocation(line: 60, column: 3, scope: !92)
!97 = !{!98}
!98 = !{i64 2, i64 -1, i64 -1, i1 true}
!99 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 67, type: !19, scopeLine: 68, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!100 = !DILocation(line: 69, column: 3, scope: !99)
!101 = !DILocation(line: 70, column: 3, scope: !99)
