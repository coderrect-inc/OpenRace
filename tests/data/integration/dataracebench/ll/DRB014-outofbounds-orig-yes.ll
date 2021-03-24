; ModuleID = 'DRB014-outofbounds-orig-yes.c'
source_filename = "DRB014-outofbounds-orig-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [43 x i8] c";DRB014-outofbounds-orig-yes.c;main;72;1;;\00", align 1
@2 = private unnamed_addr constant [44 x i8] c";DRB014-outofbounds-orig-yes.c;main;72;36;;\00", align 1
@3 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"b[50][50]=%f\0A\00", align 1

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
  %saved_stack = alloca i8*, align 8
  %__vla_expr0 = alloca i64, align 8
  %__vla_expr1 = alloca i64, align 8
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
  store i32 100, i32* %n, align 4, !dbg !23
  call void @llvm.dbg.declare(metadata i32* %m, metadata !24, metadata !DIExpression()), !dbg !25
  store i32 100, i32* %m, align 4, !dbg !25
  %2 = load i32, i32* %n, align 4, !dbg !26
  %3 = zext i32 %2 to i64, !dbg !27
  %4 = load i32, i32* %m, align 4, !dbg !28
  %5 = zext i32 %4 to i64, !dbg !27
  %6 = call i8* @llvm.stacksave(), !dbg !27
  store i8* %6, i8** %saved_stack, align 8, !dbg !27
  %7 = mul nuw i64 %3, %5, !dbg !27
  %vla = alloca double, i64 %7, align 16, !dbg !27
  store i64 %3, i64* %__vla_expr0, align 8, !dbg !27
  store i64 %5, i64* %__vla_expr1, align 8, !dbg !27
  call void @llvm.dbg.declare(metadata i64* %__vla_expr0, metadata !29, metadata !DIExpression()), !dbg !31
  call void @llvm.dbg.declare(metadata i64* %__vla_expr1, metadata !32, metadata !DIExpression()), !dbg !31
  call void @llvm.dbg.declare(metadata double* %vla, metadata !33, metadata !DIExpression()), !dbg !39
  %8 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !40
  store i8* getelementptr inbounds ([43 x i8], [43 x i8]* @1, i32 0, i32 0), i8** %8, align 8, !dbg !40
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 5, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*, i64, i64, double*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %n, i32* %m, i64 %3, i64 %5, double* %vla), !dbg !40
  %9 = mul nsw i64 50, %5, !dbg !41
  %arrayidx = getelementptr inbounds double, double* %vla, i64 %9, !dbg !41
  %arrayidx1 = getelementptr inbounds double, double* %arrayidx, i64 50, !dbg !41
  %10 = load double, double* %arrayidx1, align 8, !dbg !41
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), double %10), !dbg !42
  store i32 0, i32* %retval, align 4, !dbg !43
  %11 = load i8*, i8** %saved_stack, align 8, !dbg !44
  call void @llvm.stackrestore(i8* %11), !dbg !44
  %12 = load i32, i32* %retval, align 4, !dbg !44
  ret i32 %12, !dbg !44
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %n, i32* dereferenceable(4) %m, i64 %vla, i64 %vla1, double* dereferenceable(8) %b) #3 !dbg !45 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %n.addr = alloca i32*, align 8
  %m.addr = alloca i32*, align 8
  %vla.addr = alloca i64, align 8
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
  %j = alloca i32, align 4
  %i6 = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !54, metadata !DIExpression()), !dbg !55
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !56, metadata !DIExpression()), !dbg !55
  store i32* %n, i32** %n.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %n.addr, metadata !57, metadata !DIExpression()), !dbg !58
  store i32* %m, i32** %m.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %m.addr, metadata !59, metadata !DIExpression()), !dbg !60
  store i64 %vla, i64* %vla.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %vla.addr, metadata !61, metadata !DIExpression()), !dbg !55
  store i64 %vla1, i64* %vla.addr2, align 8
  call void @llvm.dbg.declare(metadata i64* %vla.addr2, metadata !62, metadata !DIExpression()), !dbg !55
  store double* %b, double** %b.addr, align 8
  call void @llvm.dbg.declare(metadata double** %b.addr, metadata !63, metadata !DIExpression()), !dbg !64
  %2 = load i32*, i32** %n.addr, align 8, !dbg !65
  %3 = load i32*, i32** %m.addr, align 8, !dbg !65
  %4 = load i64, i64* %vla.addr, align 8, !dbg !65
  %5 = load i64, i64* %vla.addr2, align 8, !dbg !65
  %6 = load double*, double** %b.addr, align 8, !dbg !65
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !66, metadata !DIExpression()), !dbg !55
  call void @llvm.dbg.declare(metadata i32* %.capture_expr., metadata !67, metadata !DIExpression()), !dbg !55
  %7 = load i32, i32* %2, align 4, !dbg !68
  store i32 %7, i32* %.capture_expr., align 4, !dbg !68
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.3, metadata !67, metadata !DIExpression()), !dbg !55
  %8 = load i32, i32* %.capture_expr., align 4, !dbg !68
  %sub = sub nsw i32 %8, 1, !dbg !65
  %sub4 = sub nsw i32 %sub, 1, !dbg !65
  %add = add nsw i32 %sub4, 1, !dbg !65
  %div = sdiv i32 %add, 1, !dbg !65
  %sub5 = sub nsw i32 %div, 1, !dbg !65
  store i32 %sub5, i32* %.capture_expr.3, align 4, !dbg !65
  call void @llvm.dbg.declare(metadata i32* %i, metadata !69, metadata !DIExpression()), !dbg !55
  store i32 1, i32* %i, align 4, !dbg !70
  %9 = load i32, i32* %.capture_expr., align 4, !dbg !68
  %cmp = icmp slt i32 1, %9, !dbg !65
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end, !dbg !65

omp.precond.then:                                 ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !71, metadata !DIExpression()), !dbg !55
  store i32 0, i32* %.omp.lb, align 4, !dbg !72
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !73, metadata !DIExpression()), !dbg !55
  %10 = load i32, i32* %.capture_expr.3, align 4, !dbg !65
  store i32 %10, i32* %.omp.ub, align 4, !dbg !72
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !74, metadata !DIExpression()), !dbg !55
  store i32 1, i32* %.omp.stride, align 4, !dbg !72
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !75, metadata !DIExpression()), !dbg !55
  store i32 0, i32* %.omp.is_last, align 4, !dbg !72
  call void @llvm.dbg.declare(metadata i32* %j, metadata !76, metadata !DIExpression()), !dbg !55
  call void @llvm.dbg.declare(metadata i32* %i6, metadata !69, metadata !DIExpression()), !dbg !55
  %11 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !65
  store i8* getelementptr inbounds ([43 x i8], [43 x i8]* @1, i32 0, i32 0), i8** %11, align 8, !dbg !65
  %12 = load i32*, i32** %.global_tid..addr, align 8, !dbg !65
  %13 = load i32, i32* %12, align 4, !dbg !65
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %13, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !65
  %14 = load i32, i32* %.omp.ub, align 4, !dbg !72
  %15 = load i32, i32* %.capture_expr.3, align 4, !dbg !65
  %cmp7 = icmp sgt i32 %14, %15, !dbg !72
  br i1 %cmp7, label %cond.true, label %cond.false, !dbg !72

cond.true:                                        ; preds = %omp.precond.then
  %16 = load i32, i32* %.capture_expr.3, align 4, !dbg !65
  br label %cond.end, !dbg !72

cond.false:                                       ; preds = %omp.precond.then
  %17 = load i32, i32* %.omp.ub, align 4, !dbg !72
  br label %cond.end, !dbg !72

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %16, %cond.true ], [ %17, %cond.false ], !dbg !72
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !72
  %18 = load i32, i32* %.omp.lb, align 4, !dbg !72
  store i32 %18, i32* %.omp.iv, align 4, !dbg !72
  br label %omp.inner.for.cond, !dbg !65

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %19 = load i32, i32* %.omp.iv, align 4, !dbg !72
  %20 = load i32, i32* %.omp.ub, align 4, !dbg !72
  %cmp8 = icmp sle i32 %19, %20, !dbg !65
  br i1 %cmp8, label %omp.inner.for.body, label %omp.inner.for.end, !dbg !65

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %21 = load i32, i32* %.omp.iv, align 4, !dbg !72
  %mul = mul nsw i32 %21, 1, !dbg !70
  %add9 = add nsw i32 1, %mul, !dbg !70
  store i32 %add9, i32* %i6, align 4, !dbg !70
  store i32 0, i32* %j, align 4, !dbg !77
  br label %for.cond, !dbg !79

for.cond:                                         ; preds = %for.inc, %omp.inner.for.body
  %22 = load i32, i32* %j, align 4, !dbg !80
  %23 = load i32, i32* %3, align 4, !dbg !82
  %cmp10 = icmp slt i32 %22, %23, !dbg !83
  br i1 %cmp10, label %for.body, label %for.end, !dbg !84

for.body:                                         ; preds = %for.cond
  %24 = load i32, i32* %i6, align 4, !dbg !85
  %idxprom = sext i32 %24 to i64, !dbg !86
  %25 = mul nsw i64 %idxprom, %5, !dbg !86
  %arrayidx = getelementptr inbounds double, double* %6, i64 %25, !dbg !86
  %26 = load i32, i32* %j, align 4, !dbg !87
  %sub11 = sub nsw i32 %26, 1, !dbg !88
  %idxprom12 = sext i32 %sub11 to i64, !dbg !86
  %arrayidx13 = getelementptr inbounds double, double* %arrayidx, i64 %idxprom12, !dbg !86
  %27 = load double, double* %arrayidx13, align 8, !dbg !86
  %28 = load i32, i32* %i6, align 4, !dbg !89
  %idxprom14 = sext i32 %28 to i64, !dbg !90
  %29 = mul nsw i64 %idxprom14, %5, !dbg !90
  %arrayidx15 = getelementptr inbounds double, double* %6, i64 %29, !dbg !90
  %30 = load i32, i32* %j, align 4, !dbg !91
  %idxprom16 = sext i32 %30 to i64, !dbg !90
  %arrayidx17 = getelementptr inbounds double, double* %arrayidx15, i64 %idxprom16, !dbg !90
  store double %27, double* %arrayidx17, align 8, !dbg !92
  br label %for.inc, !dbg !90

for.inc:                                          ; preds = %for.body
  %31 = load i32, i32* %j, align 4, !dbg !93
  %inc = add nsw i32 %31, 1, !dbg !93
  store i32 %inc, i32* %j, align 4, !dbg !93
  br label %for.cond, !dbg !94, !llvm.loop !95

for.end:                                          ; preds = %for.cond
  br label %omp.body.continue, !dbg !96

omp.body.continue:                                ; preds = %for.end
  br label %omp.inner.for.inc, !dbg !97

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %32 = load i32, i32* %.omp.iv, align 4, !dbg !72
  %add18 = add nsw i32 %32, 1, !dbg !65
  store i32 %add18, i32* %.omp.iv, align 4, !dbg !65
  br label %omp.inner.for.cond, !dbg !97, !llvm.loop !98

omp.inner.for.end:                                ; preds = %omp.inner.for.cond
  br label %omp.loop.exit, !dbg !97

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %33 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !97
  store i8* getelementptr inbounds ([44 x i8], [44 x i8]* @2, i32 0, i32 0), i8** %33, align 8, !dbg !97
  %34 = load i32*, i32** %.global_tid..addr, align 8, !dbg !97
  %35 = load i32, i32* %34, align 4, !dbg !97
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %35), !dbg !97
  br label %omp.precond.end, !dbg !97

omp.precond.end:                                  ; preds = %omp.loop.exit, %entry
  ret void, !dbg !100
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %n, i32* dereferenceable(4) %m, i64 %vla, i64 %vla1, double* dereferenceable(8) %b) #3 !dbg !101 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %n.addr = alloca i32*, align 8
  %m.addr = alloca i32*, align 8
  %vla.addr = alloca i64, align 8
  %vla.addr2 = alloca i64, align 8
  %b.addr = alloca double*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !102, metadata !DIExpression()), !dbg !103
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !104, metadata !DIExpression()), !dbg !103
  store i32* %n, i32** %n.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %n.addr, metadata !105, metadata !DIExpression()), !dbg !103
  store i32* %m, i32** %m.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %m.addr, metadata !106, metadata !DIExpression()), !dbg !103
  store i64 %vla, i64* %vla.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %vla.addr, metadata !107, metadata !DIExpression()), !dbg !103
  store i64 %vla1, i64* %vla.addr2, align 8
  call void @llvm.dbg.declare(metadata i64* %vla.addr2, metadata !108, metadata !DIExpression()), !dbg !103
  store double* %b, double** %b.addr, align 8
  call void @llvm.dbg.declare(metadata double** %b.addr, metadata !109, metadata !DIExpression()), !dbg !103
  %0 = load i32*, i32** %n.addr, align 8, !dbg !110
  %1 = load i32*, i32** %m.addr, align 8, !dbg !110
  %2 = load i64, i64* %vla.addr, align 8, !dbg !110
  %3 = load i64, i64* %vla.addr2, align 8, !dbg !110
  %4 = load double*, double** %b.addr, align 8, !dbg !110
  %5 = load i32*, i32** %.global_tid..addr, align 8, !dbg !110
  %6 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !110
  %7 = load i32*, i32** %n.addr, align 8, !dbg !110
  %8 = load i32*, i32** %m.addr, align 8, !dbg !110
  %9 = load double*, double** %b.addr, align 8, !dbg !110
  call void @.omp_outlined._debug__(i32* %5, i32* %6, i32* %7, i32* %8, i64 %2, i64 %3, double* %9) #2, !dbg !110
  ret void, !dbg !110
}

declare !callback !111 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

declare dso_local i32 @printf(i8*, ...) #5

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { nounwind }
attributes #3 = { noinline norecurse nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind willreturn }
attributes #5 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.1 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "DRB014-outofbounds-orig-yes.c", directory: "/home/yanze/code/OpenRace/tests/data/integration/dataracebench")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.1 "}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 67, type: !8, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !10, !11}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!14 = !DILocalVariable(name: "argc", arg: 1, scope: !7, file: !1, line: 67, type: !10)
!15 = !DILocation(line: 67, column: 14, scope: !7)
!16 = !DILocalVariable(name: "argv", arg: 2, scope: !7, file: !1, line: 67, type: !11)
!17 = !DILocation(line: 67, column: 26, scope: !7)
!18 = !DILocalVariable(name: "i", scope: !7, file: !1, line: 69, type: !10)
!19 = !DILocation(line: 69, column: 7, scope: !7)
!20 = !DILocalVariable(name: "j", scope: !7, file: !1, line: 69, type: !10)
!21 = !DILocation(line: 69, column: 9, scope: !7)
!22 = !DILocalVariable(name: "n", scope: !7, file: !1, line: 70, type: !10)
!23 = !DILocation(line: 70, column: 7, scope: !7)
!24 = !DILocalVariable(name: "m", scope: !7, file: !1, line: 70, type: !10)
!25 = !DILocation(line: 70, column: 14, scope: !7)
!26 = !DILocation(line: 71, column: 12, scope: !7)
!27 = !DILocation(line: 71, column: 3, scope: !7)
!28 = !DILocation(line: 71, column: 15, scope: !7)
!29 = !DILocalVariable(name: "__vla_expr0", scope: !7, type: !30, flags: DIFlagArtificial)
!30 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!31 = !DILocation(line: 0, scope: !7)
!32 = !DILocalVariable(name: "__vla_expr1", scope: !7, type: !30, flags: DIFlagArtificial)
!33 = !DILocalVariable(name: "b", scope: !7, file: !1, line: 71, type: !34)
!34 = !DICompositeType(tag: DW_TAG_array_type, baseType: !35, elements: !36)
!35 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!36 = !{!37, !38}
!37 = !DISubrange(count: !29)
!38 = !DISubrange(count: !32)
!39 = !DILocation(line: 71, column: 10, scope: !7)
!40 = !DILocation(line: 72, column: 1, scope: !7)
!41 = !DILocation(line: 77, column: 28, scope: !7)
!42 = !DILocation(line: 77, column: 3, scope: !7)
!43 = !DILocation(line: 79, column: 3, scope: !7)
!44 = !DILocation(line: 80, column: 1, scope: !7)
!45 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 73, type: !46, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!46 = !DISubroutineType(types: !47)
!47 = !{null, !48, !48, !52, !52, !30, !30, !53}
!48 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !49)
!49 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !50)
!50 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !51, size: 64)
!51 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!52 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !10, size: 64)
!53 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !35, size: 64)
!54 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !45, type: !48, flags: DIFlagArtificial)
!55 = !DILocation(line: 0, scope: !45)
!56 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !45, type: !48, flags: DIFlagArtificial)
!57 = !DILocalVariable(name: "n", arg: 3, scope: !45, file: !1, line: 70, type: !52)
!58 = !DILocation(line: 70, column: 7, scope: !45)
!59 = !DILocalVariable(name: "m", arg: 4, scope: !45, file: !1, line: 70, type: !52)
!60 = !DILocation(line: 70, column: 14, scope: !45)
!61 = !DILocalVariable(name: "vla", arg: 5, scope: !45, type: !30, flags: DIFlagArtificial)
!62 = !DILocalVariable(name: "vla", arg: 6, scope: !45, type: !30, flags: DIFlagArtificial)
!63 = !DILocalVariable(name: "b", arg: 7, scope: !45, file: !1, line: 71, type: !53)
!64 = !DILocation(line: 71, column: 10, scope: !45)
!65 = !DILocation(line: 73, column: 3, scope: !45)
!66 = !DILocalVariable(name: ".omp.iv", scope: !45, type: !10, flags: DIFlagArtificial)
!67 = !DILocalVariable(name: ".capture_expr.", scope: !45, type: !10, flags: DIFlagArtificial)
!68 = !DILocation(line: 73, column: 14, scope: !45)
!69 = !DILocalVariable(name: "i", scope: !45, type: !10, flags: DIFlagArtificial)
!70 = !DILocation(line: 73, column: 16, scope: !45)
!71 = !DILocalVariable(name: ".omp.lb", scope: !45, type: !10, flags: DIFlagArtificial)
!72 = !DILocation(line: 73, column: 8, scope: !45)
!73 = !DILocalVariable(name: ".omp.ub", scope: !45, type: !10, flags: DIFlagArtificial)
!74 = !DILocalVariable(name: ".omp.stride", scope: !45, type: !10, flags: DIFlagArtificial)
!75 = !DILocalVariable(name: ".omp.is_last", scope: !45, type: !10, flags: DIFlagArtificial)
!76 = !DILocalVariable(name: "j", scope: !45, type: !10, flags: DIFlagArtificial)
!77 = !DILocation(line: 74, column: 11, scope: !78)
!78 = distinct !DILexicalBlock(scope: !45, file: !1, line: 74, column: 5)
!79 = !DILocation(line: 74, column: 10, scope: !78)
!80 = !DILocation(line: 74, column: 14, scope: !81)
!81 = distinct !DILexicalBlock(scope: !78, file: !1, line: 74, column: 5)
!82 = !DILocation(line: 74, column: 16, scope: !81)
!83 = !DILocation(line: 74, column: 15, scope: !81)
!84 = !DILocation(line: 74, column: 5, scope: !78)
!85 = !DILocation(line: 75, column: 17, scope: !81)
!86 = !DILocation(line: 75, column: 15, scope: !81)
!87 = !DILocation(line: 75, column: 20, scope: !81)
!88 = !DILocation(line: 75, column: 21, scope: !81)
!89 = !DILocation(line: 75, column: 9, scope: !81)
!90 = !DILocation(line: 75, column: 7, scope: !81)
!91 = !DILocation(line: 75, column: 12, scope: !81)
!92 = !DILocation(line: 75, column: 14, scope: !81)
!93 = !DILocation(line: 74, column: 19, scope: !81)
!94 = !DILocation(line: 74, column: 5, scope: !81)
!95 = distinct !{!95, !84, !96}
!96 = !DILocation(line: 75, column: 23, scope: !78)
!97 = !DILocation(line: 72, column: 1, scope: !45)
!98 = distinct !{!98, !97, !99}
!99 = !DILocation(line: 72, column: 36, scope: !45)
!100 = !DILocation(line: 75, column: 23, scope: !45)
!101 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 73, type: !46, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!102 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !101, type: !48, flags: DIFlagArtificial)
!103 = !DILocation(line: 0, scope: !101)
!104 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !101, type: !48, flags: DIFlagArtificial)
!105 = !DILocalVariable(name: "n", arg: 3, scope: !101, type: !52, flags: DIFlagArtificial)
!106 = !DILocalVariable(name: "m", arg: 4, scope: !101, type: !52, flags: DIFlagArtificial)
!107 = !DILocalVariable(name: "vla", arg: 5, scope: !101, type: !30, flags: DIFlagArtificial)
!108 = !DILocalVariable(name: "vla", arg: 6, scope: !101, type: !30, flags: DIFlagArtificial)
!109 = !DILocalVariable(name: "b", arg: 7, scope: !101, type: !53, flags: DIFlagArtificial)
!110 = !DILocation(line: 73, column: 3, scope: !101)
!111 = !{!112}
!112 = !{i64 2, i64 -1, i64 -1, i1 true}
