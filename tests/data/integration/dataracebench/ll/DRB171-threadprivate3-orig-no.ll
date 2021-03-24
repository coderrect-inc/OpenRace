; ModuleID = 'DRB171-threadprivate3-orig-no.c'
source_filename = "DRB171-threadprivate3-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@x = internal thread_local global [20 x double] zeroinitializer, align 16, !dbg !0
@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [45 x i8] c";DRB171-threadprivate3-orig-no.c;main;24;3;;\00", align 1
@2 = private unnamed_addr constant [46 x i8] c";DRB171-threadprivate3-orig-no.c;main;24;43;;\00", align 1
@3 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"%f %f\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !14 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca double, align 8
  %k = alloca double, align 8
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata i32* %i, metadata !18, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.declare(metadata double* %j, metadata !20, metadata !DIExpression()), !dbg !21
  call void @llvm.dbg.declare(metadata double* %k, metadata !22, metadata !DIExpression()), !dbg !23
  %2 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !24
  store i8* getelementptr inbounds ([45 x i8], [45 x i8]* @1, i32 0, i32 0), i8** %2, align 8, !dbg !24
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 2, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, double*, double*)* @.omp_outlined. to void (i32*, i32*, ...)*), double* %j, double* %k), !dbg !24
  %3 = load double, double* %j, align 8, !dbg !25
  %4 = load double, double* %k, align 8, !dbg !26
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), double %3, double %4), !dbg !27
  ret i32 0, !dbg !28
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., double* dereferenceable(8) %j, double* dereferenceable(8) %k) #2 !dbg !29 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %j.addr = alloca double*, align 8
  %k.addr = alloca double*, align 8
  %.omp.iv = alloca i32, align 4
  %tmp = alloca i32, align 4
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %i = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !37, metadata !DIExpression()), !dbg !38
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !39, metadata !DIExpression()), !dbg !38
  store double* %j, double** %j.addr, align 8
  call void @llvm.dbg.declare(metadata double** %j.addr, metadata !40, metadata !DIExpression()), !dbg !41
  store double* %k, double** %k.addr, align 8
  call void @llvm.dbg.declare(metadata double** %k.addr, metadata !42, metadata !DIExpression()), !dbg !43
  %2 = load double*, double** %j.addr, align 8, !dbg !44
  %3 = load double*, double** %k.addr, align 8, !dbg !44
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !45, metadata !DIExpression()), !dbg !38
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !46, metadata !DIExpression()), !dbg !38
  store i32 0, i32* %.omp.lb, align 4, !dbg !47
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !48, metadata !DIExpression()), !dbg !38
  store i32 19, i32* %.omp.ub, align 4, !dbg !47
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !49, metadata !DIExpression()), !dbg !38
  store i32 1, i32* %.omp.stride, align 4, !dbg !47
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !50, metadata !DIExpression()), !dbg !38
  store i32 0, i32* %.omp.is_last, align 4, !dbg !47
  call void @llvm.dbg.declare(metadata i32* %i, metadata !51, metadata !DIExpression()), !dbg !38
  %4 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !44
  store i8* getelementptr inbounds ([45 x i8], [45 x i8]* @1, i32 0, i32 0), i8** %4, align 8, !dbg !44
  %5 = load i32*, i32** %.global_tid..addr, align 8, !dbg !44
  %6 = load i32, i32* %5, align 4, !dbg !44
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %6, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !44
  %7 = load i32, i32* %.omp.ub, align 4, !dbg !47
  %cmp = icmp sgt i32 %7, 19, !dbg !47
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !47

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !47

cond.false:                                       ; preds = %entry
  %8 = load i32, i32* %.omp.ub, align 4, !dbg !47
  br label %cond.end, !dbg !47

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 19, %cond.true ], [ %8, %cond.false ], !dbg !47
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !47
  %9 = load i32, i32* %.omp.lb, align 4, !dbg !47
  store i32 %9, i32* %.omp.iv, align 4, !dbg !47
  br label %omp.inner.for.cond, !dbg !44

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %10 = load i32, i32* %.omp.iv, align 4, !dbg !47
  %11 = load i32, i32* %.omp.ub, align 4, !dbg !47
  %cmp1 = icmp sle i32 %10, %11, !dbg !44
  br i1 %cmp1, label %omp.inner.for.body, label %omp.inner.for.end, !dbg !44

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %12 = load i32, i32* %.omp.iv, align 4, !dbg !47
  %mul = mul nsw i32 %12, 1, !dbg !52
  %add = add nsw i32 0, %mul, !dbg !52
  store i32 %add, i32* %i, align 4, !dbg !52
  %13 = load i32, i32* %i, align 4, !dbg !53
  %idxprom = sext i32 %13 to i64, !dbg !55
  %arrayidx = getelementptr inbounds [20 x double], [20 x double]* @x, i64 0, i64 %idxprom, !dbg !55
  store double -1.000000e+00, double* %arrayidx, align 8, !dbg !56
  %call = call i32 @omp_get_thread_num(), !dbg !57
  %cmp2 = icmp eq i32 %call, 0, !dbg !59
  br i1 %cmp2, label %if.then, label %if.end, !dbg !60

if.then:                                          ; preds = %omp.inner.for.body
  %14 = load double, double* getelementptr inbounds ([20 x double], [20 x double]* @x, i64 0, i64 0), align 16, !dbg !61
  store double %14, double* %2, align 8, !dbg !63
  br label %if.end, !dbg !64

if.end:                                           ; preds = %if.then, %omp.inner.for.body
  %call3 = call i32 @omp_get_thread_num(), !dbg !65
  %cmp4 = icmp eq i32 %call3, 0, !dbg !67
  br i1 %cmp4, label %if.then5, label %if.end7, !dbg !68

if.then5:                                         ; preds = %if.end
  %15 = load i32, i32* %i, align 4, !dbg !69
  %conv = sitofp i32 %15 to double, !dbg !69
  %add6 = fadd double %conv, 5.000000e-02, !dbg !71
  store double %add6, double* %3, align 8, !dbg !72
  br label %if.end7, !dbg !73

if.end7:                                          ; preds = %if.then5, %if.end
  br label %omp.body.continue, !dbg !74

omp.body.continue:                                ; preds = %if.end7
  br label %omp.inner.for.inc, !dbg !75

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %16 = load i32, i32* %.omp.iv, align 4, !dbg !47
  %add8 = add nsw i32 %16, 1, !dbg !44
  store i32 %add8, i32* %.omp.iv, align 4, !dbg !44
  br label %omp.inner.for.cond, !dbg !75, !llvm.loop !76

omp.inner.for.end:                                ; preds = %omp.inner.for.cond
  br label %omp.loop.exit, !dbg !75

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %17 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !75
  store i8* getelementptr inbounds ([46 x i8], [46 x i8]* @2, i32 0, i32 0), i8** %17, align 8, !dbg !75
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %6), !dbg !75
  ret void, !dbg !78
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare dso_local i32 @omp_get_thread_num() #4

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., double* dereferenceable(8) %j, double* dereferenceable(8) %k) #2 !dbg !79 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %j.addr = alloca double*, align 8
  %k.addr = alloca double*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !80, metadata !DIExpression()), !dbg !81
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !82, metadata !DIExpression()), !dbg !81
  store double* %j, double** %j.addr, align 8
  call void @llvm.dbg.declare(metadata double** %j.addr, metadata !83, metadata !DIExpression()), !dbg !81
  store double* %k, double** %k.addr, align 8
  call void @llvm.dbg.declare(metadata double** %k.addr, metadata !84, metadata !DIExpression()), !dbg !81
  %0 = load double*, double** %j.addr, align 8, !dbg !85
  %1 = load double*, double** %k.addr, align 8, !dbg !85
  %2 = load i32*, i32** %.global_tid..addr, align 8, !dbg !85
  %3 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !85
  %4 = load double*, double** %j.addr, align 8, !dbg !85
  %5 = load double*, double** %k.addr, align 8, !dbg !85
  call void @.omp_outlined._debug__(i32* %2, i32* %3, double* %4, double* %5) #5, !dbg !85
  ret void, !dbg !85
}

declare !callback !86 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

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
!1 = distinct !DIGlobalVariable(name: "x", scope: !2, file: !3, line: 17, type: !6, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.1 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "DRB171-threadprivate3-orig-no.c", directory: "/home/yanze/code/OpenRace/tests/data/integration/dataracebench")
!4 = !{}
!5 = !{!0}
!6 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 1280, elements: !8)
!7 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!8 = !{!9}
!9 = !DISubrange(count: 20)
!10 = !{i32 7, !"Dwarf Version", i32 4}
!11 = !{i32 2, !"Debug Info Version", i32 3}
!12 = !{i32 1, !"wchar_size", i32 4}
!13 = !{!"clang version 10.0.1 "}
!14 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 20, type: !15, scopeLine: 20, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!15 = !DISubroutineType(types: !16)
!16 = !{!17}
!17 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!18 = !DILocalVariable(name: "i", scope: !14, file: !3, line: 21, type: !17)
!19 = !DILocation(line: 21, column: 7, scope: !14)
!20 = !DILocalVariable(name: "j", scope: !14, file: !3, line: 22, type: !7)
!21 = !DILocation(line: 22, column: 10, scope: !14)
!22 = !DILocalVariable(name: "k", scope: !14, file: !3, line: 22, type: !7)
!23 = !DILocation(line: 22, column: 12, scope: !14)
!24 = !DILocation(line: 24, column: 3, scope: !14)
!25 = !DILocation(line: 35, column: 22, scope: !14)
!26 = !DILocation(line: 35, column: 25, scope: !14)
!27 = !DILocation(line: 35, column: 3, scope: !14)
!28 = !DILocation(line: 37, column: 3, scope: !14)
!29 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !3, file: !3, line: 25, type: !30, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!30 = !DISubroutineType(types: !31)
!31 = !{null, !32, !32, !36, !36}
!32 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !33)
!33 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !34)
!34 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !35, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!36 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !7, size: 64)
!37 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !29, type: !32, flags: DIFlagArtificial)
!38 = !DILocation(line: 0, scope: !29)
!39 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !29, type: !32, flags: DIFlagArtificial)
!40 = !DILocalVariable(name: "j", arg: 3, scope: !29, file: !3, line: 22, type: !36)
!41 = !DILocation(line: 22, column: 10, scope: !29)
!42 = !DILocalVariable(name: "k", arg: 4, scope: !29, file: !3, line: 22, type: !36)
!43 = !DILocation(line: 22, column: 12, scope: !29)
!44 = !DILocation(line: 25, column: 3, scope: !29)
!45 = !DILocalVariable(name: ".omp.iv", scope: !29, type: !17, flags: DIFlagArtificial)
!46 = !DILocalVariable(name: ".omp.lb", scope: !29, type: !17, flags: DIFlagArtificial)
!47 = !DILocation(line: 25, column: 8, scope: !29)
!48 = !DILocalVariable(name: ".omp.ub", scope: !29, type: !17, flags: DIFlagArtificial)
!49 = !DILocalVariable(name: ".omp.stride", scope: !29, type: !17, flags: DIFlagArtificial)
!50 = !DILocalVariable(name: ".omp.is_last", scope: !29, type: !17, flags: DIFlagArtificial)
!51 = !DILocalVariable(name: "i", scope: !29, type: !17, flags: DIFlagArtificial)
!52 = !DILocation(line: 25, column: 23, scope: !29)
!53 = !DILocation(line: 26, column: 7, scope: !54)
!54 = distinct !DILexicalBlock(scope: !29, file: !3, line: 25, column: 27)
!55 = !DILocation(line: 26, column: 5, scope: !54)
!56 = !DILocation(line: 26, column: 10, scope: !54)
!57 = !DILocation(line: 27, column: 8, scope: !58)
!58 = distinct !DILexicalBlock(scope: !54, file: !3, line: 27, column: 8)
!59 = !DILocation(line: 27, column: 28, scope: !58)
!60 = !DILocation(line: 27, column: 8, scope: !54)
!61 = !DILocation(line: 28, column: 11, scope: !62)
!62 = distinct !DILexicalBlock(scope: !58, file: !3, line: 27, column: 32)
!63 = !DILocation(line: 28, column: 9, scope: !62)
!64 = !DILocation(line: 29, column: 5, scope: !62)
!65 = !DILocation(line: 30, column: 8, scope: !66)
!66 = distinct !DILexicalBlock(scope: !54, file: !3, line: 30, column: 8)
!67 = !DILocation(line: 30, column: 28, scope: !66)
!68 = !DILocation(line: 30, column: 8, scope: !54)
!69 = !DILocation(line: 31, column: 11, scope: !70)
!70 = distinct !DILexicalBlock(scope: !66, file: !3, line: 30, column: 32)
!71 = !DILocation(line: 31, column: 12, scope: !70)
!72 = !DILocation(line: 31, column: 9, scope: !70)
!73 = !DILocation(line: 32, column: 5, scope: !70)
!74 = !DILocation(line: 33, column: 3, scope: !54)
!75 = !DILocation(line: 24, column: 3, scope: !29)
!76 = distinct !{!76, !75, !77}
!77 = !DILocation(line: 24, column: 43, scope: !29)
!78 = !DILocation(line: 33, column: 3, scope: !29)
!79 = distinct !DISubprogram(name: ".omp_outlined.", scope: !3, file: !3, line: 25, type: !30, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!80 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !79, type: !32, flags: DIFlagArtificial)
!81 = !DILocation(line: 0, scope: !79)
!82 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !79, type: !32, flags: DIFlagArtificial)
!83 = !DILocalVariable(name: "j", arg: 3, scope: !79, type: !36, flags: DIFlagArtificial)
!84 = !DILocalVariable(name: "k", arg: 4, scope: !79, type: !36, flags: DIFlagArtificial)
!85 = !DILocation(line: 25, column: 3, scope: !79)
!86 = !{!87}
!87 = !{i64 2, i64 -1, i64 -1, i1 true}
