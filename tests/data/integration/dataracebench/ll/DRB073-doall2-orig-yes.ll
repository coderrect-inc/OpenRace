; ModuleID = 'DRB073-doall2-orig-yes.c'
source_filename = "DRB073-doall2-orig-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [38 x i8] c";DRB073-doall2-orig-yes.c;main;59;1;;\00", align 1
@a = common dso_local global [100 x [100 x i32]] zeroinitializer, align 16, !dbg !0
@2 = private unnamed_addr constant [39 x i8] c";DRB073-doall2-orig-yes.c;main;59;25;;\00", align 1
@3 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !14 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata i32* %i, metadata !17, metadata !DIExpression()), !dbg !18
  call void @llvm.dbg.declare(metadata i32* %j, metadata !19, metadata !DIExpression()), !dbg !20
  %2 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !21
  store i8* getelementptr inbounds ([38 x i8], [38 x i8]* @1, i32 0, i32 0), i8** %2, align 8, !dbg !21
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %j), !dbg !21
  ret i32 0, !dbg !22
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %j) #2 !dbg !23 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %j.addr = alloca i32*, align 8
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
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !31, metadata !DIExpression()), !dbg !32
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !33, metadata !DIExpression()), !dbg !32
  store i32* %j, i32** %j.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %j.addr, metadata !34, metadata !DIExpression()), !dbg !35
  %2 = load i32*, i32** %j.addr, align 8, !dbg !36
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !37, metadata !DIExpression()), !dbg !32
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !38, metadata !DIExpression()), !dbg !32
  store i32 0, i32* %.omp.lb, align 4, !dbg !39
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !40, metadata !DIExpression()), !dbg !32
  store i32 99, i32* %.omp.ub, align 4, !dbg !39
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !41, metadata !DIExpression()), !dbg !32
  store i32 1, i32* %.omp.stride, align 4, !dbg !39
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !42, metadata !DIExpression()), !dbg !32
  store i32 0, i32* %.omp.is_last, align 4, !dbg !39
  call void @llvm.dbg.declare(metadata i32* %i, metadata !43, metadata !DIExpression()), !dbg !32
  %3 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !36
  store i8* getelementptr inbounds ([38 x i8], [38 x i8]* @1, i32 0, i32 0), i8** %3, align 8, !dbg !36
  %4 = load i32*, i32** %.global_tid..addr, align 8, !dbg !36
  %5 = load i32, i32* %4, align 4, !dbg !36
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %5, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !36
  %6 = load i32, i32* %.omp.ub, align 4, !dbg !39
  %cmp = icmp sgt i32 %6, 99, !dbg !39
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !39

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !39

cond.false:                                       ; preds = %entry
  %7 = load i32, i32* %.omp.ub, align 4, !dbg !39
  br label %cond.end, !dbg !39

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 99, %cond.true ], [ %7, %cond.false ], !dbg !39
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !39
  %8 = load i32, i32* %.omp.lb, align 4, !dbg !39
  store i32 %8, i32* %.omp.iv, align 4, !dbg !39
  br label %omp.inner.for.cond, !dbg !36

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %9 = load i32, i32* %.omp.iv, align 4, !dbg !39
  %10 = load i32, i32* %.omp.ub, align 4, !dbg !39
  %cmp1 = icmp sle i32 %9, %10, !dbg !36
  br i1 %cmp1, label %omp.inner.for.body, label %omp.inner.for.end, !dbg !36

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %11 = load i32, i32* %.omp.iv, align 4, !dbg !39
  %mul = mul nsw i32 %11, 1, !dbg !44
  %add = add nsw i32 0, %mul, !dbg !44
  store i32 %add, i32* %i, align 4, !dbg !44
  store i32 0, i32* %2, align 4, !dbg !45
  br label %for.cond, !dbg !47

for.cond:                                         ; preds = %for.inc, %omp.inner.for.body
  %12 = load i32, i32* %2, align 4, !dbg !48
  %cmp2 = icmp slt i32 %12, 100, !dbg !50
  br i1 %cmp2, label %for.body, label %for.end, !dbg !51

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %i, align 4, !dbg !52
  %idxprom = sext i32 %13 to i64, !dbg !53
  %arrayidx = getelementptr inbounds [100 x [100 x i32]], [100 x [100 x i32]]* @a, i64 0, i64 %idxprom, !dbg !53
  %14 = load i32, i32* %2, align 4, !dbg !54
  %idxprom3 = sext i32 %14 to i64, !dbg !53
  %arrayidx4 = getelementptr inbounds [100 x i32], [100 x i32]* %arrayidx, i64 0, i64 %idxprom3, !dbg !53
  %15 = load i32, i32* %arrayidx4, align 4, !dbg !53
  %add5 = add nsw i32 %15, 1, !dbg !55
  %16 = load i32, i32* %i, align 4, !dbg !56
  %idxprom6 = sext i32 %16 to i64, !dbg !57
  %arrayidx7 = getelementptr inbounds [100 x [100 x i32]], [100 x [100 x i32]]* @a, i64 0, i64 %idxprom6, !dbg !57
  %17 = load i32, i32* %2, align 4, !dbg !58
  %idxprom8 = sext i32 %17 to i64, !dbg !57
  %arrayidx9 = getelementptr inbounds [100 x i32], [100 x i32]* %arrayidx7, i64 0, i64 %idxprom8, !dbg !57
  store i32 %add5, i32* %arrayidx9, align 4, !dbg !59
  br label %for.inc, !dbg !57

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %2, align 4, !dbg !60
  %inc = add nsw i32 %18, 1, !dbg !60
  store i32 %inc, i32* %2, align 4, !dbg !60
  br label %for.cond, !dbg !61, !llvm.loop !62

for.end:                                          ; preds = %for.cond
  br label %omp.body.continue, !dbg !63

omp.body.continue:                                ; preds = %for.end
  br label %omp.inner.for.inc, !dbg !64

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %19 = load i32, i32* %.omp.iv, align 4, !dbg !39
  %add10 = add nsw i32 %19, 1, !dbg !36
  store i32 %add10, i32* %.omp.iv, align 4, !dbg !36
  br label %omp.inner.for.cond, !dbg !64, !llvm.loop !65

omp.inner.for.end:                                ; preds = %omp.inner.for.cond
  br label %omp.loop.exit, !dbg !64

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %20 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !64
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @2, i32 0, i32 0), i8** %20, align 8, !dbg !64
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %5), !dbg !64
  ret void, !dbg !67
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %j) #2 !dbg !68 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %j.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !69, metadata !DIExpression()), !dbg !70
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !71, metadata !DIExpression()), !dbg !70
  store i32* %j, i32** %j.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %j.addr, metadata !72, metadata !DIExpression()), !dbg !70
  %0 = load i32*, i32** %j.addr, align 8, !dbg !73
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !73
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !73
  %3 = load i32*, i32** %j.addr, align 8, !dbg !73
  call void @.omp_outlined._debug__(i32* %1, i32* %2, i32* %3) #4, !dbg !73
  ret void, !dbg !73
}

declare !callback !74 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noinline norecurse nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!10, !11, !12}
!llvm.ident = !{!13}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "a", scope: !2, file: !3, line: 55, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.1 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "DRB073-doall2-orig-yes.c", directory: "/home/yanze/code/OpenRace/tests/data/integration/dataracebench")
!4 = !{}
!5 = !{!0}
!6 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 320000, elements: !8)
!7 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!8 = !{!9, !9}
!9 = !DISubrange(count: 100)
!10 = !{i32 7, !"Dwarf Version", i32 4}
!11 = !{i32 2, !"Debug Info Version", i32 3}
!12 = !{i32 1, !"wchar_size", i32 4}
!13 = !{!"clang version 10.0.1 "}
!14 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 56, type: !15, scopeLine: 57, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!15 = !DISubroutineType(types: !16)
!16 = !{!7}
!17 = !DILocalVariable(name: "i", scope: !14, file: !3, line: 58, type: !7)
!18 = !DILocation(line: 58, column: 7, scope: !14)
!19 = !DILocalVariable(name: "j", scope: !14, file: !3, line: 58, type: !7)
!20 = !DILocation(line: 58, column: 9, scope: !14)
!21 = !DILocation(line: 59, column: 1, scope: !14)
!22 = !DILocation(line: 63, column: 3, scope: !14)
!23 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !3, file: !3, line: 60, type: !24, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!24 = !DISubroutineType(types: !25)
!25 = !{null, !26, !26, !30}
!26 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !27)
!27 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !28)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!30 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !7, size: 64)
!31 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !23, type: !26, flags: DIFlagArtificial)
!32 = !DILocation(line: 0, scope: !23)
!33 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !23, type: !26, flags: DIFlagArtificial)
!34 = !DILocalVariable(name: "j", arg: 3, scope: !23, file: !3, line: 58, type: !30)
!35 = !DILocation(line: 58, column: 9, scope: !23)
!36 = !DILocation(line: 60, column: 3, scope: !23)
!37 = !DILocalVariable(name: ".omp.iv", scope: !23, type: !7, flags: DIFlagArtificial)
!38 = !DILocalVariable(name: ".omp.lb", scope: !23, type: !7, flags: DIFlagArtificial)
!39 = !DILocation(line: 60, column: 8, scope: !23)
!40 = !DILocalVariable(name: ".omp.ub", scope: !23, type: !7, flags: DIFlagArtificial)
!41 = !DILocalVariable(name: ".omp.stride", scope: !23, type: !7, flags: DIFlagArtificial)
!42 = !DILocalVariable(name: ".omp.is_last", scope: !23, type: !7, flags: DIFlagArtificial)
!43 = !DILocalVariable(name: "i", scope: !23, type: !7, flags: DIFlagArtificial)
!44 = !DILocation(line: 60, column: 18, scope: !23)
!45 = !DILocation(line: 61, column: 11, scope: !46)
!46 = distinct !DILexicalBlock(scope: !23, file: !3, line: 61, column: 5)
!47 = !DILocation(line: 61, column: 10, scope: !46)
!48 = !DILocation(line: 61, column: 14, scope: !49)
!49 = distinct !DILexicalBlock(scope: !46, file: !3, line: 61, column: 5)
!50 = !DILocation(line: 61, column: 15, scope: !49)
!51 = !DILocation(line: 61, column: 5, scope: !46)
!52 = !DILocation(line: 62, column: 17, scope: !49)
!53 = !DILocation(line: 62, column: 15, scope: !49)
!54 = !DILocation(line: 62, column: 20, scope: !49)
!55 = !DILocation(line: 62, column: 22, scope: !49)
!56 = !DILocation(line: 62, column: 9, scope: !49)
!57 = !DILocation(line: 62, column: 7, scope: !49)
!58 = !DILocation(line: 62, column: 12, scope: !49)
!59 = !DILocation(line: 62, column: 14, scope: !49)
!60 = !DILocation(line: 61, column: 21, scope: !49)
!61 = !DILocation(line: 61, column: 5, scope: !49)
!62 = distinct !{!62, !51, !63}
!63 = !DILocation(line: 62, column: 23, scope: !46)
!64 = !DILocation(line: 59, column: 1, scope: !23)
!65 = distinct !{!65, !64, !66}
!66 = !DILocation(line: 59, column: 25, scope: !23)
!67 = !DILocation(line: 62, column: 23, scope: !23)
!68 = distinct !DISubprogram(name: ".omp_outlined.", scope: !3, file: !3, line: 60, type: !24, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!69 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !68, type: !26, flags: DIFlagArtificial)
!70 = !DILocation(line: 0, scope: !68)
!71 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !68, type: !26, flags: DIFlagArtificial)
!72 = !DILocalVariable(name: "j", arg: 3, scope: !68, type: !30, flags: DIFlagArtificial)
!73 = !DILocation(line: 60, column: 3, scope: !68)
!74 = !{!75}
!75 = !{i64 2, i64 -1, i64 -1, i1 true}
