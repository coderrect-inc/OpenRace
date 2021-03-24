; ModuleID = 'DRB121-reduction-orig-no.c'
source_filename = "DRB121-reduction-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [40 x i8] c";DRB121-reduction-orig-no.c;main;30;5;;\00", align 1
@2 = private unnamed_addr constant [41 x i8] c";DRB121-reduction-orig-no.c;main;30;56;;\00", align 1
@.gomp_critical_user_.reduction.var = common global [8 x i32] zeroinitializer
@3 = private unnamed_addr constant [40 x i8] c";DRB121-reduction-orig-no.c;main;33;5;;\00", align 1
@4 = private unnamed_addr constant [41 x i8] c";DRB121-reduction-orig-no.c;main;33;56;;\00", align 1
@5 = private unnamed_addr constant [41 x i8] c";DRB121-reduction-orig-no.c;main;28;41;;\00", align 1
@6 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@7 = private unnamed_addr constant [40 x i8] c";DRB121-reduction-orig-no.c;main;28;3;;\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"%d %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !dbg !7 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %var = alloca i32, align 4
  %i = alloca i32, align 4
  %res = alloca i32, align 4
  %sum1 = alloca i32, align 4
  %sum2 = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %error = alloca i32, align 4
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %argc.addr, metadata !14, metadata !DIExpression()), !dbg !15
  store i8** %argv, i8*** %argv.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %argv.addr, metadata !16, metadata !DIExpression()), !dbg !17
  call void @llvm.dbg.declare(metadata i32* %var, metadata !18, metadata !DIExpression()), !dbg !19
  store i32 0, i32* %var, align 4, !dbg !19
  call void @llvm.dbg.declare(metadata i32* %i, metadata !20, metadata !DIExpression()), !dbg !21
  call void @llvm.dbg.declare(metadata i32* %res, metadata !22, metadata !DIExpression()), !dbg !23
  call void @llvm.dbg.declare(metadata i32* %sum1, metadata !24, metadata !DIExpression()), !dbg !25
  store i32 0, i32* %sum1, align 4, !dbg !25
  call void @llvm.dbg.declare(metadata i32* %sum2, metadata !26, metadata !DIExpression()), !dbg !27
  store i32 0, i32* %sum2, align 4, !dbg !27
  %call = call i32 @omp_get_max_threads(), !dbg !28
  store i32 %call, i32* %res, align 4, !dbg !29
  %2 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !30
  store i8* getelementptr inbounds ([40 x i8], [40 x i8]* @7, i32 0, i32 0), i8** %2, align 8, !dbg !30
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %sum1, i32* %sum2, i32* %var), !dbg !30
  call void @llvm.dbg.declare(metadata i32* %error, metadata !31, metadata !DIExpression()), !dbg !32
  %3 = load i32, i32* %var, align 4, !dbg !33
  %4 = load i32, i32* %res, align 4, !dbg !34
  %mul = mul nsw i32 20, %4, !dbg !35
  %cmp = icmp ne i32 %3, %mul, !dbg !36
  %conv = zext i1 %cmp to i32, !dbg !36
  store i32 %conv, i32* %error, align 4, !dbg !32
  %5 = load i32, i32* %error, align 4, !dbg !37
  %tobool = icmp ne i32 %5, 0, !dbg !37
  br i1 %tobool, label %if.then, label %if.end, !dbg !39

if.then:                                          ; preds = %entry
  %6 = load i32, i32* %var, align 4, !dbg !40
  %7 = load i32, i32* %res, align 4, !dbg !41
  %mul1 = mul nsw i32 20, %7, !dbg !42
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32 %6, i32 %mul1), !dbg !43
  br label %if.end, !dbg !43

if.end:                                           ; preds = %if.then, %entry
  %8 = load i32, i32* %error, align 4, !dbg !44
  ret i32 %8, !dbg !45
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local i32 @omp_get_max_threads() #2

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %sum1, i32* dereferenceable(4) %sum2, i32* dereferenceable(4) %var) #3 !dbg !46 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %sum1.addr = alloca i32*, align 8
  %sum2.addr = alloca i32*, align 8
  %var.addr = alloca i32*, align 8
  %var1 = alloca i32, align 4
  %.omp.iv = alloca i32, align 4
  %tmp = alloca i32, align 4
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %sum12 = alloca i32, align 4
  %i = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %.omp.reduction.red_list = alloca [1 x i8*], align 8
  %.omp.iv7 = alloca i32, align 4
  %tmp8 = alloca i32, align 4
  %.omp.lb9 = alloca i32, align 4
  %.omp.ub10 = alloca i32, align 4
  %.omp.stride11 = alloca i32, align 4
  %.omp.is_last12 = alloca i32, align 4
  %sum213 = alloca i32, align 4
  %i14 = alloca i32, align 4
  %.omp.reduction.red_list31 = alloca [1 x i8*], align 8
  %.omp.reduction.red_list37 = alloca [1 x i8*], align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !54, metadata !DIExpression()), !dbg !55
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !56, metadata !DIExpression()), !dbg !55
  store i32* %sum1, i32** %sum1.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %sum1.addr, metadata !57, metadata !DIExpression()), !dbg !58
  store i32* %sum2, i32** %sum2.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %sum2.addr, metadata !59, metadata !DIExpression()), !dbg !60
  store i32* %var, i32** %var.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %var.addr, metadata !61, metadata !DIExpression()), !dbg !62
  %2 = load i32*, i32** %sum1.addr, align 8, !dbg !63
  %3 = load i32*, i32** %sum2.addr, align 8, !dbg !63
  %4 = load i32*, i32** %var.addr, align 8, !dbg !63
  call void @llvm.dbg.declare(metadata i32* %var1, metadata !64, metadata !DIExpression()), !dbg !55
  store i32 0, i32* %var1, align 4, !dbg !65
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !66, metadata !DIExpression()), !dbg !69
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !70, metadata !DIExpression()), !dbg !69
  store i32 0, i32* %.omp.lb, align 4, !dbg !71
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !72, metadata !DIExpression()), !dbg !69
  store i32 4, i32* %.omp.ub, align 4, !dbg !71
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !73, metadata !DIExpression()), !dbg !69
  store i32 1, i32* %.omp.stride, align 4, !dbg !71
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !74, metadata !DIExpression()), !dbg !69
  store i32 0, i32* %.omp.is_last, align 4, !dbg !71
  call void @llvm.dbg.declare(metadata i32* %sum12, metadata !75, metadata !DIExpression()), !dbg !69
  store i32 0, i32* %sum12, align 4, !dbg !76
  call void @llvm.dbg.declare(metadata i32* %i, metadata !77, metadata !DIExpression()), !dbg !69
  %5 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !78
  store i8* getelementptr inbounds ([40 x i8], [40 x i8]* @1, i32 0, i32 0), i8** %5, align 8, !dbg !78
  %6 = load i32*, i32** %.global_tid..addr, align 8, !dbg !78
  %7 = load i32, i32* %6, align 4, !dbg !78
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %7, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !78
  %8 = load i32, i32* %.omp.ub, align 4, !dbg !71
  %cmp = icmp sgt i32 %8, 4, !dbg !71
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !71

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !71

cond.false:                                       ; preds = %entry
  %9 = load i32, i32* %.omp.ub, align 4, !dbg !71
  br label %cond.end, !dbg !71

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 4, %cond.true ], [ %9, %cond.false ], !dbg !71
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !71
  %10 = load i32, i32* %.omp.lb, align 4, !dbg !71
  store i32 %10, i32* %.omp.iv, align 4, !dbg !71
  br label %omp.inner.for.cond, !dbg !78

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %11 = load i32, i32* %.omp.iv, align 4, !dbg !71
  %12 = load i32, i32* %.omp.ub, align 4, !dbg !71
  %cmp3 = icmp sle i32 %11, %12, !dbg !79
  br i1 %cmp3, label %omp.inner.for.body, label %omp.inner.for.end, !dbg !78

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %13 = load i32, i32* %.omp.iv, align 4, !dbg !71
  %mul = mul nsw i32 %13, 1, !dbg !80
  %add = add nsw i32 0, %mul, !dbg !80
  store i32 %add, i32* %i, align 4, !dbg !80
  %14 = load i32, i32* %i, align 4, !dbg !81
  %15 = load i32, i32* %sum12, align 4, !dbg !82
  %add4 = add nsw i32 %15, %14, !dbg !82
  store i32 %add4, i32* %sum12, align 4, !dbg !82
  br label %omp.body.continue, !dbg !83

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !84

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %16 = load i32, i32* %.omp.iv, align 4, !dbg !71
  %add5 = add nsw i32 %16, 1, !dbg !79
  store i32 %add5, i32* %.omp.iv, align 4, !dbg !79
  br label %omp.inner.for.cond, !dbg !84, !llvm.loop !85

omp.inner.for.end:                                ; preds = %omp.inner.for.cond
  br label %omp.loop.exit, !dbg !84

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %17 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !84
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @2, i32 0, i32 0), i8** %17, align 8, !dbg !84
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %7), !dbg !84
  %18 = getelementptr inbounds [1 x i8*], [1 x i8*]* %.omp.reduction.red_list, i64 0, i64 0, !dbg !84
  %19 = bitcast i32* %sum12 to i8*, !dbg !84
  store i8* %19, i8** %18, align 8, !dbg !84
  %20 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !84
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @2, i32 0, i32 0), i8** %20, align 8, !dbg !84
  %21 = bitcast [1 x i8*]* %.omp.reduction.red_list to i8*, !dbg !84
  %22 = call i32 @__kmpc_reduce(%struct.ident_t* %.kmpc_loc.addr, i32 %7, i32 1, i64 8, i8* %21, void (i8*, i8*)* @.omp.reduction.reduction_func, [8 x i32]* @.gomp_critical_user_.reduction.var), !dbg !84
  switch i32 %22, label %.omp.reduction.default [
    i32 1, label %.omp.reduction.case1
    i32 2, label %.omp.reduction.case2
  ], !dbg !84

.omp.reduction.case1:                             ; preds = %omp.loop.exit
  %23 = load i32, i32* %2, align 4, !dbg !76
  %24 = load i32, i32* %sum12, align 4, !dbg !76
  %add6 = add nsw i32 %23, %24, !dbg !87
  store i32 %add6, i32* %2, align 4, !dbg !87
  call void @__kmpc_end_reduce(%struct.ident_t* %.kmpc_loc.addr, i32 %7, [8 x i32]* @.gomp_critical_user_.reduction.var), !dbg !84
  br label %.omp.reduction.default, !dbg !84

.omp.reduction.case2:                             ; preds = %omp.loop.exit
  %25 = load i32, i32* %sum12, align 4, !dbg !76
  %26 = atomicrmw add i32* %2, i32 %25 monotonic, !dbg !84
  call void @__kmpc_end_reduce(%struct.ident_t* %.kmpc_loc.addr, i32 %7, [8 x i32]* @.gomp_critical_user_.reduction.var), !dbg !84
  br label %.omp.reduction.default, !dbg !84

.omp.reduction.default:                           ; preds = %.omp.reduction.case2, %.omp.reduction.case1, %omp.loop.exit
  %27 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !86
  store i8* getelementptr inbounds ([40 x i8], [40 x i8]* @1, i32 0, i32 0), i8** %27, align 8, !dbg !86
  call void @__kmpc_barrier(%struct.ident_t* %.kmpc_loc.addr, i32 %7), !dbg !86
  call void @llvm.dbg.declare(metadata i32* %.omp.iv7, metadata !88, metadata !DIExpression()), !dbg !90
  call void @llvm.dbg.declare(metadata i32* %.omp.lb9, metadata !91, metadata !DIExpression()), !dbg !90
  store i32 0, i32* %.omp.lb9, align 4, !dbg !92
  call void @llvm.dbg.declare(metadata i32* %.omp.ub10, metadata !93, metadata !DIExpression()), !dbg !90
  store i32 4, i32* %.omp.ub10, align 4, !dbg !92
  call void @llvm.dbg.declare(metadata i32* %.omp.stride11, metadata !94, metadata !DIExpression()), !dbg !90
  store i32 1, i32* %.omp.stride11, align 4, !dbg !92
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last12, metadata !95, metadata !DIExpression()), !dbg !90
  store i32 0, i32* %.omp.is_last12, align 4, !dbg !92
  call void @llvm.dbg.declare(metadata i32* %sum213, metadata !96, metadata !DIExpression()), !dbg !90
  store i32 0, i32* %sum213, align 4, !dbg !97
  call void @llvm.dbg.declare(metadata i32* %i14, metadata !98, metadata !DIExpression()), !dbg !90
  %28 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !99
  store i8* getelementptr inbounds ([40 x i8], [40 x i8]* @3, i32 0, i32 0), i8** %28, align 8, !dbg !99
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %7, i32 34, i32* %.omp.is_last12, i32* %.omp.lb9, i32* %.omp.ub10, i32* %.omp.stride11, i32 1, i32 1), !dbg !99
  %29 = load i32, i32* %.omp.ub10, align 4, !dbg !92
  %cmp15 = icmp sgt i32 %29, 4, !dbg !92
  br i1 %cmp15, label %cond.true16, label %cond.false17, !dbg !92

cond.true16:                                      ; preds = %.omp.reduction.default
  br label %cond.end18, !dbg !92

cond.false17:                                     ; preds = %.omp.reduction.default
  %30 = load i32, i32* %.omp.ub10, align 4, !dbg !92
  br label %cond.end18, !dbg !92

cond.end18:                                       ; preds = %cond.false17, %cond.true16
  %cond19 = phi i32 [ 4, %cond.true16 ], [ %30, %cond.false17 ], !dbg !92
  store i32 %cond19, i32* %.omp.ub10, align 4, !dbg !92
  %31 = load i32, i32* %.omp.lb9, align 4, !dbg !92
  store i32 %31, i32* %.omp.iv7, align 4, !dbg !92
  br label %omp.inner.for.cond20, !dbg !99

omp.inner.for.cond20:                             ; preds = %omp.inner.for.inc27, %cond.end18
  %32 = load i32, i32* %.omp.iv7, align 4, !dbg !92
  %33 = load i32, i32* %.omp.ub10, align 4, !dbg !92
  %cmp21 = icmp sle i32 %32, %33, !dbg !100
  br i1 %cmp21, label %omp.inner.for.body22, label %omp.inner.for.end29, !dbg !99

omp.inner.for.body22:                             ; preds = %omp.inner.for.cond20
  %34 = load i32, i32* %.omp.iv7, align 4, !dbg !92
  %mul23 = mul nsw i32 %34, 1, !dbg !101
  %add24 = add nsw i32 0, %mul23, !dbg !101
  store i32 %add24, i32* %i14, align 4, !dbg !101
  %35 = load i32, i32* %i14, align 4, !dbg !102
  %36 = load i32, i32* %sum213, align 4, !dbg !103
  %add25 = add nsw i32 %36, %35, !dbg !103
  store i32 %add25, i32* %sum213, align 4, !dbg !103
  br label %omp.body.continue26, !dbg !104

omp.body.continue26:                              ; preds = %omp.inner.for.body22
  br label %omp.inner.for.inc27, !dbg !105

omp.inner.for.inc27:                              ; preds = %omp.body.continue26
  %37 = load i32, i32* %.omp.iv7, align 4, !dbg !92
  %add28 = add nsw i32 %37, 1, !dbg !100
  store i32 %add28, i32* %.omp.iv7, align 4, !dbg !100
  br label %omp.inner.for.cond20, !dbg !105, !llvm.loop !106

omp.inner.for.end29:                              ; preds = %omp.inner.for.cond20
  br label %omp.loop.exit30, !dbg !105

omp.loop.exit30:                                  ; preds = %omp.inner.for.end29
  %38 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !105
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @4, i32 0, i32 0), i8** %38, align 8, !dbg !105
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %7), !dbg !105
  %39 = getelementptr inbounds [1 x i8*], [1 x i8*]* %.omp.reduction.red_list31, i64 0, i64 0, !dbg !105
  %40 = bitcast i32* %sum213 to i8*, !dbg !105
  store i8* %40, i8** %39, align 8, !dbg !105
  %41 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !105
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @4, i32 0, i32 0), i8** %41, align 8, !dbg !105
  %42 = bitcast [1 x i8*]* %.omp.reduction.red_list31 to i8*, !dbg !105
  %43 = call i32 @__kmpc_reduce(%struct.ident_t* %.kmpc_loc.addr, i32 %7, i32 1, i64 8, i8* %42, void (i8*, i8*)* @.omp.reduction.reduction_func.1, [8 x i32]* @.gomp_critical_user_.reduction.var), !dbg !105
  switch i32 %43, label %.omp.reduction.default35 [
    i32 1, label %.omp.reduction.case132
    i32 2, label %.omp.reduction.case234
  ], !dbg !105

.omp.reduction.case132:                           ; preds = %omp.loop.exit30
  %44 = load i32, i32* %3, align 4, !dbg !97
  %45 = load i32, i32* %sum213, align 4, !dbg !97
  %add33 = add nsw i32 %44, %45, !dbg !108
  store i32 %add33, i32* %3, align 4, !dbg !108
  call void @__kmpc_end_reduce(%struct.ident_t* %.kmpc_loc.addr, i32 %7, [8 x i32]* @.gomp_critical_user_.reduction.var), !dbg !105
  br label %.omp.reduction.default35, !dbg !105

.omp.reduction.case234:                           ; preds = %omp.loop.exit30
  %46 = load i32, i32* %sum213, align 4, !dbg !97
  %47 = atomicrmw add i32* %3, i32 %46 monotonic, !dbg !105
  call void @__kmpc_end_reduce(%struct.ident_t* %.kmpc_loc.addr, i32 %7, [8 x i32]* @.gomp_critical_user_.reduction.var), !dbg !105
  br label %.omp.reduction.default35, !dbg !105

.omp.reduction.default35:                         ; preds = %.omp.reduction.case234, %.omp.reduction.case132, %omp.loop.exit30
  %48 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !107
  store i8* getelementptr inbounds ([40 x i8], [40 x i8]* @3, i32 0, i32 0), i8** %48, align 8, !dbg !107
  call void @__kmpc_barrier(%struct.ident_t* %.kmpc_loc.addr, i32 %7), !dbg !107
  %49 = load i32, i32* %2, align 4, !dbg !109
  %50 = load i32, i32* %3, align 4, !dbg !110
  %add36 = add nsw i32 %49, %50, !dbg !111
  store i32 %add36, i32* %var1, align 4, !dbg !112
  %51 = getelementptr inbounds [1 x i8*], [1 x i8*]* %.omp.reduction.red_list37, i64 0, i64 0, !dbg !113
  %52 = bitcast i32* %var1 to i8*, !dbg !113
  store i8* %52, i8** %51, align 8, !dbg !113
  %53 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !113
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @5, i32 0, i32 0), i8** %53, align 8, !dbg !113
  %54 = bitcast [1 x i8*]* %.omp.reduction.red_list37 to i8*, !dbg !113
  %55 = call i32 @__kmpc_reduce_nowait(%struct.ident_t* %.kmpc_loc.addr, i32 %7, i32 1, i64 8, i8* %54, void (i8*, i8*)* @.omp.reduction.reduction_func.2, [8 x i32]* @.gomp_critical_user_.reduction.var), !dbg !113
  switch i32 %55, label %.omp.reduction.default41 [
    i32 1, label %.omp.reduction.case138
    i32 2, label %.omp.reduction.case240
  ], !dbg !113

.omp.reduction.case138:                           ; preds = %.omp.reduction.default35
  %56 = load i32, i32* %4, align 4, !dbg !65
  %57 = load i32, i32* %var1, align 4, !dbg !65
  %add39 = add nsw i32 %56, %57, !dbg !114
  store i32 %add39, i32* %4, align 4, !dbg !114
  call void @__kmpc_end_reduce_nowait(%struct.ident_t* %.kmpc_loc.addr, i32 %7, [8 x i32]* @.gomp_critical_user_.reduction.var), !dbg !113
  br label %.omp.reduction.default41, !dbg !113

.omp.reduction.case240:                           ; preds = %.omp.reduction.default35
  %58 = load i32, i32* %var1, align 4, !dbg !65
  %59 = atomicrmw add i32* %4, i32 %58 monotonic, !dbg !113
  br label %.omp.reduction.default41, !dbg !113

.omp.reduction.default41:                         ; preds = %.omp.reduction.case240, %.omp.reduction.case138, %.omp.reduction.default35
  ret void, !dbg !115
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: noinline norecurse nounwind uwtable
define internal void @.omp.reduction.reduction_func(i8* %0, i8* %1) #5 !dbg !116 {
entry:
  %.addr = alloca i8*, align 8
  %.addr1 = alloca i8*, align 8
  store i8* %0, i8** %.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %.addr, metadata !118, metadata !DIExpression()), !dbg !120
  store i8* %1, i8** %.addr1, align 8
  call void @llvm.dbg.declare(metadata i8** %.addr1, metadata !121, metadata !DIExpression()), !dbg !120
  %2 = load i8*, i8** %.addr, align 8, !dbg !122
  %3 = bitcast i8* %2 to [1 x i8*]*, !dbg !122
  %4 = load i8*, i8** %.addr1, align 8, !dbg !122
  %5 = bitcast i8* %4 to [1 x i8*]*, !dbg !122
  %6 = getelementptr inbounds [1 x i8*], [1 x i8*]* %5, i64 0, i64 0, !dbg !122
  %7 = load i8*, i8** %6, align 8, !dbg !122
  %8 = bitcast i8* %7 to i32*, !dbg !122
  %9 = getelementptr inbounds [1 x i8*], [1 x i8*]* %3, i64 0, i64 0, !dbg !122
  %10 = load i8*, i8** %9, align 8, !dbg !122
  %11 = bitcast i8* %10 to i32*, !dbg !122
  %12 = load i32, i32* %11, align 4, !dbg !123
  %13 = load i32, i32* %8, align 4, !dbg !123
  %add = add nsw i32 %12, %13, !dbg !124
  store i32 %add, i32* %11, align 4, !dbg !124
  ret void, !dbg !123
}

declare dso_local i32 @__kmpc_reduce(%struct.ident_t*, i32, i32, i64, i8*, void (i8*, i8*)*, [8 x i32]*)

declare dso_local void @__kmpc_end_reduce(%struct.ident_t*, i32, [8 x i32]*)

declare dso_local void @__kmpc_barrier(%struct.ident_t*, i32)

; Function Attrs: noinline norecurse nounwind uwtable
define internal void @.omp.reduction.reduction_func.1(i8* %0, i8* %1) #5 !dbg !125 {
entry:
  %.addr = alloca i8*, align 8
  %.addr1 = alloca i8*, align 8
  store i8* %0, i8** %.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %.addr, metadata !126, metadata !DIExpression()), !dbg !127
  store i8* %1, i8** %.addr1, align 8
  call void @llvm.dbg.declare(metadata i8** %.addr1, metadata !128, metadata !DIExpression()), !dbg !127
  %2 = load i8*, i8** %.addr, align 8, !dbg !129
  %3 = bitcast i8* %2 to [1 x i8*]*, !dbg !129
  %4 = load i8*, i8** %.addr1, align 8, !dbg !129
  %5 = bitcast i8* %4 to [1 x i8*]*, !dbg !129
  %6 = getelementptr inbounds [1 x i8*], [1 x i8*]* %5, i64 0, i64 0, !dbg !129
  %7 = load i8*, i8** %6, align 8, !dbg !129
  %8 = bitcast i8* %7 to i32*, !dbg !129
  %9 = getelementptr inbounds [1 x i8*], [1 x i8*]* %3, i64 0, i64 0, !dbg !129
  %10 = load i8*, i8** %9, align 8, !dbg !129
  %11 = bitcast i8* %10 to i32*, !dbg !129
  %12 = load i32, i32* %11, align 4, !dbg !130
  %13 = load i32, i32* %8, align 4, !dbg !130
  %add = add nsw i32 %12, %13, !dbg !131
  store i32 %add, i32* %11, align 4, !dbg !131
  ret void, !dbg !130
}

; Function Attrs: noinline norecurse nounwind uwtable
define internal void @.omp.reduction.reduction_func.2(i8* %0, i8* %1) #5 !dbg !132 {
entry:
  %.addr = alloca i8*, align 8
  %.addr1 = alloca i8*, align 8
  store i8* %0, i8** %.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %.addr, metadata !133, metadata !DIExpression()), !dbg !134
  store i8* %1, i8** %.addr1, align 8
  call void @llvm.dbg.declare(metadata i8** %.addr1, metadata !135, metadata !DIExpression()), !dbg !134
  %2 = load i8*, i8** %.addr, align 8, !dbg !136
  %3 = bitcast i8* %2 to [1 x i8*]*, !dbg !136
  %4 = load i8*, i8** %.addr1, align 8, !dbg !136
  %5 = bitcast i8* %4 to [1 x i8*]*, !dbg !136
  %6 = getelementptr inbounds [1 x i8*], [1 x i8*]* %5, i64 0, i64 0, !dbg !136
  %7 = load i8*, i8** %6, align 8, !dbg !136
  %8 = bitcast i8* %7 to i32*, !dbg !136
  %9 = getelementptr inbounds [1 x i8*], [1 x i8*]* %3, i64 0, i64 0, !dbg !136
  %10 = load i8*, i8** %9, align 8, !dbg !136
  %11 = bitcast i8* %10 to i32*, !dbg !136
  %12 = load i32, i32* %11, align 4, !dbg !137
  %13 = load i32, i32* %8, align 4, !dbg !137
  %add = add nsw i32 %12, %13, !dbg !138
  store i32 %add, i32* %11, align 4, !dbg !138
  ret void, !dbg !137
}

declare dso_local i32 @__kmpc_reduce_nowait(%struct.ident_t*, i32, i32, i64, i8*, void (i8*, i8*)*, [8 x i32]*)

declare dso_local void @__kmpc_end_reduce_nowait(%struct.ident_t*, i32, [8 x i32]*)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %sum1, i32* dereferenceable(4) %sum2, i32* dereferenceable(4) %var) #3 !dbg !139 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %sum1.addr = alloca i32*, align 8
  %sum2.addr = alloca i32*, align 8
  %var.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !140, metadata !DIExpression()), !dbg !141
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !142, metadata !DIExpression()), !dbg !141
  store i32* %sum1, i32** %sum1.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %sum1.addr, metadata !143, metadata !DIExpression()), !dbg !141
  store i32* %sum2, i32** %sum2.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %sum2.addr, metadata !144, metadata !DIExpression()), !dbg !141
  store i32* %var, i32** %var.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %var.addr, metadata !145, metadata !DIExpression()), !dbg !141
  %0 = load i32*, i32** %sum1.addr, align 8, !dbg !146
  %1 = load i32*, i32** %sum2.addr, align 8, !dbg !146
  %2 = load i32*, i32** %var.addr, align 8, !dbg !146
  %3 = load i32*, i32** %.global_tid..addr, align 8, !dbg !146
  %4 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !146
  %5 = load i32*, i32** %sum1.addr, align 8, !dbg !146
  %6 = load i32*, i32** %sum2.addr, align 8, !dbg !146
  %7 = load i32*, i32** %var.addr, align 8, !dbg !146
  call void @.omp_outlined._debug__(i32* %3, i32* %4, i32* %5, i32* %6, i32* %7) #6, !dbg !146
  ret void, !dbg !146
}

declare !callback !147 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

declare dso_local i32 @printf(i8*, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noinline norecurse nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind willreturn }
attributes #5 = { noinline norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.1 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "DRB121-reduction-orig-no.c", directory: "/home/yanze/code/OpenRace/tests/data/integration/dataracebench")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.1 "}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 20, type: !8, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !10, !11}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!14 = !DILocalVariable(name: "argc", arg: 1, scope: !7, file: !1, line: 20, type: !10)
!15 = !DILocation(line: 20, column: 14, scope: !7)
!16 = !DILocalVariable(name: "argv", arg: 2, scope: !7, file: !1, line: 20, type: !11)
!17 = !DILocation(line: 20, column: 26, scope: !7)
!18 = !DILocalVariable(name: "var", scope: !7, file: !1, line: 22, type: !10)
!19 = !DILocation(line: 22, column: 7, scope: !7)
!20 = !DILocalVariable(name: "i", scope: !7, file: !1, line: 22, type: !10)
!21 = !DILocation(line: 22, column: 16, scope: !7)
!22 = !DILocalVariable(name: "res", scope: !7, file: !1, line: 22, type: !10)
!23 = !DILocation(line: 22, column: 19, scope: !7)
!24 = !DILocalVariable(name: "sum1", scope: !7, file: !1, line: 23, type: !10)
!25 = !DILocation(line: 23, column: 7, scope: !7)
!26 = !DILocalVariable(name: "sum2", scope: !7, file: !1, line: 24, type: !10)
!27 = !DILocation(line: 24, column: 7, scope: !7)
!28 = !DILocation(line: 26, column: 9, scope: !7)
!29 = !DILocation(line: 26, column: 7, scope: !7)
!30 = !DILocation(line: 28, column: 3, scope: !7)
!31 = !DILocalVariable(name: "error", scope: !7, file: !1, line: 40, type: !10)
!32 = !DILocation(line: 40, column: 7, scope: !7)
!33 = !DILocation(line: 40, column: 16, scope: !7)
!34 = !DILocation(line: 40, column: 26, scope: !7)
!35 = !DILocation(line: 40, column: 25, scope: !7)
!36 = !DILocation(line: 40, column: 20, scope: !7)
!37 = !DILocation(line: 41, column: 7, scope: !38)
!38 = distinct !DILexicalBlock(scope: !7, file: !1, line: 41, column: 7)
!39 = !DILocation(line: 41, column: 7, scope: !7)
!40 = !DILocation(line: 41, column: 31, scope: !38)
!41 = !DILocation(line: 41, column: 38, scope: !38)
!42 = !DILocation(line: 41, column: 37, scope: !38)
!43 = !DILocation(line: 41, column: 14, scope: !38)
!44 = !DILocation(line: 42, column: 10, scope: !7)
!45 = !DILocation(line: 42, column: 3, scope: !7)
!46 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 29, type: !47, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!47 = !DISubroutineType(types: !48)
!48 = !{null, !49, !49, !53, !53, !53}
!49 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !50)
!50 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !51)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!53 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !10, size: 64)
!54 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !46, type: !49, flags: DIFlagArtificial)
!55 = !DILocation(line: 0, scope: !46)
!56 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !46, type: !49, flags: DIFlagArtificial)
!57 = !DILocalVariable(name: "sum1", arg: 3, scope: !46, file: !1, line: 23, type: !53)
!58 = !DILocation(line: 23, column: 7, scope: !46)
!59 = !DILocalVariable(name: "sum2", arg: 4, scope: !46, file: !1, line: 24, type: !53)
!60 = !DILocation(line: 24, column: 7, scope: !46)
!61 = !DILocalVariable(name: "var", arg: 5, scope: !46, file: !1, line: 22, type: !53)
!62 = !DILocation(line: 22, column: 7, scope: !46)
!63 = !DILocation(line: 29, column: 3, scope: !46)
!64 = !DILocalVariable(name: "var", scope: !46, type: !10, flags: DIFlagArtificial)
!65 = !DILocation(line: 28, column: 37, scope: !46)
!66 = !DILocalVariable(name: ".omp.iv", scope: !67, type: !10, flags: DIFlagArtificial)
!67 = distinct !DILexicalBlock(scope: !68, file: !1, line: 30, column: 5)
!68 = distinct !DILexicalBlock(scope: !46, file: !1, line: 29, column: 3)
!69 = !DILocation(line: 0, scope: !67)
!70 = !DILocalVariable(name: ".omp.lb", scope: !67, type: !10, flags: DIFlagArtificial)
!71 = !DILocation(line: 31, column: 10, scope: !67)
!72 = !DILocalVariable(name: ".omp.ub", scope: !67, type: !10, flags: DIFlagArtificial)
!73 = !DILocalVariable(name: ".omp.stride", scope: !67, type: !10, flags: DIFlagArtificial)
!74 = !DILocalVariable(name: ".omp.is_last", scope: !67, type: !10, flags: DIFlagArtificial)
!75 = !DILocalVariable(name: "sum1", scope: !67, type: !10, flags: DIFlagArtificial)
!76 = !DILocation(line: 30, column: 51, scope: !67)
!77 = !DILocalVariable(name: "i", scope: !67, type: !10, flags: DIFlagArtificial)
!78 = !DILocation(line: 30, column: 5, scope: !68)
!79 = !DILocation(line: 31, column: 5, scope: !67)
!80 = !DILocation(line: 31, column: 20, scope: !67)
!81 = !DILocation(line: 32, column: 11, scope: !67)
!82 = !DILocation(line: 32, column: 9, scope: !67)
!83 = !DILocation(line: 32, column: 5, scope: !67)
!84 = !DILocation(line: 30, column: 5, scope: !67)
!85 = distinct !{!85, !84, !86}
!86 = !DILocation(line: 30, column: 56, scope: !67)
!87 = !DILocation(line: 30, column: 48, scope: !67)
!88 = !DILocalVariable(name: ".omp.iv", scope: !89, type: !10, flags: DIFlagArtificial)
!89 = distinct !DILexicalBlock(scope: !68, file: !1, line: 33, column: 5)
!90 = !DILocation(line: 0, scope: !89)
!91 = !DILocalVariable(name: ".omp.lb", scope: !89, type: !10, flags: DIFlagArtificial)
!92 = !DILocation(line: 34, column: 10, scope: !89)
!93 = !DILocalVariable(name: ".omp.ub", scope: !89, type: !10, flags: DIFlagArtificial)
!94 = !DILocalVariable(name: ".omp.stride", scope: !89, type: !10, flags: DIFlagArtificial)
!95 = !DILocalVariable(name: ".omp.is_last", scope: !89, type: !10, flags: DIFlagArtificial)
!96 = !DILocalVariable(name: "sum2", scope: !89, type: !10, flags: DIFlagArtificial)
!97 = !DILocation(line: 33, column: 51, scope: !89)
!98 = !DILocalVariable(name: "i", scope: !89, type: !10, flags: DIFlagArtificial)
!99 = !DILocation(line: 33, column: 5, scope: !68)
!100 = !DILocation(line: 34, column: 5, scope: !89)
!101 = !DILocation(line: 34, column: 20, scope: !89)
!102 = !DILocation(line: 35, column: 11, scope: !89)
!103 = !DILocation(line: 35, column: 9, scope: !89)
!104 = !DILocation(line: 35, column: 5, scope: !89)
!105 = !DILocation(line: 33, column: 5, scope: !89)
!106 = distinct !{!106, !105, !107}
!107 = !DILocation(line: 33, column: 56, scope: !89)
!108 = !DILocation(line: 33, column: 48, scope: !89)
!109 = !DILocation(line: 37, column: 11, scope: !68)
!110 = !DILocation(line: 37, column: 18, scope: !68)
!111 = !DILocation(line: 37, column: 16, scope: !68)
!112 = !DILocation(line: 37, column: 9, scope: !68)
!113 = !DILocation(line: 38, column: 3, scope: !68)
!114 = !DILocation(line: 28, column: 34, scope: !46)
!115 = !DILocation(line: 38, column: 3, scope: !46)
!116 = distinct !DISubprogram(linkageName: ".omp.reduction.reduction_func", scope: !1, file: !1, line: 30, type: !117, scopeLine: 30, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!117 = !DISubroutineType(types: !2)
!118 = !DILocalVariable(arg: 1, scope: !116, type: !119, flags: DIFlagArtificial)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!120 = !DILocation(line: 0, scope: !116)
!121 = !DILocalVariable(arg: 2, scope: !116, type: !119, flags: DIFlagArtificial)
!122 = !DILocation(line: 30, column: 56, scope: !116)
!123 = !DILocation(line: 30, column: 51, scope: !116)
!124 = !DILocation(line: 30, column: 48, scope: !116)
!125 = distinct !DISubprogram(linkageName: ".omp.reduction.reduction_func.1", scope: !1, file: !1, line: 33, type: !117, scopeLine: 33, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!126 = !DILocalVariable(arg: 1, scope: !125, type: !119, flags: DIFlagArtificial)
!127 = !DILocation(line: 0, scope: !125)
!128 = !DILocalVariable(arg: 2, scope: !125, type: !119, flags: DIFlagArtificial)
!129 = !DILocation(line: 33, column: 56, scope: !125)
!130 = !DILocation(line: 33, column: 51, scope: !125)
!131 = !DILocation(line: 33, column: 48, scope: !125)
!132 = distinct !DISubprogram(linkageName: ".omp.reduction.reduction_func.2", scope: !1, file: !1, line: 28, type: !117, scopeLine: 28, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!133 = !DILocalVariable(arg: 1, scope: !132, type: !119, flags: DIFlagArtificial)
!134 = !DILocation(line: 0, scope: !132)
!135 = !DILocalVariable(arg: 2, scope: !132, type: !119, flags: DIFlagArtificial)
!136 = !DILocation(line: 28, column: 41, scope: !132)
!137 = !DILocation(line: 28, column: 37, scope: !132)
!138 = !DILocation(line: 28, column: 34, scope: !132)
!139 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 29, type: !47, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!140 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !139, type: !49, flags: DIFlagArtificial)
!141 = !DILocation(line: 0, scope: !139)
!142 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !139, type: !49, flags: DIFlagArtificial)
!143 = !DILocalVariable(name: "sum1", arg: 3, scope: !139, type: !53, flags: DIFlagArtificial)
!144 = !DILocalVariable(name: "sum2", arg: 4, scope: !139, type: !53, flags: DIFlagArtificial)
!145 = !DILocalVariable(name: "var", arg: 5, scope: !139, type: !53, flags: DIFlagArtificial)
!146 = !DILocation(line: 29, column: 3, scope: !139)
!147 = !{!148}
!148 = !{i64 2, i64 -1, i64 -1, i1 true}
