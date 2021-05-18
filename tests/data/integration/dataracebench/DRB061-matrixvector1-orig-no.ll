; ModuleID = 'integration/dataracebench/DRB061-matrixvector1-orig-no.c'
source_filename = "integration/dataracebench/DRB061-matrixvector1-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [68 x i8] c";integration/dataracebench/DRB061-matrixvector1-orig-no.c;mv;56;1;;\00", align 1
@a = common dso_local global [100 x [100 x double]] zeroinitializer, align 16, !dbg !0
@v = common dso_local global [100 x double] zeroinitializer, align 16, !dbg !6
@v_out = common dso_local global [100 x double] zeroinitializer, align 16, !dbg !12
@2 = private unnamed_addr constant [69 x i8] c";integration/dataracebench/DRB061-matrixvector1-orig-no.c;mv;56;39;;\00", align 1
@3 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8

; Function Attrs: nounwind uwtable
define dso_local i32 @mv() #0 !dbg !20 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  %2 = bitcast i32* %i to i8*, !dbg !27
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #4, !dbg !27
  call void @llvm.dbg.declare(metadata i32* %i, metadata !25, metadata !DIExpression()), !dbg !28
  %3 = bitcast i32* %j to i8*, !dbg !27
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #4, !dbg !27
  call void @llvm.dbg.declare(metadata i32* %j, metadata !26, metadata !DIExpression()), !dbg !29
  %4 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !30
  store i8* getelementptr inbounds ([68 x i8], [68 x i8]* @1, i32 0, i32 0), i8** %4, align 8, !dbg !30, !tbaa !31
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 0, void (i32*, i32*, ...)* bitcast (void (i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*)), !dbg !30
  %5 = bitcast i32* %j to i8*, !dbg !37
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %5) #4, !dbg !37
  %6 = bitcast i32* %i to i8*, !dbg !37
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %6) #4, !dbg !37
  ret i32 0, !dbg !38
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid.) #3 !dbg !39 {
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
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !59
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !47, metadata !DIExpression()), !dbg !60
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !59
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !48, metadata !DIExpression()), !dbg !60
  %2 = bitcast i32* %.omp.iv to i8*, !dbg !61
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #4, !dbg !61
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !49, metadata !DIExpression()), !dbg !60
  %3 = bitcast i32* %.omp.lb to i8*, !dbg !61
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #4, !dbg !61
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !50, metadata !DIExpression()), !dbg !60
  store i32 0, i32* %.omp.lb, align 4, !dbg !62, !tbaa !63
  %4 = bitcast i32* %.omp.ub to i8*, !dbg !61
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #4, !dbg !61
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !51, metadata !DIExpression()), !dbg !60
  store i32 99, i32* %.omp.ub, align 4, !dbg !62, !tbaa !63
  %5 = bitcast i32* %.omp.stride to i8*, !dbg !61
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #4, !dbg !61
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !52, metadata !DIExpression()), !dbg !60
  store i32 1, i32* %.omp.stride, align 4, !dbg !62, !tbaa !63
  %6 = bitcast i32* %.omp.is_last to i8*, !dbg !61
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #4, !dbg !61
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !53, metadata !DIExpression()), !dbg !60
  store i32 0, i32* %.omp.is_last, align 4, !dbg !62, !tbaa !63
  %7 = bitcast i32* %i to i8*, !dbg !61
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #4, !dbg !61
  call void @llvm.dbg.declare(metadata i32* %i, metadata !54, metadata !DIExpression()), !dbg !60
  %8 = bitcast i32* %j to i8*, !dbg !61
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #4, !dbg !61
  call void @llvm.dbg.declare(metadata i32* %j, metadata !55, metadata !DIExpression()), !dbg !60
  %9 = bitcast i32* %i1 to i8*, !dbg !61
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #4, !dbg !61
  call void @llvm.dbg.declare(metadata i32* %i1, metadata !54, metadata !DIExpression()), !dbg !60
  %10 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !61
  store i8* getelementptr inbounds ([68 x i8], [68 x i8]* @1, i32 0, i32 0), i8** %10, align 8, !dbg !61, !tbaa !31
  %11 = load i32*, i32** %.global_tid..addr, align 8, !dbg !61
  %12 = load i32, i32* %11, align 4, !dbg !61, !tbaa !63
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %12, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !61
  %13 = load i32, i32* %.omp.ub, align 4, !dbg !62, !tbaa !63
  %cmp = icmp sgt i32 %13, 99, !dbg !62
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !62

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !62

cond.false:                                       ; preds = %entry
  %14 = load i32, i32* %.omp.ub, align 4, !dbg !62, !tbaa !63
  br label %cond.end, !dbg !62

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 99, %cond.true ], [ %14, %cond.false ], !dbg !62
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !62, !tbaa !63
  %15 = load i32, i32* %.omp.lb, align 4, !dbg !62, !tbaa !63
  store i32 %15, i32* %.omp.iv, align 4, !dbg !62, !tbaa !63
  br label %omp.inner.for.cond, !dbg !61

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %16 = load i32, i32* %.omp.iv, align 4, !dbg !62, !tbaa !63
  %17 = load i32, i32* %.omp.ub, align 4, !dbg !62, !tbaa !63
  %cmp2 = icmp sle i32 %16, %17, !dbg !61
  br i1 %cmp2, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !61

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !61

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %18 = load i32, i32* %.omp.iv, align 4, !dbg !62, !tbaa !63
  %mul = mul nsw i32 %18, 1, !dbg !64
  %add = add nsw i32 0, %mul, !dbg !64
  store i32 %add, i32* %i, align 4, !dbg !64, !tbaa !63
  %19 = bitcast float* %sum to i8*, !dbg !65
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %19) #4, !dbg !65
  call void @llvm.dbg.declare(metadata float* %sum, metadata !56, metadata !DIExpression()), !dbg !66
  store float 0.000000e+00, float* %sum, align 4, !dbg !66, !tbaa !67
  store i32 0, i32* %j, align 4, !dbg !69, !tbaa !63
  br label %for.cond, !dbg !71

for.cond:                                         ; preds = %for.inc, %omp.inner.for.body
  %20 = load i32, i32* %j, align 4, !dbg !72, !tbaa !63
  %cmp3 = icmp slt i32 %20, 100, !dbg !74
  br i1 %cmp3, label %for.body, label %for.end, !dbg !75

for.body:                                         ; preds = %for.cond
  %21 = load i32, i32* %i, align 4, !dbg !76, !tbaa !63
  %idxprom = sext i32 %21 to i64, !dbg !78
  %arrayidx = getelementptr inbounds [100 x [100 x double]], [100 x [100 x double]]* @a, i64 0, i64 %idxprom, !dbg !78
  %22 = load i32, i32* %j, align 4, !dbg !79, !tbaa !63
  %idxprom4 = sext i32 %22 to i64, !dbg !78
  %arrayidx5 = getelementptr inbounds [100 x double], [100 x double]* %arrayidx, i64 0, i64 %idxprom4, !dbg !78
  %23 = load double, double* %arrayidx5, align 8, !dbg !78, !tbaa !80
  %24 = load i32, i32* %j, align 4, !dbg !82, !tbaa !63
  %idxprom6 = sext i32 %24 to i64, !dbg !83
  %arrayidx7 = getelementptr inbounds [100 x double], [100 x double]* @v, i64 0, i64 %idxprom6, !dbg !83
  %25 = load double, double* %arrayidx7, align 8, !dbg !83, !tbaa !80
  %mul8 = fmul double %23, %25, !dbg !84
  %26 = load float, float* %sum, align 4, !dbg !85, !tbaa !67
  %conv = fpext float %26 to double, !dbg !85
  %add9 = fadd double %conv, %mul8, !dbg !85
  %conv10 = fptrunc double %add9 to float, !dbg !85
  store float %conv10, float* %sum, align 4, !dbg !85, !tbaa !67
  br label %for.inc, !dbg !86

for.inc:                                          ; preds = %for.body
  %27 = load i32, i32* %j, align 4, !dbg !87, !tbaa !63
  %inc = add nsw i32 %27, 1, !dbg !87
  store i32 %inc, i32* %j, align 4, !dbg !87, !tbaa !63
  br label %for.cond, !dbg !88, !llvm.loop !89

for.end:                                          ; preds = %for.cond
  %28 = load float, float* %sum, align 4, !dbg !91, !tbaa !67
  %conv11 = fpext float %28 to double, !dbg !91
  %29 = load i32, i32* %i, align 4, !dbg !92, !tbaa !63
  %idxprom12 = sext i32 %29 to i64, !dbg !93
  %arrayidx13 = getelementptr inbounds [100 x double], [100 x double]* @v_out, i64 0, i64 %idxprom12, !dbg !93
  store double %conv11, double* %arrayidx13, align 8, !dbg !94, !tbaa !80
  %30 = bitcast float* %sum to i8*, !dbg !95
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %30) #4, !dbg !95
  br label %omp.body.continue, !dbg !96

omp.body.continue:                                ; preds = %for.end
  br label %omp.inner.for.inc, !dbg !97

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %31 = load i32, i32* %.omp.iv, align 4, !dbg !62, !tbaa !63
  %add14 = add nsw i32 %31, 1, !dbg !61
  store i32 %add14, i32* %.omp.iv, align 4, !dbg !61, !tbaa !63
  br label %omp.inner.for.cond, !dbg !97, !llvm.loop !98

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !97

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %32 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !97
  store i8* getelementptr inbounds ([69 x i8], [69 x i8]* @2, i32 0, i32 0), i8** %32, align 8, !dbg !97, !tbaa !31
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %12), !dbg !97
  %33 = bitcast i32* %i1 to i8*, !dbg !97
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %33) #4, !dbg !97
  %34 = bitcast i32* %j to i8*, !dbg !97
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %34) #4, !dbg !97
  %35 = bitcast i32* %i to i8*, !dbg !97
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %35) #4, !dbg !97
  %36 = bitcast i32* %.omp.is_last to i8*, !dbg !97
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %36) #4, !dbg !97
  %37 = bitcast i32* %.omp.stride to i8*, !dbg !97
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %37) #4, !dbg !97
  %38 = bitcast i32* %.omp.ub to i8*, !dbg !97
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %38) #4, !dbg !97
  %39 = bitcast i32* %.omp.lb to i8*, !dbg !97
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %39) #4, !dbg !97
  %40 = bitcast i32* %.omp.iv to i8*, !dbg !97
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %40) #4, !dbg !97
  ret void, !dbg !95
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid.) #3 !dbg !100 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !59
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !102, metadata !DIExpression()), !dbg !104
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !59
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !103, metadata !DIExpression()), !dbg !104
  %0 = load i32*, i32** %.global_tid..addr, align 8, !dbg !105, !tbaa !59
  %1 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !105, !tbaa !59
  call void @.omp_outlined._debug__(i32* %0, i32* %1) #4, !dbg !105
  ret void, !dbg !105
}

declare !callback !106 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

; Function Attrs: nounwind uwtable
define dso_local i32 @main() #0 !dbg !108 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %call = call i32 @mv(), !dbg !109
  ret i32 0, !dbg !110
}

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!16, !17, !18}
!llvm.ident = !{!19}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "a", scope: !2, file: !3, line: 52, type: !14, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "integration/dataracebench/DRB061-matrixvector1-orig-no.c", directory: "/home/brad/Code/OpenRace/tests/data")
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
!20 = distinct !DISubprogram(name: "mv", scope: !3, file: !3, line: 53, type: !21, scopeLine: 54, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !24)
!21 = !DISubroutineType(types: !22)
!22 = !{!23}
!23 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!24 = !{!25, !26}
!25 = !DILocalVariable(name: "i", scope: !20, file: !3, line: 55, type: !23)
!26 = !DILocalVariable(name: "j", scope: !20, file: !3, line: 55, type: !23)
!27 = !DILocation(line: 55, column: 3, scope: !20)
!28 = !DILocation(line: 55, column: 7, scope: !20)
!29 = !DILocation(line: 55, column: 9, scope: !20)
!30 = !DILocation(line: 56, column: 1, scope: !20)
!31 = !{!32, !36, i64 16}
!32 = !{!"ident_t", !33, i64 0, !33, i64 4, !33, i64 8, !33, i64 12, !36, i64 16}
!33 = !{!"int", !34, i64 0}
!34 = !{!"omnipotent char", !35, i64 0}
!35 = !{!"Simple C/C++ TBAA"}
!36 = !{!"any pointer", !34, i64 0}
!37 = !DILocation(line: 67, column: 1, scope: !20)
!38 = !DILocation(line: 66, column: 3, scope: !20)
!39 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !3, file: !3, line: 57, type: !40, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !46)
!40 = !DISubroutineType(types: !41)
!41 = !{null, !42, !42}
!42 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!43 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !44)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !23)
!46 = !{!47, !48, !49, !50, !51, !52, !53, !54, !55, !54, !56}
!47 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !39, type: !42, flags: DIFlagArtificial)
!48 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !39, type: !42, flags: DIFlagArtificial)
!49 = !DILocalVariable(name: ".omp.iv", scope: !39, type: !23, flags: DIFlagArtificial)
!50 = !DILocalVariable(name: ".omp.lb", scope: !39, type: !23, flags: DIFlagArtificial)
!51 = !DILocalVariable(name: ".omp.ub", scope: !39, type: !23, flags: DIFlagArtificial)
!52 = !DILocalVariable(name: ".omp.stride", scope: !39, type: !23, flags: DIFlagArtificial)
!53 = !DILocalVariable(name: ".omp.is_last", scope: !39, type: !23, flags: DIFlagArtificial)
!54 = !DILocalVariable(name: "i", scope: !39, type: !23, flags: DIFlagArtificial)
!55 = !DILocalVariable(name: "j", scope: !39, type: !23, flags: DIFlagArtificial)
!56 = !DILocalVariable(name: "sum", scope: !57, file: !3, line: 59, type: !58)
!57 = distinct !DILexicalBlock(scope: !39, file: !3, line: 58, column: 3)
!58 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!59 = !{!36, !36, i64 0}
!60 = !DILocation(line: 0, scope: !39)
!61 = !DILocation(line: 57, column: 3, scope: !39)
!62 = !DILocation(line: 57, column: 8, scope: !39)
!63 = !{!33, !33, i64 0}
!64 = !DILocation(line: 57, column: 22, scope: !39)
!65 = !DILocation(line: 59, column: 5, scope: !57)
!66 = !DILocation(line: 59, column: 11, scope: !57)
!67 = !{!68, !68, i64 0}
!68 = !{!"float", !34, i64 0}
!69 = !DILocation(line: 60, column: 12, scope: !70)
!70 = distinct !DILexicalBlock(scope: !57, file: !3, line: 60, column: 5)
!71 = !DILocation(line: 60, column: 10, scope: !70)
!72 = !DILocation(line: 60, column: 17, scope: !73)
!73 = distinct !DILexicalBlock(scope: !70, file: !3, line: 60, column: 5)
!74 = !DILocation(line: 60, column: 19, scope: !73)
!75 = !DILocation(line: 60, column: 5, scope: !70)
!76 = !DILocation(line: 62, column: 16, scope: !77)
!77 = distinct !DILexicalBlock(scope: !73, file: !3, line: 61, column: 5)
!78 = !DILocation(line: 62, column: 14, scope: !77)
!79 = !DILocation(line: 62, column: 19, scope: !77)
!80 = !{!81, !81, i64 0}
!81 = !{!"double", !34, i64 0}
!82 = !DILocation(line: 62, column: 24, scope: !77)
!83 = !DILocation(line: 62, column: 22, scope: !77)
!84 = !DILocation(line: 62, column: 21, scope: !77)
!85 = !DILocation(line: 62, column: 11, scope: !77)
!86 = !DILocation(line: 63, column: 5, scope: !77)
!87 = !DILocation(line: 60, column: 25, scope: !73)
!88 = !DILocation(line: 60, column: 5, scope: !73)
!89 = distinct !{!89, !75, !90}
!90 = !DILocation(line: 63, column: 5, scope: !70)
!91 = !DILocation(line: 64, column: 16, scope: !57)
!92 = !DILocation(line: 64, column: 11, scope: !57)
!93 = !DILocation(line: 64, column: 5, scope: !57)
!94 = !DILocation(line: 64, column: 14, scope: !57)
!95 = !DILocation(line: 65, column: 3, scope: !39)
!96 = !DILocation(line: 65, column: 3, scope: !57)
!97 = !DILocation(line: 56, column: 1, scope: !39)
!98 = distinct !{!98, !97, !99}
!99 = !DILocation(line: 56, column: 39, scope: !39)
!100 = distinct !DISubprogram(name: ".omp_outlined.", scope: !3, file: !3, line: 57, type: !40, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !101)
!101 = !{!102, !103}
!102 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !100, type: !42, flags: DIFlagArtificial)
!103 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !100, type: !42, flags: DIFlagArtificial)
!104 = !DILocation(line: 0, scope: !100)
!105 = !DILocation(line: 57, column: 3, scope: !100)
!106 = !{!107}
!107 = !{i64 2, i64 -1, i64 -1, i1 true}
!108 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 69, type: !21, scopeLine: 70, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4)
!109 = !DILocation(line: 71, column: 3, scope: !108)
!110 = !DILocation(line: 72, column: 3, scope: !108)
