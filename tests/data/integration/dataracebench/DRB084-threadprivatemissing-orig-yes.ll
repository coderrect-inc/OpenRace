; ModuleID = 'integration/dataracebench/DRB084-threadprivatemissing-orig-yes.c'
source_filename = "integration/dataracebench/DRB084-threadprivatemissing-orig-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@sum0 = dso_local global i32 0, align 4, !dbg !0
@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [78 x i8] c";integration/dataracebench/DRB084-threadprivatemissing-orig-yes.c;main;69;1;;\00", align 1
@2 = private unnamed_addr constant [79 x i8] c";integration/dataracebench/DRB084-threadprivatemissing-orig-yes.c;main;69;16;;\00", align 1
@3 = private unnamed_addr constant [78 x i8] c";integration/dataracebench/DRB084-threadprivatemissing-orig-yes.c;main;74;1;;\00", align 1
@.gomp_critical_user_.var = common global [8 x i32] zeroinitializer
@4 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@5 = private unnamed_addr constant [78 x i8] c";integration/dataracebench/DRB084-threadprivatemissing-orig-yes.c;main;67;1;;\00", align 1
@sum1 = dso_local global i32 0, align 4, !dbg !6
@.str.1 = private unnamed_addr constant [17 x i8] c"sum=%d; sum1=%d\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @foo(i32 %i) #0 !dbg !13 {
entry:
  %i.addr = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4, !tbaa !18
  call void @llvm.dbg.declare(metadata i32* %i.addr, metadata !17, metadata !DIExpression()), !dbg !22
  %0 = load i32, i32* @sum0, align 4, !dbg !23, !tbaa !18
  %1 = load i32, i32* %i.addr, align 4, !dbg !24, !tbaa !18
  %add = add nsw i32 %0, %1, !dbg !25
  store i32 %add, i32* @sum0, align 4, !dbg !26, !tbaa !18
  ret void, !dbg !27
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @main() #0 !dbg !28 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %sum = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32 0, i32* %retval, align 4
  %2 = bitcast i32* %i to i8*, !dbg !34
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #5, !dbg !34
  call void @llvm.dbg.declare(metadata i32* %i, metadata !32, metadata !DIExpression()), !dbg !35
  %3 = bitcast i32* %sum to i8*, !dbg !34
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #5, !dbg !34
  call void @llvm.dbg.declare(metadata i32* %sum, metadata !33, metadata !DIExpression()), !dbg !36
  store i32 0, i32* %sum, align 4, !dbg !36, !tbaa !18
  %4 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !37
  store i8* getelementptr inbounds ([78 x i8], [78 x i8]* @5, i32 0, i32 0), i8** %4, align 8, !dbg !37, !tbaa !38
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %sum), !dbg !37
  store i32 1, i32* %i, align 4, !dbg !41, !tbaa !18
  br label %for.cond, !dbg !43

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %i, align 4, !dbg !44, !tbaa !18
  %cmp = icmp sle i32 %5, 1000, !dbg !46
  br i1 %cmp, label %for.body, label %for.end, !dbg !47

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* @sum1, align 4, !dbg !48, !tbaa !18
  %7 = load i32, i32* %i, align 4, !dbg !50, !tbaa !18
  %add = add nsw i32 %6, %7, !dbg !51
  store i32 %add, i32* @sum1, align 4, !dbg !52, !tbaa !18
  br label %for.inc, !dbg !53

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !54, !tbaa !18
  %inc = add nsw i32 %8, 1, !dbg !54
  store i32 %inc, i32* %i, align 4, !dbg !54, !tbaa !18
  br label %for.cond, !dbg !55, !llvm.loop !56

for.end:                                          ; preds = %for.cond
  %9 = load i32, i32* %sum, align 4, !dbg !58, !tbaa !18
  %10 = load i32, i32* @sum1, align 4, !dbg !59, !tbaa !18
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %9, i32 %10), !dbg !60
  %11 = bitcast i32* %sum to i8*, !dbg !61
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %11) #5, !dbg !61
  %12 = bitcast i32* %i to i8*, !dbg !61
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %12) #5, !dbg !61
  ret i32 0, !dbg !62
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %sum) #3 !dbg !63 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %sum.addr = alloca i32*, align 8
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
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !83
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !72, metadata !DIExpression()), !dbg !84
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !83
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !73, metadata !DIExpression()), !dbg !84
  store i32* %sum, i32** %sum.addr, align 8, !tbaa !83
  call void @llvm.dbg.declare(metadata i32** %sum.addr, metadata !74, metadata !DIExpression()), !dbg !85
  %2 = load i32*, i32** %sum.addr, align 8, !dbg !86, !tbaa !83
  %3 = bitcast i32* %.omp.iv to i8*, !dbg !87
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #5, !dbg !87
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !75, metadata !DIExpression()), !dbg !88
  %4 = bitcast i32* %.omp.lb to i8*, !dbg !87
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #5, !dbg !87
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !78, metadata !DIExpression()), !dbg !88
  store i32 0, i32* %.omp.lb, align 4, !dbg !89, !tbaa !18
  %5 = bitcast i32* %.omp.ub to i8*, !dbg !87
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #5, !dbg !87
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !79, metadata !DIExpression()), !dbg !88
  store i32 999, i32* %.omp.ub, align 4, !dbg !89, !tbaa !18
  %6 = bitcast i32* %.omp.stride to i8*, !dbg !87
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #5, !dbg !87
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !80, metadata !DIExpression()), !dbg !88
  store i32 1, i32* %.omp.stride, align 4, !dbg !89, !tbaa !18
  %7 = bitcast i32* %.omp.is_last to i8*, !dbg !87
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #5, !dbg !87
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !81, metadata !DIExpression()), !dbg !88
  store i32 0, i32* %.omp.is_last, align 4, !dbg !89, !tbaa !18
  %8 = bitcast i32* %i to i8*, !dbg !87
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #5, !dbg !87
  call void @llvm.dbg.declare(metadata i32* %i, metadata !82, metadata !DIExpression()), !dbg !88
  %9 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !87
  store i8* getelementptr inbounds ([78 x i8], [78 x i8]* @1, i32 0, i32 0), i8** %9, align 8, !dbg !87, !tbaa !38
  %10 = load i32*, i32** %.global_tid..addr, align 8, !dbg !87
  %11 = load i32, i32* %10, align 4, !dbg !87, !tbaa !18
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %11, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !87
  %12 = load i32, i32* %.omp.ub, align 4, !dbg !89, !tbaa !18
  %cmp = icmp sgt i32 %12, 999, !dbg !89
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !89

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !89

cond.false:                                       ; preds = %entry
  %13 = load i32, i32* %.omp.ub, align 4, !dbg !89, !tbaa !18
  br label %cond.end, !dbg !89

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 999, %cond.true ], [ %13, %cond.false ], !dbg !89
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !89, !tbaa !18
  %14 = load i32, i32* %.omp.lb, align 4, !dbg !89, !tbaa !18
  store i32 %14, i32* %.omp.iv, align 4, !dbg !89, !tbaa !18
  br label %omp.inner.for.cond, !dbg !87

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %15 = load i32, i32* %.omp.iv, align 4, !dbg !89, !tbaa !18
  %16 = load i32, i32* %.omp.ub, align 4, !dbg !89, !tbaa !18
  %cmp1 = icmp sle i32 %15, %16, !dbg !90
  br i1 %cmp1, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !87

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !87

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %17 = load i32, i32* %.omp.iv, align 4, !dbg !89, !tbaa !18
  %mul = mul nsw i32 %17, 1, !dbg !91
  %add = add nsw i32 1, %mul, !dbg !91
  store i32 %add, i32* %i, align 4, !dbg !91, !tbaa !18
  %18 = load i32, i32* %i, align 4, !dbg !92, !tbaa !18
  call void @foo(i32 %18), !dbg !94
  br label %omp.body.continue, !dbg !95

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !96

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %19 = load i32, i32* %.omp.iv, align 4, !dbg !89, !tbaa !18
  %add2 = add nsw i32 %19, 1, !dbg !90
  store i32 %add2, i32* %.omp.iv, align 4, !dbg !90, !tbaa !18
  br label %omp.inner.for.cond, !dbg !96, !llvm.loop !97

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !96

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %20 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !96
  store i8* getelementptr inbounds ([79 x i8], [79 x i8]* @2, i32 0, i32 0), i8** %20, align 8, !dbg !96, !tbaa !38
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %11), !dbg !96
  %21 = bitcast i32* %i to i8*, !dbg !96
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %21) #5, !dbg !96
  %22 = bitcast i32* %.omp.is_last to i8*, !dbg !96
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %22) #5, !dbg !96
  %23 = bitcast i32* %.omp.stride to i8*, !dbg !96
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %23) #5, !dbg !96
  %24 = bitcast i32* %.omp.ub to i8*, !dbg !96
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %24) #5, !dbg !96
  %25 = bitcast i32* %.omp.lb to i8*, !dbg !96
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %25) #5, !dbg !96
  %26 = bitcast i32* %.omp.iv to i8*, !dbg !96
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %26) #5, !dbg !96
  %27 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !98
  store i8* getelementptr inbounds ([78 x i8], [78 x i8]* @1, i32 0, i32 0), i8** %27, align 8, !dbg !98, !tbaa !38
  call void @__kmpc_barrier(%struct.ident_t* %.kmpc_loc.addr, i32 %11), !dbg !98
  %28 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !99
  store i8* getelementptr inbounds ([78 x i8], [78 x i8]* @3, i32 0, i32 0), i8** %28, align 8, !dbg !99, !tbaa !38
  call void @__kmpc_critical(%struct.ident_t* %.kmpc_loc.addr, i32 %11, [8 x i32]* @.gomp_critical_user_.var), !dbg !99
  %29 = load i32, i32* %2, align 4, !dbg !100, !tbaa !18
  %30 = load i32, i32* @sum0, align 4, !dbg !103, !tbaa !18
  %add3 = add nsw i32 %29, %30, !dbg !104
  store i32 %add3, i32* %2, align 4, !dbg !105, !tbaa !18
  call void @__kmpc_end_critical(%struct.ident_t* %.kmpc_loc.addr, i32 %11, [8 x i32]* @.gomp_critical_user_.var), !dbg !106
  ret void, !dbg !107
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local void @__kmpc_barrier(%struct.ident_t*, i32)

declare dso_local void @__kmpc_end_critical(%struct.ident_t*, i32, [8 x i32]*)

declare dso_local void @__kmpc_critical(%struct.ident_t*, i32, [8 x i32]*)

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %sum) #3 !dbg !108 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %sum.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !83
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !110, metadata !DIExpression()), !dbg !113
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !83
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !111, metadata !DIExpression()), !dbg !113
  store i32* %sum, i32** %sum.addr, align 8, !tbaa !83
  call void @llvm.dbg.declare(metadata i32** %sum.addr, metadata !112, metadata !DIExpression()), !dbg !113
  %0 = load i32*, i32** %sum.addr, align 8, !dbg !114, !tbaa !83
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !114, !tbaa !83
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !114, !tbaa !83
  %3 = load i32*, i32** %sum.addr, align 8, !dbg !114, !tbaa !83
  call void @.omp_outlined._debug__(i32* %1, i32* %2, i32* %3) #5, !dbg !114
  ret void, !dbg !114
}

declare !callback !115 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

declare dso_local i32 @printf(i8*, ...) #4

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!9, !10, !11}
!llvm.ident = !{!12}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "sum0", scope: !2, file: !3, line: 56, type: !8, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "integration/dataracebench/DRB084-threadprivatemissing-orig-yes.c", directory: "/home/brad/Code/OpenRace/tests/data")
!4 = !{}
!5 = !{!0, !6}
!6 = !DIGlobalVariableExpression(var: !7, expr: !DIExpression())
!7 = distinct !DIGlobalVariable(name: "sum1", scope: !2, file: !3, line: 56, type: !8, isLocal: false, isDefinition: true)
!8 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!9 = !{i32 7, !"Dwarf Version", i32 4}
!10 = !{i32 2, !"Debug Info Version", i32 3}
!11 = !{i32 1, !"wchar_size", i32 4}
!12 = !{!"clang version 10.0.1 "}
!13 = distinct !DISubprogram(name: "foo", scope: !3, file: !3, line: 59, type: !14, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !16)
!14 = !DISubroutineType(types: !15)
!15 = !{null, !8}
!16 = !{!17}
!17 = !DILocalVariable(name: "i", arg: 1, scope: !13, file: !3, line: 59, type: !8)
!18 = !{!19, !19, i64 0}
!19 = !{!"int", !20, i64 0}
!20 = !{!"omnipotent char", !21, i64 0}
!21 = !{!"Simple C/C++ TBAA"}
!22 = !DILocation(line: 59, column: 15, scope: !13)
!23 = !DILocation(line: 61, column: 8, scope: !13)
!24 = !DILocation(line: 61, column: 13, scope: !13)
!25 = !DILocation(line: 61, column: 12, scope: !13)
!26 = !DILocation(line: 61, column: 7, scope: !13)
!27 = !DILocation(line: 62, column: 1, scope: !13)
!28 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 64, type: !29, scopeLine: 65, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !31)
!29 = !DISubroutineType(types: !30)
!30 = !{!8}
!31 = !{!32, !33}
!32 = !DILocalVariable(name: "i", scope: !28, file: !3, line: 66, type: !8)
!33 = !DILocalVariable(name: "sum", scope: !28, file: !3, line: 66, type: !8)
!34 = !DILocation(line: 66, column: 3, scope: !28)
!35 = !DILocation(line: 66, column: 7, scope: !28)
!36 = !DILocation(line: 66, column: 10, scope: !28)
!37 = !DILocation(line: 67, column: 1, scope: !28)
!38 = !{!39, !40, i64 16}
!39 = !{!"ident_t", !19, i64 0, !19, i64 4, !19, i64 8, !19, i64 12, !40, i64 16}
!40 = !{!"any pointer", !20, i64 0}
!41 = !DILocation(line: 80, column: 9, scope: !42)
!42 = distinct !DILexicalBlock(scope: !28, file: !3, line: 80, column: 3)
!43 = !DILocation(line: 80, column: 8, scope: !42)
!44 = !DILocation(line: 80, column: 12, scope: !45)
!45 = distinct !DILexicalBlock(scope: !42, file: !3, line: 80, column: 3)
!46 = !DILocation(line: 80, column: 13, scope: !45)
!47 = !DILocation(line: 80, column: 3, scope: !42)
!48 = !DILocation(line: 82, column: 10, scope: !49)
!49 = distinct !DILexicalBlock(scope: !45, file: !3, line: 81, column: 3)
!50 = !DILocation(line: 82, column: 15, scope: !49)
!51 = !DILocation(line: 82, column: 14, scope: !49)
!52 = !DILocation(line: 82, column: 9, scope: !49)
!53 = !DILocation(line: 83, column: 3, scope: !49)
!54 = !DILocation(line: 80, column: 21, scope: !45)
!55 = !DILocation(line: 80, column: 3, scope: !45)
!56 = distinct !{!56, !47, !57}
!57 = !DILocation(line: 83, column: 3, scope: !42)
!58 = !DILocation(line: 84, column: 30, scope: !28)
!59 = !DILocation(line: 84, column: 34, scope: !28)
!60 = !DILocation(line: 84, column: 3, scope: !28)
!61 = !DILocation(line: 87, column: 1, scope: !28)
!62 = !DILocation(line: 86, column: 3, scope: !28)
!63 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !3, file: !3, line: 68, type: !64, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !71)
!64 = !DISubroutineType(types: !65)
!65 = !{null, !66, !66, !70}
!66 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !67)
!67 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !68)
!68 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!70 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !8, size: 64)
!71 = !{!72, !73, !74, !75, !78, !79, !80, !81, !82}
!72 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !63, type: !66, flags: DIFlagArtificial)
!73 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !63, type: !66, flags: DIFlagArtificial)
!74 = !DILocalVariable(name: "sum", arg: 3, scope: !63, file: !3, line: 66, type: !70)
!75 = !DILocalVariable(name: ".omp.iv", scope: !76, type: !8, flags: DIFlagArtificial)
!76 = distinct !DILexicalBlock(scope: !77, file: !3, line: 69, column: 1)
!77 = distinct !DILexicalBlock(scope: !63, file: !3, line: 68, column: 3)
!78 = !DILocalVariable(name: ".omp.lb", scope: !76, type: !8, flags: DIFlagArtificial)
!79 = !DILocalVariable(name: ".omp.ub", scope: !76, type: !8, flags: DIFlagArtificial)
!80 = !DILocalVariable(name: ".omp.stride", scope: !76, type: !8, flags: DIFlagArtificial)
!81 = !DILocalVariable(name: ".omp.is_last", scope: !76, type: !8, flags: DIFlagArtificial)
!82 = !DILocalVariable(name: "i", scope: !76, type: !8, flags: DIFlagArtificial)
!83 = !{!40, !40, i64 0}
!84 = !DILocation(line: 0, scope: !63)
!85 = !DILocation(line: 66, column: 10, scope: !63)
!86 = !DILocation(line: 68, column: 3, scope: !63)
!87 = !DILocation(line: 69, column: 1, scope: !77)
!88 = !DILocation(line: 0, scope: !76)
!89 = !DILocation(line: 70, column: 10, scope: !76)
!90 = !DILocation(line: 70, column: 5, scope: !76)
!91 = !DILocation(line: 70, column: 22, scope: !76)
!92 = !DILocation(line: 72, column: 13, scope: !93)
!93 = distinct !DILexicalBlock(scope: !76, file: !3, line: 71, column: 5)
!94 = !DILocation(line: 72, column: 8, scope: !93)
!95 = !DILocation(line: 73, column: 5, scope: !93)
!96 = !DILocation(line: 69, column: 1, scope: !76)
!97 = distinct !{!97, !96, !98}
!98 = !DILocation(line: 69, column: 16, scope: !76)
!99 = !DILocation(line: 74, column: 1, scope: !77)
!100 = !DILocation(line: 76, column: 12, scope: !101)
!101 = distinct !DILexicalBlock(scope: !102, file: !3, line: 75, column: 5)
!102 = distinct !DILexicalBlock(scope: !77, file: !3, line: 74, column: 1)
!103 = !DILocation(line: 76, column: 16, scope: !101)
!104 = !DILocation(line: 76, column: 15, scope: !101)
!105 = !DILocation(line: 76, column: 10, scope: !101)
!106 = !DILocation(line: 77, column: 5, scope: !101)
!107 = !DILocation(line: 78, column: 3, scope: !63)
!108 = distinct !DISubprogram(name: ".omp_outlined.", scope: !3, file: !3, line: 68, type: !64, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !109)
!109 = !{!110, !111, !112}
!110 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !108, type: !66, flags: DIFlagArtificial)
!111 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !108, type: !66, flags: DIFlagArtificial)
!112 = !DILocalVariable(name: "sum", arg: 3, scope: !108, type: !70, flags: DIFlagArtificial)
!113 = !DILocation(line: 0, scope: !108)
!114 = !DILocation(line: 68, column: 3, scope: !108)
!115 = !{!116}
!116 = !{i64 2, i64 -1, i64 -1, i1 true}
