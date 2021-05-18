; ModuleID = 'integration/dataracebench/DRB033-truedeplinear-orig-yes.c'
source_filename = "integration/dataracebench/DRB033-truedeplinear-orig-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [71 x i8] c";integration/dataracebench/DRB033-truedeplinear-orig-yes.c;main;62;1;;\00", align 1
@2 = private unnamed_addr constant [72 x i8] c";integration/dataracebench/DRB033-truedeplinear-orig-yes.c;main;62;25;;\00", align 1
@3 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@.str.1 = private unnamed_addr constant [12 x i8] c"a[1001]=%d\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !dbg !7 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %a = alloca [2000 x i32], align 16
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4, !tbaa !22
  call void @llvm.dbg.declare(metadata i32* %argc.addr, metadata !15, metadata !DIExpression()), !dbg !26
  store i8** %argv, i8*** %argv.addr, align 8, !tbaa !27
  call void @llvm.dbg.declare(metadata i8*** %argv.addr, metadata !16, metadata !DIExpression()), !dbg !29
  %2 = bitcast i32* %i to i8*, !dbg !30
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #5, !dbg !30
  call void @llvm.dbg.declare(metadata i32* %i, metadata !17, metadata !DIExpression()), !dbg !31
  %3 = bitcast [2000 x i32]* %a to i8*, !dbg !32
  call void @llvm.lifetime.start.p0i8(i64 8000, i8* %3) #5, !dbg !32
  call void @llvm.dbg.declare(metadata [2000 x i32]* %a, metadata !18, metadata !DIExpression()), !dbg !33
  store i32 0, i32* %i, align 4, !dbg !34, !tbaa !22
  br label %for.cond, !dbg !36

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4, !dbg !37, !tbaa !22
  %cmp = icmp slt i32 %4, 2000, !dbg !39
  br i1 %cmp, label %for.body, label %for.end, !dbg !40

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4, !dbg !41, !tbaa !22
  %6 = load i32, i32* %i, align 4, !dbg !42, !tbaa !22
  %idxprom = sext i32 %6 to i64, !dbg !43
  %arrayidx = getelementptr inbounds [2000 x i32], [2000 x i32]* %a, i64 0, i64 %idxprom, !dbg !43
  store i32 %5, i32* %arrayidx, align 4, !dbg !44, !tbaa !22
  br label %for.inc, !dbg !43

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !dbg !45, !tbaa !22
  %inc = add nsw i32 %7, 1, !dbg !45
  store i32 %inc, i32* %i, align 4, !dbg !45, !tbaa !22
  br label %for.cond, !dbg !46, !llvm.loop !47

for.end:                                          ; preds = %for.cond
  %8 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !49
  store i8* getelementptr inbounds ([71 x i8], [71 x i8]* @1, i32 0, i32 0), i8** %8, align 8, !dbg !49, !tbaa !50
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, [2000 x i32]*)* @.omp_outlined. to void (i32*, i32*, ...)*), [2000 x i32]* %a), !dbg !49
  %arrayidx1 = getelementptr inbounds [2000 x i32], [2000 x i32]* %a, i64 0, i64 1001, !dbg !52
  %9 = load i32, i32* %arrayidx1, align 4, !dbg !52, !tbaa !22
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %9), !dbg !53
  %10 = bitcast [2000 x i32]* %a to i8*, !dbg !54
  call void @llvm.lifetime.end.p0i8(i64 8000, i8* %10) #5, !dbg !54
  %11 = bitcast i32* %i to i8*, !dbg !54
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %11) #5, !dbg !54
  ret i32 0, !dbg !55
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., [2000 x i32]* dereferenceable(8000) %a) #3 !dbg !56 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %a.addr = alloca [2000 x i32]*, align 8
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
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !27
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !65, metadata !DIExpression()), !dbg !74
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !27
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !66, metadata !DIExpression()), !dbg !74
  store [2000 x i32]* %a, [2000 x i32]** %a.addr, align 8, !tbaa !27
  call void @llvm.dbg.declare(metadata [2000 x i32]** %a.addr, metadata !67, metadata !DIExpression()), !dbg !75
  %2 = load [2000 x i32]*, [2000 x i32]** %a.addr, align 8, !dbg !76, !tbaa !27
  %3 = bitcast i32* %.omp.iv to i8*, !dbg !76
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #5, !dbg !76
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !68, metadata !DIExpression()), !dbg !74
  %4 = bitcast i32* %.omp.lb to i8*, !dbg !76
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #5, !dbg !76
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !69, metadata !DIExpression()), !dbg !74
  store i32 0, i32* %.omp.lb, align 4, !dbg !77, !tbaa !22
  %5 = bitcast i32* %.omp.ub to i8*, !dbg !76
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #5, !dbg !76
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !70, metadata !DIExpression()), !dbg !74
  store i32 999, i32* %.omp.ub, align 4, !dbg !77, !tbaa !22
  %6 = bitcast i32* %.omp.stride to i8*, !dbg !76
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #5, !dbg !76
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !71, metadata !DIExpression()), !dbg !74
  store i32 1, i32* %.omp.stride, align 4, !dbg !77, !tbaa !22
  %7 = bitcast i32* %.omp.is_last to i8*, !dbg !76
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #5, !dbg !76
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !72, metadata !DIExpression()), !dbg !74
  store i32 0, i32* %.omp.is_last, align 4, !dbg !77, !tbaa !22
  %8 = bitcast i32* %i to i8*, !dbg !76
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #5, !dbg !76
  call void @llvm.dbg.declare(metadata i32* %i, metadata !73, metadata !DIExpression()), !dbg !74
  %9 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !76
  store i8* getelementptr inbounds ([71 x i8], [71 x i8]* @1, i32 0, i32 0), i8** %9, align 8, !dbg !76, !tbaa !50
  %10 = load i32*, i32** %.global_tid..addr, align 8, !dbg !76
  %11 = load i32, i32* %10, align 4, !dbg !76, !tbaa !22
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %11, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !76
  %12 = load i32, i32* %.omp.ub, align 4, !dbg !77, !tbaa !22
  %cmp = icmp sgt i32 %12, 999, !dbg !77
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !77

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !77

cond.false:                                       ; preds = %entry
  %13 = load i32, i32* %.omp.ub, align 4, !dbg !77, !tbaa !22
  br label %cond.end, !dbg !77

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 999, %cond.true ], [ %13, %cond.false ], !dbg !77
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !77, !tbaa !22
  %14 = load i32, i32* %.omp.lb, align 4, !dbg !77, !tbaa !22
  store i32 %14, i32* %.omp.iv, align 4, !dbg !77, !tbaa !22
  br label %omp.inner.for.cond, !dbg !76

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %15 = load i32, i32* %.omp.iv, align 4, !dbg !77, !tbaa !22
  %16 = load i32, i32* %.omp.ub, align 4, !dbg !77, !tbaa !22
  %cmp1 = icmp sle i32 %15, %16, !dbg !76
  br i1 %cmp1, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !76

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !76

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %17 = load i32, i32* %.omp.iv, align 4, !dbg !77, !tbaa !22
  %mul = mul nsw i32 %17, 1, !dbg !78
  %add = add nsw i32 0, %mul, !dbg !78
  store i32 %add, i32* %i, align 4, !dbg !78, !tbaa !22
  %18 = load i32, i32* %i, align 4, !dbg !79, !tbaa !22
  %idxprom = sext i32 %18 to i64, !dbg !80
  %arrayidx = getelementptr inbounds [2000 x i32], [2000 x i32]* %2, i64 0, i64 %idxprom, !dbg !80
  %19 = load i32, i32* %arrayidx, align 4, !dbg !80, !tbaa !22
  %add2 = add nsw i32 %19, 1, !dbg !81
  %20 = load i32, i32* %i, align 4, !dbg !82, !tbaa !22
  %mul3 = mul nsw i32 2, %20, !dbg !83
  %add4 = add nsw i32 %mul3, 1, !dbg !84
  %idxprom5 = sext i32 %add4 to i64, !dbg !85
  %arrayidx6 = getelementptr inbounds [2000 x i32], [2000 x i32]* %2, i64 0, i64 %idxprom5, !dbg !85
  store i32 %add2, i32* %arrayidx6, align 4, !dbg !86, !tbaa !22
  br label %omp.body.continue, !dbg !85

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !87

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %21 = load i32, i32* %.omp.iv, align 4, !dbg !77, !tbaa !22
  %add7 = add nsw i32 %21, 1, !dbg !76
  store i32 %add7, i32* %.omp.iv, align 4, !dbg !76, !tbaa !22
  br label %omp.inner.for.cond, !dbg !87, !llvm.loop !88

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !87

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %22 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !87
  store i8* getelementptr inbounds ([72 x i8], [72 x i8]* @2, i32 0, i32 0), i8** %22, align 8, !dbg !87, !tbaa !50
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %11), !dbg !87
  %23 = bitcast i32* %i to i8*, !dbg !87
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %23) #5, !dbg !87
  %24 = bitcast i32* %.omp.is_last to i8*, !dbg !87
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %24) #5, !dbg !87
  %25 = bitcast i32* %.omp.stride to i8*, !dbg !87
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %25) #5, !dbg !87
  %26 = bitcast i32* %.omp.ub to i8*, !dbg !87
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %26) #5, !dbg !87
  %27 = bitcast i32* %.omp.lb to i8*, !dbg !87
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %27) #5, !dbg !87
  %28 = bitcast i32* %.omp.iv to i8*, !dbg !87
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %28) #5, !dbg !87
  ret void, !dbg !90
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., [2000 x i32]* dereferenceable(8000) %a) #3 !dbg !91 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %a.addr = alloca [2000 x i32]*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !27
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !93, metadata !DIExpression()), !dbg !96
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !27
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !94, metadata !DIExpression()), !dbg !96
  store [2000 x i32]* %a, [2000 x i32]** %a.addr, align 8, !tbaa !27
  call void @llvm.dbg.declare(metadata [2000 x i32]** %a.addr, metadata !95, metadata !DIExpression()), !dbg !96
  %0 = load [2000 x i32]*, [2000 x i32]** %a.addr, align 8, !dbg !97, !tbaa !27
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !97, !tbaa !27
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !97, !tbaa !27
  %3 = load [2000 x i32]*, [2000 x i32]** %a.addr, align 8, !dbg !97, !tbaa !27
  call void @.omp_outlined._debug__(i32* %1, i32* %2, [2000 x i32]* %3) #5, !dbg !97
  ret void, !dbg !97
}

declare !callback !98 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

declare dso_local i32 @printf(i8*, ...) #4

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "integration/dataracebench/DRB033-truedeplinear-orig-yes.c", directory: "/home/brad/Code/OpenRace/tests/data")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.1 "}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 53, type: !8, scopeLine: 54, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !14)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !10, !11}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!14 = !{!15, !16, !17, !18}
!15 = !DILocalVariable(name: "argc", arg: 1, scope: !7, file: !1, line: 53, type: !10)
!16 = !DILocalVariable(name: "argv", arg: 2, scope: !7, file: !1, line: 53, type: !11)
!17 = !DILocalVariable(name: "i", scope: !7, file: !1, line: 55, type: !10)
!18 = !DILocalVariable(name: "a", scope: !7, file: !1, line: 57, type: !19)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 64000, elements: !20)
!20 = !{!21}
!21 = !DISubrange(count: 2000)
!22 = !{!23, !23, i64 0}
!23 = !{!"int", !24, i64 0}
!24 = !{!"omnipotent char", !25, i64 0}
!25 = !{!"Simple C/C++ TBAA"}
!26 = !DILocation(line: 53, column: 14, scope: !7)
!27 = !{!28, !28, i64 0}
!28 = !{!"any pointer", !24, i64 0}
!29 = !DILocation(line: 53, column: 26, scope: !7)
!30 = !DILocation(line: 55, column: 3, scope: !7)
!31 = !DILocation(line: 55, column: 7, scope: !7)
!32 = !DILocation(line: 57, column: 3, scope: !7)
!33 = !DILocation(line: 57, column: 7, scope: !7)
!34 = !DILocation(line: 59, column: 9, scope: !35)
!35 = distinct !DILexicalBlock(scope: !7, file: !1, line: 59, column: 3)
!36 = !DILocation(line: 59, column: 8, scope: !35)
!37 = !DILocation(line: 59, column: 13, scope: !38)
!38 = distinct !DILexicalBlock(scope: !35, file: !1, line: 59, column: 3)
!39 = !DILocation(line: 59, column: 14, scope: !38)
!40 = !DILocation(line: 59, column: 3, scope: !35)
!41 = !DILocation(line: 60, column: 10, scope: !38)
!42 = !DILocation(line: 60, column: 7, scope: !38)
!43 = !DILocation(line: 60, column: 5, scope: !38)
!44 = !DILocation(line: 60, column: 9, scope: !38)
!45 = !DILocation(line: 59, column: 22, scope: !38)
!46 = !DILocation(line: 59, column: 3, scope: !38)
!47 = distinct !{!47, !40, !48}
!48 = !DILocation(line: 60, column: 10, scope: !35)
!49 = !DILocation(line: 62, column: 1, scope: !7)
!50 = !{!51, !28, i64 16}
!51 = !{!"ident_t", !23, i64 0, !23, i64 4, !23, i64 8, !23, i64 12, !28, i64 16}
!52 = !DILocation(line: 66, column: 26, scope: !7)
!53 = !DILocation(line: 66, column: 3, scope: !7)
!54 = !DILocation(line: 68, column: 1, scope: !7)
!55 = !DILocation(line: 67, column: 3, scope: !7)
!56 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 63, type: !57, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !64)
!57 = !DISubroutineType(types: !58)
!58 = !{null, !59, !59, !63}
!59 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !60)
!60 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !61)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!63 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !19, size: 64)
!64 = !{!65, !66, !67, !68, !69, !70, !71, !72, !73}
!65 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !56, type: !59, flags: DIFlagArtificial)
!66 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !56, type: !59, flags: DIFlagArtificial)
!67 = !DILocalVariable(name: "a", arg: 3, scope: !56, file: !1, line: 57, type: !63)
!68 = !DILocalVariable(name: ".omp.iv", scope: !56, type: !10, flags: DIFlagArtificial)
!69 = !DILocalVariable(name: ".omp.lb", scope: !56, type: !10, flags: DIFlagArtificial)
!70 = !DILocalVariable(name: ".omp.ub", scope: !56, type: !10, flags: DIFlagArtificial)
!71 = !DILocalVariable(name: ".omp.stride", scope: !56, type: !10, flags: DIFlagArtificial)
!72 = !DILocalVariable(name: ".omp.is_last", scope: !56, type: !10, flags: DIFlagArtificial)
!73 = !DILocalVariable(name: "i", scope: !56, type: !10, flags: DIFlagArtificial)
!74 = !DILocation(line: 0, scope: !56)
!75 = !DILocation(line: 57, column: 7, scope: !56)
!76 = !DILocation(line: 63, column: 3, scope: !56)
!77 = !DILocation(line: 63, column: 8, scope: !56)
!78 = !DILocation(line: 63, column: 19, scope: !56)
!79 = !DILocation(line: 64, column: 16, scope: !56)
!80 = !DILocation(line: 64, column: 14, scope: !56)
!81 = !DILocation(line: 64, column: 18, scope: !56)
!82 = !DILocation(line: 64, column: 9, scope: !56)
!83 = !DILocation(line: 64, column: 8, scope: !56)
!84 = !DILocation(line: 64, column: 10, scope: !56)
!85 = !DILocation(line: 64, column: 5, scope: !56)
!86 = !DILocation(line: 64, column: 13, scope: !56)
!87 = !DILocation(line: 62, column: 1, scope: !56)
!88 = distinct !{!88, !87, !89}
!89 = !DILocation(line: 62, column: 25, scope: !56)
!90 = !DILocation(line: 64, column: 19, scope: !56)
!91 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 63, type: !57, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !92)
!92 = !{!93, !94, !95}
!93 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !91, type: !59, flags: DIFlagArtificial)
!94 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !91, type: !59, flags: DIFlagArtificial)
!95 = !DILocalVariable(name: "a", arg: 3, scope: !91, type: !63, flags: DIFlagArtificial)
!96 = !DILocation(line: 0, scope: !91)
!97 = !DILocation(line: 63, column: 3, scope: !91)
!98 = !{!99}
!99 = !{i64 2, i64 -1, i64 -1, i1 true}
