; ModuleID = 'integration/dataracebench/DRB045-doall1-orig-no.c'
source_filename = "integration/dataracebench/DRB045-doall1-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [63 x i8] c";integration/dataracebench/DRB045-doall1-orig-no.c;main;54;1;;\00", align 1
@a = common dso_local global [100 x i32] zeroinitializer, align 16, !dbg !0
@2 = private unnamed_addr constant [64 x i8] c";integration/dataracebench/DRB045-doall1-orig-no.c;main;54;25;;\00", align 1
@3 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8

; Function Attrs: nounwind uwtable
define dso_local i32 @main() #0 !dbg !14 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32 0, i32* %retval, align 4
  %2 = bitcast i32* %i to i8*, !dbg !19
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #4, !dbg !19
  call void @llvm.dbg.declare(metadata i32* %i, metadata !18, metadata !DIExpression()), !dbg !20
  %3 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !21
  store i8* getelementptr inbounds ([63 x i8], [63 x i8]* @1, i32 0, i32 0), i8** %3, align 8, !dbg !21, !tbaa !22
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 0, void (i32*, i32*, ...)* bitcast (void (i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*)), !dbg !21
  %4 = bitcast i32* %i to i8*, !dbg !28
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %4) #4, !dbg !28
  ret i32 0, !dbg !29
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid.) #3 !dbg !30 {
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
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !46
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !38, metadata !DIExpression()), !dbg !47
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !46
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !39, metadata !DIExpression()), !dbg !47
  %2 = bitcast i32* %.omp.iv to i8*, !dbg !48
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #4, !dbg !48
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !40, metadata !DIExpression()), !dbg !47
  %3 = bitcast i32* %.omp.lb to i8*, !dbg !48
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #4, !dbg !48
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !41, metadata !DIExpression()), !dbg !47
  store i32 0, i32* %.omp.lb, align 4, !dbg !49, !tbaa !50
  %4 = bitcast i32* %.omp.ub to i8*, !dbg !48
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #4, !dbg !48
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !42, metadata !DIExpression()), !dbg !47
  store i32 99, i32* %.omp.ub, align 4, !dbg !49, !tbaa !50
  %5 = bitcast i32* %.omp.stride to i8*, !dbg !48
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #4, !dbg !48
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !43, metadata !DIExpression()), !dbg !47
  store i32 1, i32* %.omp.stride, align 4, !dbg !49, !tbaa !50
  %6 = bitcast i32* %.omp.is_last to i8*, !dbg !48
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #4, !dbg !48
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !44, metadata !DIExpression()), !dbg !47
  store i32 0, i32* %.omp.is_last, align 4, !dbg !49, !tbaa !50
  %7 = bitcast i32* %i to i8*, !dbg !48
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #4, !dbg !48
  call void @llvm.dbg.declare(metadata i32* %i, metadata !45, metadata !DIExpression()), !dbg !47
  %8 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !48
  store i8* getelementptr inbounds ([63 x i8], [63 x i8]* @1, i32 0, i32 0), i8** %8, align 8, !dbg !48, !tbaa !22
  %9 = load i32*, i32** %.global_tid..addr, align 8, !dbg !48
  %10 = load i32, i32* %9, align 4, !dbg !48, !tbaa !50
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %10, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !48
  %11 = load i32, i32* %.omp.ub, align 4, !dbg !49, !tbaa !50
  %cmp = icmp sgt i32 %11, 99, !dbg !49
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !49

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !49

cond.false:                                       ; preds = %entry
  %12 = load i32, i32* %.omp.ub, align 4, !dbg !49, !tbaa !50
  br label %cond.end, !dbg !49

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 99, %cond.true ], [ %12, %cond.false ], !dbg !49
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !49, !tbaa !50
  %13 = load i32, i32* %.omp.lb, align 4, !dbg !49, !tbaa !50
  store i32 %13, i32* %.omp.iv, align 4, !dbg !49, !tbaa !50
  br label %omp.inner.for.cond, !dbg !48

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %14 = load i32, i32* %.omp.iv, align 4, !dbg !49, !tbaa !50
  %15 = load i32, i32* %.omp.ub, align 4, !dbg !49, !tbaa !50
  %cmp1 = icmp sle i32 %14, %15, !dbg !48
  br i1 %cmp1, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !48

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !48

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %16 = load i32, i32* %.omp.iv, align 4, !dbg !49, !tbaa !50
  %mul = mul nsw i32 %16, 1, !dbg !51
  %add = add nsw i32 0, %mul, !dbg !51
  store i32 %add, i32* %i, align 4, !dbg !51, !tbaa !50
  %17 = load i32, i32* %i, align 4, !dbg !52, !tbaa !50
  %idxprom = sext i32 %17 to i64, !dbg !53
  %arrayidx = getelementptr inbounds [100 x i32], [100 x i32]* @a, i64 0, i64 %idxprom, !dbg !53
  %18 = load i32, i32* %arrayidx, align 4, !dbg !53, !tbaa !50
  %add2 = add nsw i32 %18, 1, !dbg !54
  %19 = load i32, i32* %i, align 4, !dbg !55, !tbaa !50
  %idxprom3 = sext i32 %19 to i64, !dbg !56
  %arrayidx4 = getelementptr inbounds [100 x i32], [100 x i32]* @a, i64 0, i64 %idxprom3, !dbg !56
  store i32 %add2, i32* %arrayidx4, align 4, !dbg !57, !tbaa !50
  br label %omp.body.continue, !dbg !56

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !58

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %20 = load i32, i32* %.omp.iv, align 4, !dbg !49, !tbaa !50
  %add5 = add nsw i32 %20, 1, !dbg !48
  store i32 %add5, i32* %.omp.iv, align 4, !dbg !48, !tbaa !50
  br label %omp.inner.for.cond, !dbg !58, !llvm.loop !59

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !58

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %21 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !58
  store i8* getelementptr inbounds ([64 x i8], [64 x i8]* @2, i32 0, i32 0), i8** %21, align 8, !dbg !58, !tbaa !22
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %10), !dbg !58
  %22 = bitcast i32* %i to i8*, !dbg !58
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %22) #4, !dbg !58
  %23 = bitcast i32* %.omp.is_last to i8*, !dbg !58
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %23) #4, !dbg !58
  %24 = bitcast i32* %.omp.stride to i8*, !dbg !58
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %24) #4, !dbg !58
  %25 = bitcast i32* %.omp.ub to i8*, !dbg !58
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %25) #4, !dbg !58
  %26 = bitcast i32* %.omp.lb to i8*, !dbg !58
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %26) #4, !dbg !58
  %27 = bitcast i32* %.omp.iv to i8*, !dbg !58
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %27) #4, !dbg !58
  ret void, !dbg !61
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid.) #3 !dbg !62 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !46
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !64, metadata !DIExpression()), !dbg !66
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !46
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !65, metadata !DIExpression()), !dbg !66
  %0 = load i32*, i32** %.global_tid..addr, align 8, !dbg !67, !tbaa !46
  %1 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !67, !tbaa !46
  call void @.omp_outlined._debug__(i32* %0, i32* %1) #4, !dbg !67
  ret void, !dbg !67
}

declare !callback !68 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!10, !11, !12}
!llvm.ident = !{!13}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "a", scope: !2, file: !3, line: 50, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "integration/dataracebench/DRB045-doall1-orig-no.c", directory: "/home/brad/Code/OpenRace/tests/data")
!4 = !{}
!5 = !{!0}
!6 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 3200, elements: !8)
!7 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!8 = !{!9}
!9 = !DISubrange(count: 100)
!10 = !{i32 7, !"Dwarf Version", i32 4}
!11 = !{i32 2, !"Debug Info Version", i32 3}
!12 = !{i32 1, !"wchar_size", i32 4}
!13 = !{!"clang version 10.0.1 "}
!14 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 51, type: !15, scopeLine: 52, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !17)
!15 = !DISubroutineType(types: !16)
!16 = !{!7}
!17 = !{!18}
!18 = !DILocalVariable(name: "i", scope: !14, file: !3, line: 53, type: !7)
!19 = !DILocation(line: 53, column: 1, scope: !14)
!20 = !DILocation(line: 53, column: 5, scope: !14)
!21 = !DILocation(line: 54, column: 1, scope: !14)
!22 = !{!23, !27, i64 16}
!23 = !{!"ident_t", !24, i64 0, !24, i64 4, !24, i64 8, !24, i64 12, !27, i64 16}
!24 = !{!"int", !25, i64 0}
!25 = !{!"omnipotent char", !26, i64 0}
!26 = !{!"Simple C/C++ TBAA"}
!27 = !{!"any pointer", !25, i64 0}
!28 = !DILocation(line: 58, column: 1, scope: !14)
!29 = !DILocation(line: 57, column: 3, scope: !14)
!30 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !3, file: !3, line: 55, type: !31, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !37)
!31 = !DISubroutineType(types: !32)
!32 = !{null, !33, !33}
!33 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !34)
!34 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !35)
!35 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !36, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!37 = !{!38, !39, !40, !41, !42, !43, !44, !45}
!38 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !30, type: !33, flags: DIFlagArtificial)
!39 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !30, type: !33, flags: DIFlagArtificial)
!40 = !DILocalVariable(name: ".omp.iv", scope: !30, type: !7, flags: DIFlagArtificial)
!41 = !DILocalVariable(name: ".omp.lb", scope: !30, type: !7, flags: DIFlagArtificial)
!42 = !DILocalVariable(name: ".omp.ub", scope: !30, type: !7, flags: DIFlagArtificial)
!43 = !DILocalVariable(name: ".omp.stride", scope: !30, type: !7, flags: DIFlagArtificial)
!44 = !DILocalVariable(name: ".omp.is_last", scope: !30, type: !7, flags: DIFlagArtificial)
!45 = !DILocalVariable(name: "i", scope: !30, type: !7, flags: DIFlagArtificial)
!46 = !{!27, !27, i64 0}
!47 = !DILocation(line: 0, scope: !30)
!48 = !DILocation(line: 55, column: 3, scope: !30)
!49 = !DILocation(line: 55, column: 8, scope: !30)
!50 = !{!24, !24, i64 0}
!51 = !DILocation(line: 55, column: 18, scope: !30)
!52 = !DILocation(line: 56, column: 12, scope: !30)
!53 = !DILocation(line: 56, column: 10, scope: !30)
!54 = !DILocation(line: 56, column: 14, scope: !30)
!55 = !DILocation(line: 56, column: 7, scope: !30)
!56 = !DILocation(line: 56, column: 5, scope: !30)
!57 = !DILocation(line: 56, column: 9, scope: !30)
!58 = !DILocation(line: 54, column: 1, scope: !30)
!59 = distinct !{!59, !58, !60}
!60 = !DILocation(line: 54, column: 25, scope: !30)
!61 = !DILocation(line: 56, column: 15, scope: !30)
!62 = distinct !DISubprogram(name: ".omp_outlined.", scope: !3, file: !3, line: 55, type: !31, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !63)
!63 = !{!64, !65}
!64 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !62, type: !33, flags: DIFlagArtificial)
!65 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !62, type: !33, flags: DIFlagArtificial)
!66 = !DILocation(line: 0, scope: !62)
!67 = !DILocation(line: 55, column: 3, scope: !62)
!68 = !{!69}
!69 = !{i64 2, i64 -1, i64 -1, i1 true}
