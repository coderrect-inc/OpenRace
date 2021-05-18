; ModuleID = 'integration/dataracebench/DRB064-outeronly2-orig-no.c'
source_filename = "integration/dataracebench/DRB064-outeronly2-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@n = dso_local global i32 100, align 4, !dbg !0
@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [66 x i8] c";integration/dataracebench/DRB064-outeronly2-orig-no.c;foo;59;1;;\00", align 1
@m = dso_local global i32 100, align 4, !dbg !12
@b = common dso_local global [100 x [100 x double]] zeroinitializer, align 16, !dbg !6
@2 = private unnamed_addr constant [67 x i8] c";integration/dataracebench/DRB064-outeronly2-orig-no.c;foo;59;36;;\00", align 1
@3 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8

; Function Attrs: nounwind uwtable
define dso_local void @foo() #0 !dbg !19 {
entry:
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  %2 = bitcast i32* %i to i8*, !dbg !25
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #4, !dbg !25
  call void @llvm.dbg.declare(metadata i32* %i, metadata !23, metadata !DIExpression()), !dbg !26
  %3 = bitcast i32* %j to i8*, !dbg !25
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #4, !dbg !25
  call void @llvm.dbg.declare(metadata i32* %j, metadata !24, metadata !DIExpression()), !dbg !27
  %4 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !28
  store i8* getelementptr inbounds ([66 x i8], [66 x i8]* @1, i32 0, i32 0), i8** %4, align 8, !dbg !28, !tbaa !29
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 0, void (i32*, i32*, ...)* bitcast (void (i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*)), !dbg !28
  %5 = bitcast i32* %j to i8*, !dbg !35
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %5) #4, !dbg !35
  %6 = bitcast i32* %i to i8*, !dbg !35
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %6) #4, !dbg !35
  ret void, !dbg !35
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid.) #3 !dbg !36 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %.omp.iv = alloca i32, align 4
  %tmp = alloca i32, align 4
  %.capture_expr. = alloca i32, align 4
  %.capture_expr.1 = alloca i32, align 4
  %i = alloca i32, align 4
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %j = alloca i32, align 4
  %i4 = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !54
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !44, metadata !DIExpression()), !dbg !55
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !54
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !45, metadata !DIExpression()), !dbg !55
  %2 = bitcast i32* %.omp.iv to i8*, !dbg !56
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #4, !dbg !56
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !46, metadata !DIExpression()), !dbg !55
  %3 = bitcast i32* %.capture_expr. to i8*, !dbg !56
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #4, !dbg !56
  call void @llvm.dbg.declare(metadata i32* %.capture_expr., metadata !47, metadata !DIExpression()), !dbg !55
  %4 = load i32, i32* @n, align 4, !dbg !57, !tbaa !58
  store i32 %4, i32* %.capture_expr., align 4, !dbg !57, !tbaa !58
  %5 = bitcast i32* %.capture_expr.1 to i8*, !dbg !56
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #4, !dbg !56
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.1, metadata !47, metadata !DIExpression()), !dbg !55
  %6 = load i32, i32* %.capture_expr., align 4, !dbg !57, !tbaa !58
  %sub = sub nsw i32 %6, 0, !dbg !56
  %sub2 = sub nsw i32 %sub, 1, !dbg !56
  %add = add nsw i32 %sub2, 1, !dbg !56
  %div = sdiv i32 %add, 1, !dbg !56
  %sub3 = sub nsw i32 %div, 1, !dbg !56
  store i32 %sub3, i32* %.capture_expr.1, align 4, !dbg !56, !tbaa !58
  %7 = bitcast i32* %i to i8*, !dbg !56
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #4, !dbg !56
  call void @llvm.dbg.declare(metadata i32* %i, metadata !48, metadata !DIExpression()), !dbg !55
  store i32 0, i32* %i, align 4, !dbg !59, !tbaa !58
  %8 = bitcast i32* %i to i8*, !dbg !56
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %8) #4, !dbg !56
  %9 = load i32, i32* %.capture_expr., align 4, !dbg !57, !tbaa !58
  %cmp = icmp slt i32 0, %9, !dbg !56
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end, !dbg !56

omp.precond.then:                                 ; preds = %entry
  %10 = bitcast i32* %.omp.lb to i8*, !dbg !56
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #4, !dbg !56
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !49, metadata !DIExpression()), !dbg !55
  store i32 0, i32* %.omp.lb, align 4, !dbg !60, !tbaa !58
  %11 = bitcast i32* %.omp.ub to i8*, !dbg !56
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #4, !dbg !56
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !50, metadata !DIExpression()), !dbg !55
  %12 = load i32, i32* %.capture_expr.1, align 4, !dbg !56, !tbaa !58
  store i32 %12, i32* %.omp.ub, align 4, !dbg !60, !tbaa !58
  %13 = bitcast i32* %.omp.stride to i8*, !dbg !56
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %13) #4, !dbg !56
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !51, metadata !DIExpression()), !dbg !55
  store i32 1, i32* %.omp.stride, align 4, !dbg !60, !tbaa !58
  %14 = bitcast i32* %.omp.is_last to i8*, !dbg !56
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %14) #4, !dbg !56
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !52, metadata !DIExpression()), !dbg !55
  store i32 0, i32* %.omp.is_last, align 4, !dbg !60, !tbaa !58
  %15 = bitcast i32* %j to i8*, !dbg !56
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %15) #4, !dbg !56
  call void @llvm.dbg.declare(metadata i32* %j, metadata !53, metadata !DIExpression()), !dbg !55
  %16 = bitcast i32* %i4 to i8*, !dbg !56
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %16) #4, !dbg !56
  call void @llvm.dbg.declare(metadata i32* %i4, metadata !48, metadata !DIExpression()), !dbg !55
  %17 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !56
  store i8* getelementptr inbounds ([66 x i8], [66 x i8]* @1, i32 0, i32 0), i8** %17, align 8, !dbg !56, !tbaa !29
  %18 = load i32*, i32** %.global_tid..addr, align 8, !dbg !56
  %19 = load i32, i32* %18, align 4, !dbg !56, !tbaa !58
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %19, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !56
  %20 = load i32, i32* %.omp.ub, align 4, !dbg !60, !tbaa !58
  %21 = load i32, i32* %.capture_expr.1, align 4, !dbg !56, !tbaa !58
  %cmp5 = icmp sgt i32 %20, %21, !dbg !60
  br i1 %cmp5, label %cond.true, label %cond.false, !dbg !60

cond.true:                                        ; preds = %omp.precond.then
  %22 = load i32, i32* %.capture_expr.1, align 4, !dbg !56, !tbaa !58
  br label %cond.end, !dbg !60

cond.false:                                       ; preds = %omp.precond.then
  %23 = load i32, i32* %.omp.ub, align 4, !dbg !60, !tbaa !58
  br label %cond.end, !dbg !60

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %22, %cond.true ], [ %23, %cond.false ], !dbg !60
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !60, !tbaa !58
  %24 = load i32, i32* %.omp.lb, align 4, !dbg !60, !tbaa !58
  store i32 %24, i32* %.omp.iv, align 4, !dbg !60, !tbaa !58
  br label %omp.inner.for.cond, !dbg !56

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %25 = load i32, i32* %.omp.iv, align 4, !dbg !60, !tbaa !58
  %26 = load i32, i32* %.omp.ub, align 4, !dbg !60, !tbaa !58
  %cmp6 = icmp sle i32 %25, %26, !dbg !56
  br i1 %cmp6, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !56

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !56

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %27 = load i32, i32* %.omp.iv, align 4, !dbg !60, !tbaa !58
  %mul = mul nsw i32 %27, 1, !dbg !59
  %add7 = add nsw i32 0, %mul, !dbg !59
  store i32 %add7, i32* %i4, align 4, !dbg !59, !tbaa !58
  store i32 1, i32* %j, align 4, !dbg !61, !tbaa !58
  br label %for.cond, !dbg !63

for.cond:                                         ; preds = %for.inc, %omp.inner.for.body
  %28 = load i32, i32* %j, align 4, !dbg !64, !tbaa !58
  %29 = load i32, i32* @m, align 4, !dbg !66, !tbaa !58
  %cmp8 = icmp slt i32 %28, %29, !dbg !67
  br i1 %cmp8, label %for.body, label %for.end, !dbg !68

for.body:                                         ; preds = %for.cond
  %30 = load i32, i32* %i4, align 4, !dbg !69, !tbaa !58
  %idxprom = sext i32 %30 to i64, !dbg !70
  %arrayidx = getelementptr inbounds [100 x [100 x double]], [100 x [100 x double]]* @b, i64 0, i64 %idxprom, !dbg !70
  %31 = load i32, i32* %j, align 4, !dbg !71, !tbaa !58
  %sub9 = sub nsw i32 %31, 1, !dbg !72
  %idxprom10 = sext i32 %sub9 to i64, !dbg !70
  %arrayidx11 = getelementptr inbounds [100 x double], [100 x double]* %arrayidx, i64 0, i64 %idxprom10, !dbg !70
  %32 = load double, double* %arrayidx11, align 8, !dbg !70, !tbaa !73
  %33 = load i32, i32* %i4, align 4, !dbg !75, !tbaa !58
  %idxprom12 = sext i32 %33 to i64, !dbg !76
  %arrayidx13 = getelementptr inbounds [100 x [100 x double]], [100 x [100 x double]]* @b, i64 0, i64 %idxprom12, !dbg !76
  %34 = load i32, i32* %j, align 4, !dbg !77, !tbaa !58
  %idxprom14 = sext i32 %34 to i64, !dbg !76
  %arrayidx15 = getelementptr inbounds [100 x double], [100 x double]* %arrayidx13, i64 0, i64 %idxprom14, !dbg !76
  store double %32, double* %arrayidx15, align 8, !dbg !78, !tbaa !73
  br label %for.inc, !dbg !76

for.inc:                                          ; preds = %for.body
  %35 = load i32, i32* %j, align 4, !dbg !79, !tbaa !58
  %inc = add nsw i32 %35, 1, !dbg !79
  store i32 %inc, i32* %j, align 4, !dbg !79, !tbaa !58
  br label %for.cond, !dbg !80, !llvm.loop !81

for.end:                                          ; preds = %for.cond
  br label %omp.body.continue, !dbg !82

omp.body.continue:                                ; preds = %for.end
  br label %omp.inner.for.inc, !dbg !83

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %36 = load i32, i32* %.omp.iv, align 4, !dbg !60, !tbaa !58
  %add16 = add nsw i32 %36, 1, !dbg !56
  store i32 %add16, i32* %.omp.iv, align 4, !dbg !56, !tbaa !58
  br label %omp.inner.for.cond, !dbg !83, !llvm.loop !84

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !83

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %37 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !83
  store i8* getelementptr inbounds ([67 x i8], [67 x i8]* @2, i32 0, i32 0), i8** %37, align 8, !dbg !83, !tbaa !29
  %38 = load i32*, i32** %.global_tid..addr, align 8, !dbg !83
  %39 = load i32, i32* %38, align 4, !dbg !83, !tbaa !58
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %39), !dbg !83
  %40 = bitcast i32* %i4 to i8*, !dbg !83
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %40) #4, !dbg !83
  %41 = bitcast i32* %j to i8*, !dbg !83
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %41) #4, !dbg !83
  %42 = bitcast i32* %.omp.is_last to i8*, !dbg !83
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %42) #4, !dbg !83
  %43 = bitcast i32* %.omp.stride to i8*, !dbg !83
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %43) #4, !dbg !83
  %44 = bitcast i32* %.omp.ub to i8*, !dbg !83
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %44) #4, !dbg !83
  %45 = bitcast i32* %.omp.lb to i8*, !dbg !83
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %45) #4, !dbg !83
  br label %omp.precond.end, !dbg !83

omp.precond.end:                                  ; preds = %omp.loop.exit, %entry
  %46 = bitcast i32* %.capture_expr.1 to i8*, !dbg !83
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %46) #4, !dbg !83
  %47 = bitcast i32* %.capture_expr. to i8*, !dbg !83
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %47) #4, !dbg !83
  %48 = bitcast i32* %.omp.iv to i8*, !dbg !83
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %48) #4, !dbg !83
  ret void, !dbg !86
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid.) #3 !dbg !87 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !54
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !89, metadata !DIExpression()), !dbg !91
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !54
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !90, metadata !DIExpression()), !dbg !91
  %0 = load i32*, i32** %.global_tid..addr, align 8, !dbg !92, !tbaa !54
  %1 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !92, !tbaa !54
  call void @.omp_outlined._debug__(i32* %0, i32* %1) #4, !dbg !92
  ret void, !dbg !92
}

declare !callback !93 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

; Function Attrs: nounwind uwtable
define dso_local i32 @main() #0 !dbg !95 {
entry:
  %retval = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @foo(), !dbg !98
  ret i32 0, !dbg !99
}

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!15, !16, !17}
!llvm.ident = !{!18}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "n", scope: !2, file: !3, line: 53, type: !14, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "integration/dataracebench/DRB064-outeronly2-orig-no.c", directory: "/home/brad/Code/OpenRace/tests/data")
!4 = !{}
!5 = !{!6, !0, !12}
!6 = !DIGlobalVariableExpression(var: !7, expr: !DIExpression())
!7 = distinct !DIGlobalVariable(name: "b", scope: !2, file: !3, line: 54, type: !8, isLocal: false, isDefinition: true)
!8 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 640000, elements: !10)
!9 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!10 = !{!11, !11}
!11 = !DISubrange(count: 100)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(name: "m", scope: !2, file: !3, line: 53, type: !14, isLocal: false, isDefinition: true)
!14 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!15 = !{i32 7, !"Dwarf Version", i32 4}
!16 = !{i32 2, !"Debug Info Version", i32 3}
!17 = !{i32 1, !"wchar_size", i32 4}
!18 = !{!"clang version 10.0.1 "}
!19 = distinct !DISubprogram(name: "foo", scope: !3, file: !3, line: 56, type: !20, scopeLine: 57, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !22)
!20 = !DISubroutineType(types: !21)
!21 = !{null}
!22 = !{!23, !24}
!23 = !DILocalVariable(name: "i", scope: !19, file: !3, line: 58, type: !14)
!24 = !DILocalVariable(name: "j", scope: !19, file: !3, line: 58, type: !14)
!25 = !DILocation(line: 58, column: 3, scope: !19)
!26 = !DILocation(line: 58, column: 7, scope: !19)
!27 = !DILocation(line: 58, column: 9, scope: !19)
!28 = !DILocation(line: 59, column: 1, scope: !19)
!29 = !{!30, !34, i64 16}
!30 = !{!"ident_t", !31, i64 0, !31, i64 4, !31, i64 8, !31, i64 12, !34, i64 16}
!31 = !{!"int", !32, i64 0}
!32 = !{!"omnipotent char", !33, i64 0}
!33 = !{!"Simple C/C++ TBAA"}
!34 = !{!"any pointer", !32, i64 0}
!35 = !DILocation(line: 63, column: 1, scope: !19)
!36 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !3, file: !3, line: 60, type: !37, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !43)
!37 = !DISubroutineType(types: !38)
!38 = !{null, !39, !39}
!39 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !40)
!40 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !41)
!41 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !42, size: 64)
!42 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !14)
!43 = !{!44, !45, !46, !47, !47, !48, !49, !50, !51, !52, !53, !48}
!44 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !36, type: !39, flags: DIFlagArtificial)
!45 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !36, type: !39, flags: DIFlagArtificial)
!46 = !DILocalVariable(name: ".omp.iv", scope: !36, type: !14, flags: DIFlagArtificial)
!47 = !DILocalVariable(name: ".capture_expr.", scope: !36, type: !14, flags: DIFlagArtificial)
!48 = !DILocalVariable(name: "i", scope: !36, type: !14, flags: DIFlagArtificial)
!49 = !DILocalVariable(name: ".omp.lb", scope: !36, type: !14, flags: DIFlagArtificial)
!50 = !DILocalVariable(name: ".omp.ub", scope: !36, type: !14, flags: DIFlagArtificial)
!51 = !DILocalVariable(name: ".omp.stride", scope: !36, type: !14, flags: DIFlagArtificial)
!52 = !DILocalVariable(name: ".omp.is_last", scope: !36, type: !14, flags: DIFlagArtificial)
!53 = !DILocalVariable(name: "j", scope: !36, type: !14, flags: DIFlagArtificial)
!54 = !{!34, !34, i64 0}
!55 = !DILocation(line: 0, scope: !36)
!56 = !DILocation(line: 60, column: 3, scope: !36)
!57 = !DILocation(line: 60, column: 14, scope: !36)
!58 = !{!31, !31, i64 0}
!59 = !DILocation(line: 60, column: 16, scope: !36)
!60 = !DILocation(line: 60, column: 8, scope: !36)
!61 = !DILocation(line: 61, column: 11, scope: !62)
!62 = distinct !DILexicalBlock(scope: !36, file: !3, line: 61, column: 5)
!63 = !DILocation(line: 61, column: 10, scope: !62)
!64 = !DILocation(line: 61, column: 14, scope: !65)
!65 = distinct !DILexicalBlock(scope: !62, file: !3, line: 61, column: 5)
!66 = !DILocation(line: 61, column: 16, scope: !65)
!67 = !DILocation(line: 61, column: 15, scope: !65)
!68 = !DILocation(line: 61, column: 5, scope: !62)
!69 = !DILocation(line: 62, column: 17, scope: !65)
!70 = !DILocation(line: 62, column: 15, scope: !65)
!71 = !DILocation(line: 62, column: 20, scope: !65)
!72 = !DILocation(line: 62, column: 21, scope: !65)
!73 = !{!74, !74, i64 0}
!74 = !{!"double", !32, i64 0}
!75 = !DILocation(line: 62, column: 9, scope: !65)
!76 = !DILocation(line: 62, column: 7, scope: !65)
!77 = !DILocation(line: 62, column: 12, scope: !65)
!78 = !DILocation(line: 62, column: 14, scope: !65)
!79 = !DILocation(line: 61, column: 19, scope: !65)
!80 = !DILocation(line: 61, column: 5, scope: !65)
!81 = distinct !{!81, !68, !82}
!82 = !DILocation(line: 62, column: 23, scope: !62)
!83 = !DILocation(line: 59, column: 1, scope: !36)
!84 = distinct !{!84, !83, !85}
!85 = !DILocation(line: 59, column: 36, scope: !36)
!86 = !DILocation(line: 62, column: 23, scope: !36)
!87 = distinct !DISubprogram(name: ".omp_outlined.", scope: !3, file: !3, line: 60, type: !37, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !88)
!88 = !{!89, !90}
!89 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !87, type: !39, flags: DIFlagArtificial)
!90 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !87, type: !39, flags: DIFlagArtificial)
!91 = !DILocation(line: 0, scope: !87)
!92 = !DILocation(line: 60, column: 3, scope: !87)
!93 = !{!94}
!94 = !{i64 2, i64 -1, i64 -1, i1 true}
!95 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 65, type: !96, scopeLine: 66, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4)
!96 = !DISubroutineType(types: !97)
!97 = !{!14}
!98 = !DILocation(line: 67, column: 3, scope: !95)
!99 = !DILocation(line: 68, column: 3, scope: !95)
