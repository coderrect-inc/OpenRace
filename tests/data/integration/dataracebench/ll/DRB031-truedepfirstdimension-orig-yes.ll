; ModuleID = 'DRB031-truedepfirstdimension-orig-yes.c'
source_filename = "DRB031-truedepfirstdimension-orig-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [53 x i8] c";DRB031-truedepfirstdimension-orig-yes.c;main;63;1;;\00", align 1
@2 = private unnamed_addr constant [54 x i8] c";DRB031-truedepfirstdimension-orig-yes.c;main;63;36;;\00", align 1
@3 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"b[500][500]=%f\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !dbg !7 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %n = alloca i32, align 4
  %m = alloca i32, align 4
  %b = alloca [1000 x [1000 x double]], align 16
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
  call void @llvm.dbg.declare(metadata i32* %n, metadata !22, metadata !DIExpression()), !dbg !23
  store i32 1000, i32* %n, align 4, !dbg !23
  call void @llvm.dbg.declare(metadata i32* %m, metadata !24, metadata !DIExpression()), !dbg !25
  store i32 1000, i32* %m, align 4, !dbg !25
  call void @llvm.dbg.declare(metadata [1000 x [1000 x double]]* %b, metadata !26, metadata !DIExpression()), !dbg !31
  store i32 0, i32* %i, align 4, !dbg !32
  br label %for.cond, !dbg !34

for.cond:                                         ; preds = %for.inc6, %entry
  %2 = load i32, i32* %i, align 4, !dbg !35
  %3 = load i32, i32* %n, align 4, !dbg !37
  %cmp = icmp slt i32 %2, %3, !dbg !38
  br i1 %cmp, label %for.body, label %for.end8, !dbg !39

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4, !dbg !40
  br label %for.cond1, !dbg !42

for.cond1:                                        ; preds = %for.inc, %for.body
  %4 = load i32, i32* %j, align 4, !dbg !43
  %5 = load i32, i32* %m, align 4, !dbg !45
  %cmp2 = icmp slt i32 %4, %5, !dbg !46
  br i1 %cmp2, label %for.body3, label %for.end, !dbg !47

for.body3:                                        ; preds = %for.cond1
  %6 = load i32, i32* %i, align 4, !dbg !48
  %idxprom = sext i32 %6 to i64, !dbg !49
  %arrayidx = getelementptr inbounds [1000 x [1000 x double]], [1000 x [1000 x double]]* %b, i64 0, i64 %idxprom, !dbg !49
  %7 = load i32, i32* %j, align 4, !dbg !50
  %idxprom4 = sext i32 %7 to i64, !dbg !49
  %arrayidx5 = getelementptr inbounds [1000 x double], [1000 x double]* %arrayidx, i64 0, i64 %idxprom4, !dbg !49
  store double 5.000000e-01, double* %arrayidx5, align 8, !dbg !51
  br label %for.inc, !dbg !49

for.inc:                                          ; preds = %for.body3
  %8 = load i32, i32* %j, align 4, !dbg !52
  %inc = add nsw i32 %8, 1, !dbg !52
  store i32 %inc, i32* %j, align 4, !dbg !52
  br label %for.cond1, !dbg !53, !llvm.loop !54

for.end:                                          ; preds = %for.cond1
  br label %for.inc6, !dbg !55

for.inc6:                                         ; preds = %for.end
  %9 = load i32, i32* %i, align 4, !dbg !56
  %inc7 = add nsw i32 %9, 1, !dbg !56
  store i32 %inc7, i32* %i, align 4, !dbg !56
  br label %for.cond, !dbg !57, !llvm.loop !58

for.end8:                                         ; preds = %for.cond
  %10 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !60
  store i8* getelementptr inbounds ([53 x i8], [53 x i8]* @1, i32 0, i32 0), i8** %10, align 8, !dbg !60
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*, [1000 x [1000 x double]]*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %n, i32* %m, [1000 x [1000 x double]]* %b), !dbg !60
  %arrayidx9 = getelementptr inbounds [1000 x [1000 x double]], [1000 x [1000 x double]]* %b, i64 0, i64 500, !dbg !61
  %arrayidx10 = getelementptr inbounds [1000 x double], [1000 x double]* %arrayidx9, i64 0, i64 500, !dbg !61
  %11 = load double, double* %arrayidx10, align 16, !dbg !61
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), double %11), !dbg !62
  ret i32 0, !dbg !63
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %n, i32* dereferenceable(4) %m, [1000 x [1000 x double]]* dereferenceable(8000000) %b) #2 !dbg !64 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %n.addr = alloca i32*, align 8
  %m.addr = alloca i32*, align 8
  %b.addr = alloca [1000 x [1000 x double]]*, align 8
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
  %i4 = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !73, metadata !DIExpression()), !dbg !74
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !75, metadata !DIExpression()), !dbg !74
  store i32* %n, i32** %n.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %n.addr, metadata !76, metadata !DIExpression()), !dbg !77
  store i32* %m, i32** %m.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %m.addr, metadata !78, metadata !DIExpression()), !dbg !79
  store [1000 x [1000 x double]]* %b, [1000 x [1000 x double]]** %b.addr, align 8
  call void @llvm.dbg.declare(metadata [1000 x [1000 x double]]** %b.addr, metadata !80, metadata !DIExpression()), !dbg !81
  %2 = load i32*, i32** %n.addr, align 8, !dbg !82
  %3 = load i32*, i32** %m.addr, align 8, !dbg !82
  %4 = load [1000 x [1000 x double]]*, [1000 x [1000 x double]]** %b.addr, align 8, !dbg !82
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !83, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.declare(metadata i32* %.capture_expr., metadata !84, metadata !DIExpression()), !dbg !74
  %5 = load i32, i32* %2, align 4, !dbg !85
  store i32 %5, i32* %.capture_expr., align 4, !dbg !85
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.1, metadata !84, metadata !DIExpression()), !dbg !74
  %6 = load i32, i32* %.capture_expr., align 4, !dbg !85
  %sub = sub nsw i32 %6, 1, !dbg !82
  %sub2 = sub nsw i32 %sub, 1, !dbg !82
  %add = add nsw i32 %sub2, 1, !dbg !82
  %div = sdiv i32 %add, 1, !dbg !82
  %sub3 = sub nsw i32 %div, 1, !dbg !82
  store i32 %sub3, i32* %.capture_expr.1, align 4, !dbg !82
  call void @llvm.dbg.declare(metadata i32* %i, metadata !86, metadata !DIExpression()), !dbg !74
  store i32 1, i32* %i, align 4, !dbg !87
  %7 = load i32, i32* %.capture_expr., align 4, !dbg !85
  %cmp = icmp slt i32 1, %7, !dbg !82
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end, !dbg !82

omp.precond.then:                                 ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !88, metadata !DIExpression()), !dbg !74
  store i32 0, i32* %.omp.lb, align 4, !dbg !89
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !90, metadata !DIExpression()), !dbg !74
  %8 = load i32, i32* %.capture_expr.1, align 4, !dbg !82
  store i32 %8, i32* %.omp.ub, align 4, !dbg !89
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !91, metadata !DIExpression()), !dbg !74
  store i32 1, i32* %.omp.stride, align 4, !dbg !89
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !92, metadata !DIExpression()), !dbg !74
  store i32 0, i32* %.omp.is_last, align 4, !dbg !89
  call void @llvm.dbg.declare(metadata i32* %j, metadata !93, metadata !DIExpression()), !dbg !74
  call void @llvm.dbg.declare(metadata i32* %i4, metadata !86, metadata !DIExpression()), !dbg !74
  %9 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !82
  store i8* getelementptr inbounds ([53 x i8], [53 x i8]* @1, i32 0, i32 0), i8** %9, align 8, !dbg !82
  %10 = load i32*, i32** %.global_tid..addr, align 8, !dbg !82
  %11 = load i32, i32* %10, align 4, !dbg !82
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %11, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !82
  %12 = load i32, i32* %.omp.ub, align 4, !dbg !89
  %13 = load i32, i32* %.capture_expr.1, align 4, !dbg !82
  %cmp5 = icmp sgt i32 %12, %13, !dbg !89
  br i1 %cmp5, label %cond.true, label %cond.false, !dbg !89

cond.true:                                        ; preds = %omp.precond.then
  %14 = load i32, i32* %.capture_expr.1, align 4, !dbg !82
  br label %cond.end, !dbg !89

cond.false:                                       ; preds = %omp.precond.then
  %15 = load i32, i32* %.omp.ub, align 4, !dbg !89
  br label %cond.end, !dbg !89

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %14, %cond.true ], [ %15, %cond.false ], !dbg !89
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !89
  %16 = load i32, i32* %.omp.lb, align 4, !dbg !89
  store i32 %16, i32* %.omp.iv, align 4, !dbg !89
  br label %omp.inner.for.cond, !dbg !82

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %17 = load i32, i32* %.omp.iv, align 4, !dbg !89
  %18 = load i32, i32* %.omp.ub, align 4, !dbg !89
  %cmp6 = icmp sle i32 %17, %18, !dbg !82
  br i1 %cmp6, label %omp.inner.for.body, label %omp.inner.for.end, !dbg !82

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %19 = load i32, i32* %.omp.iv, align 4, !dbg !89
  %mul = mul nsw i32 %19, 1, !dbg !87
  %add7 = add nsw i32 1, %mul, !dbg !87
  store i32 %add7, i32* %i4, align 4, !dbg !87
  store i32 1, i32* %j, align 4, !dbg !94
  br label %for.cond, !dbg !96

for.cond:                                         ; preds = %for.inc, %omp.inner.for.body
  %20 = load i32, i32* %j, align 4, !dbg !97
  %21 = load i32, i32* %3, align 4, !dbg !99
  %cmp8 = icmp slt i32 %20, %21, !dbg !100
  br i1 %cmp8, label %for.body, label %for.end, !dbg !101

for.body:                                         ; preds = %for.cond
  %22 = load i32, i32* %i4, align 4, !dbg !102
  %sub9 = sub nsw i32 %22, 1, !dbg !103
  %idxprom = sext i32 %sub9 to i64, !dbg !104
  %arrayidx = getelementptr inbounds [1000 x [1000 x double]], [1000 x [1000 x double]]* %4, i64 0, i64 %idxprom, !dbg !104
  %23 = load i32, i32* %j, align 4, !dbg !105
  %sub10 = sub nsw i32 %23, 1, !dbg !106
  %idxprom11 = sext i32 %sub10 to i64, !dbg !104
  %arrayidx12 = getelementptr inbounds [1000 x double], [1000 x double]* %arrayidx, i64 0, i64 %idxprom11, !dbg !104
  %24 = load double, double* %arrayidx12, align 8, !dbg !104
  %25 = load i32, i32* %i4, align 4, !dbg !107
  %idxprom13 = sext i32 %25 to i64, !dbg !108
  %arrayidx14 = getelementptr inbounds [1000 x [1000 x double]], [1000 x [1000 x double]]* %4, i64 0, i64 %idxprom13, !dbg !108
  %26 = load i32, i32* %j, align 4, !dbg !109
  %idxprom15 = sext i32 %26 to i64, !dbg !108
  %arrayidx16 = getelementptr inbounds [1000 x double], [1000 x double]* %arrayidx14, i64 0, i64 %idxprom15, !dbg !108
  store double %24, double* %arrayidx16, align 8, !dbg !110
  br label %for.inc, !dbg !108

for.inc:                                          ; preds = %for.body
  %27 = load i32, i32* %j, align 4, !dbg !111
  %inc = add nsw i32 %27, 1, !dbg !111
  store i32 %inc, i32* %j, align 4, !dbg !111
  br label %for.cond, !dbg !112, !llvm.loop !113

for.end:                                          ; preds = %for.cond
  br label %omp.body.continue, !dbg !114

omp.body.continue:                                ; preds = %for.end
  br label %omp.inner.for.inc, !dbg !115

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %28 = load i32, i32* %.omp.iv, align 4, !dbg !89
  %add17 = add nsw i32 %28, 1, !dbg !82
  store i32 %add17, i32* %.omp.iv, align 4, !dbg !82
  br label %omp.inner.for.cond, !dbg !115, !llvm.loop !116

omp.inner.for.end:                                ; preds = %omp.inner.for.cond
  br label %omp.loop.exit, !dbg !115

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %29 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !115
  store i8* getelementptr inbounds ([54 x i8], [54 x i8]* @2, i32 0, i32 0), i8** %29, align 8, !dbg !115
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
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %n, i32* dereferenceable(4) %m, [1000 x [1000 x double]]* dereferenceable(8000000) %b) #2 !dbg !119 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %n.addr = alloca i32*, align 8
  %m.addr = alloca i32*, align 8
  %b.addr = alloca [1000 x [1000 x double]]*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !120, metadata !DIExpression()), !dbg !121
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !122, metadata !DIExpression()), !dbg !121
  store i32* %n, i32** %n.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %n.addr, metadata !123, metadata !DIExpression()), !dbg !121
  store i32* %m, i32** %m.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %m.addr, metadata !124, metadata !DIExpression()), !dbg !121
  store [1000 x [1000 x double]]* %b, [1000 x [1000 x double]]** %b.addr, align 8
  call void @llvm.dbg.declare(metadata [1000 x [1000 x double]]** %b.addr, metadata !125, metadata !DIExpression()), !dbg !121
  %0 = load i32*, i32** %n.addr, align 8, !dbg !126
  %1 = load i32*, i32** %m.addr, align 8, !dbg !126
  %2 = load [1000 x [1000 x double]]*, [1000 x [1000 x double]]** %b.addr, align 8, !dbg !126
  %3 = load i32*, i32** %.global_tid..addr, align 8, !dbg !126
  %4 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !126
  %5 = load i32*, i32** %n.addr, align 8, !dbg !126
  %6 = load i32*, i32** %m.addr, align 8, !dbg !126
  %7 = load [1000 x [1000 x double]]*, [1000 x [1000 x double]]** %b.addr, align 8, !dbg !126
  call void @.omp_outlined._debug__(i32* %3, i32* %4, i32* %5, i32* %6, [1000 x [1000 x double]]* %7) #5, !dbg !126
  ret void, !dbg !126
}

declare !callback !127 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

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
!1 = !DIFile(filename: "DRB031-truedepfirstdimension-orig-yes.c", directory: "/home/yanze/code/OpenRace/tests/data/integration/dataracebench")
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
!17 = !DILocation(line: 53, column: 26, scope: !7)
!18 = !DILocalVariable(name: "i", scope: !7, file: !1, line: 55, type: !10)
!19 = !DILocation(line: 55, column: 7, scope: !7)
!20 = !DILocalVariable(name: "j", scope: !7, file: !1, line: 55, type: !10)
!21 = !DILocation(line: 55, column: 9, scope: !7)
!22 = !DILocalVariable(name: "n", scope: !7, file: !1, line: 56, type: !10)
!23 = !DILocation(line: 56, column: 7, scope: !7)
!24 = !DILocalVariable(name: "m", scope: !7, file: !1, line: 56, type: !10)
!25 = !DILocation(line: 56, column: 15, scope: !7)
!26 = !DILocalVariable(name: "b", scope: !7, file: !1, line: 57, type: !27)
!27 = !DICompositeType(tag: DW_TAG_array_type, baseType: !28, size: 64000000, elements: !29)
!28 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!29 = !{!30, !30}
!30 = !DISubrange(count: 1000)
!31 = !DILocation(line: 57, column: 10, scope: !7)
!32 = !DILocation(line: 59, column: 9, scope: !33)
!33 = distinct !DILexicalBlock(scope: !7, file: !1, line: 59, column: 3)
!34 = !DILocation(line: 59, column: 8, scope: !33)
!35 = !DILocation(line: 59, column: 13, scope: !36)
!36 = distinct !DILexicalBlock(scope: !33, file: !1, line: 59, column: 3)
!37 = !DILocation(line: 59, column: 15, scope: !36)
!38 = !DILocation(line: 59, column: 14, scope: !36)
!39 = !DILocation(line: 59, column: 3, scope: !33)
!40 = !DILocation(line: 60, column: 11, scope: !41)
!41 = distinct !DILexicalBlock(scope: !36, file: !1, line: 60, column: 5)
!42 = !DILocation(line: 60, column: 10, scope: !41)
!43 = !DILocation(line: 60, column: 15, scope: !44)
!44 = distinct !DILexicalBlock(scope: !41, file: !1, line: 60, column: 5)
!45 = !DILocation(line: 60, column: 17, scope: !44)
!46 = !DILocation(line: 60, column: 16, scope: !44)
!47 = !DILocation(line: 60, column: 5, scope: !41)
!48 = !DILocation(line: 61, column: 9, scope: !44)
!49 = !DILocation(line: 61, column: 7, scope: !44)
!50 = !DILocation(line: 61, column: 12, scope: !44)
!51 = !DILocation(line: 61, column: 15, scope: !44)
!52 = !DILocation(line: 60, column: 21, scope: !44)
!53 = !DILocation(line: 60, column: 5, scope: !44)
!54 = distinct !{!54, !47, !55}
!55 = !DILocation(line: 61, column: 17, scope: !41)
!56 = !DILocation(line: 59, column: 19, scope: !36)
!57 = !DILocation(line: 59, column: 3, scope: !36)
!58 = distinct !{!58, !39, !59}
!59 = !DILocation(line: 61, column: 17, scope: !33)
!60 = !DILocation(line: 63, column: 1, scope: !7)
!61 = !DILocation(line: 68, column: 30, scope: !7)
!62 = !DILocation(line: 68, column: 3, scope: !7)
!63 = !DILocation(line: 69, column: 3, scope: !7)
!64 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 64, type: !65, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!65 = !DISubroutineType(types: !66)
!66 = !{null, !67, !67, !71, !71, !72}
!67 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !68)
!68 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !69)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!70 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!71 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !10, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !27, size: 64)
!73 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !64, type: !67, flags: DIFlagArtificial)
!74 = !DILocation(line: 0, scope: !64)
!75 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !64, type: !67, flags: DIFlagArtificial)
!76 = !DILocalVariable(name: "n", arg: 3, scope: !64, file: !1, line: 56, type: !71)
!77 = !DILocation(line: 56, column: 7, scope: !64)
!78 = !DILocalVariable(name: "m", arg: 4, scope: !64, file: !1, line: 56, type: !71)
!79 = !DILocation(line: 56, column: 15, scope: !64)
!80 = !DILocalVariable(name: "b", arg: 5, scope: !64, file: !1, line: 57, type: !72)
!81 = !DILocation(line: 57, column: 10, scope: !64)
!82 = !DILocation(line: 64, column: 3, scope: !64)
!83 = !DILocalVariable(name: ".omp.iv", scope: !64, type: !10, flags: DIFlagArtificial)
!84 = !DILocalVariable(name: ".capture_expr.", scope: !64, type: !10, flags: DIFlagArtificial)
!85 = !DILocation(line: 64, column: 14, scope: !64)
!86 = !DILocalVariable(name: "i", scope: !64, type: !10, flags: DIFlagArtificial)
!87 = !DILocation(line: 64, column: 16, scope: !64)
!88 = !DILocalVariable(name: ".omp.lb", scope: !64, type: !10, flags: DIFlagArtificial)
!89 = !DILocation(line: 64, column: 8, scope: !64)
!90 = !DILocalVariable(name: ".omp.ub", scope: !64, type: !10, flags: DIFlagArtificial)
!91 = !DILocalVariable(name: ".omp.stride", scope: !64, type: !10, flags: DIFlagArtificial)
!92 = !DILocalVariable(name: ".omp.is_last", scope: !64, type: !10, flags: DIFlagArtificial)
!93 = !DILocalVariable(name: "j", scope: !64, type: !10, flags: DIFlagArtificial)
!94 = !DILocation(line: 65, column: 11, scope: !95)
!95 = distinct !DILexicalBlock(scope: !64, file: !1, line: 65, column: 5)
!96 = !DILocation(line: 65, column: 10, scope: !95)
!97 = !DILocation(line: 65, column: 14, scope: !98)
!98 = distinct !DILexicalBlock(scope: !95, file: !1, line: 65, column: 5)
!99 = !DILocation(line: 65, column: 16, scope: !98)
!100 = !DILocation(line: 65, column: 15, scope: !98)
!101 = !DILocation(line: 65, column: 5, scope: !95)
!102 = !DILocation(line: 66, column: 17, scope: !98)
!103 = !DILocation(line: 66, column: 18, scope: !98)
!104 = !DILocation(line: 66, column: 15, scope: !98)
!105 = !DILocation(line: 66, column: 22, scope: !98)
!106 = !DILocation(line: 66, column: 23, scope: !98)
!107 = !DILocation(line: 66, column: 9, scope: !98)
!108 = !DILocation(line: 66, column: 7, scope: !98)
!109 = !DILocation(line: 66, column: 12, scope: !98)
!110 = !DILocation(line: 66, column: 14, scope: !98)
!111 = !DILocation(line: 65, column: 19, scope: !98)
!112 = !DILocation(line: 65, column: 5, scope: !98)
!113 = distinct !{!113, !101, !114}
!114 = !DILocation(line: 66, column: 25, scope: !95)
!115 = !DILocation(line: 63, column: 1, scope: !64)
!116 = distinct !{!116, !115, !117}
!117 = !DILocation(line: 63, column: 36, scope: !64)
!118 = !DILocation(line: 66, column: 25, scope: !64)
!119 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 64, type: !65, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!120 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !119, type: !67, flags: DIFlagArtificial)
!121 = !DILocation(line: 0, scope: !119)
!122 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !119, type: !67, flags: DIFlagArtificial)
!123 = !DILocalVariable(name: "n", arg: 3, scope: !119, type: !71, flags: DIFlagArtificial)
!124 = !DILocalVariable(name: "m", arg: 4, scope: !119, type: !71, flags: DIFlagArtificial)
!125 = !DILocalVariable(name: "b", arg: 5, scope: !119, type: !72, flags: DIFlagArtificial)
!126 = !DILocation(line: 64, column: 3, scope: !119)
!127 = !{!128}
!128 = !{i64 2, i64 -1, i64 -1, i1 true}
