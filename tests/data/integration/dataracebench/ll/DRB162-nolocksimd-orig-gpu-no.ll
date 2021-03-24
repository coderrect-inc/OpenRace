; ModuleID = 'DRB162-nolocksimd-orig-gpu-no.c'
source_filename = "DRB162-nolocksimd-orig-gpu-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 2050, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [45 x i8] c";DRB162-nolocksimd-orig-gpu-no.c;main;27;3;;\00", align 1
@2 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@3 = private unnamed_addr constant [46 x i8] c";DRB162-nolocksimd-orig-gpu-no.c;main;27;55;;\00", align 1
@.gomp_critical_user_.reduction.var = common global [8 x i32] zeroinitializer
@4 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@5 = private unnamed_addr constant [45 x i8] c";DRB162-nolocksimd-orig-gpu-no.c;main;26;3;;\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"%d\0A \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !7 {
entry:
  %retval = alloca i32, align 4
  %var = alloca [8 x i32], align 16
  %i = alloca i32, align 4
  %i1 = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata [8 x i32]* %var, metadata !11, metadata !DIExpression()), !dbg !15
  call void @llvm.dbg.declare(metadata i32* %i, metadata !16, metadata !DIExpression()), !dbg !18
  store i32 0, i32* %i, align 4, !dbg !18
  br label %for.cond, !dbg !19

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !20
  %cmp = icmp slt i32 %0, 8, !dbg !22
  br i1 %cmp, label %for.body, label %for.end, !dbg !23

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4, !dbg !24
  %idxprom = sext i32 %1 to i64, !dbg !26
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %var, i64 0, i64 %idxprom, !dbg !26
  store i32 0, i32* %arrayidx, align 4, !dbg !27
  br label %for.inc, !dbg !28

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %i, align 4, !dbg !29
  %inc = add nsw i32 %2, 1, !dbg !29
  store i32 %inc, i32* %i, align 4, !dbg !29
  br label %for.cond, !dbg !30, !llvm.loop !31

for.end:                                          ; preds = %for.cond
  call void @__omp_offloading_10307_2ec41bb_main_l25([8 x i32]* %var) #6, !dbg !33
  call void @llvm.dbg.declare(metadata i32* %i1, metadata !35, metadata !DIExpression()), !dbg !37
  store i32 0, i32* %i1, align 4, !dbg !37
  br label %for.cond2, !dbg !38

for.cond2:                                        ; preds = %for.inc10, %for.end
  %3 = load i32, i32* %i1, align 4, !dbg !39
  %cmp3 = icmp slt i32 %3, 8, !dbg !41
  br i1 %cmp3, label %for.body4, label %for.end12, !dbg !42

for.body4:                                        ; preds = %for.cond2
  %4 = load i32, i32* %i1, align 4, !dbg !43
  %idxprom5 = sext i32 %4 to i64, !dbg !46
  %arrayidx6 = getelementptr inbounds [8 x i32], [8 x i32]* %var, i64 0, i64 %idxprom5, !dbg !46
  %5 = load i32, i32* %arrayidx6, align 4, !dbg !46
  %cmp7 = icmp ne i32 %5, 20, !dbg !47
  br i1 %cmp7, label %if.then, label %if.end, !dbg !48

if.then:                                          ; preds = %for.body4
  %6 = load i32, i32* %i1, align 4, !dbg !49
  %idxprom8 = sext i32 %6 to i64, !dbg !50
  %arrayidx9 = getelementptr inbounds [8 x i32], [8 x i32]* %var, i64 0, i64 %idxprom8, !dbg !50
  %7 = load i32, i32* %arrayidx9, align 4, !dbg !50
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %7), !dbg !51
  br label %if.end, !dbg !51

if.end:                                           ; preds = %if.then, %for.body4
  br label %for.inc10, !dbg !52

for.inc10:                                        ; preds = %if.end
  %8 = load i32, i32* %i1, align 4, !dbg !53
  %inc11 = add nsw i32 %8, 1, !dbg !53
  store i32 %inc11, i32* %i1, align 4, !dbg !53
  br label %for.cond2, !dbg !54, !llvm.loop !55

for.end12:                                        ; preds = %for.cond2
  ret i32 0, !dbg !57
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @__omp_offloading_10307_2ec41bb_main_l25_debug__([8 x i32]* dereferenceable(32) %var) #2 !dbg !58 {
entry:
  %var.addr = alloca [8 x i32]*, align 8
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  %2 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4
  store i8* getelementptr inbounds ([45 x i8], [45 x i8]* @5, i32 0, i32 0), i8** %2, align 8
  %3 = call i32 @__kmpc_global_thread_num(%struct.ident_t* %.kmpc_loc.addr)
  store [8 x i32]* %var, [8 x i32]** %var.addr, align 8
  call void @llvm.dbg.declare(metadata [8 x i32]** %var.addr, metadata !62, metadata !DIExpression()), !dbg !63
  %4 = load [8 x i32]*, [8 x i32]** %var.addr, align 8, !dbg !64
  %5 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !64
  store i8* getelementptr inbounds ([45 x i8], [45 x i8]* @5, i32 0, i32 0), i8** %5, align 8, !dbg !64
  %6 = call i32 @__kmpc_push_num_teams(%struct.ident_t* %.kmpc_loc.addr, i32 %3, i32 1, i32 1048), !dbg !64
  %7 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !64
  store i8* getelementptr inbounds ([45 x i8], [45 x i8]* @5, i32 0, i32 0), i8** %7, align 8, !dbg !64
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_teams(%struct.ident_t* %.kmpc_loc.addr, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, [8 x i32]*)* @.omp_outlined..2 to void (i32*, i32*, ...)*), [8 x i32]* %4), !dbg !64
  ret void, !dbg !65
}

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., [8 x i32]* dereferenceable(32) %var) #2 !dbg !66 {
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
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !73, metadata !DIExpression()), !dbg !74
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !75, metadata !DIExpression()), !dbg !74
  store [8 x i32]* %var, [8 x i32]** %var.addr, align 8
  call void @llvm.dbg.declare(metadata [8 x i32]** %var.addr, metadata !76, metadata !DIExpression()), !dbg !77
  %2 = load [8 x i32]*, [8 x i32]** %var.addr, align 8, !dbg !78
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !79, metadata !DIExpression()), !dbg !81
  call void @llvm.dbg.declare(metadata i32* %.omp.comb.lb, metadata !82, metadata !DIExpression()), !dbg !81
  store i32 0, i32* %.omp.comb.lb, align 4, !dbg !83
  call void @llvm.dbg.declare(metadata i32* %.omp.comb.ub, metadata !84, metadata !DIExpression()), !dbg !81
  store i32 19, i32* %.omp.comb.ub, align 4, !dbg !83
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !85, metadata !DIExpression()), !dbg !81
  store i32 1, i32* %.omp.stride, align 4, !dbg !83
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !86, metadata !DIExpression()), !dbg !81
  store i32 0, i32* %.omp.is_last, align 4, !dbg !83
  call void @llvm.dbg.declare(metadata i32* %i, metadata !87, metadata !DIExpression()), !dbg !81
  %3 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !78
  store i8* getelementptr inbounds ([45 x i8], [45 x i8]* @1, i32 0, i32 0), i8** %3, align 8, !dbg !78
  %4 = load i32*, i32** %.global_tid..addr, align 8, !dbg !78
  %5 = load i32, i32* %4, align 4, !dbg !78
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %5, i32 92, i32* %.omp.is_last, i32* %.omp.comb.lb, i32* %.omp.comb.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !78
  %6 = load i32, i32* %.omp.comb.ub, align 4, !dbg !83
  %cmp = icmp sgt i32 %6, 19, !dbg !83
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !83

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !83

cond.false:                                       ; preds = %entry
  %7 = load i32, i32* %.omp.comb.ub, align 4, !dbg !83
  br label %cond.end, !dbg !83

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 19, %cond.true ], [ %7, %cond.false ], !dbg !83
  store i32 %cond, i32* %.omp.comb.ub, align 4, !dbg !83
  %8 = load i32, i32* %.omp.comb.lb, align 4, !dbg !83
  store i32 %8, i32* %.omp.iv, align 4, !dbg !83
  br label %omp.inner.for.cond, !dbg !78

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %9 = load i32, i32* %.omp.iv, align 4, !dbg !83
  %10 = load i32, i32* %.omp.comb.ub, align 4, !dbg !83
  %cmp1 = icmp sle i32 %9, %10, !dbg !88
  br i1 %cmp1, label %omp.inner.for.body, label %omp.inner.for.end, !dbg !78

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %11 = load i32, i32* %.omp.comb.lb, align 4, !dbg !89
  %12 = zext i32 %11 to i64, !dbg !89
  %13 = load i32, i32* %.omp.comb.ub, align 4, !dbg !89
  %14 = zext i32 %13 to i64, !dbg !89
  %15 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !89
  store i8* getelementptr inbounds ([45 x i8], [45 x i8]* @1, i32 0, i32 0), i8** %15, align 8, !dbg !89
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i64, i64, [8 x i32]*)* @.omp_outlined. to void (i32*, i32*, ...)*), i64 %12, i64 %14, [8 x i32]* %2), !dbg !89
  br label %omp.inner.for.inc, !dbg !90

omp.inner.for.inc:                                ; preds = %omp.inner.for.body
  %16 = load i32, i32* %.omp.iv, align 4, !dbg !83
  %17 = load i32, i32* %.omp.stride, align 4, !dbg !83
  %add = add nsw i32 %16, %17, !dbg !88
  store i32 %add, i32* %.omp.iv, align 4, !dbg !88
  br label %omp.inner.for.cond, !dbg !90, !llvm.loop !92

omp.inner.for.end:                                ; preds = %omp.inner.for.cond
  br label %omp.loop.exit, !dbg !90

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %18 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !90
  store i8* getelementptr inbounds ([45 x i8], [45 x i8]* @1, i32 0, i32 0), i8** %18, align 8, !dbg !90
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %5), !dbg !90
  ret void, !dbg !94
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined._debug__.1(i32* noalias %.global_tid., i32* noalias %.bound_tid., i64 %.previous.lb., i64 %.previous.ub., [8 x i32]* dereferenceable(32) %var) #2 !dbg !95 {
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
  %var2 = alloca [8 x i32], align 16
  %i = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %tmp6 = alloca i32, align 4
  %.omp.iv7 = alloca i32, align 4
  %i8 = alloca i32, align 4
  %.omp.reduction.red_list = alloca [1 x i8*], align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !100, metadata !DIExpression()), !dbg !101
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !102, metadata !DIExpression()), !dbg !101
  store i64 %.previous.lb., i64* %.previous.lb..addr, align 8
  call void @llvm.dbg.declare(metadata i64* %.previous.lb..addr, metadata !103, metadata !DIExpression()), !dbg !101
  store i64 %.previous.ub., i64* %.previous.ub..addr, align 8
  call void @llvm.dbg.declare(metadata i64* %.previous.ub..addr, metadata !104, metadata !DIExpression()), !dbg !101
  store [8 x i32]* %var, [8 x i32]** %var.addr, align 8
  call void @llvm.dbg.declare(metadata [8 x i32]** %var.addr, metadata !105, metadata !DIExpression()), !dbg !106
  %2 = load [8 x i32]*, [8 x i32]** %var.addr, align 8, !dbg !107
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !108, metadata !DIExpression()), !dbg !101
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !109, metadata !DIExpression()), !dbg !101
  store i32 0, i32* %.omp.lb, align 4, !dbg !110
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !111, metadata !DIExpression()), !dbg !101
  store i32 19, i32* %.omp.ub, align 4, !dbg !110
  %3 = load i64, i64* %.previous.lb..addr, align 8, !dbg !107
  %conv = trunc i64 %3 to i32, !dbg !107
  %4 = load i64, i64* %.previous.ub..addr, align 8, !dbg !107
  %conv1 = trunc i64 %4 to i32, !dbg !107
  store i32 %conv, i32* %.omp.lb, align 4, !dbg !107
  store i32 %conv1, i32* %.omp.ub, align 4, !dbg !107
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !112, metadata !DIExpression()), !dbg !101
  store i32 1, i32* %.omp.stride, align 4, !dbg !110
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !113, metadata !DIExpression()), !dbg !101
  store i32 0, i32* %.omp.is_last, align 4, !dbg !110
  call void @llvm.dbg.declare(metadata [8 x i32]* %var2, metadata !114, metadata !DIExpression()), !dbg !101
  %array.begin = getelementptr inbounds [8 x i32], [8 x i32]* %var2, i32 0, i32 0, !dbg !107
  %5 = getelementptr i32, i32* %array.begin, i64 8, !dbg !107
  %omp.arrayinit.isempty = icmp eq i32* %array.begin, %5, !dbg !107
  br i1 %omp.arrayinit.isempty, label %omp.arrayinit.done, label %omp.arrayinit.body, !dbg !107

omp.arrayinit.body:                               ; preds = %omp.arrayinit.body, %entry
  %omp.arraycpy.destElementPast = phi i32* [ %array.begin, %entry ], [ %omp.arraycpy.dest.element, %omp.arrayinit.body ], !dbg !107
  store i32 0, i32* %omp.arraycpy.destElementPast, align 4, !dbg !107
  %omp.arraycpy.dest.element = getelementptr i32, i32* %omp.arraycpy.destElementPast, i32 1, !dbg !107
  %omp.arraycpy.done = icmp eq i32* %omp.arraycpy.dest.element, %5, !dbg !107
  br i1 %omp.arraycpy.done, label %omp.arrayinit.done, label %omp.arrayinit.body, !dbg !107

omp.arrayinit.done:                               ; preds = %omp.arrayinit.body, %entry
  %lhs.begin = bitcast [8 x i32]* %2 to i32*, !dbg !107
  %rhs.begin = bitcast [8 x i32]* %var2 to i32*, !dbg !107
  call void @llvm.dbg.declare(metadata i32* %i, metadata !115, metadata !DIExpression()), !dbg !101
  %6 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !107
  store i8* getelementptr inbounds ([45 x i8], [45 x i8]* @1, i32 0, i32 0), i8** %6, align 8, !dbg !107
  %7 = load i32*, i32** %.global_tid..addr, align 8, !dbg !107
  %8 = load i32, i32* %7, align 4, !dbg !107
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %8, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !107
  %9 = load i32, i32* %.omp.ub, align 4, !dbg !110
  %cmp = icmp sgt i32 %9, 19, !dbg !110
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !110

cond.true:                                        ; preds = %omp.arrayinit.done
  br label %cond.end, !dbg !110

cond.false:                                       ; preds = %omp.arrayinit.done
  %10 = load i32, i32* %.omp.ub, align 4, !dbg !110
  br label %cond.end, !dbg !110

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 19, %cond.true ], [ %10, %cond.false ], !dbg !110
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !110
  %11 = load i32, i32* %.omp.lb, align 4, !dbg !110
  store i32 %11, i32* %.omp.iv, align 4, !dbg !110
  br label %omp.inner.for.cond, !dbg !107

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc17, %cond.end
  %12 = load i32, i32* %.omp.iv, align 4, !dbg !110
  %13 = load i32, i32* %.omp.ub, align 4, !dbg !110
  %cmp4 = icmp sle i32 %12, %13, !dbg !107
  br i1 %cmp4, label %omp.inner.for.body, label %omp.inner.for.end19, !dbg !107

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %14 = load i32, i32* %.omp.iv, align 4, !dbg !110
  %mul = mul nsw i32 %14, 1, !dbg !116
  %add = add nsw i32 0, %mul, !dbg !116
  store i32 %add, i32* %i, align 4, !dbg !116
  call void @llvm.dbg.declare(metadata i32* %.omp.iv7, metadata !117, metadata !DIExpression()), !dbg !120
  store i32 0, i32* %.omp.iv7, align 4, !dbg !121
  call void @llvm.dbg.declare(metadata i32* %i8, metadata !122, metadata !DIExpression()), !dbg !120
  br label %omp.inner.for.cond9, !dbg !123

omp.inner.for.cond9:                              ; preds = %omp.inner.for.inc, %omp.inner.for.body
  %15 = load i32, i32* %.omp.iv7, align 4, !dbg !121, !llvm.access.group !124
  %cmp10 = icmp slt i32 %15, 8, !dbg !125
  br i1 %cmp10, label %omp.inner.for.body12, label %omp.inner.for.end, !dbg !123

omp.inner.for.body12:                             ; preds = %omp.inner.for.cond9
  %16 = load i32, i32* %.omp.iv7, align 4, !dbg !121, !llvm.access.group !124
  %mul13 = mul nsw i32 %16, 1, !dbg !126
  %add14 = add nsw i32 0, %mul13, !dbg !126
  store i32 %add14, i32* %i8, align 4, !dbg !126, !llvm.access.group !124
  %17 = load i32, i32* %i8, align 4, !dbg !127, !llvm.access.group !124
  %idxprom = sext i32 %17 to i64, !dbg !129
  %arrayidx = getelementptr inbounds [8 x i32], [8 x i32]* %var2, i64 0, i64 %idxprom, !dbg !129
  %18 = load i32, i32* %arrayidx, align 4, !dbg !130, !llvm.access.group !124
  %inc = add nsw i32 %18, 1, !dbg !130
  store i32 %inc, i32* %arrayidx, align 4, !dbg !130, !llvm.access.group !124
  br label %omp.body.continue, !dbg !131

omp.body.continue:                                ; preds = %omp.inner.for.body12
  br label %omp.inner.for.inc, !dbg !132

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %19 = load i32, i32* %.omp.iv7, align 4, !dbg !121, !llvm.access.group !124
  %add15 = add nsw i32 %19, 1, !dbg !125
  store i32 %add15, i32* %.omp.iv7, align 4, !dbg !125, !llvm.access.group !124
  br label %omp.inner.for.cond9, !dbg !132, !llvm.loop !133

omp.inner.for.end:                                ; preds = %omp.inner.for.cond9
  store i32 8, i32* %i8, align 4, !dbg !126
  br label %omp.body.continue16, !dbg !137

omp.body.continue16:                              ; preds = %omp.inner.for.end
  br label %omp.inner.for.inc17, !dbg !138

omp.inner.for.inc17:                              ; preds = %omp.body.continue16
  %20 = load i32, i32* %.omp.iv, align 4, !dbg !110
  %add18 = add nsw i32 %20, 1, !dbg !107
  store i32 %add18, i32* %.omp.iv, align 4, !dbg !107
  br label %omp.inner.for.cond, !dbg !138, !llvm.loop !139

omp.inner.for.end19:                              ; preds = %omp.inner.for.cond
  br label %omp.loop.exit, !dbg !138

omp.loop.exit:                                    ; preds = %omp.inner.for.end19
  %21 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !138
  store i8* getelementptr inbounds ([46 x i8], [46 x i8]* @3, i32 0, i32 0), i8** %21, align 8, !dbg !138
  %22 = load i32*, i32** %.global_tid..addr, align 8, !dbg !138
  %23 = load i32, i32* %22, align 4, !dbg !138
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %23), !dbg !138
  %24 = getelementptr inbounds [1 x i8*], [1 x i8*]* %.omp.reduction.red_list, i64 0, i64 0, !dbg !138
  %25 = bitcast i32* %rhs.begin to i8*, !dbg !138
  store i8* %25, i8** %24, align 8, !dbg !138
  %26 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !138
  store i8* getelementptr inbounds ([46 x i8], [46 x i8]* @3, i32 0, i32 0), i8** %26, align 8, !dbg !138
  %27 = load i32*, i32** %.global_tid..addr, align 8, !dbg !138
  %28 = load i32, i32* %27, align 4, !dbg !138
  %29 = bitcast [1 x i8*]* %.omp.reduction.red_list to i8*, !dbg !138
  %30 = call i32 @__kmpc_reduce_nowait(%struct.ident_t* %.kmpc_loc.addr, i32 %28, i32 1, i64 8, i8* %29, void (i8*, i8*)* @.omp.reduction.reduction_func, [8 x i32]* @.gomp_critical_user_.reduction.var), !dbg !138
  switch i32 %30, label %.omp.reduction.default [
    i32 1, label %.omp.reduction.case1
    i32 2, label %.omp.reduction.case2
  ], !dbg !138

.omp.reduction.case1:                             ; preds = %omp.loop.exit
  %31 = getelementptr i32, i32* %lhs.begin, i64 8, !dbg !138
  %omp.arraycpy.isempty = icmp eq i32* %lhs.begin, %31, !dbg !138
  br i1 %omp.arraycpy.isempty, label %omp.arraycpy.done24, label %omp.arraycpy.body, !dbg !138

omp.arraycpy.body:                                ; preds = %omp.arraycpy.body, %.omp.reduction.case1
  %omp.arraycpy.srcElementPast = phi i32* [ %rhs.begin, %.omp.reduction.case1 ], [ %omp.arraycpy.src.element, %omp.arraycpy.body ], !dbg !138
  %omp.arraycpy.destElementPast20 = phi i32* [ %lhs.begin, %.omp.reduction.case1 ], [ %omp.arraycpy.dest.element22, %omp.arraycpy.body ], !dbg !138
  %32 = load i32, i32* %omp.arraycpy.destElementPast20, align 4, !dbg !141
  %33 = load i32, i32* %omp.arraycpy.srcElementPast, align 4, !dbg !141
  %add21 = add nsw i32 %32, %33, !dbg !142
  store i32 %add21, i32* %omp.arraycpy.destElementPast20, align 4, !dbg !142
  %omp.arraycpy.dest.element22 = getelementptr i32, i32* %omp.arraycpy.destElementPast20, i32 1, !dbg !138
  %omp.arraycpy.src.element = getelementptr i32, i32* %omp.arraycpy.srcElementPast, i32 1, !dbg !138
  %omp.arraycpy.done23 = icmp eq i32* %omp.arraycpy.dest.element22, %31, !dbg !138
  br i1 %omp.arraycpy.done23, label %omp.arraycpy.done24, label %omp.arraycpy.body, !dbg !138

omp.arraycpy.done24:                              ; preds = %omp.arraycpy.body, %.omp.reduction.case1
  call void @__kmpc_end_reduce_nowait(%struct.ident_t* %.kmpc_loc.addr, i32 %28, [8 x i32]* @.gomp_critical_user_.reduction.var), !dbg !138
  br label %.omp.reduction.default, !dbg !138

.omp.reduction.case2:                             ; preds = %omp.loop.exit
  %34 = getelementptr i32, i32* %lhs.begin, i64 8, !dbg !138
  %omp.arraycpy.isempty25 = icmp eq i32* %lhs.begin, %34, !dbg !138
  br i1 %omp.arraycpy.isempty25, label %omp.arraycpy.done32, label %omp.arraycpy.body26, !dbg !138

omp.arraycpy.body26:                              ; preds = %omp.arraycpy.body26, %.omp.reduction.case2
  %omp.arraycpy.srcElementPast27 = phi i32* [ %rhs.begin, %.omp.reduction.case2 ], [ %omp.arraycpy.src.element30, %omp.arraycpy.body26 ], !dbg !138
  %omp.arraycpy.destElementPast28 = phi i32* [ %lhs.begin, %.omp.reduction.case2 ], [ %omp.arraycpy.dest.element29, %omp.arraycpy.body26 ], !dbg !138
  %35 = load i32, i32* %omp.arraycpy.srcElementPast27, align 4, !dbg !141
  %36 = atomicrmw add i32* %omp.arraycpy.destElementPast28, i32 %35 monotonic, !dbg !138
  %omp.arraycpy.dest.element29 = getelementptr i32, i32* %omp.arraycpy.destElementPast28, i32 1, !dbg !138
  %omp.arraycpy.src.element30 = getelementptr i32, i32* %omp.arraycpy.srcElementPast27, i32 1, !dbg !138
  %omp.arraycpy.done31 = icmp eq i32* %omp.arraycpy.dest.element29, %34, !dbg !138
  br i1 %omp.arraycpy.done31, label %omp.arraycpy.done32, label %omp.arraycpy.body26, !dbg !138

omp.arraycpy.done32:                              ; preds = %omp.arraycpy.body26, %.omp.reduction.case2
  br label %.omp.reduction.default, !dbg !138

.omp.reduction.default:                           ; preds = %omp.arraycpy.done32, %omp.arraycpy.done24, %omp.loop.exit
  ret void, !dbg !143
}

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: noinline norecurse nounwind uwtable
define internal void @.omp.reduction.reduction_func(i8* %0, i8* %1) #4 !dbg !144 {
entry:
  %.addr = alloca i8*, align 8
  %.addr1 = alloca i8*, align 8
  store i8* %0, i8** %.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %.addr, metadata !146, metadata !DIExpression()), !dbg !148
  store i8* %1, i8** %.addr1, align 8
  call void @llvm.dbg.declare(metadata i8** %.addr1, metadata !149, metadata !DIExpression()), !dbg !148
  %2 = load i8*, i8** %.addr, align 8, !dbg !150
  %3 = bitcast i8* %2 to [1 x i8*]*, !dbg !150
  %4 = load i8*, i8** %.addr1, align 8, !dbg !150
  %5 = bitcast i8* %4 to [1 x i8*]*, !dbg !150
  %6 = getelementptr inbounds [1 x i8*], [1 x i8*]* %5, i64 0, i64 0, !dbg !150
  %7 = load i8*, i8** %6, align 8, !dbg !150
  %8 = bitcast i8* %7 to i32*, !dbg !150
  %9 = getelementptr inbounds [1 x i8*], [1 x i8*]* %3, i64 0, i64 0, !dbg !150
  %10 = load i8*, i8** %9, align 8, !dbg !150
  %11 = bitcast i8* %10 to i32*, !dbg !150
  %12 = getelementptr i32, i32* %11, i64 8, !dbg !150
  %omp.arraycpy.isempty = icmp eq i32* %11, %12, !dbg !150
  br i1 %omp.arraycpy.isempty, label %omp.arraycpy.done2, label %omp.arraycpy.body, !dbg !150

omp.arraycpy.body:                                ; preds = %omp.arraycpy.body, %entry
  %omp.arraycpy.srcElementPast = phi i32* [ %8, %entry ], [ %omp.arraycpy.src.element, %omp.arraycpy.body ], !dbg !150
  %omp.arraycpy.destElementPast = phi i32* [ %11, %entry ], [ %omp.arraycpy.dest.element, %omp.arraycpy.body ], !dbg !150
  %13 = load i32, i32* %omp.arraycpy.destElementPast, align 4, !dbg !151
  %14 = load i32, i32* %omp.arraycpy.srcElementPast, align 4, !dbg !151
  %add = add nsw i32 %13, %14, !dbg !152
  store i32 %add, i32* %omp.arraycpy.destElementPast, align 4, !dbg !152
  %omp.arraycpy.dest.element = getelementptr i32, i32* %omp.arraycpy.destElementPast, i32 1, !dbg !150
  %omp.arraycpy.src.element = getelementptr i32, i32* %omp.arraycpy.srcElementPast, i32 1, !dbg !150
  %omp.arraycpy.done = icmp eq i32* %omp.arraycpy.dest.element, %12, !dbg !150
  br i1 %omp.arraycpy.done, label %omp.arraycpy.done2, label %omp.arraycpy.body, !dbg !150

omp.arraycpy.done2:                               ; preds = %omp.arraycpy.body, %entry
  ret void, !dbg !151
}

declare dso_local i32 @__kmpc_reduce_nowait(%struct.ident_t*, i32, i32, i64, i8*, void (i8*, i8*)*, [8 x i32]*)

declare dso_local void @__kmpc_end_reduce_nowait(%struct.ident_t*, i32, [8 x i32]*)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i64 %.previous.lb., i64 %.previous.ub., [8 x i32]* dereferenceable(32) %var) #2 !dbg !153 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %.previous.lb..addr = alloca i64, align 8
  %.previous.ub..addr = alloca i64, align 8
  %var.addr = alloca [8 x i32]*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !154, metadata !DIExpression()), !dbg !155
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !156, metadata !DIExpression()), !dbg !155
  store i64 %.previous.lb., i64* %.previous.lb..addr, align 8
  call void @llvm.dbg.declare(metadata i64* %.previous.lb..addr, metadata !157, metadata !DIExpression()), !dbg !155
  store i64 %.previous.ub., i64* %.previous.ub..addr, align 8
  call void @llvm.dbg.declare(metadata i64* %.previous.ub..addr, metadata !158, metadata !DIExpression()), !dbg !155
  store [8 x i32]* %var, [8 x i32]** %var.addr, align 8
  call void @llvm.dbg.declare(metadata [8 x i32]** %var.addr, metadata !159, metadata !DIExpression()), !dbg !155
  %0 = load [8 x i32]*, [8 x i32]** %var.addr, align 8, !dbg !160
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !160
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !160
  %3 = load i64, i64* %.previous.lb..addr, align 8, !dbg !160
  %4 = load i64, i64* %.previous.ub..addr, align 8, !dbg !160
  %5 = load [8 x i32]*, [8 x i32]** %var.addr, align 8, !dbg !160
  call void @.omp_outlined._debug__.1(i32* %1, i32* %2, i64 %3, i64 %4, [8 x i32]* %5) #6, !dbg !160
  ret void, !dbg !160
}

declare !callback !161 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined..2(i32* noalias %.global_tid., i32* noalias %.bound_tid., [8 x i32]* dereferenceable(32) %var) #2 !dbg !163 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %var.addr = alloca [8 x i32]*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !164, metadata !DIExpression()), !dbg !165
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !166, metadata !DIExpression()), !dbg !165
  store [8 x i32]* %var, [8 x i32]** %var.addr, align 8
  call void @llvm.dbg.declare(metadata [8 x i32]** %var.addr, metadata !167, metadata !DIExpression()), !dbg !165
  %0 = load [8 x i32]*, [8 x i32]** %var.addr, align 8, !dbg !168
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !168
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !168
  %3 = load [8 x i32]*, [8 x i32]** %var.addr, align 8, !dbg !168
  call void @.omp_outlined._debug__(i32* %1, i32* %2, [8 x i32]* %3) #6, !dbg !168
  ret void, !dbg !168
}

declare dso_local i32 @__kmpc_global_thread_num(%struct.ident_t*)

declare dso_local i32 @__kmpc_push_num_teams(%struct.ident_t*, i32, i32, i32)

declare !callback !161 dso_local void @__kmpc_fork_teams(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @__omp_offloading_10307_2ec41bb_main_l25([8 x i32]* dereferenceable(32) %var) #2 !dbg !169 {
entry:
  %var.addr = alloca [8 x i32]*, align 8
  store [8 x i32]* %var, [8 x i32]** %var.addr, align 8
  call void @llvm.dbg.declare(metadata [8 x i32]** %var.addr, metadata !170, metadata !DIExpression()), !dbg !171
  %0 = load [8 x i32]*, [8 x i32]** %var.addr, align 8, !dbg !172
  %1 = load [8 x i32]*, [8 x i32]** %var.addr, align 8, !dbg !172
  call void @__omp_offloading_10307_2ec41bb_main_l25_debug__([8 x i32]* %1) #6, !dbg !172
  ret void, !dbg !172
}

declare dso_local i32 @printf(i8*, ...) #5

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noinline norecurse nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { noinline norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.1 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "DRB162-nolocksimd-orig-gpu-no.c", directory: "/home/yanze/code/OpenRace/tests/data/integration/dataracebench")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.1 "}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 18, type: !8, scopeLine: 18, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DILocalVariable(name: "var", scope: !7, file: !1, line: 19, type: !12)
!12 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 256, elements: !13)
!13 = !{!14}
!14 = !DISubrange(count: 8)
!15 = !DILocation(line: 19, column: 7, scope: !7)
!16 = !DILocalVariable(name: "i", scope: !17, file: !1, line: 21, type: !10)
!17 = distinct !DILexicalBlock(scope: !7, file: !1, line: 21, column: 3)
!18 = !DILocation(line: 21, column: 11, scope: !17)
!19 = !DILocation(line: 21, column: 7, scope: !17)
!20 = !DILocation(line: 21, column: 16, scope: !21)
!21 = distinct !DILexicalBlock(scope: !17, file: !1, line: 21, column: 3)
!22 = !DILocation(line: 21, column: 17, scope: !21)
!23 = !DILocation(line: 21, column: 3, scope: !17)
!24 = !DILocation(line: 22, column: 9, scope: !25)
!25 = distinct !DILexicalBlock(scope: !21, file: !1, line: 21, column: 25)
!26 = !DILocation(line: 22, column: 5, scope: !25)
!27 = !DILocation(line: 22, column: 12, scope: !25)
!28 = !DILocation(line: 23, column: 3, scope: !25)
!29 = !DILocation(line: 21, column: 22, scope: !21)
!30 = !DILocation(line: 21, column: 3, scope: !21)
!31 = distinct !{!31, !23, !32}
!32 = !DILocation(line: 23, column: 3, scope: !17)
!33 = !DILocation(line: 25, column: 3, scope: !34)
!34 = distinct !DILexicalBlock(scope: !7, file: !1, line: 25, column: 3)
!35 = !DILocalVariable(name: "i", scope: !36, file: !1, line: 35, type: !10)
!36 = distinct !DILexicalBlock(scope: !7, file: !1, line: 35, column: 3)
!37 = !DILocation(line: 35, column: 11, scope: !36)
!38 = !DILocation(line: 35, column: 7, scope: !36)
!39 = !DILocation(line: 35, column: 16, scope: !40)
!40 = distinct !DILexicalBlock(scope: !36, file: !1, line: 35, column: 3)
!41 = !DILocation(line: 35, column: 17, scope: !40)
!42 = !DILocation(line: 35, column: 3, scope: !36)
!43 = !DILocation(line: 36, column: 12, scope: !44)
!44 = distinct !DILexicalBlock(scope: !45, file: !1, line: 36, column: 8)
!45 = distinct !DILexicalBlock(scope: !40, file: !1, line: 35, column: 25)
!46 = !DILocation(line: 36, column: 8, scope: !44)
!47 = !DILocation(line: 36, column: 14, scope: !44)
!48 = !DILocation(line: 36, column: 8, scope: !45)
!49 = !DILocation(line: 36, column: 38, scope: !44)
!50 = !DILocation(line: 36, column: 34, scope: !44)
!51 = !DILocation(line: 36, column: 19, scope: !44)
!52 = !DILocation(line: 37, column: 3, scope: !45)
!53 = !DILocation(line: 35, column: 22, scope: !40)
!54 = !DILocation(line: 35, column: 3, scope: !40)
!55 = distinct !{!55, !42, !56}
!56 = !DILocation(line: 37, column: 3, scope: !36)
!57 = !DILocation(line: 39, column: 3, scope: !7)
!58 = distinct !DISubprogram(name: "__omp_offloading_10307_2ec41bb_main_l25_debug__", scope: !1, file: !1, line: 26, type: !59, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!59 = !DISubroutineType(types: !60)
!60 = !{null, !61}
!61 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !12, size: 64)
!62 = !DILocalVariable(name: "var", arg: 1, scope: !58, file: !1, line: 19, type: !61)
!63 = !DILocation(line: 19, column: 7, scope: !58)
!64 = !DILocation(line: 26, column: 3, scope: !58)
!65 = !DILocation(line: 26, column: 53, scope: !58)
!66 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 27, type: !67, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!67 = !DISubroutineType(types: !68)
!68 = !{null, !69, !69, !61}
!69 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !70)
!70 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !71)
!71 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !72, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!73 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !66, type: !69, flags: DIFlagArtificial)
!74 = !DILocation(line: 0, scope: !66)
!75 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !66, type: !69, flags: DIFlagArtificial)
!76 = !DILocalVariable(name: "var", arg: 3, scope: !66, file: !1, line: 19, type: !61)
!77 = !DILocation(line: 19, column: 7, scope: !66)
!78 = !DILocation(line: 27, column: 3, scope: !66)
!79 = !DILocalVariable(name: ".omp.iv", scope: !80, type: !10, flags: DIFlagArtificial)
!80 = distinct !DILexicalBlock(scope: !66, file: !1, line: 27, column: 3)
!81 = !DILocation(line: 0, scope: !80)
!82 = !DILocalVariable(name: ".omp.comb.lb", scope: !80, type: !10, flags: DIFlagArtificial)
!83 = !DILocation(line: 28, column: 8, scope: !80)
!84 = !DILocalVariable(name: ".omp.comb.ub", scope: !80, type: !10, flags: DIFlagArtificial)
!85 = !DILocalVariable(name: ".omp.stride", scope: !80, type: !10, flags: DIFlagArtificial)
!86 = !DILocalVariable(name: ".omp.is_last", scope: !80, type: !10, flags: DIFlagArtificial)
!87 = !DILocalVariable(name: "i", scope: !80, type: !10, flags: DIFlagArtificial)
!88 = !DILocation(line: 28, column: 3, scope: !80)
!89 = !DILocation(line: 27, column: 3, scope: !80)
!90 = !DILocation(line: 27, column: 55, scope: !91)
!91 = distinct !DILexicalBlock(scope: !80, file: !1, line: 27, column: 3)
!92 = distinct !{!92, !89, !93}
!93 = !DILocation(line: 27, column: 55, scope: !80)
!94 = !DILocation(line: 27, column: 55, scope: !66)
!95 = distinct !DISubprogram(name: ".omp_outlined._debug__.1", scope: !1, file: !1, line: 28, type: !96, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!96 = !DISubroutineType(types: !97)
!97 = !{null, !69, !69, !98, !98, !61}
!98 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !99)
!99 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!100 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !95, type: !69, flags: DIFlagArtificial)
!101 = !DILocation(line: 0, scope: !95)
!102 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !95, type: !69, flags: DIFlagArtificial)
!103 = !DILocalVariable(name: ".previous.lb.", arg: 3, scope: !95, type: !98, flags: DIFlagArtificial)
!104 = !DILocalVariable(name: ".previous.ub.", arg: 4, scope: !95, type: !98, flags: DIFlagArtificial)
!105 = !DILocalVariable(name: "var", arg: 5, scope: !95, file: !1, line: 19, type: !61)
!106 = !DILocation(line: 19, column: 7, scope: !95)
!107 = !DILocation(line: 28, column: 3, scope: !95)
!108 = !DILocalVariable(name: ".omp.iv", scope: !95, type: !10, flags: DIFlagArtificial)
!109 = !DILocalVariable(name: ".omp.lb", scope: !95, type: !10, flags: DIFlagArtificial)
!110 = !DILocation(line: 28, column: 8, scope: !95)
!111 = !DILocalVariable(name: ".omp.ub", scope: !95, type: !10, flags: DIFlagArtificial)
!112 = !DILocalVariable(name: ".omp.stride", scope: !95, type: !10, flags: DIFlagArtificial)
!113 = !DILocalVariable(name: ".omp.is_last", scope: !95, type: !10, flags: DIFlagArtificial)
!114 = !DILocalVariable(name: "var", scope: !95, type: !12, flags: DIFlagArtificial)
!115 = !DILocalVariable(name: "i", scope: !95, type: !10, flags: DIFlagArtificial)
!116 = !DILocation(line: 28, column: 22, scope: !95)
!117 = !DILocalVariable(name: ".omp.iv", scope: !118, type: !10, flags: DIFlagArtificial)
!118 = distinct !DILexicalBlock(scope: !119, file: !1, line: 29, column: 5)
!119 = distinct !DILexicalBlock(scope: !95, file: !1, line: 28, column: 26)
!120 = !DILocation(line: 0, scope: !118)
!121 = !DILocation(line: 30, column: 9, scope: !118)
!122 = !DILocalVariable(name: "i", scope: !118, type: !10, flags: DIFlagArtificial)
!123 = !DILocation(line: 29, column: 5, scope: !119)
!124 = distinct !{}
!125 = !DILocation(line: 30, column: 5, scope: !118)
!126 = !DILocation(line: 30, column: 23, scope: !118)
!127 = !DILocation(line: 31, column: 11, scope: !128)
!128 = distinct !DILexicalBlock(scope: !118, file: !1, line: 30, column: 27)
!129 = !DILocation(line: 31, column: 7, scope: !128)
!130 = !DILocation(line: 31, column: 13, scope: !128)
!131 = !DILocation(line: 32, column: 5, scope: !128)
!132 = !DILocation(line: 29, column: 5, scope: !118)
!133 = distinct !{!133, !132, !134, !135, !136}
!134 = !DILocation(line: 29, column: 21, scope: !118)
!135 = !{!"llvm.loop.parallel_accesses", !124}
!136 = !{!"llvm.loop.vectorize.enable", i1 true}
!137 = !DILocation(line: 33, column: 3, scope: !119)
!138 = !DILocation(line: 27, column: 3, scope: !95)
!139 = distinct !{!139, !138, !140}
!140 = !DILocation(line: 27, column: 55, scope: !95)
!141 = !DILocation(line: 27, column: 51, scope: !95)
!142 = !DILocation(line: 27, column: 49, scope: !95)
!143 = !DILocation(line: 33, column: 3, scope: !95)
!144 = distinct !DISubprogram(linkageName: ".omp.reduction.reduction_func", scope: !1, file: !1, line: 27, type: !145, scopeLine: 27, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!145 = !DISubroutineType(types: !2)
!146 = !DILocalVariable(arg: 1, scope: !144, type: !147, flags: DIFlagArtificial)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!148 = !DILocation(line: 0, scope: !144)
!149 = !DILocalVariable(arg: 2, scope: !144, type: !147, flags: DIFlagArtificial)
!150 = !DILocation(line: 27, column: 55, scope: !144)
!151 = !DILocation(line: 27, column: 51, scope: !144)
!152 = !DILocation(line: 27, column: 49, scope: !144)
!153 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 28, type: !96, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!154 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !153, type: !69, flags: DIFlagArtificial)
!155 = !DILocation(line: 0, scope: !153)
!156 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !153, type: !69, flags: DIFlagArtificial)
!157 = !DILocalVariable(name: ".previous.lb.", arg: 3, scope: !153, type: !98, flags: DIFlagArtificial)
!158 = !DILocalVariable(name: ".previous.ub.", arg: 4, scope: !153, type: !98, flags: DIFlagArtificial)
!159 = !DILocalVariable(name: "var", arg: 5, scope: !153, type: !61, flags: DIFlagArtificial)
!160 = !DILocation(line: 28, column: 3, scope: !153)
!161 = !{!162}
!162 = !{i64 2, i64 -1, i64 -1, i1 true}
!163 = distinct !DISubprogram(name: ".omp_outlined..2", scope: !1, file: !1, line: 27, type: !67, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!164 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !163, type: !69, flags: DIFlagArtificial)
!165 = !DILocation(line: 0, scope: !163)
!166 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !163, type: !69, flags: DIFlagArtificial)
!167 = !DILocalVariable(name: "var", arg: 3, scope: !163, type: !61, flags: DIFlagArtificial)
!168 = !DILocation(line: 27, column: 3, scope: !163)
!169 = distinct !DISubprogram(name: "__omp_offloading_10307_2ec41bb_main_l25", scope: !1, file: !1, line: 26, type: !59, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!170 = !DILocalVariable(name: "var", arg: 1, scope: !169, type: !61, flags: DIFlagArtificial)
!171 = !DILocation(line: 0, scope: !169)
!172 = !DILocation(line: 26, column: 3, scope: !169)
