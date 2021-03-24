; ModuleID = 'DRB172-critical2-orig-no.c'
source_filename = "DRB172-critical2-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [40 x i8] c";DRB172-critical2-orig-no.c;main;27;5;;\00", align 1
@2 = private unnamed_addr constant [41 x i8] c";DRB172-critical2-orig-no.c;main;27;31;;\00", align 1
@3 = private unnamed_addr constant [40 x i8] c";DRB172-critical2-orig-no.c;main;31;5;;\00", align 1
@.gomp_critical_user_.var = common global [8 x i32] zeroinitializer
@4 = private unnamed_addr constant [40 x i8] c";DRB172-critical2-orig-no.c;main;35;5;;\00", align 1
@5 = private unnamed_addr constant [40 x i8] c";DRB172-critical2-orig-no.c;main;36;5;;\00", align 1
@6 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@7 = private unnamed_addr constant [40 x i8] c";DRB172-critical2-orig-no.c;main;25;3;;\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%f %f\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !9 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %q = alloca [10 x double], align 16
  %qq = alloca [10 x double], align 16
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata i32* %i, metadata !13, metadata !DIExpression()), !dbg !14
  call void @llvm.dbg.declare(metadata [10 x double]* %q, metadata !15, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.declare(metadata [10 x double]* %qq, metadata !20, metadata !DIExpression()), !dbg !21
  store i32 0, i32* %i, align 4, !dbg !22
  br label %for.cond, !dbg !24

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4, !dbg !25
  %cmp = icmp slt i32 %2, 10, !dbg !27
  br i1 %cmp, label %for.body, label %for.end, !dbg !28

for.body:                                         ; preds = %for.cond
  %3 = load i32, i32* %i, align 4, !dbg !29
  %conv = sitofp i32 %3 to double, !dbg !30
  %4 = load i32, i32* %i, align 4, !dbg !31
  %idxprom = sext i32 %4 to i64, !dbg !32
  %arrayidx = getelementptr inbounds [10 x double], [10 x double]* %qq, i64 0, i64 %idxprom, !dbg !32
  store double %conv, double* %arrayidx, align 8, !dbg !33
  br label %for.inc, !dbg !32

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4, !dbg !34
  %inc = add nsw i32 %5, 1, !dbg !34
  store i32 %inc, i32* %i, align 4, !dbg !34
  br label %for.cond, !dbg !35, !llvm.loop !36

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %i, align 4, !dbg !38
  br label %for.cond1, !dbg !40

for.cond1:                                        ; preds = %for.inc8, %for.end
  %6 = load i32, i32* %i, align 4, !dbg !41
  %cmp2 = icmp slt i32 %6, 10, !dbg !43
  br i1 %cmp2, label %for.body4, label %for.end10, !dbg !44

for.body4:                                        ; preds = %for.cond1
  %7 = load i32, i32* %i, align 4, !dbg !45
  %conv5 = sitofp i32 %7 to double, !dbg !46
  %8 = load i32, i32* %i, align 4, !dbg !47
  %idxprom6 = sext i32 %8 to i64, !dbg !48
  %arrayidx7 = getelementptr inbounds [10 x double], [10 x double]* %q, i64 0, i64 %idxprom6, !dbg !48
  store double %conv5, double* %arrayidx7, align 8, !dbg !49
  br label %for.inc8, !dbg !48

for.inc8:                                         ; preds = %for.body4
  %9 = load i32, i32* %i, align 4, !dbg !50
  %inc9 = add nsw i32 %9, 1, !dbg !50
  store i32 %inc9, i32* %i, align 4, !dbg !50
  br label %for.cond1, !dbg !51, !llvm.loop !52

for.end10:                                        ; preds = %for.cond1
  %10 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !54
  store i8* getelementptr inbounds ([40 x i8], [40 x i8]* @7, i32 0, i32 0), i8** %10, align 8, !dbg !54
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 2, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, [10 x double]*, [10 x double]*)* @.omp_outlined. to void (i32*, i32*, ...)*), [10 x double]* %q, [10 x double]* %qq), !dbg !54
  store i32 0, i32* %i, align 4, !dbg !55
  br label %for.cond11, !dbg !57

for.cond11:                                       ; preds = %for.inc19, %for.end10
  %11 = load i32, i32* %i, align 4, !dbg !58
  %cmp12 = icmp slt i32 %11, 10, !dbg !60
  br i1 %cmp12, label %for.body14, label %for.end21, !dbg !61

for.body14:                                       ; preds = %for.cond11
  %12 = load i32, i32* %i, align 4, !dbg !62
  %idxprom15 = sext i32 %12 to i64, !dbg !63
  %arrayidx16 = getelementptr inbounds [10 x double], [10 x double]* %qq, i64 0, i64 %idxprom15, !dbg !63
  %13 = load double, double* %arrayidx16, align 8, !dbg !63
  %14 = load i32, i32* %i, align 4, !dbg !64
  %idxprom17 = sext i32 %14 to i64, !dbg !65
  %arrayidx18 = getelementptr inbounds [10 x double], [10 x double]* %q, i64 0, i64 %idxprom17, !dbg !65
  %15 = load double, double* %arrayidx18, align 8, !dbg !65
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), double %13, double %15), !dbg !66
  br label %for.inc19, !dbg !66

for.inc19:                                        ; preds = %for.body14
  %16 = load i32, i32* %i, align 4, !dbg !67
  %inc20 = add nsw i32 %16, 1, !dbg !67
  store i32 %inc20, i32* %i, align 4, !dbg !67
  br label %for.cond11, !dbg !68, !llvm.loop !69

for.end21:                                        ; preds = %for.cond11
  ret i32 0, !dbg !71
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., [10 x double]* dereferenceable(80) %q, [10 x double]* dereferenceable(80) %qq) #2 !dbg !72 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %q.addr = alloca [10 x double]*, align 8
  %qq.addr = alloca [10 x double]*, align 8
  %.omp.iv = alloca i32, align 4
  %tmp = alloca i32, align 4
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %i = alloca i32, align 4
  %i1 = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !80, metadata !DIExpression()), !dbg !81
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !82, metadata !DIExpression()), !dbg !81
  store [10 x double]* %q, [10 x double]** %q.addr, align 8
  call void @llvm.dbg.declare(metadata [10 x double]** %q.addr, metadata !83, metadata !DIExpression()), !dbg !84
  store [10 x double]* %qq, [10 x double]** %qq.addr, align 8
  call void @llvm.dbg.declare(metadata [10 x double]** %qq.addr, metadata !85, metadata !DIExpression()), !dbg !86
  %2 = load [10 x double]*, [10 x double]** %q.addr, align 8, !dbg !87
  %3 = load [10 x double]*, [10 x double]** %qq.addr, align 8, !dbg !87
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !88, metadata !DIExpression()), !dbg !91
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !92, metadata !DIExpression()), !dbg !91
  store i32 0, i32* %.omp.lb, align 4, !dbg !93
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !94, metadata !DIExpression()), !dbg !91
  store i32 9, i32* %.omp.ub, align 4, !dbg !93
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !95, metadata !DIExpression()), !dbg !91
  store i32 1, i32* %.omp.stride, align 4, !dbg !93
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !96, metadata !DIExpression()), !dbg !91
  store i32 0, i32* %.omp.is_last, align 4, !dbg !93
  call void @llvm.dbg.declare(metadata i32* %i, metadata !97, metadata !DIExpression()), !dbg !91
  call void @llvm.dbg.declare(metadata i32* %i1, metadata !97, metadata !DIExpression()), !dbg !91
  %4 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !98
  store i8* getelementptr inbounds ([40 x i8], [40 x i8]* @1, i32 0, i32 0), i8** %4, align 8, !dbg !98
  %5 = load i32*, i32** %.global_tid..addr, align 8, !dbg !98
  %6 = load i32, i32* %5, align 4, !dbg !98
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %6, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !98
  %7 = load i32, i32* %.omp.ub, align 4, !dbg !93
  %cmp = icmp sgt i32 %7, 9, !dbg !93
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !93

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !93

cond.false:                                       ; preds = %entry
  %8 = load i32, i32* %.omp.ub, align 4, !dbg !93
  br label %cond.end, !dbg !93

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 9, %cond.true ], [ %8, %cond.false ], !dbg !93
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !93
  %9 = load i32, i32* %.omp.lb, align 4, !dbg !93
  store i32 %9, i32* %.omp.iv, align 4, !dbg !93
  br label %omp.inner.for.cond, !dbg !98

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %10 = load i32, i32* %.omp.iv, align 4, !dbg !93
  %11 = load i32, i32* %.omp.ub, align 4, !dbg !93
  %cmp2 = icmp sle i32 %10, %11, !dbg !99
  br i1 %cmp2, label %omp.inner.for.body, label %omp.inner.for.end, !dbg !98

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %12 = load i32, i32* %.omp.iv, align 4, !dbg !93
  %mul = mul nsw i32 %12, 1, !dbg !100
  %add = add nsw i32 0, %mul, !dbg !100
  store i32 %add, i32* %i, align 4, !dbg !100
  %13 = load i32, i32* %i, align 4, !dbg !101
  %idxprom = sext i32 %13 to i64, !dbg !102
  %arrayidx = getelementptr inbounds [10 x double], [10 x double]* %3, i64 0, i64 %idxprom, !dbg !102
  %14 = load double, double* %arrayidx, align 8, !dbg !102
  %15 = load i32, i32* %i, align 4, !dbg !103
  %idxprom3 = sext i32 %15 to i64, !dbg !104
  %arrayidx4 = getelementptr inbounds [10 x double], [10 x double]* %2, i64 0, i64 %idxprom3, !dbg !104
  %16 = load double, double* %arrayidx4, align 8, !dbg !105
  %add5 = fadd double %16, %14, !dbg !105
  store double %add5, double* %arrayidx4, align 8, !dbg !105
  br label %omp.body.continue, !dbg !104

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !106

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %17 = load i32, i32* %.omp.iv, align 4, !dbg !93
  %add6 = add nsw i32 %17, 1, !dbg !99
  store i32 %add6, i32* %.omp.iv, align 4, !dbg !99
  br label %omp.inner.for.cond, !dbg !106, !llvm.loop !107

omp.inner.for.end:                                ; preds = %omp.inner.for.cond
  br label %omp.loop.exit, !dbg !106

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %18 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !106
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @2, i32 0, i32 0), i8** %18, align 8, !dbg !106
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %6), !dbg !106
  %19 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !108
  store i8* getelementptr inbounds ([40 x i8], [40 x i8]* @1, i32 0, i32 0), i8** %19, align 8, !dbg !108
  call void @__kmpc_barrier(%struct.ident_t* %.kmpc_loc.addr, i32 %6), !dbg !108
  %20 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !109
  store i8* getelementptr inbounds ([40 x i8], [40 x i8]* @3, i32 0, i32 0), i8** %20, align 8, !dbg !109
  call void @__kmpc_critical(%struct.ident_t* %.kmpc_loc.addr, i32 %6, [8 x i32]* @.gomp_critical_user_.var), !dbg !109
  %arrayidx7 = getelementptr inbounds [10 x double], [10 x double]* %2, i64 0, i64 9, !dbg !110
  %21 = load double, double* %arrayidx7, align 8, !dbg !113
  %add8 = fadd double %21, 1.000000e+00, !dbg !113
  store double %add8, double* %arrayidx7, align 8, !dbg !113
  call void @__kmpc_end_critical(%struct.ident_t* %.kmpc_loc.addr, i32 %6, [8 x i32]* @.gomp_critical_user_.var), !dbg !114
  %22 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !115
  store i8* getelementptr inbounds ([40 x i8], [40 x i8]* @4, i32 0, i32 0), i8** %22, align 8, !dbg !115
  call void @__kmpc_barrier(%struct.ident_t* %.kmpc_loc.addr, i32 %6), !dbg !115
  %23 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !116
  store i8* getelementptr inbounds ([40 x i8], [40 x i8]* @5, i32 0, i32 0), i8** %23, align 8, !dbg !116
  %24 = call i32 @__kmpc_single(%struct.ident_t* %.kmpc_loc.addr, i32 %6), !dbg !116
  %25 = icmp ne i32 %24, 0, !dbg !116
  br i1 %25, label %omp_if.then, label %omp_if.end, !dbg !116

omp_if.then:                                      ; preds = %omp.loop.exit
  %arrayidx9 = getelementptr inbounds [10 x double], [10 x double]* %2, i64 0, i64 9, !dbg !117
  %26 = load double, double* %arrayidx9, align 8, !dbg !117
  %sub = fsub double %26, 1.000000e+00, !dbg !120
  %arrayidx10 = getelementptr inbounds [10 x double], [10 x double]* %2, i64 0, i64 9, !dbg !121
  store double %sub, double* %arrayidx10, align 8, !dbg !122
  call void @__kmpc_end_single(%struct.ident_t* %.kmpc_loc.addr, i32 %6), !dbg !123
  br label %omp_if.end, !dbg !123

omp_if.end:                                       ; preds = %omp_if.then, %omp.loop.exit
  %27 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !124
  store i8* getelementptr inbounds ([40 x i8], [40 x i8]* @5, i32 0, i32 0), i8** %27, align 8, !dbg !124
  call void @__kmpc_barrier(%struct.ident_t* %.kmpc_loc.addr, i32 %6), !dbg !124
  ret void, !dbg !125
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

declare dso_local void @__kmpc_barrier(%struct.ident_t*, i32)

declare dso_local void @__kmpc_end_critical(%struct.ident_t*, i32, [8 x i32]*)

declare dso_local void @__kmpc_critical(%struct.ident_t*, i32, [8 x i32]*)

declare dso_local void @__kmpc_end_single(%struct.ident_t*, i32)

declare dso_local i32 @__kmpc_single(%struct.ident_t*, i32)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., [10 x double]* dereferenceable(80) %q, [10 x double]* dereferenceable(80) %qq) #2 !dbg !126 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %q.addr = alloca [10 x double]*, align 8
  %qq.addr = alloca [10 x double]*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !127, metadata !DIExpression()), !dbg !128
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !129, metadata !DIExpression()), !dbg !128
  store [10 x double]* %q, [10 x double]** %q.addr, align 8
  call void @llvm.dbg.declare(metadata [10 x double]** %q.addr, metadata !130, metadata !DIExpression()), !dbg !128
  store [10 x double]* %qq, [10 x double]** %qq.addr, align 8
  call void @llvm.dbg.declare(metadata [10 x double]** %qq.addr, metadata !131, metadata !DIExpression()), !dbg !128
  %0 = load [10 x double]*, [10 x double]** %q.addr, align 8, !dbg !132
  %1 = load [10 x double]*, [10 x double]** %qq.addr, align 8, !dbg !132
  %2 = load i32*, i32** %.global_tid..addr, align 8, !dbg !132
  %3 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !132
  %4 = load [10 x double]*, [10 x double]** %q.addr, align 8, !dbg !132
  %5 = load [10 x double]*, [10 x double]** %qq.addr, align 8, !dbg !132
  call void @.omp_outlined._debug__(i32* %2, i32* %3, [10 x double]* %4, [10 x double]* %5) #5, !dbg !132
  ret void, !dbg !132
}

declare !callback !133 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

declare dso_local i32 @printf(i8*, ...) #4

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noinline norecurse nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.1 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "DRB172-critical2-orig-no.c", directory: "/home/yanze/code/OpenRace/tests/data/integration/dataracebench")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!5 = !{i32 7, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 10.0.1 "}
!9 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 18, type: !10, scopeLine: 18, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!10 = !DISubroutineType(types: !11)
!11 = !{!12}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !DILocalVariable(name: "i", scope: !9, file: !1, line: 19, type: !12)
!14 = !DILocation(line: 19, column: 7, scope: !9)
!15 = !DILocalVariable(name: "q", scope: !9, file: !1, line: 20, type: !16)
!16 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 640, elements: !17)
!17 = !{!18}
!18 = !DISubrange(count: 10)
!19 = !DILocation(line: 20, column: 10, scope: !9)
!20 = !DILocalVariable(name: "qq", scope: !9, file: !1, line: 20, type: !16)
!21 = !DILocation(line: 20, column: 17, scope: !9)
!22 = !DILocation(line: 22, column: 10, scope: !23)
!23 = distinct !DILexicalBlock(scope: !9, file: !1, line: 22, column: 3)
!24 = !DILocation(line: 22, column: 8, scope: !23)
!25 = !DILocation(line: 22, column: 15, scope: !26)
!26 = distinct !DILexicalBlock(scope: !23, file: !1, line: 22, column: 3)
!27 = !DILocation(line: 22, column: 17, scope: !26)
!28 = !DILocation(line: 22, column: 3, scope: !23)
!29 = !DILocation(line: 22, column: 44, scope: !26)
!30 = !DILocation(line: 22, column: 36, scope: !26)
!31 = !DILocation(line: 22, column: 31, scope: !26)
!32 = !DILocation(line: 22, column: 28, scope: !26)
!33 = !DILocation(line: 22, column: 34, scope: !26)
!34 = !DILocation(line: 22, column: 24, scope: !26)
!35 = !DILocation(line: 22, column: 3, scope: !26)
!36 = distinct !{!36, !28, !37}
!37 = !DILocation(line: 22, column: 44, scope: !23)
!38 = !DILocation(line: 23, column: 10, scope: !39)
!39 = distinct !DILexicalBlock(scope: !9, file: !1, line: 23, column: 3)
!40 = !DILocation(line: 23, column: 8, scope: !39)
!41 = !DILocation(line: 23, column: 15, scope: !42)
!42 = distinct !DILexicalBlock(scope: !39, file: !1, line: 23, column: 3)
!43 = !DILocation(line: 23, column: 17, scope: !42)
!44 = !DILocation(line: 23, column: 3, scope: !39)
!45 = !DILocation(line: 23, column: 43, scope: !42)
!46 = !DILocation(line: 23, column: 35, scope: !42)
!47 = !DILocation(line: 23, column: 30, scope: !42)
!48 = !DILocation(line: 23, column: 28, scope: !42)
!49 = !DILocation(line: 23, column: 33, scope: !42)
!50 = !DILocation(line: 23, column: 24, scope: !42)
!51 = !DILocation(line: 23, column: 3, scope: !42)
!52 = distinct !{!52, !44, !53}
!53 = !DILocation(line: 23, column: 43, scope: !39)
!54 = !DILocation(line: 25, column: 3, scope: !9)
!55 = !DILocation(line: 43, column: 10, scope: !56)
!56 = distinct !DILexicalBlock(scope: !9, file: !1, line: 43, column: 3)
!57 = !DILocation(line: 43, column: 8, scope: !56)
!58 = !DILocation(line: 43, column: 15, scope: !59)
!59 = distinct !DILexicalBlock(scope: !56, file: !1, line: 43, column: 3)
!60 = !DILocation(line: 43, column: 17, scope: !59)
!61 = !DILocation(line: 43, column: 3, scope: !56)
!62 = !DILocation(line: 43, column: 47, scope: !59)
!63 = !DILocation(line: 43, column: 44, scope: !59)
!64 = !DILocation(line: 43, column: 52, scope: !59)
!65 = !DILocation(line: 43, column: 50, scope: !59)
!66 = !DILocation(line: 43, column: 27, scope: !59)
!67 = !DILocation(line: 43, column: 24, scope: !59)
!68 = !DILocation(line: 43, column: 3, scope: !59)
!69 = distinct !{!69, !61, !70}
!70 = !DILocation(line: 43, column: 54, scope: !56)
!71 = !DILocation(line: 45, column: 3, scope: !9)
!72 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 26, type: !73, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!73 = !DISubroutineType(types: !74)
!74 = !{null, !75, !75, !79, !79}
!75 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !76)
!76 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !77)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!79 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !16, size: 64)
!80 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !72, type: !75, flags: DIFlagArtificial)
!81 = !DILocation(line: 0, scope: !72)
!82 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !72, type: !75, flags: DIFlagArtificial)
!83 = !DILocalVariable(name: "q", arg: 3, scope: !72, file: !1, line: 20, type: !79)
!84 = !DILocation(line: 20, column: 10, scope: !72)
!85 = !DILocalVariable(name: "qq", arg: 4, scope: !72, file: !1, line: 20, type: !79)
!86 = !DILocation(line: 20, column: 17, scope: !72)
!87 = !DILocation(line: 26, column: 3, scope: !72)
!88 = !DILocalVariable(name: ".omp.iv", scope: !89, type: !12, flags: DIFlagArtificial)
!89 = distinct !DILexicalBlock(scope: !90, file: !1, line: 27, column: 5)
!90 = distinct !DILexicalBlock(scope: !72, file: !1, line: 26, column: 3)
!91 = !DILocation(line: 0, scope: !89)
!92 = !DILocalVariable(name: ".omp.lb", scope: !89, type: !12, flags: DIFlagArtificial)
!93 = !DILocation(line: 28, column: 10, scope: !89)
!94 = !DILocalVariable(name: ".omp.ub", scope: !89, type: !12, flags: DIFlagArtificial)
!95 = !DILocalVariable(name: ".omp.stride", scope: !89, type: !12, flags: DIFlagArtificial)
!96 = !DILocalVariable(name: ".omp.is_last", scope: !89, type: !12, flags: DIFlagArtificial)
!97 = !DILocalVariable(name: "i", scope: !89, type: !12, flags: DIFlagArtificial)
!98 = !DILocation(line: 27, column: 5, scope: !90)
!99 = !DILocation(line: 28, column: 5, scope: !89)
!100 = !DILocation(line: 28, column: 25, scope: !89)
!101 = !DILocation(line: 29, column: 18, scope: !89)
!102 = !DILocation(line: 29, column: 15, scope: !89)
!103 = !DILocation(line: 29, column: 9, scope: !89)
!104 = !DILocation(line: 29, column: 7, scope: !89)
!105 = !DILocation(line: 29, column: 12, scope: !89)
!106 = !DILocation(line: 27, column: 5, scope: !89)
!107 = distinct !{!107, !106, !108}
!108 = !DILocation(line: 27, column: 31, scope: !89)
!109 = !DILocation(line: 31, column: 5, scope: !90)
!110 = !DILocation(line: 33, column: 7, scope: !111)
!111 = distinct !DILexicalBlock(scope: !112, file: !1, line: 32, column: 5)
!112 = distinct !DILexicalBlock(scope: !90, file: !1, line: 31, column: 5)
!113 = !DILocation(line: 33, column: 12, scope: !111)
!114 = !DILocation(line: 34, column: 5, scope: !111)
!115 = !DILocation(line: 35, column: 5, scope: !90)
!116 = !DILocation(line: 36, column: 5, scope: !90)
!117 = !DILocation(line: 38, column: 14, scope: !118)
!118 = distinct !DILexicalBlock(scope: !119, file: !1, line: 37, column: 5)
!119 = distinct !DILexicalBlock(scope: !90, file: !1, line: 36, column: 5)
!120 = !DILocation(line: 38, column: 19, scope: !118)
!121 = !DILocation(line: 38, column: 7, scope: !118)
!122 = !DILocation(line: 38, column: 12, scope: !118)
!123 = !DILocation(line: 39, column: 5, scope: !118)
!124 = !DILocation(line: 36, column: 23, scope: !119)
!125 = !DILocation(line: 41, column: 3, scope: !72)
!126 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 26, type: !73, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!127 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !126, type: !75, flags: DIFlagArtificial)
!128 = !DILocation(line: 0, scope: !126)
!129 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !126, type: !75, flags: DIFlagArtificial)
!130 = !DILocalVariable(name: "q", arg: 3, scope: !126, type: !79, flags: DIFlagArtificial)
!131 = !DILocalVariable(name: "qq", arg: 4, scope: !126, type: !79, flags: DIFlagArtificial)
!132 = !DILocation(line: 26, column: 3, scope: !126)
!133 = !{!134}
!134 = !{i64 2, i64 -1, i64 -1, i1 true}
