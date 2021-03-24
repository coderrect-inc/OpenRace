; ModuleID = 'DRB113-default-orig-no.c'
source_filename = "DRB113-default-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [38 x i8] c";DRB113-default-orig-no.c;main;58;1;;\00", align 1
@2 = private unnamed_addr constant [39 x i8] c";DRB113-default-orig-no.c;main;58;62;;\00", align 1
@a = common dso_local global [100 x [100 x i32]] zeroinitializer, align 16, !dbg !0
@3 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@4 = private unnamed_addr constant [38 x i8] c";DRB113-default-orig-no.c;main;63;1;;\00", align 1
@b = common dso_local global [100 x [100 x i32]] zeroinitializer, align 16, !dbg !6
@5 = private unnamed_addr constant [39 x i8] c";DRB113-default-orig-no.c;main;63;54;;\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !16 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata i32* %i, metadata !19, metadata !DIExpression()), !dbg !20
  call void @llvm.dbg.declare(metadata i32* %j, metadata !21, metadata !DIExpression()), !dbg !22
  %2 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !23
  store i8* getelementptr inbounds ([38 x i8], [38 x i8]* @1, i32 0, i32 0), i8** %2, align 8, !dbg !23
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, [100 x [100 x i32]]*)* @.omp_outlined. to void (i32*, i32*, ...)*), [100 x [100 x i32]]* @a), !dbg !23
  %3 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !24
  store i8* getelementptr inbounds ([38 x i8], [38 x i8]* @4, i32 0, i32 0), i8** %3, align 8, !dbg !24
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 0, void (i32*, i32*, ...)* bitcast (void (i32*, i32*)* @.omp_outlined..2 to void (i32*, i32*, ...)*)), !dbg !24
  ret i32 0, !dbg !25
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., [100 x [100 x i32]]* dereferenceable(40000) %a) #2 !dbg !26 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %a.addr = alloca [100 x [100 x i32]]*, align 8
  %.omp.iv = alloca i32, align 4
  %tmp = alloca i32, align 4
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %i1 = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !34, metadata !DIExpression()), !dbg !35
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !36, metadata !DIExpression()), !dbg !35
  store [100 x [100 x i32]]* %a, [100 x [100 x i32]]** %a.addr, align 8
  call void @llvm.dbg.declare(metadata [100 x [100 x i32]]** %a.addr, metadata !37, metadata !DIExpression()), !dbg !38
  %2 = load [100 x [100 x i32]]*, [100 x [100 x i32]]** %a.addr, align 8, !dbg !39
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !40, metadata !DIExpression()), !dbg !35
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !41, metadata !DIExpression()), !dbg !35
  store i32 0, i32* %.omp.lb, align 4, !dbg !42
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !43, metadata !DIExpression()), !dbg !35
  store i32 99, i32* %.omp.ub, align 4, !dbg !42
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !44, metadata !DIExpression()), !dbg !35
  store i32 1, i32* %.omp.stride, align 4, !dbg !42
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !45, metadata !DIExpression()), !dbg !35
  store i32 0, i32* %.omp.is_last, align 4, !dbg !42
  call void @llvm.dbg.declare(metadata i32* %i, metadata !46, metadata !DIExpression()), !dbg !35
  call void @llvm.dbg.declare(metadata i32* %j, metadata !47, metadata !DIExpression()), !dbg !35
  call void @llvm.dbg.declare(metadata i32* %i1, metadata !46, metadata !DIExpression()), !dbg !35
  %3 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !39
  store i8* getelementptr inbounds ([38 x i8], [38 x i8]* @1, i32 0, i32 0), i8** %3, align 8, !dbg !39
  %4 = load i32*, i32** %.global_tid..addr, align 8, !dbg !39
  %5 = load i32, i32* %4, align 4, !dbg !39
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %5, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !39
  %6 = load i32, i32* %.omp.ub, align 4, !dbg !42
  %cmp = icmp sgt i32 %6, 99, !dbg !42
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !42

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !42

cond.false:                                       ; preds = %entry
  %7 = load i32, i32* %.omp.ub, align 4, !dbg !42
  br label %cond.end, !dbg !42

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 99, %cond.true ], [ %7, %cond.false ], !dbg !42
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !42
  %8 = load i32, i32* %.omp.lb, align 4, !dbg !42
  store i32 %8, i32* %.omp.iv, align 4, !dbg !42
  br label %omp.inner.for.cond, !dbg !39

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %9 = load i32, i32* %.omp.iv, align 4, !dbg !42
  %10 = load i32, i32* %.omp.ub, align 4, !dbg !42
  %cmp2 = icmp sle i32 %9, %10, !dbg !39
  br i1 %cmp2, label %omp.inner.for.body, label %omp.inner.for.end, !dbg !39

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %11 = load i32, i32* %.omp.iv, align 4, !dbg !42
  %mul = mul nsw i32 %11, 1, !dbg !48
  %add = add nsw i32 0, %mul, !dbg !48
  store i32 %add, i32* %i, align 4, !dbg !48
  store i32 0, i32* %j, align 4, !dbg !49
  br label %for.cond, !dbg !51

for.cond:                                         ; preds = %for.inc, %omp.inner.for.body
  %12 = load i32, i32* %j, align 4, !dbg !52
  %cmp3 = icmp slt i32 %12, 100, !dbg !54
  br i1 %cmp3, label %for.body, label %for.end, !dbg !55

for.body:                                         ; preds = %for.cond
  %13 = load i32, i32* %i, align 4, !dbg !56
  %idxprom = sext i32 %13 to i64, !dbg !57
  %arrayidx = getelementptr inbounds [100 x [100 x i32]], [100 x [100 x i32]]* %2, i64 0, i64 %idxprom, !dbg !57
  %14 = load i32, i32* %j, align 4, !dbg !58
  %idxprom4 = sext i32 %14 to i64, !dbg !57
  %arrayidx5 = getelementptr inbounds [100 x i32], [100 x i32]* %arrayidx, i64 0, i64 %idxprom4, !dbg !57
  %15 = load i32, i32* %arrayidx5, align 4, !dbg !57
  %add6 = add nsw i32 %15, 1, !dbg !59
  %16 = load i32, i32* %i, align 4, !dbg !60
  %idxprom7 = sext i32 %16 to i64, !dbg !61
  %arrayidx8 = getelementptr inbounds [100 x [100 x i32]], [100 x [100 x i32]]* %2, i64 0, i64 %idxprom7, !dbg !61
  %17 = load i32, i32* %j, align 4, !dbg !62
  %idxprom9 = sext i32 %17 to i64, !dbg !61
  %arrayidx10 = getelementptr inbounds [100 x i32], [100 x i32]* %arrayidx8, i64 0, i64 %idxprom9, !dbg !61
  store i32 %add6, i32* %arrayidx10, align 4, !dbg !63
  br label %for.inc, !dbg !61

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %j, align 4, !dbg !64
  %inc = add nsw i32 %18, 1, !dbg !64
  store i32 %inc, i32* %j, align 4, !dbg !64
  br label %for.cond, !dbg !65, !llvm.loop !66

for.end:                                          ; preds = %for.cond
  br label %omp.body.continue, !dbg !67

omp.body.continue:                                ; preds = %for.end
  br label %omp.inner.for.inc, !dbg !68

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %19 = load i32, i32* %.omp.iv, align 4, !dbg !42
  %add11 = add nsw i32 %19, 1, !dbg !39
  store i32 %add11, i32* %.omp.iv, align 4, !dbg !39
  br label %omp.inner.for.cond, !dbg !68, !llvm.loop !69

omp.inner.for.end:                                ; preds = %omp.inner.for.cond
  br label %omp.loop.exit, !dbg !68

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %20 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !68
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @2, i32 0, i32 0), i8** %20, align 8, !dbg !68
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %5), !dbg !68
  ret void, !dbg !71
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., [100 x [100 x i32]]* dereferenceable(40000) %a) #2 !dbg !72 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %a.addr = alloca [100 x [100 x i32]]*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !73, metadata !DIExpression()), !dbg !74
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !75, metadata !DIExpression()), !dbg !74
  store [100 x [100 x i32]]* %a, [100 x [100 x i32]]** %a.addr, align 8
  call void @llvm.dbg.declare(metadata [100 x [100 x i32]]** %a.addr, metadata !76, metadata !DIExpression()), !dbg !74
  %0 = load [100 x [100 x i32]]*, [100 x [100 x i32]]** %a.addr, align 8, !dbg !77
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !77
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !77
  %3 = load [100 x [100 x i32]]*, [100 x [100 x i32]]** %a.addr, align 8, !dbg !77
  call void @.omp_outlined._debug__(i32* %1, i32* %2, [100 x [100 x i32]]* %3) #4, !dbg !77
  ret void, !dbg !77
}

declare !callback !78 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined._debug__.1(i32* noalias %.global_tid., i32* noalias %.bound_tid.) #2 !dbg !80 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %.omp.iv = alloca i32, align 4
  %tmp = alloca i32, align 4
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %i1 = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !83, metadata !DIExpression()), !dbg !84
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !85, metadata !DIExpression()), !dbg !84
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !86, metadata !DIExpression()), !dbg !84
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !87, metadata !DIExpression()), !dbg !84
  store i32 0, i32* %.omp.lb, align 4, !dbg !88
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !89, metadata !DIExpression()), !dbg !84
  store i32 99, i32* %.omp.ub, align 4, !dbg !88
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !90, metadata !DIExpression()), !dbg !84
  store i32 1, i32* %.omp.stride, align 4, !dbg !88
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !91, metadata !DIExpression()), !dbg !84
  store i32 0, i32* %.omp.is_last, align 4, !dbg !88
  call void @llvm.dbg.declare(metadata i32* %i, metadata !92, metadata !DIExpression()), !dbg !84
  call void @llvm.dbg.declare(metadata i32* %j, metadata !93, metadata !DIExpression()), !dbg !84
  call void @llvm.dbg.declare(metadata i32* %i1, metadata !92, metadata !DIExpression()), !dbg !84
  %2 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !94
  store i8* getelementptr inbounds ([38 x i8], [38 x i8]* @4, i32 0, i32 0), i8** %2, align 8, !dbg !94
  %3 = load i32*, i32** %.global_tid..addr, align 8, !dbg !94
  %4 = load i32, i32* %3, align 4, !dbg !94
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %4, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !94
  %5 = load i32, i32* %.omp.ub, align 4, !dbg !88
  %cmp = icmp sgt i32 %5, 99, !dbg !88
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !88

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !88

cond.false:                                       ; preds = %entry
  %6 = load i32, i32* %.omp.ub, align 4, !dbg !88
  br label %cond.end, !dbg !88

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 99, %cond.true ], [ %6, %cond.false ], !dbg !88
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !88
  %7 = load i32, i32* %.omp.lb, align 4, !dbg !88
  store i32 %7, i32* %.omp.iv, align 4, !dbg !88
  br label %omp.inner.for.cond, !dbg !94

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %8 = load i32, i32* %.omp.iv, align 4, !dbg !88
  %9 = load i32, i32* %.omp.ub, align 4, !dbg !88
  %cmp2 = icmp sle i32 %8, %9, !dbg !94
  br i1 %cmp2, label %omp.inner.for.body, label %omp.inner.for.end, !dbg !94

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %10 = load i32, i32* %.omp.iv, align 4, !dbg !88
  %mul = mul nsw i32 %10, 1, !dbg !95
  %add = add nsw i32 0, %mul, !dbg !95
  store i32 %add, i32* %i, align 4, !dbg !95
  store i32 0, i32* %j, align 4, !dbg !96
  br label %for.cond, !dbg !98

for.cond:                                         ; preds = %for.inc, %omp.inner.for.body
  %11 = load i32, i32* %j, align 4, !dbg !99
  %cmp3 = icmp slt i32 %11, 100, !dbg !101
  br i1 %cmp3, label %for.body, label %for.end, !dbg !102

for.body:                                         ; preds = %for.cond
  %12 = load i32, i32* %i, align 4, !dbg !103
  %idxprom = sext i32 %12 to i64, !dbg !104
  %arrayidx = getelementptr inbounds [100 x [100 x i32]], [100 x [100 x i32]]* @b, i64 0, i64 %idxprom, !dbg !104
  %13 = load i32, i32* %j, align 4, !dbg !105
  %idxprom4 = sext i32 %13 to i64, !dbg !104
  %arrayidx5 = getelementptr inbounds [100 x i32], [100 x i32]* %arrayidx, i64 0, i64 %idxprom4, !dbg !104
  %14 = load i32, i32* %arrayidx5, align 4, !dbg !104
  %add6 = add nsw i32 %14, 1, !dbg !106
  %15 = load i32, i32* %i, align 4, !dbg !107
  %idxprom7 = sext i32 %15 to i64, !dbg !108
  %arrayidx8 = getelementptr inbounds [100 x [100 x i32]], [100 x [100 x i32]]* @b, i64 0, i64 %idxprom7, !dbg !108
  %16 = load i32, i32* %j, align 4, !dbg !109
  %idxprom9 = sext i32 %16 to i64, !dbg !108
  %arrayidx10 = getelementptr inbounds [100 x i32], [100 x i32]* %arrayidx8, i64 0, i64 %idxprom9, !dbg !108
  store i32 %add6, i32* %arrayidx10, align 4, !dbg !110
  br label %for.inc, !dbg !108

for.inc:                                          ; preds = %for.body
  %17 = load i32, i32* %j, align 4, !dbg !111
  %inc = add nsw i32 %17, 1, !dbg !111
  store i32 %inc, i32* %j, align 4, !dbg !111
  br label %for.cond, !dbg !112, !llvm.loop !113

for.end:                                          ; preds = %for.cond
  br label %omp.body.continue, !dbg !114

omp.body.continue:                                ; preds = %for.end
  br label %omp.inner.for.inc, !dbg !115

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %18 = load i32, i32* %.omp.iv, align 4, !dbg !88
  %add11 = add nsw i32 %18, 1, !dbg !94
  store i32 %add11, i32* %.omp.iv, align 4, !dbg !94
  br label %omp.inner.for.cond, !dbg !115, !llvm.loop !116

omp.inner.for.end:                                ; preds = %omp.inner.for.cond
  br label %omp.loop.exit, !dbg !115

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %19 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !115
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @5, i32 0, i32 0), i8** %19, align 8, !dbg !115
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %4), !dbg !115
  ret void, !dbg !118
}

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined..2(i32* noalias %.global_tid., i32* noalias %.bound_tid.) #2 !dbg !119 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !120, metadata !DIExpression()), !dbg !121
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !122, metadata !DIExpression()), !dbg !121
  %0 = load i32*, i32** %.global_tid..addr, align 8, !dbg !123
  %1 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !123
  call void @.omp_outlined._debug__.1(i32* %0, i32* %1) #4, !dbg !123
  ret void, !dbg !123
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noinline norecurse nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!12, !13, !14}
!llvm.ident = !{!15}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "a", scope: !2, file: !3, line: 53, type: !8, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.1 ", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "DRB113-default-orig-no.c", directory: "/home/yanze/code/OpenRace/tests/data/integration/dataracebench")
!4 = !{}
!5 = !{!0, !6}
!6 = !DIGlobalVariableExpression(var: !7, expr: !DIExpression())
!7 = distinct !DIGlobalVariable(name: "b", scope: !2, file: !3, line: 54, type: !8, isLocal: false, isDefinition: true)
!8 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 320000, elements: !10)
!9 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!10 = !{!11, !11}
!11 = !DISubrange(count: 100)
!12 = !{i32 7, !"Dwarf Version", i32 4}
!13 = !{i32 2, !"Debug Info Version", i32 3}
!14 = !{i32 1, !"wchar_size", i32 4}
!15 = !{!"clang version 10.0.1 "}
!16 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 55, type: !17, scopeLine: 56, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !4)
!17 = !DISubroutineType(types: !18)
!18 = !{!9}
!19 = !DILocalVariable(name: "i", scope: !16, file: !3, line: 57, type: !9)
!20 = !DILocation(line: 57, column: 7, scope: !16)
!21 = !DILocalVariable(name: "j", scope: !16, file: !3, line: 57, type: !9)
!22 = !DILocation(line: 57, column: 9, scope: !16)
!23 = !DILocation(line: 58, column: 1, scope: !16)
!24 = !DILocation(line: 63, column: 1, scope: !16)
!25 = !DILocation(line: 68, column: 3, scope: !16)
!26 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !3, file: !3, line: 59, type: !27, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!27 = !DISubroutineType(types: !28)
!28 = !{null, !29, !29, !33}
!29 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!30 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !31)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!33 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !8, size: 64)
!34 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !26, type: !29, flags: DIFlagArtificial)
!35 = !DILocation(line: 0, scope: !26)
!36 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !26, type: !29, flags: DIFlagArtificial)
!37 = !DILocalVariable(name: "a", arg: 3, scope: !26, file: !3, line: 53, type: !33)
!38 = !DILocation(line: 53, column: 5, scope: !26)
!39 = !DILocation(line: 59, column: 3, scope: !26)
!40 = !DILocalVariable(name: ".omp.iv", scope: !26, type: !9, flags: DIFlagArtificial)
!41 = !DILocalVariable(name: ".omp.lb", scope: !26, type: !9, flags: DIFlagArtificial)
!42 = !DILocation(line: 59, column: 8, scope: !26)
!43 = !DILocalVariable(name: ".omp.ub", scope: !26, type: !9, flags: DIFlagArtificial)
!44 = !DILocalVariable(name: ".omp.stride", scope: !26, type: !9, flags: DIFlagArtificial)
!45 = !DILocalVariable(name: ".omp.is_last", scope: !26, type: !9, flags: DIFlagArtificial)
!46 = !DILocalVariable(name: "i", scope: !26, type: !9, flags: DIFlagArtificial)
!47 = !DILocalVariable(name: "j", scope: !26, type: !9, flags: DIFlagArtificial)
!48 = !DILocation(line: 59, column: 18, scope: !26)
!49 = !DILocation(line: 60, column: 11, scope: !50)
!50 = distinct !DILexicalBlock(scope: !26, file: !3, line: 60, column: 5)
!51 = !DILocation(line: 60, column: 10, scope: !50)
!52 = !DILocation(line: 60, column: 14, scope: !53)
!53 = distinct !DILexicalBlock(scope: !50, file: !3, line: 60, column: 5)
!54 = !DILocation(line: 60, column: 15, scope: !53)
!55 = !DILocation(line: 60, column: 5, scope: !50)
!56 = !DILocation(line: 61, column: 17, scope: !53)
!57 = !DILocation(line: 61, column: 15, scope: !53)
!58 = !DILocation(line: 61, column: 20, scope: !53)
!59 = !DILocation(line: 61, column: 22, scope: !53)
!60 = !DILocation(line: 61, column: 9, scope: !53)
!61 = !DILocation(line: 61, column: 7, scope: !53)
!62 = !DILocation(line: 61, column: 12, scope: !53)
!63 = !DILocation(line: 61, column: 14, scope: !53)
!64 = !DILocation(line: 60, column: 21, scope: !53)
!65 = !DILocation(line: 60, column: 5, scope: !53)
!66 = distinct !{!66, !55, !67}
!67 = !DILocation(line: 61, column: 23, scope: !50)
!68 = !DILocation(line: 58, column: 1, scope: !26)
!69 = distinct !{!69, !68, !70}
!70 = !DILocation(line: 58, column: 62, scope: !26)
!71 = !DILocation(line: 61, column: 23, scope: !26)
!72 = distinct !DISubprogram(name: ".omp_outlined.", scope: !3, file: !3, line: 59, type: !27, scopeLine: 59, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!73 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !72, type: !29, flags: DIFlagArtificial)
!74 = !DILocation(line: 0, scope: !72)
!75 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !72, type: !29, flags: DIFlagArtificial)
!76 = !DILocalVariable(name: "a", arg: 3, scope: !72, type: !33, flags: DIFlagArtificial)
!77 = !DILocation(line: 59, column: 3, scope: !72)
!78 = !{!79}
!79 = !{i64 2, i64 -1, i64 -1, i1 true}
!80 = distinct !DISubprogram(name: ".omp_outlined._debug__.1", scope: !3, file: !3, line: 64, type: !81, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!81 = !DISubroutineType(types: !82)
!82 = !{null, !29, !29}
!83 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !80, type: !29, flags: DIFlagArtificial)
!84 = !DILocation(line: 0, scope: !80)
!85 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !80, type: !29, flags: DIFlagArtificial)
!86 = !DILocalVariable(name: ".omp.iv", scope: !80, type: !9, flags: DIFlagArtificial)
!87 = !DILocalVariable(name: ".omp.lb", scope: !80, type: !9, flags: DIFlagArtificial)
!88 = !DILocation(line: 64, column: 8, scope: !80)
!89 = !DILocalVariable(name: ".omp.ub", scope: !80, type: !9, flags: DIFlagArtificial)
!90 = !DILocalVariable(name: ".omp.stride", scope: !80, type: !9, flags: DIFlagArtificial)
!91 = !DILocalVariable(name: ".omp.is_last", scope: !80, type: !9, flags: DIFlagArtificial)
!92 = !DILocalVariable(name: "i", scope: !80, type: !9, flags: DIFlagArtificial)
!93 = !DILocalVariable(name: "j", scope: !80, type: !9, flags: DIFlagArtificial)
!94 = !DILocation(line: 64, column: 3, scope: !80)
!95 = !DILocation(line: 64, column: 18, scope: !80)
!96 = !DILocation(line: 65, column: 11, scope: !97)
!97 = distinct !DILexicalBlock(scope: !80, file: !3, line: 65, column: 5)
!98 = !DILocation(line: 65, column: 10, scope: !97)
!99 = !DILocation(line: 65, column: 14, scope: !100)
!100 = distinct !DILexicalBlock(scope: !97, file: !3, line: 65, column: 5)
!101 = !DILocation(line: 65, column: 15, scope: !100)
!102 = !DILocation(line: 65, column: 5, scope: !97)
!103 = !DILocation(line: 66, column: 17, scope: !100)
!104 = !DILocation(line: 66, column: 15, scope: !100)
!105 = !DILocation(line: 66, column: 20, scope: !100)
!106 = !DILocation(line: 66, column: 22, scope: !100)
!107 = !DILocation(line: 66, column: 9, scope: !100)
!108 = !DILocation(line: 66, column: 7, scope: !100)
!109 = !DILocation(line: 66, column: 12, scope: !100)
!110 = !DILocation(line: 66, column: 14, scope: !100)
!111 = !DILocation(line: 65, column: 21, scope: !100)
!112 = !DILocation(line: 65, column: 5, scope: !100)
!113 = distinct !{!113, !102, !114}
!114 = !DILocation(line: 66, column: 23, scope: !97)
!115 = !DILocation(line: 63, column: 1, scope: !80)
!116 = distinct !{!116, !115, !117}
!117 = !DILocation(line: 63, column: 54, scope: !80)
!118 = !DILocation(line: 66, column: 23, scope: !80)
!119 = distinct !DISubprogram(name: ".omp_outlined..2", scope: !3, file: !3, line: 64, type: !81, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !4)
!120 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !119, type: !29, flags: DIFlagArtificial)
!121 = !DILocation(line: 0, scope: !119)
!122 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !119, type: !29, flags: DIFlagArtificial)
!123 = !DILocation(line: 64, column: 3, scope: !119)
