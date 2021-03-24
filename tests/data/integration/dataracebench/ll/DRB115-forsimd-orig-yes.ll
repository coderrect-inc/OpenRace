; ModuleID = 'DRB115-forsimd-orig-yes.c'
source_filename = "DRB115-forsimd-orig-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [39 x i8] c";DRB115-forsimd-orig-yes.c;main;64;1;;\00", align 1
@2 = private unnamed_addr constant [40 x i8] c";DRB115-forsimd-orig-yes.c;main;64;31;;\00", align 1
@3 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"a[50]=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !dbg !7 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %len = alloca i32, align 4
  %a = alloca [100 x i32], align 16
  %b = alloca [100 x i32], align 16
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
  call void @llvm.dbg.declare(metadata [100 x i32]* %a, metadata !22, metadata !DIExpression()), !dbg !26
  call void @llvm.dbg.declare(metadata [100 x i32]* %b, metadata !27, metadata !DIExpression()), !dbg !28
  store i32 0, i32* %i, align 4, !dbg !29
  br label %for.cond, !dbg !31

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4, !dbg !32
  %3 = load i32, i32* %len, align 4, !dbg !34
  %cmp = icmp slt i32 %2, %3, !dbg !35
  br i1 %cmp, label %for.body, label %for.end, !dbg !36

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4, !dbg !37
  %5 = load i32, i32* %i, align 4, !dbg !39
  %idxprom = sext i32 %5 to i64, !dbg !40
  %arrayidx = getelementptr inbounds [100 x i32], [100 x i32]* %a, i64 0, i64 %idxprom, !dbg !40
  store i32 %4, i32* %arrayidx, align 4, !dbg !41
  %6 = load i32, i32* %i, align 4, !dbg !42
  %add = add nsw i32 %6, 1, !dbg !43
  %7 = load i32, i32* %i, align 4, !dbg !44
  %idxprom1 = sext i32 %7 to i64, !dbg !45
  %arrayidx2 = getelementptr inbounds [100 x i32], [100 x i32]* %b, i64 0, i64 %idxprom1, !dbg !45
  store i32 %add, i32* %arrayidx2, align 4, !dbg !46
  br label %for.inc, !dbg !47

for.inc:                                          ; preds = %for.body
  %8 = load i32, i32* %i, align 4, !dbg !48
  %inc = add nsw i32 %8, 1, !dbg !48
  store i32 %inc, i32* %i, align 4, !dbg !48
  br label %for.cond, !dbg !49, !llvm.loop !50

for.end:                                          ; preds = %for.cond
  %9 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !52
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @1, i32 0, i32 0), i8** %9, align 8, !dbg !52
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 4, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*, [100 x i32]*, [100 x i32]*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %i, i32* %len, [100 x i32]* %a, [100 x i32]* %b), !dbg !52
  %arrayidx3 = getelementptr inbounds [100 x i32], [100 x i32]* %a, i64 0, i64 50, !dbg !53
  %10 = load i32, i32* %arrayidx3, align 8, !dbg !53
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %10), !dbg !54
  ret i32 0, !dbg !55
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %i, i32* dereferenceable(4) %len, [100 x i32]* dereferenceable(400) %a, [100 x i32]* dereferenceable(400) %b) #2 !dbg !56 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %i.addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %a.addr = alloca [100 x i32]*, align 8
  %b.addr = alloca [100 x i32]*, align 8
  %.omp.iv = alloca i32, align 4
  %tmp = alloca i32, align 4
  %.capture_expr. = alloca i32, align 4
  %.capture_expr.1 = alloca i32, align 4
  %i5 = alloca i32, align 4
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %i6 = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !65, metadata !DIExpression()), !dbg !66
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !67, metadata !DIExpression()), !dbg !66
  store i32* %i, i32** %i.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %i.addr, metadata !68, metadata !DIExpression()), !dbg !69
  store i32* %len, i32** %len.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !70, metadata !DIExpression()), !dbg !71
  store [100 x i32]* %a, [100 x i32]** %a.addr, align 8
  call void @llvm.dbg.declare(metadata [100 x i32]** %a.addr, metadata !72, metadata !DIExpression()), !dbg !73
  store [100 x i32]* %b, [100 x i32]** %b.addr, align 8
  call void @llvm.dbg.declare(metadata [100 x i32]** %b.addr, metadata !74, metadata !DIExpression()), !dbg !75
  %2 = load i32*, i32** %i.addr, align 8, !dbg !76
  %3 = load i32*, i32** %len.addr, align 8, !dbg !76
  %4 = load [100 x i32]*, [100 x i32]** %a.addr, align 8, !dbg !76
  %5 = load [100 x i32]*, [100 x i32]** %b.addr, align 8, !dbg !76
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !77, metadata !DIExpression()), !dbg !66
  call void @llvm.dbg.declare(metadata i32* %.capture_expr., metadata !78, metadata !DIExpression()), !dbg !66
  %6 = load i32, i32* %3, align 4, !dbg !79
  %sub = sub nsw i32 %6, 1, !dbg !80
  store i32 %sub, i32* %.capture_expr., align 4, !dbg !79
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.1, metadata !78, metadata !DIExpression()), !dbg !66
  %7 = load i32, i32* %.capture_expr., align 4, !dbg !80
  %sub2 = sub nsw i32 %7, 0, !dbg !76
  %sub3 = sub nsw i32 %sub2, 1, !dbg !76
  %add = add nsw i32 %sub3, 1, !dbg !76
  %div = sdiv i32 %add, 1, !dbg !76
  %sub4 = sub nsw i32 %div, 1, !dbg !76
  store i32 %sub4, i32* %.capture_expr.1, align 4, !dbg !76
  call void @llvm.dbg.declare(metadata i32* %i5, metadata !81, metadata !DIExpression()), !dbg !66
  store i32 0, i32* %i5, align 4, !dbg !82
  %8 = load i32, i32* %.capture_expr., align 4, !dbg !80
  %cmp = icmp slt i32 0, %8, !dbg !76
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end, !dbg !76

omp.precond.then:                                 ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !83, metadata !DIExpression()), !dbg !66
  store i32 0, i32* %.omp.lb, align 4, !dbg !84
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !85, metadata !DIExpression()), !dbg !66
  %9 = load i32, i32* %.capture_expr.1, align 4, !dbg !76
  store i32 %9, i32* %.omp.ub, align 4, !dbg !84
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !86, metadata !DIExpression()), !dbg !66
  store i32 1, i32* %.omp.stride, align 4, !dbg !84
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !87, metadata !DIExpression()), !dbg !66
  store i32 0, i32* %.omp.is_last, align 4, !dbg !84
  call void @llvm.dbg.declare(metadata i32* %i6, metadata !81, metadata !DIExpression()), !dbg !66
  %10 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !76
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @1, i32 0, i32 0), i8** %10, align 8, !dbg !76
  %11 = load i32*, i32** %.global_tid..addr, align 8, !dbg !76
  %12 = load i32, i32* %11, align 4, !dbg !76
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %12, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !76
  %13 = load i32, i32* %.omp.ub, align 4, !dbg !84
  %14 = load i32, i32* %.capture_expr.1, align 4, !dbg !76
  %cmp7 = icmp sgt i32 %13, %14, !dbg !84
  br i1 %cmp7, label %cond.true, label %cond.false, !dbg !84

cond.true:                                        ; preds = %omp.precond.then
  %15 = load i32, i32* %.capture_expr.1, align 4, !dbg !76
  br label %cond.end, !dbg !84

cond.false:                                       ; preds = %omp.precond.then
  %16 = load i32, i32* %.omp.ub, align 4, !dbg !84
  br label %cond.end, !dbg !84

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %15, %cond.true ], [ %16, %cond.false ], !dbg !84
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !84
  %17 = load i32, i32* %.omp.lb, align 4, !dbg !84
  store i32 %17, i32* %.omp.iv, align 4, !dbg !84
  br label %omp.inner.for.cond, !dbg !76

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %18 = load i32, i32* %.omp.iv, align 4, !dbg !84
  %19 = load i32, i32* %.omp.ub, align 4, !dbg !84
  %cmp8 = icmp sle i32 %18, %19, !dbg !76
  br i1 %cmp8, label %omp.inner.for.body, label %omp.inner.for.end, !dbg !76

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %20 = load i32, i32* %.omp.iv, align 4, !dbg !84
  %mul = mul nsw i32 %20, 1, !dbg !82
  %add9 = add nsw i32 0, %mul, !dbg !82
  store i32 %add9, i32* %i6, align 4, !dbg !82
  %21 = load i32, i32* %i6, align 4, !dbg !88
  %idxprom = sext i32 %21 to i64, !dbg !89
  %arrayidx = getelementptr inbounds [100 x i32], [100 x i32]* %4, i64 0, i64 %idxprom, !dbg !89
  %22 = load i32, i32* %arrayidx, align 4, !dbg !89
  %23 = load i32, i32* %i6, align 4, !dbg !90
  %idxprom10 = sext i32 %23 to i64, !dbg !91
  %arrayidx11 = getelementptr inbounds [100 x i32], [100 x i32]* %5, i64 0, i64 %idxprom10, !dbg !91
  %24 = load i32, i32* %arrayidx11, align 4, !dbg !91
  %add12 = add nsw i32 %22, %24, !dbg !92
  %25 = load i32, i32* %i6, align 4, !dbg !93
  %add13 = add nsw i32 %25, 1, !dbg !94
  %idxprom14 = sext i32 %add13 to i64, !dbg !95
  %arrayidx15 = getelementptr inbounds [100 x i32], [100 x i32]* %4, i64 0, i64 %idxprom14, !dbg !95
  store i32 %add12, i32* %arrayidx15, align 4, !dbg !96
  br label %omp.body.continue, !dbg !95

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !97

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %26 = load i32, i32* %.omp.iv, align 4, !dbg !84
  %add16 = add nsw i32 %26, 1, !dbg !76
  store i32 %add16, i32* %.omp.iv, align 4, !dbg !76
  br label %omp.inner.for.cond, !dbg !97, !llvm.loop !98

omp.inner.for.end:                                ; preds = %omp.inner.for.cond
  br label %omp.loop.exit, !dbg !97

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %27 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !97
  store i8* getelementptr inbounds ([40 x i8], [40 x i8]* @2, i32 0, i32 0), i8** %27, align 8, !dbg !97
  %28 = load i32*, i32** %.global_tid..addr, align 8, !dbg !97
  %29 = load i32, i32* %28, align 4, !dbg !97
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %29), !dbg !97
  %30 = load i32, i32* %.omp.is_last, align 4, !dbg !97
  %31 = icmp ne i32 %30, 0, !dbg !97
  br i1 %31, label %.omp.final.then, label %.omp.final.done, !dbg !97

.omp.final.then:                                  ; preds = %omp.loop.exit
  %32 = load i32, i32* %.capture_expr., align 4, !dbg !80
  %sub17 = sub nsw i32 %32, 0, !dbg !76
  %sub18 = sub nsw i32 %sub17, 1, !dbg !76
  %add19 = add nsw i32 %sub18, 1, !dbg !76
  %div20 = sdiv i32 %add19, 1, !dbg !76
  %mul21 = mul nsw i32 %div20, 1, !dbg !82
  %add22 = add nsw i32 0, %mul21, !dbg !82
  store i32 %add22, i32* %2, align 4, !dbg !82
  br label %.omp.final.done, !dbg !97

.omp.final.done:                                  ; preds = %.omp.final.then, %omp.loop.exit
  br label %omp.precond.end, !dbg !97

omp.precond.end:                                  ; preds = %.omp.final.done, %entry
  ret void, !dbg !101
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %i, i32* dereferenceable(4) %len, [100 x i32]* dereferenceable(400) %a, [100 x i32]* dereferenceable(400) %b) #2 !dbg !102 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %i.addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %a.addr = alloca [100 x i32]*, align 8
  %b.addr = alloca [100 x i32]*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !103, metadata !DIExpression()), !dbg !104
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !105, metadata !DIExpression()), !dbg !104
  store i32* %i, i32** %i.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %i.addr, metadata !106, metadata !DIExpression()), !dbg !104
  store i32* %len, i32** %len.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !107, metadata !DIExpression()), !dbg !104
  store [100 x i32]* %a, [100 x i32]** %a.addr, align 8
  call void @llvm.dbg.declare(metadata [100 x i32]** %a.addr, metadata !108, metadata !DIExpression()), !dbg !104
  store [100 x i32]* %b, [100 x i32]** %b.addr, align 8
  call void @llvm.dbg.declare(metadata [100 x i32]** %b.addr, metadata !109, metadata !DIExpression()), !dbg !104
  %0 = load i32*, i32** %i.addr, align 8, !dbg !110
  %1 = load i32*, i32** %len.addr, align 8, !dbg !110
  %2 = load [100 x i32]*, [100 x i32]** %a.addr, align 8, !dbg !110
  %3 = load [100 x i32]*, [100 x i32]** %b.addr, align 8, !dbg !110
  %4 = load i32*, i32** %.global_tid..addr, align 8, !dbg !110
  %5 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !110
  %6 = load i32*, i32** %i.addr, align 8, !dbg !110
  %7 = load i32*, i32** %len.addr, align 8, !dbg !110
  %8 = load [100 x i32]*, [100 x i32]** %a.addr, align 8, !dbg !110
  %9 = load [100 x i32]*, [100 x i32]** %b.addr, align 8, !dbg !110
  call void @.omp_outlined._debug__(i32* %4, i32* %5, i32* %6, i32* %7, [100 x i32]* %8, [100 x i32]* %9) #5, !dbg !110
  ret void, !dbg !110
}

declare !callback !111 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

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
!1 = !DIFile(filename: "DRB115-forsimd-orig-yes.c", directory: "/home/yanze/code/OpenRace/tests/data/integration/dataracebench")
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
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 3200, elements: !24)
!24 = !{!25}
!25 = !DISubrange(count: 100)
!26 = !DILocation(line: 56, column: 7, scope: !7)
!27 = !DILocalVariable(name: "b", scope: !7, file: !1, line: 56, type: !23)
!28 = !DILocation(line: 56, column: 15, scope: !7)
!29 = !DILocation(line: 58, column: 9, scope: !30)
!30 = distinct !DILexicalBlock(scope: !7, file: !1, line: 58, column: 3)
!31 = !DILocation(line: 58, column: 8, scope: !30)
!32 = !DILocation(line: 58, column: 12, scope: !33)
!33 = distinct !DILexicalBlock(scope: !30, file: !1, line: 58, column: 3)
!34 = !DILocation(line: 58, column: 14, scope: !33)
!35 = !DILocation(line: 58, column: 13, scope: !33)
!36 = !DILocation(line: 58, column: 3, scope: !30)
!37 = !DILocation(line: 60, column: 10, scope: !38)
!38 = distinct !DILexicalBlock(scope: !33, file: !1, line: 59, column: 3)
!39 = !DILocation(line: 60, column: 7, scope: !38)
!40 = !DILocation(line: 60, column: 5, scope: !38)
!41 = !DILocation(line: 60, column: 9, scope: !38)
!42 = !DILocation(line: 61, column: 10, scope: !38)
!43 = !DILocation(line: 61, column: 11, scope: !38)
!44 = !DILocation(line: 61, column: 7, scope: !38)
!45 = !DILocation(line: 61, column: 5, scope: !38)
!46 = !DILocation(line: 61, column: 9, scope: !38)
!47 = !DILocation(line: 62, column: 3, scope: !38)
!48 = !DILocation(line: 58, column: 19, scope: !33)
!49 = !DILocation(line: 58, column: 3, scope: !33)
!50 = distinct !{!50, !36, !51}
!51 = !DILocation(line: 62, column: 3, scope: !30)
!52 = !DILocation(line: 64, column: 1, scope: !7)
!53 = !DILocation(line: 68, column: 23, scope: !7)
!54 = !DILocation(line: 68, column: 3, scope: !7)
!55 = !DILocation(line: 69, column: 3, scope: !7)
!56 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 65, type: !57, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!57 = !DISubroutineType(types: !58)
!58 = !{null, !59, !59, !63, !63, !64, !64}
!59 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !60)
!60 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !61)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!63 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !10, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !23, size: 64)
!65 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !56, type: !59, flags: DIFlagArtificial)
!66 = !DILocation(line: 0, scope: !56)
!67 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !56, type: !59, flags: DIFlagArtificial)
!68 = !DILocalVariable(name: "i", arg: 3, scope: !56, file: !1, line: 54, type: !63)
!69 = !DILocation(line: 54, column: 7, scope: !56)
!70 = !DILocalVariable(name: "len", arg: 4, scope: !56, file: !1, line: 55, type: !63)
!71 = !DILocation(line: 55, column: 7, scope: !56)
!72 = !DILocalVariable(name: "a", arg: 5, scope: !56, file: !1, line: 56, type: !64)
!73 = !DILocation(line: 56, column: 7, scope: !56)
!74 = !DILocalVariable(name: "b", arg: 6, scope: !56, file: !1, line: 56, type: !64)
!75 = !DILocation(line: 56, column: 15, scope: !56)
!76 = !DILocation(line: 65, column: 3, scope: !56)
!77 = !DILocalVariable(name: ".omp.iv", scope: !56, type: !10, flags: DIFlagArtificial)
!78 = !DILocalVariable(name: ".capture_expr.", scope: !56, type: !10, flags: DIFlagArtificial)
!79 = !DILocation(line: 65, column: 14, scope: !56)
!80 = !DILocation(line: 65, column: 17, scope: !56)
!81 = !DILocalVariable(name: "i", scope: !56, type: !10, flags: DIFlagArtificial)
!82 = !DILocation(line: 65, column: 20, scope: !56)
!83 = !DILocalVariable(name: ".omp.lb", scope: !56, type: !10, flags: DIFlagArtificial)
!84 = !DILocation(line: 65, column: 8, scope: !56)
!85 = !DILocalVariable(name: ".omp.ub", scope: !56, type: !10, flags: DIFlagArtificial)
!86 = !DILocalVariable(name: ".omp.stride", scope: !56, type: !10, flags: DIFlagArtificial)
!87 = !DILocalVariable(name: ".omp.is_last", scope: !56, type: !10, flags: DIFlagArtificial)
!88 = !DILocation(line: 66, column: 14, scope: !56)
!89 = !DILocation(line: 66, column: 12, scope: !56)
!90 = !DILocation(line: 66, column: 19, scope: !56)
!91 = !DILocation(line: 66, column: 17, scope: !56)
!92 = !DILocation(line: 66, column: 16, scope: !56)
!93 = !DILocation(line: 66, column: 7, scope: !56)
!94 = !DILocation(line: 66, column: 8, scope: !56)
!95 = !DILocation(line: 66, column: 5, scope: !56)
!96 = !DILocation(line: 66, column: 11, scope: !56)
!97 = !DILocation(line: 64, column: 1, scope: !56)
!98 = distinct !{!98, !97, !99, !100}
!99 = !DILocation(line: 64, column: 31, scope: !56)
!100 = !{!"llvm.loop.vectorize.enable", i1 true}
!101 = !DILocation(line: 66, column: 20, scope: !56)
!102 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 65, type: !57, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!103 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !102, type: !59, flags: DIFlagArtificial)
!104 = !DILocation(line: 0, scope: !102)
!105 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !102, type: !59, flags: DIFlagArtificial)
!106 = !DILocalVariable(name: "i", arg: 3, scope: !102, type: !63, flags: DIFlagArtificial)
!107 = !DILocalVariable(name: "len", arg: 4, scope: !102, type: !63, flags: DIFlagArtificial)
!108 = !DILocalVariable(name: "a", arg: 5, scope: !102, type: !64, flags: DIFlagArtificial)
!109 = !DILocalVariable(name: "b", arg: 6, scope: !102, type: !64, flags: DIFlagArtificial)
!110 = !DILocation(line: 65, column: 3, scope: !102)
!111 = !{!112}
!112 = !{i64 2, i64 -1, i64 -1, i1 true}
