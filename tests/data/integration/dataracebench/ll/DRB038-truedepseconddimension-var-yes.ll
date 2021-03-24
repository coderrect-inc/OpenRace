; ModuleID = 'DRB038-truedepseconddimension-var-yes.c'
source_filename = "DRB038-truedepseconddimension-var-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [53 x i8] c";DRB038-truedepseconddimension-var-yes.c;main;63;1;;\00", align 1
@2 = private unnamed_addr constant [54 x i8] c";DRB038-truedepseconddimension-var-yes.c;main;63;25;;\00", align 1
@3 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !dbg !7 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %len = alloca i32, align 4
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
  call void @llvm.dbg.declare(metadata i32* %len, metadata !22, metadata !DIExpression()), !dbg !23
  store i32 1000, i32* %len, align 4, !dbg !23
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
  call void @llvm.dbg.declare(metadata i32* %n, metadata !32, metadata !DIExpression()), !dbg !33
  %5 = load i32, i32* %len, align 4, !dbg !34
  store i32 %5, i32* %n, align 4, !dbg !33
  call void @llvm.dbg.declare(metadata i32* %m, metadata !35, metadata !DIExpression()), !dbg !36
  %6 = load i32, i32* %len, align 4, !dbg !37
  store i32 %6, i32* %m, align 4, !dbg !36
  %7 = load i32, i32* %n, align 4, !dbg !38
  %8 = zext i32 %7 to i64, !dbg !39
  %9 = load i32, i32* %m, align 4, !dbg !40
  %10 = zext i32 %9 to i64, !dbg !39
  %11 = call i8* @llvm.stacksave(), !dbg !39
  store i8* %11, i8** %saved_stack, align 8, !dbg !39
  %12 = mul nuw i64 %8, %10, !dbg !39
  %vla = alloca double, i64 %12, align 16, !dbg !39
  store i64 %8, i64* %__vla_expr0, align 8, !dbg !39
  store i64 %10, i64* %__vla_expr1, align 8, !dbg !39
  call void @llvm.dbg.declare(metadata i64* %__vla_expr0, metadata !41, metadata !DIExpression()), !dbg !43
  call void @llvm.dbg.declare(metadata i64* %__vla_expr1, metadata !44, metadata !DIExpression()), !dbg !43
  call void @llvm.dbg.declare(metadata double* %vla, metadata !45, metadata !DIExpression()), !dbg !51
  store i32 0, i32* %i, align 4, !dbg !52
  br label %for.cond, !dbg !54

for.cond:                                         ; preds = %for.inc, %if.end
  %13 = load i32, i32* %i, align 4, !dbg !55
  %14 = load i32, i32* %n, align 4, !dbg !57
  %cmp1 = icmp slt i32 %13, %14, !dbg !58
  br i1 %cmp1, label %for.body, label %for.end, !dbg !59

for.body:                                         ; preds = %for.cond
  %15 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !60
  store i8* getelementptr inbounds ([53 x i8], [53 x i8]* @1, i32 0, i32 0), i8** %15, align 8, !dbg !60
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 5, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i64, i64, double*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %m, i64 %8, i64 %10, double* %vla, i32* %i), !dbg !60
  br label %for.inc, !dbg !61

for.inc:                                          ; preds = %for.body
  %16 = load i32, i32* %i, align 4, !dbg !63
  %inc = add nsw i32 %16, 1, !dbg !63
  store i32 %inc, i32* %i, align 4, !dbg !63
  br label %for.cond, !dbg !64, !llvm.loop !65

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4, !dbg !67
  %17 = load i8*, i8** %saved_stack, align 8, !dbg !68
  call void @llvm.stackrestore(i8* %17), !dbg !68
  %18 = load i32, i32* %retval, align 4, !dbg !68
  ret i32 %18, !dbg !68
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind readonly
declare dso_local i32 @atoi(i8*) #2

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %m, i64 %vla, i64 %vla1, double* dereferenceable(8) %b, i32* dereferenceable(4) %i) #4 !dbg !69 {
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
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !78, metadata !DIExpression()), !dbg !79
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !80, metadata !DIExpression()), !dbg !79
  store i32* %m, i32** %m.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %m.addr, metadata !81, metadata !DIExpression()), !dbg !82
  store i64 %vla, i64* %vla.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %vla.addr, metadata !83, metadata !DIExpression()), !dbg !79
  store i64 %vla1, i64* %vla.addr2, align 8
  call void @llvm.dbg.declare(metadata i64* %vla.addr2, metadata !84, metadata !DIExpression()), !dbg !79
  store double* %b, double** %b.addr, align 8
  call void @llvm.dbg.declare(metadata double** %b.addr, metadata !85, metadata !DIExpression()), !dbg !86
  store i32* %i, i32** %i.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %i.addr, metadata !87, metadata !DIExpression()), !dbg !88
  %2 = load i32*, i32** %m.addr, align 8, !dbg !89
  %3 = load i64, i64* %vla.addr, align 8, !dbg !89
  %4 = load i64, i64* %vla.addr2, align 8, !dbg !89
  %5 = load double*, double** %b.addr, align 8, !dbg !89
  %6 = load i32*, i32** %i.addr, align 8, !dbg !89
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !90, metadata !DIExpression()), !dbg !79
  call void @llvm.dbg.declare(metadata i32* %.capture_expr., metadata !91, metadata !DIExpression()), !dbg !79
  %7 = load i32, i32* %2, align 4, !dbg !92
  store i32 %7, i32* %.capture_expr., align 4, !dbg !92
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.3, metadata !91, metadata !DIExpression()), !dbg !79
  %8 = load i32, i32* %.capture_expr., align 4, !dbg !92
  %sub = sub nsw i32 %8, 1, !dbg !89
  %sub4 = sub nsw i32 %sub, 1, !dbg !89
  %add = add nsw i32 %sub4, 1, !dbg !89
  %div = sdiv i32 %add, 1, !dbg !89
  %sub5 = sub nsw i32 %div, 1, !dbg !89
  store i32 %sub5, i32* %.capture_expr.3, align 4, !dbg !89
  call void @llvm.dbg.declare(metadata i32* %j, metadata !93, metadata !DIExpression()), !dbg !79
  store i32 1, i32* %j, align 4, !dbg !94
  %9 = load i32, i32* %.capture_expr., align 4, !dbg !92
  %cmp = icmp slt i32 1, %9, !dbg !89
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end, !dbg !89

omp.precond.then:                                 ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !95, metadata !DIExpression()), !dbg !79
  store i32 0, i32* %.omp.lb, align 4, !dbg !96
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !97, metadata !DIExpression()), !dbg !79
  %10 = load i32, i32* %.capture_expr.3, align 4, !dbg !89
  store i32 %10, i32* %.omp.ub, align 4, !dbg !96
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !98, metadata !DIExpression()), !dbg !79
  store i32 1, i32* %.omp.stride, align 4, !dbg !96
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !99, metadata !DIExpression()), !dbg !79
  store i32 0, i32* %.omp.is_last, align 4, !dbg !96
  call void @llvm.dbg.declare(metadata i32* %j6, metadata !93, metadata !DIExpression()), !dbg !79
  %11 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !89
  store i8* getelementptr inbounds ([53 x i8], [53 x i8]* @1, i32 0, i32 0), i8** %11, align 8, !dbg !89
  %12 = load i32*, i32** %.global_tid..addr, align 8, !dbg !89
  %13 = load i32, i32* %12, align 4, !dbg !89
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %13, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !89
  %14 = load i32, i32* %.omp.ub, align 4, !dbg !96
  %15 = load i32, i32* %.capture_expr.3, align 4, !dbg !89
  %cmp7 = icmp sgt i32 %14, %15, !dbg !96
  br i1 %cmp7, label %cond.true, label %cond.false, !dbg !96

cond.true:                                        ; preds = %omp.precond.then
  %16 = load i32, i32* %.capture_expr.3, align 4, !dbg !89
  br label %cond.end, !dbg !96

cond.false:                                       ; preds = %omp.precond.then
  %17 = load i32, i32* %.omp.ub, align 4, !dbg !96
  br label %cond.end, !dbg !96

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %16, %cond.true ], [ %17, %cond.false ], !dbg !96
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !96
  %18 = load i32, i32* %.omp.lb, align 4, !dbg !96
  store i32 %18, i32* %.omp.iv, align 4, !dbg !96
  br label %omp.inner.for.cond, !dbg !89

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %19 = load i32, i32* %.omp.iv, align 4, !dbg !96
  %20 = load i32, i32* %.omp.ub, align 4, !dbg !96
  %cmp8 = icmp sle i32 %19, %20, !dbg !89
  br i1 %cmp8, label %omp.inner.for.body, label %omp.inner.for.end, !dbg !89

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %21 = load i32, i32* %.omp.iv, align 4, !dbg !96
  %mul = mul nsw i32 %21, 1, !dbg !94
  %add9 = add nsw i32 1, %mul, !dbg !94
  store i32 %add9, i32* %j6, align 4, !dbg !94
  %22 = load i32, i32* %6, align 4, !dbg !100
  %idxprom = sext i32 %22 to i64, !dbg !101
  %23 = mul nsw i64 %idxprom, %4, !dbg !101
  %arrayidx = getelementptr inbounds double, double* %5, i64 %23, !dbg !101
  %24 = load i32, i32* %j6, align 4, !dbg !102
  %sub10 = sub nsw i32 %24, 1, !dbg !103
  %idxprom11 = sext i32 %sub10 to i64, !dbg !101
  %arrayidx12 = getelementptr inbounds double, double* %arrayidx, i64 %idxprom11, !dbg !101
  %25 = load double, double* %arrayidx12, align 8, !dbg !101
  %26 = load i32, i32* %6, align 4, !dbg !104
  %idxprom13 = sext i32 %26 to i64, !dbg !105
  %27 = mul nsw i64 %idxprom13, %4, !dbg !105
  %arrayidx14 = getelementptr inbounds double, double* %5, i64 %27, !dbg !105
  %28 = load i32, i32* %j6, align 4, !dbg !106
  %idxprom15 = sext i32 %28 to i64, !dbg !105
  %arrayidx16 = getelementptr inbounds double, double* %arrayidx14, i64 %idxprom15, !dbg !105
  store double %25, double* %arrayidx16, align 8, !dbg !107
  br label %omp.body.continue, !dbg !105

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !108

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %29 = load i32, i32* %.omp.iv, align 4, !dbg !96
  %add17 = add nsw i32 %29, 1, !dbg !89
  store i32 %add17, i32* %.omp.iv, align 4, !dbg !89
  br label %omp.inner.for.cond, !dbg !108, !llvm.loop !109

omp.inner.for.end:                                ; preds = %omp.inner.for.cond
  br label %omp.loop.exit, !dbg !108

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %30 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !108
  store i8* getelementptr inbounds ([54 x i8], [54 x i8]* @2, i32 0, i32 0), i8** %30, align 8, !dbg !108
  %31 = load i32*, i32** %.global_tid..addr, align 8, !dbg !108
  %32 = load i32, i32* %31, align 4, !dbg !108
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %32), !dbg !108
  br label %omp.precond.end, !dbg !108

omp.precond.end:                                  ; preds = %omp.loop.exit, %entry
  ret void, !dbg !111
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %m, i64 %vla, i64 %vla1, double* dereferenceable(8) %b, i32* dereferenceable(4) %i) #4 !dbg !112 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %m.addr = alloca i32*, align 8
  %vla.addr = alloca i64, align 8
  %vla.addr2 = alloca i64, align 8
  %b.addr = alloca double*, align 8
  %i.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !113, metadata !DIExpression()), !dbg !114
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !115, metadata !DIExpression()), !dbg !114
  store i32* %m, i32** %m.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %m.addr, metadata !116, metadata !DIExpression()), !dbg !114
  store i64 %vla, i64* %vla.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %vla.addr, metadata !117, metadata !DIExpression()), !dbg !114
  store i64 %vla1, i64* %vla.addr2, align 8
  call void @llvm.dbg.declare(metadata i64* %vla.addr2, metadata !118, metadata !DIExpression()), !dbg !114
  store double* %b, double** %b.addr, align 8
  call void @llvm.dbg.declare(metadata double** %b.addr, metadata !119, metadata !DIExpression()), !dbg !114
  store i32* %i, i32** %i.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %i.addr, metadata !120, metadata !DIExpression()), !dbg !114
  %0 = load i32*, i32** %m.addr, align 8, !dbg !121
  %1 = load i64, i64* %vla.addr, align 8, !dbg !121
  %2 = load i64, i64* %vla.addr2, align 8, !dbg !121
  %3 = load double*, double** %b.addr, align 8, !dbg !121
  %4 = load i32*, i32** %i.addr, align 8, !dbg !121
  %5 = load i32*, i32** %.global_tid..addr, align 8, !dbg !121
  %6 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !121
  %7 = load i32*, i32** %m.addr, align 8, !dbg !121
  %8 = load double*, double** %b.addr, align 8, !dbg !121
  %9 = load i32*, i32** %i.addr, align 8, !dbg !121
  call void @.omp_outlined._debug__(i32* %5, i32* %6, i32* %7, i64 %1, i64 %2, double* %8, i32* %9) #3, !dbg !121
  ret void, !dbg !121
}

declare !callback !122 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

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
!1 = !DIFile(filename: "DRB038-truedepseconddimension-var-yes.c", directory: "/home/yanze/code/OpenRace/tests/data/integration/dataracebench")
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
!20 = !DILocalVariable(name: "j", scope: !7, file: !1, line: 54, type: !10)
!21 = !DILocation(line: 54, column: 9, scope: !7)
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
!32 = !DILocalVariable(name: "n", scope: !7, file: !1, line: 59, type: !10)
!33 = !DILocation(line: 59, column: 7, scope: !7)
!34 = !DILocation(line: 59, column: 9, scope: !7)
!35 = !DILocalVariable(name: "m", scope: !7, file: !1, line: 59, type: !10)
!36 = !DILocation(line: 59, column: 14, scope: !7)
!37 = !DILocation(line: 59, column: 16, scope: !7)
!38 = !DILocation(line: 60, column: 12, scope: !7)
!39 = !DILocation(line: 60, column: 3, scope: !7)
!40 = !DILocation(line: 60, column: 15, scope: !7)
!41 = !DILocalVariable(name: "__vla_expr0", scope: !7, type: !42, flags: DIFlagArtificial)
!42 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!43 = !DILocation(line: 0, scope: !7)
!44 = !DILocalVariable(name: "__vla_expr1", scope: !7, type: !42, flags: DIFlagArtificial)
!45 = !DILocalVariable(name: "b", scope: !7, file: !1, line: 60, type: !46)
!46 = !DICompositeType(tag: DW_TAG_array_type, baseType: !47, elements: !48)
!47 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!48 = !{!49, !50}
!49 = !DISubrange(count: !41)
!50 = !DISubrange(count: !44)
!51 = !DILocation(line: 60, column: 10, scope: !7)
!52 = !DILocation(line: 62, column: 9, scope: !53)
!53 = distinct !DILexicalBlock(scope: !7, file: !1, line: 62, column: 3)
!54 = !DILocation(line: 62, column: 8, scope: !53)
!55 = !DILocation(line: 62, column: 12, scope: !56)
!56 = distinct !DILexicalBlock(scope: !53, file: !1, line: 62, column: 3)
!57 = !DILocation(line: 62, column: 14, scope: !56)
!58 = !DILocation(line: 62, column: 13, scope: !56)
!59 = !DILocation(line: 62, column: 3, scope: !53)
!60 = !DILocation(line: 63, column: 1, scope: !56)
!61 = !DILocation(line: 63, column: 25, scope: !62)
!62 = distinct !DILexicalBlock(scope: !56, file: !1, line: 63, column: 1)
!63 = !DILocation(line: 62, column: 17, scope: !56)
!64 = !DILocation(line: 62, column: 3, scope: !56)
!65 = distinct !{!65, !59, !66}
!66 = !DILocation(line: 63, column: 25, scope: !53)
!67 = !DILocation(line: 67, column: 3, scope: !7)
!68 = !DILocation(line: 68, column: 1, scope: !7)
!69 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 64, type: !70, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!70 = !DISubroutineType(types: !71)
!71 = !{null, !72, !72, !76, !42, !42, !77, !76}
!72 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !73)
!73 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !74)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !75, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!76 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !10, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !47, size: 64)
!78 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !69, type: !72, flags: DIFlagArtificial)
!79 = !DILocation(line: 0, scope: !69)
!80 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !69, type: !72, flags: DIFlagArtificial)
!81 = !DILocalVariable(name: "m", arg: 3, scope: !69, file: !1, line: 59, type: !76)
!82 = !DILocation(line: 59, column: 14, scope: !69)
!83 = !DILocalVariable(name: "vla", arg: 4, scope: !69, type: !42, flags: DIFlagArtificial)
!84 = !DILocalVariable(name: "vla", arg: 5, scope: !69, type: !42, flags: DIFlagArtificial)
!85 = !DILocalVariable(name: "b", arg: 6, scope: !69, file: !1, line: 60, type: !77)
!86 = !DILocation(line: 60, column: 10, scope: !69)
!87 = !DILocalVariable(name: "i", arg: 7, scope: !69, file: !1, line: 54, type: !76)
!88 = !DILocation(line: 54, column: 7, scope: !69)
!89 = !DILocation(line: 64, column: 5, scope: !69)
!90 = !DILocalVariable(name: ".omp.iv", scope: !69, type: !10, flags: DIFlagArtificial)
!91 = !DILocalVariable(name: ".capture_expr.", scope: !69, type: !10, flags: DIFlagArtificial)
!92 = !DILocation(line: 64, column: 16, scope: !69)
!93 = !DILocalVariable(name: "j", scope: !69, type: !10, flags: DIFlagArtificial)
!94 = !DILocation(line: 64, column: 18, scope: !69)
!95 = !DILocalVariable(name: ".omp.lb", scope: !69, type: !10, flags: DIFlagArtificial)
!96 = !DILocation(line: 64, column: 10, scope: !69)
!97 = !DILocalVariable(name: ".omp.ub", scope: !69, type: !10, flags: DIFlagArtificial)
!98 = !DILocalVariable(name: ".omp.stride", scope: !69, type: !10, flags: DIFlagArtificial)
!99 = !DILocalVariable(name: ".omp.is_last", scope: !69, type: !10, flags: DIFlagArtificial)
!100 = !DILocation(line: 65, column: 17, scope: !69)
!101 = !DILocation(line: 65, column: 15, scope: !69)
!102 = !DILocation(line: 65, column: 20, scope: !69)
!103 = !DILocation(line: 65, column: 21, scope: !69)
!104 = !DILocation(line: 65, column: 9, scope: !69)
!105 = !DILocation(line: 65, column: 7, scope: !69)
!106 = !DILocation(line: 65, column: 12, scope: !69)
!107 = !DILocation(line: 65, column: 14, scope: !69)
!108 = !DILocation(line: 63, column: 1, scope: !69)
!109 = distinct !{!109, !108, !110}
!110 = !DILocation(line: 63, column: 25, scope: !69)
!111 = !DILocation(line: 65, column: 23, scope: !69)
!112 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 64, type: !70, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!113 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !112, type: !72, flags: DIFlagArtificial)
!114 = !DILocation(line: 0, scope: !112)
!115 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !112, type: !72, flags: DIFlagArtificial)
!116 = !DILocalVariable(name: "m", arg: 3, scope: !112, type: !76, flags: DIFlagArtificial)
!117 = !DILocalVariable(name: "vla", arg: 4, scope: !112, type: !42, flags: DIFlagArtificial)
!118 = !DILocalVariable(name: "vla", arg: 5, scope: !112, type: !42, flags: DIFlagArtificial)
!119 = !DILocalVariable(name: "b", arg: 6, scope: !112, type: !77, flags: DIFlagArtificial)
!120 = !DILocalVariable(name: "i", arg: 7, scope: !112, type: !76, flags: DIFlagArtificial)
!121 = !DILocation(line: 64, column: 5, scope: !112)
!122 = !{!123}
!123 = !{i64 2, i64 -1, i64 -1, i1 true}
