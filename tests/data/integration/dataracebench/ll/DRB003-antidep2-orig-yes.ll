; ModuleID = 'DRB003-antidep2-orig-yes.c'
source_filename = "DRB003-antidep2-orig-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [40 x i8] c";DRB003-antidep2-orig-yes.c;main;64;1;;\00", align 1
@2 = private unnamed_addr constant [41 x i8] c";DRB003-antidep2-orig-yes.c;main;64;36;;\00", align 1
@3 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"a[10][10]=%f\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !dbg !7 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %len = alloca i32, align 4
  %a = alloca [20 x [20 x double]], align 16
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
  call void @llvm.dbg.declare(metadata i32* %j, metadata !20, metadata !DIExpression()), !dbg !21
  call void @llvm.dbg.declare(metadata i32* %len, metadata !22, metadata !DIExpression()), !dbg !23
  store i32 20, i32* %len, align 4, !dbg !23
  call void @llvm.dbg.declare(metadata [20 x [20 x double]]* %a, metadata !24, metadata !DIExpression()), !dbg !29
  store i32 0, i32* %i, align 4, !dbg !30
  br label %for.cond, !dbg !32

for.cond:                                         ; preds = %for.inc6, %entry
  %2 = load i32, i32* %i, align 4, !dbg !33
  %3 = load i32, i32* %len, align 4, !dbg !35
  %cmp = icmp slt i32 %2, %3, !dbg !36
  br i1 %cmp, label %for.body, label %for.end8, !dbg !37

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4, !dbg !38
  br label %for.cond1, !dbg !40

for.cond1:                                        ; preds = %for.inc, %for.body
  %4 = load i32, i32* %j, align 4, !dbg !41
  %5 = load i32, i32* %len, align 4, !dbg !43
  %cmp2 = icmp slt i32 %4, %5, !dbg !44
  br i1 %cmp2, label %for.body3, label %for.end, !dbg !45

for.body3:                                        ; preds = %for.cond1
  %6 = load i32, i32* %i, align 4, !dbg !46
  %idxprom = sext i32 %6 to i64, !dbg !47
  %arrayidx = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %a, i64 0, i64 %idxprom, !dbg !47
  %7 = load i32, i32* %j, align 4, !dbg !48
  %idxprom4 = sext i32 %7 to i64, !dbg !47
  %arrayidx5 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx, i64 0, i64 %idxprom4, !dbg !47
  store double 5.000000e-01, double* %arrayidx5, align 8, !dbg !49
  br label %for.inc, !dbg !47

for.inc:                                          ; preds = %for.body3
  %8 = load i32, i32* %j, align 4, !dbg !50
  %inc = add nsw i32 %8, 1, !dbg !50
  store i32 %inc, i32* %j, align 4, !dbg !50
  br label %for.cond1, !dbg !51, !llvm.loop !52

for.end:                                          ; preds = %for.cond1
  br label %for.inc6, !dbg !53

for.inc6:                                         ; preds = %for.end
  %9 = load i32, i32* %i, align 4, !dbg !54
  %inc7 = add nsw i32 %9, 1, !dbg !54
  store i32 %inc7, i32* %i, align 4, !dbg !54
  br label %for.cond, !dbg !55, !llvm.loop !56

for.end8:                                         ; preds = %for.cond
  %10 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !58
  store i8* getelementptr inbounds ([40 x i8], [40 x i8]* @1, i32 0, i32 0), i8** %10, align 8, !dbg !58
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 2, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, [20 x [20 x double]]*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %len, [20 x [20 x double]]* %a), !dbg !58
  %arrayidx9 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %a, i64 0, i64 10, !dbg !59
  %arrayidx10 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx9, i64 0, i64 10, !dbg !59
  %11 = load double, double* %arrayidx10, align 16, !dbg !59
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), double %11), !dbg !60
  ret i32 0, !dbg !61
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %len, [20 x [20 x double]]* dereferenceable(3200) %a) #2 !dbg !62 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %a.addr = alloca [20 x [20 x double]]*, align 8
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
  %i5 = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !71, metadata !DIExpression()), !dbg !72
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !73, metadata !DIExpression()), !dbg !72
  store i32* %len, i32** %len.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !74, metadata !DIExpression()), !dbg !75
  store [20 x [20 x double]]* %a, [20 x [20 x double]]** %a.addr, align 8
  call void @llvm.dbg.declare(metadata [20 x [20 x double]]** %a.addr, metadata !76, metadata !DIExpression()), !dbg !77
  %2 = load i32*, i32** %len.addr, align 8, !dbg !78
  %3 = load [20 x [20 x double]]*, [20 x [20 x double]]** %a.addr, align 8, !dbg !78
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !79, metadata !DIExpression()), !dbg !72
  call void @llvm.dbg.declare(metadata i32* %.capture_expr., metadata !80, metadata !DIExpression()), !dbg !72
  %4 = load i32, i32* %2, align 4, !dbg !81
  %sub = sub nsw i32 %4, 1, !dbg !82
  store i32 %sub, i32* %.capture_expr., align 4, !dbg !81
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.1, metadata !80, metadata !DIExpression()), !dbg !72
  %5 = load i32, i32* %.capture_expr., align 4, !dbg !82
  %sub2 = sub nsw i32 %5, 0, !dbg !78
  %sub3 = sub nsw i32 %sub2, 1, !dbg !78
  %add = add nsw i32 %sub3, 1, !dbg !78
  %div = sdiv i32 %add, 1, !dbg !78
  %sub4 = sub nsw i32 %div, 1, !dbg !78
  store i32 %sub4, i32* %.capture_expr.1, align 4, !dbg !78
  call void @llvm.dbg.declare(metadata i32* %i, metadata !83, metadata !DIExpression()), !dbg !72
  store i32 0, i32* %i, align 4, !dbg !84
  %6 = load i32, i32* %.capture_expr., align 4, !dbg !82
  %cmp = icmp slt i32 0, %6, !dbg !78
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end, !dbg !78

omp.precond.then:                                 ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !85, metadata !DIExpression()), !dbg !72
  store i32 0, i32* %.omp.lb, align 4, !dbg !86
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !87, metadata !DIExpression()), !dbg !72
  %7 = load i32, i32* %.capture_expr.1, align 4, !dbg !78
  store i32 %7, i32* %.omp.ub, align 4, !dbg !86
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !88, metadata !DIExpression()), !dbg !72
  store i32 1, i32* %.omp.stride, align 4, !dbg !86
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !89, metadata !DIExpression()), !dbg !72
  store i32 0, i32* %.omp.is_last, align 4, !dbg !86
  call void @llvm.dbg.declare(metadata i32* %j, metadata !90, metadata !DIExpression()), !dbg !72
  call void @llvm.dbg.declare(metadata i32* %i5, metadata !83, metadata !DIExpression()), !dbg !72
  %8 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !78
  store i8* getelementptr inbounds ([40 x i8], [40 x i8]* @1, i32 0, i32 0), i8** %8, align 8, !dbg !78
  %9 = load i32*, i32** %.global_tid..addr, align 8, !dbg !78
  %10 = load i32, i32* %9, align 4, !dbg !78
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %10, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !78
  %11 = load i32, i32* %.omp.ub, align 4, !dbg !86
  %12 = load i32, i32* %.capture_expr.1, align 4, !dbg !78
  %cmp6 = icmp sgt i32 %11, %12, !dbg !86
  br i1 %cmp6, label %cond.true, label %cond.false, !dbg !86

cond.true:                                        ; preds = %omp.precond.then
  %13 = load i32, i32* %.capture_expr.1, align 4, !dbg !78
  br label %cond.end, !dbg !86

cond.false:                                       ; preds = %omp.precond.then
  %14 = load i32, i32* %.omp.ub, align 4, !dbg !86
  br label %cond.end, !dbg !86

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %13, %cond.true ], [ %14, %cond.false ], !dbg !86
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !86
  %15 = load i32, i32* %.omp.lb, align 4, !dbg !86
  store i32 %15, i32* %.omp.iv, align 4, !dbg !86
  br label %omp.inner.for.cond, !dbg !78

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %16 = load i32, i32* %.omp.iv, align 4, !dbg !86
  %17 = load i32, i32* %.omp.ub, align 4, !dbg !86
  %cmp7 = icmp sle i32 %16, %17, !dbg !78
  br i1 %cmp7, label %omp.inner.for.body, label %omp.inner.for.end, !dbg !78

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %18 = load i32, i32* %.omp.iv, align 4, !dbg !86
  %mul = mul nsw i32 %18, 1, !dbg !84
  %add8 = add nsw i32 0, %mul, !dbg !84
  store i32 %add8, i32* %i5, align 4, !dbg !84
  store i32 0, i32* %j, align 4, !dbg !91
  br label %for.cond, !dbg !94

for.cond:                                         ; preds = %for.inc, %omp.inner.for.body
  %19 = load i32, i32* %j, align 4, !dbg !95
  %20 = load i32, i32* %2, align 4, !dbg !97
  %cmp9 = icmp slt i32 %19, %20, !dbg !98
  br i1 %cmp9, label %for.body, label %for.end, !dbg !99

for.body:                                         ; preds = %for.cond
  %21 = load i32, i32* %i5, align 4, !dbg !100
  %add10 = add nsw i32 %21, 1, !dbg !102
  %idxprom = sext i32 %add10 to i64, !dbg !103
  %arrayidx = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %3, i64 0, i64 %idxprom, !dbg !103
  %22 = load i32, i32* %j, align 4, !dbg !104
  %idxprom11 = sext i32 %22 to i64, !dbg !103
  %arrayidx12 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx, i64 0, i64 %idxprom11, !dbg !103
  %23 = load double, double* %arrayidx12, align 8, !dbg !103
  %24 = load i32, i32* %i5, align 4, !dbg !105
  %idxprom13 = sext i32 %24 to i64, !dbg !106
  %arrayidx14 = getelementptr inbounds [20 x [20 x double]], [20 x [20 x double]]* %3, i64 0, i64 %idxprom13, !dbg !106
  %25 = load i32, i32* %j, align 4, !dbg !107
  %idxprom15 = sext i32 %25 to i64, !dbg !106
  %arrayidx16 = getelementptr inbounds [20 x double], [20 x double]* %arrayidx14, i64 0, i64 %idxprom15, !dbg !106
  %26 = load double, double* %arrayidx16, align 8, !dbg !108
  %add17 = fadd double %26, %23, !dbg !108
  store double %add17, double* %arrayidx16, align 8, !dbg !108
  br label %for.inc, !dbg !109

for.inc:                                          ; preds = %for.body
  %27 = load i32, i32* %j, align 4, !dbg !110
  %add18 = add nsw i32 %27, 1, !dbg !110
  store i32 %add18, i32* %j, align 4, !dbg !110
  br label %for.cond, !dbg !111, !llvm.loop !112

for.end:                                          ; preds = %for.cond
  br label %omp.body.continue, !dbg !114

omp.body.continue:                                ; preds = %for.end
  br label %omp.inner.for.inc, !dbg !115

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %28 = load i32, i32* %.omp.iv, align 4, !dbg !86
  %add19 = add nsw i32 %28, 1, !dbg !78
  store i32 %add19, i32* %.omp.iv, align 4, !dbg !78
  br label %omp.inner.for.cond, !dbg !115, !llvm.loop !116

omp.inner.for.end:                                ; preds = %omp.inner.for.cond
  br label %omp.loop.exit, !dbg !115

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %29 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !115
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @2, i32 0, i32 0), i8** %29, align 8, !dbg !115
  %30 = load i32*, i32** %.global_tid..addr, align 8, !dbg !115
  %31 = load i32, i32* %30, align 4, !dbg !115
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %31), !dbg !115
  br label %omp.precond.end, !dbg !115

omp.precond.end:                                  ; preds = %omp.loop.exit, %entry
  ret void, !dbg !118
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %len, [20 x [20 x double]]* dereferenceable(3200) %a) #2 !dbg !119 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %a.addr = alloca [20 x [20 x double]]*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !120, metadata !DIExpression()), !dbg !121
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !122, metadata !DIExpression()), !dbg !121
  store i32* %len, i32** %len.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !123, metadata !DIExpression()), !dbg !121
  store [20 x [20 x double]]* %a, [20 x [20 x double]]** %a.addr, align 8
  call void @llvm.dbg.declare(metadata [20 x [20 x double]]** %a.addr, metadata !124, metadata !DIExpression()), !dbg !121
  %0 = load i32*, i32** %len.addr, align 8, !dbg !125
  %1 = load [20 x [20 x double]]*, [20 x [20 x double]]** %a.addr, align 8, !dbg !125
  %2 = load i32*, i32** %.global_tid..addr, align 8, !dbg !125
  %3 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !125
  %4 = load i32*, i32** %len.addr, align 8, !dbg !125
  %5 = load [20 x [20 x double]]*, [20 x [20 x double]]** %a.addr, align 8, !dbg !125
  call void @.omp_outlined._debug__(i32* %2, i32* %3, i32* %4, [20 x [20 x double]]* %5) #5, !dbg !125
  ret void, !dbg !125
}

declare !callback !126 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

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
!1 = !DIFile(filename: "DRB003-antidep2-orig-yes.c", directory: "/home/yanze/code/OpenRace/tests/data/integration/dataracebench")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.1 "}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 53, type: !8, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !10, !11}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!14 = !DILocalVariable(name: "argc", arg: 1, scope: !7, file: !1, line: 53, type: !10)
!15 = !DILocation(line: 53, column: 14, scope: !7)
!16 = !DILocalVariable(name: "argv", arg: 2, scope: !7, file: !1, line: 53, type: !11)
!17 = !DILocation(line: 53, column: 25, scope: !7)
!18 = !DILocalVariable(name: "i", scope: !7, file: !1, line: 55, type: !10)
!19 = !DILocation(line: 55, column: 7, scope: !7)
!20 = !DILocalVariable(name: "j", scope: !7, file: !1, line: 55, type: !10)
!21 = !DILocation(line: 55, column: 10, scope: !7)
!22 = !DILocalVariable(name: "len", scope: !7, file: !1, line: 56, type: !10)
!23 = !DILocation(line: 56, column: 7, scope: !7)
!24 = !DILocalVariable(name: "a", scope: !7, file: !1, line: 58, type: !25)
!25 = !DICompositeType(tag: DW_TAG_array_type, baseType: !26, size: 25600, elements: !27)
!26 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!27 = !{!28, !28}
!28 = !DISubrange(count: 20)
!29 = !DILocation(line: 58, column: 10, scope: !7)
!30 = !DILocation(line: 60, column: 9, scope: !31)
!31 = distinct !DILexicalBlock(scope: !7, file: !1, line: 60, column: 3)
!32 = !DILocation(line: 60, column: 8, scope: !31)
!33 = !DILocation(line: 60, column: 13, scope: !34)
!34 = distinct !DILexicalBlock(scope: !31, file: !1, line: 60, column: 3)
!35 = !DILocation(line: 60, column: 16, scope: !34)
!36 = !DILocation(line: 60, column: 14, scope: !34)
!37 = !DILocation(line: 60, column: 3, scope: !31)
!38 = !DILocation(line: 61, column: 11, scope: !39)
!39 = distinct !DILexicalBlock(scope: !34, file: !1, line: 61, column: 5)
!40 = !DILocation(line: 61, column: 10, scope: !39)
!41 = !DILocation(line: 61, column: 15, scope: !42)
!42 = distinct !DILexicalBlock(scope: !39, file: !1, line: 61, column: 5)
!43 = !DILocation(line: 61, column: 17, scope: !42)
!44 = !DILocation(line: 61, column: 16, scope: !42)
!45 = !DILocation(line: 61, column: 5, scope: !39)
!46 = !DILocation(line: 62, column: 9, scope: !42)
!47 = !DILocation(line: 62, column: 7, scope: !42)
!48 = !DILocation(line: 62, column: 12, scope: !42)
!49 = !DILocation(line: 62, column: 15, scope: !42)
!50 = !DILocation(line: 61, column: 23, scope: !42)
!51 = !DILocation(line: 61, column: 5, scope: !42)
!52 = distinct !{!52, !45, !53}
!53 = !DILocation(line: 62, column: 17, scope: !39)
!54 = !DILocation(line: 60, column: 22, scope: !34)
!55 = !DILocation(line: 60, column: 3, scope: !34)
!56 = distinct !{!56, !37, !57}
!57 = !DILocation(line: 62, column: 17, scope: !31)
!58 = !DILocation(line: 64, column: 1, scope: !7)
!59 = !DILocation(line: 71, column: 29, scope: !7)
!60 = !DILocation(line: 71, column: 3, scope: !7)
!61 = !DILocation(line: 72, column: 3, scope: !7)
!62 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 65, type: !63, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!63 = !DISubroutineType(types: !64)
!64 = !{null, !65, !65, !69, !70}
!65 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !66)
!66 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !67)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!69 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !10, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !25, size: 64)
!71 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !62, type: !65, flags: DIFlagArtificial)
!72 = !DILocation(line: 0, scope: !62)
!73 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !62, type: !65, flags: DIFlagArtificial)
!74 = !DILocalVariable(name: "len", arg: 3, scope: !62, file: !1, line: 56, type: !69)
!75 = !DILocation(line: 56, column: 7, scope: !62)
!76 = !DILocalVariable(name: "a", arg: 4, scope: !62, file: !1, line: 58, type: !70)
!77 = !DILocation(line: 58, column: 10, scope: !62)
!78 = !DILocation(line: 65, column: 3, scope: !62)
!79 = !DILocalVariable(name: ".omp.iv", scope: !62, type: !10, flags: DIFlagArtificial)
!80 = !DILocalVariable(name: ".capture_expr.", scope: !62, type: !10, flags: DIFlagArtificial)
!81 = !DILocation(line: 65, column: 19, scope: !62)
!82 = !DILocation(line: 65, column: 23, scope: !62)
!83 = !DILocalVariable(name: "i", scope: !62, type: !10, flags: DIFlagArtificial)
!84 = !DILocation(line: 65, column: 28, scope: !62)
!85 = !DILocalVariable(name: ".omp.lb", scope: !62, type: !10, flags: DIFlagArtificial)
!86 = !DILocation(line: 65, column: 8, scope: !62)
!87 = !DILocalVariable(name: ".omp.ub", scope: !62, type: !10, flags: DIFlagArtificial)
!88 = !DILocalVariable(name: ".omp.stride", scope: !62, type: !10, flags: DIFlagArtificial)
!89 = !DILocalVariable(name: ".omp.is_last", scope: !62, type: !10, flags: DIFlagArtificial)
!90 = !DILocalVariable(name: "j", scope: !62, type: !10, flags: DIFlagArtificial)
!91 = !DILocation(line: 66, column: 12, scope: !92)
!92 = distinct !DILexicalBlock(scope: !93, file: !1, line: 66, column: 5)
!93 = distinct !DILexicalBlock(scope: !62, file: !1, line: 65, column: 36)
!94 = !DILocation(line: 66, column: 10, scope: !92)
!95 = !DILocation(line: 66, column: 17, scope: !96)
!96 = distinct !DILexicalBlock(scope: !92, file: !1, line: 66, column: 5)
!97 = !DILocation(line: 66, column: 21, scope: !96)
!98 = !DILocation(line: 66, column: 19, scope: !96)
!99 = !DILocation(line: 66, column: 5, scope: !92)
!100 = !DILocation(line: 67, column: 20, scope: !101)
!101 = distinct !DILexicalBlock(scope: !96, file: !1, line: 66, column: 35)
!102 = !DILocation(line: 67, column: 22, scope: !101)
!103 = !DILocation(line: 67, column: 18, scope: !101)
!104 = !DILocation(line: 67, column: 27, scope: !101)
!105 = !DILocation(line: 67, column: 9, scope: !101)
!106 = !DILocation(line: 67, column: 7, scope: !101)
!107 = !DILocation(line: 67, column: 12, scope: !101)
!108 = !DILocation(line: 67, column: 15, scope: !101)
!109 = !DILocation(line: 68, column: 5, scope: !101)
!110 = !DILocation(line: 66, column: 29, scope: !96)
!111 = !DILocation(line: 66, column: 5, scope: !96)
!112 = distinct !{!112, !99, !113}
!113 = !DILocation(line: 68, column: 5, scope: !92)
!114 = !DILocation(line: 69, column: 3, scope: !93)
!115 = !DILocation(line: 64, column: 1, scope: !62)
!116 = distinct !{!116, !115, !117}
!117 = !DILocation(line: 64, column: 36, scope: !62)
!118 = !DILocation(line: 69, column: 3, scope: !62)
!119 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 65, type: !63, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!120 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !119, type: !65, flags: DIFlagArtificial)
!121 = !DILocation(line: 0, scope: !119)
!122 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !119, type: !65, flags: DIFlagArtificial)
!123 = !DILocalVariable(name: "len", arg: 3, scope: !119, type: !69, flags: DIFlagArtificial)
!124 = !DILocalVariable(name: "a", arg: 4, scope: !119, type: !70, flags: DIFlagArtificial)
!125 = !DILocation(line: 65, column: 3, scope: !119)
!126 = !{!127}
!127 = !{i64 2, i64 -1, i64 -1, i1 true}
