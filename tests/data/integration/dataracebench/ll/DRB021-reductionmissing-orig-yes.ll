; ModuleID = 'DRB021-reductionmissing-orig-yes.c'
source_filename = "DRB021-reductionmissing-orig-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [48 x i8] c";DRB021-reductionmissing-orig-yes.c;main;65;1;;\00", align 1
@2 = private unnamed_addr constant [49 x i8] c";DRB021-reductionmissing-orig-yes.c;main;65;44;;\00", align 1
@3 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"sum = %f\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !dbg !7 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %temp = alloca float, align 4
  %sum = alloca float, align 4
  %len = alloca i32, align 4
  %u = alloca [100 x [100 x float]], align 16
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
  call void @llvm.dbg.declare(metadata float* %temp, metadata !22, metadata !DIExpression()), !dbg !24
  call void @llvm.dbg.declare(metadata float* %sum, metadata !25, metadata !DIExpression()), !dbg !26
  store float 0.000000e+00, float* %sum, align 4, !dbg !26
  call void @llvm.dbg.declare(metadata i32* %len, metadata !27, metadata !DIExpression()), !dbg !28
  store i32 100, i32* %len, align 4, !dbg !28
  call void @llvm.dbg.declare(metadata [100 x [100 x float]]* %u, metadata !29, metadata !DIExpression()), !dbg !33
  store i32 0, i32* %i, align 4, !dbg !34
  br label %for.cond, !dbg !36

for.cond:                                         ; preds = %for.inc6, %entry
  %2 = load i32, i32* %i, align 4, !dbg !37
  %3 = load i32, i32* %len, align 4, !dbg !39
  %cmp = icmp slt i32 %2, %3, !dbg !40
  br i1 %cmp, label %for.body, label %for.end8, !dbg !41

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4, !dbg !42
  br label %for.cond1, !dbg !44

for.cond1:                                        ; preds = %for.inc, %for.body
  %4 = load i32, i32* %j, align 4, !dbg !45
  %5 = load i32, i32* %len, align 4, !dbg !47
  %cmp2 = icmp slt i32 %4, %5, !dbg !48
  br i1 %cmp2, label %for.body3, label %for.end, !dbg !49

for.body3:                                        ; preds = %for.cond1
  %6 = load i32, i32* %i, align 4, !dbg !50
  %idxprom = sext i32 %6 to i64, !dbg !51
  %arrayidx = getelementptr inbounds [100 x [100 x float]], [100 x [100 x float]]* %u, i64 0, i64 %idxprom, !dbg !51
  %7 = load i32, i32* %j, align 4, !dbg !52
  %idxprom4 = sext i32 %7 to i64, !dbg !51
  %arrayidx5 = getelementptr inbounds [100 x float], [100 x float]* %arrayidx, i64 0, i64 %idxprom4, !dbg !51
  store float 5.000000e-01, float* %arrayidx5, align 4, !dbg !53
  br label %for.inc, !dbg !51

for.inc:                                          ; preds = %for.body3
  %8 = load i32, i32* %j, align 4, !dbg !54
  %inc = add nsw i32 %8, 1, !dbg !54
  store i32 %inc, i32* %j, align 4, !dbg !54
  br label %for.cond1, !dbg !55, !llvm.loop !56

for.end:                                          ; preds = %for.cond1
  br label %for.inc6, !dbg !57

for.inc6:                                         ; preds = %for.end
  %9 = load i32, i32* %i, align 4, !dbg !58
  %inc7 = add nsw i32 %9, 1, !dbg !58
  store i32 %inc7, i32* %i, align 4, !dbg !58
  br label %for.cond, !dbg !59, !llvm.loop !60

for.end8:                                         ; preds = %for.cond
  %10 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !62
  store i8* getelementptr inbounds ([48 x i8], [48 x i8]* @1, i32 0, i32 0), i8** %10, align 8, !dbg !62
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, [100 x [100 x float]]*, float*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %len, [100 x [100 x float]]* %u, float* %sum), !dbg !62
  %11 = load float, float* %sum, align 4, !dbg !63
  %conv = fpext float %11 to double, !dbg !63
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), double %conv), !dbg !64
  ret i32 0, !dbg !65
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %len, [100 x [100 x float]]* dereferenceable(40000) %u, float* dereferenceable(4) %sum) #2 !dbg !66 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %u.addr = alloca [100 x [100 x float]]*, align 8
  %sum.addr = alloca float*, align 8
  %.omp.iv = alloca i32, align 4
  %tmp = alloca i32, align 4
  %.capture_expr. = alloca i32, align 4
  %.capture_expr.1 = alloca i32, align 4
  %i = alloca i32, align 4
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %temp = alloca float, align 4
  %i4 = alloca i32, align 4
  %j = alloca i32, align 4
  %i5 = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !76, metadata !DIExpression()), !dbg !77
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !78, metadata !DIExpression()), !dbg !77
  store i32* %len, i32** %len.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !79, metadata !DIExpression()), !dbg !80
  store [100 x [100 x float]]* %u, [100 x [100 x float]]** %u.addr, align 8
  call void @llvm.dbg.declare(metadata [100 x [100 x float]]** %u.addr, metadata !81, metadata !DIExpression()), !dbg !82
  store float* %sum, float** %sum.addr, align 8
  call void @llvm.dbg.declare(metadata float** %sum.addr, metadata !83, metadata !DIExpression()), !dbg !84
  %2 = load i32*, i32** %len.addr, align 8, !dbg !85
  %3 = load [100 x [100 x float]]*, [100 x [100 x float]]** %u.addr, align 8, !dbg !85
  %4 = load float*, float** %sum.addr, align 8, !dbg !85
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !86, metadata !DIExpression()), !dbg !77
  call void @llvm.dbg.declare(metadata i32* %.capture_expr., metadata !87, metadata !DIExpression()), !dbg !77
  %5 = load i32, i32* %2, align 4, !dbg !88
  store i32 %5, i32* %.capture_expr., align 4, !dbg !88
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.1, metadata !87, metadata !DIExpression()), !dbg !77
  %6 = load i32, i32* %.capture_expr., align 4, !dbg !88
  %sub = sub nsw i32 %6, 0, !dbg !85
  %sub2 = sub nsw i32 %sub, 1, !dbg !85
  %add = add nsw i32 %sub2, 1, !dbg !85
  %div = sdiv i32 %add, 1, !dbg !85
  %sub3 = sub nsw i32 %div, 1, !dbg !85
  store i32 %sub3, i32* %.capture_expr.1, align 4, !dbg !85
  call void @llvm.dbg.declare(metadata i32* %i, metadata !89, metadata !DIExpression()), !dbg !77
  store i32 0, i32* %i, align 4, !dbg !90
  %7 = load i32, i32* %.capture_expr., align 4, !dbg !88
  %cmp = icmp slt i32 0, %7, !dbg !85
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end, !dbg !85

omp.precond.then:                                 ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !91, metadata !DIExpression()), !dbg !77
  store i32 0, i32* %.omp.lb, align 4, !dbg !92
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !93, metadata !DIExpression()), !dbg !77
  %8 = load i32, i32* %.capture_expr.1, align 4, !dbg !85
  store i32 %8, i32* %.omp.ub, align 4, !dbg !92
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !94, metadata !DIExpression()), !dbg !77
  store i32 1, i32* %.omp.stride, align 4, !dbg !92
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !95, metadata !DIExpression()), !dbg !77
  store i32 0, i32* %.omp.is_last, align 4, !dbg !92
  call void @llvm.dbg.declare(metadata float* %temp, metadata !96, metadata !DIExpression()), !dbg !77
  call void @llvm.dbg.declare(metadata i32* %i4, metadata !89, metadata !DIExpression()), !dbg !77
  call void @llvm.dbg.declare(metadata i32* %j, metadata !97, metadata !DIExpression()), !dbg !77
  call void @llvm.dbg.declare(metadata i32* %i5, metadata !89, metadata !DIExpression()), !dbg !77
  %9 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !85
  store i8* getelementptr inbounds ([48 x i8], [48 x i8]* @1, i32 0, i32 0), i8** %9, align 8, !dbg !85
  %10 = load i32*, i32** %.global_tid..addr, align 8, !dbg !85
  %11 = load i32, i32* %10, align 4, !dbg !85
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %11, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !85
  %12 = load i32, i32* %.omp.ub, align 4, !dbg !92
  %13 = load i32, i32* %.capture_expr.1, align 4, !dbg !85
  %cmp6 = icmp sgt i32 %12, %13, !dbg !92
  br i1 %cmp6, label %cond.true, label %cond.false, !dbg !92

cond.true:                                        ; preds = %omp.precond.then
  %14 = load i32, i32* %.capture_expr.1, align 4, !dbg !85
  br label %cond.end, !dbg !92

cond.false:                                       ; preds = %omp.precond.then
  %15 = load i32, i32* %.omp.ub, align 4, !dbg !92
  br label %cond.end, !dbg !92

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %14, %cond.true ], [ %15, %cond.false ], !dbg !92
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !92
  %16 = load i32, i32* %.omp.lb, align 4, !dbg !92
  store i32 %16, i32* %.omp.iv, align 4, !dbg !92
  br label %omp.inner.for.cond, !dbg !85

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %17 = load i32, i32* %.omp.iv, align 4, !dbg !92
  %18 = load i32, i32* %.omp.ub, align 4, !dbg !92
  %cmp7 = icmp sle i32 %17, %18, !dbg !85
  br i1 %cmp7, label %omp.inner.for.body, label %omp.inner.for.end, !dbg !85

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %19 = load i32, i32* %.omp.iv, align 4, !dbg !92
  %mul = mul nsw i32 %19, 1, !dbg !90
  %add8 = add nsw i32 0, %mul, !dbg !90
  store i32 %add8, i32* %i4, align 4, !dbg !90
  store i32 0, i32* %j, align 4, !dbg !98
  br label %for.cond, !dbg !100

for.cond:                                         ; preds = %for.inc, %omp.inner.for.body
  %20 = load i32, i32* %j, align 4, !dbg !101
  %21 = load i32, i32* %2, align 4, !dbg !103
  %cmp9 = icmp slt i32 %20, %21, !dbg !104
  br i1 %cmp9, label %for.body, label %for.end, !dbg !105

for.body:                                         ; preds = %for.cond
  %22 = load i32, i32* %i4, align 4, !dbg !106
  %idxprom = sext i32 %22 to i64, !dbg !108
  %arrayidx = getelementptr inbounds [100 x [100 x float]], [100 x [100 x float]]* %3, i64 0, i64 %idxprom, !dbg !108
  %23 = load i32, i32* %j, align 4, !dbg !109
  %idxprom10 = sext i32 %23 to i64, !dbg !108
  %arrayidx11 = getelementptr inbounds [100 x float], [100 x float]* %arrayidx, i64 0, i64 %idxprom10, !dbg !108
  %24 = load float, float* %arrayidx11, align 4, !dbg !108
  store float %24, float* %temp, align 4, !dbg !110
  %25 = load float, float* %4, align 4, !dbg !111
  %26 = load float, float* %temp, align 4, !dbg !112
  %27 = load float, float* %temp, align 4, !dbg !113
  %mul12 = fmul float %26, %27, !dbg !114
  %add13 = fadd float %25, %mul12, !dbg !115
  store float %add13, float* %4, align 4, !dbg !116
  br label %for.inc, !dbg !117

for.inc:                                          ; preds = %for.body
  %28 = load i32, i32* %j, align 4, !dbg !118
  %inc = add nsw i32 %28, 1, !dbg !118
  store i32 %inc, i32* %j, align 4, !dbg !118
  br label %for.cond, !dbg !119, !llvm.loop !120

for.end:                                          ; preds = %for.cond
  br label %omp.body.continue, !dbg !121

omp.body.continue:                                ; preds = %for.end
  br label %omp.inner.for.inc, !dbg !122

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %29 = load i32, i32* %.omp.iv, align 4, !dbg !92
  %add14 = add nsw i32 %29, 1, !dbg !85
  store i32 %add14, i32* %.omp.iv, align 4, !dbg !85
  br label %omp.inner.for.cond, !dbg !122, !llvm.loop !123

omp.inner.for.end:                                ; preds = %omp.inner.for.cond
  br label %omp.loop.exit, !dbg !122

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %30 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !122
  store i8* getelementptr inbounds ([49 x i8], [49 x i8]* @2, i32 0, i32 0), i8** %30, align 8, !dbg !122
  %31 = load i32*, i32** %.global_tid..addr, align 8, !dbg !122
  %32 = load i32, i32* %31, align 4, !dbg !122
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %32), !dbg !122
  br label %omp.precond.end, !dbg !122

omp.precond.end:                                  ; preds = %omp.loop.exit, %entry
  ret void, !dbg !125
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %len, [100 x [100 x float]]* dereferenceable(40000) %u, float* dereferenceable(4) %sum) #2 !dbg !126 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %u.addr = alloca [100 x [100 x float]]*, align 8
  %sum.addr = alloca float*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !127, metadata !DIExpression()), !dbg !128
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !129, metadata !DIExpression()), !dbg !128
  store i32* %len, i32** %len.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !130, metadata !DIExpression()), !dbg !128
  store [100 x [100 x float]]* %u, [100 x [100 x float]]** %u.addr, align 8
  call void @llvm.dbg.declare(metadata [100 x [100 x float]]** %u.addr, metadata !131, metadata !DIExpression()), !dbg !128
  store float* %sum, float** %sum.addr, align 8
  call void @llvm.dbg.declare(metadata float** %sum.addr, metadata !132, metadata !DIExpression()), !dbg !128
  %0 = load i32*, i32** %len.addr, align 8, !dbg !133
  %1 = load [100 x [100 x float]]*, [100 x [100 x float]]** %u.addr, align 8, !dbg !133
  %2 = load float*, float** %sum.addr, align 8, !dbg !133
  %3 = load i32*, i32** %.global_tid..addr, align 8, !dbg !133
  %4 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !133
  %5 = load i32*, i32** %len.addr, align 8, !dbg !133
  %6 = load [100 x [100 x float]]*, [100 x [100 x float]]** %u.addr, align 8, !dbg !133
  %7 = load float*, float** %sum.addr, align 8, !dbg !133
  call void @.omp_outlined._debug__(i32* %3, i32* %4, i32* %5, [100 x [100 x float]]* %6, float* %7) #5, !dbg !133
  ret void, !dbg !133
}

declare !callback !134 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

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
!1 = !DIFile(filename: "DRB021-reductionmissing-orig-yes.c", directory: "/home/yanze/code/OpenRace/tests/data/integration/dataracebench")
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
!20 = !DILocalVariable(name: "j", scope: !7, file: !1, line: 56, type: !10)
!21 = !DILocation(line: 56, column: 9, scope: !7)
!22 = !DILocalVariable(name: "temp", scope: !7, file: !1, line: 57, type: !23)
!23 = !DIBasicType(name: "float", size: 32, encoding: DW_ATE_float)
!24 = !DILocation(line: 57, column: 9, scope: !7)
!25 = !DILocalVariable(name: "sum", scope: !7, file: !1, line: 57, type: !23)
!26 = !DILocation(line: 57, column: 15, scope: !7)
!27 = !DILocalVariable(name: "len", scope: !7, file: !1, line: 58, type: !10)
!28 = !DILocation(line: 58, column: 7, scope: !7)
!29 = !DILocalVariable(name: "u", scope: !7, file: !1, line: 60, type: !30)
!30 = !DICompositeType(tag: DW_TAG_array_type, baseType: !23, size: 320000, elements: !31)
!31 = !{!32, !32}
!32 = !DISubrange(count: 100)
!33 = !DILocation(line: 60, column: 9, scope: !7)
!34 = !DILocation(line: 61, column: 10, scope: !35)
!35 = distinct !DILexicalBlock(scope: !7, file: !1, line: 61, column: 3)
!36 = !DILocation(line: 61, column: 8, scope: !35)
!37 = !DILocation(line: 61, column: 15, scope: !38)
!38 = distinct !DILexicalBlock(scope: !35, file: !1, line: 61, column: 3)
!39 = !DILocation(line: 61, column: 19, scope: !38)
!40 = !DILocation(line: 61, column: 17, scope: !38)
!41 = !DILocation(line: 61, column: 3, scope: !35)
!42 = !DILocation(line: 62, column: 12, scope: !43)
!43 = distinct !DILexicalBlock(scope: !38, file: !1, line: 62, column: 5)
!44 = !DILocation(line: 62, column: 10, scope: !43)
!45 = !DILocation(line: 62, column: 17, scope: !46)
!46 = distinct !DILexicalBlock(scope: !43, file: !1, line: 62, column: 5)
!47 = !DILocation(line: 62, column: 21, scope: !46)
!48 = !DILocation(line: 62, column: 19, scope: !46)
!49 = !DILocation(line: 62, column: 5, scope: !43)
!50 = !DILocation(line: 63, column: 11, scope: !46)
!51 = !DILocation(line: 63, column: 9, scope: !46)
!52 = !DILocation(line: 63, column: 14, scope: !46)
!53 = !DILocation(line: 63, column: 17, scope: !46)
!54 = !DILocation(line: 62, column: 27, scope: !46)
!55 = !DILocation(line: 62, column: 5, scope: !46)
!56 = distinct !{!56, !49, !57}
!57 = !DILocation(line: 63, column: 19, scope: !43)
!58 = !DILocation(line: 61, column: 25, scope: !38)
!59 = !DILocation(line: 61, column: 3, scope: !38)
!60 = distinct !{!60, !41, !61}
!61 = !DILocation(line: 63, column: 19, scope: !35)
!62 = !DILocation(line: 65, column: 1, scope: !7)
!63 = !DILocation(line: 73, column: 25, scope: !7)
!64 = !DILocation(line: 73, column: 3, scope: !7)
!65 = !DILocation(line: 74, column: 3, scope: !7)
!66 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 66, type: !67, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!67 = !DISubroutineType(types: !68)
!68 = !{null, !69, !69, !73, !74, !75}
!69 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !70)
!70 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !71)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!73 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !10, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !30, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !23, size: 64)
!76 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !66, type: !69, flags: DIFlagArtificial)
!77 = !DILocation(line: 0, scope: !66)
!78 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !66, type: !69, flags: DIFlagArtificial)
!79 = !DILocalVariable(name: "len", arg: 3, scope: !66, file: !1, line: 58, type: !73)
!80 = !DILocation(line: 58, column: 7, scope: !66)
!81 = !DILocalVariable(name: "u", arg: 4, scope: !66, file: !1, line: 60, type: !74)
!82 = !DILocation(line: 60, column: 9, scope: !66)
!83 = !DILocalVariable(name: "sum", arg: 5, scope: !66, file: !1, line: 57, type: !75)
!84 = !DILocation(line: 57, column: 15, scope: !66)
!85 = !DILocation(line: 66, column: 3, scope: !66)
!86 = !DILocalVariable(name: ".omp.iv", scope: !66, type: !10, flags: DIFlagArtificial)
!87 = !DILocalVariable(name: ".capture_expr.", scope: !66, type: !10, flags: DIFlagArtificial)
!88 = !DILocation(line: 66, column: 19, scope: !66)
!89 = !DILocalVariable(name: "i", scope: !66, type: !10, flags: DIFlagArtificial)
!90 = !DILocation(line: 66, column: 24, scope: !66)
!91 = !DILocalVariable(name: ".omp.lb", scope: !66, type: !10, flags: DIFlagArtificial)
!92 = !DILocation(line: 66, column: 8, scope: !66)
!93 = !DILocalVariable(name: ".omp.ub", scope: !66, type: !10, flags: DIFlagArtificial)
!94 = !DILocalVariable(name: ".omp.stride", scope: !66, type: !10, flags: DIFlagArtificial)
!95 = !DILocalVariable(name: ".omp.is_last", scope: !66, type: !10, flags: DIFlagArtificial)
!96 = !DILocalVariable(name: "temp", scope: !66, type: !23, flags: DIFlagArtificial)
!97 = !DILocalVariable(name: "j", scope: !66, type: !10, flags: DIFlagArtificial)
!98 = !DILocation(line: 67, column: 12, scope: !99)
!99 = distinct !DILexicalBlock(scope: !66, file: !1, line: 67, column: 5)
!100 = !DILocation(line: 67, column: 10, scope: !99)
!101 = !DILocation(line: 67, column: 17, scope: !102)
!102 = distinct !DILexicalBlock(scope: !99, file: !1, line: 67, column: 5)
!103 = !DILocation(line: 67, column: 21, scope: !102)
!104 = !DILocation(line: 67, column: 19, scope: !102)
!105 = !DILocation(line: 67, column: 5, scope: !99)
!106 = !DILocation(line: 69, column: 16, scope: !107)
!107 = distinct !DILexicalBlock(scope: !102, file: !1, line: 68, column: 5)
!108 = !DILocation(line: 69, column: 14, scope: !107)
!109 = !DILocation(line: 69, column: 19, scope: !107)
!110 = !DILocation(line: 69, column: 12, scope: !107)
!111 = !DILocation(line: 70, column: 13, scope: !107)
!112 = !DILocation(line: 70, column: 19, scope: !107)
!113 = !DILocation(line: 70, column: 26, scope: !107)
!114 = !DILocation(line: 70, column: 24, scope: !107)
!115 = !DILocation(line: 70, column: 17, scope: !107)
!116 = !DILocation(line: 70, column: 11, scope: !107)
!117 = !DILocation(line: 71, column: 5, scope: !107)
!118 = !DILocation(line: 67, column: 27, scope: !102)
!119 = !DILocation(line: 67, column: 5, scope: !102)
!120 = distinct !{!120, !105, !121}
!121 = !DILocation(line: 71, column: 5, scope: !99)
!122 = !DILocation(line: 65, column: 1, scope: !66)
!123 = distinct !{!123, !122, !124}
!124 = !DILocation(line: 65, column: 44, scope: !66)
!125 = !DILocation(line: 71, column: 5, scope: !66)
!126 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 66, type: !67, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!127 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !126, type: !69, flags: DIFlagArtificial)
!128 = !DILocation(line: 0, scope: !126)
!129 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !126, type: !69, flags: DIFlagArtificial)
!130 = !DILocalVariable(name: "len", arg: 3, scope: !126, type: !73, flags: DIFlagArtificial)
!131 = !DILocalVariable(name: "u", arg: 4, scope: !126, type: !74, flags: DIFlagArtificial)
!132 = !DILocalVariable(name: "sum", arg: 5, scope: !126, type: !75, flags: DIFlagArtificial)
!133 = !DILocation(line: 66, column: 3, scope: !126)
!134 = !{!135}
!135 = !{i64 2, i64 -1, i64 -1, i1 true}
