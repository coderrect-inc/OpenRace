; ModuleID = 'DRB156-missingordered-orig-gpu-yes.c'
source_filename = "DRB156-missingordered-orig-gpu-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 2050, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [50 x i8] c";DRB156-missingordered-orig-gpu-yes.c;main;26;3;;\00", align 1
@2 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@3 = private unnamed_addr constant [51 x i8] c";DRB156-missingordered-orig-gpu-yes.c;main;26;44;;\00", align 1
@4 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@.str.3 = private unnamed_addr constant [19 x i8] c"Data Race Present\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !7 {
entry:
  %retval = alloca i32, align 4
  %var = alloca [100 x i32], align 16
  %i = alloca i32, align 4
  %i1 = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata [100 x i32]* %var, metadata !11, metadata !DIExpression()), !dbg !15
  call void @llvm.dbg.declare(metadata i32* %i, metadata !16, metadata !DIExpression()), !dbg !18
  store i32 0, i32* %i, align 4, !dbg !18
  br label %for.cond, !dbg !19

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %i, align 4, !dbg !20
  %cmp = icmp slt i32 %0, 100, !dbg !22
  br i1 %cmp, label %for.body, label %for.end, !dbg !23

for.body:                                         ; preds = %for.cond
  %1 = load i32, i32* %i, align 4, !dbg !24
  %idxprom = sext i32 %1 to i64, !dbg !26
  %arrayidx = getelementptr inbounds [100 x i32], [100 x i32]* %var, i64 0, i64 %idxprom, !dbg !26
  store i32 0, i32* %arrayidx, align 4, !dbg !27
  br label %for.inc, !dbg !28

for.inc:                                          ; preds = %for.body
  %2 = load i32, i32* %i, align 4, !dbg !29
  %inc = add nsw i32 %2, 1, !dbg !29
  store i32 %inc, i32* %i, align 4, !dbg !29
  br label %for.cond, !dbg !30, !llvm.loop !31

for.end:                                          ; preds = %for.cond
  call void @__omp_offloading_10307_2ec41b5_main_l25([100 x i32]* %var) #5, !dbg !33
  call void @llvm.dbg.declare(metadata i32* %i1, metadata !35, metadata !DIExpression()), !dbg !37
  store i32 0, i32* %i1, align 4, !dbg !37
  br label %for.cond2, !dbg !38

for.cond2:                                        ; preds = %for.inc8, %for.end
  %3 = load i32, i32* %i1, align 4, !dbg !39
  %cmp3 = icmp slt i32 %3, 100, !dbg !41
  br i1 %cmp3, label %for.body4, label %for.end10, !dbg !42

for.body4:                                        ; preds = %for.cond2
  %4 = load i32, i32* %i1, align 4, !dbg !43
  %idxprom5 = sext i32 %4 to i64, !dbg !46
  %arrayidx6 = getelementptr inbounds [100 x i32], [100 x i32]* %var, i64 0, i64 %idxprom5, !dbg !46
  %5 = load i32, i32* %arrayidx6, align 4, !dbg !46
  %6 = load i32, i32* %i1, align 4, !dbg !47
  %cmp7 = icmp ne i32 %5, %6, !dbg !48
  br i1 %cmp7, label %if.then, label %if.end, !dbg !49

if.then:                                          ; preds = %for.body4
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0)), !dbg !50
  store i32 0, i32* %retval, align 4, !dbg !52
  br label %return, !dbg !52

if.end:                                           ; preds = %for.body4
  br label %for.inc8, !dbg !53

for.inc8:                                         ; preds = %if.end
  %7 = load i32, i32* %i1, align 4, !dbg !54
  %inc9 = add nsw i32 %7, 1, !dbg !54
  store i32 %inc9, i32* %i1, align 4, !dbg !54
  br label %for.cond2, !dbg !55, !llvm.loop !56

for.end10:                                        ; preds = %for.cond2
  store i32 0, i32* %retval, align 4, !dbg !58
  br label %return, !dbg !58

return:                                           ; preds = %for.end10, %if.then
  %8 = load i32, i32* %retval, align 4, !dbg !59
  ret i32 %8, !dbg !59
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @__omp_offloading_10307_2ec41b5_main_l25_debug__([100 x i32]* dereferenceable(400) %var) #2 !dbg !60 {
entry:
  %var.addr = alloca [100 x i32]*, align 8
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store [100 x i32]* %var, [100 x i32]** %var.addr, align 8
  call void @llvm.dbg.declare(metadata [100 x i32]** %var.addr, metadata !64, metadata !DIExpression()), !dbg !65
  %2 = load [100 x i32]*, [100 x i32]** %var.addr, align 8, !dbg !66
  %3 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !66
  store i8* getelementptr inbounds ([50 x i8], [50 x i8]* @1, i32 0, i32 0), i8** %3, align 8, !dbg !66
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_teams(%struct.ident_t* %.kmpc_loc.addr, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, [100 x i32]*)* @.omp_outlined..2 to void (i32*, i32*, ...)*), [100 x i32]* %2), !dbg !66
  ret void, !dbg !67
}

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., [100 x i32]* dereferenceable(400) %var) #2 !dbg !68 {
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
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !75, metadata !DIExpression()), !dbg !76
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !77, metadata !DIExpression()), !dbg !76
  store [100 x i32]* %var, [100 x i32]** %var.addr, align 8
  call void @llvm.dbg.declare(metadata [100 x i32]** %var.addr, metadata !78, metadata !DIExpression()), !dbg !79
  %2 = load [100 x i32]*, [100 x i32]** %var.addr, align 8, !dbg !80
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !81, metadata !DIExpression()), !dbg !76
  call void @llvm.dbg.declare(metadata i32* %.omp.comb.lb, metadata !82, metadata !DIExpression()), !dbg !76
  store i32 0, i32* %.omp.comb.lb, align 4, !dbg !83
  call void @llvm.dbg.declare(metadata i32* %.omp.comb.ub, metadata !84, metadata !DIExpression()), !dbg !76
  store i32 98, i32* %.omp.comb.ub, align 4, !dbg !83
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !85, metadata !DIExpression()), !dbg !76
  store i32 1, i32* %.omp.stride, align 4, !dbg !83
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !86, metadata !DIExpression()), !dbg !76
  store i32 0, i32* %.omp.is_last, align 4, !dbg !83
  call void @llvm.dbg.declare(metadata i32* %i, metadata !87, metadata !DIExpression()), !dbg !76
  %3 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !80
  store i8* getelementptr inbounds ([50 x i8], [50 x i8]* @1, i32 0, i32 0), i8** %3, align 8, !dbg !80
  %4 = load i32*, i32** %.global_tid..addr, align 8, !dbg !80
  %5 = load i32, i32* %4, align 4, !dbg !80
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %5, i32 92, i32* %.omp.is_last, i32* %.omp.comb.lb, i32* %.omp.comb.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !80
  %6 = load i32, i32* %.omp.comb.ub, align 4, !dbg !83
  %cmp = icmp sgt i32 %6, 98, !dbg !83
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !83

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !83

cond.false:                                       ; preds = %entry
  %7 = load i32, i32* %.omp.comb.ub, align 4, !dbg !83
  br label %cond.end, !dbg !83

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 98, %cond.true ], [ %7, %cond.false ], !dbg !83
  store i32 %cond, i32* %.omp.comb.ub, align 4, !dbg !83
  %8 = load i32, i32* %.omp.comb.lb, align 4, !dbg !83
  store i32 %8, i32* %.omp.iv, align 4, !dbg !83
  br label %omp.inner.for.cond, !dbg !80

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %9 = load i32, i32* %.omp.iv, align 4, !dbg !83
  %10 = load i32, i32* %.omp.comb.ub, align 4, !dbg !83
  %cmp1 = icmp sle i32 %9, %10, !dbg !80
  br i1 %cmp1, label %omp.inner.for.body, label %omp.inner.for.end, !dbg !80

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %11 = load i32, i32* %.omp.comb.lb, align 4, !dbg !88
  %12 = zext i32 %11 to i64, !dbg !88
  %13 = load i32, i32* %.omp.comb.ub, align 4, !dbg !88
  %14 = zext i32 %13 to i64, !dbg !88
  %15 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !88
  store i8* getelementptr inbounds ([50 x i8], [50 x i8]* @1, i32 0, i32 0), i8** %15, align 8, !dbg !88
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i64, i64, [100 x i32]*)* @.omp_outlined. to void (i32*, i32*, ...)*), i64 %12, i64 %14, [100 x i32]* %2), !dbg !88
  br label %omp.inner.for.inc, !dbg !89

omp.inner.for.inc:                                ; preds = %omp.inner.for.body
  %16 = load i32, i32* %.omp.iv, align 4, !dbg !83
  %17 = load i32, i32* %.omp.stride, align 4, !dbg !83
  %add = add nsw i32 %16, %17, !dbg !80
  store i32 %add, i32* %.omp.iv, align 4, !dbg !80
  br label %omp.inner.for.cond, !dbg !89, !llvm.loop !91

omp.inner.for.end:                                ; preds = %omp.inner.for.cond
  br label %omp.loop.exit, !dbg !89

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %18 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !89
  store i8* getelementptr inbounds ([50 x i8], [50 x i8]* @1, i32 0, i32 0), i8** %18, align 8, !dbg !89
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %5), !dbg !89
  ret void, !dbg !93
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined._debug__.1(i32* noalias %.global_tid., i32* noalias %.bound_tid., i64 %.previous.lb., i64 %.previous.ub., [100 x i32]* dereferenceable(400) %var) #2 !dbg !94 {
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
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !99, metadata !DIExpression()), !dbg !100
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !101, metadata !DIExpression()), !dbg !100
  store i64 %.previous.lb., i64* %.previous.lb..addr, align 8
  call void @llvm.dbg.declare(metadata i64* %.previous.lb..addr, metadata !102, metadata !DIExpression()), !dbg !100
  store i64 %.previous.ub., i64* %.previous.ub..addr, align 8
  call void @llvm.dbg.declare(metadata i64* %.previous.ub..addr, metadata !103, metadata !DIExpression()), !dbg !100
  store [100 x i32]* %var, [100 x i32]** %var.addr, align 8
  call void @llvm.dbg.declare(metadata [100 x i32]** %var.addr, metadata !104, metadata !DIExpression()), !dbg !105
  %2 = load [100 x i32]*, [100 x i32]** %var.addr, align 8, !dbg !106
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !107, metadata !DIExpression()), !dbg !100
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !108, metadata !DIExpression()), !dbg !100
  store i32 0, i32* %.omp.lb, align 4, !dbg !109
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !110, metadata !DIExpression()), !dbg !100
  store i32 98, i32* %.omp.ub, align 4, !dbg !109
  %3 = load i64, i64* %.previous.lb..addr, align 8, !dbg !106
  %conv = trunc i64 %3 to i32, !dbg !106
  %4 = load i64, i64* %.previous.ub..addr, align 8, !dbg !106
  %conv1 = trunc i64 %4 to i32, !dbg !106
  store i32 %conv, i32* %.omp.lb, align 4, !dbg !106
  store i32 %conv1, i32* %.omp.ub, align 4, !dbg !106
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !111, metadata !DIExpression()), !dbg !100
  store i32 1, i32* %.omp.stride, align 4, !dbg !109
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !112, metadata !DIExpression()), !dbg !100
  store i32 0, i32* %.omp.is_last, align 4, !dbg !109
  call void @llvm.dbg.declare(metadata i32* %i, metadata !113, metadata !DIExpression()), !dbg !100
  %5 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !106
  store i8* getelementptr inbounds ([50 x i8], [50 x i8]* @1, i32 0, i32 0), i8** %5, align 8, !dbg !106
  %6 = load i32*, i32** %.global_tid..addr, align 8, !dbg !106
  %7 = load i32, i32* %6, align 4, !dbg !106
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %7, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !106
  %8 = load i32, i32* %.omp.ub, align 4, !dbg !109
  %cmp = icmp sgt i32 %8, 98, !dbg !109
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !109

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !109

cond.false:                                       ; preds = %entry
  %9 = load i32, i32* %.omp.ub, align 4, !dbg !109
  br label %cond.end, !dbg !109

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 98, %cond.true ], [ %9, %cond.false ], !dbg !109
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !109
  %10 = load i32, i32* %.omp.lb, align 4, !dbg !109
  store i32 %10, i32* %.omp.iv, align 4, !dbg !109
  br label %omp.inner.for.cond, !dbg !106

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %11 = load i32, i32* %.omp.iv, align 4, !dbg !109
  %12 = load i32, i32* %.omp.ub, align 4, !dbg !109
  %cmp3 = icmp sle i32 %11, %12, !dbg !106
  br i1 %cmp3, label %omp.inner.for.body, label %omp.inner.for.end, !dbg !106

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %13 = load i32, i32* %.omp.iv, align 4, !dbg !109
  %mul = mul nsw i32 %13, 1, !dbg !114
  %add = add nsw i32 1, %mul, !dbg !114
  store i32 %add, i32* %i, align 4, !dbg !114
  %14 = load i32, i32* %i, align 4, !dbg !115
  %sub = sub nsw i32 %14, 1, !dbg !117
  %idxprom = sext i32 %sub to i64, !dbg !118
  %arrayidx = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 %idxprom, !dbg !118
  %15 = load i32, i32* %arrayidx, align 4, !dbg !118
  %add5 = add nsw i32 %15, 1, !dbg !119
  %16 = load i32, i32* %i, align 4, !dbg !120
  %idxprom6 = sext i32 %16 to i64, !dbg !121
  %arrayidx7 = getelementptr inbounds [100 x i32], [100 x i32]* %2, i64 0, i64 %idxprom6, !dbg !121
  store i32 %add5, i32* %arrayidx7, align 4, !dbg !122
  br label %omp.body.continue, !dbg !123

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !124

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %17 = load i32, i32* %.omp.iv, align 4, !dbg !109
  %add8 = add nsw i32 %17, 1, !dbg !106
  store i32 %add8, i32* %.omp.iv, align 4, !dbg !106
  br label %omp.inner.for.cond, !dbg !124, !llvm.loop !125

omp.inner.for.end:                                ; preds = %omp.inner.for.cond
  br label %omp.loop.exit, !dbg !124

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %18 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !124
  store i8* getelementptr inbounds ([51 x i8], [51 x i8]* @3, i32 0, i32 0), i8** %18, align 8, !dbg !124
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %7), !dbg !124
  ret void, !dbg !127
}

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i64 %.previous.lb., i64 %.previous.ub., [100 x i32]* dereferenceable(400) %var) #2 !dbg !128 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %.previous.lb..addr = alloca i64, align 8
  %.previous.ub..addr = alloca i64, align 8
  %var.addr = alloca [100 x i32]*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !129, metadata !DIExpression()), !dbg !130
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !131, metadata !DIExpression()), !dbg !130
  store i64 %.previous.lb., i64* %.previous.lb..addr, align 8
  call void @llvm.dbg.declare(metadata i64* %.previous.lb..addr, metadata !132, metadata !DIExpression()), !dbg !130
  store i64 %.previous.ub., i64* %.previous.ub..addr, align 8
  call void @llvm.dbg.declare(metadata i64* %.previous.ub..addr, metadata !133, metadata !DIExpression()), !dbg !130
  store [100 x i32]* %var, [100 x i32]** %var.addr, align 8
  call void @llvm.dbg.declare(metadata [100 x i32]** %var.addr, metadata !134, metadata !DIExpression()), !dbg !130
  %0 = load [100 x i32]*, [100 x i32]** %var.addr, align 8, !dbg !135
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !135
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !135
  %3 = load i64, i64* %.previous.lb..addr, align 8, !dbg !135
  %4 = load i64, i64* %.previous.ub..addr, align 8, !dbg !135
  %5 = load [100 x i32]*, [100 x i32]** %var.addr, align 8, !dbg !135
  call void @.omp_outlined._debug__.1(i32* %1, i32* %2, i64 %3, i64 %4, [100 x i32]* %5) #5, !dbg !135
  ret void, !dbg !135
}

declare !callback !136 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined..2(i32* noalias %.global_tid., i32* noalias %.bound_tid., [100 x i32]* dereferenceable(400) %var) #2 !dbg !138 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %var.addr = alloca [100 x i32]*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !139, metadata !DIExpression()), !dbg !140
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !141, metadata !DIExpression()), !dbg !140
  store [100 x i32]* %var, [100 x i32]** %var.addr, align 8
  call void @llvm.dbg.declare(metadata [100 x i32]** %var.addr, metadata !142, metadata !DIExpression()), !dbg !140
  %0 = load [100 x i32]*, [100 x i32]** %var.addr, align 8, !dbg !143
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !143
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !143
  %3 = load [100 x i32]*, [100 x i32]** %var.addr, align 8, !dbg !143
  call void @.omp_outlined._debug__(i32* %1, i32* %2, [100 x i32]* %3) #5, !dbg !143
  ret void, !dbg !143
}

declare !callback !136 dso_local void @__kmpc_fork_teams(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @__omp_offloading_10307_2ec41b5_main_l25([100 x i32]* dereferenceable(400) %var) #2 !dbg !144 {
entry:
  %var.addr = alloca [100 x i32]*, align 8
  store [100 x i32]* %var, [100 x i32]** %var.addr, align 8
  call void @llvm.dbg.declare(metadata [100 x i32]** %var.addr, metadata !145, metadata !DIExpression()), !dbg !146
  %0 = load [100 x i32]*, [100 x i32]** %var.addr, align 8, !dbg !147
  %1 = load [100 x i32]*, [100 x i32]** %var.addr, align 8, !dbg !147
  call void @__omp_offloading_10307_2ec41b5_main_l25_debug__([100 x i32]* %1) #5, !dbg !147
  ret void, !dbg !147
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
!1 = !DIFile(filename: "DRB156-missingordered-orig-gpu-yes.c", directory: "/home/yanze/code/OpenRace/tests/data/integration/dataracebench")
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
!12 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 3200, elements: !13)
!13 = !{!14}
!14 = !DISubrange(count: 100)
!15 = !DILocation(line: 20, column: 7, scope: !7)
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
!27 = !DILocation(line: 22, column: 11, scope: !25)
!28 = !DILocation(line: 23, column: 3, scope: !25)
!29 = !DILocation(line: 21, column: 22, scope: !21)
!30 = !DILocation(line: 21, column: 3, scope: !21)
!31 = distinct !{!31, !23, !32}
!32 = !DILocation(line: 23, column: 3, scope: !17)
!33 = !DILocation(line: 25, column: 3, scope: !34)
!34 = distinct !DILexicalBlock(scope: !7, file: !1, line: 25, column: 3)
!35 = !DILocalVariable(name: "i", scope: !36, file: !1, line: 31, type: !10)
!36 = distinct !DILexicalBlock(scope: !7, file: !1, line: 31, column: 3)
!37 = !DILocation(line: 31, column: 11, scope: !36)
!38 = !DILocation(line: 31, column: 7, scope: !36)
!39 = !DILocation(line: 31, column: 16, scope: !40)
!40 = distinct !DILexicalBlock(scope: !36, file: !1, line: 31, column: 3)
!41 = !DILocation(line: 31, column: 17, scope: !40)
!42 = !DILocation(line: 31, column: 3, scope: !36)
!43 = !DILocation(line: 32, column: 12, scope: !44)
!44 = distinct !DILexicalBlock(scope: !45, file: !1, line: 32, column: 8)
!45 = distinct !DILexicalBlock(scope: !40, file: !1, line: 31, column: 25)
!46 = !DILocation(line: 32, column: 8, scope: !44)
!47 = !DILocation(line: 32, column: 16, scope: !44)
!48 = !DILocation(line: 32, column: 14, scope: !44)
!49 = !DILocation(line: 32, column: 8, scope: !45)
!50 = !DILocation(line: 33, column: 7, scope: !51)
!51 = distinct !DILexicalBlock(scope: !44, file: !1, line: 32, column: 18)
!52 = !DILocation(line: 34, column: 7, scope: !51)
!53 = !DILocation(line: 36, column: 3, scope: !45)
!54 = !DILocation(line: 31, column: 22, scope: !40)
!55 = !DILocation(line: 31, column: 3, scope: !40)
!56 = distinct !{!56, !42, !57}
!57 = !DILocation(line: 36, column: 3, scope: !36)
!58 = !DILocation(line: 37, column: 3, scope: !7)
!59 = !DILocation(line: 38, column: 1, scope: !7)
!60 = distinct !DISubprogram(name: "__omp_offloading_10307_2ec41b5_main_l25_debug__", scope: !1, file: !1, line: 26, type: !61, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!61 = !DISubroutineType(types: !62)
!62 = !{null, !63}
!63 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !12, size: 64)
!64 = !DILocalVariable(name: "var", arg: 1, scope: !60, file: !1, line: 20, type: !63)
!65 = !DILocation(line: 20, column: 7, scope: !60)
!66 = !DILocation(line: 26, column: 3, scope: !60)
!67 = !DILocation(line: 26, column: 44, scope: !60)
!68 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 27, type: !69, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
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
!80 = !DILocation(line: 27, column: 3, scope: !68)
!81 = !DILocalVariable(name: ".omp.iv", scope: !68, type: !10, flags: DIFlagArtificial)
!82 = !DILocalVariable(name: ".omp.comb.lb", scope: !68, type: !10, flags: DIFlagArtificial)
!83 = !DILocation(line: 27, column: 8, scope: !68)
!84 = !DILocalVariable(name: ".omp.comb.ub", scope: !68, type: !10, flags: DIFlagArtificial)
!85 = !DILocalVariable(name: ".omp.stride", scope: !68, type: !10, flags: DIFlagArtificial)
!86 = !DILocalVariable(name: ".omp.is_last", scope: !68, type: !10, flags: DIFlagArtificial)
!87 = !DILocalVariable(name: "i", scope: !68, type: !10, flags: DIFlagArtificial)
!88 = !DILocation(line: 26, column: 3, scope: !68)
!89 = !DILocation(line: 26, column: 44, scope: !90)
!90 = distinct !DILexicalBlock(scope: !68, file: !1, line: 26, column: 3)
!91 = distinct !{!91, !88, !92}
!92 = !DILocation(line: 26, column: 44, scope: !68)
!93 = !DILocation(line: 29, column: 3, scope: !68)
!94 = distinct !DISubprogram(name: ".omp_outlined._debug__.1", scope: !1, file: !1, line: 27, type: !95, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!95 = !DISubroutineType(types: !96)
!96 = !{null, !71, !71, !97, !97, !63}
!97 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !98)
!98 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!99 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !94, type: !71, flags: DIFlagArtificial)
!100 = !DILocation(line: 0, scope: !94)
!101 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !94, type: !71, flags: DIFlagArtificial)
!102 = !DILocalVariable(name: ".previous.lb.", arg: 3, scope: !94, type: !97, flags: DIFlagArtificial)
!103 = !DILocalVariable(name: ".previous.ub.", arg: 4, scope: !94, type: !97, flags: DIFlagArtificial)
!104 = !DILocalVariable(name: "var", arg: 5, scope: !94, file: !1, line: 20, type: !63)
!105 = !DILocation(line: 20, column: 7, scope: !94)
!106 = !DILocation(line: 27, column: 3, scope: !94)
!107 = !DILocalVariable(name: ".omp.iv", scope: !94, type: !10, flags: DIFlagArtificial)
!108 = !DILocalVariable(name: ".omp.lb", scope: !94, type: !10, flags: DIFlagArtificial)
!109 = !DILocation(line: 27, column: 8, scope: !94)
!110 = !DILocalVariable(name: ".omp.ub", scope: !94, type: !10, flags: DIFlagArtificial)
!111 = !DILocalVariable(name: ".omp.stride", scope: !94, type: !10, flags: DIFlagArtificial)
!112 = !DILocalVariable(name: ".omp.is_last", scope: !94, type: !10, flags: DIFlagArtificial)
!113 = !DILocalVariable(name: "i", scope: !94, type: !10, flags: DIFlagArtificial)
!114 = !DILocation(line: 27, column: 22, scope: !94)
!115 = !DILocation(line: 28, column: 16, scope: !116)
!116 = distinct !DILexicalBlock(scope: !94, file: !1, line: 27, column: 26)
!117 = !DILocation(line: 28, column: 17, scope: !116)
!118 = !DILocation(line: 28, column: 12, scope: !116)
!119 = !DILocation(line: 28, column: 20, scope: !116)
!120 = !DILocation(line: 28, column: 9, scope: !116)
!121 = !DILocation(line: 28, column: 5, scope: !116)
!122 = !DILocation(line: 28, column: 11, scope: !116)
!123 = !DILocation(line: 29, column: 3, scope: !116)
!124 = !DILocation(line: 26, column: 3, scope: !94)
!125 = distinct !{!125, !124, !126}
!126 = !DILocation(line: 26, column: 44, scope: !94)
!127 = !DILocation(line: 29, column: 3, scope: !94)
!128 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 27, type: !95, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!129 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !128, type: !71, flags: DIFlagArtificial)
!130 = !DILocation(line: 0, scope: !128)
!131 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !128, type: !71, flags: DIFlagArtificial)
!132 = !DILocalVariable(name: ".previous.lb.", arg: 3, scope: !128, type: !97, flags: DIFlagArtificial)
!133 = !DILocalVariable(name: ".previous.ub.", arg: 4, scope: !128, type: !97, flags: DIFlagArtificial)
!134 = !DILocalVariable(name: "var", arg: 5, scope: !128, type: !63, flags: DIFlagArtificial)
!135 = !DILocation(line: 27, column: 3, scope: !128)
!136 = !{!137}
!137 = !{i64 2, i64 -1, i64 -1, i1 true}
!138 = distinct !DISubprogram(name: ".omp_outlined..2", scope: !1, file: !1, line: 27, type: !69, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!139 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !138, type: !71, flags: DIFlagArtificial)
!140 = !DILocation(line: 0, scope: !138)
!141 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !138, type: !71, flags: DIFlagArtificial)
!142 = !DILocalVariable(name: "var", arg: 3, scope: !138, type: !63, flags: DIFlagArtificial)
!143 = !DILocation(line: 27, column: 3, scope: !138)
!144 = distinct !DISubprogram(name: "__omp_offloading_10307_2ec41b5_main_l25", scope: !1, file: !1, line: 26, type: !61, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!145 = !DILocalVariable(name: "var", arg: 1, scope: !144, type: !63, flags: DIFlagArtificial)
!146 = !DILocation(line: 0, scope: !144)
!147 = !DILocation(line: 26, column: 3, scope: !144)
