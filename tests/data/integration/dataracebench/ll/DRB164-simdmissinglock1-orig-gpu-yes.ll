; ModuleID = 'DRB164-simdmissinglock1-orig-gpu-yes.c'
source_filename = "DRB164-simdmissinglock1-orig-gpu-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 2050, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [52 x i8] c";DRB164-simdmissinglock1-orig-gpu-yes.c;main;31;3;;\00", align 1
@2 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@3 = private unnamed_addr constant [53 x i8] c";DRB164-simdmissinglock1-orig-gpu-yes.c;main;31;44;;\00", align 1
@4 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@.str.3 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !7 {
entry:
  %retval = alloca i32, align 4
  %var = alloca [64 x i32], align 16
  %i = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata [64 x i32]* %var, metadata !11, metadata !DIExpression()), !dbg !15
  call void @llvm.dbg.declare(metadata i32* %i, metadata !16, metadata !DIExpression()), !dbg !18
  store i32 0, i32* %i, align 4, !dbg !18
  br label %for.cond, !dbg !19

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !20
  %cmp = icmp slt i32 %0, 64, !dbg !22
  br i1 %cmp, label %for.body, label %for.end, !dbg !23

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4, !dbg !24
  %idxprom = sext i32 %1 to i64, !dbg !26
  %arrayidx = getelementptr inbounds [64 x i32], [64 x i32]* %var, i64 0, i64 %idxprom, !dbg !26
  store i32 0, i32* %arrayidx, align 4, !dbg !27
  br label %for.inc, !dbg !28

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %i, align 4, !dbg !29
  %inc = add nsw i32 %2, 1, !dbg !29
  store i32 %inc, i32* %i, align 4, !dbg !29
  br label %for.cond, !dbg !30, !llvm.loop !31

for.end:                                          ; preds = %for.cond
  call void @__omp_offloading_10307_2ec41bd_main_l30([64 x i32]* %var) #5, !dbg !33
  %arrayidx1 = getelementptr inbounds [64 x i32], [64 x i32]* %var, i64 0, i64 63, !dbg !35
  %3 = load i32, i32* %arrayidx1, align 4, !dbg !35
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %3), !dbg !36
  ret i32 0, !dbg !37
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @__omp_offloading_10307_2ec41bd_main_l30_debug__([64 x i32]* dereferenceable(256) %var) #2 !dbg !38 {
entry:
  %var.addr = alloca [64 x i32]*, align 8
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store [64 x i32]* %var, [64 x i32]** %var.addr, align 8
  call void @llvm.dbg.declare(metadata [64 x i32]** %var.addr, metadata !42, metadata !DIExpression()), !dbg !43
  %2 = load [64 x i32]*, [64 x i32]** %var.addr, align 8, !dbg !44
  %3 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !44
  store i8* getelementptr inbounds ([52 x i8], [52 x i8]* @1, i32 0, i32 0), i8** %3, align 8, !dbg !44
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_teams(%struct.ident_t* %.kmpc_loc.addr, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, [64 x i32]*)* @.omp_outlined..2 to void (i32*, i32*, ...)*), [64 x i32]* %2), !dbg !44
  ret void, !dbg !45
}

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., [64 x i32]* dereferenceable(256) %var) #2 !dbg !46 {
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
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !53, metadata !DIExpression()), !dbg !54
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !55, metadata !DIExpression()), !dbg !54
  store [64 x i32]* %var, [64 x i32]** %var.addr, align 8
  call void @llvm.dbg.declare(metadata [64 x i32]** %var.addr, metadata !56, metadata !DIExpression()), !dbg !57
  %2 = load [64 x i32]*, [64 x i32]** %var.addr, align 8, !dbg !58
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !59, metadata !DIExpression()), !dbg !54
  call void @llvm.dbg.declare(metadata i32* %.omp.comb.lb, metadata !60, metadata !DIExpression()), !dbg !54
  store i32 0, i32* %.omp.comb.lb, align 4, !dbg !61
  call void @llvm.dbg.declare(metadata i32* %.omp.comb.ub, metadata !62, metadata !DIExpression()), !dbg !54
  store i32 99, i32* %.omp.comb.ub, align 4, !dbg !61
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !63, metadata !DIExpression()), !dbg !54
  store i32 1, i32* %.omp.stride, align 4, !dbg !61
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !64, metadata !DIExpression()), !dbg !54
  store i32 0, i32* %.omp.is_last, align 4, !dbg !61
  call void @llvm.dbg.declare(metadata i32* %i, metadata !65, metadata !DIExpression()), !dbg !54
  %3 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !58
  store i8* getelementptr inbounds ([52 x i8], [52 x i8]* @1, i32 0, i32 0), i8** %3, align 8, !dbg !58
  %4 = load i32*, i32** %.global_tid..addr, align 8, !dbg !58
  %5 = load i32, i32* %4, align 4, !dbg !58
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %5, i32 92, i32* %.omp.is_last, i32* %.omp.comb.lb, i32* %.omp.comb.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !58
  %6 = load i32, i32* %.omp.comb.ub, align 4, !dbg !61
  %cmp = icmp sgt i32 %6, 99, !dbg !61
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !61

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !61

cond.false:                                       ; preds = %entry
  %7 = load i32, i32* %.omp.comb.ub, align 4, !dbg !61
  br label %cond.end, !dbg !61

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 99, %cond.true ], [ %7, %cond.false ], !dbg !61
  store i32 %cond, i32* %.omp.comb.ub, align 4, !dbg !61
  %8 = load i32, i32* %.omp.comb.lb, align 4, !dbg !61
  store i32 %8, i32* %.omp.iv, align 4, !dbg !61
  br label %omp.inner.for.cond, !dbg !58

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %9 = load i32, i32* %.omp.iv, align 4, !dbg !61
  %10 = load i32, i32* %.omp.comb.ub, align 4, !dbg !61
  %cmp1 = icmp sle i32 %9, %10, !dbg !58
  br i1 %cmp1, label %omp.inner.for.body, label %omp.inner.for.end, !dbg !58

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %11 = load i32, i32* %.omp.comb.lb, align 4, !dbg !66
  %12 = zext i32 %11 to i64, !dbg !66
  %13 = load i32, i32* %.omp.comb.ub, align 4, !dbg !66
  %14 = zext i32 %13 to i64, !dbg !66
  %15 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !66
  store i8* getelementptr inbounds ([52 x i8], [52 x i8]* @1, i32 0, i32 0), i8** %15, align 8, !dbg !66
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i64, i64, [64 x i32]*)* @.omp_outlined. to void (i32*, i32*, ...)*), i64 %12, i64 %14, [64 x i32]* %2), !dbg !66
  br label %omp.inner.for.inc, !dbg !67

omp.inner.for.inc:                                ; preds = %omp.inner.for.body
  %16 = load i32, i32* %.omp.iv, align 4, !dbg !61
  %17 = load i32, i32* %.omp.stride, align 4, !dbg !61
  %add = add nsw i32 %16, %17, !dbg !58
  store i32 %add, i32* %.omp.iv, align 4, !dbg !58
  br label %omp.inner.for.cond, !dbg !67, !llvm.loop !69

omp.inner.for.end:                                ; preds = %omp.inner.for.cond
  br label %omp.loop.exit, !dbg !67

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %18 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !67
  store i8* getelementptr inbounds ([52 x i8], [52 x i8]* @1, i32 0, i32 0), i8** %18, align 8, !dbg !67
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %5), !dbg !67
  ret void, !dbg !71
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined._debug__.1(i32* noalias %.global_tid., i32* noalias %.bound_tid., i64 %.previous.lb., i64 %.previous.ub., [64 x i32]* dereferenceable(256) %var) #2 !dbg !72 {
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
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !77, metadata !DIExpression()), !dbg !78
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !79, metadata !DIExpression()), !dbg !78
  store i64 %.previous.lb., i64* %.previous.lb..addr, align 8
  call void @llvm.dbg.declare(metadata i64* %.previous.lb..addr, metadata !80, metadata !DIExpression()), !dbg !78
  store i64 %.previous.ub., i64* %.previous.ub..addr, align 8
  call void @llvm.dbg.declare(metadata i64* %.previous.ub..addr, metadata !81, metadata !DIExpression()), !dbg !78
  store [64 x i32]* %var, [64 x i32]** %var.addr, align 8
  call void @llvm.dbg.declare(metadata [64 x i32]** %var.addr, metadata !82, metadata !DIExpression()), !dbg !83
  %2 = load [64 x i32]*, [64 x i32]** %var.addr, align 8, !dbg !84
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !85, metadata !DIExpression()), !dbg !78
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !86, metadata !DIExpression()), !dbg !78
  store i32 0, i32* %.omp.lb, align 4, !dbg !87
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !88, metadata !DIExpression()), !dbg !78
  store i32 99, i32* %.omp.ub, align 4, !dbg !87
  %3 = load i64, i64* %.previous.lb..addr, align 8, !dbg !84
  %conv = trunc i64 %3 to i32, !dbg !84
  %4 = load i64, i64* %.previous.ub..addr, align 8, !dbg !84
  %conv1 = trunc i64 %4 to i32, !dbg !84
  store i32 %conv, i32* %.omp.lb, align 4, !dbg !84
  store i32 %conv1, i32* %.omp.ub, align 4, !dbg !84
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !89, metadata !DIExpression()), !dbg !78
  store i32 1, i32* %.omp.stride, align 4, !dbg !87
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !90, metadata !DIExpression()), !dbg !78
  store i32 0, i32* %.omp.is_last, align 4, !dbg !87
  call void @llvm.dbg.declare(metadata i32* %i, metadata !91, metadata !DIExpression()), !dbg !78
  %5 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !84
  store i8* getelementptr inbounds ([52 x i8], [52 x i8]* @1, i32 0, i32 0), i8** %5, align 8, !dbg !84
  %6 = load i32*, i32** %.global_tid..addr, align 8, !dbg !84
  %7 = load i32, i32* %6, align 4, !dbg !84
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %7, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !84
  %8 = load i32, i32* %.omp.ub, align 4, !dbg !87
  %cmp = icmp sgt i32 %8, 99, !dbg !87
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !87

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !87

cond.false:                                       ; preds = %entry
  %9 = load i32, i32* %.omp.ub, align 4, !dbg !87
  br label %cond.end, !dbg !87

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 99, %cond.true ], [ %9, %cond.false ], !dbg !87
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !87
  %10 = load i32, i32* %.omp.lb, align 4, !dbg !87
  store i32 %10, i32* %.omp.iv, align 4, !dbg !87
  br label %omp.inner.for.cond, !dbg !84

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc16, %cond.end
  %11 = load i32, i32* %.omp.iv, align 4, !dbg !87
  %12 = load i32, i32* %.omp.ub, align 4, !dbg !87
  %cmp3 = icmp sle i32 %11, %12, !dbg !84
  br i1 %cmp3, label %omp.inner.for.body, label %omp.inner.for.end18, !dbg !84

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %13 = load i32, i32* %.omp.iv, align 4, !dbg !87
  %mul = mul nsw i32 %13, 1, !dbg !92
  %add = add nsw i32 0, %mul, !dbg !92
  store i32 %add, i32* %i, align 4, !dbg !92
  call void @llvm.dbg.declare(metadata i32* %.omp.iv6, metadata !93, metadata !DIExpression()), !dbg !96
  store i32 0, i32* %.omp.iv6, align 4, !dbg !97
  call void @llvm.dbg.declare(metadata i32* %i7, metadata !98, metadata !DIExpression()), !dbg !96
  br label %omp.inner.for.cond8, !dbg !99

omp.inner.for.cond8:                              ; preds = %omp.inner.for.inc, %omp.inner.for.body
  %14 = load i32, i32* %.omp.iv6, align 4, !dbg !97, !llvm.access.group !100
  %cmp9 = icmp slt i32 %14, 64, !dbg !101
  br i1 %cmp9, label %omp.inner.for.body11, label %omp.inner.for.end, !dbg !99

omp.inner.for.body11:                             ; preds = %omp.inner.for.cond8
  %15 = load i32, i32* %.omp.iv6, align 4, !dbg !97, !llvm.access.group !100
  %mul12 = mul nsw i32 %15, 1, !dbg !102
  %add13 = add nsw i32 0, %mul12, !dbg !102
  store i32 %add13, i32* %i7, align 4, !dbg !102, !llvm.access.group !100
  %16 = load i32, i32* %i7, align 4, !dbg !103, !llvm.access.group !100
  %idxprom = sext i32 %16 to i64, !dbg !105
  %arrayidx = getelementptr inbounds [64 x i32], [64 x i32]* %2, i64 0, i64 %idxprom, !dbg !105
  %17 = load i32, i32* %arrayidx, align 4, !dbg !106, !llvm.access.group !100
  %inc = add nsw i32 %17, 1, !dbg !106
  store i32 %inc, i32* %arrayidx, align 4, !dbg !106, !llvm.access.group !100
  br label %omp.body.continue, !dbg !107

omp.body.continue:                                ; preds = %omp.inner.for.body11
  br label %omp.inner.for.inc, !dbg !108

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %18 = load i32, i32* %.omp.iv6, align 4, !dbg !97, !llvm.access.group !100
  %add14 = add nsw i32 %18, 1, !dbg !101
  store i32 %add14, i32* %.omp.iv6, align 4, !dbg !101, !llvm.access.group !100
  br label %omp.inner.for.cond8, !dbg !108, !llvm.loop !109

omp.inner.for.end:                                ; preds = %omp.inner.for.cond8
  store i32 64, i32* %i7, align 4, !dbg !102
  br label %omp.body.continue15, !dbg !113

omp.body.continue15:                              ; preds = %omp.inner.for.end
  br label %omp.inner.for.inc16, !dbg !114

omp.inner.for.inc16:                              ; preds = %omp.body.continue15
  %19 = load i32, i32* %.omp.iv, align 4, !dbg !87
  %add17 = add nsw i32 %19, 1, !dbg !84
  store i32 %add17, i32* %.omp.iv, align 4, !dbg !84
  br label %omp.inner.for.cond, !dbg !114, !llvm.loop !115

omp.inner.for.end18:                              ; preds = %omp.inner.for.cond
  br label %omp.loop.exit, !dbg !114

omp.loop.exit:                                    ; preds = %omp.inner.for.end18
  %20 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !114
  store i8* getelementptr inbounds ([53 x i8], [53 x i8]* @3, i32 0, i32 0), i8** %20, align 8, !dbg !114
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %7), !dbg !114
  ret void, !dbg !117
}

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i64 %.previous.lb., i64 %.previous.ub., [64 x i32]* dereferenceable(256) %var) #2 !dbg !118 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %.previous.lb..addr = alloca i64, align 8
  %.previous.ub..addr = alloca i64, align 8
  %var.addr = alloca [64 x i32]*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !119, metadata !DIExpression()), !dbg !120
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !121, metadata !DIExpression()), !dbg !120
  store i64 %.previous.lb., i64* %.previous.lb..addr, align 8
  call void @llvm.dbg.declare(metadata i64* %.previous.lb..addr, metadata !122, metadata !DIExpression()), !dbg !120
  store i64 %.previous.ub., i64* %.previous.ub..addr, align 8
  call void @llvm.dbg.declare(metadata i64* %.previous.ub..addr, metadata !123, metadata !DIExpression()), !dbg !120
  store [64 x i32]* %var, [64 x i32]** %var.addr, align 8
  call void @llvm.dbg.declare(metadata [64 x i32]** %var.addr, metadata !124, metadata !DIExpression()), !dbg !120
  %0 = load [64 x i32]*, [64 x i32]** %var.addr, align 8, !dbg !125
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !125
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !125
  %3 = load i64, i64* %.previous.lb..addr, align 8, !dbg !125
  %4 = load i64, i64* %.previous.ub..addr, align 8, !dbg !125
  %5 = load [64 x i32]*, [64 x i32]** %var.addr, align 8, !dbg !125
  call void @.omp_outlined._debug__.1(i32* %1, i32* %2, i64 %3, i64 %4, [64 x i32]* %5) #5, !dbg !125
  ret void, !dbg !125
}

declare !callback !126 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined..2(i32* noalias %.global_tid., i32* noalias %.bound_tid., [64 x i32]* dereferenceable(256) %var) #2 !dbg !128 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %var.addr = alloca [64 x i32]*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !129, metadata !DIExpression()), !dbg !130
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !131, metadata !DIExpression()), !dbg !130
  store [64 x i32]* %var, [64 x i32]** %var.addr, align 8
  call void @llvm.dbg.declare(metadata [64 x i32]** %var.addr, metadata !132, metadata !DIExpression()), !dbg !130
  %0 = load [64 x i32]*, [64 x i32]** %var.addr, align 8, !dbg !133
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !133
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !133
  %3 = load [64 x i32]*, [64 x i32]** %var.addr, align 8, !dbg !133
  call void @.omp_outlined._debug__(i32* %1, i32* %2, [64 x i32]* %3) #5, !dbg !133
  ret void, !dbg !133
}

declare !callback !126 dso_local void @__kmpc_fork_teams(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @__omp_offloading_10307_2ec41bd_main_l30([64 x i32]* dereferenceable(256) %var) #2 !dbg !134 {
entry:
  %var.addr = alloca [64 x i32]*, align 8
  store [64 x i32]* %var, [64 x i32]** %var.addr, align 8
  call void @llvm.dbg.declare(metadata [64 x i32]** %var.addr, metadata !135, metadata !DIExpression()), !dbg !136
  %0 = load [64 x i32]*, [64 x i32]** %var.addr, align 8, !dbg !137
  %1 = load [64 x i32]*, [64 x i32]** %var.addr, align 8, !dbg !137
  call void @__omp_offloading_10307_2ec41bd_main_l30_debug__([64 x i32]* %1) #5, !dbg !137
  ret void, !dbg !137
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
!1 = !DIFile(filename: "DRB164-simdmissinglock1-orig-gpu-yes.c", directory: "/home/yanze/code/OpenRace/tests/data/integration/dataracebench")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.1 "}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 22, type: !8, scopeLine: 22, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DILocalVariable(name: "var", scope: !7, file: !1, line: 24, type: !12)
!12 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 2048, elements: !13)
!13 = !{!14}
!14 = !DISubrange(count: 64)
!15 = !DILocation(line: 24, column: 7, scope: !7)
!16 = !DILocalVariable(name: "i", scope: !17, file: !1, line: 26, type: !10)
!17 = distinct !DILexicalBlock(scope: !7, file: !1, line: 26, column: 3)
!18 = !DILocation(line: 26, column: 11, scope: !17)
!19 = !DILocation(line: 26, column: 7, scope: !17)
!20 = !DILocation(line: 26, column: 16, scope: !21)
!21 = distinct !DILexicalBlock(scope: !17, file: !1, line: 26, column: 3)
!22 = !DILocation(line: 26, column: 17, scope: !21)
!23 = !DILocation(line: 26, column: 3, scope: !17)
!24 = !DILocation(line: 27, column: 9, scope: !25)
!25 = distinct !DILexicalBlock(scope: !21, file: !1, line: 26, column: 25)
!26 = !DILocation(line: 27, column: 5, scope: !25)
!27 = !DILocation(line: 27, column: 11, scope: !25)
!28 = !DILocation(line: 28, column: 3, scope: !25)
!29 = !DILocation(line: 26, column: 22, scope: !21)
!30 = !DILocation(line: 26, column: 3, scope: !21)
!31 = distinct !{!31, !23, !32}
!32 = !DILocation(line: 28, column: 3, scope: !17)
!33 = !DILocation(line: 30, column: 3, scope: !34)
!34 = distinct !DILexicalBlock(scope: !7, file: !1, line: 30, column: 3)
!35 = !DILocation(line: 39, column: 17, scope: !7)
!36 = !DILocation(line: 39, column: 3, scope: !7)
!37 = !DILocation(line: 41, column: 3, scope: !7)
!38 = distinct !DISubprogram(name: "__omp_offloading_10307_2ec41bd_main_l30_debug__", scope: !1, file: !1, line: 31, type: !39, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!39 = !DISubroutineType(types: !40)
!40 = !{null, !41}
!41 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !12, size: 64)
!42 = !DILocalVariable(name: "var", arg: 1, scope: !38, file: !1, line: 24, type: !41)
!43 = !DILocation(line: 24, column: 7, scope: !38)
!44 = !DILocation(line: 31, column: 3, scope: !38)
!45 = !DILocation(line: 31, column: 44, scope: !38)
!46 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 32, type: !47, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!47 = !DISubroutineType(types: !48)
!48 = !{null, !49, !49, !41}
!49 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !50)
!50 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !51)
!51 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!52 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!53 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !46, type: !49, flags: DIFlagArtificial)
!54 = !DILocation(line: 0, scope: !46)
!55 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !46, type: !49, flags: DIFlagArtificial)
!56 = !DILocalVariable(name: "var", arg: 3, scope: !46, file: !1, line: 24, type: !41)
!57 = !DILocation(line: 24, column: 7, scope: !46)
!58 = !DILocation(line: 32, column: 3, scope: !46)
!59 = !DILocalVariable(name: ".omp.iv", scope: !46, type: !10, flags: DIFlagArtificial)
!60 = !DILocalVariable(name: ".omp.comb.lb", scope: !46, type: !10, flags: DIFlagArtificial)
!61 = !DILocation(line: 32, column: 8, scope: !46)
!62 = !DILocalVariable(name: ".omp.comb.ub", scope: !46, type: !10, flags: DIFlagArtificial)
!63 = !DILocalVariable(name: ".omp.stride", scope: !46, type: !10, flags: DIFlagArtificial)
!64 = !DILocalVariable(name: ".omp.is_last", scope: !46, type: !10, flags: DIFlagArtificial)
!65 = !DILocalVariable(name: "i", scope: !46, type: !10, flags: DIFlagArtificial)
!66 = !DILocation(line: 31, column: 3, scope: !46)
!67 = !DILocation(line: 31, column: 44, scope: !68)
!68 = distinct !DILexicalBlock(scope: !46, file: !1, line: 31, column: 3)
!69 = distinct !{!69, !66, !70}
!70 = !DILocation(line: 31, column: 44, scope: !46)
!71 = !DILocation(line: 37, column: 3, scope: !46)
!72 = distinct !DISubprogram(name: ".omp_outlined._debug__.1", scope: !1, file: !1, line: 32, type: !73, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!73 = !DISubroutineType(types: !74)
!74 = !{null, !49, !49, !75, !75, !41}
!75 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !76)
!76 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!77 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !72, type: !49, flags: DIFlagArtificial)
!78 = !DILocation(line: 0, scope: !72)
!79 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !72, type: !49, flags: DIFlagArtificial)
!80 = !DILocalVariable(name: ".previous.lb.", arg: 3, scope: !72, type: !75, flags: DIFlagArtificial)
!81 = !DILocalVariable(name: ".previous.ub.", arg: 4, scope: !72, type: !75, flags: DIFlagArtificial)
!82 = !DILocalVariable(name: "var", arg: 5, scope: !72, file: !1, line: 24, type: !41)
!83 = !DILocation(line: 24, column: 7, scope: !72)
!84 = !DILocation(line: 32, column: 3, scope: !72)
!85 = !DILocalVariable(name: ".omp.iv", scope: !72, type: !10, flags: DIFlagArtificial)
!86 = !DILocalVariable(name: ".omp.lb", scope: !72, type: !10, flags: DIFlagArtificial)
!87 = !DILocation(line: 32, column: 8, scope: !72)
!88 = !DILocalVariable(name: ".omp.ub", scope: !72, type: !10, flags: DIFlagArtificial)
!89 = !DILocalVariable(name: ".omp.stride", scope: !72, type: !10, flags: DIFlagArtificial)
!90 = !DILocalVariable(name: ".omp.is_last", scope: !72, type: !10, flags: DIFlagArtificial)
!91 = !DILocalVariable(name: "i", scope: !72, type: !10, flags: DIFlagArtificial)
!92 = !DILocation(line: 32, column: 22, scope: !72)
!93 = !DILocalVariable(name: ".omp.iv", scope: !94, type: !10, flags: DIFlagArtificial)
!94 = distinct !DILexicalBlock(scope: !95, file: !1, line: 33, column: 5)
!95 = distinct !DILexicalBlock(scope: !72, file: !1, line: 32, column: 26)
!96 = !DILocation(line: 0, scope: !94)
!97 = !DILocation(line: 34, column: 9, scope: !94)
!98 = !DILocalVariable(name: "i", scope: !94, type: !10, flags: DIFlagArtificial)
!99 = !DILocation(line: 33, column: 5, scope: !95)
!100 = distinct !{}
!101 = !DILocation(line: 34, column: 5, scope: !94)
!102 = !DILocation(line: 34, column: 23, scope: !94)
!103 = !DILocation(line: 35, column: 11, scope: !104)
!104 = distinct !DILexicalBlock(scope: !94, file: !1, line: 34, column: 27)
!105 = !DILocation(line: 35, column: 7, scope: !104)
!106 = !DILocation(line: 35, column: 13, scope: !104)
!107 = !DILocation(line: 36, column: 5, scope: !104)
!108 = !DILocation(line: 33, column: 5, scope: !94)
!109 = distinct !{!109, !108, !110, !111, !112}
!110 = !DILocation(line: 33, column: 21, scope: !94)
!111 = !{!"llvm.loop.parallel_accesses", !100}
!112 = !{!"llvm.loop.vectorize.enable", i1 true}
!113 = !DILocation(line: 37, column: 3, scope: !95)
!114 = !DILocation(line: 31, column: 3, scope: !72)
!115 = distinct !{!115, !114, !116}
!116 = !DILocation(line: 31, column: 44, scope: !72)
!117 = !DILocation(line: 37, column: 3, scope: !72)
!118 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 32, type: !73, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!119 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !118, type: !49, flags: DIFlagArtificial)
!120 = !DILocation(line: 0, scope: !118)
!121 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !118, type: !49, flags: DIFlagArtificial)
!122 = !DILocalVariable(name: ".previous.lb.", arg: 3, scope: !118, type: !75, flags: DIFlagArtificial)
!123 = !DILocalVariable(name: ".previous.ub.", arg: 4, scope: !118, type: !75, flags: DIFlagArtificial)
!124 = !DILocalVariable(name: "var", arg: 5, scope: !118, type: !41, flags: DIFlagArtificial)
!125 = !DILocation(line: 32, column: 3, scope: !118)
!126 = !{!127}
!127 = !{i64 2, i64 -1, i64 -1, i1 true}
!128 = distinct !DISubprogram(name: ".omp_outlined..2", scope: !1, file: !1, line: 32, type: !47, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!129 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !128, type: !49, flags: DIFlagArtificial)
!130 = !DILocation(line: 0, scope: !128)
!131 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !128, type: !49, flags: DIFlagArtificial)
!132 = !DILocalVariable(name: "var", arg: 3, scope: !128, type: !41, flags: DIFlagArtificial)
!133 = !DILocation(line: 32, column: 3, scope: !128)
!134 = distinct !DISubprogram(name: "__omp_offloading_10307_2ec41bd_main_l30", scope: !1, file: !1, line: 31, type: !39, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!135 = !DILocalVariable(name: "var", arg: 1, scope: !134, type: !41, flags: DIFlagArtificial)
!136 = !DILocation(line: 0, scope: !134)
!137 = !DILocation(line: 31, column: 3, scope: !134)
