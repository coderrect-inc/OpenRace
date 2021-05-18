; ModuleID = 'integration/dataracebench/DRB171-threadprivate3-orig-no.c'
source_filename = "integration/dataracebench/DRB171-threadprivate3-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@x = internal thread_local global [20 x double] zeroinitializer, align 16, !dbg !0
@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [71 x i8] c";integration/dataracebench/DRB171-threadprivate3-orig-no.c;main;24;3;;\00", align 1
@2 = private unnamed_addr constant [72 x i8] c";integration/dataracebench/DRB171-threadprivate3-orig-no.c;main;24;43;;\00", align 1
@3 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"%f %f\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main() #0 !dbg !20 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca double, align 8
  %k = alloca double, align 8
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32 0, i32* %retval, align 4
  %2 = bitcast i32* %i to i8*, !dbg !25
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #5, !dbg !25
  call void @llvm.dbg.declare(metadata i32* %i, metadata !22, metadata !DIExpression()), !dbg !26
  %3 = bitcast double* %j to i8*, !dbg !27
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %3) #5, !dbg !27
  call void @llvm.dbg.declare(metadata double* %j, metadata !23, metadata !DIExpression()), !dbg !28
  %4 = bitcast double* %k to i8*, !dbg !27
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %4) #5, !dbg !27
  call void @llvm.dbg.declare(metadata double* %k, metadata !24, metadata !DIExpression()), !dbg !29
  %5 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !30
  store i8* getelementptr inbounds ([71 x i8], [71 x i8]* @1, i32 0, i32 0), i8** %5, align 8, !dbg !30, !tbaa !31
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 2, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, double*, double*)* @.omp_outlined. to void (i32*, i32*, ...)*), double* %j, double* %k), !dbg !30
  %6 = load double, double* %j, align 8, !dbg !37, !tbaa !38
  %7 = load double, double* %k, align 8, !dbg !40, !tbaa !38
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), double %6, double %7), !dbg !41
  %8 = bitcast double* %k to i8*, !dbg !42
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %8) #5, !dbg !42
  %9 = bitcast double* %j to i8*, !dbg !42
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %9) #5, !dbg !42
  %10 = bitcast i32* %i to i8*, !dbg !42
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %10) #5, !dbg !42
  ret i32 0, !dbg !43
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., double* dereferenceable(8) %j, double* dereferenceable(8) %k) #3 !dbg !44 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %j.addr = alloca double*, align 8
  %k.addr = alloca double*, align 8
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
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !63
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !53, metadata !DIExpression()), !dbg !64
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !63
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !54, metadata !DIExpression()), !dbg !64
  store double* %j, double** %j.addr, align 8, !tbaa !63
  call void @llvm.dbg.declare(metadata double** %j.addr, metadata !55, metadata !DIExpression()), !dbg !65
  store double* %k, double** %k.addr, align 8, !tbaa !63
  call void @llvm.dbg.declare(metadata double** %k.addr, metadata !56, metadata !DIExpression()), !dbg !66
  %2 = load double*, double** %j.addr, align 8, !dbg !67, !tbaa !63
  %3 = load double*, double** %k.addr, align 8, !dbg !67, !tbaa !63
  %4 = bitcast i32* %.omp.iv to i8*, !dbg !67
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #5, !dbg !67
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !57, metadata !DIExpression()), !dbg !64
  %5 = bitcast i32* %.omp.lb to i8*, !dbg !67
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #5, !dbg !67
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !58, metadata !DIExpression()), !dbg !64
  store i32 0, i32* %.omp.lb, align 4, !dbg !68, !tbaa !69
  %6 = bitcast i32* %.omp.ub to i8*, !dbg !67
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #5, !dbg !67
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !59, metadata !DIExpression()), !dbg !64
  store i32 19, i32* %.omp.ub, align 4, !dbg !68, !tbaa !69
  %7 = bitcast i32* %.omp.stride to i8*, !dbg !67
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #5, !dbg !67
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !60, metadata !DIExpression()), !dbg !64
  store i32 1, i32* %.omp.stride, align 4, !dbg !68, !tbaa !69
  %8 = bitcast i32* %.omp.is_last to i8*, !dbg !67
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #5, !dbg !67
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !61, metadata !DIExpression()), !dbg !64
  store i32 0, i32* %.omp.is_last, align 4, !dbg !68, !tbaa !69
  %9 = bitcast i32* %i to i8*, !dbg !67
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #5, !dbg !67
  call void @llvm.dbg.declare(metadata i32* %i, metadata !62, metadata !DIExpression()), !dbg !64
  %10 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !67
  store i8* getelementptr inbounds ([71 x i8], [71 x i8]* @1, i32 0, i32 0), i8** %10, align 8, !dbg !67, !tbaa !31
  %11 = load i32*, i32** %.global_tid..addr, align 8, !dbg !67
  %12 = load i32, i32* %11, align 4, !dbg !67, !tbaa !69
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %12, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !67
  %13 = load i32, i32* %.omp.ub, align 4, !dbg !68, !tbaa !69
  %cmp = icmp sgt i32 %13, 19, !dbg !68
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !68

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !68

cond.false:                                       ; preds = %entry
  %14 = load i32, i32* %.omp.ub, align 4, !dbg !68, !tbaa !69
  br label %cond.end, !dbg !68

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 19, %cond.true ], [ %14, %cond.false ], !dbg !68
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !68, !tbaa !69
  %15 = load i32, i32* %.omp.lb, align 4, !dbg !68, !tbaa !69
  store i32 %15, i32* %.omp.iv, align 4, !dbg !68, !tbaa !69
  br label %omp.inner.for.cond, !dbg !67

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %16 = load i32, i32* %.omp.iv, align 4, !dbg !68, !tbaa !69
  %17 = load i32, i32* %.omp.ub, align 4, !dbg !68, !tbaa !69
  %cmp1 = icmp sle i32 %16, %17, !dbg !67
  br i1 %cmp1, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !67

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !67

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %18 = load i32, i32* %.omp.iv, align 4, !dbg !68, !tbaa !69
  %mul = mul nsw i32 %18, 1, !dbg !70
  %add = add nsw i32 0, %mul, !dbg !70
  store i32 %add, i32* %i, align 4, !dbg !70, !tbaa !69
  %19 = load i32, i32* %i, align 4, !dbg !71, !tbaa !69
  %idxprom = sext i32 %19 to i64, !dbg !73
  %arrayidx = getelementptr inbounds [20 x double], [20 x double]* @x, i64 0, i64 %idxprom, !dbg !73
  store double -1.000000e+00, double* %arrayidx, align 8, !dbg !74, !tbaa !38
  %call = call i32 @omp_get_thread_num(), !dbg !75
  %cmp2 = icmp eq i32 %call, 0, !dbg !77
  br i1 %cmp2, label %if.then, label %if.end, !dbg !78

if.then:                                          ; preds = %omp.inner.for.body
  %20 = load double, double* getelementptr inbounds ([20 x double], [20 x double]* @x, i64 0, i64 0), align 16, !dbg !79, !tbaa !38
  store double %20, double* %2, align 8, !dbg !81, !tbaa !38
  br label %if.end, !dbg !82

if.end:                                           ; preds = %if.then, %omp.inner.for.body
  %call3 = call i32 @omp_get_thread_num(), !dbg !83
  %cmp4 = icmp eq i32 %call3, 0, !dbg !85
  br i1 %cmp4, label %if.then5, label %if.end7, !dbg !86

if.then5:                                         ; preds = %if.end
  %21 = load i32, i32* %i, align 4, !dbg !87, !tbaa !69
  %conv = sitofp i32 %21 to double, !dbg !87
  %add6 = fadd double %conv, 5.000000e-02, !dbg !89
  store double %add6, double* %3, align 8, !dbg !90, !tbaa !38
  br label %if.end7, !dbg !91

if.end7:                                          ; preds = %if.then5, %if.end
  br label %omp.body.continue, !dbg !92

omp.body.continue:                                ; preds = %if.end7
  br label %omp.inner.for.inc, !dbg !93

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %22 = load i32, i32* %.omp.iv, align 4, !dbg !68, !tbaa !69
  %add8 = add nsw i32 %22, 1, !dbg !67
  store i32 %add8, i32* %.omp.iv, align 4, !dbg !67, !tbaa !69
  br label %omp.inner.for.cond, !dbg !93, !llvm.loop !94

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !93

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %23 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !93
  store i8* getelementptr inbounds ([72 x i8], [72 x i8]* @2, i32 0, i32 0), i8** %23, align 8, !dbg !93, !tbaa !31
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %12), !dbg !93
  %24 = bitcast i32* %i to i8*, !dbg !93
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %24) #5, !dbg !93
  %25 = bitcast i32* %.omp.is_last to i8*, !dbg !93
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %25) #5, !dbg !93
  %26 = bitcast i32* %.omp.stride to i8*, !dbg !93
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %26) #5, !dbg !93
  %27 = bitcast i32* %.omp.ub to i8*, !dbg !93
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %27) #5, !dbg !93
  %28 = bitcast i32* %.omp.lb to i8*, !dbg !93
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %28) #5, !dbg !93
  %29 = bitcast i32* %.omp.iv to i8*, !dbg !93
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %29) #5, !dbg !93
  ret void, !dbg !96
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare !dbg !6 dso_local i32 @omp_get_thread_num() #4

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., double* dereferenceable(8) %j, double* dereferenceable(8) %k) #3 !dbg !97 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %j.addr = alloca double*, align 8
  %k.addr = alloca double*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !63
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !99, metadata !DIExpression()), !dbg !103
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !63
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !100, metadata !DIExpression()), !dbg !103
  store double* %j, double** %j.addr, align 8, !tbaa !63
  call void @llvm.dbg.declare(metadata double** %j.addr, metadata !101, metadata !DIExpression()), !dbg !103
  store double* %k, double** %k.addr, align 8, !tbaa !63
  call void @llvm.dbg.declare(metadata double** %k.addr, metadata !102, metadata !DIExpression()), !dbg !103
  %0 = load double*, double** %j.addr, align 8, !dbg !104, !tbaa !63
  %1 = load double*, double** %k.addr, align 8, !dbg !104, !tbaa !63
  %2 = load i32*, i32** %.global_tid..addr, align 8, !dbg !104, !tbaa !63
  %3 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !104, !tbaa !63
  %4 = load double*, double** %j.addr, align 8, !dbg !104, !tbaa !63
  %5 = load double*, double** %k.addr, align 8, !dbg !104, !tbaa !63
  call void @.omp_outlined._debug__(i32* %2, i32* %3, double* %4, double* %5) #5, !dbg !104
  ret void, !dbg !104
}

declare !callback !105 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

declare dso_local i32 @printf(i8*, ...) #4

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!16, !17, !18}
!llvm.ident = !{!19}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "x", scope: !2, file: !3, line: 17, type: !12, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !5, globals: !11, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "integration/dataracebench/DRB171-threadprivate3-orig-no.c", directory: "/home/brad/Code/OpenRace/tests/data")
!4 = !{}
!5 = !{!6}
!6 = !DISubprogram(name: "omp_get_thread_num", scope: !7, file: !7, line: 68, type: !8, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !4)
!7 = !DIFile(filename: "/usr/include/omp.h", directory: "")
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !{!0}
!12 = !DICompositeType(tag: DW_TAG_array_type, baseType: !13, size: 1280, elements: !14)
!13 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!14 = !{!15}
!15 = !DISubrange(count: 20)
!16 = !{i32 7, !"Dwarf Version", i32 4}
!17 = !{i32 2, !"Debug Info Version", i32 3}
!18 = !{i32 1, !"wchar_size", i32 4}
!19 = !{!"clang version 10.0.1 "}
!20 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 20, type: !8, scopeLine: 20, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !21)
!21 = !{!22, !23, !24}
!22 = !DILocalVariable(name: "i", scope: !20, file: !3, line: 21, type: !10)
!23 = !DILocalVariable(name: "j", scope: !20, file: !3, line: 22, type: !13)
!24 = !DILocalVariable(name: "k", scope: !20, file: !3, line: 22, type: !13)
!25 = !DILocation(line: 21, column: 3, scope: !20)
!26 = !DILocation(line: 21, column: 7, scope: !20)
!27 = !DILocation(line: 22, column: 3, scope: !20)
!28 = !DILocation(line: 22, column: 10, scope: !20)
!29 = !DILocation(line: 22, column: 12, scope: !20)
!30 = !DILocation(line: 24, column: 3, scope: !20)
!31 = !{!32, !36, i64 16}
!32 = !{!"ident_t", !33, i64 0, !33, i64 4, !33, i64 8, !33, i64 12, !36, i64 16}
!33 = !{!"int", !34, i64 0}
!34 = !{!"omnipotent char", !35, i64 0}
!35 = !{!"Simple C/C++ TBAA"}
!36 = !{!"any pointer", !34, i64 0}
!37 = !DILocation(line: 35, column: 22, scope: !20)
!38 = !{!39, !39, i64 0}
!39 = !{!"double", !34, i64 0}
!40 = !DILocation(line: 35, column: 25, scope: !20)
!41 = !DILocation(line: 35, column: 3, scope: !20)
!42 = !DILocation(line: 38, column: 1, scope: !20)
!43 = !DILocation(line: 37, column: 3, scope: !20)
!44 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !3, file: !3, line: 25, type: !45, scopeLine: 25, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !52)
!45 = !DISubroutineType(types: !46)
!46 = !{null, !47, !47, !51, !51}
!47 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !48)
!48 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !49)
!49 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !50, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!51 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !13, size: 64)
!52 = !{!53, !54, !55, !56, !57, !58, !59, !60, !61, !62}
!53 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !44, type: !47, flags: DIFlagArtificial)
!54 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !44, type: !47, flags: DIFlagArtificial)
!55 = !DILocalVariable(name: "j", arg: 3, scope: !44, file: !3, line: 22, type: !51)
!56 = !DILocalVariable(name: "k", arg: 4, scope: !44, file: !3, line: 22, type: !51)
!57 = !DILocalVariable(name: ".omp.iv", scope: !44, type: !10, flags: DIFlagArtificial)
!58 = !DILocalVariable(name: ".omp.lb", scope: !44, type: !10, flags: DIFlagArtificial)
!59 = !DILocalVariable(name: ".omp.ub", scope: !44, type: !10, flags: DIFlagArtificial)
!60 = !DILocalVariable(name: ".omp.stride", scope: !44, type: !10, flags: DIFlagArtificial)
!61 = !DILocalVariable(name: ".omp.is_last", scope: !44, type: !10, flags: DIFlagArtificial)
!62 = !DILocalVariable(name: "i", scope: !44, type: !10, flags: DIFlagArtificial)
!63 = !{!36, !36, i64 0}
!64 = !DILocation(line: 0, scope: !44)
!65 = !DILocation(line: 22, column: 10, scope: !44)
!66 = !DILocation(line: 22, column: 12, scope: !44)
!67 = !DILocation(line: 25, column: 3, scope: !44)
!68 = !DILocation(line: 25, column: 8, scope: !44)
!69 = !{!33, !33, i64 0}
!70 = !DILocation(line: 25, column: 23, scope: !44)
!71 = !DILocation(line: 26, column: 7, scope: !72)
!72 = distinct !DILexicalBlock(scope: !44, file: !3, line: 25, column: 27)
!73 = !DILocation(line: 26, column: 5, scope: !72)
!74 = !DILocation(line: 26, column: 10, scope: !72)
!75 = !DILocation(line: 27, column: 8, scope: !76)
!76 = distinct !DILexicalBlock(scope: !72, file: !3, line: 27, column: 8)
!77 = !DILocation(line: 27, column: 28, scope: !76)
!78 = !DILocation(line: 27, column: 8, scope: !72)
!79 = !DILocation(line: 28, column: 11, scope: !80)
!80 = distinct !DILexicalBlock(scope: !76, file: !3, line: 27, column: 32)
!81 = !DILocation(line: 28, column: 9, scope: !80)
!82 = !DILocation(line: 29, column: 5, scope: !80)
!83 = !DILocation(line: 30, column: 8, scope: !84)
!84 = distinct !DILexicalBlock(scope: !72, file: !3, line: 30, column: 8)
!85 = !DILocation(line: 30, column: 28, scope: !84)
!86 = !DILocation(line: 30, column: 8, scope: !72)
!87 = !DILocation(line: 31, column: 11, scope: !88)
!88 = distinct !DILexicalBlock(scope: !84, file: !3, line: 30, column: 32)
!89 = !DILocation(line: 31, column: 12, scope: !88)
!90 = !DILocation(line: 31, column: 9, scope: !88)
!91 = !DILocation(line: 32, column: 5, scope: !88)
!92 = !DILocation(line: 33, column: 3, scope: !72)
!93 = !DILocation(line: 24, column: 3, scope: !44)
!94 = distinct !{!94, !93, !95}
!95 = !DILocation(line: 24, column: 43, scope: !44)
!96 = !DILocation(line: 33, column: 3, scope: !44)
!97 = distinct !DISubprogram(name: ".omp_outlined.", scope: !3, file: !3, line: 25, type: !45, scopeLine: 25, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !98)
!98 = !{!99, !100, !101, !102}
!99 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !97, type: !47, flags: DIFlagArtificial)
!100 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !97, type: !47, flags: DIFlagArtificial)
!101 = !DILocalVariable(name: "j", arg: 3, scope: !97, type: !51, flags: DIFlagArtificial)
!102 = !DILocalVariable(name: "k", arg: 4, scope: !97, type: !51, flags: DIFlagArtificial)
!103 = !DILocation(line: 0, scope: !97)
!104 = !DILocation(line: 25, column: 3, scope: !97)
!105 = !{!106}
!106 = !{i64 2, i64 -1, i64 -1, i1 true}
