; ModuleID = 'DRB104-nowait-barrier-orig-no.c'
source_filename = "DRB104-nowait-barrier-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [45 x i8] c";DRB104-nowait-barrier-orig-no.c;main;66;1;;\00", align 1
@2 = private unnamed_addr constant [46 x i8] c";DRB104-nowait-barrier-orig-no.c;main;66;23;;\00", align 1
@3 = private unnamed_addr constant [45 x i8] c";DRB104-nowait-barrier-orig-no.c;main;70;1;;\00", align 1
@4 = private unnamed_addr constant [45 x i8] c";DRB104-nowait-barrier-orig-no.c;main;72;1;;\00", align 1
@5 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@6 = private unnamed_addr constant [45 x i8] c";DRB104-nowait-barrier-orig-no.c;main;64;1;;\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"error == 51\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"DRB104-nowait-barrier-orig-no.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [11 x i8] c"int main()\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"error = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !7 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %error = alloca i32, align 4
  %len = alloca i32, align 4
  %saved_stack = alloca i8*, align 8
  %__vla_expr0 = alloca i64, align 8
  %b = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata i32* %i, metadata !11, metadata !DIExpression()), !dbg !12
  call void @llvm.dbg.declare(metadata i32* %error, metadata !13, metadata !DIExpression()), !dbg !14
  call void @llvm.dbg.declare(metadata i32* %len, metadata !15, metadata !DIExpression()), !dbg !16
  store i32 1000, i32* %len, align 4, !dbg !16
  %2 = load i32, i32* %len, align 4, !dbg !17
  %3 = zext i32 %2 to i64, !dbg !18
  %4 = call i8* @llvm.stacksave(), !dbg !18
  store i8* %4, i8** %saved_stack, align 8, !dbg !18
  %vla = alloca i32, i64 %3, align 16, !dbg !18
  store i64 %3, i64* %__vla_expr0, align 8, !dbg !18
  call void @llvm.dbg.declare(metadata i64* %__vla_expr0, metadata !19, metadata !DIExpression()), !dbg !21
  call void @llvm.dbg.declare(metadata i32* %vla, metadata !22, metadata !DIExpression()), !dbg !26
  call void @llvm.dbg.declare(metadata i32* %b, metadata !27, metadata !DIExpression()), !dbg !28
  store i32 5, i32* %b, align 4, !dbg !28
  store i32 0, i32* %i, align 4, !dbg !29
  br label %for.cond, !dbg !31

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %i, align 4, !dbg !32
  %6 = load i32, i32* %len, align 4, !dbg !34
  %cmp = icmp slt i32 %5, %6, !dbg !35
  br i1 %cmp, label %for.body, label %for.end, !dbg !36

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4, !dbg !37
  %8 = load i32, i32* %i, align 4, !dbg !38
  %idxprom = sext i32 %8 to i64, !dbg !39
  %arrayidx = getelementptr inbounds i32, i32* %vla, i64 %idxprom, !dbg !39
  store i32 %7, i32* %arrayidx, align 4, !dbg !40
  br label %for.inc, !dbg !39

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4, !dbg !41
  %inc = add nsw i32 %9, 1, !dbg !41
  store i32 %inc, i32* %i, align 4, !dbg !41
  br label %for.cond, !dbg !42, !llvm.loop !43

for.end:                                          ; preds = %for.cond
  %10 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !45
  store i8* getelementptr inbounds ([45 x i8], [45 x i8]* @6, i32 0, i32 0), i8** %10, align 8, !dbg !45
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 5, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i64, i32*, i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %len, i64 %3, i32* %vla, i32* %b, i32* %error), !dbg !45
  %11 = load i32, i32* %error, align 4, !dbg !46
  %cmp1 = icmp eq i32 %11, 51, !dbg !46
  br i1 %cmp1, label %if.then, label %if.else, !dbg !49

if.then:                                          ; preds = %for.end
  br label %if.end, !dbg !49

if.else:                                          ; preds = %for.end
  call void @__assert_fail(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 75, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #7, !dbg !46
  unreachable, !dbg !46

if.end:                                           ; preds = %if.then
  %12 = load i32, i32* %error, align 4, !dbg !50
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 %12), !dbg !51
  store i32 0, i32* %retval, align 4, !dbg !52
  %13 = load i8*, i8** %saved_stack, align 8, !dbg !53
  call void @llvm.stackrestore(i8* %13), !dbg !53
  %14 = load i32, i32* %retval, align 4, !dbg !53
  ret i32 %14, !dbg !53
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %len, i64 %vla, i32* dereferenceable(4) %a, i32* dereferenceable(4) %b, i32* dereferenceable(4) %error) #3 !dbg !54 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %vla.addr = alloca i64, align 8
  %a.addr = alloca i32*, align 8
  %b.addr = alloca i32*, align 8
  %error.addr = alloca i32*, align 8
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
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !62, metadata !DIExpression()), !dbg !63
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !64, metadata !DIExpression()), !dbg !63
  store i32* %len, i32** %len.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !65, metadata !DIExpression()), !dbg !66
  store i64 %vla, i64* %vla.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %vla.addr, metadata !67, metadata !DIExpression()), !dbg !63
  store i32* %a, i32** %a.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %a.addr, metadata !68, metadata !DIExpression()), !dbg !69
  store i32* %b, i32** %b.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %b.addr, metadata !70, metadata !DIExpression()), !dbg !71
  store i32* %error, i32** %error.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %error.addr, metadata !72, metadata !DIExpression()), !dbg !73
  %2 = load i32*, i32** %len.addr, align 8, !dbg !74
  %3 = load i64, i64* %vla.addr, align 8, !dbg !74
  %4 = load i32*, i32** %a.addr, align 8, !dbg !74
  %5 = load i32*, i32** %b.addr, align 8, !dbg !74
  %6 = load i32*, i32** %error.addr, align 8, !dbg !74
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !75, metadata !DIExpression()), !dbg !78
  call void @llvm.dbg.declare(metadata i32* %.capture_expr., metadata !79, metadata !DIExpression()), !dbg !78
  %7 = load i32, i32* %2, align 4, !dbg !80
  store i32 %7, i32* %.capture_expr., align 4, !dbg !80
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.1, metadata !79, metadata !DIExpression()), !dbg !78
  %8 = load i32, i32* %.capture_expr., align 4, !dbg !80
  %sub = sub nsw i32 %8, 0, !dbg !81
  %sub2 = sub nsw i32 %sub, 1, !dbg !81
  %add = add nsw i32 %sub2, 1, !dbg !81
  %div = sdiv i32 %add, 1, !dbg !81
  %sub3 = sub nsw i32 %div, 1, !dbg !81
  store i32 %sub3, i32* %.capture_expr.1, align 4, !dbg !81
  call void @llvm.dbg.declare(metadata i32* %i, metadata !82, metadata !DIExpression()), !dbg !78
  store i32 0, i32* %i, align 4, !dbg !83
  %9 = load i32, i32* %.capture_expr., align 4, !dbg !80
  %cmp = icmp slt i32 0, %9, !dbg !81
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end, !dbg !84

omp.precond.then:                                 ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !85, metadata !DIExpression()), !dbg !78
  store i32 0, i32* %.omp.lb, align 4, !dbg !86
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !87, metadata !DIExpression()), !dbg !78
  %10 = load i32, i32* %.capture_expr.1, align 4, !dbg !81
  store i32 %10, i32* %.omp.ub, align 4, !dbg !86
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !88, metadata !DIExpression()), !dbg !78
  store i32 1, i32* %.omp.stride, align 4, !dbg !86
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !89, metadata !DIExpression()), !dbg !78
  store i32 0, i32* %.omp.is_last, align 4, !dbg !86
  call void @llvm.dbg.declare(metadata i32* %i4, metadata !82, metadata !DIExpression()), !dbg !78
  %11 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !84
  store i8* getelementptr inbounds ([45 x i8], [45 x i8]* @1, i32 0, i32 0), i8** %11, align 8, !dbg !84
  %12 = load i32*, i32** %.global_tid..addr, align 8, !dbg !84
  %13 = load i32, i32* %12, align 4, !dbg !84
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %13, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !84
  %14 = load i32, i32* %.omp.ub, align 4, !dbg !86
  %15 = load i32, i32* %.capture_expr.1, align 4, !dbg !81
  %cmp5 = icmp sgt i32 %14, %15, !dbg !86
  br i1 %cmp5, label %cond.true, label %cond.false, !dbg !86

cond.true:                                        ; preds = %omp.precond.then
  %16 = load i32, i32* %.capture_expr.1, align 4, !dbg !81
  br label %cond.end, !dbg !86

cond.false:                                       ; preds = %omp.precond.then
  %17 = load i32, i32* %.omp.ub, align 4, !dbg !86
  br label %cond.end, !dbg !86

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %16, %cond.true ], [ %17, %cond.false ], !dbg !86
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !86
  %18 = load i32, i32* %.omp.lb, align 4, !dbg !86
  store i32 %18, i32* %.omp.iv, align 4, !dbg !86
  br label %omp.inner.for.cond, !dbg !84

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %19 = load i32, i32* %.omp.iv, align 4, !dbg !86
  %20 = load i32, i32* %.omp.ub, align 4, !dbg !86
  %cmp6 = icmp sle i32 %19, %20, !dbg !81
  br i1 %cmp6, label %omp.inner.for.body, label %omp.inner.for.end, !dbg !84

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %21 = load i32, i32* %.omp.iv, align 4, !dbg !86
  %mul = mul nsw i32 %21, 1, !dbg !83
  %add7 = add nsw i32 0, %mul, !dbg !83
  store i32 %add7, i32* %i4, align 4, !dbg !83
  %22 = load i32, i32* %5, align 4, !dbg !90
  %23 = load i32, i32* %i4, align 4, !dbg !91
  %idxprom = sext i32 %23 to i64, !dbg !92
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 %idxprom, !dbg !92
  %24 = load i32, i32* %arrayidx, align 4, !dbg !92
  %mul8 = mul nsw i32 %24, 5, !dbg !93
  %add9 = add nsw i32 %22, %mul8, !dbg !94
  %25 = load i32, i32* %i4, align 4, !dbg !95
  %idxprom10 = sext i32 %25 to i64, !dbg !96
  %arrayidx11 = getelementptr inbounds i32, i32* %4, i64 %idxprom10, !dbg !96
  store i32 %add9, i32* %arrayidx11, align 4, !dbg !97
  br label %omp.body.continue, !dbg !96

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !98

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %26 = load i32, i32* %.omp.iv, align 4, !dbg !86
  %add12 = add nsw i32 %26, 1, !dbg !81
  store i32 %add12, i32* %.omp.iv, align 4, !dbg !81
  br label %omp.inner.for.cond, !dbg !98, !llvm.loop !99

omp.inner.for.end:                                ; preds = %omp.inner.for.cond
  br label %omp.loop.exit, !dbg !98

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %27 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !98
  store i8* getelementptr inbounds ([46 x i8], [46 x i8]* @2, i32 0, i32 0), i8** %27, align 8, !dbg !98
  %28 = load i32*, i32** %.global_tid..addr, align 8, !dbg !98
  %29 = load i32, i32* %28, align 4, !dbg !98
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %29), !dbg !98
  br label %omp.precond.end, !dbg !98

omp.precond.end:                                  ; preds = %omp.loop.exit, %entry
  %30 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !101
  store i8* getelementptr inbounds ([45 x i8], [45 x i8]* @3, i32 0, i32 0), i8** %30, align 8, !dbg !101
  %31 = load i32*, i32** %.global_tid..addr, align 8, !dbg !101
  %32 = load i32, i32* %31, align 4, !dbg !101
  call void @__kmpc_barrier(%struct.ident_t* %.kmpc_loc.addr, i32 %32), !dbg !101
  %33 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !102
  store i8* getelementptr inbounds ([45 x i8], [45 x i8]* @4, i32 0, i32 0), i8** %33, align 8, !dbg !102
  %34 = load i32*, i32** %.global_tid..addr, align 8, !dbg !102
  %35 = load i32, i32* %34, align 4, !dbg !102
  %36 = call i32 @__kmpc_single(%struct.ident_t* %.kmpc_loc.addr, i32 %35), !dbg !102
  %37 = icmp ne i32 %36, 0, !dbg !102
  br i1 %37, label %omp_if.then, label %omp_if.end, !dbg !102

omp_if.then:                                      ; preds = %omp.precond.end
  %arrayidx13 = getelementptr inbounds i32, i32* %4, i64 9, !dbg !103
  %38 = load i32, i32* %arrayidx13, align 4, !dbg !103
  %add14 = add nsw i32 %38, 1, !dbg !105
  store i32 %add14, i32* %6, align 4, !dbg !106
  call void @__kmpc_end_single(%struct.ident_t* %.kmpc_loc.addr, i32 %35), !dbg !107
  br label %omp_if.end, !dbg !107

omp_if.end:                                       ; preds = %omp_if.then, %omp.precond.end
  %39 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !108
  store i8* getelementptr inbounds ([45 x i8], [45 x i8]* @4, i32 0, i32 0), i8** %39, align 8, !dbg !108
  %40 = load i32*, i32** %.global_tid..addr, align 8, !dbg !108
  %41 = load i32, i32* %40, align 4, !dbg !108
  call void @__kmpc_barrier(%struct.ident_t* %.kmpc_loc.addr, i32 %41), !dbg !108
  ret void, !dbg !109
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

declare dso_local void @__kmpc_barrier(%struct.ident_t*, i32)

declare dso_local void @__kmpc_end_single(%struct.ident_t*, i32)

declare dso_local i32 @__kmpc_single(%struct.ident_t*, i32)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %len, i64 %vla, i32* dereferenceable(4) %a, i32* dereferenceable(4) %b, i32* dereferenceable(4) %error) #3 !dbg !110 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %vla.addr = alloca i64, align 8
  %a.addr = alloca i32*, align 8
  %b.addr = alloca i32*, align 8
  %error.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !111, metadata !DIExpression()), !dbg !112
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !113, metadata !DIExpression()), !dbg !112
  store i32* %len, i32** %len.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !114, metadata !DIExpression()), !dbg !112
  store i64 %vla, i64* %vla.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %vla.addr, metadata !115, metadata !DIExpression()), !dbg !112
  store i32* %a, i32** %a.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %a.addr, metadata !116, metadata !DIExpression()), !dbg !112
  store i32* %b, i32** %b.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %b.addr, metadata !117, metadata !DIExpression()), !dbg !112
  store i32* %error, i32** %error.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %error.addr, metadata !118, metadata !DIExpression()), !dbg !112
  %0 = load i32*, i32** %len.addr, align 8, !dbg !119
  %1 = load i64, i64* %vla.addr, align 8, !dbg !119
  %2 = load i32*, i32** %a.addr, align 8, !dbg !119
  %3 = load i32*, i32** %b.addr, align 8, !dbg !119
  %4 = load i32*, i32** %error.addr, align 8, !dbg !119
  %5 = load i32*, i32** %.global_tid..addr, align 8, !dbg !119
  %6 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !119
  %7 = load i32*, i32** %len.addr, align 8, !dbg !119
  %8 = load i32*, i32** %a.addr, align 8, !dbg !119
  %9 = load i32*, i32** %b.addr, align 8, !dbg !119
  %10 = load i32*, i32** %error.addr, align 8, !dbg !119
  call void @.omp_outlined._debug__(i32* %5, i32* %6, i32* %7, i64 %1, i32* %8, i32* %9, i32* %10) #2, !dbg !119
  ret void, !dbg !119
}

declare !callback !120 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) #5

declare dso_local i32 @printf(i8*, ...) #6

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { nounwind }
attributes #3 = { noinline norecurse nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind willreturn }
attributes #5 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.1 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "DRB104-nowait-barrier-orig-no.c", directory: "/home/yanze/code/OpenRace/tests/data/integration/dataracebench")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.1 "}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 55, type: !8, scopeLine: 56, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DILocalVariable(name: "i", scope: !7, file: !1, line: 57, type: !10)
!12 = !DILocation(line: 57, column: 7, scope: !7)
!13 = !DILocalVariable(name: "error", scope: !7, file: !1, line: 57, type: !10)
!14 = !DILocation(line: 57, column: 9, scope: !7)
!15 = !DILocalVariable(name: "len", scope: !7, file: !1, line: 58, type: !10)
!16 = !DILocation(line: 58, column: 7, scope: !7)
!17 = !DILocation(line: 59, column: 9, scope: !7)
!18 = !DILocation(line: 59, column: 3, scope: !7)
!19 = !DILocalVariable(name: "__vla_expr0", scope: !7, type: !20, flags: DIFlagArtificial)
!20 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!21 = !DILocation(line: 0, scope: !7)
!22 = !DILocalVariable(name: "a", scope: !7, file: !1, line: 59, type: !23)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, elements: !24)
!24 = !{!25}
!25 = !DISubrange(count: !19)
!26 = !DILocation(line: 59, column: 7, scope: !7)
!27 = !DILocalVariable(name: "b", scope: !7, file: !1, line: 59, type: !10)
!28 = !DILocation(line: 59, column: 15, scope: !7)
!29 = !DILocation(line: 61, column: 9, scope: !30)
!30 = distinct !DILexicalBlock(scope: !7, file: !1, line: 61, column: 3)
!31 = !DILocation(line: 61, column: 8, scope: !30)
!32 = !DILocation(line: 61, column: 13, scope: !33)
!33 = distinct !DILexicalBlock(scope: !30, file: !1, line: 61, column: 3)
!34 = !DILocation(line: 61, column: 15, scope: !33)
!35 = !DILocation(line: 61, column: 14, scope: !33)
!36 = !DILocation(line: 61, column: 3, scope: !30)
!37 = !DILocation(line: 62, column: 11, scope: !33)
!38 = !DILocation(line: 62, column: 7, scope: !33)
!39 = !DILocation(line: 62, column: 5, scope: !33)
!40 = !DILocation(line: 62, column: 9, scope: !33)
!41 = !DILocation(line: 61, column: 21, scope: !33)
!42 = !DILocation(line: 61, column: 3, scope: !33)
!43 = distinct !{!43, !36, !44}
!44 = !DILocation(line: 62, column: 11, scope: !30)
!45 = !DILocation(line: 64, column: 1, scope: !7)
!46 = !DILocation(line: 75, column: 3, scope: !47)
!47 = distinct !DILexicalBlock(scope: !48, file: !1, line: 75, column: 3)
!48 = distinct !DILexicalBlock(scope: !7, file: !1, line: 75, column: 3)
!49 = !DILocation(line: 75, column: 3, scope: !48)
!50 = !DILocation(line: 76, column: 27, scope: !7)
!51 = !DILocation(line: 76, column: 3, scope: !7)
!52 = !DILocation(line: 77, column: 3, scope: !7)
!53 = !DILocation(line: 78, column: 1, scope: !7)
!54 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 65, type: !55, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!55 = !DISubroutineType(types: !56)
!56 = !{null, !57, !57, !61, !20, !61, !61, !61}
!57 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !58)
!58 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !59)
!59 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!60 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!61 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !10, size: 64)
!62 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !54, type: !57, flags: DIFlagArtificial)
!63 = !DILocation(line: 0, scope: !54)
!64 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !54, type: !57, flags: DIFlagArtificial)
!65 = !DILocalVariable(name: "len", arg: 3, scope: !54, file: !1, line: 58, type: !61)
!66 = !DILocation(line: 58, column: 7, scope: !54)
!67 = !DILocalVariable(name: "vla", arg: 4, scope: !54, type: !20, flags: DIFlagArtificial)
!68 = !DILocalVariable(name: "a", arg: 5, scope: !54, file: !1, line: 59, type: !61)
!69 = !DILocation(line: 59, column: 7, scope: !54)
!70 = !DILocalVariable(name: "b", arg: 6, scope: !54, file: !1, line: 59, type: !61)
!71 = !DILocation(line: 59, column: 15, scope: !54)
!72 = !DILocalVariable(name: "error", arg: 7, scope: !54, file: !1, line: 57, type: !61)
!73 = !DILocation(line: 57, column: 9, scope: !54)
!74 = !DILocation(line: 65, column: 3, scope: !54)
!75 = !DILocalVariable(name: ".omp.iv", scope: !76, type: !10, flags: DIFlagArtificial)
!76 = distinct !DILexicalBlock(scope: !77, file: !1, line: 66, column: 1)
!77 = distinct !DILexicalBlock(scope: !54, file: !1, line: 65, column: 3)
!78 = !DILocation(line: 0, scope: !76)
!79 = !DILocalVariable(name: ".capture_expr.", scope: !76, type: !10, flags: DIFlagArtificial)
!80 = !DILocation(line: 67, column: 20, scope: !76)
!81 = !DILocation(line: 67, column: 5, scope: !76)
!82 = !DILocalVariable(name: "i", scope: !76, type: !10, flags: DIFlagArtificial)
!83 = !DILocation(line: 67, column: 25, scope: !76)
!84 = !DILocation(line: 66, column: 1, scope: !77)
!85 = !DILocalVariable(name: ".omp.lb", scope: !76, type: !10, flags: DIFlagArtificial)
!86 = !DILocation(line: 67, column: 9, scope: !76)
!87 = !DILocalVariable(name: ".omp.ub", scope: !76, type: !10, flags: DIFlagArtificial)
!88 = !DILocalVariable(name: ".omp.stride", scope: !76, type: !10, flags: DIFlagArtificial)
!89 = !DILocalVariable(name: ".omp.is_last", scope: !76, type: !10, flags: DIFlagArtificial)
!90 = !DILocation(line: 68, column: 14, scope: !76)
!91 = !DILocation(line: 68, column: 20, scope: !76)
!92 = !DILocation(line: 68, column: 18, scope: !76)
!93 = !DILocation(line: 68, column: 22, scope: !76)
!94 = !DILocation(line: 68, column: 16, scope: !76)
!95 = !DILocation(line: 68, column: 9, scope: !76)
!96 = !DILocation(line: 68, column: 7, scope: !76)
!97 = !DILocation(line: 68, column: 12, scope: !76)
!98 = !DILocation(line: 66, column: 1, scope: !76)
!99 = distinct !{!99, !98, !100}
!100 = !DILocation(line: 66, column: 23, scope: !76)
!101 = !DILocation(line: 70, column: 1, scope: !77)
!102 = !DILocation(line: 72, column: 1, scope: !77)
!103 = !DILocation(line: 73, column: 13, scope: !104)
!104 = distinct !DILexicalBlock(scope: !77, file: !1, line: 72, column: 1)
!105 = !DILocation(line: 73, column: 18, scope: !104)
!106 = !DILocation(line: 73, column: 11, scope: !104)
!107 = !DILocation(line: 73, column: 5, scope: !104)
!108 = !DILocation(line: 72, column: 19, scope: !104)
!109 = !DILocation(line: 74, column: 3, scope: !54)
!110 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 65, type: !55, scopeLine: 65, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!111 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !110, type: !57, flags: DIFlagArtificial)
!112 = !DILocation(line: 0, scope: !110)
!113 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !110, type: !57, flags: DIFlagArtificial)
!114 = !DILocalVariable(name: "len", arg: 3, scope: !110, type: !61, flags: DIFlagArtificial)
!115 = !DILocalVariable(name: "vla", arg: 4, scope: !110, type: !20, flags: DIFlagArtificial)
!116 = !DILocalVariable(name: "a", arg: 5, scope: !110, type: !61, flags: DIFlagArtificial)
!117 = !DILocalVariable(name: "b", arg: 6, scope: !110, type: !61, flags: DIFlagArtificial)
!118 = !DILocalVariable(name: "error", arg: 7, scope: !110, type: !61, flags: DIFlagArtificial)
!119 = !DILocation(line: 65, column: 3, scope: !110)
!120 = !{!121}
!121 = !{i64 2, i64 -1, i64 -1, i1 true}
