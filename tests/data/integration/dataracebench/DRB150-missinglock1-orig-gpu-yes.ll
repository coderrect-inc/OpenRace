; ModuleID = 'integration/dataracebench/DRB150-missinglock1-orig-gpu-yes.c'
source_filename = "integration/dataracebench/DRB150-missinglock1-orig-gpu-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }
%struct.omp_lock_t = type { i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 2050, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [74 x i8] c";integration/dataracebench/DRB150-missinglock1-orig-gpu-yes.c;main;27;3;;\00", align 1
@2 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@3 = private unnamed_addr constant [75 x i8] c";integration/dataracebench/DRB150-missinglock1-orig-gpu-yes.c;main;27;44;;\00", align 1
@4 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@.str.3 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main() #0 !dbg !20 {
entry:
  %retval = alloca i32, align 4
  %lck = alloca %struct.omp_lock_t, align 8
  %var = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = bitcast %struct.omp_lock_t* %lck to i8*, !dbg !29
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #5, !dbg !29
  call void @llvm.dbg.declare(metadata %struct.omp_lock_t* %lck, metadata !25, metadata !DIExpression()), !dbg !30
  %1 = bitcast i32* %var to i8*, !dbg !31
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #5, !dbg !31
  call void @llvm.dbg.declare(metadata i32* %var, metadata !27, metadata !DIExpression()), !dbg !32
  store i32 0, i32* %var, align 4, !dbg !32, !tbaa !33
  %2 = bitcast i32* %i to i8*, !dbg !31
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #5, !dbg !31
  call void @llvm.dbg.declare(metadata i32* %i, metadata !28, metadata !DIExpression()), !dbg !37
  call void @omp_init_lock(%struct.omp_lock_t* %lck), !dbg !38
  call void @__omp_offloading_1030a_2160958_main_l26(%struct.omp_lock_t* %lck, i32* %var) #5, !dbg !39
  call void @omp_destroy_lock(%struct.omp_lock_t* %lck), !dbg !41
  %3 = load i32, i32* %var, align 4, !dbg !42, !tbaa !33
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %3), !dbg !43
  %4 = bitcast i32* %i to i8*, !dbg !44
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %4) #5, !dbg !44
  %5 = bitcast i32* %var to i8*, !dbg !44
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %5) #5, !dbg !44
  %6 = bitcast %struct.omp_lock_t* %lck to i8*, !dbg !44
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %6) #5, !dbg !44
  ret i32 0, !dbg !45
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

declare !dbg !4 dso_local void @omp_init_lock(%struct.omp_lock_t*) #3

; Function Attrs: norecurse nounwind uwtable
define internal void @__omp_offloading_1030a_2160958_main_l26_debug__(%struct.omp_lock_t* dereferenceable(8) %lck, i32* dereferenceable(4) %var) #4 !dbg !46 {
entry:
  %lck.addr = alloca %struct.omp_lock_t*, align 8
  %var.addr = alloca i32*, align 8
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store %struct.omp_lock_t* %lck, %struct.omp_lock_t** %lck.addr, align 8, !tbaa !54
  call void @llvm.dbg.declare(metadata %struct.omp_lock_t** %lck.addr, metadata !52, metadata !DIExpression()), !dbg !56
  store i32* %var, i32** %var.addr, align 8, !tbaa !54
  call void @llvm.dbg.declare(metadata i32** %var.addr, metadata !53, metadata !DIExpression()), !dbg !57
  %2 = load %struct.omp_lock_t*, %struct.omp_lock_t** %lck.addr, align 8, !dbg !58, !tbaa !54
  %3 = load i32*, i32** %var.addr, align 8, !dbg !58, !tbaa !54
  %4 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !58
  store i8* getelementptr inbounds ([74 x i8], [74 x i8]* @1, i32 0, i32 0), i8** %4, align 8, !dbg !58, !tbaa !59
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_teams(%struct.ident_t* %.kmpc_loc.addr, i32 2, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, %struct.omp_lock_t*, i32*)* @.omp_outlined..2 to void (i32*, i32*, ...)*), %struct.omp_lock_t* %2, i32* %3), !dbg !58
  ret void, !dbg !61
}

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., %struct.omp_lock_t* dereferenceable(8) %lck, i32* dereferenceable(4) %var) #4 !dbg !62 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %lck.addr = alloca %struct.omp_lock_t*, align 8
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
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !54
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !70, metadata !DIExpression()), !dbg !80
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !54
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !71, metadata !DIExpression()), !dbg !80
  store %struct.omp_lock_t* %lck, %struct.omp_lock_t** %lck.addr, align 8, !tbaa !54
  call void @llvm.dbg.declare(metadata %struct.omp_lock_t** %lck.addr, metadata !72, metadata !DIExpression()), !dbg !81
  store i32* %var, i32** %var.addr, align 8, !tbaa !54
  call void @llvm.dbg.declare(metadata i32** %var.addr, metadata !73, metadata !DIExpression()), !dbg !82
  %2 = load %struct.omp_lock_t*, %struct.omp_lock_t** %lck.addr, align 8, !dbg !83, !tbaa !54
  %3 = load i32*, i32** %var.addr, align 8, !dbg !83, !tbaa !54
  %4 = bitcast i32* %.omp.iv to i8*, !dbg !83
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #5, !dbg !83
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !74, metadata !DIExpression()), !dbg !80
  %5 = bitcast i32* %.omp.comb.lb to i8*, !dbg !83
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #5, !dbg !83
  call void @llvm.dbg.declare(metadata i32* %.omp.comb.lb, metadata !75, metadata !DIExpression()), !dbg !80
  store i32 0, i32* %.omp.comb.lb, align 4, !dbg !84, !tbaa !33
  %6 = bitcast i32* %.omp.comb.ub to i8*, !dbg !83
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #5, !dbg !83
  call void @llvm.dbg.declare(metadata i32* %.omp.comb.ub, metadata !76, metadata !DIExpression()), !dbg !80
  store i32 99, i32* %.omp.comb.ub, align 4, !dbg !84, !tbaa !33
  %7 = bitcast i32* %.omp.stride to i8*, !dbg !83
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #5, !dbg !83
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !77, metadata !DIExpression()), !dbg !80
  store i32 1, i32* %.omp.stride, align 4, !dbg !84, !tbaa !33
  %8 = bitcast i32* %.omp.is_last to i8*, !dbg !83
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #5, !dbg !83
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !78, metadata !DIExpression()), !dbg !80
  store i32 0, i32* %.omp.is_last, align 4, !dbg !84, !tbaa !33
  %9 = bitcast i32* %i to i8*, !dbg !83
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #5, !dbg !83
  call void @llvm.dbg.declare(metadata i32* %i, metadata !79, metadata !DIExpression()), !dbg !80
  %10 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !83
  store i8* getelementptr inbounds ([74 x i8], [74 x i8]* @1, i32 0, i32 0), i8** %10, align 8, !dbg !83, !tbaa !59
  %11 = load i32*, i32** %.global_tid..addr, align 8, !dbg !83
  %12 = load i32, i32* %11, align 4, !dbg !83, !tbaa !33
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %12, i32 92, i32* %.omp.is_last, i32* %.omp.comb.lb, i32* %.omp.comb.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !83
  %13 = load i32, i32* %.omp.comb.ub, align 4, !dbg !84, !tbaa !33
  %cmp = icmp sgt i32 %13, 99, !dbg !84
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !84

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !84

cond.false:                                       ; preds = %entry
  %14 = load i32, i32* %.omp.comb.ub, align 4, !dbg !84, !tbaa !33
  br label %cond.end, !dbg !84

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 99, %cond.true ], [ %14, %cond.false ], !dbg !84
  store i32 %cond, i32* %.omp.comb.ub, align 4, !dbg !84, !tbaa !33
  %15 = load i32, i32* %.omp.comb.lb, align 4, !dbg !84, !tbaa !33
  store i32 %15, i32* %.omp.iv, align 4, !dbg !84, !tbaa !33
  br label %omp.inner.for.cond, !dbg !83

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %16 = load i32, i32* %.omp.iv, align 4, !dbg !84, !tbaa !33
  %17 = load i32, i32* %.omp.comb.ub, align 4, !dbg !84, !tbaa !33
  %cmp1 = icmp sle i32 %16, %17, !dbg !83
  br i1 %cmp1, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !83

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !83

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %18 = load i32, i32* %.omp.comb.lb, align 4, !dbg !85
  %19 = zext i32 %18 to i64, !dbg !85
  %20 = load i32, i32* %.omp.comb.ub, align 4, !dbg !85
  %21 = zext i32 %20 to i64, !dbg !85
  %22 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !85
  store i8* getelementptr inbounds ([74 x i8], [74 x i8]* @1, i32 0, i32 0), i8** %22, align 8, !dbg !85, !tbaa !59
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 4, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i64, i64, %struct.omp_lock_t*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i64 %19, i64 %21, %struct.omp_lock_t* %2, i32* %3), !dbg !85
  br label %omp.inner.for.inc, !dbg !86

omp.inner.for.inc:                                ; preds = %omp.inner.for.body
  %23 = load i32, i32* %.omp.iv, align 4, !dbg !84, !tbaa !33
  %24 = load i32, i32* %.omp.stride, align 4, !dbg !84, !tbaa !33
  %add = add nsw i32 %23, %24, !dbg !83
  store i32 %add, i32* %.omp.iv, align 4, !dbg !83, !tbaa !33
  br label %omp.inner.for.cond, !dbg !86, !llvm.loop !88

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !86

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %25 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !86
  store i8* getelementptr inbounds ([74 x i8], [74 x i8]* @1, i32 0, i32 0), i8** %25, align 8, !dbg !86, !tbaa !59
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %12), !dbg !86
  %26 = bitcast i32* %i to i8*, !dbg !86
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %26) #5, !dbg !86
  %27 = bitcast i32* %.omp.is_last to i8*, !dbg !86
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %27) #5, !dbg !86
  %28 = bitcast i32* %.omp.stride to i8*, !dbg !86
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %28) #5, !dbg !86
  %29 = bitcast i32* %.omp.comb.ub to i8*, !dbg !86
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %29) #5, !dbg !86
  %30 = bitcast i32* %.omp.comb.lb to i8*, !dbg !86
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %30) #5, !dbg !86
  %31 = bitcast i32* %.omp.iv to i8*, !dbg !86
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %31) #5, !dbg !86
  ret void, !dbg !90
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__.1(i32* noalias %.global_tid., i32* noalias %.bound_tid., i64 %.previous.lb., i64 %.previous.ub., %struct.omp_lock_t* dereferenceable(8) %lck, i32* dereferenceable(4) %var) #4 !dbg !91 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %.previous.lb..addr = alloca i64, align 8
  %.previous.ub..addr = alloca i64, align 8
  %lck.addr = alloca %struct.omp_lock_t*, align 8
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
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !54
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !97, metadata !DIExpression()), !dbg !109
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !54
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !98, metadata !DIExpression()), !dbg !109
  store i64 %.previous.lb., i64* %.previous.lb..addr, align 8, !tbaa !110
  call void @llvm.dbg.declare(metadata i64* %.previous.lb..addr, metadata !99, metadata !DIExpression()), !dbg !109
  store i64 %.previous.ub., i64* %.previous.ub..addr, align 8, !tbaa !110
  call void @llvm.dbg.declare(metadata i64* %.previous.ub..addr, metadata !100, metadata !DIExpression()), !dbg !109
  store %struct.omp_lock_t* %lck, %struct.omp_lock_t** %lck.addr, align 8, !tbaa !54
  call void @llvm.dbg.declare(metadata %struct.omp_lock_t** %lck.addr, metadata !101, metadata !DIExpression()), !dbg !112
  store i32* %var, i32** %var.addr, align 8, !tbaa !54
  call void @llvm.dbg.declare(metadata i32** %var.addr, metadata !102, metadata !DIExpression()), !dbg !113
  %2 = load %struct.omp_lock_t*, %struct.omp_lock_t** %lck.addr, align 8, !dbg !114, !tbaa !54
  %3 = load i32*, i32** %var.addr, align 8, !dbg !114, !tbaa !54
  %4 = bitcast i32* %.omp.iv to i8*, !dbg !114
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #5, !dbg !114
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !103, metadata !DIExpression()), !dbg !109
  %5 = bitcast i32* %.omp.lb to i8*, !dbg !114
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #5, !dbg !114
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !104, metadata !DIExpression()), !dbg !109
  store i32 0, i32* %.omp.lb, align 4, !dbg !115, !tbaa !33
  %6 = bitcast i32* %.omp.ub to i8*, !dbg !114
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #5, !dbg !114
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !105, metadata !DIExpression()), !dbg !109
  store i32 99, i32* %.omp.ub, align 4, !dbg !115, !tbaa !33
  %7 = load i64, i64* %.previous.lb..addr, align 8, !dbg !114, !tbaa !110
  %conv = trunc i64 %7 to i32, !dbg !114
  %8 = load i64, i64* %.previous.ub..addr, align 8, !dbg !114, !tbaa !110
  %conv1 = trunc i64 %8 to i32, !dbg !114
  store i32 %conv, i32* %.omp.lb, align 4, !dbg !114, !tbaa !33
  store i32 %conv1, i32* %.omp.ub, align 4, !dbg !114, !tbaa !33
  %9 = bitcast i32* %.omp.stride to i8*, !dbg !114
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #5, !dbg !114
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !106, metadata !DIExpression()), !dbg !109
  store i32 1, i32* %.omp.stride, align 4, !dbg !115, !tbaa !33
  %10 = bitcast i32* %.omp.is_last to i8*, !dbg !114
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #5, !dbg !114
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !107, metadata !DIExpression()), !dbg !109
  store i32 0, i32* %.omp.is_last, align 4, !dbg !115, !tbaa !33
  %11 = bitcast i32* %i to i8*, !dbg !114
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #5, !dbg !114
  call void @llvm.dbg.declare(metadata i32* %i, metadata !108, metadata !DIExpression()), !dbg !109
  %12 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !114
  store i8* getelementptr inbounds ([74 x i8], [74 x i8]* @1, i32 0, i32 0), i8** %12, align 8, !dbg !114, !tbaa !59
  %13 = load i32*, i32** %.global_tid..addr, align 8, !dbg !114
  %14 = load i32, i32* %13, align 4, !dbg !114, !tbaa !33
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %14, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !114
  %15 = load i32, i32* %.omp.ub, align 4, !dbg !115, !tbaa !33
  %cmp = icmp sgt i32 %15, 99, !dbg !115
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !115

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !115

cond.false:                                       ; preds = %entry
  %16 = load i32, i32* %.omp.ub, align 4, !dbg !115, !tbaa !33
  br label %cond.end, !dbg !115

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 99, %cond.true ], [ %16, %cond.false ], !dbg !115
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !115, !tbaa !33
  %17 = load i32, i32* %.omp.lb, align 4, !dbg !115, !tbaa !33
  store i32 %17, i32* %.omp.iv, align 4, !dbg !115, !tbaa !33
  br label %omp.inner.for.cond, !dbg !114

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %18 = load i32, i32* %.omp.iv, align 4, !dbg !115, !tbaa !33
  %19 = load i32, i32* %.omp.ub, align 4, !dbg !115, !tbaa !33
  %cmp3 = icmp sle i32 %18, %19, !dbg !114
  br i1 %cmp3, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !114

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !114

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %20 = load i32, i32* %.omp.iv, align 4, !dbg !115, !tbaa !33
  %mul = mul nsw i32 %20, 1, !dbg !116
  %add = add nsw i32 0, %mul, !dbg !116
  store i32 %add, i32* %i, align 4, !dbg !116, !tbaa !33
  call void @omp_set_lock(%struct.omp_lock_t* %2), !dbg !117
  %21 = load i32, i32* %3, align 4, !dbg !119, !tbaa !33
  %inc = add nsw i32 %21, 1, !dbg !119
  store i32 %inc, i32* %3, align 4, !dbg !119, !tbaa !33
  call void @omp_unset_lock(%struct.omp_lock_t* %2), !dbg !120
  br label %omp.body.continue, !dbg !121

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !122

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %22 = load i32, i32* %.omp.iv, align 4, !dbg !115, !tbaa !33
  %add5 = add nsw i32 %22, 1, !dbg !114
  store i32 %add5, i32* %.omp.iv, align 4, !dbg !114, !tbaa !33
  br label %omp.inner.for.cond, !dbg !122, !llvm.loop !123

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !122

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %23 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !122
  store i8* getelementptr inbounds ([75 x i8], [75 x i8]* @3, i32 0, i32 0), i8** %23, align 8, !dbg !122, !tbaa !59
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %14), !dbg !122
  %24 = bitcast i32* %i to i8*, !dbg !122
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %24) #5, !dbg !122
  %25 = bitcast i32* %.omp.is_last to i8*, !dbg !122
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %25) #5, !dbg !122
  %26 = bitcast i32* %.omp.stride to i8*, !dbg !122
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %26) #5, !dbg !122
  %27 = bitcast i32* %.omp.ub to i8*, !dbg !122
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %27) #5, !dbg !122
  %28 = bitcast i32* %.omp.lb to i8*, !dbg !122
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %28) #5, !dbg !122
  %29 = bitcast i32* %.omp.iv to i8*, !dbg !122
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %29) #5, !dbg !122
  ret void, !dbg !125
}

declare !dbg !13 dso_local void @omp_set_lock(%struct.omp_lock_t*) #3

declare !dbg !14 dso_local void @omp_unset_lock(%struct.omp_lock_t*) #3

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i64 %.previous.lb., i64 %.previous.ub., %struct.omp_lock_t* dereferenceable(8) %lck, i32* dereferenceable(4) %var) #4 !dbg !126 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %.previous.lb..addr = alloca i64, align 8
  %.previous.ub..addr = alloca i64, align 8
  %lck.addr = alloca %struct.omp_lock_t*, align 8
  %var.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !54
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !128, metadata !DIExpression()), !dbg !134
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !54
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !129, metadata !DIExpression()), !dbg !134
  store i64 %.previous.lb., i64* %.previous.lb..addr, align 8, !tbaa !110
  call void @llvm.dbg.declare(metadata i64* %.previous.lb..addr, metadata !130, metadata !DIExpression()), !dbg !134
  store i64 %.previous.ub., i64* %.previous.ub..addr, align 8, !tbaa !110
  call void @llvm.dbg.declare(metadata i64* %.previous.ub..addr, metadata !131, metadata !DIExpression()), !dbg !134
  store %struct.omp_lock_t* %lck, %struct.omp_lock_t** %lck.addr, align 8, !tbaa !54
  call void @llvm.dbg.declare(metadata %struct.omp_lock_t** %lck.addr, metadata !132, metadata !DIExpression()), !dbg !134
  store i32* %var, i32** %var.addr, align 8, !tbaa !54
  call void @llvm.dbg.declare(metadata i32** %var.addr, metadata !133, metadata !DIExpression()), !dbg !134
  %0 = load %struct.omp_lock_t*, %struct.omp_lock_t** %lck.addr, align 8, !dbg !135, !tbaa !54
  %1 = load i32*, i32** %var.addr, align 8, !dbg !135, !tbaa !54
  %2 = load i32*, i32** %.global_tid..addr, align 8, !dbg !135, !tbaa !54
  %3 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !135, !tbaa !54
  %4 = load i64, i64* %.previous.lb..addr, align 8, !dbg !135, !tbaa !110
  %5 = load i64, i64* %.previous.ub..addr, align 8, !dbg !135, !tbaa !110
  %6 = load %struct.omp_lock_t*, %struct.omp_lock_t** %lck.addr, align 8, !dbg !135, !tbaa !54
  %7 = load i32*, i32** %var.addr, align 8, !dbg !135, !tbaa !54
  call void @.omp_outlined._debug__.1(i32* %2, i32* %3, i64 %4, i64 %5, %struct.omp_lock_t* %6, i32* %7) #5, !dbg !135
  ret void, !dbg !135
}

declare !callback !136 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined..2(i32* noalias %.global_tid., i32* noalias %.bound_tid., %struct.omp_lock_t* dereferenceable(8) %lck, i32* dereferenceable(4) %var) #4 !dbg !138 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %lck.addr = alloca %struct.omp_lock_t*, align 8
  %var.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !54
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !140, metadata !DIExpression()), !dbg !144
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !54
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !141, metadata !DIExpression()), !dbg !144
  store %struct.omp_lock_t* %lck, %struct.omp_lock_t** %lck.addr, align 8, !tbaa !54
  call void @llvm.dbg.declare(metadata %struct.omp_lock_t** %lck.addr, metadata !142, metadata !DIExpression()), !dbg !144
  store i32* %var, i32** %var.addr, align 8, !tbaa !54
  call void @llvm.dbg.declare(metadata i32** %var.addr, metadata !143, metadata !DIExpression()), !dbg !144
  %0 = load %struct.omp_lock_t*, %struct.omp_lock_t** %lck.addr, align 8, !dbg !145, !tbaa !54
  %1 = load i32*, i32** %var.addr, align 8, !dbg !145, !tbaa !54
  %2 = load i32*, i32** %.global_tid..addr, align 8, !dbg !145, !tbaa !54
  %3 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !145, !tbaa !54
  %4 = load %struct.omp_lock_t*, %struct.omp_lock_t** %lck.addr, align 8, !dbg !145, !tbaa !54
  %5 = load i32*, i32** %var.addr, align 8, !dbg !145, !tbaa !54
  call void @.omp_outlined._debug__(i32* %2, i32* %3, %struct.omp_lock_t* %4, i32* %5) #5, !dbg !145
  ret void, !dbg !145
}

declare !callback !136 dso_local void @__kmpc_fork_teams(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

; Function Attrs: norecurse nounwind uwtable
define internal void @__omp_offloading_1030a_2160958_main_l26(%struct.omp_lock_t* dereferenceable(8) %lck, i32* dereferenceable(4) %var) #4 !dbg !146 {
entry:
  %lck.addr = alloca %struct.omp_lock_t*, align 8
  %var.addr = alloca i32*, align 8
  store %struct.omp_lock_t* %lck, %struct.omp_lock_t** %lck.addr, align 8, !tbaa !54
  call void @llvm.dbg.declare(metadata %struct.omp_lock_t** %lck.addr, metadata !148, metadata !DIExpression()), !dbg !150
  store i32* %var, i32** %var.addr, align 8, !tbaa !54
  call void @llvm.dbg.declare(metadata i32** %var.addr, metadata !149, metadata !DIExpression()), !dbg !150
  %0 = load %struct.omp_lock_t*, %struct.omp_lock_t** %lck.addr, align 8, !dbg !151, !tbaa !54
  %1 = load i32*, i32** %var.addr, align 8, !dbg !151, !tbaa !54
  %2 = load %struct.omp_lock_t*, %struct.omp_lock_t** %lck.addr, align 8, !dbg !151, !tbaa !54
  %3 = load i32*, i32** %var.addr, align 8, !dbg !151, !tbaa !54
  call void @__omp_offloading_1030a_2160958_main_l26_debug__(%struct.omp_lock_t* %2, i32* %3) #5, !dbg !151
  ret void, !dbg !151
}

declare !dbg !15 dso_local void @omp_destroy_lock(%struct.omp_lock_t*) #3

declare dso_local i32 @printf(i8*, ...) #3

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!16, !17, !18}
!llvm.ident = !{!19}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "integration/dataracebench/DRB150-missinglock1-orig-gpu-yes.c", directory: "/home/brad/Code/OpenRace/tests/data")
!2 = !{}
!3 = !{!4, !13, !14, !15}
!4 = !DISubprogram(name: "omp_init_lock", scope: !5, file: !5, line: 86, type: !6, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!5 = !DIFile(filename: "/usr/include/omp.h", directory: "")
!6 = !DISubroutineType(types: !7)
!7 = !{null, !8}
!8 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !9, size: 64)
!9 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "omp_lock_t", file: !5, line: 82, size: 64, elements: !10)
!10 = !{!11}
!11 = !DIDerivedType(tag: DW_TAG_member, name: "_lk", scope: !9, file: !5, line: 83, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!13 = !DISubprogram(name: "omp_set_lock", scope: !5, file: !5, line: 87, type: !6, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!14 = !DISubprogram(name: "omp_unset_lock", scope: !5, file: !5, line: 88, type: !6, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!15 = !DISubprogram(name: "omp_destroy_lock", scope: !5, file: !5, line: 89, type: !6, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!16 = !{i32 7, !"Dwarf Version", i32 4}
!17 = !{i32 2, !"Debug Info Version", i32 3}
!18 = !{i32 1, !"wchar_size", i32 4}
!19 = !{!"clang version 10.0.1 "}
!20 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 20, type: !21, scopeLine: 20, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !24)
!21 = !DISubroutineType(types: !22)
!22 = !{!23}
!23 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!24 = !{!25, !27, !28}
!25 = !DILocalVariable(name: "lck", scope: !20, file: !1, line: 22, type: !26)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "omp_lock_t", file: !5, line: 84, baseType: !9)
!27 = !DILocalVariable(name: "var", scope: !20, file: !1, line: 23, type: !23)
!28 = !DILocalVariable(name: "i", scope: !20, file: !1, line: 23, type: !23)
!29 = !DILocation(line: 22, column: 3, scope: !20)
!30 = !DILocation(line: 22, column: 14, scope: !20)
!31 = !DILocation(line: 23, column: 3, scope: !20)
!32 = !DILocation(line: 23, column: 7, scope: !20)
!33 = !{!34, !34, i64 0}
!34 = !{!"int", !35, i64 0}
!35 = !{!"omnipotent char", !36, i64 0}
!36 = !{!"Simple C/C++ TBAA"}
!37 = !DILocation(line: 23, column: 13, scope: !20)
!38 = !DILocation(line: 24, column: 3, scope: !20)
!39 = !DILocation(line: 26, column: 3, scope: !40)
!40 = distinct !DILexicalBlock(scope: !20, file: !1, line: 26, column: 3)
!41 = !DILocation(line: 34, column: 3, scope: !20)
!42 = !DILocation(line: 36, column: 17, scope: !20)
!43 = !DILocation(line: 36, column: 3, scope: !20)
!44 = !DILocation(line: 38, column: 1, scope: !20)
!45 = !DILocation(line: 37, column: 3, scope: !20)
!46 = distinct !DISubprogram(name: "__omp_offloading_1030a_2160958_main_l26_debug__", scope: !1, file: !1, line: 27, type: !47, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !51)
!47 = !DISubroutineType(types: !48)
!48 = !{null, !49, !50}
!49 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !26, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !23, size: 64)
!51 = !{!52, !53}
!52 = !DILocalVariable(name: "lck", arg: 1, scope: !46, file: !1, line: 22, type: !49)
!53 = !DILocalVariable(name: "var", arg: 2, scope: !46, file: !1, line: 23, type: !50)
!54 = !{!55, !55, i64 0}
!55 = !{!"any pointer", !35, i64 0}
!56 = !DILocation(line: 22, column: 14, scope: !46)
!57 = !DILocation(line: 23, column: 7, scope: !46)
!58 = !DILocation(line: 27, column: 3, scope: !46)
!59 = !{!60, !55, i64 16}
!60 = !{!"ident_t", !34, i64 0, !34, i64 4, !34, i64 8, !34, i64 12, !55, i64 16}
!61 = !DILocation(line: 27, column: 44, scope: !46)
!62 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 28, type: !63, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !69)
!63 = !DISubroutineType(types: !64)
!64 = !{null, !65, !65, !49, !50}
!65 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !66)
!66 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !67)
!67 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !68, size: 64)
!68 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !23)
!69 = !{!70, !71, !72, !73, !74, !75, !76, !77, !78, !79}
!70 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !62, type: !65, flags: DIFlagArtificial)
!71 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !62, type: !65, flags: DIFlagArtificial)
!72 = !DILocalVariable(name: "lck", arg: 3, scope: !62, file: !1, line: 22, type: !49)
!73 = !DILocalVariable(name: "var", arg: 4, scope: !62, file: !1, line: 23, type: !50)
!74 = !DILocalVariable(name: ".omp.iv", scope: !62, type: !23, flags: DIFlagArtificial)
!75 = !DILocalVariable(name: ".omp.comb.lb", scope: !62, type: !23, flags: DIFlagArtificial)
!76 = !DILocalVariable(name: ".omp.comb.ub", scope: !62, type: !23, flags: DIFlagArtificial)
!77 = !DILocalVariable(name: ".omp.stride", scope: !62, type: !23, flags: DIFlagArtificial)
!78 = !DILocalVariable(name: ".omp.is_last", scope: !62, type: !23, flags: DIFlagArtificial)
!79 = !DILocalVariable(name: "i", scope: !62, type: !23, flags: DIFlagArtificial)
!80 = !DILocation(line: 0, scope: !62)
!81 = !DILocation(line: 22, column: 14, scope: !62)
!82 = !DILocation(line: 23, column: 7, scope: !62)
!83 = !DILocation(line: 28, column: 3, scope: !62)
!84 = !DILocation(line: 28, column: 8, scope: !62)
!85 = !DILocation(line: 27, column: 3, scope: !62)
!86 = !DILocation(line: 27, column: 44, scope: !87)
!87 = distinct !DILexicalBlock(scope: !62, file: !1, line: 27, column: 3)
!88 = distinct !{!88, !85, !89}
!89 = !DILocation(line: 27, column: 44, scope: !62)
!90 = !DILocation(line: 32, column: 3, scope: !62)
!91 = distinct !DISubprogram(name: ".omp_outlined._debug__.1", scope: !1, file: !1, line: 28, type: !92, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !96)
!92 = !DISubroutineType(types: !93)
!93 = !{null, !65, !65, !94, !94, !49, !50}
!94 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !95)
!95 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!96 = !{!97, !98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108}
!97 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !91, type: !65, flags: DIFlagArtificial)
!98 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !91, type: !65, flags: DIFlagArtificial)
!99 = !DILocalVariable(name: ".previous.lb.", arg: 3, scope: !91, type: !94, flags: DIFlagArtificial)
!100 = !DILocalVariable(name: ".previous.ub.", arg: 4, scope: !91, type: !94, flags: DIFlagArtificial)
!101 = !DILocalVariable(name: "lck", arg: 5, scope: !91, file: !1, line: 22, type: !49)
!102 = !DILocalVariable(name: "var", arg: 6, scope: !91, file: !1, line: 23, type: !50)
!103 = !DILocalVariable(name: ".omp.iv", scope: !91, type: !23, flags: DIFlagArtificial)
!104 = !DILocalVariable(name: ".omp.lb", scope: !91, type: !23, flags: DIFlagArtificial)
!105 = !DILocalVariable(name: ".omp.ub", scope: !91, type: !23, flags: DIFlagArtificial)
!106 = !DILocalVariable(name: ".omp.stride", scope: !91, type: !23, flags: DIFlagArtificial)
!107 = !DILocalVariable(name: ".omp.is_last", scope: !91, type: !23, flags: DIFlagArtificial)
!108 = !DILocalVariable(name: "i", scope: !91, type: !23, flags: DIFlagArtificial)
!109 = !DILocation(line: 0, scope: !91)
!110 = !{!111, !111, i64 0}
!111 = !{!"long", !35, i64 0}
!112 = !DILocation(line: 22, column: 14, scope: !91)
!113 = !DILocation(line: 23, column: 7, scope: !91)
!114 = !DILocation(line: 28, column: 3, scope: !91)
!115 = !DILocation(line: 28, column: 8, scope: !91)
!116 = !DILocation(line: 28, column: 24, scope: !91)
!117 = !DILocation(line: 29, column: 5, scope: !118)
!118 = distinct !DILexicalBlock(scope: !91, file: !1, line: 28, column: 28)
!119 = !DILocation(line: 30, column: 8, scope: !118)
!120 = !DILocation(line: 31, column: 5, scope: !118)
!121 = !DILocation(line: 32, column: 3, scope: !118)
!122 = !DILocation(line: 27, column: 3, scope: !91)
!123 = distinct !{!123, !122, !124}
!124 = !DILocation(line: 27, column: 44, scope: !91)
!125 = !DILocation(line: 32, column: 3, scope: !91)
!126 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 28, type: !92, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !127)
!127 = !{!128, !129, !130, !131, !132, !133}
!128 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !126, type: !65, flags: DIFlagArtificial)
!129 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !126, type: !65, flags: DIFlagArtificial)
!130 = !DILocalVariable(name: ".previous.lb.", arg: 3, scope: !126, type: !94, flags: DIFlagArtificial)
!131 = !DILocalVariable(name: ".previous.ub.", arg: 4, scope: !126, type: !94, flags: DIFlagArtificial)
!132 = !DILocalVariable(name: "lck", arg: 5, scope: !126, type: !49, flags: DIFlagArtificial)
!133 = !DILocalVariable(name: "var", arg: 6, scope: !126, type: !50, flags: DIFlagArtificial)
!134 = !DILocation(line: 0, scope: !126)
!135 = !DILocation(line: 28, column: 3, scope: !126)
!136 = !{!137}
!137 = !{i64 2, i64 -1, i64 -1, i1 true}
!138 = distinct !DISubprogram(name: ".omp_outlined..2", scope: !1, file: !1, line: 28, type: !63, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !139)
!139 = !{!140, !141, !142, !143}
!140 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !138, type: !65, flags: DIFlagArtificial)
!141 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !138, type: !65, flags: DIFlagArtificial)
!142 = !DILocalVariable(name: "lck", arg: 3, scope: !138, type: !49, flags: DIFlagArtificial)
!143 = !DILocalVariable(name: "var", arg: 4, scope: !138, type: !50, flags: DIFlagArtificial)
!144 = !DILocation(line: 0, scope: !138)
!145 = !DILocation(line: 28, column: 3, scope: !138)
!146 = distinct !DISubprogram(name: "__omp_offloading_1030a_2160958_main_l26", scope: !1, file: !1, line: 27, type: !47, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !147)
!147 = !{!148, !149}
!148 = !DILocalVariable(name: "lck", arg: 1, scope: !146, type: !49, flags: DIFlagArtificial)
!149 = !DILocalVariable(name: "var", arg: 2, scope: !146, type: !50, flags: DIFlagArtificial)
!150 = !DILocation(line: 0, scope: !146)
!151 = !DILocation(line: 27, column: 3, scope: !146)
