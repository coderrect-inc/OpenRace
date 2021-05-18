; ModuleID = 'integration/dataracebench/DRB092-threadprivatemissing2-orig-yes.c'
source_filename = "integration/dataracebench/DRB092-threadprivatemissing2-orig-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [79 x i8] c";integration/dataracebench/DRB092-threadprivatemissing2-orig-yes.c;main;65;1;;\00", align 1
@sum0 = dso_local global i32 0, align 4, !dbg !0
@2 = private unnamed_addr constant [80 x i8] c";integration/dataracebench/DRB092-threadprivatemissing2-orig-yes.c;main;65;16;;\00", align 1
@3 = private unnamed_addr constant [79 x i8] c";integration/dataracebench/DRB092-threadprivatemissing2-orig-yes.c;main;70;1;;\00", align 1
@.gomp_critical_user_.var = common global [8 x i32] zeroinitializer
@4 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@5 = private unnamed_addr constant [79 x i8] c";integration/dataracebench/DRB092-threadprivatemissing2-orig-yes.c;main;63;1;;\00", align 1
@sum1 = dso_local global i32 0, align 4, !dbg !6
@.str.1 = private unnamed_addr constant [17 x i8] c"sum=%d; sum1=%d\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main() #0 !dbg !13 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %sum = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32 0, i32* %retval, align 4
  %2 = bitcast i32* %i to i8*, !dbg !19
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #5, !dbg !19
  call void @llvm.dbg.declare(metadata i32* %i, metadata !17, metadata !DIExpression()), !dbg !20
  %3 = bitcast i32* %sum to i8*, !dbg !19
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #5, !dbg !19
  call void @llvm.dbg.declare(metadata i32* %sum, metadata !18, metadata !DIExpression()), !dbg !21
  store i32 0, i32* %sum, align 4, !dbg !21, !tbaa !22
  %4 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !26
  store i8* getelementptr inbounds ([79 x i8], [79 x i8]* @5, i32 0, i32 0), i8** %4, align 8, !dbg !26, !tbaa !27
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %sum), !dbg !26
  store i32 1, i32* %i, align 4, !dbg !30, !tbaa !22
  br label %for.cond, !dbg !32

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %i, align 4, !dbg !33, !tbaa !22
  %cmp = icmp sle i32 %5, 1000, !dbg !35
  br i1 %cmp, label %for.body, label %for.end, !dbg !36

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* @sum1, align 4, !dbg !37, !tbaa !22
  %7 = load i32, i32* %i, align 4, !dbg !39, !tbaa !22
  %add = add nsw i32 %6, %7, !dbg !40
  store i32 %add, i32* @sum1, align 4, !dbg !41, !tbaa !22
  br label %for.inc, !dbg !42

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !43, !tbaa !22
  %inc = add nsw i32 %8, 1, !dbg !43
  store i32 %inc, i32* %i, align 4, !dbg !43, !tbaa !22
  br label %for.cond, !dbg !44, !llvm.loop !45

for.end:                                          ; preds = %for.cond
  %9 = load i32, i32* %sum, align 4, !dbg !47, !tbaa !22
  %10 = load i32, i32* @sum1, align 4, !dbg !48, !tbaa !22
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %9, i32 %10), !dbg !49
  %11 = bitcast i32* %sum to i8*, !dbg !50
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %11) #5, !dbg !50
  %12 = bitcast i32* %i to i8*, !dbg !50
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %12) #5, !dbg !50
  ret i32 0, !dbg !51
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %sum) #3 !dbg !52 {
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
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !72
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !61, metadata !DIExpression()), !dbg !73
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !72
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !62, metadata !DIExpression()), !dbg !73
  store i32* %sum, i32** %sum.addr, align 8, !tbaa !72
  call void @llvm.dbg.declare(metadata i32** %sum.addr, metadata !63, metadata !DIExpression()), !dbg !74
  %2 = load i32*, i32** %sum.addr, align 8, !dbg !75, !tbaa !72
  %3 = bitcast i32* %.omp.iv to i8*, !dbg !76
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #5, !dbg !76
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !64, metadata !DIExpression()), !dbg !77
  %4 = bitcast i32* %.omp.lb to i8*, !dbg !76
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #5, !dbg !76
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !67, metadata !DIExpression()), !dbg !77
  store i32 0, i32* %.omp.lb, align 4, !dbg !78, !tbaa !22
  %5 = bitcast i32* %.omp.ub to i8*, !dbg !76
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #5, !dbg !76
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !68, metadata !DIExpression()), !dbg !77
  store i32 999, i32* %.omp.ub, align 4, !dbg !78, !tbaa !22
  %6 = bitcast i32* %.omp.stride to i8*, !dbg !76
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #5, !dbg !76
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !69, metadata !DIExpression()), !dbg !77
  store i32 1, i32* %.omp.stride, align 4, !dbg !78, !tbaa !22
  %7 = bitcast i32* %.omp.is_last to i8*, !dbg !76
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #5, !dbg !76
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !70, metadata !DIExpression()), !dbg !77
  store i32 0, i32* %.omp.is_last, align 4, !dbg !78, !tbaa !22
  %8 = bitcast i32* %i to i8*, !dbg !76
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #5, !dbg !76
  call void @llvm.dbg.declare(metadata i32* %i, metadata !71, metadata !DIExpression()), !dbg !77
  %9 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !76
  store i8* getelementptr inbounds ([79 x i8], [79 x i8]* @1, i32 0, i32 0), i8** %9, align 8, !dbg !76, !tbaa !27
  %10 = load i32*, i32** %.global_tid..addr, align 8, !dbg !76
  %11 = load i32, i32* %10, align 4, !dbg !76, !tbaa !22
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %11, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !76
  %12 = load i32, i32* %.omp.ub, align 4, !dbg !78, !tbaa !22
  %cmp = icmp sgt i32 %12, 999, !dbg !78
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !78

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !78

cond.false:                                       ; preds = %entry
  %13 = load i32, i32* %.omp.ub, align 4, !dbg !78, !tbaa !22
  br label %cond.end, !dbg !78

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 999, %cond.true ], [ %13, %cond.false ], !dbg !78
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !78, !tbaa !22
  %14 = load i32, i32* %.omp.lb, align 4, !dbg !78, !tbaa !22
  store i32 %14, i32* %.omp.iv, align 4, !dbg !78, !tbaa !22
  br label %omp.inner.for.cond, !dbg !76

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %15 = load i32, i32* %.omp.iv, align 4, !dbg !78, !tbaa !22
  %16 = load i32, i32* %.omp.ub, align 4, !dbg !78, !tbaa !22
  %cmp1 = icmp sle i32 %15, %16, !dbg !79
  br i1 %cmp1, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !76

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !76

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %17 = load i32, i32* %.omp.iv, align 4, !dbg !78, !tbaa !22
  %mul = mul nsw i32 %17, 1, !dbg !80
  %add = add nsw i32 1, %mul, !dbg !80
  store i32 %add, i32* %i, align 4, !dbg !80, !tbaa !22
  %18 = load i32, i32* @sum0, align 4, !dbg !81, !tbaa !22
  %19 = load i32, i32* %i, align 4, !dbg !83, !tbaa !22
  %add2 = add nsw i32 %18, %19, !dbg !84
  store i32 %add2, i32* @sum0, align 4, !dbg !85, !tbaa !22
  br label %omp.body.continue, !dbg !86

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !87

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %20 = load i32, i32* %.omp.iv, align 4, !dbg !78, !tbaa !22
  %add3 = add nsw i32 %20, 1, !dbg !79
  store i32 %add3, i32* %.omp.iv, align 4, !dbg !79, !tbaa !22
  br label %omp.inner.for.cond, !dbg !87, !llvm.loop !88

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !87

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %21 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !87
  store i8* getelementptr inbounds ([80 x i8], [80 x i8]* @2, i32 0, i32 0), i8** %21, align 8, !dbg !87, !tbaa !27
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %11), !dbg !87
  %22 = bitcast i32* %i to i8*, !dbg !87
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %22) #5, !dbg !87
  %23 = bitcast i32* %.omp.is_last to i8*, !dbg !87
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %23) #5, !dbg !87
  %24 = bitcast i32* %.omp.stride to i8*, !dbg !87
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %24) #5, !dbg !87
  %25 = bitcast i32* %.omp.ub to i8*, !dbg !87
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %25) #5, !dbg !87
  %26 = bitcast i32* %.omp.lb to i8*, !dbg !87
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %26) #5, !dbg !87
  %27 = bitcast i32* %.omp.iv to i8*, !dbg !87
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %27) #5, !dbg !87
  %28 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !89
  store i8* getelementptr inbounds ([79 x i8], [79 x i8]* @1, i32 0, i32 0), i8** %28, align 8, !dbg !89, !tbaa !27
  call void @__kmpc_barrier(%struct.ident_t* %.kmpc_loc.addr, i32 %11), !dbg !89
  %29 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !90
  store i8* getelementptr inbounds ([79 x i8], [79 x i8]* @3, i32 0, i32 0), i8** %29, align 8, !dbg !90, !tbaa !27
  call void @__kmpc_critical(%struct.ident_t* %.kmpc_loc.addr, i32 %11, [8 x i32]* @.gomp_critical_user_.var), !dbg !90
  %30 = load i32, i32* %2, align 4, !dbg !91, !tbaa !22
  %31 = load i32, i32* @sum0, align 4, !dbg !94, !tbaa !22
  %add4 = add nsw i32 %30, %31, !dbg !95
  store i32 %add4, i32* %2, align 4, !dbg !96, !tbaa !22
  call void @__kmpc_end_critical(%struct.ident_t* %.kmpc_loc.addr, i32 %11, [8 x i32]* @.gomp_critical_user_.var), !dbg !97
  ret void, !dbg !98
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

declare dso_local void @__kmpc_barrier(%struct.ident_t*, i32)

declare dso_local void @__kmpc_end_critical(%struct.ident_t*, i32, [8 x i32]*)

declare dso_local void @__kmpc_critical(%struct.ident_t*, i32, [8 x i32]*)

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %sum) #3 !dbg !99 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %sum.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !72
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !101, metadata !DIExpression()), !dbg !104
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !72
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !102, metadata !DIExpression()), !dbg !104
  store i32* %sum, i32** %sum.addr, align 8, !tbaa !72
  call void @llvm.dbg.declare(metadata i32** %sum.addr, metadata !103, metadata !DIExpression()), !dbg !104
  %0 = load i32*, i32** %sum.addr, align 8, !dbg !105, !tbaa !72
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !105, !tbaa !72
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !105, !tbaa !72
  %3 = load i32*, i32** %sum.addr, align 8, !dbg !105, !tbaa !72
  call void @.omp_outlined._debug__(i32* %1, i32* %2, i32* %3) #5, !dbg !105
  ret void, !dbg !105
}

declare !callback !106 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

declare dso_local i32 @printf(i8*, ...) #4

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!9, !10, !11}
!llvm.ident = !{!12}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "sum0", scope: !2, file: !3, line: 57, type: !8, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "integration/dataracebench/DRB092-threadprivatemissing2-orig-yes.c", directory: "/home/brad/Code/OpenRace/tests/data")
!4 = !{}
!5 = !{!0, !6}
!6 = !DIGlobalVariableExpression(var: !7, expr: !DIExpression())
!7 = distinct !DIGlobalVariable(name: "sum1", scope: !2, file: !3, line: 57, type: !8, isLocal: false, isDefinition: true)
!8 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!9 = !{i32 7, !"Dwarf Version", i32 4}
!10 = !{i32 2, !"Debug Info Version", i32 3}
!11 = !{i32 1, !"wchar_size", i32 4}
!12 = !{!"clang version 10.0.1 "}
!13 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 60, type: !14, scopeLine: 61, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !16)
!14 = !DISubroutineType(types: !15)
!15 = !{!8}
!16 = !{!17, !18}
!17 = !DILocalVariable(name: "i", scope: !13, file: !3, line: 62, type: !8)
!18 = !DILocalVariable(name: "sum", scope: !13, file: !3, line: 62, type: !8)
!19 = !DILocation(line: 62, column: 3, scope: !13)
!20 = !DILocation(line: 62, column: 7, scope: !13)
!21 = !DILocation(line: 62, column: 10, scope: !13)
!22 = !{!23, !23, i64 0}
!23 = !{!"int", !24, i64 0}
!24 = !{!"omnipotent char", !25, i64 0}
!25 = !{!"Simple C/C++ TBAA"}
!26 = !DILocation(line: 63, column: 1, scope: !13)
!27 = !{!28, !29, i64 16}
!28 = !{!"ident_t", !23, i64 0, !23, i64 4, !23, i64 8, !23, i64 12, !29, i64 16}
!29 = !{!"any pointer", !24, i64 0}
!30 = !DILocation(line: 76, column: 9, scope: !31)
!31 = distinct !DILexicalBlock(scope: !13, file: !3, line: 76, column: 3)
!32 = !DILocation(line: 76, column: 8, scope: !31)
!33 = !DILocation(line: 76, column: 12, scope: !34)
!34 = distinct !DILexicalBlock(scope: !31, file: !3, line: 76, column: 3)
!35 = !DILocation(line: 76, column: 13, scope: !34)
!36 = !DILocation(line: 76, column: 3, scope: !31)
!37 = !DILocation(line: 78, column: 10, scope: !38)
!38 = distinct !DILexicalBlock(scope: !34, file: !3, line: 77, column: 3)
!39 = !DILocation(line: 78, column: 15, scope: !38)
!40 = !DILocation(line: 78, column: 14, scope: !38)
!41 = !DILocation(line: 78, column: 9, scope: !38)
!42 = !DILocation(line: 79, column: 3, scope: !38)
!43 = !DILocation(line: 76, column: 21, scope: !34)
!44 = !DILocation(line: 76, column: 3, scope: !34)
!45 = distinct !{!45, !36, !46}
!46 = !DILocation(line: 79, column: 3, scope: !31)
!47 = !DILocation(line: 80, column: 30, scope: !13)
!48 = !DILocation(line: 80, column: 34, scope: !13)
!49 = !DILocation(line: 80, column: 3, scope: !13)
!50 = !DILocation(line: 83, column: 1, scope: !13)
!51 = !DILocation(line: 82, column: 3, scope: !13)
!52 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !3, file: !3, line: 64, type: !53, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !60)
!53 = !DISubroutineType(types: !54)
!54 = !{null, !55, !55, !59}
!55 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !56)
!56 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !57)
!57 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !58, size: 64)
!58 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!59 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !8, size: 64)
!60 = !{!61, !62, !63, !64, !67, !68, !69, !70, !71}
!61 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !52, type: !55, flags: DIFlagArtificial)
!62 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !52, type: !55, flags: DIFlagArtificial)
!63 = !DILocalVariable(name: "sum", arg: 3, scope: !52, file: !3, line: 62, type: !59)
!64 = !DILocalVariable(name: ".omp.iv", scope: !65, type: !8, flags: DIFlagArtificial)
!65 = distinct !DILexicalBlock(scope: !66, file: !3, line: 65, column: 1)
!66 = distinct !DILexicalBlock(scope: !52, file: !3, line: 64, column: 3)
!67 = !DILocalVariable(name: ".omp.lb", scope: !65, type: !8, flags: DIFlagArtificial)
!68 = !DILocalVariable(name: ".omp.ub", scope: !65, type: !8, flags: DIFlagArtificial)
!69 = !DILocalVariable(name: ".omp.stride", scope: !65, type: !8, flags: DIFlagArtificial)
!70 = !DILocalVariable(name: ".omp.is_last", scope: !65, type: !8, flags: DIFlagArtificial)
!71 = !DILocalVariable(name: "i", scope: !65, type: !8, flags: DIFlagArtificial)
!72 = !{!29, !29, i64 0}
!73 = !DILocation(line: 0, scope: !52)
!74 = !DILocation(line: 62, column: 10, scope: !52)
!75 = !DILocation(line: 64, column: 3, scope: !52)
!76 = !DILocation(line: 65, column: 1, scope: !66)
!77 = !DILocation(line: 0, scope: !65)
!78 = !DILocation(line: 66, column: 10, scope: !65)
!79 = !DILocation(line: 66, column: 5, scope: !65)
!80 = !DILocation(line: 66, column: 22, scope: !65)
!81 = !DILocation(line: 68, column: 12, scope: !82)
!82 = distinct !DILexicalBlock(scope: !65, file: !3, line: 67, column: 5)
!83 = !DILocation(line: 68, column: 17, scope: !82)
!84 = !DILocation(line: 68, column: 16, scope: !82)
!85 = !DILocation(line: 68, column: 11, scope: !82)
!86 = !DILocation(line: 69, column: 5, scope: !82)
!87 = !DILocation(line: 65, column: 1, scope: !65)
!88 = distinct !{!88, !87, !89}
!89 = !DILocation(line: 65, column: 16, scope: !65)
!90 = !DILocation(line: 70, column: 1, scope: !66)
!91 = !DILocation(line: 72, column: 12, scope: !92)
!92 = distinct !DILexicalBlock(scope: !93, file: !3, line: 71, column: 5)
!93 = distinct !DILexicalBlock(scope: !66, file: !3, line: 70, column: 1)
!94 = !DILocation(line: 72, column: 16, scope: !92)
!95 = !DILocation(line: 72, column: 15, scope: !92)
!96 = !DILocation(line: 72, column: 10, scope: !92)
!97 = !DILocation(line: 73, column: 5, scope: !92)
!98 = !DILocation(line: 74, column: 3, scope: !52)
!99 = distinct !DISubprogram(name: ".omp_outlined.", scope: !3, file: !3, line: 64, type: !53, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !100)
!100 = !{!101, !102, !103}
!101 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !99, type: !55, flags: DIFlagArtificial)
!102 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !99, type: !55, flags: DIFlagArtificial)
!103 = !DILocalVariable(name: "sum", arg: 3, scope: !99, type: !59, flags: DIFlagArtificial)
!104 = !DILocation(line: 0, scope: !99)
!105 = !DILocation(line: 64, column: 3, scope: !99)
!106 = !{!107}
!107 = !{i64 2, i64 -1, i64 -1, i1 true}
