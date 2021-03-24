; ModuleID = 'DRB011-minusminus-orig-yes.c'
source_filename = "DRB011-minusminus-orig-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [42 x i8] c";DRB011-minusminus-orig-yes.c;main;71;1;;\00", align 1
@2 = private unnamed_addr constant [43 x i8] c";DRB011-minusminus-orig-yes.c;main;71;25;;\00", align 1
@3 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"numNodes2 = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !dbg !7 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %len = alloca i32, align 4
  %numNodes = alloca i32, align 4
  %numNodes2 = alloca i32, align 4
  %x = alloca [100 x i32], align 16
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %argc.addr, metadata !14, metadata !DIExpression()), !dbg !15
  store i8** %argv, i8*** %argv.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %argv.addr, metadata !16, metadata !DIExpression()), !dbg !17
  call void @llvm.dbg.declare(metadata i32* %i, metadata !18, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.declare(metadata i32* %len, metadata !20, metadata !DIExpression()), !dbg !21
  store i32 100, i32* %len, align 4, !dbg !21
  call void @llvm.dbg.declare(metadata i32* %numNodes, metadata !22, metadata !DIExpression()), !dbg !23
  %2 = load i32, i32* %len, align 4, !dbg !24
  store i32 %2, i32* %numNodes, align 4, !dbg !23
  call void @llvm.dbg.declare(metadata i32* %numNodes2, metadata !25, metadata !DIExpression()), !dbg !26
  store i32 0, i32* %numNodes2, align 4, !dbg !26
  call void @llvm.dbg.declare(metadata [100 x i32]* %x, metadata !27, metadata !DIExpression()), !dbg !31
  store i32 0, i32* %i, align 4, !dbg !32
  br label %for.cond, !dbg !34

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4, !dbg !35
  %4 = load i32, i32* %len, align 4, !dbg !37
  %cmp = icmp slt i32 %3, %4, !dbg !38
  br i1 %cmp, label %for.body, label %for.end, !dbg !39

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %i, align 4, !dbg !40
  %rem = srem i32 %5, 2, !dbg !43
  %cmp1 = icmp eq i32 %rem, 0, !dbg !44
  br i1 %cmp1, label %if.then, label %if.else, !dbg !45

if.then:                                          ; preds = %for.body
  %6 = load i32, i32* %i, align 4, !dbg !46
  %idxprom = sext i32 %6 to i64, !dbg !47
  %arrayidx = getelementptr inbounds [100 x i32], [100 x i32]* %x, i64 0, i64 %idxprom, !dbg !47
  store i32 5, i32* %arrayidx, align 4, !dbg !48
  br label %if.end, !dbg !47

if.else:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !dbg !49
  %idxprom2 = sext i32 %7 to i64, !dbg !50
  %arrayidx3 = getelementptr inbounds [100 x i32], [100 x i32]* %x, i64 0, i64 %idxprom2, !dbg !50
  store i32 -5, i32* %arrayidx3, align 4, !dbg !51
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  br label %for.inc, !dbg !52

for.inc:                                          ; preds = %if.end
  %8 = load i32, i32* %i, align 4, !dbg !53
  %inc = add nsw i32 %8, 1, !dbg !53
  store i32 %inc, i32* %i, align 4, !dbg !53
  br label %for.cond, !dbg !54, !llvm.loop !55

for.end:                                          ; preds = %for.cond
  %9 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !57
  store i8* getelementptr inbounds ([42 x i8], [42 x i8]* @1, i32 0, i32 0), i8** %9, align 8, !dbg !57
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, [100 x i32]*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %numNodes, [100 x i32]* %x, i32* %numNodes2), !dbg !57
  %10 = load i32, i32* %numNodes2, align 4, !dbg !58
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %10), !dbg !59
  ret i32 0, !dbg !60
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %numNodes, [100 x i32]* dereferenceable(400) %x, i32* dereferenceable(4) %numNodes2) #2 !dbg !61 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %numNodes.addr = alloca i32*, align 8
  %x.addr = alloca [100 x i32]*, align 8
  %numNodes2.addr = alloca i32*, align 8
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
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !70, metadata !DIExpression()), !dbg !71
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !72, metadata !DIExpression()), !dbg !71
  store i32* %numNodes, i32** %numNodes.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %numNodes.addr, metadata !73, metadata !DIExpression()), !dbg !74
  store [100 x i32]* %x, [100 x i32]** %x.addr, align 8
  call void @llvm.dbg.declare(metadata [100 x i32]** %x.addr, metadata !75, metadata !DIExpression()), !dbg !76
  store i32* %numNodes2, i32** %numNodes2.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %numNodes2.addr, metadata !77, metadata !DIExpression()), !dbg !78
  %2 = load i32*, i32** %numNodes.addr, align 8, !dbg !79
  %3 = load [100 x i32]*, [100 x i32]** %x.addr, align 8, !dbg !79
  %4 = load i32*, i32** %numNodes2.addr, align 8, !dbg !79
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !80, metadata !DIExpression()), !dbg !71
  call void @llvm.dbg.declare(metadata i32* %.capture_expr., metadata !81, metadata !DIExpression()), !dbg !71
  %5 = load i32, i32* %2, align 4, !dbg !82
  %sub = sub nsw i32 %5, 1, !dbg !83
  store i32 %sub, i32* %.capture_expr., align 4, !dbg !82
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.1, metadata !81, metadata !DIExpression()), !dbg !71
  %6 = load i32, i32* %.capture_expr., align 4, !dbg !83
  %sub2 = sub nsw i32 %6, -1, !dbg !79
  %sub3 = sub nsw i32 %sub2, 1, !dbg !79
  %add = add nsw i32 %sub3, 1, !dbg !79
  %div = sdiv i32 %add, 1, !dbg !79
  %sub4 = sub nsw i32 %div, 1, !dbg !79
  store i32 %sub4, i32* %.capture_expr.1, align 4, !dbg !79
  call void @llvm.dbg.declare(metadata i32* %i, metadata !84, metadata !DIExpression()), !dbg !71
  %7 = load i32, i32* %.capture_expr., align 4, !dbg !83
  store i32 %7, i32* %i, align 4, !dbg !85
  %8 = load i32, i32* %.capture_expr., align 4, !dbg !83
  %cmp = icmp sgt i32 %8, -1, !dbg !79
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end, !dbg !79

omp.precond.then:                                 ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !86, metadata !DIExpression()), !dbg !71
  store i32 0, i32* %.omp.lb, align 4, !dbg !87
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !88, metadata !DIExpression()), !dbg !71
  %9 = load i32, i32* %.capture_expr.1, align 4, !dbg !79
  store i32 %9, i32* %.omp.ub, align 4, !dbg !87
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !89, metadata !DIExpression()), !dbg !71
  store i32 1, i32* %.omp.stride, align 4, !dbg !87
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !90, metadata !DIExpression()), !dbg !71
  store i32 0, i32* %.omp.is_last, align 4, !dbg !87
  call void @llvm.dbg.declare(metadata i32* %i5, metadata !84, metadata !DIExpression()), !dbg !71
  %10 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !79
  store i8* getelementptr inbounds ([42 x i8], [42 x i8]* @1, i32 0, i32 0), i8** %10, align 8, !dbg !79
  %11 = load i32*, i32** %.global_tid..addr, align 8, !dbg !79
  %12 = load i32, i32* %11, align 4, !dbg !79
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %12, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !79
  %13 = load i32, i32* %.omp.ub, align 4, !dbg !87
  %14 = load i32, i32* %.capture_expr.1, align 4, !dbg !79
  %cmp6 = icmp sgt i32 %13, %14, !dbg !87
  br i1 %cmp6, label %cond.true, label %cond.false, !dbg !87

cond.true:                                        ; preds = %omp.precond.then
  %15 = load i32, i32* %.capture_expr.1, align 4, !dbg !79
  br label %cond.end, !dbg !87

cond.false:                                       ; preds = %omp.precond.then
  %16 = load i32, i32* %.omp.ub, align 4, !dbg !87
  br label %cond.end, !dbg !87

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %15, %cond.true ], [ %16, %cond.false ], !dbg !87
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !87
  %17 = load i32, i32* %.omp.lb, align 4, !dbg !87
  store i32 %17, i32* %.omp.iv, align 4, !dbg !87
  br label %omp.inner.for.cond, !dbg !79

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %18 = load i32, i32* %.omp.iv, align 4, !dbg !87
  %19 = load i32, i32* %.omp.ub, align 4, !dbg !87
  %cmp7 = icmp sle i32 %18, %19, !dbg !79
  br i1 %cmp7, label %omp.inner.for.body, label %omp.inner.for.end, !dbg !79

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %20 = load i32, i32* %.capture_expr., align 4, !dbg !83
  %21 = load i32, i32* %.omp.iv, align 4, !dbg !87
  %mul = mul nsw i32 %21, 1, !dbg !85
  %sub8 = sub nsw i32 %20, %mul, !dbg !85
  store i32 %sub8, i32* %i5, align 4, !dbg !85
  %22 = load i32, i32* %i5, align 4, !dbg !91
  %idxprom = sext i32 %22 to i64, !dbg !94
  %arrayidx = getelementptr inbounds [100 x i32], [100 x i32]* %3, i64 0, i64 %idxprom, !dbg !94
  %23 = load i32, i32* %arrayidx, align 4, !dbg !94
  %cmp9 = icmp sle i32 %23, 0, !dbg !95
  br i1 %cmp9, label %if.then, label %if.end, !dbg !96

if.then:                                          ; preds = %omp.inner.for.body
  %24 = load i32, i32* %4, align 4, !dbg !97
  %dec = add nsw i32 %24, -1, !dbg !97
  store i32 %dec, i32* %4, align 4, !dbg !97
  br label %if.end, !dbg !99

if.end:                                           ; preds = %if.then, %omp.inner.for.body
  br label %omp.body.continue, !dbg !100

omp.body.continue:                                ; preds = %if.end
  br label %omp.inner.for.inc, !dbg !101

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %25 = load i32, i32* %.omp.iv, align 4, !dbg !87
  %add10 = add nsw i32 %25, 1, !dbg !79
  store i32 %add10, i32* %.omp.iv, align 4, !dbg !79
  br label %omp.inner.for.cond, !dbg !101, !llvm.loop !102

omp.inner.for.end:                                ; preds = %omp.inner.for.cond
  br label %omp.loop.exit, !dbg !101

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %26 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !101
  store i8* getelementptr inbounds ([43 x i8], [43 x i8]* @2, i32 0, i32 0), i8** %26, align 8, !dbg !101
  %27 = load i32*, i32** %.global_tid..addr, align 8, !dbg !101
  %28 = load i32, i32* %27, align 4, !dbg !101
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %28), !dbg !101
  br label %omp.precond.end, !dbg !101

omp.precond.end:                                  ; preds = %omp.loop.exit, %entry
  ret void, !dbg !104
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %numNodes, [100 x i32]* dereferenceable(400) %x, i32* dereferenceable(4) %numNodes2) #2 !dbg !105 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %numNodes.addr = alloca i32*, align 8
  %x.addr = alloca [100 x i32]*, align 8
  %numNodes2.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !106, metadata !DIExpression()), !dbg !107
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !108, metadata !DIExpression()), !dbg !107
  store i32* %numNodes, i32** %numNodes.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %numNodes.addr, metadata !109, metadata !DIExpression()), !dbg !107
  store [100 x i32]* %x, [100 x i32]** %x.addr, align 8
  call void @llvm.dbg.declare(metadata [100 x i32]** %x.addr, metadata !110, metadata !DIExpression()), !dbg !107
  store i32* %numNodes2, i32** %numNodes2.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %numNodes2.addr, metadata !111, metadata !DIExpression()), !dbg !107
  %0 = load i32*, i32** %numNodes.addr, align 8, !dbg !112
  %1 = load [100 x i32]*, [100 x i32]** %x.addr, align 8, !dbg !112
  %2 = load i32*, i32** %numNodes2.addr, align 8, !dbg !112
  %3 = load i32*, i32** %.global_tid..addr, align 8, !dbg !112
  %4 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !112
  %5 = load i32*, i32** %numNodes.addr, align 8, !dbg !112
  %6 = load [100 x i32]*, [100 x i32]** %x.addr, align 8, !dbg !112
  %7 = load i32*, i32** %numNodes2.addr, align 8, !dbg !112
  call void @.omp_outlined._debug__(i32* %3, i32* %4, i32* %5, [100 x i32]* %6, i32* %7) #5, !dbg !112
  ret void, !dbg !112
}

declare !callback !113 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

declare dso_local i32 @printf(i8*, ...) #4

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noinline norecurse nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.1 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "DRB011-minusminus-orig-yes.c", directory: "/home/yanze/code/OpenRace/tests/data/integration/dataracebench")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.1 "}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 54, type: !8, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !10, !11}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!14 = !DILocalVariable(name: "argc", arg: 1, scope: !7, file: !1, line: 54, type: !10)
!15 = !DILocation(line: 54, column: 14, scope: !7)
!16 = !DILocalVariable(name: "argv", arg: 2, scope: !7, file: !1, line: 54, type: !11)
!17 = !DILocation(line: 54, column: 26, scope: !7)
!18 = !DILocalVariable(name: "i", scope: !7, file: !1, line: 56, type: !10)
!19 = !DILocation(line: 56, column: 7, scope: !7)
!20 = !DILocalVariable(name: "len", scope: !7, file: !1, line: 57, type: !10)
!21 = !DILocation(line: 57, column: 7, scope: !7)
!22 = !DILocalVariable(name: "numNodes", scope: !7, file: !1, line: 59, type: !10)
!23 = !DILocation(line: 59, column: 7, scope: !7)
!24 = !DILocation(line: 59, column: 16, scope: !7)
!25 = !DILocalVariable(name: "numNodes2", scope: !7, file: !1, line: 59, type: !10)
!26 = !DILocation(line: 59, column: 21, scope: !7)
!27 = !DILocalVariable(name: "x", scope: !7, file: !1, line: 60, type: !28)
!28 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 3200, elements: !29)
!29 = !{!30}
!30 = !DISubrange(count: 100)
!31 = !DILocation(line: 60, column: 7, scope: !7)
!32 = !DILocation(line: 63, column: 9, scope: !33)
!33 = distinct !DILexicalBlock(scope: !7, file: !1, line: 63, column: 3)
!34 = !DILocation(line: 63, column: 8, scope: !33)
!35 = !DILocation(line: 63, column: 13, scope: !36)
!36 = distinct !DILexicalBlock(scope: !33, file: !1, line: 63, column: 3)
!37 = !DILocation(line: 63, column: 16, scope: !36)
!38 = !DILocation(line: 63, column: 14, scope: !36)
!39 = !DILocation(line: 63, column: 3, scope: !33)
!40 = !DILocation(line: 65, column: 9, scope: !41)
!41 = distinct !DILexicalBlock(scope: !42, file: !1, line: 65, column: 9)
!42 = distinct !DILexicalBlock(scope: !36, file: !1, line: 64, column: 3)
!43 = !DILocation(line: 65, column: 10, scope: !41)
!44 = !DILocation(line: 65, column: 12, scope: !41)
!45 = !DILocation(line: 65, column: 9, scope: !42)
!46 = !DILocation(line: 66, column: 9, scope: !41)
!47 = !DILocation(line: 66, column: 7, scope: !41)
!48 = !DILocation(line: 66, column: 11, scope: !41)
!49 = !DILocation(line: 68, column: 9, scope: !41)
!50 = !DILocation(line: 68, column: 7, scope: !41)
!51 = !DILocation(line: 68, column: 11, scope: !41)
!52 = !DILocation(line: 69, column: 3, scope: !42)
!53 = !DILocation(line: 63, column: 22, scope: !36)
!54 = !DILocation(line: 63, column: 3, scope: !36)
!55 = distinct !{!55, !39, !56}
!56 = !DILocation(line: 69, column: 3, scope: !33)
!57 = !DILocation(line: 71, column: 1, scope: !7)
!58 = !DILocation(line: 77, column: 31, scope: !7)
!59 = !DILocation(line: 77, column: 3, scope: !7)
!60 = !DILocation(line: 78, column: 3, scope: !7)
!61 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 72, type: !62, scopeLine: 72, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!62 = !DISubroutineType(types: !63)
!63 = !{null, !64, !64, !68, !69, !68}
!64 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !65)
!65 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !66)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!68 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !10, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !28, size: 64)
!70 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !61, type: !64, flags: DIFlagArtificial)
!71 = !DILocation(line: 0, scope: !61)
!72 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !61, type: !64, flags: DIFlagArtificial)
!73 = !DILocalVariable(name: "numNodes", arg: 3, scope: !61, file: !1, line: 59, type: !68)
!74 = !DILocation(line: 59, column: 7, scope: !61)
!75 = !DILocalVariable(name: "x", arg: 4, scope: !61, file: !1, line: 60, type: !69)
!76 = !DILocation(line: 60, column: 7, scope: !61)
!77 = !DILocalVariable(name: "numNodes2", arg: 5, scope: !61, file: !1, line: 59, type: !68)
!78 = !DILocation(line: 59, column: 21, scope: !61)
!79 = !DILocation(line: 72, column: 3, scope: !61)
!80 = !DILocalVariable(name: ".omp.iv", scope: !61, type: !10, flags: DIFlagArtificial)
!81 = !DILocalVariable(name: ".capture_expr.", scope: !61, type: !10, flags: DIFlagArtificial)
!82 = !DILocation(line: 72, column: 10, scope: !61)
!83 = !DILocation(line: 72, column: 18, scope: !61)
!84 = !DILocalVariable(name: "i", scope: !61, type: !10, flags: DIFlagArtificial)
!85 = !DILocation(line: 72, column: 30, scope: !61)
!86 = !DILocalVariable(name: ".omp.lb", scope: !61, type: !10, flags: DIFlagArtificial)
!87 = !DILocation(line: 72, column: 8, scope: !61)
!88 = !DILocalVariable(name: ".omp.ub", scope: !61, type: !10, flags: DIFlagArtificial)
!89 = !DILocalVariable(name: ".omp.stride", scope: !61, type: !10, flags: DIFlagArtificial)
!90 = !DILocalVariable(name: ".omp.is_last", scope: !61, type: !10, flags: DIFlagArtificial)
!91 = !DILocation(line: 73, column: 11, scope: !92)
!92 = distinct !DILexicalBlock(scope: !93, file: !1, line: 73, column: 9)
!93 = distinct !DILexicalBlock(scope: !61, file: !1, line: 72, column: 35)
!94 = !DILocation(line: 73, column: 9, scope: !92)
!95 = !DILocation(line: 73, column: 13, scope: !92)
!96 = !DILocation(line: 73, column: 9, scope: !93)
!97 = !DILocation(line: 74, column: 16, scope: !98)
!98 = distinct !DILexicalBlock(scope: !92, file: !1, line: 73, column: 18)
!99 = !DILocation(line: 75, column: 5, scope: !98)
!100 = !DILocation(line: 76, column: 3, scope: !93)
!101 = !DILocation(line: 71, column: 1, scope: !61)
!102 = distinct !{!102, !101, !103}
!103 = !DILocation(line: 71, column: 25, scope: !61)
!104 = !DILocation(line: 76, column: 3, scope: !61)
!105 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 72, type: !62, scopeLine: 72, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!106 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !105, type: !64, flags: DIFlagArtificial)
!107 = !DILocation(line: 0, scope: !105)
!108 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !105, type: !64, flags: DIFlagArtificial)
!109 = !DILocalVariable(name: "numNodes", arg: 3, scope: !105, type: !68, flags: DIFlagArtificial)
!110 = !DILocalVariable(name: "x", arg: 4, scope: !105, type: !69, flags: DIFlagArtificial)
!111 = !DILocalVariable(name: "numNodes2", arg: 5, scope: !105, type: !68, flags: DIFlagArtificial)
!112 = !DILocation(line: 72, column: 3, scope: !105)
!113 = !{!114}
!114 = !{i64 2, i64 -1, i64 -1, i1 true}
