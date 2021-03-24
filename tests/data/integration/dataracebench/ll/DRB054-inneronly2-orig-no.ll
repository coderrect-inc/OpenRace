; ModuleID = 'DRB054-inneronly2-orig-no.c'
source_filename = "DRB054-inneronly2-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [41 x i8] c";DRB054-inneronly2-orig-no.c;main;62;1;;\00", align 1
@2 = private unnamed_addr constant [42 x i8] c";DRB054-inneronly2-orig-no.c;main;62;25;;\00", align 1
@3 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !9 {
entry:
  %retval = alloca i32, align 4
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
  call void @llvm.dbg.declare(metadata i32* %i, metadata !13, metadata !DIExpression()), !dbg !14
  call void @llvm.dbg.declare(metadata i32* %j, metadata !15, metadata !DIExpression()), !dbg !16
  call void @llvm.dbg.declare(metadata i32* %n, metadata !17, metadata !DIExpression()), !dbg !18
  store i32 100, i32* %n, align 4, !dbg !18
  call void @llvm.dbg.declare(metadata i32* %m, metadata !19, metadata !DIExpression()), !dbg !20
  store i32 100, i32* %m, align 4, !dbg !20
  %2 = load i32, i32* %n, align 4, !dbg !21
  %3 = zext i32 %2 to i64, !dbg !22
  %4 = load i32, i32* %m, align 4, !dbg !23
  %5 = zext i32 %4 to i64, !dbg !22
  %6 = call i8* @llvm.stacksave(), !dbg !22
  store i8* %6, i8** %saved_stack, align 8, !dbg !22
  %7 = mul nuw i64 %3, %5, !dbg !22
  %vla = alloca double, i64 %7, align 16, !dbg !22
  store i64 %3, i64* %__vla_expr0, align 8, !dbg !22
  store i64 %5, i64* %__vla_expr1, align 8, !dbg !22
  call void @llvm.dbg.declare(metadata i64* %__vla_expr0, metadata !24, metadata !DIExpression()), !dbg !26
  call void @llvm.dbg.declare(metadata i64* %__vla_expr1, metadata !27, metadata !DIExpression()), !dbg !26
  call void @llvm.dbg.declare(metadata double* %vla, metadata !28, metadata !DIExpression()), !dbg !33
  store i32 0, i32* %i, align 4, !dbg !34
  br label %for.cond, !dbg !36

for.cond:                                         ; preds = %for.inc6, %entry
  %8 = load i32, i32* %i, align 4, !dbg !37
  %9 = load i32, i32* %n, align 4, !dbg !39
  %cmp = icmp slt i32 %8, %9, !dbg !40
  br i1 %cmp, label %for.body, label %for.end8, !dbg !41

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4, !dbg !42
  br label %for.cond1, !dbg !44

for.cond1:                                        ; preds = %for.inc, %for.body
  %10 = load i32, i32* %j, align 4, !dbg !45
  %11 = load i32, i32* %n, align 4, !dbg !47
  %cmp2 = icmp slt i32 %10, %11, !dbg !48
  br i1 %cmp2, label %for.body3, label %for.end, !dbg !49

for.body3:                                        ; preds = %for.cond1
  %12 = load i32, i32* %i, align 4, !dbg !50
  %13 = load i32, i32* %j, align 4, !dbg !51
  %mul = mul nsw i32 %12, %13, !dbg !52
  %conv = sitofp i32 %mul to double, !dbg !53
  %14 = load i32, i32* %i, align 4, !dbg !54
  %idxprom = sext i32 %14 to i64, !dbg !55
  %15 = mul nsw i64 %idxprom, %5, !dbg !55
  %arrayidx = getelementptr inbounds double, double* %vla, i64 %15, !dbg !55
  %16 = load i32, i32* %j, align 4, !dbg !56
  %idxprom4 = sext i32 %16 to i64, !dbg !55
  %arrayidx5 = getelementptr inbounds double, double* %arrayidx, i64 %idxprom4, !dbg !55
  store double %conv, double* %arrayidx5, align 8, !dbg !57
  br label %for.inc, !dbg !55

for.inc:                                          ; preds = %for.body3
  %17 = load i32, i32* %j, align 4, !dbg !58
  %inc = add nsw i32 %17, 1, !dbg !58
  store i32 %inc, i32* %j, align 4, !dbg !58
  br label %for.cond1, !dbg !59, !llvm.loop !60

for.end:                                          ; preds = %for.cond1
  br label %for.inc6, !dbg !61

for.inc6:                                         ; preds = %for.end
  %18 = load i32, i32* %i, align 4, !dbg !62
  %inc7 = add nsw i32 %18, 1, !dbg !62
  store i32 %inc7, i32* %i, align 4, !dbg !62
  br label %for.cond, !dbg !63, !llvm.loop !64

for.end8:                                         ; preds = %for.cond
  store i32 1, i32* %i, align 4, !dbg !66
  br label %for.cond9, !dbg !68

for.cond9:                                        ; preds = %for.inc13, %for.end8
  %19 = load i32, i32* %i, align 4, !dbg !69
  %20 = load i32, i32* %n, align 4, !dbg !71
  %cmp10 = icmp slt i32 %19, %20, !dbg !72
  br i1 %cmp10, label %for.body12, label %for.end15, !dbg !73

for.body12:                                       ; preds = %for.cond9
  %21 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !74
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @1, i32 0, i32 0), i8** %21, align 8, !dbg !74
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 5, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i64, i64, double*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %m, i64 %3, i64 %5, double* %vla, i32* %i), !dbg !74
  br label %for.inc13, !dbg !75

for.inc13:                                        ; preds = %for.body12
  %22 = load i32, i32* %i, align 4, !dbg !77
  %inc14 = add nsw i32 %22, 1, !dbg !77
  store i32 %inc14, i32* %i, align 4, !dbg !77
  br label %for.cond9, !dbg !78, !llvm.loop !79

for.end15:                                        ; preds = %for.cond9
  store i32 0, i32* %retval, align 4, !dbg !81
  %23 = load i8*, i8** %saved_stack, align 8, !dbg !82
  call void @llvm.stackrestore(i8* %23), !dbg !82
  %24 = load i32, i32* %retval, align 4, !dbg !82
  ret i32 %24, !dbg !82
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %m, i64 %vla, i64 %vla1, double* dereferenceable(8) %b, i32* dereferenceable(4) %i) #3 !dbg !83 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %m.addr = alloca i32*, align 8
  %vla.addr = alloca i64, align 8
  %vla.addr2 = alloca i64, align 8
  %b.addr = alloca double*, align 8
  %i.addr = alloca i32*, align 8
  %.omp.iv = alloca i32, align 4
  %tmp = alloca i32, align 4
  %.capture_expr. = alloca i32, align 4
  %.capture_expr.3 = alloca i32, align 4
  %j = alloca i32, align 4
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %j6 = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !92, metadata !DIExpression()), !dbg !93
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !94, metadata !DIExpression()), !dbg !93
  store i32* %m, i32** %m.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %m.addr, metadata !95, metadata !DIExpression()), !dbg !96
  store i64 %vla, i64* %vla.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %vla.addr, metadata !97, metadata !DIExpression()), !dbg !93
  store i64 %vla1, i64* %vla.addr2, align 8
  call void @llvm.dbg.declare(metadata i64* %vla.addr2, metadata !98, metadata !DIExpression()), !dbg !93
  store double* %b, double** %b.addr, align 8
  call void @llvm.dbg.declare(metadata double** %b.addr, metadata !99, metadata !DIExpression()), !dbg !100
  store i32* %i, i32** %i.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %i.addr, metadata !101, metadata !DIExpression()), !dbg !102
  %2 = load i32*, i32** %m.addr, align 8, !dbg !103
  %3 = load i64, i64* %vla.addr, align 8, !dbg !103
  %4 = load i64, i64* %vla.addr2, align 8, !dbg !103
  %5 = load double*, double** %b.addr, align 8, !dbg !103
  %6 = load i32*, i32** %i.addr, align 8, !dbg !103
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !104, metadata !DIExpression()), !dbg !93
  call void @llvm.dbg.declare(metadata i32* %.capture_expr., metadata !105, metadata !DIExpression()), !dbg !93
  %7 = load i32, i32* %2, align 4, !dbg !106
  store i32 %7, i32* %.capture_expr., align 4, !dbg !106
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.3, metadata !105, metadata !DIExpression()), !dbg !93
  %8 = load i32, i32* %.capture_expr., align 4, !dbg !106
  %sub = sub nsw i32 %8, 1, !dbg !103
  %sub4 = sub nsw i32 %sub, 1, !dbg !103
  %add = add nsw i32 %sub4, 1, !dbg !103
  %div = sdiv i32 %add, 1, !dbg !103
  %sub5 = sub nsw i32 %div, 1, !dbg !103
  store i32 %sub5, i32* %.capture_expr.3, align 4, !dbg !103
  call void @llvm.dbg.declare(metadata i32* %j, metadata !107, metadata !DIExpression()), !dbg !93
  store i32 1, i32* %j, align 4, !dbg !108
  %9 = load i32, i32* %.capture_expr., align 4, !dbg !106
  %cmp = icmp slt i32 1, %9, !dbg !103
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end, !dbg !103

omp.precond.then:                                 ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !109, metadata !DIExpression()), !dbg !93
  store i32 0, i32* %.omp.lb, align 4, !dbg !110
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !111, metadata !DIExpression()), !dbg !93
  %10 = load i32, i32* %.capture_expr.3, align 4, !dbg !103
  store i32 %10, i32* %.omp.ub, align 4, !dbg !110
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !112, metadata !DIExpression()), !dbg !93
  store i32 1, i32* %.omp.stride, align 4, !dbg !110
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !113, metadata !DIExpression()), !dbg !93
  store i32 0, i32* %.omp.is_last, align 4, !dbg !110
  call void @llvm.dbg.declare(metadata i32* %j6, metadata !107, metadata !DIExpression()), !dbg !93
  %11 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !103
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @1, i32 0, i32 0), i8** %11, align 8, !dbg !103
  %12 = load i32*, i32** %.global_tid..addr, align 8, !dbg !103
  %13 = load i32, i32* %12, align 4, !dbg !103
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %13, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !103
  %14 = load i32, i32* %.omp.ub, align 4, !dbg !110
  %15 = load i32, i32* %.capture_expr.3, align 4, !dbg !103
  %cmp7 = icmp sgt i32 %14, %15, !dbg !110
  br i1 %cmp7, label %cond.true, label %cond.false, !dbg !110

cond.true:                                        ; preds = %omp.precond.then
  %16 = load i32, i32* %.capture_expr.3, align 4, !dbg !103
  br label %cond.end, !dbg !110

cond.false:                                       ; preds = %omp.precond.then
  %17 = load i32, i32* %.omp.ub, align 4, !dbg !110
  br label %cond.end, !dbg !110

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %16, %cond.true ], [ %17, %cond.false ], !dbg !110
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !110
  %18 = load i32, i32* %.omp.lb, align 4, !dbg !110
  store i32 %18, i32* %.omp.iv, align 4, !dbg !110
  br label %omp.inner.for.cond, !dbg !103

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %19 = load i32, i32* %.omp.iv, align 4, !dbg !110
  %20 = load i32, i32* %.omp.ub, align 4, !dbg !110
  %cmp8 = icmp sle i32 %19, %20, !dbg !103
  br i1 %cmp8, label %omp.inner.for.body, label %omp.inner.for.end, !dbg !103

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %21 = load i32, i32* %.omp.iv, align 4, !dbg !110
  %mul = mul nsw i32 %21, 1, !dbg !108
  %add9 = add nsw i32 1, %mul, !dbg !108
  store i32 %add9, i32* %j6, align 4, !dbg !108
  %22 = load i32, i32* %6, align 4, !dbg !114
  %sub10 = sub nsw i32 %22, 1, !dbg !115
  %idxprom = sext i32 %sub10 to i64, !dbg !116
  %23 = mul nsw i64 %idxprom, %4, !dbg !116
  %arrayidx = getelementptr inbounds double, double* %5, i64 %23, !dbg !116
  %24 = load i32, i32* %j6, align 4, !dbg !117
  %sub11 = sub nsw i32 %24, 1, !dbg !118
  %idxprom12 = sext i32 %sub11 to i64, !dbg !116
  %arrayidx13 = getelementptr inbounds double, double* %arrayidx, i64 %idxprom12, !dbg !116
  %25 = load double, double* %arrayidx13, align 8, !dbg !116
  %26 = load i32, i32* %6, align 4, !dbg !119
  %idxprom14 = sext i32 %26 to i64, !dbg !120
  %27 = mul nsw i64 %idxprom14, %4, !dbg !120
  %arrayidx15 = getelementptr inbounds double, double* %5, i64 %27, !dbg !120
  %28 = load i32, i32* %j6, align 4, !dbg !121
  %idxprom16 = sext i32 %28 to i64, !dbg !120
  %arrayidx17 = getelementptr inbounds double, double* %arrayidx15, i64 %idxprom16, !dbg !120
  store double %25, double* %arrayidx17, align 8, !dbg !122
  br label %omp.body.continue, !dbg !120

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !123

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %29 = load i32, i32* %.omp.iv, align 4, !dbg !110
  %add18 = add nsw i32 %29, 1, !dbg !103
  store i32 %add18, i32* %.omp.iv, align 4, !dbg !103
  br label %omp.inner.for.cond, !dbg !123, !llvm.loop !124

omp.inner.for.end:                                ; preds = %omp.inner.for.cond
  br label %omp.loop.exit, !dbg !123

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %30 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !123
  store i8* getelementptr inbounds ([42 x i8], [42 x i8]* @2, i32 0, i32 0), i8** %30, align 8, !dbg !123
  %31 = load i32*, i32** %.global_tid..addr, align 8, !dbg !123
  %32 = load i32, i32* %31, align 4, !dbg !123
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %32), !dbg !123
  br label %omp.precond.end, !dbg !123

omp.precond.end:                                  ; preds = %omp.loop.exit, %entry
  ret void, !dbg !126
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %m, i64 %vla, i64 %vla1, double* dereferenceable(8) %b, i32* dereferenceable(4) %i) #3 !dbg !127 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %m.addr = alloca i32*, align 8
  %vla.addr = alloca i64, align 8
  %vla.addr2 = alloca i64, align 8
  %b.addr = alloca double*, align 8
  %i.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !128, metadata !DIExpression()), !dbg !129
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !130, metadata !DIExpression()), !dbg !129
  store i32* %m, i32** %m.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %m.addr, metadata !131, metadata !DIExpression()), !dbg !129
  store i64 %vla, i64* %vla.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %vla.addr, metadata !132, metadata !DIExpression()), !dbg !129
  store i64 %vla1, i64* %vla.addr2, align 8
  call void @llvm.dbg.declare(metadata i64* %vla.addr2, metadata !133, metadata !DIExpression()), !dbg !129
  store double* %b, double** %b.addr, align 8
  call void @llvm.dbg.declare(metadata double** %b.addr, metadata !134, metadata !DIExpression()), !dbg !129
  store i32* %i, i32** %i.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %i.addr, metadata !135, metadata !DIExpression()), !dbg !129
  %0 = load i32*, i32** %m.addr, align 8, !dbg !136
  %1 = load i64, i64* %vla.addr, align 8, !dbg !136
  %2 = load i64, i64* %vla.addr2, align 8, !dbg !136
  %3 = load double*, double** %b.addr, align 8, !dbg !136
  %4 = load i32*, i32** %i.addr, align 8, !dbg !136
  %5 = load i32*, i32** %.global_tid..addr, align 8, !dbg !136
  %6 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !136
  %7 = load i32*, i32** %m.addr, align 8, !dbg !136
  %8 = load double*, double** %b.addr, align 8, !dbg !136
  %9 = load i32*, i32** %i.addr, align 8, !dbg !136
  call void @.omp_outlined._debug__(i32* %5, i32* %6, i32* %7, i64 %1, i64 %2, double* %8, i32* %9) #2, !dbg !136
  ret void, !dbg !136
}

declare !callback !137 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { nounwind }
attributes #3 = { noinline norecurse nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.1 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "DRB054-inneronly2-orig-no.c", directory: "/home/yanze/code/OpenRace/tests/data/integration/dataracebench")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!5 = !{i32 7, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 10.0.1 "}
!9 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 51, type: !10, scopeLine: 52, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!10 = !DISubroutineType(types: !11)
!11 = !{!12}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !DILocalVariable(name: "i", scope: !9, file: !1, line: 53, type: !12)
!14 = !DILocation(line: 53, column: 7, scope: !9)
!15 = !DILocalVariable(name: "j", scope: !9, file: !1, line: 53, type: !12)
!16 = !DILocation(line: 53, column: 9, scope: !9)
!17 = !DILocalVariable(name: "n", scope: !9, file: !1, line: 54, type: !12)
!18 = !DILocation(line: 54, column: 7, scope: !9)
!19 = !DILocalVariable(name: "m", scope: !9, file: !1, line: 54, type: !12)
!20 = !DILocation(line: 54, column: 14, scope: !9)
!21 = !DILocation(line: 55, column: 12, scope: !9)
!22 = !DILocation(line: 55, column: 3, scope: !9)
!23 = !DILocation(line: 55, column: 15, scope: !9)
!24 = !DILocalVariable(name: "__vla_expr0", scope: !9, type: !25, flags: DIFlagArtificial)
!25 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!26 = !DILocation(line: 0, scope: !9)
!27 = !DILocalVariable(name: "__vla_expr1", scope: !9, type: !25, flags: DIFlagArtificial)
!28 = !DILocalVariable(name: "b", scope: !9, file: !1, line: 55, type: !29)
!29 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !30)
!30 = !{!31, !32}
!31 = !DISubrange(count: !24)
!32 = !DISubrange(count: !27)
!33 = !DILocation(line: 55, column: 10, scope: !9)
!34 = !DILocation(line: 57, column: 8, scope: !35)
!35 = distinct !DILexicalBlock(scope: !9, file: !1, line: 57, column: 3)
!36 = !DILocation(line: 57, column: 7, scope: !35)
!37 = !DILocation(line: 57, column: 11, scope: !38)
!38 = distinct !DILexicalBlock(scope: !35, file: !1, line: 57, column: 3)
!39 = !DILocation(line: 57, column: 13, scope: !38)
!40 = !DILocation(line: 57, column: 12, scope: !38)
!41 = !DILocation(line: 57, column: 3, scope: !35)
!42 = !DILocation(line: 58, column: 10, scope: !43)
!43 = distinct !DILexicalBlock(scope: !38, file: !1, line: 58, column: 5)
!44 = !DILocation(line: 58, column: 9, scope: !43)
!45 = !DILocation(line: 58, column: 13, scope: !46)
!46 = distinct !DILexicalBlock(scope: !43, file: !1, line: 58, column: 5)
!47 = !DILocation(line: 58, column: 15, scope: !46)
!48 = !DILocation(line: 58, column: 14, scope: !46)
!49 = !DILocation(line: 58, column: 5, scope: !43)
!50 = !DILocation(line: 59, column: 24, scope: !46)
!51 = !DILocation(line: 59, column: 26, scope: !46)
!52 = !DILocation(line: 59, column: 25, scope: !46)
!53 = !DILocation(line: 59, column: 15, scope: !46)
!54 = !DILocation(line: 59, column: 9, scope: !46)
!55 = !DILocation(line: 59, column: 7, scope: !46)
!56 = !DILocation(line: 59, column: 12, scope: !46)
!57 = !DILocation(line: 59, column: 14, scope: !46)
!58 = !DILocation(line: 58, column: 19, scope: !46)
!59 = !DILocation(line: 58, column: 5, scope: !46)
!60 = distinct !{!60, !49, !61}
!61 = !DILocation(line: 59, column: 27, scope: !43)
!62 = !DILocation(line: 57, column: 17, scope: !38)
!63 = !DILocation(line: 57, column: 3, scope: !38)
!64 = distinct !{!64, !41, !65}
!65 = !DILocation(line: 59, column: 27, scope: !35)
!66 = !DILocation(line: 61, column: 9, scope: !67)
!67 = distinct !DILexicalBlock(scope: !9, file: !1, line: 61, column: 3)
!68 = !DILocation(line: 61, column: 8, scope: !67)
!69 = !DILocation(line: 61, column: 12, scope: !70)
!70 = distinct !DILexicalBlock(scope: !67, file: !1, line: 61, column: 3)
!71 = !DILocation(line: 61, column: 14, scope: !70)
!72 = !DILocation(line: 61, column: 13, scope: !70)
!73 = !DILocation(line: 61, column: 3, scope: !67)
!74 = !DILocation(line: 62, column: 1, scope: !70)
!75 = !DILocation(line: 62, column: 25, scope: !76)
!76 = distinct !DILexicalBlock(scope: !70, file: !1, line: 62, column: 1)
!77 = !DILocation(line: 61, column: 17, scope: !70)
!78 = !DILocation(line: 61, column: 3, scope: !70)
!79 = distinct !{!79, !73, !80}
!80 = !DILocation(line: 62, column: 25, scope: !67)
!81 = !DILocation(line: 65, column: 3, scope: !9)
!82 = !DILocation(line: 66, column: 1, scope: !9)
!83 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 63, type: !84, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!84 = !DISubroutineType(types: !85)
!85 = !{null, !86, !86, !90, !25, !25, !91, !90}
!86 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !87)
!87 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !88)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!90 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !12, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !4, size: 64)
!92 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !83, type: !86, flags: DIFlagArtificial)
!93 = !DILocation(line: 0, scope: !83)
!94 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !83, type: !86, flags: DIFlagArtificial)
!95 = !DILocalVariable(name: "m", arg: 3, scope: !83, file: !1, line: 54, type: !90)
!96 = !DILocation(line: 54, column: 14, scope: !83)
!97 = !DILocalVariable(name: "vla", arg: 4, scope: !83, type: !25, flags: DIFlagArtificial)
!98 = !DILocalVariable(name: "vla", arg: 5, scope: !83, type: !25, flags: DIFlagArtificial)
!99 = !DILocalVariable(name: "b", arg: 6, scope: !83, file: !1, line: 55, type: !91)
!100 = !DILocation(line: 55, column: 10, scope: !83)
!101 = !DILocalVariable(name: "i", arg: 7, scope: !83, file: !1, line: 53, type: !90)
!102 = !DILocation(line: 53, column: 7, scope: !83)
!103 = !DILocation(line: 63, column: 5, scope: !83)
!104 = !DILocalVariable(name: ".omp.iv", scope: !83, type: !12, flags: DIFlagArtificial)
!105 = !DILocalVariable(name: ".capture_expr.", scope: !83, type: !12, flags: DIFlagArtificial)
!106 = !DILocation(line: 63, column: 16, scope: !83)
!107 = !DILocalVariable(name: "j", scope: !83, type: !12, flags: DIFlagArtificial)
!108 = !DILocation(line: 63, column: 18, scope: !83)
!109 = !DILocalVariable(name: ".omp.lb", scope: !83, type: !12, flags: DIFlagArtificial)
!110 = !DILocation(line: 63, column: 10, scope: !83)
!111 = !DILocalVariable(name: ".omp.ub", scope: !83, type: !12, flags: DIFlagArtificial)
!112 = !DILocalVariable(name: ".omp.stride", scope: !83, type: !12, flags: DIFlagArtificial)
!113 = !DILocalVariable(name: ".omp.is_last", scope: !83, type: !12, flags: DIFlagArtificial)
!114 = !DILocation(line: 64, column: 17, scope: !83)
!115 = !DILocation(line: 64, column: 18, scope: !83)
!116 = !DILocation(line: 64, column: 15, scope: !83)
!117 = !DILocation(line: 64, column: 22, scope: !83)
!118 = !DILocation(line: 64, column: 23, scope: !83)
!119 = !DILocation(line: 64, column: 9, scope: !83)
!120 = !DILocation(line: 64, column: 7, scope: !83)
!121 = !DILocation(line: 64, column: 12, scope: !83)
!122 = !DILocation(line: 64, column: 14, scope: !83)
!123 = !DILocation(line: 62, column: 1, scope: !83)
!124 = distinct !{!124, !123, !125}
!125 = !DILocation(line: 62, column: 25, scope: !83)
!126 = !DILocation(line: 64, column: 25, scope: !83)
!127 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 63, type: !84, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!128 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !127, type: !86, flags: DIFlagArtificial)
!129 = !DILocation(line: 0, scope: !127)
!130 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !127, type: !86, flags: DIFlagArtificial)
!131 = !DILocalVariable(name: "m", arg: 3, scope: !127, type: !90, flags: DIFlagArtificial)
!132 = !DILocalVariable(name: "vla", arg: 4, scope: !127, type: !25, flags: DIFlagArtificial)
!133 = !DILocalVariable(name: "vla", arg: 5, scope: !127, type: !25, flags: DIFlagArtificial)
!134 = !DILocalVariable(name: "b", arg: 6, scope: !127, type: !91, flags: DIFlagArtificial)
!135 = !DILocalVariable(name: "i", arg: 7, scope: !127, type: !90, flags: DIFlagArtificial)
!136 = !DILocation(line: 63, column: 5, scope: !127)
!137 = !{!138}
!138 = !{i64 2, i64 -1, i64 -1, i1 true}
