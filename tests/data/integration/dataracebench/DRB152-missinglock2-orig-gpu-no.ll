; ModuleID = 'integration/dataracebench/DRB152-missinglock2-orig-gpu-no.c'
source_filename = "integration/dataracebench/DRB152-missinglock2-orig-gpu-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }
%struct.omp_lock_t = type { i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 2050, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [73 x i8] c";integration/dataracebench/DRB152-missinglock2-orig-gpu-no.c;main;25;3;;\00", align 1
@2 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@3 = private unnamed_addr constant [74 x i8] c";integration/dataracebench/DRB152-missinglock2-orig-gpu-no.c;main;25;38;;\00", align 1
@4 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@5 = private unnamed_addr constant [73 x i8] c";integration/dataracebench/DRB152-missinglock2-orig-gpu-no.c;main;24;3;;\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main() #0 !dbg !20 {
entry:
  %retval = alloca i32, align 4
  %lck = alloca %struct.omp_lock_t, align 8
  %var = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = bitcast %struct.omp_lock_t* %lck to i8*, !dbg !28
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %0) #5, !dbg !28
  call void @llvm.dbg.declare(metadata %struct.omp_lock_t* %lck, metadata !25, metadata !DIExpression()), !dbg !29
  %1 = bitcast i32* %var to i8*, !dbg !30
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #5, !dbg !30
  call void @llvm.dbg.declare(metadata i32* %var, metadata !27, metadata !DIExpression()), !dbg !31
  store i32 0, i32* %var, align 4, !dbg !31, !tbaa !32
  call void @omp_init_lock(%struct.omp_lock_t* %lck), !dbg !36
  call void @__omp_offloading_1030a_216095a_main_l23(%struct.omp_lock_t* %lck, i32* %var) #5, !dbg !37
  call void @omp_destroy_lock(%struct.omp_lock_t* %lck), !dbg !39
  %2 = load i32, i32* %var, align 4, !dbg !40, !tbaa !32
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %2), !dbg !41
  %3 = bitcast i32* %var to i8*, !dbg !42
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %3) #5, !dbg !42
  %4 = bitcast %struct.omp_lock_t* %lck to i8*, !dbg !42
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %4) #5, !dbg !42
  ret i32 0, !dbg !43
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

declare !dbg !4 dso_local void @omp_init_lock(%struct.omp_lock_t*) #3

; Function Attrs: norecurse nounwind uwtable
define internal void @__omp_offloading_1030a_216095a_main_l23_debug__(%struct.omp_lock_t* dereferenceable(8) %lck, i32* dereferenceable(4) %var) #4 !dbg !44 {
entry:
  %lck.addr = alloca %struct.omp_lock_t*, align 8
  %var.addr = alloca i32*, align 8
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  %2 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4
  store i8* getelementptr inbounds ([73 x i8], [73 x i8]* @5, i32 0, i32 0), i8** %2, align 8, !tbaa !52
  %3 = call i32 @__kmpc_global_thread_num(%struct.ident_t* %.kmpc_loc.addr)
  store %struct.omp_lock_t* %lck, %struct.omp_lock_t** %lck.addr, align 8, !tbaa !55
  call void @llvm.dbg.declare(metadata %struct.omp_lock_t** %lck.addr, metadata !50, metadata !DIExpression()), !dbg !56
  store i32* %var, i32** %var.addr, align 8, !tbaa !55
  call void @llvm.dbg.declare(metadata i32** %var.addr, metadata !51, metadata !DIExpression()), !dbg !57
  %4 = load %struct.omp_lock_t*, %struct.omp_lock_t** %lck.addr, align 8, !dbg !58, !tbaa !55
  %5 = load i32*, i32** %var.addr, align 8, !dbg !58, !tbaa !55
  %6 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !58
  store i8* getelementptr inbounds ([73 x i8], [73 x i8]* @5, i32 0, i32 0), i8** %6, align 8, !dbg !58, !tbaa !52
  %7 = call i32 @__kmpc_push_num_teams(%struct.ident_t* %.kmpc_loc.addr, i32 %3, i32 1, i32 0), !dbg !58
  %8 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !58
  store i8* getelementptr inbounds ([73 x i8], [73 x i8]* @5, i32 0, i32 0), i8** %8, align 8, !dbg !58, !tbaa !52
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_teams(%struct.ident_t* %.kmpc_loc.addr, i32 2, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, %struct.omp_lock_t*, i32*)* @.omp_outlined..2 to void (i32*, i32*, ...)*), %struct.omp_lock_t* %4, i32* %5), !dbg !58
  ret void, !dbg !59
}

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., %struct.omp_lock_t* dereferenceable(8) %lck, i32* dereferenceable(4) %var) #4 !dbg !60 {
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
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !55
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !68, metadata !DIExpression()), !dbg !79
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !55
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !69, metadata !DIExpression()), !dbg !79
  store %struct.omp_lock_t* %lck, %struct.omp_lock_t** %lck.addr, align 8, !tbaa !55
  call void @llvm.dbg.declare(metadata %struct.omp_lock_t** %lck.addr, metadata !70, metadata !DIExpression()), !dbg !80
  store i32* %var, i32** %var.addr, align 8, !tbaa !55
  call void @llvm.dbg.declare(metadata i32** %var.addr, metadata !71, metadata !DIExpression()), !dbg !81
  %2 = load %struct.omp_lock_t*, %struct.omp_lock_t** %lck.addr, align 8, !dbg !82, !tbaa !55
  %3 = load i32*, i32** %var.addr, align 8, !dbg !82, !tbaa !55
  %4 = bitcast i32* %.omp.iv to i8*, !dbg !82
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #5, !dbg !82
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !72, metadata !DIExpression()), !dbg !83
  %5 = bitcast i32* %.omp.comb.lb to i8*, !dbg !82
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #5, !dbg !82
  call void @llvm.dbg.declare(metadata i32* %.omp.comb.lb, metadata !74, metadata !DIExpression()), !dbg !83
  store i32 0, i32* %.omp.comb.lb, align 4, !dbg !84, !tbaa !32
  %6 = bitcast i32* %.omp.comb.ub to i8*, !dbg !82
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #5, !dbg !82
  call void @llvm.dbg.declare(metadata i32* %.omp.comb.ub, metadata !75, metadata !DIExpression()), !dbg !83
  store i32 99, i32* %.omp.comb.ub, align 4, !dbg !84, !tbaa !32
  %7 = bitcast i32* %.omp.stride to i8*, !dbg !82
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #5, !dbg !82
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !76, metadata !DIExpression()), !dbg !83
  store i32 1, i32* %.omp.stride, align 4, !dbg !84, !tbaa !32
  %8 = bitcast i32* %.omp.is_last to i8*, !dbg !82
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #5, !dbg !82
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !77, metadata !DIExpression()), !dbg !83
  store i32 0, i32* %.omp.is_last, align 4, !dbg !84, !tbaa !32
  %9 = bitcast i32* %i to i8*, !dbg !82
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #5, !dbg !82
  call void @llvm.dbg.declare(metadata i32* %i, metadata !78, metadata !DIExpression()), !dbg !83
  %10 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !82
  store i8* getelementptr inbounds ([73 x i8], [73 x i8]* @1, i32 0, i32 0), i8** %10, align 8, !dbg !82, !tbaa !52
  %11 = load i32*, i32** %.global_tid..addr, align 8, !dbg !82
  %12 = load i32, i32* %11, align 4, !dbg !82, !tbaa !32
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %12, i32 92, i32* %.omp.is_last, i32* %.omp.comb.lb, i32* %.omp.comb.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !82
  %13 = load i32, i32* %.omp.comb.ub, align 4, !dbg !84, !tbaa !32
  %cmp = icmp sgt i32 %13, 99, !dbg !84
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !84

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !84

cond.false:                                       ; preds = %entry
  %14 = load i32, i32* %.omp.comb.ub, align 4, !dbg !84, !tbaa !32
  br label %cond.end, !dbg !84

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 99, %cond.true ], [ %14, %cond.false ], !dbg !84
  store i32 %cond, i32* %.omp.comb.ub, align 4, !dbg !84, !tbaa !32
  %15 = load i32, i32* %.omp.comb.lb, align 4, !dbg !84, !tbaa !32
  store i32 %15, i32* %.omp.iv, align 4, !dbg !84, !tbaa !32
  br label %omp.inner.for.cond, !dbg !82

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %16 = load i32, i32* %.omp.iv, align 4, !dbg !84, !tbaa !32
  %17 = load i32, i32* %.omp.comb.ub, align 4, !dbg !84, !tbaa !32
  %cmp1 = icmp sle i32 %16, %17, !dbg !85
  br i1 %cmp1, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !82

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !82

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %18 = load i32, i32* %.omp.comb.lb, align 4, !dbg !86
  %19 = zext i32 %18 to i64, !dbg !86
  %20 = load i32, i32* %.omp.comb.ub, align 4, !dbg !86
  %21 = zext i32 %20 to i64, !dbg !86
  %22 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !86
  store i8* getelementptr inbounds ([73 x i8], [73 x i8]* @1, i32 0, i32 0), i8** %22, align 8, !dbg !86, !tbaa !52
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 4, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i64, i64, %struct.omp_lock_t*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i64 %19, i64 %21, %struct.omp_lock_t* %2, i32* %3), !dbg !86
  br label %omp.inner.for.inc, !dbg !87

omp.inner.for.inc:                                ; preds = %omp.inner.for.body
  %23 = load i32, i32* %.omp.iv, align 4, !dbg !84, !tbaa !32
  %24 = load i32, i32* %.omp.stride, align 4, !dbg !84, !tbaa !32
  %add = add nsw i32 %23, %24, !dbg !85
  store i32 %add, i32* %.omp.iv, align 4, !dbg !85, !tbaa !32
  br label %omp.inner.for.cond, !dbg !87, !llvm.loop !89

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !87

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %25 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !87
  store i8* getelementptr inbounds ([73 x i8], [73 x i8]* @1, i32 0, i32 0), i8** %25, align 8, !dbg !87, !tbaa !52
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %12), !dbg !87
  %26 = bitcast i32* %i to i8*, !dbg !87
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %26) #5, !dbg !87
  %27 = bitcast i32* %.omp.is_last to i8*, !dbg !87
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %27) #5, !dbg !87
  %28 = bitcast i32* %.omp.stride to i8*, !dbg !87
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %28) #5, !dbg !87
  %29 = bitcast i32* %.omp.comb.ub to i8*, !dbg !87
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %29) #5, !dbg !87
  %30 = bitcast i32* %.omp.comb.lb to i8*, !dbg !87
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %30) #5, !dbg !87
  %31 = bitcast i32* %.omp.iv to i8*, !dbg !87
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %31) #5, !dbg !87
  ret void, !dbg !91
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__.1(i32* noalias %.global_tid., i32* noalias %.bound_tid., i64 %.previous.lb., i64 %.previous.ub., %struct.omp_lock_t* dereferenceable(8) %lck, i32* dereferenceable(4) %var) #4 !dbg !92 {
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
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !55
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !98, metadata !DIExpression()), !dbg !110
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !55
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !99, metadata !DIExpression()), !dbg !110
  store i64 %.previous.lb., i64* %.previous.lb..addr, align 8, !tbaa !111
  call void @llvm.dbg.declare(metadata i64* %.previous.lb..addr, metadata !100, metadata !DIExpression()), !dbg !110
  store i64 %.previous.ub., i64* %.previous.ub..addr, align 8, !tbaa !111
  call void @llvm.dbg.declare(metadata i64* %.previous.ub..addr, metadata !101, metadata !DIExpression()), !dbg !110
  store %struct.omp_lock_t* %lck, %struct.omp_lock_t** %lck.addr, align 8, !tbaa !55
  call void @llvm.dbg.declare(metadata %struct.omp_lock_t** %lck.addr, metadata !102, metadata !DIExpression()), !dbg !113
  store i32* %var, i32** %var.addr, align 8, !tbaa !55
  call void @llvm.dbg.declare(metadata i32** %var.addr, metadata !103, metadata !DIExpression()), !dbg !114
  %2 = load %struct.omp_lock_t*, %struct.omp_lock_t** %lck.addr, align 8, !dbg !115, !tbaa !55
  %3 = load i32*, i32** %var.addr, align 8, !dbg !115, !tbaa !55
  %4 = bitcast i32* %.omp.iv to i8*, !dbg !115
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #5, !dbg !115
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !104, metadata !DIExpression()), !dbg !110
  %5 = bitcast i32* %.omp.lb to i8*, !dbg !115
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #5, !dbg !115
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !105, metadata !DIExpression()), !dbg !110
  store i32 0, i32* %.omp.lb, align 4, !dbg !116, !tbaa !32
  %6 = bitcast i32* %.omp.ub to i8*, !dbg !115
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #5, !dbg !115
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !106, metadata !DIExpression()), !dbg !110
  store i32 99, i32* %.omp.ub, align 4, !dbg !116, !tbaa !32
  %7 = load i64, i64* %.previous.lb..addr, align 8, !dbg !115, !tbaa !111
  %conv = trunc i64 %7 to i32, !dbg !115
  %8 = load i64, i64* %.previous.ub..addr, align 8, !dbg !115, !tbaa !111
  %conv1 = trunc i64 %8 to i32, !dbg !115
  store i32 %conv, i32* %.omp.lb, align 4, !dbg !115, !tbaa !32
  store i32 %conv1, i32* %.omp.ub, align 4, !dbg !115, !tbaa !32
  %9 = bitcast i32* %.omp.stride to i8*, !dbg !115
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #5, !dbg !115
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !107, metadata !DIExpression()), !dbg !110
  store i32 1, i32* %.omp.stride, align 4, !dbg !116, !tbaa !32
  %10 = bitcast i32* %.omp.is_last to i8*, !dbg !115
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #5, !dbg !115
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !108, metadata !DIExpression()), !dbg !110
  store i32 0, i32* %.omp.is_last, align 4, !dbg !116, !tbaa !32
  %11 = bitcast i32* %i to i8*, !dbg !115
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #5, !dbg !115
  call void @llvm.dbg.declare(metadata i32* %i, metadata !109, metadata !DIExpression()), !dbg !110
  %12 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !115
  store i8* getelementptr inbounds ([73 x i8], [73 x i8]* @1, i32 0, i32 0), i8** %12, align 8, !dbg !115, !tbaa !52
  %13 = load i32*, i32** %.global_tid..addr, align 8, !dbg !115
  %14 = load i32, i32* %13, align 4, !dbg !115, !tbaa !32
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %14, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !115
  %15 = load i32, i32* %.omp.ub, align 4, !dbg !116, !tbaa !32
  %cmp = icmp sgt i32 %15, 99, !dbg !116
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !116

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !116

cond.false:                                       ; preds = %entry
  %16 = load i32, i32* %.omp.ub, align 4, !dbg !116, !tbaa !32
  br label %cond.end, !dbg !116

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 99, %cond.true ], [ %16, %cond.false ], !dbg !116
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !116, !tbaa !32
  %17 = load i32, i32* %.omp.lb, align 4, !dbg !116, !tbaa !32
  store i32 %17, i32* %.omp.iv, align 4, !dbg !116, !tbaa !32
  br label %omp.inner.for.cond, !dbg !115

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %18 = load i32, i32* %.omp.iv, align 4, !dbg !116, !tbaa !32
  %19 = load i32, i32* %.omp.ub, align 4, !dbg !116, !tbaa !32
  %cmp3 = icmp sle i32 %18, %19, !dbg !115
  br i1 %cmp3, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !115

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !115

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %20 = load i32, i32* %.omp.iv, align 4, !dbg !116, !tbaa !32
  %mul = mul nsw i32 %20, 1, !dbg !117
  %add = add nsw i32 0, %mul, !dbg !117
  store i32 %add, i32* %i, align 4, !dbg !117, !tbaa !32
  call void @omp_set_lock(%struct.omp_lock_t* %2), !dbg !118
  %21 = load i32, i32* %3, align 4, !dbg !120, !tbaa !32
  %inc = add nsw i32 %21, 1, !dbg !120
  store i32 %inc, i32* %3, align 4, !dbg !120, !tbaa !32
  call void @omp_unset_lock(%struct.omp_lock_t* %2), !dbg !121
  br label %omp.body.continue, !dbg !122

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !123

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %22 = load i32, i32* %.omp.iv, align 4, !dbg !116, !tbaa !32
  %add5 = add nsw i32 %22, 1, !dbg !115
  store i32 %add5, i32* %.omp.iv, align 4, !dbg !115, !tbaa !32
  br label %omp.inner.for.cond, !dbg !123, !llvm.loop !124

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !123

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %23 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !123
  store i8* getelementptr inbounds ([74 x i8], [74 x i8]* @3, i32 0, i32 0), i8** %23, align 8, !dbg !123, !tbaa !52
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %14), !dbg !123
  %24 = bitcast i32* %i to i8*, !dbg !123
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %24) #5, !dbg !123
  %25 = bitcast i32* %.omp.is_last to i8*, !dbg !123
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %25) #5, !dbg !123
  %26 = bitcast i32* %.omp.stride to i8*, !dbg !123
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %26) #5, !dbg !123
  %27 = bitcast i32* %.omp.ub to i8*, !dbg !123
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %27) #5, !dbg !123
  %28 = bitcast i32* %.omp.lb to i8*, !dbg !123
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %28) #5, !dbg !123
  %29 = bitcast i32* %.omp.iv to i8*, !dbg !123
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %29) #5, !dbg !123
  ret void, !dbg !126
}

declare !dbg !13 dso_local void @omp_set_lock(%struct.omp_lock_t*) #3

declare !dbg !14 dso_local void @omp_unset_lock(%struct.omp_lock_t*) #3

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i64 %.previous.lb., i64 %.previous.ub., %struct.omp_lock_t* dereferenceable(8) %lck, i32* dereferenceable(4) %var) #4 !dbg !127 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %.previous.lb..addr = alloca i64, align 8
  %.previous.ub..addr = alloca i64, align 8
  %lck.addr = alloca %struct.omp_lock_t*, align 8
  %var.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !55
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !129, metadata !DIExpression()), !dbg !135
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !55
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !130, metadata !DIExpression()), !dbg !135
  store i64 %.previous.lb., i64* %.previous.lb..addr, align 8, !tbaa !111
  call void @llvm.dbg.declare(metadata i64* %.previous.lb..addr, metadata !131, metadata !DIExpression()), !dbg !135
  store i64 %.previous.ub., i64* %.previous.ub..addr, align 8, !tbaa !111
  call void @llvm.dbg.declare(metadata i64* %.previous.ub..addr, metadata !132, metadata !DIExpression()), !dbg !135
  store %struct.omp_lock_t* %lck, %struct.omp_lock_t** %lck.addr, align 8, !tbaa !55
  call void @llvm.dbg.declare(metadata %struct.omp_lock_t** %lck.addr, metadata !133, metadata !DIExpression()), !dbg !135
  store i32* %var, i32** %var.addr, align 8, !tbaa !55
  call void @llvm.dbg.declare(metadata i32** %var.addr, metadata !134, metadata !DIExpression()), !dbg !135
  %0 = load %struct.omp_lock_t*, %struct.omp_lock_t** %lck.addr, align 8, !dbg !136, !tbaa !55
  %1 = load i32*, i32** %var.addr, align 8, !dbg !136, !tbaa !55
  %2 = load i32*, i32** %.global_tid..addr, align 8, !dbg !136, !tbaa !55
  %3 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !136, !tbaa !55
  %4 = load i64, i64* %.previous.lb..addr, align 8, !dbg !136, !tbaa !111
  %5 = load i64, i64* %.previous.ub..addr, align 8, !dbg !136, !tbaa !111
  %6 = load %struct.omp_lock_t*, %struct.omp_lock_t** %lck.addr, align 8, !dbg !136, !tbaa !55
  %7 = load i32*, i32** %var.addr, align 8, !dbg !136, !tbaa !55
  call void @.omp_outlined._debug__.1(i32* %2, i32* %3, i64 %4, i64 %5, %struct.omp_lock_t* %6, i32* %7) #5, !dbg !136
  ret void, !dbg !136
}

declare !callback !137 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined..2(i32* noalias %.global_tid., i32* noalias %.bound_tid., %struct.omp_lock_t* dereferenceable(8) %lck, i32* dereferenceable(4) %var) #4 !dbg !139 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %lck.addr = alloca %struct.omp_lock_t*, align 8
  %var.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !55
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !141, metadata !DIExpression()), !dbg !145
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !55
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !142, metadata !DIExpression()), !dbg !145
  store %struct.omp_lock_t* %lck, %struct.omp_lock_t** %lck.addr, align 8, !tbaa !55
  call void @llvm.dbg.declare(metadata %struct.omp_lock_t** %lck.addr, metadata !143, metadata !DIExpression()), !dbg !145
  store i32* %var, i32** %var.addr, align 8, !tbaa !55
  call void @llvm.dbg.declare(metadata i32** %var.addr, metadata !144, metadata !DIExpression()), !dbg !145
  %0 = load %struct.omp_lock_t*, %struct.omp_lock_t** %lck.addr, align 8, !dbg !146, !tbaa !55
  %1 = load i32*, i32** %var.addr, align 8, !dbg !146, !tbaa !55
  %2 = load i32*, i32** %.global_tid..addr, align 8, !dbg !146, !tbaa !55
  %3 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !146, !tbaa !55
  %4 = load %struct.omp_lock_t*, %struct.omp_lock_t** %lck.addr, align 8, !dbg !146, !tbaa !55
  %5 = load i32*, i32** %var.addr, align 8, !dbg !146, !tbaa !55
  call void @.omp_outlined._debug__(i32* %2, i32* %3, %struct.omp_lock_t* %4, i32* %5) #5, !dbg !146
  ret void, !dbg !146
}

declare dso_local i32 @__kmpc_global_thread_num(%struct.ident_t*)

declare dso_local i32 @__kmpc_push_num_teams(%struct.ident_t*, i32, i32, i32)

declare !callback !137 dso_local void @__kmpc_fork_teams(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

; Function Attrs: norecurse nounwind uwtable
define internal void @__omp_offloading_1030a_216095a_main_l23(%struct.omp_lock_t* dereferenceable(8) %lck, i32* dereferenceable(4) %var) #4 !dbg !147 {
entry:
  %lck.addr = alloca %struct.omp_lock_t*, align 8
  %var.addr = alloca i32*, align 8
  store %struct.omp_lock_t* %lck, %struct.omp_lock_t** %lck.addr, align 8, !tbaa !55
  call void @llvm.dbg.declare(metadata %struct.omp_lock_t** %lck.addr, metadata !149, metadata !DIExpression()), !dbg !151
  store i32* %var, i32** %var.addr, align 8, !tbaa !55
  call void @llvm.dbg.declare(metadata i32** %var.addr, metadata !150, metadata !DIExpression()), !dbg !151
  %0 = load %struct.omp_lock_t*, %struct.omp_lock_t** %lck.addr, align 8, !dbg !152, !tbaa !55
  %1 = load i32*, i32** %var.addr, align 8, !dbg !152, !tbaa !55
  %2 = load %struct.omp_lock_t*, %struct.omp_lock_t** %lck.addr, align 8, !dbg !152, !tbaa !55
  %3 = load i32*, i32** %var.addr, align 8, !dbg !152, !tbaa !55
  call void @__omp_offloading_1030a_216095a_main_l23_debug__(%struct.omp_lock_t* %2, i32* %3) #5, !dbg !152
  ret void, !dbg !152
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
!1 = !DIFile(filename: "integration/dataracebench/DRB152-missinglock2-orig-gpu-no.c", directory: "/home/brad/Code/OpenRace/tests/data")
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
!20 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 18, type: !21, scopeLine: 18, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !24)
!21 = !DISubroutineType(types: !22)
!22 = !{!23}
!23 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!24 = !{!25, !27}
!25 = !DILocalVariable(name: "lck", scope: !20, file: !1, line: 19, type: !26)
!26 = !DIDerivedType(tag: DW_TAG_typedef, name: "omp_lock_t", file: !5, line: 84, baseType: !9)
!27 = !DILocalVariable(name: "var", scope: !20, file: !1, line: 20, type: !23)
!28 = !DILocation(line: 19, column: 3, scope: !20)
!29 = !DILocation(line: 19, column: 14, scope: !20)
!30 = !DILocation(line: 20, column: 3, scope: !20)
!31 = !DILocation(line: 20, column: 7, scope: !20)
!32 = !{!33, !33, i64 0}
!33 = !{!"int", !34, i64 0}
!34 = !{!"omnipotent char", !35, i64 0}
!35 = !{!"Simple C/C++ TBAA"}
!36 = !DILocation(line: 21, column: 3, scope: !20)
!37 = !DILocation(line: 23, column: 3, scope: !38)
!38 = distinct !DILexicalBlock(scope: !20, file: !1, line: 23, column: 3)
!39 = !DILocation(line: 32, column: 3, scope: !20)
!40 = !DILocation(line: 33, column: 17, scope: !20)
!41 = !DILocation(line: 33, column: 3, scope: !20)
!42 = !DILocation(line: 35, column: 1, scope: !20)
!43 = !DILocation(line: 34, column: 3, scope: !20)
!44 = distinct !DISubprogram(name: "__omp_offloading_1030a_216095a_main_l23_debug__", scope: !1, file: !1, line: 24, type: !45, scopeLine: 24, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !49)
!45 = !DISubroutineType(types: !46)
!46 = !{null, !47, !48}
!47 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !26, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !23, size: 64)
!49 = !{!50, !51}
!50 = !DILocalVariable(name: "lck", arg: 1, scope: !44, file: !1, line: 19, type: !47)
!51 = !DILocalVariable(name: "var", arg: 2, scope: !44, file: !1, line: 20, type: !48)
!52 = !{!53, !54, i64 16}
!53 = !{!"ident_t", !33, i64 0, !33, i64 4, !33, i64 8, !33, i64 12, !54, i64 16}
!54 = !{!"any pointer", !34, i64 0}
!55 = !{!54, !54, i64 0}
!56 = !DILocation(line: 19, column: 14, scope: !44)
!57 = !DILocation(line: 20, column: 7, scope: !44)
!58 = !DILocation(line: 24, column: 3, scope: !44)
!59 = !DILocation(line: 24, column: 33, scope: !44)
!60 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 25, type: !61, scopeLine: 25, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !67)
!61 = !DISubroutineType(types: !62)
!62 = !{null, !63, !63, !47, !48}
!63 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !64)
!64 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !65)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !23)
!67 = !{!68, !69, !70, !71, !72, !74, !75, !76, !77, !78}
!68 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !60, type: !63, flags: DIFlagArtificial)
!69 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !60, type: !63, flags: DIFlagArtificial)
!70 = !DILocalVariable(name: "lck", arg: 3, scope: !60, file: !1, line: 19, type: !47)
!71 = !DILocalVariable(name: "var", arg: 4, scope: !60, file: !1, line: 20, type: !48)
!72 = !DILocalVariable(name: ".omp.iv", scope: !73, type: !23, flags: DIFlagArtificial)
!73 = distinct !DILexicalBlock(scope: !60, file: !1, line: 25, column: 3)
!74 = !DILocalVariable(name: ".omp.comb.lb", scope: !73, type: !23, flags: DIFlagArtificial)
!75 = !DILocalVariable(name: ".omp.comb.ub", scope: !73, type: !23, flags: DIFlagArtificial)
!76 = !DILocalVariable(name: ".omp.stride", scope: !73, type: !23, flags: DIFlagArtificial)
!77 = !DILocalVariable(name: ".omp.is_last", scope: !73, type: !23, flags: DIFlagArtificial)
!78 = !DILocalVariable(name: "i", scope: !73, type: !23, flags: DIFlagArtificial)
!79 = !DILocation(line: 0, scope: !60)
!80 = !DILocation(line: 19, column: 14, scope: !60)
!81 = !DILocation(line: 20, column: 7, scope: !60)
!82 = !DILocation(line: 25, column: 3, scope: !60)
!83 = !DILocation(line: 0, scope: !73)
!84 = !DILocation(line: 26, column: 8, scope: !73)
!85 = !DILocation(line: 26, column: 3, scope: !73)
!86 = !DILocation(line: 25, column: 3, scope: !73)
!87 = !DILocation(line: 25, column: 38, scope: !88)
!88 = distinct !DILexicalBlock(scope: !73, file: !1, line: 25, column: 3)
!89 = distinct !{!89, !86, !90}
!90 = !DILocation(line: 25, column: 38, scope: !73)
!91 = !DILocation(line: 25, column: 38, scope: !60)
!92 = distinct !DISubprogram(name: ".omp_outlined._debug__.1", scope: !1, file: !1, line: 26, type: !93, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !97)
!93 = !DISubroutineType(types: !94)
!94 = !{null, !63, !63, !95, !95, !47, !48}
!95 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !96)
!96 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!97 = !{!98, !99, !100, !101, !102, !103, !104, !105, !106, !107, !108, !109}
!98 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !92, type: !63, flags: DIFlagArtificial)
!99 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !92, type: !63, flags: DIFlagArtificial)
!100 = !DILocalVariable(name: ".previous.lb.", arg: 3, scope: !92, type: !95, flags: DIFlagArtificial)
!101 = !DILocalVariable(name: ".previous.ub.", arg: 4, scope: !92, type: !95, flags: DIFlagArtificial)
!102 = !DILocalVariable(name: "lck", arg: 5, scope: !92, file: !1, line: 19, type: !47)
!103 = !DILocalVariable(name: "var", arg: 6, scope: !92, file: !1, line: 20, type: !48)
!104 = !DILocalVariable(name: ".omp.iv", scope: !92, type: !23, flags: DIFlagArtificial)
!105 = !DILocalVariable(name: ".omp.lb", scope: !92, type: !23, flags: DIFlagArtificial)
!106 = !DILocalVariable(name: ".omp.ub", scope: !92, type: !23, flags: DIFlagArtificial)
!107 = !DILocalVariable(name: ".omp.stride", scope: !92, type: !23, flags: DIFlagArtificial)
!108 = !DILocalVariable(name: ".omp.is_last", scope: !92, type: !23, flags: DIFlagArtificial)
!109 = !DILocalVariable(name: "i", scope: !92, type: !23, flags: DIFlagArtificial)
!110 = !DILocation(line: 0, scope: !92)
!111 = !{!112, !112, i64 0}
!112 = !{!"long", !34, i64 0}
!113 = !DILocation(line: 19, column: 14, scope: !92)
!114 = !DILocation(line: 20, column: 7, scope: !92)
!115 = !DILocation(line: 26, column: 3, scope: !92)
!116 = !DILocation(line: 26, column: 8, scope: !92)
!117 = !DILocation(line: 26, column: 22, scope: !92)
!118 = !DILocation(line: 27, column: 5, scope: !119)
!119 = distinct !DILexicalBlock(scope: !92, file: !1, line: 26, column: 26)
!120 = !DILocation(line: 28, column: 8, scope: !119)
!121 = !DILocation(line: 29, column: 5, scope: !119)
!122 = !DILocation(line: 30, column: 3, scope: !119)
!123 = !DILocation(line: 25, column: 3, scope: !92)
!124 = distinct !{!124, !123, !125}
!125 = !DILocation(line: 25, column: 38, scope: !92)
!126 = !DILocation(line: 30, column: 3, scope: !92)
!127 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 26, type: !93, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !128)
!128 = !{!129, !130, !131, !132, !133, !134}
!129 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !127, type: !63, flags: DIFlagArtificial)
!130 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !127, type: !63, flags: DIFlagArtificial)
!131 = !DILocalVariable(name: ".previous.lb.", arg: 3, scope: !127, type: !95, flags: DIFlagArtificial)
!132 = !DILocalVariable(name: ".previous.ub.", arg: 4, scope: !127, type: !95, flags: DIFlagArtificial)
!133 = !DILocalVariable(name: "lck", arg: 5, scope: !127, type: !47, flags: DIFlagArtificial)
!134 = !DILocalVariable(name: "var", arg: 6, scope: !127, type: !48, flags: DIFlagArtificial)
!135 = !DILocation(line: 0, scope: !127)
!136 = !DILocation(line: 26, column: 3, scope: !127)
!137 = !{!138}
!138 = !{i64 2, i64 -1, i64 -1, i1 true}
!139 = distinct !DISubprogram(name: ".omp_outlined..2", scope: !1, file: !1, line: 25, type: !61, scopeLine: 25, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !140)
!140 = !{!141, !142, !143, !144}
!141 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !139, type: !63, flags: DIFlagArtificial)
!142 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !139, type: !63, flags: DIFlagArtificial)
!143 = !DILocalVariable(name: "lck", arg: 3, scope: !139, type: !47, flags: DIFlagArtificial)
!144 = !DILocalVariable(name: "var", arg: 4, scope: !139, type: !48, flags: DIFlagArtificial)
!145 = !DILocation(line: 0, scope: !139)
!146 = !DILocation(line: 25, column: 3, scope: !139)
!147 = distinct !DISubprogram(name: "__omp_offloading_1030a_216095a_main_l23", scope: !1, file: !1, line: 24, type: !45, scopeLine: 24, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !148)
!148 = !{!149, !150}
!149 = !DILocalVariable(name: "lck", arg: 1, scope: !147, type: !47, flags: DIFlagArtificial)
!150 = !DILocalVariable(name: "var", arg: 2, scope: !147, type: !48, flags: DIFlagArtificial)
!151 = !DILocation(line: 0, scope: !147)
!152 = !DILocation(line: 24, column: 3, scope: !147)
