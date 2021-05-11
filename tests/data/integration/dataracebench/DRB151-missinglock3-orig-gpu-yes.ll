; ModuleID = 'integration/dataracebench/DRB151-missinglock3-orig-gpu-yes.c'
source_filename = "integration/dataracebench/DRB151-missinglock3-orig-gpu-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 2050, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [74 x i8] c";integration/dataracebench/DRB151-missinglock3-orig-gpu-yes.c;main;24;3;;\00", align 1
@2 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@3 = private unnamed_addr constant [75 x i8] c";integration/dataracebench/DRB151-missinglock3-orig-gpu-yes.c;main;24;44;;\00", align 1
@4 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@.str.3 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main() #0 !dbg !7 {
entry:
  %retval = alloca i32, align 4
  %var = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = bitcast i32* %var to i8*, !dbg !14
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #5, !dbg !14
  call void @llvm.dbg.declare(metadata i32* %var, metadata !12, metadata !DIExpression()), !dbg !15
  store i32 0, i32* %var, align 4, !dbg !15, !tbaa !16
  %1 = bitcast i32* %i to i8*, !dbg !14
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #5, !dbg !14
  call void @llvm.dbg.declare(metadata i32* %i, metadata !13, metadata !DIExpression()), !dbg !20
  call void @__omp_offloading_1030a_2160959_main_l23(i32* %var) #5, !dbg !21
  %2 = load i32, i32* %var, align 4, !dbg !23, !tbaa !16
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %2), !dbg !24
  %3 = bitcast i32* %i to i8*, !dbg !25
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %3) #5, !dbg !25
  %4 = bitcast i32* %var to i8*, !dbg !25
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %4) #5, !dbg !25
  ret i32 0, !dbg !26
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: norecurse nounwind uwtable
define internal void @__omp_offloading_1030a_2160959_main_l23_debug__(i32* dereferenceable(4) %var) #3 !dbg !27 {
entry:
  %var.addr = alloca i32*, align 8
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %var, i32** %var.addr, align 8, !tbaa !33
  call void @llvm.dbg.declare(metadata i32** %var.addr, metadata !32, metadata !DIExpression()), !dbg !35
  %2 = load i32*, i32** %var.addr, align 8, !dbg !36, !tbaa !33
  %3 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !36
  store i8* getelementptr inbounds ([74 x i8], [74 x i8]* @1, i32 0, i32 0), i8** %3, align 8, !dbg !36, !tbaa !37
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_teams(%struct.ident_t* %.kmpc_loc.addr, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*)* @.omp_outlined..2 to void (i32*, i32*, ...)*), i32* %2), !dbg !36
  ret void, !dbg !39
}

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %var) #3 !dbg !40 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %var.addr = alloca i32*, align 8
  %.omp.iv = alloca i32, align 4
  %tmp = alloca i32, align 4
  %.omp.comb.lb = alloca i32, align 4
  %.omp.comb.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %i = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !33
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !48, metadata !DIExpression()), !dbg !57
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !33
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !49, metadata !DIExpression()), !dbg !57
  store i32* %var, i32** %var.addr, align 8, !tbaa !33
  call void @llvm.dbg.declare(metadata i32** %var.addr, metadata !50, metadata !DIExpression()), !dbg !58
  %2 = load i32*, i32** %var.addr, align 8, !dbg !59, !tbaa !33
  %3 = bitcast i32* %.omp.iv to i8*, !dbg !59
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #5, !dbg !59
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !51, metadata !DIExpression()), !dbg !57
  %4 = bitcast i32* %.omp.comb.lb to i8*, !dbg !59
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #5, !dbg !59
  call void @llvm.dbg.declare(metadata i32* %.omp.comb.lb, metadata !52, metadata !DIExpression()), !dbg !57
  store i32 0, i32* %.omp.comb.lb, align 4, !dbg !60, !tbaa !16
  %5 = bitcast i32* %.omp.comb.ub to i8*, !dbg !59
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #5, !dbg !59
  call void @llvm.dbg.declare(metadata i32* %.omp.comb.ub, metadata !53, metadata !DIExpression()), !dbg !57
  store i32 99, i32* %.omp.comb.ub, align 4, !dbg !60, !tbaa !16
  %6 = bitcast i32* %.omp.stride to i8*, !dbg !59
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #5, !dbg !59
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !54, metadata !DIExpression()), !dbg !57
  store i32 1, i32* %.omp.stride, align 4, !dbg !60, !tbaa !16
  %7 = bitcast i32* %.omp.is_last to i8*, !dbg !59
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #5, !dbg !59
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !55, metadata !DIExpression()), !dbg !57
  store i32 0, i32* %.omp.is_last, align 4, !dbg !60, !tbaa !16
  %8 = bitcast i32* %i to i8*, !dbg !59
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #5, !dbg !59
  call void @llvm.dbg.declare(metadata i32* %i, metadata !56, metadata !DIExpression()), !dbg !57
  %9 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !59
  store i8* getelementptr inbounds ([74 x i8], [74 x i8]* @1, i32 0, i32 0), i8** %9, align 8, !dbg !59, !tbaa !37
  %10 = load i32*, i32** %.global_tid..addr, align 8, !dbg !59
  %11 = load i32, i32* %10, align 4, !dbg !59, !tbaa !16
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %11, i32 92, i32* %.omp.is_last, i32* %.omp.comb.lb, i32* %.omp.comb.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !59
  %12 = load i32, i32* %.omp.comb.ub, align 4, !dbg !60, !tbaa !16
  %cmp = icmp sgt i32 %12, 99, !dbg !60
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !60

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !60

cond.false:                                       ; preds = %entry
  %13 = load i32, i32* %.omp.comb.ub, align 4, !dbg !60, !tbaa !16
  br label %cond.end, !dbg !60

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 99, %cond.true ], [ %13, %cond.false ], !dbg !60
  store i32 %cond, i32* %.omp.comb.ub, align 4, !dbg !60, !tbaa !16
  %14 = load i32, i32* %.omp.comb.lb, align 4, !dbg !60, !tbaa !16
  store i32 %14, i32* %.omp.iv, align 4, !dbg !60, !tbaa !16
  br label %omp.inner.for.cond, !dbg !59

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %15 = load i32, i32* %.omp.iv, align 4, !dbg !60, !tbaa !16
  %16 = load i32, i32* %.omp.comb.ub, align 4, !dbg !60, !tbaa !16
  %cmp1 = icmp sle i32 %15, %16, !dbg !59
  br i1 %cmp1, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !59

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !59

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %17 = load i32, i32* %.omp.comb.lb, align 4, !dbg !61
  %18 = zext i32 %17 to i64, !dbg !61
  %19 = load i32, i32* %.omp.comb.ub, align 4, !dbg !61
  %20 = zext i32 %19 to i64, !dbg !61
  %21 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !61
  store i8* getelementptr inbounds ([74 x i8], [74 x i8]* @1, i32 0, i32 0), i8** %21, align 8, !dbg !61, !tbaa !37
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i64, i64, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i64 %18, i64 %20, i32* %2), !dbg !61
  br label %omp.inner.for.inc, !dbg !62

omp.inner.for.inc:                                ; preds = %omp.inner.for.body
  %22 = load i32, i32* %.omp.iv, align 4, !dbg !60, !tbaa !16
  %23 = load i32, i32* %.omp.stride, align 4, !dbg !60, !tbaa !16
  %add = add nsw i32 %22, %23, !dbg !59
  store i32 %add, i32* %.omp.iv, align 4, !dbg !59, !tbaa !16
  br label %omp.inner.for.cond, !dbg !62, !llvm.loop !64

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !62

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %24 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !62
  store i8* getelementptr inbounds ([74 x i8], [74 x i8]* @1, i32 0, i32 0), i8** %24, align 8, !dbg !62, !tbaa !37
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %11), !dbg !62
  %25 = bitcast i32* %i to i8*, !dbg !62
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %25) #5, !dbg !62
  %26 = bitcast i32* %.omp.is_last to i8*, !dbg !62
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %26) #5, !dbg !62
  %27 = bitcast i32* %.omp.stride to i8*, !dbg !62
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %27) #5, !dbg !62
  %28 = bitcast i32* %.omp.comb.ub to i8*, !dbg !62
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %28) #5, !dbg !62
  %29 = bitcast i32* %.omp.comb.lb to i8*, !dbg !62
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %29) #5, !dbg !62
  %30 = bitcast i32* %.omp.iv to i8*, !dbg !62
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %30) #5, !dbg !62
  ret void, !dbg !66
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__.1(i32* noalias %.global_tid., i32* noalias %.bound_tid., i64 %.previous.lb., i64 %.previous.ub., i32* dereferenceable(4) %var) #3 !dbg !67 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %.previous.lb..addr = alloca i64, align 8
  %.previous.ub..addr = alloca i64, align 8
  %var.addr = alloca i32*, align 8
  %.omp.iv = alloca i32, align 4
  %tmp = alloca i32, align 4
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %i = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !33
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !73, metadata !DIExpression()), !dbg !84
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !33
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !74, metadata !DIExpression()), !dbg !84
  store i64 %.previous.lb., i64* %.previous.lb..addr, align 8, !tbaa !85
  call void @llvm.dbg.declare(metadata i64* %.previous.lb..addr, metadata !75, metadata !DIExpression()), !dbg !84
  store i64 %.previous.ub., i64* %.previous.ub..addr, align 8, !tbaa !85
  call void @llvm.dbg.declare(metadata i64* %.previous.ub..addr, metadata !76, metadata !DIExpression()), !dbg !84
  store i32* %var, i32** %var.addr, align 8, !tbaa !33
  call void @llvm.dbg.declare(metadata i32** %var.addr, metadata !77, metadata !DIExpression()), !dbg !87
  %2 = load i32*, i32** %var.addr, align 8, !dbg !88, !tbaa !33
  %3 = bitcast i32* %.omp.iv to i8*, !dbg !88
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #5, !dbg !88
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !78, metadata !DIExpression()), !dbg !84
  %4 = bitcast i32* %.omp.lb to i8*, !dbg !88
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #5, !dbg !88
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !79, metadata !DIExpression()), !dbg !84
  store i32 0, i32* %.omp.lb, align 4, !dbg !89, !tbaa !16
  %5 = bitcast i32* %.omp.ub to i8*, !dbg !88
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #5, !dbg !88
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !80, metadata !DIExpression()), !dbg !84
  store i32 99, i32* %.omp.ub, align 4, !dbg !89, !tbaa !16
  %6 = load i64, i64* %.previous.lb..addr, align 8, !dbg !88, !tbaa !85
  %conv = trunc i64 %6 to i32, !dbg !88
  %7 = load i64, i64* %.previous.ub..addr, align 8, !dbg !88, !tbaa !85
  %conv1 = trunc i64 %7 to i32, !dbg !88
  store i32 %conv, i32* %.omp.lb, align 4, !dbg !88, !tbaa !16
  store i32 %conv1, i32* %.omp.ub, align 4, !dbg !88, !tbaa !16
  %8 = bitcast i32* %.omp.stride to i8*, !dbg !88
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #5, !dbg !88
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !81, metadata !DIExpression()), !dbg !84
  store i32 1, i32* %.omp.stride, align 4, !dbg !89, !tbaa !16
  %9 = bitcast i32* %.omp.is_last to i8*, !dbg !88
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #5, !dbg !88
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !82, metadata !DIExpression()), !dbg !84
  store i32 0, i32* %.omp.is_last, align 4, !dbg !89, !tbaa !16
  %10 = bitcast i32* %i to i8*, !dbg !88
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #5, !dbg !88
  call void @llvm.dbg.declare(metadata i32* %i, metadata !83, metadata !DIExpression()), !dbg !84
  %11 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !88
  store i8* getelementptr inbounds ([74 x i8], [74 x i8]* @1, i32 0, i32 0), i8** %11, align 8, !dbg !88, !tbaa !37
  %12 = load i32*, i32** %.global_tid..addr, align 8, !dbg !88
  %13 = load i32, i32* %12, align 4, !dbg !88, !tbaa !16
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %13, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !88
  %14 = load i32, i32* %.omp.ub, align 4, !dbg !89, !tbaa !16
  %cmp = icmp sgt i32 %14, 99, !dbg !89
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !89

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !89

cond.false:                                       ; preds = %entry
  %15 = load i32, i32* %.omp.ub, align 4, !dbg !89, !tbaa !16
  br label %cond.end, !dbg !89

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 99, %cond.true ], [ %15, %cond.false ], !dbg !89
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !89, !tbaa !16
  %16 = load i32, i32* %.omp.lb, align 4, !dbg !89, !tbaa !16
  store i32 %16, i32* %.omp.iv, align 4, !dbg !89, !tbaa !16
  br label %omp.inner.for.cond, !dbg !88

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %17 = load i32, i32* %.omp.iv, align 4, !dbg !89, !tbaa !16
  %18 = load i32, i32* %.omp.ub, align 4, !dbg !89, !tbaa !16
  %cmp3 = icmp sle i32 %17, %18, !dbg !88
  br i1 %cmp3, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !88

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !88

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %19 = load i32, i32* %.omp.iv, align 4, !dbg !89, !tbaa !16
  %mul = mul nsw i32 %19, 1, !dbg !90
  %add = add nsw i32 0, %mul, !dbg !90
  store i32 %add, i32* %i, align 4, !dbg !90, !tbaa !16
  %20 = load i32, i32* %2, align 4, !dbg !91, !tbaa !16
  %inc = add nsw i32 %20, 1, !dbg !91
  store i32 %inc, i32* %2, align 4, !dbg !91, !tbaa !16
  br label %omp.body.continue, !dbg !93

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !94

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %21 = load i32, i32* %.omp.iv, align 4, !dbg !89, !tbaa !16
  %add5 = add nsw i32 %21, 1, !dbg !88
  store i32 %add5, i32* %.omp.iv, align 4, !dbg !88, !tbaa !16
  br label %omp.inner.for.cond, !dbg !94, !llvm.loop !95

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !94

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %22 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !94
  store i8* getelementptr inbounds ([75 x i8], [75 x i8]* @3, i32 0, i32 0), i8** %22, align 8, !dbg !94, !tbaa !37
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %13), !dbg !94
  %23 = bitcast i32* %i to i8*, !dbg !94
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %23) #5, !dbg !94
  %24 = bitcast i32* %.omp.is_last to i8*, !dbg !94
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %24) #5, !dbg !94
  %25 = bitcast i32* %.omp.stride to i8*, !dbg !94
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %25) #5, !dbg !94
  %26 = bitcast i32* %.omp.ub to i8*, !dbg !94
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %26) #5, !dbg !94
  %27 = bitcast i32* %.omp.lb to i8*, !dbg !94
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %27) #5, !dbg !94
  %28 = bitcast i32* %.omp.iv to i8*, !dbg !94
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %28) #5, !dbg !94
  ret void, !dbg !97
}

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i64 %.previous.lb., i64 %.previous.ub., i32* dereferenceable(4) %var) #3 !dbg !98 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %.previous.lb..addr = alloca i64, align 8
  %.previous.ub..addr = alloca i64, align 8
  %var.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !33
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !100, metadata !DIExpression()), !dbg !105
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !33
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !101, metadata !DIExpression()), !dbg !105
  store i64 %.previous.lb., i64* %.previous.lb..addr, align 8, !tbaa !85
  call void @llvm.dbg.declare(metadata i64* %.previous.lb..addr, metadata !102, metadata !DIExpression()), !dbg !105
  store i64 %.previous.ub., i64* %.previous.ub..addr, align 8, !tbaa !85
  call void @llvm.dbg.declare(metadata i64* %.previous.ub..addr, metadata !103, metadata !DIExpression()), !dbg !105
  store i32* %var, i32** %var.addr, align 8, !tbaa !33
  call void @llvm.dbg.declare(metadata i32** %var.addr, metadata !104, metadata !DIExpression()), !dbg !105
  %0 = load i32*, i32** %var.addr, align 8, !dbg !106, !tbaa !33
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !106, !tbaa !33
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !106, !tbaa !33
  %3 = load i64, i64* %.previous.lb..addr, align 8, !dbg !106, !tbaa !85
  %4 = load i64, i64* %.previous.ub..addr, align 8, !dbg !106, !tbaa !85
  %5 = load i32*, i32** %var.addr, align 8, !dbg !106, !tbaa !33
  call void @.omp_outlined._debug__.1(i32* %1, i32* %2, i64 %3, i64 %4, i32* %5) #5, !dbg !106
  ret void, !dbg !106
}

declare !callback !107 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined..2(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %var) #3 !dbg !109 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %var.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !33
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !111, metadata !DIExpression()), !dbg !114
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !33
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !112, metadata !DIExpression()), !dbg !114
  store i32* %var, i32** %var.addr, align 8, !tbaa !33
  call void @llvm.dbg.declare(metadata i32** %var.addr, metadata !113, metadata !DIExpression()), !dbg !114
  %0 = load i32*, i32** %var.addr, align 8, !dbg !115, !tbaa !33
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !115, !tbaa !33
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !115, !tbaa !33
  %3 = load i32*, i32** %var.addr, align 8, !dbg !115, !tbaa !33
  call void @.omp_outlined._debug__(i32* %1, i32* %2, i32* %3) #5, !dbg !115
  ret void, !dbg !115
}

declare !callback !107 dso_local void @__kmpc_fork_teams(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

; Function Attrs: norecurse nounwind uwtable
define internal void @__omp_offloading_1030a_2160959_main_l23(i32* dereferenceable(4) %var) #3 !dbg !116 {
entry:
  %var.addr = alloca i32*, align 8
  store i32* %var, i32** %var.addr, align 8, !tbaa !33
  call void @llvm.dbg.declare(metadata i32** %var.addr, metadata !118, metadata !DIExpression()), !dbg !119
  %0 = load i32*, i32** %var.addr, align 8, !dbg !120, !tbaa !33
  %1 = load i32*, i32** %var.addr, align 8, !dbg !120, !tbaa !33
  call void @__omp_offloading_1030a_2160959_main_l23_debug__(i32* %1) #5, !dbg !120
  ret void, !dbg !120
}

declare dso_local i32 @printf(i8*, ...) #4

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "integration/dataracebench/DRB151-missinglock3-orig-gpu-yes.c", directory: "/home/brad/Code/OpenRace/tests/data")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.1 "}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 19, type: !8, scopeLine: 19, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !11)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !{!12, !13}
!12 = !DILocalVariable(name: "var", scope: !7, file: !1, line: 21, type: !10)
!13 = !DILocalVariable(name: "i", scope: !7, file: !1, line: 21, type: !10)
!14 = !DILocation(line: 21, column: 3, scope: !7)
!15 = !DILocation(line: 21, column: 7, scope: !7)
!16 = !{!17, !17, i64 0}
!17 = !{!"int", !18, i64 0}
!18 = !{!"omnipotent char", !19, i64 0}
!19 = !{!"Simple C/C++ TBAA"}
!20 = !DILocation(line: 21, column: 13, scope: !7)
!21 = !DILocation(line: 23, column: 3, scope: !22)
!22 = distinct !DILexicalBlock(scope: !7, file: !1, line: 23, column: 3)
!23 = !DILocation(line: 29, column: 17, scope: !7)
!24 = !DILocation(line: 29, column: 3, scope: !7)
!25 = !DILocation(line: 31, column: 1, scope: !7)
!26 = !DILocation(line: 30, column: 3, scope: !7)
!27 = distinct !DISubprogram(name: "__omp_offloading_1030a_2160959_main_l23_debug__", scope: !1, file: !1, line: 24, type: !28, scopeLine: 24, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !31)
!28 = !DISubroutineType(types: !29)
!29 = !{null, !30}
!30 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !10, size: 64)
!31 = !{!32}
!32 = !DILocalVariable(name: "var", arg: 1, scope: !27, file: !1, line: 21, type: !30)
!33 = !{!34, !34, i64 0}
!34 = !{!"any pointer", !18, i64 0}
!35 = !DILocation(line: 21, column: 7, scope: !27)
!36 = !DILocation(line: 24, column: 3, scope: !27)
!37 = !{!38, !34, i64 16}
!38 = !{!"ident_t", !17, i64 0, !17, i64 4, !17, i64 8, !17, i64 12, !34, i64 16}
!39 = !DILocation(line: 24, column: 44, scope: !27)
!40 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 25, type: !41, scopeLine: 25, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !47)
!41 = !DISubroutineType(types: !42)
!42 = !{null, !43, !43, !30}
!43 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !44)
!44 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !45)
!45 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!46 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!47 = !{!48, !49, !50, !51, !52, !53, !54, !55, !56}
!48 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !40, type: !43, flags: DIFlagArtificial)
!49 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !40, type: !43, flags: DIFlagArtificial)
!50 = !DILocalVariable(name: "var", arg: 3, scope: !40, file: !1, line: 21, type: !30)
!51 = !DILocalVariable(name: ".omp.iv", scope: !40, type: !10, flags: DIFlagArtificial)
!52 = !DILocalVariable(name: ".omp.comb.lb", scope: !40, type: !10, flags: DIFlagArtificial)
!53 = !DILocalVariable(name: ".omp.comb.ub", scope: !40, type: !10, flags: DIFlagArtificial)
!54 = !DILocalVariable(name: ".omp.stride", scope: !40, type: !10, flags: DIFlagArtificial)
!55 = !DILocalVariable(name: ".omp.is_last", scope: !40, type: !10, flags: DIFlagArtificial)
!56 = !DILocalVariable(name: "i", scope: !40, type: !10, flags: DIFlagArtificial)
!57 = !DILocation(line: 0, scope: !40)
!58 = !DILocation(line: 21, column: 7, scope: !40)
!59 = !DILocation(line: 25, column: 3, scope: !40)
!60 = !DILocation(line: 25, column: 8, scope: !40)
!61 = !DILocation(line: 24, column: 3, scope: !40)
!62 = !DILocation(line: 24, column: 44, scope: !63)
!63 = distinct !DILexicalBlock(scope: !40, file: !1, line: 24, column: 3)
!64 = distinct !{!64, !61, !65}
!65 = !DILocation(line: 24, column: 44, scope: !40)
!66 = !DILocation(line: 27, column: 3, scope: !40)
!67 = distinct !DISubprogram(name: ".omp_outlined._debug__.1", scope: !1, file: !1, line: 25, type: !68, scopeLine: 25, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !72)
!68 = !DISubroutineType(types: !69)
!69 = !{null, !43, !43, !70, !70, !30}
!70 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !71)
!71 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!72 = !{!73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83}
!73 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !67, type: !43, flags: DIFlagArtificial)
!74 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !67, type: !43, flags: DIFlagArtificial)
!75 = !DILocalVariable(name: ".previous.lb.", arg: 3, scope: !67, type: !70, flags: DIFlagArtificial)
!76 = !DILocalVariable(name: ".previous.ub.", arg: 4, scope: !67, type: !70, flags: DIFlagArtificial)
!77 = !DILocalVariable(name: "var", arg: 5, scope: !67, file: !1, line: 21, type: !30)
!78 = !DILocalVariable(name: ".omp.iv", scope: !67, type: !10, flags: DIFlagArtificial)
!79 = !DILocalVariable(name: ".omp.lb", scope: !67, type: !10, flags: DIFlagArtificial)
!80 = !DILocalVariable(name: ".omp.ub", scope: !67, type: !10, flags: DIFlagArtificial)
!81 = !DILocalVariable(name: ".omp.stride", scope: !67, type: !10, flags: DIFlagArtificial)
!82 = !DILocalVariable(name: ".omp.is_last", scope: !67, type: !10, flags: DIFlagArtificial)
!83 = !DILocalVariable(name: "i", scope: !67, type: !10, flags: DIFlagArtificial)
!84 = !DILocation(line: 0, scope: !67)
!85 = !{!86, !86, i64 0}
!86 = !{!"long", !18, i64 0}
!87 = !DILocation(line: 21, column: 7, scope: !67)
!88 = !DILocation(line: 25, column: 3, scope: !67)
!89 = !DILocation(line: 25, column: 8, scope: !67)
!90 = !DILocation(line: 25, column: 24, scope: !67)
!91 = !DILocation(line: 26, column: 8, scope: !92)
!92 = distinct !DILexicalBlock(scope: !67, file: !1, line: 25, column: 28)
!93 = !DILocation(line: 27, column: 3, scope: !92)
!94 = !DILocation(line: 24, column: 3, scope: !67)
!95 = distinct !{!95, !94, !96}
!96 = !DILocation(line: 24, column: 44, scope: !67)
!97 = !DILocation(line: 27, column: 3, scope: !67)
!98 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 25, type: !68, scopeLine: 25, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !99)
!99 = !{!100, !101, !102, !103, !104}
!100 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !98, type: !43, flags: DIFlagArtificial)
!101 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !98, type: !43, flags: DIFlagArtificial)
!102 = !DILocalVariable(name: ".previous.lb.", arg: 3, scope: !98, type: !70, flags: DIFlagArtificial)
!103 = !DILocalVariable(name: ".previous.ub.", arg: 4, scope: !98, type: !70, flags: DIFlagArtificial)
!104 = !DILocalVariable(name: "var", arg: 5, scope: !98, type: !30, flags: DIFlagArtificial)
!105 = !DILocation(line: 0, scope: !98)
!106 = !DILocation(line: 25, column: 3, scope: !98)
!107 = !{!108}
!108 = !{i64 2, i64 -1, i64 -1, i1 true}
!109 = distinct !DISubprogram(name: ".omp_outlined..2", scope: !1, file: !1, line: 25, type: !41, scopeLine: 25, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !110)
!110 = !{!111, !112, !113}
!111 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !109, type: !43, flags: DIFlagArtificial)
!112 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !109, type: !43, flags: DIFlagArtificial)
!113 = !DILocalVariable(name: "var", arg: 3, scope: !109, type: !30, flags: DIFlagArtificial)
!114 = !DILocation(line: 0, scope: !109)
!115 = !DILocation(line: 25, column: 3, scope: !109)
!116 = distinct !DISubprogram(name: "__omp_offloading_1030a_2160959_main_l23", scope: !1, file: !1, line: 24, type: !28, scopeLine: 24, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !117)
!117 = !{!118}
!118 = !DILocalVariable(name: "var", arg: 1, scope: !116, type: !30, flags: DIFlagArtificial)
!119 = !DILocation(line: 0, scope: !116)
!120 = !DILocation(line: 24, column: 3, scope: !116)
