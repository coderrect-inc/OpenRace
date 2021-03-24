; ModuleID = 'DRB020-privatemissing-var-yes.c'
source_filename = "DRB020-privatemissing-var-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [45 x i8] c";DRB020-privatemissing-var-yes.c;main;62;1;;\00", align 1
@2 = private unnamed_addr constant [46 x i8] c";DRB020-privatemissing-var-yes.c;main;62;25;;\00", align 1
@3 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !dbg !7 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %tmp = alloca i32, align 4
  %len = alloca i32, align 4
  %saved_stack = alloca i8*, align 8
  %__vla_expr0 = alloca i64, align 8
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
  call void @llvm.dbg.declare(metadata i32* %tmp, metadata !20, metadata !DIExpression()), !dbg !21
  call void @llvm.dbg.declare(metadata i32* %len, metadata !22, metadata !DIExpression()), !dbg !23
  store i32 100, i32* %len, align 4, !dbg !23
  %2 = load i32, i32* %argc.addr, align 4, !dbg !24
  %cmp = icmp sgt i32 %2, 1, !dbg !26
  br i1 %cmp, label %if.then, label %if.end, !dbg !27

if.then:                                          ; preds = %entry
  %3 = load i8**, i8*** %argv.addr, align 8, !dbg !28
  %arrayidx = getelementptr inbounds i8*, i8** %3, i64 1, !dbg !28
  %4 = load i8*, i8** %arrayidx, align 8, !dbg !28
  %call = call i32 @atoi(i8* %4) #6, !dbg !29
  store i32 %call, i32* %len, align 4, !dbg !30
  br label %if.end, !dbg !31

if.end:                                           ; preds = %if.then, %entry
  %5 = load i32, i32* %len, align 4, !dbg !32
  %6 = zext i32 %5 to i64, !dbg !33
  %7 = call i8* @llvm.stacksave(), !dbg !33
  store i8* %7, i8** %saved_stack, align 8, !dbg !33
  %vla = alloca i32, i64 %6, align 16, !dbg !33
  store i64 %6, i64* %__vla_expr0, align 8, !dbg !33
  call void @llvm.dbg.declare(metadata i64* %__vla_expr0, metadata !34, metadata !DIExpression()), !dbg !36
  call void @llvm.dbg.declare(metadata i32* %vla, metadata !37, metadata !DIExpression()), !dbg !41
  store i32 0, i32* %i, align 4, !dbg !42
  br label %for.cond, !dbg !44

for.cond:                                         ; preds = %for.inc, %if.end
  %8 = load i32, i32* %i, align 4, !dbg !45
  %9 = load i32, i32* %len, align 4, !dbg !47
  %cmp1 = icmp slt i32 %8, %9, !dbg !48
  br i1 %cmp1, label %for.body, label %for.end, !dbg !49

for.body:                                         ; preds = %for.cond
  %10 = load i32, i32* %i, align 4, !dbg !50
  %11 = load i32, i32* %i, align 4, !dbg !51
  %idxprom = sext i32 %11 to i64, !dbg !52
  %arrayidx2 = getelementptr inbounds i32, i32* %vla, i64 %idxprom, !dbg !52
  store i32 %10, i32* %arrayidx2, align 4, !dbg !53
  br label %for.inc, !dbg !52

for.inc:                                          ; preds = %for.body
  %12 = load i32, i32* %i, align 4, !dbg !54
  %inc = add nsw i32 %12, 1, !dbg !54
  store i32 %inc, i32* %i, align 4, !dbg !54
  br label %for.cond, !dbg !55, !llvm.loop !56

for.end:                                          ; preds = %for.cond
  %13 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !58
  store i8* getelementptr inbounds ([45 x i8], [45 x i8]* @1, i32 0, i32 0), i8** %13, align 8, !dbg !58
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 4, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*, i64, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %len, i32* %tmp, i64 %6, i32* %vla), !dbg !58
  store i32 0, i32* %retval, align 4, !dbg !59
  %14 = load i8*, i8** %saved_stack, align 8, !dbg !60
  call void @llvm.stackrestore(i8* %14), !dbg !60
  %15 = load i32, i32* %retval, align 4, !dbg !60
  ret i32 %15, !dbg !60
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @atoi(i8*) #2

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %len, i32* dereferenceable(4) %tmp, i64 %vla, i32* dereferenceable(4) %a) #4 !dbg !61 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %tmp.addr = alloca i32*, align 8
  %vla.addr = alloca i64, align 8
  %a.addr = alloca i32*, align 8
  %.omp.iv = alloca i32, align 4
  %tmp1 = alloca i32, align 4
  %.capture_expr. = alloca i32, align 4
  %.capture_expr.2 = alloca i32, align 4
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
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !69, metadata !DIExpression()), !dbg !70
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !71, metadata !DIExpression()), !dbg !70
  store i32* %len, i32** %len.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !72, metadata !DIExpression()), !dbg !73
  store i32* %tmp, i32** %tmp.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %tmp.addr, metadata !74, metadata !DIExpression()), !dbg !75
  store i64 %vla, i64* %vla.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %vla.addr, metadata !76, metadata !DIExpression()), !dbg !70
  store i32* %a, i32** %a.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %a.addr, metadata !77, metadata !DIExpression()), !dbg !78
  %2 = load i32*, i32** %len.addr, align 8, !dbg !79
  %3 = load i32*, i32** %tmp.addr, align 8, !dbg !79
  %4 = load i64, i64* %vla.addr, align 8, !dbg !79
  %5 = load i32*, i32** %a.addr, align 8, !dbg !79
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !80, metadata !DIExpression()), !dbg !70
  call void @llvm.dbg.declare(metadata i32* %.capture_expr., metadata !81, metadata !DIExpression()), !dbg !70
  %6 = load i32, i32* %2, align 4, !dbg !82
  store i32 %6, i32* %.capture_expr., align 4, !dbg !82
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.2, metadata !81, metadata !DIExpression()), !dbg !70
  %7 = load i32, i32* %.capture_expr., align 4, !dbg !82
  %sub = sub nsw i32 %7, 0, !dbg !79
  %sub3 = sub nsw i32 %sub, 1, !dbg !79
  %add = add nsw i32 %sub3, 1, !dbg !79
  %div = sdiv i32 %add, 1, !dbg !79
  %sub4 = sub nsw i32 %div, 1, !dbg !79
  store i32 %sub4, i32* %.capture_expr.2, align 4, !dbg !79
  call void @llvm.dbg.declare(metadata i32* %i, metadata !83, metadata !DIExpression()), !dbg !70
  store i32 0, i32* %i, align 4, !dbg !84
  %8 = load i32, i32* %.capture_expr., align 4, !dbg !82
  %cmp = icmp slt i32 0, %8, !dbg !79
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end, !dbg !79

omp.precond.then:                                 ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !85, metadata !DIExpression()), !dbg !70
  store i32 0, i32* %.omp.lb, align 4, !dbg !86
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !87, metadata !DIExpression()), !dbg !70
  %9 = load i32, i32* %.capture_expr.2, align 4, !dbg !79
  store i32 %9, i32* %.omp.ub, align 4, !dbg !86
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !88, metadata !DIExpression()), !dbg !70
  store i32 1, i32* %.omp.stride, align 4, !dbg !86
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !89, metadata !DIExpression()), !dbg !70
  store i32 0, i32* %.omp.is_last, align 4, !dbg !86
  call void @llvm.dbg.declare(metadata i32* %i5, metadata !83, metadata !DIExpression()), !dbg !70
  %10 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !79
  store i8* getelementptr inbounds ([45 x i8], [45 x i8]* @1, i32 0, i32 0), i8** %10, align 8, !dbg !79
  %11 = load i32*, i32** %.global_tid..addr, align 8, !dbg !79
  %12 = load i32, i32* %11, align 4, !dbg !79
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %12, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !79
  %13 = load i32, i32* %.omp.ub, align 4, !dbg !86
  %14 = load i32, i32* %.capture_expr.2, align 4, !dbg !79
  %cmp6 = icmp sgt i32 %13, %14, !dbg !86
  br i1 %cmp6, label %cond.true, label %cond.false, !dbg !86

cond.true:                                        ; preds = %omp.precond.then
  %15 = load i32, i32* %.capture_expr.2, align 4, !dbg !79
  br label %cond.end, !dbg !86

cond.false:                                       ; preds = %omp.precond.then
  %16 = load i32, i32* %.omp.ub, align 4, !dbg !86
  br label %cond.end, !dbg !86

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %15, %cond.true ], [ %16, %cond.false ], !dbg !86
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !86
  %17 = load i32, i32* %.omp.lb, align 4, !dbg !86
  store i32 %17, i32* %.omp.iv, align 4, !dbg !86
  br label %omp.inner.for.cond, !dbg !79

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %18 = load i32, i32* %.omp.iv, align 4, !dbg !86
  %19 = load i32, i32* %.omp.ub, align 4, !dbg !86
  %cmp7 = icmp sle i32 %18, %19, !dbg !79
  br i1 %cmp7, label %omp.inner.for.body, label %omp.inner.for.end, !dbg !79

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %20 = load i32, i32* %.omp.iv, align 4, !dbg !86
  %mul = mul nsw i32 %20, 1, !dbg !84
  %add8 = add nsw i32 0, %mul, !dbg !84
  store i32 %add8, i32* %i5, align 4, !dbg !84
  %21 = load i32, i32* %i5, align 4, !dbg !90
  %idxprom = sext i32 %21 to i64, !dbg !92
  %arrayidx = getelementptr inbounds i32, i32* %5, i64 %idxprom, !dbg !92
  %22 = load i32, i32* %arrayidx, align 4, !dbg !92
  %23 = load i32, i32* %i5, align 4, !dbg !93
  %add9 = add nsw i32 %22, %23, !dbg !94
  store i32 %add9, i32* %3, align 4, !dbg !95
  %24 = load i32, i32* %3, align 4, !dbg !96
  %25 = load i32, i32* %i5, align 4, !dbg !97
  %idxprom10 = sext i32 %25 to i64, !dbg !98
  %arrayidx11 = getelementptr inbounds i32, i32* %5, i64 %idxprom10, !dbg !98
  store i32 %24, i32* %arrayidx11, align 4, !dbg !99
  br label %omp.body.continue, !dbg !100

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !101

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %26 = load i32, i32* %.omp.iv, align 4, !dbg !86
  %add12 = add nsw i32 %26, 1, !dbg !79
  store i32 %add12, i32* %.omp.iv, align 4, !dbg !79
  br label %omp.inner.for.cond, !dbg !101, !llvm.loop !102

omp.inner.for.end:                                ; preds = %omp.inner.for.cond
  br label %omp.loop.exit, !dbg !101

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %27 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !101
  store i8* getelementptr inbounds ([46 x i8], [46 x i8]* @2, i32 0, i32 0), i8** %27, align 8, !dbg !101
  %28 = load i32*, i32** %.global_tid..addr, align 8, !dbg !101
  %29 = load i32, i32* %28, align 4, !dbg !101
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %29), !dbg !101
  br label %omp.precond.end, !dbg !101

omp.precond.end:                                  ; preds = %omp.loop.exit, %entry
  ret void, !dbg !104
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %len, i32* dereferenceable(4) %tmp, i64 %vla, i32* dereferenceable(4) %a) #4 !dbg !105 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %tmp.addr = alloca i32*, align 8
  %vla.addr = alloca i64, align 8
  %a.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !106, metadata !DIExpression()), !dbg !107
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !108, metadata !DIExpression()), !dbg !107
  store i32* %len, i32** %len.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !109, metadata !DIExpression()), !dbg !107
  store i32* %tmp, i32** %tmp.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %tmp.addr, metadata !110, metadata !DIExpression()), !dbg !107
  store i64 %vla, i64* %vla.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %vla.addr, metadata !111, metadata !DIExpression()), !dbg !107
  store i32* %a, i32** %a.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %a.addr, metadata !112, metadata !DIExpression()), !dbg !107
  %0 = load i32*, i32** %len.addr, align 8, !dbg !113
  %1 = load i32*, i32** %tmp.addr, align 8, !dbg !113
  %2 = load i64, i64* %vla.addr, align 8, !dbg !113
  %3 = load i32*, i32** %a.addr, align 8, !dbg !113
  %4 = load i32*, i32** %.global_tid..addr, align 8, !dbg !113
  %5 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !113
  %6 = load i32*, i32** %len.addr, align 8, !dbg !113
  %7 = load i32*, i32** %tmp.addr, align 8, !dbg !113
  %8 = load i32*, i32** %a.addr, align 8, !dbg !113
  call void @.omp_outlined._debug__(i32* %4, i32* %5, i32* %6, i32* %7, i64 %2, i32* %8) #3, !dbg !113
  ret void, !dbg !113
}

declare !callback !114 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { nounwind readonly "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { noinline norecurse nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { argmemonly nounwind willreturn }
attributes #6 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.1 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "DRB020-privatemissing-var-yes.c", directory: "/home/yanze/code/OpenRace/tests/data/integration/dataracebench")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.1 "}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 51, type: !8, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !10, !11}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!14 = !DILocalVariable(name: "argc", arg: 1, scope: !7, file: !1, line: 51, type: !10)
!15 = !DILocation(line: 51, column: 14, scope: !7)
!16 = !DILocalVariable(name: "argv", arg: 2, scope: !7, file: !1, line: 51, type: !11)
!17 = !DILocation(line: 51, column: 26, scope: !7)
!18 = !DILocalVariable(name: "i", scope: !7, file: !1, line: 53, type: !10)
!19 = !DILocation(line: 53, column: 7, scope: !7)
!20 = !DILocalVariable(name: "tmp", scope: !7, file: !1, line: 54, type: !10)
!21 = !DILocation(line: 54, column: 7, scope: !7)
!22 = !DILocalVariable(name: "len", scope: !7, file: !1, line: 55, type: !10)
!23 = !DILocation(line: 55, column: 7, scope: !7)
!24 = !DILocation(line: 56, column: 7, scope: !25)
!25 = distinct !DILexicalBlock(scope: !7, file: !1, line: 56, column: 7)
!26 = !DILocation(line: 56, column: 11, scope: !25)
!27 = !DILocation(line: 56, column: 7, scope: !7)
!28 = !DILocation(line: 57, column: 16, scope: !25)
!29 = !DILocation(line: 57, column: 11, scope: !25)
!30 = !DILocation(line: 57, column: 9, scope: !25)
!31 = !DILocation(line: 57, column: 5, scope: !25)
!32 = !DILocation(line: 58, column: 9, scope: !7)
!33 = !DILocation(line: 58, column: 3, scope: !7)
!34 = !DILocalVariable(name: "__vla_expr0", scope: !7, type: !35, flags: DIFlagArtificial)
!35 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!36 = !DILocation(line: 0, scope: !7)
!37 = !DILocalVariable(name: "a", scope: !7, file: !1, line: 58, type: !38)
!38 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, elements: !39)
!39 = !{!40}
!40 = !DISubrange(count: !34)
!41 = !DILocation(line: 58, column: 7, scope: !7)
!42 = !DILocation(line: 59, column: 9, scope: !43)
!43 = distinct !DILexicalBlock(scope: !7, file: !1, line: 59, column: 3)
!44 = !DILocation(line: 59, column: 8, scope: !43)
!45 = !DILocation(line: 59, column: 12, scope: !46)
!46 = distinct !DILexicalBlock(scope: !43, file: !1, line: 59, column: 3)
!47 = !DILocation(line: 59, column: 14, scope: !46)
!48 = !DILocation(line: 59, column: 13, scope: !46)
!49 = !DILocation(line: 59, column: 3, scope: !43)
!50 = !DILocation(line: 60, column: 10, scope: !46)
!51 = !DILocation(line: 60, column: 7, scope: !46)
!52 = !DILocation(line: 60, column: 5, scope: !46)
!53 = !DILocation(line: 60, column: 9, scope: !46)
!54 = !DILocation(line: 59, column: 19, scope: !46)
!55 = !DILocation(line: 59, column: 3, scope: !46)
!56 = distinct !{!56, !49, !57}
!57 = !DILocation(line: 60, column: 10, scope: !43)
!58 = !DILocation(line: 62, column: 1, scope: !7)
!59 = !DILocation(line: 68, column: 3, scope: !7)
!60 = !DILocation(line: 69, column: 1, scope: !7)
!61 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 63, type: !62, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!62 = !DISubroutineType(types: !63)
!63 = !{null, !64, !64, !68, !68, !35, !68}
!64 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !65)
!65 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !66)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!67 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!68 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !10, size: 64)
!69 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !61, type: !64, flags: DIFlagArtificial)
!70 = !DILocation(line: 0, scope: !61)
!71 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !61, type: !64, flags: DIFlagArtificial)
!72 = !DILocalVariable(name: "len", arg: 3, scope: !61, file: !1, line: 55, type: !68)
!73 = !DILocation(line: 55, column: 7, scope: !61)
!74 = !DILocalVariable(name: "tmp", arg: 4, scope: !61, file: !1, line: 54, type: !68)
!75 = !DILocation(line: 54, column: 7, scope: !61)
!76 = !DILocalVariable(name: "vla", arg: 5, scope: !61, type: !35, flags: DIFlagArtificial)
!77 = !DILocalVariable(name: "a", arg: 6, scope: !61, file: !1, line: 58, type: !68)
!78 = !DILocation(line: 58, column: 7, scope: !61)
!79 = !DILocation(line: 63, column: 3, scope: !61)
!80 = !DILocalVariable(name: ".omp.iv", scope: !61, type: !10, flags: DIFlagArtificial)
!81 = !DILocalVariable(name: ".capture_expr.", scope: !61, type: !10, flags: DIFlagArtificial)
!82 = !DILocation(line: 63, column: 14, scope: !61)
!83 = !DILocalVariable(name: "i", scope: !61, type: !10, flags: DIFlagArtificial)
!84 = !DILocation(line: 63, column: 18, scope: !61)
!85 = !DILocalVariable(name: ".omp.lb", scope: !61, type: !10, flags: DIFlagArtificial)
!86 = !DILocation(line: 63, column: 8, scope: !61)
!87 = !DILocalVariable(name: ".omp.ub", scope: !61, type: !10, flags: DIFlagArtificial)
!88 = !DILocalVariable(name: ".omp.stride", scope: !61, type: !10, flags: DIFlagArtificial)
!89 = !DILocalVariable(name: ".omp.is_last", scope: !61, type: !10, flags: DIFlagArtificial)
!90 = !DILocation(line: 65, column: 12, scope: !91)
!91 = distinct !DILexicalBlock(scope: !61, file: !1, line: 64, column: 3)
!92 = !DILocation(line: 65, column: 10, scope: !91)
!93 = !DILocation(line: 65, column: 15, scope: !91)
!94 = !DILocation(line: 65, column: 14, scope: !91)
!95 = !DILocation(line: 65, column: 9, scope: !91)
!96 = !DILocation(line: 66, column: 12, scope: !91)
!97 = !DILocation(line: 66, column: 7, scope: !91)
!98 = !DILocation(line: 66, column: 5, scope: !91)
!99 = !DILocation(line: 66, column: 10, scope: !91)
!100 = !DILocation(line: 67, column: 3, scope: !91)
!101 = !DILocation(line: 62, column: 1, scope: !61)
!102 = distinct !{!102, !101, !103}
!103 = !DILocation(line: 62, column: 25, scope: !61)
!104 = !DILocation(line: 67, column: 3, scope: !61)
!105 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 63, type: !62, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!106 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !105, type: !64, flags: DIFlagArtificial)
!107 = !DILocation(line: 0, scope: !105)
!108 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !105, type: !64, flags: DIFlagArtificial)
!109 = !DILocalVariable(name: "len", arg: 3, scope: !105, type: !68, flags: DIFlagArtificial)
!110 = !DILocalVariable(name: "tmp", arg: 4, scope: !105, type: !68, flags: DIFlagArtificial)
!111 = !DILocalVariable(name: "vla", arg: 5, scope: !105, type: !35, flags: DIFlagArtificial)
!112 = !DILocalVariable(name: "a", arg: 6, scope: !105, type: !68, flags: DIFlagArtificial)
!113 = !DILocation(line: 63, column: 3, scope: !105)
!114 = !{!115}
!115 = !{i64 2, i64 -1, i64 -1, i1 true}
