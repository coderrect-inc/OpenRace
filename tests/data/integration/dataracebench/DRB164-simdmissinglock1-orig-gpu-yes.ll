; ModuleID = 'integration/dataracebench/DRB164-simdmissinglock1-orig-gpu-yes.c'
source_filename = "integration/dataracebench/DRB164-simdmissinglock1-orig-gpu-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 2050, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [78 x i8] c";integration/dataracebench/DRB164-simdmissinglock1-orig-gpu-yes.c;main;31;3;;\00", align 1
@2 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@3 = private unnamed_addr constant [79 x i8] c";integration/dataracebench/DRB164-simdmissinglock1-orig-gpu-yes.c;main;31;44;;\00", align 1
@4 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@.str.3 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main() #0 !dbg !7 {
entry:
  %retval = alloca i32, align 4
  %var = alloca [64 x i32], align 16
  %i = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = bitcast [64 x i32]* %var to i8*, !dbg !18
  call void @llvm.lifetime.start.p0i8(i64 256, i8* %0) #5, !dbg !18
  call void @llvm.dbg.declare(metadata [64 x i32]* %var, metadata !12, metadata !DIExpression()), !dbg !19
  %1 = bitcast i32* %i to i8*, !dbg !20
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #5, !dbg !20
  call void @llvm.dbg.declare(metadata i32* %i, metadata !16, metadata !DIExpression()), !dbg !21
  store i32 0, i32* %i, align 4, !dbg !21, !tbaa !22
  br label %for.cond, !dbg !20

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4, !dbg !26, !tbaa !22
  %cmp = icmp slt i32 %2, 64, !dbg !28
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !dbg !29

for.cond.cleanup:                                 ; preds = %for.cond
  %3 = bitcast i32* %i to i8*, !dbg !30
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %3) #5, !dbg !30
  br label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4, !dbg !31, !tbaa !22
  %idxprom = sext i32 %4 to i64, !dbg !33
  %arrayidx = getelementptr inbounds [64 x i32], [64 x i32]* %var, i64 0, i64 %idxprom, !dbg !33
  store i32 0, i32* %arrayidx, align 4, !dbg !34, !tbaa !22
  br label %for.inc, !dbg !35

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4, !dbg !36, !tbaa !22
  %inc = add nsw i32 %5, 1, !dbg !36
  store i32 %inc, i32* %i, align 4, !dbg !36, !tbaa !22
  br label %for.cond, !dbg !30, !llvm.loop !37

for.end:                                          ; preds = %for.cond.cleanup
  call void @__omp_offloading_1030a_2160966_main_l30([64 x i32]* %var) #5, !dbg !39
  %arrayidx1 = getelementptr inbounds [64 x i32], [64 x i32]* %var, i64 0, i64 63, !dbg !41
  %6 = load i32, i32* %arrayidx1, align 4, !dbg !41, !tbaa !22
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %6), !dbg !42
  %7 = bitcast [64 x i32]* %var to i8*, !dbg !43
  call void @llvm.lifetime.end.p0i8(i64 256, i8* %7) #5, !dbg !43
  ret i32 0, !dbg !44
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: norecurse nounwind uwtable
define internal void @__omp_offloading_1030a_2160966_main_l30_debug__([64 x i32]* dereferenceable(256) %var) #3 !dbg !45 {
entry:
  %var.addr = alloca [64 x i32]*, align 8
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store [64 x i32]* %var, [64 x i32]** %var.addr, align 8, !tbaa !51
  call void @llvm.dbg.declare(metadata [64 x i32]** %var.addr, metadata !50, metadata !DIExpression()), !dbg !53
  %2 = load [64 x i32]*, [64 x i32]** %var.addr, align 8, !dbg !54, !tbaa !51
  %3 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !54
  store i8* getelementptr inbounds ([78 x i8], [78 x i8]* @1, i32 0, i32 0), i8** %3, align 8, !dbg !54, !tbaa !55
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_teams(%struct.ident_t* %.kmpc_loc.addr, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, [64 x i32]*)* @.omp_outlined..2 to void (i32*, i32*, ...)*), [64 x i32]* %2), !dbg !54
  ret void, !dbg !57
}

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., [64 x i32]* dereferenceable(256) %var) #3 !dbg !58 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %var.addr = alloca [64 x i32]*, align 8
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
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !51
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !66, metadata !DIExpression()), !dbg !75
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !51
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !67, metadata !DIExpression()), !dbg !75
  store [64 x i32]* %var, [64 x i32]** %var.addr, align 8, !tbaa !51
  call void @llvm.dbg.declare(metadata [64 x i32]** %var.addr, metadata !68, metadata !DIExpression()), !dbg !76
  %2 = load [64 x i32]*, [64 x i32]** %var.addr, align 8, !dbg !77, !tbaa !51
  %3 = bitcast i32* %.omp.iv to i8*, !dbg !77
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #5, !dbg !77
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !69, metadata !DIExpression()), !dbg !75
  %4 = bitcast i32* %.omp.comb.lb to i8*, !dbg !77
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #5, !dbg !77
  call void @llvm.dbg.declare(metadata i32* %.omp.comb.lb, metadata !70, metadata !DIExpression()), !dbg !75
  store i32 0, i32* %.omp.comb.lb, align 4, !dbg !78, !tbaa !22
  %5 = bitcast i32* %.omp.comb.ub to i8*, !dbg !77
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #5, !dbg !77
  call void @llvm.dbg.declare(metadata i32* %.omp.comb.ub, metadata !71, metadata !DIExpression()), !dbg !75
  store i32 99, i32* %.omp.comb.ub, align 4, !dbg !78, !tbaa !22
  %6 = bitcast i32* %.omp.stride to i8*, !dbg !77
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #5, !dbg !77
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !72, metadata !DIExpression()), !dbg !75
  store i32 1, i32* %.omp.stride, align 4, !dbg !78, !tbaa !22
  %7 = bitcast i32* %.omp.is_last to i8*, !dbg !77
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #5, !dbg !77
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !73, metadata !DIExpression()), !dbg !75
  store i32 0, i32* %.omp.is_last, align 4, !dbg !78, !tbaa !22
  %8 = bitcast i32* %i to i8*, !dbg !77
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #5, !dbg !77
  call void @llvm.dbg.declare(metadata i32* %i, metadata !74, metadata !DIExpression()), !dbg !75
  %9 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !77
  store i8* getelementptr inbounds ([78 x i8], [78 x i8]* @1, i32 0, i32 0), i8** %9, align 8, !dbg !77, !tbaa !55
  %10 = load i32*, i32** %.global_tid..addr, align 8, !dbg !77
  %11 = load i32, i32* %10, align 4, !dbg !77, !tbaa !22
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %11, i32 92, i32* %.omp.is_last, i32* %.omp.comb.lb, i32* %.omp.comb.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !77
  %12 = load i32, i32* %.omp.comb.ub, align 4, !dbg !78, !tbaa !22
  %cmp = icmp sgt i32 %12, 99, !dbg !78
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !78

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !78

cond.false:                                       ; preds = %entry
  %13 = load i32, i32* %.omp.comb.ub, align 4, !dbg !78, !tbaa !22
  br label %cond.end, !dbg !78

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 99, %cond.true ], [ %13, %cond.false ], !dbg !78
  store i32 %cond, i32* %.omp.comb.ub, align 4, !dbg !78, !tbaa !22
  %14 = load i32, i32* %.omp.comb.lb, align 4, !dbg !78, !tbaa !22
  store i32 %14, i32* %.omp.iv, align 4, !dbg !78, !tbaa !22
  br label %omp.inner.for.cond, !dbg !77

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %15 = load i32, i32* %.omp.iv, align 4, !dbg !78, !tbaa !22
  %16 = load i32, i32* %.omp.comb.ub, align 4, !dbg !78, !tbaa !22
  %cmp1 = icmp sle i32 %15, %16, !dbg !77
  br i1 %cmp1, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !77

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !77

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %17 = load i32, i32* %.omp.comb.lb, align 4, !dbg !79
  %18 = zext i32 %17 to i64, !dbg !79
  %19 = load i32, i32* %.omp.comb.ub, align 4, !dbg !79
  %20 = zext i32 %19 to i64, !dbg !79
  %21 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !79
  store i8* getelementptr inbounds ([78 x i8], [78 x i8]* @1, i32 0, i32 0), i8** %21, align 8, !dbg !79, !tbaa !55
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i64, i64, [64 x i32]*)* @.omp_outlined. to void (i32*, i32*, ...)*), i64 %18, i64 %20, [64 x i32]* %2), !dbg !79
  br label %omp.inner.for.inc, !dbg !80

omp.inner.for.inc:                                ; preds = %omp.inner.for.body
  %22 = load i32, i32* %.omp.iv, align 4, !dbg !78, !tbaa !22
  %23 = load i32, i32* %.omp.stride, align 4, !dbg !78, !tbaa !22
  %add = add nsw i32 %22, %23, !dbg !77
  store i32 %add, i32* %.omp.iv, align 4, !dbg !77, !tbaa !22
  br label %omp.inner.for.cond, !dbg !80, !llvm.loop !82

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !80

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %24 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !80
  store i8* getelementptr inbounds ([78 x i8], [78 x i8]* @1, i32 0, i32 0), i8** %24, align 8, !dbg !80, !tbaa !55
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %11), !dbg !80
  %25 = bitcast i32* %i to i8*, !dbg !80
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %25) #5, !dbg !80
  %26 = bitcast i32* %.omp.is_last to i8*, !dbg !80
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %26) #5, !dbg !80
  %27 = bitcast i32* %.omp.stride to i8*, !dbg !80
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %27) #5, !dbg !80
  %28 = bitcast i32* %.omp.comb.ub to i8*, !dbg !80
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %28) #5, !dbg !80
  %29 = bitcast i32* %.omp.comb.lb to i8*, !dbg !80
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %29) #5, !dbg !80
  %30 = bitcast i32* %.omp.iv to i8*, !dbg !80
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %30) #5, !dbg !80
  ret void, !dbg !84
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__.1(i32* noalias %.global_tid., i32* noalias %.bound_tid., i64 %.previous.lb., i64 %.previous.ub., [64 x i32]* dereferenceable(256) %var) #3 !dbg !85 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %.previous.lb..addr = alloca i64, align 8
  %.previous.ub..addr = alloca i64, align 8
  %var.addr = alloca [64 x i32]*, align 8
  %.omp.iv = alloca i32, align 4
  %tmp = alloca i32, align 4
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %i = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %tmp5 = alloca i32, align 4
  %.omp.iv6 = alloca i32, align 4
  %i7 = alloca i32, align 4
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !51
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !91, metadata !DIExpression()), !dbg !106
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !51
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !92, metadata !DIExpression()), !dbg !106
  store i64 %.previous.lb., i64* %.previous.lb..addr, align 8, !tbaa !107
  call void @llvm.dbg.declare(metadata i64* %.previous.lb..addr, metadata !93, metadata !DIExpression()), !dbg !106
  store i64 %.previous.ub., i64* %.previous.ub..addr, align 8, !tbaa !107
  call void @llvm.dbg.declare(metadata i64* %.previous.ub..addr, metadata !94, metadata !DIExpression()), !dbg !106
  store [64 x i32]* %var, [64 x i32]** %var.addr, align 8, !tbaa !51
  call void @llvm.dbg.declare(metadata [64 x i32]** %var.addr, metadata !95, metadata !DIExpression()), !dbg !109
  %2 = load [64 x i32]*, [64 x i32]** %var.addr, align 8, !dbg !110, !tbaa !51
  %3 = bitcast i32* %.omp.iv to i8*, !dbg !110
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #5, !dbg !110
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !96, metadata !DIExpression()), !dbg !106
  %4 = bitcast i32* %.omp.lb to i8*, !dbg !110
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #5, !dbg !110
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !97, metadata !DIExpression()), !dbg !106
  store i32 0, i32* %.omp.lb, align 4, !dbg !111, !tbaa !22
  %5 = bitcast i32* %.omp.ub to i8*, !dbg !110
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #5, !dbg !110
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !98, metadata !DIExpression()), !dbg !106
  store i32 99, i32* %.omp.ub, align 4, !dbg !111, !tbaa !22
  %6 = load i64, i64* %.previous.lb..addr, align 8, !dbg !110, !tbaa !107
  %conv = trunc i64 %6 to i32, !dbg !110
  %7 = load i64, i64* %.previous.ub..addr, align 8, !dbg !110, !tbaa !107
  %conv1 = trunc i64 %7 to i32, !dbg !110
  store i32 %conv, i32* %.omp.lb, align 4, !dbg !110, !tbaa !22
  store i32 %conv1, i32* %.omp.ub, align 4, !dbg !110, !tbaa !22
  %8 = bitcast i32* %.omp.stride to i8*, !dbg !110
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #5, !dbg !110
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !99, metadata !DIExpression()), !dbg !106
  store i32 1, i32* %.omp.stride, align 4, !dbg !111, !tbaa !22
  %9 = bitcast i32* %.omp.is_last to i8*, !dbg !110
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #5, !dbg !110
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !100, metadata !DIExpression()), !dbg !106
  store i32 0, i32* %.omp.is_last, align 4, !dbg !111, !tbaa !22
  %10 = bitcast i32* %i to i8*, !dbg !110
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #5, !dbg !110
  call void @llvm.dbg.declare(metadata i32* %i, metadata !101, metadata !DIExpression()), !dbg !106
  %11 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !110
  store i8* getelementptr inbounds ([78 x i8], [78 x i8]* @1, i32 0, i32 0), i8** %11, align 8, !dbg !110, !tbaa !55
  %12 = load i32*, i32** %.global_tid..addr, align 8, !dbg !110
  %13 = load i32, i32* %12, align 4, !dbg !110, !tbaa !22
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %13, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !110
  %14 = load i32, i32* %.omp.ub, align 4, !dbg !111, !tbaa !22
  %cmp = icmp sgt i32 %14, 99, !dbg !111
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !111

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !111

cond.false:                                       ; preds = %entry
  %15 = load i32, i32* %.omp.ub, align 4, !dbg !111, !tbaa !22
  br label %cond.end, !dbg !111

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 99, %cond.true ], [ %15, %cond.false ], !dbg !111
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !111, !tbaa !22
  %16 = load i32, i32* %.omp.lb, align 4, !dbg !111, !tbaa !22
  store i32 %16, i32* %.omp.iv, align 4, !dbg !111, !tbaa !22
  br label %omp.inner.for.cond, !dbg !110

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc17, %cond.end
  %17 = load i32, i32* %.omp.iv, align 4, !dbg !111, !tbaa !22
  %18 = load i32, i32* %.omp.ub, align 4, !dbg !111, !tbaa !22
  %cmp3 = icmp sle i32 %17, %18, !dbg !110
  br i1 %cmp3, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !110

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end19, !dbg !110

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %19 = load i32, i32* %.omp.iv, align 4, !dbg !111, !tbaa !22
  %mul = mul nsw i32 %19, 1, !dbg !112
  %add = add nsw i32 0, %mul, !dbg !112
  store i32 %add, i32* %i, align 4, !dbg !112, !tbaa !22
  %20 = bitcast i32* %.omp.iv6 to i8*, !dbg !113
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %20) #5, !dbg !113
  call void @llvm.dbg.declare(metadata i32* %.omp.iv6, metadata !102, metadata !DIExpression()), !dbg !114
  store i32 0, i32* %.omp.iv6, align 4, !dbg !115, !tbaa !22
  %21 = bitcast i32* %i7 to i8*, !dbg !113
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %21) #5, !dbg !113
  call void @llvm.dbg.declare(metadata i32* %i7, metadata !105, metadata !DIExpression()), !dbg !114
  br label %omp.inner.for.cond8, !dbg !113

omp.inner.for.cond8:                              ; preds = %omp.inner.for.inc, %omp.inner.for.body
  %22 = load i32, i32* %.omp.iv6, align 4, !dbg !115, !tbaa !22, !llvm.access.group !116
  %cmp9 = icmp slt i32 %22, 64, !dbg !117
  br i1 %cmp9, label %omp.inner.for.body12, label %omp.inner.for.cond.cleanup11, !dbg !113

omp.inner.for.cond.cleanup11:                     ; preds = %omp.inner.for.cond8
  br label %omp.inner.for.end, !dbg !113

omp.inner.for.body12:                             ; preds = %omp.inner.for.cond8
  %23 = load i32, i32* %.omp.iv6, align 4, !dbg !115, !tbaa !22, !llvm.access.group !116
  %mul13 = mul nsw i32 %23, 1, !dbg !118
  %add14 = add nsw i32 0, %mul13, !dbg !118
  store i32 %add14, i32* %i7, align 4, !dbg !118, !tbaa !22, !llvm.access.group !116
  %24 = load i32, i32* %i7, align 4, !dbg !119, !tbaa !22, !llvm.access.group !116
  %idxprom = sext i32 %24 to i64, !dbg !121
  %arrayidx = getelementptr inbounds [64 x i32], [64 x i32]* %2, i64 0, i64 %idxprom, !dbg !121
  %25 = load i32, i32* %arrayidx, align 4, !dbg !122, !tbaa !22, !llvm.access.group !116
  %inc = add nsw i32 %25, 1, !dbg !122
  store i32 %inc, i32* %arrayidx, align 4, !dbg !122, !tbaa !22, !llvm.access.group !116
  br label %omp.body.continue, !dbg !123

omp.body.continue:                                ; preds = %omp.inner.for.body12
  br label %omp.inner.for.inc, !dbg !124

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %26 = load i32, i32* %.omp.iv6, align 4, !dbg !115, !tbaa !22, !llvm.access.group !116
  %add15 = add nsw i32 %26, 1, !dbg !117
  store i32 %add15, i32* %.omp.iv6, align 4, !dbg !117, !tbaa !22, !llvm.access.group !116
  br label %omp.inner.for.cond8, !dbg !124, !llvm.loop !125

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup11
  store i32 64, i32* %i7, align 4, !dbg !118, !tbaa !22
  %27 = bitcast i32* %i7 to i8*, !dbg !124
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %27) #5, !dbg !124
  %28 = bitcast i32* %.omp.iv6 to i8*, !dbg !124
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %28) #5, !dbg !124
  br label %omp.body.continue16, !dbg !129

omp.body.continue16:                              ; preds = %omp.inner.for.end
  br label %omp.inner.for.inc17, !dbg !130

omp.inner.for.inc17:                              ; preds = %omp.body.continue16
  %29 = load i32, i32* %.omp.iv, align 4, !dbg !111, !tbaa !22
  %add18 = add nsw i32 %29, 1, !dbg !110
  store i32 %add18, i32* %.omp.iv, align 4, !dbg !110, !tbaa !22
  br label %omp.inner.for.cond, !dbg !130, !llvm.loop !131

omp.inner.for.end19:                              ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !130

omp.loop.exit:                                    ; preds = %omp.inner.for.end19
  %30 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !130
  store i8* getelementptr inbounds ([79 x i8], [79 x i8]* @3, i32 0, i32 0), i8** %30, align 8, !dbg !130, !tbaa !55
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %13), !dbg !130
  %31 = bitcast i32* %i to i8*, !dbg !130
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %31) #5, !dbg !130
  %32 = bitcast i32* %.omp.is_last to i8*, !dbg !130
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %32) #5, !dbg !130
  %33 = bitcast i32* %.omp.stride to i8*, !dbg !130
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %33) #5, !dbg !130
  %34 = bitcast i32* %.omp.ub to i8*, !dbg !130
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %34) #5, !dbg !130
  %35 = bitcast i32* %.omp.lb to i8*, !dbg !130
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %35) #5, !dbg !130
  %36 = bitcast i32* %.omp.iv to i8*, !dbg !130
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %36) #5, !dbg !130
  ret void, !dbg !133
}

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i64 %.previous.lb., i64 %.previous.ub., [64 x i32]* dereferenceable(256) %var) #3 !dbg !134 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %.previous.lb..addr = alloca i64, align 8
  %.previous.ub..addr = alloca i64, align 8
  %var.addr = alloca [64 x i32]*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !51
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !136, metadata !DIExpression()), !dbg !141
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !51
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !137, metadata !DIExpression()), !dbg !141
  store i64 %.previous.lb., i64* %.previous.lb..addr, align 8, !tbaa !107
  call void @llvm.dbg.declare(metadata i64* %.previous.lb..addr, metadata !138, metadata !DIExpression()), !dbg !141
  store i64 %.previous.ub., i64* %.previous.ub..addr, align 8, !tbaa !107
  call void @llvm.dbg.declare(metadata i64* %.previous.ub..addr, metadata !139, metadata !DIExpression()), !dbg !141
  store [64 x i32]* %var, [64 x i32]** %var.addr, align 8, !tbaa !51
  call void @llvm.dbg.declare(metadata [64 x i32]** %var.addr, metadata !140, metadata !DIExpression()), !dbg !141
  %0 = load [64 x i32]*, [64 x i32]** %var.addr, align 8, !dbg !142, !tbaa !51
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !142, !tbaa !51
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !142, !tbaa !51
  %3 = load i64, i64* %.previous.lb..addr, align 8, !dbg !142, !tbaa !107
  %4 = load i64, i64* %.previous.ub..addr, align 8, !dbg !142, !tbaa !107
  %5 = load [64 x i32]*, [64 x i32]** %var.addr, align 8, !dbg !142, !tbaa !51
  call void @.omp_outlined._debug__.1(i32* %1, i32* %2, i64 %3, i64 %4, [64 x i32]* %5) #5, !dbg !142
  ret void, !dbg !142
}

declare !callback !143 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined..2(i32* noalias %.global_tid., i32* noalias %.bound_tid., [64 x i32]* dereferenceable(256) %var) #3 !dbg !145 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %var.addr = alloca [64 x i32]*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !51
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !147, metadata !DIExpression()), !dbg !150
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !51
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !148, metadata !DIExpression()), !dbg !150
  store [64 x i32]* %var, [64 x i32]** %var.addr, align 8, !tbaa !51
  call void @llvm.dbg.declare(metadata [64 x i32]** %var.addr, metadata !149, metadata !DIExpression()), !dbg !150
  %0 = load [64 x i32]*, [64 x i32]** %var.addr, align 8, !dbg !151, !tbaa !51
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !151, !tbaa !51
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !151, !tbaa !51
  %3 = load [64 x i32]*, [64 x i32]** %var.addr, align 8, !dbg !151, !tbaa !51
  call void @.omp_outlined._debug__(i32* %1, i32* %2, [64 x i32]* %3) #5, !dbg !151
  ret void, !dbg !151
}

declare !callback !143 dso_local void @__kmpc_fork_teams(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

; Function Attrs: norecurse nounwind uwtable
define internal void @__omp_offloading_1030a_2160966_main_l30([64 x i32]* dereferenceable(256) %var) #3 !dbg !152 {
entry:
  %var.addr = alloca [64 x i32]*, align 8
  store [64 x i32]* %var, [64 x i32]** %var.addr, align 8, !tbaa !51
  call void @llvm.dbg.declare(metadata [64 x i32]** %var.addr, metadata !154, metadata !DIExpression()), !dbg !155
  %0 = load [64 x i32]*, [64 x i32]** %var.addr, align 8, !dbg !156, !tbaa !51
  %1 = load [64 x i32]*, [64 x i32]** %var.addr, align 8, !dbg !156, !tbaa !51
  call void @__omp_offloading_1030a_2160966_main_l30_debug__([64 x i32]* %1) #5, !dbg !156
  ret void, !dbg !156
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
!1 = !DIFile(filename: "integration/dataracebench/DRB164-simdmissinglock1-orig-gpu-yes.c", directory: "/home/brad/Code/OpenRace/tests/data")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.1 "}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 22, type: !8, scopeLine: 22, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !11)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !{!12, !16}
!12 = !DILocalVariable(name: "var", scope: !7, file: !1, line: 24, type: !13)
!13 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 2048, elements: !14)
!14 = !{!15}
!15 = !DISubrange(count: 64)
!16 = !DILocalVariable(name: "i", scope: !17, file: !1, line: 26, type: !10)
!17 = distinct !DILexicalBlock(scope: !7, file: !1, line: 26, column: 3)
!18 = !DILocation(line: 24, column: 3, scope: !7)
!19 = !DILocation(line: 24, column: 7, scope: !7)
!20 = !DILocation(line: 26, column: 7, scope: !17)
!21 = !DILocation(line: 26, column: 11, scope: !17)
!22 = !{!23, !23, i64 0}
!23 = !{!"int", !24, i64 0}
!24 = !{!"omnipotent char", !25, i64 0}
!25 = !{!"Simple C/C++ TBAA"}
!26 = !DILocation(line: 26, column: 16, scope: !27)
!27 = distinct !DILexicalBlock(scope: !17, file: !1, line: 26, column: 3)
!28 = !DILocation(line: 26, column: 17, scope: !27)
!29 = !DILocation(line: 26, column: 3, scope: !17)
!30 = !DILocation(line: 26, column: 3, scope: !27)
!31 = !DILocation(line: 27, column: 9, scope: !32)
!32 = distinct !DILexicalBlock(scope: !27, file: !1, line: 26, column: 25)
!33 = !DILocation(line: 27, column: 5, scope: !32)
!34 = !DILocation(line: 27, column: 11, scope: !32)
!35 = !DILocation(line: 28, column: 3, scope: !32)
!36 = !DILocation(line: 26, column: 22, scope: !27)
!37 = distinct !{!37, !29, !38}
!38 = !DILocation(line: 28, column: 3, scope: !17)
!39 = !DILocation(line: 30, column: 3, scope: !40)
!40 = distinct !DILexicalBlock(scope: !7, file: !1, line: 30, column: 3)
!41 = !DILocation(line: 39, column: 17, scope: !7)
!42 = !DILocation(line: 39, column: 3, scope: !7)
!43 = !DILocation(line: 42, column: 1, scope: !7)
!44 = !DILocation(line: 41, column: 3, scope: !7)
!45 = distinct !DISubprogram(name: "__omp_offloading_1030a_2160966_main_l30_debug__", scope: !1, file: !1, line: 31, type: !46, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !49)
!46 = !DISubroutineType(types: !47)
!47 = !{null, !48}
!48 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !13, size: 64)
!49 = !{!50}
!50 = !DILocalVariable(name: "var", arg: 1, scope: !45, file: !1, line: 24, type: !48)
!51 = !{!52, !52, i64 0}
!52 = !{!"any pointer", !24, i64 0}
!53 = !DILocation(line: 24, column: 7, scope: !45)
!54 = !DILocation(line: 31, column: 3, scope: !45)
!55 = !{!56, !52, i64 16}
!56 = !{!"ident_t", !23, i64 0, !23, i64 4, !23, i64 8, !23, i64 12, !52, i64 16}
!57 = !DILocation(line: 31, column: 44, scope: !45)
!58 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 32, type: !59, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !65)
!59 = !DISubroutineType(types: !60)
!60 = !{null, !61, !61, !48}
!61 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !62)
!62 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !63)
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !64, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!65 = !{!66, !67, !68, !69, !70, !71, !72, !73, !74}
!66 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !58, type: !61, flags: DIFlagArtificial)
!67 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !58, type: !61, flags: DIFlagArtificial)
!68 = !DILocalVariable(name: "var", arg: 3, scope: !58, file: !1, line: 24, type: !48)
!69 = !DILocalVariable(name: ".omp.iv", scope: !58, type: !10, flags: DIFlagArtificial)
!70 = !DILocalVariable(name: ".omp.comb.lb", scope: !58, type: !10, flags: DIFlagArtificial)
!71 = !DILocalVariable(name: ".omp.comb.ub", scope: !58, type: !10, flags: DIFlagArtificial)
!72 = !DILocalVariable(name: ".omp.stride", scope: !58, type: !10, flags: DIFlagArtificial)
!73 = !DILocalVariable(name: ".omp.is_last", scope: !58, type: !10, flags: DIFlagArtificial)
!74 = !DILocalVariable(name: "i", scope: !58, type: !10, flags: DIFlagArtificial)
!75 = !DILocation(line: 0, scope: !58)
!76 = !DILocation(line: 24, column: 7, scope: !58)
!77 = !DILocation(line: 32, column: 3, scope: !58)
!78 = !DILocation(line: 32, column: 8, scope: !58)
!79 = !DILocation(line: 31, column: 3, scope: !58)
!80 = !DILocation(line: 31, column: 44, scope: !81)
!81 = distinct !DILexicalBlock(scope: !58, file: !1, line: 31, column: 3)
!82 = distinct !{!82, !79, !83}
!83 = !DILocation(line: 31, column: 44, scope: !58)
!84 = !DILocation(line: 37, column: 3, scope: !58)
!85 = distinct !DISubprogram(name: ".omp_outlined._debug__.1", scope: !1, file: !1, line: 32, type: !86, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !90)
!86 = !DISubroutineType(types: !87)
!87 = !{null, !61, !61, !88, !88, !48}
!88 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !89)
!89 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!90 = !{!91, !92, !93, !94, !95, !96, !97, !98, !99, !100, !101, !102, !105}
!91 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !85, type: !61, flags: DIFlagArtificial)
!92 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !85, type: !61, flags: DIFlagArtificial)
!93 = !DILocalVariable(name: ".previous.lb.", arg: 3, scope: !85, type: !88, flags: DIFlagArtificial)
!94 = !DILocalVariable(name: ".previous.ub.", arg: 4, scope: !85, type: !88, flags: DIFlagArtificial)
!95 = !DILocalVariable(name: "var", arg: 5, scope: !85, file: !1, line: 24, type: !48)
!96 = !DILocalVariable(name: ".omp.iv", scope: !85, type: !10, flags: DIFlagArtificial)
!97 = !DILocalVariable(name: ".omp.lb", scope: !85, type: !10, flags: DIFlagArtificial)
!98 = !DILocalVariable(name: ".omp.ub", scope: !85, type: !10, flags: DIFlagArtificial)
!99 = !DILocalVariable(name: ".omp.stride", scope: !85, type: !10, flags: DIFlagArtificial)
!100 = !DILocalVariable(name: ".omp.is_last", scope: !85, type: !10, flags: DIFlagArtificial)
!101 = !DILocalVariable(name: "i", scope: !85, type: !10, flags: DIFlagArtificial)
!102 = !DILocalVariable(name: ".omp.iv", scope: !103, type: !10, flags: DIFlagArtificial)
!103 = distinct !DILexicalBlock(scope: !104, file: !1, line: 33, column: 5)
!104 = distinct !DILexicalBlock(scope: !85, file: !1, line: 32, column: 26)
!105 = !DILocalVariable(name: "i", scope: !103, type: !10, flags: DIFlagArtificial)
!106 = !DILocation(line: 0, scope: !85)
!107 = !{!108, !108, i64 0}
!108 = !{!"long", !24, i64 0}
!109 = !DILocation(line: 24, column: 7, scope: !85)
!110 = !DILocation(line: 32, column: 3, scope: !85)
!111 = !DILocation(line: 32, column: 8, scope: !85)
!112 = !DILocation(line: 32, column: 22, scope: !85)
!113 = !DILocation(line: 33, column: 5, scope: !104)
!114 = !DILocation(line: 0, scope: !103)
!115 = !DILocation(line: 34, column: 9, scope: !103)
!116 = distinct !{}
!117 = !DILocation(line: 34, column: 5, scope: !103)
!118 = !DILocation(line: 34, column: 23, scope: !103)
!119 = !DILocation(line: 35, column: 11, scope: !120)
!120 = distinct !DILexicalBlock(scope: !103, file: !1, line: 34, column: 27)
!121 = !DILocation(line: 35, column: 7, scope: !120)
!122 = !DILocation(line: 35, column: 13, scope: !120)
!123 = !DILocation(line: 36, column: 5, scope: !120)
!124 = !DILocation(line: 33, column: 5, scope: !103)
!125 = distinct !{!125, !124, !126, !127, !128}
!126 = !DILocation(line: 33, column: 21, scope: !103)
!127 = !{!"llvm.loop.parallel_accesses", !116}
!128 = !{!"llvm.loop.vectorize.enable", i1 true}
!129 = !DILocation(line: 37, column: 3, scope: !104)
!130 = !DILocation(line: 31, column: 3, scope: !85)
!131 = distinct !{!131, !130, !132}
!132 = !DILocation(line: 31, column: 44, scope: !85)
!133 = !DILocation(line: 37, column: 3, scope: !85)
!134 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 32, type: !86, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !135)
!135 = !{!136, !137, !138, !139, !140}
!136 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !134, type: !61, flags: DIFlagArtificial)
!137 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !134, type: !61, flags: DIFlagArtificial)
!138 = !DILocalVariable(name: ".previous.lb.", arg: 3, scope: !134, type: !88, flags: DIFlagArtificial)
!139 = !DILocalVariable(name: ".previous.ub.", arg: 4, scope: !134, type: !88, flags: DIFlagArtificial)
!140 = !DILocalVariable(name: "var", arg: 5, scope: !134, type: !48, flags: DIFlagArtificial)
!141 = !DILocation(line: 0, scope: !134)
!142 = !DILocation(line: 32, column: 3, scope: !134)
!143 = !{!144}
!144 = !{i64 2, i64 -1, i64 -1, i1 true}
!145 = distinct !DISubprogram(name: ".omp_outlined..2", scope: !1, file: !1, line: 32, type: !59, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !146)
!146 = !{!147, !148, !149}
!147 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !145, type: !61, flags: DIFlagArtificial)
!148 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !145, type: !61, flags: DIFlagArtificial)
!149 = !DILocalVariable(name: "var", arg: 3, scope: !145, type: !48, flags: DIFlagArtificial)
!150 = !DILocation(line: 0, scope: !145)
!151 = !DILocation(line: 32, column: 3, scope: !145)
!152 = distinct !DISubprogram(name: "__omp_offloading_1030a_2160966_main_l30", scope: !1, file: !1, line: 31, type: !46, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !153)
!153 = !{!154}
!154 = !DILocalVariable(name: "var", arg: 1, scope: !152, type: !48, flags: DIFlagArtificial)
!155 = !DILocation(line: 0, scope: !152)
!156 = !DILocation(line: 31, column: 3, scope: !152)
