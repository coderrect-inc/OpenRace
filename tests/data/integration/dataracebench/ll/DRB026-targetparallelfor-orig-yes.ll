; ModuleID = 'DRB026-targetparallelfor-orig-yes.c'
source_filename = "DRB026-targetparallelfor-orig-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [49 x i8] c";DRB026-targetparallelfor-orig-yes.c;main;62;1;;\00", align 1
@2 = private unnamed_addr constant [50 x i8] c";DRB026-targetparallelfor-orig-yes.c;main;62;25;;\00", align 1
@3 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !dbg !7 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %len = alloca i32, align 4
  %a = alloca [1000 x i32], align 16
  %len.casted = alloca i64, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %argc.addr, metadata !14, metadata !DIExpression()), !dbg !15
  store i8** %argv, i8*** %argv.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %argv.addr, metadata !16, metadata !DIExpression()), !dbg !17
  call void @llvm.dbg.declare(metadata i32* %i, metadata !18, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.declare(metadata i32* %len, metadata !20, metadata !DIExpression()), !dbg !21
  store i32 1000, i32* %len, align 4, !dbg !21
  call void @llvm.dbg.declare(metadata [1000 x i32]* %a, metadata !22, metadata !DIExpression()), !dbg !26
  store i32 0, i32* %i, align 4, !dbg !27
  br label %for.cond, !dbg !29

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !30
  %1 = load i32, i32* %len, align 4, !dbg !32
  %cmp = icmp slt i32 %0, %1, !dbg !33
  br i1 %cmp, label %for.body, label %for.end, !dbg !34

for.body:                                         ; preds = %for.cond
  %2 = load i32, i32* %i, align 4, !dbg !35
  %3 = load i32, i32* %i, align 4, !dbg !36
  %idxprom = sext i32 %3 to i64, !dbg !37
  %arrayidx = getelementptr inbounds [1000 x i32], [1000 x i32]* %a, i64 0, i64 %idxprom, !dbg !37
  store i32 %2, i32* %arrayidx, align 4, !dbg !38
  br label %for.inc, !dbg !37

for.inc:                                          ; preds = %for.body
  %4 = load i32, i32* %i, align 4, !dbg !39
  %inc = add nsw i32 %4, 1, !dbg !39
  store i32 %inc, i32* %i, align 4, !dbg !39
  br label %for.cond, !dbg !40, !llvm.loop !41

for.end:                                          ; preds = %for.cond
  %5 = load i32, i32* %len, align 4, !dbg !43
  %conv = bitcast i64* %len.casted to i32*, !dbg !43
  store i32 %5, i32* %conv, align 4, !dbg !43
  %6 = load i64, i64* %len.casted, align 8, !dbg !43
  call void @__omp_offloading_10307_2ec4117_main_l61(i64 %6, [1000 x i32]* %a) #4, !dbg !44
  ret i32 0, !dbg !46
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @__omp_offloading_10307_2ec4117_main_l61_debug__(i32 %len, [1000 x i32]* dereferenceable(4000) %a) #2 !dbg !47 {
entry:
  %len.addr = alloca i32, align 4
  %a.addr = alloca [1000 x i32]*, align 8
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32 %len, i32* %len.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %len.addr, metadata !51, metadata !DIExpression()), !dbg !52
  store [1000 x i32]* %a, [1000 x i32]** %a.addr, align 8
  call void @llvm.dbg.declare(metadata [1000 x i32]** %a.addr, metadata !53, metadata !DIExpression()), !dbg !54
  %2 = load [1000 x i32]*, [1000 x i32]** %a.addr, align 8, !dbg !55
  %3 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !55
  store i8* getelementptr inbounds ([49 x i8], [49 x i8]* @1, i32 0, i32 0), i8** %3, align 8, !dbg !55
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 2, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, [1000 x i32]*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %len.addr, [1000 x i32]* %2), !dbg !55
  ret void, !dbg !56
}

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %len, [1000 x i32]* dereferenceable(4000) %a) #2 !dbg !57 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %a.addr = alloca [1000 x i32]*, align 8
  %.omp.iv = alloca i32, align 4
  %tmp = alloca i32, align 4
  %.capture_expr. = alloca i32, align 4
  %.capture_expr.1 = alloca i32, align 4
  %i = alloca i32, align 4
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %i5 = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !65, metadata !DIExpression()), !dbg !66
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !67, metadata !DIExpression()), !dbg !66
  store i32* %len, i32** %len.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !68, metadata !DIExpression()), !dbg !69
  store [1000 x i32]* %a, [1000 x i32]** %a.addr, align 8
  call void @llvm.dbg.declare(metadata [1000 x i32]** %a.addr, metadata !70, metadata !DIExpression()), !dbg !71
  %2 = load i32*, i32** %len.addr, align 8, !dbg !72
  %3 = load [1000 x i32]*, [1000 x i32]** %a.addr, align 8, !dbg !72
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !73, metadata !DIExpression()), !dbg !66
  call void @llvm.dbg.declare(metadata i32* %.capture_expr., metadata !74, metadata !DIExpression()), !dbg !66
  %4 = load i32, i32* %2, align 4, !dbg !75
  %sub = sub nsw i32 %4, 1, !dbg !76
  store i32 %sub, i32* %.capture_expr., align 4, !dbg !75
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.1, metadata !74, metadata !DIExpression()), !dbg !66
  %5 = load i32, i32* %.capture_expr., align 4, !dbg !76
  %sub2 = sub nsw i32 %5, 0, !dbg !72
  %sub3 = sub nsw i32 %sub2, 1, !dbg !72
  %add = add nsw i32 %sub3, 1, !dbg !72
  %div = sdiv i32 %add, 1, !dbg !72
  %sub4 = sub nsw i32 %div, 1, !dbg !72
  store i32 %sub4, i32* %.capture_expr.1, align 4, !dbg !72
  call void @llvm.dbg.declare(metadata i32* %i, metadata !77, metadata !DIExpression()), !dbg !66
  store i32 0, i32* %i, align 4, !dbg !78
  %6 = load i32, i32* %.capture_expr., align 4, !dbg !76
  %cmp = icmp slt i32 0, %6, !dbg !72
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end, !dbg !72

omp.precond.then:                                 ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !79, metadata !DIExpression()), !dbg !66
  store i32 0, i32* %.omp.lb, align 4, !dbg !80
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !81, metadata !DIExpression()), !dbg !66
  %7 = load i32, i32* %.capture_expr.1, align 4, !dbg !72
  store i32 %7, i32* %.omp.ub, align 4, !dbg !80
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !82, metadata !DIExpression()), !dbg !66
  store i32 1, i32* %.omp.stride, align 4, !dbg !80
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !83, metadata !DIExpression()), !dbg !66
  store i32 0, i32* %.omp.is_last, align 4, !dbg !80
  call void @llvm.dbg.declare(metadata i32* %i5, metadata !77, metadata !DIExpression()), !dbg !66
  %8 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !72
  store i8* getelementptr inbounds ([49 x i8], [49 x i8]* @1, i32 0, i32 0), i8** %8, align 8, !dbg !72
  %9 = load i32*, i32** %.global_tid..addr, align 8, !dbg !72
  %10 = load i32, i32* %9, align 4, !dbg !72
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %10, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !72
  %11 = load i32, i32* %.omp.ub, align 4, !dbg !80
  %12 = load i32, i32* %.capture_expr.1, align 4, !dbg !72
  %cmp6 = icmp sgt i32 %11, %12, !dbg !80
  br i1 %cmp6, label %cond.true, label %cond.false, !dbg !80

cond.true:                                        ; preds = %omp.precond.then
  %13 = load i32, i32* %.capture_expr.1, align 4, !dbg !72
  br label %cond.end, !dbg !80

cond.false:                                       ; preds = %omp.precond.then
  %14 = load i32, i32* %.omp.ub, align 4, !dbg !80
  br label %cond.end, !dbg !80

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %13, %cond.true ], [ %14, %cond.false ], !dbg !80
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !80
  %15 = load i32, i32* %.omp.lb, align 4, !dbg !80
  store i32 %15, i32* %.omp.iv, align 4, !dbg !80
  br label %omp.inner.for.cond, !dbg !72

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %16 = load i32, i32* %.omp.iv, align 4, !dbg !80
  %17 = load i32, i32* %.omp.ub, align 4, !dbg !80
  %cmp7 = icmp sle i32 %16, %17, !dbg !72
  br i1 %cmp7, label %omp.inner.for.body, label %omp.inner.for.end, !dbg !72

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %18 = load i32, i32* %.omp.iv, align 4, !dbg !80
  %mul = mul nsw i32 %18, 1, !dbg !78
  %add8 = add nsw i32 0, %mul, !dbg !78
  store i32 %add8, i32* %i5, align 4, !dbg !78
  %19 = load i32, i32* %i5, align 4, !dbg !84
  %add9 = add nsw i32 %19, 1, !dbg !85
  %idxprom = sext i32 %add9 to i64, !dbg !86
  %arrayidx = getelementptr inbounds [1000 x i32], [1000 x i32]* %3, i64 0, i64 %idxprom, !dbg !86
  %20 = load i32, i32* %arrayidx, align 4, !dbg !86
  %add10 = add nsw i32 %20, 1, !dbg !87
  %21 = load i32, i32* %i5, align 4, !dbg !88
  %idxprom11 = sext i32 %21 to i64, !dbg !89
  %arrayidx12 = getelementptr inbounds [1000 x i32], [1000 x i32]* %3, i64 0, i64 %idxprom11, !dbg !89
  store i32 %add10, i32* %arrayidx12, align 4, !dbg !90
  br label %omp.body.continue, !dbg !89

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !91

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %22 = load i32, i32* %.omp.iv, align 4, !dbg !80
  %add13 = add nsw i32 %22, 1, !dbg !72
  store i32 %add13, i32* %.omp.iv, align 4, !dbg !72
  br label %omp.inner.for.cond, !dbg !91, !llvm.loop !92

omp.inner.for.end:                                ; preds = %omp.inner.for.cond
  br label %omp.loop.exit, !dbg !91

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %23 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !91
  store i8* getelementptr inbounds ([50 x i8], [50 x i8]* @2, i32 0, i32 0), i8** %23, align 8, !dbg !91
  %24 = load i32*, i32** %.global_tid..addr, align 8, !dbg !91
  %25 = load i32, i32* %24, align 4, !dbg !91
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %25), !dbg !91
  br label %omp.precond.end, !dbg !91

omp.precond.end:                                  ; preds = %omp.loop.exit, %entry
  ret void, !dbg !94
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %len, [1000 x i32]* dereferenceable(4000) %a) #2 !dbg !95 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %a.addr = alloca [1000 x i32]*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !96, metadata !DIExpression()), !dbg !97
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !98, metadata !DIExpression()), !dbg !97
  store i32* %len, i32** %len.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !99, metadata !DIExpression()), !dbg !97
  store [1000 x i32]* %a, [1000 x i32]** %a.addr, align 8
  call void @llvm.dbg.declare(metadata [1000 x i32]** %a.addr, metadata !100, metadata !DIExpression()), !dbg !97
  %0 = load i32*, i32** %len.addr, align 8, !dbg !101
  %1 = load [1000 x i32]*, [1000 x i32]** %a.addr, align 8, !dbg !101
  %2 = load i32*, i32** %.global_tid..addr, align 8, !dbg !101
  %3 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !101
  %4 = load i32*, i32** %len.addr, align 8, !dbg !101
  %5 = load [1000 x i32]*, [1000 x i32]** %a.addr, align 8, !dbg !101
  call void @.omp_outlined._debug__(i32* %2, i32* %3, i32* %4, [1000 x i32]* %5) #4, !dbg !101
  ret void, !dbg !101
}

declare !callback !102 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @__omp_offloading_10307_2ec4117_main_l61(i64 %len, [1000 x i32]* dereferenceable(4000) %a) #2 !dbg !104 {
entry:
  %len.addr = alloca i64, align 8
  %a.addr = alloca [1000 x i32]*, align 8
  store i64 %len, i64* %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !108, metadata !DIExpression()), !dbg !109
  store [1000 x i32]* %a, [1000 x i32]** %a.addr, align 8
  call void @llvm.dbg.declare(metadata [1000 x i32]** %a.addr, metadata !110, metadata !DIExpression()), !dbg !109
  %conv = bitcast i64* %len.addr to i32*, !dbg !111
  %0 = load [1000 x i32]*, [1000 x i32]** %a.addr, align 8, !dbg !111
  %1 = load i32, i32* %conv, align 8, !dbg !111
  %2 = load [1000 x i32]*, [1000 x i32]** %a.addr, align 8, !dbg !111
  call void @__omp_offloading_10307_2ec4117_main_l61_debug__(i32 %1, [1000 x i32]* %2) #4, !dbg !111
  ret void, !dbg !111
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noinline norecurse nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.1 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "DRB026-targetparallelfor-orig-yes.c", directory: "/home/yanze/code/OpenRace/tests/data/integration/dataracebench")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.1 "}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 52, type: !8, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !10, !11}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!14 = !DILocalVariable(name: "argc", arg: 1, scope: !7, file: !1, line: 52, type: !10)
!15 = !DILocation(line: 52, column: 14, scope: !7)
!16 = !DILocalVariable(name: "argv", arg: 2, scope: !7, file: !1, line: 52, type: !11)
!17 = !DILocation(line: 52, column: 26, scope: !7)
!18 = !DILocalVariable(name: "i", scope: !7, file: !1, line: 54, type: !10)
!19 = !DILocation(line: 54, column: 7, scope: !7)
!20 = !DILocalVariable(name: "len", scope: !7, file: !1, line: 55, type: !10)
!21 = !DILocation(line: 55, column: 7, scope: !7)
!22 = !DILocalVariable(name: "a", scope: !7, file: !1, line: 56, type: !23)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 32000, elements: !24)
!24 = !{!25}
!25 = !DISubrange(count: 1000)
!26 = !DILocation(line: 56, column: 7, scope: !7)
!27 = !DILocation(line: 58, column: 9, scope: !28)
!28 = distinct !DILexicalBlock(scope: !7, file: !1, line: 58, column: 3)
!29 = !DILocation(line: 58, column: 8, scope: !28)
!30 = !DILocation(line: 58, column: 13, scope: !31)
!31 = distinct !DILexicalBlock(scope: !28, file: !1, line: 58, column: 3)
!32 = !DILocation(line: 58, column: 15, scope: !31)
!33 = !DILocation(line: 58, column: 14, scope: !31)
!34 = !DILocation(line: 58, column: 3, scope: !28)
!35 = !DILocation(line: 59, column: 11, scope: !31)
!36 = !DILocation(line: 59, column: 7, scope: !31)
!37 = !DILocation(line: 59, column: 5, scope: !31)
!38 = !DILocation(line: 59, column: 9, scope: !31)
!39 = !DILocation(line: 58, column: 21, scope: !31)
!40 = !DILocation(line: 58, column: 3, scope: !31)
!41 = distinct !{!41, !34, !42}
!42 = !DILocation(line: 59, column: 11, scope: !28)
!43 = !DILocation(line: 61, column: 1, scope: !7)
!44 = !DILocation(line: 61, column: 1, scope: !45)
!45 = distinct !DILexicalBlock(scope: !7, file: !1, line: 61, column: 1)
!46 = !DILocation(line: 66, column: 3, scope: !7)
!47 = distinct !DISubprogram(name: "__omp_offloading_10307_2ec4117_main_l61_debug__", scope: !1, file: !1, line: 62, type: !48, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!48 = !DISubroutineType(types: !49)
!49 = !{null, !10, !50}
!50 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !23, size: 64)
!51 = !DILocalVariable(name: "len", arg: 1, scope: !47, file: !1, line: 55, type: !10)
!52 = !DILocation(line: 55, column: 7, scope: !47)
!53 = !DILocalVariable(name: "a", arg: 2, scope: !47, file: !1, line: 56, type: !50)
!54 = !DILocation(line: 56, column: 7, scope: !47)
!55 = !DILocation(line: 62, column: 1, scope: !47)
!56 = !DILocation(line: 62, column: 25, scope: !47)
!57 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 63, type: !58, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!58 = !DISubroutineType(types: !59)
!59 = !{null, !60, !60, !64, !50}
!60 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !61)
!61 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !62)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!64 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !10, size: 64)
!65 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !57, type: !60, flags: DIFlagArtificial)
!66 = !DILocation(line: 0, scope: !57)
!67 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !57, type: !60, flags: DIFlagArtificial)
!68 = !DILocalVariable(name: "len", arg: 3, scope: !57, file: !1, line: 55, type: !64)
!69 = !DILocation(line: 55, column: 7, scope: !57)
!70 = !DILocalVariable(name: "a", arg: 4, scope: !57, file: !1, line: 56, type: !50)
!71 = !DILocation(line: 56, column: 7, scope: !57)
!72 = !DILocation(line: 63, column: 3, scope: !57)
!73 = !DILocalVariable(name: ".omp.iv", scope: !57, type: !10, flags: DIFlagArtificial)
!74 = !DILocalVariable(name: ".capture_expr.", scope: !57, type: !10, flags: DIFlagArtificial)
!75 = !DILocation(line: 63, column: 15, scope: !57)
!76 = !DILocation(line: 63, column: 19, scope: !57)
!77 = !DILocalVariable(name: "i", scope: !57, type: !10, flags: DIFlagArtificial)
!78 = !DILocation(line: 63, column: 23, scope: !57)
!79 = !DILocalVariable(name: ".omp.lb", scope: !57, type: !10, flags: DIFlagArtificial)
!80 = !DILocation(line: 63, column: 8, scope: !57)
!81 = !DILocalVariable(name: ".omp.ub", scope: !57, type: !10, flags: DIFlagArtificial)
!82 = !DILocalVariable(name: ".omp.stride", scope: !57, type: !10, flags: DIFlagArtificial)
!83 = !DILocalVariable(name: ".omp.is_last", scope: !57, type: !10, flags: DIFlagArtificial)
!84 = !DILocation(line: 64, column: 12, scope: !57)
!85 = !DILocation(line: 64, column: 13, scope: !57)
!86 = !DILocation(line: 64, column: 10, scope: !57)
!87 = !DILocation(line: 64, column: 16, scope: !57)
!88 = !DILocation(line: 64, column: 7, scope: !57)
!89 = !DILocation(line: 64, column: 5, scope: !57)
!90 = !DILocation(line: 64, column: 9, scope: !57)
!91 = !DILocation(line: 62, column: 1, scope: !57)
!92 = distinct !{!92, !91, !93}
!93 = !DILocation(line: 62, column: 25, scope: !57)
!94 = !DILocation(line: 64, column: 17, scope: !57)
!95 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 63, type: !58, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!96 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !95, type: !60, flags: DIFlagArtificial)
!97 = !DILocation(line: 0, scope: !95)
!98 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !95, type: !60, flags: DIFlagArtificial)
!99 = !DILocalVariable(name: "len", arg: 3, scope: !95, type: !64, flags: DIFlagArtificial)
!100 = !DILocalVariable(name: "a", arg: 4, scope: !95, type: !50, flags: DIFlagArtificial)
!101 = !DILocation(line: 63, column: 3, scope: !95)
!102 = !{!103}
!103 = !{i64 2, i64 -1, i64 -1, i1 true}
!104 = distinct !DISubprogram(name: "__omp_offloading_10307_2ec4117_main_l61", scope: !1, file: !1, line: 62, type: !105, scopeLine: 62, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!105 = !DISubroutineType(types: !106)
!106 = !{null, !107, !50}
!107 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!108 = !DILocalVariable(name: "len", arg: 1, scope: !104, type: !107, flags: DIFlagArtificial)
!109 = !DILocation(line: 0, scope: !104)
!110 = !DILocalVariable(name: "a", arg: 2, scope: !104, type: !50, flags: DIFlagArtificial)
!111 = !DILocation(line: 62, column: 1, scope: !104)
