; ModuleID = 'integration/dataracebench/DRB161-nolocksimd-orig-gpu-yes.c'
source_filename = "integration/dataracebench/DRB161-nolocksimd-orig-gpu-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 2050, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [72 x i8] c";integration/dataracebench/DRB161-nolocksimd-orig-gpu-yes.c;main;29;3;;\00", align 1
@2 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@3 = private unnamed_addr constant [73 x i8] c";integration/dataracebench/DRB161-nolocksimd-orig-gpu-yes.c;main;29;39;;\00", align 1
@4 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@5 = private unnamed_addr constant [72 x i8] c";integration/dataracebench/DRB161-nolocksimd-orig-gpu-yes.c;main;28;3;;\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"%d\0A \00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main() #0 !dbg !7 {
entry:
  %retval = alloca i32, align 4
  %var = alloca [8 x i32], align 16
  %i = alloca i32, align 4
  %i1 = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  %0 = bitcast [8 x i32]* %var to i8*, !dbg !20
  call void @llvm.lifetime.start.p0i8(i64 32, i8* %0) #5, !dbg !20
  call void @llvm.dbg.declare(metadata [8 x i32]* %var, metadata !12, metadata !DIExpression()), !dbg !21
  %1 = bitcast i32* %i to i8*, !dbg !22
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #5, !dbg !22
  call void @llvm.dbg.declare(metadata i32* %i, metadata !16, metadata !DIExpression()), !dbg !23
  store i32 0, i32* %i, align 4, !dbg !23, !tbaa !24
  br label %for.cond, !dbg !22

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4, !dbg !28, !tbaa !24
  %cmp = icmp slt i32 %2, 8, !dbg !30
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !dbg !31

for.cond.cleanup:                                 ; preds = %for.cond
  %3 = bitcast i32* %i to i8*, !dbg !32
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %3) #5, !dbg !32
  br label %for.end

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4, !dbg !33, !tbaa !24
  %idxprom = sext i32 %4 to i64, !dbg !35
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %var, i64 0, i64 %idxprom, !dbg !35
  store i32 0, i32* %arrayidx, align 4, !dbg !36, !tbaa !24
  br label %for.inc, !dbg !37

for.inc:                                          ; preds = %for.body
  %5 = load i32, i32* %i, align 4, !dbg !38, !tbaa !24
  %inc = add nsw i32 %5, 1, !dbg !38
  store i32 %inc, i32* %i, align 4, !dbg !38, !tbaa !24
  br label %for.cond, !dbg !32, !llvm.loop !39

for.end:                                          ; preds = %for.cond.cleanup
  call void @__omp_offloading_1030a_2160963_main_l27([8 x i32]* %var) #5, !dbg !41
  %6 = bitcast i32* %i1 to i8*, !dbg !43
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #5, !dbg !43
  call void @llvm.dbg.declare(metadata i32* %i1, metadata !18, metadata !DIExpression()), !dbg !44
  store i32 0, i32* %i1, align 4, !dbg !44, !tbaa !24
  br label %for.cond2, !dbg !43

for.cond2:                                        ; preds = %for.inc11, %for.end
  %7 = load i32, i32* %i1, align 4, !dbg !45, !tbaa !24
  %cmp3 = icmp slt i32 %7, 8, !dbg !47
  br i1 %cmp3, label %for.body5, label %for.cond.cleanup4, !dbg !48

for.cond.cleanup4:                                ; preds = %for.cond2
  %8 = bitcast i32* %i1 to i8*, !dbg !49
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %8) #5, !dbg !49
  br label %for.end13

for.body5:                                        ; preds = %for.cond2
  %9 = load i32, i32* %i1, align 4, !dbg !50, !tbaa !24
  %idxprom6 = sext i32 %9 to i64, !dbg !53
  %arrayidx7 = getelementptr inbounds [8 x i32], [8 x i32]* %var, i64 0, i64 %idxprom6, !dbg !53
  %10 = load i32, i32* %arrayidx7, align 4, !dbg !53, !tbaa !24
  %cmp8 = icmp ne i32 %10, 20, !dbg !54
  br i1 %cmp8, label %if.then, label %if.end, !dbg !55

if.then:                                          ; preds = %for.body5
  %11 = load i32, i32* %i1, align 4, !dbg !56, !tbaa !24
  %idxprom9 = sext i32 %11 to i64, !dbg !57
  %arrayidx10 = getelementptr inbounds [8 x i32], [8 x i32]* %var, i64 0, i64 %idxprom9, !dbg !57
  %12 = load i32, i32* %arrayidx10, align 4, !dbg !57, !tbaa !24
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %12), !dbg !58
  br label %if.end, !dbg !58

if.end:                                           ; preds = %if.then, %for.body5
  br label %for.inc11, !dbg !59

for.inc11:                                        ; preds = %if.end
  %13 = load i32, i32* %i1, align 4, !dbg !60, !tbaa !24
  %inc12 = add nsw i32 %13, 1, !dbg !60
  store i32 %inc12, i32* %i1, align 4, !dbg !60, !tbaa !24
  br label %for.cond2, !dbg !49, !llvm.loop !61

for.end13:                                        ; preds = %for.cond.cleanup4
  %14 = bitcast [8 x i32]* %var to i8*, !dbg !63
  call void @llvm.lifetime.end.p0i8(i64 32, i8* %14) #5, !dbg !63
  ret i32 0, !dbg !64
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: norecurse nounwind uwtable
define internal void @__omp_offloading_1030a_2160963_main_l27_debug__([8 x i32]* dereferenceable(32) %var) #3 !dbg !65 {
entry:
  %var.addr = alloca [8 x i32]*, align 8
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  %2 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4
  store i8* getelementptr inbounds ([72 x i8], [72 x i8]* @5, i32 0, i32 0), i8** %2, align 8, !tbaa !71
  %3 = call i32 @__kmpc_global_thread_num(%struct.ident_t* %.kmpc_loc.addr)
  store [8 x i32]* %var, [8 x i32]** %var.addr, align 8, !tbaa !74
  call void @llvm.dbg.declare(metadata [8 x i32]** %var.addr, metadata !70, metadata !DIExpression()), !dbg !75
  %4 = load [8 x i32]*, [8 x i32]** %var.addr, align 8, !dbg !76, !tbaa !74
  %5 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !76
  store i8* getelementptr inbounds ([72 x i8], [72 x i8]* @5, i32 0, i32 0), i8** %5, align 8, !dbg !76, !tbaa !71
  %6 = call i32 @__kmpc_push_num_teams(%struct.ident_t* %.kmpc_loc.addr, i32 %3, i32 1, i32 1048), !dbg !76
  %7 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !76
  store i8* getelementptr inbounds ([72 x i8], [72 x i8]* @5, i32 0, i32 0), i8** %7, align 8, !dbg !76, !tbaa !71
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_teams(%struct.ident_t* %.kmpc_loc.addr, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, [8 x i32]*)* @.omp_outlined..2 to void (i32*, i32*, ...)*), [8 x i32]* %4), !dbg !76
  ret void, !dbg !77
}

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., [8 x i32]* dereferenceable(32) %var) #3 !dbg !78 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %var.addr = alloca [8 x i32]*, align 8
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
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !74
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !86, metadata !DIExpression()), !dbg !96
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !74
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !87, metadata !DIExpression()), !dbg !96
  store [8 x i32]* %var, [8 x i32]** %var.addr, align 8, !tbaa !74
  call void @llvm.dbg.declare(metadata [8 x i32]** %var.addr, metadata !88, metadata !DIExpression()), !dbg !97
  %2 = load [8 x i32]*, [8 x i32]** %var.addr, align 8, !dbg !98, !tbaa !74
  %3 = bitcast i32* %.omp.iv to i8*, !dbg !98
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #5, !dbg !98
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !89, metadata !DIExpression()), !dbg !99
  %4 = bitcast i32* %.omp.comb.lb to i8*, !dbg !98
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #5, !dbg !98
  call void @llvm.dbg.declare(metadata i32* %.omp.comb.lb, metadata !91, metadata !DIExpression()), !dbg !99
  store i32 0, i32* %.omp.comb.lb, align 4, !dbg !100, !tbaa !24
  %5 = bitcast i32* %.omp.comb.ub to i8*, !dbg !98
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #5, !dbg !98
  call void @llvm.dbg.declare(metadata i32* %.omp.comb.ub, metadata !92, metadata !DIExpression()), !dbg !99
  store i32 19, i32* %.omp.comb.ub, align 4, !dbg !100, !tbaa !24
  %6 = bitcast i32* %.omp.stride to i8*, !dbg !98
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #5, !dbg !98
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !93, metadata !DIExpression()), !dbg !99
  store i32 1, i32* %.omp.stride, align 4, !dbg !100, !tbaa !24
  %7 = bitcast i32* %.omp.is_last to i8*, !dbg !98
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #5, !dbg !98
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !94, metadata !DIExpression()), !dbg !99
  store i32 0, i32* %.omp.is_last, align 4, !dbg !100, !tbaa !24
  %8 = bitcast i32* %i to i8*, !dbg !98
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #5, !dbg !98
  call void @llvm.dbg.declare(metadata i32* %i, metadata !95, metadata !DIExpression()), !dbg !99
  %9 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !98
  store i8* getelementptr inbounds ([72 x i8], [72 x i8]* @1, i32 0, i32 0), i8** %9, align 8, !dbg !98, !tbaa !71
  %10 = load i32*, i32** %.global_tid..addr, align 8, !dbg !98
  %11 = load i32, i32* %10, align 4, !dbg !98, !tbaa !24
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %11, i32 92, i32* %.omp.is_last, i32* %.omp.comb.lb, i32* %.omp.comb.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !98
  %12 = load i32, i32* %.omp.comb.ub, align 4, !dbg !100, !tbaa !24
  %cmp = icmp sgt i32 %12, 19, !dbg !100
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !100

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !100

cond.false:                                       ; preds = %entry
  %13 = load i32, i32* %.omp.comb.ub, align 4, !dbg !100, !tbaa !24
  br label %cond.end, !dbg !100

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 19, %cond.true ], [ %13, %cond.false ], !dbg !100
  store i32 %cond, i32* %.omp.comb.ub, align 4, !dbg !100, !tbaa !24
  %14 = load i32, i32* %.omp.comb.lb, align 4, !dbg !100, !tbaa !24
  store i32 %14, i32* %.omp.iv, align 4, !dbg !100, !tbaa !24
  br label %omp.inner.for.cond, !dbg !98

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %15 = load i32, i32* %.omp.iv, align 4, !dbg !100, !tbaa !24
  %16 = load i32, i32* %.omp.comb.ub, align 4, !dbg !100, !tbaa !24
  %cmp1 = icmp sle i32 %15, %16, !dbg !101
  br i1 %cmp1, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !98

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !98

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %17 = load i32, i32* %.omp.comb.lb, align 4, !dbg !102
  %18 = zext i32 %17 to i64, !dbg !102
  %19 = load i32, i32* %.omp.comb.ub, align 4, !dbg !102
  %20 = zext i32 %19 to i64, !dbg !102
  %21 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !102
  store i8* getelementptr inbounds ([72 x i8], [72 x i8]* @1, i32 0, i32 0), i8** %21, align 8, !dbg !102, !tbaa !71
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i64, i64, [8 x i32]*)* @.omp_outlined. to void (i32*, i32*, ...)*), i64 %18, i64 %20, [8 x i32]* %2), !dbg !102
  br label %omp.inner.for.inc, !dbg !103

omp.inner.for.inc:                                ; preds = %omp.inner.for.body
  %22 = load i32, i32* %.omp.iv, align 4, !dbg !100, !tbaa !24
  %23 = load i32, i32* %.omp.stride, align 4, !dbg !100, !tbaa !24
  %add = add nsw i32 %22, %23, !dbg !101
  store i32 %add, i32* %.omp.iv, align 4, !dbg !101, !tbaa !24
  br label %omp.inner.for.cond, !dbg !103, !llvm.loop !105

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !103

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %24 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !103
  store i8* getelementptr inbounds ([72 x i8], [72 x i8]* @1, i32 0, i32 0), i8** %24, align 8, !dbg !103, !tbaa !71
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %11), !dbg !103
  %25 = bitcast i32* %i to i8*, !dbg !103
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %25) #5, !dbg !103
  %26 = bitcast i32* %.omp.is_last to i8*, !dbg !103
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %26) #5, !dbg !103
  %27 = bitcast i32* %.omp.stride to i8*, !dbg !103
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %27) #5, !dbg !103
  %28 = bitcast i32* %.omp.comb.ub to i8*, !dbg !103
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %28) #5, !dbg !103
  %29 = bitcast i32* %.omp.comb.lb to i8*, !dbg !103
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %29) #5, !dbg !103
  %30 = bitcast i32* %.omp.iv to i8*, !dbg !103
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %30) #5, !dbg !103
  ret void, !dbg !107
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__.1(i32* noalias %.global_tid., i32* noalias %.bound_tid., i64 %.previous.lb., i64 %.previous.ub., [8 x i32]* dereferenceable(32) %var) #3 !dbg !108 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %.previous.lb..addr = alloca i64, align 8
  %.previous.ub..addr = alloca i64, align 8
  %var.addr = alloca [8 x i32]*, align 8
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
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !74
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !114, metadata !DIExpression()), !dbg !129
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !74
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !115, metadata !DIExpression()), !dbg !129
  store i64 %.previous.lb., i64* %.previous.lb..addr, align 8, !tbaa !130
  call void @llvm.dbg.declare(metadata i64* %.previous.lb..addr, metadata !116, metadata !DIExpression()), !dbg !129
  store i64 %.previous.ub., i64* %.previous.ub..addr, align 8, !tbaa !130
  call void @llvm.dbg.declare(metadata i64* %.previous.ub..addr, metadata !117, metadata !DIExpression()), !dbg !129
  store [8 x i32]* %var, [8 x i32]** %var.addr, align 8, !tbaa !74
  call void @llvm.dbg.declare(metadata [8 x i32]** %var.addr, metadata !118, metadata !DIExpression()), !dbg !132
  %2 = load [8 x i32]*, [8 x i32]** %var.addr, align 8, !dbg !133, !tbaa !74
  %3 = bitcast i32* %.omp.iv to i8*, !dbg !133
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #5, !dbg !133
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !119, metadata !DIExpression()), !dbg !129
  %4 = bitcast i32* %.omp.lb to i8*, !dbg !133
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #5, !dbg !133
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !120, metadata !DIExpression()), !dbg !129
  store i32 0, i32* %.omp.lb, align 4, !dbg !134, !tbaa !24
  %5 = bitcast i32* %.omp.ub to i8*, !dbg !133
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #5, !dbg !133
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !121, metadata !DIExpression()), !dbg !129
  store i32 19, i32* %.omp.ub, align 4, !dbg !134, !tbaa !24
  %6 = load i64, i64* %.previous.lb..addr, align 8, !dbg !133, !tbaa !130
  %conv = trunc i64 %6 to i32, !dbg !133
  %7 = load i64, i64* %.previous.ub..addr, align 8, !dbg !133, !tbaa !130
  %conv1 = trunc i64 %7 to i32, !dbg !133
  store i32 %conv, i32* %.omp.lb, align 4, !dbg !133, !tbaa !24
  store i32 %conv1, i32* %.omp.ub, align 4, !dbg !133, !tbaa !24
  %8 = bitcast i32* %.omp.stride to i8*, !dbg !133
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #5, !dbg !133
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !122, metadata !DIExpression()), !dbg !129
  store i32 1, i32* %.omp.stride, align 4, !dbg !134, !tbaa !24
  %9 = bitcast i32* %.omp.is_last to i8*, !dbg !133
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #5, !dbg !133
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !123, metadata !DIExpression()), !dbg !129
  store i32 0, i32* %.omp.is_last, align 4, !dbg !134, !tbaa !24
  %10 = bitcast i32* %i to i8*, !dbg !133
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #5, !dbg !133
  call void @llvm.dbg.declare(metadata i32* %i, metadata !124, metadata !DIExpression()), !dbg !129
  %11 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !133
  store i8* getelementptr inbounds ([72 x i8], [72 x i8]* @1, i32 0, i32 0), i8** %11, align 8, !dbg !133, !tbaa !71
  %12 = load i32*, i32** %.global_tid..addr, align 8, !dbg !133
  %13 = load i32, i32* %12, align 4, !dbg !133, !tbaa !24
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %13, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !133
  %14 = load i32, i32* %.omp.ub, align 4, !dbg !134, !tbaa !24
  %cmp = icmp sgt i32 %14, 19, !dbg !134
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !134

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !134

cond.false:                                       ; preds = %entry
  %15 = load i32, i32* %.omp.ub, align 4, !dbg !134, !tbaa !24
  br label %cond.end, !dbg !134

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 19, %cond.true ], [ %15, %cond.false ], !dbg !134
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !134, !tbaa !24
  %16 = load i32, i32* %.omp.lb, align 4, !dbg !134, !tbaa !24
  store i32 %16, i32* %.omp.iv, align 4, !dbg !134, !tbaa !24
  br label %omp.inner.for.cond, !dbg !133

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc17, %cond.end
  %17 = load i32, i32* %.omp.iv, align 4, !dbg !134, !tbaa !24
  %18 = load i32, i32* %.omp.ub, align 4, !dbg !134, !tbaa !24
  %cmp3 = icmp sle i32 %17, %18, !dbg !133
  br i1 %cmp3, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !133

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end19, !dbg !133

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %19 = load i32, i32* %.omp.iv, align 4, !dbg !134, !tbaa !24
  %mul = mul nsw i32 %19, 1, !dbg !135
  %add = add nsw i32 0, %mul, !dbg !135
  store i32 %add, i32* %i, align 4, !dbg !135, !tbaa !24
  %20 = bitcast i32* %.omp.iv6 to i8*, !dbg !136
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %20) #5, !dbg !136
  call void @llvm.dbg.declare(metadata i32* %.omp.iv6, metadata !125, metadata !DIExpression()), !dbg !137
  store i32 0, i32* %.omp.iv6, align 4, !dbg !138, !tbaa !24
  %21 = bitcast i32* %i7 to i8*, !dbg !136
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %21) #5, !dbg !136
  call void @llvm.dbg.declare(metadata i32* %i7, metadata !128, metadata !DIExpression()), !dbg !137
  br label %omp.inner.for.cond8, !dbg !136

omp.inner.for.cond8:                              ; preds = %omp.inner.for.inc, %omp.inner.for.body
  %22 = load i32, i32* %.omp.iv6, align 4, !dbg !138, !tbaa !24, !llvm.access.group !139
  %cmp9 = icmp slt i32 %22, 8, !dbg !140
  br i1 %cmp9, label %omp.inner.for.body12, label %omp.inner.for.cond.cleanup11, !dbg !136

omp.inner.for.cond.cleanup11:                     ; preds = %omp.inner.for.cond8
  br label %omp.inner.for.end, !dbg !136

omp.inner.for.body12:                             ; preds = %omp.inner.for.cond8
  %23 = load i32, i32* %.omp.iv6, align 4, !dbg !138, !tbaa !24, !llvm.access.group !139
  %mul13 = mul nsw i32 %23, 1, !dbg !141
  %add14 = add nsw i32 0, %mul13, !dbg !141
  store i32 %add14, i32* %i7, align 4, !dbg !141, !tbaa !24, !llvm.access.group !139
  %24 = load i32, i32* %i7, align 4, !dbg !142, !tbaa !24, !llvm.access.group !139
  %idxprom = sext i32 %24 to i64, !dbg !144
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %2, i64 0, i64 %idxprom, !dbg !144
  %25 = load i32, i32* %arrayidx, align 4, !dbg !145, !tbaa !24, !llvm.access.group !139
  %inc = add nsw i32 %25, 1, !dbg !145
  store i32 %inc, i32* %arrayidx, align 4, !dbg !145, !tbaa !24, !llvm.access.group !139
  br label %omp.body.continue, !dbg !146

omp.body.continue:                                ; preds = %omp.inner.for.body12
  br label %omp.inner.for.inc, !dbg !147

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %26 = load i32, i32* %.omp.iv6, align 4, !dbg !138, !tbaa !24, !llvm.access.group !139
  %add15 = add nsw i32 %26, 1, !dbg !140
  store i32 %add15, i32* %.omp.iv6, align 4, !dbg !140, !tbaa !24, !llvm.access.group !139
  br label %omp.inner.for.cond8, !dbg !147, !llvm.loop !148

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup11
  store i32 8, i32* %i7, align 4, !dbg !141, !tbaa !24
  %27 = bitcast i32* %i7 to i8*, !dbg !147
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %27) #5, !dbg !147
  %28 = bitcast i32* %.omp.iv6 to i8*, !dbg !147
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %28) #5, !dbg !147
  br label %omp.body.continue16, !dbg !152

omp.body.continue16:                              ; preds = %omp.inner.for.end
  br label %omp.inner.for.inc17, !dbg !153

omp.inner.for.inc17:                              ; preds = %omp.body.continue16
  %29 = load i32, i32* %.omp.iv, align 4, !dbg !134, !tbaa !24
  %add18 = add nsw i32 %29, 1, !dbg !133
  store i32 %add18, i32* %.omp.iv, align 4, !dbg !133, !tbaa !24
  br label %omp.inner.for.cond, !dbg !153, !llvm.loop !154

omp.inner.for.end19:                              ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !153

omp.loop.exit:                                    ; preds = %omp.inner.for.end19
  %30 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !153
  store i8* getelementptr inbounds ([73 x i8], [73 x i8]* @3, i32 0, i32 0), i8** %30, align 8, !dbg !153, !tbaa !71
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %13), !dbg !153
  %31 = bitcast i32* %i to i8*, !dbg !153
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %31) #5, !dbg !153
  %32 = bitcast i32* %.omp.is_last to i8*, !dbg !153
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %32) #5, !dbg !153
  %33 = bitcast i32* %.omp.stride to i8*, !dbg !153
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %33) #5, !dbg !153
  %34 = bitcast i32* %.omp.ub to i8*, !dbg !153
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %34) #5, !dbg !153
  %35 = bitcast i32* %.omp.lb to i8*, !dbg !153
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %35) #5, !dbg !153
  %36 = bitcast i32* %.omp.iv to i8*, !dbg !153
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %36) #5, !dbg !153
  ret void, !dbg !156
}

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i64 %.previous.lb., i64 %.previous.ub., [8 x i32]* dereferenceable(32) %var) #3 !dbg !157 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %.previous.lb..addr = alloca i64, align 8
  %.previous.ub..addr = alloca i64, align 8
  %var.addr = alloca [8 x i32]*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !74
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !159, metadata !DIExpression()), !dbg !164
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !74
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !160, metadata !DIExpression()), !dbg !164
  store i64 %.previous.lb., i64* %.previous.lb..addr, align 8, !tbaa !130
  call void @llvm.dbg.declare(metadata i64* %.previous.lb..addr, metadata !161, metadata !DIExpression()), !dbg !164
  store i64 %.previous.ub., i64* %.previous.ub..addr, align 8, !tbaa !130
  call void @llvm.dbg.declare(metadata i64* %.previous.ub..addr, metadata !162, metadata !DIExpression()), !dbg !164
  store [8 x i32]* %var, [8 x i32]** %var.addr, align 8, !tbaa !74
  call void @llvm.dbg.declare(metadata [8 x i32]** %var.addr, metadata !163, metadata !DIExpression()), !dbg !164
  %0 = load [8 x i32]*, [8 x i32]** %var.addr, align 8, !dbg !165, !tbaa !74
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !165, !tbaa !74
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !165, !tbaa !74
  %3 = load i64, i64* %.previous.lb..addr, align 8, !dbg !165, !tbaa !130
  %4 = load i64, i64* %.previous.ub..addr, align 8, !dbg !165, !tbaa !130
  %5 = load [8 x i32]*, [8 x i32]** %var.addr, align 8, !dbg !165, !tbaa !74
  call void @.omp_outlined._debug__.1(i32* %1, i32* %2, i64 %3, i64 %4, [8 x i32]* %5) #5, !dbg !165
  ret void, !dbg !165
}

declare !callback !166 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined..2(i32* noalias %.global_tid., i32* noalias %.bound_tid., [8 x i32]* dereferenceable(32) %var) #3 !dbg !168 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %var.addr = alloca [8 x i32]*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !74
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !170, metadata !DIExpression()), !dbg !173
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !74
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !171, metadata !DIExpression()), !dbg !173
  store [8 x i32]* %var, [8 x i32]** %var.addr, align 8, !tbaa !74
  call void @llvm.dbg.declare(metadata [8 x i32]** %var.addr, metadata !172, metadata !DIExpression()), !dbg !173
  %0 = load [8 x i32]*, [8 x i32]** %var.addr, align 8, !dbg !174, !tbaa !74
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !174, !tbaa !74
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !174, !tbaa !74
  %3 = load [8 x i32]*, [8 x i32]** %var.addr, align 8, !dbg !174, !tbaa !74
  call void @.omp_outlined._debug__(i32* %1, i32* %2, [8 x i32]* %3) #5, !dbg !174
  ret void, !dbg !174
}

declare dso_local i32 @__kmpc_global_thread_num(%struct.ident_t*)

declare dso_local i32 @__kmpc_push_num_teams(%struct.ident_t*, i32, i32, i32)

declare !callback !166 dso_local void @__kmpc_fork_teams(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

; Function Attrs: norecurse nounwind uwtable
define internal void @__omp_offloading_1030a_2160963_main_l27([8 x i32]* dereferenceable(32) %var) #3 !dbg !175 {
entry:
  %var.addr = alloca [8 x i32]*, align 8
  store [8 x i32]* %var, [8 x i32]** %var.addr, align 8, !tbaa !74
  call void @llvm.dbg.declare(metadata [8 x i32]** %var.addr, metadata !177, metadata !DIExpression()), !dbg !178
  %0 = load [8 x i32]*, [8 x i32]** %var.addr, align 8, !dbg !179, !tbaa !74
  %1 = load [8 x i32]*, [8 x i32]** %var.addr, align 8, !dbg !179, !tbaa !74
  call void @__omp_offloading_1030a_2160963_main_l27_debug__([8 x i32]* %1) #5, !dbg !179
  ret void, !dbg !179
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
!1 = !DIFile(filename: "integration/dataracebench/DRB161-nolocksimd-orig-gpu-yes.c", directory: "/home/brad/Code/OpenRace/tests/data")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.1 "}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 20, type: !8, scopeLine: 20, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !11)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !{!12, !16, !18}
!12 = !DILocalVariable(name: "var", scope: !7, file: !1, line: 21, type: !13)
!13 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 256, elements: !14)
!14 = !{!15}
!15 = !DISubrange(count: 8)
!16 = !DILocalVariable(name: "i", scope: !17, file: !1, line: 23, type: !10)
!17 = distinct !DILexicalBlock(scope: !7, file: !1, line: 23, column: 3)
!18 = !DILocalVariable(name: "i", scope: !19, file: !1, line: 37, type: !10)
!19 = distinct !DILexicalBlock(scope: !7, file: !1, line: 37, column: 3)
!20 = !DILocation(line: 21, column: 3, scope: !7)
!21 = !DILocation(line: 21, column: 7, scope: !7)
!22 = !DILocation(line: 23, column: 7, scope: !17)
!23 = !DILocation(line: 23, column: 11, scope: !17)
!24 = !{!25, !25, i64 0}
!25 = !{!"int", !26, i64 0}
!26 = !{!"omnipotent char", !27, i64 0}
!27 = !{!"Simple C/C++ TBAA"}
!28 = !DILocation(line: 23, column: 16, scope: !29)
!29 = distinct !DILexicalBlock(scope: !17, file: !1, line: 23, column: 3)
!30 = !DILocation(line: 23, column: 17, scope: !29)
!31 = !DILocation(line: 23, column: 3, scope: !17)
!32 = !DILocation(line: 23, column: 3, scope: !29)
!33 = !DILocation(line: 24, column: 9, scope: !34)
!34 = distinct !DILexicalBlock(scope: !29, file: !1, line: 23, column: 25)
!35 = !DILocation(line: 24, column: 5, scope: !34)
!36 = !DILocation(line: 24, column: 12, scope: !34)
!37 = !DILocation(line: 25, column: 3, scope: !34)
!38 = !DILocation(line: 23, column: 22, scope: !29)
!39 = distinct !{!39, !31, !40}
!40 = !DILocation(line: 25, column: 3, scope: !17)
!41 = !DILocation(line: 27, column: 3, scope: !42)
!42 = distinct !DILexicalBlock(scope: !7, file: !1, line: 27, column: 3)
!43 = !DILocation(line: 37, column: 7, scope: !19)
!44 = !DILocation(line: 37, column: 11, scope: !19)
!45 = !DILocation(line: 37, column: 16, scope: !46)
!46 = distinct !DILexicalBlock(scope: !19, file: !1, line: 37, column: 3)
!47 = !DILocation(line: 37, column: 17, scope: !46)
!48 = !DILocation(line: 37, column: 3, scope: !19)
!49 = !DILocation(line: 37, column: 3, scope: !46)
!50 = !DILocation(line: 38, column: 12, scope: !51)
!51 = distinct !DILexicalBlock(scope: !52, file: !1, line: 38, column: 8)
!52 = distinct !DILexicalBlock(scope: !46, file: !1, line: 37, column: 25)
!53 = !DILocation(line: 38, column: 8, scope: !51)
!54 = !DILocation(line: 38, column: 14, scope: !51)
!55 = !DILocation(line: 38, column: 8, scope: !52)
!56 = !DILocation(line: 38, column: 38, scope: !51)
!57 = !DILocation(line: 38, column: 34, scope: !51)
!58 = !DILocation(line: 38, column: 19, scope: !51)
!59 = !DILocation(line: 39, column: 3, scope: !52)
!60 = !DILocation(line: 37, column: 22, scope: !46)
!61 = distinct !{!61, !48, !62}
!62 = !DILocation(line: 39, column: 3, scope: !19)
!63 = !DILocation(line: 42, column: 1, scope: !7)
!64 = !DILocation(line: 41, column: 3, scope: !7)
!65 = distinct !DISubprogram(name: "__omp_offloading_1030a_2160963_main_l27_debug__", scope: !1, file: !1, line: 28, type: !66, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !69)
!66 = !DISubroutineType(types: !67)
!67 = !{null, !68}
!68 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !13, size: 64)
!69 = !{!70}
!70 = !DILocalVariable(name: "var", arg: 1, scope: !65, file: !1, line: 21, type: !68)
!71 = !{!72, !73, i64 16}
!72 = !{!"ident_t", !25, i64 0, !25, i64 4, !25, i64 8, !25, i64 12, !73, i64 16}
!73 = !{!"any pointer", !26, i64 0}
!74 = !{!73, !73, i64 0}
!75 = !DILocation(line: 21, column: 7, scope: !65)
!76 = !DILocation(line: 28, column: 3, scope: !65)
!77 = !DILocation(line: 28, column: 53, scope: !65)
!78 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 29, type: !79, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !85)
!79 = !DISubroutineType(types: !80)
!80 = !{null, !81, !81, !68}
!81 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !82)
!82 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !83)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!85 = !{!86, !87, !88, !89, !91, !92, !93, !94, !95}
!86 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !78, type: !81, flags: DIFlagArtificial)
!87 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !78, type: !81, flags: DIFlagArtificial)
!88 = !DILocalVariable(name: "var", arg: 3, scope: !78, file: !1, line: 21, type: !68)
!89 = !DILocalVariable(name: ".omp.iv", scope: !90, type: !10, flags: DIFlagArtificial)
!90 = distinct !DILexicalBlock(scope: !78, file: !1, line: 29, column: 3)
!91 = !DILocalVariable(name: ".omp.comb.lb", scope: !90, type: !10, flags: DIFlagArtificial)
!92 = !DILocalVariable(name: ".omp.comb.ub", scope: !90, type: !10, flags: DIFlagArtificial)
!93 = !DILocalVariable(name: ".omp.stride", scope: !90, type: !10, flags: DIFlagArtificial)
!94 = !DILocalVariable(name: ".omp.is_last", scope: !90, type: !10, flags: DIFlagArtificial)
!95 = !DILocalVariable(name: "i", scope: !90, type: !10, flags: DIFlagArtificial)
!96 = !DILocation(line: 0, scope: !78)
!97 = !DILocation(line: 21, column: 7, scope: !78)
!98 = !DILocation(line: 29, column: 3, scope: !78)
!99 = !DILocation(line: 0, scope: !90)
!100 = !DILocation(line: 30, column: 8, scope: !90)
!101 = !DILocation(line: 30, column: 3, scope: !90)
!102 = !DILocation(line: 29, column: 3, scope: !90)
!103 = !DILocation(line: 29, column: 39, scope: !104)
!104 = distinct !DILexicalBlock(scope: !90, file: !1, line: 29, column: 3)
!105 = distinct !{!105, !102, !106}
!106 = !DILocation(line: 29, column: 39, scope: !90)
!107 = !DILocation(line: 29, column: 39, scope: !78)
!108 = distinct !DISubprogram(name: ".omp_outlined._debug__.1", scope: !1, file: !1, line: 30, type: !109, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !113)
!109 = !DISubroutineType(types: !110)
!110 = !{null, !81, !81, !111, !111, !68}
!111 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !112)
!112 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!113 = !{!114, !115, !116, !117, !118, !119, !120, !121, !122, !123, !124, !125, !128}
!114 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !108, type: !81, flags: DIFlagArtificial)
!115 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !108, type: !81, flags: DIFlagArtificial)
!116 = !DILocalVariable(name: ".previous.lb.", arg: 3, scope: !108, type: !111, flags: DIFlagArtificial)
!117 = !DILocalVariable(name: ".previous.ub.", arg: 4, scope: !108, type: !111, flags: DIFlagArtificial)
!118 = !DILocalVariable(name: "var", arg: 5, scope: !108, file: !1, line: 21, type: !68)
!119 = !DILocalVariable(name: ".omp.iv", scope: !108, type: !10, flags: DIFlagArtificial)
!120 = !DILocalVariable(name: ".omp.lb", scope: !108, type: !10, flags: DIFlagArtificial)
!121 = !DILocalVariable(name: ".omp.ub", scope: !108, type: !10, flags: DIFlagArtificial)
!122 = !DILocalVariable(name: ".omp.stride", scope: !108, type: !10, flags: DIFlagArtificial)
!123 = !DILocalVariable(name: ".omp.is_last", scope: !108, type: !10, flags: DIFlagArtificial)
!124 = !DILocalVariable(name: "i", scope: !108, type: !10, flags: DIFlagArtificial)
!125 = !DILocalVariable(name: ".omp.iv", scope: !126, type: !10, flags: DIFlagArtificial)
!126 = distinct !DILexicalBlock(scope: !127, file: !1, line: 31, column: 5)
!127 = distinct !DILexicalBlock(scope: !108, file: !1, line: 30, column: 26)
!128 = !DILocalVariable(name: "i", scope: !126, type: !10, flags: DIFlagArtificial)
!129 = !DILocation(line: 0, scope: !108)
!130 = !{!131, !131, i64 0}
!131 = !{!"long", !26, i64 0}
!132 = !DILocation(line: 21, column: 7, scope: !108)
!133 = !DILocation(line: 30, column: 3, scope: !108)
!134 = !DILocation(line: 30, column: 8, scope: !108)
!135 = !DILocation(line: 30, column: 22, scope: !108)
!136 = !DILocation(line: 31, column: 5, scope: !127)
!137 = !DILocation(line: 0, scope: !126)
!138 = !DILocation(line: 32, column: 9, scope: !126)
!139 = distinct !{}
!140 = !DILocation(line: 32, column: 5, scope: !126)
!141 = !DILocation(line: 32, column: 23, scope: !126)
!142 = !DILocation(line: 33, column: 11, scope: !143)
!143 = distinct !DILexicalBlock(scope: !126, file: !1, line: 32, column: 27)
!144 = !DILocation(line: 33, column: 7, scope: !143)
!145 = !DILocation(line: 33, column: 13, scope: !143)
!146 = !DILocation(line: 34, column: 5, scope: !143)
!147 = !DILocation(line: 31, column: 5, scope: !126)
!148 = distinct !{!148, !147, !149, !150, !151}
!149 = !DILocation(line: 31, column: 21, scope: !126)
!150 = !{!"llvm.loop.parallel_accesses", !139}
!151 = !{!"llvm.loop.vectorize.enable", i1 true}
!152 = !DILocation(line: 35, column: 3, scope: !127)
!153 = !DILocation(line: 29, column: 3, scope: !108)
!154 = distinct !{!154, !153, !155}
!155 = !DILocation(line: 29, column: 39, scope: !108)
!156 = !DILocation(line: 35, column: 3, scope: !108)
!157 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 30, type: !109, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !158)
!158 = !{!159, !160, !161, !162, !163}
!159 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !157, type: !81, flags: DIFlagArtificial)
!160 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !157, type: !81, flags: DIFlagArtificial)
!161 = !DILocalVariable(name: ".previous.lb.", arg: 3, scope: !157, type: !111, flags: DIFlagArtificial)
!162 = !DILocalVariable(name: ".previous.ub.", arg: 4, scope: !157, type: !111, flags: DIFlagArtificial)
!163 = !DILocalVariable(name: "var", arg: 5, scope: !157, type: !68, flags: DIFlagArtificial)
!164 = !DILocation(line: 0, scope: !157)
!165 = !DILocation(line: 30, column: 3, scope: !157)
!166 = !{!167}
!167 = !{i64 2, i64 -1, i64 -1, i1 true}
!168 = distinct !DISubprogram(name: ".omp_outlined..2", scope: !1, file: !1, line: 29, type: !79, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !169)
!169 = !{!170, !171, !172}
!170 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !168, type: !81, flags: DIFlagArtificial)
!171 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !168, type: !81, flags: DIFlagArtificial)
!172 = !DILocalVariable(name: "var", arg: 3, scope: !168, type: !68, flags: DIFlagArtificial)
!173 = !DILocation(line: 0, scope: !168)
!174 = !DILocation(line: 29, column: 3, scope: !168)
!175 = distinct !DISubprogram(name: "__omp_offloading_1030a_2160963_main_l27", scope: !1, file: !1, line: 28, type: !66, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !176)
!176 = !{!177}
!177 = !DILocalVariable(name: "var", arg: 1, scope: !175, type: !68, flags: DIFlagArtificial)
!178 = !DILocation(line: 0, scope: !175)
!179 = !DILocation(line: 28, column: 3, scope: !175)
