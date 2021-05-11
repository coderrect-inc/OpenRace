; ModuleID = 'integration/dataracebench/DRB047-doallchar-orig-no.c'
source_filename = "integration/dataracebench/DRB047-doallchar-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [66 x i8] c";integration/dataracebench/DRB047-doallchar-orig-no.c;main;57;1;;\00", align 1
@a = common dso_local global [100 x i8] zeroinitializer, align 16, !dbg !0
@2 = private unnamed_addr constant [67 x i8] c";integration/dataracebench/DRB047-doallchar-orig-no.c;main;57;25;;\00", align 1
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
  %2 = bitcast i32* %i to i8*, !dbg !20
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #4, !dbg !20
  call void @llvm.dbg.declare(metadata i32* %i, metadata !19, metadata !DIExpression()), !dbg !21
  %3 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !22
  store i8* getelementptr inbounds ([66 x i8], [66 x i8]* @1, i32 0, i32 0), i8** %3, align 8, !dbg !22, !tbaa !23
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 0, void (i32*, i32*, ...)* bitcast (void (i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*)), !dbg !22
  %4 = bitcast i32* %i to i8*, !dbg !29
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %4) #4, !dbg !29
  ret i32 0, !dbg !30
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid.) #3 !dbg !31 {
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
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !47
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !39, metadata !DIExpression()), !dbg !48
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !47
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !40, metadata !DIExpression()), !dbg !48
  %2 = bitcast i32* %.omp.iv to i8*, !dbg !49
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #4, !dbg !49
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !41, metadata !DIExpression()), !dbg !48
  %3 = bitcast i32* %.omp.lb to i8*, !dbg !49
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #4, !dbg !49
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !42, metadata !DIExpression()), !dbg !48
  store i32 0, i32* %.omp.lb, align 4, !dbg !50, !tbaa !51
  %4 = bitcast i32* %.omp.ub to i8*, !dbg !49
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #4, !dbg !49
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !43, metadata !DIExpression()), !dbg !48
  store i32 99, i32* %.omp.ub, align 4, !dbg !50, !tbaa !51
  %5 = bitcast i32* %.omp.stride to i8*, !dbg !49
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #4, !dbg !49
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !44, metadata !DIExpression()), !dbg !48
  store i32 1, i32* %.omp.stride, align 4, !dbg !50, !tbaa !51
  %6 = bitcast i32* %.omp.is_last to i8*, !dbg !49
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #4, !dbg !49
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !45, metadata !DIExpression()), !dbg !48
  store i32 0, i32* %.omp.is_last, align 4, !dbg !50, !tbaa !51
  %7 = bitcast i32* %i to i8*, !dbg !49
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #4, !dbg !49
  call void @llvm.dbg.declare(metadata i32* %i, metadata !46, metadata !DIExpression()), !dbg !48
  %8 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !49
  store i8* getelementptr inbounds ([66 x i8], [66 x i8]* @1, i32 0, i32 0), i8** %8, align 8, !dbg !49, !tbaa !23
  %9 = load i32*, i32** %.global_tid..addr, align 8, !dbg !49
  %10 = load i32, i32* %9, align 4, !dbg !49, !tbaa !51
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %10, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !49
  %11 = load i32, i32* %.omp.ub, align 4, !dbg !50, !tbaa !51
  %cmp = icmp sgt i32 %11, 99, !dbg !50
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !50

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !50

cond.false:                                       ; preds = %entry
  %12 = load i32, i32* %.omp.ub, align 4, !dbg !50, !tbaa !51
  br label %cond.end, !dbg !50

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 99, %cond.true ], [ %12, %cond.false ], !dbg !50
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !50, !tbaa !51
  %13 = load i32, i32* %.omp.lb, align 4, !dbg !50, !tbaa !51
  store i32 %13, i32* %.omp.iv, align 4, !dbg !50, !tbaa !51
  br label %omp.inner.for.cond, !dbg !49

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %14 = load i32, i32* %.omp.iv, align 4, !dbg !50, !tbaa !51
  %15 = load i32, i32* %.omp.ub, align 4, !dbg !50, !tbaa !51
  %cmp1 = icmp sle i32 %14, %15, !dbg !49
  br i1 %cmp1, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !49

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !49

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %16 = load i32, i32* %.omp.iv, align 4, !dbg !50, !tbaa !51
  %mul = mul nsw i32 %16, 1, !dbg !52
  %add = add nsw i32 0, %mul, !dbg !52
  store i32 %add, i32* %i, align 4, !dbg !52, !tbaa !51
  %17 = load i32, i32* %i, align 4, !dbg !53, !tbaa !51
  %idxprom = sext i32 %17 to i64, !dbg !54
  %arrayidx = getelementptr inbounds [100 x i8], [100 x i8]* @a, i64 0, i64 %idxprom, !dbg !54
  %18 = load i8, i8* %arrayidx, align 1, !dbg !54, !tbaa !55
  %conv = sext i8 %18 to i32, !dbg !54
  %add2 = add nsw i32 %conv, 1, !dbg !56
  %conv3 = trunc i32 %add2 to i8, !dbg !54
  %19 = load i32, i32* %i, align 4, !dbg !57, !tbaa !51
  %idxprom4 = sext i32 %19 to i64, !dbg !58
  %arrayidx5 = getelementptr inbounds [100 x i8], [100 x i8]* @a, i64 0, i64 %idxprom4, !dbg !58
  store i8 %conv3, i8* %arrayidx5, align 1, !dbg !59, !tbaa !55
  br label %omp.body.continue, !dbg !58

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !60

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %20 = load i32, i32* %.omp.iv, align 4, !dbg !50, !tbaa !51
  %add6 = add nsw i32 %20, 1, !dbg !49
  store i32 %add6, i32* %.omp.iv, align 4, !dbg !49, !tbaa !51
  br label %omp.inner.for.cond, !dbg !60, !llvm.loop !61

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !60

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %21 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !60
  store i8* getelementptr inbounds ([67 x i8], [67 x i8]* @2, i32 0, i32 0), i8** %21, align 8, !dbg !60, !tbaa !23
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %10), !dbg !60
  %22 = bitcast i32* %i to i8*, !dbg !60
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %22) #4, !dbg !60
  %23 = bitcast i32* %.omp.is_last to i8*, !dbg !60
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %23) #4, !dbg !60
  %24 = bitcast i32* %.omp.stride to i8*, !dbg !60
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %24) #4, !dbg !60
  %25 = bitcast i32* %.omp.ub to i8*, !dbg !60
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %25) #4, !dbg !60
  %26 = bitcast i32* %.omp.lb to i8*, !dbg !60
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %26) #4, !dbg !60
  %27 = bitcast i32* %.omp.iv to i8*, !dbg !60
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %27) #4, !dbg !60
  ret void, !dbg !63
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid.) #3 !dbg !64 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !47
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !66, metadata !DIExpression()), !dbg !68
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !47
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !67, metadata !DIExpression()), !dbg !68
  %0 = load i32*, i32** %.global_tid..addr, align 8, !dbg !69, !tbaa !47
  %1 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !69, !tbaa !47
  call void @.omp_outlined._debug__(i32* %0, i32* %1) #4, !dbg !69
  ret void, !dbg !69
}

declare !callback !70 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!10, !11, !12}
!llvm.ident = !{!13}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "a", scope: !2, file: !3, line: 53, type: !6, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "integration/dataracebench/DRB047-doallchar-orig-no.c", directory: "/home/brad/Code/OpenRace/tests/data")
!4 = !{}
!5 = !{!0}
!6 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, size: 800, elements: !8)
!7 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!8 = !{!9}
!9 = !DISubrange(count: 100)
!10 = !{i32 7, !"Dwarf Version", i32 4}
!11 = !{i32 2, !"Debug Info Version", i32 3}
!12 = !{i32 1, !"wchar_size", i32 4}
!13 = !{!"clang version 10.0.1 "}
!14 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 54, type: !15, scopeLine: 55, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !18)
!15 = !DISubroutineType(types: !16)
!16 = !{!17}
!17 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!18 = !{!19}
!19 = !DILocalVariable(name: "i", scope: !14, file: !3, line: 56, type: !17)
!20 = !DILocation(line: 56, column: 3, scope: !14)
!21 = !DILocation(line: 56, column: 7, scope: !14)
!22 = !DILocation(line: 57, column: 1, scope: !14)
!23 = !{!24, !28, i64 16}
!24 = !{!"ident_t", !25, i64 0, !25, i64 4, !25, i64 8, !25, i64 12, !28, i64 16}
!25 = !{!"int", !26, i64 0}
!26 = !{!"omnipotent char", !27, i64 0}
!27 = !{!"Simple C/C++ TBAA"}
!28 = !{!"any pointer", !26, i64 0}
!29 = !DILocation(line: 61, column: 1, scope: !14)
!30 = !DILocation(line: 60, column: 3, scope: !14)
!31 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !3, file: !3, line: 58, type: !32, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !38)
!32 = !DISubroutineType(types: !33)
!33 = !{null, !34, !34}
!34 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !35)
!35 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !36)
!36 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !37, size: 64)
!37 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !17)
!38 = !{!39, !40, !41, !42, !43, !44, !45, !46}
!39 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !31, type: !34, flags: DIFlagArtificial)
!40 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !31, type: !34, flags: DIFlagArtificial)
!41 = !DILocalVariable(name: ".omp.iv", scope: !31, type: !17, flags: DIFlagArtificial)
!42 = !DILocalVariable(name: ".omp.lb", scope: !31, type: !17, flags: DIFlagArtificial)
!43 = !DILocalVariable(name: ".omp.ub", scope: !31, type: !17, flags: DIFlagArtificial)
!44 = !DILocalVariable(name: ".omp.stride", scope: !31, type: !17, flags: DIFlagArtificial)
!45 = !DILocalVariable(name: ".omp.is_last", scope: !31, type: !17, flags: DIFlagArtificial)
!46 = !DILocalVariable(name: "i", scope: !31, type: !17, flags: DIFlagArtificial)
!47 = !{!28, !28, i64 0}
!48 = !DILocation(line: 0, scope: !31)
!49 = !DILocation(line: 58, column: 3, scope: !31)
!50 = !DILocation(line: 58, column: 8, scope: !31)
!51 = !{!25, !25, i64 0}
!52 = !DILocation(line: 58, column: 18, scope: !31)
!53 = !DILocation(line: 59, column: 12, scope: !31)
!54 = !DILocation(line: 59, column: 10, scope: !31)
!55 = !{!26, !26, i64 0}
!56 = !DILocation(line: 59, column: 14, scope: !31)
!57 = !DILocation(line: 59, column: 7, scope: !31)
!58 = !DILocation(line: 59, column: 5, scope: !31)
!59 = !DILocation(line: 59, column: 9, scope: !31)
!60 = !DILocation(line: 57, column: 1, scope: !31)
!61 = distinct !{!61, !60, !62}
!62 = !DILocation(line: 57, column: 25, scope: !31)
!63 = !DILocation(line: 59, column: 15, scope: !31)
!64 = distinct !DISubprogram(name: ".omp_outlined.", scope: !3, file: !3, line: 58, type: !32, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !65)
!65 = !{!66, !67}
!66 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !64, type: !34, flags: DIFlagArtificial)
!67 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !64, type: !34, flags: DIFlagArtificial)
!68 = !DILocation(line: 0, scope: !64)
!69 = !DILocation(line: 58, column: 3, scope: !64)
!70 = !{!71}
!71 = !{i64 2, i64 -1, i64 -1, i1 true}
