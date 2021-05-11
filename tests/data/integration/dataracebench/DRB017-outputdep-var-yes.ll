; ModuleID = 'integration/dataracebench/DRB017-outputdep-var-yes.c'
source_filename = "integration/dataracebench/DRB017-outputdep-var-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [66 x i8] c";integration/dataracebench/DRB017-outputdep-var-yes.c;main;68;1;;\00", align 1
@2 = private unnamed_addr constant [67 x i8] c";integration/dataracebench/DRB017-outputdep-var-yes.c;main;68;26;;\00", align 1
@3 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"x=%d, a[0]=%d\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !dbg !13 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %len = alloca i32, align 4
  %saved_stack = alloca i8*, align 8
  %__vla_expr0 = alloca i64, align 8
  %i = alloca i32, align 4
  %x = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4, !tbaa !28
  call void @llvm.dbg.declare(metadata i32* %argc.addr, metadata !17, metadata !DIExpression()), !dbg !32
  store i8** %argv, i8*** %argv.addr, align 8, !tbaa !33
  call void @llvm.dbg.declare(metadata i8*** %argv.addr, metadata !18, metadata !DIExpression()), !dbg !35
  %2 = bitcast i32* %len to i8*, !dbg !36
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #4, !dbg !36
  call void @llvm.dbg.declare(metadata i32* %len, metadata !19, metadata !DIExpression()), !dbg !37
  store i32 100, i32* %len, align 4, !dbg !37, !tbaa !28
  %3 = load i32, i32* %argc.addr, align 4, !dbg !38, !tbaa !28
  %cmp = icmp sgt i32 %3, 1, !dbg !40
  br i1 %cmp, label %if.then, label %if.end, !dbg !41

if.then:                                          ; preds = %entry
  %4 = load i8**, i8*** %argv.addr, align 8, !dbg !42, !tbaa !33
  %arrayidx = getelementptr inbounds i8*, i8** %4, i64 1, !dbg !42
  %5 = load i8*, i8** %arrayidx, align 8, !dbg !42, !tbaa !33
  %call = call i32 @atoi(i8* %5) #8, !dbg !43
  store i32 %call, i32* %len, align 4, !dbg !44, !tbaa !28
  br label %if.end, !dbg !45

if.end:                                           ; preds = %if.then, %entry
  %6 = load i32, i32* %len, align 4, !dbg !46, !tbaa !28
  %7 = zext i32 %6 to i64, !dbg !47
  %8 = call i8* @llvm.stacksave(), !dbg !47
  store i8* %8, i8** %saved_stack, align 8, !dbg !47
  %vla = alloca i32, i64 %7, align 16, !dbg !47
  store i64 %7, i64* %__vla_expr0, align 8, !dbg !47
  call void @llvm.dbg.declare(metadata i64* %__vla_expr0, metadata !20, metadata !DIExpression()), !dbg !48
  call void @llvm.dbg.declare(metadata i32* %vla, metadata !22, metadata !DIExpression()), !dbg !49
  %9 = bitcast i32* %i to i8*, !dbg !50
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #4, !dbg !50
  call void @llvm.dbg.declare(metadata i32* %i, metadata !26, metadata !DIExpression()), !dbg !51
  %10 = bitcast i32* %x to i8*, !dbg !50
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #4, !dbg !50
  call void @llvm.dbg.declare(metadata i32* %x, metadata !27, metadata !DIExpression()), !dbg !52
  store i32 10, i32* %x, align 4, !dbg !52, !tbaa !28
  %11 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !53
  store i8* getelementptr inbounds ([66 x i8], [66 x i8]* @1, i32 0, i32 0), i8** %11, align 8, !dbg !53, !tbaa !54
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 4, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i64, i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %len, i64 %7, i32* %vla, i32* %x), !dbg !53
  %12 = load i32, i32* %x, align 4, !dbg !56, !tbaa !28
  %arrayidx1 = getelementptr inbounds i32, i32* %vla, i64 0, !dbg !57
  %13 = load i32, i32* %arrayidx1, align 16, !dbg !57, !tbaa !28
  %call2 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %12, i32 %13), !dbg !58
  store i32 0, i32* %retval, align 4, !dbg !59
  %14 = bitcast i32* %x to i8*, !dbg !60
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %14) #4, !dbg !60
  %15 = bitcast i32* %i to i8*, !dbg !60
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %15) #4, !dbg !60
  %16 = load i8*, i8** %saved_stack, align 8, !dbg !60
  call void @llvm.stackrestore(i8* %16), !dbg !60
  %17 = bitcast i32* %len to i8*, !dbg !60
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %17) #4, !dbg !60
  %18 = load i32, i32* %retval, align 4, !dbg !60
  ret i32 %18, !dbg !60
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: inlinehint nounwind readonly uwtable
define available_externally dso_local i32 @atoi(i8* nonnull %__nptr) #3 !dbg !61 {
entry:
  %__nptr.addr = alloca i8*, align 8
  store i8* %__nptr, i8** %__nptr.addr, align 8, !tbaa !33
  call void @llvm.dbg.declare(metadata i8** %__nptr.addr, metadata !68, metadata !DIExpression()), !dbg !69
  %0 = load i8*, i8** %__nptr.addr, align 8, !dbg !70, !tbaa !33
  %call = call i64 @strtol(i8* %0, i8** null, i32 10) #4, !dbg !71
  %conv = trunc i64 %call to i32, !dbg !72
  ret i32 %conv, !dbg !73
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #4

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %len, i64 %vla, i32* dereferenceable(4) %a, i32* dereferenceable(4) %x) #5 !dbg !74 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %vla.addr = alloca i64, align 8
  %a.addr = alloca i32*, align 8
  %x.addr = alloca i32*, align 8
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
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !33
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !83, metadata !DIExpression()), !dbg !96
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !33
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !84, metadata !DIExpression()), !dbg !96
  store i32* %len, i32** %len.addr, align 8, !tbaa !33
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !85, metadata !DIExpression()), !dbg !97
  store i64 %vla, i64* %vla.addr, align 8, !tbaa !98
  call void @llvm.dbg.declare(metadata i64* %vla.addr, metadata !86, metadata !DIExpression()), !dbg !96
  store i32* %a, i32** %a.addr, align 8, !tbaa !33
  call void @llvm.dbg.declare(metadata i32** %a.addr, metadata !87, metadata !DIExpression()), !dbg !100
  store i32* %x, i32** %x.addr, align 8, !tbaa !33
  call void @llvm.dbg.declare(metadata i32** %x.addr, metadata !88, metadata !DIExpression()), !dbg !101
  %2 = load i32*, i32** %len.addr, align 8, !dbg !102, !tbaa !33
  %3 = load i64, i64* %vla.addr, align 8, !dbg !102, !tbaa !98
  %4 = load i32*, i32** %a.addr, align 8, !dbg !102, !tbaa !33
  %5 = load i32*, i32** %x.addr, align 8, !dbg !102, !tbaa !33
  %6 = bitcast i32* %.omp.iv to i8*, !dbg !102
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #4, !dbg !102
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !89, metadata !DIExpression()), !dbg !96
  %7 = bitcast i32* %.capture_expr. to i8*, !dbg !102
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #4, !dbg !102
  call void @llvm.dbg.declare(metadata i32* %.capture_expr., metadata !90, metadata !DIExpression()), !dbg !96
  %8 = load i32, i32* %2, align 4, !dbg !103, !tbaa !28
  store i32 %8, i32* %.capture_expr., align 4, !dbg !103, !tbaa !28
  %9 = bitcast i32* %.capture_expr.1 to i8*, !dbg !102
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #4, !dbg !102
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.1, metadata !90, metadata !DIExpression()), !dbg !96
  %10 = load i32, i32* %.capture_expr., align 4, !dbg !103, !tbaa !28
  %sub = sub nsw i32 %10, 0, !dbg !102
  %sub2 = sub nsw i32 %sub, 1, !dbg !102
  %add = add nsw i32 %sub2, 1, !dbg !102
  %div = sdiv i32 %add, 1, !dbg !102
  %sub3 = sub nsw i32 %div, 1, !dbg !102
  store i32 %sub3, i32* %.capture_expr.1, align 4, !dbg !102, !tbaa !28
  %11 = bitcast i32* %i to i8*, !dbg !102
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #4, !dbg !102
  call void @llvm.dbg.declare(metadata i32* %i, metadata !91, metadata !DIExpression()), !dbg !96
  store i32 0, i32* %i, align 4, !dbg !104, !tbaa !28
  %12 = bitcast i32* %i to i8*, !dbg !102
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %12) #4, !dbg !102
  %13 = load i32, i32* %.capture_expr., align 4, !dbg !103, !tbaa !28
  %cmp = icmp slt i32 0, %13, !dbg !102
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end, !dbg !102

omp.precond.then:                                 ; preds = %entry
  %14 = bitcast i32* %.omp.lb to i8*, !dbg !102
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %14) #4, !dbg !102
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !92, metadata !DIExpression()), !dbg !96
  store i32 0, i32* %.omp.lb, align 4, !dbg !105, !tbaa !28
  %15 = bitcast i32* %.omp.ub to i8*, !dbg !102
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %15) #4, !dbg !102
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !93, metadata !DIExpression()), !dbg !96
  %16 = load i32, i32* %.capture_expr.1, align 4, !dbg !102, !tbaa !28
  store i32 %16, i32* %.omp.ub, align 4, !dbg !105, !tbaa !28
  %17 = bitcast i32* %.omp.stride to i8*, !dbg !102
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %17) #4, !dbg !102
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !94, metadata !DIExpression()), !dbg !96
  store i32 1, i32* %.omp.stride, align 4, !dbg !105, !tbaa !28
  %18 = bitcast i32* %.omp.is_last to i8*, !dbg !102
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %18) #4, !dbg !102
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !95, metadata !DIExpression()), !dbg !96
  store i32 0, i32* %.omp.is_last, align 4, !dbg !105, !tbaa !28
  %19 = bitcast i32* %i4 to i8*, !dbg !102
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %19) #4, !dbg !102
  call void @llvm.dbg.declare(metadata i32* %i4, metadata !91, metadata !DIExpression()), !dbg !96
  %20 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !102
  store i8* getelementptr inbounds ([66 x i8], [66 x i8]* @1, i32 0, i32 0), i8** %20, align 8, !dbg !102, !tbaa !54
  %21 = load i32*, i32** %.global_tid..addr, align 8, !dbg !102
  %22 = load i32, i32* %21, align 4, !dbg !102, !tbaa !28
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %22, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !102
  %23 = load i32, i32* %.omp.ub, align 4, !dbg !105, !tbaa !28
  %24 = load i32, i32* %.capture_expr.1, align 4, !dbg !102, !tbaa !28
  %cmp5 = icmp sgt i32 %23, %24, !dbg !105
  br i1 %cmp5, label %cond.true, label %cond.false, !dbg !105

cond.true:                                        ; preds = %omp.precond.then
  %25 = load i32, i32* %.capture_expr.1, align 4, !dbg !102, !tbaa !28
  br label %cond.end, !dbg !105

cond.false:                                       ; preds = %omp.precond.then
  %26 = load i32, i32* %.omp.ub, align 4, !dbg !105, !tbaa !28
  br label %cond.end, !dbg !105

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %25, %cond.true ], [ %26, %cond.false ], !dbg !105
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !105, !tbaa !28
  %27 = load i32, i32* %.omp.lb, align 4, !dbg !105, !tbaa !28
  store i32 %27, i32* %.omp.iv, align 4, !dbg !105, !tbaa !28
  br label %omp.inner.for.cond, !dbg !102

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %28 = load i32, i32* %.omp.iv, align 4, !dbg !105, !tbaa !28
  %29 = load i32, i32* %.omp.ub, align 4, !dbg !105, !tbaa !28
  %cmp6 = icmp sle i32 %28, %29, !dbg !102
  br i1 %cmp6, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !102

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !102

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %30 = load i32, i32* %.omp.iv, align 4, !dbg !105, !tbaa !28
  %mul = mul nsw i32 %30, 1, !dbg !104
  %add7 = add nsw i32 0, %mul, !dbg !104
  store i32 %add7, i32* %i4, align 4, !dbg !104, !tbaa !28
  %31 = load i32, i32* %5, align 4, !dbg !106, !tbaa !28
  %32 = load i32, i32* %i4, align 4, !dbg !108, !tbaa !28
  %idxprom = sext i32 %32 to i64, !dbg !109
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 %idxprom, !dbg !109
  store i32 %31, i32* %arrayidx, align 4, !dbg !110, !tbaa !28
  %33 = load i32, i32* %i4, align 4, !dbg !111, !tbaa !28
  store i32 %33, i32* %5, align 4, !dbg !112, !tbaa !28
  br label %omp.body.continue, !dbg !113

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !114

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %34 = load i32, i32* %.omp.iv, align 4, !dbg !105, !tbaa !28
  %add8 = add nsw i32 %34, 1, !dbg !102
  store i32 %add8, i32* %.omp.iv, align 4, !dbg !102, !tbaa !28
  br label %omp.inner.for.cond, !dbg !114, !llvm.loop !115

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !114

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %35 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !114
  store i8* getelementptr inbounds ([67 x i8], [67 x i8]* @2, i32 0, i32 0), i8** %35, align 8, !dbg !114, !tbaa !54
  %36 = load i32*, i32** %.global_tid..addr, align 8, !dbg !114
  %37 = load i32, i32* %36, align 4, !dbg !114, !tbaa !28
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %37), !dbg !114
  %38 = bitcast i32* %i4 to i8*, !dbg !114
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %38) #4, !dbg !114
  %39 = bitcast i32* %.omp.is_last to i8*, !dbg !114
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %39) #4, !dbg !114
  %40 = bitcast i32* %.omp.stride to i8*, !dbg !114
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %40) #4, !dbg !114
  %41 = bitcast i32* %.omp.ub to i8*, !dbg !114
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %41) #4, !dbg !114
  %42 = bitcast i32* %.omp.lb to i8*, !dbg !114
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %42) #4, !dbg !114
  br label %omp.precond.end, !dbg !114

omp.precond.end:                                  ; preds = %omp.loop.exit, %entry
  %43 = bitcast i32* %.capture_expr.1 to i8*, !dbg !114
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %43) #4, !dbg !114
  %44 = bitcast i32* %.capture_expr. to i8*, !dbg !114
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %44) #4, !dbg !114
  %45 = bitcast i32* %.omp.iv to i8*, !dbg !114
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %45) #4, !dbg !114
  ret void, !dbg !117
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %len, i64 %vla, i32* dereferenceable(4) %a, i32* dereferenceable(4) %x) #5 !dbg !118 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %vla.addr = alloca i64, align 8
  %a.addr = alloca i32*, align 8
  %x.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !33
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !120, metadata !DIExpression()), !dbg !126
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !33
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !121, metadata !DIExpression()), !dbg !126
  store i32* %len, i32** %len.addr, align 8, !tbaa !33
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !122, metadata !DIExpression()), !dbg !126
  store i64 %vla, i64* %vla.addr, align 8, !tbaa !98
  call void @llvm.dbg.declare(metadata i64* %vla.addr, metadata !123, metadata !DIExpression()), !dbg !126
  store i32* %a, i32** %a.addr, align 8, !tbaa !33
  call void @llvm.dbg.declare(metadata i32** %a.addr, metadata !124, metadata !DIExpression()), !dbg !126
  store i32* %x, i32** %x.addr, align 8, !tbaa !33
  call void @llvm.dbg.declare(metadata i32** %x.addr, metadata !125, metadata !DIExpression()), !dbg !126
  %0 = load i32*, i32** %len.addr, align 8, !dbg !127, !tbaa !33
  %1 = load i64, i64* %vla.addr, align 8, !dbg !127, !tbaa !98
  %2 = load i32*, i32** %a.addr, align 8, !dbg !127, !tbaa !33
  %3 = load i32*, i32** %x.addr, align 8, !dbg !127, !tbaa !33
  %4 = load i32*, i32** %.global_tid..addr, align 8, !dbg !127, !tbaa !33
  %5 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !127, !tbaa !33
  %6 = load i32*, i32** %len.addr, align 8, !dbg !127, !tbaa !33
  %7 = load i32*, i32** %a.addr, align 8, !dbg !127, !tbaa !33
  %8 = load i32*, i32** %x.addr, align 8, !dbg !127, !tbaa !33
  call void @.omp_outlined._debug__(i32* %4, i32* %5, i32* %6, i64 %1, i32* %7, i32* %8) #4, !dbg !127
  ret void, !dbg !127
}

declare !callback !128 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

declare dso_local i32 @printf(i8*, ...) #6

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #4

; Function Attrs: nounwind
declare dso_local i64 @strtol(i8*, i8**, i32) #7

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { inlinehint nounwind readonly uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { nounwind readonly }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!9, !10, !11}
!llvm.ident = !{!12}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "integration/dataracebench/DRB017-outputdep-var-yes.c", directory: "/home/brad/Code/OpenRace/tests/data")
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
!13 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 58, type: !14, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !16)
!14 = !DISubroutineType(types: !15)
!15 = !{!4, !4, !5}
!16 = !{!17, !18, !19, !20, !22, !26, !27}
!17 = !DILocalVariable(name: "argc", arg: 1, scope: !13, file: !1, line: 58, type: !4)
!18 = !DILocalVariable(name: "argv", arg: 2, scope: !13, file: !1, line: 58, type: !5)
!19 = !DILocalVariable(name: "len", scope: !13, file: !1, line: 60, type: !4)
!20 = !DILocalVariable(name: "__vla_expr0", scope: !13, type: !21, flags: DIFlagArtificial)
!21 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!22 = !DILocalVariable(name: "a", scope: !13, file: !1, line: 65, type: !23)
!23 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !24)
!24 = !{!25}
!25 = !DISubrange(count: !20)
!26 = !DILocalVariable(name: "i", scope: !13, file: !1, line: 66, type: !4)
!27 = !DILocalVariable(name: "x", scope: !13, file: !1, line: 66, type: !4)
!28 = !{!29, !29, i64 0}
!29 = !{!"int", !30, i64 0}
!30 = !{!"omnipotent char", !31, i64 0}
!31 = !{!"Simple C/C++ TBAA"}
!32 = !DILocation(line: 58, column: 14, scope: !13)
!33 = !{!34, !34, i64 0}
!34 = !{!"any pointer", !30, i64 0}
!35 = !DILocation(line: 58, column: 26, scope: !13)
!36 = !DILocation(line: 60, column: 3, scope: !13)
!37 = !DILocation(line: 60, column: 7, scope: !13)
!38 = !DILocation(line: 62, column: 7, scope: !39)
!39 = distinct !DILexicalBlock(scope: !13, file: !1, line: 62, column: 7)
!40 = !DILocation(line: 62, column: 11, scope: !39)
!41 = !DILocation(line: 62, column: 7, scope: !13)
!42 = !DILocation(line: 63, column: 16, scope: !39)
!43 = !DILocation(line: 63, column: 11, scope: !39)
!44 = !DILocation(line: 63, column: 9, scope: !39)
!45 = !DILocation(line: 63, column: 5, scope: !39)
!46 = !DILocation(line: 65, column: 9, scope: !13)
!47 = !DILocation(line: 65, column: 3, scope: !13)
!48 = !DILocation(line: 0, scope: !13)
!49 = !DILocation(line: 65, column: 7, scope: !13)
!50 = !DILocation(line: 66, column: 3, scope: !13)
!51 = !DILocation(line: 66, column: 7, scope: !13)
!52 = !DILocation(line: 66, column: 9, scope: !13)
!53 = !DILocation(line: 68, column: 1, scope: !13)
!54 = !{!55, !34, i64 16}
!55 = !{!"ident_t", !29, i64 0, !29, i64 4, !29, i64 8, !29, i64 12, !34, i64 16}
!56 = !DILocation(line: 74, column: 28, scope: !13)
!57 = !DILocation(line: 74, column: 30, scope: !13)
!58 = !DILocation(line: 74, column: 3, scope: !13)
!59 = !DILocation(line: 75, column: 3, scope: !13)
!60 = !DILocation(line: 76, column: 1, scope: !13)
!61 = distinct !DISubprogram(name: "atoi", scope: !62, file: !62, line: 361, type: !63, scopeLine: 362, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !67)
!62 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!63 = !DISubroutineType(types: !64)
!64 = !{!4, !65}
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!67 = !{!68}
!68 = !DILocalVariable(name: "__nptr", arg: 1, scope: !61, file: !62, line: 361, type: !65)
!69 = !DILocation(line: 361, column: 1, scope: !61)
!70 = !DILocation(line: 363, column: 24, scope: !61)
!71 = !DILocation(line: 363, column: 16, scope: !61)
!72 = !DILocation(line: 363, column: 10, scope: !61)
!73 = !DILocation(line: 363, column: 3, scope: !61)
!74 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 69, type: !75, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !82)
!75 = !DISubroutineType(types: !76)
!76 = !{null, !77, !77, !81, !21, !81, !81}
!77 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !78)
!78 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !79)
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!81 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !4, size: 64)
!82 = !{!83, !84, !85, !86, !87, !88, !89, !90, !90, !91, !92, !93, !94, !95, !91}
!83 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !74, type: !77, flags: DIFlagArtificial)
!84 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !74, type: !77, flags: DIFlagArtificial)
!85 = !DILocalVariable(name: "len", arg: 3, scope: !74, file: !1, line: 60, type: !81)
!86 = !DILocalVariable(name: "vla", arg: 4, scope: !74, type: !21, flags: DIFlagArtificial)
!87 = !DILocalVariable(name: "a", arg: 5, scope: !74, file: !1, line: 65, type: !81)
!88 = !DILocalVariable(name: "x", arg: 6, scope: !74, file: !1, line: 66, type: !81)
!89 = !DILocalVariable(name: ".omp.iv", scope: !74, type: !4, flags: DIFlagArtificial)
!90 = !DILocalVariable(name: ".capture_expr.", scope: !74, type: !4, flags: DIFlagArtificial)
!91 = !DILocalVariable(name: "i", scope: !74, type: !4, flags: DIFlagArtificial)
!92 = !DILocalVariable(name: ".omp.lb", scope: !74, type: !4, flags: DIFlagArtificial)
!93 = !DILocalVariable(name: ".omp.ub", scope: !74, type: !4, flags: DIFlagArtificial)
!94 = !DILocalVariable(name: ".omp.stride", scope: !74, type: !4, flags: DIFlagArtificial)
!95 = !DILocalVariable(name: ".omp.is_last", scope: !74, type: !4, flags: DIFlagArtificial)
!96 = !DILocation(line: 0, scope: !74)
!97 = !DILocation(line: 60, column: 7, scope: !74)
!98 = !{!99, !99, i64 0}
!99 = !{!"long", !30, i64 0}
!100 = !DILocation(line: 65, column: 7, scope: !74)
!101 = !DILocation(line: 66, column: 9, scope: !74)
!102 = !DILocation(line: 69, column: 3, scope: !74)
!103 = !DILocation(line: 69, column: 14, scope: !74)
!104 = !DILocation(line: 69, column: 18, scope: !74)
!105 = !DILocation(line: 69, column: 8, scope: !74)
!106 = !DILocation(line: 71, column: 12, scope: !107)
!107 = distinct !DILexicalBlock(scope: !74, file: !1, line: 70, column: 3)
!108 = !DILocation(line: 71, column: 7, scope: !107)
!109 = !DILocation(line: 71, column: 5, scope: !107)
!110 = !DILocation(line: 71, column: 10, scope: !107)
!111 = !DILocation(line: 72, column: 7, scope: !107)
!112 = !DILocation(line: 72, column: 6, scope: !107)
!113 = !DILocation(line: 73, column: 3, scope: !107)
!114 = !DILocation(line: 68, column: 1, scope: !74)
!115 = distinct !{!115, !114, !116}
!116 = !DILocation(line: 68, column: 26, scope: !74)
!117 = !DILocation(line: 73, column: 3, scope: !74)
!118 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 69, type: !75, scopeLine: 69, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!119 = !{!120, !121, !122, !123, !124, !125}
!120 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !118, type: !77, flags: DIFlagArtificial)
!121 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !118, type: !77, flags: DIFlagArtificial)
!122 = !DILocalVariable(name: "len", arg: 3, scope: !118, type: !81, flags: DIFlagArtificial)
!123 = !DILocalVariable(name: "vla", arg: 4, scope: !118, type: !21, flags: DIFlagArtificial)
!124 = !DILocalVariable(name: "a", arg: 5, scope: !118, type: !81, flags: DIFlagArtificial)
!125 = !DILocalVariable(name: "x", arg: 6, scope: !118, type: !81, flags: DIFlagArtificial)
!126 = !DILocation(line: 0, scope: !118)
!127 = !DILocation(line: 69, column: 3, scope: !118)
!128 = !{!129}
!129 = !{i64 2, i64 -1, i64 -1, i1 true}
