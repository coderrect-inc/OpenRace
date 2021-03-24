; ModuleID = 'DRB093-doall2-collapse-orig-no.c'
source_filename = "DRB093-doall2-collapse-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [46 x i8] c";DRB093-doall2-collapse-orig-no.c;main;56;1;;\00", align 1
@a = common dso_local global [100 x [100 x i32]] zeroinitializer, align 16, !dbg !0
@2 = private unnamed_addr constant [47 x i8] c";DRB093-doall2-collapse-orig-no.c;main;56;37;;\00", align 1
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
  store i8* getelementptr inbounds ([46 x i8], [46 x i8]* @1, i32 0, i32 0), i8** %2, align 8, !dbg !21
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 0, void (i32*, i32*, ...)* bitcast (void (i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*)), !dbg !21
  ret i32 0, !dbg !22
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid.) #2 !dbg !23 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %.omp.iv = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp1 = alloca i32, align 4
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !30, metadata !DIExpression()), !dbg !31
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !32, metadata !DIExpression()), !dbg !31
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !33, metadata !DIExpression()), !dbg !31
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !34, metadata !DIExpression()), !dbg !31
  store i32 0, i32* %.omp.lb, align 4, !dbg !35
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !36, metadata !DIExpression()), !dbg !31
  store i32 9999, i32* %.omp.ub, align 4, !dbg !35
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !37, metadata !DIExpression()), !dbg !31
  store i32 1, i32* %.omp.stride, align 4, !dbg !35
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !38, metadata !DIExpression()), !dbg !31
  store i32 0, i32* %.omp.is_last, align 4, !dbg !35
  call void @llvm.dbg.declare(metadata i32* %i, metadata !39, metadata !DIExpression()), !dbg !31
  call void @llvm.dbg.declare(metadata i32* %j, metadata !40, metadata !DIExpression()), !dbg !31
  %2 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !41
  store i8* getelementptr inbounds ([46 x i8], [46 x i8]* @1, i32 0, i32 0), i8** %2, align 8, !dbg !41
  %3 = load i32*, i32** %.global_tid..addr, align 8, !dbg !41
  %4 = load i32, i32* %3, align 4, !dbg !41
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %4, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !41
  %5 = load i32, i32* %.omp.ub, align 4, !dbg !35
  %cmp = icmp sgt i32 %5, 9999, !dbg !35
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !35

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !35

cond.false:                                       ; preds = %entry
  %6 = load i32, i32* %.omp.ub, align 4, !dbg !35
  br label %cond.end, !dbg !35

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 9999, %cond.true ], [ %6, %cond.false ], !dbg !35
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !35
  %7 = load i32, i32* %.omp.lb, align 4, !dbg !35
  store i32 %7, i32* %.omp.iv, align 4, !dbg !35
  br label %omp.inner.for.cond, !dbg !41

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %8 = load i32, i32* %.omp.iv, align 4, !dbg !35
  %9 = load i32, i32* %.omp.ub, align 4, !dbg !35
  %cmp2 = icmp sle i32 %8, %9, !dbg !41
  br i1 %cmp2, label %omp.inner.for.body, label %omp.inner.for.end, !dbg !41

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %10 = load i32, i32* %.omp.iv, align 4, !dbg !35
  %div = sdiv i32 %10, 100, !dbg !42
  %mul = mul nsw i32 %div, 1, !dbg !42
  %add = add nsw i32 0, %mul, !dbg !42
  store i32 %add, i32* %i, align 4, !dbg !42
  %11 = load i32, i32* %.omp.iv, align 4, !dbg !35
  %12 = load i32, i32* %.omp.iv, align 4, !dbg !35
  %div3 = sdiv i32 %12, 100, !dbg !42
  %mul4 = mul nsw i32 %div3, 100, !dbg !42
  %sub = sub nsw i32 %11, %mul4, !dbg !42
  %mul5 = mul nsw i32 %sub, 1, !dbg !43
  %add6 = add nsw i32 0, %mul5, !dbg !43
  store i32 %add6, i32* %j, align 4, !dbg !43
  %13 = load i32, i32* %i, align 4, !dbg !44
  %idxprom = sext i32 %13 to i64, !dbg !45
  %arrayidx = getelementptr inbounds [100 x [100 x i32]], [100 x [100 x i32]]* @a, i64 0, i64 %idxprom, !dbg !45
  %14 = load i32, i32* %j, align 4, !dbg !46
  %idxprom7 = sext i32 %14 to i64, !dbg !45
  %arrayidx8 = getelementptr inbounds [100 x i32], [100 x i32]* %arrayidx, i64 0, i64 %idxprom7, !dbg !45
  %15 = load i32, i32* %arrayidx8, align 4, !dbg !45
  %add9 = add nsw i32 %15, 1, !dbg !47
  %16 = load i32, i32* %i, align 4, !dbg !48
  %idxprom10 = sext i32 %16 to i64, !dbg !49
  %arrayidx11 = getelementptr inbounds [100 x [100 x i32]], [100 x [100 x i32]]* @a, i64 0, i64 %idxprom10, !dbg !49
  %17 = load i32, i32* %j, align 4, !dbg !50
  %idxprom12 = sext i32 %17 to i64, !dbg !49
  %arrayidx13 = getelementptr inbounds [100 x i32], [100 x i32]* %arrayidx11, i64 0, i64 %idxprom12, !dbg !49
  store i32 %add9, i32* %arrayidx13, align 4, !dbg !51
  br label %omp.body.continue, !dbg !49

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !52

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %18 = load i32, i32* %.omp.iv, align 4, !dbg !35
  %add14 = add nsw i32 %18, 1, !dbg !41
  store i32 %add14, i32* %.omp.iv, align 4, !dbg !41
  br label %omp.inner.for.cond, !dbg !52, !llvm.loop !53

omp.inner.for.end:                                ; preds = %omp.inner.for.cond
  br label %omp.loop.exit, !dbg !52

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %19 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !52
  store i8* getelementptr inbounds ([47 x i8], [47 x i8]* @2, i32 0, i32 0), i8** %19, align 8, !dbg !52
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %4), !dbg !52
  ret void, !dbg !55
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid.) #2 !dbg !56 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !57, metadata !DIExpression()), !dbg !58
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !59, metadata !DIExpression()), !dbg !58
  %0 = load i32*, i32** %.global_tid..addr, align 8, !dbg !60
  %1 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !60
  call void @.omp_outlined._debug__(i32* %0, i32* %1) #4, !dbg !60
  ret void, !dbg !60
}

declare !callback !61 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noinline norecurse nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!10, !11, !12}
!llvm.ident = !{!13}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "a", scope: !2, file: !3, line: 52, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.1 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "DRB093-doall2-collapse-orig-no.c", directory: "/home/yanze/code/OpenRace/tests/data/integration/dataracebench")
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
!14 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 53, type: !15, scopeLine: 54, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!15 = !DISubroutineType(types: !16)
!16 = !{!7}
!17 = !DILocalVariable(name: "i", scope: !14, file: !3, line: 55, type: !7)
!18 = !DILocation(line: 55, column: 7, scope: !14)
!19 = !DILocalVariable(name: "j", scope: !14, file: !3, line: 55, type: !7)
!20 = !DILocation(line: 55, column: 9, scope: !14)
!21 = !DILocation(line: 56, column: 1, scope: !14)
!22 = !DILocation(line: 60, column: 3, scope: !14)
!23 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !3, file: !3, line: 57, type: !24, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!24 = !DISubroutineType(types: !25)
!25 = !{null, !26, !26}
!26 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !27)
!27 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !28)
!28 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !29, size: 64)
!29 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!30 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !23, type: !26, flags: DIFlagArtificial)
!31 = !DILocation(line: 0, scope: !23)
!32 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !23, type: !26, flags: DIFlagArtificial)
!33 = !DILocalVariable(name: ".omp.iv", scope: !23, type: !7, flags: DIFlagArtificial)
!34 = !DILocalVariable(name: ".omp.lb", scope: !23, type: !7, flags: DIFlagArtificial)
!35 = !DILocation(line: 57, column: 8, scope: !23)
!36 = !DILocalVariable(name: ".omp.ub", scope: !23, type: !7, flags: DIFlagArtificial)
!37 = !DILocalVariable(name: ".omp.stride", scope: !23, type: !7, flags: DIFlagArtificial)
!38 = !DILocalVariable(name: ".omp.is_last", scope: !23, type: !7, flags: DIFlagArtificial)
!39 = !DILocalVariable(name: "i", scope: !23, type: !7, flags: DIFlagArtificial)
!40 = !DILocalVariable(name: "j", scope: !23, type: !7, flags: DIFlagArtificial)
!41 = !DILocation(line: 57, column: 3, scope: !23)
!42 = !DILocation(line: 57, column: 18, scope: !23)
!43 = !DILocation(line: 58, column: 20, scope: !23)
!44 = !DILocation(line: 59, column: 17, scope: !23)
!45 = !DILocation(line: 59, column: 15, scope: !23)
!46 = !DILocation(line: 59, column: 20, scope: !23)
!47 = !DILocation(line: 59, column: 22, scope: !23)
!48 = !DILocation(line: 59, column: 9, scope: !23)
!49 = !DILocation(line: 59, column: 7, scope: !23)
!50 = !DILocation(line: 59, column: 12, scope: !23)
!51 = !DILocation(line: 59, column: 14, scope: !23)
!52 = !DILocation(line: 56, column: 1, scope: !23)
!53 = distinct !{!53, !52, !54}
!54 = !DILocation(line: 56, column: 37, scope: !23)
!55 = !DILocation(line: 59, column: 23, scope: !23)
!56 = distinct !DISubprogram(name: ".omp_outlined.", scope: !3, file: !3, line: 57, type: !24, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!57 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !56, type: !26, flags: DIFlagArtificial)
!58 = !DILocation(line: 0, scope: !56)
!59 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !56, type: !26, flags: DIFlagArtificial)
!60 = !DILocation(line: 57, column: 3, scope: !56)
!61 = !{!62}
!62 = !{i64 2, i64 -1, i64 -1, i1 true}
