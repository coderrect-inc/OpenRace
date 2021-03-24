; ModuleID = 'DRB117-taskwait-waitonlychild-orig-yes.c'
source_filename = "DRB117-taskwait-waitonlychild-orig-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }
%struct.anon = type { [2 x i32]*, [4 x i32]* }
%struct.kmp_task_t_with_privates.1 = type { %struct.kmp_task_t }
%struct.kmp_task_t = type { i8*, i32 (i32, i8*)*, i32, %union.kmp_cmplrdata_t, %union.kmp_cmplrdata_t }
%union.kmp_cmplrdata_t = type { i32 (i32, i8*)* }
%struct.kmp_task_t_with_privates = type { %struct.kmp_task_t }
%struct.anon.0 = type { [2 x i32]*, [4 x i32]* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [54 x i8] c";DRB117-taskwait-waitonlychild-orig-yes.c;main;28;5;;\00", align 1
@2 = private unnamed_addr constant [54 x i8] c";DRB117-taskwait-waitonlychild-orig-yes.c;main;35;5;;\00", align 1
@3 = private unnamed_addr constant [54 x i8] c";DRB117-taskwait-waitonlychild-orig-yes.c;main;39;8;;\00", align 1
@4 = private unnamed_addr constant [54 x i8] c";DRB117-taskwait-waitonlychild-orig-yes.c;main;37;7;;\00", align 1
@5 = private unnamed_addr constant [54 x i8] c";DRB117-taskwait-waitonlychild-orig-yes.c;main;46;7;;\00", align 1
@6 = private unnamed_addr constant [55 x i8] c";DRB117-taskwait-waitonlychild-orig-yes.c;main;26;24;;\00", align 1
@7 = private unnamed_addr constant [54 x i8] c";DRB117-taskwait-waitonlychild-orig-yes.c;main;26;3;;\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"sum = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
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
  store i8* getelementptr inbounds ([55 x i8], [55 x i8]* @6, i32 0, i32 0), i8** %2, align 8
  %3 = call i32 @__kmpc_global_thread_num(%struct.ident_t* %.kmpc_loc.addr)
  store i32 0, i32* %retval, align 4
  call void @llvm.dbg.declare(metadata [4 x i32]* %a, metadata !11, metadata !DIExpression()), !dbg !15
  call void @llvm.dbg.declare(metadata [2 x i32]* %psum, metadata !16, metadata !DIExpression()), !dbg !20
  call void @llvm.dbg.declare(metadata i32* %sum, metadata !21, metadata !DIExpression()), !dbg !22
  %4 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !23
  store i8* getelementptr inbounds ([55 x i8], [55 x i8]* @6, i32 0, i32 0), i8** %4, align 8, !dbg !23
  call void @__kmpc_push_num_threads(%struct.ident_t* %.kmpc_loc.addr, i32 %3, i32 2), !dbg !23
  %5 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !23
  store i8* getelementptr inbounds ([54 x i8], [54 x i8]* @7, i32 0, i32 0), i8** %5, align 8, !dbg !23
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, [4 x i32]*, [2 x i32]*, i32*)* @.omp_outlined..3 to void (i32*, i32*, ...)*), [4 x i32]* %a, [2 x i32]* %psum, i32* %sum), !dbg !23
  %6 = load i32, i32* %sum, align 4, !dbg !24
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i32 %6), !dbg !25
  ret i32 0, !dbg !26
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., [4 x i32]* dereferenceable(16) %a, [2 x i32]* dereferenceable(8) %psum, i32* dereferenceable(4) %sum) #2 !dbg !27 {
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
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !37, metadata !DIExpression()), !dbg !38
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !39, metadata !DIExpression()), !dbg !38
  store [4 x i32]* %a, [4 x i32]** %a.addr, align 8
  call void @llvm.dbg.declare(metadata [4 x i32]** %a.addr, metadata !40, metadata !DIExpression()), !dbg !41
  store [2 x i32]* %psum, [2 x i32]** %psum.addr, align 8
  call void @llvm.dbg.declare(metadata [2 x i32]** %psum.addr, metadata !42, metadata !DIExpression()), !dbg !43
  store i32* %sum, i32** %sum.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %sum.addr, metadata !44, metadata !DIExpression()), !dbg !45
  %2 = load [4 x i32]*, [4 x i32]** %a.addr, align 8, !dbg !46
  %3 = load [2 x i32]*, [2 x i32]** %psum.addr, align 8, !dbg !46
  %4 = load i32*, i32** %sum.addr, align 8, !dbg !46
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !47, metadata !DIExpression()), !dbg !50
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !51, metadata !DIExpression()), !dbg !50
  store i32 0, i32* %.omp.lb, align 4, !dbg !52
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !53, metadata !DIExpression()), !dbg !50
  store i32 3, i32* %.omp.ub, align 4, !dbg !52
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !54, metadata !DIExpression()), !dbg !50
  store i32 1, i32* %.omp.stride, align 4, !dbg !52
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !55, metadata !DIExpression()), !dbg !50
  store i32 0, i32* %.omp.is_last, align 4, !dbg !52
  call void @llvm.dbg.declare(metadata i32* %i, metadata !56, metadata !DIExpression()), !dbg !50
  %5 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !57
  store i8* getelementptr inbounds ([54 x i8], [54 x i8]* @1, i32 0, i32 0), i8** %5, align 8, !dbg !57
  %6 = load i32*, i32** %.global_tid..addr, align 8, !dbg !57
  %7 = load i32, i32* %6, align 4, !dbg !57
  call void @__kmpc_dispatch_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %7, i32 35, i32 0, i32 3, i32 1, i32 1), !dbg !57
  br label %omp.dispatch.cond, !dbg !57

omp.dispatch.cond:                                ; preds = %omp.dispatch.inc, %entry
  %8 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !57
  store i8* getelementptr inbounds ([54 x i8], [54 x i8]* @1, i32 0, i32 0), i8** %8, align 8, !dbg !57
  %9 = call i32 @__kmpc_dispatch_next_4(%struct.ident_t* %.kmpc_loc.addr, i32 %7, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride), !dbg !57
  %tobool = icmp ne i32 %9, 0, !dbg !57
  br i1 %tobool, label %omp.dispatch.body, label %omp.dispatch.end, !dbg !57

omp.dispatch.body:                                ; preds = %omp.dispatch.cond
  %10 = load i32, i32* %.omp.lb, align 4, !dbg !52
  store i32 %10, i32* %.omp.iv, align 4, !dbg !52
  br label %omp.inner.for.cond, !dbg !57

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %omp.dispatch.body
  %11 = load i32, i32* %.omp.iv, align 4, !dbg !52, !llvm.access.group !58
  %12 = load i32, i32* %.omp.ub, align 4, !dbg !52, !llvm.access.group !58
  %cmp = icmp sle i32 %11, %12, !dbg !59
  br i1 %cmp, label %omp.inner.for.body, label %omp.inner.for.end, !dbg !57

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %13 = load i32, i32* %.omp.iv, align 4, !dbg !52, !llvm.access.group !58
  %mul = mul nsw i32 %13, 1, !dbg !60
  %add = add nsw i32 0, %mul, !dbg !60
  store i32 %add, i32* %i, align 4, !dbg !60, !llvm.access.group !58
  %14 = load i32, i32* %i, align 4, !dbg !61, !llvm.access.group !58
  %15 = load i32, i32* %i, align 4, !dbg !63, !llvm.access.group !58
  %idxprom = sext i32 %15 to i64, !dbg !64
  %arrayidx = getelementptr inbounds [4 x i32], [4 x i32]* %2, i64 0, i64 %idxprom, !dbg !64
  store i32 %14, i32* %arrayidx, align 4, !dbg !65, !llvm.access.group !58
  call void @llvm.dbg.declare(metadata i32* %s, metadata !66, metadata !DIExpression()), !dbg !67
  store i32 2, i32* %s, align 4, !dbg !68, !llvm.access.group !58
  br label %omp.body.continue, !dbg !69

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !70

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %16 = load i32, i32* %.omp.iv, align 4, !dbg !52, !llvm.access.group !58
  %add1 = add nsw i32 %16, 1, !dbg !59
  store i32 %add1, i32* %.omp.iv, align 4, !dbg !59, !llvm.access.group !58
  br label %omp.inner.for.cond, !dbg !70, !llvm.loop !71

omp.inner.for.end:                                ; preds = %omp.inner.for.cond
  br label %omp.dispatch.inc, !dbg !70

omp.dispatch.inc:                                 ; preds = %omp.inner.for.end
  br label %omp.dispatch.cond, !dbg !70, !llvm.loop !74

omp.dispatch.end:                                 ; preds = %omp.dispatch.cond
  %17 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !72
  store i8* getelementptr inbounds ([54 x i8], [54 x i8]* @1, i32 0, i32 0), i8** %17, align 8, !dbg !72
  call void @__kmpc_barrier(%struct.ident_t* %.kmpc_loc.addr, i32 %7), !dbg !72
  %18 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !75
  store i8* getelementptr inbounds ([54 x i8], [54 x i8]* @2, i32 0, i32 0), i8** %18, align 8, !dbg !75
  %19 = call i32 @__kmpc_single(%struct.ident_t* %.kmpc_loc.addr, i32 %7), !dbg !75
  %20 = icmp ne i32 %19, 0, !dbg !75
  br i1 %20, label %omp_if.then, label %omp_if.end, !dbg !75

omp_if.then:                                      ; preds = %omp.dispatch.end
  %21 = getelementptr inbounds %struct.anon, %struct.anon* %agg.captured, i32 0, i32 0, !dbg !76
  store [2 x i32]* %3, [2 x i32]** %21, align 8, !dbg !76
  %22 = getelementptr inbounds %struct.anon, %struct.anon* %agg.captured, i32 0, i32 1, !dbg !76
  store [4 x i32]* %2, [4 x i32]** %22, align 8, !dbg !76
  %23 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !76
  store i8* getelementptr inbounds ([54 x i8], [54 x i8]* @4, i32 0, i32 0), i8** %23, align 8, !dbg !76
  %24 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* %.kmpc_loc.addr, i32 %7, i32 1, i64 40, i64 16, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates.1*)* @.omp_task_entry..2 to i32 (i32, i8*)*)), !dbg !76
  %25 = bitcast i8* %24 to %struct.kmp_task_t_with_privates.1*, !dbg !76
  %26 = getelementptr inbounds %struct.kmp_task_t_with_privates.1, %struct.kmp_task_t_with_privates.1* %25, i32 0, i32 0, !dbg !76
  %27 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %26, i32 0, i32 0, !dbg !76
  %28 = load i8*, i8** %27, align 8, !dbg !76
  %29 = bitcast %struct.anon* %agg.captured to i8*, !dbg !76
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %28, i8* align 8 %29, i64 16, i1 false), !dbg !76
  %30 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !76
  store i8* getelementptr inbounds ([54 x i8], [54 x i8]* @4, i32 0, i32 0), i8** %30, align 8, !dbg !76
  %31 = call i32 @__kmpc_omp_task(%struct.ident_t* %.kmpc_loc.addr, i32 %7, i8* %24), !dbg !76
  %32 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !79
  store i8* getelementptr inbounds ([54 x i8], [54 x i8]* @5, i32 0, i32 0), i8** %32, align 8, !dbg !79
  %33 = call i32 @__kmpc_omp_taskwait(%struct.ident_t* %.kmpc_loc.addr, i32 %7), !dbg !79
  %arrayidx2 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 1, !dbg !80
  %34 = load i32, i32* %arrayidx2, align 4, !dbg !80
  %arrayidx3 = getelementptr inbounds [2 x i32], [2 x i32]* %3, i64 0, i64 0, !dbg !81
  %35 = load i32, i32* %arrayidx3, align 4, !dbg !81
  %add4 = add nsw i32 %34, %35, !dbg !82
  store i32 %add4, i32* %4, align 4, !dbg !83
  call void @__kmpc_end_single(%struct.ident_t* %.kmpc_loc.addr, i32 %7), !dbg !84
  br label %omp_if.end, !dbg !84

omp_if.end:                                       ; preds = %omp_if.then, %omp.dispatch.end
  %36 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !85
  store i8* getelementptr inbounds ([54 x i8], [54 x i8]* @2, i32 0, i32 0), i8** %36, align 8, !dbg !85
  call void @__kmpc_barrier(%struct.ident_t* %.kmpc_loc.addr, i32 %7), !dbg !85
  ret void, !dbg !86
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local void @__kmpc_dispatch_init_4(%struct.ident_t*, i32, i32, i32, i32, i32, i32)

declare dso_local i32 @__kmpc_dispatch_next_4(%struct.ident_t*, i32, i32*, i32*, i32*, i32*)

declare dso_local void @__kmpc_barrier(%struct.ident_t*, i32)

declare dso_local void @__kmpc_end_single(%struct.ident_t*, i32)

declare dso_local i32 @__kmpc_single(%struct.ident_t*, i32)

; Function Attrs: noinline norecurse nounwind uwtable
define internal i32 @.omp_task_entry.(i32 %0, %struct.kmp_task_t_with_privates* noalias %1) #4 !dbg !87 {
entry:
  %.global_tid..addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %.global_tid..addr.i, metadata !89, metadata !DIExpression()), !dbg !113
  %.part_id..addr.i = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %.part_id..addr.i, metadata !115, metadata !DIExpression()), !dbg !113
  %.privates..addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %.privates..addr.i, metadata !116, metadata !DIExpression()), !dbg !113
  %.copy_fn..addr.i = alloca void (i8*, ...)*, align 8
  call void @llvm.dbg.declare(metadata void (i8*, ...)** %.copy_fn..addr.i, metadata !117, metadata !DIExpression()), !dbg !113
  %.task_t..addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %.task_t..addr.i, metadata !118, metadata !DIExpression()), !dbg !113
  %__context.addr.i = alloca %struct.anon.0*, align 8
  call void @llvm.dbg.declare(metadata %struct.anon.0** %__context.addr.i, metadata !119, metadata !DIExpression()), !dbg !113
  %.addr = alloca i32, align 4
  %.addr1 = alloca %struct.kmp_task_t_with_privates*, align 8
  store i32 %0, i32* %.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %.addr, metadata !120, metadata !DIExpression()), !dbg !121
  store %struct.kmp_task_t_with_privates* %1, %struct.kmp_task_t_with_privates** %.addr1, align 8
  call void @llvm.dbg.declare(metadata %struct.kmp_task_t_with_privates** %.addr1, metadata !122, metadata !DIExpression()), !dbg !121
  %2 = load i32, i32* %.addr, align 4, !dbg !133
  %3 = load %struct.kmp_task_t_with_privates*, %struct.kmp_task_t_with_privates** %.addr1, align 8, !dbg !133
  %4 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %3, i32 0, i32 0, !dbg !133
  %5 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 2, !dbg !133
  %6 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 0, !dbg !133
  %7 = load i8*, i8** %6, align 8, !dbg !133
  %8 = bitcast i8* %7 to %struct.anon.0*, !dbg !133
  %9 = bitcast %struct.kmp_task_t_with_privates* %3 to i8*, !dbg !133
  store i32 %2, i32* %.global_tid..addr.i, align 4, !noalias !134
  store i32* %5, i32** %.part_id..addr.i, align 8, !noalias !134
  store i8* null, i8** %.privates..addr.i, align 8, !noalias !134
  store void (i8*, ...)* null, void (i8*, ...)** %.copy_fn..addr.i, align 8, !noalias !134
  store i8* %9, i8** %.task_t..addr.i, align 8, !noalias !134
  store %struct.anon.0* %8, %struct.anon.0** %__context.addr.i, align 8, !noalias !134
  %10 = load %struct.anon.0*, %struct.anon.0** %__context.addr.i, align 8, !dbg !140, !noalias !134
  %11 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %10, i32 0, i32 1, !dbg !141
  %12 = load [4 x i32]*, [4 x i32]** %11, align 8, !dbg !141
  %arrayidx.i = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 2, !dbg !141
  %13 = load i32, i32* %arrayidx.i, align 8, !dbg !141
  %14 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %10, i32 0, i32 1, !dbg !143
  %15 = load [4 x i32]*, [4 x i32]** %14, align 8, !dbg !143
  %arrayidx1.i = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 3, !dbg !143
  %16 = load i32, i32* %arrayidx1.i, align 4, !dbg !143
  %add.i = add nsw i32 %13, %16, !dbg !144
  %17 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %10, i32 0, i32 0, !dbg !145
  %18 = load [2 x i32]*, [2 x i32]** %17, align 8, !dbg !145
  %arrayidx2.i = getelementptr inbounds [2 x i32], [2 x i32]* %18, i64 0, i64 1, !dbg !145
  store i32 %add.i, i32* %arrayidx2.i, align 4, !dbg !146
  ret i32 0, !dbg !133
}

declare dso_local i8* @__kmpc_omp_task_alloc(%struct.ident_t*, i32, i32, i64, i64, i32 (i32, i8*)*)

declare dso_local i32 @__kmpc_omp_task(%struct.ident_t*, i32, i8*)

; Function Attrs: noinline norecurse nounwind uwtable
define internal i32 @.omp_task_entry..2(i32 %0, %struct.kmp_task_t_with_privates.1* noalias %1) #4 !dbg !147 {
entry:
  %.global_tid..addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %.global_tid..addr.i, metadata !148, metadata !DIExpression()), !dbg !149
  %.part_id..addr.i = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %.part_id..addr.i, metadata !151, metadata !DIExpression()), !dbg !149
  %.privates..addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %.privates..addr.i, metadata !152, metadata !DIExpression()), !dbg !149
  %.copy_fn..addr.i = alloca void (i8*, ...)*, align 8
  call void @llvm.dbg.declare(metadata void (i8*, ...)** %.copy_fn..addr.i, metadata !153, metadata !DIExpression()), !dbg !149
  %.task_t..addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %.task_t..addr.i, metadata !154, metadata !DIExpression()), !dbg !149
  %__context.addr.i = alloca %struct.anon*, align 8
  call void @llvm.dbg.declare(metadata %struct.anon** %__context.addr.i, metadata !155, metadata !DIExpression()), !dbg !149
  %agg.captured.i = alloca %struct.anon.0, align 8
  %.kmpc_loc.addr.i = alloca %struct.ident_t, align 8
  %.addr = alloca i32, align 4
  %.addr1 = alloca %struct.kmp_task_t_with_privates.1*, align 8
  store i32 %0, i32* %.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %.addr, metadata !156, metadata !DIExpression()), !dbg !157
  store %struct.kmp_task_t_with_privates.1* %1, %struct.kmp_task_t_with_privates.1** %.addr1, align 8
  call void @llvm.dbg.declare(metadata %struct.kmp_task_t_with_privates.1** %.addr1, metadata !158, metadata !DIExpression()), !dbg !157
  %2 = load i32, i32* %.addr, align 4, !dbg !164
  %3 = load %struct.kmp_task_t_with_privates.1*, %struct.kmp_task_t_with_privates.1** %.addr1, align 8, !dbg !164
  %4 = getelementptr inbounds %struct.kmp_task_t_with_privates.1, %struct.kmp_task_t_with_privates.1* %3, i32 0, i32 0, !dbg !164
  %5 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 2, !dbg !164
  %6 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %4, i32 0, i32 0, !dbg !164
  %7 = load i8*, i8** %6, align 8, !dbg !164
  %8 = bitcast i8* %7 to %struct.anon*, !dbg !164
  %9 = bitcast %struct.kmp_task_t_with_privates.1* %3 to i8*, !dbg !164
  %10 = bitcast %struct.ident_t* %.kmpc_loc.addr.i to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 8 bitcast (%struct.ident_t* @0 to i8*), i64 24, i1 false) #6, !noalias !165
  store i32 %2, i32* %.global_tid..addr.i, align 4, !noalias !165
  store i32* %5, i32** %.part_id..addr.i, align 8, !noalias !165
  store i8* null, i8** %.privates..addr.i, align 8, !noalias !165
  store void (i8*, ...)* null, void (i8*, ...)** %.copy_fn..addr.i, align 8, !noalias !165
  store i8* %9, i8** %.task_t..addr.i, align 8, !noalias !165
  store %struct.anon* %8, %struct.anon** %__context.addr.i, align 8, !noalias !165
  %11 = load %struct.anon*, %struct.anon** %__context.addr.i, align 8, !dbg !171, !noalias !165
  %12 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %agg.captured.i, i32 0, i32 0, !dbg !172
  %13 = getelementptr inbounds %struct.anon, %struct.anon* %11, i32 0, i32 0, !dbg !174
  %14 = load [2 x i32]*, [2 x i32]** %13, align 8, !dbg !174
  store [2 x i32]* %14, [2 x i32]** %12, align 8, !dbg !172, !noalias !165
  %15 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %agg.captured.i, i32 0, i32 1, !dbg !172
  %16 = getelementptr inbounds %struct.anon, %struct.anon* %11, i32 0, i32 1, !dbg !175
  %17 = load [4 x i32]*, [4 x i32]** %16, align 8, !dbg !175
  store [4 x i32]* %17, [4 x i32]** %15, align 8, !dbg !172, !noalias !165
  %18 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr.i, i32 0, i32 4, !dbg !172
  store i8* getelementptr inbounds ([54 x i8], [54 x i8]* @3, i32 0, i32 0), i8** %18, align 8, !dbg !172, !noalias !165
  %19 = load i32, i32* %.global_tid..addr.i, align 4, !dbg !172, !noalias !165
  %20 = call i8* @__kmpc_omp_task_alloc(%struct.ident_t* %.kmpc_loc.addr.i, i32 %19, i32 1, i64 40, i64 16, i32 (i32, i8*)* bitcast (i32 (i32, %struct.kmp_task_t_with_privates*)* @.omp_task_entry. to i32 (i32, i8*)*)) #6, !dbg !172
  %21 = bitcast i8* %20 to %struct.kmp_task_t_with_privates*, !dbg !172
  %22 = getelementptr inbounds %struct.kmp_task_t_with_privates, %struct.kmp_task_t_with_privates* %21, i32 0, i32 0, !dbg !172
  %23 = getelementptr inbounds %struct.kmp_task_t, %struct.kmp_task_t* %22, i32 0, i32 0, !dbg !172
  %24 = load i8*, i8** %23, align 8, !dbg !172
  %25 = bitcast %struct.anon.0* %agg.captured.i to i8*, !dbg !172
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %24, i8* align 8 %25, i64 16, i1 false) #6, !dbg !172
  %26 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr.i, i32 0, i32 4, !dbg !172
  store i8* getelementptr inbounds ([54 x i8], [54 x i8]* @3, i32 0, i32 0), i8** %26, align 8, !dbg !172, !noalias !165
  %27 = call i32 @__kmpc_omp_task(%struct.ident_t* %.kmpc_loc.addr.i, i32 %19, i8* %20) #6, !dbg !172
  %28 = getelementptr inbounds %struct.anon, %struct.anon* %11, i32 0, i32 1, !dbg !176
  %29 = load [4 x i32]*, [4 x i32]** %28, align 8, !dbg !176
  %arrayidx.i = getelementptr inbounds [4 x i32], [4 x i32]* %29, i64 0, i64 0, !dbg !176
  %30 = load i32, i32* %arrayidx.i, align 16, !dbg !176
  %31 = getelementptr inbounds %struct.anon, %struct.anon* %11, i32 0, i32 1, !dbg !177
  %32 = load [4 x i32]*, [4 x i32]** %31, align 8, !dbg !177
  %arrayidx1.i = getelementptr inbounds [4 x i32], [4 x i32]* %32, i64 0, i64 1, !dbg !177
  %33 = load i32, i32* %arrayidx1.i, align 4, !dbg !177
  %add.i = add nsw i32 %30, %33, !dbg !178
  %34 = getelementptr inbounds %struct.anon, %struct.anon* %11, i32 0, i32 0, !dbg !179
  %35 = load [2 x i32]*, [2 x i32]** %34, align 8, !dbg !179
  %arrayidx2.i = getelementptr inbounds [2 x i32], [2 x i32]* %35, i64 0, i64 0, !dbg !179
  store i32 %add.i, i32* %arrayidx2.i, align 4, !dbg !180
  ret i32 0, !dbg !164
}

declare dso_local i32 @__kmpc_omp_taskwait(%struct.ident_t*, i32)

; Function Attrs: noinline norecurse nounwind optnone uwtable
define internal void @.omp_outlined..3(i32* noalias %.global_tid., i32* noalias %.bound_tid., [4 x i32]* dereferenceable(16) %a, [2 x i32]* dereferenceable(8) %psum, i32* dereferenceable(4) %sum) #2 !dbg !181 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %a.addr = alloca [4 x i32]*, align 8
  %psum.addr = alloca [2 x i32]*, align 8
  %sum.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !182, metadata !DIExpression()), !dbg !183
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !184, metadata !DIExpression()), !dbg !183
  store [4 x i32]* %a, [4 x i32]** %a.addr, align 8
  call void @llvm.dbg.declare(metadata [4 x i32]** %a.addr, metadata !185, metadata !DIExpression()), !dbg !183
  store [2 x i32]* %psum, [2 x i32]** %psum.addr, align 8
  call void @llvm.dbg.declare(metadata [2 x i32]** %psum.addr, metadata !186, metadata !DIExpression()), !dbg !183
  store i32* %sum, i32** %sum.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %sum.addr, metadata !187, metadata !DIExpression()), !dbg !183
  %0 = load [4 x i32]*, [4 x i32]** %a.addr, align 8, !dbg !188
  %1 = load [2 x i32]*, [2 x i32]** %psum.addr, align 8, !dbg !188
  %2 = load i32*, i32** %sum.addr, align 8, !dbg !188
  %3 = load i32*, i32** %.global_tid..addr, align 8, !dbg !188
  %4 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !188
  %5 = load [4 x i32]*, [4 x i32]** %a.addr, align 8, !dbg !188
  %6 = load [2 x i32]*, [2 x i32]** %psum.addr, align 8, !dbg !188
  %7 = load i32*, i32** %sum.addr, align 8, !dbg !188
  call void @.omp_outlined._debug__(i32* %3, i32* %4, [4 x i32]* %5, [2 x i32]* %6, i32* %7) #6, !dbg !188
  ret void, !dbg !188
}

declare dso_local i32 @__kmpc_global_thread_num(%struct.ident_t*)

declare dso_local void @__kmpc_push_num_threads(%struct.ident_t*, i32, i32)

declare !callback !189 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

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
!1 = !DIFile(filename: "DRB117-taskwait-waitonlychild-orig-yes.c", directory: "/home/yanze/code/OpenRace/tests/data/integration/dataracebench")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.1 "}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 20, type: !8, scopeLine: 20, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !2)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DILocalVariable(name: "a", scope: !7, file: !1, line: 22, type: !12)
!12 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 128, elements: !13)
!13 = !{!14}
!14 = !DISubrange(count: 4)
!15 = !DILocation(line: 22, column: 7, scope: !7)
!16 = !DILocalVariable(name: "psum", scope: !7, file: !1, line: 23, type: !17)
!17 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 64, elements: !18)
!18 = !{!19}
!19 = !DISubrange(count: 2)
!20 = !DILocation(line: 23, column: 7, scope: !7)
!21 = !DILocalVariable(name: "sum", scope: !7, file: !1, line: 24, type: !10)
!22 = !DILocation(line: 24, column: 7, scope: !7)
!23 = !DILocation(line: 26, column: 3, scope: !7)
!24 = !DILocation(line: 51, column: 24, scope: !7)
!25 = !DILocation(line: 51, column: 3, scope: !7)
!26 = !DILocation(line: 52, column: 3, scope: !7)
!27 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 27, type: !28, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!28 = !DISubroutineType(types: !29)
!29 = !{null, !30, !30, !34, !35, !36}
!30 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !31)
!31 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !32)
!32 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !33, size: 64)
!33 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!34 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !12, size: 64)
!35 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !17, size: 64)
!36 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !10, size: 64)
!37 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !27, type: !30, flags: DIFlagArtificial)
!38 = !DILocation(line: 0, scope: !27)
!39 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !27, type: !30, flags: DIFlagArtificial)
!40 = !DILocalVariable(name: "a", arg: 3, scope: !27, file: !1, line: 22, type: !34)
!41 = !DILocation(line: 22, column: 7, scope: !27)
!42 = !DILocalVariable(name: "psum", arg: 4, scope: !27, file: !1, line: 23, type: !35)
!43 = !DILocation(line: 23, column: 7, scope: !27)
!44 = !DILocalVariable(name: "sum", arg: 5, scope: !27, file: !1, line: 24, type: !36)
!45 = !DILocation(line: 24, column: 7, scope: !27)
!46 = !DILocation(line: 27, column: 3, scope: !27)
!47 = !DILocalVariable(name: ".omp.iv", scope: !48, type: !10, flags: DIFlagArtificial)
!48 = distinct !DILexicalBlock(scope: !49, file: !1, line: 28, column: 5)
!49 = distinct !DILexicalBlock(scope: !27, file: !1, line: 27, column: 3)
!50 = !DILocation(line: 0, scope: !48)
!51 = !DILocalVariable(name: ".omp.lb", scope: !48, type: !10, flags: DIFlagArtificial)
!52 = !DILocation(line: 29, column: 10, scope: !48)
!53 = !DILocalVariable(name: ".omp.ub", scope: !48, type: !10, flags: DIFlagArtificial)
!54 = !DILocalVariable(name: ".omp.stride", scope: !48, type: !10, flags: DIFlagArtificial)
!55 = !DILocalVariable(name: ".omp.is_last", scope: !48, type: !10, flags: DIFlagArtificial)
!56 = !DILocalVariable(name: "i", scope: !48, type: !10, flags: DIFlagArtificial)
!57 = !DILocation(line: 28, column: 5, scope: !49)
!58 = distinct !{}
!59 = !DILocation(line: 29, column: 5, scope: !48)
!60 = !DILocation(line: 29, column: 26, scope: !48)
!61 = !DILocation(line: 30, column: 14, scope: !62)
!62 = distinct !DILexicalBlock(scope: !48, file: !1, line: 29, column: 30)
!63 = !DILocation(line: 30, column: 9, scope: !62)
!64 = !DILocation(line: 30, column: 7, scope: !62)
!65 = !DILocation(line: 30, column: 12, scope: !62)
!66 = !DILocalVariable(name: "s", scope: !62, file: !1, line: 31, type: !10)
!67 = !DILocation(line: 31, column: 11, scope: !62)
!68 = !DILocation(line: 32, column: 9, scope: !62)
!69 = !DILocation(line: 33, column: 5, scope: !62)
!70 = !DILocation(line: 28, column: 5, scope: !48)
!71 = distinct !{!71, !70, !72, !73}
!72 = !DILocation(line: 28, column: 41, scope: !48)
!73 = !{!"llvm.loop.parallel_accesses", !58}
!74 = distinct !{!74, !70, !72}
!75 = !DILocation(line: 35, column: 5, scope: !49)
!76 = !DILocation(line: 37, column: 7, scope: !77)
!77 = distinct !DILexicalBlock(scope: !78, file: !1, line: 36, column: 5)
!78 = distinct !DILexicalBlock(scope: !49, file: !1, line: 35, column: 5)
!79 = !DILocation(line: 46, column: 7, scope: !77)
!80 = !DILocation(line: 47, column: 13, scope: !77)
!81 = !DILocation(line: 47, column: 23, scope: !77)
!82 = !DILocation(line: 47, column: 21, scope: !77)
!83 = !DILocation(line: 47, column: 11, scope: !77)
!84 = !DILocation(line: 48, column: 5, scope: !77)
!85 = !DILocation(line: 35, column: 23, scope: !78)
!86 = !DILocation(line: 49, column: 3, scope: !27)
!87 = distinct !DISubprogram(linkageName: ".omp_task_entry.", scope: !1, file: !1, line: 39, type: !88, scopeLine: 39, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!88 = !DISubroutineType(types: !2)
!89 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !90, type: !33, flags: DIFlagArtificial)
!90 = distinct !DISubprogram(name: ".omp_outlined..1", scope: !1, file: !1, line: 41, type: !91, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!91 = !DISubroutineType(types: !92)
!92 = !{null, !33, !30, !93, !96, !101, !102}
!93 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !94)
!94 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !95)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!96 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !97)
!97 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !98)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!99 = !DISubroutineType(types: !100)
!100 = !{null, !93, null}
!101 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !95)
!102 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !103)
!103 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !104)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !106, file: !1, line: 39, size: 128, elements: !2)
!106 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 41, type: !107, scopeLine: 38, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!107 = !DISubroutineType(types: !108)
!108 = !{null, !33, !30, !93, !96, !101, !109}
!109 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !110)
!110 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !111)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1, line: 37, size: 128, elements: !2)
!113 = !DILocation(line: 0, scope: !90, inlinedAt: !114)
!114 = distinct !DILocation(line: 39, column: 8, scope: !87)
!115 = !DILocalVariable(name: ".part_id.", arg: 2, scope: !90, type: !30, flags: DIFlagArtificial)
!116 = !DILocalVariable(name: ".privates.", arg: 3, scope: !90, type: !93, flags: DIFlagArtificial)
!117 = !DILocalVariable(name: ".copy_fn.", arg: 4, scope: !90, type: !96, flags: DIFlagArtificial)
!118 = !DILocalVariable(name: ".task_t.", arg: 5, scope: !90, type: !101, flags: DIFlagArtificial)
!119 = !DILocalVariable(name: "__context", arg: 6, scope: !90, type: !102, flags: DIFlagArtificial)
!120 = !DILocalVariable(arg: 1, scope: !87, type: !10, flags: DIFlagArtificial)
!121 = !DILocation(line: 0, scope: !87)
!122 = !DILocalVariable(arg: 2, scope: !87, type: !123, flags: DIFlagArtificial)
!123 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !124)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t_with_privates", file: !1, size: 320, elements: !126)
!126 = !{!127}
!127 = !DIDerivedType(tag: DW_TAG_member, scope: !125, file: !1, baseType: !128, size: 320)
!128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t", file: !1, size: 320, elements: !129)
!129 = !{!130, !132}
!130 = !DIDerivedType(tag: DW_TAG_member, scope: !128, file: !1, baseType: !131, size: 64, offset: 192)
!131 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "kmp_cmplrdata_t", file: !1, size: 64, elements: !2)
!132 = !DIDerivedType(tag: DW_TAG_member, scope: !128, file: !1, baseType: !131, size: 64, offset: 256)
!133 = !DILocation(line: 39, column: 8, scope: !87)
!134 = !{!135, !137, !138, !139}
!135 = distinct !{!135, !136, !".omp_outlined..1: %.part_id."}
!136 = distinct !{!136, !".omp_outlined..1"}
!137 = distinct !{!137, !136, !".omp_outlined..1: %.privates."}
!138 = distinct !{!138, !136, !".omp_outlined..1: %.copy_fn."}
!139 = distinct !{!139, !136, !".omp_outlined..1: %__context"}
!140 = !DILocation(line: 40, column: 8, scope: !90, inlinedAt: !114)
!141 = !DILocation(line: 41, column: 20, scope: !142, inlinedAt: !114)
!142 = distinct !DILexicalBlock(scope: !90, file: !1, line: 40, column: 8)
!143 = !DILocation(line: 41, column: 27, scope: !142, inlinedAt: !114)
!144 = !DILocation(line: 41, column: 25, scope: !142, inlinedAt: !114)
!145 = !DILocation(line: 41, column: 10, scope: !142, inlinedAt: !114)
!146 = !DILocation(line: 41, column: 18, scope: !142, inlinedAt: !114)
!147 = distinct !DISubprogram(linkageName: ".omp_task_entry..2", scope: !1, file: !1, line: 37, type: !88, scopeLine: 37, flags: DIFlagArtificial, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!148 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !106, type: !33, flags: DIFlagArtificial)
!149 = !DILocation(line: 0, scope: !106, inlinedAt: !150)
!150 = distinct !DILocation(line: 37, column: 7, scope: !147)
!151 = !DILocalVariable(name: ".part_id.", arg: 2, scope: !106, type: !30, flags: DIFlagArtificial)
!152 = !DILocalVariable(name: ".privates.", arg: 3, scope: !106, type: !93, flags: DIFlagArtificial)
!153 = !DILocalVariable(name: ".copy_fn.", arg: 4, scope: !106, type: !96, flags: DIFlagArtificial)
!154 = !DILocalVariable(name: ".task_t.", arg: 5, scope: !106, type: !101, flags: DIFlagArtificial)
!155 = !DILocalVariable(name: "__context", arg: 6, scope: !106, type: !109, flags: DIFlagArtificial)
!156 = !DILocalVariable(arg: 1, scope: !147, type: !10, flags: DIFlagArtificial)
!157 = !DILocation(line: 0, scope: !147)
!158 = !DILocalVariable(arg: 2, scope: !147, type: !159, flags: DIFlagArtificial)
!159 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !160)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kmp_task_t_with_privates", file: !1, size: 320, elements: !162)
!162 = !{!163}
!163 = !DIDerivedType(tag: DW_TAG_member, scope: !161, file: !1, baseType: !128, size: 320)
!164 = !DILocation(line: 37, column: 7, scope: !147)
!165 = !{!166, !168, !169, !170}
!166 = distinct !{!166, !167, !".omp_outlined.: %.part_id."}
!167 = distinct !{!167, !".omp_outlined."}
!168 = distinct !{!168, !167, !".omp_outlined.: %.privates."}
!169 = distinct !{!169, !167, !".omp_outlined.: %.copy_fn."}
!170 = distinct !{!170, !167, !".omp_outlined.: %__context"}
!171 = !DILocation(line: 38, column: 7, scope: !106, inlinedAt: !150)
!172 = !DILocation(line: 39, column: 8, scope: !173, inlinedAt: !150)
!173 = distinct !DILexicalBlock(scope: !106, file: !1, line: 38, column: 7)
!174 = !DILocation(line: 41, column: 10, scope: !173, inlinedAt: !150)
!175 = !DILocation(line: 41, column: 20, scope: !173, inlinedAt: !150)
!176 = !DILocation(line: 43, column: 19, scope: !173, inlinedAt: !150)
!177 = !DILocation(line: 43, column: 26, scope: !173, inlinedAt: !150)
!178 = !DILocation(line: 43, column: 24, scope: !173, inlinedAt: !150)
!179 = !DILocation(line: 43, column: 9, scope: !173, inlinedAt: !150)
!180 = !DILocation(line: 43, column: 17, scope: !173, inlinedAt: !150)
!181 = distinct !DISubprogram(name: ".omp_outlined..3", scope: !1, file: !1, line: 27, type: !28, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !2)
!182 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !181, type: !30, flags: DIFlagArtificial)
!183 = !DILocation(line: 0, scope: !181)
!184 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !181, type: !30, flags: DIFlagArtificial)
!185 = !DILocalVariable(name: "a", arg: 3, scope: !181, type: !34, flags: DIFlagArtificial)
!186 = !DILocalVariable(name: "psum", arg: 4, scope: !181, type: !35, flags: DIFlagArtificial)
!187 = !DILocalVariable(name: "sum", arg: 5, scope: !181, type: !36, flags: DIFlagArtificial)
!188 = !DILocation(line: 27, column: 3, scope: !181)
!189 = !{!190}
!190 = !{i64 2, i64 -1, i64 -1, i1 true}
