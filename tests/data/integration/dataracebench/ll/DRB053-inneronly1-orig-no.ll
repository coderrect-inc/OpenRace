; ModuleID = 'DRB053-inneronly1-orig-no.c'
source_filename = "DRB053-inneronly1-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [41 x i8] c";DRB053-inneronly1-orig-no.c;main;60;1;;\00", align 1
@2 = private unnamed_addr constant [42 x i8] c";DRB053-inneronly1-orig-no.c;main;60;25;;\00", align 1
@3 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !dbg !7 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %a = alloca [20 x [20 x double]], align 16
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
  call void @llvm.dbg.declare(metadata i32* %j, metadata !20, metadata !DIExpression()), !dbg !21
  call void @llvm.dbg.declare(metadata [20 x [20 x double]]* %a, metadata !22, metadata !DIExpression()), !dbg !27
  %arraydecay = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %a, i64 0, i64 0, !dbg !28
  %2 = bitcast [20 x double]* %arraydecay to i8*, !dbg !28
  call void @llvm.memset.p0i8.i64(i8* align 16 %2, i8 0, i64 3200, i1 false), !dbg !28
  store i32 0, i32* %i, align 4, !dbg !29
  br label %for.cond, !dbg !31

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4, !dbg !32
  %cmp = icmp slt i32 %3, 19, !dbg !34
  br i1 %cmp, label %for.body, label %for.end, !dbg !35

for.body:                                         ; preds = %for.cond
  %4 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !36
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @1, i32 0, i32 0), i8** %4, align 8, !dbg !36
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 2, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, [20 x [20 x double]]*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), [20 x [20 x double]]* %a, i32* %i), !dbg !36
  br label %for.inc, !dbg !38

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4, !dbg !39
  %add = add nsw i32 %5, 1, !dbg !39
  store i32 %add, i32* %i, align 4, !dbg !39
  br label %for.cond, !dbg !40, !llvm.loop !41

for.end:                                          ; preds = %for.cond
  ret i32 0, !dbg !43
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., [20 x [20 x double]]* dereferenceable(3200) %a, i32* dereferenceable(4) %i) #3 !dbg !44 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %a.addr = alloca [20 x [20 x double]]*, align 8
  %i.addr = alloca i32*, align 8
  %.omp.iv = alloca i32, align 4
  %tmp = alloca i32, align 4
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %j = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !53, metadata !DIExpression()), !dbg !54
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !55, metadata !DIExpression()), !dbg !54
  store [20 x [20 x double]]* %a, [20 x [20 x double]]** %a.addr, align 8
  call void @llvm.dbg.declare(metadata [20 x [20 x double]]** %a.addr, metadata !56, metadata !DIExpression()), !dbg !57
  store i32* %i, i32** %i.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %i.addr, metadata !58, metadata !DIExpression()), !dbg !59
  %2 = load [20 x [20 x double]]*, [20 x [20 x double]]** %a.addr, align 8, !dbg !60
  %3 = load i32*, i32** %i.addr, align 8, !dbg !60
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !61, metadata !DIExpression()), !dbg !54
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !62, metadata !DIExpression()), !dbg !54
  store i32 0, i32* %.omp.lb, align 4, !dbg !63
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !64, metadata !DIExpression()), !dbg !54
  store i32 19, i32* %.omp.ub, align 4, !dbg !63
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !65, metadata !DIExpression()), !dbg !54
  store i32 1, i32* %.omp.stride, align 4, !dbg !63
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !66, metadata !DIExpression()), !dbg !54
  store i32 0, i32* %.omp.is_last, align 4, !dbg !63
  call void @llvm.dbg.declare(metadata i32* %j, metadata !67, metadata !DIExpression()), !dbg !54
  %4 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !60
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @1, i32 0, i32 0), i8** %4, align 8, !dbg !60
  %5 = load i32*, i32** %.global_tid..addr, align 8, !dbg !60
  %6 = load i32, i32* %5, align 4, !dbg !60
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %6, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !60
  %7 = load i32, i32* %.omp.ub, align 4, !dbg !63
  %cmp = icmp sgt i32 %7, 19, !dbg !63
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !63

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !63

cond.false:                                       ; preds = %entry
  %8 = load i32, i32* %.omp.ub, align 4, !dbg !63
  br label %cond.end, !dbg !63

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 19, %cond.true ], [ %8, %cond.false ], !dbg !63
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !63
  %9 = load i32, i32* %.omp.lb, align 4, !dbg !63
  store i32 %9, i32* %.omp.iv, align 4, !dbg !63
  br label %omp.inner.for.cond, !dbg !60

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %10 = load i32, i32* %.omp.iv, align 4, !dbg !63
  %11 = load i32, i32* %.omp.ub, align 4, !dbg !63
  %cmp1 = icmp sle i32 %10, %11, !dbg !60
  br i1 %cmp1, label %omp.inner.for.body, label %omp.inner.for.end, !dbg !60

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %12 = load i32, i32* %.omp.iv, align 4, !dbg !63
  %mul = mul nsw i32 %12, 1, !dbg !68
  %add = add nsw i32 0, %mul, !dbg !68
  store i32 %add, i32* %j, align 4, !dbg !68
  %13 = load i32, i32* %3, align 4, !dbg !69
  %add2 = add nsw i32 %13, 1, !dbg !71
  %idxprom = sext i32 %add2 to i64, !dbg !72
  %arrayidx = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %2, i64 0, i64 %idxprom, !dbg !72
  %14 = load i32, i32* %j, align 4, !dbg !73
  %idxprom3 = sext i32 %14 to i64, !dbg !72
  %arrayidx4 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx, i64 0, i64 %idxprom3, !dbg !72
  %15 = load double, double* %arrayidx4, align 8, !dbg !72
  %16 = load i32, i32* %3, align 4, !dbg !74
  %idxprom5 = sext i32 %16 to i64, !dbg !75
  %arrayidx6 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %2, i64 0, i64 %idxprom5, !dbg !75
  %17 = load i32, i32* %j, align 4, !dbg !76
  %idxprom7 = sext i32 %17 to i64, !dbg !75
  %arrayidx8 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx6, i64 0, i64 %idxprom7, !dbg !75
  %18 = load double, double* %arrayidx8, align 8, !dbg !77
  %add9 = fadd double %18, %15, !dbg !77
  store double %add9, double* %arrayidx8, align 8, !dbg !77
  br label %omp.body.continue, !dbg !78

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !79

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %19 = load i32, i32* %.omp.iv, align 4, !dbg !63
  %add10 = add nsw i32 %19, 1, !dbg !60
  store i32 %add10, i32* %.omp.iv, align 4, !dbg !60
  br label %omp.inner.for.cond, !dbg !79, !llvm.loop !80

omp.inner.for.end:                                ; preds = %omp.inner.for.cond
  br label %omp.loop.exit, !dbg !79

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %20 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !79
  store i8* getelementptr inbounds ([42 x i8], [42 x i8]* @2, i32 0, i32 0), i8** %20, align 8, !dbg !79
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %6), !dbg !79
  ret void, !dbg !82
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., [20 x [20 x double]]* dereferenceable(3200) %a, i32* dereferenceable(4) %i) #3 !dbg !83 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %a.addr = alloca [20 x [20 x double]]*, align 8
  %i.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !84, metadata !DIExpression()), !dbg !85
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !86, metadata !DIExpression()), !dbg !85
  store [20 x [20 x double]]* %a, [20 x [20 x double]]** %a.addr, align 8
  call void @llvm.dbg.declare(metadata [20 x [20 x double]]** %a.addr, metadata !87, metadata !DIExpression()), !dbg !85
  store i32* %i, i32** %i.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %i.addr, metadata !88, metadata !DIExpression()), !dbg !85
  %0 = load [20 x [20 x double]]*, [20 x [20 x double]]** %a.addr, align 8, !dbg !89
  %1 = load i32*, i32** %i.addr, align 8, !dbg !89
  %2 = load i32*, i32** %.global_tid..addr, align 8, !dbg !89
  %3 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !89
  %4 = load [20 x [20 x double]]*, [20 x [20 x double]]** %a.addr, align 8, !dbg !89
  %5 = load i32*, i32** %i.addr, align 8, !dbg !89
  call void @.omp_outlined._debug__(i32* %2, i32* %3, [20 x [20 x double]]* %4, i32* %5) #4, !dbg !89
  ret void, !dbg !89
}

declare !callback !90 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { noinline norecurse nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.1 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "DRB053-inneronly1-orig-no.c", directory: "/home/yanze/code/OpenRace/tests/data/integration/dataracebench")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.1 "}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 52, type: !8, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !10, !11}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!14 = !DILocalVariable(name: "argc", arg: 1, scope: !7, file: !1, line: 52, type: !10)
!15 = !DILocation(line: 52, column: 14, scope: !7)
!16 = !DILocalVariable(name: "argv", arg: 2, scope: !7, file: !1, line: 52, type: !11)
!17 = !DILocation(line: 52, column: 25, scope: !7)
!18 = !DILocalVariable(name: "i", scope: !7, file: !1, line: 54, type: !10)
!19 = !DILocation(line: 54, column: 7, scope: !7)
!20 = !DILocalVariable(name: "j", scope: !7, file: !1, line: 55, type: !10)
!21 = !DILocation(line: 55, column: 7, scope: !7)
!22 = !DILocalVariable(name: "a", scope: !7, file: !1, line: 56, type: !23)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !24, size: 25600, elements: !25)
!24 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!25 = !{!26, !26}
!26 = !DISubrange(count: 20)
!27 = !DILocation(line: 56, column: 10, scope: !7)
!28 = !DILocation(line: 57, column: 3, scope: !7)
!29 = !DILocation(line: 59, column: 10, scope: !30)
!30 = distinct !DILexicalBlock(scope: !7, file: !1, line: 59, column: 3)
!31 = !DILocation(line: 59, column: 8, scope: !30)
!32 = !DILocation(line: 59, column: 15, scope: !33)
!33 = distinct !DILexicalBlock(scope: !30, file: !1, line: 59, column: 3)
!34 = !DILocation(line: 59, column: 17, scope: !33)
!35 = !DILocation(line: 59, column: 3, scope: !30)
!36 = !DILocation(line: 60, column: 1, scope: !37)
!37 = distinct !DILexicalBlock(scope: !33, file: !1, line: 59, column: 34)
!38 = !DILocation(line: 64, column: 3, scope: !37)
!39 = !DILocation(line: 59, column: 28, scope: !33)
!40 = !DILocation(line: 59, column: 3, scope: !33)
!41 = distinct !{!41, !35, !42}
!42 = !DILocation(line: 64, column: 3, scope: !30)
!43 = !DILocation(line: 65, column: 3, scope: !7)
!44 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 61, type: !45, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!45 = !DISubroutineType(types: !46)
!46 = !{null, !47, !47, !51, !52}
!47 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !48)
!48 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !49)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!51 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !23, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !10, size: 64)
!53 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !44, type: !47, flags: DIFlagArtificial)
!54 = !DILocation(line: 0, scope: !44)
!55 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !44, type: !47, flags: DIFlagArtificial)
!56 = !DILocalVariable(name: "a", arg: 3, scope: !44, file: !1, line: 56, type: !51)
!57 = !DILocation(line: 56, column: 10, scope: !44)
!58 = !DILocalVariable(name: "i", arg: 4, scope: !44, file: !1, line: 54, type: !52)
!59 = !DILocation(line: 54, column: 7, scope: !44)
!60 = !DILocation(line: 61, column: 5, scope: !44)
!61 = !DILocalVariable(name: ".omp.iv", scope: !44, type: !10, flags: DIFlagArtificial)
!62 = !DILocalVariable(name: ".omp.lb", scope: !44, type: !10, flags: DIFlagArtificial)
!63 = !DILocation(line: 61, column: 10, scope: !44)
!64 = !DILocalVariable(name: ".omp.ub", scope: !44, type: !10, flags: DIFlagArtificial)
!65 = !DILocalVariable(name: ".omp.stride", scope: !44, type: !10, flags: DIFlagArtificial)
!66 = !DILocalVariable(name: ".omp.is_last", scope: !44, type: !10, flags: DIFlagArtificial)
!67 = !DILocalVariable(name: "j", scope: !44, type: !10, flags: DIFlagArtificial)
!68 = !DILocation(line: 61, column: 25, scope: !44)
!69 = !DILocation(line: 62, column: 20, scope: !70)
!70 = distinct !DILexicalBlock(scope: !44, file: !1, line: 61, column: 33)
!71 = !DILocation(line: 62, column: 22, scope: !70)
!72 = !DILocation(line: 62, column: 18, scope: !70)
!73 = !DILocation(line: 62, column: 27, scope: !70)
!74 = !DILocation(line: 62, column: 9, scope: !70)
!75 = !DILocation(line: 62, column: 7, scope: !70)
!76 = !DILocation(line: 62, column: 12, scope: !70)
!77 = !DILocation(line: 62, column: 15, scope: !70)
!78 = !DILocation(line: 63, column: 5, scope: !70)
!79 = !DILocation(line: 60, column: 1, scope: !44)
!80 = distinct !{!80, !79, !81}
!81 = !DILocation(line: 60, column: 25, scope: !44)
!82 = !DILocation(line: 63, column: 5, scope: !44)
!83 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 61, type: !45, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!84 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !83, type: !47, flags: DIFlagArtificial)
!85 = !DILocation(line: 0, scope: !83)
!86 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !83, type: !47, flags: DIFlagArtificial)
!87 = !DILocalVariable(name: "a", arg: 3, scope: !83, type: !51, flags: DIFlagArtificial)
!88 = !DILocalVariable(name: "i", arg: 4, scope: !83, type: !52, flags: DIFlagArtificial)
!89 = !DILocation(line: 61, column: 5, scope: !83)
!90 = !{!91}
!91 = !{i64 2, i64 -1, i64 -1, i1 true}
