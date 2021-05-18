; ModuleID = 'integration/dataracebench/DRB117-taskwait-waitonlychild-orig-yes.c'
source_filename = "integration/dataracebench/DRB117-taskwait-waitonlychild-orig-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }
%struct.anon = type { [2 x i32]*, [4 x i32]* }
%struct.kmp_task_t_with_privates.1 = type { %struct.kmp_task_t }
%struct.kmp_task_t = type { i8*, i32 (i32, i8*)*, i32, %union.kmp_cmplrdata_t, %union.kmp_cmplrdata_t }
%union.kmp_cmplrdata_t = type { i32 (i32, i8*)* }
%struct.anon.0 = type { [2 x i32]*, [4 x i32]* }
%struct.kmp_task_t_with_privates = type { %struct.kmp_task_t }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [80 x i8] c";integration/dataracebench/DRB117-taskwait-waitonlychild-orig-yes.c;main;28;5;;\00", align 1
@2 = private unnamed_addr constant [80 x i8] c";integration/dataracebench/DRB117-taskwait-waitonlychild-orig-yes.c;main;35;5;;\00", align 1
@3 = private unnamed_addr constant [80 x i8] c";integration/dataracebench/DRB117-taskwait-waitonlychild-orig-yes.c;main;39;8;;\00", align 1
@4 = private unnamed_addr constant [80 x i8] c";integration/dataracebench/DRB117-taskwait-waitonlychild-orig-yes.c;main;37;7;;\00", align 1
@5 = private unnamed_addr constant [80 x i8] c";integration/dataracebench/DRB117-taskwait-waitonlychild-orig-yes.c;main;46;7;;\00", align 1
@6 = private unnamed_addr constant [81 x i8] c";integration/dataracebench/DRB117-taskwait-waitonlychild-orig-yes.c;main;26;24;;\00", align 1
@7 = private unnamed_addr constant [80 x i8] c";integration/dataracebench/DRB117-taskwait-waitonlychild-orig-yes.c;main;26;3;;\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"sum = %d\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main() #0 !dbg !7 {
entry:
  %retval = alloca i32, align 4
  %a = alloca [4 x i32], align 16
  %psum = alloca [2 x i32], align 4
  %sum = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  %2 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4
  store i8* getelementptr inbounds ([81 x i8], [81 x i8]* @6, i32 0, i32 0), i8** %2, align 8, !tbaa !21
  %3 = call i32 @__kmpc_global_thread_num(%struct.ident_t* %.kmpc_loc.addr)
  store i32 0, i32* %retval, align 4
  %4 = bitcast [4 x i32]* %a to i8*, !dbg !27
  call void @llvm.lifetime.start.p0i8(i64 16, i8* %4) #6, !dbg !27
  call void @llvm.dbg.declare(metadata [4 x i32]* %a, metadata !12, metadata !DIExpression()), !dbg !28
  %5 = bitcast [2 x i32]* %psum to i8*, !dbg !29
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %5) #6, !dbg !29
  call void @llvm.dbg.declare(metadata [2 x i32]* %psum, metadata !16, metadata !DIExpression()), !dbg !30
  %6 = bitcast i32* %sum to i8*, !dbg !31
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #6, !dbg !31
  call void @llvm.dbg.declare(metadata i32* %sum, metadata !20, metadata !DIExpression()), !dbg !32
  %7 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !33
  store i8* getelementptr inbounds ([81 x i8], [81 x i8]* @6, i32 0, i32 0), i8** %7, align 8, !dbg !33, !tbaa !21
  call void @__kmpc_push_num_threads(%struct.ident_t* %.kmpc_loc.addr, i32 %3, i32 2), !dbg !33
  %8 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !33
  store i8* getelementptr inbounds ([80 x i8], [80 x i8]* @7, i32 0, i32 0), i8** %8, align 8, !dbg !33, !tbaa !21
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, [4 x i32]*, [2 x i32]*, i32*)* @.omp_outlined..3 to void (i32*, i32*, ...)*), [4 x i32]* %a, [2 x i32]* %psum, i32* %sum), !dbg !33
  %9 = load i32, i32* %sum, align 4, !dbg !34, !tbaa !35
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %9), !dbg !36
  %10 = bitcast i32* %sum to i8*, !dbg !37
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %10) #6, !dbg !37
  %11 = bitcast [2 x i32]* %psum to i8*, !dbg !37
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %11) #6, !dbg !37
  %12 = bitcast [4 x i32]* %a to i8*, !dbg !37
  call void @llvm.lifetime.end.p0i8(i64 16, i8* %12) #6, !dbg !37
  ret i32 0, !dbg !38
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., [4 x i32]* dereferenceable(16) %a, [2 x i32]* dereferenceable(8) %psum, i32* dereferenceable(4) %sum) #3 !dbg !39 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %a.addr = alloca [4 x i32]*, align 8
  %psum.addr = alloca [2 x i32]*, align 8
  %sum.addr = alloca i32*, align 8
  %.omp.iv = alloca i32, align 4
  %tmp = alloca i32, align 4
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %i = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %s = alloca i32, align 4
  %agg.captured = alloca %struct.anon, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !65
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !50, metadata !DIExpression()), !dbg !66
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !65
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !51, metadata !DIExpression()), !dbg !66
  store [4 x i32]* %a, [4 x i32]** %a.addr, align 8, !tbaa !65
  call void @llvm.dbg.declare(metadata [4 x i32]** %a.addr, metadata !52, metadata !DIExpression()), !dbg !67
  store [2 x i32]* %psum, [2 x i32]** %psum.addr, align 8, !tbaa !65
  call void @llvm.dbg.declare(metadata [2 x i32]** %psum.addr, metadata !53, metadata !DIExpression()), !dbg !68
  store i32* %sum, i32** %sum.addr, align 8, !tbaa !65
  call void @llvm.dbg.declare(metadata i32** %sum.addr, metadata !54, metadata !DIExpression()), !dbg !69
  %2 = load [4 x i32]*, [4 x i32]** %a.addr, align 8, !dbg !70, !tbaa !65
  %3 = load [2 x i32]*, [2 x i32]** %psum.addr, align 8, !dbg !70, !tbaa !65
  %4 = load i32*, i32** %sum.addr, align 8, !dbg !70, !tbaa !65
  %5 = bitcast i32* %.omp.iv to i8*, !dbg !71
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #6, !dbg !71
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !55, metadata !DIExpression()), !dbg !72
  %6 = bitcast i32* %.omp.lb to i8*, !dbg !71
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #6, !dbg !71
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !58, metadata !DIExpression()), !dbg !72
  store i32 0, i32* %.omp.lb, align 4, !dbg !73, !tbaa !35
  %7 = bitcast i32* %.omp.ub to i8*, !dbg !71
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #6, !dbg !71
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !59, metadata !DIExpression()), !dbg !72
  store i32 3, i32* %.omp.ub, align 4, !dbg !73, !tbaa !35
  %8 = bitcast i32* %.omp.stride to i8*, !dbg !71
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #6, !dbg !71
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !60, metadata !DIExpression()), !dbg !72
  store i32 1, i32* %.omp.stride, align 4, !dbg !73, !tbaa !35
  %9 = bitcast i32* %.omp.is_last to i8*, !dbg !71
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #6, !dbg !71
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !61, metadata !DIExpression()), !dbg !72
  store i32 0, i32* %.omp.is_last, align 4, !dbg !73, !tbaa !35
  %10 = bitcast i32* %i to i8*, !dbg !71
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #6, !dbg !71
  call void @llvm.dbg.declare(metadata i32* %i, metadata !62, metadata !DIExpression()), !dbg !72
  %11 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !71
  store i8* getelementptr inbounds ([80 x i8], [80 x i8]* @1, i32 0, i32 0), i8** %11, align 8, !dbg !71, !tbaa !21
  %12 = load i32*, i32** %.global_tid..addr, align 8, !dbg !71
  %13 = load i32, i32* %12, align 4, !dbg !71, !tbaa !35
  call void @__kmpc_dispatch_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %13, i32 35, i32 0, i32 3, i32 1, i32 1), !dbg !71
  br label %omp.dispatch.cond, !dbg !71

omp.dispatch.cond:                                ; preds = %omp.dispatch.inc, %entry
  %14 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !71
  store i8* getelementptr inbounds ([80 x i8], [80 x i8]* @1, i32 0, i32 0), i8** %14, align 8, !dbg !71, !tbaa !21
  %15 = call i32 @__kmpc_dispatch_next_4(%struct.ident_t* %.kmpc_loc.addr, i32 %13, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride), !dbg !71
  %tobool = icmp ne i32 %15, 0, !dbg !71
  br i1 %tobool, label %omp.dispatch.body, label %omp.dispatch.cleanup, !dbg !71

omp.dispatch.cleanup:                             ; preds = %omp.dispatch.cond
  br label %omp.dispatch.end, !dbg !71

omp.dispatch.body:                                ; preds = %omp.dispatch.cond
  %16 = load i32, i32* %.omp.lb, align 4, !dbg !73, !tbaa !35
  store i32 %16, i32* %.omp.iv, align 4, !dbg !73, !tbaa !35
  br label %omp.inner.for.cond, !dbg !71

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %omp.dispatch.body
  %17 = load i32, i32* %.omp.iv, align 4, !dbg !73, !tbaa !35, !llvm.access.group !74
  %18 = load i32, i32* %.omp.ub, align 4, !dbg !73, !tbaa !35, !llvm.access.group !74
  %cmp = icmp sle i32 %17, %18, !dbg !75
  br i1 %cmp, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !71

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !71

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %19 = load i32, i32* %.omp.iv, align 4, !dbg !73, !tbaa !35, !llvm.access.group !74
  %mul = mul nsw i32 %19, 1, !dbg !76
  %add = add nsw i32 0, %mul, !dbg !76
  store i32 %add, i32* %i, align 4, !dbg !76, !tbaa !35, !llvm.access.group !74
  %20 = load i32, i32* %i, align 4, !dbg !77, !tbaa !35, !llvm.access.group !74
  %21 = load i32, i32* %i, align 4, !dbg !78, !tbaa !35, !llvm.access.group !74
  %idxprom = sext i32 %21 to i64, !dbg !79
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 %idxprom, !dbg !79
  store i32 %20, i32* %arrayidx, align 4, !dbg !80, !tbaa !35, !llvm.access.group !74
  %22 = bitcast i32* %s to i8*, !dbg !81
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %22) #6, !dbg !81, !llvm.access.group !74
  call void @llvm.dbg.declare(metadata i32* %s, metadata !63, metadata !DIExpression()), !dbg !82
  store i32 2, i32* %s, align 4, !dbg !83, !tbaa !35, !llvm.access.group !74
  %23 = bitcast i32* %s to i8*, !dbg !84
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %23) #6, !dbg !84, !llvm.access.group !74
  br label %omp.body.continue, !dbg !85

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !86

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %24 = load i32, i32* %.omp.iv, align 4, !dbg !73, !tbaa !35, !llvm.access.group !74
  %add1 = add nsw i32 %24, 1, !dbg !75
  store i32 %add1, i32* %.omp.iv, align 4, !dbg !75, !tbaa !35, !llvm.access.group !74
  br label %omp.inner.for.cond, !dbg !86, !llvm.loop !87

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.dispatch.inc, !dbg !86

omp.dispatch.inc:                                 ; preds = %omp.inner.for.end
  br label %omp.dispatch.cond, !dbg !86, !llvm.loop !90

omp.dispatch.end:                                 ; preds = %omp.dispatch.cleanup
  %25 = bitcast i32* %i to i8*, !dbg !86
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %25) #6, !dbg !86
  %26 = bitcast i32* %.omp.is_last to i8*, !dbg !86
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %26) #6, !dbg !86
  %27 = bitcast i32* %.omp.stride to i8*, !dbg !86
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %27) #6, !dbg !86
  %28 = bitcast i32* %.omp.ub to i8*, !dbg !86
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %28) #6, !dbg !86
  %29 = bitcast i32* %.omp.lb to i8*, !dbg !86
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %29) #6, !dbg !86
  %30 = bitcast i32* %.omp.iv to i8*, !dbg !86
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %30) #6, !dbg !86
  %31 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !88
  store i8* getelementptr inbounds ([80 x i8], [80 x i8]* @1, i32 0, i32 0), i8** %31, align 8, !dbg !88, !tbaa !21
  call void @__kmpc_barrier(%struct.ident_t* %.kmpc_loc.addr, i32 %13), !dbg !88
  %32 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !91
  store i8* getelementptr inbounds ([80 x i8], [80 x i8]* @2, i32 0, i32 0), i8** %32, align 8, !dbg !91, !tbaa !21
  %33 = call i32 @__kmpc_single(%struct.ident_t* %.kmpc_loc.addr, i32 %13), !dbg !91
  %34 = icmp ne i32 %33, 0, !dbg !91
  br i1 %34, label %omp_if.then, label %omp_if.end, !dbg !91

omp_if.then:                                      ; preds = %omp.dispatch.end
  %35 = getelementptr inbounds %struct.anon, %struct.anon* %agg.captured, i32 0, i32 0, !dbg !92
  store [2 x i32]* %3, [2 x i32]** %35, align 8, !dbg !92, !tbaa !65
  %36 = getelementptr inbounds %struct.anon, %struct.anon* %agg.captured, i32 0, i32 1, !dbg !92
  store [4 x i32]* %2, [4 x i32]** %36, align 8, !dbg !92, !tbaa !65
  %37 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !92
  store i8* getelementptr inbounds ([80 x i8], [80 x i8]* @4, i32 0, i32 0), i8** %37, align 8, !dbg !92, !tbaa !21
  %38 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* %.kmpc_loc.addr, i32 %13, i32 1, i64 40, i64 16, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates.1*)* @.omp_task_entry..2 to i32 (i32, i8*)*)), !dbg !92
  %39 = bitcast i8* %38 to %struct.kmp_task_t_with_privates.1*, !dbg !92
  %40 = getelementptr inbounds %struct.kmp_task_t_with_privates.1, %struct.kmp_task_t_with_privates.1* %39, i32 0, i32 0, !dbg !92
  %41 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %40, i32 0, i32 0, !dbg !92
  %42 = load i8*, i8** %41, align 8, !dbg !92, !tbaa !95
  %43 = bitcast %struct.anon* %agg.captured to i8*, !dbg !92
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %42, i8* align 8 %43, i64 16, i1 false), !dbg !92, !tbaa.struct !98
  %44 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !92
  store i8* getelementptr inbounds ([80 x i8], [80 x i8]* @4, i32 0, i32 0), i8** %44, align 8, !dbg !92, !tbaa !21
  %45 = call i32 @__kmpc_omp_task(%struct.ident_t* %.kmpc_loc.addr, i32 %13, i8* %38), !dbg !92
  %46 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !99
  store i8* getelementptr inbounds ([80 x i8], [80 x i8]* @5, i32 0, i32 0), i8** %46, align 8, !dbg !99, !tbaa !21
  %47 = call i32 @__kmpc_omp_taskwait(%struct.ident_t* %.kmpc_loc.addr, i32 %13), !dbg !99
  %arrayidx2 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 1, !dbg !100
  %48 = load i32, i32* %arrayidx2, align 4, !dbg !100, !tbaa !35
  %arrayidx3 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0, !dbg !101
  %49 = load i32, i32* %arrayidx3, align 4, !dbg !101, !tbaa !35
  %add4 = add nsw i32 %48, %49, !dbg !102
  store i32 %add4, i32* %4, align 4, !dbg !103, !tbaa !35
  call void @__kmpc_end_single(%struct.ident_t* %.kmpc_loc.addr, i32 %13), !dbg !104
  br label %omp_if.end, !dbg !104

omp_if.end:                                       ; preds = %omp_if.then, %omp.dispatch.end
  %50 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !105
  store i8* getelementptr inbounds ([80 x i8], [80 x i8]* @2, i32 0, i32 0), i8** %50, align 8, !dbg !105, !tbaa !21
  call void @__kmpc_barrier(%struct.ident_t* %.kmpc_loc.addr, i32 %13), !dbg !105
  ret void, !dbg !106
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local void @__kmpc_dispatch_init_4(%struct.ident_t*, i32, i32, i32, i32, i32, i32)

declare dso_local i32 @__kmpc_dispatch_next_4(%struct.ident_t*, i32, i32*, i32*, i32*, i32*)

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

declare dso_local void @__kmpc_barrier(%struct.ident_t*, i32)

declare dso_local void @__kmpc_end_single(%struct.ident_t*, i32)

declare dso_local i32 @__kmpc_single(%struct.ident_t*, i32)

; Function Attrs: alwaysinline nounwind uwtable
define internal void @.omp_outlined.(i32 %.global_tid., i32* noalias %.part_id., i8* noalias %.privates., void (i8*, ...)* noalias %.copy_fn., i8* %.task_t., %struct.anon* noalias %__context) #4 !dbg !107 {
entry:
  %.global_tid..addr = alloca i32, align 4
  %.part_id..addr = alloca i32*, align 8
  %.privates..addr = alloca i8*, align 8
  %.copy_fn..addr = alloca void (i8*, ...)*, align 8
  %.task_t..addr = alloca i8*, align 8
  %__context.addr = alloca %struct.anon*, align 8
  %agg.captured = alloca %struct.anon.0, align 8
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32 %.global_tid., i32* %.global_tid..addr, align 4, !tbaa !35
  call void @llvm.dbg.declare(metadata i32* %.global_tid..addr, metadata !124, metadata !DIExpression()), !dbg !130
  store i32* %.part_id., i32** %.part_id..addr, align 8, !tbaa !65
  call void @llvm.dbg.declare(metadata i32** %.part_id..addr, metadata !125, metadata !DIExpression()), !dbg !130
  store i8* %.privates., i8** %.privates..addr, align 8, !tbaa !65
  call void @llvm.dbg.declare(metadata i8** %.privates..addr, metadata !126, metadata !DIExpression()), !dbg !130
  store void (i8*, ...)* %.copy_fn., void (i8*, ...)** %.copy_fn..addr, align 8, !tbaa !65
  call void @llvm.dbg.declare(metadata void (i8*, ...)** %.copy_fn..addr, metadata !127, metadata !DIExpression()), !dbg !130
  store i8* %.task_t., i8** %.task_t..addr, align 8, !tbaa !65
  call void @llvm.dbg.declare(metadata i8** %.task_t..addr, metadata !128, metadata !DIExpression()), !dbg !130
  store %struct.anon* %__context, %struct.anon** %__context.addr, align 8, !tbaa !65
  call void @llvm.dbg.declare(metadata %struct.anon** %__context.addr, metadata !129, metadata !DIExpression()), !dbg !130
  %2 = load %struct.anon*, %struct.anon** %__context.addr, align 8, !dbg !131
  %3 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %agg.captured, i32 0, i32 0, !dbg !132
  %4 = getelementptr inbounds %struct.anon, %struct.anon* %2, i32 0, i32 0, !dbg !134
  %5 = load [2 x i32]*, [2 x i32]** %4, align 8, !dbg !134, !tbaa !135
  store [2 x i32]* %5, [2 x i32]** %3, align 8, !dbg !132, !tbaa !65
  %6 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %agg.captured, i32 0, i32 1, !dbg !132
  %7 = getelementptr inbounds %struct.anon, %struct.anon* %2, i32 0, i32 1, !dbg !137
  %8 = load [4 x i32]*, [4 x i32]** %7, align 8, !dbg !137, !tbaa !138
  store [4 x i32]* %8, [4 x i32]** %6, align 8, !dbg !132, !tbaa !65
  %9 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !132
  store i8* getelementptr inbounds ([80 x i8], [80 x i8]* @3, i32 0, i32 0), i8** %9, align 8, !dbg !132, !tbaa !21
  %10 = load i32, i32* %.global_tid..addr, align 4, !dbg !132, !tbaa !35
  %11 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* %.kmpc_loc.addr, i32 %10, i32 1, i64 40, i64 16, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates*)* @.omp_task_entry. to i32 (i32, i8*)*)), !dbg !132
  %12 = bitcast i8* %11 to %struct.kmp_task_t_with_privates*, !dbg !132
  %13 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %12, i32 0, i32 0, !dbg !132
  %14 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %13, i32 0, i32 0, !dbg !132
  %15 = load i8*, i8** %14, align 8, !dbg !132, !tbaa !95
  %16 = bitcast %struct.anon.0* %agg.captured to i8*, !dbg !132
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 %16, i64 16, i1 false), !dbg !132, !tbaa.struct !98
  %17 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !132
  store i8* getelementptr inbounds ([80 x i8], [80 x i8]* @3, i32 0, i32 0), i8** %17, align 8, !dbg !132, !tbaa !21
  %18 = call i32 @__kmpc_omp_task(%struct.ident_t* %.kmpc_loc.addr, i32 %10, i8* %11), !dbg !132
  %19 = getelementptr inbounds %struct.anon, %struct.anon* %2, i32 0, i32 1, !dbg !139
  %20 = load [4 x i32]*, [4 x i32]** %19, align 8, !dbg !139, !tbaa !138
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %20, i64 0, i64 0, !dbg !139
  %21 = load i32, i32* %arrayidx, align 16, !dbg !139, !tbaa !35
  %22 = getelementptr inbounds %struct.anon, %struct.anon* %2, i32 0, i32 1, !dbg !140
  %23 = load [4 x i32]*, [4 x i32]** %22, align 8, !dbg !140, !tbaa !138
  %arrayidx1 = getelementptr inbounds [4 x i32], [4 x i32]* %23, i64 0, i64 1, !dbg !140
  %24 = load i32, i32* %arrayidx1, align 4, !dbg !140, !tbaa !35
  %add = add nsw i32 %21, %24, !dbg !141
  %25 = getelementptr inbounds %struct.anon, %struct.anon* %2, i32 0, i32 0, !dbg !142
  %26 = load [2 x i32]*, [2 x i32]** %25, align 8, !dbg !142, !tbaa !135
  %arrayidx2 = getelementptr inbounds [2 x i32], [2 x i32]* %26, i64 0, i64 0, !dbg !142
  store i32 %add, i32* %arrayidx2, align 4, !dbg !143, !tbaa !35
  ret void, !dbg !144
}

; Function Attrs: alwaysinline nounwind uwtable
define internal void @.omp_outlined..1(i32 %.global_tid., i32* noalias %.part_id., i8* noalias %.privates., void (i8*, ...)* noalias %.copy_fn., i8* %.task_t., %struct.anon.0* noalias %__context) #4 !dbg !145 {
entry:
  %.global_tid..addr = alloca i32, align 4
  %.part_id..addr = alloca i32*, align 8
  %.privates..addr = alloca i8*, align 8
  %.copy_fn..addr = alloca void (i8*, ...)*, align 8
  %.task_t..addr = alloca i8*, align 8
  %__context.addr = alloca %struct.anon.0*, align 8
  store i32 %.global_tid., i32* %.global_tid..addr, align 4, !tbaa !35
  call void @llvm.dbg.declare(metadata i32* %.global_tid..addr, metadata !153, metadata !DIExpression()), !dbg !159
  store i32* %.part_id., i32** %.part_id..addr, align 8, !tbaa !65
  call void @llvm.dbg.declare(metadata i32** %.part_id..addr, metadata !154, metadata !DIExpression()), !dbg !159
  store i8* %.privates., i8** %.privates..addr, align 8, !tbaa !65
  call void @llvm.dbg.declare(metadata i8** %.privates..addr, metadata !155, metadata !DIExpression()), !dbg !159
  store void (i8*, ...)* %.copy_fn., void (i8*, ...)** %.copy_fn..addr, align 8, !tbaa !65
  call void @llvm.dbg.declare(metadata void (i8*, ...)** %.copy_fn..addr, metadata !156, metadata !DIExpression()), !dbg !159
  store i8* %.task_t., i8** %.task_t..addr, align 8, !tbaa !65
  call void @llvm.dbg.declare(metadata i8** %.task_t..addr, metadata !157, metadata !DIExpression()), !dbg !159
  store %struct.anon.0* %__context, %struct.anon.0** %__context.addr, align 8, !tbaa !65
  call void @llvm.dbg.declare(metadata %struct.anon.0** %__context.addr, metadata !158, metadata !DIExpression()), !dbg !159
  %0 = load %struct.anon.0*, %struct.anon.0** %__context.addr, align 8, !dbg !160
  %1 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %0, i32 0, i32 1, !dbg !161
  %2 = load [4 x i32]*, [4 x i32]** %1, align 8, !dbg !161, !tbaa !138
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 2, !dbg !161
  %3 = load i32, i32* %arrayidx, align 8, !dbg !161, !tbaa !35
  %4 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %0, i32 0, i32 1, !dbg !163
  %5 = load [4 x i32]*, [4 x i32]** %4, align 8, !dbg !163, !tbaa !138
  %arrayidx1 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 3, !dbg !163
  %6 = load i32, i32* %arrayidx1, align 4, !dbg !163, !tbaa !35
  %add = add nsw i32 %3, %6, !dbg !164
  %7 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %0, i32 0, i32 0, !dbg !165
  %8 = load [2 x i32]*, [2 x i32]** %7, align 8, !dbg !165, !tbaa !135
  %arrayidx2 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 1, !dbg !165
  store i32 %add, i32* %arrayidx2, align 4, !dbg !166, !tbaa !35
  ret void, !dbg !167
}

; Function Attrs: norecurse nounwind uwtable
define internal i32 @.omp_task_entry.(i32 %0, %struct.kmp_task_t_with_privates* noalias %1) #3 !dbg !168 {
entry:
  %.addr = alloca i32, align 4
  %.addr1 = alloca %struct.kmp_task_t_with_privates*, align 8
  store i32 %0, i32* %.addr, align 4, !tbaa !35
  call void @llvm.dbg.declare(metadata i32* %.addr, metadata !171, metadata !DIExpression()), !dbg !183
  store %struct.kmp_task_t_with_privates* %1, %struct.kmp_task_t_with_privates** %.addr1, align 8, !tbaa !65
  call void @llvm.dbg.declare(metadata %struct.kmp_task_t_with_privates** %.addr1, metadata !172, metadata !DIExpression()), !dbg !183
  %2 = load i32, i32* %.addr, align 4, !dbg !184, !tbaa !35
  %3 = load %struct.kmp_task_t_with_privates*, %struct.kmp_task_t_with_privates** %.addr1, align 8, !dbg !184
  %4 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %3, i32 0, i32 0, !dbg !184
  %5 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 2, !dbg !184
  %6 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 0, !dbg !184
  %7 = load i8*, i8** %6, align 8, !dbg !184, !tbaa !95
  %8 = bitcast i8* %7 to %struct.anon.0*, !dbg !184
  %9 = bitcast %struct.kmp_task_t_with_privates* %3 to i8*, !dbg !184
  call void @.omp_outlined..1(i32 %2, i32* %5, i8* null, void (i8*, ...)* null, i8* %9, %struct.anon.0* %8) #6, !dbg !184
  ret i32 0, !dbg !184
}

declare dso_local i8* @__kmpc_omp_task_alloc(%struct.ident_t*, i32, i32, i64, i64, i32 (i32, i8*)*)

declare dso_local i32 @__kmpc_omp_task(%struct.ident_t*, i32, i8*)

; Function Attrs: norecurse nounwind uwtable
define internal i32 @.omp_task_entry..2(i32 %0, %struct.kmp_task_t_with_privates.1* noalias %1) #3 !dbg !185 {
entry:
  %.addr = alloca i32, align 4
  %.addr1 = alloca %struct.kmp_task_t_with_privates.1*, align 8
  store i32 %0, i32* %.addr, align 4, !tbaa !35
  call void @llvm.dbg.declare(metadata i32* %.addr, metadata !187, metadata !DIExpression()), !dbg !194
  store %struct.kmp_task_t_with_privates.1* %1, %struct.kmp_task_t_with_privates.1** %.addr1, align 8, !tbaa !65
  call void @llvm.dbg.declare(metadata %struct.kmp_task_t_with_privates.1** %.addr1, metadata !188, metadata !DIExpression()), !dbg !194
  %2 = load i32, i32* %.addr, align 4, !dbg !195, !tbaa !35
  %3 = load %struct.kmp_task_t_with_privates.1*, %struct.kmp_task_t_with_privates.1** %.addr1, align 8, !dbg !195
  %4 = getelementptr inbounds %struct.kmp_task_t_with_privates.1, %struct.kmp_task_t_with_privates.1* %3, i32 0, i32 0, !dbg !195
  %5 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 2, !dbg !195
  %6 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 0, !dbg !195
  %7 = load i8*, i8** %6, align 8, !dbg !195, !tbaa !95
  %8 = bitcast i8* %7 to %struct.anon*, !dbg !195
  %9 = bitcast %struct.kmp_task_t_with_privates.1* %3 to i8*, !dbg !195
  call void @.omp_outlined.(i32 %2, i32* %5, i8* null, void (i8*, ...)* null, i8* %9, %struct.anon* %8) #6, !dbg !195
  ret i32 0, !dbg !195
}

declare dso_local i32 @__kmpc_omp_taskwait(%struct.ident_t*, i32)

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined..3(i32* noalias %.global_tid., i32* noalias %.bound_tid., [4 x i32]* dereferenceable(16) %a, [2 x i32]* dereferenceable(8) %psum, i32* dereferenceable(4) %sum) #3 !dbg !196 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %a.addr = alloca [4 x i32]*, align 8
  %psum.addr = alloca [2 x i32]*, align 8
  %sum.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !65
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !198, metadata !DIExpression()), !dbg !203
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !65
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !199, metadata !DIExpression()), !dbg !203
  store [4 x i32]* %a, [4 x i32]** %a.addr, align 8, !tbaa !65
  call void @llvm.dbg.declare(metadata [4 x i32]** %a.addr, metadata !200, metadata !DIExpression()), !dbg !203
  store [2 x i32]* %psum, [2 x i32]** %psum.addr, align 8, !tbaa !65
  call void @llvm.dbg.declare(metadata [2 x i32]** %psum.addr, metadata !201, metadata !DIExpression()), !dbg !203
  store i32* %sum, i32** %sum.addr, align 8, !tbaa !65
  call void @llvm.dbg.declare(metadata i32** %sum.addr, metadata !202, metadata !DIExpression()), !dbg !203
  %0 = load [4 x i32]*, [4 x i32]** %a.addr, align 8, !dbg !204, !tbaa !65
  %1 = load [2 x i32]*, [2 x i32]** %psum.addr, align 8, !dbg !204, !tbaa !65
  %2 = load i32*, i32** %sum.addr, align 8, !dbg !204, !tbaa !65
  %3 = load i32*, i32** %.global_tid..addr, align 8, !dbg !204, !tbaa !65
  %4 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !204, !tbaa !65
  %5 = load [4 x i32]*, [4 x i32]** %a.addr, align 8, !dbg !204, !tbaa !65
  %6 = load [2 x i32]*, [2 x i32]** %psum.addr, align 8, !dbg !204, !tbaa !65
  %7 = load i32*, i32** %sum.addr, align 8, !dbg !204, !tbaa !65
  call void @.omp_outlined._debug__(i32* %3, i32* %4, [4 x i32]* %5, [2 x i32]* %6, i32* %7) #6, !dbg !204
  ret void, !dbg !204
}

declare dso_local i32 @__kmpc_global_thread_num(%struct.ident_t*)

declare dso_local void @__kmpc_push_num_threads(%struct.ident_t*, i32, i32)

declare !callback !205 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

declare dso_local i32 @printf(i8*, ...) #5

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { alwaysinline nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "integration/dataracebench/DRB117-taskwait-waitonlychild-orig-yes.c", directory: "/home/brad/Code/OpenRace/tests/data")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.1 "}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 20, type: !8, scopeLine: 20, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !11)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !{!12, !16, !20}
!12 = !DILocalVariable(name: "a", scope: !7, file: !1, line: 22, type: !13)
!13 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 128, elements: !14)
!14 = !{!15}
!15 = !DISubrange(count: 4)
!16 = !DILocalVariable(name: "psum", scope: !7, file: !1, line: 23, type: !17)
!17 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 64, elements: !18)
!18 = !{!19}
!19 = !DISubrange(count: 2)
!20 = !DILocalVariable(name: "sum", scope: !7, file: !1, line: 24, type: !10)
!21 = !{!22, !26, i64 16}
!22 = !{!"ident_t", !23, i64 0, !23, i64 4, !23, i64 8, !23, i64 12, !26, i64 16}
!23 = !{!"int", !24, i64 0}
!24 = !{!"omnipotent char", !25, i64 0}
!25 = !{!"Simple C/C++ TBAA"}
!26 = !{!"any pointer", !24, i64 0}
!27 = !DILocation(line: 22, column: 3, scope: !7)
!28 = !DILocation(line: 22, column: 7, scope: !7)
!29 = !DILocation(line: 23, column: 3, scope: !7)
!30 = !DILocation(line: 23, column: 7, scope: !7)
!31 = !DILocation(line: 24, column: 3, scope: !7)
!32 = !DILocation(line: 24, column: 7, scope: !7)
!33 = !DILocation(line: 26, column: 3, scope: !7)
!34 = !DILocation(line: 51, column: 24, scope: !7)
!35 = !{!23, !23, i64 0}
!36 = !DILocation(line: 51, column: 3, scope: !7)
!37 = !DILocation(line: 53, column: 2, scope: !7)
!38 = !DILocation(line: 52, column: 3, scope: !7)
!39 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 27, type: !40, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !49)
!40 = !DISubroutineType(types: !41)
!41 = !{null, !42, !42, !46, !47, !48}
!42 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !43)
!43 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !44)
!44 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !45, size: 64)
!45 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!46 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !13, size: 64)
!47 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !17, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !10, size: 64)
!49 = !{!50, !51, !52, !53, !54, !55, !58, !59, !60, !61, !62, !63}
!50 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !39, type: !42, flags: DIFlagArtificial)
!51 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !39, type: !42, flags: DIFlagArtificial)
!52 = !DILocalVariable(name: "a", arg: 3, scope: !39, file: !1, line: 22, type: !46)
!53 = !DILocalVariable(name: "psum", arg: 4, scope: !39, file: !1, line: 23, type: !47)
!54 = !DILocalVariable(name: "sum", arg: 5, scope: !39, file: !1, line: 24, type: !48)
!55 = !DILocalVariable(name: ".omp.iv", scope: !56, type: !10, flags: DIFlagArtificial)
!56 = distinct !DILexicalBlock(scope: !57, file: !1, line: 28, column: 5)
!57 = distinct !DILexicalBlock(scope: !39, file: !1, line: 27, column: 3)
!58 = !DILocalVariable(name: ".omp.lb", scope: !56, type: !10, flags: DIFlagArtificial)
!59 = !DILocalVariable(name: ".omp.ub", scope: !56, type: !10, flags: DIFlagArtificial)
!60 = !DILocalVariable(name: ".omp.stride", scope: !56, type: !10, flags: DIFlagArtificial)
!61 = !DILocalVariable(name: ".omp.is_last", scope: !56, type: !10, flags: DIFlagArtificial)
!62 = !DILocalVariable(name: "i", scope: !56, type: !10, flags: DIFlagArtificial)
!63 = !DILocalVariable(name: "s", scope: !64, file: !1, line: 31, type: !10)
!64 = distinct !DILexicalBlock(scope: !56, file: !1, line: 29, column: 30)
!65 = !{!26, !26, i64 0}
!66 = !DILocation(line: 0, scope: !39)
!67 = !DILocation(line: 22, column: 7, scope: !39)
!68 = !DILocation(line: 23, column: 7, scope: !39)
!69 = !DILocation(line: 24, column: 7, scope: !39)
!70 = !DILocation(line: 27, column: 3, scope: !39)
!71 = !DILocation(line: 28, column: 5, scope: !57)
!72 = !DILocation(line: 0, scope: !56)
!73 = !DILocation(line: 29, column: 10, scope: !56)
!74 = distinct !{}
!75 = !DILocation(line: 29, column: 5, scope: !56)
!76 = !DILocation(line: 29, column: 26, scope: !56)
!77 = !DILocation(line: 30, column: 14, scope: !64)
!78 = !DILocation(line: 30, column: 9, scope: !64)
!79 = !DILocation(line: 30, column: 7, scope: !64)
!80 = !DILocation(line: 30, column: 12, scope: !64)
!81 = !DILocation(line: 31, column: 7, scope: !64)
!82 = !DILocation(line: 31, column: 11, scope: !64)
!83 = !DILocation(line: 32, column: 9, scope: !64)
!84 = !DILocation(line: 33, column: 5, scope: !56)
!85 = !DILocation(line: 33, column: 5, scope: !64)
!86 = !DILocation(line: 28, column: 5, scope: !56)
!87 = distinct !{!87, !86, !88, !89}
!88 = !DILocation(line: 28, column: 41, scope: !56)
!89 = !{!"llvm.loop.parallel_accesses", !74}
!90 = distinct !{!90, !86, !88}
!91 = !DILocation(line: 35, column: 5, scope: !57)
!92 = !DILocation(line: 37, column: 7, scope: !93)
!93 = distinct !DILexicalBlock(scope: !94, file: !1, line: 36, column: 5)
!94 = distinct !DILexicalBlock(scope: !57, file: !1, line: 35, column: 5)
!95 = !{!96, !26, i64 0}
!96 = !{!"kmp_task_t_with_privates", !97, i64 0}
!97 = !{!"kmp_task_t", !26, i64 0, !26, i64 8, !23, i64 16, !24, i64 24, !24, i64 32}
!98 = !{i64 0, i64 8, !65, i64 8, i64 8, !65}
!99 = !DILocation(line: 46, column: 7, scope: !93)
!100 = !DILocation(line: 47, column: 13, scope: !93)
!101 = !DILocation(line: 47, column: 23, scope: !93)
!102 = !DILocation(line: 47, column: 21, scope: !93)
!103 = !DILocation(line: 47, column: 11, scope: !93)
!104 = !DILocation(line: 48, column: 5, scope: !93)
!105 = !DILocation(line: 35, column: 23, scope: !94)
!106 = !DILocation(line: 49, column: 3, scope: !39)
!107 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 41, type: !108, scopeLine: 38, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !123)
!108 = !DISubroutineType(types: !109)
!109 = !{null, !45, !42, !110, !113, !118, !119}
!110 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !111)
!111 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !112)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !114)
!114 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !115)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = !DISubroutineType(types: !117)
!117 = !{null, !110, null}
!118 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !112)
!119 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !120)
!120 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !121)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 37, size: 128, elements: !2)
!123 = !{!124, !125, !126, !127, !128, !129}
!124 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !107, type: !45, flags: DIFlagArtificial)
!125 = !DILocalVariable(name: ".part_id.", arg: 2, scope: !107, type: !42, flags: DIFlagArtificial)
!126 = !DILocalVariable(name: ".privates.", arg: 3, scope: !107, type: !110, flags: DIFlagArtificial)
!127 = !DILocalVariable(name: ".copy_fn.", arg: 4, scope: !107, type: !113, flags: DIFlagArtificial)
!128 = !DILocalVariable(name: ".task_t.", arg: 5, scope: !107, type: !118, flags: DIFlagArtificial)
!129 = !DILocalVariable(name: "__context", arg: 6, scope: !107, type: !119, flags: DIFlagArtificial)
!130 = !DILocation(line: 0, scope: !107)
!131 = !DILocation(line: 38, column: 7, scope: !107)
!132 = !DILocation(line: 39, column: 8, scope: !133)
!133 = distinct !DILexicalBlock(scope: !107, file: !1, line: 38, column: 7)
!134 = !DILocation(line: 41, column: 10, scope: !133)
!135 = !{!136, !26, i64 0}
!136 = !{!"", !26, i64 0, !26, i64 8}
!137 = !DILocation(line: 41, column: 20, scope: !133)
!138 = !{!136, !26, i64 8}
!139 = !DILocation(line: 43, column: 19, scope: !133)
!140 = !DILocation(line: 43, column: 26, scope: !133)
!141 = !DILocation(line: 43, column: 24, scope: !133)
!142 = !DILocation(line: 43, column: 9, scope: !133)
!143 = !DILocation(line: 43, column: 17, scope: !133)
!144 = !DILocation(line: 44, column: 7, scope: !107)
!145 = distinct !DISubprogram(name: ".omp_outlined..1", scope: !1, file: !1, line: 41, type: !146, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !152)
!146 = !DISubroutineType(types: !147)
!147 = !{null, !45, !42, !110, !113, !118, !148}
!148 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !149)
!149 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !150)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!151 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !107, file: !1, line: 39, size: 128, elements: !2)
!152 = !{!153, !154, !155, !156, !157, !158}
!153 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !145, type: !45, flags: DIFlagArtificial)
!154 = !DILocalVariable(name: ".part_id.", arg: 2, scope: !145, type: !42, flags: DIFlagArtificial)
!155 = !DILocalVariable(name: ".privates.", arg: 3, scope: !145, type: !110, flags: DIFlagArtificial)
!156 = !DILocalVariable(name: ".copy_fn.", arg: 4, scope: !145, type: !113, flags: DIFlagArtificial)
!157 = !DILocalVariable(name: ".task_t.", arg: 5, scope: !145, type: !118, flags: DIFlagArtificial)
!158 = !DILocalVariable(name: "__context", arg: 6, scope: !145, type: !148, flags: DIFlagArtificial)
!159 = !DILocation(line: 0, scope: !145)
!160 = !DILocation(line: 40, column: 8, scope: !145)
!161 = !DILocation(line: 41, column: 20, scope: !162)
!162 = distinct !DILexicalBlock(scope: !145, file: !1, line: 40, column: 8)
!163 = !DILocation(line: 41, column: 27, scope: !162)
!164 = !DILocation(line: 41, column: 25, scope: !162)
!165 = !DILocation(line: 41, column: 10, scope: !162)
!166 = !DILocation(line: 41, column: 18, scope: !162)
!167 = !DILocation(line: 42, column: 8, scope: !145)
!168 = distinct !DISubprogram(linkageName: ".omp_task_entry.", scope: !1, file: !1, line: 39, type: !169, scopeLine: 39, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !170)
!169 = !DISubroutineType(types: !2)
!170 = !{!171, !172}
!171 = !DILocalVariable(arg: 1, scope: !168, type: !10, flags: DIFlagArtificial)
!172 = !DILocalVariable(arg: 2, scope: !168, type: !173, flags: DIFlagArtificial)
!173 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !174)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t_with_privates", file: !1, size: 320, elements: !176)
!176 = !{!177}
!177 = !DIDerivedType(tag: DW_TAG_member, scope: !175, file: !1, baseType: !178, size: 320)
!178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t", file: !1, size: 320, elements: !179)
!179 = !{!180, !182}
!180 = !DIDerivedType(tag: DW_TAG_member, scope: !178, file: !1, baseType: !181, size: 64, offset: 192)
!181 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "kmp_cmplrdata_t", file: !1, size: 64, elements: !2)
!182 = !DIDerivedType(tag: DW_TAG_member, scope: !178, file: !1, baseType: !181, size: 64, offset: 256)
!183 = !DILocation(line: 0, scope: !168)
!184 = !DILocation(line: 39, column: 8, scope: !168)
!185 = distinct !DISubprogram(linkageName: ".omp_task_entry..2", scope: !1, file: !1, line: 37, type: !169, scopeLine: 37, flags: DIFlagArtificial | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !186)
!186 = !{!187, !188}
!187 = !DILocalVariable(arg: 1, scope: !185, type: !10, flags: DIFlagArtificial)
!188 = !DILocalVariable(arg: 2, scope: !185, type: !189, flags: DIFlagArtificial)
!189 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !190)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t_with_privates", file: !1, size: 320, elements: !192)
!192 = !{!193}
!193 = !DIDerivedType(tag: DW_TAG_member, scope: !191, file: !1, baseType: !178, size: 320)
!194 = !DILocation(line: 0, scope: !185)
!195 = !DILocation(line: 37, column: 7, scope: !185)
!196 = distinct !DISubprogram(name: ".omp_outlined..3", scope: !1, file: !1, line: 27, type: !40, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !197)
!197 = !{!198, !199, !200, !201, !202}
!198 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !196, type: !42, flags: DIFlagArtificial)
!199 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !196, type: !42, flags: DIFlagArtificial)
!200 = !DILocalVariable(name: "a", arg: 3, scope: !196, type: !46, flags: DIFlagArtificial)
!201 = !DILocalVariable(name: "psum", arg: 4, scope: !196, type: !47, flags: DIFlagArtificial)
!202 = !DILocalVariable(name: "sum", arg: 5, scope: !196, type: !48, flags: DIFlagArtificial)
!203 = !DILocation(line: 0, scope: !196)
!204 = !DILocation(line: 27, column: 3, scope: !196)
!205 = !{!206}
!206 = !{i64 2, i64 -1, i64 -1, i1 true}
