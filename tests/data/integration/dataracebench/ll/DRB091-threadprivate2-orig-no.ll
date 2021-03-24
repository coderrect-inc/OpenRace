; ModuleID = 'DRB091-threadprivate2-orig-no.c'
source_filename = "DRB091-threadprivate2-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

$_ZTW4sum0 = comdat any

@sum0 = dso_local thread_local global i32 0, align 4, !dbg !0
@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 66, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [45 x i8] c";DRB091-threadprivate2-orig-no.c;main;62;1;;\00", align 1
@2 = private unnamed_addr constant [45 x i8] c";DRB091-threadprivate2-orig-no.c;main;64;1;;\00", align 1
@3 = private unnamed_addr constant [46 x i8] c";DRB091-threadprivate2-orig-no.c;main;64;16;;\00", align 1
@4 = private unnamed_addr constant [45 x i8] c";DRB091-threadprivate2-orig-no.c;main;69;1;;\00", align 1
@.gomp_critical_user_.var = common global [8 x i32] zeroinitializer
@5 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@sum1 = dso_local global i32 0, align 4, !dbg !6
@.str.1 = private unnamed_addr constant [17 x i8] c"sum=%d; sum1=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"sum==sum1\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"DRB091-threadprivate2-orig-no.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [11 x i8] c"int main()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !13 {
entry:
  %retval = alloca i32, align 4
  %len = alloca i32, align 4
  %i = alloca i32, align 4
  %sum = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata i32* %len, metadata !16, metadata !DIExpression()), !dbg !17
  store i32 1000, i32* %len, align 4, !dbg !17
  call void @llvm.dbg.declare(metadata i32* %i, metadata !18, metadata !DIExpression()), !dbg !19
  call void @llvm.dbg.declare(metadata i32* %sum, metadata !20, metadata !DIExpression()), !dbg !21
  store i32 0, i32* %sum, align 4, !dbg !21
  %2 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !22
  store i8* getelementptr inbounds ([45 x i8], [45 x i8]* @1, i32 0, i32 0), i8** %2, align 8, !dbg !22
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %len, i32* %sum, i32* @sum0), !dbg !22
  store i32 0, i32* %i, align 4, !dbg !23
  br label %for.cond, !dbg !25

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4, !dbg !26
  %4 = load i32, i32* %len, align 4, !dbg !28
  %cmp = icmp slt i32 %3, %4, !dbg !29
  br i1 %cmp, label %for.body, label %for.end, !dbg !30

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* @sum1, align 4, !dbg !31
  %6 = load i32, i32* %i, align 4, !dbg !33
  %add = add nsw i32 %5, %6, !dbg !34
  store i32 %add, i32* @sum1, align 4, !dbg !35
  br label %for.inc, !dbg !36

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !dbg !37
  %inc = add nsw i32 %7, 1, !dbg !37
  store i32 %inc, i32* %i, align 4, !dbg !37
  br label %for.cond, !dbg !38, !llvm.loop !39

for.end:                                          ; preds = %for.cond
  %8 = load i32, i32* %sum, align 4, !dbg !41
  %9 = load i32, i32* @sum1, align 4, !dbg !42
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %8, i32 %9), !dbg !43
  %10 = load i32, i32* %sum, align 4, !dbg !44
  %11 = load i32, i32* @sum1, align 4, !dbg !44
  %cmp1 = icmp eq i32 %10, %11, !dbg !44
  br i1 %cmp1, label %if.then, label %if.else, !dbg !47

if.then:                                          ; preds = %for.end
  br label %if.end, !dbg !47

if.else:                                          ; preds = %for.end
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 80, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #7, !dbg !44
  unreachable, !dbg !44

if.end:                                           ; preds = %if.then
  ret i32 0, !dbg !48
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %len, i32* dereferenceable(4) %sum, i32* dereferenceable(4) %sum0) #2 !dbg !49 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %sum.addr = alloca i32*, align 8
  %sum0.addr = alloca i32*, align 8
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
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
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !57, metadata !DIExpression()), !dbg !58
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !59, metadata !DIExpression()), !dbg !58
  store i32* %len, i32** %len.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !60, metadata !DIExpression()), !dbg !61
  store i32* %sum, i32** %sum.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %sum.addr, metadata !62, metadata !DIExpression()), !dbg !63
  store i32* %sum0, i32** %sum0.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %sum0.addr, metadata !64, metadata !DIExpression()), !dbg !65
  %2 = load i32*, i32** %len.addr, align 8, !dbg !66
  %3 = load i32*, i32** %sum.addr, align 8, !dbg !66
  %4 = load i32*, i32** %sum0.addr, align 8, !dbg !66
  %5 = ptrtoint i32* %4 to i64, !dbg !66
  %6 = icmp ne i64 %5, ptrtoint (i32* @sum0 to i64), !dbg !66
  br i1 %6, label %copyin.not.master, label %copyin.not.master.end, !dbg !66

copyin.not.master:                                ; preds = %entry
  %7 = load i32, i32* %4, align 4, !dbg !67
  store i32 %7, i32* @sum0, align 4, !dbg !67
  br label %copyin.not.master.end, !dbg !66

copyin.not.master.end:                            ; preds = %copyin.not.master, %entry
  %8 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !66
  store i8* getelementptr inbounds ([45 x i8], [45 x i8]* @1, i32 0, i32 0), i8** %8, align 8, !dbg !66
  %9 = load i32*, i32** %.global_tid..addr, align 8, !dbg !66
  %10 = load i32, i32* %9, align 4, !dbg !66
  call void @__kmpc_barrier(%struct.ident_t* %.kmpc_loc.addr, i32 %10), !dbg !66
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !68, metadata !DIExpression()), !dbg !71
  call void @llvm.dbg.declare(metadata i32* %.capture_expr., metadata !72, metadata !DIExpression()), !dbg !71
  %11 = load i32, i32* %2, align 4, !dbg !73
  store i32 %11, i32* %.capture_expr., align 4, !dbg !73
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.1, metadata !72, metadata !DIExpression()), !dbg !71
  %12 = load i32, i32* %.capture_expr., align 4, !dbg !73
  %sub = sub nsw i32 %12, 0, !dbg !74
  %sub2 = sub nsw i32 %sub, 1, !dbg !74
  %add = add nsw i32 %sub2, 1, !dbg !74
  %div = sdiv i32 %add, 1, !dbg !74
  %sub3 = sub nsw i32 %div, 1, !dbg !74
  store i32 %sub3, i32* %.capture_expr.1, align 4, !dbg !74
  call void @llvm.dbg.declare(metadata i32* %i, metadata !75, metadata !DIExpression()), !dbg !71
  store i32 0, i32* %i, align 4, !dbg !76
  %13 = load i32, i32* %.capture_expr., align 4, !dbg !73
  %cmp = icmp slt i32 0, %13, !dbg !74
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end, !dbg !77

omp.precond.then:                                 ; preds = %copyin.not.master.end
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !78, metadata !DIExpression()), !dbg !71
  store i32 0, i32* %.omp.lb, align 4, !dbg !79
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !80, metadata !DIExpression()), !dbg !71
  %14 = load i32, i32* %.capture_expr.1, align 4, !dbg !74
  store i32 %14, i32* %.omp.ub, align 4, !dbg !79
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !81, metadata !DIExpression()), !dbg !71
  store i32 1, i32* %.omp.stride, align 4, !dbg !79
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !82, metadata !DIExpression()), !dbg !71
  store i32 0, i32* %.omp.is_last, align 4, !dbg !79
  call void @llvm.dbg.declare(metadata i32* %i4, metadata !75, metadata !DIExpression()), !dbg !71
  %15 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !77
  store i8* getelementptr inbounds ([45 x i8], [45 x i8]* @2, i32 0, i32 0), i8** %15, align 8, !dbg !77
  %16 = load i32*, i32** %.global_tid..addr, align 8, !dbg !77
  %17 = load i32, i32* %16, align 4, !dbg !77
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %17, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !77
  %18 = load i32, i32* %.omp.ub, align 4, !dbg !79
  %19 = load i32, i32* %.capture_expr.1, align 4, !dbg !74
  %cmp5 = icmp sgt i32 %18, %19, !dbg !79
  br i1 %cmp5, label %cond.true, label %cond.false, !dbg !79

cond.true:                                        ; preds = %omp.precond.then
  %20 = load i32, i32* %.capture_expr.1, align 4, !dbg !74
  br label %cond.end, !dbg !79

cond.false:                                       ; preds = %omp.precond.then
  %21 = load i32, i32* %.omp.ub, align 4, !dbg !79
  br label %cond.end, !dbg !79

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %20, %cond.true ], [ %21, %cond.false ], !dbg !79
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !79
  %22 = load i32, i32* %.omp.lb, align 4, !dbg !79
  store i32 %22, i32* %.omp.iv, align 4, !dbg !79
  br label %omp.inner.for.cond, !dbg !77

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %23 = load i32, i32* %.omp.iv, align 4, !dbg !79
  %24 = load i32, i32* %.omp.ub, align 4, !dbg !79
  %cmp6 = icmp sle i32 %23, %24, !dbg !74
  br i1 %cmp6, label %omp.inner.for.body, label %omp.inner.for.end, !dbg !77

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %25 = load i32, i32* %.omp.iv, align 4, !dbg !79
  %mul = mul nsw i32 %25, 1, !dbg !76
  %add7 = add nsw i32 0, %mul, !dbg !76
  store i32 %add7, i32* %i4, align 4, !dbg !76
  %26 = load i32, i32* @sum0, align 4, !dbg !83
  %27 = load i32, i32* %i4, align 4, !dbg !85
  %add8 = add nsw i32 %26, %27, !dbg !86
  store i32 %add8, i32* @sum0, align 4, !dbg !87
  br label %omp.body.continue, !dbg !88

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !89

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %28 = load i32, i32* %.omp.iv, align 4, !dbg !79
  %add9 = add nsw i32 %28, 1, !dbg !74
  store i32 %add9, i32* %.omp.iv, align 4, !dbg !74
  br label %omp.inner.for.cond, !dbg !89, !llvm.loop !90

omp.inner.for.end:                                ; preds = %omp.inner.for.cond
  br label %omp.loop.exit, !dbg !89

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %29 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !89
  store i8* getelementptr inbounds ([46 x i8], [46 x i8]* @3, i32 0, i32 0), i8** %29, align 8, !dbg !89
  %30 = load i32*, i32** %.global_tid..addr, align 8, !dbg !89
  %31 = load i32, i32* %30, align 4, !dbg !89
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %31), !dbg !89
  br label %omp.precond.end, !dbg !89

omp.precond.end:                                  ; preds = %omp.loop.exit, %copyin.not.master.end
  %32 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !91
  store i8* getelementptr inbounds ([45 x i8], [45 x i8]* @2, i32 0, i32 0), i8** %32, align 8, !dbg !91
  %33 = load i32*, i32** %.global_tid..addr, align 8, !dbg !91
  %34 = load i32, i32* %33, align 4, !dbg !91
  call void @__kmpc_barrier(%struct.ident_t* %.kmpc_loc.addr, i32 %34), !dbg !91
  %35 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !92
  store i8* getelementptr inbounds ([45 x i8], [45 x i8]* @4, i32 0, i32 0), i8** %35, align 8, !dbg !92
  %36 = load i32*, i32** %.global_tid..addr, align 8, !dbg !92
  %37 = load i32, i32* %36, align 4, !dbg !92
  call void @__kmpc_critical(%struct.ident_t* %.kmpc_loc.addr, i32 %37, [8 x i32]* @.gomp_critical_user_.var), !dbg !92
  %38 = load i32, i32* %3, align 4, !dbg !93
  %39 = load i32, i32* @sum0, align 4, !dbg !96
  %add10 = add nsw i32 %38, %39, !dbg !97
  store i32 %add10, i32* %3, align 4, !dbg !98
  call void @__kmpc_end_critical(%struct.ident_t* %.kmpc_loc.addr, i32 %37, [8 x i32]* @.gomp_critical_user_.var), !dbg !99
  ret void, !dbg !100
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local void @__kmpc_barrier(%struct.ident_t*, i32)

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

declare dso_local void @__kmpc_end_critical(%struct.ident_t*, i32, [8 x i32]*)

declare dso_local void @__kmpc_critical(%struct.ident_t*, i32, [8 x i32]*)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %len, i32* dereferenceable(4) %sum, i32* dereferenceable(4) %sum0) #2 !dbg !101 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %sum.addr = alloca i32*, align 8
  %sum0.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !102, metadata !DIExpression()), !dbg !103
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !104, metadata !DIExpression()), !dbg !103
  store i32* %len, i32** %len.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !105, metadata !DIExpression()), !dbg !103
  store i32* %sum, i32** %sum.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %sum.addr, metadata !106, metadata !DIExpression()), !dbg !103
  store i32* %sum0, i32** %sum0.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %sum0.addr, metadata !107, metadata !DIExpression()), !dbg !103
  %0 = load i32*, i32** %len.addr, align 8, !dbg !108
  %1 = load i32*, i32** %sum.addr, align 8, !dbg !108
  %2 = load i32*, i32** %sum0.addr, align 8, !dbg !108
  %3 = load i32*, i32** %.global_tid..addr, align 8, !dbg !108
  %4 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !108
  %5 = load i32*, i32** %len.addr, align 8, !dbg !108
  %6 = load i32*, i32** %sum.addr, align 8, !dbg !108
  %7 = load i32*, i32** %sum0.addr, align 8, !dbg !108
  call void @.omp_outlined._debug__(i32* %3, i32* %4, i32* %5, i32* %6, i32* %7) #8, !dbg !108
  ret void, !dbg !108
}

declare !callback !109 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

declare dso_local i32 @printf(i8*, ...) #4

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) #5

; Function Attrs: noinline nounwind uwtable
define weak_odr hidden i32* @_ZTW4sum0() #6 comdat {
  ret i32* @sum0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noinline norecurse nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!9, !10, !11}
!llvm.ident = !{!12}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "sum0", scope: !2, file: !3, line: 55, type: !8, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.1 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "DRB091-threadprivate2-orig-no.c", directory: "/home/yanze/code/OpenRace/tests/data/integration/dataracebench")
!4 = !{}
!5 = !{!0, !6}
!6 = !DIGlobalVariableExpression(var: !7, expr: !DIExpression())
!7 = distinct !DIGlobalVariable(name: "sum1", scope: !2, file: !3, line: 55, type: !8, isLocal: false, isDefinition: true)
!8 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!9 = !{i32 7, !"Dwarf Version", i32 4}
!10 = !{i32 2, !"Debug Info Version", i32 3}
!11 = !{i32 1, !"wchar_size", i32 4}
!12 = !{!"clang version 10.0.1 "}
!13 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 58, type: !14, scopeLine: 59, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!14 = !DISubroutineType(types: !15)
!15 = !{!8}
!16 = !DILocalVariable(name: "len", scope: !13, file: !3, line: 60, type: !8)
!17 = !DILocation(line: 60, column: 7, scope: !13)
!18 = !DILocalVariable(name: "i", scope: !13, file: !3, line: 61, type: !8)
!19 = !DILocation(line: 61, column: 7, scope: !13)
!20 = !DILocalVariable(name: "sum", scope: !13, file: !3, line: 61, type: !8)
!21 = !DILocation(line: 61, column: 10, scope: !13)
!22 = !DILocation(line: 62, column: 1, scope: !13)
!23 = !DILocation(line: 75, column: 9, scope: !24)
!24 = distinct !DILexicalBlock(scope: !13, file: !3, line: 75, column: 3)
!25 = !DILocation(line: 75, column: 8, scope: !24)
!26 = !DILocation(line: 75, column: 12, scope: !27)
!27 = distinct !DILexicalBlock(scope: !24, file: !3, line: 75, column: 3)
!28 = !DILocation(line: 75, column: 14, scope: !27)
!29 = !DILocation(line: 75, column: 13, scope: !27)
!30 = !DILocation(line: 75, column: 3, scope: !24)
!31 = !DILocation(line: 77, column: 10, scope: !32)
!32 = distinct !DILexicalBlock(scope: !27, file: !3, line: 76, column: 3)
!33 = !DILocation(line: 77, column: 15, scope: !32)
!34 = !DILocation(line: 77, column: 14, scope: !32)
!35 = !DILocation(line: 77, column: 9, scope: !32)
!36 = !DILocation(line: 78, column: 3, scope: !32)
!37 = !DILocation(line: 75, column: 19, scope: !27)
!38 = !DILocation(line: 75, column: 3, scope: !27)
!39 = distinct !{!39, !30, !40}
!40 = !DILocation(line: 78, column: 3, scope: !24)
!41 = !DILocation(line: 79, column: 30, scope: !13)
!42 = !DILocation(line: 79, column: 34, scope: !13)
!43 = !DILocation(line: 79, column: 3, scope: !13)
!44 = !DILocation(line: 80, column: 3, scope: !45)
!45 = distinct !DILexicalBlock(scope: !46, file: !3, line: 80, column: 3)
!46 = distinct !DILexicalBlock(scope: !13, file: !3, line: 80, column: 3)
!47 = !DILocation(line: 80, column: 3, scope: !46)
!48 = !DILocation(line: 81, column: 3, scope: !13)
!49 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !3, file: !3, line: 63, type: !50, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!50 = !DISubroutineType(types: !51)
!51 = !{null, !52, !52, !56, !56, !56}
!52 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !53)
!53 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !54)
!54 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !55, size: 64)
!55 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!56 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !8, size: 64)
!57 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !49, type: !52, flags: DIFlagArtificial)
!58 = !DILocation(line: 0, scope: !49)
!59 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !49, type: !52, flags: DIFlagArtificial)
!60 = !DILocalVariable(name: "len", arg: 3, scope: !49, file: !3, line: 60, type: !56)
!61 = !DILocation(line: 60, column: 7, scope: !49)
!62 = !DILocalVariable(name: "sum", arg: 4, scope: !49, file: !3, line: 61, type: !56)
!63 = !DILocation(line: 61, column: 10, scope: !49)
!64 = !DILocalVariable(name: "sum0", arg: 5, scope: !49, file: !3, line: 55, type: !56)
!65 = !DILocation(line: 55, column: 5, scope: !49)
!66 = !DILocation(line: 63, column: 3, scope: !49)
!67 = !DILocation(line: 62, column: 29, scope: !49)
!68 = !DILocalVariable(name: ".omp.iv", scope: !69, type: !8, flags: DIFlagArtificial)
!69 = distinct !DILexicalBlock(scope: !70, file: !3, line: 64, column: 1)
!70 = distinct !DILexicalBlock(scope: !49, file: !3, line: 63, column: 3)
!71 = !DILocation(line: 0, scope: !69)
!72 = !DILocalVariable(name: ".capture_expr.", scope: !69, type: !8, flags: DIFlagArtificial)
!73 = !DILocation(line: 65, column: 16, scope: !69)
!74 = !DILocation(line: 65, column: 5, scope: !69)
!75 = !DILocalVariable(name: "i", scope: !69, type: !8, flags: DIFlagArtificial)
!76 = !DILocation(line: 65, column: 20, scope: !69)
!77 = !DILocation(line: 64, column: 1, scope: !70)
!78 = !DILocalVariable(name: ".omp.lb", scope: !69, type: !8, flags: DIFlagArtificial)
!79 = !DILocation(line: 65, column: 10, scope: !69)
!80 = !DILocalVariable(name: ".omp.ub", scope: !69, type: !8, flags: DIFlagArtificial)
!81 = !DILocalVariable(name: ".omp.stride", scope: !69, type: !8, flags: DIFlagArtificial)
!82 = !DILocalVariable(name: ".omp.is_last", scope: !69, type: !8, flags: DIFlagArtificial)
!83 = !DILocation(line: 67, column: 12, scope: !84)
!84 = distinct !DILexicalBlock(scope: !69, file: !3, line: 66, column: 5)
!85 = !DILocation(line: 67, column: 17, scope: !84)
!86 = !DILocation(line: 67, column: 16, scope: !84)
!87 = !DILocation(line: 67, column: 11, scope: !84)
!88 = !DILocation(line: 68, column: 5, scope: !84)
!89 = !DILocation(line: 64, column: 1, scope: !69)
!90 = distinct !{!90, !89, !91}
!91 = !DILocation(line: 64, column: 16, scope: !69)
!92 = !DILocation(line: 69, column: 1, scope: !70)
!93 = !DILocation(line: 71, column: 12, scope: !94)
!94 = distinct !DILexicalBlock(scope: !95, file: !3, line: 70, column: 5)
!95 = distinct !DILexicalBlock(scope: !70, file: !3, line: 69, column: 1)
!96 = !DILocation(line: 71, column: 16, scope: !94)
!97 = !DILocation(line: 71, column: 15, scope: !94)
!98 = !DILocation(line: 71, column: 10, scope: !94)
!99 = !DILocation(line: 72, column: 5, scope: !94)
!100 = !DILocation(line: 73, column: 3, scope: !49)
!101 = distinct !DISubprogram(name: ".omp_outlined.", scope: !3, file: !3, line: 63, type: !50, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!102 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !101, type: !52, flags: DIFlagArtificial)
!103 = !DILocation(line: 0, scope: !101)
!104 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !101, type: !52, flags: DIFlagArtificial)
!105 = !DILocalVariable(name: "len", arg: 3, scope: !101, type: !56, flags: DIFlagArtificial)
!106 = !DILocalVariable(name: "sum", arg: 4, scope: !101, type: !56, flags: DIFlagArtificial)
!107 = !DILocalVariable(name: "sum0", arg: 5, scope: !101, type: !56, flags: DIFlagArtificial)
!108 = !DILocation(line: 63, column: 3, scope: !101)
!109 = !{!110}
!110 = !{i64 2, i64 -1, i64 -1, i1 true}
