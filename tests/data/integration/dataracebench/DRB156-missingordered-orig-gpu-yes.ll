; ModuleID = 'integration/dataracebench/DRB156-missingordered-orig-gpu-yes.c'
source_filename = "integration/dataracebench/DRB156-missingordered-orig-gpu-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 2050, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [76 x i8] c";integration/dataracebench/DRB156-missingordered-orig-gpu-yes.c;main;26;3;;\00", align 1
@2 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@3 = private unnamed_addr constant [77 x i8] c";integration/dataracebench/DRB156-missingordered-orig-gpu-yes.c;main;26;44;;\00", align 1
@4 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@.str.3 = private unnamed_addr constant [19 x i8] c"Data Race Present\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main() #0 !dbg !7 {
entry:
  %retval = alloca i32, align 4
  %var = alloca [100 x i32], align 16
  %i = alloca i32, align 4
  %i1 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = bitcast [100 x i32]* %var to i8*, !dbg !20
  call void @llvm.lifetime.start.p0i8(i64 400, i8* %0) #5, !dbg !20
  call void @llvm.dbg.declare(metadata [100 x i32]* %var, metadata !12, metadata !DIExpression()), !dbg !21
  %1 = bitcast i32* %i to i8*, !dbg !22
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #5, !dbg !22
  call void @llvm.dbg.declare(metadata i32* %i, metadata !16, metadata !DIExpression()), !dbg !23
  store i32 0, i32* %i, align 4, !dbg !23, !tbaa !24
  br label %for.cond, !dbg !22

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4, !dbg !28, !tbaa !24
  %cmp = icmp slt i32 %2, 100, !dbg !30
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !dbg !31

for.cond.cleanup:                                 ; preds = %for.cond
  %3 = bitcast i32* %i to i8*, !dbg !32
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %3) #5, !dbg !32
  br label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4, !dbg !33, !tbaa !24
  %idxprom = sext i32 %4 to i64, !dbg !35
  %arrayidx = getelementptr inbounds [100 x i32], [100 x i32]* %var, i64 0, i64 %idxprom, !dbg !35
  store i32 0, i32* %arrayidx, align 4, !dbg !36, !tbaa !24
  br label %for.inc, !dbg !37

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4, !dbg !38, !tbaa !24
  %inc = add nsw i32 %5, 1, !dbg !38
  store i32 %inc, i32* %i, align 4, !dbg !38, !tbaa !24
  br label %for.cond, !dbg !32, !llvm.loop !39

for.end:                                          ; preds = %for.cond.cleanup
  call void @__omp_offloading_1030a_216095e_main_l25([100 x i32]* %var) #5, !dbg !41
  %6 = bitcast i32* %i1 to i8*, !dbg !43
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #5, !dbg !43
  call void @llvm.dbg.declare(metadata i32* %i1, metadata !18, metadata !DIExpression()), !dbg !44
  store i32 0, i32* %i1, align 4, !dbg !44, !tbaa !24
  br label %for.cond2, !dbg !43

for.cond2:                                        ; preds = %for.inc9, %for.end
  %7 = load i32, i32* %i1, align 4, !dbg !45, !tbaa !24
  %cmp3 = icmp slt i32 %7, 100, !dbg !47
  br i1 %cmp3, label %for.body5, label %for.cond.cleanup4, !dbg !48

for.cond.cleanup4:                                ; preds = %for.cond2
  store i32 5, i32* %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !48

for.body5:                                        ; preds = %for.cond2
  %8 = load i32, i32* %i1, align 4, !dbg !49, !tbaa !24
  %idxprom6 = sext i32 %8 to i64, !dbg !52
  %arrayidx7 = getelementptr inbounds [100 x i32], [100 x i32]* %var, i64 0, i64 %idxprom6, !dbg !52
  %9 = load i32, i32* %arrayidx7, align 4, !dbg !52, !tbaa !24
  %10 = load i32, i32* %i1, align 4, !dbg !53, !tbaa !24
  %cmp8 = icmp ne i32 %9, %10, !dbg !54
  br i1 %cmp8, label %if.then, label %if.end, !dbg !55

if.then:                                          ; preds = %for.body5
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0)), !dbg !56
  store i32 0, i32* %retval, align 4, !dbg !58
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !58

if.end:                                           ; preds = %for.body5
  br label %for.inc9, !dbg !59

for.inc9:                                         ; preds = %if.end
  %11 = load i32, i32* %i1, align 4, !dbg !60, !tbaa !24
  %inc10 = add nsw i32 %11, 1, !dbg !60
  store i32 %inc10, i32* %i1, align 4, !dbg !60, !tbaa !24
  br label %for.cond2, !dbg !61, !llvm.loop !62

cleanup:                                          ; preds = %if.then, %for.cond.cleanup4
  %12 = bitcast i32* %i1 to i8*, !dbg !61
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %12) #5, !dbg !61
  %cleanup.dest = load i32, i32* %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup12 [
    i32 5, label %for.end11
  ]

for.end11:                                        ; preds = %cleanup
  store i32 0, i32* %retval, align 4, !dbg !64
  store i32 1, i32* %cleanup.dest.slot, align 4
  br label %cleanup12, !dbg !64

cleanup12:                                        ; preds = %for.end11, %cleanup
  %13 = bitcast [100 x i32]* %var to i8*, !dbg !65
  call void @llvm.lifetime.end.p0i8(i64 400, i8* %13) #5, !dbg !65
  %14 = load i32, i32* %retval, align 4, !dbg !65
  ret i32 %14, !dbg !65
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: norecurse nounwind uwtable
define internal void @__omp_offloading_1030a_216095e_main_l25_debug__([100 x i32]* dereferenceable(400) %var) #3 !dbg !66 {
entry:
  %var.addr = alloca [100 x i32]*, align 8
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store [100 x i32]* %var, [100 x i32]** %var.addr, align 8, !tbaa !72
  call void @llvm.dbg.declare(metadata [100 x i32]** %var.addr, metadata !71, metadata !DIExpression()), !dbg !74
  %2 = load [100 x i32]*, [100 x i32]** %var.addr, align 8, !dbg !75, !tbaa !72
  %3 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !75
  store i8* getelementptr inbounds ([76 x i8], [76 x i8]* @1, i32 0, i32 0), i8** %3, align 8, !dbg !75, !tbaa !76
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_teams(%struct.ident_t* %.kmpc_loc.addr, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, [100 x i32]*)* @.omp_outlined..2 to void (i32*, i32*, ...)*), [100 x i32]* %2), !dbg !75
  ret void, !dbg !78
}

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., [100 x i32]* dereferenceable(400) %var) #3 !dbg !79 {
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
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !72
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !87, metadata !DIExpression()), !dbg !96
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !72
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !88, metadata !DIExpression()), !dbg !96
  store [100 x i32]* %var, [100 x i32]** %var.addr, align 8, !tbaa !72
  call void @llvm.dbg.declare(metadata [100 x i32]** %var.addr, metadata !89, metadata !DIExpression()), !dbg !97
  %2 = load [100 x i32]*, [100 x i32]** %var.addr, align 8, !dbg !98, !tbaa !72
  %3 = bitcast i32* %.omp.iv to i8*, !dbg !98
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #5, !dbg !98
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !90, metadata !DIExpression()), !dbg !96
  %4 = bitcast i32* %.omp.comb.lb to i8*, !dbg !98
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #5, !dbg !98
  call void @llvm.dbg.declare(metadata i32* %.omp.comb.lb, metadata !91, metadata !DIExpression()), !dbg !96
  store i32 0, i32* %.omp.comb.lb, align 4, !dbg !99, !tbaa !24
  %5 = bitcast i32* %.omp.comb.ub to i8*, !dbg !98
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #5, !dbg !98
  call void @llvm.dbg.declare(metadata i32* %.omp.comb.ub, metadata !92, metadata !DIExpression()), !dbg !96
  store i32 98, i32* %.omp.comb.ub, align 4, !dbg !99, !tbaa !24
  %6 = bitcast i32* %.omp.stride to i8*, !dbg !98
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #5, !dbg !98
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !93, metadata !DIExpression()), !dbg !96
  store i32 1, i32* %.omp.stride, align 4, !dbg !99, !tbaa !24
  %7 = bitcast i32* %.omp.is_last to i8*, !dbg !98
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #5, !dbg !98
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !94, metadata !DIExpression()), !dbg !96
  store i32 0, i32* %.omp.is_last, align 4, !dbg !99, !tbaa !24
  %8 = bitcast i32* %i to i8*, !dbg !98
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #5, !dbg !98
  call void @llvm.dbg.declare(metadata i32* %i, metadata !95, metadata !DIExpression()), !dbg !96
  %9 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !98
  store i8* getelementptr inbounds ([76 x i8], [76 x i8]* @1, i32 0, i32 0), i8** %9, align 8, !dbg !98, !tbaa !76
  %10 = load i32*, i32** %.global_tid..addr, align 8, !dbg !98
  %11 = load i32, i32* %10, align 4, !dbg !98, !tbaa !24
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %11, i32 92, i32* %.omp.is_last, i32* %.omp.comb.lb, i32* %.omp.comb.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !98
  %12 = load i32, i32* %.omp.comb.ub, align 4, !dbg !99, !tbaa !24
  %cmp = icmp sgt i32 %12, 98, !dbg !99
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !99

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !99

cond.false:                                       ; preds = %entry
  %13 = load i32, i32* %.omp.comb.ub, align 4, !dbg !99, !tbaa !24
  br label %cond.end, !dbg !99

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 98, %cond.true ], [ %13, %cond.false ], !dbg !99
  store i32 %cond, i32* %.omp.comb.ub, align 4, !dbg !99, !tbaa !24
  %14 = load i32, i32* %.omp.comb.lb, align 4, !dbg !99, !tbaa !24
  store i32 %14, i32* %.omp.iv, align 4, !dbg !99, !tbaa !24
  br label %omp.inner.for.cond, !dbg !98

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %15 = load i32, i32* %.omp.iv, align 4, !dbg !99, !tbaa !24
  %16 = load i32, i32* %.omp.comb.ub, align 4, !dbg !99, !tbaa !24
  %cmp1 = icmp sle i32 %15, %16, !dbg !98
  br i1 %cmp1, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !98

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !98

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %17 = load i32, i32* %.omp.comb.lb, align 4, !dbg !100
  %18 = zext i32 %17 to i64, !dbg !100
  %19 = load i32, i32* %.omp.comb.ub, align 4, !dbg !100
  %20 = zext i32 %19 to i64, !dbg !100
  %21 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !100
  store i8* getelementptr inbounds ([76 x i8], [76 x i8]* @1, i32 0, i32 0), i8** %21, align 8, !dbg !100, !tbaa !76
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i64, i64, [100 x i32]*)* @.omp_outlined. to void (i32*, i32*, ...)*), i64 %18, i64 %20, [100 x i32]* %2), !dbg !100
  br label %omp.inner.for.inc, !dbg !101

omp.inner.for.inc:                                ; preds = %omp.inner.for.body
  %22 = load i32, i32* %.omp.iv, align 4, !dbg !99, !tbaa !24
  %23 = load i32, i32* %.omp.stride, align 4, !dbg !99, !tbaa !24
  %add = add nsw i32 %22, %23, !dbg !98
  store i32 %add, i32* %.omp.iv, align 4, !dbg !98, !tbaa !24
  br label %omp.inner.for.cond, !dbg !101, !llvm.loop !103

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !101

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %24 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !101
  store i8* getelementptr inbounds ([76 x i8], [76 x i8]* @1, i32 0, i32 0), i8** %24, align 8, !dbg !101, !tbaa !76
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %11), !dbg !101
  %25 = bitcast i32* %i to i8*, !dbg !101
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %25) #5, !dbg !101
  %26 = bitcast i32* %.omp.is_last to i8*, !dbg !101
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %26) #5, !dbg !101
  %27 = bitcast i32* %.omp.stride to i8*, !dbg !101
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %27) #5, !dbg !101
  %28 = bitcast i32* %.omp.comb.ub to i8*, !dbg !101
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %28) #5, !dbg !101
  %29 = bitcast i32* %.omp.comb.lb to i8*, !dbg !101
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %29) #5, !dbg !101
  %30 = bitcast i32* %.omp.iv to i8*, !dbg !101
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %30) #5, !dbg !101
  ret void, !dbg !105
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__.1(i32* noalias %.global_tid., i32* noalias %.bound_tid., i64 %.previous.lb., i64 %.previous.ub., [100 x i32]* dereferenceable(400) %var) #3 !dbg !106 {
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
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !72
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !112, metadata !DIExpression()), !dbg !123
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !72
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !113, metadata !DIExpression()), !dbg !123
  store i64 %.previous.lb., i64* %.previous.lb..addr, align 8, !tbaa !124
  call void @llvm.dbg.declare(metadata i64* %.previous.lb..addr, metadata !114, metadata !DIExpression()), !dbg !123
  store i64 %.previous.ub., i64* %.previous.ub..addr, align 8, !tbaa !124
  call void @llvm.dbg.declare(metadata i64* %.previous.ub..addr, metadata !115, metadata !DIExpression()), !dbg !123
  store [100 x i32]* %var, [100 x i32]** %var.addr, align 8, !tbaa !72
  call void @llvm.dbg.declare(metadata [100 x i32]** %var.addr, metadata !116, metadata !DIExpression()), !dbg !126
  %2 = load [100 x i32]*, [100 x i32]** %var.addr, align 8, !dbg !127, !tbaa !72
  %3 = bitcast i32* %.omp.iv to i8*, !dbg !127
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #5, !dbg !127
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !117, metadata !DIExpression()), !dbg !123
  %4 = bitcast i32* %.omp.lb to i8*, !dbg !127
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #5, !dbg !127
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !118, metadata !DIExpression()), !dbg !123
  store i32 0, i32* %.omp.lb, align 4, !dbg !128, !tbaa !24
  %5 = bitcast i32* %.omp.ub to i8*, !dbg !127
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #5, !dbg !127
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !119, metadata !DIExpression()), !dbg !123
  store i32 98, i32* %.omp.ub, align 4, !dbg !128, !tbaa !24
  %6 = load i64, i64* %.previous.lb..addr, align 8, !dbg !127, !tbaa !124
  %conv = trunc i64 %6 to i32, !dbg !127
  %7 = load i64, i64* %.previous.ub..addr, align 8, !dbg !127, !tbaa !124
  %conv1 = trunc i64 %7 to i32, !dbg !127
  store i32 %conv, i32* %.omp.lb, align 4, !dbg !127, !tbaa !24
  store i32 %conv1, i32* %.omp.ub, align 4, !dbg !127, !tbaa !24
  %8 = bitcast i32* %.omp.stride to i8*, !dbg !127
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #5, !dbg !127
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !120, metadata !DIExpression()), !dbg !123
  store i32 1, i32* %.omp.stride, align 4, !dbg !128, !tbaa !24
  %9 = bitcast i32* %.omp.is_last to i8*, !dbg !127
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #5, !dbg !127
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !121, metadata !DIExpression()), !dbg !123
  store i32 0, i32* %.omp.is_last, align 4, !dbg !128, !tbaa !24
  %10 = bitcast i32* %i to i8*, !dbg !127
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #5, !dbg !127
  call void @llvm.dbg.declare(metadata i32* %i, metadata !122, metadata !DIExpression()), !dbg !123
  %11 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !127
  store i8* getelementptr inbounds ([76 x i8], [76 x i8]* @1, i32 0, i32 0), i8** %11, align 8, !dbg !127, !tbaa !76
  %12 = load i32*, i32** %.global_tid..addr, align 8, !dbg !127
  %13 = load i32, i32* %12, align 4, !dbg !127, !tbaa !24
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %13, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !127
  %14 = load i32, i32* %.omp.ub, align 4, !dbg !128, !tbaa !24
  %cmp = icmp sgt i32 %14, 98, !dbg !128
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !128

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !128

cond.false:                                       ; preds = %entry
  %15 = load i32, i32* %.omp.ub, align 4, !dbg !128, !tbaa !24
  br label %cond.end, !dbg !128

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 98, %cond.true ], [ %15, %cond.false ], !dbg !128
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !128, !tbaa !24
  %16 = load i32, i32* %.omp.lb, align 4, !dbg !128, !tbaa !24
  store i32 %16, i32* %.omp.iv, align 4, !dbg !128, !tbaa !24
  br label %omp.inner.for.cond, !dbg !127

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %17 = load i32, i32* %.omp.iv, align 4, !dbg !128, !tbaa !24
  %18 = load i32, i32* %.omp.ub, align 4, !dbg !128, !tbaa !24
  %cmp3 = icmp sle i32 %17, %18, !dbg !127
  br i1 %cmp3, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !127

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !127

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %19 = load i32, i32* %.omp.iv, align 4, !dbg !128, !tbaa !24
  %mul = mul nsw i32 %19, 1, !dbg !129
  %add = add nsw i32 1, %mul, !dbg !129
  store i32 %add, i32* %i, align 4, !dbg !129, !tbaa !24
  %20 = load i32, i32* %i, align 4, !dbg !130, !tbaa !24
  %sub = sub nsw i32 %20, 1, !dbg !132
  %idxprom = sext i32 %sub to i64, !dbg !133
  %arrayidx = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 %idxprom, !dbg !133
  %21 = load i32, i32* %arrayidx, align 4, !dbg !133, !tbaa !24
  %add5 = add nsw i32 %21, 1, !dbg !134
  %22 = load i32, i32* %i, align 4, !dbg !135, !tbaa !24
  %idxprom6 = sext i32 %22 to i64, !dbg !136
  %arrayidx7 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 %idxprom6, !dbg !136
  store i32 %add5, i32* %arrayidx7, align 4, !dbg !137, !tbaa !24
  br label %omp.body.continue, !dbg !138

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !139

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %23 = load i32, i32* %.omp.iv, align 4, !dbg !128, !tbaa !24
  %add8 = add nsw i32 %23, 1, !dbg !127
  store i32 %add8, i32* %.omp.iv, align 4, !dbg !127, !tbaa !24
  br label %omp.inner.for.cond, !dbg !139, !llvm.loop !140

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !139

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %24 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !139
  store i8* getelementptr inbounds ([77 x i8], [77 x i8]* @3, i32 0, i32 0), i8** %24, align 8, !dbg !139, !tbaa !76
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %13), !dbg !139
  %25 = bitcast i32* %i to i8*, !dbg !139
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %25) #5, !dbg !139
  %26 = bitcast i32* %.omp.is_last to i8*, !dbg !139
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %26) #5, !dbg !139
  %27 = bitcast i32* %.omp.stride to i8*, !dbg !139
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %27) #5, !dbg !139
  %28 = bitcast i32* %.omp.ub to i8*, !dbg !139
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %28) #5, !dbg !139
  %29 = bitcast i32* %.omp.lb to i8*, !dbg !139
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %29) #5, !dbg !139
  %30 = bitcast i32* %.omp.iv to i8*, !dbg !139
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %30) #5, !dbg !139
  ret void, !dbg !142
}

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i64 %.previous.lb., i64 %.previous.ub., [100 x i32]* dereferenceable(400) %var) #3 !dbg !143 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %.previous.lb..addr = alloca i64, align 8
  %.previous.ub..addr = alloca i64, align 8
  %var.addr = alloca [100 x i32]*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !72
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !145, metadata !DIExpression()), !dbg !150
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !72
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !146, metadata !DIExpression()), !dbg !150
  store i64 %.previous.lb., i64* %.previous.lb..addr, align 8, !tbaa !124
  call void @llvm.dbg.declare(metadata i64* %.previous.lb..addr, metadata !147, metadata !DIExpression()), !dbg !150
  store i64 %.previous.ub., i64* %.previous.ub..addr, align 8, !tbaa !124
  call void @llvm.dbg.declare(metadata i64* %.previous.ub..addr, metadata !148, metadata !DIExpression()), !dbg !150
  store [100 x i32]* %var, [100 x i32]** %var.addr, align 8, !tbaa !72
  call void @llvm.dbg.declare(metadata [100 x i32]** %var.addr, metadata !149, metadata !DIExpression()), !dbg !150
  %0 = load [100 x i32]*, [100 x i32]** %var.addr, align 8, !dbg !151, !tbaa !72
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !151, !tbaa !72
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !151, !tbaa !72
  %3 = load i64, i64* %.previous.lb..addr, align 8, !dbg !151, !tbaa !124
  %4 = load i64, i64* %.previous.ub..addr, align 8, !dbg !151, !tbaa !124
  %5 = load [100 x i32]*, [100 x i32]** %var.addr, align 8, !dbg !151, !tbaa !72
  call void @.omp_outlined._debug__.1(i32* %1, i32* %2, i64 %3, i64 %4, [100 x i32]* %5) #5, !dbg !151
  ret void, !dbg !151
}

declare !callback !152 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined..2(i32* noalias %.global_tid., i32* noalias %.bound_tid., [100 x i32]* dereferenceable(400) %var) #3 !dbg !154 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %var.addr = alloca [100 x i32]*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !72
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !156, metadata !DIExpression()), !dbg !159
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !72
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !157, metadata !DIExpression()), !dbg !159
  store [100 x i32]* %var, [100 x i32]** %var.addr, align 8, !tbaa !72
  call void @llvm.dbg.declare(metadata [100 x i32]** %var.addr, metadata !158, metadata !DIExpression()), !dbg !159
  %0 = load [100 x i32]*, [100 x i32]** %var.addr, align 8, !dbg !160, !tbaa !72
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !160, !tbaa !72
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !160, !tbaa !72
  %3 = load [100 x i32]*, [100 x i32]** %var.addr, align 8, !dbg !160, !tbaa !72
  call void @.omp_outlined._debug__(i32* %1, i32* %2, [100 x i32]* %3) #5, !dbg !160
  ret void, !dbg !160
}

declare !callback !152 dso_local void @__kmpc_fork_teams(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

; Function Attrs: norecurse nounwind uwtable
define internal void @__omp_offloading_1030a_216095e_main_l25([100 x i32]* dereferenceable(400) %var) #3 !dbg !161 {
entry:
  %var.addr = alloca [100 x i32]*, align 8
  store [100 x i32]* %var, [100 x i32]** %var.addr, align 8, !tbaa !72
  call void @llvm.dbg.declare(metadata [100 x i32]** %var.addr, metadata !163, metadata !DIExpression()), !dbg !164
  %0 = load [100 x i32]*, [100 x i32]** %var.addr, align 8, !dbg !165, !tbaa !72
  %1 = load [100 x i32]*, [100 x i32]** %var.addr, align 8, !dbg !165, !tbaa !72
  call void @__omp_offloading_1030a_216095e_main_l25_debug__([100 x i32]* %1) #5, !dbg !165
  ret void, !dbg !165
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
!1 = !DIFile(filename: "integration/dataracebench/DRB156-missingordered-orig-gpu-yes.c", directory: "/home/brad/Code/OpenRace/tests/data")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.1 "}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 19, type: !8, scopeLine: 19, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !11)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !{!12, !16, !18}
!12 = !DILocalVariable(name: "var", scope: !7, file: !1, line: 20, type: !13)
!13 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 3200, elements: !14)
!14 = !{!15}
!15 = !DISubrange(count: 100)
!16 = !DILocalVariable(name: "i", scope: !17, file: !1, line: 21, type: !10)
!17 = distinct !DILexicalBlock(scope: !7, file: !1, line: 21, column: 3)
!18 = !DILocalVariable(name: "i", scope: !19, file: !1, line: 31, type: !10)
!19 = distinct !DILexicalBlock(scope: !7, file: !1, line: 31, column: 3)
!20 = !DILocation(line: 20, column: 3, scope: !7)
!21 = !DILocation(line: 20, column: 7, scope: !7)
!22 = !DILocation(line: 21, column: 7, scope: !17)
!23 = !DILocation(line: 21, column: 11, scope: !17)
!24 = !{!25, !25, i64 0}
!25 = !{!"int", !26, i64 0}
!26 = !{!"omnipotent char", !27, i64 0}
!27 = !{!"Simple C/C++ TBAA"}
!28 = !DILocation(line: 21, column: 16, scope: !29)
!29 = distinct !DILexicalBlock(scope: !17, file: !1, line: 21, column: 3)
!30 = !DILocation(line: 21, column: 17, scope: !29)
!31 = !DILocation(line: 21, column: 3, scope: !17)
!32 = !DILocation(line: 21, column: 3, scope: !29)
!33 = !DILocation(line: 22, column: 9, scope: !34)
!34 = distinct !DILexicalBlock(scope: !29, file: !1, line: 21, column: 25)
!35 = !DILocation(line: 22, column: 5, scope: !34)
!36 = !DILocation(line: 22, column: 11, scope: !34)
!37 = !DILocation(line: 23, column: 3, scope: !34)
!38 = !DILocation(line: 21, column: 22, scope: !29)
!39 = distinct !{!39, !31, !40}
!40 = !DILocation(line: 23, column: 3, scope: !17)
!41 = !DILocation(line: 25, column: 3, scope: !42)
!42 = distinct !DILexicalBlock(scope: !7, file: !1, line: 25, column: 3)
!43 = !DILocation(line: 31, column: 7, scope: !19)
!44 = !DILocation(line: 31, column: 11, scope: !19)
!45 = !DILocation(line: 31, column: 16, scope: !46)
!46 = distinct !DILexicalBlock(scope: !19, file: !1, line: 31, column: 3)
!47 = !DILocation(line: 31, column: 17, scope: !46)
!48 = !DILocation(line: 31, column: 3, scope: !19)
!49 = !DILocation(line: 32, column: 12, scope: !50)
!50 = distinct !DILexicalBlock(scope: !51, file: !1, line: 32, column: 8)
!51 = distinct !DILexicalBlock(scope: !46, file: !1, line: 31, column: 25)
!52 = !DILocation(line: 32, column: 8, scope: !50)
!53 = !DILocation(line: 32, column: 16, scope: !50)
!54 = !DILocation(line: 32, column: 14, scope: !50)
!55 = !DILocation(line: 32, column: 8, scope: !51)
!56 = !DILocation(line: 33, column: 7, scope: !57)
!57 = distinct !DILexicalBlock(scope: !50, file: !1, line: 32, column: 18)
!58 = !DILocation(line: 34, column: 7, scope: !57)
!59 = !DILocation(line: 36, column: 3, scope: !51)
!60 = !DILocation(line: 31, column: 22, scope: !46)
!61 = !DILocation(line: 31, column: 3, scope: !46)
!62 = distinct !{!62, !48, !63}
!63 = !DILocation(line: 36, column: 3, scope: !19)
!64 = !DILocation(line: 37, column: 3, scope: !7)
!65 = !DILocation(line: 38, column: 1, scope: !7)
!66 = distinct !DISubprogram(name: "__omp_offloading_1030a_216095e_main_l25_debug__", scope: !1, file: !1, line: 26, type: !67, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !70)
!67 = !DISubroutineType(types: !68)
!68 = !{null, !69}
!69 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !13, size: 64)
!70 = !{!71}
!71 = !DILocalVariable(name: "var", arg: 1, scope: !66, file: !1, line: 20, type: !69)
!72 = !{!73, !73, i64 0}
!73 = !{!"any pointer", !26, i64 0}
!74 = !DILocation(line: 20, column: 7, scope: !66)
!75 = !DILocation(line: 26, column: 3, scope: !66)
!76 = !{!77, !73, i64 16}
!77 = !{!"ident_t", !25, i64 0, !25, i64 4, !25, i64 8, !25, i64 12, !73, i64 16}
!78 = !DILocation(line: 26, column: 44, scope: !66)
!79 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 27, type: !80, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !86)
!80 = !DISubroutineType(types: !81)
!81 = !{null, !82, !82, !69}
!82 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !83)
!83 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !84)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!86 = !{!87, !88, !89, !90, !91, !92, !93, !94, !95}
!87 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !79, type: !82, flags: DIFlagArtificial)
!88 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !79, type: !82, flags: DIFlagArtificial)
!89 = !DILocalVariable(name: "var", arg: 3, scope: !79, file: !1, line: 20, type: !69)
!90 = !DILocalVariable(name: ".omp.iv", scope: !79, type: !10, flags: DIFlagArtificial)
!91 = !DILocalVariable(name: ".omp.comb.lb", scope: !79, type: !10, flags: DIFlagArtificial)
!92 = !DILocalVariable(name: ".omp.comb.ub", scope: !79, type: !10, flags: DIFlagArtificial)
!93 = !DILocalVariable(name: ".omp.stride", scope: !79, type: !10, flags: DIFlagArtificial)
!94 = !DILocalVariable(name: ".omp.is_last", scope: !79, type: !10, flags: DIFlagArtificial)
!95 = !DILocalVariable(name: "i", scope: !79, type: !10, flags: DIFlagArtificial)
!96 = !DILocation(line: 0, scope: !79)
!97 = !DILocation(line: 20, column: 7, scope: !79)
!98 = !DILocation(line: 27, column: 3, scope: !79)
!99 = !DILocation(line: 27, column: 8, scope: !79)
!100 = !DILocation(line: 26, column: 3, scope: !79)
!101 = !DILocation(line: 26, column: 44, scope: !102)
!102 = distinct !DILexicalBlock(scope: !79, file: !1, line: 26, column: 3)
!103 = distinct !{!103, !100, !104}
!104 = !DILocation(line: 26, column: 44, scope: !79)
!105 = !DILocation(line: 29, column: 3, scope: !79)
!106 = distinct !DISubprogram(name: ".omp_outlined._debug__.1", scope: !1, file: !1, line: 27, type: !107, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !111)
!107 = !DISubroutineType(types: !108)
!108 = !{null, !82, !82, !109, !109, !69}
!109 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !110)
!110 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!111 = !{!112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122}
!112 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !106, type: !82, flags: DIFlagArtificial)
!113 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !106, type: !82, flags: DIFlagArtificial)
!114 = !DILocalVariable(name: ".previous.lb.", arg: 3, scope: !106, type: !109, flags: DIFlagArtificial)
!115 = !DILocalVariable(name: ".previous.ub.", arg: 4, scope: !106, type: !109, flags: DIFlagArtificial)
!116 = !DILocalVariable(name: "var", arg: 5, scope: !106, file: !1, line: 20, type: !69)
!117 = !DILocalVariable(name: ".omp.iv", scope: !106, type: !10, flags: DIFlagArtificial)
!118 = !DILocalVariable(name: ".omp.lb", scope: !106, type: !10, flags: DIFlagArtificial)
!119 = !DILocalVariable(name: ".omp.ub", scope: !106, type: !10, flags: DIFlagArtificial)
!120 = !DILocalVariable(name: ".omp.stride", scope: !106, type: !10, flags: DIFlagArtificial)
!121 = !DILocalVariable(name: ".omp.is_last", scope: !106, type: !10, flags: DIFlagArtificial)
!122 = !DILocalVariable(name: "i", scope: !106, type: !10, flags: DIFlagArtificial)
!123 = !DILocation(line: 0, scope: !106)
!124 = !{!125, !125, i64 0}
!125 = !{!"long", !26, i64 0}
!126 = !DILocation(line: 20, column: 7, scope: !106)
!127 = !DILocation(line: 27, column: 3, scope: !106)
!128 = !DILocation(line: 27, column: 8, scope: !106)
!129 = !DILocation(line: 27, column: 22, scope: !106)
!130 = !DILocation(line: 28, column: 16, scope: !131)
!131 = distinct !DILexicalBlock(scope: !106, file: !1, line: 27, column: 26)
!132 = !DILocation(line: 28, column: 17, scope: !131)
!133 = !DILocation(line: 28, column: 12, scope: !131)
!134 = !DILocation(line: 28, column: 20, scope: !131)
!135 = !DILocation(line: 28, column: 9, scope: !131)
!136 = !DILocation(line: 28, column: 5, scope: !131)
!137 = !DILocation(line: 28, column: 11, scope: !131)
!138 = !DILocation(line: 29, column: 3, scope: !131)
!139 = !DILocation(line: 26, column: 3, scope: !106)
!140 = distinct !{!140, !139, !141}
!141 = !DILocation(line: 26, column: 44, scope: !106)
!142 = !DILocation(line: 29, column: 3, scope: !106)
!143 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 27, type: !107, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!144 = !{!145, !146, !147, !148, !149}
!145 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !143, type: !82, flags: DIFlagArtificial)
!146 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !143, type: !82, flags: DIFlagArtificial)
!147 = !DILocalVariable(name: ".previous.lb.", arg: 3, scope: !143, type: !109, flags: DIFlagArtificial)
!148 = !DILocalVariable(name: ".previous.ub.", arg: 4, scope: !143, type: !109, flags: DIFlagArtificial)
!149 = !DILocalVariable(name: "var", arg: 5, scope: !143, type: !69, flags: DIFlagArtificial)
!150 = !DILocation(line: 0, scope: !143)
!151 = !DILocation(line: 27, column: 3, scope: !143)
!152 = !{!153}
!153 = !{i64 2, i64 -1, i64 -1, i1 true}
!154 = distinct !DISubprogram(name: ".omp_outlined..2", scope: !1, file: !1, line: 27, type: !80, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !155)
!155 = !{!156, !157, !158}
!156 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !154, type: !82, flags: DIFlagArtificial)
!157 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !154, type: !82, flags: DIFlagArtificial)
!158 = !DILocalVariable(name: "var", arg: 3, scope: !154, type: !69, flags: DIFlagArtificial)
!159 = !DILocation(line: 0, scope: !154)
!160 = !DILocation(line: 27, column: 3, scope: !154)
!161 = distinct !DISubprogram(name: "__omp_offloading_1030a_216095e_main_l25", scope: !1, file: !1, line: 26, type: !67, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !162)
!162 = !{!163}
!163 = !DILocalVariable(name: "var", arg: 1, scope: !161, type: !69, flags: DIFlagArtificial)
!164 = !DILocation(line: 0, scope: !161)
!165 = !DILocation(line: 26, column: 3, scope: !161)
