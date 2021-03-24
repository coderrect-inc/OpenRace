; ModuleID = 'DRB097-target-teams-distribute-orig-no.c'
source_filename = "DRB097-target-teams-distribute-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 2050, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [54 x i8] c";DRB097-target-teams-distribute-orig-no.c;main;67;1;;\00", align 1
@2 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@3 = private unnamed_addr constant [54 x i8] c";DRB097-target-teams-distribute-orig-no.c;main;69;1;;\00", align 1
@4 = private unnamed_addr constant [55 x i8] c";DRB097-target-teams-distribute-orig-no.c;main;69;43;;\00", align 1
@.gomp_critical_user_.reduction.var = common global [8 x i32] zeroinitializer
@5 = private unnamed_addr constant [55 x i8] c";DRB097-target-teams-distribute-orig-no.c;main;66;69;;\00", align 1
@6 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@7 = private unnamed_addr constant [54 x i8] c";DRB097-target-teams-distribute-orig-no.c;main;66;1;;\00", align 1
@8 = private unnamed_addr constant [54 x i8] c";DRB097-target-teams-distribute-orig-no.c;main;74;1;;\00", align 1
@9 = private unnamed_addr constant [55 x i8] c";DRB097-target-teams-distribute-orig-no.c;main;74;44;;\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"sum=%f sum2=%f\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !dbg !9 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %i2 = alloca i32, align 4
  %len = alloca i32, align 4
  %sum = alloca double, align 8
  %sum2 = alloca double, align 8
  %saved_stack = alloca i8*, align 8
  %__vla_expr0 = alloca i64, align 8
  %__vla_expr1 = alloca i64, align 8
  %len.casted = alloca i64, align 8
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %argc.addr, metadata !16, metadata !DIExpression()), !dbg !17
  store i8** %argv, i8*** %argv.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %argv.addr, metadata !18, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.declare(metadata i32* %i, metadata !20, metadata !DIExpression()), !dbg !21
  call void @llvm.dbg.declare(metadata i32* %i2, metadata !22, metadata !DIExpression()), !dbg !23
  call void @llvm.dbg.declare(metadata i32* %len, metadata !24, metadata !DIExpression()), !dbg !25
  store i32 2560, i32* %len, align 4, !dbg !25
  call void @llvm.dbg.declare(metadata double* %sum, metadata !26, metadata !DIExpression()), !dbg !27
  store double 0.000000e+00, double* %sum, align 8, !dbg !27
  call void @llvm.dbg.declare(metadata double* %sum2, metadata !28, metadata !DIExpression()), !dbg !29
  store double 0.000000e+00, double* %sum2, align 8, !dbg !29
  %2 = load i32, i32* %len, align 4, !dbg !30
  %3 = zext i32 %2 to i64, !dbg !31
  %4 = call i8* @llvm.stacksave(), !dbg !31
  store i8* %4, i8** %saved_stack, align 8, !dbg !31
  %vla = alloca double, i64 %3, align 16, !dbg !31
  store i64 %3, i64* %__vla_expr0, align 8, !dbg !31
  call void @llvm.dbg.declare(metadata i64* %__vla_expr0, metadata !32, metadata !DIExpression()), !dbg !34
  call void @llvm.dbg.declare(metadata double* %vla, metadata !35, metadata !DIExpression()), !dbg !39
  %5 = load i32, i32* %len, align 4, !dbg !40
  %6 = zext i32 %5 to i64, !dbg !31
  %vla1 = alloca double, i64 %6, align 16, !dbg !31
  store i64 %6, i64* %__vla_expr1, align 8, !dbg !31
  call void @llvm.dbg.declare(metadata i64* %__vla_expr1, metadata !41, metadata !DIExpression()), !dbg !34
  call void @llvm.dbg.declare(metadata double* %vla1, metadata !42, metadata !DIExpression()), !dbg !46
  store i32 0, i32* %i, align 4, !dbg !47
  br label %for.cond, !dbg !49

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i32, i32* %i, align 4, !dbg !50
  %8 = load i32, i32* %len, align 4, !dbg !52
  %cmp = icmp slt i32 %7, %8, !dbg !53
  br i1 %cmp, label %for.body, label %for.end, !dbg !54

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4, !dbg !55
  %conv = sitofp i32 %9 to double, !dbg !57
  %div = fdiv double %conv, 2.000000e+00, !dbg !58
  %10 = load i32, i32* %i, align 4, !dbg !59
  %idxprom = sext i32 %10 to i64, !dbg !60
  %arrayidx = getelementptr inbounds double, double* %vla, i64 %idxprom, !dbg !60
  store double %div, double* %arrayidx, align 8, !dbg !61
  %11 = load i32, i32* %i, align 4, !dbg !62
  %conv2 = sitofp i32 %11 to double, !dbg !63
  %div3 = fdiv double %conv2, 3.000000e+00, !dbg !64
  %12 = load i32, i32* %i, align 4, !dbg !65
  %idxprom4 = sext i32 %12 to i64, !dbg !66
  %arrayidx5 = getelementptr inbounds double, double* %vla1, i64 %idxprom4, !dbg !66
  store double %div3, double* %arrayidx5, align 8, !dbg !67
  br label %for.inc, !dbg !68

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %i, align 4, !dbg !69
  %inc = add nsw i32 %13, 1, !dbg !69
  store i32 %inc, i32* %i, align 4, !dbg !69
  br label %for.cond, !dbg !70, !llvm.loop !71

for.end:                                          ; preds = %for.cond
  %14 = load i32, i32* %len, align 4, !dbg !73
  %conv6 = bitcast i64* %len.casted to i32*, !dbg !73
  store i32 %14, i32* %conv6, align 4, !dbg !73
  %15 = load i64, i64* %len.casted, align 8, !dbg !73
  call void @__omp_offloading_10307_2ec417a_main_l65(double* %sum, i64 %15, i64 %3, double* %vla, i64 %6, double* %vla1) #2, !dbg !74
  %16 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !76
  store i8* getelementptr inbounds ([54 x i8], [54 x i8]* @8, i32 0, i32 0), i8** %16, align 8, !dbg !76
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 6, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, double*, i64, double*, i64, double*)* @.omp_outlined..6 to void (i32*, i32*, ...)*), i32* %len, double* %sum2, i64 %3, double* %vla, i64 %6, double* %vla1), !dbg !76
  %17 = load double, double* %sum, align 8, !dbg !77
  %18 = load double, double* %sum2, align 8, !dbg !78
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), double %17, double %18), !dbg !79
  store i32 0, i32* %retval, align 4, !dbg !80
  %19 = load i8*, i8** %saved_stack, align 8, !dbg !81
  call void @llvm.stackrestore(i8* %19), !dbg !81
  %20 = load i32, i32* %retval, align 4, !dbg !81
  ret i32 %20, !dbg !81
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @__omp_offloading_10307_2ec417a_main_l65_debug__(double* dereferenceable(8) %sum, i32 %len, i64 %vla, double* dereferenceable(8) %a, i64 %vla1, double* dereferenceable(8) %b) #3 !dbg !82 {
entry:
  %sum.addr = alloca double*, align 8
  %len.addr = alloca i32, align 4
  %vla.addr = alloca i64, align 8
  %a.addr = alloca double*, align 8
  %vla.addr2 = alloca i64, align 8
  %b.addr = alloca double*, align 8
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  %2 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4
  store i8* getelementptr inbounds ([54 x i8], [54 x i8]* @7, i32 0, i32 0), i8** %2, align 8
  %3 = call i32 @__kmpc_global_thread_num(%struct.ident_t* %.kmpc_loc.addr)
  store double* %sum, double** %sum.addr, align 8
  call void @llvm.dbg.declare(metadata double** %sum.addr, metadata !86, metadata !DIExpression()), !dbg !87
  store i32 %len, i32* %len.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %len.addr, metadata !88, metadata !DIExpression()), !dbg !89
  store i64 %vla, i64* %vla.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %vla.addr, metadata !90, metadata !DIExpression()), !dbg !91
  store double* %a, double** %a.addr, align 8
  call void @llvm.dbg.declare(metadata double** %a.addr, metadata !92, metadata !DIExpression()), !dbg !93
  store i64 %vla1, i64* %vla.addr2, align 8
  call void @llvm.dbg.declare(metadata i64* %vla.addr2, metadata !94, metadata !DIExpression()), !dbg !91
  store double* %b, double** %b.addr, align 8
  call void @llvm.dbg.declare(metadata double** %b.addr, metadata !95, metadata !DIExpression()), !dbg !96
  %4 = load double*, double** %sum.addr, align 8, !dbg !97
  %5 = load i64, i64* %vla.addr, align 8, !dbg !97
  %6 = load double*, double** %a.addr, align 8, !dbg !97
  %7 = load i64, i64* %vla.addr2, align 8, !dbg !97
  %8 = load double*, double** %b.addr, align 8, !dbg !97
  %9 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !97
  store i8* getelementptr inbounds ([54 x i8], [54 x i8]* @7, i32 0, i32 0), i8** %9, align 8, !dbg !97
  %10 = call i32 @__kmpc_push_num_teams(%struct.ident_t* %.kmpc_loc.addr, i32 %3, i32 10, i32 256), !dbg !97
  %11 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !97
  store i8* getelementptr inbounds ([54 x i8], [54 x i8]* @7, i32 0, i32 0), i8** %11, align 8, !dbg !97
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_teams(%struct.ident_t* %.kmpc_loc.addr, i32 6, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, double*, i64, double*, i64, double*)* @.omp_outlined..3 to void (i32*, i32*, ...)*), i32* %len.addr, double* %4, i64 %5, double* %6, i64 %7, double* %8), !dbg !97
  ret void, !dbg !98
}

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %len, double* dereferenceable(8) %sum, i64 %vla, double* dereferenceable(8) %a, i64 %vla1, double* dereferenceable(8) %b) #3 !dbg !99 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %sum.addr = alloca double*, align 8
  %vla.addr = alloca i64, align 8
  %a.addr = alloca double*, align 8
  %vla.addr2 = alloca i64, align 8
  %b.addr = alloca double*, align 8
  %sum3 = alloca double, align 8
  %.omp.iv = alloca i32, align 4
  %tmp = alloca i32, align 4
  %.capture_expr. = alloca i32, align 4
  %.capture_expr.4 = alloca i32, align 4
  %i2 = alloca i32, align 4
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %i27 = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %.omp.reduction.red_list = alloca [1 x i8*], align 8
  %atomic-temp = alloca double, align 8
  %tmp13 = alloca double, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !107, metadata !DIExpression()), !dbg !108
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !109, metadata !DIExpression()), !dbg !108
  store i32* %len, i32** %len.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !110, metadata !DIExpression()), !dbg !111
  store double* %sum, double** %sum.addr, align 8
  call void @llvm.dbg.declare(metadata double** %sum.addr, metadata !112, metadata !DIExpression()), !dbg !113
  store i64 %vla, i64* %vla.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %vla.addr, metadata !114, metadata !DIExpression()), !dbg !108
  store double* %a, double** %a.addr, align 8
  call void @llvm.dbg.declare(metadata double** %a.addr, metadata !115, metadata !DIExpression()), !dbg !116
  store i64 %vla1, i64* %vla.addr2, align 8
  call void @llvm.dbg.declare(metadata i64* %vla.addr2, metadata !117, metadata !DIExpression()), !dbg !108
  store double* %b, double** %b.addr, align 8
  call void @llvm.dbg.declare(metadata double** %b.addr, metadata !118, metadata !DIExpression()), !dbg !119
  %2 = load i32*, i32** %len.addr, align 8, !dbg !120
  %3 = load double*, double** %sum.addr, align 8, !dbg !120
  %4 = load i64, i64* %vla.addr, align 8, !dbg !120
  %5 = load double*, double** %a.addr, align 8, !dbg !120
  %6 = load i64, i64* %vla.addr2, align 8, !dbg !120
  %7 = load double*, double** %b.addr, align 8, !dbg !120
  call void @llvm.dbg.declare(metadata double* %sum3, metadata !121, metadata !DIExpression()), !dbg !108
  store double 0.000000e+00, double* %sum3, align 8, !dbg !122
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !123, metadata !DIExpression()), !dbg !125
  call void @llvm.dbg.declare(metadata i32* %.capture_expr., metadata !126, metadata !DIExpression()), !dbg !125
  %8 = load i32, i32* %2, align 4, !dbg !127
  store i32 %8, i32* %.capture_expr., align 4, !dbg !127
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.4, metadata !126, metadata !DIExpression()), !dbg !125
  %9 = load i32, i32* %.capture_expr., align 4, !dbg !127
  %sub = sub nsw i32 %9, 0, !dbg !128
  %sub5 = sub nsw i32 %sub, 1, !dbg !128
  %add = add nsw i32 %sub5, 256, !dbg !128
  %div = sdiv i32 %add, 256, !dbg !128
  %sub6 = sub nsw i32 %div, 1, !dbg !128
  store i32 %sub6, i32* %.capture_expr.4, align 4, !dbg !128
  call void @llvm.dbg.declare(metadata i32* %i2, metadata !129, metadata !DIExpression()), !dbg !125
  store i32 0, i32* %i2, align 4, !dbg !130
  %10 = load i32, i32* %.capture_expr., align 4, !dbg !127
  %cmp = icmp slt i32 0, %10, !dbg !128
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end, !dbg !120

omp.precond.then:                                 ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !131, metadata !DIExpression()), !dbg !125
  store i32 0, i32* %.omp.lb, align 4, !dbg !132
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !133, metadata !DIExpression()), !dbg !125
  %11 = load i32, i32* %.capture_expr.4, align 4, !dbg !128
  store i32 %11, i32* %.omp.ub, align 4, !dbg !132
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !134, metadata !DIExpression()), !dbg !125
  store i32 1, i32* %.omp.stride, align 4, !dbg !132
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !135, metadata !DIExpression()), !dbg !125
  store i32 0, i32* %.omp.is_last, align 4, !dbg !132
  call void @llvm.dbg.declare(metadata i32* %i27, metadata !129, metadata !DIExpression()), !dbg !125
  %12 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !120
  store i8* getelementptr inbounds ([54 x i8], [54 x i8]* @1, i32 0, i32 0), i8** %12, align 8, !dbg !120
  %13 = load i32*, i32** %.global_tid..addr, align 8, !dbg !120
  %14 = load i32, i32* %13, align 4, !dbg !120
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %14, i32 92, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !120
  %15 = load i32, i32* %.omp.ub, align 4, !dbg !132
  %16 = load i32, i32* %.capture_expr.4, align 4, !dbg !128
  %cmp8 = icmp sgt i32 %15, %16, !dbg !132
  br i1 %cmp8, label %cond.true, label %cond.false, !dbg !132

cond.true:                                        ; preds = %omp.precond.then
  %17 = load i32, i32* %.capture_expr.4, align 4, !dbg !128
  br label %cond.end, !dbg !132

cond.false:                                       ; preds = %omp.precond.then
  %18 = load i32, i32* %.omp.ub, align 4, !dbg !132
  br label %cond.end, !dbg !132

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %17, %cond.true ], [ %18, %cond.false ], !dbg !132
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !132
  %19 = load i32, i32* %.omp.lb, align 4, !dbg !132
  store i32 %19, i32* %.omp.iv, align 4, !dbg !132
  br label %omp.inner.for.cond, !dbg !120

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %20 = load i32, i32* %.omp.iv, align 4, !dbg !132
  %21 = load i32, i32* %.omp.ub, align 4, !dbg !132
  %cmp9 = icmp sle i32 %20, %21, !dbg !128
  br i1 %cmp9, label %omp.inner.for.body, label %omp.inner.for.end, !dbg !120

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %22 = load i32, i32* %.omp.iv, align 4, !dbg !132
  %mul = mul nsw i32 %22, 256, !dbg !130
  %add10 = add nsw i32 0, %mul, !dbg !130
  store i32 %add10, i32* %i27, align 4, !dbg !130
  %23 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !136
  store i8* getelementptr inbounds ([54 x i8], [54 x i8]* @3, i32 0, i32 0), i8** %23, align 8, !dbg !136
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 7, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*, double*, i64, double*, i64, double*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %i27, i32* %2, double* %sum3, i64 %4, double* %5, i64 %6, double* %7), !dbg !136
  br label %omp.body.continue, !dbg !137

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !139

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %24 = load i32, i32* %.omp.iv, align 4, !dbg !132
  %add11 = add nsw i32 %24, 1, !dbg !128
  store i32 %add11, i32* %.omp.iv, align 4, !dbg !128
  br label %omp.inner.for.cond, !dbg !139, !llvm.loop !140

omp.inner.for.end:                                ; preds = %omp.inner.for.cond
  br label %omp.loop.exit, !dbg !139

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %25 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !139
  store i8* getelementptr inbounds ([54 x i8], [54 x i8]* @1, i32 0, i32 0), i8** %25, align 8, !dbg !139
  %26 = load i32*, i32** %.global_tid..addr, align 8, !dbg !139
  %27 = load i32, i32* %26, align 4, !dbg !139
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %27), !dbg !139
  br label %omp.precond.end, !dbg !139

omp.precond.end:                                  ; preds = %omp.loop.exit, %entry
  %28 = getelementptr inbounds [1 x i8*], [1 x i8*]* %.omp.reduction.red_list, i64 0, i64 0, !dbg !141
  %29 = bitcast double* %sum3 to i8*, !dbg !141
  store i8* %29, i8** %28, align 8, !dbg !141
  %30 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !141
  store i8* getelementptr inbounds ([55 x i8], [55 x i8]* @5, i32 0, i32 0), i8** %30, align 8, !dbg !141
  %31 = load i32*, i32** %.global_tid..addr, align 8, !dbg !141
  %32 = load i32, i32* %31, align 4, !dbg !141
  %33 = bitcast [1 x i8*]* %.omp.reduction.red_list to i8*, !dbg !141
  %34 = call i32 @__kmpc_reduce(%struct.ident_t* %.kmpc_loc.addr, i32 %32, i32 1, i64 8, i8* %33, void (i8*, i8*)* @.omp.reduction.reduction_func.2, [8 x i32]* @.gomp_critical_user_.reduction.var), !dbg !141
  switch i32 %34, label %.omp.reduction.default [
    i32 1, label %.omp.reduction.case1
    i32 2, label %.omp.reduction.case2
  ], !dbg !141

.omp.reduction.case1:                             ; preds = %omp.precond.end
  %35 = load double, double* %3, align 8, !dbg !122
  %36 = load double, double* %sum3, align 8, !dbg !122
  %add12 = fadd double %35, %36, !dbg !142
  store double %add12, double* %3, align 8, !dbg !142
  call void @__kmpc_end_reduce(%struct.ident_t* %.kmpc_loc.addr, i32 %32, [8 x i32]* @.gomp_critical_user_.reduction.var), !dbg !141
  br label %.omp.reduction.default, !dbg !141

.omp.reduction.case2:                             ; preds = %omp.precond.end
  %37 = load double, double* %sum3, align 8, !dbg !122
  %38 = bitcast double* %3 to i64*, !dbg !141
  %atomic-load = load atomic i64, i64* %38 monotonic, align 8, !dbg !141
  br label %atomic_cont, !dbg !141

atomic_cont:                                      ; preds = %atomic_cont, %.omp.reduction.case2
  %39 = phi i64 [ %atomic-load, %.omp.reduction.case2 ], [ %47, %atomic_cont ], !dbg !141
  %40 = bitcast double* %atomic-temp to i64*, !dbg !141
  %41 = bitcast i64 %39 to double, !dbg !141
  store double %41, double* %tmp13, align 8, !dbg !141
  %42 = load double, double* %tmp13, align 8, !dbg !122
  %43 = load double, double* %sum3, align 8, !dbg !122
  %add14 = fadd double %42, %43, !dbg !142
  store double %add14, double* %atomic-temp, align 8, !dbg !141
  %44 = load i64, i64* %40, align 8, !dbg !141
  %45 = bitcast double* %3 to i64*, !dbg !141
  %46 = cmpxchg i64* %45, i64 %39, i64 %44 monotonic monotonic, !dbg !141
  %47 = extractvalue { i64, i1 } %46, 0, !dbg !141
  %48 = extractvalue { i64, i1 } %46, 1, !dbg !141
  br i1 %48, label %atomic_exit, label %atomic_cont, !dbg !141

atomic_exit:                                      ; preds = %atomic_cont
  call void @__kmpc_end_reduce(%struct.ident_t* %.kmpc_loc.addr, i32 %32, [8 x i32]* @.gomp_critical_user_.reduction.var), !dbg !141
  br label %.omp.reduction.default, !dbg !141

.omp.reduction.default:                           ; preds = %atomic_exit, %.omp.reduction.case1, %omp.precond.end
  ret void, !dbg !143
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined._debug__.1(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %i2, i32* dereferenceable(4) %len, double* dereferenceable(8) %sum, i64 %vla, double* dereferenceable(8) %a, i64 %vla1, double* dereferenceable(8) %b) #3 !dbg !144 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %i2.addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %sum.addr = alloca double*, align 8
  %vla.addr = alloca i64, align 8
  %a.addr = alloca double*, align 8
  %vla.addr2 = alloca i64, align 8
  %b.addr = alloca double*, align 8
  %.omp.iv = alloca i32, align 4
  %tmp = alloca i32, align 4
  %.capture_expr. = alloca i32, align 4
  %.capture_expr.3 = alloca i32, align 4
  %.capture_expr.5 = alloca i32, align 4
  %i = alloca i32, align 4
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %sum10 = alloca double, align 8
  %i11 = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %.omp.reduction.red_list = alloca [1 x i8*], align 8
  %atomic-temp = alloca double, align 8
  %tmp25 = alloca double, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !147, metadata !DIExpression()), !dbg !148
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !149, metadata !DIExpression()), !dbg !148
  store i32* %i2, i32** %i2.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %i2.addr, metadata !150, metadata !DIExpression()), !dbg !151
  store i32* %len, i32** %len.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !152, metadata !DIExpression()), !dbg !153
  store double* %sum, double** %sum.addr, align 8
  call void @llvm.dbg.declare(metadata double** %sum.addr, metadata !154, metadata !DIExpression()), !dbg !155
  store i64 %vla, i64* %vla.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %vla.addr, metadata !156, metadata !DIExpression()), !dbg !148
  store double* %a, double** %a.addr, align 8
  call void @llvm.dbg.declare(metadata double** %a.addr, metadata !157, metadata !DIExpression()), !dbg !158
  store i64 %vla1, i64* %vla.addr2, align 8
  call void @llvm.dbg.declare(metadata i64* %vla.addr2, metadata !159, metadata !DIExpression()), !dbg !148
  store double* %b, double** %b.addr, align 8
  call void @llvm.dbg.declare(metadata double** %b.addr, metadata !160, metadata !DIExpression()), !dbg !161
  %2 = load i32*, i32** %i2.addr, align 8, !dbg !162
  %3 = load i32*, i32** %len.addr, align 8, !dbg !162
  %4 = load double*, double** %sum.addr, align 8, !dbg !162
  %5 = load i64, i64* %vla.addr, align 8, !dbg !162
  %6 = load double*, double** %a.addr, align 8, !dbg !162
  %7 = load i64, i64* %vla.addr2, align 8, !dbg !162
  %8 = load double*, double** %b.addr, align 8, !dbg !162
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !163, metadata !DIExpression()), !dbg !148
  call void @llvm.dbg.declare(metadata i32* %.capture_expr., metadata !164, metadata !DIExpression()), !dbg !148
  %9 = load i32, i32* %2, align 4, !dbg !165
  store i32 %9, i32* %.capture_expr., align 4, !dbg !165
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.3, metadata !164, metadata !DIExpression()), !dbg !148
  %10 = load i32, i32* %2, align 4, !dbg !166
  %add = add nsw i32 %10, 256, !dbg !166
  %11 = load i32, i32* %3, align 4, !dbg !166
  %cmp = icmp slt i32 %add, %11, !dbg !166
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !166

cond.true:                                        ; preds = %entry
  %12 = load i32, i32* %2, align 4, !dbg !166
  %add4 = add nsw i32 %12, 256, !dbg !166
  br label %cond.end, !dbg !166

cond.false:                                       ; preds = %entry
  %13 = load i32, i32* %3, align 4, !dbg !166
  br label %cond.end, !dbg !166

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add4, %cond.true ], [ %13, %cond.false ], !dbg !166
  store i32 %cond, i32* %.capture_expr.3, align 4, !dbg !166
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.5, metadata !164, metadata !DIExpression()), !dbg !148
  %14 = load i32, i32* %.capture_expr.3, align 4, !dbg !166
  %15 = load i32, i32* %.capture_expr., align 4, !dbg !165
  %sub = sub nsw i32 %14, %15, !dbg !162
  %sub6 = sub nsw i32 %sub, 1, !dbg !162
  %add7 = add nsw i32 %sub6, 1, !dbg !162
  %div = sdiv i32 %add7, 1, !dbg !162
  %sub8 = sub nsw i32 %div, 1, !dbg !162
  store i32 %sub8, i32* %.capture_expr.5, align 4, !dbg !162
  call void @llvm.dbg.declare(metadata i32* %i, metadata !167, metadata !DIExpression()), !dbg !148
  %16 = load i32, i32* %.capture_expr., align 4, !dbg !165
  store i32 %16, i32* %i, align 4, !dbg !168
  %17 = load i32, i32* %.capture_expr., align 4, !dbg !165
  %18 = load i32, i32* %.capture_expr.3, align 4, !dbg !166
  %cmp9 = icmp slt i32 %17, %18, !dbg !162
  br i1 %cmp9, label %omp.precond.then, label %omp.precond.end, !dbg !162

omp.precond.then:                                 ; preds = %cond.end
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !169, metadata !DIExpression()), !dbg !148
  store i32 0, i32* %.omp.lb, align 4, !dbg !170
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !171, metadata !DIExpression()), !dbg !148
  %19 = load i32, i32* %.capture_expr.5, align 4, !dbg !162
  store i32 %19, i32* %.omp.ub, align 4, !dbg !170
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !172, metadata !DIExpression()), !dbg !148
  store i32 1, i32* %.omp.stride, align 4, !dbg !170
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !173, metadata !DIExpression()), !dbg !148
  store i32 0, i32* %.omp.is_last, align 4, !dbg !170
  call void @llvm.dbg.declare(metadata double* %sum10, metadata !174, metadata !DIExpression()), !dbg !148
  store double 0.000000e+00, double* %sum10, align 8, !dbg !175
  call void @llvm.dbg.declare(metadata i32* %i11, metadata !167, metadata !DIExpression()), !dbg !148
  %20 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !162
  store i8* getelementptr inbounds ([54 x i8], [54 x i8]* @3, i32 0, i32 0), i8** %20, align 8, !dbg !162
  %21 = load i32*, i32** %.global_tid..addr, align 8, !dbg !162
  %22 = load i32, i32* %21, align 4, !dbg !162
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %22, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !162
  %23 = load i32, i32* %.omp.ub, align 4, !dbg !170
  %24 = load i32, i32* %.capture_expr.5, align 4, !dbg !162
  %cmp12 = icmp sgt i32 %23, %24, !dbg !170
  br i1 %cmp12, label %cond.true13, label %cond.false14, !dbg !170

cond.true13:                                      ; preds = %omp.precond.then
  %25 = load i32, i32* %.capture_expr.5, align 4, !dbg !162
  br label %cond.end15, !dbg !170

cond.false14:                                     ; preds = %omp.precond.then
  %26 = load i32, i32* %.omp.ub, align 4, !dbg !170
  br label %cond.end15, !dbg !170

cond.end15:                                       ; preds = %cond.false14, %cond.true13
  %cond16 = phi i32 [ %25, %cond.true13 ], [ %26, %cond.false14 ], !dbg !170
  store i32 %cond16, i32* %.omp.ub, align 4, !dbg !170
  %27 = load i32, i32* %.omp.lb, align 4, !dbg !170
  store i32 %27, i32* %.omp.iv, align 4, !dbg !170
  br label %omp.inner.for.cond, !dbg !162

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end15
  %28 = load i32, i32* %.omp.iv, align 4, !dbg !170
  %29 = load i32, i32* %.omp.ub, align 4, !dbg !170
  %cmp17 = icmp sle i32 %28, %29, !dbg !162
  br i1 %cmp17, label %omp.inner.for.body, label %omp.inner.for.end, !dbg !162

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %30 = load i32, i32* %.capture_expr., align 4, !dbg !165
  %31 = load i32, i32* %.omp.iv, align 4, !dbg !170
  %mul = mul nsw i32 %31, 1, !dbg !168
  %add18 = add nsw i32 %30, %mul, !dbg !168
  store i32 %add18, i32* %i11, align 4, !dbg !168
  %32 = load i32, i32* %i11, align 4, !dbg !176
  %idxprom = sext i32 %32 to i64, !dbg !177
  %arrayidx = getelementptr inbounds double, double* %6, i64 %idxprom, !dbg !177
  %33 = load double, double* %arrayidx, align 8, !dbg !177
  %34 = load i32, i32* %i11, align 4, !dbg !178
  %idxprom19 = sext i32 %34 to i64, !dbg !179
  %arrayidx20 = getelementptr inbounds double, double* %8, i64 %idxprom19, !dbg !179
  %35 = load double, double* %arrayidx20, align 8, !dbg !179
  %mul21 = fmul double %33, %35, !dbg !180
  %36 = load double, double* %sum10, align 8, !dbg !181
  %add22 = fadd double %36, %mul21, !dbg !181
  store double %add22, double* %sum10, align 8, !dbg !181
  br label %omp.body.continue, !dbg !182

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !183

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %37 = load i32, i32* %.omp.iv, align 4, !dbg !170
  %add23 = add nsw i32 %37, 1, !dbg !162
  store i32 %add23, i32* %.omp.iv, align 4, !dbg !162
  br label %omp.inner.for.cond, !dbg !183, !llvm.loop !184

omp.inner.for.end:                                ; preds = %omp.inner.for.cond
  br label %omp.loop.exit, !dbg !183

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %38 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !183
  store i8* getelementptr inbounds ([55 x i8], [55 x i8]* @4, i32 0, i32 0), i8** %38, align 8, !dbg !183
  %39 = load i32*, i32** %.global_tid..addr, align 8, !dbg !183
  %40 = load i32, i32* %39, align 4, !dbg !183
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %40), !dbg !183
  %41 = getelementptr inbounds [1 x i8*], [1 x i8*]* %.omp.reduction.red_list, i64 0, i64 0, !dbg !183
  %42 = bitcast double* %sum10 to i8*, !dbg !183
  store i8* %42, i8** %41, align 8, !dbg !183
  %43 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !183
  store i8* getelementptr inbounds ([55 x i8], [55 x i8]* @4, i32 0, i32 0), i8** %43, align 8, !dbg !183
  %44 = load i32*, i32** %.global_tid..addr, align 8, !dbg !183
  %45 = load i32, i32* %44, align 4, !dbg !183
  %46 = bitcast [1 x i8*]* %.omp.reduction.red_list to i8*, !dbg !183
  %47 = call i32 @__kmpc_reduce_nowait(%struct.ident_t* %.kmpc_loc.addr, i32 %45, i32 1, i64 8, i8* %46, void (i8*, i8*)* @.omp.reduction.reduction_func, [8 x i32]* @.gomp_critical_user_.reduction.var), !dbg !183
  switch i32 %47, label %.omp.reduction.default [
    i32 1, label %.omp.reduction.case1
    i32 2, label %.omp.reduction.case2
  ], !dbg !183

.omp.reduction.case1:                             ; preds = %omp.loop.exit
  %48 = load double, double* %4, align 8, !dbg !175
  %49 = load double, double* %sum10, align 8, !dbg !175
  %add24 = fadd double %48, %49, !dbg !186
  store double %add24, double* %4, align 8, !dbg !186
  call void @__kmpc_end_reduce_nowait(%struct.ident_t* %.kmpc_loc.addr, i32 %45, [8 x i32]* @.gomp_critical_user_.reduction.var), !dbg !183
  br label %.omp.reduction.default, !dbg !183

.omp.reduction.case2:                             ; preds = %omp.loop.exit
  %50 = load double, double* %sum10, align 8, !dbg !175
  %51 = bitcast double* %4 to i64*, !dbg !183
  %atomic-load = load atomic i64, i64* %51 monotonic, align 8, !dbg !183
  br label %atomic_cont, !dbg !183

atomic_cont:                                      ; preds = %atomic_cont, %.omp.reduction.case2
  %52 = phi i64 [ %atomic-load, %.omp.reduction.case2 ], [ %60, %atomic_cont ], !dbg !183
  %53 = bitcast double* %atomic-temp to i64*, !dbg !183
  %54 = bitcast i64 %52 to double, !dbg !183
  store double %54, double* %tmp25, align 8, !dbg !183
  %55 = load double, double* %tmp25, align 8, !dbg !175
  %56 = load double, double* %sum10, align 8, !dbg !175
  %add26 = fadd double %55, %56, !dbg !186
  store double %add26, double* %atomic-temp, align 8, !dbg !183
  %57 = load i64, i64* %53, align 8, !dbg !183
  %58 = bitcast double* %4 to i64*, !dbg !183
  %59 = cmpxchg i64* %58, i64 %52, i64 %57 monotonic monotonic, !dbg !183
  %60 = extractvalue { i64, i1 } %59, 0, !dbg !183
  %61 = extractvalue { i64, i1 } %59, 1, !dbg !183
  br i1 %61, label %atomic_exit, label %atomic_cont, !dbg !183

atomic_exit:                                      ; preds = %atomic_cont
  br label %.omp.reduction.default, !dbg !183

.omp.reduction.default:                           ; preds = %atomic_exit, %.omp.reduction.case1, %omp.loop.exit
  br label %omp.precond.end, !dbg !183

omp.precond.end:                                  ; preds = %.omp.reduction.default, %cond.end
  ret void, !dbg !187
}

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: noinline norecurse nounwind uwtable
define internal void @.omp.reduction.reduction_func(i8* %0, i8* %1) #5 !dbg !188 {
entry:
  %.addr = alloca i8*, align 8
  %.addr1 = alloca i8*, align 8
  store i8* %0, i8** %.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %.addr, metadata !190, metadata !DIExpression()), !dbg !192
  store i8* %1, i8** %.addr1, align 8
  call void @llvm.dbg.declare(metadata i8** %.addr1, metadata !193, metadata !DIExpression()), !dbg !192
  %2 = load i8*, i8** %.addr, align 8, !dbg !194
  %3 = bitcast i8* %2 to [1 x i8*]*, !dbg !194
  %4 = load i8*, i8** %.addr1, align 8, !dbg !194
  %5 = bitcast i8* %4 to [1 x i8*]*, !dbg !194
  %6 = getelementptr inbounds [1 x i8*], [1 x i8*]* %5, i64 0, i64 0, !dbg !194
  %7 = load i8*, i8** %6, align 8, !dbg !194
  %8 = bitcast i8* %7 to double*, !dbg !194
  %9 = getelementptr inbounds [1 x i8*], [1 x i8*]* %3, i64 0, i64 0, !dbg !194
  %10 = load i8*, i8** %9, align 8, !dbg !194
  %11 = bitcast i8* %10 to double*, !dbg !194
  %12 = load double, double* %11, align 8, !dbg !195
  %13 = load double, double* %8, align 8, !dbg !195
  %add = fadd double %12, %13, !dbg !196
  store double %add, double* %11, align 8, !dbg !196
  ret void, !dbg !195
}

declare dso_local i32 @__kmpc_reduce_nowait(%struct.ident_t*, i32, i32, i64, i8*, void (i8*, i8*)*, [8 x i32]*)

declare dso_local void @__kmpc_end_reduce_nowait(%struct.ident_t*, i32, [8 x i32]*)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %i2, i32* dereferenceable(4) %len, double* dereferenceable(8) %sum, i64 %vla, double* dereferenceable(8) %a, i64 %vla1, double* dereferenceable(8) %b) #3 !dbg !197 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %i2.addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %sum.addr = alloca double*, align 8
  %vla.addr = alloca i64, align 8
  %a.addr = alloca double*, align 8
  %vla.addr2 = alloca i64, align 8
  %b.addr = alloca double*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !198, metadata !DIExpression()), !dbg !199
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !200, metadata !DIExpression()), !dbg !199
  store i32* %i2, i32** %i2.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %i2.addr, metadata !201, metadata !DIExpression()), !dbg !199
  store i32* %len, i32** %len.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !202, metadata !DIExpression()), !dbg !199
  store double* %sum, double** %sum.addr, align 8
  call void @llvm.dbg.declare(metadata double** %sum.addr, metadata !203, metadata !DIExpression()), !dbg !199
  store i64 %vla, i64* %vla.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %vla.addr, metadata !204, metadata !DIExpression()), !dbg !199
  store double* %a, double** %a.addr, align 8
  call void @llvm.dbg.declare(metadata double** %a.addr, metadata !205, metadata !DIExpression()), !dbg !199
  store i64 %vla1, i64* %vla.addr2, align 8
  call void @llvm.dbg.declare(metadata i64* %vla.addr2, metadata !206, metadata !DIExpression()), !dbg !199
  store double* %b, double** %b.addr, align 8
  call void @llvm.dbg.declare(metadata double** %b.addr, metadata !207, metadata !DIExpression()), !dbg !199
  %0 = load i32*, i32** %i2.addr, align 8, !dbg !208
  %1 = load i32*, i32** %len.addr, align 8, !dbg !208
  %2 = load double*, double** %sum.addr, align 8, !dbg !208
  %3 = load i64, i64* %vla.addr, align 8, !dbg !208
  %4 = load double*, double** %a.addr, align 8, !dbg !208
  %5 = load i64, i64* %vla.addr2, align 8, !dbg !208
  %6 = load double*, double** %b.addr, align 8, !dbg !208
  %7 = load i32*, i32** %.global_tid..addr, align 8, !dbg !208
  %8 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !208
  %9 = load i32*, i32** %i2.addr, align 8, !dbg !208
  %10 = load i32*, i32** %len.addr, align 8, !dbg !208
  %11 = load double*, double** %sum.addr, align 8, !dbg !208
  %12 = load double*, double** %a.addr, align 8, !dbg !208
  %13 = load double*, double** %b.addr, align 8, !dbg !208
  call void @.omp_outlined._debug__.1(i32* %7, i32* %8, i32* %9, i32* %10, double* %11, i64 %3, double* %12, i64 %5, double* %13) #2, !dbg !208
  ret void, !dbg !208
}

declare !callback !209 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

; Function Attrs: noinline norecurse nounwind uwtable
define internal void @.omp.reduction.reduction_func.2(i8* %0, i8* %1) #5 !dbg !211 {
entry:
  %.addr = alloca i8*, align 8
  %.addr1 = alloca i8*, align 8
  store i8* %0, i8** %.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %.addr, metadata !212, metadata !DIExpression()), !dbg !213
  store i8* %1, i8** %.addr1, align 8
  call void @llvm.dbg.declare(metadata i8** %.addr1, metadata !214, metadata !DIExpression()), !dbg !213
  %2 = load i8*, i8** %.addr, align 8, !dbg !215
  %3 = bitcast i8* %2 to [1 x i8*]*, !dbg !215
  %4 = load i8*, i8** %.addr1, align 8, !dbg !215
  %5 = bitcast i8* %4 to [1 x i8*]*, !dbg !215
  %6 = getelementptr inbounds [1 x i8*], [1 x i8*]* %5, i64 0, i64 0, !dbg !215
  %7 = load i8*, i8** %6, align 8, !dbg !215
  %8 = bitcast i8* %7 to double*, !dbg !215
  %9 = getelementptr inbounds [1 x i8*], [1 x i8*]* %3, i64 0, i64 0, !dbg !215
  %10 = load i8*, i8** %9, align 8, !dbg !215
  %11 = bitcast i8* %10 to double*, !dbg !215
  %12 = load double, double* %11, align 8, !dbg !216
  %13 = load double, double* %8, align 8, !dbg !216
  %add = fadd double %12, %13, !dbg !217
  store double %add, double* %11, align 8, !dbg !217
  ret void, !dbg !216
}

declare dso_local i32 @__kmpc_reduce(%struct.ident_t*, i32, i32, i64, i8*, void (i8*, i8*)*, [8 x i32]*)

declare dso_local void @__kmpc_end_reduce(%struct.ident_t*, i32, [8 x i32]*)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined..3(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %len, double* dereferenceable(8) %sum, i64 %vla, double* dereferenceable(8) %a, i64 %vla1, double* dereferenceable(8) %b) #3 !dbg !218 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %sum.addr = alloca double*, align 8
  %vla.addr = alloca i64, align 8
  %a.addr = alloca double*, align 8
  %vla.addr2 = alloca i64, align 8
  %b.addr = alloca double*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !219, metadata !DIExpression()), !dbg !220
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !221, metadata !DIExpression()), !dbg !220
  store i32* %len, i32** %len.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !222, metadata !DIExpression()), !dbg !220
  store double* %sum, double** %sum.addr, align 8
  call void @llvm.dbg.declare(metadata double** %sum.addr, metadata !223, metadata !DIExpression()), !dbg !220
  store i64 %vla, i64* %vla.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %vla.addr, metadata !224, metadata !DIExpression()), !dbg !220
  store double* %a, double** %a.addr, align 8
  call void @llvm.dbg.declare(metadata double** %a.addr, metadata !225, metadata !DIExpression()), !dbg !220
  store i64 %vla1, i64* %vla.addr2, align 8
  call void @llvm.dbg.declare(metadata i64* %vla.addr2, metadata !226, metadata !DIExpression()), !dbg !220
  store double* %b, double** %b.addr, align 8
  call void @llvm.dbg.declare(metadata double** %b.addr, metadata !227, metadata !DIExpression()), !dbg !220
  %0 = load i32*, i32** %len.addr, align 8, !dbg !228
  %1 = load double*, double** %sum.addr, align 8, !dbg !228
  %2 = load i64, i64* %vla.addr, align 8, !dbg !228
  %3 = load double*, double** %a.addr, align 8, !dbg !228
  %4 = load i64, i64* %vla.addr2, align 8, !dbg !228
  %5 = load double*, double** %b.addr, align 8, !dbg !228
  %6 = load i32*, i32** %.global_tid..addr, align 8, !dbg !228
  %7 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !228
  %8 = load i32*, i32** %len.addr, align 8, !dbg !228
  %9 = load double*, double** %sum.addr, align 8, !dbg !228
  %10 = load double*, double** %a.addr, align 8, !dbg !228
  %11 = load double*, double** %b.addr, align 8, !dbg !228
  call void @.omp_outlined._debug__(i32* %6, i32* %7, i32* %8, double* %9, i64 %2, double* %10, i64 %4, double* %11) #2, !dbg !228
  ret void, !dbg !228
}

declare dso_local i32 @__kmpc_global_thread_num(%struct.ident_t*)

declare dso_local i32 @__kmpc_push_num_teams(%struct.ident_t*, i32, i32, i32)

declare !callback !209 dso_local void @__kmpc_fork_teams(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @__omp_offloading_10307_2ec417a_main_l65(double* dereferenceable(8) %sum, i64 %len, i64 %vla, double* dereferenceable(8) %a, i64 %vla1, double* dereferenceable(8) %b) #3 !dbg !229 {
entry:
  %sum.addr = alloca double*, align 8
  %len.addr = alloca i64, align 8
  %vla.addr = alloca i64, align 8
  %a.addr = alloca double*, align 8
  %vla.addr2 = alloca i64, align 8
  %b.addr = alloca double*, align 8
  store double* %sum, double** %sum.addr, align 8
  call void @llvm.dbg.declare(metadata double** %sum.addr, metadata !232, metadata !DIExpression()), !dbg !233
  store i64 %len, i64* %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !234, metadata !DIExpression()), !dbg !233
  store i64 %vla, i64* %vla.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %vla.addr, metadata !235, metadata !DIExpression()), !dbg !233
  store double* %a, double** %a.addr, align 8
  call void @llvm.dbg.declare(metadata double** %a.addr, metadata !236, metadata !DIExpression()), !dbg !233
  store i64 %vla1, i64* %vla.addr2, align 8
  call void @llvm.dbg.declare(metadata i64* %vla.addr2, metadata !237, metadata !DIExpression()), !dbg !233
  store double* %b, double** %b.addr, align 8
  call void @llvm.dbg.declare(metadata double** %b.addr, metadata !238, metadata !DIExpression()), !dbg !233
  %0 = load double*, double** %sum.addr, align 8, !dbg !239
  %conv = bitcast i64* %len.addr to i32*, !dbg !239
  %1 = load i64, i64* %vla.addr, align 8, !dbg !239
  %2 = load double*, double** %a.addr, align 8, !dbg !239
  %3 = load i64, i64* %vla.addr2, align 8, !dbg !239
  %4 = load double*, double** %b.addr, align 8, !dbg !239
  %5 = load double*, double** %sum.addr, align 8, !dbg !239
  %6 = load i32, i32* %conv, align 8, !dbg !239
  %7 = load double*, double** %a.addr, align 8, !dbg !239
  %8 = load double*, double** %b.addr, align 8, !dbg !239
  call void @__omp_offloading_10307_2ec417a_main_l65_debug__(double* %5, i32 %6, i64 %1, double* %7, i64 %3, double* %8) #2, !dbg !239
  ret void, !dbg !239
}

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined._debug__.4(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %len, double* dereferenceable(8) %sum2, i64 %vla, double* dereferenceable(8) %a, i64 %vla1, double* dereferenceable(8) %b) #3 !dbg !240 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %sum2.addr = alloca double*, align 8
  %vla.addr = alloca i64, align 8
  %a.addr = alloca double*, align 8
  %vla.addr2 = alloca i64, align 8
  %b.addr = alloca double*, align 8
  %.omp.iv = alloca i32, align 4
  %tmp = alloca i32, align 4
  %.capture_expr. = alloca i32, align 4
  %.capture_expr.3 = alloca i32, align 4
  %i = alloca i32, align 4
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %sum26 = alloca double, align 8
  %i7 = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %.omp.reduction.red_list = alloca [1 x i8*], align 8
  %atomic-temp = alloca double, align 8
  %tmp17 = alloca double, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !241, metadata !DIExpression()), !dbg !242
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !243, metadata !DIExpression()), !dbg !242
  store i32* %len, i32** %len.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !244, metadata !DIExpression()), !dbg !245
  store double* %sum2, double** %sum2.addr, align 8
  call void @llvm.dbg.declare(metadata double** %sum2.addr, metadata !246, metadata !DIExpression()), !dbg !247
  store i64 %vla, i64* %vla.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %vla.addr, metadata !248, metadata !DIExpression()), !dbg !242
  store double* %a, double** %a.addr, align 8
  call void @llvm.dbg.declare(metadata double** %a.addr, metadata !249, metadata !DIExpression()), !dbg !250
  store i64 %vla1, i64* %vla.addr2, align 8
  call void @llvm.dbg.declare(metadata i64* %vla.addr2, metadata !251, metadata !DIExpression()), !dbg !242
  store double* %b, double** %b.addr, align 8
  call void @llvm.dbg.declare(metadata double** %b.addr, metadata !252, metadata !DIExpression()), !dbg !253
  %2 = load i32*, i32** %len.addr, align 8, !dbg !254
  %3 = load double*, double** %sum2.addr, align 8, !dbg !254
  %4 = load i64, i64* %vla.addr, align 8, !dbg !254
  %5 = load double*, double** %a.addr, align 8, !dbg !254
  %6 = load i64, i64* %vla.addr2, align 8, !dbg !254
  %7 = load double*, double** %b.addr, align 8, !dbg !254
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !255, metadata !DIExpression()), !dbg !242
  call void @llvm.dbg.declare(metadata i32* %.capture_expr., metadata !256, metadata !DIExpression()), !dbg !242
  %8 = load i32, i32* %2, align 4, !dbg !257
  store i32 %8, i32* %.capture_expr., align 4, !dbg !257
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.3, metadata !256, metadata !DIExpression()), !dbg !242
  %9 = load i32, i32* %.capture_expr., align 4, !dbg !257
  %sub = sub nsw i32 %9, 0, !dbg !254
  %sub4 = sub nsw i32 %sub, 1, !dbg !254
  %add = add nsw i32 %sub4, 1, !dbg !254
  %div = sdiv i32 %add, 1, !dbg !254
  %sub5 = sub nsw i32 %div, 1, !dbg !254
  store i32 %sub5, i32* %.capture_expr.3, align 4, !dbg !254
  call void @llvm.dbg.declare(metadata i32* %i, metadata !258, metadata !DIExpression()), !dbg !242
  store i32 0, i32* %i, align 4, !dbg !259
  %10 = load i32, i32* %.capture_expr., align 4, !dbg !257
  %cmp = icmp slt i32 0, %10, !dbg !254
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end, !dbg !254

omp.precond.then:                                 ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !260, metadata !DIExpression()), !dbg !242
  store i32 0, i32* %.omp.lb, align 4, !dbg !261
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !262, metadata !DIExpression()), !dbg !242
  %11 = load i32, i32* %.capture_expr.3, align 4, !dbg !254
  store i32 %11, i32* %.omp.ub, align 4, !dbg !261
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !263, metadata !DIExpression()), !dbg !242
  store i32 1, i32* %.omp.stride, align 4, !dbg !261
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !264, metadata !DIExpression()), !dbg !242
  store i32 0, i32* %.omp.is_last, align 4, !dbg !261
  call void @llvm.dbg.declare(metadata double* %sum26, metadata !265, metadata !DIExpression()), !dbg !242
  store double 0.000000e+00, double* %sum26, align 8, !dbg !266
  call void @llvm.dbg.declare(metadata i32* %i7, metadata !258, metadata !DIExpression()), !dbg !242
  %12 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !254
  store i8* getelementptr inbounds ([54 x i8], [54 x i8]* @8, i32 0, i32 0), i8** %12, align 8, !dbg !254
  %13 = load i32*, i32** %.global_tid..addr, align 8, !dbg !254
  %14 = load i32, i32* %13, align 4, !dbg !254
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %14, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !254
  %15 = load i32, i32* %.omp.ub, align 4, !dbg !261
  %16 = load i32, i32* %.capture_expr.3, align 4, !dbg !254
  %cmp8 = icmp sgt i32 %15, %16, !dbg !261
  br i1 %cmp8, label %cond.true, label %cond.false, !dbg !261

cond.true:                                        ; preds = %omp.precond.then
  %17 = load i32, i32* %.capture_expr.3, align 4, !dbg !254
  br label %cond.end, !dbg !261

cond.false:                                       ; preds = %omp.precond.then
  %18 = load i32, i32* %.omp.ub, align 4, !dbg !261
  br label %cond.end, !dbg !261

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %17, %cond.true ], [ %18, %cond.false ], !dbg !261
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !261
  %19 = load i32, i32* %.omp.lb, align 4, !dbg !261
  store i32 %19, i32* %.omp.iv, align 4, !dbg !261
  br label %omp.inner.for.cond, !dbg !254

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %20 = load i32, i32* %.omp.iv, align 4, !dbg !261
  %21 = load i32, i32* %.omp.ub, align 4, !dbg !261
  %cmp9 = icmp sle i32 %20, %21, !dbg !254
  br i1 %cmp9, label %omp.inner.for.body, label %omp.inner.for.end, !dbg !254

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %22 = load i32, i32* %.omp.iv, align 4, !dbg !261
  %mul = mul nsw i32 %22, 1, !dbg !259
  %add10 = add nsw i32 0, %mul, !dbg !259
  store i32 %add10, i32* %i7, align 4, !dbg !259
  %23 = load i32, i32* %i7, align 4, !dbg !267
  %idxprom = sext i32 %23 to i64, !dbg !268
  %arrayidx = getelementptr inbounds double, double* %5, i64 %idxprom, !dbg !268
  %24 = load double, double* %arrayidx, align 8, !dbg !268
  %25 = load i32, i32* %i7, align 4, !dbg !269
  %idxprom11 = sext i32 %25 to i64, !dbg !270
  %arrayidx12 = getelementptr inbounds double, double* %7, i64 %idxprom11, !dbg !270
  %26 = load double, double* %arrayidx12, align 8, !dbg !270
  %mul13 = fmul double %24, %26, !dbg !271
  %27 = load double, double* %sum26, align 8, !dbg !272
  %add14 = fadd double %27, %mul13, !dbg !272
  store double %add14, double* %sum26, align 8, !dbg !272
  br label %omp.body.continue, !dbg !273

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !274

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %28 = load i32, i32* %.omp.iv, align 4, !dbg !261
  %add15 = add nsw i32 %28, 1, !dbg !254
  store i32 %add15, i32* %.omp.iv, align 4, !dbg !254
  br label %omp.inner.for.cond, !dbg !274, !llvm.loop !275

omp.inner.for.end:                                ; preds = %omp.inner.for.cond
  br label %omp.loop.exit, !dbg !274

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %29 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !274
  store i8* getelementptr inbounds ([55 x i8], [55 x i8]* @9, i32 0, i32 0), i8** %29, align 8, !dbg !274
  %30 = load i32*, i32** %.global_tid..addr, align 8, !dbg !274
  %31 = load i32, i32* %30, align 4, !dbg !274
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %31), !dbg !274
  %32 = getelementptr inbounds [1 x i8*], [1 x i8*]* %.omp.reduction.red_list, i64 0, i64 0, !dbg !274
  %33 = bitcast double* %sum26 to i8*, !dbg !274
  store i8* %33, i8** %32, align 8, !dbg !274
  %34 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !274
  store i8* getelementptr inbounds ([55 x i8], [55 x i8]* @9, i32 0, i32 0), i8** %34, align 8, !dbg !274
  %35 = load i32*, i32** %.global_tid..addr, align 8, !dbg !274
  %36 = load i32, i32* %35, align 4, !dbg !274
  %37 = bitcast [1 x i8*]* %.omp.reduction.red_list to i8*, !dbg !274
  %38 = call i32 @__kmpc_reduce_nowait(%struct.ident_t* %.kmpc_loc.addr, i32 %36, i32 1, i64 8, i8* %37, void (i8*, i8*)* @.omp.reduction.reduction_func.5, [8 x i32]* @.gomp_critical_user_.reduction.var), !dbg !274
  switch i32 %38, label %.omp.reduction.default [
    i32 1, label %.omp.reduction.case1
    i32 2, label %.omp.reduction.case2
  ], !dbg !274

.omp.reduction.case1:                             ; preds = %omp.loop.exit
  %39 = load double, double* %3, align 8, !dbg !266
  %40 = load double, double* %sum26, align 8, !dbg !266
  %add16 = fadd double %39, %40, !dbg !277
  store double %add16, double* %3, align 8, !dbg !277
  call void @__kmpc_end_reduce_nowait(%struct.ident_t* %.kmpc_loc.addr, i32 %36, [8 x i32]* @.gomp_critical_user_.reduction.var), !dbg !274
  br label %.omp.reduction.default, !dbg !274

.omp.reduction.case2:                             ; preds = %omp.loop.exit
  %41 = load double, double* %sum26, align 8, !dbg !266
  %42 = bitcast double* %3 to i64*, !dbg !274
  %atomic-load = load atomic i64, i64* %42 monotonic, align 8, !dbg !274
  br label %atomic_cont, !dbg !274

atomic_cont:                                      ; preds = %atomic_cont, %.omp.reduction.case2
  %43 = phi i64 [ %atomic-load, %.omp.reduction.case2 ], [ %51, %atomic_cont ], !dbg !274
  %44 = bitcast double* %atomic-temp to i64*, !dbg !274
  %45 = bitcast i64 %43 to double, !dbg !274
  store double %45, double* %tmp17, align 8, !dbg !274
  %46 = load double, double* %tmp17, align 8, !dbg !266
  %47 = load double, double* %sum26, align 8, !dbg !266
  %add18 = fadd double %46, %47, !dbg !277
  store double %add18, double* %atomic-temp, align 8, !dbg !274
  %48 = load i64, i64* %44, align 8, !dbg !274
  %49 = bitcast double* %3 to i64*, !dbg !274
  %50 = cmpxchg i64* %49, i64 %43, i64 %48 monotonic monotonic, !dbg !274
  %51 = extractvalue { i64, i1 } %50, 0, !dbg !274
  %52 = extractvalue { i64, i1 } %50, 1, !dbg !274
  br i1 %52, label %atomic_exit, label %atomic_cont, !dbg !274

atomic_exit:                                      ; preds = %atomic_cont
  br label %.omp.reduction.default, !dbg !274

.omp.reduction.default:                           ; preds = %atomic_exit, %.omp.reduction.case1, %omp.loop.exit
  br label %omp.precond.end, !dbg !274

omp.precond.end:                                  ; preds = %.omp.reduction.default, %entry
  ret void, !dbg !278
}

; Function Attrs: noinline norecurse nounwind uwtable
define internal void @.omp.reduction.reduction_func.5(i8* %0, i8* %1) #5 !dbg !279 {
entry:
  %.addr = alloca i8*, align 8
  %.addr1 = alloca i8*, align 8
  store i8* %0, i8** %.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %.addr, metadata !280, metadata !DIExpression()), !dbg !281
  store i8* %1, i8** %.addr1, align 8
  call void @llvm.dbg.declare(metadata i8** %.addr1, metadata !282, metadata !DIExpression()), !dbg !281
  %2 = load i8*, i8** %.addr, align 8, !dbg !283
  %3 = bitcast i8* %2 to [1 x i8*]*, !dbg !283
  %4 = load i8*, i8** %.addr1, align 8, !dbg !283
  %5 = bitcast i8* %4 to [1 x i8*]*, !dbg !283
  %6 = getelementptr inbounds [1 x i8*], [1 x i8*]* %5, i64 0, i64 0, !dbg !283
  %7 = load i8*, i8** %6, align 8, !dbg !283
  %8 = bitcast i8* %7 to double*, !dbg !283
  %9 = getelementptr inbounds [1 x i8*], [1 x i8*]* %3, i64 0, i64 0, !dbg !283
  %10 = load i8*, i8** %9, align 8, !dbg !283
  %11 = bitcast i8* %10 to double*, !dbg !283
  %12 = load double, double* %11, align 8, !dbg !284
  %13 = load double, double* %8, align 8, !dbg !284
  %add = fadd double %12, %13, !dbg !285
  store double %add, double* %11, align 8, !dbg !285
  ret void, !dbg !284
}

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined..6(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %len, double* dereferenceable(8) %sum2, i64 %vla, double* dereferenceable(8) %a, i64 %vla1, double* dereferenceable(8) %b) #3 !dbg !286 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %sum2.addr = alloca double*, align 8
  %vla.addr = alloca i64, align 8
  %a.addr = alloca double*, align 8
  %vla.addr2 = alloca i64, align 8
  %b.addr = alloca double*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !287, metadata !DIExpression()), !dbg !288
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !289, metadata !DIExpression()), !dbg !288
  store i32* %len, i32** %len.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !290, metadata !DIExpression()), !dbg !288
  store double* %sum2, double** %sum2.addr, align 8
  call void @llvm.dbg.declare(metadata double** %sum2.addr, metadata !291, metadata !DIExpression()), !dbg !288
  store i64 %vla, i64* %vla.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %vla.addr, metadata !292, metadata !DIExpression()), !dbg !288
  store double* %a, double** %a.addr, align 8
  call void @llvm.dbg.declare(metadata double** %a.addr, metadata !293, metadata !DIExpression()), !dbg !288
  store i64 %vla1, i64* %vla.addr2, align 8
  call void @llvm.dbg.declare(metadata i64* %vla.addr2, metadata !294, metadata !DIExpression()), !dbg !288
  store double* %b, double** %b.addr, align 8
  call void @llvm.dbg.declare(metadata double** %b.addr, metadata !295, metadata !DIExpression()), !dbg !288
  %0 = load i32*, i32** %len.addr, align 8, !dbg !296
  %1 = load double*, double** %sum2.addr, align 8, !dbg !296
  %2 = load i64, i64* %vla.addr, align 8, !dbg !296
  %3 = load double*, double** %a.addr, align 8, !dbg !296
  %4 = load i64, i64* %vla.addr2, align 8, !dbg !296
  %5 = load double*, double** %b.addr, align 8, !dbg !296
  %6 = load i32*, i32** %.global_tid..addr, align 8, !dbg !296
  %7 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !296
  %8 = load i32*, i32** %len.addr, align 8, !dbg !296
  %9 = load double*, double** %sum2.addr, align 8, !dbg !296
  %10 = load double*, double** %a.addr, align 8, !dbg !296
  %11 = load double*, double** %b.addr, align 8, !dbg !296
  call void @.omp_outlined._debug__.4(i32* %6, i32* %7, i32* %8, double* %9, i64 %2, double* %10, i64 %4, double* %11) #2, !dbg !296
  ret void, !dbg !296
}

declare dso_local i32 @printf(i8*, ...) #6

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { nounwind }
attributes #3 = { noinline norecurse nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind willreturn }
attributes #5 = { noinline norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.1 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "DRB097-target-teams-distribute-orig-no.c", directory: "/home/yanze/code/OpenRace/tests/data/integration/dataracebench")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!5 = !{i32 7, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 10.0.1 "}
!9 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 52, type: !10, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!10 = !DISubroutineType(types: !11)
!11 = !{!12, !12, !13}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !15, size: 64)
!15 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!16 = !DILocalVariable(name: "argc", arg: 1, scope: !9, file: !1, line: 52, type: !12)
!17 = !DILocation(line: 52, column: 14, scope: !9)
!18 = !DILocalVariable(name: "argv", arg: 2, scope: !9, file: !1, line: 52, type: !13)
!19 = !DILocation(line: 52, column: 26, scope: !9)
!20 = !DILocalVariable(name: "i", scope: !9, file: !1, line: 54, type: !12)
!21 = !DILocation(line: 54, column: 7, scope: !9)
!22 = !DILocalVariable(name: "i2", scope: !9, file: !1, line: 54, type: !12)
!23 = !DILocation(line: 54, column: 10, scope: !9)
!24 = !DILocalVariable(name: "len", scope: !9, file: !1, line: 55, type: !12)
!25 = !DILocation(line: 55, column: 7, scope: !9)
!26 = !DILocalVariable(name: "sum", scope: !9, file: !1, line: 56, type: !4)
!27 = !DILocation(line: 56, column: 10, scope: !9)
!28 = !DILocalVariable(name: "sum2", scope: !9, file: !1, line: 56, type: !4)
!29 = !DILocation(line: 56, column: 20, scope: !9)
!30 = !DILocation(line: 57, column: 12, scope: !9)
!31 = !DILocation(line: 57, column: 3, scope: !9)
!32 = !DILocalVariable(name: "__vla_expr0", scope: !9, type: !33, flags: DIFlagArtificial)
!33 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!34 = !DILocation(line: 0, scope: !9)
!35 = !DILocalVariable(name: "a", scope: !9, file: !1, line: 57, type: !36)
!36 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !37)
!37 = !{!38}
!38 = !DISubrange(count: !32)
!39 = !DILocation(line: 57, column: 10, scope: !9)
!40 = !DILocation(line: 57, column: 20, scope: !9)
!41 = !DILocalVariable(name: "__vla_expr1", scope: !9, type: !33, flags: DIFlagArtificial)
!42 = !DILocalVariable(name: "b", scope: !9, file: !1, line: 57, type: !43)
!43 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !44)
!44 = !{!45}
!45 = !DISubrange(count: !41)
!46 = !DILocation(line: 57, column: 18, scope: !9)
!47 = !DILocation(line: 59, column: 9, scope: !48)
!48 = distinct !DILexicalBlock(scope: !9, file: !1, line: 59, column: 3)
!49 = !DILocation(line: 59, column: 8, scope: !48)
!50 = !DILocation(line: 59, column: 13, scope: !51)
!51 = distinct !DILexicalBlock(scope: !48, file: !1, line: 59, column: 3)
!52 = !DILocation(line: 59, column: 15, scope: !51)
!53 = !DILocation(line: 59, column: 14, scope: !51)
!54 = !DILocation(line: 59, column: 3, scope: !48)
!55 = !DILocation(line: 61, column: 20, scope: !56)
!56 = distinct !DILexicalBlock(scope: !51, file: !1, line: 60, column: 3)
!57 = !DILocation(line: 61, column: 12, scope: !56)
!58 = !DILocation(line: 61, column: 22, scope: !56)
!59 = !DILocation(line: 61, column: 7, scope: !56)
!60 = !DILocation(line: 61, column: 5, scope: !56)
!61 = !DILocation(line: 61, column: 9, scope: !56)
!62 = !DILocation(line: 62, column: 20, scope: !56)
!63 = !DILocation(line: 62, column: 12, scope: !56)
!64 = !DILocation(line: 62, column: 22, scope: !56)
!65 = !DILocation(line: 62, column: 7, scope: !56)
!66 = !DILocation(line: 62, column: 5, scope: !56)
!67 = !DILocation(line: 62, column: 9, scope: !56)
!68 = !DILocation(line: 63, column: 3, scope: !56)
!69 = !DILocation(line: 59, column: 21, scope: !51)
!70 = !DILocation(line: 59, column: 3, scope: !51)
!71 = distinct !{!71, !54, !72}
!72 = !DILocation(line: 63, column: 3, scope: !48)
!73 = !DILocation(line: 65, column: 1, scope: !9)
!74 = !DILocation(line: 65, column: 1, scope: !75)
!75 = distinct !DILexicalBlock(scope: !9, file: !1, line: 65, column: 1)
!76 = !DILocation(line: 74, column: 1, scope: !9)
!77 = !DILocation(line: 77, column: 31, scope: !9)
!78 = !DILocation(line: 77, column: 36, scope: !9)
!79 = !DILocation(line: 77, column: 3, scope: !9)
!80 = !DILocation(line: 78, column: 3, scope: !9)
!81 = !DILocation(line: 79, column: 1, scope: !9)
!82 = distinct !DISubprogram(name: "__omp_offloading_10307_2ec417a_main_l65_debug__", scope: !1, file: !1, line: 66, type: !83, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!83 = !DISubroutineType(types: !84)
!84 = !{null, !85, !12, !33, !85, !33, !85}
!85 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !4, size: 64)
!86 = !DILocalVariable(name: "sum", arg: 1, scope: !82, file: !1, line: 56, type: !85)
!87 = !DILocation(line: 56, column: 10, scope: !82)
!88 = !DILocalVariable(name: "len", arg: 2, scope: !82, file: !1, line: 55, type: !12)
!89 = !DILocation(line: 55, column: 7, scope: !82)
!90 = !DILocalVariable(name: "vla", arg: 3, scope: !82, type: !33, flags: DIFlagArtificial)
!91 = !DILocation(line: 0, scope: !82)
!92 = !DILocalVariable(name: "a", arg: 4, scope: !82, file: !1, line: 57, type: !85)
!93 = !DILocation(line: 57, column: 10, scope: !82)
!94 = !DILocalVariable(name: "vla", arg: 5, scope: !82, type: !33, flags: DIFlagArtificial)
!95 = !DILocalVariable(name: "b", arg: 6, scope: !82, file: !1, line: 57, type: !85)
!96 = !DILocation(line: 57, column: 18, scope: !82)
!97 = !DILocation(line: 66, column: 1, scope: !82)
!98 = !DILocation(line: 66, column: 69, scope: !82)
!99 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 67, type: !100, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!100 = !DISubroutineType(types: !101)
!101 = !{null, !102, !102, !106, !85, !33, !85, !33, !85}
!102 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !103)
!103 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !104)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!106 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !12, size: 64)
!107 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !99, type: !102, flags: DIFlagArtificial)
!108 = !DILocation(line: 0, scope: !99)
!109 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !99, type: !102, flags: DIFlagArtificial)
!110 = !DILocalVariable(name: "len", arg: 3, scope: !99, file: !1, line: 55, type: !106)
!111 = !DILocation(line: 55, column: 7, scope: !99)
!112 = !DILocalVariable(name: "sum", arg: 4, scope: !99, file: !1, line: 56, type: !85)
!113 = !DILocation(line: 56, column: 10, scope: !99)
!114 = !DILocalVariable(name: "vla", arg: 5, scope: !99, type: !33, flags: DIFlagArtificial)
!115 = !DILocalVariable(name: "a", arg: 6, scope: !99, file: !1, line: 57, type: !85)
!116 = !DILocation(line: 57, column: 10, scope: !99)
!117 = !DILocalVariable(name: "vla", arg: 7, scope: !99, type: !33, flags: DIFlagArtificial)
!118 = !DILocalVariable(name: "b", arg: 8, scope: !99, file: !1, line: 57, type: !85)
!119 = !DILocation(line: 57, column: 18, scope: !99)
!120 = !DILocation(line: 67, column: 1, scope: !99)
!121 = !DILocalVariable(name: "sum", scope: !99, type: !4, flags: DIFlagArtificial)
!122 = !DILocation(line: 66, column: 64, scope: !99)
!123 = !DILocalVariable(name: ".omp.iv", scope: !124, type: !12, flags: DIFlagArtificial)
!124 = distinct !DILexicalBlock(scope: !99, file: !1, line: 67, column: 1)
!125 = !DILocation(line: 0, scope: !124)
!126 = !DILocalVariable(name: ".capture_expr.", scope: !124, type: !12, flags: DIFlagArtificial)
!127 = !DILocation(line: 68, column: 18, scope: !124)
!128 = !DILocation(line: 68, column: 3, scope: !124)
!129 = !DILocalVariable(name: "i2", scope: !124, type: !12, flags: DIFlagArtificial)
!130 = !DILocation(line: 68, column: 23, scope: !124)
!131 = !DILocalVariable(name: ".omp.lb", scope: !124, type: !12, flags: DIFlagArtificial)
!132 = !DILocation(line: 68, column: 8, scope: !124)
!133 = !DILocalVariable(name: ".omp.ub", scope: !124, type: !12, flags: DIFlagArtificial)
!134 = !DILocalVariable(name: ".omp.stride", scope: !124, type: !12, flags: DIFlagArtificial)
!135 = !DILocalVariable(name: ".omp.is_last", scope: !124, type: !12, flags: DIFlagArtificial)
!136 = !DILocation(line: 69, column: 1, scope: !124)
!137 = !DILocation(line: 69, column: 43, scope: !138)
!138 = distinct !DILexicalBlock(scope: !124, file: !1, line: 69, column: 1)
!139 = !DILocation(line: 67, column: 1, scope: !124)
!140 = distinct !{!140, !139, !141}
!141 = !DILocation(line: 67, column: 23, scope: !124)
!142 = !DILocation(line: 66, column: 62, scope: !99)
!143 = !DILocation(line: 67, column: 23, scope: !99)
!144 = distinct !DISubprogram(name: ".omp_outlined._debug__.1", scope: !1, file: !1, line: 70, type: !145, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!145 = !DISubroutineType(types: !146)
!146 = !{null, !102, !102, !106, !106, !85, !33, !85, !33, !85}
!147 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !144, type: !102, flags: DIFlagArtificial)
!148 = !DILocation(line: 0, scope: !144)
!149 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !144, type: !102, flags: DIFlagArtificial)
!150 = !DILocalVariable(name: "i2", arg: 3, scope: !144, file: !1, line: 54, type: !106)
!151 = !DILocation(line: 54, column: 10, scope: !144)
!152 = !DILocalVariable(name: "len", arg: 4, scope: !144, file: !1, line: 55, type: !106)
!153 = !DILocation(line: 55, column: 7, scope: !144)
!154 = !DILocalVariable(name: "sum", arg: 5, scope: !144, file: !1, line: 56, type: !85)
!155 = !DILocation(line: 56, column: 10, scope: !144)
!156 = !DILocalVariable(name: "vla", arg: 6, scope: !144, type: !33, flags: DIFlagArtificial)
!157 = !DILocalVariable(name: "a", arg: 7, scope: !144, file: !1, line: 57, type: !85)
!158 = !DILocation(line: 57, column: 10, scope: !144)
!159 = !DILocalVariable(name: "vla", arg: 8, scope: !144, type: !33, flags: DIFlagArtificial)
!160 = !DILocalVariable(name: "b", arg: 9, scope: !144, file: !1, line: 57, type: !85)
!161 = !DILocation(line: 57, column: 18, scope: !144)
!162 = !DILocation(line: 70, column: 5, scope: !144)
!163 = !DILocalVariable(name: ".omp.iv", scope: !144, type: !12, flags: DIFlagArtificial)
!164 = !DILocalVariable(name: ".capture_expr.", scope: !144, type: !12, flags: DIFlagArtificial)
!165 = !DILocation(line: 70, column: 12, scope: !144)
!166 = !DILocation(line: 70, column: 18, scope: !144)
!167 = !DILocalVariable(name: "i", scope: !144, type: !12, flags: DIFlagArtificial)
!168 = !DILocation(line: 70, column: 36, scope: !144)
!169 = !DILocalVariable(name: ".omp.lb", scope: !144, type: !12, flags: DIFlagArtificial)
!170 = !DILocation(line: 70, column: 10, scope: !144)
!171 = !DILocalVariable(name: ".omp.ub", scope: !144, type: !12, flags: DIFlagArtificial)
!172 = !DILocalVariable(name: ".omp.stride", scope: !144, type: !12, flags: DIFlagArtificial)
!173 = !DILocalVariable(name: ".omp.is_last", scope: !144, type: !12, flags: DIFlagArtificial)
!174 = !DILocalVariable(name: "sum", scope: !144, type: !4, flags: DIFlagArtificial)
!175 = !DILocation(line: 69, column: 39, scope: !144)
!176 = !DILocation(line: 71, column: 16, scope: !144)
!177 = !DILocation(line: 71, column: 14, scope: !144)
!178 = !DILocation(line: 71, column: 21, scope: !144)
!179 = !DILocation(line: 71, column: 19, scope: !144)
!180 = !DILocation(line: 71, column: 18, scope: !144)
!181 = !DILocation(line: 71, column: 11, scope: !144)
!182 = !DILocation(line: 71, column: 7, scope: !144)
!183 = !DILocation(line: 69, column: 1, scope: !144)
!184 = distinct !{!184, !183, !185}
!185 = !DILocation(line: 69, column: 43, scope: !144)
!186 = !DILocation(line: 69, column: 37, scope: !144)
!187 = !DILocation(line: 71, column: 22, scope: !144)
!188 = distinct !DISubprogram(linkageName: ".omp.reduction.reduction_func", scope: !1, file: !1, line: 69, type: !189, scopeLine: 69, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!189 = !DISubroutineType(types: !2)
!190 = !DILocalVariable(arg: 1, scope: !188, type: !191, flags: DIFlagArtificial)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!192 = !DILocation(line: 0, scope: !188)
!193 = !DILocalVariable(arg: 2, scope: !188, type: !191, flags: DIFlagArtificial)
!194 = !DILocation(line: 69, column: 43, scope: !188)
!195 = !DILocation(line: 69, column: 39, scope: !188)
!196 = !DILocation(line: 69, column: 37, scope: !188)
!197 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 70, type: !145, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!198 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !197, type: !102, flags: DIFlagArtificial)
!199 = !DILocation(line: 0, scope: !197)
!200 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !197, type: !102, flags: DIFlagArtificial)
!201 = !DILocalVariable(name: "i2", arg: 3, scope: !197, type: !106, flags: DIFlagArtificial)
!202 = !DILocalVariable(name: "len", arg: 4, scope: !197, type: !106, flags: DIFlagArtificial)
!203 = !DILocalVariable(name: "sum", arg: 5, scope: !197, type: !85, flags: DIFlagArtificial)
!204 = !DILocalVariable(name: "vla", arg: 6, scope: !197, type: !33, flags: DIFlagArtificial)
!205 = !DILocalVariable(name: "a", arg: 7, scope: !197, type: !85, flags: DIFlagArtificial)
!206 = !DILocalVariable(name: "vla", arg: 8, scope: !197, type: !33, flags: DIFlagArtificial)
!207 = !DILocalVariable(name: "b", arg: 9, scope: !197, type: !85, flags: DIFlagArtificial)
!208 = !DILocation(line: 70, column: 5, scope: !197)
!209 = !{!210}
!210 = !{i64 2, i64 -1, i64 -1, i1 true}
!211 = distinct !DISubprogram(linkageName: ".omp.reduction.reduction_func.2", scope: !1, file: !1, line: 66, type: !189, scopeLine: 66, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!212 = !DILocalVariable(arg: 1, scope: !211, type: !191, flags: DIFlagArtificial)
!213 = !DILocation(line: 0, scope: !211)
!214 = !DILocalVariable(arg: 2, scope: !211, type: !191, flags: DIFlagArtificial)
!215 = !DILocation(line: 66, column: 69, scope: !211)
!216 = !DILocation(line: 66, column: 64, scope: !211)
!217 = !DILocation(line: 66, column: 62, scope: !211)
!218 = distinct !DISubprogram(name: ".omp_outlined..3", scope: !1, file: !1, line: 67, type: !100, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!219 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !218, type: !102, flags: DIFlagArtificial)
!220 = !DILocation(line: 0, scope: !218)
!221 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !218, type: !102, flags: DIFlagArtificial)
!222 = !DILocalVariable(name: "len", arg: 3, scope: !218, type: !106, flags: DIFlagArtificial)
!223 = !DILocalVariable(name: "sum", arg: 4, scope: !218, type: !85, flags: DIFlagArtificial)
!224 = !DILocalVariable(name: "vla", arg: 5, scope: !218, type: !33, flags: DIFlagArtificial)
!225 = !DILocalVariable(name: "a", arg: 6, scope: !218, type: !85, flags: DIFlagArtificial)
!226 = !DILocalVariable(name: "vla", arg: 7, scope: !218, type: !33, flags: DIFlagArtificial)
!227 = !DILocalVariable(name: "b", arg: 8, scope: !218, type: !85, flags: DIFlagArtificial)
!228 = !DILocation(line: 67, column: 1, scope: !218)
!229 = distinct !DISubprogram(name: "__omp_offloading_10307_2ec417a_main_l65", scope: !1, file: !1, line: 66, type: !230, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!230 = !DISubroutineType(types: !231)
!231 = !{null, !85, !33, !33, !85, !33, !85}
!232 = !DILocalVariable(name: "sum", arg: 1, scope: !229, type: !85, flags: DIFlagArtificial)
!233 = !DILocation(line: 0, scope: !229)
!234 = !DILocalVariable(name: "len", arg: 2, scope: !229, type: !33, flags: DIFlagArtificial)
!235 = !DILocalVariable(name: "vla", arg: 3, scope: !229, type: !33, flags: DIFlagArtificial)
!236 = !DILocalVariable(name: "a", arg: 4, scope: !229, type: !85, flags: DIFlagArtificial)
!237 = !DILocalVariable(name: "vla", arg: 5, scope: !229, type: !33, flags: DIFlagArtificial)
!238 = !DILocalVariable(name: "b", arg: 6, scope: !229, type: !85, flags: DIFlagArtificial)
!239 = !DILocation(line: 66, column: 1, scope: !229)
!240 = distinct !DISubprogram(name: ".omp_outlined._debug__.4", scope: !1, file: !1, line: 75, type: !100, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!241 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !240, type: !102, flags: DIFlagArtificial)
!242 = !DILocation(line: 0, scope: !240)
!243 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !240, type: !102, flags: DIFlagArtificial)
!244 = !DILocalVariable(name: "len", arg: 3, scope: !240, file: !1, line: 55, type: !106)
!245 = !DILocation(line: 55, column: 7, scope: !240)
!246 = !DILocalVariable(name: "sum2", arg: 4, scope: !240, file: !1, line: 56, type: !85)
!247 = !DILocation(line: 56, column: 20, scope: !240)
!248 = !DILocalVariable(name: "vla", arg: 5, scope: !240, type: !33, flags: DIFlagArtificial)
!249 = !DILocalVariable(name: "a", arg: 6, scope: !240, file: !1, line: 57, type: !85)
!250 = !DILocation(line: 57, column: 10, scope: !240)
!251 = !DILocalVariable(name: "vla", arg: 7, scope: !240, type: !33, flags: DIFlagArtificial)
!252 = !DILocalVariable(name: "b", arg: 8, scope: !240, file: !1, line: 57, type: !85)
!253 = !DILocation(line: 57, column: 18, scope: !240)
!254 = !DILocation(line: 75, column: 5, scope: !240)
!255 = !DILocalVariable(name: ".omp.iv", scope: !240, type: !12, flags: DIFlagArtificial)
!256 = !DILocalVariable(name: ".capture_expr.", scope: !240, type: !12, flags: DIFlagArtificial)
!257 = !DILocation(line: 75, column: 17, scope: !240)
!258 = !DILocalVariable(name: "i", scope: !240, type: !12, flags: DIFlagArtificial)
!259 = !DILocation(line: 75, column: 22, scope: !240)
!260 = !DILocalVariable(name: ".omp.lb", scope: !240, type: !12, flags: DIFlagArtificial)
!261 = !DILocation(line: 75, column: 10, scope: !240)
!262 = !DILocalVariable(name: ".omp.ub", scope: !240, type: !12, flags: DIFlagArtificial)
!263 = !DILocalVariable(name: ".omp.stride", scope: !240, type: !12, flags: DIFlagArtificial)
!264 = !DILocalVariable(name: ".omp.is_last", scope: !240, type: !12, flags: DIFlagArtificial)
!265 = !DILocalVariable(name: "sum2", scope: !240, type: !4, flags: DIFlagArtificial)
!266 = !DILocation(line: 74, column: 39, scope: !240)
!267 = !DILocation(line: 76, column: 17, scope: !240)
!268 = !DILocation(line: 76, column: 15, scope: !240)
!269 = !DILocation(line: 76, column: 22, scope: !240)
!270 = !DILocation(line: 76, column: 20, scope: !240)
!271 = !DILocation(line: 76, column: 19, scope: !240)
!272 = !DILocation(line: 76, column: 12, scope: !240)
!273 = !DILocation(line: 76, column: 7, scope: !240)
!274 = !DILocation(line: 74, column: 1, scope: !240)
!275 = distinct !{!275, !274, !276}
!276 = !DILocation(line: 74, column: 44, scope: !240)
!277 = !DILocation(line: 74, column: 37, scope: !240)
!278 = !DILocation(line: 76, column: 23, scope: !240)
!279 = distinct !DISubprogram(linkageName: ".omp.reduction.reduction_func.5", scope: !1, file: !1, line: 74, type: !189, scopeLine: 74, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!280 = !DILocalVariable(arg: 1, scope: !279, type: !191, flags: DIFlagArtificial)
!281 = !DILocation(line: 0, scope: !279)
!282 = !DILocalVariable(arg: 2, scope: !279, type: !191, flags: DIFlagArtificial)
!283 = !DILocation(line: 74, column: 44, scope: !279)
!284 = !DILocation(line: 74, column: 39, scope: !279)
!285 = !DILocation(line: 74, column: 37, scope: !279)
!286 = distinct !DISubprogram(name: ".omp_outlined..6", scope: !1, file: !1, line: 75, type: !100, scopeLine: 75, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!287 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !286, type: !102, flags: DIFlagArtificial)
!288 = !DILocation(line: 0, scope: !286)
!289 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !286, type: !102, flags: DIFlagArtificial)
!290 = !DILocalVariable(name: "len", arg: 3, scope: !286, type: !106, flags: DIFlagArtificial)
!291 = !DILocalVariable(name: "sum2", arg: 4, scope: !286, type: !85, flags: DIFlagArtificial)
!292 = !DILocalVariable(name: "vla", arg: 5, scope: !286, type: !33, flags: DIFlagArtificial)
!293 = !DILocalVariable(name: "a", arg: 6, scope: !286, type: !85, flags: DIFlagArtificial)
!294 = !DILocalVariable(name: "vla", arg: 7, scope: !286, type: !33, flags: DIFlagArtificial)
!295 = !DILocalVariable(name: "b", arg: 8, scope: !286, type: !85, flags: DIFlagArtificial)
!296 = !DILocation(line: 75, column: 5, scope: !286)
