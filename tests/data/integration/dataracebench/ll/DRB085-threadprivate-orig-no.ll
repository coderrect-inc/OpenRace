; ModuleID = 'DRB085-threadprivate-orig-no.c'
source_filename = "DRB085-threadprivate-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

$_ZTW4sum0 = comdat any

@sum0 = dso_local thread_local global i32 0, align 4, !dbg !0
@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 66, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [44 x i8] c";DRB085-threadprivate-orig-no.c;main;66;1;;\00", align 1
@2 = private unnamed_addr constant [44 x i8] c";DRB085-threadprivate-orig-no.c;main;68;1;;\00", align 1
@3 = private unnamed_addr constant [45 x i8] c";DRB085-threadprivate-orig-no.c;main;68;16;;\00", align 1
@4 = private unnamed_addr constant [44 x i8] c";DRB085-threadprivate-orig-no.c;main;73;1;;\00", align 1
@.gomp_critical_user_.var = common global [8 x i32] zeroinitializer
@5 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@sum1 = dso_local global i32 0, align 4, !dbg !6
@.str.1 = private unnamed_addr constant [17 x i8] c"sum=%d; sum1=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"sum==sum1\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"DRB085-threadprivate-orig-no.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [11 x i8] c"int main()\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @foo(i32 %i) #0 !dbg !13 {
entry:
  %i.addr = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr, metadata !16, metadata !DIExpression()), !dbg !17
  %0 = load i32, i32* @sum0, align 4, !dbg !18
  %1 = load i32, i32* %i.addr, align 4, !dbg !19
  %add = add nsw i32 %0, %1, !dbg !20
  store i32 %add, i32* @sum0, align 4, !dbg !21
  ret void, !dbg !22
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !23 {
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
  call void @llvm.dbg.declare(metadata i32* %len, metadata !26, metadata !DIExpression()), !dbg !27
  store i32 1000, i32* %len, align 4, !dbg !27
  call void @llvm.dbg.declare(metadata i32* %i, metadata !28, metadata !DIExpression()), !dbg !29
  call void @llvm.dbg.declare(metadata i32* %sum, metadata !30, metadata !DIExpression()), !dbg !31
  store i32 0, i32* %sum, align 4, !dbg !31
  %2 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !32
  store i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1, i32 0, i32 0), i8** %2, align 8, !dbg !32
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %len, i32* %sum, i32* @sum0), !dbg !32
  store i32 0, i32* %i, align 4, !dbg !33
  br label %for.cond, !dbg !35

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4, !dbg !36
  %4 = load i32, i32* %len, align 4, !dbg !38
  %cmp = icmp slt i32 %3, %4, !dbg !39
  br i1 %cmp, label %for.body, label %for.end, !dbg !40

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* @sum1, align 4, !dbg !41
  %6 = load i32, i32* %i, align 4, !dbg !43
  %add = add nsw i32 %5, %6, !dbg !44
  store i32 %add, i32* @sum1, align 4, !dbg !45
  br label %for.inc, !dbg !46

for.inc:                                          ; preds = %for.body
  %7 = load i32, i32* %i, align 4, !dbg !47
  %inc = add nsw i32 %7, 1, !dbg !47
  store i32 %inc, i32* %i, align 4, !dbg !47
  br label %for.cond, !dbg !48, !llvm.loop !49

for.end:                                          ; preds = %for.cond
  %8 = load i32, i32* %sum, align 4, !dbg !51
  %9 = load i32, i32* @sum1, align 4, !dbg !52
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %8, i32 %9), !dbg !53
  %10 = load i32, i32* %sum, align 4, !dbg !54
  %11 = load i32, i32* @sum1, align 4, !dbg !54
  %cmp1 = icmp eq i32 %10, %11, !dbg !54
  br i1 %cmp1, label %if.then, label %if.else, !dbg !57

if.then:                                          ; preds = %for.end
  br label %if.end, !dbg !57

if.else:                                          ; preds = %for.end
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 84, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #7, !dbg !54
  unreachable, !dbg !54

if.end:                                           ; preds = %if.then
  ret i32 0, !dbg !58
}

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %len, i32* dereferenceable(4) %sum, i32* dereferenceable(4) %sum0) #2 !dbg !59 {
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
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !67, metadata !DIExpression()), !dbg !68
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !69, metadata !DIExpression()), !dbg !68
  store i32* %len, i32** %len.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !70, metadata !DIExpression()), !dbg !71
  store i32* %sum, i32** %sum.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %sum.addr, metadata !72, metadata !DIExpression()), !dbg !73
  store i32* %sum0, i32** %sum0.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %sum0.addr, metadata !74, metadata !DIExpression()), !dbg !75
  %2 = load i32*, i32** %len.addr, align 8, !dbg !76
  %3 = load i32*, i32** %sum.addr, align 8, !dbg !76
  %4 = load i32*, i32** %sum0.addr, align 8, !dbg !76
  %5 = ptrtoint i32* %4 to i64, !dbg !76
  %6 = icmp ne i64 %5, ptrtoint (i32* @sum0 to i64), !dbg !76
  br i1 %6, label %copyin.not.master, label %copyin.not.master.end, !dbg !76

copyin.not.master:                                ; preds = %entry
  %7 = load i32, i32* %4, align 4, !dbg !77
  store i32 %7, i32* @sum0, align 4, !dbg !77
  br label %copyin.not.master.end, !dbg !76

copyin.not.master.end:                            ; preds = %copyin.not.master, %entry
  %8 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !76
  store i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1, i32 0, i32 0), i8** %8, align 8, !dbg !76
  %9 = load i32*, i32** %.global_tid..addr, align 8, !dbg !76
  %10 = load i32, i32* %9, align 4, !dbg !76
  call void @__kmpc_barrier(%struct.ident_t* %.kmpc_loc.addr, i32 %10), !dbg !76
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !78, metadata !DIExpression()), !dbg !81
  call void @llvm.dbg.declare(metadata i32* %.capture_expr., metadata !82, metadata !DIExpression()), !dbg !81
  %11 = load i32, i32* %2, align 4, !dbg !83
  store i32 %11, i32* %.capture_expr., align 4, !dbg !83
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.1, metadata !82, metadata !DIExpression()), !dbg !81
  %12 = load i32, i32* %.capture_expr., align 4, !dbg !83
  %sub = sub nsw i32 %12, 0, !dbg !84
  %sub2 = sub nsw i32 %sub, 1, !dbg !84
  %add = add nsw i32 %sub2, 1, !dbg !84
  %div = sdiv i32 %add, 1, !dbg !84
  %sub3 = sub nsw i32 %div, 1, !dbg !84
  store i32 %sub3, i32* %.capture_expr.1, align 4, !dbg !84
  call void @llvm.dbg.declare(metadata i32* %i, metadata !85, metadata !DIExpression()), !dbg !81
  store i32 0, i32* %i, align 4, !dbg !86
  %13 = load i32, i32* %.capture_expr., align 4, !dbg !83
  %cmp = icmp slt i32 0, %13, !dbg !84
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end, !dbg !87

omp.precond.then:                                 ; preds = %copyin.not.master.end
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !88, metadata !DIExpression()), !dbg !81
  store i32 0, i32* %.omp.lb, align 4, !dbg !89
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !90, metadata !DIExpression()), !dbg !81
  %14 = load i32, i32* %.capture_expr.1, align 4, !dbg !84
  store i32 %14, i32* %.omp.ub, align 4, !dbg !89
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !91, metadata !DIExpression()), !dbg !81
  store i32 1, i32* %.omp.stride, align 4, !dbg !89
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !92, metadata !DIExpression()), !dbg !81
  store i32 0, i32* %.omp.is_last, align 4, !dbg !89
  call void @llvm.dbg.declare(metadata i32* %i4, metadata !85, metadata !DIExpression()), !dbg !81
  %15 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !87
  store i8* getelementptr inbounds ([44 x i8], [44 x i8]* @2, i32 0, i32 0), i8** %15, align 8, !dbg !87
  %16 = load i32*, i32** %.global_tid..addr, align 8, !dbg !87
  %17 = load i32, i32* %16, align 4, !dbg !87
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %17, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !87
  %18 = load i32, i32* %.omp.ub, align 4, !dbg !89
  %19 = load i32, i32* %.capture_expr.1, align 4, !dbg !84
  %cmp5 = icmp sgt i32 %18, %19, !dbg !89
  br i1 %cmp5, label %cond.true, label %cond.false, !dbg !89

cond.true:                                        ; preds = %omp.precond.then
  %20 = load i32, i32* %.capture_expr.1, align 4, !dbg !84
  br label %cond.end, !dbg !89

cond.false:                                       ; preds = %omp.precond.then
  %21 = load i32, i32* %.omp.ub, align 4, !dbg !89
  br label %cond.end, !dbg !89

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %20, %cond.true ], [ %21, %cond.false ], !dbg !89
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !89
  %22 = load i32, i32* %.omp.lb, align 4, !dbg !89
  store i32 %22, i32* %.omp.iv, align 4, !dbg !89
  br label %omp.inner.for.cond, !dbg !87

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %23 = load i32, i32* %.omp.iv, align 4, !dbg !89
  %24 = load i32, i32* %.omp.ub, align 4, !dbg !89
  %cmp6 = icmp sle i32 %23, %24, !dbg !84
  br i1 %cmp6, label %omp.inner.for.body, label %omp.inner.for.end, !dbg !87

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %25 = load i32, i32* %.omp.iv, align 4, !dbg !89
  %mul = mul nsw i32 %25, 1, !dbg !86
  %add7 = add nsw i32 0, %mul, !dbg !86
  store i32 %add7, i32* %i4, align 4, !dbg !86
  %26 = load i32, i32* %i4, align 4, !dbg !93
  call void @foo(i32 %26), !dbg !95
  br label %omp.body.continue, !dbg !96

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !97

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %27 = load i32, i32* %.omp.iv, align 4, !dbg !89
  %add8 = add nsw i32 %27, 1, !dbg !84
  store i32 %add8, i32* %.omp.iv, align 4, !dbg !84
  br label %omp.inner.for.cond, !dbg !97, !llvm.loop !98

omp.inner.for.end:                                ; preds = %omp.inner.for.cond
  br label %omp.loop.exit, !dbg !97

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %28 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !97
  store i8* getelementptr inbounds ([45 x i8], [45 x i8]* @3, i32 0, i32 0), i8** %28, align 8, !dbg !97
  %29 = load i32*, i32** %.global_tid..addr, align 8, !dbg !97
  %30 = load i32, i32* %29, align 4, !dbg !97
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %30), !dbg !97
  br label %omp.precond.end, !dbg !97

omp.precond.end:                                  ; preds = %omp.loop.exit, %copyin.not.master.end
  %31 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !99
  store i8* getelementptr inbounds ([44 x i8], [44 x i8]* @2, i32 0, i32 0), i8** %31, align 8, !dbg !99
  %32 = load i32*, i32** %.global_tid..addr, align 8, !dbg !99
  %33 = load i32, i32* %32, align 4, !dbg !99
  call void @__kmpc_barrier(%struct.ident_t* %.kmpc_loc.addr, i32 %33), !dbg !99
  %34 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !100
  store i8* getelementptr inbounds ([44 x i8], [44 x i8]* @4, i32 0, i32 0), i8** %34, align 8, !dbg !100
  %35 = load i32*, i32** %.global_tid..addr, align 8, !dbg !100
  %36 = load i32, i32* %35, align 4, !dbg !100
  call void @__kmpc_critical(%struct.ident_t* %.kmpc_loc.addr, i32 %36, [8 x i32]* @.gomp_critical_user_.var), !dbg !100
  %37 = load i32, i32* %3, align 4, !dbg !101
  %38 = load i32, i32* @sum0, align 4, !dbg !104
  %add9 = add nsw i32 %37, %38, !dbg !105
  store i32 %add9, i32* %3, align 4, !dbg !106
  call void @__kmpc_end_critical(%struct.ident_t* %.kmpc_loc.addr, i32 %36, [8 x i32]* @.gomp_critical_user_.var), !dbg !107
  ret void, !dbg !108
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local void @__kmpc_barrier(%struct.ident_t*, i32)

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

declare dso_local void @__kmpc_end_critical(%struct.ident_t*, i32, [8 x i32]*)

declare dso_local void @__kmpc_critical(%struct.ident_t*, i32, [8 x i32]*)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %len, i32* dereferenceable(4) %sum, i32* dereferenceable(4) %sum0) #2 !dbg !109 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %sum.addr = alloca i32*, align 8
  %sum0.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !110, metadata !DIExpression()), !dbg !111
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !112, metadata !DIExpression()), !dbg !111
  store i32* %len, i32** %len.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !113, metadata !DIExpression()), !dbg !111
  store i32* %sum, i32** %sum.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %sum.addr, metadata !114, metadata !DIExpression()), !dbg !111
  store i32* %sum0, i32** %sum0.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %sum0.addr, metadata !115, metadata !DIExpression()), !dbg !111
  %0 = load i32*, i32** %len.addr, align 8, !dbg !116
  %1 = load i32*, i32** %sum.addr, align 8, !dbg !116
  %2 = load i32*, i32** %sum0.addr, align 8, !dbg !116
  %3 = load i32*, i32** %.global_tid..addr, align 8, !dbg !116
  %4 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !116
  %5 = load i32*, i32** %len.addr, align 8, !dbg !116
  %6 = load i32*, i32** %sum.addr, align 8, !dbg !116
  %7 = load i32*, i32** %sum0.addr, align 8, !dbg !116
  call void @.omp_outlined._debug__(i32* %3, i32* %4, i32* %5, i32* %6, i32* %7) #8, !dbg !116
  ret void, !dbg !116
}

declare !callback !117 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

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
!1 = distinct !DIGlobalVariable(name: "sum0", scope: !2, file: !3, line: 54, type: !8, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.1 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "DRB085-threadprivate-orig-no.c", directory: "/home/yanze/code/OpenRace/tests/data/integration/dataracebench")
!4 = !{}
!5 = !{!0, !6}
!6 = !DIGlobalVariableExpression(var: !7, expr: !DIExpression())
!7 = distinct !DIGlobalVariable(name: "sum1", scope: !2, file: !3, line: 54, type: !8, isLocal: false, isDefinition: true)
!8 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!9 = !{i32 7, !"Dwarf Version", i32 4}
!10 = !{i32 2, !"Debug Info Version", i32 3}
!11 = !{i32 1, !"wchar_size", i32 4}
!12 = !{!"clang version 10.0.1 "}
!13 = distinct !DISubprogram(name: "foo", scope: !3, file: !3, line: 57, type: !14, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!14 = !DISubroutineType(types: !15)
!15 = !{null, !8}
!16 = !DILocalVariable(name: "i", arg: 1, scope: !13, file: !3, line: 57, type: !8)
!17 = !DILocation(line: 57, column: 15, scope: !13)
!18 = !DILocation(line: 59, column: 8, scope: !13)
!19 = !DILocation(line: 59, column: 13, scope: !13)
!20 = !DILocation(line: 59, column: 12, scope: !13)
!21 = !DILocation(line: 59, column: 7, scope: !13)
!22 = !DILocation(line: 60, column: 1, scope: !13)
!23 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 62, type: !24, scopeLine: 63, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!24 = !DISubroutineType(types: !25)
!25 = !{!8}
!26 = !DILocalVariable(name: "len", scope: !23, file: !3, line: 64, type: !8)
!27 = !DILocation(line: 64, column: 7, scope: !23)
!28 = !DILocalVariable(name: "i", scope: !23, file: !3, line: 65, type: !8)
!29 = !DILocation(line: 65, column: 7, scope: !23)
!30 = !DILocalVariable(name: "sum", scope: !23, file: !3, line: 65, type: !8)
!31 = !DILocation(line: 65, column: 10, scope: !23)
!32 = !DILocation(line: 66, column: 1, scope: !23)
!33 = !DILocation(line: 79, column: 9, scope: !34)
!34 = distinct !DILexicalBlock(scope: !23, file: !3, line: 79, column: 3)
!35 = !DILocation(line: 79, column: 8, scope: !34)
!36 = !DILocation(line: 79, column: 12, scope: !37)
!37 = distinct !DILexicalBlock(scope: !34, file: !3, line: 79, column: 3)
!38 = !DILocation(line: 79, column: 14, scope: !37)
!39 = !DILocation(line: 79, column: 13, scope: !37)
!40 = !DILocation(line: 79, column: 3, scope: !34)
!41 = !DILocation(line: 81, column: 10, scope: !42)
!42 = distinct !DILexicalBlock(scope: !37, file: !3, line: 80, column: 3)
!43 = !DILocation(line: 81, column: 15, scope: !42)
!44 = !DILocation(line: 81, column: 14, scope: !42)
!45 = !DILocation(line: 81, column: 9, scope: !42)
!46 = !DILocation(line: 82, column: 3, scope: !42)
!47 = !DILocation(line: 79, column: 19, scope: !37)
!48 = !DILocation(line: 79, column: 3, scope: !37)
!49 = distinct !{!49, !40, !50}
!50 = !DILocation(line: 82, column: 3, scope: !34)
!51 = !DILocation(line: 83, column: 30, scope: !23)
!52 = !DILocation(line: 83, column: 34, scope: !23)
!53 = !DILocation(line: 83, column: 3, scope: !23)
!54 = !DILocation(line: 84, column: 3, scope: !55)
!55 = distinct !DILexicalBlock(scope: !56, file: !3, line: 84, column: 3)
!56 = distinct !DILexicalBlock(scope: !23, file: !3, line: 84, column: 3)
!57 = !DILocation(line: 84, column: 3, scope: !56)
!58 = !DILocation(line: 85, column: 3, scope: !23)
!59 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !3, file: !3, line: 67, type: !60, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!60 = !DISubroutineType(types: !61)
!61 = !{null, !62, !62, !66, !66, !66}
!62 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !63)
!63 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !64)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!66 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !8, size: 64)
!67 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !59, type: !62, flags: DIFlagArtificial)
!68 = !DILocation(line: 0, scope: !59)
!69 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !59, type: !62, flags: DIFlagArtificial)
!70 = !DILocalVariable(name: "len", arg: 3, scope: !59, file: !3, line: 64, type: !66)
!71 = !DILocation(line: 64, column: 7, scope: !59)
!72 = !DILocalVariable(name: "sum", arg: 4, scope: !59, file: !3, line: 65, type: !66)
!73 = !DILocation(line: 65, column: 10, scope: !59)
!74 = !DILocalVariable(name: "sum0", arg: 5, scope: !59, file: !3, line: 54, type: !66)
!75 = !DILocation(line: 54, column: 5, scope: !59)
!76 = !DILocation(line: 67, column: 3, scope: !59)
!77 = !DILocation(line: 66, column: 29, scope: !59)
!78 = !DILocalVariable(name: ".omp.iv", scope: !79, type: !8, flags: DIFlagArtificial)
!79 = distinct !DILexicalBlock(scope: !80, file: !3, line: 68, column: 1)
!80 = distinct !DILexicalBlock(scope: !59, file: !3, line: 67, column: 3)
!81 = !DILocation(line: 0, scope: !79)
!82 = !DILocalVariable(name: ".capture_expr.", scope: !79, type: !8, flags: DIFlagArtificial)
!83 = !DILocation(line: 69, column: 16, scope: !79)
!84 = !DILocation(line: 69, column: 5, scope: !79)
!85 = !DILocalVariable(name: "i", scope: !79, type: !8, flags: DIFlagArtificial)
!86 = !DILocation(line: 69, column: 20, scope: !79)
!87 = !DILocation(line: 68, column: 1, scope: !80)
!88 = !DILocalVariable(name: ".omp.lb", scope: !79, type: !8, flags: DIFlagArtificial)
!89 = !DILocation(line: 69, column: 10, scope: !79)
!90 = !DILocalVariable(name: ".omp.ub", scope: !79, type: !8, flags: DIFlagArtificial)
!91 = !DILocalVariable(name: ".omp.stride", scope: !79, type: !8, flags: DIFlagArtificial)
!92 = !DILocalVariable(name: ".omp.is_last", scope: !79, type: !8, flags: DIFlagArtificial)
!93 = !DILocation(line: 71, column: 13, scope: !94)
!94 = distinct !DILexicalBlock(scope: !79, file: !3, line: 70, column: 5)
!95 = !DILocation(line: 71, column: 8, scope: !94)
!96 = !DILocation(line: 72, column: 5, scope: !94)
!97 = !DILocation(line: 68, column: 1, scope: !79)
!98 = distinct !{!98, !97, !99}
!99 = !DILocation(line: 68, column: 16, scope: !79)
!100 = !DILocation(line: 73, column: 1, scope: !80)
!101 = !DILocation(line: 75, column: 12, scope: !102)
!102 = distinct !DILexicalBlock(scope: !103, file: !3, line: 74, column: 5)
!103 = distinct !DILexicalBlock(scope: !80, file: !3, line: 73, column: 1)
!104 = !DILocation(line: 75, column: 16, scope: !102)
!105 = !DILocation(line: 75, column: 15, scope: !102)
!106 = !DILocation(line: 75, column: 10, scope: !102)
!107 = !DILocation(line: 76, column: 5, scope: !102)
!108 = !DILocation(line: 77, column: 3, scope: !59)
!109 = distinct !DISubprogram(name: ".omp_outlined.", scope: !3, file: !3, line: 67, type: !60, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!110 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !109, type: !62, flags: DIFlagArtificial)
!111 = !DILocation(line: 0, scope: !109)
!112 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !109, type: !62, flags: DIFlagArtificial)
!113 = !DILocalVariable(name: "len", arg: 3, scope: !109, type: !66, flags: DIFlagArtificial)
!114 = !DILocalVariable(name: "sum", arg: 4, scope: !109, type: !66, flags: DIFlagArtificial)
!115 = !DILocalVariable(name: "sum0", arg: 5, scope: !109, type: !66, flags: DIFlagArtificial)
!116 = !DILocation(line: 67, column: 3, scope: !109)
!117 = !{!118}
!118 = !{i64 2, i64 -1, i64 -1, i1 true}
