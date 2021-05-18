; ModuleID = 'integration/dataracebench/DRB068-restrictpointer2-orig-no.c'
source_filename = "integration/dataracebench/DRB068-restrictpointer2-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, %struct._IO_codecvt*, %struct._IO_wide_data*, %struct._IO_FILE*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type opaque
%struct._IO_codecvt = type opaque
%struct._IO_wide_data = type opaque

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [72 x i8] c";integration/dataracebench/DRB068-restrictpointer2-orig-no.c;foo;61;1;;\00", align 1
@2 = private unnamed_addr constant [73 x i8] c";integration/dataracebench/DRB068-restrictpointer2-orig-no.c;foo;61;26;;\00", align 1
@3 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@stderr = external dso_local global %struct._IO_FILE*, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"skip the execution due to malloc failures.\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @foo(i32 %n, i32* noalias %a, i32* noalias %b, i32* noalias %c) #0 !dbg !15 {
entry:
  %n.addr = alloca i32, align 4
  %a.addr = alloca i32*, align 8
  %b.addr = alloca i32*, align 8
  %c.addr = alloca i32*, align 8
  %i = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32 %n, i32* %n.addr, align 4, !tbaa !25
  call void @llvm.dbg.declare(metadata i32* %n.addr, metadata !20, metadata !DIExpression()), !dbg !29
  store i32* %a, i32** %a.addr, align 8, !tbaa !30
  call void @llvm.dbg.declare(metadata i32** %a.addr, metadata !21, metadata !DIExpression()), !dbg !32
  store i32* %b, i32** %b.addr, align 8, !tbaa !30
  call void @llvm.dbg.declare(metadata i32** %b.addr, metadata !22, metadata !DIExpression()), !dbg !33
  store i32* %c, i32** %c.addr, align 8, !tbaa !30
  call void @llvm.dbg.declare(metadata i32** %c.addr, metadata !23, metadata !DIExpression()), !dbg !34
  %2 = bitcast i32* %i to i8*, !dbg !35
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #6, !dbg !35
  call void @llvm.dbg.declare(metadata i32* %i, metadata !24, metadata !DIExpression()), !dbg !36
  %3 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !37
  store i8* getelementptr inbounds ([72 x i8], [72 x i8]* @1, i32 0, i32 0), i8** %3, align 8, !dbg !37, !tbaa !38
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 4, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32**, i32**, i32**)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %n.addr, i32** %a.addr, i32** %b.addr, i32** %c.addr), !dbg !37
  %4 = bitcast i32* %i to i8*, !dbg !40
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %4) #6, !dbg !40
  ret void, !dbg !40
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %n, i32** dereferenceable(8) %a, i32** dereferenceable(8) %b, i32** dereferenceable(8) %c) #3 !dbg !41 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %n.addr = alloca i32*, align 8
  %a.addr = alloca i32**, align 8
  %b.addr = alloca i32**, align 8
  %c.addr = alloca i32**, align 8
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
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !30
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !51, metadata !DIExpression()), !dbg !64
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !30
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !52, metadata !DIExpression()), !dbg !64
  store i32* %n, i32** %n.addr, align 8, !tbaa !30
  call void @llvm.dbg.declare(metadata i32** %n.addr, metadata !53, metadata !DIExpression()), !dbg !65
  store i32** %a, i32*** %a.addr, align 8, !tbaa !30
  call void @llvm.dbg.declare(metadata i32*** %a.addr, metadata !54, metadata !DIExpression()), !dbg !66
  store i32** %b, i32*** %b.addr, align 8, !tbaa !30
  call void @llvm.dbg.declare(metadata i32*** %b.addr, metadata !55, metadata !DIExpression()), !dbg !67
  store i32** %c, i32*** %c.addr, align 8, !tbaa !30
  call void @llvm.dbg.declare(metadata i32*** %c.addr, metadata !56, metadata !DIExpression()), !dbg !68
  %2 = load i32*, i32** %n.addr, align 8, !dbg !69, !tbaa !30
  %3 = load i32**, i32*** %a.addr, align 8, !dbg !69, !tbaa !30
  %4 = load i32**, i32*** %b.addr, align 8, !dbg !69, !tbaa !30
  %5 = load i32**, i32*** %c.addr, align 8, !dbg !69, !tbaa !30
  %6 = bitcast i32* %.omp.iv to i8*, !dbg !69
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #6, !dbg !69
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !57, metadata !DIExpression()), !dbg !64
  %7 = bitcast i32* %.capture_expr. to i8*, !dbg !69
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #6, !dbg !69
  call void @llvm.dbg.declare(metadata i32* %.capture_expr., metadata !58, metadata !DIExpression()), !dbg !64
  %8 = load i32, i32* %2, align 4, !dbg !70, !tbaa !25
  store i32 %8, i32* %.capture_expr., align 4, !dbg !70, !tbaa !25
  %9 = bitcast i32* %.capture_expr.1 to i8*, !dbg !69
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #6, !dbg !69
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.1, metadata !58, metadata !DIExpression()), !dbg !64
  %10 = load i32, i32* %.capture_expr., align 4, !dbg !70, !tbaa !25
  %sub = sub nsw i32 %10, 0, !dbg !69
  %sub2 = sub nsw i32 %sub, 1, !dbg !69
  %add = add nsw i32 %sub2, 1, !dbg !69
  %div = sdiv i32 %add, 1, !dbg !69
  %sub3 = sub nsw i32 %div, 1, !dbg !69
  store i32 %sub3, i32* %.capture_expr.1, align 4, !dbg !69, !tbaa !25
  %11 = bitcast i32* %i to i8*, !dbg !69
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #6, !dbg !69
  call void @llvm.dbg.declare(metadata i32* %i, metadata !59, metadata !DIExpression()), !dbg !64
  store i32 0, i32* %i, align 4, !dbg !71, !tbaa !25
  %12 = bitcast i32* %i to i8*, !dbg !69
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %12) #6, !dbg !69
  %13 = load i32, i32* %.capture_expr., align 4, !dbg !70, !tbaa !25
  %cmp = icmp slt i32 0, %13, !dbg !69
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end, !dbg !69

omp.precond.then:                                 ; preds = %entry
  %14 = bitcast i32* %.omp.lb to i8*, !dbg !69
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %14) #6, !dbg !69
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !60, metadata !DIExpression()), !dbg !64
  store i32 0, i32* %.omp.lb, align 4, !dbg !72, !tbaa !25
  %15 = bitcast i32* %.omp.ub to i8*, !dbg !69
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %15) #6, !dbg !69
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !61, metadata !DIExpression()), !dbg !64
  %16 = load i32, i32* %.capture_expr.1, align 4, !dbg !69, !tbaa !25
  store i32 %16, i32* %.omp.ub, align 4, !dbg !72, !tbaa !25
  %17 = bitcast i32* %.omp.stride to i8*, !dbg !69
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %17) #6, !dbg !69
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !62, metadata !DIExpression()), !dbg !64
  store i32 1, i32* %.omp.stride, align 4, !dbg !72, !tbaa !25
  %18 = bitcast i32* %.omp.is_last to i8*, !dbg !69
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %18) #6, !dbg !69
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !63, metadata !DIExpression()), !dbg !64
  store i32 0, i32* %.omp.is_last, align 4, !dbg !72, !tbaa !25
  %19 = bitcast i32* %i4 to i8*, !dbg !69
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %19) #6, !dbg !69
  call void @llvm.dbg.declare(metadata i32* %i4, metadata !59, metadata !DIExpression()), !dbg !64
  %20 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !69
  store i8* getelementptr inbounds ([72 x i8], [72 x i8]* @1, i32 0, i32 0), i8** %20, align 8, !dbg !69, !tbaa !38
  %21 = load i32*, i32** %.global_tid..addr, align 8, !dbg !69
  %22 = load i32, i32* %21, align 4, !dbg !69, !tbaa !25
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %22, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !69
  %23 = load i32, i32* %.omp.ub, align 4, !dbg !72, !tbaa !25
  %24 = load i32, i32* %.capture_expr.1, align 4, !dbg !69, !tbaa !25
  %cmp5 = icmp sgt i32 %23, %24, !dbg !72
  br i1 %cmp5, label %cond.true, label %cond.false, !dbg !72

cond.true:                                        ; preds = %omp.precond.then
  %25 = load i32, i32* %.capture_expr.1, align 4, !dbg !69, !tbaa !25
  br label %cond.end, !dbg !72

cond.false:                                       ; preds = %omp.precond.then
  %26 = load i32, i32* %.omp.ub, align 4, !dbg !72, !tbaa !25
  br label %cond.end, !dbg !72

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %25, %cond.true ], [ %26, %cond.false ], !dbg !72
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !72, !tbaa !25
  %27 = load i32, i32* %.omp.lb, align 4, !dbg !72, !tbaa !25
  store i32 %27, i32* %.omp.iv, align 4, !dbg !72, !tbaa !25
  br label %omp.inner.for.cond, !dbg !69

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %28 = load i32, i32* %.omp.iv, align 4, !dbg !72, !tbaa !25
  %29 = load i32, i32* %.omp.ub, align 4, !dbg !72, !tbaa !25
  %cmp6 = icmp sle i32 %28, %29, !dbg !69
  br i1 %cmp6, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !69

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !69

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %30 = load i32, i32* %.omp.iv, align 4, !dbg !72, !tbaa !25
  %mul = mul nsw i32 %30, 1, !dbg !71
  %add7 = add nsw i32 0, %mul, !dbg !71
  store i32 %add7, i32* %i4, align 4, !dbg !71, !tbaa !25
  %31 = load i32*, i32** %4, align 8, !dbg !73, !tbaa !30
  %32 = load i32, i32* %i4, align 4, !dbg !74, !tbaa !25
  %idxprom = sext i32 %32 to i64, !dbg !73
  %arrayidx = getelementptr inbounds i32, i32* %31, i64 %idxprom, !dbg !73
  %33 = load i32, i32* %arrayidx, align 4, !dbg !73, !tbaa !25
  %34 = load i32*, i32** %5, align 8, !dbg !75, !tbaa !30
  %35 = load i32, i32* %i4, align 4, !dbg !76, !tbaa !25
  %idxprom8 = sext i32 %35 to i64, !dbg !75
  %arrayidx9 = getelementptr inbounds i32, i32* %34, i64 %idxprom8, !dbg !75
  %36 = load i32, i32* %arrayidx9, align 4, !dbg !75, !tbaa !25
  %add10 = add nsw i32 %33, %36, !dbg !77
  %37 = load i32*, i32** %3, align 8, !dbg !78, !tbaa !30
  %38 = load i32, i32* %i4, align 4, !dbg !79, !tbaa !25
  %idxprom11 = sext i32 %38 to i64, !dbg !78
  %arrayidx12 = getelementptr inbounds i32, i32* %37, i64 %idxprom11, !dbg !78
  store i32 %add10, i32* %arrayidx12, align 4, !dbg !80, !tbaa !25
  br label %omp.body.continue, !dbg !78

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !81

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %39 = load i32, i32* %.omp.iv, align 4, !dbg !72, !tbaa !25
  %add13 = add nsw i32 %39, 1, !dbg !69
  store i32 %add13, i32* %.omp.iv, align 4, !dbg !69, !tbaa !25
  br label %omp.inner.for.cond, !dbg !81, !llvm.loop !82

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !81

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %40 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !81
  store i8* getelementptr inbounds ([73 x i8], [73 x i8]* @2, i32 0, i32 0), i8** %40, align 8, !dbg !81, !tbaa !38
  %41 = load i32*, i32** %.global_tid..addr, align 8, !dbg !81
  %42 = load i32, i32* %41, align 4, !dbg !81, !tbaa !25
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %42), !dbg !81
  %43 = bitcast i32* %i4 to i8*, !dbg !81
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %43) #6, !dbg !81
  %44 = bitcast i32* %.omp.is_last to i8*, !dbg !81
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %44) #6, !dbg !81
  %45 = bitcast i32* %.omp.stride to i8*, !dbg !81
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %45) #6, !dbg !81
  %46 = bitcast i32* %.omp.ub to i8*, !dbg !81
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %46) #6, !dbg !81
  %47 = bitcast i32* %.omp.lb to i8*, !dbg !81
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %47) #6, !dbg !81
  br label %omp.precond.end, !dbg !81

omp.precond.end:                                  ; preds = %omp.loop.exit, %entry
  %48 = bitcast i32* %.capture_expr.1 to i8*, !dbg !81
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %48) #6, !dbg !81
  %49 = bitcast i32* %.capture_expr. to i8*, !dbg !81
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %49) #6, !dbg !81
  %50 = bitcast i32* %.omp.iv to i8*, !dbg !81
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %50) #6, !dbg !81
  ret void, !dbg !84
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %n, i32** dereferenceable(8) %a, i32** dereferenceable(8) %b, i32** dereferenceable(8) %c) #3 !dbg !85 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %n.addr = alloca i32*, align 8
  %a.addr = alloca i32**, align 8
  %b.addr = alloca i32**, align 8
  %c.addr = alloca i32**, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !30
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !87, metadata !DIExpression()), !dbg !93
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !30
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !88, metadata !DIExpression()), !dbg !93
  store i32* %n, i32** %n.addr, align 8, !tbaa !30
  call void @llvm.dbg.declare(metadata i32** %n.addr, metadata !89, metadata !DIExpression()), !dbg !93
  store i32** %a, i32*** %a.addr, align 8, !tbaa !30
  call void @llvm.dbg.declare(metadata i32*** %a.addr, metadata !90, metadata !DIExpression()), !dbg !93
  store i32** %b, i32*** %b.addr, align 8, !tbaa !30
  call void @llvm.dbg.declare(metadata i32*** %b.addr, metadata !91, metadata !DIExpression()), !dbg !93
  store i32** %c, i32*** %c.addr, align 8, !tbaa !30
  call void @llvm.dbg.declare(metadata i32*** %c.addr, metadata !92, metadata !DIExpression()), !dbg !93
  %0 = load i32*, i32** %n.addr, align 8, !dbg !94, !tbaa !30
  %1 = load i32**, i32*** %a.addr, align 8, !dbg !94, !tbaa !30
  %2 = load i32**, i32*** %b.addr, align 8, !dbg !94, !tbaa !30
  %3 = load i32**, i32*** %c.addr, align 8, !dbg !94, !tbaa !30
  %4 = load i32*, i32** %.global_tid..addr, align 8, !dbg !94, !tbaa !30
  %5 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !94, !tbaa !30
  %6 = load i32*, i32** %n.addr, align 8, !dbg !94, !tbaa !30
  %7 = load i32**, i32*** %a.addr, align 8, !dbg !94, !tbaa !30
  %8 = load i32**, i32*** %b.addr, align 8, !dbg !94, !tbaa !30
  %9 = load i32**, i32*** %c.addr, align 8, !dbg !94, !tbaa !30
  call void @.omp_outlined._debug__(i32* %4, i32* %5, i32* %6, i32** %7, i32** %8, i32** %9) #6, !dbg !94
  ret void, !dbg !94
}

declare !callback !95 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

; Function Attrs: nounwind uwtable
define dso_local i32 @main() #0 !dbg !97 {
entry:
  %retval = alloca i32, align 4
  %n = alloca i32, align 4
  %a = alloca i32*, align 8
  %b = alloca i32*, align 8
  %c = alloca i32*, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = bitcast i32* %n to i8*, !dbg !105
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #6, !dbg !105
  call void @llvm.dbg.declare(metadata i32* %n, metadata !101, metadata !DIExpression()), !dbg !106
  store i32 1000, i32* %n, align 4, !dbg !106, !tbaa !25
  %1 = bitcast i32** %a to i8*, !dbg !107
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %1) #6, !dbg !107
  call void @llvm.dbg.declare(metadata i32** %a, metadata !102, metadata !DIExpression()), !dbg !108
  %2 = bitcast i32** %b to i8*, !dbg !107
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %2) #6, !dbg !107
  call void @llvm.dbg.declare(metadata i32** %b, metadata !103, metadata !DIExpression()), !dbg !109
  %3 = bitcast i32** %c to i8*, !dbg !107
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %3) #6, !dbg !107
  call void @llvm.dbg.declare(metadata i32** %c, metadata !104, metadata !DIExpression()), !dbg !110
  %4 = load i32, i32* %n, align 4, !dbg !111, !tbaa !25
  %conv = sext i32 %4 to i64, !dbg !111
  %mul = mul i64 %conv, 4, !dbg !112
  %call = call noalias i8* @malloc(i64 %mul) #6, !dbg !113
  %5 = bitcast i8* %call to i32*, !dbg !114
  store i32* %5, i32** %a, align 8, !dbg !115, !tbaa !30
  %6 = load i32*, i32** %a, align 8, !dbg !116, !tbaa !30
  %cmp = icmp eq i32* %6, null, !dbg !118
  br i1 %cmp, label %if.then, label %if.end, !dbg !119

if.then:                                          ; preds = %entry
  %7 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !120, !tbaa !30
  %call2 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %7, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0)), !dbg !122
  store i32 1, i32* %retval, align 4, !dbg !123
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !123

if.end:                                           ; preds = %entry
  %8 = load i32, i32* %n, align 4, !dbg !124, !tbaa !25
  %conv3 = sext i32 %8 to i64, !dbg !124
  %mul4 = mul i64 %conv3, 4, !dbg !125
  %call5 = call noalias i8* @malloc(i64 %mul4) #6, !dbg !126
  %9 = bitcast i8* %call5 to i32*, !dbg !127
  store i32* %9, i32** %b, align 8, !dbg !128, !tbaa !30
  %10 = load i32*, i32** %b, align 8, !dbg !129, !tbaa !30
  %cmp6 = icmp eq i32* %10, null, !dbg !131
  br i1 %cmp6, label %if.then8, label %if.end10, !dbg !132

if.then8:                                         ; preds = %if.end
  %11 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !133, !tbaa !30
  %call9 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %11, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0)), !dbg !135
  store i32 1, i32* %retval, align 4, !dbg !136
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !136

if.end10:                                         ; preds = %if.end
  %12 = load i32, i32* %n, align 4, !dbg !137, !tbaa !25
  %conv11 = sext i32 %12 to i64, !dbg !137
  %mul12 = mul i64 %conv11, 4, !dbg !138
  %call13 = call noalias i8* @malloc(i64 %mul12) #6, !dbg !139
  %13 = bitcast i8* %call13 to i32*, !dbg !140
  store i32* %13, i32** %c, align 8, !dbg !141, !tbaa !30
  %14 = load i32*, i32** %c, align 8, !dbg !142, !tbaa !30
  %cmp14 = icmp eq i32* %14, null, !dbg !144
  br i1 %cmp14, label %if.then16, label %if.end18, !dbg !145

if.then16:                                        ; preds = %if.end10
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @stderr, align 8, !dbg !146, !tbaa !30
  %call17 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %15, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0)), !dbg !148
  store i32 1, i32* %retval, align 4, !dbg !149
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !149

if.end18:                                         ; preds = %if.end10
  %16 = load i32, i32* %n, align 4, !dbg !150, !tbaa !25
  %17 = load i32*, i32** %a, align 8, !dbg !151, !tbaa !30
  %18 = load i32*, i32** %b, align 8, !dbg !152, !tbaa !30
  %19 = load i32*, i32** %c, align 8, !dbg !153, !tbaa !30
  call void @foo(i32 %16, i32* %17, i32* %18, i32* %19), !dbg !154
  %20 = load i32*, i32** %a, align 8, !dbg !155, !tbaa !30
  %21 = bitcast i32* %20 to i8*, !dbg !155
  call void @free(i8* %21) #6, !dbg !156
  %22 = load i32*, i32** %b, align 8, !dbg !157, !tbaa !30
  %23 = bitcast i32* %22 to i8*, !dbg !157
  call void @free(i8* %23) #6, !dbg !158
  %24 = load i32*, i32** %c, align 8, !dbg !159, !tbaa !30
  %25 = bitcast i32* %24 to i8*, !dbg !159
  call void @free(i8* %25) #6, !dbg !160
  store i32 0, i32* %retval, align 4, !dbg !161
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !161

cleanup:                                          ; preds = %if.end18, %if.then16, %if.then8, %if.then
  %26 = bitcast i32** %c to i8*, !dbg !162
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %26) #6, !dbg !162
  %27 = bitcast i32** %b to i8*, !dbg !162
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %27) #6, !dbg !162
  %28 = bitcast i32** %a to i8*, !dbg !162
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %28) #6, !dbg !162
  %29 = bitcast i32* %n to i8*, !dbg !162
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %29) #6, !dbg !162
  %30 = load i32, i32* %retval, align 4, !dbg !162
  ret i32 %30, !dbg !162
}

; Function Attrs: nounwind
declare dso_local noalias i8* @malloc(i64) #4

declare dso_local i32 @fprintf(%struct._IO_FILE*, i8*, ...) #5

; Function Attrs: nounwind
declare !dbg !6 dso_local void @free(i8*) #4

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!11, !12, !13}
!llvm.ident = !{!14}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "integration/dataracebench/DRB068-restrictpointer2-orig-no.c", directory: "/home/brad/Code/OpenRace/tests/data")
!2 = !{}
!3 = !{!4, !6}
!4 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!5 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!6 = !DISubprogram(name: "free", scope: !7, file: !7, line: 565, type: !8, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!7 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!8 = !DISubroutineType(types: !9)
!9 = !{null, !10}
!10 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!11 = !{i32 7, !"Dwarf Version", i32 4}
!12 = !{i32 2, !"Debug Info Version", i32 3}
!13 = !{i32 1, !"wchar_size", i32 4}
!14 = !{!"clang version 10.0.1 "}
!15 = distinct !DISubprogram(name: "foo", scope: !1, file: !1, line: 58, type: !16, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !19)
!16 = !DISubroutineType(types: !17)
!17 = !{null, !5, !18, !18, !18}
!18 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !4)
!19 = !{!20, !21, !22, !23, !24}
!20 = !DILocalVariable(name: "n", arg: 1, scope: !15, file: !1, line: 58, type: !5)
!21 = !DILocalVariable(name: "a", arg: 2, scope: !15, file: !1, line: 58, type: !18)
!22 = !DILocalVariable(name: "b", arg: 3, scope: !15, file: !1, line: 58, type: !18)
!23 = !DILocalVariable(name: "c", arg: 4, scope: !15, file: !1, line: 58, type: !18)
!24 = !DILocalVariable(name: "i", scope: !15, file: !1, line: 60, type: !5)
!25 = !{!26, !26, i64 0}
!26 = !{!"int", !27, i64 0}
!27 = !{!"omnipotent char", !28, i64 0}
!28 = !{!"Simple C/C++ TBAA"}
!29 = !DILocation(line: 58, column: 14, scope: !15)
!30 = !{!31, !31, i64 0}
!31 = !{!"any pointer", !27, i64 0}
!32 = !DILocation(line: 58, column: 33, scope: !15)
!33 = !DILocation(line: 58, column: 51, scope: !15)
!34 = !DILocation(line: 58, column: 70, scope: !15)
!35 = !DILocation(line: 60, column: 3, scope: !15)
!36 = !DILocation(line: 60, column: 7, scope: !15)
!37 = !DILocation(line: 61, column: 1, scope: !15)
!38 = !{!39, !31, i64 16}
!39 = !{!"ident_t", !26, i64 0, !26, i64 4, !26, i64 8, !26, i64 12, !31, i64 16}
!40 = !DILocation(line: 64, column: 1, scope: !15)
!41 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 62, type: !42, scopeLine: 62, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !50)
!42 = !DISubroutineType(types: !43)
!43 = !{null, !44, !44, !48, !49, !49, !49}
!44 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!45 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !46)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5)
!48 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !5, size: 64)
!49 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !4, size: 64)
!50 = !{!51, !52, !53, !54, !55, !56, !57, !58, !58, !59, !60, !61, !62, !63, !59}
!51 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !41, type: !44, flags: DIFlagArtificial)
!52 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !41, type: !44, flags: DIFlagArtificial)
!53 = !DILocalVariable(name: "n", arg: 3, scope: !41, file: !1, line: 58, type: !48)
!54 = !DILocalVariable(name: "a", arg: 4, scope: !41, file: !1, line: 58, type: !49)
!55 = !DILocalVariable(name: "b", arg: 5, scope: !41, file: !1, line: 58, type: !49)
!56 = !DILocalVariable(name: "c", arg: 6, scope: !41, file: !1, line: 58, type: !49)
!57 = !DILocalVariable(name: ".omp.iv", scope: !41, type: !5, flags: DIFlagArtificial)
!58 = !DILocalVariable(name: ".capture_expr.", scope: !41, type: !5, flags: DIFlagArtificial)
!59 = !DILocalVariable(name: "i", scope: !41, type: !5, flags: DIFlagArtificial)
!60 = !DILocalVariable(name: ".omp.lb", scope: !41, type: !5, flags: DIFlagArtificial)
!61 = !DILocalVariable(name: ".omp.ub", scope: !41, type: !5, flags: DIFlagArtificial)
!62 = !DILocalVariable(name: ".omp.stride", scope: !41, type: !5, flags: DIFlagArtificial)
!63 = !DILocalVariable(name: ".omp.is_last", scope: !41, type: !5, flags: DIFlagArtificial)
!64 = !DILocation(line: 0, scope: !41)
!65 = !DILocation(line: 58, column: 14, scope: !41)
!66 = !DILocation(line: 58, column: 33, scope: !41)
!67 = !DILocation(line: 58, column: 51, scope: !41)
!68 = !DILocation(line: 58, column: 70, scope: !41)
!69 = !DILocation(line: 62, column: 3, scope: !41)
!70 = !DILocation(line: 62, column: 19, scope: !41)
!71 = !DILocation(line: 62, column: 22, scope: !41)
!72 = !DILocation(line: 62, column: 8, scope: !41)
!73 = !DILocation(line: 63, column: 12, scope: !41)
!74 = !DILocation(line: 63, column: 14, scope: !41)
!75 = !DILocation(line: 63, column: 19, scope: !41)
!76 = !DILocation(line: 63, column: 21, scope: !41)
!77 = !DILocation(line: 63, column: 17, scope: !41)
!78 = !DILocation(line: 63, column: 5, scope: !41)
!79 = !DILocation(line: 63, column: 7, scope: !41)
!80 = !DILocation(line: 63, column: 10, scope: !41)
!81 = !DILocation(line: 61, column: 1, scope: !41)
!82 = distinct !{!82, !81, !83}
!83 = !DILocation(line: 61, column: 26, scope: !41)
!84 = !DILocation(line: 63, column: 22, scope: !41)
!85 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 62, type: !42, scopeLine: 62, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !86)
!86 = !{!87, !88, !89, !90, !91, !92}
!87 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !85, type: !44, flags: DIFlagArtificial)
!88 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !85, type: !44, flags: DIFlagArtificial)
!89 = !DILocalVariable(name: "n", arg: 3, scope: !85, type: !48, flags: DIFlagArtificial)
!90 = !DILocalVariable(name: "a", arg: 4, scope: !85, type: !49, flags: DIFlagArtificial)
!91 = !DILocalVariable(name: "b", arg: 5, scope: !85, type: !49, flags: DIFlagArtificial)
!92 = !DILocalVariable(name: "c", arg: 6, scope: !85, type: !49, flags: DIFlagArtificial)
!93 = !DILocation(line: 0, scope: !85)
!94 = !DILocation(line: 62, column: 3, scope: !85)
!95 = !{!96}
!96 = !{i64 2, i64 -1, i64 -1, i1 true}
!97 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 66, type: !98, scopeLine: 67, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !100)
!98 = !DISubroutineType(types: !99)
!99 = !{!5}
!100 = !{!101, !102, !103, !104}
!101 = !DILocalVariable(name: "n", scope: !97, file: !1, line: 68, type: !5)
!102 = !DILocalVariable(name: "a", scope: !97, file: !1, line: 69, type: !4)
!103 = !DILocalVariable(name: "b", scope: !97, file: !1, line: 69, type: !4)
!104 = !DILocalVariable(name: "c", scope: !97, file: !1, line: 69, type: !4)
!105 = !DILocation(line: 68, column: 3, scope: !97)
!106 = !DILocation(line: 68, column: 7, scope: !97)
!107 = !DILocation(line: 69, column: 3, scope: !97)
!108 = !DILocation(line: 69, column: 9, scope: !97)
!109 = !DILocation(line: 69, column: 14, scope: !97)
!110 = !DILocation(line: 69, column: 18, scope: !97)
!111 = !DILocation(line: 71, column: 22, scope: !97)
!112 = !DILocation(line: 71, column: 23, scope: !97)
!113 = !DILocation(line: 71, column: 14, scope: !97)
!114 = !DILocation(line: 71, column: 7, scope: !97)
!115 = !DILocation(line: 71, column: 5, scope: !97)
!116 = !DILocation(line: 72, column: 7, scope: !117)
!117 = distinct !DILexicalBlock(scope: !97, file: !1, line: 72, column: 7)
!118 = !DILocation(line: 72, column: 9, scope: !117)
!119 = !DILocation(line: 72, column: 7, scope: !97)
!120 = !DILocation(line: 74, column: 14, scope: !121)
!121 = distinct !DILexicalBlock(scope: !117, file: !1, line: 73, column: 3)
!122 = !DILocation(line: 74, column: 5, scope: !121)
!123 = !DILocation(line: 75, column: 5, scope: !121)
!124 = !DILocation(line: 78, column: 22, scope: !97)
!125 = !DILocation(line: 78, column: 23, scope: !97)
!126 = !DILocation(line: 78, column: 14, scope: !97)
!127 = !DILocation(line: 78, column: 7, scope: !97)
!128 = !DILocation(line: 78, column: 5, scope: !97)
!129 = !DILocation(line: 79, column: 7, scope: !130)
!130 = distinct !DILexicalBlock(scope: !97, file: !1, line: 79, column: 7)
!131 = !DILocation(line: 79, column: 9, scope: !130)
!132 = !DILocation(line: 79, column: 7, scope: !97)
!133 = !DILocation(line: 81, column: 14, scope: !134)
!134 = distinct !DILexicalBlock(scope: !130, file: !1, line: 80, column: 3)
!135 = !DILocation(line: 81, column: 5, scope: !134)
!136 = !DILocation(line: 82, column: 5, scope: !134)
!137 = !DILocation(line: 85, column: 22, scope: !97)
!138 = !DILocation(line: 85, column: 23, scope: !97)
!139 = !DILocation(line: 85, column: 14, scope: !97)
!140 = !DILocation(line: 85, column: 7, scope: !97)
!141 = !DILocation(line: 85, column: 5, scope: !97)
!142 = !DILocation(line: 86, column: 7, scope: !143)
!143 = distinct !DILexicalBlock(scope: !97, file: !1, line: 86, column: 7)
!144 = !DILocation(line: 86, column: 9, scope: !143)
!145 = !DILocation(line: 86, column: 7, scope: !97)
!146 = !DILocation(line: 88, column: 14, scope: !147)
!147 = distinct !DILexicalBlock(scope: !143, file: !1, line: 87, column: 3)
!148 = !DILocation(line: 88, column: 5, scope: !147)
!149 = !DILocation(line: 89, column: 5, scope: !147)
!150 = !DILocation(line: 92, column: 8, scope: !97)
!151 = !DILocation(line: 92, column: 11, scope: !97)
!152 = !DILocation(line: 92, column: 14, scope: !97)
!153 = !DILocation(line: 92, column: 16, scope: !97)
!154 = !DILocation(line: 92, column: 3, scope: !97)
!155 = !DILocation(line: 94, column: 9, scope: !97)
!156 = !DILocation(line: 94, column: 3, scope: !97)
!157 = !DILocation(line: 95, column: 9, scope: !97)
!158 = !DILocation(line: 95, column: 3, scope: !97)
!159 = !DILocation(line: 96, column: 9, scope: !97)
!160 = !DILocation(line: 96, column: 3, scope: !97)
!161 = !DILocation(line: 97, column: 3, scope: !97)
!162 = !DILocation(line: 98, column: 1, scope: !97)
