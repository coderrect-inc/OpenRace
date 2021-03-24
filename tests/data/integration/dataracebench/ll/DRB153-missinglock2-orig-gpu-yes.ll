; ModuleID = 'DRB153-missinglock2-orig-gpu-yes.c'
source_filename = "DRB153-missinglock2-orig-gpu-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 2050, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [48 x i8] c";DRB153-missinglock2-orig-gpu-yes.c;main;26;3;;\00", align 1
@2 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@3 = private unnamed_addr constant [49 x i8] c";DRB153-missinglock2-orig-gpu-yes.c;main;26;38;;\00", align 1
@4 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@5 = private unnamed_addr constant [48 x i8] c";DRB153-missinglock2-orig-gpu-yes.c;main;25;3;;\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"%d\0A \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 !dbg !7 {
entry:
  %retval = alloca i32, align 4
  %var = alloca i32, align 4
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata i32* %var, metadata !11, metadata !DIExpression()), !dbg !12
  store i32 0, i32* %var, align 4, !dbg !12
  call void @__omp_offloading_10307_2ec41b2_main_l24(i32* %var) #5, !dbg !13
  %0 = load i32, i32* %var, align 4, !dbg !15
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %0), !dbg !16
  ret i32 0, !dbg !17
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @__omp_offloading_10307_2ec41b2_main_l24_debug__(i32* dereferenceable(4) %var) #2 !dbg !18 {
entry:
  %var.addr = alloca i32*, align 8
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  %2 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4
  store i8* getelementptr inbounds ([48 x i8], [48 x i8]* @5, i32 0, i32 0), i8** %2, align 8
  %3 = call i32 @__kmpc_global_thread_num(%struct.ident_t* %.kmpc_loc.addr)
  store i32* %var, i32** %var.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %var.addr, metadata !22, metadata !DIExpression()), !dbg !23
  %4 = load i32*, i32** %var.addr, align 8, !dbg !24
  %5 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !24
  store i8* getelementptr inbounds ([48 x i8], [48 x i8]* @5, i32 0, i32 0), i8** %5, align 8, !dbg !24
  %6 = call i32 @__kmpc_push_num_teams(%struct.ident_t* %.kmpc_loc.addr, i32 %3, i32 1, i32 0), !dbg !24
  %7 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !24
  store i8* getelementptr inbounds ([48 x i8], [48 x i8]* @5, i32 0, i32 0), i8** %7, align 8, !dbg !24
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_teams(%struct.ident_t* %.kmpc_loc.addr, i32 1, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*)* @.omp_outlined..2 to void (i32*, i32*, ...)*), i32* %4), !dbg !24
  ret void, !dbg !25
}

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %var) #2 !dbg !26 {
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
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !33, metadata !DIExpression()), !dbg !34
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !35, metadata !DIExpression()), !dbg !34
  store i32* %var, i32** %var.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %var.addr, metadata !36, metadata !DIExpression()), !dbg !37
  %2 = load i32*, i32** %var.addr, align 8, !dbg !38
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !39, metadata !DIExpression()), !dbg !41
  call void @llvm.dbg.declare(metadata i32* %.omp.comb.lb, metadata !42, metadata !DIExpression()), !dbg !41
  store i32 0, i32* %.omp.comb.lb, align 4, !dbg !43
  call void @llvm.dbg.declare(metadata i32* %.omp.comb.ub, metadata !44, metadata !DIExpression()), !dbg !41
  store i32 99, i32* %.omp.comb.ub, align 4, !dbg !43
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !45, metadata !DIExpression()), !dbg !41
  store i32 1, i32* %.omp.stride, align 4, !dbg !43
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !46, metadata !DIExpression()), !dbg !41
  store i32 0, i32* %.omp.is_last, align 4, !dbg !43
  call void @llvm.dbg.declare(metadata i32* %i, metadata !47, metadata !DIExpression()), !dbg !41
  %3 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !38
  store i8* getelementptr inbounds ([48 x i8], [48 x i8]* @1, i32 0, i32 0), i8** %3, align 8, !dbg !38
  %4 = load i32*, i32** %.global_tid..addr, align 8, !dbg !38
  %5 = load i32, i32* %4, align 4, !dbg !38
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %5, i32 92, i32* %.omp.is_last, i32* %.omp.comb.lb, i32* %.omp.comb.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !38
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
  br label %omp.inner.for.cond, !dbg !38

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %9 = load i32, i32* %.omp.iv, align 4, !dbg !43
  %10 = load i32, i32* %.omp.comb.ub, align 4, !dbg !43
  %cmp1 = icmp sle i32 %9, %10, !dbg !48
  br i1 %cmp1, label %omp.inner.for.body, label %omp.inner.for.end, !dbg !38

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %11 = load i32, i32* %.omp.comb.lb, align 4, !dbg !49
  %12 = zext i32 %11 to i64, !dbg !49
  %13 = load i32, i32* %.omp.comb.ub, align 4, !dbg !49
  %14 = zext i32 %13 to i64, !dbg !49
  %15 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !49
  store i8* getelementptr inbounds ([48 x i8], [48 x i8]* @1, i32 0, i32 0), i8** %15, align 8, !dbg !49
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i64, i64, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i64 %12, i64 %14, i32* %2), !dbg !49
  br label %omp.inner.for.inc, !dbg !50

omp.inner.for.inc:                                ; preds = %omp.inner.for.body
  %16 = load i32, i32* %.omp.iv, align 4, !dbg !43
  %17 = load i32, i32* %.omp.stride, align 4, !dbg !43
  %add = add nsw i32 %16, %17, !dbg !48
  store i32 %add, i32* %.omp.iv, align 4, !dbg !48
  br label %omp.inner.for.cond, !dbg !50, !llvm.loop !52

omp.inner.for.end:                                ; preds = %omp.inner.for.cond
  br label %omp.loop.exit, !dbg !50

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %18 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !50
  store i8* getelementptr inbounds ([48 x i8], [48 x i8]* @1, i32 0, i32 0), i8** %18, align 8, !dbg !50
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %5), !dbg !50
  ret void, !dbg !54
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined._debug__.1(i32* noalias %.global_tid., i32* noalias %.bound_tid., i64 %.previous.lb., i64 %.previous.ub., i32* dereferenceable(4) %var) #2 !dbg !55 {
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
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !60, metadata !DIExpression()), !dbg !61
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !62, metadata !DIExpression()), !dbg !61
  store i64 %.previous.lb., i64* %.previous.lb..addr, align 8
  call void @llvm.dbg.declare(metadata i64* %.previous.lb..addr, metadata !63, metadata !DIExpression()), !dbg !61
  store i64 %.previous.ub., i64* %.previous.ub..addr, align 8
  call void @llvm.dbg.declare(metadata i64* %.previous.ub..addr, metadata !64, metadata !DIExpression()), !dbg !61
  store i32* %var, i32** %var.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %var.addr, metadata !65, metadata !DIExpression()), !dbg !66
  %2 = load i32*, i32** %var.addr, align 8, !dbg !67
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !68, metadata !DIExpression()), !dbg !61
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !69, metadata !DIExpression()), !dbg !61
  store i32 0, i32* %.omp.lb, align 4, !dbg !70
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !71, metadata !DIExpression()), !dbg !61
  store i32 99, i32* %.omp.ub, align 4, !dbg !70
  %3 = load i64, i64* %.previous.lb..addr, align 8, !dbg !67
  %conv = trunc i64 %3 to i32, !dbg !67
  %4 = load i64, i64* %.previous.ub..addr, align 8, !dbg !67
  %conv1 = trunc i64 %4 to i32, !dbg !67
  store i32 %conv, i32* %.omp.lb, align 4, !dbg !67
  store i32 %conv1, i32* %.omp.ub, align 4, !dbg !67
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !72, metadata !DIExpression()), !dbg !61
  store i32 1, i32* %.omp.stride, align 4, !dbg !70
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !73, metadata !DIExpression()), !dbg !61
  store i32 0, i32* %.omp.is_last, align 4, !dbg !70
  call void @llvm.dbg.declare(metadata i32* %i, metadata !74, metadata !DIExpression()), !dbg !61
  %5 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !67
  store i8* getelementptr inbounds ([48 x i8], [48 x i8]* @1, i32 0, i32 0), i8** %5, align 8, !dbg !67
  %6 = load i32*, i32** %.global_tid..addr, align 8, !dbg !67
  %7 = load i32, i32* %6, align 4, !dbg !67
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %7, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !67
  %8 = load i32, i32* %.omp.ub, align 4, !dbg !70
  %cmp = icmp sgt i32 %8, 99, !dbg !70
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !70

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !70

cond.false:                                       ; preds = %entry
  %9 = load i32, i32* %.omp.ub, align 4, !dbg !70
  br label %cond.end, !dbg !70

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 99, %cond.true ], [ %9, %cond.false ], !dbg !70
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !70
  %10 = load i32, i32* %.omp.lb, align 4, !dbg !70
  store i32 %10, i32* %.omp.iv, align 4, !dbg !70
  br label %omp.inner.for.cond, !dbg !67

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %11 = load i32, i32* %.omp.iv, align 4, !dbg !70
  %12 = load i32, i32* %.omp.ub, align 4, !dbg !70
  %cmp3 = icmp sle i32 %11, %12, !dbg !67
  br i1 %cmp3, label %omp.inner.for.body, label %omp.inner.for.end, !dbg !67

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %13 = load i32, i32* %.omp.iv, align 4, !dbg !70
  %mul = mul nsw i32 %13, 1, !dbg !75
  %add = add nsw i32 0, %mul, !dbg !75
  store i32 %add, i32* %i, align 4, !dbg !75
  %14 = load i32, i32* %2, align 4, !dbg !76
  %inc = add nsw i32 %14, 1, !dbg !76
  store i32 %inc, i32* %2, align 4, !dbg !76
  br label %omp.body.continue, !dbg !78

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !79

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %15 = load i32, i32* %.omp.iv, align 4, !dbg !70
  %add5 = add nsw i32 %15, 1, !dbg !67
  store i32 %add5, i32* %.omp.iv, align 4, !dbg !67
  br label %omp.inner.for.cond, !dbg !79, !llvm.loop !80

omp.inner.for.end:                                ; preds = %omp.inner.for.cond
  br label %omp.loop.exit, !dbg !79

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %16 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !79
  store i8* getelementptr inbounds ([49 x i8], [49 x i8]* @3, i32 0, i32 0), i8** %16, align 8, !dbg !79
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %7), !dbg !79
  ret void, !dbg !82
}

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i64 %.previous.lb., i64 %.previous.ub., i32* dereferenceable(4) %var) #2 !dbg !83 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %.previous.lb..addr = alloca i64, align 8
  %.previous.ub..addr = alloca i64, align 8
  %var.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !84, metadata !DIExpression()), !dbg !85
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !86, metadata !DIExpression()), !dbg !85
  store i64 %.previous.lb., i64* %.previous.lb..addr, align 8
  call void @llvm.dbg.declare(metadata i64* %.previous.lb..addr, metadata !87, metadata !DIExpression()), !dbg !85
  store i64 %.previous.ub., i64* %.previous.ub..addr, align 8
  call void @llvm.dbg.declare(metadata i64* %.previous.ub..addr, metadata !88, metadata !DIExpression()), !dbg !85
  store i32* %var, i32** %var.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %var.addr, metadata !89, metadata !DIExpression()), !dbg !85
  %0 = load i32*, i32** %var.addr, align 8, !dbg !90
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !90
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !90
  %3 = load i64, i64* %.previous.lb..addr, align 8, !dbg !90
  %4 = load i64, i64* %.previous.ub..addr, align 8, !dbg !90
  %5 = load i32*, i32** %var.addr, align 8, !dbg !90
  call void @.omp_outlined._debug__.1(i32* %1, i32* %2, i64 %3, i64 %4, i32* %5) #5, !dbg !90
  ret void, !dbg !90
}

declare !callback !91 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined..2(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %var) #2 !dbg !93 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %var.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !94, metadata !DIExpression()), !dbg !95
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !96, metadata !DIExpression()), !dbg !95
  store i32* %var, i32** %var.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %var.addr, metadata !97, metadata !DIExpression()), !dbg !95
  %0 = load i32*, i32** %var.addr, align 8, !dbg !98
  %1 = load i32*, i32** %.global_tid..addr, align 8, !dbg !98
  %2 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !98
  %3 = load i32*, i32** %var.addr, align 8, !dbg !98
  call void @.omp_outlined._debug__(i32* %1, i32* %2, i32* %3) #5, !dbg !98
  ret void, !dbg !98
}

declare dso_local i32 @__kmpc_global_thread_num(%struct.ident_t*)

declare dso_local i32 @__kmpc_push_num_teams(%struct.ident_t*, i32, i32, i32)

declare !callback !91 dso_local void @__kmpc_fork_teams(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @__omp_offloading_10307_2ec41b2_main_l24(i32* dereferenceable(4) %var) #2 !dbg !99 {
entry:
  %var.addr = alloca i32*, align 8
  store i32* %var, i32** %var.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %var.addr, metadata !100, metadata !DIExpression()), !dbg !101
  %0 = load i32*, i32** %var.addr, align 8, !dbg !102
  %1 = load i32*, i32** %var.addr, align 8, !dbg !102
  call void @__omp_offloading_10307_2ec41b2_main_l24_debug__(i32* %1) #5, !dbg !102
  ret void, !dbg !102
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
!1 = !DIFile(filename: "DRB153-missinglock2-orig-gpu-yes.c", directory: "/home/yanze/code/OpenRace/tests/data/integration/dataracebench")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.1 "}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 21, type: !8, scopeLine: 21, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DILocalVariable(name: "var", scope: !7, file: !1, line: 22, type: !10)
!12 = !DILocation(line: 22, column: 7, scope: !7)
!13 = !DILocation(line: 24, column: 3, scope: !14)
!14 = distinct !DILexicalBlock(scope: !7, file: !1, line: 24, column: 3)
!15 = !DILocation(line: 31, column: 18, scope: !7)
!16 = !DILocation(line: 31, column: 3, scope: !7)
!17 = !DILocation(line: 32, column: 3, scope: !7)
!18 = distinct !DISubprogram(name: "__omp_offloading_10307_2ec41b2_main_l24_debug__", scope: !1, file: !1, line: 25, type: !19, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!19 = !DISubroutineType(types: !20)
!20 = !{null, !21}
!21 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !10, size: 64)
!22 = !DILocalVariable(name: "var", arg: 1, scope: !18, file: !1, line: 22, type: !21)
!23 = !DILocation(line: 22, column: 7, scope: !18)
!24 = !DILocation(line: 25, column: 3, scope: !18)
!25 = !DILocation(line: 25, column: 33, scope: !18)
!26 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 26, type: !27, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!27 = !DISubroutineType(types: !28)
!28 = !{null, !29, !29, !21}
!29 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !30)
!30 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !31)
!31 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !32, size: 64)
!32 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!33 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !26, type: !29, flags: DIFlagArtificial)
!34 = !DILocation(line: 0, scope: !26)
!35 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !26, type: !29, flags: DIFlagArtificial)
!36 = !DILocalVariable(name: "var", arg: 3, scope: !26, file: !1, line: 22, type: !21)
!37 = !DILocation(line: 22, column: 7, scope: !26)
!38 = !DILocation(line: 26, column: 3, scope: !26)
!39 = !DILocalVariable(name: ".omp.iv", scope: !40, type: !10, flags: DIFlagArtificial)
!40 = distinct !DILexicalBlock(scope: !26, file: !1, line: 26, column: 3)
!41 = !DILocation(line: 0, scope: !40)
!42 = !DILocalVariable(name: ".omp.comb.lb", scope: !40, type: !10, flags: DIFlagArtificial)
!43 = !DILocation(line: 27, column: 8, scope: !40)
!44 = !DILocalVariable(name: ".omp.comb.ub", scope: !40, type: !10, flags: DIFlagArtificial)
!45 = !DILocalVariable(name: ".omp.stride", scope: !40, type: !10, flags: DIFlagArtificial)
!46 = !DILocalVariable(name: ".omp.is_last", scope: !40, type: !10, flags: DIFlagArtificial)
!47 = !DILocalVariable(name: "i", scope: !40, type: !10, flags: DIFlagArtificial)
!48 = !DILocation(line: 27, column: 3, scope: !40)
!49 = !DILocation(line: 26, column: 3, scope: !40)
!50 = !DILocation(line: 26, column: 38, scope: !51)
!51 = distinct !DILexicalBlock(scope: !40, file: !1, line: 26, column: 3)
!52 = distinct !{!52, !49, !53}
!53 = !DILocation(line: 26, column: 38, scope: !40)
!54 = !DILocation(line: 26, column: 38, scope: !26)
!55 = distinct !DISubprogram(name: ".omp_outlined._debug__.1", scope: !1, file: !1, line: 27, type: !56, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!56 = !DISubroutineType(types: !57)
!57 = !{null, !29, !29, !58, !58, !21}
!58 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !59)
!59 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!60 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !55, type: !29, flags: DIFlagArtificial)
!61 = !DILocation(line: 0, scope: !55)
!62 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !55, type: !29, flags: DIFlagArtificial)
!63 = !DILocalVariable(name: ".previous.lb.", arg: 3, scope: !55, type: !58, flags: DIFlagArtificial)
!64 = !DILocalVariable(name: ".previous.ub.", arg: 4, scope: !55, type: !58, flags: DIFlagArtificial)
!65 = !DILocalVariable(name: "var", arg: 5, scope: !55, file: !1, line: 22, type: !21)
!66 = !DILocation(line: 22, column: 7, scope: !55)
!67 = !DILocation(line: 27, column: 3, scope: !55)
!68 = !DILocalVariable(name: ".omp.iv", scope: !55, type: !10, flags: DIFlagArtificial)
!69 = !DILocalVariable(name: ".omp.lb", scope: !55, type: !10, flags: DIFlagArtificial)
!70 = !DILocation(line: 27, column: 8, scope: !55)
!71 = !DILocalVariable(name: ".omp.ub", scope: !55, type: !10, flags: DIFlagArtificial)
!72 = !DILocalVariable(name: ".omp.stride", scope: !55, type: !10, flags: DIFlagArtificial)
!73 = !DILocalVariable(name: ".omp.is_last", scope: !55, type: !10, flags: DIFlagArtificial)
!74 = !DILocalVariable(name: "i", scope: !55, type: !10, flags: DIFlagArtificial)
!75 = !DILocation(line: 27, column: 22, scope: !55)
!76 = !DILocation(line: 28, column: 8, scope: !77)
!77 = distinct !DILexicalBlock(scope: !55, file: !1, line: 27, column: 26)
!78 = !DILocation(line: 29, column: 3, scope: !77)
!79 = !DILocation(line: 26, column: 3, scope: !55)
!80 = distinct !{!80, !79, !81}
!81 = !DILocation(line: 26, column: 38, scope: !55)
!82 = !DILocation(line: 29, column: 3, scope: !55)
!83 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 27, type: !56, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!84 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !83, type: !29, flags: DIFlagArtificial)
!85 = !DILocation(line: 0, scope: !83)
!86 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !83, type: !29, flags: DIFlagArtificial)
!87 = !DILocalVariable(name: ".previous.lb.", arg: 3, scope: !83, type: !58, flags: DIFlagArtificial)
!88 = !DILocalVariable(name: ".previous.ub.", arg: 4, scope: !83, type: !58, flags: DIFlagArtificial)
!89 = !DILocalVariable(name: "var", arg: 5, scope: !83, type: !21, flags: DIFlagArtificial)
!90 = !DILocation(line: 27, column: 3, scope: !83)
!91 = !{!92}
!92 = !{i64 2, i64 -1, i64 -1, i1 true}
!93 = distinct !DISubprogram(name: ".omp_outlined..2", scope: !1, file: !1, line: 26, type: !27, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!94 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !93, type: !29, flags: DIFlagArtificial)
!95 = !DILocation(line: 0, scope: !93)
!96 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !93, type: !29, flags: DIFlagArtificial)
!97 = !DILocalVariable(name: "var", arg: 3, scope: !93, type: !21, flags: DIFlagArtificial)
!98 = !DILocation(line: 26, column: 3, scope: !93)
!99 = distinct !DISubprogram(name: "__omp_offloading_10307_2ec41b2_main_l24", scope: !1, file: !1, line: 25, type: !19, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!100 = !DILocalVariable(name: "var", arg: 1, scope: !99, type: !21, flags: DIFlagArtificial)
!101 = !DILocation(line: 0, scope: !99)
!102 = !DILocation(line: 25, column: 3, scope: !99)
