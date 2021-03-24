; ModuleID = 'DRB163-simdmissinglock1-orig-gpu-no.c'
source_filename = "DRB163-simdmissinglock1-orig-gpu-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 2050, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [51 x i8] c";DRB163-simdmissinglock1-orig-gpu-no.c;main;27;3;;\00", align 1
@2 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@3 = private unnamed_addr constant [52 x i8] c";DRB163-simdmissinglock1-orig-gpu-no.c;main;27;62;;\00", align 1
@.gomp_critical_user_.reduction.var = common global [8 x i32] zeroinitializer
@4 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@.str.4 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !7 {
entry:
  %retval = alloca i32, align 4
  %var = alloca [64 x i32], align 16
  %i = alloca i32, align 4
  %i1 = alloca i32, align 4
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
  call void @__omp_offloading_10307_2ec41bc_main_l26([64 x i32]* %var) #6, !dbg !33
  call void @llvm.dbg.declare(metadata i32* %i1, metadata !35, metadata !DIExpression()), !dbg !37
  store i32 0, i32* %i1, align 4, !dbg !37
  br label %for.cond2, !dbg !38

for.cond2:                                        ; preds = %for.inc10, %for.end
  %3 = load i32, i32* %i1, align 4, !dbg !39
  %cmp3 = icmp slt i32 %3, 64, !dbg !41
  br i1 %cmp3, label %for.body4, label %for.end12, !dbg !42

for.body4:                                        ; preds = %for.cond2
  %4 = load i32, i32* %i1, align 4, !dbg !43
  %idxprom5 = sext i32 %4 to i64, !dbg !46
  %arrayidx6 = getelementptr inbounds [64 x i32], [64 x i32]* %var, i64 0, i64 %idxprom5, !dbg !46
  %5 = load i32, i32* %arrayidx6, align 4, !dbg !46
  %cmp7 = icmp ne i32 %5, 100, !dbg !47
  br i1 %cmp7, label %if.then, label %if.end, !dbg !48

if.then:                                          ; preds = %for.body4
  %6 = load i32, i32* %i1, align 4, !dbg !49
  %idxprom8 = sext i32 %6 to i64, !dbg !51
  %arrayidx9 = getelementptr inbounds [64 x i32], [64 x i32]* %var, i64 0, i64 %idxprom8, !dbg !51
  %7 = load i32, i32* %arrayidx9, align 4, !dbg !51
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %7), !dbg !52
  br label %if.end, !dbg !53

if.end:                                           ; preds = %if.then, %for.body4
  br label %for.inc10, !dbg !54

for.inc10:                                        ; preds = %if.end
  %8 = load i32, i32* %i1, align 4, !dbg !55
  %inc11 = add nsw i32 %8, 1, !dbg !55
  store i32 %inc11, i32* %i1, align 4, !dbg !55
  br label %for.cond2, !dbg !56, !llvm.loop !57

for.end12:                                        ; preds = %for.cond2
  ret i32 0, !dbg !59
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @__omp_offloading_10307_2ec41bc_main_l26_debug__([64 x i32]* dereferenceable(256) %var) #2 !dbg !60 {
entry:
  %var.addr = alloca [64 x i32]*, align 8
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store [64 x i32]* %var, [64 x i32]** %var.addr, align 8
  call void @llvm.dbg.declare(metadata [64 x i32]** %var.addr, metadata !64, metadata !DIExpression()), !dbg !65
  %2 = load [64 x i32]*, [64 x i32]** %var.addr, align 8, !dbg !66
  %3 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !66
  store i8* getelementptr inbounds ([51 x i8], [51 x i8]* @1, i32 0, i32 0), i8** %3, align 8, !dbg !66
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_teams(%struct.ident_t* %.kmpc_loc.addr, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, [64 x i32]*)* @.omp_outlined..3 to void (i32*, i32*, ...)*), [64 x i32]* %2), !dbg !66
  ret void, !dbg !67
}

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., [64 x i32]* dereferenceable(256) %var) #2 !dbg !68 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %var.addr = alloca [64 x i32]*, align 8
  %var1 = alloca [64 x i32], align 16
  %.omp.iv = alloca i32, align 4
  %tmp = alloca i32, align 4
  %.omp.comb.lb = alloca i32, align 4
  %.omp.comb.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %i = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %.omp.reduction.red_list = alloca [1 x i8*], align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !75, metadata !DIExpression()), !dbg !76
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !77, metadata !DIExpression()), !dbg !76
  store [64 x i32]* %var, [64 x i32]** %var.addr, align 8
  call void @llvm.dbg.declare(metadata [64 x i32]** %var.addr, metadata !78, metadata !DIExpression()), !dbg !79
  %2 = load [64 x i32]*, [64 x i32]** %var.addr, align 8, !dbg !80
  call void @llvm.dbg.declare(metadata [64 x i32]* %var1, metadata !81, metadata !DIExpression()), !dbg !76
  %array.begin = getelementptr inbounds [64 x i32], [64 x i32]* %var1, i32 0, i32 0, !dbg !80
  %3 = getelementptr i32, i32* %array.begin, i64 64, !dbg !80
  %omp.arrayinit.isempty = icmp eq i32* %array.begin, %3, !dbg !80
  br i1 %omp.arrayinit.isempty, label %omp.arrayinit.done, label %omp.arrayinit.body, !dbg !80

omp.arrayinit.body:                               ; preds = %omp.arrayinit.body, %entry
  %omp.arraycpy.destElementPast = phi i32* [ %array.begin, %entry ], [ %omp.arraycpy.dest.element, %omp.arrayinit.body ], !dbg !80
  store i32 0, i32* %omp.arraycpy.destElementPast, align 4, !dbg !80
  %omp.arraycpy.dest.element = getelementptr i32, i32* %omp.arraycpy.destElementPast, i32 1, !dbg !80
  %omp.arraycpy.done = icmp eq i32* %omp.arraycpy.dest.element, %3, !dbg !80
  br i1 %omp.arraycpy.done, label %omp.arrayinit.done, label %omp.arrayinit.body, !dbg !80

omp.arrayinit.done:                               ; preds = %omp.arrayinit.body, %entry
  %lhs.begin = bitcast [64 x i32]* %2 to i32*, !dbg !80
  %rhs.begin = bitcast [64 x i32]* %var1 to i32*, !dbg !80
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !82, metadata !DIExpression()), !dbg !76
  call void @llvm.dbg.declare(metadata i32* %.omp.comb.lb, metadata !83, metadata !DIExpression()), !dbg !76
  store i32 0, i32* %.omp.comb.lb, align 4, !dbg !84
  call void @llvm.dbg.declare(metadata i32* %.omp.comb.ub, metadata !85, metadata !DIExpression()), !dbg !76
  store i32 99, i32* %.omp.comb.ub, align 4, !dbg !84
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !86, metadata !DIExpression()), !dbg !76
  store i32 1, i32* %.omp.stride, align 4, !dbg !84
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !87, metadata !DIExpression()), !dbg !76
  store i32 0, i32* %.omp.is_last, align 4, !dbg !84
  call void @llvm.dbg.declare(metadata i32* %i, metadata !88, metadata !DIExpression()), !dbg !76
  %4 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !80
  store i8* getelementptr inbounds ([51 x i8], [51 x i8]* @1, i32 0, i32 0), i8** %4, align 8, !dbg !80
  %5 = load i32*, i32** %.global_tid..addr, align 8, !dbg !80
  %6 = load i32, i32* %5, align 4, !dbg !80
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %6, i32 92, i32* %.omp.is_last, i32* %.omp.comb.lb, i32* %.omp.comb.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !80
  %7 = load i32, i32* %.omp.comb.ub, align 4, !dbg !84
  %cmp = icmp sgt i32 %7, 99, !dbg !84
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !84

cond.true:                                        ; preds = %omp.arrayinit.done
  br label %cond.end, !dbg !84

cond.false:                                       ; preds = %omp.arrayinit.done
  %8 = load i32, i32* %.omp.comb.ub, align 4, !dbg !84
  br label %cond.end, !dbg !84

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 99, %cond.true ], [ %8, %cond.false ], !dbg !84
  store i32 %cond, i32* %.omp.comb.ub, align 4, !dbg !84
  %9 = load i32, i32* %.omp.comb.lb, align 4, !dbg !84
  store i32 %9, i32* %.omp.iv, align 4, !dbg !84
  br label %omp.inner.for.cond, !dbg !80

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %10 = load i32, i32* %.omp.iv, align 4, !dbg !84
  %11 = load i32, i32* %.omp.comb.ub, align 4, !dbg !84
  %cmp2 = icmp sle i32 %10, %11, !dbg !80
  br i1 %cmp2, label %omp.inner.for.body, label %omp.inner.for.end, !dbg !80

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %12 = load i32, i32* %.omp.comb.lb, align 4, !dbg !89
  %13 = zext i32 %12 to i64, !dbg !89
  %14 = load i32, i32* %.omp.comb.ub, align 4, !dbg !89
  %15 = zext i32 %14 to i64, !dbg !89
  %16 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !89
  store i8* getelementptr inbounds ([51 x i8], [51 x i8]* @1, i32 0, i32 0), i8** %16, align 8, !dbg !89
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i64, i64, [64 x i32]*)* @.omp_outlined. to void (i32*, i32*, ...)*), i64 %13, i64 %15, [64 x i32]* %var1), !dbg !89
  br label %omp.inner.for.inc, !dbg !90

omp.inner.for.inc:                                ; preds = %omp.inner.for.body
  %17 = load i32, i32* %.omp.iv, align 4, !dbg !84
  %18 = load i32, i32* %.omp.stride, align 4, !dbg !84
  %add = add nsw i32 %17, %18, !dbg !80
  store i32 %add, i32* %.omp.iv, align 4, !dbg !80
  br label %omp.inner.for.cond, !dbg !90, !llvm.loop !92

omp.inner.for.end:                                ; preds = %omp.inner.for.cond
  br label %omp.loop.exit, !dbg !90

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %19 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !90
  store i8* getelementptr inbounds ([51 x i8], [51 x i8]* @1, i32 0, i32 0), i8** %19, align 8, !dbg !90
  %20 = load i32*, i32** %.global_tid..addr, align 8, !dbg !90
  %21 = load i32, i32* %20, align 4, !dbg !90
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %21), !dbg !90
  %22 = getelementptr inbounds [1 x i8*], [1 x i8*]* %.omp.reduction.red_list, i64 0, i64 0, !dbg !90
  %23 = bitcast i32* %rhs.begin to i8*, !dbg !90
  store i8* %23, i8** %22, align 8, !dbg !90
  %24 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !90
  store i8* getelementptr inbounds ([52 x i8], [52 x i8]* @3, i32 0, i32 0), i8** %24, align 8, !dbg !90
  %25 = load i32*, i32** %.global_tid..addr, align 8, !dbg !90
  %26 = load i32, i32* %25, align 4, !dbg !90
  %27 = bitcast [1 x i8*]* %.omp.reduction.red_list to i8*, !dbg !90
  %28 = call i32 @__kmpc_reduce_nowait(%struct.ident_t* %.kmpc_loc.addr, i32 %26, i32 1, i64 8, i8* %27, void (i8*, i8*)* @.omp.reduction.reduction_func.2, [8 x i32]* @.gomp_critical_user_.reduction.var), !dbg !90
  switch i32 %28, label %.omp.reduction.default [
    i32 1, label %.omp.reduction.case1
    i32 2, label %.omp.reduction.case2
  ], !dbg !90

.omp.reduction.case1:                             ; preds = %omp.loop.exit
  %29 = getelementptr i32, i32* %lhs.begin, i64 64, !dbg !90
  %omp.arraycpy.isempty = icmp eq i32* %lhs.begin, %29, !dbg !90
  br i1 %omp.arraycpy.isempty, label %omp.arraycpy.done7, label %omp.arraycpy.body, !dbg !90

omp.arraycpy.body:                                ; preds = %omp.arraycpy.body, %.omp.reduction.case1
  %omp.arraycpy.srcElementPast = phi i32* [ %rhs.begin, %.omp.reduction.case1 ], [ %omp.arraycpy.src.element, %omp.arraycpy.body ], !dbg !90
  %omp.arraycpy.destElementPast3 = phi i32* [ %lhs.begin, %.omp.reduction.case1 ], [ %omp.arraycpy.dest.element5, %omp.arraycpy.body ], !dbg !90
  %30 = load i32, i32* %omp.arraycpy.destElementPast3, align 4, !dbg !94
  %31 = load i32, i32* %omp.arraycpy.srcElementPast, align 4, !dbg !94
  %add4 = add nsw i32 %30, %31, !dbg !95
  store i32 %add4, i32* %omp.arraycpy.destElementPast3, align 4, !dbg !95
  %omp.arraycpy.dest.element5 = getelementptr i32, i32* %omp.arraycpy.destElementPast3, i32 1, !dbg !90
  %omp.arraycpy.src.element = getelementptr i32, i32* %omp.arraycpy.srcElementPast, i32 1, !dbg !90
  %omp.arraycpy.done6 = icmp eq i32* %omp.arraycpy.dest.element5, %29, !dbg !90
  br i1 %omp.arraycpy.done6, label %omp.arraycpy.done7, label %omp.arraycpy.body, !dbg !90

omp.arraycpy.done7:                               ; preds = %omp.arraycpy.body, %.omp.reduction.case1
  call void @__kmpc_end_reduce_nowait(%struct.ident_t* %.kmpc_loc.addr, i32 %26, [8 x i32]* @.gomp_critical_user_.reduction.var), !dbg !90
  br label %.omp.reduction.default, !dbg !90

.omp.reduction.case2:                             ; preds = %omp.loop.exit
  %32 = getelementptr i32, i32* %lhs.begin, i64 64, !dbg !90
  %omp.arraycpy.isempty8 = icmp eq i32* %lhs.begin, %32, !dbg !90
  br i1 %omp.arraycpy.isempty8, label %omp.arraycpy.done15, label %omp.arraycpy.body9, !dbg !90

omp.arraycpy.body9:                               ; preds = %omp.arraycpy.body9, %.omp.reduction.case2
  %omp.arraycpy.srcElementPast10 = phi i32* [ %rhs.begin, %.omp.reduction.case2 ], [ %omp.arraycpy.src.element13, %omp.arraycpy.body9 ], !dbg !90
  %omp.arraycpy.destElementPast11 = phi i32* [ %lhs.begin, %.omp.reduction.case2 ], [ %omp.arraycpy.dest.element12, %omp.arraycpy.body9 ], !dbg !90
  %33 = load i32, i32* %omp.arraycpy.srcElementPast10, align 4, !dbg !94
  %34 = atomicrmw add i32* %omp.arraycpy.destElementPast11, i32 %33 monotonic, !dbg !90
  %omp.arraycpy.dest.element12 = getelementptr i32, i32* %omp.arraycpy.destElementPast11, i32 1, !dbg !90
  %omp.arraycpy.src.element13 = getelementptr i32, i32* %omp.arraycpy.srcElementPast10, i32 1, !dbg !90
  %omp.arraycpy.done14 = icmp eq i32* %omp.arraycpy.dest.element12, %32, !dbg !90
  br i1 %omp.arraycpy.done14, label %omp.arraycpy.done15, label %omp.arraycpy.body9, !dbg !90

omp.arraycpy.done15:                              ; preds = %omp.arraycpy.body9, %.omp.reduction.case2
  br label %.omp.reduction.default, !dbg !90

.omp.reduction.default:                           ; preds = %omp.arraycpy.done15, %omp.arraycpy.done7, %omp.loop.exit
  ret void, !dbg !96
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined._debug__.1(i32* noalias %.global_tid., i32* noalias %.bound_tid., i64 %.previous.lb., i64 %.previous.ub., [64 x i32]* dereferenceable(256) %var) #2 !dbg !97 {
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
  %var2 = alloca [64 x i32], align 16
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
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !102, metadata !DIExpression()), !dbg !103
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !104, metadata !DIExpression()), !dbg !103
  store i64 %.previous.lb., i64* %.previous.lb..addr, align 8
  call void @llvm.dbg.declare(metadata i64* %.previous.lb..addr, metadata !105, metadata !DIExpression()), !dbg !103
  store i64 %.previous.ub., i64* %.previous.ub..addr, align 8
  call void @llvm.dbg.declare(metadata i64* %.previous.ub..addr, metadata !106, metadata !DIExpression()), !dbg !103
  store [64 x i32]* %var, [64 x i32]** %var.addr, align 8
  call void @llvm.dbg.declare(metadata [64 x i32]** %var.addr, metadata !107, metadata !DIExpression()), !dbg !108
  %2 = load [64 x i32]*, [64 x i32]** %var.addr, align 8, !dbg !109
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !110, metadata !DIExpression()), !dbg !103
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !111, metadata !DIExpression()), !dbg !103
  store i32 0, i32* %.omp.lb, align 4, !dbg !112
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !113, metadata !DIExpression()), !dbg !103
  store i32 99, i32* %.omp.ub, align 4, !dbg !112
  %3 = load i64, i64* %.previous.lb..addr, align 8, !dbg !109
  %conv = trunc i64 %3 to i32, !dbg !109
  %4 = load i64, i64* %.previous.ub..addr, align 8, !dbg !109
  %conv1 = trunc i64 %4 to i32, !dbg !109
  store i32 %conv, i32* %.omp.lb, align 4, !dbg !109
  store i32 %conv1, i32* %.omp.ub, align 4, !dbg !109
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !114, metadata !DIExpression()), !dbg !103
  store i32 1, i32* %.omp.stride, align 4, !dbg !112
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !115, metadata !DIExpression()), !dbg !103
  store i32 0, i32* %.omp.is_last, align 4, !dbg !112
  call void @llvm.dbg.declare(metadata [64 x i32]* %var2, metadata !116, metadata !DIExpression()), !dbg !103
  %array.begin = getelementptr inbounds [64 x i32], [64 x i32]* %var2, i32 0, i32 0, !dbg !109
  %5 = getelementptr i32, i32* %array.begin, i64 64, !dbg !109
  %omp.arrayinit.isempty = icmp eq i32* %array.begin, %5, !dbg !109
  br i1 %omp.arrayinit.isempty, label %omp.arrayinit.done, label %omp.arrayinit.body, !dbg !109

omp.arrayinit.body:                               ; preds = %omp.arrayinit.body, %entry
  %omp.arraycpy.destElementPast = phi i32* [ %array.begin, %entry ], [ %omp.arraycpy.dest.element, %omp.arrayinit.body ], !dbg !109
  store i32 0, i32* %omp.arraycpy.destElementPast, align 4, !dbg !109
  %omp.arraycpy.dest.element = getelementptr i32, i32* %omp.arraycpy.destElementPast, i32 1, !dbg !109
  %omp.arraycpy.done = icmp eq i32* %omp.arraycpy.dest.element, %5, !dbg !109
  br i1 %omp.arraycpy.done, label %omp.arrayinit.done, label %omp.arrayinit.body, !dbg !109

omp.arrayinit.done:                               ; preds = %omp.arrayinit.body, %entry
  %lhs.begin = bitcast [64 x i32]* %2 to i32*, !dbg !109
  %rhs.begin = bitcast [64 x i32]* %var2 to i32*, !dbg !109
  call void @llvm.dbg.declare(metadata i32* %i, metadata !117, metadata !DIExpression()), !dbg !103
  %6 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !109
  store i8* getelementptr inbounds ([51 x i8], [51 x i8]* @1, i32 0, i32 0), i8** %6, align 8, !dbg !109
  %7 = load i32*, i32** %.global_tid..addr, align 8, !dbg !109
  %8 = load i32, i32* %7, align 4, !dbg !109
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %8, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !109
  %9 = load i32, i32* %.omp.ub, align 4, !dbg !112
  %cmp = icmp sgt i32 %9, 99, !dbg !112
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !112

cond.true:                                        ; preds = %omp.arrayinit.done
  br label %cond.end, !dbg !112

cond.false:                                       ; preds = %omp.arrayinit.done
  %10 = load i32, i32* %.omp.ub, align 4, !dbg !112
  br label %cond.end, !dbg !112

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 99, %cond.true ], [ %10, %cond.false ], !dbg !112
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !112
  %11 = load i32, i32* %.omp.lb, align 4, !dbg !112
  store i32 %11, i32* %.omp.iv, align 4, !dbg !112
  br label %omp.inner.for.cond, !dbg !109

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc17, %cond.end
  %12 = load i32, i32* %.omp.iv, align 4, !dbg !112
  %13 = load i32, i32* %.omp.ub, align 4, !dbg !112
  %cmp4 = icmp sle i32 %12, %13, !dbg !109
  br i1 %cmp4, label %omp.inner.for.body, label %omp.inner.for.end19, !dbg !109

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %14 = load i32, i32* %.omp.iv, align 4, !dbg !112
  %mul = mul nsw i32 %14, 1, !dbg !118
  %add = add nsw i32 0, %mul, !dbg !118
  store i32 %add, i32* %i, align 4, !dbg !118
  call void @llvm.dbg.declare(metadata i32* %.omp.iv7, metadata !119, metadata !DIExpression()), !dbg !122
  store i32 0, i32* %.omp.iv7, align 4, !dbg !123
  call void @llvm.dbg.declare(metadata i32* %i8, metadata !124, metadata !DIExpression()), !dbg !122
  br label %omp.inner.for.cond9, !dbg !125

omp.inner.for.cond9:                              ; preds = %omp.inner.for.inc, %omp.inner.for.body
  %15 = load i32, i32* %.omp.iv7, align 4, !dbg !123, !llvm.access.group !126
  %cmp10 = icmp slt i32 %15, 64, !dbg !127
  br i1 %cmp10, label %omp.inner.for.body12, label %omp.inner.for.end, !dbg !125

omp.inner.for.body12:                             ; preds = %omp.inner.for.cond9
  %16 = load i32, i32* %.omp.iv7, align 4, !dbg !123, !llvm.access.group !126
  %mul13 = mul nsw i32 %16, 1, !dbg !128
  %add14 = add nsw i32 0, %mul13, !dbg !128
  store i32 %add14, i32* %i8, align 4, !dbg !128, !llvm.access.group !126
  %17 = load i32, i32* %i8, align 4, !dbg !129, !llvm.access.group !126
  %idxprom = sext i32 %17 to i64, !dbg !131
  %arrayidx = getelementptr inbounds [64 x i32], [64 x i32]* %var2, i64 0, i64 %idxprom, !dbg !131
  %18 = load i32, i32* %arrayidx, align 4, !dbg !132, !llvm.access.group !126
  %inc = add nsw i32 %18, 1, !dbg !132
  store i32 %inc, i32* %arrayidx, align 4, !dbg !132, !llvm.access.group !126
  br label %omp.body.continue, !dbg !133

omp.body.continue:                                ; preds = %omp.inner.for.body12
  br label %omp.inner.for.inc, !dbg !134

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %19 = load i32, i32* %.omp.iv7, align 4, !dbg !123, !llvm.access.group !126
  %add15 = add nsw i32 %19, 1, !dbg !127
  store i32 %add15, i32* %.omp.iv7, align 4, !dbg !127, !llvm.access.group !126
  br label %omp.inner.for.cond9, !dbg !134, !llvm.loop !135

omp.inner.for.end:                                ; preds = %omp.inner.for.cond9
  store i32 64, i32* %i8, align 4, !dbg !128
  br label %omp.body.continue16, !dbg !139

omp.body.continue16:                              ; preds = %omp.inner.for.end
  br label %omp.inner.for.inc17, !dbg !140

omp.inner.for.inc17:                              ; preds = %omp.body.continue16
  %20 = load i32, i32* %.omp.iv, align 4, !dbg !112
  %add18 = add nsw i32 %20, 1, !dbg !109
  store i32 %add18, i32* %.omp.iv, align 4, !dbg !109
  br label %omp.inner.for.cond, !dbg !140, !llvm.loop !141

omp.inner.for.end19:                              ; preds = %omp.inner.for.cond
  br label %omp.loop.exit, !dbg !140

omp.loop.exit:                                    ; preds = %omp.inner.for.end19
  %21 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !140
  store i8* getelementptr inbounds ([52 x i8], [52 x i8]* @3, i32 0, i32 0), i8** %21, align 8, !dbg !140
  %22 = load i32*, i32** %.global_tid..addr, align 8, !dbg !140
  %23 = load i32, i32* %22, align 4, !dbg !140
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %23), !dbg !140
  %24 = getelementptr inbounds [1 x i8*], [1 x i8*]* %.omp.reduction.red_list, i64 0, i64 0, !dbg !140
  %25 = bitcast i32* %rhs.begin to i8*, !dbg !140
  store i8* %25, i8** %24, align 8, !dbg !140
  %26 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !140
  store i8* getelementptr inbounds ([52 x i8], [52 x i8]* @3, i32 0, i32 0), i8** %26, align 8, !dbg !140
  %27 = load i32*, i32** %.global_tid..addr, align 8, !dbg !140
  %28 = load i32, i32* %27, align 4, !dbg !140
  %29 = bitcast [1 x i8*]* %.omp.reduction.red_list to i8*, !dbg !140
  %30 = call i32 @__kmpc_reduce_nowait(%struct.ident_t* %.kmpc_loc.addr, i32 %28, i32 1, i64 8, i8* %29, void (i8*, i8*)* @.omp.reduction.reduction_func, [8 x i32]* @.gomp_critical_user_.reduction.var), !dbg !140
  switch i32 %30, label %.omp.reduction.default [
    i32 1, label %.omp.reduction.case1
    i32 2, label %.omp.reduction.case2
  ], !dbg !140

.omp.reduction.case1:                             ; preds = %omp.loop.exit
  %31 = getelementptr i32, i32* %lhs.begin, i64 64, !dbg !140
  %omp.arraycpy.isempty = icmp eq i32* %lhs.begin, %31, !dbg !140
  br i1 %omp.arraycpy.isempty, label %omp.arraycpy.done24, label %omp.arraycpy.body, !dbg !140

omp.arraycpy.body:                                ; preds = %omp.arraycpy.body, %.omp.reduction.case1
  %omp.arraycpy.srcElementPast = phi i32* [ %rhs.begin, %.omp.reduction.case1 ], [ %omp.arraycpy.src.element, %omp.arraycpy.body ], !dbg !140
  %omp.arraycpy.destElementPast20 = phi i32* [ %lhs.begin, %.omp.reduction.case1 ], [ %omp.arraycpy.dest.element22, %omp.arraycpy.body ], !dbg !140
  %32 = load i32, i32* %omp.arraycpy.destElementPast20, align 4, !dbg !143
  %33 = load i32, i32* %omp.arraycpy.srcElementPast, align 4, !dbg !143
  %add21 = add nsw i32 %32, %33, !dbg !144
  store i32 %add21, i32* %omp.arraycpy.destElementPast20, align 4, !dbg !144
  %omp.arraycpy.dest.element22 = getelementptr i32, i32* %omp.arraycpy.destElementPast20, i32 1, !dbg !140
  %omp.arraycpy.src.element = getelementptr i32, i32* %omp.arraycpy.srcElementPast, i32 1, !dbg !140
  %omp.arraycpy.done23 = icmp eq i32* %omp.arraycpy.dest.element22, %31, !dbg !140
  br i1 %omp.arraycpy.done23, label %omp.arraycpy.done24, label %omp.arraycpy.body, !dbg !140

omp.arraycpy.done24:                              ; preds = %omp.arraycpy.body, %.omp.reduction.case1
  call void @__kmpc_end_reduce_nowait(%struct.ident_t* %.kmpc_loc.addr, i32 %28, [8 x i32]* @.gomp_critical_user_.reduction.var), !dbg !140
  br label %.omp.reduction.default, !dbg !140

.omp.reduction.case2:                             ; preds = %omp.loop.exit
  %34 = getelementptr i32, i32* %lhs.begin, i64 64, !dbg !140
  %omp.arraycpy.isempty25 = icmp eq i32* %lhs.begin, %34, !dbg !140
  br i1 %omp.arraycpy.isempty25, label %omp.arraycpy.done32, label %omp.arraycpy.body26, !dbg !140

omp.arraycpy.body26:                              ; preds = %omp.arraycpy.body26, %.omp.reduction.case2
  %omp.arraycpy.srcElementPast27 = phi i32* [ %rhs.begin, %.omp.reduction.case2 ], [ %omp.arraycpy.src.element30, %omp.arraycpy.body26 ], !dbg !140
  %omp.arraycpy.destElementPast28 = phi i32* [ %lhs.begin, %.omp.reduction.case2 ], [ %omp.arraycpy.dest.element29, %omp.arraycpy.body26 ], !dbg !140
  %35 = load i32, i32* %omp.arraycpy.srcElementPast27, align 4, !dbg !143
  %36 = atomicrmw add i32* %omp.arraycpy.destElementPast28, i32 %35 monotonic, !dbg !140
  %omp.arraycpy.dest.element29 = getelementptr i32, i32* %omp.arraycpy.destElementPast28, i32 1, !dbg !140
  %omp.arraycpy.src.element30 = getelementptr i32, i32* %omp.arraycpy.srcElementPast27, i32 1, !dbg !140
  %omp.arraycpy.done31 = icmp eq i32* %omp.arraycpy.dest.element29, %34, !dbg !140
  br i1 %omp.arraycpy.done31, label %omp.arraycpy.done32, label %omp.arraycpy.body26, !dbg !140

omp.arraycpy.done32:                              ; preds = %omp.arraycpy.body26, %.omp.reduction.case2
  br label %.omp.reduction.default, !dbg !140

.omp.reduction.default:                           ; preds = %omp.arraycpy.done32, %omp.arraycpy.done24, %omp.loop.exit
  ret void, !dbg !145
}

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: noinline norecurse nounwind uwtable
define internal void @.omp.reduction.reduction_func(i8* %0, i8* %1) #4 !dbg !146 {
entry:
  %.addr = alloca i8*, align 8
  %.addr1 = alloca i8*, align 8
  store i8* %0, i8** %.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %.addr, metadata !148, metadata !DIExpression()), !dbg !150
  store i8* %1, i8** %.addr1, align 8
  call void @llvm.dbg.declare(metadata i8** %.addr1, metadata !151, metadata !DIExpression()), !dbg !150
  %2 = load i8*, i8** %.addr, align 8, !dbg !152
  %3 = bitcast i8* %2 to [1 x i8*]*, !dbg !152
  %4 = load i8*, i8** %.addr1, align 8, !dbg !152
  %5 = bitcast i8* %4 to [1 x i8*]*, !dbg !152
  %6 = getelementptr inbounds [1 x i8*], [1 x i8*]* %5, i64 0, i64 0, !dbg !152
  %7 = load i8*, i8** %6, align 8, !dbg !152
  %8 = bitcast i8* %7 to i32*, !dbg !152
  %9 = getelementptr inbounds [1 x i8*], [1 x i8*]* %3, i64 0, i64 0, !dbg !152
  %10 = load i8*, i8** %9, align 8, !dbg !152
  %11 = bitcast i8* %10 to i32*, !dbg !152
  %12 = getelementptr i32, i32* %11, i64 64, !dbg !152
  %omp.arraycpy.isempty = icmp eq i32* %11, %12, !dbg !152
  br i1 %omp.arraycpy.isempty, label %omp.arraycpy.done2, label %omp.arraycpy.body, !dbg !152

omp.arraycpy.body:                                ; preds = %omp.arraycpy.body, %entry
  %omp.arraycpy.srcElementPast = phi i32* [ %8, %entry ], [ %omp.arraycpy.src.element, %omp.arraycpy.body ], !dbg !152
  %omp.arraycpy.destElementPast = phi i32* [ %11, %entry ], [ %omp.arraycpy.dest.element, %omp.arraycpy.body ], !dbg !152
  %13 = load i32, i32* %omp.arraycpy.destElementPast, align 4, !dbg !153
  %14 = load i32, i32* %omp.arraycpy.srcElementPast, align 4, !dbg !153
  %add = add nsw i32 %13, %14, !dbg !154
  store i32 %add, i32* %omp.arraycpy.destElementPast, align 4, !dbg !154
  %omp.arraycpy.dest.element = getelementptr i32, i32* %omp.arraycpy.destElementPast, i32 1, !dbg !152
  %omp.arraycpy.src.element = getelementptr i32, i32* %omp.arraycpy.srcElementPast, i32 1, !dbg !152
  %omp.arraycpy.done = icmp eq i32* %omp.arraycpy.dest.element, %12, !dbg !152
  br i1 %omp.arraycpy.done, label %omp.arraycpy.done2, label %omp.arraycpy.body, !dbg !152

omp.arraycpy.done2:                               ; preds = %omp.arraycpy.body, %entry
  ret void, !dbg !153
}

declare dso_local i32 @__kmpc_reduce_nowait(%struct.ident_t*, i32, i32, i64, i8*, void (i8*, i8*)*, [8 x i32]*)

declare dso_local void @__kmpc_end_reduce_nowait(%struct.ident_t*, i32, [8 x i32]*)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i64 %.previous.lb., i64 %.previous.ub., [64 x i32]* dereferenceable(256) %var) #2 !dbg !155 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %.previous.lb..addr = alloca i64, align 8
  %.previous.ub..addr = alloca i64, align 8
  %var.addr = alloca [64 x i32]*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !156, metadata !DIExpression()), !dbg !157
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !158, metadata !DIExpression()), !dbg !157
  store i64 %.previous.lb., i64* %.previous.lb..addr, align 8
  call void @llvm.dbg.declare(metadata i64* %.previous.lb..addr, metadata !159, metadata !DIExpression()), !dbg !157
  store i64 %.previous.ub., i64* %.previous.ub..addr, align 8
  call void @llvm.dbg.declare(metadata i64* %.previous.ub..addr, metadata !160, metadata !DIExpression()), !dbg !157
  store [64 x i32]* %var, [64 x i32]** %var.addr, align 8
  call void @llvm.dbg.declare(metadata [64 x i32]** %var.addr, metadata !161, metadata !DIExpression()), !dbg !157
  %0 = load [64 x i32]*, [64 x i32]** %var.addr, align 8, !dbg !162
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !162
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !162
  %3 = load i64, i64* %.previous.lb..addr, align 8, !dbg !162
  %4 = load i64, i64* %.previous.ub..addr, align 8, !dbg !162
  %5 = load [64 x i32]*, [64 x i32]** %var.addr, align 8, !dbg !162
  call void @.omp_outlined._debug__.1(i32* %1, i32* %2, i64 %3, i64 %4, [64 x i32]* %5) #6, !dbg !162
  ret void, !dbg !162
}

declare !callback !163 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

; Function Attrs: noinline norecurse nounwind uwtable
define internal void @.omp.reduction.reduction_func.2(i8* %0, i8* %1) #4 !dbg !165 {
entry:
  %.addr = alloca i8*, align 8
  %.addr1 = alloca i8*, align 8
  store i8* %0, i8** %.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %.addr, metadata !166, metadata !DIExpression()), !dbg !167
  store i8* %1, i8** %.addr1, align 8
  call void @llvm.dbg.declare(metadata i8** %.addr1, metadata !168, metadata !DIExpression()), !dbg !167
  %2 = load i8*, i8** %.addr, align 8, !dbg !169
  %3 = bitcast i8* %2 to [1 x i8*]*, !dbg !169
  %4 = load i8*, i8** %.addr1, align 8, !dbg !169
  %5 = bitcast i8* %4 to [1 x i8*]*, !dbg !169
  %6 = getelementptr inbounds [1 x i8*], [1 x i8*]* %5, i64 0, i64 0, !dbg !169
  %7 = load i8*, i8** %6, align 8, !dbg !169
  %8 = bitcast i8* %7 to i32*, !dbg !169
  %9 = getelementptr inbounds [1 x i8*], [1 x i8*]* %3, i64 0, i64 0, !dbg !169
  %10 = load i8*, i8** %9, align 8, !dbg !169
  %11 = bitcast i8* %10 to i32*, !dbg !169
  %12 = getelementptr i32, i32* %11, i64 64, !dbg !169
  %omp.arraycpy.isempty = icmp eq i32* %11, %12, !dbg !169
  br i1 %omp.arraycpy.isempty, label %omp.arraycpy.done2, label %omp.arraycpy.body, !dbg !169

omp.arraycpy.body:                                ; preds = %omp.arraycpy.body, %entry
  %omp.arraycpy.srcElementPast = phi i32* [ %8, %entry ], [ %omp.arraycpy.src.element, %omp.arraycpy.body ], !dbg !169
  %omp.arraycpy.destElementPast = phi i32* [ %11, %entry ], [ %omp.arraycpy.dest.element, %omp.arraycpy.body ], !dbg !169
  %13 = load i32, i32* %omp.arraycpy.destElementPast, align 4, !dbg !170
  %14 = load i32, i32* %omp.arraycpy.srcElementPast, align 4, !dbg !170
  %add = add nsw i32 %13, %14, !dbg !171
  store i32 %add, i32* %omp.arraycpy.destElementPast, align 4, !dbg !171
  %omp.arraycpy.dest.element = getelementptr i32, i32* %omp.arraycpy.destElementPast, i32 1, !dbg !169
  %omp.arraycpy.src.element = getelementptr i32, i32* %omp.arraycpy.srcElementPast, i32 1, !dbg !169
  %omp.arraycpy.done = icmp eq i32* %omp.arraycpy.dest.element, %12, !dbg !169
  br i1 %omp.arraycpy.done, label %omp.arraycpy.done2, label %omp.arraycpy.body, !dbg !169

omp.arraycpy.done2:                               ; preds = %omp.arraycpy.body, %entry
  ret void, !dbg !170
}

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined..3(i32* noalias %.global_tid., i32* noalias %.bound_tid., [64 x i32]* dereferenceable(256) %var) #2 !dbg !172 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %var.addr = alloca [64 x i32]*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !173, metadata !DIExpression()), !dbg !174
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !175, metadata !DIExpression()), !dbg !174
  store [64 x i32]* %var, [64 x i32]** %var.addr, align 8
  call void @llvm.dbg.declare(metadata [64 x i32]** %var.addr, metadata !176, metadata !DIExpression()), !dbg !174
  %0 = load [64 x i32]*, [64 x i32]** %var.addr, align 8, !dbg !177
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !177
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !177
  %3 = load [64 x i32]*, [64 x i32]** %var.addr, align 8, !dbg !177
  call void @.omp_outlined._debug__(i32* %1, i32* %2, [64 x i32]* %3) #6, !dbg !177
  ret void, !dbg !177
}

declare !callback !163 dso_local void @__kmpc_fork_teams(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @__omp_offloading_10307_2ec41bc_main_l26([64 x i32]* dereferenceable(256) %var) #2 !dbg !178 {
entry:
  %var.addr = alloca [64 x i32]*, align 8
  store [64 x i32]* %var, [64 x i32]** %var.addr, align 8
  call void @llvm.dbg.declare(metadata [64 x i32]** %var.addr, metadata !179, metadata !DIExpression()), !dbg !180
  %0 = load [64 x i32]*, [64 x i32]** %var.addr, align 8, !dbg !181
  %1 = load [64 x i32]*, [64 x i32]** %var.addr, align 8, !dbg !181
  call void @__omp_offloading_10307_2ec41bc_main_l26_debug__([64 x i32]* %1) #6, !dbg !181
  ret void, !dbg !181
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
!1 = !DIFile(filename: "DRB163-simdmissinglock1-orig-gpu-no.c", directory: "/home/yanze/code/OpenRace/tests/data/integration/dataracebench")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.1 "}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 19, type: !8, scopeLine: 19, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DILocalVariable(name: "var", scope: !7, file: !1, line: 20, type: !12)
!12 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 2048, elements: !13)
!13 = !{!14}
!14 = !DISubrange(count: 64)
!15 = !DILocation(line: 20, column: 7, scope: !7)
!16 = !DILocalVariable(name: "i", scope: !17, file: !1, line: 22, type: !10)
!17 = distinct !DILexicalBlock(scope: !7, file: !1, line: 22, column: 3)
!18 = !DILocation(line: 22, column: 11, scope: !17)
!19 = !DILocation(line: 22, column: 7, scope: !17)
!20 = !DILocation(line: 22, column: 16, scope: !21)
!21 = distinct !DILexicalBlock(scope: !17, file: !1, line: 22, column: 3)
!22 = !DILocation(line: 22, column: 17, scope: !21)
!23 = !DILocation(line: 22, column: 3, scope: !17)
!24 = !DILocation(line: 23, column: 9, scope: !25)
!25 = distinct !DILexicalBlock(scope: !21, file: !1, line: 22, column: 25)
!26 = !DILocation(line: 23, column: 5, scope: !25)
!27 = !DILocation(line: 23, column: 11, scope: !25)
!28 = !DILocation(line: 24, column: 3, scope: !25)
!29 = !DILocation(line: 22, column: 22, scope: !21)
!30 = !DILocation(line: 22, column: 3, scope: !21)
!31 = distinct !{!31, !23, !32}
!32 = !DILocation(line: 24, column: 3, scope: !17)
!33 = !DILocation(line: 26, column: 3, scope: !34)
!34 = distinct !DILexicalBlock(scope: !7, file: !1, line: 26, column: 3)
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
!49 = !DILocation(line: 37, column: 25, scope: !50)
!50 = distinct !DILexicalBlock(scope: !44, file: !1, line: 36, column: 20)
!51 = !DILocation(line: 37, column: 21, scope: !50)
!52 = !DILocation(line: 37, column: 7, scope: !50)
!53 = !DILocation(line: 38, column: 5, scope: !50)
!54 = !DILocation(line: 39, column: 3, scope: !45)
!55 = !DILocation(line: 35, column: 22, scope: !40)
!56 = !DILocation(line: 35, column: 3, scope: !40)
!57 = distinct !{!57, !42, !58}
!58 = !DILocation(line: 39, column: 3, scope: !36)
!59 = !DILocation(line: 41, column: 3, scope: !7)
!60 = distinct !DISubprogram(name: "__omp_offloading_10307_2ec41bc_main_l26_debug__", scope: !1, file: !1, line: 27, type: !61, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!61 = !DISubroutineType(types: !62)
!62 = !{null, !63}
!63 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !12, size: 64)
!64 = !DILocalVariable(name: "var", arg: 1, scope: !60, file: !1, line: 20, type: !63)
!65 = !DILocation(line: 20, column: 7, scope: !60)
!66 = !DILocation(line: 27, column: 3, scope: !60)
!67 = !DILocation(line: 27, column: 62, scope: !60)
!68 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 28, type: !69, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!69 = !DISubroutineType(types: !70)
!70 = !{null, !71, !71, !63}
!71 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !72)
!72 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !73)
!73 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!75 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !68, type: !71, flags: DIFlagArtificial)
!76 = !DILocation(line: 0, scope: !68)
!77 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !68, type: !71, flags: DIFlagArtificial)
!78 = !DILocalVariable(name: "var", arg: 3, scope: !68, file: !1, line: 20, type: !63)
!79 = !DILocation(line: 20, column: 7, scope: !68)
!80 = !DILocation(line: 28, column: 3, scope: !68)
!81 = !DILocalVariable(name: "var", scope: !68, type: !12, flags: DIFlagArtificial)
!82 = !DILocalVariable(name: ".omp.iv", scope: !68, type: !10, flags: DIFlagArtificial)
!83 = !DILocalVariable(name: ".omp.comb.lb", scope: !68, type: !10, flags: DIFlagArtificial)
!84 = !DILocation(line: 28, column: 8, scope: !68)
!85 = !DILocalVariable(name: ".omp.comb.ub", scope: !68, type: !10, flags: DIFlagArtificial)
!86 = !DILocalVariable(name: ".omp.stride", scope: !68, type: !10, flags: DIFlagArtificial)
!87 = !DILocalVariable(name: ".omp.is_last", scope: !68, type: !10, flags: DIFlagArtificial)
!88 = !DILocalVariable(name: "i", scope: !68, type: !10, flags: DIFlagArtificial)
!89 = !DILocation(line: 27, column: 3, scope: !68)
!90 = !DILocation(line: 27, column: 62, scope: !91)
!91 = distinct !DILexicalBlock(scope: !68, file: !1, line: 27, column: 3)
!92 = distinct !{!92, !89, !93}
!93 = !DILocation(line: 27, column: 62, scope: !68)
!94 = !DILocation(line: 27, column: 57, scope: !68)
!95 = !DILocation(line: 27, column: 55, scope: !68)
!96 = !DILocation(line: 33, column: 3, scope: !68)
!97 = distinct !DISubprogram(name: ".omp_outlined._debug__.1", scope: !1, file: !1, line: 28, type: !98, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!98 = !DISubroutineType(types: !99)
!99 = !{null, !71, !71, !100, !100, !63}
!100 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !101)
!101 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!102 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !97, type: !71, flags: DIFlagArtificial)
!103 = !DILocation(line: 0, scope: !97)
!104 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !97, type: !71, flags: DIFlagArtificial)
!105 = !DILocalVariable(name: ".previous.lb.", arg: 3, scope: !97, type: !100, flags: DIFlagArtificial)
!106 = !DILocalVariable(name: ".previous.ub.", arg: 4, scope: !97, type: !100, flags: DIFlagArtificial)
!107 = !DILocalVariable(name: "var", arg: 5, scope: !97, file: !1, line: 20, type: !63)
!108 = !DILocation(line: 20, column: 7, scope: !97)
!109 = !DILocation(line: 28, column: 3, scope: !97)
!110 = !DILocalVariable(name: ".omp.iv", scope: !97, type: !10, flags: DIFlagArtificial)
!111 = !DILocalVariable(name: ".omp.lb", scope: !97, type: !10, flags: DIFlagArtificial)
!112 = !DILocation(line: 28, column: 8, scope: !97)
!113 = !DILocalVariable(name: ".omp.ub", scope: !97, type: !10, flags: DIFlagArtificial)
!114 = !DILocalVariable(name: ".omp.stride", scope: !97, type: !10, flags: DIFlagArtificial)
!115 = !DILocalVariable(name: ".omp.is_last", scope: !97, type: !10, flags: DIFlagArtificial)
!116 = !DILocalVariable(name: "var", scope: !97, type: !12, flags: DIFlagArtificial)
!117 = !DILocalVariable(name: "i", scope: !97, type: !10, flags: DIFlagArtificial)
!118 = !DILocation(line: 28, column: 22, scope: !97)
!119 = !DILocalVariable(name: ".omp.iv", scope: !120, type: !10, flags: DIFlagArtificial)
!120 = distinct !DILexicalBlock(scope: !121, file: !1, line: 29, column: 5)
!121 = distinct !DILexicalBlock(scope: !97, file: !1, line: 28, column: 26)
!122 = !DILocation(line: 0, scope: !120)
!123 = !DILocation(line: 30, column: 9, scope: !120)
!124 = !DILocalVariable(name: "i", scope: !120, type: !10, flags: DIFlagArtificial)
!125 = !DILocation(line: 29, column: 5, scope: !121)
!126 = distinct !{}
!127 = !DILocation(line: 30, column: 5, scope: !120)
!128 = !DILocation(line: 30, column: 23, scope: !120)
!129 = !DILocation(line: 31, column: 11, scope: !130)
!130 = distinct !DILexicalBlock(scope: !120, file: !1, line: 30, column: 27)
!131 = !DILocation(line: 31, column: 7, scope: !130)
!132 = !DILocation(line: 31, column: 13, scope: !130)
!133 = !DILocation(line: 32, column: 5, scope: !130)
!134 = !DILocation(line: 29, column: 5, scope: !120)
!135 = distinct !{!135, !134, !136, !137, !138}
!136 = !DILocation(line: 29, column: 21, scope: !120)
!137 = !{!"llvm.loop.parallel_accesses", !126}
!138 = !{!"llvm.loop.vectorize.enable", i1 true}
!139 = !DILocation(line: 33, column: 3, scope: !121)
!140 = !DILocation(line: 27, column: 3, scope: !97)
!141 = distinct !{!141, !140, !142}
!142 = !DILocation(line: 27, column: 62, scope: !97)
!143 = !DILocation(line: 27, column: 57, scope: !97)
!144 = !DILocation(line: 27, column: 55, scope: !97)
!145 = !DILocation(line: 33, column: 3, scope: !97)
!146 = distinct !DISubprogram(linkageName: ".omp.reduction.reduction_func", scope: !1, file: !1, line: 27, type: !147, scopeLine: 27, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!147 = !DISubroutineType(types: !2)
!148 = !DILocalVariable(arg: 1, scope: !146, type: !149, flags: DIFlagArtificial)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!150 = !DILocation(line: 0, scope: !146)
!151 = !DILocalVariable(arg: 2, scope: !146, type: !149, flags: DIFlagArtificial)
!152 = !DILocation(line: 27, column: 62, scope: !146)
!153 = !DILocation(line: 27, column: 57, scope: !146)
!154 = !DILocation(line: 27, column: 55, scope: !146)
!155 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 28, type: !98, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!156 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !155, type: !71, flags: DIFlagArtificial)
!157 = !DILocation(line: 0, scope: !155)
!158 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !155, type: !71, flags: DIFlagArtificial)
!159 = !DILocalVariable(name: ".previous.lb.", arg: 3, scope: !155, type: !100, flags: DIFlagArtificial)
!160 = !DILocalVariable(name: ".previous.ub.", arg: 4, scope: !155, type: !100, flags: DIFlagArtificial)
!161 = !DILocalVariable(name: "var", arg: 5, scope: !155, type: !63, flags: DIFlagArtificial)
!162 = !DILocation(line: 28, column: 3, scope: !155)
!163 = !{!164}
!164 = !{i64 2, i64 -1, i64 -1, i1 true}
!165 = distinct !DISubprogram(linkageName: ".omp.reduction.reduction_func.2", scope: !1, file: !1, line: 27, type: !147, scopeLine: 27, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!166 = !DILocalVariable(arg: 1, scope: !165, type: !149, flags: DIFlagArtificial)
!167 = !DILocation(line: 0, scope: !165)
!168 = !DILocalVariable(arg: 2, scope: !165, type: !149, flags: DIFlagArtificial)
!169 = !DILocation(line: 27, column: 62, scope: !165)
!170 = !DILocation(line: 27, column: 57, scope: !165)
!171 = !DILocation(line: 27, column: 55, scope: !165)
!172 = distinct !DISubprogram(name: ".omp_outlined..3", scope: !1, file: !1, line: 28, type: !69, scopeLine: 28, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!173 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !172, type: !71, flags: DIFlagArtificial)
!174 = !DILocation(line: 0, scope: !172)
!175 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !172, type: !71, flags: DIFlagArtificial)
!176 = !DILocalVariable(name: "var", arg: 3, scope: !172, type: !63, flags: DIFlagArtificial)
!177 = !DILocation(line: 28, column: 3, scope: !172)
!178 = distinct !DISubprogram(name: "__omp_offloading_10307_2ec41bc_main_l26", scope: !1, file: !1, line: 27, type: !61, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!179 = !DILocalVariable(name: "var", arg: 1, scope: !178, type: !63, flags: DIFlagArtificial)
!180 = !DILocation(line: 0, scope: !178)
!181 = !DILocation(line: 27, column: 3, scope: !178)
