; ModuleID = 'integration/dataracebench/DRB157-missingorderedsimd-orig-gpu-yes.c'
source_filename = "integration/dataracebench/DRB157-missingorderedsimd-orig-gpu-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 2050, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [80 x i8] c";integration/dataracebench/DRB157-missingorderedsimd-orig-gpu-yes.c;main;31;3;;\00", align 1
@2 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@3 = private unnamed_addr constant [81 x i8] c";integration/dataracebench/DRB157-missingorderedsimd-orig-gpu-yes.c;main;31;60;;\00", align 1
@4 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@.str.3 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main() #0 !dbg !7 {
entry:
  %retval = alloca i32, align 4
  %var = alloca [100 x i32], align 16
  %i = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = bitcast [100 x i32]* %var to i8*, !dbg !18
  call void @llvm.lifetime.start.p0i8(i64 400, i8* %0) #5, !dbg !18
  call void @llvm.dbg.declare(metadata [100 x i32]* %var, metadata !12, metadata !DIExpression()), !dbg !19
  %1 = bitcast i32* %i to i8*, !dbg !20
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #5, !dbg !20
  call void @llvm.dbg.declare(metadata i32* %i, metadata !16, metadata !DIExpression()), !dbg !21
  store i32 0, i32* %i, align 4, !dbg !21, !tbaa !22
  br label %for.cond, !dbg !20

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4, !dbg !26, !tbaa !22
  %cmp = icmp slt i32 %2, 100, !dbg !28
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !dbg !29

for.cond.cleanup:                                 ; preds = %for.cond
  %3 = bitcast i32* %i to i8*, !dbg !30
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %3) #5, !dbg !30
  br label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4, !dbg !31, !tbaa !22
  %idxprom = sext i32 %4 to i64, !dbg !33
  %arrayidx = getelementptr inbounds [100 x i32], [100 x i32]* %var, i64 0, i64 %idxprom, !dbg !33
  store i32 0, i32* %arrayidx, align 4, !dbg !34, !tbaa !22
  br label %for.inc, !dbg !35

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4, !dbg !36, !tbaa !22
  %inc = add nsw i32 %5, 1, !dbg !36
  store i32 %inc, i32* %i, align 4, !dbg !36, !tbaa !22
  br label %for.cond, !dbg !30, !llvm.loop !37

for.end:                                          ; preds = %for.cond.cleanup
  call void @__omp_offloading_1030a_216095f_main_l30([100 x i32]* %var) #5, !dbg !39
  %arrayidx1 = getelementptr inbounds [100 x i32], [100 x i32]* %var, i64 0, i64 97, !dbg !41
  %6 = load i32, i32* %arrayidx1, align 4, !dbg !41, !tbaa !22
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %6), !dbg !42
  %7 = bitcast [100 x i32]* %var to i8*, !dbg !43
  call void @llvm.lifetime.end.p0i8(i64 400, i8* %7) #5, !dbg !43
  ret i32 0, !dbg !44
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: norecurse nounwind uwtable
define internal void @__omp_offloading_1030a_216095f_main_l30_debug__([100 x i32]* dereferenceable(400) %var) #3 !dbg !45 {
entry:
  %var.addr = alloca [100 x i32]*, align 8
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store [100 x i32]* %var, [100 x i32]** %var.addr, align 8, !tbaa !51
  call void @llvm.dbg.declare(metadata [100 x i32]** %var.addr, metadata !50, metadata !DIExpression()), !dbg !53
  %2 = load [100 x i32]*, [100 x i32]** %var.addr, align 8, !dbg !54, !tbaa !51
  %3 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !54
  store i8* getelementptr inbounds ([80 x i8], [80 x i8]* @1, i32 0, i32 0), i8** %3, align 8, !dbg !54, !tbaa !55
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_teams(%struct.ident_t* %.kmpc_loc.addr, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, [100 x i32]*)* @.omp_outlined..2 to void (i32*, i32*, ...)*), [100 x i32]* %2), !dbg !54
  ret void, !dbg !57
}

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., [100 x i32]* dereferenceable(400) %var) #3 !dbg !58 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %var.addr = alloca [100 x i32]*, align 8
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
  store [100 x i32]* %var, [100 x i32]** %var.addr, align 8, !tbaa !51
  call void @llvm.dbg.declare(metadata [100 x i32]** %var.addr, metadata !68, metadata !DIExpression()), !dbg !76
  %2 = load [100 x i32]*, [100 x i32]** %var.addr, align 8, !dbg !77, !tbaa !51
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
  store i32 83, i32* %.omp.comb.ub, align 4, !dbg !78, !tbaa !22
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
  store i8* getelementptr inbounds ([80 x i8], [80 x i8]* @1, i32 0, i32 0), i8** %9, align 8, !dbg !77, !tbaa !55
  %10 = load i32*, i32** %.global_tid..addr, align 8, !dbg !77
  %11 = load i32, i32* %10, align 4, !dbg !77, !tbaa !22
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %11, i32 92, i32* %.omp.is_last, i32* %.omp.comb.lb, i32* %.omp.comb.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !77
  %12 = load i32, i32* %.omp.comb.ub, align 4, !dbg !78, !tbaa !22
  %cmp = icmp sgt i32 %12, 83, !dbg !78
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !78

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !78

cond.false:                                       ; preds = %entry
  %13 = load i32, i32* %.omp.comb.ub, align 4, !dbg !78, !tbaa !22
  br label %cond.end, !dbg !78

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 83, %cond.true ], [ %13, %cond.false ], !dbg !78
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
  store i8* getelementptr inbounds ([80 x i8], [80 x i8]* @1, i32 0, i32 0), i8** %21, align 8, !dbg !79, !tbaa !55
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i64, i64, [100 x i32]*)* @.omp_outlined. to void (i32*, i32*, ...)*), i64 %18, i64 %20, [100 x i32]* %2), !dbg !79
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
  store i8* getelementptr inbounds ([80 x i8], [80 x i8]* @1, i32 0, i32 0), i8** %24, align 8, !dbg !80, !tbaa !55
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %11), !dbg !80
  %25 = load i32, i32* %.omp.is_last, align 4, !dbg !80, !tbaa !22
  %26 = icmp ne i32 %25, 0, !dbg !80
  br i1 %26, label %.omp.final.then, label %.omp.final.done, !dbg !80

.omp.final.then:                                  ; preds = %omp.loop.exit
  store i32 100, i32* %i, align 4, !dbg !86, !tbaa !22
  br label %.omp.final.done, !dbg !80

.omp.final.done:                                  ; preds = %.omp.final.then, %omp.loop.exit
  %27 = bitcast i32* %i to i8*, !dbg !80
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %27) #5, !dbg !80
  %28 = bitcast i32* %.omp.is_last to i8*, !dbg !80
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %28) #5, !dbg !80
  %29 = bitcast i32* %.omp.stride to i8*, !dbg !80
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %29) #5, !dbg !80
  %30 = bitcast i32* %.omp.comb.ub to i8*, !dbg !80
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %30) #5, !dbg !80
  %31 = bitcast i32* %.omp.comb.lb to i8*, !dbg !80
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %31) #5, !dbg !80
  %32 = bitcast i32* %.omp.iv to i8*, !dbg !80
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %32) #5, !dbg !80
  ret void, !dbg !87
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__.1(i32* noalias %.global_tid., i32* noalias %.bound_tid., i64 %.previous.lb., i64 %.previous.ub., [100 x i32]* dereferenceable(400) %var) #3 !dbg !88 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %.previous.lb..addr = alloca i64, align 8
  %.previous.ub..addr = alloca i64, align 8
  %var.addr = alloca [100 x i32]*, align 8
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
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !51
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !94, metadata !DIExpression()), !dbg !105
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !51
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !95, metadata !DIExpression()), !dbg !105
  store i64 %.previous.lb., i64* %.previous.lb..addr, align 8, !tbaa !106
  call void @llvm.dbg.declare(metadata i64* %.previous.lb..addr, metadata !96, metadata !DIExpression()), !dbg !105
  store i64 %.previous.ub., i64* %.previous.ub..addr, align 8, !tbaa !106
  call void @llvm.dbg.declare(metadata i64* %.previous.ub..addr, metadata !97, metadata !DIExpression()), !dbg !105
  store [100 x i32]* %var, [100 x i32]** %var.addr, align 8, !tbaa !51
  call void @llvm.dbg.declare(metadata [100 x i32]** %var.addr, metadata !98, metadata !DIExpression()), !dbg !108
  %2 = load [100 x i32]*, [100 x i32]** %var.addr, align 8, !dbg !109, !tbaa !51
  %3 = bitcast i32* %.omp.iv to i8*, !dbg !109
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #5, !dbg !109
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !99, metadata !DIExpression()), !dbg !105
  %4 = bitcast i32* %.omp.lb to i8*, !dbg !109
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #5, !dbg !109
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !100, metadata !DIExpression()), !dbg !105
  store i32 0, i32* %.omp.lb, align 4, !dbg !110, !tbaa !22
  %5 = bitcast i32* %.omp.ub to i8*, !dbg !109
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #5, !dbg !109
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !101, metadata !DIExpression()), !dbg !105
  store i32 83, i32* %.omp.ub, align 4, !dbg !110, !tbaa !22
  %6 = load i64, i64* %.previous.lb..addr, align 8, !dbg !109, !tbaa !106
  %conv = trunc i64 %6 to i32, !dbg !109
  %7 = load i64, i64* %.previous.ub..addr, align 8, !dbg !109, !tbaa !106
  %conv1 = trunc i64 %7 to i32, !dbg !109
  store i32 %conv, i32* %.omp.lb, align 4, !dbg !109, !tbaa !22
  store i32 %conv1, i32* %.omp.ub, align 4, !dbg !109, !tbaa !22
  %8 = bitcast i32* %.omp.stride to i8*, !dbg !109
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #5, !dbg !109
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !102, metadata !DIExpression()), !dbg !105
  store i32 1, i32* %.omp.stride, align 4, !dbg !110, !tbaa !22
  %9 = bitcast i32* %.omp.is_last to i8*, !dbg !109
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #5, !dbg !109
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !103, metadata !DIExpression()), !dbg !105
  store i32 0, i32* %.omp.is_last, align 4, !dbg !110, !tbaa !22
  %10 = bitcast i32* %i to i8*, !dbg !109
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #5, !dbg !109
  call void @llvm.dbg.declare(metadata i32* %i, metadata !104, metadata !DIExpression()), !dbg !105
  %11 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !109
  store i8* getelementptr inbounds ([80 x i8], [80 x i8]* @1, i32 0, i32 0), i8** %11, align 8, !dbg !109, !tbaa !55
  %12 = load i32*, i32** %.global_tid..addr, align 8, !dbg !109
  %13 = load i32, i32* %12, align 4, !dbg !109, !tbaa !22
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %13, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !109
  %14 = load i32, i32* %.omp.ub, align 4, !dbg !110, !tbaa !22
  %cmp = icmp sgt i32 %14, 83, !dbg !110
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !110

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !110

cond.false:                                       ; preds = %entry
  %15 = load i32, i32* %.omp.ub, align 4, !dbg !110, !tbaa !22
  br label %cond.end, !dbg !110

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 83, %cond.true ], [ %15, %cond.false ], !dbg !110
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !110, !tbaa !22
  %16 = load i32, i32* %.omp.lb, align 4, !dbg !110, !tbaa !22
  store i32 %16, i32* %.omp.iv, align 4, !dbg !110, !tbaa !22
  br label %omp.inner.for.cond, !dbg !109

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %17 = load i32, i32* %.omp.iv, align 4, !dbg !110, !tbaa !22
  %18 = load i32, i32* %.omp.ub, align 4, !dbg !110, !tbaa !22
  %cmp3 = icmp sle i32 %17, %18, !dbg !109
  br i1 %cmp3, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !109

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !109

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %19 = load i32, i32* %.omp.iv, align 4, !dbg !110, !tbaa !22
  %mul = mul nsw i32 %19, 1, !dbg !111
  %add = add nsw i32 16, %mul, !dbg !111
  store i32 %add, i32* %i, align 4, !dbg !111, !tbaa !22
  %20 = load i32, i32* %i, align 4, !dbg !112, !tbaa !22
  %sub = sub nsw i32 %20, 16, !dbg !114
  %idxprom = sext i32 %sub to i64, !dbg !115
  %arrayidx = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 %idxprom, !dbg !115
  %21 = load i32, i32* %arrayidx, align 4, !dbg !115, !tbaa !22
  %add5 = add nsw i32 %21, 1, !dbg !116
  %22 = load i32, i32* %i, align 4, !dbg !117, !tbaa !22
  %idxprom6 = sext i32 %22 to i64, !dbg !118
  %arrayidx7 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 %idxprom6, !dbg !118
  store i32 %add5, i32* %arrayidx7, align 4, !dbg !119, !tbaa !22
  br label %omp.body.continue, !dbg !120

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !121

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %23 = load i32, i32* %.omp.iv, align 4, !dbg !110, !tbaa !22
  %add8 = add nsw i32 %23, 1, !dbg !109
  store i32 %add8, i32* %.omp.iv, align 4, !dbg !109, !tbaa !22
  br label %omp.inner.for.cond, !dbg !121, !llvm.loop !122

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !121

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %24 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !121
  store i8* getelementptr inbounds ([81 x i8], [81 x i8]* @3, i32 0, i32 0), i8** %24, align 8, !dbg !121, !tbaa !55
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %13), !dbg !121
  %25 = load i32, i32* %.omp.is_last, align 4, !dbg !121, !tbaa !22
  %26 = icmp ne i32 %25, 0, !dbg !121
  br i1 %26, label %.omp.final.then, label %.omp.final.done, !dbg !121

.omp.final.then:                                  ; preds = %omp.loop.exit
  store i32 100, i32* %i, align 4, !dbg !111, !tbaa !22
  br label %.omp.final.done, !dbg !121

.omp.final.done:                                  ; preds = %.omp.final.then, %omp.loop.exit
  %27 = bitcast i32* %i to i8*, !dbg !121
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %27) #5, !dbg !121
  %28 = bitcast i32* %.omp.is_last to i8*, !dbg !121
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %28) #5, !dbg !121
  %29 = bitcast i32* %.omp.stride to i8*, !dbg !121
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %29) #5, !dbg !121
  %30 = bitcast i32* %.omp.ub to i8*, !dbg !121
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %30) #5, !dbg !121
  %31 = bitcast i32* %.omp.lb to i8*, !dbg !121
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %31) #5, !dbg !121
  %32 = bitcast i32* %.omp.iv to i8*, !dbg !121
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %32) #5, !dbg !121
  ret void, !dbg !124
}

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i64 %.previous.lb., i64 %.previous.ub., [100 x i32]* dereferenceable(400) %var) #3 !dbg !125 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %.previous.lb..addr = alloca i64, align 8
  %.previous.ub..addr = alloca i64, align 8
  %var.addr = alloca [100 x i32]*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !51
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !127, metadata !DIExpression()), !dbg !132
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !51
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !128, metadata !DIExpression()), !dbg !132
  store i64 %.previous.lb., i64* %.previous.lb..addr, align 8, !tbaa !106
  call void @llvm.dbg.declare(metadata i64* %.previous.lb..addr, metadata !129, metadata !DIExpression()), !dbg !132
  store i64 %.previous.ub., i64* %.previous.ub..addr, align 8, !tbaa !106
  call void @llvm.dbg.declare(metadata i64* %.previous.ub..addr, metadata !130, metadata !DIExpression()), !dbg !132
  store [100 x i32]* %var, [100 x i32]** %var.addr, align 8, !tbaa !51
  call void @llvm.dbg.declare(metadata [100 x i32]** %var.addr, metadata !131, metadata !DIExpression()), !dbg !132
  %0 = load [100 x i32]*, [100 x i32]** %var.addr, align 8, !dbg !133, !tbaa !51
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !133, !tbaa !51
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !133, !tbaa !51
  %3 = load i64, i64* %.previous.lb..addr, align 8, !dbg !133, !tbaa !106
  %4 = load i64, i64* %.previous.ub..addr, align 8, !dbg !133, !tbaa !106
  %5 = load [100 x i32]*, [100 x i32]** %var.addr, align 8, !dbg !133, !tbaa !51
  call void @.omp_outlined._debug__.1(i32* %1, i32* %2, i64 %3, i64 %4, [100 x i32]* %5) #5, !dbg !133
  ret void, !dbg !133
}

declare !callback !134 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined..2(i32* noalias %.global_tid., i32* noalias %.bound_tid., [100 x i32]* dereferenceable(400) %var) #3 !dbg !136 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %var.addr = alloca [100 x i32]*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !51
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !138, metadata !DIExpression()), !dbg !141
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !51
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !139, metadata !DIExpression()), !dbg !141
  store [100 x i32]* %var, [100 x i32]** %var.addr, align 8, !tbaa !51
  call void @llvm.dbg.declare(metadata [100 x i32]** %var.addr, metadata !140, metadata !DIExpression()), !dbg !141
  %0 = load [100 x i32]*, [100 x i32]** %var.addr, align 8, !dbg !142, !tbaa !51
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !142, !tbaa !51
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !142, !tbaa !51
  %3 = load [100 x i32]*, [100 x i32]** %var.addr, align 8, !dbg !142, !tbaa !51
  call void @.omp_outlined._debug__(i32* %1, i32* %2, [100 x i32]* %3) #5, !dbg !142
  ret void, !dbg !142
}

declare !callback !134 dso_local void @__kmpc_fork_teams(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

; Function Attrs: norecurse nounwind uwtable
define internal void @__omp_offloading_1030a_216095f_main_l30([100 x i32]* dereferenceable(400) %var) #3 !dbg !143 {
entry:
  %var.addr = alloca [100 x i32]*, align 8
  store [100 x i32]* %var, [100 x i32]** %var.addr, align 8, !tbaa !51
  call void @llvm.dbg.declare(metadata [100 x i32]** %var.addr, metadata !145, metadata !DIExpression()), !dbg !146
  %0 = load [100 x i32]*, [100 x i32]** %var.addr, align 8, !dbg !147, !tbaa !51
  %1 = load [100 x i32]*, [100 x i32]** %var.addr, align 8, !dbg !147, !tbaa !51
  call void @__omp_offloading_1030a_216095f_main_l30_debug__([100 x i32]* %1) #5, !dbg !147
  ret void, !dbg !147
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
!1 = !DIFile(filename: "integration/dataracebench/DRB157-missingorderedsimd-orig-gpu-yes.c", directory: "/home/brad/Code/OpenRace/tests/data")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.1 "}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 23, type: !8, scopeLine: 23, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !11)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !{!12, !16}
!12 = !DILocalVariable(name: "var", scope: !7, file: !1, line: 24, type: !13)
!13 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 3200, elements: !14)
!14 = !{!15}
!15 = !DISubrange(count: 100)
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
!41 = !DILocation(line: 36, column: 17, scope: !7)
!42 = !DILocation(line: 36, column: 3, scope: !7)
!43 = !DILocation(line: 39, column: 1, scope: !7)
!44 = !DILocation(line: 38, column: 3, scope: !7)
!45 = distinct !DISubprogram(name: "__omp_offloading_1030a_216095f_main_l30_debug__", scope: !1, file: !1, line: 31, type: !46, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !49)
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
!57 = !DILocation(line: 31, column: 60, scope: !45)
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
!80 = !DILocation(line: 31, column: 60, scope: !81)
!81 = distinct !DILexicalBlock(scope: !58, file: !1, line: 31, column: 3)
!82 = distinct !{!82, !79, !83, !84, !85}
!83 = !DILocation(line: 31, column: 60, scope: !58)
!84 = !{!"llvm.loop.vectorize.width", i32 16}
!85 = !{!"llvm.loop.vectorize.enable", i1 true}
!86 = !DILocation(line: 32, column: 22, scope: !58)
!87 = !DILocation(line: 34, column: 3, scope: !58)
!88 = distinct !DISubprogram(name: ".omp_outlined._debug__.1", scope: !1, file: !1, line: 32, type: !89, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !93)
!89 = !DISubroutineType(types: !90)
!90 = !{null, !61, !61, !91, !91, !48}
!91 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !92)
!92 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!93 = !{!94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104}
!94 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !88, type: !61, flags: DIFlagArtificial)
!95 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !88, type: !61, flags: DIFlagArtificial)
!96 = !DILocalVariable(name: ".previous.lb.", arg: 3, scope: !88, type: !91, flags: DIFlagArtificial)
!97 = !DILocalVariable(name: ".previous.ub.", arg: 4, scope: !88, type: !91, flags: DIFlagArtificial)
!98 = !DILocalVariable(name: "var", arg: 5, scope: !88, file: !1, line: 24, type: !48)
!99 = !DILocalVariable(name: ".omp.iv", scope: !88, type: !10, flags: DIFlagArtificial)
!100 = !DILocalVariable(name: ".omp.lb", scope: !88, type: !10, flags: DIFlagArtificial)
!101 = !DILocalVariable(name: ".omp.ub", scope: !88, type: !10, flags: DIFlagArtificial)
!102 = !DILocalVariable(name: ".omp.stride", scope: !88, type: !10, flags: DIFlagArtificial)
!103 = !DILocalVariable(name: ".omp.is_last", scope: !88, type: !10, flags: DIFlagArtificial)
!104 = !DILocalVariable(name: "i", scope: !88, type: !10, flags: DIFlagArtificial)
!105 = !DILocation(line: 0, scope: !88)
!106 = !{!107, !107, i64 0}
!107 = !{!"long", !24, i64 0}
!108 = !DILocation(line: 24, column: 7, scope: !88)
!109 = !DILocation(line: 32, column: 3, scope: !88)
!110 = !DILocation(line: 32, column: 8, scope: !88)
!111 = !DILocation(line: 32, column: 22, scope: !88)
!112 = !DILocation(line: 33, column: 16, scope: !113)
!113 = distinct !DILexicalBlock(scope: !88, file: !1, line: 32, column: 26)
!114 = !DILocation(line: 33, column: 17, scope: !113)
!115 = !DILocation(line: 33, column: 12, scope: !113)
!116 = !DILocation(line: 33, column: 20, scope: !113)
!117 = !DILocation(line: 33, column: 9, scope: !113)
!118 = !DILocation(line: 33, column: 5, scope: !113)
!119 = !DILocation(line: 33, column: 11, scope: !113)
!120 = !DILocation(line: 34, column: 3, scope: !113)
!121 = !DILocation(line: 31, column: 3, scope: !88)
!122 = distinct !{!122, !121, !123, !84, !85}
!123 = !DILocation(line: 31, column: 60, scope: !88)
!124 = !DILocation(line: 34, column: 3, scope: !88)
!125 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 32, type: !89, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !126)
!126 = !{!127, !128, !129, !130, !131}
!127 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !125, type: !61, flags: DIFlagArtificial)
!128 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !125, type: !61, flags: DIFlagArtificial)
!129 = !DILocalVariable(name: ".previous.lb.", arg: 3, scope: !125, type: !91, flags: DIFlagArtificial)
!130 = !DILocalVariable(name: ".previous.ub.", arg: 4, scope: !125, type: !91, flags: DIFlagArtificial)
!131 = !DILocalVariable(name: "var", arg: 5, scope: !125, type: !48, flags: DIFlagArtificial)
!132 = !DILocation(line: 0, scope: !125)
!133 = !DILocation(line: 32, column: 3, scope: !125)
!134 = !{!135}
!135 = !{i64 2, i64 -1, i64 -1, i1 true}
!136 = distinct !DISubprogram(name: ".omp_outlined..2", scope: !1, file: !1, line: 32, type: !59, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !137)
!137 = !{!138, !139, !140}
!138 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !136, type: !61, flags: DIFlagArtificial)
!139 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !136, type: !61, flags: DIFlagArtificial)
!140 = !DILocalVariable(name: "var", arg: 3, scope: !136, type: !48, flags: DIFlagArtificial)
!141 = !DILocation(line: 0, scope: !136)
!142 = !DILocation(line: 32, column: 3, scope: !136)
!143 = distinct !DISubprogram(name: "__omp_offloading_1030a_216095f_main_l30", scope: !1, file: !1, line: 31, type: !46, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!144 = !{!145}
!145 = !DILocalVariable(name: "var", arg: 1, scope: !143, type: !48, flags: DIFlagArtificial)
!146 = !DILocation(line: 0, scope: !143)
!147 = !DILocation(line: 31, column: 3, scope: !143)
