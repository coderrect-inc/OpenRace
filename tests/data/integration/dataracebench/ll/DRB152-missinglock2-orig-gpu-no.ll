; ModuleID = 'DRB152-missinglock2-orig-gpu-no.c'
source_filename = "DRB152-missinglock2-orig-gpu-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }
%struct.omp_lock_t = type { i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 2050, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [47 x i8] c";DRB152-missinglock2-orig-gpu-no.c;main;25;3;;\00", align 1
@2 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@3 = private unnamed_addr constant [48 x i8] c";DRB152-missinglock2-orig-gpu-no.c;main;25;38;;\00", align 1
@4 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@5 = private unnamed_addr constant [47 x i8] c";DRB152-missinglock2-orig-gpu-no.c;main;24;3;;\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !7 {
entry:
  %retval = alloca i32, align 4
  %lck = alloca %struct.omp_lock_t, align 8
  %var = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata %struct.omp_lock_t* %lck, metadata !11, metadata !DIExpression()), !dbg !18
  call void @llvm.dbg.declare(metadata i32* %var, metadata !19, metadata !DIExpression()), !dbg !20
  store i32 0, i32* %var, align 4, !dbg !20
  call void @omp_init_lock(%struct.omp_lock_t* %lck), !dbg !21
  call void @__omp_offloading_10307_2ec41b1_main_l23(%struct.omp_lock_t* %lck, i32* %var) #5, !dbg !22
  call void @omp_destroy_lock(%struct.omp_lock_t* %lck), !dbg !24
  %0 = load i32, i32* %var, align 4, !dbg !25
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %0), !dbg !26
  ret i32 0, !dbg !27
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare dso_local void @omp_init_lock(%struct.omp_lock_t*) #2

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @__omp_offloading_10307_2ec41b1_main_l23_debug__(%struct.omp_lock_t* dereferenceable(8) %lck, i32* dereferenceable(4) %var) #3 !dbg !28 {
entry:
  %lck.addr = alloca %struct.omp_lock_t*, align 8
  %var.addr = alloca i32*, align 8
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  %2 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4
  store i8* getelementptr inbounds ([47 x i8], [47 x i8]* @5, i32 0, i32 0), i8** %2, align 8
  %3 = call i32 @__kmpc_global_thread_num(%struct.ident_t* %.kmpc_loc.addr)
  store %struct.omp_lock_t* %lck, %struct.omp_lock_t** %lck.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.omp_lock_t** %lck.addr, metadata !33, metadata !DIExpression()), !dbg !34
  store i32* %var, i32** %var.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %var.addr, metadata !35, metadata !DIExpression()), !dbg !36
  %4 = load %struct.omp_lock_t*, %struct.omp_lock_t** %lck.addr, align 8, !dbg !37
  %5 = load i32*, i32** %var.addr, align 8, !dbg !37
  %6 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !37
  store i8* getelementptr inbounds ([47 x i8], [47 x i8]* @5, i32 0, i32 0), i8** %6, align 8, !dbg !37
  %7 = call i32 @__kmpc_push_num_teams(%struct.ident_t* %.kmpc_loc.addr, i32 %3, i32 1, i32 0), !dbg !37
  %8 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !37
  store i8* getelementptr inbounds ([47 x i8], [47 x i8]* @5, i32 0, i32 0), i8** %8, align 8, !dbg !37
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_teams(%struct.ident_t* %.kmpc_loc.addr, i32 2, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, %struct.omp_lock_t*, i32*)* @.omp_outlined..2 to void (i32*, i32*, ...)*), %struct.omp_lock_t* %4, i32* %5), !dbg !37
  ret void, !dbg !38
}

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., %struct.omp_lock_t* dereferenceable(8) %lck, i32* dereferenceable(4) %var) #3 !dbg !39 {
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
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !46, metadata !DIExpression()), !dbg !47
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !48, metadata !DIExpression()), !dbg !47
  store %struct.omp_lock_t* %lck, %struct.omp_lock_t** %lck.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.omp_lock_t** %lck.addr, metadata !49, metadata !DIExpression()), !dbg !50
  store i32* %var, i32** %var.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %var.addr, metadata !51, metadata !DIExpression()), !dbg !52
  %2 = load %struct.omp_lock_t*, %struct.omp_lock_t** %lck.addr, align 8, !dbg !53
  %3 = load i32*, i32** %var.addr, align 8, !dbg !53
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !54, metadata !DIExpression()), !dbg !56
  call void @llvm.dbg.declare(metadata i32* %.omp.comb.lb, metadata !57, metadata !DIExpression()), !dbg !56
  store i32 0, i32* %.omp.comb.lb, align 4, !dbg !58
  call void @llvm.dbg.declare(metadata i32* %.omp.comb.ub, metadata !59, metadata !DIExpression()), !dbg !56
  store i32 99, i32* %.omp.comb.ub, align 4, !dbg !58
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !60, metadata !DIExpression()), !dbg !56
  store i32 1, i32* %.omp.stride, align 4, !dbg !58
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !61, metadata !DIExpression()), !dbg !56
  store i32 0, i32* %.omp.is_last, align 4, !dbg !58
  call void @llvm.dbg.declare(metadata i32* %i, metadata !62, metadata !DIExpression()), !dbg !56
  %4 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !53
  store i8* getelementptr inbounds ([47 x i8], [47 x i8]* @1, i32 0, i32 0), i8** %4, align 8, !dbg !53
  %5 = load i32*, i32** %.global_tid..addr, align 8, !dbg !53
  %6 = load i32, i32* %5, align 4, !dbg !53
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %6, i32 92, i32* %.omp.is_last, i32* %.omp.comb.lb, i32* %.omp.comb.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !53
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
  br label %omp.inner.for.cond, !dbg !53

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %10 = load i32, i32* %.omp.iv, align 4, !dbg !58
  %11 = load i32, i32* %.omp.comb.ub, align 4, !dbg !58
  %cmp1 = icmp sle i32 %10, %11, !dbg !63
  br i1 %cmp1, label %omp.inner.for.body, label %omp.inner.for.end, !dbg !53

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %12 = load i32, i32* %.omp.comb.lb, align 4, !dbg !64
  %13 = zext i32 %12 to i64, !dbg !64
  %14 = load i32, i32* %.omp.comb.ub, align 4, !dbg !64
  %15 = zext i32 %14 to i64, !dbg !64
  %16 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !64
  store i8* getelementptr inbounds ([47 x i8], [47 x i8]* @1, i32 0, i32 0), i8** %16, align 8, !dbg !64
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 4, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i64, i64, %struct.omp_lock_t*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i64 %13, i64 %15, %struct.omp_lock_t* %2, i32* %3), !dbg !64
  br label %omp.inner.for.inc, !dbg !65

omp.inner.for.inc:                                ; preds = %omp.inner.for.body
  %17 = load i32, i32* %.omp.iv, align 4, !dbg !58
  %18 = load i32, i32* %.omp.stride, align 4, !dbg !58
  %add = add nsw i32 %17, %18, !dbg !63
  store i32 %add, i32* %.omp.iv, align 4, !dbg !63
  br label %omp.inner.for.cond, !dbg !65, !llvm.loop !67

omp.inner.for.end:                                ; preds = %omp.inner.for.cond
  br label %omp.loop.exit, !dbg !65

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %19 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !65
  store i8* getelementptr inbounds ([47 x i8], [47 x i8]* @1, i32 0, i32 0), i8** %19, align 8, !dbg !65
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %6), !dbg !65
  ret void, !dbg !69
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined._debug__.1(i32* noalias %.global_tid., i32* noalias %.bound_tid., i64 %.previous.lb., i64 %.previous.ub., %struct.omp_lock_t* dereferenceable(8) %lck, i32* dereferenceable(4) %var) #3 !dbg !70 {
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
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !75, metadata !DIExpression()), !dbg !76
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !77, metadata !DIExpression()), !dbg !76
  store i64 %.previous.lb., i64* %.previous.lb..addr, align 8
  call void @llvm.dbg.declare(metadata i64* %.previous.lb..addr, metadata !78, metadata !DIExpression()), !dbg !76
  store i64 %.previous.ub., i64* %.previous.ub..addr, align 8
  call void @llvm.dbg.declare(metadata i64* %.previous.ub..addr, metadata !79, metadata !DIExpression()), !dbg !76
  store %struct.omp_lock_t* %lck, %struct.omp_lock_t** %lck.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.omp_lock_t** %lck.addr, metadata !80, metadata !DIExpression()), !dbg !81
  store i32* %var, i32** %var.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %var.addr, metadata !82, metadata !DIExpression()), !dbg !83
  %2 = load %struct.omp_lock_t*, %struct.omp_lock_t** %lck.addr, align 8, !dbg !84
  %3 = load i32*, i32** %var.addr, align 8, !dbg !84
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !85, metadata !DIExpression()), !dbg !76
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !86, metadata !DIExpression()), !dbg !76
  store i32 0, i32* %.omp.lb, align 4, !dbg !87
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !88, metadata !DIExpression()), !dbg !76
  store i32 99, i32* %.omp.ub, align 4, !dbg !87
  %4 = load i64, i64* %.previous.lb..addr, align 8, !dbg !84
  %conv = trunc i64 %4 to i32, !dbg !84
  %5 = load i64, i64* %.previous.ub..addr, align 8, !dbg !84
  %conv1 = trunc i64 %5 to i32, !dbg !84
  store i32 %conv, i32* %.omp.lb, align 4, !dbg !84
  store i32 %conv1, i32* %.omp.ub, align 4, !dbg !84
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !89, metadata !DIExpression()), !dbg !76
  store i32 1, i32* %.omp.stride, align 4, !dbg !87
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !90, metadata !DIExpression()), !dbg !76
  store i32 0, i32* %.omp.is_last, align 4, !dbg !87
  call void @llvm.dbg.declare(metadata i32* %i, metadata !91, metadata !DIExpression()), !dbg !76
  %6 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !84
  store i8* getelementptr inbounds ([47 x i8], [47 x i8]* @1, i32 0, i32 0), i8** %6, align 8, !dbg !84
  %7 = load i32*, i32** %.global_tid..addr, align 8, !dbg !84
  %8 = load i32, i32* %7, align 4, !dbg !84
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %8, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !84
  %9 = load i32, i32* %.omp.ub, align 4, !dbg !87
  %cmp = icmp sgt i32 %9, 99, !dbg !87
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !87

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !87

cond.false:                                       ; preds = %entry
  %10 = load i32, i32* %.omp.ub, align 4, !dbg !87
  br label %cond.end, !dbg !87

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 99, %cond.true ], [ %10, %cond.false ], !dbg !87
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !87
  %11 = load i32, i32* %.omp.lb, align 4, !dbg !87
  store i32 %11, i32* %.omp.iv, align 4, !dbg !87
  br label %omp.inner.for.cond, !dbg !84

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %12 = load i32, i32* %.omp.iv, align 4, !dbg !87
  %13 = load i32, i32* %.omp.ub, align 4, !dbg !87
  %cmp3 = icmp sle i32 %12, %13, !dbg !84
  br i1 %cmp3, label %omp.inner.for.body, label %omp.inner.for.end, !dbg !84

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %14 = load i32, i32* %.omp.iv, align 4, !dbg !87
  %mul = mul nsw i32 %14, 1, !dbg !92
  %add = add nsw i32 0, %mul, !dbg !92
  store i32 %add, i32* %i, align 4, !dbg !92
  call void @omp_set_lock(%struct.omp_lock_t* %2), !dbg !93
  %15 = load i32, i32* %3, align 4, !dbg !95
  %inc = add nsw i32 %15, 1, !dbg !95
  store i32 %inc, i32* %3, align 4, !dbg !95
  call void @omp_unset_lock(%struct.omp_lock_t* %2), !dbg !96
  br label %omp.body.continue, !dbg !97

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !98

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %16 = load i32, i32* %.omp.iv, align 4, !dbg !87
  %add5 = add nsw i32 %16, 1, !dbg !84
  store i32 %add5, i32* %.omp.iv, align 4, !dbg !84
  br label %omp.inner.for.cond, !dbg !98, !llvm.loop !99

omp.inner.for.end:                                ; preds = %omp.inner.for.cond
  br label %omp.loop.exit, !dbg !98

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %17 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !98
  store i8* getelementptr inbounds ([48 x i8], [48 x i8]* @3, i32 0, i32 0), i8** %17, align 8, !dbg !98
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %8), !dbg !98
  ret void, !dbg !101
}

declare dso_local void @omp_set_lock(%struct.omp_lock_t*) #2

declare dso_local void @omp_unset_lock(%struct.omp_lock_t*) #2

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i64 %.previous.lb., i64 %.previous.ub., %struct.omp_lock_t* dereferenceable(8) %lck, i32* dereferenceable(4) %var) #3 !dbg !102 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %.previous.lb..addr = alloca i64, align 8
  %.previous.ub..addr = alloca i64, align 8
  %lck.addr = alloca %struct.omp_lock_t*, align 8
  %var.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !103, metadata !DIExpression()), !dbg !104
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !105, metadata !DIExpression()), !dbg !104
  store i64 %.previous.lb., i64* %.previous.lb..addr, align 8
  call void @llvm.dbg.declare(metadata i64* %.previous.lb..addr, metadata !106, metadata !DIExpression()), !dbg !104
  store i64 %.previous.ub., i64* %.previous.ub..addr, align 8
  call void @llvm.dbg.declare(metadata i64* %.previous.ub..addr, metadata !107, metadata !DIExpression()), !dbg !104
  store %struct.omp_lock_t* %lck, %struct.omp_lock_t** %lck.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.omp_lock_t** %lck.addr, metadata !108, metadata !DIExpression()), !dbg !104
  store i32* %var, i32** %var.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %var.addr, metadata !109, metadata !DIExpression()), !dbg !104
  %0 = load %struct.omp_lock_t*, %struct.omp_lock_t** %lck.addr, align 8, !dbg !110
  %1 = load i32*, i32** %var.addr, align 8, !dbg !110
  %2 = load i32*, i32** %.global_tid..addr, align 8, !dbg !110
  %3 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !110
  %4 = load i64, i64* %.previous.lb..addr, align 8, !dbg !110
  %5 = load i64, i64* %.previous.ub..addr, align 8, !dbg !110
  %6 = load %struct.omp_lock_t*, %struct.omp_lock_t** %lck.addr, align 8, !dbg !110
  %7 = load i32*, i32** %var.addr, align 8, !dbg !110
  call void @.omp_outlined._debug__.1(i32* %2, i32* %3, i64 %4, i64 %5, %struct.omp_lock_t* %6, i32* %7) #5, !dbg !110
  ret void, !dbg !110
}

declare !callback !111 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined..2(i32* noalias %.global_tid., i32* noalias %.bound_tid., %struct.omp_lock_t* dereferenceable(8) %lck, i32* dereferenceable(4) %var) #3 !dbg !113 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %lck.addr = alloca %struct.omp_lock_t*, align 8
  %var.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !114, metadata !DIExpression()), !dbg !115
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !116, metadata !DIExpression()), !dbg !115
  store %struct.omp_lock_t* %lck, %struct.omp_lock_t** %lck.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.omp_lock_t** %lck.addr, metadata !117, metadata !DIExpression()), !dbg !115
  store i32* %var, i32** %var.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %var.addr, metadata !118, metadata !DIExpression()), !dbg !115
  %0 = load %struct.omp_lock_t*, %struct.omp_lock_t** %lck.addr, align 8, !dbg !119
  %1 = load i32*, i32** %var.addr, align 8, !dbg !119
  %2 = load i32*, i32** %.global_tid..addr, align 8, !dbg !119
  %3 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !119
  %4 = load %struct.omp_lock_t*, %struct.omp_lock_t** %lck.addr, align 8, !dbg !119
  %5 = load i32*, i32** %var.addr, align 8, !dbg !119
  call void @.omp_outlined._debug__(i32* %2, i32* %3, %struct.omp_lock_t* %4, i32* %5) #5, !dbg !119
  ret void, !dbg !119
}

declare dso_local i32 @__kmpc_global_thread_num(%struct.ident_t*)

declare dso_local i32 @__kmpc_push_num_teams(%struct.ident_t*, i32, i32, i32)

declare !callback !111 dso_local void @__kmpc_fork_teams(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @__omp_offloading_10307_2ec41b1_main_l23(%struct.omp_lock_t* dereferenceable(8) %lck, i32* dereferenceable(4) %var) #3 !dbg !120 {
entry:
  %lck.addr = alloca %struct.omp_lock_t*, align 8
  %var.addr = alloca i32*, align 8
  store %struct.omp_lock_t* %lck, %struct.omp_lock_t** %lck.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.omp_lock_t** %lck.addr, metadata !121, metadata !DIExpression()), !dbg !122
  store i32* %var, i32** %var.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %var.addr, metadata !123, metadata !DIExpression()), !dbg !122
  %0 = load %struct.omp_lock_t*, %struct.omp_lock_t** %lck.addr, align 8, !dbg !124
  %1 = load i32*, i32** %var.addr, align 8, !dbg !124
  %2 = load %struct.omp_lock_t*, %struct.omp_lock_t** %lck.addr, align 8, !dbg !124
  %3 = load i32*, i32** %var.addr, align 8, !dbg !124
  call void @__omp_offloading_10307_2ec41b1_main_l23_debug__(%struct.omp_lock_t* %2, i32* %3) #5, !dbg !124
  ret void, !dbg !124
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
!1 = !DIFile(filename: "DRB152-missinglock2-orig-gpu-no.c", directory: "/home/yanze/code/OpenRace/tests/data/integration/dataracebench")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.1 "}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 18, type: !8, scopeLine: 18, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DILocalVariable(name: "lck", scope: !7, file: !1, line: 19, type: !12)
!12 = !DIDerivedType(tag: DW_TAG_typedef, name: "omp_lock_t", file: !13, line: 84, baseType: !14)
!13 = !DIFile(filename: "/usr/include/omp.h", directory: "")
!14 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "omp_lock_t", file: !13, line: 82, size: 64, elements: !15)
!15 = !{!16}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "_lk", scope: !14, file: !13, line: 83, baseType: !17, size: 64)
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!18 = !DILocation(line: 19, column: 14, scope: !7)
!19 = !DILocalVariable(name: "var", scope: !7, file: !1, line: 20, type: !10)
!20 = !DILocation(line: 20, column: 7, scope: !7)
!21 = !DILocation(line: 21, column: 3, scope: !7)
!22 = !DILocation(line: 23, column: 3, scope: !23)
!23 = distinct !DILexicalBlock(scope: !7, file: !1, line: 23, column: 3)
!24 = !DILocation(line: 32, column: 3, scope: !7)
!25 = !DILocation(line: 33, column: 17, scope: !7)
!26 = !DILocation(line: 33, column: 3, scope: !7)
!27 = !DILocation(line: 34, column: 3, scope: !7)
!28 = distinct !DISubprogram(name: "__omp_offloading_10307_2ec41b1_main_l23_debug__", scope: !1, file: !1, line: 24, type: !29, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!29 = !DISubroutineType(types: !30)
!30 = !{null, !31, !32}
!31 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !12, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !10, size: 64)
!33 = !DILocalVariable(name: "lck", arg: 1, scope: !28, file: !1, line: 19, type: !31)
!34 = !DILocation(line: 19, column: 14, scope: !28)
!35 = !DILocalVariable(name: "var", arg: 2, scope: !28, file: !1, line: 20, type: !32)
!36 = !DILocation(line: 20, column: 7, scope: !28)
!37 = !DILocation(line: 24, column: 3, scope: !28)
!38 = !DILocation(line: 24, column: 33, scope: !28)
!39 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 25, type: !40, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!40 = !DISubroutineType(types: !41)
!41 = !{null, !42, !42, !31, !32}
!42 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!43 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !44)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!46 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !39, type: !42, flags: DIFlagArtificial)
!47 = !DILocation(line: 0, scope: !39)
!48 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !39, type: !42, flags: DIFlagArtificial)
!49 = !DILocalVariable(name: "lck", arg: 3, scope: !39, file: !1, line: 19, type: !31)
!50 = !DILocation(line: 19, column: 14, scope: !39)
!51 = !DILocalVariable(name: "var", arg: 4, scope: !39, file: !1, line: 20, type: !32)
!52 = !DILocation(line: 20, column: 7, scope: !39)
!53 = !DILocation(line: 25, column: 3, scope: !39)
!54 = !DILocalVariable(name: ".omp.iv", scope: !55, type: !10, flags: DIFlagArtificial)
!55 = distinct !DILexicalBlock(scope: !39, file: !1, line: 25, column: 3)
!56 = !DILocation(line: 0, scope: !55)
!57 = !DILocalVariable(name: ".omp.comb.lb", scope: !55, type: !10, flags: DIFlagArtificial)
!58 = !DILocation(line: 26, column: 8, scope: !55)
!59 = !DILocalVariable(name: ".omp.comb.ub", scope: !55, type: !10, flags: DIFlagArtificial)
!60 = !DILocalVariable(name: ".omp.stride", scope: !55, type: !10, flags: DIFlagArtificial)
!61 = !DILocalVariable(name: ".omp.is_last", scope: !55, type: !10, flags: DIFlagArtificial)
!62 = !DILocalVariable(name: "i", scope: !55, type: !10, flags: DIFlagArtificial)
!63 = !DILocation(line: 26, column: 3, scope: !55)
!64 = !DILocation(line: 25, column: 3, scope: !55)
!65 = !DILocation(line: 25, column: 38, scope: !66)
!66 = distinct !DILexicalBlock(scope: !55, file: !1, line: 25, column: 3)
!67 = distinct !{!67, !64, !68}
!68 = !DILocation(line: 25, column: 38, scope: !55)
!69 = !DILocation(line: 25, column: 38, scope: !39)
!70 = distinct !DISubprogram(name: ".omp_outlined._debug__.1", scope: !1, file: !1, line: 26, type: !71, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!71 = !DISubroutineType(types: !72)
!72 = !{null, !42, !42, !73, !73, !31, !32}
!73 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !74)
!74 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!75 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !70, type: !42, flags: DIFlagArtificial)
!76 = !DILocation(line: 0, scope: !70)
!77 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !70, type: !42, flags: DIFlagArtificial)
!78 = !DILocalVariable(name: ".previous.lb.", arg: 3, scope: !70, type: !73, flags: DIFlagArtificial)
!79 = !DILocalVariable(name: ".previous.ub.", arg: 4, scope: !70, type: !73, flags: DIFlagArtificial)
!80 = !DILocalVariable(name: "lck", arg: 5, scope: !70, file: !1, line: 19, type: !31)
!81 = !DILocation(line: 19, column: 14, scope: !70)
!82 = !DILocalVariable(name: "var", arg: 6, scope: !70, file: !1, line: 20, type: !32)
!83 = !DILocation(line: 20, column: 7, scope: !70)
!84 = !DILocation(line: 26, column: 3, scope: !70)
!85 = !DILocalVariable(name: ".omp.iv", scope: !70, type: !10, flags: DIFlagArtificial)
!86 = !DILocalVariable(name: ".omp.lb", scope: !70, type: !10, flags: DIFlagArtificial)
!87 = !DILocation(line: 26, column: 8, scope: !70)
!88 = !DILocalVariable(name: ".omp.ub", scope: !70, type: !10, flags: DIFlagArtificial)
!89 = !DILocalVariable(name: ".omp.stride", scope: !70, type: !10, flags: DIFlagArtificial)
!90 = !DILocalVariable(name: ".omp.is_last", scope: !70, type: !10, flags: DIFlagArtificial)
!91 = !DILocalVariable(name: "i", scope: !70, type: !10, flags: DIFlagArtificial)
!92 = !DILocation(line: 26, column: 22, scope: !70)
!93 = !DILocation(line: 27, column: 5, scope: !94)
!94 = distinct !DILexicalBlock(scope: !70, file: !1, line: 26, column: 26)
!95 = !DILocation(line: 28, column: 8, scope: !94)
!96 = !DILocation(line: 29, column: 5, scope: !94)
!97 = !DILocation(line: 30, column: 3, scope: !94)
!98 = !DILocation(line: 25, column: 3, scope: !70)
!99 = distinct !{!99, !98, !100}
!100 = !DILocation(line: 25, column: 38, scope: !70)
!101 = !DILocation(line: 30, column: 3, scope: !70)
!102 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 26, type: !71, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!103 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !102, type: !42, flags: DIFlagArtificial)
!104 = !DILocation(line: 0, scope: !102)
!105 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !102, type: !42, flags: DIFlagArtificial)
!106 = !DILocalVariable(name: ".previous.lb.", arg: 3, scope: !102, type: !73, flags: DIFlagArtificial)
!107 = !DILocalVariable(name: ".previous.ub.", arg: 4, scope: !102, type: !73, flags: DIFlagArtificial)
!108 = !DILocalVariable(name: "lck", arg: 5, scope: !102, type: !31, flags: DIFlagArtificial)
!109 = !DILocalVariable(name: "var", arg: 6, scope: !102, type: !32, flags: DIFlagArtificial)
!110 = !DILocation(line: 26, column: 3, scope: !102)
!111 = !{!112}
!112 = !{i64 2, i64 -1, i64 -1, i1 true}
!113 = distinct !DISubprogram(name: ".omp_outlined..2", scope: !1, file: !1, line: 25, type: !40, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!114 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !113, type: !42, flags: DIFlagArtificial)
!115 = !DILocation(line: 0, scope: !113)
!116 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !113, type: !42, flags: DIFlagArtificial)
!117 = !DILocalVariable(name: "lck", arg: 3, scope: !113, type: !31, flags: DIFlagArtificial)
!118 = !DILocalVariable(name: "var", arg: 4, scope: !113, type: !32, flags: DIFlagArtificial)
!119 = !DILocation(line: 25, column: 3, scope: !113)
!120 = distinct !DISubprogram(name: "__omp_offloading_10307_2ec41b1_main_l23", scope: !1, file: !1, line: 24, type: !29, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!121 = !DILocalVariable(name: "lck", arg: 1, scope: !120, type: !31, flags: DIFlagArtificial)
!122 = !DILocation(line: 0, scope: !120)
!123 = !DILocalVariable(name: "var", arg: 2, scope: !120, type: !32, flags: DIFlagArtificial)
!124 = !DILocation(line: 24, column: 3, scope: !120)
