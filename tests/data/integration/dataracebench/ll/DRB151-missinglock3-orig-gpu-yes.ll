; ModuleID = 'DRB151-missinglock3-orig-gpu-yes.c'
source_filename = "DRB151-missinglock3-orig-gpu-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 2050, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [48 x i8] c";DRB151-missinglock3-orig-gpu-yes.c;main;24;3;;\00", align 1
@2 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@3 = private unnamed_addr constant [49 x i8] c";DRB151-missinglock3-orig-gpu-yes.c;main;24;44;;\00", align 1
@4 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@.str.3 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !7 {
entry:
  %retval = alloca i32, align 4
  %var = alloca i32, align 4
  %i = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata i32* %var, metadata !11, metadata !DIExpression()), !dbg !12
  store i32 0, i32* %var, align 4, !dbg !12
  call void @llvm.dbg.declare(metadata i32* %i, metadata !13, metadata !DIExpression()), !dbg !14
  call void @__omp_offloading_10307_2ec41b0_main_l23(i32* %var) #5, !dbg !15
  %0 = load i32, i32* %var, align 4, !dbg !17
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %0), !dbg !18
  ret i32 0, !dbg !19
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @__omp_offloading_10307_2ec41b0_main_l23_debug__(i32* dereferenceable(4) %var) #2 !dbg !20 {
entry:
  %var.addr = alloca i32*, align 8
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %var, i32** %var.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %var.addr, metadata !24, metadata !DIExpression()), !dbg !25
  %2 = load i32*, i32** %var.addr, align 8, !dbg !26
  %3 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !26
  store i8* getelementptr inbounds ([48 x i8], [48 x i8]* @1, i32 0, i32 0), i8** %3, align 8, !dbg !26
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_teams(%struct.ident_t* %.kmpc_loc.addr, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*)* @.omp_outlined..2 to void (i32*, i32*, ...)*), i32* %2), !dbg !26
  ret void, !dbg !27
}

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %var) #2 !dbg !28 {
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
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !35, metadata !DIExpression()), !dbg !36
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !37, metadata !DIExpression()), !dbg !36
  store i32* %var, i32** %var.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %var.addr, metadata !38, metadata !DIExpression()), !dbg !39
  %2 = load i32*, i32** %var.addr, align 8, !dbg !40
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !41, metadata !DIExpression()), !dbg !36
  call void @llvm.dbg.declare(metadata i32* %.omp.comb.lb, metadata !42, metadata !DIExpression()), !dbg !36
  store i32 0, i32* %.omp.comb.lb, align 4, !dbg !43
  call void @llvm.dbg.declare(metadata i32* %.omp.comb.ub, metadata !44, metadata !DIExpression()), !dbg !36
  store i32 99, i32* %.omp.comb.ub, align 4, !dbg !43
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !45, metadata !DIExpression()), !dbg !36
  store i32 1, i32* %.omp.stride, align 4, !dbg !43
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !46, metadata !DIExpression()), !dbg !36
  store i32 0, i32* %.omp.is_last, align 4, !dbg !43
  call void @llvm.dbg.declare(metadata i32* %i, metadata !47, metadata !DIExpression()), !dbg !36
  %3 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !40
  store i8* getelementptr inbounds ([48 x i8], [48 x i8]* @1, i32 0, i32 0), i8** %3, align 8, !dbg !40
  %4 = load i32*, i32** %.global_tid..addr, align 8, !dbg !40
  %5 = load i32, i32* %4, align 4, !dbg !40
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %5, i32 92, i32* %.omp.is_last, i32* %.omp.comb.lb, i32* %.omp.comb.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !40
  %6 = load i32, i32* %.omp.comb.ub, align 4, !dbg !43
  %cmp = icmp sgt i32 %6, 99, !dbg !43
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !43

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !43

cond.false:                                       ; preds = %entry
  %7 = load i32, i32* %.omp.comb.ub, align 4, !dbg !43
  br label %cond.end, !dbg !43

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 99, %cond.true ], [ %7, %cond.false ], !dbg !43
  store i32 %cond, i32* %.omp.comb.ub, align 4, !dbg !43
  %8 = load i32, i32* %.omp.comb.lb, align 4, !dbg !43
  store i32 %8, i32* %.omp.iv, align 4, !dbg !43
  br label %omp.inner.for.cond, !dbg !40

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %9 = load i32, i32* %.omp.iv, align 4, !dbg !43
  %10 = load i32, i32* %.omp.comb.ub, align 4, !dbg !43
  %cmp1 = icmp sle i32 %9, %10, !dbg !40
  br i1 %cmp1, label %omp.inner.for.body, label %omp.inner.for.end, !dbg !40

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %11 = load i32, i32* %.omp.comb.lb, align 4, !dbg !48
  %12 = zext i32 %11 to i64, !dbg !48
  %13 = load i32, i32* %.omp.comb.ub, align 4, !dbg !48
  %14 = zext i32 %13 to i64, !dbg !48
  %15 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !48
  store i8* getelementptr inbounds ([48 x i8], [48 x i8]* @1, i32 0, i32 0), i8** %15, align 8, !dbg !48
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i64, i64, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i64 %12, i64 %14, i32* %2), !dbg !48
  br label %omp.inner.for.inc, !dbg !49

omp.inner.for.inc:                                ; preds = %omp.inner.for.body
  %16 = load i32, i32* %.omp.iv, align 4, !dbg !43
  %17 = load i32, i32* %.omp.stride, align 4, !dbg !43
  %add = add nsw i32 %16, %17, !dbg !40
  store i32 %add, i32* %.omp.iv, align 4, !dbg !40
  br label %omp.inner.for.cond, !dbg !49, !llvm.loop !51

omp.inner.for.end:                                ; preds = %omp.inner.for.cond
  br label %omp.loop.exit, !dbg !49

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %18 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !49
  store i8* getelementptr inbounds ([48 x i8], [48 x i8]* @1, i32 0, i32 0), i8** %18, align 8, !dbg !49
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %5), !dbg !49
  ret void, !dbg !53
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined._debug__.1(i32* noalias %.global_tid., i32* noalias %.bound_tid., i64 %.previous.lb., i64 %.previous.ub., i32* dereferenceable(4) %var) #2 !dbg !54 {
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
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !59, metadata !DIExpression()), !dbg !60
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !61, metadata !DIExpression()), !dbg !60
  store i64 %.previous.lb., i64* %.previous.lb..addr, align 8
  call void @llvm.dbg.declare(metadata i64* %.previous.lb..addr, metadata !62, metadata !DIExpression()), !dbg !60
  store i64 %.previous.ub., i64* %.previous.ub..addr, align 8
  call void @llvm.dbg.declare(metadata i64* %.previous.ub..addr, metadata !63, metadata !DIExpression()), !dbg !60
  store i32* %var, i32** %var.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %var.addr, metadata !64, metadata !DIExpression()), !dbg !65
  %2 = load i32*, i32** %var.addr, align 8, !dbg !66
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !67, metadata !DIExpression()), !dbg !60
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !68, metadata !DIExpression()), !dbg !60
  store i32 0, i32* %.omp.lb, align 4, !dbg !69
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !70, metadata !DIExpression()), !dbg !60
  store i32 99, i32* %.omp.ub, align 4, !dbg !69
  %3 = load i64, i64* %.previous.lb..addr, align 8, !dbg !66
  %conv = trunc i64 %3 to i32, !dbg !66
  %4 = load i64, i64* %.previous.ub..addr, align 8, !dbg !66
  %conv1 = trunc i64 %4 to i32, !dbg !66
  store i32 %conv, i32* %.omp.lb, align 4, !dbg !66
  store i32 %conv1, i32* %.omp.ub, align 4, !dbg !66
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !71, metadata !DIExpression()), !dbg !60
  store i32 1, i32* %.omp.stride, align 4, !dbg !69
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !72, metadata !DIExpression()), !dbg !60
  store i32 0, i32* %.omp.is_last, align 4, !dbg !69
  call void @llvm.dbg.declare(metadata i32* %i, metadata !73, metadata !DIExpression()), !dbg !60
  %5 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !66
  store i8* getelementptr inbounds ([48 x i8], [48 x i8]* @1, i32 0, i32 0), i8** %5, align 8, !dbg !66
  %6 = load i32*, i32** %.global_tid..addr, align 8, !dbg !66
  %7 = load i32, i32* %6, align 4, !dbg !66
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %7, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !66
  %8 = load i32, i32* %.omp.ub, align 4, !dbg !69
  %cmp = icmp sgt i32 %8, 99, !dbg !69
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !69

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !69

cond.false:                                       ; preds = %entry
  %9 = load i32, i32* %.omp.ub, align 4, !dbg !69
  br label %cond.end, !dbg !69

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 99, %cond.true ], [ %9, %cond.false ], !dbg !69
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !69
  %10 = load i32, i32* %.omp.lb, align 4, !dbg !69
  store i32 %10, i32* %.omp.iv, align 4, !dbg !69
  br label %omp.inner.for.cond, !dbg !66

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %11 = load i32, i32* %.omp.iv, align 4, !dbg !69
  %12 = load i32, i32* %.omp.ub, align 4, !dbg !69
  %cmp3 = icmp sle i32 %11, %12, !dbg !66
  br i1 %cmp3, label %omp.inner.for.body, label %omp.inner.for.end, !dbg !66

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %13 = load i32, i32* %.omp.iv, align 4, !dbg !69
  %mul = mul nsw i32 %13, 1, !dbg !74
  %add = add nsw i32 0, %mul, !dbg !74
  store i32 %add, i32* %i, align 4, !dbg !74
  %14 = load i32, i32* %2, align 4, !dbg !75
  %inc = add nsw i32 %14, 1, !dbg !75
  store i32 %inc, i32* %2, align 4, !dbg !75
  br label %omp.body.continue, !dbg !77

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !78

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %15 = load i32, i32* %.omp.iv, align 4, !dbg !69
  %add5 = add nsw i32 %15, 1, !dbg !66
  store i32 %add5, i32* %.omp.iv, align 4, !dbg !66
  br label %omp.inner.for.cond, !dbg !78, !llvm.loop !79

omp.inner.for.end:                                ; preds = %omp.inner.for.cond
  br label %omp.loop.exit, !dbg !78

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %16 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !78
  store i8* getelementptr inbounds ([49 x i8], [49 x i8]* @3, i32 0, i32 0), i8** %16, align 8, !dbg !78
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %7), !dbg !78
  ret void, !dbg !81
}

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i64 %.previous.lb., i64 %.previous.ub., i32* dereferenceable(4) %var) #2 !dbg !82 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %.previous.lb..addr = alloca i64, align 8
  %.previous.ub..addr = alloca i64, align 8
  %var.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !83, metadata !DIExpression()), !dbg !84
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !85, metadata !DIExpression()), !dbg !84
  store i64 %.previous.lb., i64* %.previous.lb..addr, align 8
  call void @llvm.dbg.declare(metadata i64* %.previous.lb..addr, metadata !86, metadata !DIExpression()), !dbg !84
  store i64 %.previous.ub., i64* %.previous.ub..addr, align 8
  call void @llvm.dbg.declare(metadata i64* %.previous.ub..addr, metadata !87, metadata !DIExpression()), !dbg !84
  store i32* %var, i32** %var.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %var.addr, metadata !88, metadata !DIExpression()), !dbg !84
  %0 = load i32*, i32** %var.addr, align 8, !dbg !89
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !89
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !89
  %3 = load i64, i64* %.previous.lb..addr, align 8, !dbg !89
  %4 = load i64, i64* %.previous.ub..addr, align 8, !dbg !89
  %5 = load i32*, i32** %var.addr, align 8, !dbg !89
  call void @.omp_outlined._debug__.1(i32* %1, i32* %2, i64 %3, i64 %4, i32* %5) #5, !dbg !89
  ret void, !dbg !89
}

declare !callback !90 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined..2(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %var) #2 !dbg !92 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %var.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !93, metadata !DIExpression()), !dbg !94
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !95, metadata !DIExpression()), !dbg !94
  store i32* %var, i32** %var.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %var.addr, metadata !96, metadata !DIExpression()), !dbg !94
  %0 = load i32*, i32** %var.addr, align 8, !dbg !97
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !97
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !97
  %3 = load i32*, i32** %var.addr, align 8, !dbg !97
  call void @.omp_outlined._debug__(i32* %1, i32* %2, i32* %3) #5, !dbg !97
  ret void, !dbg !97
}

declare !callback !90 dso_local void @__kmpc_fork_teams(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @__omp_offloading_10307_2ec41b0_main_l23(i32* dereferenceable(4) %var) #2 !dbg !98 {
entry:
  %var.addr = alloca i32*, align 8
  store i32* %var, i32** %var.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %var.addr, metadata !99, metadata !DIExpression()), !dbg !100
  %0 = load i32*, i32** %var.addr, align 8, !dbg !101
  %1 = load i32*, i32** %var.addr, align 8, !dbg !101
  call void @__omp_offloading_10307_2ec41b0_main_l23_debug__(i32* %1) #5, !dbg !101
  ret void, !dbg !101
}

declare dso_local i32 @printf(i8*, ...) #4

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noinline norecurse nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.1 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "DRB151-missinglock3-orig-gpu-yes.c", directory: "/home/yanze/code/OpenRace/tests/data/integration/dataracebench")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.1 "}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 19, type: !8, scopeLine: 19, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DILocalVariable(name: "var", scope: !7, file: !1, line: 21, type: !10)
!12 = !DILocation(line: 21, column: 7, scope: !7)
!13 = !DILocalVariable(name: "i", scope: !7, file: !1, line: 21, type: !10)
!14 = !DILocation(line: 21, column: 13, scope: !7)
!15 = !DILocation(line: 23, column: 3, scope: !16)
!16 = distinct !DILexicalBlock(scope: !7, file: !1, line: 23, column: 3)
!17 = !DILocation(line: 29, column: 17, scope: !7)
!18 = !DILocation(line: 29, column: 3, scope: !7)
!19 = !DILocation(line: 30, column: 3, scope: !7)
!20 = distinct !DISubprogram(name: "__omp_offloading_10307_2ec41b0_main_l23_debug__", scope: !1, file: !1, line: 24, type: !21, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!21 = !DISubroutineType(types: !22)
!22 = !{null, !23}
!23 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !10, size: 64)
!24 = !DILocalVariable(name: "var", arg: 1, scope: !20, file: !1, line: 21, type: !23)
!25 = !DILocation(line: 21, column: 7, scope: !20)
!26 = !DILocation(line: 24, column: 3, scope: !20)
!27 = !DILocation(line: 24, column: 44, scope: !20)
!28 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 25, type: !29, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!29 = !DISubroutineType(types: !30)
!30 = !{null, !31, !31, !23}
!31 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !32)
!32 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !33)
!33 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !34, size: 64)
!34 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!35 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !28, type: !31, flags: DIFlagArtificial)
!36 = !DILocation(line: 0, scope: !28)
!37 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !28, type: !31, flags: DIFlagArtificial)
!38 = !DILocalVariable(name: "var", arg: 3, scope: !28, file: !1, line: 21, type: !23)
!39 = !DILocation(line: 21, column: 7, scope: !28)
!40 = !DILocation(line: 25, column: 3, scope: !28)
!41 = !DILocalVariable(name: ".omp.iv", scope: !28, type: !10, flags: DIFlagArtificial)
!42 = !DILocalVariable(name: ".omp.comb.lb", scope: !28, type: !10, flags: DIFlagArtificial)
!43 = !DILocation(line: 25, column: 8, scope: !28)
!44 = !DILocalVariable(name: ".omp.comb.ub", scope: !28, type: !10, flags: DIFlagArtificial)
!45 = !DILocalVariable(name: ".omp.stride", scope: !28, type: !10, flags: DIFlagArtificial)
!46 = !DILocalVariable(name: ".omp.is_last", scope: !28, type: !10, flags: DIFlagArtificial)
!47 = !DILocalVariable(name: "i", scope: !28, type: !10, flags: DIFlagArtificial)
!48 = !DILocation(line: 24, column: 3, scope: !28)
!49 = !DILocation(line: 24, column: 44, scope: !50)
!50 = distinct !DILexicalBlock(scope: !28, file: !1, line: 24, column: 3)
!51 = distinct !{!51, !48, !52}
!52 = !DILocation(line: 24, column: 44, scope: !28)
!53 = !DILocation(line: 27, column: 3, scope: !28)
!54 = distinct !DISubprogram(name: ".omp_outlined._debug__.1", scope: !1, file: !1, line: 25, type: !55, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!55 = !DISubroutineType(types: !56)
!56 = !{null, !31, !31, !57, !57, !23}
!57 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !58)
!58 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!59 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !54, type: !31, flags: DIFlagArtificial)
!60 = !DILocation(line: 0, scope: !54)
!61 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !54, type: !31, flags: DIFlagArtificial)
!62 = !DILocalVariable(name: ".previous.lb.", arg: 3, scope: !54, type: !57, flags: DIFlagArtificial)
!63 = !DILocalVariable(name: ".previous.ub.", arg: 4, scope: !54, type: !57, flags: DIFlagArtificial)
!64 = !DILocalVariable(name: "var", arg: 5, scope: !54, file: !1, line: 21, type: !23)
!65 = !DILocation(line: 21, column: 7, scope: !54)
!66 = !DILocation(line: 25, column: 3, scope: !54)
!67 = !DILocalVariable(name: ".omp.iv", scope: !54, type: !10, flags: DIFlagArtificial)
!68 = !DILocalVariable(name: ".omp.lb", scope: !54, type: !10, flags: DIFlagArtificial)
!69 = !DILocation(line: 25, column: 8, scope: !54)
!70 = !DILocalVariable(name: ".omp.ub", scope: !54, type: !10, flags: DIFlagArtificial)
!71 = !DILocalVariable(name: ".omp.stride", scope: !54, type: !10, flags: DIFlagArtificial)
!72 = !DILocalVariable(name: ".omp.is_last", scope: !54, type: !10, flags: DIFlagArtificial)
!73 = !DILocalVariable(name: "i", scope: !54, type: !10, flags: DIFlagArtificial)
!74 = !DILocation(line: 25, column: 24, scope: !54)
!75 = !DILocation(line: 26, column: 8, scope: !76)
!76 = distinct !DILexicalBlock(scope: !54, file: !1, line: 25, column: 28)
!77 = !DILocation(line: 27, column: 3, scope: !76)
!78 = !DILocation(line: 24, column: 3, scope: !54)
!79 = distinct !{!79, !78, !80}
!80 = !DILocation(line: 24, column: 44, scope: !54)
!81 = !DILocation(line: 27, column: 3, scope: !54)
!82 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 25, type: !55, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!83 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !82, type: !31, flags: DIFlagArtificial)
!84 = !DILocation(line: 0, scope: !82)
!85 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !82, type: !31, flags: DIFlagArtificial)
!86 = !DILocalVariable(name: ".previous.lb.", arg: 3, scope: !82, type: !57, flags: DIFlagArtificial)
!87 = !DILocalVariable(name: ".previous.ub.", arg: 4, scope: !82, type: !57, flags: DIFlagArtificial)
!88 = !DILocalVariable(name: "var", arg: 5, scope: !82, type: !23, flags: DIFlagArtificial)
!89 = !DILocation(line: 25, column: 3, scope: !82)
!90 = !{!91}
!91 = !{i64 2, i64 -1, i64 -1, i1 true}
!92 = distinct !DISubprogram(name: ".omp_outlined..2", scope: !1, file: !1, line: 25, type: !29, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!93 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !92, type: !31, flags: DIFlagArtificial)
!94 = !DILocation(line: 0, scope: !92)
!95 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !92, type: !31, flags: DIFlagArtificial)
!96 = !DILocalVariable(name: "var", arg: 3, scope: !92, type: !23, flags: DIFlagArtificial)
!97 = !DILocation(line: 25, column: 3, scope: !92)
!98 = distinct !DISubprogram(name: "__omp_offloading_10307_2ec41b0_main_l23", scope: !1, file: !1, line: 24, type: !21, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!99 = !DILocalVariable(name: "var", arg: 1, scope: !98, type: !23, flags: DIFlagArtificial)
!100 = !DILocation(line: 0, scope: !98)
!101 = !DILocation(line: 24, column: 3, scope: !98)
