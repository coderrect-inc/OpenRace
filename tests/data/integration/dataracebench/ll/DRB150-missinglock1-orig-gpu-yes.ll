; ModuleID = 'DRB150-missinglock1-orig-gpu-yes.c'
source_filename = "DRB150-missinglock1-orig-gpu-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }
%struct.omp_lock_t = type { i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 2050, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [48 x i8] c";DRB150-missinglock1-orig-gpu-yes.c;main;27;3;;\00", align 1
@2 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@3 = private unnamed_addr constant [49 x i8] c";DRB150-missinglock1-orig-gpu-yes.c;main;27;44;;\00", align 1
@4 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@.str.3 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !7 {
entry:
  %retval = alloca i32, align 4
  %lck = alloca %struct.omp_lock_t, align 8
  %var = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata %struct.omp_lock_t* %lck, metadata !11, metadata !DIExpression()), !dbg !18
  call void @llvm.dbg.declare(metadata i32* %var, metadata !19, metadata !DIExpression()), !dbg !20
  store i32 0, i32* %var, align 4, !dbg !20
  call void @llvm.dbg.declare(metadata i32* %i, metadata !21, metadata !DIExpression()), !dbg !22
  call void @omp_init_lock(%struct.omp_lock_t* %lck), !dbg !23
  call void @__omp_offloading_10307_2ec41af_main_l26(%struct.omp_lock_t* %lck, i32* %var) #5, !dbg !24
  call void @omp_destroy_lock(%struct.omp_lock_t* %lck), !dbg !26
  %0 = load i32, i32* %var, align 4, !dbg !27
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %0), !dbg !28
  ret i32 0, !dbg !29
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local void @omp_init_lock(%struct.omp_lock_t*) #2

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @__omp_offloading_10307_2ec41af_main_l26_debug__(%struct.omp_lock_t* dereferenceable(8) %lck, i32* dereferenceable(4) %var) #3 !dbg !30 {
entry:
  %lck.addr = alloca %struct.omp_lock_t*, align 8
  %var.addr = alloca i32*, align 8
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store %struct.omp_lock_t* %lck, %struct.omp_lock_t** %lck.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.omp_lock_t** %lck.addr, metadata !35, metadata !DIExpression()), !dbg !36
  store i32* %var, i32** %var.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %var.addr, metadata !37, metadata !DIExpression()), !dbg !38
  %2 = load %struct.omp_lock_t*, %struct.omp_lock_t** %lck.addr, align 8, !dbg !39
  %3 = load i32*, i32** %var.addr, align 8, !dbg !39
  %4 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !39
  store i8* getelementptr inbounds ([48 x i8], [48 x i8]* @1, i32 0, i32 0), i8** %4, align 8, !dbg !39
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_teams(%struct.ident_t* %.kmpc_loc.addr, i32 2, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, %struct.omp_lock_t*, i32*)* @.omp_outlined..2 to void (i32*, i32*, ...)*), %struct.omp_lock_t* %2, i32* %3), !dbg !39
  ret void, !dbg !40
}

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., %struct.omp_lock_t* dereferenceable(8) %lck, i32* dereferenceable(4) %var) #3 !dbg !41 {
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
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !48, metadata !DIExpression()), !dbg !49
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !50, metadata !DIExpression()), !dbg !49
  store %struct.omp_lock_t* %lck, %struct.omp_lock_t** %lck.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.omp_lock_t** %lck.addr, metadata !51, metadata !DIExpression()), !dbg !52
  store i32* %var, i32** %var.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %var.addr, metadata !53, metadata !DIExpression()), !dbg !54
  %2 = load %struct.omp_lock_t*, %struct.omp_lock_t** %lck.addr, align 8, !dbg !55
  %3 = load i32*, i32** %var.addr, align 8, !dbg !55
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !56, metadata !DIExpression()), !dbg !49
  call void @llvm.dbg.declare(metadata i32* %.omp.comb.lb, metadata !57, metadata !DIExpression()), !dbg !49
  store i32 0, i32* %.omp.comb.lb, align 4, !dbg !58
  call void @llvm.dbg.declare(metadata i32* %.omp.comb.ub, metadata !59, metadata !DIExpression()), !dbg !49
  store i32 99, i32* %.omp.comb.ub, align 4, !dbg !58
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !60, metadata !DIExpression()), !dbg !49
  store i32 1, i32* %.omp.stride, align 4, !dbg !58
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !61, metadata !DIExpression()), !dbg !49
  store i32 0, i32* %.omp.is_last, align 4, !dbg !58
  call void @llvm.dbg.declare(metadata i32* %i, metadata !62, metadata !DIExpression()), !dbg !49
  %4 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !55
  store i8* getelementptr inbounds ([48 x i8], [48 x i8]* @1, i32 0, i32 0), i8** %4, align 8, !dbg !55
  %5 = load i32*, i32** %.global_tid..addr, align 8, !dbg !55
  %6 = load i32, i32* %5, align 4, !dbg !55
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %6, i32 92, i32* %.omp.is_last, i32* %.omp.comb.lb, i32* %.omp.comb.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !55
  %7 = load i32, i32* %.omp.comb.ub, align 4, !dbg !58
  %cmp = icmp sgt i32 %7, 99, !dbg !58
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !58

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !58

cond.false:                                       ; preds = %entry
  %8 = load i32, i32* %.omp.comb.ub, align 4, !dbg !58
  br label %cond.end, !dbg !58

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 99, %cond.true ], [ %8, %cond.false ], !dbg !58
  store i32 %cond, i32* %.omp.comb.ub, align 4, !dbg !58
  %9 = load i32, i32* %.omp.comb.lb, align 4, !dbg !58
  store i32 %9, i32* %.omp.iv, align 4, !dbg !58
  br label %omp.inner.for.cond, !dbg !55

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %10 = load i32, i32* %.omp.iv, align 4, !dbg !58
  %11 = load i32, i32* %.omp.comb.ub, align 4, !dbg !58
  %cmp1 = icmp sle i32 %10, %11, !dbg !55
  br i1 %cmp1, label %omp.inner.for.body, label %omp.inner.for.end, !dbg !55

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %12 = load i32, i32* %.omp.comb.lb, align 4, !dbg !63
  %13 = zext i32 %12 to i64, !dbg !63
  %14 = load i32, i32* %.omp.comb.ub, align 4, !dbg !63
  %15 = zext i32 %14 to i64, !dbg !63
  %16 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !63
  store i8* getelementptr inbounds ([48 x i8], [48 x i8]* @1, i32 0, i32 0), i8** %16, align 8, !dbg !63
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 4, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i64, i64, %struct.omp_lock_t*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i64 %13, i64 %15, %struct.omp_lock_t* %2, i32* %3), !dbg !63
  br label %omp.inner.for.inc, !dbg !64

omp.inner.for.inc:                                ; preds = %omp.inner.for.body
  %17 = load i32, i32* %.omp.iv, align 4, !dbg !58
  %18 = load i32, i32* %.omp.stride, align 4, !dbg !58
  %add = add nsw i32 %17, %18, !dbg !55
  store i32 %add, i32* %.omp.iv, align 4, !dbg !55
  br label %omp.inner.for.cond, !dbg !64, !llvm.loop !66

omp.inner.for.end:                                ; preds = %omp.inner.for.cond
  br label %omp.loop.exit, !dbg !64

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %19 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !64
  store i8* getelementptr inbounds ([48 x i8], [48 x i8]* @1, i32 0, i32 0), i8** %19, align 8, !dbg !64
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %6), !dbg !64
  ret void, !dbg !68
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined._debug__.1(i32* noalias %.global_tid., i32* noalias %.bound_tid., i64 %.previous.lb., i64 %.previous.ub., %struct.omp_lock_t* dereferenceable(8) %lck, i32* dereferenceable(4) %var) #3 !dbg !69 {
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
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !74, metadata !DIExpression()), !dbg !75
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !76, metadata !DIExpression()), !dbg !75
  store i64 %.previous.lb., i64* %.previous.lb..addr, align 8
  call void @llvm.dbg.declare(metadata i64* %.previous.lb..addr, metadata !77, metadata !DIExpression()), !dbg !75
  store i64 %.previous.ub., i64* %.previous.ub..addr, align 8
  call void @llvm.dbg.declare(metadata i64* %.previous.ub..addr, metadata !78, metadata !DIExpression()), !dbg !75
  store %struct.omp_lock_t* %lck, %struct.omp_lock_t** %lck.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.omp_lock_t** %lck.addr, metadata !79, metadata !DIExpression()), !dbg !80
  store i32* %var, i32** %var.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %var.addr, metadata !81, metadata !DIExpression()), !dbg !82
  %2 = load %struct.omp_lock_t*, %struct.omp_lock_t** %lck.addr, align 8, !dbg !83
  %3 = load i32*, i32** %var.addr, align 8, !dbg !83
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !84, metadata !DIExpression()), !dbg !75
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !85, metadata !DIExpression()), !dbg !75
  store i32 0, i32* %.omp.lb, align 4, !dbg !86
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !87, metadata !DIExpression()), !dbg !75
  store i32 99, i32* %.omp.ub, align 4, !dbg !86
  %4 = load i64, i64* %.previous.lb..addr, align 8, !dbg !83
  %conv = trunc i64 %4 to i32, !dbg !83
  %5 = load i64, i64* %.previous.ub..addr, align 8, !dbg !83
  %conv1 = trunc i64 %5 to i32, !dbg !83
  store i32 %conv, i32* %.omp.lb, align 4, !dbg !83
  store i32 %conv1, i32* %.omp.ub, align 4, !dbg !83
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !88, metadata !DIExpression()), !dbg !75
  store i32 1, i32* %.omp.stride, align 4, !dbg !86
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !89, metadata !DIExpression()), !dbg !75
  store i32 0, i32* %.omp.is_last, align 4, !dbg !86
  call void @llvm.dbg.declare(metadata i32* %i, metadata !90, metadata !DIExpression()), !dbg !75
  %6 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !83
  store i8* getelementptr inbounds ([48 x i8], [48 x i8]* @1, i32 0, i32 0), i8** %6, align 8, !dbg !83
  %7 = load i32*, i32** %.global_tid..addr, align 8, !dbg !83
  %8 = load i32, i32* %7, align 4, !dbg !83
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %8, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !83
  %9 = load i32, i32* %.omp.ub, align 4, !dbg !86
  %cmp = icmp sgt i32 %9, 99, !dbg !86
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !86

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !86

cond.false:                                       ; preds = %entry
  %10 = load i32, i32* %.omp.ub, align 4, !dbg !86
  br label %cond.end, !dbg !86

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 99, %cond.true ], [ %10, %cond.false ], !dbg !86
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !86
  %11 = load i32, i32* %.omp.lb, align 4, !dbg !86
  store i32 %11, i32* %.omp.iv, align 4, !dbg !86
  br label %omp.inner.for.cond, !dbg !83

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %12 = load i32, i32* %.omp.iv, align 4, !dbg !86
  %13 = load i32, i32* %.omp.ub, align 4, !dbg !86
  %cmp3 = icmp sle i32 %12, %13, !dbg !83
  br i1 %cmp3, label %omp.inner.for.body, label %omp.inner.for.end, !dbg !83

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %14 = load i32, i32* %.omp.iv, align 4, !dbg !86
  %mul = mul nsw i32 %14, 1, !dbg !91
  %add = add nsw i32 0, %mul, !dbg !91
  store i32 %add, i32* %i, align 4, !dbg !91
  call void @omp_set_lock(%struct.omp_lock_t* %2), !dbg !92
  %15 = load i32, i32* %3, align 4, !dbg !94
  %inc = add nsw i32 %15, 1, !dbg !94
  store i32 %inc, i32* %3, align 4, !dbg !94
  call void @omp_unset_lock(%struct.omp_lock_t* %2), !dbg !95
  br label %omp.body.continue, !dbg !96

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !97

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %16 = load i32, i32* %.omp.iv, align 4, !dbg !86
  %add5 = add nsw i32 %16, 1, !dbg !83
  store i32 %add5, i32* %.omp.iv, align 4, !dbg !83
  br label %omp.inner.for.cond, !dbg !97, !llvm.loop !98

omp.inner.for.end:                                ; preds = %omp.inner.for.cond
  br label %omp.loop.exit, !dbg !97

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %17 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !97
  store i8* getelementptr inbounds ([49 x i8], [49 x i8]* @3, i32 0, i32 0), i8** %17, align 8, !dbg !97
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %8), !dbg !97
  ret void, !dbg !100
}

declare dso_local void @omp_set_lock(%struct.omp_lock_t*) #2

declare dso_local void @omp_unset_lock(%struct.omp_lock_t*) #2

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i64 %.previous.lb., i64 %.previous.ub., %struct.omp_lock_t* dereferenceable(8) %lck, i32* dereferenceable(4) %var) #3 !dbg !101 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %.previous.lb..addr = alloca i64, align 8
  %.previous.ub..addr = alloca i64, align 8
  %lck.addr = alloca %struct.omp_lock_t*, align 8
  %var.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !102, metadata !DIExpression()), !dbg !103
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !104, metadata !DIExpression()), !dbg !103
  store i64 %.previous.lb., i64* %.previous.lb..addr, align 8
  call void @llvm.dbg.declare(metadata i64* %.previous.lb..addr, metadata !105, metadata !DIExpression()), !dbg !103
  store i64 %.previous.ub., i64* %.previous.ub..addr, align 8
  call void @llvm.dbg.declare(metadata i64* %.previous.ub..addr, metadata !106, metadata !DIExpression()), !dbg !103
  store %struct.omp_lock_t* %lck, %struct.omp_lock_t** %lck.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.omp_lock_t** %lck.addr, metadata !107, metadata !DIExpression()), !dbg !103
  store i32* %var, i32** %var.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %var.addr, metadata !108, metadata !DIExpression()), !dbg !103
  %0 = load %struct.omp_lock_t*, %struct.omp_lock_t** %lck.addr, align 8, !dbg !109
  %1 = load i32*, i32** %var.addr, align 8, !dbg !109
  %2 = load i32*, i32** %.global_tid..addr, align 8, !dbg !109
  %3 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !109
  %4 = load i64, i64* %.previous.lb..addr, align 8, !dbg !109
  %5 = load i64, i64* %.previous.ub..addr, align 8, !dbg !109
  %6 = load %struct.omp_lock_t*, %struct.omp_lock_t** %lck.addr, align 8, !dbg !109
  %7 = load i32*, i32** %var.addr, align 8, !dbg !109
  call void @.omp_outlined._debug__.1(i32* %2, i32* %3, i64 %4, i64 %5, %struct.omp_lock_t* %6, i32* %7) #5, !dbg !109
  ret void, !dbg !109
}

declare !callback !110 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined..2(i32* noalias %.global_tid., i32* noalias %.bound_tid., %struct.omp_lock_t* dereferenceable(8) %lck, i32* dereferenceable(4) %var) #3 !dbg !112 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %lck.addr = alloca %struct.omp_lock_t*, align 8
  %var.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !113, metadata !DIExpression()), !dbg !114
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !115, metadata !DIExpression()), !dbg !114
  store %struct.omp_lock_t* %lck, %struct.omp_lock_t** %lck.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.omp_lock_t** %lck.addr, metadata !116, metadata !DIExpression()), !dbg !114
  store i32* %var, i32** %var.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %var.addr, metadata !117, metadata !DIExpression()), !dbg !114
  %0 = load %struct.omp_lock_t*, %struct.omp_lock_t** %lck.addr, align 8, !dbg !118
  %1 = load i32*, i32** %var.addr, align 8, !dbg !118
  %2 = load i32*, i32** %.global_tid..addr, align 8, !dbg !118
  %3 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !118
  %4 = load %struct.omp_lock_t*, %struct.omp_lock_t** %lck.addr, align 8, !dbg !118
  %5 = load i32*, i32** %var.addr, align 8, !dbg !118
  call void @.omp_outlined._debug__(i32* %2, i32* %3, %struct.omp_lock_t* %4, i32* %5) #5, !dbg !118
  ret void, !dbg !118
}

declare !callback !110 dso_local void @__kmpc_fork_teams(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @__omp_offloading_10307_2ec41af_main_l26(%struct.omp_lock_t* dereferenceable(8) %lck, i32* dereferenceable(4) %var) #3 !dbg !119 {
entry:
  %lck.addr = alloca %struct.omp_lock_t*, align 8
  %var.addr = alloca i32*, align 8
  store %struct.omp_lock_t* %lck, %struct.omp_lock_t** %lck.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.omp_lock_t** %lck.addr, metadata !120, metadata !DIExpression()), !dbg !121
  store i32* %var, i32** %var.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %var.addr, metadata !122, metadata !DIExpression()), !dbg !121
  %0 = load %struct.omp_lock_t*, %struct.omp_lock_t** %lck.addr, align 8, !dbg !123
  %1 = load i32*, i32** %var.addr, align 8, !dbg !123
  %2 = load %struct.omp_lock_t*, %struct.omp_lock_t** %lck.addr, align 8, !dbg !123
  %3 = load i32*, i32** %var.addr, align 8, !dbg !123
  call void @__omp_offloading_10307_2ec41af_main_l26_debug__(%struct.omp_lock_t* %2, i32* %3) #5, !dbg !123
  ret void, !dbg !123
}

declare dso_local void @omp_destroy_lock(%struct.omp_lock_t*) #2

declare dso_local i32 @printf(i8*, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noinline norecurse nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind willreturn }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.1 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "DRB150-missinglock1-orig-gpu-yes.c", directory: "/home/yanze/code/OpenRace/tests/data/integration/dataracebench")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.1 "}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 20, type: !8, scopeLine: 20, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DILocalVariable(name: "lck", scope: !7, file: !1, line: 22, type: !12)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "omp_lock_t", file: !13, line: 84, baseType: !14)
!13 = !DIFile(filename: "/usr/include/omp.h", directory: "")
!14 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "omp_lock_t", file: !13, line: 82, size: 64, elements: !15)
!15 = !{!16}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "_lk", scope: !14, file: !13, line: 83, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!18 = !DILocation(line: 22, column: 14, scope: !7)
!19 = !DILocalVariable(name: "var", scope: !7, file: !1, line: 23, type: !10)
!20 = !DILocation(line: 23, column: 7, scope: !7)
!21 = !DILocalVariable(name: "i", scope: !7, file: !1, line: 23, type: !10)
!22 = !DILocation(line: 23, column: 13, scope: !7)
!23 = !DILocation(line: 24, column: 3, scope: !7)
!24 = !DILocation(line: 26, column: 3, scope: !25)
!25 = distinct !DILexicalBlock(scope: !7, file: !1, line: 26, column: 3)
!26 = !DILocation(line: 34, column: 3, scope: !7)
!27 = !DILocation(line: 36, column: 17, scope: !7)
!28 = !DILocation(line: 36, column: 3, scope: !7)
!29 = !DILocation(line: 37, column: 3, scope: !7)
!30 = distinct !DISubprogram(name: "__omp_offloading_10307_2ec41af_main_l26_debug__", scope: !1, file: !1, line: 27, type: !31, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!31 = !DISubroutineType(types: !32)
!32 = !{null, !33, !34}
!33 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !12, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !10, size: 64)
!35 = !DILocalVariable(name: "lck", arg: 1, scope: !30, file: !1, line: 22, type: !33)
!36 = !DILocation(line: 22, column: 14, scope: !30)
!37 = !DILocalVariable(name: "var", arg: 2, scope: !30, file: !1, line: 23, type: !34)
!38 = !DILocation(line: 23, column: 7, scope: !30)
!39 = !DILocation(line: 27, column: 3, scope: !30)
!40 = !DILocation(line: 27, column: 44, scope: !30)
!41 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 28, type: !42, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!42 = !DISubroutineType(types: !43)
!43 = !{null, !44, !44, !33, !34}
!44 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !45)
!45 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !46)
!46 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !47, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!48 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !41, type: !44, flags: DIFlagArtificial)
!49 = !DILocation(line: 0, scope: !41)
!50 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !41, type: !44, flags: DIFlagArtificial)
!51 = !DILocalVariable(name: "lck", arg: 3, scope: !41, file: !1, line: 22, type: !33)
!52 = !DILocation(line: 22, column: 14, scope: !41)
!53 = !DILocalVariable(name: "var", arg: 4, scope: !41, file: !1, line: 23, type: !34)
!54 = !DILocation(line: 23, column: 7, scope: !41)
!55 = !DILocation(line: 28, column: 3, scope: !41)
!56 = !DILocalVariable(name: ".omp.iv", scope: !41, type: !10, flags: DIFlagArtificial)
!57 = !DILocalVariable(name: ".omp.comb.lb", scope: !41, type: !10, flags: DIFlagArtificial)
!58 = !DILocation(line: 28, column: 8, scope: !41)
!59 = !DILocalVariable(name: ".omp.comb.ub", scope: !41, type: !10, flags: DIFlagArtificial)
!60 = !DILocalVariable(name: ".omp.stride", scope: !41, type: !10, flags: DIFlagArtificial)
!61 = !DILocalVariable(name: ".omp.is_last", scope: !41, type: !10, flags: DIFlagArtificial)
!62 = !DILocalVariable(name: "i", scope: !41, type: !10, flags: DIFlagArtificial)
!63 = !DILocation(line: 27, column: 3, scope: !41)
!64 = !DILocation(line: 27, column: 44, scope: !65)
!65 = distinct !DILexicalBlock(scope: !41, file: !1, line: 27, column: 3)
!66 = distinct !{!66, !63, !67}
!67 = !DILocation(line: 27, column: 44, scope: !41)
!68 = !DILocation(line: 32, column: 3, scope: !41)
!69 = distinct !DISubprogram(name: ".omp_outlined._debug__.1", scope: !1, file: !1, line: 28, type: !70, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!70 = !DISubroutineType(types: !71)
!71 = !{null, !44, !44, !72, !72, !33, !34}
!72 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !73)
!73 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!74 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !69, type: !44, flags: DIFlagArtificial)
!75 = !DILocation(line: 0, scope: !69)
!76 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !69, type: !44, flags: DIFlagArtificial)
!77 = !DILocalVariable(name: ".previous.lb.", arg: 3, scope: !69, type: !72, flags: DIFlagArtificial)
!78 = !DILocalVariable(name: ".previous.ub.", arg: 4, scope: !69, type: !72, flags: DIFlagArtificial)
!79 = !DILocalVariable(name: "lck", arg: 5, scope: !69, file: !1, line: 22, type: !33)
!80 = !DILocation(line: 22, column: 14, scope: !69)
!81 = !DILocalVariable(name: "var", arg: 6, scope: !69, file: !1, line: 23, type: !34)
!82 = !DILocation(line: 23, column: 7, scope: !69)
!83 = !DILocation(line: 28, column: 3, scope: !69)
!84 = !DILocalVariable(name: ".omp.iv", scope: !69, type: !10, flags: DIFlagArtificial)
!85 = !DILocalVariable(name: ".omp.lb", scope: !69, type: !10, flags: DIFlagArtificial)
!86 = !DILocation(line: 28, column: 8, scope: !69)
!87 = !DILocalVariable(name: ".omp.ub", scope: !69, type: !10, flags: DIFlagArtificial)
!88 = !DILocalVariable(name: ".omp.stride", scope: !69, type: !10, flags: DIFlagArtificial)
!89 = !DILocalVariable(name: ".omp.is_last", scope: !69, type: !10, flags: DIFlagArtificial)
!90 = !DILocalVariable(name: "i", scope: !69, type: !10, flags: DIFlagArtificial)
!91 = !DILocation(line: 28, column: 24, scope: !69)
!92 = !DILocation(line: 29, column: 5, scope: !93)
!93 = distinct !DILexicalBlock(scope: !69, file: !1, line: 28, column: 28)
!94 = !DILocation(line: 30, column: 8, scope: !93)
!95 = !DILocation(line: 31, column: 5, scope: !93)
!96 = !DILocation(line: 32, column: 3, scope: !93)
!97 = !DILocation(line: 27, column: 3, scope: !69)
!98 = distinct !{!98, !97, !99}
!99 = !DILocation(line: 27, column: 44, scope: !69)
!100 = !DILocation(line: 32, column: 3, scope: !69)
!101 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 28, type: !70, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!102 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !101, type: !44, flags: DIFlagArtificial)
!103 = !DILocation(line: 0, scope: !101)
!104 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !101, type: !44, flags: DIFlagArtificial)
!105 = !DILocalVariable(name: ".previous.lb.", arg: 3, scope: !101, type: !72, flags: DIFlagArtificial)
!106 = !DILocalVariable(name: ".previous.ub.", arg: 4, scope: !101, type: !72, flags: DIFlagArtificial)
!107 = !DILocalVariable(name: "lck", arg: 5, scope: !101, type: !33, flags: DIFlagArtificial)
!108 = !DILocalVariable(name: "var", arg: 6, scope: !101, type: !34, flags: DIFlagArtificial)
!109 = !DILocation(line: 28, column: 3, scope: !101)
!110 = !{!111}
!111 = !{i64 2, i64 -1, i64 -1, i1 true}
!112 = distinct !DISubprogram(name: ".omp_outlined..2", scope: !1, file: !1, line: 28, type: !42, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!113 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !112, type: !44, flags: DIFlagArtificial)
!114 = !DILocation(line: 0, scope: !112)
!115 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !112, type: !44, flags: DIFlagArtificial)
!116 = !DILocalVariable(name: "lck", arg: 3, scope: !112, type: !33, flags: DIFlagArtificial)
!117 = !DILocalVariable(name: "var", arg: 4, scope: !112, type: !34, flags: DIFlagArtificial)
!118 = !DILocation(line: 28, column: 3, scope: !112)
!119 = distinct !DISubprogram(name: "__omp_offloading_10307_2ec41af_main_l26", scope: !1, file: !1, line: 27, type: !31, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!120 = !DILocalVariable(name: "lck", arg: 1, scope: !119, type: !33, flags: DIFlagArtificial)
!121 = !DILocation(line: 0, scope: !119)
!122 = !DILocalVariable(name: "var", arg: 2, scope: !119, type: !34, flags: DIFlagArtificial)
!123 = !DILocation(line: 27, column: 3, scope: !119)
