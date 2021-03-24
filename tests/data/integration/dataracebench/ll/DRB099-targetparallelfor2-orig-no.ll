; ModuleID = 'DRB099-targetparallelfor2-orig-no.c'
source_filename = "DRB099-targetparallelfor2-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [48 x i8] c";DRB099-targetparallelfor2-orig-no.c;foo;54;1;;\00", align 1
@2 = private unnamed_addr constant [49 x i8] c";DRB099-targetparallelfor2-orig-no.c;foo;54;25;;\00", align 1
@3 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"b[50]=%f\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @foo(double* %a, double* %b, i32 %N) #0 !dbg !9 {
entry:
  %a.addr = alloca double*, align 8
  %b.addr = alloca double*, align 8
  %N.addr = alloca i32, align 4
  %i = alloca i32, align 4
  %N.casted = alloca i64, align 8
  store double* %a, double** %a.addr, align 8
  call void @llvm.dbg.declare(metadata double** %a.addr, metadata !14, metadata !DIExpression()), !dbg !15
  store double* %b, double** %b.addr, align 8
  call void @llvm.dbg.declare(metadata double** %b.addr, metadata !16, metadata !DIExpression()), !dbg !17
  store i32 %N, i32* %N.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %N.addr, metadata !18, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.declare(metadata i32* %i, metadata !20, metadata !DIExpression()), !dbg !21
  %0 = load i32, i32* %N.addr, align 4, !dbg !22
  %conv = bitcast i64* %N.casted to i32*, !dbg !22
  store i32 %0, i32* %conv, align 4, !dbg !22
  %1 = load i64, i64* %N.casted, align 8, !dbg !22
  %2 = load double*, double** %b.addr, align 8, !dbg !22
  %3 = load double*, double** %a.addr, align 8, !dbg !22
  call void @__omp_offloading_10307_2ec417c_foo_l53(i64 %1, double* %2, double* %3) #4, !dbg !23
  ret void, !dbg !25
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @__omp_offloading_10307_2ec417c_foo_l53_debug__(i32 %N, double* %b, double* %a) #2 !dbg !26 {
entry:
  %N.addr = alloca i32, align 4
  %b.addr = alloca double*, align 8
  %a.addr = alloca double*, align 8
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32 %N, i32* %N.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %N.addr, metadata !29, metadata !DIExpression()), !dbg !30
  store double* %b, double** %b.addr, align 8
  call void @llvm.dbg.declare(metadata double** %b.addr, metadata !31, metadata !DIExpression()), !dbg !32
  store double* %a, double** %a.addr, align 8
  call void @llvm.dbg.declare(metadata double** %a.addr, metadata !33, metadata !DIExpression()), !dbg !34
  %2 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !35
  store i8* getelementptr inbounds ([48 x i8], [48 x i8]* @1, i32 0, i32 0), i8** %2, align 8, !dbg !35
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, double**, double**)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %N.addr, double** %b.addr, double** %a.addr), !dbg !35
  ret void, !dbg !36
}

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %N, double** dereferenceable(8) %b, double** dereferenceable(8) %a) #2 !dbg !37 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %N.addr = alloca i32*, align 8
  %b.addr = alloca double**, align 8
  %a.addr = alloca double**, align 8
  %.omp.iv = alloca i32, align 4
  %tmp = alloca i32, align 4
  %.capture_expr. = alloca i32, align 4
  %.capture_expr.1 = alloca i32, align 4
  %i = alloca i32, align 4
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %i4 = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !46, metadata !DIExpression()), !dbg !47
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !48, metadata !DIExpression()), !dbg !47
  store i32* %N, i32** %N.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %N.addr, metadata !49, metadata !DIExpression()), !dbg !50
  store double** %b, double*** %b.addr, align 8
  call void @llvm.dbg.declare(metadata double*** %b.addr, metadata !51, metadata !DIExpression()), !dbg !52
  store double** %a, double*** %a.addr, align 8
  call void @llvm.dbg.declare(metadata double*** %a.addr, metadata !53, metadata !DIExpression()), !dbg !54
  %2 = load i32*, i32** %N.addr, align 8, !dbg !55
  %3 = load double**, double*** %b.addr, align 8, !dbg !55
  %4 = load double**, double*** %a.addr, align 8, !dbg !55
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !56, metadata !DIExpression()), !dbg !47
  call void @llvm.dbg.declare(metadata i32* %.capture_expr., metadata !57, metadata !DIExpression()), !dbg !47
  %5 = load i32, i32* %2, align 4, !dbg !58
  store i32 %5, i32* %.capture_expr., align 4, !dbg !58
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.1, metadata !57, metadata !DIExpression()), !dbg !47
  %6 = load i32, i32* %.capture_expr., align 4, !dbg !58
  %sub = sub nsw i32 %6, 0, !dbg !55
  %sub2 = sub nsw i32 %sub, 1, !dbg !55
  %add = add nsw i32 %sub2, 1, !dbg !55
  %div = sdiv i32 %add, 1, !dbg !55
  %sub3 = sub nsw i32 %div, 1, !dbg !55
  store i32 %sub3, i32* %.capture_expr.1, align 4, !dbg !55
  call void @llvm.dbg.declare(metadata i32* %i, metadata !59, metadata !DIExpression()), !dbg !47
  store i32 0, i32* %i, align 4, !dbg !60
  %7 = load i32, i32* %.capture_expr., align 4, !dbg !58
  %cmp = icmp slt i32 0, %7, !dbg !55
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end, !dbg !55

omp.precond.then:                                 ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !61, metadata !DIExpression()), !dbg !47
  store i32 0, i32* %.omp.lb, align 4, !dbg !62
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !63, metadata !DIExpression()), !dbg !47
  %8 = load i32, i32* %.capture_expr.1, align 4, !dbg !55
  store i32 %8, i32* %.omp.ub, align 4, !dbg !62
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !64, metadata !DIExpression()), !dbg !47
  store i32 1, i32* %.omp.stride, align 4, !dbg !62
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !65, metadata !DIExpression()), !dbg !47
  store i32 0, i32* %.omp.is_last, align 4, !dbg !62
  call void @llvm.dbg.declare(metadata i32* %i4, metadata !59, metadata !DIExpression()), !dbg !47
  %9 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !55
  store i8* getelementptr inbounds ([48 x i8], [48 x i8]* @1, i32 0, i32 0), i8** %9, align 8, !dbg !55
  %10 = load i32*, i32** %.global_tid..addr, align 8, !dbg !55
  %11 = load i32, i32* %10, align 4, !dbg !55
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %11, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !55
  %12 = load i32, i32* %.omp.ub, align 4, !dbg !62
  %13 = load i32, i32* %.capture_expr.1, align 4, !dbg !55
  %cmp5 = icmp sgt i32 %12, %13, !dbg !62
  br i1 %cmp5, label %cond.true, label %cond.false, !dbg !62

cond.true:                                        ; preds = %omp.precond.then
  %14 = load i32, i32* %.capture_expr.1, align 4, !dbg !55
  br label %cond.end, !dbg !62

cond.false:                                       ; preds = %omp.precond.then
  %15 = load i32, i32* %.omp.ub, align 4, !dbg !62
  br label %cond.end, !dbg !62

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %14, %cond.true ], [ %15, %cond.false ], !dbg !62
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !62
  %16 = load i32, i32* %.omp.lb, align 4, !dbg !62
  store i32 %16, i32* %.omp.iv, align 4, !dbg !62
  br label %omp.inner.for.cond, !dbg !55

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %17 = load i32, i32* %.omp.iv, align 4, !dbg !62
  %18 = load i32, i32* %.omp.ub, align 4, !dbg !62
  %cmp6 = icmp sle i32 %17, %18, !dbg !55
  br i1 %cmp6, label %omp.inner.for.body, label %omp.inner.for.end, !dbg !55

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %19 = load i32, i32* %.omp.iv, align 4, !dbg !62
  %mul = mul nsw i32 %19, 1, !dbg !60
  %add7 = add nsw i32 0, %mul, !dbg !60
  store i32 %add7, i32* %i4, align 4, !dbg !60
  %20 = load double*, double** %4, align 8, !dbg !66
  %21 = load i32, i32* %i4, align 4, !dbg !67
  %idxprom = sext i32 %21 to i64, !dbg !66
  %arrayidx = getelementptr inbounds double, double* %20, i64 %idxprom, !dbg !66
  %22 = load double, double* %arrayidx, align 8, !dbg !66
  %23 = load i32, i32* %i4, align 4, !dbg !68
  %conv = sitofp i32 %23 to double, !dbg !69
  %mul8 = fmul double %22, %conv, !dbg !70
  %24 = load double*, double** %3, align 8, !dbg !71
  %25 = load i32, i32* %i4, align 4, !dbg !72
  %idxprom9 = sext i32 %25 to i64, !dbg !71
  %arrayidx10 = getelementptr inbounds double, double* %24, i64 %idxprom9, !dbg !71
  store double %mul8, double* %arrayidx10, align 8, !dbg !73
  br label %omp.body.continue, !dbg !71

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !74

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %26 = load i32, i32* %.omp.iv, align 4, !dbg !62
  %add11 = add nsw i32 %26, 1, !dbg !55
  store i32 %add11, i32* %.omp.iv, align 4, !dbg !55
  br label %omp.inner.for.cond, !dbg !74, !llvm.loop !75

omp.inner.for.end:                                ; preds = %omp.inner.for.cond
  br label %omp.loop.exit, !dbg !74

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %27 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !74
  store i8* getelementptr inbounds ([49 x i8], [49 x i8]* @2, i32 0, i32 0), i8** %27, align 8, !dbg !74
  %28 = load i32*, i32** %.global_tid..addr, align 8, !dbg !74
  %29 = load i32, i32* %28, align 4, !dbg !74
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %29), !dbg !74
  br label %omp.precond.end, !dbg !74

omp.precond.end:                                  ; preds = %omp.loop.exit, %entry
  ret void, !dbg !68
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %N, double** dereferenceable(8) %b, double** dereferenceable(8) %a) #2 !dbg !77 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %N.addr = alloca i32*, align 8
  %b.addr = alloca double**, align 8
  %a.addr = alloca double**, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !78, metadata !DIExpression()), !dbg !79
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !80, metadata !DIExpression()), !dbg !79
  store i32* %N, i32** %N.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %N.addr, metadata !81, metadata !DIExpression()), !dbg !79
  store double** %b, double*** %b.addr, align 8
  call void @llvm.dbg.declare(metadata double*** %b.addr, metadata !82, metadata !DIExpression()), !dbg !79
  store double** %a, double*** %a.addr, align 8
  call void @llvm.dbg.declare(metadata double*** %a.addr, metadata !83, metadata !DIExpression()), !dbg !79
  %0 = load i32*, i32** %N.addr, align 8, !dbg !84
  %1 = load double**, double*** %b.addr, align 8, !dbg !84
  %2 = load double**, double*** %a.addr, align 8, !dbg !84
  %3 = load i32*, i32** %.global_tid..addr, align 8, !dbg !84
  %4 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !84
  %5 = load i32*, i32** %N.addr, align 8, !dbg !84
  %6 = load double**, double*** %b.addr, align 8, !dbg !84
  %7 = load double**, double*** %a.addr, align 8, !dbg !84
  call void @.omp_outlined._debug__(i32* %3, i32* %4, i32* %5, double** %6, double** %7) #4, !dbg !84
  ret void, !dbg !84
}

declare !callback !85 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @__omp_offloading_10307_2ec417c_foo_l53(i64 %N, double* %b, double* %a) #2 !dbg !87 {
entry:
  %N.addr = alloca i64, align 8
  %b.addr = alloca double*, align 8
  %a.addr = alloca double*, align 8
  store i64 %N, i64* %N.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %N.addr, metadata !91, metadata !DIExpression()), !dbg !92
  store double* %b, double** %b.addr, align 8
  call void @llvm.dbg.declare(metadata double** %b.addr, metadata !93, metadata !DIExpression()), !dbg !92
  store double* %a, double** %a.addr, align 8
  call void @llvm.dbg.declare(metadata double** %a.addr, metadata !94, metadata !DIExpression()), !dbg !92
  %conv = bitcast i64* %N.addr to i32*, !dbg !95
  %0 = load i32, i32* %conv, align 8, !dbg !95
  %1 = load double*, double** %b.addr, align 8, !dbg !95
  %2 = load double*, double** %a.addr, align 8, !dbg !95
  call void @__omp_offloading_10307_2ec417c_foo_l53_debug__(i32 %0, double* %1, double* %2) #4, !dbg !95
  ret void, !dbg !95
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !dbg !96 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %len = alloca i32, align 4
  %saved_stack = alloca i8*, align 8
  %__vla_expr0 = alloca i64, align 8
  %__vla_expr1 = alloca i64, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %argc.addr, metadata !102, metadata !DIExpression()), !dbg !103
  store i8** %argv, i8*** %argv.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %argv.addr, metadata !104, metadata !DIExpression()), !dbg !105
  call void @llvm.dbg.declare(metadata i32* %i, metadata !106, metadata !DIExpression()), !dbg !107
  call void @llvm.dbg.declare(metadata i32* %len, metadata !108, metadata !DIExpression()), !dbg !109
  store i32 1000, i32* %len, align 4, !dbg !109
  %0 = load i32, i32* %len, align 4, !dbg !110
  %1 = zext i32 %0 to i64, !dbg !111
  %2 = call i8* @llvm.stacksave(), !dbg !111
  store i8* %2, i8** %saved_stack, align 8, !dbg !111
  %vla = alloca double, i64 %1, align 16, !dbg !111
  store i64 %1, i64* %__vla_expr0, align 8, !dbg !111
  call void @llvm.dbg.declare(metadata i64* %__vla_expr0, metadata !112, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.declare(metadata double* %vla, metadata !114, metadata !DIExpression()), !dbg !118
  %3 = load i32, i32* %len, align 4, !dbg !119
  %4 = zext i32 %3 to i64, !dbg !111
  %vla1 = alloca double, i64 %4, align 16, !dbg !111
  store i64 %4, i64* %__vla_expr1, align 8, !dbg !111
  call void @llvm.dbg.declare(metadata i64* %__vla_expr1, metadata !120, metadata !DIExpression()), !dbg !113
  call void @llvm.dbg.declare(metadata double* %vla1, metadata !121, metadata !DIExpression()), !dbg !125
  store i32 0, i32* %i, align 4, !dbg !126
  br label %for.cond, !dbg !128

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %i, align 4, !dbg !129
  %6 = load i32, i32* %len, align 4, !dbg !131
  %cmp = icmp slt i32 %5, %6, !dbg !132
  br i1 %cmp, label %for.body, label %for.end, !dbg !133

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4, !dbg !134
  %conv = sitofp i32 %7 to double, !dbg !136
  %div = fdiv double %conv, 2.000000e+00, !dbg !137
  %8 = load i32, i32* %i, align 4, !dbg !138
  %idxprom = sext i32 %8 to i64, !dbg !139
  %arrayidx = getelementptr inbounds double, double* %vla, i64 %idxprom, !dbg !139
  store double %div, double* %arrayidx, align 8, !dbg !140
  %9 = load i32, i32* %i, align 4, !dbg !141
  %idxprom2 = sext i32 %9 to i64, !dbg !142
  %arrayidx3 = getelementptr inbounds double, double* %vla1, i64 %idxprom2, !dbg !142
  store double 0.000000e+00, double* %arrayidx3, align 8, !dbg !143
  br label %for.inc, !dbg !144

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4, !dbg !145
  %inc = add nsw i32 %10, 1, !dbg !145
  store i32 %inc, i32* %i, align 4, !dbg !145
  br label %for.cond, !dbg !146, !llvm.loop !147

for.end:                                          ; preds = %for.cond
  %11 = load i32, i32* %len, align 4, !dbg !149
  call void @foo(double* %vla, double* %vla1, i32 %11), !dbg !150
  %arrayidx4 = getelementptr inbounds double, double* %vla1, i64 50, !dbg !151
  %12 = load double, double* %arrayidx4, align 16, !dbg !151
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), double %12), !dbg !152
  store i32 0, i32* %retval, align 4, !dbg !153
  %13 = load i8*, i8** %saved_stack, align 8, !dbg !154
  call void @llvm.stackrestore(i8* %13), !dbg !154
  %14 = load i32, i32* %retval, align 4, !dbg !154
  ret i32 %14, !dbg !154
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #4

declare dso_local i32 @printf(i8*, ...) #5

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #4

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noinline norecurse nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.1 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "DRB099-targetparallelfor2-orig-no.c", directory: "/home/yanze/code/OpenRace/tests/data/integration/dataracebench")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!5 = !{i32 7, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 10.0.1 "}
!9 = distinct !DISubprogram(name: "foo", scope: !1, file: !1, line: 50, type: !10, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!10 = !DISubroutineType(types: !11)
!11 = !{null, !12, !12, !13}
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!13 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!14 = !DILocalVariable(name: "a", arg: 1, scope: !9, file: !1, line: 50, type: !12)
!15 = !DILocation(line: 50, column: 19, scope: !9)
!16 = !DILocalVariable(name: "b", arg: 2, scope: !9, file: !1, line: 50, type: !12)
!17 = !DILocation(line: 50, column: 30, scope: !9)
!18 = !DILocalVariable(name: "N", arg: 3, scope: !9, file: !1, line: 50, type: !13)
!19 = !DILocation(line: 50, column: 37, scope: !9)
!20 = !DILocalVariable(name: "i", scope: !9, file: !1, line: 52, type: !13)
!21 = !DILocation(line: 52, column: 7, scope: !9)
!22 = !DILocation(line: 53, column: 1, scope: !9)
!23 = !DILocation(line: 53, column: 1, scope: !24)
!24 = distinct !DILexicalBlock(scope: !9, file: !1, line: 53, column: 1)
!25 = !DILocation(line: 57, column: 1, scope: !9)
!26 = distinct !DISubprogram(name: "__omp_offloading_10307_2ec417c_foo_l53_debug__", scope: !1, file: !1, line: 54, type: !27, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!27 = !DISubroutineType(types: !28)
!28 = !{null, !13, !12, !12}
!29 = !DILocalVariable(name: "N", arg: 1, scope: !26, file: !1, line: 50, type: !13)
!30 = !DILocation(line: 50, column: 37, scope: !26)
!31 = !DILocalVariable(name: "b", arg: 2, scope: !26, file: !1, line: 50, type: !12)
!32 = !DILocation(line: 50, column: 30, scope: !26)
!33 = !DILocalVariable(name: "a", arg: 3, scope: !26, file: !1, line: 50, type: !12)
!34 = !DILocation(line: 50, column: 19, scope: !26)
!35 = !DILocation(line: 54, column: 1, scope: !26)
!36 = !DILocation(line: 54, column: 25, scope: !26)
!37 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 55, type: !38, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!38 = !DISubroutineType(types: !39)
!39 = !{null, !40, !40, !44, !45, !45}
!40 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !41)
!41 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !42)
!42 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !43, size: 64)
!43 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !13)
!44 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !13, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !12, size: 64)
!46 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !37, type: !40, flags: DIFlagArtificial)
!47 = !DILocation(line: 0, scope: !37)
!48 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !37, type: !40, flags: DIFlagArtificial)
!49 = !DILocalVariable(name: "N", arg: 3, scope: !37, file: !1, line: 50, type: !44)
!50 = !DILocation(line: 50, column: 37, scope: !37)
!51 = !DILocalVariable(name: "b", arg: 4, scope: !37, file: !1, line: 50, type: !45)
!52 = !DILocation(line: 50, column: 30, scope: !37)
!53 = !DILocalVariable(name: "a", arg: 5, scope: !37, file: !1, line: 50, type: !45)
!54 = !DILocation(line: 50, column: 19, scope: !37)
!55 = !DILocation(line: 55, column: 3, scope: !37)
!56 = !DILocalVariable(name: ".omp.iv", scope: !37, type: !13, flags: DIFlagArtificial)
!57 = !DILocalVariable(name: ".capture_expr.", scope: !37, type: !13, flags: DIFlagArtificial)
!58 = !DILocation(line: 55, column: 15, scope: !37)
!59 = !DILocalVariable(name: "i", scope: !37, type: !13, flags: DIFlagArtificial)
!60 = !DILocation(line: 55, column: 18, scope: !37)
!61 = !DILocalVariable(name: ".omp.lb", scope: !37, type: !13, flags: DIFlagArtificial)
!62 = !DILocation(line: 55, column: 8, scope: !37)
!63 = !DILocalVariable(name: ".omp.ub", scope: !37, type: !13, flags: DIFlagArtificial)
!64 = !DILocalVariable(name: ".omp.stride", scope: !37, type: !13, flags: DIFlagArtificial)
!65 = !DILocalVariable(name: ".omp.is_last", scope: !37, type: !13, flags: DIFlagArtificial)
!66 = !DILocation(line: 56, column: 10, scope: !37)
!67 = !DILocation(line: 56, column: 12, scope: !37)
!68 = !DILocation(line: 56, column: 23, scope: !37)
!69 = !DILocation(line: 56, column: 15, scope: !37)
!70 = !DILocation(line: 56, column: 14, scope: !37)
!71 = !DILocation(line: 56, column: 5, scope: !37)
!72 = !DILocation(line: 56, column: 7, scope: !37)
!73 = !DILocation(line: 56, column: 9, scope: !37)
!74 = !DILocation(line: 54, column: 1, scope: !37)
!75 = distinct !{!75, !74, !76}
!76 = !DILocation(line: 54, column: 25, scope: !37)
!77 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 55, type: !38, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!78 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !77, type: !40, flags: DIFlagArtificial)
!79 = !DILocation(line: 0, scope: !77)
!80 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !77, type: !40, flags: DIFlagArtificial)
!81 = !DILocalVariable(name: "N", arg: 3, scope: !77, type: !44, flags: DIFlagArtificial)
!82 = !DILocalVariable(name: "b", arg: 4, scope: !77, type: !45, flags: DIFlagArtificial)
!83 = !DILocalVariable(name: "a", arg: 5, scope: !77, type: !45, flags: DIFlagArtificial)
!84 = !DILocation(line: 55, column: 3, scope: !77)
!85 = !{!86}
!86 = !{i64 2, i64 -1, i64 -1, i1 true}
!87 = distinct !DISubprogram(name: "__omp_offloading_10307_2ec417c_foo_l53", scope: !1, file: !1, line: 54, type: !88, scopeLine: 54, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!88 = !DISubroutineType(types: !89)
!89 = !{null, !90, !12, !12}
!90 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!91 = !DILocalVariable(name: "N", arg: 1, scope: !87, type: !90, flags: DIFlagArtificial)
!92 = !DILocation(line: 0, scope: !87)
!93 = !DILocalVariable(name: "b", arg: 2, scope: !87, type: !12, flags: DIFlagArtificial)
!94 = !DILocalVariable(name: "a", arg: 3, scope: !87, type: !12, flags: DIFlagArtificial)
!95 = !DILocation(line: 54, column: 1, scope: !87)
!96 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 59, type: !97, scopeLine: 60, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!97 = !DISubroutineType(types: !98)
!98 = !{!13, !13, !99}
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!101 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!102 = !DILocalVariable(name: "argc", arg: 1, scope: !96, file: !1, line: 59, type: !13)
!103 = !DILocation(line: 59, column: 14, scope: !96)
!104 = !DILocalVariable(name: "argv", arg: 2, scope: !96, file: !1, line: 59, type: !99)
!105 = !DILocation(line: 59, column: 26, scope: !96)
!106 = !DILocalVariable(name: "i", scope: !96, file: !1, line: 61, type: !13)
!107 = !DILocation(line: 61, column: 7, scope: !96)
!108 = !DILocalVariable(name: "len", scope: !96, file: !1, line: 62, type: !13)
!109 = !DILocation(line: 62, column: 7, scope: !96)
!110 = !DILocation(line: 63, column: 12, scope: !96)
!111 = !DILocation(line: 63, column: 3, scope: !96)
!112 = !DILocalVariable(name: "__vla_expr0", scope: !96, type: !90, flags: DIFlagArtificial)
!113 = !DILocation(line: 0, scope: !96)
!114 = !DILocalVariable(name: "a", scope: !96, file: !1, line: 63, type: !115)
!115 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !116)
!116 = !{!117}
!117 = !DISubrange(count: !112)
!118 = !DILocation(line: 63, column: 10, scope: !96)
!119 = !DILocation(line: 63, column: 20, scope: !96)
!120 = !DILocalVariable(name: "__vla_expr1", scope: !96, type: !90, flags: DIFlagArtificial)
!121 = !DILocalVariable(name: "b", scope: !96, file: !1, line: 63, type: !122)
!122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !123)
!123 = !{!124}
!124 = !DISubrange(count: !120)
!125 = !DILocation(line: 63, column: 18, scope: !96)
!126 = !DILocation(line: 64, column: 9, scope: !127)
!127 = distinct !DILexicalBlock(scope: !96, file: !1, line: 64, column: 3)
!128 = !DILocation(line: 64, column: 8, scope: !127)
!129 = !DILocation(line: 64, column: 13, scope: !130)
!130 = distinct !DILexicalBlock(scope: !127, file: !1, line: 64, column: 3)
!131 = !DILocation(line: 64, column: 15, scope: !130)
!132 = !DILocation(line: 64, column: 14, scope: !130)
!133 = !DILocation(line: 64, column: 3, scope: !127)
!134 = !DILocation(line: 66, column: 20, scope: !135)
!135 = distinct !DILexicalBlock(scope: !130, file: !1, line: 65, column: 3)
!136 = !DILocation(line: 66, column: 12, scope: !135)
!137 = !DILocation(line: 66, column: 22, scope: !135)
!138 = !DILocation(line: 66, column: 7, scope: !135)
!139 = !DILocation(line: 66, column: 5, scope: !135)
!140 = !DILocation(line: 66, column: 9, scope: !135)
!141 = !DILocation(line: 67, column: 7, scope: !135)
!142 = !DILocation(line: 67, column: 5, scope: !135)
!143 = !DILocation(line: 67, column: 9, scope: !135)
!144 = !DILocation(line: 68, column: 3, scope: !135)
!145 = !DILocation(line: 64, column: 21, scope: !130)
!146 = !DILocation(line: 64, column: 3, scope: !130)
!147 = distinct !{!147, !133, !148}
!148 = !DILocation(line: 68, column: 3, scope: !127)
!149 = !DILocation(line: 70, column: 13, scope: !96)
!150 = !DILocation(line: 70, column: 3, scope: !96)
!151 = !DILocation(line: 72, column: 23, scope: !96)
!152 = !DILocation(line: 72, column: 3, scope: !96)
!153 = !DILocation(line: 73, column: 3, scope: !96)
!154 = !DILocation(line: 74, column: 1, scope: !96)
