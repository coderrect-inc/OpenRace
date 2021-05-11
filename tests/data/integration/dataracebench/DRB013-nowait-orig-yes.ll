; ModuleID = 'integration/dataracebench/DRB013-nowait-orig-yes.c'
source_filename = "integration/dataracebench/DRB013-nowait-orig-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [64 x i8] c";integration/dataracebench/DRB013-nowait-orig-yes.c;main;70;1;;\00", align 1
@2 = private unnamed_addr constant [65 x i8] c";integration/dataracebench/DRB013-nowait-orig-yes.c;main;70;23;;\00", align 1
@3 = private unnamed_addr constant [64 x i8] c";integration/dataracebench/DRB013-nowait-orig-yes.c;main;74;1;;\00", align 1
@4 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@5 = private unnamed_addr constant [64 x i8] c";integration/dataracebench/DRB013-nowait-orig-yes.c;main;68;1;;\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"error = %d\0A\00", align 1

; Function Attrs: nounwind uwtable
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
  %1 = bitcast %struct.ident_t* @4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32 0, i32* %retval, align 4
  %2 = bitcast i32* %i to i8*, !dbg !22
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #3, !dbg !22
  call void @llvm.dbg.declare(metadata i32* %i, metadata !12, metadata !DIExpression()), !dbg !23
  %3 = bitcast i32* %error to i8*, !dbg !22
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #3, !dbg !22
  call void @llvm.dbg.declare(metadata i32* %error, metadata !13, metadata !DIExpression()), !dbg !24
  %4 = bitcast i32* %len to i8*, !dbg !25
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #3, !dbg !25
  call void @llvm.dbg.declare(metadata i32* %len, metadata !14, metadata !DIExpression()), !dbg !26
  store i32 1000, i32* %len, align 4, !dbg !26, !tbaa !27
  %5 = load i32, i32* %len, align 4, !dbg !31, !tbaa !27
  %6 = zext i32 %5 to i64, !dbg !32
  %7 = call i8* @llvm.stacksave(), !dbg !32
  store i8* %7, i8** %saved_stack, align 8, !dbg !32
  %vla = alloca i32, i64 %6, align 16, !dbg !32
  store i64 %6, i64* %__vla_expr0, align 8, !dbg !32
  call void @llvm.dbg.declare(metadata i64* %__vla_expr0, metadata !15, metadata !DIExpression()), !dbg !33
  call void @llvm.dbg.declare(metadata i32* %vla, metadata !17, metadata !DIExpression()), !dbg !34
  %8 = bitcast i32* %b to i8*, !dbg !32
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #3, !dbg !32
  call void @llvm.dbg.declare(metadata i32* %b, metadata !21, metadata !DIExpression()), !dbg !35
  store i32 5, i32* %b, align 4, !dbg !35, !tbaa !27
  store i32 0, i32* %i, align 4, !dbg !36, !tbaa !27
  br label %for.cond, !dbg !38

for.cond:                                         ; preds = %for.inc, %entry
  %9 = load i32, i32* %i, align 4, !dbg !39, !tbaa !27
  %10 = load i32, i32* %len, align 4, !dbg !41, !tbaa !27
  %cmp = icmp slt i32 %9, %10, !dbg !42
  br i1 %cmp, label %for.body, label %for.end, !dbg !43

for.body:                                         ; preds = %for.cond
  %11 = load i32, i32* %i, align 4, !dbg !44, !tbaa !27
  %12 = load i32, i32* %i, align 4, !dbg !45, !tbaa !27
  %idxprom = sext i32 %12 to i64, !dbg !46
  %arrayidx = getelementptr inbounds i32, i32* %vla, i64 %idxprom, !dbg !46
  store i32 %11, i32* %arrayidx, align 4, !dbg !47, !tbaa !27
  br label %for.inc, !dbg !46

for.inc:                                          ; preds = %for.body
  %13 = load i32, i32* %i, align 4, !dbg !48, !tbaa !27
  %inc = add nsw i32 %13, 1, !dbg !48
  store i32 %inc, i32* %i, align 4, !dbg !48, !tbaa !27
  br label %for.cond, !dbg !49, !llvm.loop !50

for.end:                                          ; preds = %for.cond
  %14 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !52
  store i8* getelementptr inbounds ([64 x i8], [64 x i8]* @5, i32 0, i32 0), i8** %14, align 8, !dbg !52, !tbaa !53
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 5, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i64, i32*, i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %len, i64 %6, i32* %vla, i32* %b, i32* %error), !dbg !52
  %15 = load i32, i32* %error, align 4, !dbg !56, !tbaa !27
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %15), !dbg !57
  store i32 0, i32* %retval, align 4, !dbg !58
  %16 = bitcast i32* %b to i8*, !dbg !59
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %16) #3, !dbg !59
  %17 = load i8*, i8** %saved_stack, align 8, !dbg !59
  call void @llvm.stackrestore(i8* %17), !dbg !59
  %18 = bitcast i32* %len to i8*, !dbg !59
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %18) #3, !dbg !59
  %19 = bitcast i32* %error to i8*, !dbg !59
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %19) #3, !dbg !59
  %20 = bitcast i32* %i to i8*, !dbg !59
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %20) #3, !dbg !59
  %21 = load i32, i32* %retval, align 4, !dbg !59
  ret i32 %21, !dbg !59
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %len, i64 %vla, i32* dereferenceable(4) %a, i32* dereferenceable(4) %b, i32* dereferenceable(4) %error) #4 !dbg !60 {
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
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !85
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !69, metadata !DIExpression()), !dbg !86
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !85
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !70, metadata !DIExpression()), !dbg !86
  store i32* %len, i32** %len.addr, align 8, !tbaa !85
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !71, metadata !DIExpression()), !dbg !87
  store i64 %vla, i64* %vla.addr, align 8, !tbaa !88
  call void @llvm.dbg.declare(metadata i64* %vla.addr, metadata !72, metadata !DIExpression()), !dbg !86
  store i32* %a, i32** %a.addr, align 8, !tbaa !85
  call void @llvm.dbg.declare(metadata i32** %a.addr, metadata !73, metadata !DIExpression()), !dbg !90
  store i32* %b, i32** %b.addr, align 8, !tbaa !85
  call void @llvm.dbg.declare(metadata i32** %b.addr, metadata !74, metadata !DIExpression()), !dbg !91
  store i32* %error, i32** %error.addr, align 8, !tbaa !85
  call void @llvm.dbg.declare(metadata i32** %error.addr, metadata !75, metadata !DIExpression()), !dbg !92
  %2 = load i32*, i32** %len.addr, align 8, !dbg !93, !tbaa !85
  %3 = load i64, i64* %vla.addr, align 8, !dbg !93, !tbaa !88
  %4 = load i32*, i32** %a.addr, align 8, !dbg !93, !tbaa !85
  %5 = load i32*, i32** %b.addr, align 8, !dbg !93, !tbaa !85
  %6 = load i32*, i32** %error.addr, align 8, !dbg !93, !tbaa !85
  %7 = bitcast i32* %.omp.iv to i8*, !dbg !94
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #3, !dbg !94
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !76, metadata !DIExpression()), !dbg !95
  %8 = bitcast i32* %.capture_expr. to i8*, !dbg !94
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #3, !dbg !94
  call void @llvm.dbg.declare(metadata i32* %.capture_expr., metadata !79, metadata !DIExpression()), !dbg !95
  %9 = load i32, i32* %2, align 4, !dbg !96, !tbaa !27
  store i32 %9, i32* %.capture_expr., align 4, !dbg !96, !tbaa !27
  %10 = bitcast i32* %.capture_expr.1 to i8*, !dbg !94
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #3, !dbg !94
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.1, metadata !79, metadata !DIExpression()), !dbg !95
  %11 = load i32, i32* %.capture_expr., align 4, !dbg !96, !tbaa !27
  %sub = sub nsw i32 %11, 0, !dbg !97
  %sub2 = sub nsw i32 %sub, 1, !dbg !97
  %add = add nsw i32 %sub2, 1, !dbg !97
  %div = sdiv i32 %add, 1, !dbg !97
  %sub3 = sub nsw i32 %div, 1, !dbg !97
  store i32 %sub3, i32* %.capture_expr.1, align 4, !dbg !97, !tbaa !27
  %12 = bitcast i32* %i to i8*, !dbg !94
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #3, !dbg !94
  call void @llvm.dbg.declare(metadata i32* %i, metadata !80, metadata !DIExpression()), !dbg !95
  store i32 0, i32* %i, align 4, !dbg !98, !tbaa !27
  %13 = bitcast i32* %i to i8*, !dbg !94
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %13) #3, !dbg !94
  %14 = load i32, i32* %.capture_expr., align 4, !dbg !96, !tbaa !27
  %cmp = icmp slt i32 0, %14, !dbg !97
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end, !dbg !94

omp.precond.then:                                 ; preds = %entry
  %15 = bitcast i32* %.omp.lb to i8*, !dbg !94
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %15) #3, !dbg !94
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !81, metadata !DIExpression()), !dbg !95
  store i32 0, i32* %.omp.lb, align 4, !dbg !99, !tbaa !27
  %16 = bitcast i32* %.omp.ub to i8*, !dbg !94
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %16) #3, !dbg !94
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !82, metadata !DIExpression()), !dbg !95
  %17 = load i32, i32* %.capture_expr.1, align 4, !dbg !97, !tbaa !27
  store i32 %17, i32* %.omp.ub, align 4, !dbg !99, !tbaa !27
  %18 = bitcast i32* %.omp.stride to i8*, !dbg !94
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %18) #3, !dbg !94
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !83, metadata !DIExpression()), !dbg !95
  store i32 1, i32* %.omp.stride, align 4, !dbg !99, !tbaa !27
  %19 = bitcast i32* %.omp.is_last to i8*, !dbg !94
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %19) #3, !dbg !94
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !84, metadata !DIExpression()), !dbg !95
  store i32 0, i32* %.omp.is_last, align 4, !dbg !99, !tbaa !27
  %20 = bitcast i32* %i4 to i8*, !dbg !94
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %20) #3, !dbg !94
  call void @llvm.dbg.declare(metadata i32* %i4, metadata !80, metadata !DIExpression()), !dbg !95
  %21 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !94
  store i8* getelementptr inbounds ([64 x i8], [64 x i8]* @1, i32 0, i32 0), i8** %21, align 8, !dbg !94, !tbaa !53
  %22 = load i32*, i32** %.global_tid..addr, align 8, !dbg !94
  %23 = load i32, i32* %22, align 4, !dbg !94, !tbaa !27
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %23, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !94
  %24 = load i32, i32* %.omp.ub, align 4, !dbg !99, !tbaa !27
  %25 = load i32, i32* %.capture_expr.1, align 4, !dbg !97, !tbaa !27
  %cmp5 = icmp sgt i32 %24, %25, !dbg !99
  br i1 %cmp5, label %cond.true, label %cond.false, !dbg !99

cond.true:                                        ; preds = %omp.precond.then
  %26 = load i32, i32* %.capture_expr.1, align 4, !dbg !97, !tbaa !27
  br label %cond.end, !dbg !99

cond.false:                                       ; preds = %omp.precond.then
  %27 = load i32, i32* %.omp.ub, align 4, !dbg !99, !tbaa !27
  br label %cond.end, !dbg !99

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %26, %cond.true ], [ %27, %cond.false ], !dbg !99
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !99, !tbaa !27
  %28 = load i32, i32* %.omp.lb, align 4, !dbg !99, !tbaa !27
  store i32 %28, i32* %.omp.iv, align 4, !dbg !99, !tbaa !27
  br label %omp.inner.for.cond, !dbg !94

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %29 = load i32, i32* %.omp.iv, align 4, !dbg !99, !tbaa !27
  %30 = load i32, i32* %.omp.ub, align 4, !dbg !99, !tbaa !27
  %cmp6 = icmp sle i32 %29, %30, !dbg !97
  br i1 %cmp6, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !94

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !94

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %31 = load i32, i32* %.omp.iv, align 4, !dbg !99, !tbaa !27
  %mul = mul nsw i32 %31, 1, !dbg !98
  %add7 = add nsw i32 0, %mul, !dbg !98
  store i32 %add7, i32* %i4, align 4, !dbg !98, !tbaa !27
  %32 = load i32, i32* %5, align 4, !dbg !100, !tbaa !27
  %33 = load i32, i32* %i4, align 4, !dbg !101, !tbaa !27
  %idxprom = sext i32 %33 to i64, !dbg !102
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 %idxprom, !dbg !102
  %34 = load i32, i32* %arrayidx, align 4, !dbg !102, !tbaa !27
  %mul8 = mul nsw i32 %34, 5, !dbg !103
  %add9 = add nsw i32 %32, %mul8, !dbg !104
  %35 = load i32, i32* %i4, align 4, !dbg !105, !tbaa !27
  %idxprom10 = sext i32 %35 to i64, !dbg !106
  %arrayidx11 = getelementptr inbounds i32, i32* %4, i64 %idxprom10, !dbg !106
  store i32 %add9, i32* %arrayidx11, align 4, !dbg !107, !tbaa !27
  br label %omp.body.continue, !dbg !106

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !108

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %36 = load i32, i32* %.omp.iv, align 4, !dbg !99, !tbaa !27
  %add12 = add nsw i32 %36, 1, !dbg !97
  store i32 %add12, i32* %.omp.iv, align 4, !dbg !97, !tbaa !27
  br label %omp.inner.for.cond, !dbg !108, !llvm.loop !109

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !108

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %37 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !108
  store i8* getelementptr inbounds ([65 x i8], [65 x i8]* @2, i32 0, i32 0), i8** %37, align 8, !dbg !108, !tbaa !53
  %38 = load i32*, i32** %.global_tid..addr, align 8, !dbg !108
  %39 = load i32, i32* %38, align 4, !dbg !108, !tbaa !27
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %39), !dbg !108
  %40 = bitcast i32* %i4 to i8*, !dbg !108
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %40) #3, !dbg !108
  %41 = bitcast i32* %.omp.is_last to i8*, !dbg !108
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %41) #3, !dbg !108
  %42 = bitcast i32* %.omp.stride to i8*, !dbg !108
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %42) #3, !dbg !108
  %43 = bitcast i32* %.omp.ub to i8*, !dbg !108
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %43) #3, !dbg !108
  %44 = bitcast i32* %.omp.lb to i8*, !dbg !108
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %44) #3, !dbg !108
  br label %omp.precond.end, !dbg !108

omp.precond.end:                                  ; preds = %omp.loop.exit, %entry
  %45 = bitcast i32* %.capture_expr.1 to i8*, !dbg !108
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %45) #3, !dbg !108
  %46 = bitcast i32* %.capture_expr. to i8*, !dbg !108
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %46) #3, !dbg !108
  %47 = bitcast i32* %.omp.iv to i8*, !dbg !108
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %47) #3, !dbg !108
  %48 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !111
  store i8* getelementptr inbounds ([64 x i8], [64 x i8]* @3, i32 0, i32 0), i8** %48, align 8, !dbg !111, !tbaa !53
  %49 = load i32*, i32** %.global_tid..addr, align 8, !dbg !111
  %50 = load i32, i32* %49, align 4, !dbg !111, !tbaa !27
  %51 = call i32 @__kmpc_single(%struct.ident_t* %.kmpc_loc.addr, i32 %50), !dbg !111
  %52 = icmp ne i32 %51, 0, !dbg !111
  br i1 %52, label %omp_if.then, label %omp_if.end, !dbg !111

omp_if.then:                                      ; preds = %omp.precond.end
  %arrayidx13 = getelementptr inbounds i32, i32* %4, i64 9, !dbg !112
  %53 = load i32, i32* %arrayidx13, align 4, !dbg !112, !tbaa !27
  %add14 = add nsw i32 %53, 1, !dbg !114
  store i32 %add14, i32* %6, align 4, !dbg !115, !tbaa !27
  call void @__kmpc_end_single(%struct.ident_t* %.kmpc_loc.addr, i32 %50), !dbg !116
  br label %omp_if.end, !dbg !116

omp_if.end:                                       ; preds = %omp_if.then, %omp.precond.end
  %54 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !117
  store i8* getelementptr inbounds ([64 x i8], [64 x i8]* @3, i32 0, i32 0), i8** %54, align 8, !dbg !117, !tbaa !53
  %55 = load i32*, i32** %.global_tid..addr, align 8, !dbg !117
  %56 = load i32, i32* %55, align 4, !dbg !117, !tbaa !27
  call void @__kmpc_barrier(%struct.ident_t* %.kmpc_loc.addr, i32 %56), !dbg !117
  ret void, !dbg !118
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

declare dso_local void @__kmpc_end_single(%struct.ident_t*, i32)

declare dso_local i32 @__kmpc_single(%struct.ident_t*, i32)

declare dso_local void @__kmpc_barrier(%struct.ident_t*, i32)

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %len, i64 %vla, i32* dereferenceable(4) %a, i32* dereferenceable(4) %b, i32* dereferenceable(4) %error) #4 !dbg !119 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %vla.addr = alloca i64, align 8
  %a.addr = alloca i32*, align 8
  %b.addr = alloca i32*, align 8
  %error.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !85
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !121, metadata !DIExpression()), !dbg !128
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !85
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !122, metadata !DIExpression()), !dbg !128
  store i32* %len, i32** %len.addr, align 8, !tbaa !85
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !123, metadata !DIExpression()), !dbg !128
  store i64 %vla, i64* %vla.addr, align 8, !tbaa !88
  call void @llvm.dbg.declare(metadata i64* %vla.addr, metadata !124, metadata !DIExpression()), !dbg !128
  store i32* %a, i32** %a.addr, align 8, !tbaa !85
  call void @llvm.dbg.declare(metadata i32** %a.addr, metadata !125, metadata !DIExpression()), !dbg !128
  store i32* %b, i32** %b.addr, align 8, !tbaa !85
  call void @llvm.dbg.declare(metadata i32** %b.addr, metadata !126, metadata !DIExpression()), !dbg !128
  store i32* %error, i32** %error.addr, align 8, !tbaa !85
  call void @llvm.dbg.declare(metadata i32** %error.addr, metadata !127, metadata !DIExpression()), !dbg !128
  %0 = load i32*, i32** %len.addr, align 8, !dbg !129, !tbaa !85
  %1 = load i64, i64* %vla.addr, align 8, !dbg !129, !tbaa !88
  %2 = load i32*, i32** %a.addr, align 8, !dbg !129, !tbaa !85
  %3 = load i32*, i32** %b.addr, align 8, !dbg !129, !tbaa !85
  %4 = load i32*, i32** %error.addr, align 8, !dbg !129, !tbaa !85
  %5 = load i32*, i32** %.global_tid..addr, align 8, !dbg !129, !tbaa !85
  %6 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !129, !tbaa !85
  %7 = load i32*, i32** %len.addr, align 8, !dbg !129, !tbaa !85
  %8 = load i32*, i32** %a.addr, align 8, !dbg !129, !tbaa !85
  %9 = load i32*, i32** %b.addr, align 8, !dbg !129, !tbaa !85
  %10 = load i32*, i32** %error.addr, align 8, !dbg !129, !tbaa !85
  call void @.omp_outlined._debug__(i32* %5, i32* %6, i32* %7, i64 %1, i32* %8, i32* %9, i32* %10) #3, !dbg !129
  ret void, !dbg !129
}

declare !callback !130 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

declare dso_local i32 @printf(i8*, ...) #5

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }
attributes #4 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "integration/dataracebench/DRB013-nowait-orig-yes.c", directory: "/home/brad/Code/OpenRace/tests/data")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.1 "}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 59, type: !8, scopeLine: 60, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !11)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !{!12, !13, !14, !15, !17, !21}
!12 = !DILocalVariable(name: "i", scope: !7, file: !1, line: 61, type: !10)
!13 = !DILocalVariable(name: "error", scope: !7, file: !1, line: 61, type: !10)
!14 = !DILocalVariable(name: "len", scope: !7, file: !1, line: 62, type: !10)
!15 = !DILocalVariable(name: "__vla_expr0", scope: !7, type: !16, flags: DIFlagArtificial)
!16 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!17 = !DILocalVariable(name: "a", scope: !7, file: !1, line: 63, type: !18)
!18 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, elements: !19)
!19 = !{!20}
!20 = !DISubrange(count: !15)
!21 = !DILocalVariable(name: "b", scope: !7, file: !1, line: 63, type: !10)
!22 = !DILocation(line: 61, column: 3, scope: !7)
!23 = !DILocation(line: 61, column: 7, scope: !7)
!24 = !DILocation(line: 61, column: 9, scope: !7)
!25 = !DILocation(line: 62, column: 3, scope: !7)
!26 = !DILocation(line: 62, column: 7, scope: !7)
!27 = !{!28, !28, i64 0}
!28 = !{!"int", !29, i64 0}
!29 = !{!"omnipotent char", !30, i64 0}
!30 = !{!"Simple C/C++ TBAA"}
!31 = !DILocation(line: 63, column: 9, scope: !7)
!32 = !DILocation(line: 63, column: 3, scope: !7)
!33 = !DILocation(line: 0, scope: !7)
!34 = !DILocation(line: 63, column: 7, scope: !7)
!35 = !DILocation(line: 63, column: 15, scope: !7)
!36 = !DILocation(line: 65, column: 9, scope: !37)
!37 = distinct !DILexicalBlock(scope: !7, file: !1, line: 65, column: 3)
!38 = !DILocation(line: 65, column: 8, scope: !37)
!39 = !DILocation(line: 65, column: 13, scope: !40)
!40 = distinct !DILexicalBlock(scope: !37, file: !1, line: 65, column: 3)
!41 = !DILocation(line: 65, column: 15, scope: !40)
!42 = !DILocation(line: 65, column: 14, scope: !40)
!43 = !DILocation(line: 65, column: 3, scope: !37)
!44 = !DILocation(line: 66, column: 11, scope: !40)
!45 = !DILocation(line: 66, column: 7, scope: !40)
!46 = !DILocation(line: 66, column: 5, scope: !40)
!47 = !DILocation(line: 66, column: 9, scope: !40)
!48 = !DILocation(line: 65, column: 21, scope: !40)
!49 = !DILocation(line: 65, column: 3, scope: !40)
!50 = distinct !{!50, !43, !51}
!51 = !DILocation(line: 66, column: 11, scope: !37)
!52 = !DILocation(line: 68, column: 1, scope: !7)
!53 = !{!54, !55, i64 16}
!54 = !{!"ident_t", !28, i64 0, !28, i64 4, !28, i64 8, !28, i64 12, !55, i64 16}
!55 = !{!"any pointer", !29, i64 0}
!56 = !DILocation(line: 78, column: 27, scope: !7)
!57 = !DILocation(line: 78, column: 3, scope: !7)
!58 = !DILocation(line: 79, column: 3, scope: !7)
!59 = !DILocation(line: 80, column: 1, scope: !7)
!60 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 69, type: !61, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !68)
!61 = !DISubroutineType(types: !62)
!62 = !{null, !63, !63, !67, !16, !67, !67, !67}
!63 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !64)
!64 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !65)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!67 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !10, size: 64)
!68 = !{!69, !70, !71, !72, !73, !74, !75, !76, !79, !79, !80, !81, !82, !83, !84, !80}
!69 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !60, type: !63, flags: DIFlagArtificial)
!70 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !60, type: !63, flags: DIFlagArtificial)
!71 = !DILocalVariable(name: "len", arg: 3, scope: !60, file: !1, line: 62, type: !67)
!72 = !DILocalVariable(name: "vla", arg: 4, scope: !60, type: !16, flags: DIFlagArtificial)
!73 = !DILocalVariable(name: "a", arg: 5, scope: !60, file: !1, line: 63, type: !67)
!74 = !DILocalVariable(name: "b", arg: 6, scope: !60, file: !1, line: 63, type: !67)
!75 = !DILocalVariable(name: "error", arg: 7, scope: !60, file: !1, line: 61, type: !67)
!76 = !DILocalVariable(name: ".omp.iv", scope: !77, type: !10, flags: DIFlagArtificial)
!77 = distinct !DILexicalBlock(scope: !78, file: !1, line: 70, column: 1)
!78 = distinct !DILexicalBlock(scope: !60, file: !1, line: 69, column: 3)
!79 = !DILocalVariable(name: ".capture_expr.", scope: !77, type: !10, flags: DIFlagArtificial)
!80 = !DILocalVariable(name: "i", scope: !77, type: !10, flags: DIFlagArtificial)
!81 = !DILocalVariable(name: ".omp.lb", scope: !77, type: !10, flags: DIFlagArtificial)
!82 = !DILocalVariable(name: ".omp.ub", scope: !77, type: !10, flags: DIFlagArtificial)
!83 = !DILocalVariable(name: ".omp.stride", scope: !77, type: !10, flags: DIFlagArtificial)
!84 = !DILocalVariable(name: ".omp.is_last", scope: !77, type: !10, flags: DIFlagArtificial)
!85 = !{!55, !55, i64 0}
!86 = !DILocation(line: 0, scope: !60)
!87 = !DILocation(line: 62, column: 7, scope: !60)
!88 = !{!89, !89, i64 0}
!89 = !{!"long", !29, i64 0}
!90 = !DILocation(line: 63, column: 7, scope: !60)
!91 = !DILocation(line: 63, column: 15, scope: !60)
!92 = !DILocation(line: 61, column: 9, scope: !60)
!93 = !DILocation(line: 69, column: 3, scope: !60)
!94 = !DILocation(line: 70, column: 1, scope: !78)
!95 = !DILocation(line: 0, scope: !77)
!96 = !DILocation(line: 71, column: 20, scope: !77)
!97 = !DILocation(line: 71, column: 5, scope: !77)
!98 = !DILocation(line: 71, column: 25, scope: !77)
!99 = !DILocation(line: 71, column: 9, scope: !77)
!100 = !DILocation(line: 72, column: 14, scope: !77)
!101 = !DILocation(line: 72, column: 20, scope: !77)
!102 = !DILocation(line: 72, column: 18, scope: !77)
!103 = !DILocation(line: 72, column: 22, scope: !77)
!104 = !DILocation(line: 72, column: 16, scope: !77)
!105 = !DILocation(line: 72, column: 9, scope: !77)
!106 = !DILocation(line: 72, column: 7, scope: !77)
!107 = !DILocation(line: 72, column: 12, scope: !77)
!108 = !DILocation(line: 70, column: 1, scope: !77)
!109 = distinct !{!109, !108, !110}
!110 = !DILocation(line: 70, column: 23, scope: !77)
!111 = !DILocation(line: 74, column: 1, scope: !78)
!112 = !DILocation(line: 75, column: 13, scope: !113)
!113 = distinct !DILexicalBlock(scope: !78, file: !1, line: 74, column: 1)
!114 = !DILocation(line: 75, column: 18, scope: !113)
!115 = !DILocation(line: 75, column: 11, scope: !113)
!116 = !DILocation(line: 75, column: 5, scope: !113)
!117 = !DILocation(line: 74, column: 19, scope: !113)
!118 = !DILocation(line: 76, column: 3, scope: !60)
!119 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 69, type: !61, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !120)
!120 = !{!121, !122, !123, !124, !125, !126, !127}
!121 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !119, type: !63, flags: DIFlagArtificial)
!122 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !119, type: !63, flags: DIFlagArtificial)
!123 = !DILocalVariable(name: "len", arg: 3, scope: !119, type: !67, flags: DIFlagArtificial)
!124 = !DILocalVariable(name: "vla", arg: 4, scope: !119, type: !16, flags: DIFlagArtificial)
!125 = !DILocalVariable(name: "a", arg: 5, scope: !119, type: !67, flags: DIFlagArtificial)
!126 = !DILocalVariable(name: "b", arg: 6, scope: !119, type: !67, flags: DIFlagArtificial)
!127 = !DILocalVariable(name: "error", arg: 7, scope: !119, type: !67, flags: DIFlagArtificial)
!128 = !DILocation(line: 0, scope: !119)
!129 = !DILocation(line: 69, column: 3, scope: !119)
!130 = !{!131}
!131 = !{i64 2, i64 -1, i64 -1, i1 true}
