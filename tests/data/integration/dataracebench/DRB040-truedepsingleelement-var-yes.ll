; ModuleID = 'integration/dataracebench/DRB040-truedepsingleelement-var-yes.c'
source_filename = "integration/dataracebench/DRB040-truedepsingleelement-var-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [77 x i8] c";integration/dataracebench/DRB040-truedepsingleelement-var-yes.c;main;61;1;;\00", align 1
@2 = private unnamed_addr constant [78 x i8] c";integration/dataracebench/DRB040-truedepsingleelement-var-yes.c;main;61;25;;\00", align 1
@3 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !dbg !13 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %len = alloca i32, align 4
  %i = alloca i32, align 4
  %saved_stack = alloca i8*, align 8
  %__vla_expr0 = alloca i64, align 8
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4, !tbaa !27
  call void @llvm.dbg.declare(metadata i32* %argc.addr, metadata !17, metadata !DIExpression()), !dbg !31
  store i8** %argv, i8*** %argv.addr, align 8, !tbaa !32
  call void @llvm.dbg.declare(metadata i8*** %argv.addr, metadata !18, metadata !DIExpression()), !dbg !34
  %2 = bitcast i32* %len to i8*, !dbg !35
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #4, !dbg !35
  call void @llvm.dbg.declare(metadata i32* %len, metadata !19, metadata !DIExpression()), !dbg !36
  store i32 1000, i32* %len, align 4, !dbg !36, !tbaa !27
  %3 = bitcast i32* %i to i8*, !dbg !37
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #4, !dbg !37
  call void @llvm.dbg.declare(metadata i32* %i, metadata !20, metadata !DIExpression()), !dbg !38
  %4 = load i32, i32* %argc.addr, align 4, !dbg !39, !tbaa !27
  %cmp = icmp sgt i32 %4, 1, !dbg !41
  br i1 %cmp, label %if.then, label %if.end, !dbg !42

if.then:                                          ; preds = %entry
  %5 = load i8**, i8*** %argv.addr, align 8, !dbg !43, !tbaa !32
  %arrayidx = getelementptr inbounds i8*, i8** %5, i64 1, !dbg !43
  %6 = load i8*, i8** %arrayidx, align 8, !dbg !43, !tbaa !32
  %call = call i32 @atoi(i8* %6) #7, !dbg !44
  store i32 %call, i32* %len, align 4, !dbg !45, !tbaa !27
  br label %if.end, !dbg !46

if.end:                                           ; preds = %if.then, %entry
  %7 = load i32, i32* %len, align 4, !dbg !47, !tbaa !27
  %8 = zext i32 %7 to i64, !dbg !48
  %9 = call i8* @llvm.stacksave(), !dbg !48
  store i8* %9, i8** %saved_stack, align 8, !dbg !48
  %vla = alloca i32, i64 %8, align 16, !dbg !48
  store i64 %8, i64* %__vla_expr0, align 8, !dbg !48
  call void @llvm.dbg.declare(metadata i64* %__vla_expr0, metadata !21, metadata !DIExpression()), !dbg !49
  call void @llvm.dbg.declare(metadata i32* %vla, metadata !23, metadata !DIExpression()), !dbg !50
  %arrayidx1 = getelementptr inbounds i32, i32* %vla, i64 0, !dbg !51
  store i32 2, i32* %arrayidx1, align 16, !dbg !52, !tbaa !27
  %10 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !53
  store i8* getelementptr inbounds ([77 x i8], [77 x i8]* @1, i32 0, i32 0), i8** %10, align 8, !dbg !53, !tbaa !54
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i64, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %len, i64 %8, i32* %vla), !dbg !53
  store i32 0, i32* %retval, align 4, !dbg !56
  %11 = load i8*, i8** %saved_stack, align 8, !dbg !57
  call void @llvm.stackrestore(i8* %11), !dbg !57
  %12 = bitcast i32* %i to i8*, !dbg !57
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %12) #4, !dbg !57
  %13 = bitcast i32* %len to i8*, !dbg !57
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %13) #4, !dbg !57
  %14 = load i32, i32* %retval, align 4, !dbg !57
  ret i32 %14, !dbg !57
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: inlinehint nounwind readonly uwtable
define available_externally dso_local i32 @atoi(i8* nonnull %__nptr) #3 !dbg !58 {
entry:
  %__nptr.addr = alloca i8*, align 8
  store i8* %__nptr, i8** %__nptr.addr, align 8, !tbaa !32
  call void @llvm.dbg.declare(metadata i8** %__nptr.addr, metadata !65, metadata !DIExpression()), !dbg !66
  %0 = load i8*, i8** %__nptr.addr, align 8, !dbg !67, !tbaa !32
  %call = call i64 @strtol(i8* %0, i8** null, i32 10) #4, !dbg !68
  %conv = trunc i64 %call to i32, !dbg !69
  ret i32 %conv, !dbg !70
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #4

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %len, i64 %vla, i32* dereferenceable(4) %a) #5 !dbg !71 {
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
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !32
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !80, metadata !DIExpression()), !dbg !92
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !32
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !81, metadata !DIExpression()), !dbg !92
  store i32* %len, i32** %len.addr, align 8, !tbaa !32
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !82, metadata !DIExpression()), !dbg !93
  store i64 %vla, i64* %vla.addr, align 8, !tbaa !94
  call void @llvm.dbg.declare(metadata i64* %vla.addr, metadata !83, metadata !DIExpression()), !dbg !92
  store i32* %a, i32** %a.addr, align 8, !tbaa !32
  call void @llvm.dbg.declare(metadata i32** %a.addr, metadata !84, metadata !DIExpression()), !dbg !96
  %2 = load i32*, i32** %len.addr, align 8, !dbg !97, !tbaa !32
  %3 = load i64, i64* %vla.addr, align 8, !dbg !97, !tbaa !94
  %4 = load i32*, i32** %a.addr, align 8, !dbg !97, !tbaa !32
  %5 = bitcast i32* %.omp.iv to i8*, !dbg !97
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #4, !dbg !97
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !85, metadata !DIExpression()), !dbg !92
  %6 = bitcast i32* %.capture_expr. to i8*, !dbg !97
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #4, !dbg !97
  call void @llvm.dbg.declare(metadata i32* %.capture_expr., metadata !86, metadata !DIExpression()), !dbg !92
  %7 = load i32, i32* %2, align 4, !dbg !98, !tbaa !27
  store i32 %7, i32* %.capture_expr., align 4, !dbg !98, !tbaa !27
  %8 = bitcast i32* %.capture_expr.1 to i8*, !dbg !97
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #4, !dbg !97
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.1, metadata !86, metadata !DIExpression()), !dbg !92
  %9 = load i32, i32* %.capture_expr., align 4, !dbg !98, !tbaa !27
  %sub = sub nsw i32 %9, 0, !dbg !97
  %sub2 = sub nsw i32 %sub, 1, !dbg !97
  %add = add nsw i32 %sub2, 1, !dbg !97
  %div = sdiv i32 %add, 1, !dbg !97
  %sub3 = sub nsw i32 %div, 1, !dbg !97
  store i32 %sub3, i32* %.capture_expr.1, align 4, !dbg !97, !tbaa !27
  %10 = bitcast i32* %i to i8*, !dbg !97
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #4, !dbg !97
  call void @llvm.dbg.declare(metadata i32* %i, metadata !87, metadata !DIExpression()), !dbg !92
  store i32 0, i32* %i, align 4, !dbg !99, !tbaa !27
  %11 = bitcast i32* %i to i8*, !dbg !97
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %11) #4, !dbg !97
  %12 = load i32, i32* %.capture_expr., align 4, !dbg !98, !tbaa !27
  %cmp = icmp slt i32 0, %12, !dbg !97
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end, !dbg !97

omp.precond.then:                                 ; preds = %entry
  %13 = bitcast i32* %.omp.lb to i8*, !dbg !97
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %13) #4, !dbg !97
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !88, metadata !DIExpression()), !dbg !92
  store i32 0, i32* %.omp.lb, align 4, !dbg !100, !tbaa !27
  %14 = bitcast i32* %.omp.ub to i8*, !dbg !97
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %14) #4, !dbg !97
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !89, metadata !DIExpression()), !dbg !92
  %15 = load i32, i32* %.capture_expr.1, align 4, !dbg !97, !tbaa !27
  store i32 %15, i32* %.omp.ub, align 4, !dbg !100, !tbaa !27
  %16 = bitcast i32* %.omp.stride to i8*, !dbg !97
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %16) #4, !dbg !97
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !90, metadata !DIExpression()), !dbg !92
  store i32 1, i32* %.omp.stride, align 4, !dbg !100, !tbaa !27
  %17 = bitcast i32* %.omp.is_last to i8*, !dbg !97
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %17) #4, !dbg !97
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !91, metadata !DIExpression()), !dbg !92
  store i32 0, i32* %.omp.is_last, align 4, !dbg !100, !tbaa !27
  %18 = bitcast i32* %i4 to i8*, !dbg !97
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %18) #4, !dbg !97
  call void @llvm.dbg.declare(metadata i32* %i4, metadata !87, metadata !DIExpression()), !dbg !92
  %19 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !97
  store i8* getelementptr inbounds ([77 x i8], [77 x i8]* @1, i32 0, i32 0), i8** %19, align 8, !dbg !97, !tbaa !54
  %20 = load i32*, i32** %.global_tid..addr, align 8, !dbg !97
  %21 = load i32, i32* %20, align 4, !dbg !97, !tbaa !27
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %21, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !97
  %22 = load i32, i32* %.omp.ub, align 4, !dbg !100, !tbaa !27
  %23 = load i32, i32* %.capture_expr.1, align 4, !dbg !97, !tbaa !27
  %cmp5 = icmp sgt i32 %22, %23, !dbg !100
  br i1 %cmp5, label %cond.true, label %cond.false, !dbg !100

cond.true:                                        ; preds = %omp.precond.then
  %24 = load i32, i32* %.capture_expr.1, align 4, !dbg !97, !tbaa !27
  br label %cond.end, !dbg !100

cond.false:                                       ; preds = %omp.precond.then
  %25 = load i32, i32* %.omp.ub, align 4, !dbg !100, !tbaa !27
  br label %cond.end, !dbg !100

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %24, %cond.true ], [ %25, %cond.false ], !dbg !100
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !100, !tbaa !27
  %26 = load i32, i32* %.omp.lb, align 4, !dbg !100, !tbaa !27
  store i32 %26, i32* %.omp.iv, align 4, !dbg !100, !tbaa !27
  br label %omp.inner.for.cond, !dbg !97

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %27 = load i32, i32* %.omp.iv, align 4, !dbg !100, !tbaa !27
  %28 = load i32, i32* %.omp.ub, align 4, !dbg !100, !tbaa !27
  %cmp6 = icmp sle i32 %27, %28, !dbg !97
  br i1 %cmp6, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !97

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !97

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %29 = load i32, i32* %.omp.iv, align 4, !dbg !100, !tbaa !27
  %mul = mul nsw i32 %29, 1, !dbg !99
  %add7 = add nsw i32 0, %mul, !dbg !99
  store i32 %add7, i32* %i4, align 4, !dbg !99, !tbaa !27
  %30 = load i32, i32* %i4, align 4, !dbg !101, !tbaa !27
  %idxprom = sext i32 %30 to i64, !dbg !102
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 %idxprom, !dbg !102
  %31 = load i32, i32* %arrayidx, align 4, !dbg !102, !tbaa !27
  %arrayidx8 = getelementptr inbounds i32, i32* %4, i64 0, !dbg !103
  %32 = load i32, i32* %arrayidx8, align 16, !dbg !103, !tbaa !27
  %add9 = add nsw i32 %31, %32, !dbg !104
  %33 = load i32, i32* %i4, align 4, !dbg !105, !tbaa !27
  %idxprom10 = sext i32 %33 to i64, !dbg !106
  %arrayidx11 = getelementptr inbounds i32, i32* %4, i64 %idxprom10, !dbg !106
  store i32 %add9, i32* %arrayidx11, align 4, !dbg !107, !tbaa !27
  br label %omp.body.continue, !dbg !106

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !108

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %34 = load i32, i32* %.omp.iv, align 4, !dbg !100, !tbaa !27
  %add12 = add nsw i32 %34, 1, !dbg !97
  store i32 %add12, i32* %.omp.iv, align 4, !dbg !97, !tbaa !27
  br label %omp.inner.for.cond, !dbg !108, !llvm.loop !109

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !108

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %35 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !108
  store i8* getelementptr inbounds ([78 x i8], [78 x i8]* @2, i32 0, i32 0), i8** %35, align 8, !dbg !108, !tbaa !54
  %36 = load i32*, i32** %.global_tid..addr, align 8, !dbg !108
  %37 = load i32, i32* %36, align 4, !dbg !108, !tbaa !27
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %37), !dbg !108
  %38 = bitcast i32* %i4 to i8*, !dbg !108
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %38) #4, !dbg !108
  %39 = bitcast i32* %.omp.is_last to i8*, !dbg !108
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %39) #4, !dbg !108
  %40 = bitcast i32* %.omp.stride to i8*, !dbg !108
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %40) #4, !dbg !108
  %41 = bitcast i32* %.omp.ub to i8*, !dbg !108
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %41) #4, !dbg !108
  %42 = bitcast i32* %.omp.lb to i8*, !dbg !108
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %42) #4, !dbg !108
  br label %omp.precond.end, !dbg !108

omp.precond.end:                                  ; preds = %omp.loop.exit, %entry
  %43 = bitcast i32* %.capture_expr.1 to i8*, !dbg !108
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %43) #4, !dbg !108
  %44 = bitcast i32* %.capture_expr. to i8*, !dbg !108
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %44) #4, !dbg !108
  %45 = bitcast i32* %.omp.iv to i8*, !dbg !108
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %45) #4, !dbg !108
  ret void, !dbg !111
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %len, i64 %vla, i32* dereferenceable(4) %a) #5 !dbg !112 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %vla.addr = alloca i64, align 8
  %a.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !32
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !114, metadata !DIExpression()), !dbg !119
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !32
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !115, metadata !DIExpression()), !dbg !119
  store i32* %len, i32** %len.addr, align 8, !tbaa !32
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !116, metadata !DIExpression()), !dbg !119
  store i64 %vla, i64* %vla.addr, align 8, !tbaa !94
  call void @llvm.dbg.declare(metadata i64* %vla.addr, metadata !117, metadata !DIExpression()), !dbg !119
  store i32* %a, i32** %a.addr, align 8, !tbaa !32
  call void @llvm.dbg.declare(metadata i32** %a.addr, metadata !118, metadata !DIExpression()), !dbg !119
  %0 = load i32*, i32** %len.addr, align 8, !dbg !120, !tbaa !32
  %1 = load i64, i64* %vla.addr, align 8, !dbg !120, !tbaa !94
  %2 = load i32*, i32** %a.addr, align 8, !dbg !120, !tbaa !32
  %3 = load i32*, i32** %.global_tid..addr, align 8, !dbg !120, !tbaa !32
  %4 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !120, !tbaa !32
  %5 = load i32*, i32** %len.addr, align 8, !dbg !120, !tbaa !32
  %6 = load i32*, i32** %a.addr, align 8, !dbg !120, !tbaa !32
  call void @.omp_outlined._debug__(i32* %3, i32* %4, i32* %5, i64 %1, i32* %6) #4, !dbg !120
  ret void, !dbg !120
}

declare !callback !121 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #4

; Function Attrs: nounwind
declare dso_local i64 @strtol(i8*, i8**, i32) #6

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { inlinehint nounwind readonly uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!9, !10, !11}
!llvm.ident = !{!12}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "integration/dataracebench/DRB040-truedepsingleelement-var-yes.c", directory: "/home/brad/Code/OpenRace/tests/data")
!2 = !{}
!3 = !{!4, !5, !8}
!4 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !6, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!7 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!9 = !{i32 7, !"Dwarf Version", i32 4}
!10 = !{i32 2, !"Debug Info Version", i32 3}
!11 = !{i32 1, !"wchar_size", i32 4}
!12 = !{!"clang version 10.0.1 "}
!13 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 51, type: !14, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !16)
!14 = !DISubroutineType(types: !15)
!15 = !{!4, !4, !5}
!16 = !{!17, !18, !19, !20, !21, !23}
!17 = !DILocalVariable(name: "argc", arg: 1, scope: !13, file: !1, line: 51, type: !4)
!18 = !DILocalVariable(name: "argv", arg: 2, scope: !13, file: !1, line: 51, type: !5)
!19 = !DILocalVariable(name: "len", scope: !13, file: !1, line: 53, type: !4)
!20 = !DILocalVariable(name: "i", scope: !13, file: !1, line: 54, type: !4)
!21 = !DILocalVariable(name: "__vla_expr0", scope: !13, type: !22, flags: DIFlagArtificial)
!22 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!23 = !DILocalVariable(name: "a", scope: !13, file: !1, line: 58, type: !24)
!24 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !25)
!25 = !{!26}
!26 = !DISubrange(count: !21)
!27 = !{!28, !28, i64 0}
!28 = !{!"int", !29, i64 0}
!29 = !{!"omnipotent char", !30, i64 0}
!30 = !{!"Simple C/C++ TBAA"}
!31 = !DILocation(line: 51, column: 15, scope: !13)
!32 = !{!33, !33, i64 0}
!33 = !{!"any pointer", !29, i64 0}
!34 = !DILocation(line: 51, column: 27, scope: !13)
!35 = !DILocation(line: 53, column: 3, scope: !13)
!36 = !DILocation(line: 53, column: 7, scope: !13)
!37 = !DILocation(line: 54, column: 3, scope: !13)
!38 = !DILocation(line: 54, column: 7, scope: !13)
!39 = !DILocation(line: 56, column: 7, scope: !40)
!40 = distinct !DILexicalBlock(scope: !13, file: !1, line: 56, column: 7)
!41 = !DILocation(line: 56, column: 11, scope: !40)
!42 = !DILocation(line: 56, column: 7, scope: !13)
!43 = !DILocation(line: 57, column: 16, scope: !40)
!44 = !DILocation(line: 57, column: 11, scope: !40)
!45 = !DILocation(line: 57, column: 9, scope: !40)
!46 = !DILocation(line: 57, column: 5, scope: !40)
!47 = !DILocation(line: 58, column: 9, scope: !13)
!48 = !DILocation(line: 58, column: 3, scope: !13)
!49 = !DILocation(line: 0, scope: !13)
!50 = !DILocation(line: 58, column: 7, scope: !13)
!51 = !DILocation(line: 59, column: 3, scope: !13)
!52 = !DILocation(line: 59, column: 8, scope: !13)
!53 = !DILocation(line: 61, column: 1, scope: !13)
!54 = !{!55, !33, i64 16}
!55 = !{!"ident_t", !28, i64 0, !28, i64 4, !28, i64 8, !28, i64 12, !33, i64 16}
!56 = !DILocation(line: 65, column: 3, scope: !13)
!57 = !DILocation(line: 66, column: 1, scope: !13)
!58 = distinct !DISubprogram(name: "atoi", scope: !59, file: !59, line: 361, type: !60, scopeLine: 362, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !64)
!59 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!60 = !DISubroutineType(types: !61)
!61 = !{!4, !62}
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!64 = !{!65}
!65 = !DILocalVariable(name: "__nptr", arg: 1, scope: !58, file: !59, line: 361, type: !62)
!66 = !DILocation(line: 361, column: 1, scope: !58)
!67 = !DILocation(line: 363, column: 24, scope: !58)
!68 = !DILocation(line: 363, column: 16, scope: !58)
!69 = !DILocation(line: 363, column: 10, scope: !58)
!70 = !DILocation(line: 363, column: 3, scope: !58)
!71 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 62, type: !72, scopeLine: 62, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !79)
!72 = !DISubroutineType(types: !73)
!73 = !{null, !74, !74, !78, !22, !78}
!74 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !75)
!75 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !76)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!77 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!78 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !4, size: 64)
!79 = !{!80, !81, !82, !83, !84, !85, !86, !86, !87, !88, !89, !90, !91, !87}
!80 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !71, type: !74, flags: DIFlagArtificial)
!81 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !71, type: !74, flags: DIFlagArtificial)
!82 = !DILocalVariable(name: "len", arg: 3, scope: !71, file: !1, line: 53, type: !78)
!83 = !DILocalVariable(name: "vla", arg: 4, scope: !71, type: !22, flags: DIFlagArtificial)
!84 = !DILocalVariable(name: "a", arg: 5, scope: !71, file: !1, line: 58, type: !78)
!85 = !DILocalVariable(name: ".omp.iv", scope: !71, type: !4, flags: DIFlagArtificial)
!86 = !DILocalVariable(name: ".capture_expr.", scope: !71, type: !4, flags: DIFlagArtificial)
!87 = !DILocalVariable(name: "i", scope: !71, type: !4, flags: DIFlagArtificial)
!88 = !DILocalVariable(name: ".omp.lb", scope: !71, type: !4, flags: DIFlagArtificial)
!89 = !DILocalVariable(name: ".omp.ub", scope: !71, type: !4, flags: DIFlagArtificial)
!90 = !DILocalVariable(name: ".omp.stride", scope: !71, type: !4, flags: DIFlagArtificial)
!91 = !DILocalVariable(name: ".omp.is_last", scope: !71, type: !4, flags: DIFlagArtificial)
!92 = !DILocation(line: 0, scope: !71)
!93 = !DILocation(line: 53, column: 7, scope: !71)
!94 = !{!95, !95, i64 0}
!95 = !{!"long", !29, i64 0}
!96 = !DILocation(line: 58, column: 7, scope: !71)
!97 = !DILocation(line: 62, column: 3, scope: !71)
!98 = !DILocation(line: 62, column: 14, scope: !71)
!99 = !DILocation(line: 62, column: 18, scope: !71)
!100 = !DILocation(line: 62, column: 8, scope: !71)
!101 = !DILocation(line: 63, column: 12, scope: !71)
!102 = !DILocation(line: 63, column: 10, scope: !71)
!103 = !DILocation(line: 63, column: 15, scope: !71)
!104 = !DILocation(line: 63, column: 14, scope: !71)
!105 = !DILocation(line: 63, column: 7, scope: !71)
!106 = !DILocation(line: 63, column: 5, scope: !71)
!107 = !DILocation(line: 63, column: 9, scope: !71)
!108 = !DILocation(line: 61, column: 1, scope: !71)
!109 = distinct !{!109, !108, !110}
!110 = !DILocation(line: 61, column: 25, scope: !71)
!111 = !DILocation(line: 63, column: 18, scope: !71)
!112 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 62, type: !72, scopeLine: 62, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !113)
!113 = !{!114, !115, !116, !117, !118}
!114 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !112, type: !74, flags: DIFlagArtificial)
!115 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !112, type: !74, flags: DIFlagArtificial)
!116 = !DILocalVariable(name: "len", arg: 3, scope: !112, type: !78, flags: DIFlagArtificial)
!117 = !DILocalVariable(name: "vla", arg: 4, scope: !112, type: !22, flags: DIFlagArtificial)
!118 = !DILocalVariable(name: "a", arg: 5, scope: !112, type: !78, flags: DIFlagArtificial)
!119 = !DILocation(line: 0, scope: !112)
!120 = !DILocation(line: 62, column: 3, scope: !112)
!121 = !{!122}
!122 = !{i64 2, i64 -1, i64 -1, i1 true}
