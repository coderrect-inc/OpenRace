; ModuleID = 'DRB090-static-local-orig-yes.c'
source_filename = "DRB090-static-local-orig-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@main.tmp = internal global i32 0, align 4, !dbg !0
@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [44 x i8] c";DRB090-static-local-orig-yes.c;main;70;1;;\00", align 1
@2 = private unnamed_addr constant [45 x i8] c";DRB090-static-local-orig-yes.c;main;70;16;;\00", align 1
@3 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@4 = private unnamed_addr constant [44 x i8] c";DRB090-static-local-orig-yes.c;main;67;1;;\00", align 1
@5 = private unnamed_addr constant [44 x i8] c";DRB090-static-local-orig-yes.c;main;82;1;;\00", align 1
@6 = private unnamed_addr constant [45 x i8] c";DRB090-static-local-orig-yes.c;main;82;16;;\00", align 1
@7 = private unnamed_addr constant [44 x i8] c";DRB090-static-local-orig-yes.c;main;79;1;;\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"a[50]=%d b[50]=%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !dbg !20 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %len = alloca i32, align 4
  %saved_stack = alloca i8*, align 8
  %__vla_expr0 = alloca i64, align 8
  %__vla_expr1 = alloca i64, align 8
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %argc.addr, metadata !26, metadata !DIExpression()), !dbg !27
  store i8** %argv, i8*** %argv.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %argv.addr, metadata !28, metadata !DIExpression()), !dbg !29
  call void @llvm.dbg.declare(metadata i32* %i, metadata !30, metadata !DIExpression()), !dbg !31
  call void @llvm.dbg.declare(metadata i32* %len, metadata !32, metadata !DIExpression()), !dbg !33
  store i32 100, i32* %len, align 4, !dbg !33
  %2 = load i32, i32* %len, align 4, !dbg !34
  %3 = zext i32 %2 to i64, !dbg !35
  %4 = call i8* @llvm.stacksave(), !dbg !35
  store i8* %4, i8** %saved_stack, align 8, !dbg !35
  %vla = alloca i32, i64 %3, align 16, !dbg !35
  store i64 %3, i64* %__vla_expr0, align 8, !dbg !35
  call void @llvm.dbg.declare(metadata i64* %__vla_expr0, metadata !36, metadata !DIExpression()), !dbg !37
  call void @llvm.dbg.declare(metadata i32* %vla, metadata !38, metadata !DIExpression()), !dbg !42
  %5 = load i32, i32* %len, align 4, !dbg !43
  %6 = zext i32 %5 to i64, !dbg !35
  %vla1 = alloca i32, i64 %6, align 16, !dbg !35
  store i64 %6, i64* %__vla_expr1, align 8, !dbg !35
  call void @llvm.dbg.declare(metadata i64* %__vla_expr1, metadata !44, metadata !DIExpression()), !dbg !37
  call void @llvm.dbg.declare(metadata i32* %vla1, metadata !45, metadata !DIExpression()), !dbg !49
  store i32 0, i32* %i, align 4, !dbg !50
  br label %for.cond, !dbg !52

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i32, i32* %i, align 4, !dbg !53
  %8 = load i32, i32* %len, align 4, !dbg !55
  %cmp = icmp slt i32 %7, %8, !dbg !56
  br i1 %cmp, label %for.body, label %for.end, !dbg !57

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4, !dbg !58
  %10 = load i32, i32* %i, align 4, !dbg !60
  %idxprom = sext i32 %10 to i64, !dbg !61
  %arrayidx = getelementptr inbounds i32, i32* %vla, i64 %idxprom, !dbg !61
  store i32 %9, i32* %arrayidx, align 4, !dbg !62
  %11 = load i32, i32* %i, align 4, !dbg !63
  %12 = load i32, i32* %i, align 4, !dbg !64
  %idxprom2 = sext i32 %12 to i64, !dbg !65
  %arrayidx3 = getelementptr inbounds i32, i32* %vla1, i64 %idxprom2, !dbg !65
  store i32 %11, i32* %arrayidx3, align 4, !dbg !66
  br label %for.inc, !dbg !67

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %i, align 4, !dbg !68
  %inc = add nsw i32 %13, 1, !dbg !68
  store i32 %inc, i32* %i, align 4, !dbg !68
  br label %for.cond, !dbg !69, !llvm.loop !70

for.end:                                          ; preds = %for.cond
  %14 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !72
  store i8* getelementptr inbounds ([44 x i8], [44 x i8]* @4, i32 0, i32 0), i8** %14, align 8, !dbg !72
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i64, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %len, i64 %3, i32* %vla), !dbg !72
  %15 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !73
  store i8* getelementptr inbounds ([44 x i8], [44 x i8]* @7, i32 0, i32 0), i8** %15, align 8, !dbg !73
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i64, i32*)* @.omp_outlined..2 to void (i32*, i32*, ...)*), i32* %len, i64 %6, i32* %vla1), !dbg !73
  %arrayidx4 = getelementptr inbounds i32, i32* %vla, i64 50, !dbg !74
  %16 = load i32, i32* %arrayidx4, align 8, !dbg !74
  %arrayidx5 = getelementptr inbounds i32, i32* %vla1, i64 50, !dbg !75
  %17 = load i32, i32* %arrayidx5, align 8, !dbg !75
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i32 %16, i32 %17), !dbg !76
  store i32 0, i32* %retval, align 4, !dbg !77
  %18 = load i8*, i8** %saved_stack, align 8, !dbg !78
  call void @llvm.stackrestore(i8* %18), !dbg !78
  %19 = load i32, i32* %retval, align 4, !dbg !78
  ret i32 %19, !dbg !78
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %len, i64 %vla, i32* dereferenceable(4) %a) #3 !dbg !2 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %vla.addr = alloca i64, align 8
  %a.addr = alloca i32*, align 8
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
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !79, metadata !DIExpression()), !dbg !80
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !81, metadata !DIExpression()), !dbg !80
  store i32* %len, i32** %len.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !82, metadata !DIExpression()), !dbg !83
  store i64 %vla, i64* %vla.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %vla.addr, metadata !84, metadata !DIExpression()), !dbg !80
  store i32* %a, i32** %a.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %a.addr, metadata !85, metadata !DIExpression()), !dbg !86
  %2 = load i32*, i32** %len.addr, align 8, !dbg !87
  %3 = load i64, i64* %vla.addr, align 8, !dbg !87
  %4 = load i32*, i32** %a.addr, align 8, !dbg !87
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !88, metadata !DIExpression()), !dbg !91
  call void @llvm.dbg.declare(metadata i32* %.capture_expr., metadata !92, metadata !DIExpression()), !dbg !91
  %5 = load i32, i32* %2, align 4, !dbg !93
  store i32 %5, i32* %.capture_expr., align 4, !dbg !93
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.1, metadata !92, metadata !DIExpression()), !dbg !91
  %6 = load i32, i32* %.capture_expr., align 4, !dbg !93
  %sub = sub nsw i32 %6, 0, !dbg !94
  %sub2 = sub nsw i32 %sub, 1, !dbg !94
  %add = add nsw i32 %sub2, 1, !dbg !94
  %div = sdiv i32 %add, 1, !dbg !94
  %sub3 = sub nsw i32 %div, 1, !dbg !94
  store i32 %sub3, i32* %.capture_expr.1, align 4, !dbg !94
  call void @llvm.dbg.declare(metadata i32* %i, metadata !95, metadata !DIExpression()), !dbg !91
  store i32 0, i32* %i, align 4, !dbg !96
  %7 = load i32, i32* %.capture_expr., align 4, !dbg !93
  %cmp = icmp slt i32 0, %7, !dbg !94
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end, !dbg !97

omp.precond.then:                                 ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !98, metadata !DIExpression()), !dbg !91
  store i32 0, i32* %.omp.lb, align 4, !dbg !99
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !100, metadata !DIExpression()), !dbg !91
  %8 = load i32, i32* %.capture_expr.1, align 4, !dbg !94
  store i32 %8, i32* %.omp.ub, align 4, !dbg !99
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !101, metadata !DIExpression()), !dbg !91
  store i32 1, i32* %.omp.stride, align 4, !dbg !99
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !102, metadata !DIExpression()), !dbg !91
  store i32 0, i32* %.omp.is_last, align 4, !dbg !99
  call void @llvm.dbg.declare(metadata i32* %i4, metadata !95, metadata !DIExpression()), !dbg !91
  %9 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !97
  store i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1, i32 0, i32 0), i8** %9, align 8, !dbg !97
  %10 = load i32*, i32** %.global_tid..addr, align 8, !dbg !97
  %11 = load i32, i32* %10, align 4, !dbg !97
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %11, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !97
  %12 = load i32, i32* %.omp.ub, align 4, !dbg !99
  %13 = load i32, i32* %.capture_expr.1, align 4, !dbg !94
  %cmp5 = icmp sgt i32 %12, %13, !dbg !99
  br i1 %cmp5, label %cond.true, label %cond.false, !dbg !99

cond.true:                                        ; preds = %omp.precond.then
  %14 = load i32, i32* %.capture_expr.1, align 4, !dbg !94
  br label %cond.end, !dbg !99

cond.false:                                       ; preds = %omp.precond.then
  %15 = load i32, i32* %.omp.ub, align 4, !dbg !99
  br label %cond.end, !dbg !99

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %14, %cond.true ], [ %15, %cond.false ], !dbg !99
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !99
  %16 = load i32, i32* %.omp.lb, align 4, !dbg !99
  store i32 %16, i32* %.omp.iv, align 4, !dbg !99
  br label %omp.inner.for.cond, !dbg !97

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %17 = load i32, i32* %.omp.iv, align 4, !dbg !99
  %18 = load i32, i32* %.omp.ub, align 4, !dbg !99
  %cmp6 = icmp sle i32 %17, %18, !dbg !94
  br i1 %cmp6, label %omp.inner.for.body, label %omp.inner.for.end, !dbg !97

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %19 = load i32, i32* %.omp.iv, align 4, !dbg !99
  %mul = mul nsw i32 %19, 1, !dbg !96
  %add7 = add nsw i32 0, %mul, !dbg !96
  store i32 %add7, i32* %i4, align 4, !dbg !96
  %20 = load i32, i32* %i4, align 4, !dbg !103
  %idxprom = sext i32 %20 to i64, !dbg !105
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 %idxprom, !dbg !105
  %21 = load i32, i32* %arrayidx, align 4, !dbg !105
  %22 = load i32, i32* %i4, align 4, !dbg !106
  %add8 = add nsw i32 %21, %22, !dbg !107
  store i32 %add8, i32* @main.tmp, align 4, !dbg !108
  %23 = load i32, i32* @main.tmp, align 4, !dbg !109
  %24 = load i32, i32* %i4, align 4, !dbg !110
  %idxprom9 = sext i32 %24 to i64, !dbg !111
  %arrayidx10 = getelementptr inbounds i32, i32* %4, i64 %idxprom9, !dbg !111
  store i32 %23, i32* %arrayidx10, align 4, !dbg !112
  br label %omp.body.continue, !dbg !113

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !114

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %25 = load i32, i32* %.omp.iv, align 4, !dbg !99
  %add11 = add nsw i32 %25, 1, !dbg !94
  store i32 %add11, i32* %.omp.iv, align 4, !dbg !94
  br label %omp.inner.for.cond, !dbg !114, !llvm.loop !115

omp.inner.for.end:                                ; preds = %omp.inner.for.cond
  br label %omp.loop.exit, !dbg !114

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %26 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !114
  store i8* getelementptr inbounds ([45 x i8], [45 x i8]* @2, i32 0, i32 0), i8** %26, align 8, !dbg !114
  %27 = load i32*, i32** %.global_tid..addr, align 8, !dbg !114
  %28 = load i32, i32* %27, align 4, !dbg !114
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %28), !dbg !114
  br label %omp.precond.end, !dbg !114

omp.precond.end:                                  ; preds = %omp.loop.exit, %entry
  %29 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !116
  store i8* getelementptr inbounds ([44 x i8], [44 x i8]* @1, i32 0, i32 0), i8** %29, align 8, !dbg !116
  %30 = load i32*, i32** %.global_tid..addr, align 8, !dbg !116
  %31 = load i32, i32* %30, align 4, !dbg !116
  call void @__kmpc_barrier(%struct.ident_t* %.kmpc_loc.addr, i32 %31), !dbg !116
  ret void, !dbg !117
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

declare dso_local void @__kmpc_barrier(%struct.ident_t*, i32)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %len, i64 %vla, i32* dereferenceable(4) %a) #3 !dbg !118 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %vla.addr = alloca i64, align 8
  %a.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !119, metadata !DIExpression()), !dbg !120
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !121, metadata !DIExpression()), !dbg !120
  store i32* %len, i32** %len.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !122, metadata !DIExpression()), !dbg !120
  store i64 %vla, i64* %vla.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %vla.addr, metadata !123, metadata !DIExpression()), !dbg !120
  store i32* %a, i32** %a.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %a.addr, metadata !124, metadata !DIExpression()), !dbg !120
  %0 = load i32*, i32** %len.addr, align 8, !dbg !125
  %1 = load i64, i64* %vla.addr, align 8, !dbg !125
  %2 = load i32*, i32** %a.addr, align 8, !dbg !125
  %3 = load i32*, i32** %.global_tid..addr, align 8, !dbg !125
  %4 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !125
  %5 = load i32*, i32** %len.addr, align 8, !dbg !125
  %6 = load i32*, i32** %a.addr, align 8, !dbg !125
  call void @.omp_outlined._debug__(i32* %3, i32* %4, i32* %5, i64 %1, i32* %6) #2, !dbg !125
  ret void, !dbg !125
}

declare !callback !126 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined._debug__.1(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %len, i64 %vla, i32* dereferenceable(4) %b) #3 !dbg !128 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %vla.addr = alloca i64, align 8
  %b.addr = alloca i32*, align 8
  %tmp = alloca i32, align 4
  %.omp.iv = alloca i32, align 4
  %tmp1 = alloca i32, align 4
  %.capture_expr. = alloca i32, align 4
  %.capture_expr.2 = alloca i32, align 4
  %i = alloca i32, align 4
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %i5 = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !129, metadata !DIExpression()), !dbg !130
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !131, metadata !DIExpression()), !dbg !130
  store i32* %len, i32** %len.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !132, metadata !DIExpression()), !dbg !133
  store i64 %vla, i64* %vla.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %vla.addr, metadata !134, metadata !DIExpression()), !dbg !130
  store i32* %b, i32** %b.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %b.addr, metadata !135, metadata !DIExpression()), !dbg !136
  %2 = load i32*, i32** %len.addr, align 8, !dbg !137
  %3 = load i64, i64* %vla.addr, align 8, !dbg !137
  %4 = load i32*, i32** %b.addr, align 8, !dbg !137
  call void @llvm.dbg.declare(metadata i32* %tmp, metadata !138, metadata !DIExpression()), !dbg !140
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !141, metadata !DIExpression()), !dbg !143
  call void @llvm.dbg.declare(metadata i32* %.capture_expr., metadata !144, metadata !DIExpression()), !dbg !143
  %5 = load i32, i32* %2, align 4, !dbg !145
  store i32 %5, i32* %.capture_expr., align 4, !dbg !145
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.2, metadata !144, metadata !DIExpression()), !dbg !143
  %6 = load i32, i32* %.capture_expr., align 4, !dbg !145
  %sub = sub nsw i32 %6, 0, !dbg !146
  %sub3 = sub nsw i32 %sub, 1, !dbg !146
  %add = add nsw i32 %sub3, 1, !dbg !146
  %div = sdiv i32 %add, 1, !dbg !146
  %sub4 = sub nsw i32 %div, 1, !dbg !146
  store i32 %sub4, i32* %.capture_expr.2, align 4, !dbg !146
  call void @llvm.dbg.declare(metadata i32* %i, metadata !147, metadata !DIExpression()), !dbg !143
  store i32 0, i32* %i, align 4, !dbg !148
  %7 = load i32, i32* %.capture_expr., align 4, !dbg !145
  %cmp = icmp slt i32 0, %7, !dbg !146
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end, !dbg !149

omp.precond.then:                                 ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !150, metadata !DIExpression()), !dbg !143
  store i32 0, i32* %.omp.lb, align 4, !dbg !151
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !152, metadata !DIExpression()), !dbg !143
  %8 = load i32, i32* %.capture_expr.2, align 4, !dbg !146
  store i32 %8, i32* %.omp.ub, align 4, !dbg !151
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !153, metadata !DIExpression()), !dbg !143
  store i32 1, i32* %.omp.stride, align 4, !dbg !151
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !154, metadata !DIExpression()), !dbg !143
  store i32 0, i32* %.omp.is_last, align 4, !dbg !151
  call void @llvm.dbg.declare(metadata i32* %i5, metadata !147, metadata !DIExpression()), !dbg !143
  %9 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !149
  store i8* getelementptr inbounds ([44 x i8], [44 x i8]* @5, i32 0, i32 0), i8** %9, align 8, !dbg !149
  %10 = load i32*, i32** %.global_tid..addr, align 8, !dbg !149
  %11 = load i32, i32* %10, align 4, !dbg !149
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %11, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !149
  %12 = load i32, i32* %.omp.ub, align 4, !dbg !151
  %13 = load i32, i32* %.capture_expr.2, align 4, !dbg !146
  %cmp6 = icmp sgt i32 %12, %13, !dbg !151
  br i1 %cmp6, label %cond.true, label %cond.false, !dbg !151

cond.true:                                        ; preds = %omp.precond.then
  %14 = load i32, i32* %.capture_expr.2, align 4, !dbg !146
  br label %cond.end, !dbg !151

cond.false:                                       ; preds = %omp.precond.then
  %15 = load i32, i32* %.omp.ub, align 4, !dbg !151
  br label %cond.end, !dbg !151

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %14, %cond.true ], [ %15, %cond.false ], !dbg !151
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !151
  %16 = load i32, i32* %.omp.lb, align 4, !dbg !151
  store i32 %16, i32* %.omp.iv, align 4, !dbg !151
  br label %omp.inner.for.cond, !dbg !149

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %17 = load i32, i32* %.omp.iv, align 4, !dbg !151
  %18 = load i32, i32* %.omp.ub, align 4, !dbg !151
  %cmp7 = icmp sle i32 %17, %18, !dbg !146
  br i1 %cmp7, label %omp.inner.for.body, label %omp.inner.for.end, !dbg !149

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %19 = load i32, i32* %.omp.iv, align 4, !dbg !151
  %mul = mul nsw i32 %19, 1, !dbg !148
  %add8 = add nsw i32 0, %mul, !dbg !148
  store i32 %add8, i32* %i5, align 4, !dbg !148
  %20 = load i32, i32* %i5, align 4, !dbg !155
  %idxprom = sext i32 %20 to i64, !dbg !157
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 %idxprom, !dbg !157
  %21 = load i32, i32* %arrayidx, align 4, !dbg !157
  %22 = load i32, i32* %i5, align 4, !dbg !158
  %add9 = add nsw i32 %21, %22, !dbg !159
  store i32 %add9, i32* %tmp, align 4, !dbg !160
  %23 = load i32, i32* %tmp, align 4, !dbg !161
  %24 = load i32, i32* %i5, align 4, !dbg !162
  %idxprom10 = sext i32 %24 to i64, !dbg !163
  %arrayidx11 = getelementptr inbounds i32, i32* %4, i64 %idxprom10, !dbg !163
  store i32 %23, i32* %arrayidx11, align 4, !dbg !164
  br label %omp.body.continue, !dbg !165

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !166

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %25 = load i32, i32* %.omp.iv, align 4, !dbg !151
  %add12 = add nsw i32 %25, 1, !dbg !146
  store i32 %add12, i32* %.omp.iv, align 4, !dbg !146
  br label %omp.inner.for.cond, !dbg !166, !llvm.loop !167

omp.inner.for.end:                                ; preds = %omp.inner.for.cond
  br label %omp.loop.exit, !dbg !166

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %26 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !166
  store i8* getelementptr inbounds ([45 x i8], [45 x i8]* @6, i32 0, i32 0), i8** %26, align 8, !dbg !166
  %27 = load i32*, i32** %.global_tid..addr, align 8, !dbg !166
  %28 = load i32, i32* %27, align 4, !dbg !166
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %28), !dbg !166
  br label %omp.precond.end, !dbg !166

omp.precond.end:                                  ; preds = %omp.loop.exit, %entry
  %29 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !168
  store i8* getelementptr inbounds ([44 x i8], [44 x i8]* @5, i32 0, i32 0), i8** %29, align 8, !dbg !168
  %30 = load i32*, i32** %.global_tid..addr, align 8, !dbg !168
  %31 = load i32, i32* %30, align 4, !dbg !168
  call void @__kmpc_barrier(%struct.ident_t* %.kmpc_loc.addr, i32 %31), !dbg !168
  ret void, !dbg !169
}

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined..2(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %len, i64 %vla, i32* dereferenceable(4) %b) #3 !dbg !170 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %vla.addr = alloca i64, align 8
  %b.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !171, metadata !DIExpression()), !dbg !172
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !173, metadata !DIExpression()), !dbg !172
  store i32* %len, i32** %len.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !174, metadata !DIExpression()), !dbg !172
  store i64 %vla, i64* %vla.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %vla.addr, metadata !175, metadata !DIExpression()), !dbg !172
  store i32* %b, i32** %b.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %b.addr, metadata !176, metadata !DIExpression()), !dbg !172
  %0 = load i32*, i32** %len.addr, align 8, !dbg !177
  %1 = load i64, i64* %vla.addr, align 8, !dbg !177
  %2 = load i32*, i32** %b.addr, align 8, !dbg !177
  %3 = load i32*, i32** %.global_tid..addr, align 8, !dbg !177
  %4 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !177
  %5 = load i32*, i32** %len.addr, align 8, !dbg !177
  %6 = load i32*, i32** %b.addr, align 8, !dbg !177
  call void @.omp_outlined._debug__.1(i32* %3, i32* %4, i32* %5, i64 %1, i32* %6) #2, !dbg !177
  ret void, !dbg !177
}

declare dso_local i32 @printf(i8*, ...) #5

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { nounwind }
attributes #3 = { noinline norecurse nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind willreturn }
attributes #5 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!13}
!llvm.module.flags = !{!16, !17, !18}
!llvm.ident = !{!19}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "tmp", scope: !2, file: !3, line: 69, type: !10, isLocal: true, isDefinition: true)
!2 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !3, file: !3, line: 68, type: !4, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !13, retainedNodes: !14)
!3 = !DIFile(filename: "DRB090-static-local-orig-yes.c", directory: "/home/yanze/code/OpenRace/tests/data/integration/dataracebench")
!4 = !DISubroutineType(types: !5)
!5 = !{null, !6, !6, !11, !12, !11}
!6 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!7 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !8)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !10, size: 64)
!12 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!13 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.1 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !14, globals: !15, splitDebugInlining: false, nameTableKind: None)
!14 = !{}
!15 = !{!0}
!16 = !{i32 7, !"Dwarf Version", i32 4}
!17 = !{i32 2, !"Debug Info Version", i32 3}
!18 = !{i32 1, !"wchar_size", i32 4}
!19 = !{!"clang version 10.0.1 "}
!20 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 58, type: !21, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !13, retainedNodes: !14)
!21 = !DISubroutineType(types: !22)
!22 = !{!10, !10, !23}
!23 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !24, size: 64)
!24 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !25, size: 64)
!25 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!26 = !DILocalVariable(name: "argc", arg: 1, scope: !20, file: !3, line: 58, type: !10)
!27 = !DILocation(line: 58, column: 14, scope: !20)
!28 = !DILocalVariable(name: "argv", arg: 2, scope: !20, file: !3, line: 58, type: !23)
!29 = !DILocation(line: 58, column: 26, scope: !20)
!30 = !DILocalVariable(name: "i", scope: !20, file: !3, line: 60, type: !10)
!31 = !DILocation(line: 60, column: 7, scope: !20)
!32 = !DILocalVariable(name: "len", scope: !20, file: !3, line: 61, type: !10)
!33 = !DILocation(line: 61, column: 7, scope: !20)
!34 = !DILocation(line: 62, column: 9, scope: !20)
!35 = !DILocation(line: 62, column: 3, scope: !20)
!36 = !DILocalVariable(name: "__vla_expr0", scope: !20, type: !12, flags: DIFlagArtificial)
!37 = !DILocation(line: 0, scope: !20)
!38 = !DILocalVariable(name: "a", scope: !20, file: !3, line: 62, type: !39)
!39 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, elements: !40)
!40 = !{!41}
!41 = !DISubrange(count: !36)
!42 = !DILocation(line: 62, column: 7, scope: !20)
!43 = !DILocation(line: 62, column: 17, scope: !20)
!44 = !DILocalVariable(name: "__vla_expr1", scope: !20, type: !12, flags: DIFlagArtificial)
!45 = !DILocalVariable(name: "b", scope: !20, file: !3, line: 62, type: !46)
!46 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, elements: !47)
!47 = !{!48}
!48 = !DISubrange(count: !44)
!49 = !DILocation(line: 62, column: 15, scope: !20)
!50 = !DILocation(line: 64, column: 9, scope: !51)
!51 = distinct !DILexicalBlock(scope: !20, file: !3, line: 64, column: 3)
!52 = !DILocation(line: 64, column: 8, scope: !51)
!53 = !DILocation(line: 64, column: 12, scope: !54)
!54 = distinct !DILexicalBlock(scope: !51, file: !3, line: 64, column: 3)
!55 = !DILocation(line: 64, column: 14, scope: !54)
!56 = !DILocation(line: 64, column: 13, scope: !54)
!57 = !DILocation(line: 64, column: 3, scope: !51)
!58 = !DILocation(line: 65, column: 11, scope: !59)
!59 = distinct !DILexicalBlock(scope: !54, file: !3, line: 65, column: 3)
!60 = !DILocation(line: 65, column: 8, scope: !59)
!61 = !DILocation(line: 65, column: 6, scope: !59)
!62 = !DILocation(line: 65, column: 10, scope: !59)
!63 = !DILocation(line: 65, column: 19, scope: !59)
!64 = !DILocation(line: 65, column: 16, scope: !59)
!65 = !DILocation(line: 65, column: 14, scope: !59)
!66 = !DILocation(line: 65, column: 18, scope: !59)
!67 = !DILocation(line: 65, column: 21, scope: !59)
!68 = !DILocation(line: 64, column: 19, scope: !54)
!69 = !DILocation(line: 64, column: 3, scope: !54)
!70 = distinct !{!70, !57, !71}
!71 = !DILocation(line: 65, column: 21, scope: !51)
!72 = !DILocation(line: 67, column: 1, scope: !20)
!73 = !DILocation(line: 79, column: 1, scope: !20)
!74 = !DILocation(line: 90, column: 33, scope: !20)
!75 = !DILocation(line: 90, column: 40, scope: !20)
!76 = !DILocation(line: 90, column: 3, scope: !20)
!77 = !DILocation(line: 92, column: 3, scope: !20)
!78 = !DILocation(line: 93, column: 1, scope: !20)
!79 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !2, type: !6, flags: DIFlagArtificial)
!80 = !DILocation(line: 0, scope: !2)
!81 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !2, type: !6, flags: DIFlagArtificial)
!82 = !DILocalVariable(name: "len", arg: 3, scope: !2, file: !3, line: 61, type: !11)
!83 = !DILocation(line: 61, column: 7, scope: !2)
!84 = !DILocalVariable(name: "vla", arg: 4, scope: !2, type: !12, flags: DIFlagArtificial)
!85 = !DILocalVariable(name: "a", arg: 5, scope: !2, file: !3, line: 62, type: !11)
!86 = !DILocation(line: 62, column: 7, scope: !2)
!87 = !DILocation(line: 68, column: 3, scope: !2)
!88 = !DILocalVariable(name: ".omp.iv", scope: !89, type: !10, flags: DIFlagArtificial)
!89 = distinct !DILexicalBlock(scope: !90, file: !3, line: 70, column: 1)
!90 = distinct !DILexicalBlock(scope: !2, file: !3, line: 68, column: 3)
!91 = !DILocation(line: 0, scope: !89)
!92 = !DILocalVariable(name: ".capture_expr.", scope: !89, type: !10, flags: DIFlagArtificial)
!93 = !DILocation(line: 71, column: 16, scope: !89)
!94 = !DILocation(line: 71, column: 5, scope: !89)
!95 = !DILocalVariable(name: "i", scope: !89, type: !10, flags: DIFlagArtificial)
!96 = !DILocation(line: 71, column: 20, scope: !89)
!97 = !DILocation(line: 70, column: 1, scope: !90)
!98 = !DILocalVariable(name: ".omp.lb", scope: !89, type: !10, flags: DIFlagArtificial)
!99 = !DILocation(line: 71, column: 10, scope: !89)
!100 = !DILocalVariable(name: ".omp.ub", scope: !89, type: !10, flags: DIFlagArtificial)
!101 = !DILocalVariable(name: ".omp.stride", scope: !89, type: !10, flags: DIFlagArtificial)
!102 = !DILocalVariable(name: ".omp.is_last", scope: !89, type: !10, flags: DIFlagArtificial)
!103 = !DILocation(line: 73, column: 15, scope: !104)
!104 = distinct !DILexicalBlock(scope: !89, file: !3, line: 72, column: 5)
!105 = !DILocation(line: 73, column: 13, scope: !104)
!106 = !DILocation(line: 73, column: 18, scope: !104)
!107 = !DILocation(line: 73, column: 17, scope: !104)
!108 = !DILocation(line: 73, column: 11, scope: !104)
!109 = !DILocation(line: 74, column: 14, scope: !104)
!110 = !DILocation(line: 74, column: 9, scope: !104)
!111 = !DILocation(line: 74, column: 7, scope: !104)
!112 = !DILocation(line: 74, column: 12, scope: !104)
!113 = !DILocation(line: 75, column: 5, scope: !104)
!114 = !DILocation(line: 70, column: 1, scope: !89)
!115 = distinct !{!115, !114, !116}
!116 = !DILocation(line: 70, column: 16, scope: !89)
!117 = !DILocation(line: 76, column: 3, scope: !2)
!118 = distinct !DISubprogram(name: ".omp_outlined.", scope: !3, file: !3, line: 68, type: !4, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !13, retainedNodes: !14)
!119 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !118, type: !6, flags: DIFlagArtificial)
!120 = !DILocation(line: 0, scope: !118)
!121 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !118, type: !6, flags: DIFlagArtificial)
!122 = !DILocalVariable(name: "len", arg: 3, scope: !118, type: !11, flags: DIFlagArtificial)
!123 = !DILocalVariable(name: "vla", arg: 4, scope: !118, type: !12, flags: DIFlagArtificial)
!124 = !DILocalVariable(name: "a", arg: 5, scope: !118, type: !11, flags: DIFlagArtificial)
!125 = !DILocation(line: 68, column: 3, scope: !118)
!126 = !{!127}
!127 = !{i64 2, i64 -1, i64 -1, i1 true}
!128 = distinct !DISubprogram(name: ".omp_outlined._debug__.1", scope: !3, file: !3, line: 80, type: !4, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !13, retainedNodes: !14)
!129 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !128, type: !6, flags: DIFlagArtificial)
!130 = !DILocation(line: 0, scope: !128)
!131 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !128, type: !6, flags: DIFlagArtificial)
!132 = !DILocalVariable(name: "len", arg: 3, scope: !128, file: !3, line: 61, type: !11)
!133 = !DILocation(line: 61, column: 7, scope: !128)
!134 = !DILocalVariable(name: "vla", arg: 4, scope: !128, type: !12, flags: DIFlagArtificial)
!135 = !DILocalVariable(name: "b", arg: 5, scope: !128, file: !3, line: 62, type: !11)
!136 = !DILocation(line: 62, column: 15, scope: !128)
!137 = !DILocation(line: 80, column: 3, scope: !128)
!138 = !DILocalVariable(name: "tmp", scope: !139, file: !3, line: 81, type: !10)
!139 = distinct !DILexicalBlock(scope: !128, file: !3, line: 80, column: 3)
!140 = !DILocation(line: 81, column: 9, scope: !139)
!141 = !DILocalVariable(name: ".omp.iv", scope: !142, type: !10, flags: DIFlagArtificial)
!142 = distinct !DILexicalBlock(scope: !139, file: !3, line: 82, column: 1)
!143 = !DILocation(line: 0, scope: !142)
!144 = !DILocalVariable(name: ".capture_expr.", scope: !142, type: !10, flags: DIFlagArtificial)
!145 = !DILocation(line: 83, column: 16, scope: !142)
!146 = !DILocation(line: 83, column: 5, scope: !142)
!147 = !DILocalVariable(name: "i", scope: !142, type: !10, flags: DIFlagArtificial)
!148 = !DILocation(line: 83, column: 20, scope: !142)
!149 = !DILocation(line: 82, column: 1, scope: !139)
!150 = !DILocalVariable(name: ".omp.lb", scope: !142, type: !10, flags: DIFlagArtificial)
!151 = !DILocation(line: 83, column: 10, scope: !142)
!152 = !DILocalVariable(name: ".omp.ub", scope: !142, type: !10, flags: DIFlagArtificial)
!153 = !DILocalVariable(name: ".omp.stride", scope: !142, type: !10, flags: DIFlagArtificial)
!154 = !DILocalVariable(name: ".omp.is_last", scope: !142, type: !10, flags: DIFlagArtificial)
!155 = !DILocation(line: 85, column: 15, scope: !156)
!156 = distinct !DILexicalBlock(scope: !142, file: !3, line: 84, column: 5)
!157 = !DILocation(line: 85, column: 13, scope: !156)
!158 = !DILocation(line: 85, column: 18, scope: !156)
!159 = !DILocation(line: 85, column: 17, scope: !156)
!160 = !DILocation(line: 85, column: 11, scope: !156)
!161 = !DILocation(line: 86, column: 14, scope: !156)
!162 = !DILocation(line: 86, column: 9, scope: !156)
!163 = !DILocation(line: 86, column: 7, scope: !156)
!164 = !DILocation(line: 86, column: 12, scope: !156)
!165 = !DILocation(line: 87, column: 5, scope: !156)
!166 = !DILocation(line: 82, column: 1, scope: !142)
!167 = distinct !{!167, !166, !168}
!168 = !DILocation(line: 82, column: 16, scope: !142)
!169 = !DILocation(line: 88, column: 3, scope: !128)
!170 = distinct !DISubprogram(name: ".omp_outlined..2", scope: !3, file: !3, line: 80, type: !4, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !13, retainedNodes: !14)
!171 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !170, type: !6, flags: DIFlagArtificial)
!172 = !DILocation(line: 0, scope: !170)
!173 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !170, type: !6, flags: DIFlagArtificial)
!174 = !DILocalVariable(name: "len", arg: 3, scope: !170, type: !11, flags: DIFlagArtificial)
!175 = !DILocalVariable(name: "vla", arg: 4, scope: !170, type: !12, flags: DIFlagArtificial)
!176 = !DILocalVariable(name: "b", arg: 5, scope: !170, type: !11, flags: DIFlagArtificial)
!177 = !DILocation(line: 80, column: 3, scope: !170)
