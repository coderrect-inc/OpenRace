; ModuleID = 'integration/dataracebench/DRB085-threadprivate-orig-no.c'
source_filename = "integration/dataracebench/DRB085-threadprivate-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

$_ZTW4sum0 = comdat any

@sum0 = dso_local thread_local global i32 0, align 4, !dbg !0
@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 66, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [70 x i8] c";integration/dataracebench/DRB085-threadprivate-orig-no.c;main;66;1;;\00", align 1
@2 = private unnamed_addr constant [70 x i8] c";integration/dataracebench/DRB085-threadprivate-orig-no.c;main;68;1;;\00", align 1
@3 = private unnamed_addr constant [71 x i8] c";integration/dataracebench/DRB085-threadprivate-orig-no.c;main;68;16;;\00", align 1
@4 = private unnamed_addr constant [70 x i8] c";integration/dataracebench/DRB085-threadprivate-orig-no.c;main;73;1;;\00", align 1
@.gomp_critical_user_.var = common global [8 x i32] zeroinitializer
@5 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@sum1 = dso_local global i32 0, align 4, !dbg !6
@.str.1 = private unnamed_addr constant [17 x i8] c"sum=%d; sum1=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"sum==sum1\00", align 1
@.str.3 = private unnamed_addr constant [57 x i8] c"integration/dataracebench/DRB085-threadprivate-orig-no.c\00", align 1
@__PRETTY_FUNCTION__.main = private unnamed_addr constant [11 x i8] c"int main()\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @foo(i32 %i) #0 !dbg !13 {
entry:
  %i.addr = alloca i32, align 4
  store i32 %i, i32* %i.addr, align 4, !tbaa !18
  call void @llvm.dbg.declare(metadata i32* %i.addr, metadata !17, metadata !DIExpression()), !dbg !22
  %0 = load i32, i32* @sum0, align 4, !dbg !23, !tbaa !18
  %1 = load i32, i32* %i.addr, align 4, !dbg !24, !tbaa !18
  %add = add nsw i32 %0, %1, !dbg !25
  store i32 %add, i32* @sum0, align 4, !dbg !26, !tbaa !18
  ret void, !dbg !27
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @main() #0 !dbg !28 {
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
  %2 = bitcast i32* %len to i8*, !dbg !35
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #7, !dbg !35
  call void @llvm.dbg.declare(metadata i32* %len, metadata !32, metadata !DIExpression()), !dbg !36
  store i32 1000, i32* %len, align 4, !dbg !36, !tbaa !18
  %3 = bitcast i32* %i to i8*, !dbg !37
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #7, !dbg !37
  call void @llvm.dbg.declare(metadata i32* %i, metadata !33, metadata !DIExpression()), !dbg !38
  %4 = bitcast i32* %sum to i8*, !dbg !37
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #7, !dbg !37
  call void @llvm.dbg.declare(metadata i32* %sum, metadata !34, metadata !DIExpression()), !dbg !39
  store i32 0, i32* %sum, align 4, !dbg !39, !tbaa !18
  %5 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !40
  store i8* getelementptr inbounds ([70 x i8], [70 x i8]* @1, i32 0, i32 0), i8** %5, align 8, !dbg !40, !tbaa !41
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %len, i32* %sum, i32* @sum0), !dbg !40
  store i32 0, i32* %i, align 4, !dbg !44, !tbaa !18
  br label %for.cond, !dbg !46

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, i32* %i, align 4, !dbg !47, !tbaa !18
  %7 = load i32, i32* %len, align 4, !dbg !49, !tbaa !18
  %cmp = icmp slt i32 %6, %7, !dbg !50
  br i1 %cmp, label %for.body, label %for.end, !dbg !51

for.body:                                         ; preds = %for.cond
  %8 = load i32, i32* @sum1, align 4, !dbg !52, !tbaa !18
  %9 = load i32, i32* %i, align 4, !dbg !54, !tbaa !18
  %add = add nsw i32 %8, %9, !dbg !55
  store i32 %add, i32* @sum1, align 4, !dbg !56, !tbaa !18
  br label %for.inc, !dbg !57

for.inc:                                          ; preds = %for.body
  %10 = load i32, i32* %i, align 4, !dbg !58, !tbaa !18
  %inc = add nsw i32 %10, 1, !dbg !58
  store i32 %inc, i32* %i, align 4, !dbg !58, !tbaa !18
  br label %for.cond, !dbg !59, !llvm.loop !60

for.end:                                          ; preds = %for.cond
  %11 = load i32, i32* %sum, align 4, !dbg !62, !tbaa !18
  %12 = load i32, i32* @sum1, align 4, !dbg !63, !tbaa !18
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %11, i32 %12), !dbg !64
  %13 = load i32, i32* %sum, align 4, !dbg !65, !tbaa !18
  %14 = load i32, i32* @sum1, align 4, !dbg !65, !tbaa !18
  %cmp1 = icmp eq i32 %13, %14, !dbg !65
  br i1 %cmp1, label %if.then, label %if.else, !dbg !68

if.then:                                          ; preds = %for.end
  br label %if.end, !dbg !68

if.else:                                          ; preds = %for.end
  call void @__assert_fail(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0), i32 84, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @__PRETTY_FUNCTION__.main, i64 0, i64 0)) #8, !dbg !65
  unreachable, !dbg !65

if.end:                                           ; preds = %if.then
  %15 = bitcast i32* %sum to i8*, !dbg !69
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %15) #7, !dbg !69
  %16 = bitcast i32* %i to i8*, !dbg !69
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %16) #7, !dbg !69
  %17 = bitcast i32* %len to i8*, !dbg !69
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %17) #7, !dbg !69
  ret i32 0, !dbg !70
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %len, i32* dereferenceable(4) %sum, i32* dereferenceable(4) %sum0) #3 !dbg !71 {
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
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !94
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !80, metadata !DIExpression()), !dbg !95
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !94
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !81, metadata !DIExpression()), !dbg !95
  store i32* %len, i32** %len.addr, align 8, !tbaa !94
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !82, metadata !DIExpression()), !dbg !96
  store i32* %sum, i32** %sum.addr, align 8, !tbaa !94
  call void @llvm.dbg.declare(metadata i32** %sum.addr, metadata !83, metadata !DIExpression()), !dbg !97
  store i32* %sum0, i32** %sum0.addr, align 8, !tbaa !94
  call void @llvm.dbg.declare(metadata i32** %sum0.addr, metadata !84, metadata !DIExpression()), !dbg !98
  %2 = load i32*, i32** %len.addr, align 8, !dbg !99, !tbaa !94
  %3 = load i32*, i32** %sum.addr, align 8, !dbg !99, !tbaa !94
  %4 = load i32*, i32** %sum0.addr, align 8, !dbg !99, !tbaa !94
  %5 = ptrtoint i32* %4 to i64, !dbg !99
  %6 = icmp ne i64 %5, ptrtoint (i32* @sum0 to i64), !dbg !99
  br i1 %6, label %copyin.not.master, label %copyin.not.master.end, !dbg !99

copyin.not.master:                                ; preds = %entry
  %7 = load i32, i32* %4, align 4, !dbg !100, !tbaa !18
  store i32 %7, i32* @sum0, align 4, !dbg !100, !tbaa !18
  br label %copyin.not.master.end, !dbg !99

copyin.not.master.end:                            ; preds = %copyin.not.master, %entry
  %8 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !99
  store i8* getelementptr inbounds ([70 x i8], [70 x i8]* @1, i32 0, i32 0), i8** %8, align 8, !dbg !99, !tbaa !41
  %9 = load i32*, i32** %.global_tid..addr, align 8, !dbg !99
  %10 = load i32, i32* %9, align 4, !dbg !99, !tbaa !18
  call void @__kmpc_barrier(%struct.ident_t* %.kmpc_loc.addr, i32 %10), !dbg !99
  %11 = bitcast i32* %.omp.iv to i8*, !dbg !101
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #7, !dbg !101
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !85, metadata !DIExpression()), !dbg !102
  %12 = bitcast i32* %.capture_expr. to i8*, !dbg !101
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #7, !dbg !101
  call void @llvm.dbg.declare(metadata i32* %.capture_expr., metadata !88, metadata !DIExpression()), !dbg !102
  %13 = load i32, i32* %2, align 4, !dbg !103, !tbaa !18
  store i32 %13, i32* %.capture_expr., align 4, !dbg !103, !tbaa !18
  %14 = bitcast i32* %.capture_expr.1 to i8*, !dbg !101
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %14) #7, !dbg !101
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.1, metadata !88, metadata !DIExpression()), !dbg !102
  %15 = load i32, i32* %.capture_expr., align 4, !dbg !103, !tbaa !18
  %sub = sub nsw i32 %15, 0, !dbg !104
  %sub2 = sub nsw i32 %sub, 1, !dbg !104
  %add = add nsw i32 %sub2, 1, !dbg !104
  %div = sdiv i32 %add, 1, !dbg !104
  %sub3 = sub nsw i32 %div, 1, !dbg !104
  store i32 %sub3, i32* %.capture_expr.1, align 4, !dbg !104, !tbaa !18
  %16 = bitcast i32* %i to i8*, !dbg !101
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %16) #7, !dbg !101
  call void @llvm.dbg.declare(metadata i32* %i, metadata !89, metadata !DIExpression()), !dbg !102
  store i32 0, i32* %i, align 4, !dbg !105, !tbaa !18
  %17 = bitcast i32* %i to i8*, !dbg !101
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %17) #7, !dbg !101
  %18 = load i32, i32* %.capture_expr., align 4, !dbg !103, !tbaa !18
  %cmp = icmp slt i32 0, %18, !dbg !104
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end, !dbg !101

omp.precond.then:                                 ; preds = %copyin.not.master.end
  %19 = bitcast i32* %.omp.lb to i8*, !dbg !101
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %19) #7, !dbg !101
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !90, metadata !DIExpression()), !dbg !102
  store i32 0, i32* %.omp.lb, align 4, !dbg !106, !tbaa !18
  %20 = bitcast i32* %.omp.ub to i8*, !dbg !101
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %20) #7, !dbg !101
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !91, metadata !DIExpression()), !dbg !102
  %21 = load i32, i32* %.capture_expr.1, align 4, !dbg !104, !tbaa !18
  store i32 %21, i32* %.omp.ub, align 4, !dbg !106, !tbaa !18
  %22 = bitcast i32* %.omp.stride to i8*, !dbg !101
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %22) #7, !dbg !101
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !92, metadata !DIExpression()), !dbg !102
  store i32 1, i32* %.omp.stride, align 4, !dbg !106, !tbaa !18
  %23 = bitcast i32* %.omp.is_last to i8*, !dbg !101
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %23) #7, !dbg !101
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !93, metadata !DIExpression()), !dbg !102
  store i32 0, i32* %.omp.is_last, align 4, !dbg !106, !tbaa !18
  %24 = bitcast i32* %i4 to i8*, !dbg !101
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %24) #7, !dbg !101
  call void @llvm.dbg.declare(metadata i32* %i4, metadata !89, metadata !DIExpression()), !dbg !102
  %25 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !101
  store i8* getelementptr inbounds ([70 x i8], [70 x i8]* @2, i32 0, i32 0), i8** %25, align 8, !dbg !101, !tbaa !41
  %26 = load i32*, i32** %.global_tid..addr, align 8, !dbg !101
  %27 = load i32, i32* %26, align 4, !dbg !101, !tbaa !18
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %27, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !101
  %28 = load i32, i32* %.omp.ub, align 4, !dbg !106, !tbaa !18
  %29 = load i32, i32* %.capture_expr.1, align 4, !dbg !104, !tbaa !18
  %cmp5 = icmp sgt i32 %28, %29, !dbg !106
  br i1 %cmp5, label %cond.true, label %cond.false, !dbg !106

cond.true:                                        ; preds = %omp.precond.then
  %30 = load i32, i32* %.capture_expr.1, align 4, !dbg !104, !tbaa !18
  br label %cond.end, !dbg !106

cond.false:                                       ; preds = %omp.precond.then
  %31 = load i32, i32* %.omp.ub, align 4, !dbg !106, !tbaa !18
  br label %cond.end, !dbg !106

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %30, %cond.true ], [ %31, %cond.false ], !dbg !106
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !106, !tbaa !18
  %32 = load i32, i32* %.omp.lb, align 4, !dbg !106, !tbaa !18
  store i32 %32, i32* %.omp.iv, align 4, !dbg !106, !tbaa !18
  br label %omp.inner.for.cond, !dbg !101

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %33 = load i32, i32* %.omp.iv, align 4, !dbg !106, !tbaa !18
  %34 = load i32, i32* %.omp.ub, align 4, !dbg !106, !tbaa !18
  %cmp6 = icmp sle i32 %33, %34, !dbg !104
  br i1 %cmp6, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !101

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !101

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %35 = load i32, i32* %.omp.iv, align 4, !dbg !106, !tbaa !18
  %mul = mul nsw i32 %35, 1, !dbg !105
  %add7 = add nsw i32 0, %mul, !dbg !105
  store i32 %add7, i32* %i4, align 4, !dbg !105, !tbaa !18
  %36 = load i32, i32* %i4, align 4, !dbg !107, !tbaa !18
  call void @foo(i32 %36), !dbg !109
  br label %omp.body.continue, !dbg !110

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !111

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %37 = load i32, i32* %.omp.iv, align 4, !dbg !106, !tbaa !18
  %add8 = add nsw i32 %37, 1, !dbg !104
  store i32 %add8, i32* %.omp.iv, align 4, !dbg !104, !tbaa !18
  br label %omp.inner.for.cond, !dbg !111, !llvm.loop !112

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !111

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %38 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !111
  store i8* getelementptr inbounds ([71 x i8], [71 x i8]* @3, i32 0, i32 0), i8** %38, align 8, !dbg !111, !tbaa !41
  %39 = load i32*, i32** %.global_tid..addr, align 8, !dbg !111
  %40 = load i32, i32* %39, align 4, !dbg !111, !tbaa !18
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %40), !dbg !111
  %41 = bitcast i32* %i4 to i8*, !dbg !111
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %41) #7, !dbg !111
  %42 = bitcast i32* %.omp.is_last to i8*, !dbg !111
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %42) #7, !dbg !111
  %43 = bitcast i32* %.omp.stride to i8*, !dbg !111
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %43) #7, !dbg !111
  %44 = bitcast i32* %.omp.ub to i8*, !dbg !111
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %44) #7, !dbg !111
  %45 = bitcast i32* %.omp.lb to i8*, !dbg !111
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %45) #7, !dbg !111
  br label %omp.precond.end, !dbg !111

omp.precond.end:                                  ; preds = %omp.loop.exit, %copyin.not.master.end
  %46 = bitcast i32* %.capture_expr.1 to i8*, !dbg !111
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %46) #7, !dbg !111
  %47 = bitcast i32* %.capture_expr. to i8*, !dbg !111
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %47) #7, !dbg !111
  %48 = bitcast i32* %.omp.iv to i8*, !dbg !111
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %48) #7, !dbg !111
  %49 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !113
  store i8* getelementptr inbounds ([70 x i8], [70 x i8]* @2, i32 0, i32 0), i8** %49, align 8, !dbg !113, !tbaa !41
  %50 = load i32*, i32** %.global_tid..addr, align 8, !dbg !113
  %51 = load i32, i32* %50, align 4, !dbg !113, !tbaa !18
  call void @__kmpc_barrier(%struct.ident_t* %.kmpc_loc.addr, i32 %51), !dbg !113
  %52 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !114
  store i8* getelementptr inbounds ([70 x i8], [70 x i8]* @4, i32 0, i32 0), i8** %52, align 8, !dbg !114, !tbaa !41
  %53 = load i32*, i32** %.global_tid..addr, align 8, !dbg !114
  %54 = load i32, i32* %53, align 4, !dbg !114, !tbaa !18
  call void @__kmpc_critical(%struct.ident_t* %.kmpc_loc.addr, i32 %54, [8 x i32]* @.gomp_critical_user_.var), !dbg !114
  %55 = load i32, i32* %3, align 4, !dbg !115, !tbaa !18
  %56 = load i32, i32* @sum0, align 4, !dbg !118, !tbaa !18
  %add9 = add nsw i32 %55, %56, !dbg !119
  store i32 %add9, i32* %3, align 4, !dbg !120, !tbaa !18
  call void @__kmpc_end_critical(%struct.ident_t* %.kmpc_loc.addr, i32 %54, [8 x i32]* @.gomp_critical_user_.var), !dbg !121
  ret void, !dbg !122
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local void @__kmpc_barrier(%struct.ident_t*, i32)

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

declare dso_local void @__kmpc_end_critical(%struct.ident_t*, i32, [8 x i32]*)

declare dso_local void @__kmpc_critical(%struct.ident_t*, i32, [8 x i32]*)

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %len, i32* dereferenceable(4) %sum, i32* dereferenceable(4) %sum0) #3 !dbg !123 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %sum.addr = alloca i32*, align 8
  %sum0.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !94
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !125, metadata !DIExpression()), !dbg !130
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !94
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !126, metadata !DIExpression()), !dbg !130
  store i32* %len, i32** %len.addr, align 8, !tbaa !94
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !127, metadata !DIExpression()), !dbg !130
  store i32* %sum, i32** %sum.addr, align 8, !tbaa !94
  call void @llvm.dbg.declare(metadata i32** %sum.addr, metadata !128, metadata !DIExpression()), !dbg !130
  store i32* %sum0, i32** %sum0.addr, align 8, !tbaa !94
  call void @llvm.dbg.declare(metadata i32** %sum0.addr, metadata !129, metadata !DIExpression()), !dbg !130
  %0 = load i32*, i32** %len.addr, align 8, !dbg !131, !tbaa !94
  %1 = load i32*, i32** %sum.addr, align 8, !dbg !131, !tbaa !94
  %2 = load i32*, i32** %sum0.addr, align 8, !dbg !131, !tbaa !94
  %3 = load i32*, i32** %.global_tid..addr, align 8, !dbg !131, !tbaa !94
  %4 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !131, !tbaa !94
  %5 = load i32*, i32** %len.addr, align 8, !dbg !131, !tbaa !94
  %6 = load i32*, i32** %sum.addr, align 8, !dbg !131, !tbaa !94
  %7 = load i32*, i32** %sum0.addr, align 8, !dbg !131, !tbaa !94
  call void @.omp_outlined._debug__(i32* %3, i32* %4, i32* %5, i32* %6, i32* %7) #7, !dbg !131
  ret void, !dbg !131
}

declare !callback !132 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

declare dso_local i32 @printf(i8*, ...) #4

; Function Attrs: noreturn nounwind
declare dso_local void @__assert_fail(i8*, i8*, i32, i8*) #5

; Function Attrs: nounwind uwtable
define weak_odr hidden i32* @_ZTW4sum0() #6 comdat {
  ret i32* @sum0
}

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
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
!1 = distinct !DIGlobalVariable(name: "sum0", scope: !2, file: !3, line: 54, type: !8, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "integration/dataracebench/DRB085-threadprivate-orig-no.c", directory: "/home/brad/Code/OpenRace/tests/data")
!4 = !{}
!5 = !{!0, !6}
!6 = !DIGlobalVariableExpression(var: !7, expr: !DIExpression())
!7 = distinct !DIGlobalVariable(name: "sum1", scope: !2, file: !3, line: 54, type: !8, isLocal: false, isDefinition: true)
!8 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!9 = !{i32 7, !"Dwarf Version", i32 4}
!10 = !{i32 2, !"Debug Info Version", i32 3}
!11 = !{i32 1, !"wchar_size", i32 4}
!12 = !{!"clang version 10.0.1 "}
!13 = distinct !DISubprogram(name: "foo", scope: !3, file: !3, line: 57, type: !14, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !16)
!14 = !DISubroutineType(types: !15)
!15 = !{null, !8}
!16 = !{!17}
!17 = !DILocalVariable(name: "i", arg: 1, scope: !13, file: !3, line: 57, type: !8)
!18 = !{!19, !19, i64 0}
!19 = !{!"int", !20, i64 0}
!20 = !{!"omnipotent char", !21, i64 0}
!21 = !{!"Simple C/C++ TBAA"}
!22 = !DILocation(line: 57, column: 15, scope: !13)
!23 = !DILocation(line: 59, column: 8, scope: !13)
!24 = !DILocation(line: 59, column: 13, scope: !13)
!25 = !DILocation(line: 59, column: 12, scope: !13)
!26 = !DILocation(line: 59, column: 7, scope: !13)
!27 = !DILocation(line: 60, column: 1, scope: !13)
!28 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 62, type: !29, scopeLine: 63, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !31)
!29 = !DISubroutineType(types: !30)
!30 = !{!8}
!31 = !{!32, !33, !34}
!32 = !DILocalVariable(name: "len", scope: !28, file: !3, line: 64, type: !8)
!33 = !DILocalVariable(name: "i", scope: !28, file: !3, line: 65, type: !8)
!34 = !DILocalVariable(name: "sum", scope: !28, file: !3, line: 65, type: !8)
!35 = !DILocation(line: 64, column: 3, scope: !28)
!36 = !DILocation(line: 64, column: 7, scope: !28)
!37 = !DILocation(line: 65, column: 3, scope: !28)
!38 = !DILocation(line: 65, column: 7, scope: !28)
!39 = !DILocation(line: 65, column: 10, scope: !28)
!40 = !DILocation(line: 66, column: 1, scope: !28)
!41 = !{!42, !43, i64 16}
!42 = !{!"ident_t", !19, i64 0, !19, i64 4, !19, i64 8, !19, i64 12, !43, i64 16}
!43 = !{!"any pointer", !20, i64 0}
!44 = !DILocation(line: 79, column: 9, scope: !45)
!45 = distinct !DILexicalBlock(scope: !28, file: !3, line: 79, column: 3)
!46 = !DILocation(line: 79, column: 8, scope: !45)
!47 = !DILocation(line: 79, column: 12, scope: !48)
!48 = distinct !DILexicalBlock(scope: !45, file: !3, line: 79, column: 3)
!49 = !DILocation(line: 79, column: 14, scope: !48)
!50 = !DILocation(line: 79, column: 13, scope: !48)
!51 = !DILocation(line: 79, column: 3, scope: !45)
!52 = !DILocation(line: 81, column: 10, scope: !53)
!53 = distinct !DILexicalBlock(scope: !48, file: !3, line: 80, column: 3)
!54 = !DILocation(line: 81, column: 15, scope: !53)
!55 = !DILocation(line: 81, column: 14, scope: !53)
!56 = !DILocation(line: 81, column: 9, scope: !53)
!57 = !DILocation(line: 82, column: 3, scope: !53)
!58 = !DILocation(line: 79, column: 19, scope: !48)
!59 = !DILocation(line: 79, column: 3, scope: !48)
!60 = distinct !{!60, !51, !61}
!61 = !DILocation(line: 82, column: 3, scope: !45)
!62 = !DILocation(line: 83, column: 30, scope: !28)
!63 = !DILocation(line: 83, column: 34, scope: !28)
!64 = !DILocation(line: 83, column: 3, scope: !28)
!65 = !DILocation(line: 84, column: 3, scope: !66)
!66 = distinct !DILexicalBlock(scope: !67, file: !3, line: 84, column: 3)
!67 = distinct !DILexicalBlock(scope: !28, file: !3, line: 84, column: 3)
!68 = !DILocation(line: 84, column: 3, scope: !67)
!69 = !DILocation(line: 86, column: 1, scope: !28)
!70 = !DILocation(line: 85, column: 3, scope: !28)
!71 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !3, file: !3, line: 67, type: !72, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !79)
!72 = !DISubroutineType(types: !73)
!73 = !{null, !74, !74, !78, !78, !78}
!74 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !75)
!75 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !76)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !8)
!78 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !8, size: 64)
!79 = !{!80, !81, !82, !83, !84, !85, !88, !88, !89, !90, !91, !92, !93, !89}
!80 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !71, type: !74, flags: DIFlagArtificial)
!81 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !71, type: !74, flags: DIFlagArtificial)
!82 = !DILocalVariable(name: "len", arg: 3, scope: !71, file: !3, line: 64, type: !78)
!83 = !DILocalVariable(name: "sum", arg: 4, scope: !71, file: !3, line: 65, type: !78)
!84 = !DILocalVariable(name: "sum0", arg: 5, scope: !71, file: !3, line: 54, type: !78)
!85 = !DILocalVariable(name: ".omp.iv", scope: !86, type: !8, flags: DIFlagArtificial)
!86 = distinct !DILexicalBlock(scope: !87, file: !3, line: 68, column: 1)
!87 = distinct !DILexicalBlock(scope: !71, file: !3, line: 67, column: 3)
!88 = !DILocalVariable(name: ".capture_expr.", scope: !86, type: !8, flags: DIFlagArtificial)
!89 = !DILocalVariable(name: "i", scope: !86, type: !8, flags: DIFlagArtificial)
!90 = !DILocalVariable(name: ".omp.lb", scope: !86, type: !8, flags: DIFlagArtificial)
!91 = !DILocalVariable(name: ".omp.ub", scope: !86, type: !8, flags: DIFlagArtificial)
!92 = !DILocalVariable(name: ".omp.stride", scope: !86, type: !8, flags: DIFlagArtificial)
!93 = !DILocalVariable(name: ".omp.is_last", scope: !86, type: !8, flags: DIFlagArtificial)
!94 = !{!43, !43, i64 0}
!95 = !DILocation(line: 0, scope: !71)
!96 = !DILocation(line: 64, column: 7, scope: !71)
!97 = !DILocation(line: 65, column: 10, scope: !71)
!98 = !DILocation(line: 54, column: 5, scope: !71)
!99 = !DILocation(line: 67, column: 3, scope: !71)
!100 = !DILocation(line: 66, column: 29, scope: !71)
!101 = !DILocation(line: 68, column: 1, scope: !87)
!102 = !DILocation(line: 0, scope: !86)
!103 = !DILocation(line: 69, column: 16, scope: !86)
!104 = !DILocation(line: 69, column: 5, scope: !86)
!105 = !DILocation(line: 69, column: 20, scope: !86)
!106 = !DILocation(line: 69, column: 10, scope: !86)
!107 = !DILocation(line: 71, column: 13, scope: !108)
!108 = distinct !DILexicalBlock(scope: !86, file: !3, line: 70, column: 5)
!109 = !DILocation(line: 71, column: 8, scope: !108)
!110 = !DILocation(line: 72, column: 5, scope: !108)
!111 = !DILocation(line: 68, column: 1, scope: !86)
!112 = distinct !{!112, !111, !113}
!113 = !DILocation(line: 68, column: 16, scope: !86)
!114 = !DILocation(line: 73, column: 1, scope: !87)
!115 = !DILocation(line: 75, column: 12, scope: !116)
!116 = distinct !DILexicalBlock(scope: !117, file: !3, line: 74, column: 5)
!117 = distinct !DILexicalBlock(scope: !87, file: !3, line: 73, column: 1)
!118 = !DILocation(line: 75, column: 16, scope: !116)
!119 = !DILocation(line: 75, column: 15, scope: !116)
!120 = !DILocation(line: 75, column: 10, scope: !116)
!121 = !DILocation(line: 76, column: 5, scope: !116)
!122 = !DILocation(line: 77, column: 3, scope: !71)
!123 = distinct !DISubprogram(name: ".omp_outlined.", scope: !3, file: !3, line: 67, type: !72, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !124)
!124 = !{!125, !126, !127, !128, !129}
!125 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !123, type: !74, flags: DIFlagArtificial)
!126 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !123, type: !74, flags: DIFlagArtificial)
!127 = !DILocalVariable(name: "len", arg: 3, scope: !123, type: !78, flags: DIFlagArtificial)
!128 = !DILocalVariable(name: "sum", arg: 4, scope: !123, type: !78, flags: DIFlagArtificial)
!129 = !DILocalVariable(name: "sum0", arg: 5, scope: !123, type: !78, flags: DIFlagArtificial)
!130 = !DILocation(line: 0, scope: !123)
!131 = !DILocation(line: 67, column: 3, scope: !123)
!132 = !{!133}
!133 = !{i64 2, i64 -1, i64 -1, i1 true}
