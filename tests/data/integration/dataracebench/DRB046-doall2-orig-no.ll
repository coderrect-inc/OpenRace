; ModuleID = 'integration/dataracebench/DRB046-doall2-orig-no.c'
source_filename = "integration/dataracebench/DRB046-doall2-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [63 x i8] c";integration/dataracebench/DRB046-doall2-orig-no.c;main;58;1;;\00", align 1
@a = common dso_local global [100 x [100 x i32]] zeroinitializer, align 16, !dbg !0
@2 = private unnamed_addr constant [64 x i8] c";integration/dataracebench/DRB046-doall2-orig-no.c;main;58;36;;\00", align 1
@3 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8

; Function Attrs: nounwind uwtable
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
  %2 = bitcast i32* %i to i8*, !dbg !20
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #4, !dbg !20
  call void @llvm.dbg.declare(metadata i32* %i, metadata !18, metadata !DIExpression()), !dbg !21
  %3 = bitcast i32* %j to i8*, !dbg !20
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #4, !dbg !20
  call void @llvm.dbg.declare(metadata i32* %j, metadata !19, metadata !DIExpression()), !dbg !22
  %4 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !23
  store i8* getelementptr inbounds ([63 x i8], [63 x i8]* @1, i32 0, i32 0), i8** %4, align 8, !dbg !23, !tbaa !24
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 0, void (i32*, i32*, ...)* bitcast (void (i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*)), !dbg !23
  %5 = bitcast i32* %j to i8*, !dbg !30
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %5) #4, !dbg !30
  %6 = bitcast i32* %i to i8*, !dbg !30
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %6) #4, !dbg !30
  ret i32 0, !dbg !31
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid.) #3 !dbg !32 {
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
  %i = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !49
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !40, metadata !DIExpression()), !dbg !50
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !49
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !41, metadata !DIExpression()), !dbg !50
  %2 = bitcast i32* %.omp.iv to i8*, !dbg !51
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #4, !dbg !51
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !42, metadata !DIExpression()), !dbg !50
  %3 = bitcast i32* %.omp.lb to i8*, !dbg !51
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #4, !dbg !51
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !43, metadata !DIExpression()), !dbg !50
  store i32 0, i32* %.omp.lb, align 4, !dbg !52, !tbaa !53
  %4 = bitcast i32* %.omp.ub to i8*, !dbg !51
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #4, !dbg !51
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !44, metadata !DIExpression()), !dbg !50
  store i32 99, i32* %.omp.ub, align 4, !dbg !52, !tbaa !53
  %5 = bitcast i32* %.omp.stride to i8*, !dbg !51
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #4, !dbg !51
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !45, metadata !DIExpression()), !dbg !50
  store i32 1, i32* %.omp.stride, align 4, !dbg !52, !tbaa !53
  %6 = bitcast i32* %.omp.is_last to i8*, !dbg !51
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #4, !dbg !51
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !46, metadata !DIExpression()), !dbg !50
  store i32 0, i32* %.omp.is_last, align 4, !dbg !52, !tbaa !53
  %7 = bitcast i32* %j to i8*, !dbg !51
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #4, !dbg !51
  call void @llvm.dbg.declare(metadata i32* %j, metadata !47, metadata !DIExpression()), !dbg !50
  %8 = bitcast i32* %i to i8*, !dbg !51
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #4, !dbg !51
  call void @llvm.dbg.declare(metadata i32* %i, metadata !48, metadata !DIExpression()), !dbg !50
  %9 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !51
  store i8* getelementptr inbounds ([63 x i8], [63 x i8]* @1, i32 0, i32 0), i8** %9, align 8, !dbg !51, !tbaa !24
  %10 = load i32*, i32** %.global_tid..addr, align 8, !dbg !51
  %11 = load i32, i32* %10, align 4, !dbg !51, !tbaa !53
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %11, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !51
  %12 = load i32, i32* %.omp.ub, align 4, !dbg !52, !tbaa !53
  %cmp = icmp sgt i32 %12, 99, !dbg !52
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !52

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !52

cond.false:                                       ; preds = %entry
  %13 = load i32, i32* %.omp.ub, align 4, !dbg !52, !tbaa !53
  br label %cond.end, !dbg !52

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 99, %cond.true ], [ %13, %cond.false ], !dbg !52
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !52, !tbaa !53
  %14 = load i32, i32* %.omp.lb, align 4, !dbg !52, !tbaa !53
  store i32 %14, i32* %.omp.iv, align 4, !dbg !52, !tbaa !53
  br label %omp.inner.for.cond, !dbg !51

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %15 = load i32, i32* %.omp.iv, align 4, !dbg !52, !tbaa !53
  %16 = load i32, i32* %.omp.ub, align 4, !dbg !52, !tbaa !53
  %cmp1 = icmp sle i32 %15, %16, !dbg !51
  br i1 %cmp1, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !51

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !51

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %17 = load i32, i32* %.omp.iv, align 4, !dbg !52, !tbaa !53
  %mul = mul nsw i32 %17, 1, !dbg !54
  %add = add nsw i32 0, %mul, !dbg !54
  store i32 %add, i32* %i, align 4, !dbg !54, !tbaa !53
  store i32 0, i32* %j, align 4, !dbg !55, !tbaa !53
  br label %for.cond, !dbg !57

for.cond:                                         ; preds = %for.inc, %omp.inner.for.body
  %18 = load i32, i32* %j, align 4, !dbg !58, !tbaa !53
  %cmp2 = icmp slt i32 %18, 100, !dbg !60
  br i1 %cmp2, label %for.body, label %for.end, !dbg !61

for.body:                                         ; preds = %for.cond
  %19 = load i32, i32* %i, align 4, !dbg !62, !tbaa !53
  %idxprom = sext i32 %19 to i64, !dbg !63
  %arrayidx = getelementptr inbounds [100 x [100 x i32]], [100 x [100 x i32]]* @a, i64 0, i64 %idxprom, !dbg !63
  %20 = load i32, i32* %j, align 4, !dbg !64, !tbaa !53
  %idxprom3 = sext i32 %20 to i64, !dbg !63
  %arrayidx4 = getelementptr inbounds [100 x i32], [100 x i32]* %arrayidx, i64 0, i64 %idxprom3, !dbg !63
  %21 = load i32, i32* %arrayidx4, align 4, !dbg !63, !tbaa !53
  %add5 = add nsw i32 %21, 1, !dbg !65
  %22 = load i32, i32* %i, align 4, !dbg !66, !tbaa !53
  %idxprom6 = sext i32 %22 to i64, !dbg !67
  %arrayidx7 = getelementptr inbounds [100 x [100 x i32]], [100 x [100 x i32]]* @a, i64 0, i64 %idxprom6, !dbg !67
  %23 = load i32, i32* %j, align 4, !dbg !68, !tbaa !53
  %idxprom8 = sext i32 %23 to i64, !dbg !67
  %arrayidx9 = getelementptr inbounds [100 x i32], [100 x i32]* %arrayidx7, i64 0, i64 %idxprom8, !dbg !67
  store i32 %add5, i32* %arrayidx9, align 4, !dbg !69, !tbaa !53
  br label %for.inc, !dbg !67

for.inc:                                          ; preds = %for.body
  %24 = load i32, i32* %j, align 4, !dbg !70, !tbaa !53
  %inc = add nsw i32 %24, 1, !dbg !70
  store i32 %inc, i32* %j, align 4, !dbg !70, !tbaa !53
  br label %for.cond, !dbg !71, !llvm.loop !72

for.end:                                          ; preds = %for.cond
  br label %omp.body.continue, !dbg !73

omp.body.continue:                                ; preds = %for.end
  br label %omp.inner.for.inc, !dbg !74

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %25 = load i32, i32* %.omp.iv, align 4, !dbg !52, !tbaa !53
  %add10 = add nsw i32 %25, 1, !dbg !51
  store i32 %add10, i32* %.omp.iv, align 4, !dbg !51, !tbaa !53
  br label %omp.inner.for.cond, !dbg !74, !llvm.loop !75

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !74

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %26 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !74
  store i8* getelementptr inbounds ([64 x i8], [64 x i8]* @2, i32 0, i32 0), i8** %26, align 8, !dbg !74, !tbaa !24
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %11), !dbg !74
  %27 = bitcast i32* %i to i8*, !dbg !74
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %27) #4, !dbg !74
  %28 = bitcast i32* %j to i8*, !dbg !74
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %28) #4, !dbg !74
  %29 = bitcast i32* %.omp.is_last to i8*, !dbg !74
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %29) #4, !dbg !74
  %30 = bitcast i32* %.omp.stride to i8*, !dbg !74
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %30) #4, !dbg !74
  %31 = bitcast i32* %.omp.ub to i8*, !dbg !74
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %31) #4, !dbg !74
  %32 = bitcast i32* %.omp.lb to i8*, !dbg !74
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %32) #4, !dbg !74
  %33 = bitcast i32* %.omp.iv to i8*, !dbg !74
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %33) #4, !dbg !74
  ret void, !dbg !77
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid.) #3 !dbg !78 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !49
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !80, metadata !DIExpression()), !dbg !82
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !49
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !81, metadata !DIExpression()), !dbg !82
  %0 = load i32*, i32** %.global_tid..addr, align 8, !dbg !83, !tbaa !49
  %1 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !83, !tbaa !49
  call void @.omp_outlined._debug__(i32* %0, i32* %1) #4, !dbg !83
  ret void, !dbg !83
}

declare !callback !84 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!10, !11, !12}
!llvm.ident = !{!13}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "a", scope: !2, file: !3, line: 54, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "integration/dataracebench/DRB046-doall2-orig-no.c", directory: "/home/brad/Code/OpenRace/tests/data")
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
!14 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 55, type: !15, scopeLine: 56, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !17)
!15 = !DISubroutineType(types: !16)
!16 = !{!7}
!17 = !{!18, !19}
!18 = !DILocalVariable(name: "i", scope: !14, file: !3, line: 57, type: !7)
!19 = !DILocalVariable(name: "j", scope: !14, file: !3, line: 57, type: !7)
!20 = !DILocation(line: 57, column: 3, scope: !14)
!21 = !DILocation(line: 57, column: 7, scope: !14)
!22 = !DILocation(line: 57, column: 9, scope: !14)
!23 = !DILocation(line: 58, column: 1, scope: !14)
!24 = !{!25, !29, i64 16}
!25 = !{!"ident_t", !26, i64 0, !26, i64 4, !26, i64 8, !26, i64 12, !29, i64 16}
!26 = !{!"int", !27, i64 0}
!27 = !{!"omnipotent char", !28, i64 0}
!28 = !{!"Simple C/C++ TBAA"}
!29 = !{!"any pointer", !27, i64 0}
!30 = !DILocation(line: 63, column: 1, scope: !14)
!31 = !DILocation(line: 62, column: 3, scope: !14)
!32 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !3, file: !3, line: 59, type: !33, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !39)
!33 = !DISubroutineType(types: !34)
!34 = !{null, !35, !35}
!35 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !36)
!36 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !37)
!37 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !38, size: 64)
!38 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!39 = !{!40, !41, !42, !43, !44, !45, !46, !47, !48}
!40 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !32, type: !35, flags: DIFlagArtificial)
!41 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !32, type: !35, flags: DIFlagArtificial)
!42 = !DILocalVariable(name: ".omp.iv", scope: !32, type: !7, flags: DIFlagArtificial)
!43 = !DILocalVariable(name: ".omp.lb", scope: !32, type: !7, flags: DIFlagArtificial)
!44 = !DILocalVariable(name: ".omp.ub", scope: !32, type: !7, flags: DIFlagArtificial)
!45 = !DILocalVariable(name: ".omp.stride", scope: !32, type: !7, flags: DIFlagArtificial)
!46 = !DILocalVariable(name: ".omp.is_last", scope: !32, type: !7, flags: DIFlagArtificial)
!47 = !DILocalVariable(name: "j", scope: !32, type: !7, flags: DIFlagArtificial)
!48 = !DILocalVariable(name: "i", scope: !32, type: !7, flags: DIFlagArtificial)
!49 = !{!29, !29, i64 0}
!50 = !DILocation(line: 0, scope: !32)
!51 = !DILocation(line: 59, column: 3, scope: !32)
!52 = !DILocation(line: 59, column: 8, scope: !32)
!53 = !{!26, !26, i64 0}
!54 = !DILocation(line: 59, column: 18, scope: !32)
!55 = !DILocation(line: 60, column: 11, scope: !56)
!56 = distinct !DILexicalBlock(scope: !32, file: !3, line: 60, column: 5)
!57 = !DILocation(line: 60, column: 10, scope: !56)
!58 = !DILocation(line: 60, column: 14, scope: !59)
!59 = distinct !DILexicalBlock(scope: !56, file: !3, line: 60, column: 5)
!60 = !DILocation(line: 60, column: 15, scope: !59)
!61 = !DILocation(line: 60, column: 5, scope: !56)
!62 = !DILocation(line: 61, column: 17, scope: !59)
!63 = !DILocation(line: 61, column: 15, scope: !59)
!64 = !DILocation(line: 61, column: 20, scope: !59)
!65 = !DILocation(line: 61, column: 22, scope: !59)
!66 = !DILocation(line: 61, column: 9, scope: !59)
!67 = !DILocation(line: 61, column: 7, scope: !59)
!68 = !DILocation(line: 61, column: 12, scope: !59)
!69 = !DILocation(line: 61, column: 14, scope: !59)
!70 = !DILocation(line: 60, column: 21, scope: !59)
!71 = !DILocation(line: 60, column: 5, scope: !59)
!72 = distinct !{!72, !61, !73}
!73 = !DILocation(line: 61, column: 23, scope: !56)
!74 = !DILocation(line: 58, column: 1, scope: !32)
!75 = distinct !{!75, !74, !76}
!76 = !DILocation(line: 58, column: 36, scope: !32)
!77 = !DILocation(line: 61, column: 23, scope: !32)
!78 = distinct !DISubprogram(name: ".omp_outlined.", scope: !3, file: !3, line: 59, type: !33, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !79)
!79 = !{!80, !81}
!80 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !78, type: !35, flags: DIFlagArtificial)
!81 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !78, type: !35, flags: DIFlagArtificial)
!82 = !DILocation(line: 0, scope: !78)
!83 = !DILocation(line: 59, column: 3, scope: !78)
!84 = !{!85}
!85 = !{i64 2, i64 -1, i64 -1, i1 true}
