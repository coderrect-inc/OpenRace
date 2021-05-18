; ModuleID = 'integration/dataracebench/DRB091-threadprivate2-orig-no.c'
source_filename = "integration/dataracebench/DRB091-threadprivate2-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

$_ZTW4sum0 = comdat any

@sum0 = dso_local thread_local global i32 0, align 4, !dbg !0
@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 66, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [71 x i8] c";integration/dataracebench/DRB091-threadprivate2-orig-no.c;main;62;1;;\00", align 1
@2 = private unnamed_addr constant [71 x i8] c";integration/dataracebench/DRB091-threadprivate2-orig-no.c;main;64;1;;\00", align 1
@3 = private unnamed_addr constant [72 x i8] c";integration/dataracebench/DRB091-threadprivate2-orig-no.c;main;64;16;;\00", align 1
@4 = private unnamed_addr constant [71 x i8] c";integration/dataracebench/DRB091-threadprivate2-orig-no.c;main;69;1;;\00", align 1
@.gomp_critical_user_.var = common global [8 x i32] zeroinitializer
@5 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@sum1 = dso_local global i32 0, align 4, !dbg !6
@.str.1 = private unnamed_addr constant [17 x i8] c"sum=%d; sum1=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"sum==sum1\00", align 1
@.str.3 = private unnamed_addr constant [58 x i8] c"integration/dataracebench/DRB091-threadprivate2-orig-no.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [11 x i8] c"int main()\00", align 1

; Function Attrs: nounwind uwtable
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
  %2 = bitcast i32* %len to i8*, !dbg !20
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #7, !dbg !20
  call void @llvm.dbg.declare(metadata i32* %len, metadata !17, metadata !DIExpression()), !dbg !21
  store i32 1000, i32* %len, align 4, !dbg !21, !tbaa !22
  %3 = bitcast i32* %i to i8*, !dbg !26
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #7, !dbg !26
  call void @llvm.dbg.declare(metadata i32* %i, metadata !18, metadata !DIExpression()), !dbg !27
  %4 = bitcast i32* %sum to i8*, !dbg !26
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #7, !dbg !26
  call void @llvm.dbg.declare(metadata i32* %sum, metadata !19, metadata !DIExpression()), !dbg !28
  store i32 0, i32* %sum, align 4, !dbg !28, !tbaa !22
  %5 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !29
  store i8* getelementptr inbounds ([71 x i8], [71 x i8]* @1, i32 0, i32 0), i8** %5, align 8, !dbg !29, !tbaa !30
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %len, i32* %sum, i32* @sum0), !dbg !29
  store i32 0, i32* %i, align 4, !dbg !33, !tbaa !22
  br label %for.cond, !dbg !35

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, i32* %i, align 4, !dbg !36, !tbaa !22
  %7 = load i32, i32* %len, align 4, !dbg !38, !tbaa !22
  %cmp = icmp slt i32 %6, %7, !dbg !39
  br i1 %cmp, label %for.body, label %for.end, !dbg !40

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* @sum1, align 4, !dbg !41, !tbaa !22
  %9 = load i32, i32* %i, align 4, !dbg !43, !tbaa !22
  %add = add nsw i32 %8, %9, !dbg !44
  store i32 %add, i32* @sum1, align 4, !dbg !45, !tbaa !22
  br label %for.inc, !dbg !46

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4, !dbg !47, !tbaa !22
  %inc = add nsw i32 %10, 1, !dbg !47
  store i32 %inc, i32* %i, align 4, !dbg !47, !tbaa !22
  br label %for.cond, !dbg !48, !llvm.loop !49

for.end:                                          ; preds = %for.cond
  %11 = load i32, i32* %sum, align 4, !dbg !51, !tbaa !22
  %12 = load i32, i32* @sum1, align 4, !dbg !52, !tbaa !22
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %11, i32 %12), !dbg !53
  %13 = load i32, i32* %sum, align 4, !dbg !54, !tbaa !22
  %14 = load i32, i32* @sum1, align 4, !dbg !54, !tbaa !22
  %cmp1 = icmp eq i32 %13, %14, !dbg !54
  br i1 %cmp1, label %if.then, label %if.else, !dbg !57

if.then:                                          ; preds = %for.end
  br label %if.end, !dbg !57

if.else:                                          ; preds = %for.end
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0), i32 80, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #8, !dbg !54
  unreachable, !dbg !54

if.end:                                           ; preds = %if.then
  %15 = bitcast i32* %sum to i8*, !dbg !58
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %15) #7, !dbg !58
  %16 = bitcast i32* %i to i8*, !dbg !58
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %16) #7, !dbg !58
  %17 = bitcast i32* %len to i8*, !dbg !58
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %17) #7, !dbg !58
  ret i32 0, !dbg !59
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %len, i32* dereferenceable(4) %sum, i32* dereferenceable(4) %sum0) #3 !dbg !60 {
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
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !83
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !69, metadata !DIExpression()), !dbg !84
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !83
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !70, metadata !DIExpression()), !dbg !84
  store i32* %len, i32** %len.addr, align 8, !tbaa !83
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !71, metadata !DIExpression()), !dbg !85
  store i32* %sum, i32** %sum.addr, align 8, !tbaa !83
  call void @llvm.dbg.declare(metadata i32** %sum.addr, metadata !72, metadata !DIExpression()), !dbg !86
  store i32* %sum0, i32** %sum0.addr, align 8, !tbaa !83
  call void @llvm.dbg.declare(metadata i32** %sum0.addr, metadata !73, metadata !DIExpression()), !dbg !87
  %2 = load i32*, i32** %len.addr, align 8, !dbg !88, !tbaa !83
  %3 = load i32*, i32** %sum.addr, align 8, !dbg !88, !tbaa !83
  %4 = load i32*, i32** %sum0.addr, align 8, !dbg !88, !tbaa !83
  %5 = ptrtoint i32* %4 to i64, !dbg !88
  %6 = icmp ne i64 %5, ptrtoint (i32* @sum0 to i64), !dbg !88
  br i1 %6, label %copyin.not.master, label %copyin.not.master.end, !dbg !88

copyin.not.master:                                ; preds = %entry
  %7 = load i32, i32* %4, align 4, !dbg !89, !tbaa !22
  store i32 %7, i32* @sum0, align 4, !dbg !89, !tbaa !22
  br label %copyin.not.master.end, !dbg !88

copyin.not.master.end:                            ; preds = %copyin.not.master, %entry
  %8 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !88
  store i8* getelementptr inbounds ([71 x i8], [71 x i8]* @1, i32 0, i32 0), i8** %8, align 8, !dbg !88, !tbaa !30
  %9 = load i32*, i32** %.global_tid..addr, align 8, !dbg !88
  %10 = load i32, i32* %9, align 4, !dbg !88, !tbaa !22
  call void @__kmpc_barrier(%struct.ident_t* %.kmpc_loc.addr, i32 %10), !dbg !88
  %11 = bitcast i32* %.omp.iv to i8*, !dbg !90
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #7, !dbg !90
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !74, metadata !DIExpression()), !dbg !91
  %12 = bitcast i32* %.capture_expr. to i8*, !dbg !90
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #7, !dbg !90
  call void @llvm.dbg.declare(metadata i32* %.capture_expr., metadata !77, metadata !DIExpression()), !dbg !91
  %13 = load i32, i32* %2, align 4, !dbg !92, !tbaa !22
  store i32 %13, i32* %.capture_expr., align 4, !dbg !92, !tbaa !22
  %14 = bitcast i32* %.capture_expr.1 to i8*, !dbg !90
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %14) #7, !dbg !90
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.1, metadata !77, metadata !DIExpression()), !dbg !91
  %15 = load i32, i32* %.capture_expr., align 4, !dbg !92, !tbaa !22
  %sub = sub nsw i32 %15, 0, !dbg !93
  %sub2 = sub nsw i32 %sub, 1, !dbg !93
  %add = add nsw i32 %sub2, 1, !dbg !93
  %div = sdiv i32 %add, 1, !dbg !93
  %sub3 = sub nsw i32 %div, 1, !dbg !93
  store i32 %sub3, i32* %.capture_expr.1, align 4, !dbg !93, !tbaa !22
  %16 = bitcast i32* %i to i8*, !dbg !90
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %16) #7, !dbg !90
  call void @llvm.dbg.declare(metadata i32* %i, metadata !78, metadata !DIExpression()), !dbg !91
  store i32 0, i32* %i, align 4, !dbg !94, !tbaa !22
  %17 = bitcast i32* %i to i8*, !dbg !90
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %17) #7, !dbg !90
  %18 = load i32, i32* %.capture_expr., align 4, !dbg !92, !tbaa !22
  %cmp = icmp slt i32 0, %18, !dbg !93
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end, !dbg !90

omp.precond.then:                                 ; preds = %copyin.not.master.end
  %19 = bitcast i32* %.omp.lb to i8*, !dbg !90
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %19) #7, !dbg !90
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !79, metadata !DIExpression()), !dbg !91
  store i32 0, i32* %.omp.lb, align 4, !dbg !95, !tbaa !22
  %20 = bitcast i32* %.omp.ub to i8*, !dbg !90
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %20) #7, !dbg !90
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !80, metadata !DIExpression()), !dbg !91
  %21 = load i32, i32* %.capture_expr.1, align 4, !dbg !93, !tbaa !22
  store i32 %21, i32* %.omp.ub, align 4, !dbg !95, !tbaa !22
  %22 = bitcast i32* %.omp.stride to i8*, !dbg !90
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %22) #7, !dbg !90
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !81, metadata !DIExpression()), !dbg !91
  store i32 1, i32* %.omp.stride, align 4, !dbg !95, !tbaa !22
  %23 = bitcast i32* %.omp.is_last to i8*, !dbg !90
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %23) #7, !dbg !90
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !82, metadata !DIExpression()), !dbg !91
  store i32 0, i32* %.omp.is_last, align 4, !dbg !95, !tbaa !22
  %24 = bitcast i32* %i4 to i8*, !dbg !90
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %24) #7, !dbg !90
  call void @llvm.dbg.declare(metadata i32* %i4, metadata !78, metadata !DIExpression()), !dbg !91
  %25 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !90
  store i8* getelementptr inbounds ([71 x i8], [71 x i8]* @2, i32 0, i32 0), i8** %25, align 8, !dbg !90, !tbaa !30
  %26 = load i32*, i32** %.global_tid..addr, align 8, !dbg !90
  %27 = load i32, i32* %26, align 4, !dbg !90, !tbaa !22
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %27, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !90
  %28 = load i32, i32* %.omp.ub, align 4, !dbg !95, !tbaa !22
  %29 = load i32, i32* %.capture_expr.1, align 4, !dbg !93, !tbaa !22
  %cmp5 = icmp sgt i32 %28, %29, !dbg !95
  br i1 %cmp5, label %cond.true, label %cond.false, !dbg !95

cond.true:                                        ; preds = %omp.precond.then
  %30 = load i32, i32* %.capture_expr.1, align 4, !dbg !93, !tbaa !22
  br label %cond.end, !dbg !95

cond.false:                                       ; preds = %omp.precond.then
  %31 = load i32, i32* %.omp.ub, align 4, !dbg !95, !tbaa !22
  br label %cond.end, !dbg !95

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %30, %cond.true ], [ %31, %cond.false ], !dbg !95
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !95, !tbaa !22
  %32 = load i32, i32* %.omp.lb, align 4, !dbg !95, !tbaa !22
  store i32 %32, i32* %.omp.iv, align 4, !dbg !95, !tbaa !22
  br label %omp.inner.for.cond, !dbg !90

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %33 = load i32, i32* %.omp.iv, align 4, !dbg !95, !tbaa !22
  %34 = load i32, i32* %.omp.ub, align 4, !dbg !95, !tbaa !22
  %cmp6 = icmp sle i32 %33, %34, !dbg !93
  br i1 %cmp6, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !90

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !90

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %35 = load i32, i32* %.omp.iv, align 4, !dbg !95, !tbaa !22
  %mul = mul nsw i32 %35, 1, !dbg !94
  %add7 = add nsw i32 0, %mul, !dbg !94
  store i32 %add7, i32* %i4, align 4, !dbg !94, !tbaa !22
  %36 = load i32, i32* @sum0, align 4, !dbg !96, !tbaa !22
  %37 = load i32, i32* %i4, align 4, !dbg !98, !tbaa !22
  %add8 = add nsw i32 %36, %37, !dbg !99
  store i32 %add8, i32* @sum0, align 4, !dbg !100, !tbaa !22
  br label %omp.body.continue, !dbg !101

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !102

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %38 = load i32, i32* %.omp.iv, align 4, !dbg !95, !tbaa !22
  %add9 = add nsw i32 %38, 1, !dbg !93
  store i32 %add9, i32* %.omp.iv, align 4, !dbg !93, !tbaa !22
  br label %omp.inner.for.cond, !dbg !102, !llvm.loop !103

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !102

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %39 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !102
  store i8* getelementptr inbounds ([72 x i8], [72 x i8]* @3, i32 0, i32 0), i8** %39, align 8, !dbg !102, !tbaa !30
  %40 = load i32*, i32** %.global_tid..addr, align 8, !dbg !102
  %41 = load i32, i32* %40, align 4, !dbg !102, !tbaa !22
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %41), !dbg !102
  %42 = bitcast i32* %i4 to i8*, !dbg !102
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %42) #7, !dbg !102
  %43 = bitcast i32* %.omp.is_last to i8*, !dbg !102
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %43) #7, !dbg !102
  %44 = bitcast i32* %.omp.stride to i8*, !dbg !102
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %44) #7, !dbg !102
  %45 = bitcast i32* %.omp.ub to i8*, !dbg !102
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %45) #7, !dbg !102
  %46 = bitcast i32* %.omp.lb to i8*, !dbg !102
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %46) #7, !dbg !102
  br label %omp.precond.end, !dbg !102

omp.precond.end:                                  ; preds = %omp.loop.exit, %copyin.not.master.end
  %47 = bitcast i32* %.capture_expr.1 to i8*, !dbg !102
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %47) #7, !dbg !102
  %48 = bitcast i32* %.capture_expr. to i8*, !dbg !102
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %48) #7, !dbg !102
  %49 = bitcast i32* %.omp.iv to i8*, !dbg !102
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %49) #7, !dbg !102
  %50 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !104
  store i8* getelementptr inbounds ([71 x i8], [71 x i8]* @2, i32 0, i32 0), i8** %50, align 8, !dbg !104, !tbaa !30
  %51 = load i32*, i32** %.global_tid..addr, align 8, !dbg !104
  %52 = load i32, i32* %51, align 4, !dbg !104, !tbaa !22
  call void @__kmpc_barrier(%struct.ident_t* %.kmpc_loc.addr, i32 %52), !dbg !104
  %53 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !105
  store i8* getelementptr inbounds ([71 x i8], [71 x i8]* @4, i32 0, i32 0), i8** %53, align 8, !dbg !105, !tbaa !30
  %54 = load i32*, i32** %.global_tid..addr, align 8, !dbg !105
  %55 = load i32, i32* %54, align 4, !dbg !105, !tbaa !22
  call void @__kmpc_critical(%struct.ident_t* %.kmpc_loc.addr, i32 %55, [8 x i32]* @.gomp_critical_user_.var), !dbg !105
  %56 = load i32, i32* %3, align 4, !dbg !106, !tbaa !22
  %57 = load i32, i32* @sum0, align 4, !dbg !109, !tbaa !22
  %add10 = add nsw i32 %56, %57, !dbg !110
  store i32 %add10, i32* %3, align 4, !dbg !111, !tbaa !22
  call void @__kmpc_end_critical(%struct.ident_t* %.kmpc_loc.addr, i32 %55, [8 x i32]* @.gomp_critical_user_.var), !dbg !112
  ret void, !dbg !113
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local void @__kmpc_barrier(%struct.ident_t*, i32)

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

declare dso_local void @__kmpc_end_critical(%struct.ident_t*, i32, [8 x i32]*)

declare dso_local void @__kmpc_critical(%struct.ident_t*, i32, [8 x i32]*)

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %len, i32* dereferenceable(4) %sum, i32* dereferenceable(4) %sum0) #3 !dbg !114 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %sum.addr = alloca i32*, align 8
  %sum0.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !83
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !116, metadata !DIExpression()), !dbg !121
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !83
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !117, metadata !DIExpression()), !dbg !121
  store i32* %len, i32** %len.addr, align 8, !tbaa !83
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !118, metadata !DIExpression()), !dbg !121
  store i32* %sum, i32** %sum.addr, align 8, !tbaa !83
  call void @llvm.dbg.declare(metadata i32** %sum.addr, metadata !119, metadata !DIExpression()), !dbg !121
  store i32* %sum0, i32** %sum0.addr, align 8, !tbaa !83
  call void @llvm.dbg.declare(metadata i32** %sum0.addr, metadata !120, metadata !DIExpression()), !dbg !121
  %0 = load i32*, i32** %len.addr, align 8, !dbg !122, !tbaa !83
  %1 = load i32*, i32** %sum.addr, align 8, !dbg !122, !tbaa !83
  %2 = load i32*, i32** %sum0.addr, align 8, !dbg !122, !tbaa !83
  %3 = load i32*, i32** %.global_tid..addr, align 8, !dbg !122, !tbaa !83
  %4 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !122, !tbaa !83
  %5 = load i32*, i32** %len.addr, align 8, !dbg !122, !tbaa !83
  %6 = load i32*, i32** %sum.addr, align 8, !dbg !122, !tbaa !83
  %7 = load i32*, i32** %sum0.addr, align 8, !dbg !122, !tbaa !83
  call void @.omp_outlined._debug__(i32* %3, i32* %4, i32* %5, i32* %6, i32* %7) #7, !dbg !122
  ret void, !dbg !122
}

declare !callback !123 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

declare dso_local i32 @printf(i8*, ...) #4

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) #5

; Function Attrs: nounwind uwtable
define weak_odr hidden i32* @_ZTW4sum0() #6 comdat {
  ret i32* @sum0
}

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!9, !10, !11}
!llvm.ident = !{!12}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "sum0", scope: !2, file: !3, line: 55, type: !8, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "integration/dataracebench/DRB091-threadprivate2-orig-no.c", directory: "/home/brad/Code/OpenRace/tests/data")
!4 = !{}
!5 = !{!0, !6}
!6 = !DIGlobalVariableExpression(var: !7, expr: !DIExpression())
!7 = distinct !DIGlobalVariable(name: "sum1", scope: !2, file: !3, line: 55, type: !8, isLocal: false, isDefinition: true)
!8 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!9 = !{i32 7, !"Dwarf Version", i32 4}
!10 = !{i32 2, !"Debug Info Version", i32 3}
!11 = !{i32 1, !"wchar_size", i32 4}
!12 = !{!"clang version 10.0.1 "}
!13 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 58, type: !14, scopeLine: 59, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !16)
!14 = !DISubroutineType(types: !15)
!15 = !{!8}
!16 = !{!17, !18, !19}
!17 = !DILocalVariable(name: "len", scope: !13, file: !3, line: 60, type: !8)
!18 = !DILocalVariable(name: "i", scope: !13, file: !3, line: 61, type: !8)
!19 = !DILocalVariable(name: "sum", scope: !13, file: !3, line: 61, type: !8)
!20 = !DILocation(line: 60, column: 3, scope: !13)
!21 = !DILocation(line: 60, column: 7, scope: !13)
!22 = !{!23, !23, i64 0}
!23 = !{!"int", !24, i64 0}
!24 = !{!"omnipotent char", !25, i64 0}
!25 = !{!"Simple C/C++ TBAA"}
!26 = !DILocation(line: 61, column: 3, scope: !13)
!27 = !DILocation(line: 61, column: 7, scope: !13)
!28 = !DILocation(line: 61, column: 10, scope: !13)
!29 = !DILocation(line: 62, column: 1, scope: !13)
!30 = !{!31, !32, i64 16}
!31 = !{!"ident_t", !23, i64 0, !23, i64 4, !23, i64 8, !23, i64 12, !32, i64 16}
!32 = !{!"any pointer", !24, i64 0}
!33 = !DILocation(line: 75, column: 9, scope: !34)
!34 = distinct !DILexicalBlock(scope: !13, file: !3, line: 75, column: 3)
!35 = !DILocation(line: 75, column: 8, scope: !34)
!36 = !DILocation(line: 75, column: 12, scope: !37)
!37 = distinct !DILexicalBlock(scope: !34, file: !3, line: 75, column: 3)
!38 = !DILocation(line: 75, column: 14, scope: !37)
!39 = !DILocation(line: 75, column: 13, scope: !37)
!40 = !DILocation(line: 75, column: 3, scope: !34)
!41 = !DILocation(line: 77, column: 10, scope: !42)
!42 = distinct !DILexicalBlock(scope: !37, file: !3, line: 76, column: 3)
!43 = !DILocation(line: 77, column: 15, scope: !42)
!44 = !DILocation(line: 77, column: 14, scope: !42)
!45 = !DILocation(line: 77, column: 9, scope: !42)
!46 = !DILocation(line: 78, column: 3, scope: !42)
!47 = !DILocation(line: 75, column: 19, scope: !37)
!48 = !DILocation(line: 75, column: 3, scope: !37)
!49 = distinct !{!49, !40, !50}
!50 = !DILocation(line: 78, column: 3, scope: !34)
!51 = !DILocation(line: 79, column: 30, scope: !13)
!52 = !DILocation(line: 79, column: 34, scope: !13)
!53 = !DILocation(line: 79, column: 3, scope: !13)
!54 = !DILocation(line: 80, column: 3, scope: !55)
!55 = distinct !DILexicalBlock(scope: !56, file: !3, line: 80, column: 3)
!56 = distinct !DILexicalBlock(scope: !13, file: !3, line: 80, column: 3)
!57 = !DILocation(line: 80, column: 3, scope: !56)
!58 = !DILocation(line: 82, column: 1, scope: !13)
!59 = !DILocation(line: 81, column: 3, scope: !13)
!60 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !3, file: !3, line: 63, type: !61, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !68)
!61 = !DISubroutineType(types: !62)
!62 = !{null, !63, !63, !67, !67, !67}
!63 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !64)
!64 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !65)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!67 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !8, size: 64)
!68 = !{!69, !70, !71, !72, !73, !74, !77, !77, !78, !79, !80, !81, !82, !78}
!69 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !60, type: !63, flags: DIFlagArtificial)
!70 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !60, type: !63, flags: DIFlagArtificial)
!71 = !DILocalVariable(name: "len", arg: 3, scope: !60, file: !3, line: 60, type: !67)
!72 = !DILocalVariable(name: "sum", arg: 4, scope: !60, file: !3, line: 61, type: !67)
!73 = !DILocalVariable(name: "sum0", arg: 5, scope: !60, file: !3, line: 55, type: !67)
!74 = !DILocalVariable(name: ".omp.iv", scope: !75, type: !8, flags: DIFlagArtificial)
!75 = distinct !DILexicalBlock(scope: !76, file: !3, line: 64, column: 1)
!76 = distinct !DILexicalBlock(scope: !60, file: !3, line: 63, column: 3)
!77 = !DILocalVariable(name: ".capture_expr.", scope: !75, type: !8, flags: DIFlagArtificial)
!78 = !DILocalVariable(name: "i", scope: !75, type: !8, flags: DIFlagArtificial)
!79 = !DILocalVariable(name: ".omp.lb", scope: !75, type: !8, flags: DIFlagArtificial)
!80 = !DILocalVariable(name: ".omp.ub", scope: !75, type: !8, flags: DIFlagArtificial)
!81 = !DILocalVariable(name: ".omp.stride", scope: !75, type: !8, flags: DIFlagArtificial)
!82 = !DILocalVariable(name: ".omp.is_last", scope: !75, type: !8, flags: DIFlagArtificial)
!83 = !{!32, !32, i64 0}
!84 = !DILocation(line: 0, scope: !60)
!85 = !DILocation(line: 60, column: 7, scope: !60)
!86 = !DILocation(line: 61, column: 10, scope: !60)
!87 = !DILocation(line: 55, column: 5, scope: !60)
!88 = !DILocation(line: 63, column: 3, scope: !60)
!89 = !DILocation(line: 62, column: 29, scope: !60)
!90 = !DILocation(line: 64, column: 1, scope: !76)
!91 = !DILocation(line: 0, scope: !75)
!92 = !DILocation(line: 65, column: 16, scope: !75)
!93 = !DILocation(line: 65, column: 5, scope: !75)
!94 = !DILocation(line: 65, column: 20, scope: !75)
!95 = !DILocation(line: 65, column: 10, scope: !75)
!96 = !DILocation(line: 67, column: 12, scope: !97)
!97 = distinct !DILexicalBlock(scope: !75, file: !3, line: 66, column: 5)
!98 = !DILocation(line: 67, column: 17, scope: !97)
!99 = !DILocation(line: 67, column: 16, scope: !97)
!100 = !DILocation(line: 67, column: 11, scope: !97)
!101 = !DILocation(line: 68, column: 5, scope: !97)
!102 = !DILocation(line: 64, column: 1, scope: !75)
!103 = distinct !{!103, !102, !104}
!104 = !DILocation(line: 64, column: 16, scope: !75)
!105 = !DILocation(line: 69, column: 1, scope: !76)
!106 = !DILocation(line: 71, column: 12, scope: !107)
!107 = distinct !DILexicalBlock(scope: !108, file: !3, line: 70, column: 5)
!108 = distinct !DILexicalBlock(scope: !76, file: !3, line: 69, column: 1)
!109 = !DILocation(line: 71, column: 16, scope: !107)
!110 = !DILocation(line: 71, column: 15, scope: !107)
!111 = !DILocation(line: 71, column: 10, scope: !107)
!112 = !DILocation(line: 72, column: 5, scope: !107)
!113 = !DILocation(line: 73, column: 3, scope: !60)
!114 = distinct !DISubprogram(name: ".omp_outlined.", scope: !3, file: !3, line: 63, type: !61, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !115)
!115 = !{!116, !117, !118, !119, !120}
!116 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !114, type: !63, flags: DIFlagArtificial)
!117 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !114, type: !63, flags: DIFlagArtificial)
!118 = !DILocalVariable(name: "len", arg: 3, scope: !114, type: !67, flags: DIFlagArtificial)
!119 = !DILocalVariable(name: "sum", arg: 4, scope: !114, type: !67, flags: DIFlagArtificial)
!120 = !DILocalVariable(name: "sum0", arg: 5, scope: !114, type: !67, flags: DIFlagArtificial)
!121 = !DILocation(line: 0, scope: !114)
!122 = !DILocation(line: 63, column: 3, scope: !114)
!123 = !{!124}
!124 = !{i64 2, i64 -1, i64 -1, i1 true}
