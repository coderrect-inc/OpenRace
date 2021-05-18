; ModuleID = 'integration/dataracebench/DRB114-if-orig-yes.c'
source_filename = "integration/dataracebench/DRB114-if-orig-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [60 x i8] c";integration/dataracebench/DRB114-if-orig-yes.c;main;64;1;;\00", align 1
@2 = private unnamed_addr constant [61 x i8] c";integration/dataracebench/DRB114-if-orig-yes.c;main;64;39;;\00", align 1
@3 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@.str.1 = private unnamed_addr constant [10 x i8] c"a[50]=%d\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !dbg !23 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %len = alloca i32, align 4
  %a = alloca [100 x i32], align 16
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %.threadid_temp. = alloca i32, align 4
  %.bound.zero.addr = alloca i32, align 4
  store i32 0, i32* %.bound.zero.addr, align 4
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  %2 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4
  store i8* getelementptr inbounds ([60 x i8], [60 x i8]* @1, i32 0, i32 0), i8** %2, align 8, !tbaa !38
  %3 = call i32 @__kmpc_global_thread_num(%struct.ident_t* %.kmpc_loc.addr)
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4, !tbaa !44
  call void @llvm.dbg.declare(metadata i32* %argc.addr, metadata !30, metadata !DIExpression()), !dbg !45
  store i8** %argv, i8*** %argv.addr, align 8, !tbaa !46
  call void @llvm.dbg.declare(metadata i8*** %argv.addr, metadata !31, metadata !DIExpression()), !dbg !47
  %4 = bitcast i32* %i to i8*, !dbg !48
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #6, !dbg !48
  call void @llvm.dbg.declare(metadata i32* %i, metadata !32, metadata !DIExpression()), !dbg !49
  %5 = bitcast i32* %len to i8*, !dbg !50
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #6, !dbg !50
  call void @llvm.dbg.declare(metadata i32* %len, metadata !33, metadata !DIExpression()), !dbg !51
  store i32 100, i32* %len, align 4, !dbg !51, !tbaa !44
  %6 = bitcast [100 x i32]* %a to i8*, !dbg !52
  call void @llvm.lifetime.start.p0i8(i64 400, i8* %6) #6, !dbg !52
  call void @llvm.dbg.declare(metadata [100 x i32]* %a, metadata !34, metadata !DIExpression()), !dbg !53
  store i32 0, i32* %i, align 4, !dbg !54, !tbaa !44
  br label %for.cond, !dbg !56

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load i32, i32* %i, align 4, !dbg !57, !tbaa !44
  %8 = load i32, i32* %len, align 4, !dbg !59, !tbaa !44
  %cmp = icmp slt i32 %7, %8, !dbg !60
  br i1 %cmp, label %for.body, label %for.end, !dbg !61

for.body:                                         ; preds = %for.cond
  %9 = load i32, i32* %i, align 4, !dbg !62, !tbaa !44
  %10 = load i32, i32* %i, align 4, !dbg !63, !tbaa !44
  %idxprom = sext i32 %10 to i64, !dbg !64
  %arrayidx = getelementptr inbounds [100 x i32], [100 x i32]* %a, i64 0, i64 %idxprom, !dbg !64
  store i32 %9, i32* %arrayidx, align 4, !dbg !65, !tbaa !44
  br label %for.inc, !dbg !64

for.inc:                                          ; preds = %for.body
  %11 = load i32, i32* %i, align 4, !dbg !66, !tbaa !44
  %inc = add nsw i32 %11, 1, !dbg !66
  store i32 %inc, i32* %i, align 4, !dbg !66, !tbaa !44
  br label %for.cond, !dbg !67, !llvm.loop !68

for.end:                                          ; preds = %for.cond
  %call = call i64 @time(i64* null) #6, !dbg !70
  %conv = trunc i64 %call to i32, !dbg !70
  call void @srand(i32 %conv) #6, !dbg !71
  %12 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !72
  store i8* getelementptr inbounds ([60 x i8], [60 x i8]* @1, i32 0, i32 0), i8** %12, align 8, !dbg !72, !tbaa !38
  %call1 = call i32 @rand() #6, !dbg !73
  %rem = srem i32 %call1, 2, !dbg !76
  %tobool = icmp ne i32 %rem, 0, !dbg !76
  br i1 %tobool, label %omp_if.then, label %omp_if.else, !dbg !77

omp_if.then:                                      ; preds = %for.end
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 2, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, [100 x i32]*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %len, [100 x i32]* %a), !dbg !77
  br label %omp_if.end, !dbg !77

omp_if.else:                                      ; preds = %for.end
  call void @__kmpc_serialized_parallel(%struct.ident_t* %.kmpc_loc.addr, i32 %3), !dbg !77
  store i32 %3, i32* %.threadid_temp., align 4, !dbg !77, !tbaa !44
  call void @.omp_outlined.(i32* %.threadid_temp., i32* %.bound.zero.addr, i32* %len, [100 x i32]* %a) #6, !dbg !78
  %13 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !77
  store i8* getelementptr inbounds ([60 x i8], [60 x i8]* @1, i32 0, i32 0), i8** %13, align 8, !dbg !77, !tbaa !38
  call void @__kmpc_end_serialized_parallel(%struct.ident_t* %.kmpc_loc.addr, i32 %3), !dbg !77
  br label %omp_if.end, !dbg !77

omp_if.end:                                       ; preds = %omp_if.else, %omp_if.then
  %arrayidx2 = getelementptr inbounds [100 x i32], [100 x i32]* %a, i64 0, i64 50, !dbg !79
  %14 = load i32, i32* %arrayidx2, align 8, !dbg !79, !tbaa !44
  %call3 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %14), !dbg !80
  %15 = bitcast [100 x i32]* %a to i8*, !dbg !81
  call void @llvm.lifetime.end.p0i8(i64 400, i8* %15) #6, !dbg !81
  %16 = bitcast i32* %len to i8*, !dbg !81
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %16) #6, !dbg !81
  %17 = bitcast i32* %i to i8*, !dbg !81
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %17) #6, !dbg !81
  ret i32 0, !dbg !82
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind
declare !dbg !10 dso_local void @srand(i32) #3

; Function Attrs: nounwind
declare !dbg !4 dso_local i64 @time(i64*) #3

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %len, [100 x i32]* dereferenceable(400) %a) #4 !dbg !83 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %a.addr = alloca [100 x i32]*, align 8
  %.omp.iv = alloca i32, align 4
  %tmp = alloca i32, align 4
  %.capture_expr. = alloca i32, align 4
  %.capture_expr.1 = alloca i32, align 4
  %i = alloca i32, align 4
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %i5 = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !46
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !93, metadata !DIExpression()), !dbg !104
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !46
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !94, metadata !DIExpression()), !dbg !104
  store i32* %len, i32** %len.addr, align 8, !tbaa !46
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !95, metadata !DIExpression()), !dbg !105
  store [100 x i32]* %a, [100 x i32]** %a.addr, align 8, !tbaa !46
  call void @llvm.dbg.declare(metadata [100 x i32]** %a.addr, metadata !96, metadata !DIExpression()), !dbg !106
  %2 = load i32*, i32** %len.addr, align 8, !dbg !107, !tbaa !46
  %3 = load [100 x i32]*, [100 x i32]** %a.addr, align 8, !dbg !107, !tbaa !46
  %4 = bitcast i32* %.omp.iv to i8*, !dbg !107
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #6, !dbg !107
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !97, metadata !DIExpression()), !dbg !104
  %5 = bitcast i32* %.capture_expr. to i8*, !dbg !107
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #6, !dbg !107
  call void @llvm.dbg.declare(metadata i32* %.capture_expr., metadata !98, metadata !DIExpression()), !dbg !104
  %6 = load i32, i32* %2, align 4, !dbg !108, !tbaa !44
  %sub = sub nsw i32 %6, 1, !dbg !109
  store i32 %sub, i32* %.capture_expr., align 4, !dbg !108, !tbaa !44
  %7 = bitcast i32* %.capture_expr.1 to i8*, !dbg !107
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #6, !dbg !107
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.1, metadata !98, metadata !DIExpression()), !dbg !104
  %8 = load i32, i32* %.capture_expr., align 4, !dbg !109, !tbaa !44
  %sub2 = sub nsw i32 %8, 0, !dbg !107
  %sub3 = sub nsw i32 %sub2, 1, !dbg !107
  %add = add nsw i32 %sub3, 1, !dbg !107
  %div = sdiv i32 %add, 1, !dbg !107
  %sub4 = sub nsw i32 %div, 1, !dbg !107
  store i32 %sub4, i32* %.capture_expr.1, align 4, !dbg !107, !tbaa !44
  %9 = bitcast i32* %i to i8*, !dbg !107
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #6, !dbg !107
  call void @llvm.dbg.declare(metadata i32* %i, metadata !99, metadata !DIExpression()), !dbg !104
  store i32 0, i32* %i, align 4, !dbg !110, !tbaa !44
  %10 = bitcast i32* %i to i8*, !dbg !107
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %10) #6, !dbg !107
  %11 = load i32, i32* %.capture_expr., align 4, !dbg !109, !tbaa !44
  %cmp = icmp slt i32 0, %11, !dbg !107
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end, !dbg !107

omp.precond.then:                                 ; preds = %entry
  %12 = bitcast i32* %.omp.lb to i8*, !dbg !107
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #6, !dbg !107
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !100, metadata !DIExpression()), !dbg !104
  store i32 0, i32* %.omp.lb, align 4, !dbg !111, !tbaa !44
  %13 = bitcast i32* %.omp.ub to i8*, !dbg !107
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %13) #6, !dbg !107
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !101, metadata !DIExpression()), !dbg !104
  %14 = load i32, i32* %.capture_expr.1, align 4, !dbg !107, !tbaa !44
  store i32 %14, i32* %.omp.ub, align 4, !dbg !111, !tbaa !44
  %15 = bitcast i32* %.omp.stride to i8*, !dbg !107
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %15) #6, !dbg !107
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !102, metadata !DIExpression()), !dbg !104
  store i32 1, i32* %.omp.stride, align 4, !dbg !111, !tbaa !44
  %16 = bitcast i32* %.omp.is_last to i8*, !dbg !107
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %16) #6, !dbg !107
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !103, metadata !DIExpression()), !dbg !104
  store i32 0, i32* %.omp.is_last, align 4, !dbg !111, !tbaa !44
  %17 = bitcast i32* %i5 to i8*, !dbg !107
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %17) #6, !dbg !107
  call void @llvm.dbg.declare(metadata i32* %i5, metadata !99, metadata !DIExpression()), !dbg !104
  %18 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !107
  store i8* getelementptr inbounds ([60 x i8], [60 x i8]* @1, i32 0, i32 0), i8** %18, align 8, !dbg !107, !tbaa !38
  %19 = load i32*, i32** %.global_tid..addr, align 8, !dbg !107
  %20 = load i32, i32* %19, align 4, !dbg !107, !tbaa !44
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %20, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !107
  %21 = load i32, i32* %.omp.ub, align 4, !dbg !111, !tbaa !44
  %22 = load i32, i32* %.capture_expr.1, align 4, !dbg !107, !tbaa !44
  %cmp6 = icmp sgt i32 %21, %22, !dbg !111
  br i1 %cmp6, label %cond.true, label %cond.false, !dbg !111

cond.true:                                        ; preds = %omp.precond.then
  %23 = load i32, i32* %.capture_expr.1, align 4, !dbg !107, !tbaa !44
  br label %cond.end, !dbg !111

cond.false:                                       ; preds = %omp.precond.then
  %24 = load i32, i32* %.omp.ub, align 4, !dbg !111, !tbaa !44
  br label %cond.end, !dbg !111

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %23, %cond.true ], [ %24, %cond.false ], !dbg !111
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !111, !tbaa !44
  %25 = load i32, i32* %.omp.lb, align 4, !dbg !111, !tbaa !44
  store i32 %25, i32* %.omp.iv, align 4, !dbg !111, !tbaa !44
  br label %omp.inner.for.cond, !dbg !107

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %26 = load i32, i32* %.omp.iv, align 4, !dbg !111, !tbaa !44
  %27 = load i32, i32* %.omp.ub, align 4, !dbg !111, !tbaa !44
  %cmp7 = icmp sle i32 %26, %27, !dbg !107
  br i1 %cmp7, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !107

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !107

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %28 = load i32, i32* %.omp.iv, align 4, !dbg !111, !tbaa !44
  %mul = mul nsw i32 %28, 1, !dbg !110
  %add8 = add nsw i32 0, %mul, !dbg !110
  store i32 %add8, i32* %i5, align 4, !dbg !110, !tbaa !44
  %29 = load i32, i32* %i5, align 4, !dbg !112, !tbaa !44
  %idxprom = sext i32 %29 to i64, !dbg !113
  %arrayidx = getelementptr inbounds [100 x i32], [100 x i32]* %3, i64 0, i64 %idxprom, !dbg !113
  %30 = load i32, i32* %arrayidx, align 4, !dbg !113, !tbaa !44
  %add9 = add nsw i32 %30, 1, !dbg !114
  %31 = load i32, i32* %i5, align 4, !dbg !115, !tbaa !44
  %add10 = add nsw i32 %31, 1, !dbg !116
  %idxprom11 = sext i32 %add10 to i64, !dbg !117
  %arrayidx12 = getelementptr inbounds [100 x i32], [100 x i32]* %3, i64 0, i64 %idxprom11, !dbg !117
  store i32 %add9, i32* %arrayidx12, align 4, !dbg !118, !tbaa !44
  br label %omp.body.continue, !dbg !117

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !119

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %32 = load i32, i32* %.omp.iv, align 4, !dbg !111, !tbaa !44
  %add13 = add nsw i32 %32, 1, !dbg !107
  store i32 %add13, i32* %.omp.iv, align 4, !dbg !107, !tbaa !44
  br label %omp.inner.for.cond, !dbg !119, !llvm.loop !120

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !119

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %33 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !119
  store i8* getelementptr inbounds ([61 x i8], [61 x i8]* @2, i32 0, i32 0), i8** %33, align 8, !dbg !119, !tbaa !38
  %34 = load i32*, i32** %.global_tid..addr, align 8, !dbg !119
  %35 = load i32, i32* %34, align 4, !dbg !119, !tbaa !44
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %35), !dbg !119
  %36 = bitcast i32* %i5 to i8*, !dbg !119
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %36) #6, !dbg !119
  %37 = bitcast i32* %.omp.is_last to i8*, !dbg !119
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %37) #6, !dbg !119
  %38 = bitcast i32* %.omp.stride to i8*, !dbg !119
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %38) #6, !dbg !119
  %39 = bitcast i32* %.omp.ub to i8*, !dbg !119
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %39) #6, !dbg !119
  %40 = bitcast i32* %.omp.lb to i8*, !dbg !119
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %40) #6, !dbg !119
  br label %omp.precond.end, !dbg !119

omp.precond.end:                                  ; preds = %omp.loop.exit, %entry
  %41 = bitcast i32* %.capture_expr.1 to i8*, !dbg !119
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %41) #6, !dbg !119
  %42 = bitcast i32* %.capture_expr. to i8*, !dbg !119
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %42) #6, !dbg !119
  %43 = bitcast i32* %.omp.iv to i8*, !dbg !119
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %43) #6, !dbg !119
  ret void, !dbg !122
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %len, [100 x i32]* dereferenceable(400) %a) #4 !dbg !123 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %a.addr = alloca [100 x i32]*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !46
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !125, metadata !DIExpression()), !dbg !129
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !46
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !126, metadata !DIExpression()), !dbg !129
  store i32* %len, i32** %len.addr, align 8, !tbaa !46
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !127, metadata !DIExpression()), !dbg !129
  store [100 x i32]* %a, [100 x i32]** %a.addr, align 8, !tbaa !46
  call void @llvm.dbg.declare(metadata [100 x i32]** %a.addr, metadata !128, metadata !DIExpression()), !dbg !129
  %0 = load i32*, i32** %len.addr, align 8, !dbg !130, !tbaa !46
  %1 = load [100 x i32]*, [100 x i32]** %a.addr, align 8, !dbg !130, !tbaa !46
  %2 = load i32*, i32** %.global_tid..addr, align 8, !dbg !130, !tbaa !46
  %3 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !130, !tbaa !46
  %4 = load i32*, i32** %len.addr, align 8, !dbg !130, !tbaa !46
  %5 = load [100 x i32]*, [100 x i32]** %a.addr, align 8, !dbg !130, !tbaa !46
  call void @.omp_outlined._debug__(i32* %2, i32* %3, i32* %4, [100 x i32]* %5) #6, !dbg !130
  ret void, !dbg !130
}

; Function Attrs: nounwind
declare !dbg !15 dso_local i32 @rand() #3

declare !callback !131 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

declare dso_local i32 @__kmpc_global_thread_num(%struct.ident_t*)

declare dso_local void @__kmpc_serialized_parallel(%struct.ident_t*, i32)

declare dso_local void @__kmpc_end_serialized_parallel(%struct.ident_t*, i32)

declare dso_local i32 @printf(i8*, ...) #5

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!19, !20, !21}
!llvm.ident = !{!22}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "integration/dataracebench/DRB114-if-orig-yes.c", directory: "/home/brad/Code/OpenRace/tests/data")
!2 = !{}
!3 = !{!4, !10, !15}
!4 = !DISubprogram(name: "time", scope: !5, file: !5, line: 75, type: !6, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!5 = !DIFile(filename: "/usr/include/time.h", directory: "")
!6 = !DISubroutineType(types: !7)
!7 = !{!8, !9}
!8 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!9 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!10 = !DISubprogram(name: "srand", scope: !11, file: !11, line: 455, type: !12, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!11 = !DIFile(filename: "/usr/include/stdlib.h", directory: "")
!12 = !DISubroutineType(types: !13)
!13 = !{null, !14}
!14 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!15 = !DISubprogram(name: "rand", scope: !11, file: !11, line: 453, type: !16, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !2)
!16 = !DISubroutineType(types: !17)
!17 = !{!18}
!18 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!19 = !{i32 7, !"Dwarf Version", i32 4}
!20 = !{i32 2, !"Debug Info Version", i32 3}
!21 = !{i32 1, !"wchar_size", i32 4}
!22 = !{!"clang version 10.0.1 "}
!23 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 54, type: !24, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !29)
!24 = !DISubroutineType(types: !25)
!25 = !{!18, !18, !26}
!26 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !27, size: 64)
!27 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !28, size: 64)
!28 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!29 = !{!30, !31, !32, !33, !34}
!30 = !DILocalVariable(name: "argc", arg: 1, scope: !23, file: !1, line: 54, type: !18)
!31 = !DILocalVariable(name: "argv", arg: 2, scope: !23, file: !1, line: 54, type: !26)
!32 = !DILocalVariable(name: "i", scope: !23, file: !1, line: 56, type: !18)
!33 = !DILocalVariable(name: "len", scope: !23, file: !1, line: 57, type: !18)
!34 = !DILocalVariable(name: "a", scope: !23, file: !1, line: 58, type: !35)
!35 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, size: 3200, elements: !36)
!36 = !{!37}
!37 = !DISubrange(count: 100)
!38 = !{!39, !43, i64 16}
!39 = !{!"ident_t", !40, i64 0, !40, i64 4, !40, i64 8, !40, i64 12, !43, i64 16}
!40 = !{!"int", !41, i64 0}
!41 = !{!"omnipotent char", !42, i64 0}
!42 = !{!"Simple C/C++ TBAA"}
!43 = !{!"any pointer", !41, i64 0}
!44 = !{!40, !40, i64 0}
!45 = !DILocation(line: 54, column: 14, scope: !23)
!46 = !{!43, !43, i64 0}
!47 = !DILocation(line: 54, column: 26, scope: !23)
!48 = !DILocation(line: 56, column: 3, scope: !23)
!49 = !DILocation(line: 56, column: 7, scope: !23)
!50 = !DILocation(line: 57, column: 3, scope: !23)
!51 = !DILocation(line: 57, column: 7, scope: !23)
!52 = !DILocation(line: 58, column: 3, scope: !23)
!53 = !DILocation(line: 58, column: 7, scope: !23)
!54 = !DILocation(line: 60, column: 9, scope: !55)
!55 = distinct !DILexicalBlock(scope: !23, file: !1, line: 60, column: 3)
!56 = !DILocation(line: 60, column: 8, scope: !55)
!57 = !DILocation(line: 60, column: 12, scope: !58)
!58 = distinct !DILexicalBlock(scope: !55, file: !1, line: 60, column: 3)
!59 = !DILocation(line: 60, column: 14, scope: !58)
!60 = !DILocation(line: 60, column: 13, scope: !58)
!61 = !DILocation(line: 60, column: 3, scope: !55)
!62 = !DILocation(line: 61, column: 10, scope: !58)
!63 = !DILocation(line: 61, column: 7, scope: !58)
!64 = !DILocation(line: 61, column: 5, scope: !58)
!65 = !DILocation(line: 61, column: 9, scope: !58)
!66 = !DILocation(line: 60, column: 19, scope: !58)
!67 = !DILocation(line: 60, column: 3, scope: !58)
!68 = distinct !{!68, !61, !69}
!69 = !DILocation(line: 61, column: 10, scope: !55)
!70 = !DILocation(line: 63, column: 9, scope: !23)
!71 = !DILocation(line: 63, column: 3, scope: !23)
!72 = !DILocation(line: 64, column: 1, scope: !23)
!73 = !DILocation(line: 64, column: 30, scope: !74)
!74 = distinct !DILexicalBlock(scope: !75, file: !1, line: 64, column: 30)
!75 = distinct !DILexicalBlock(scope: !23, file: !1, line: 64, column: 1)
!76 = !DILocation(line: 64, column: 36, scope: !74)
!77 = !DILocation(line: 64, column: 30, scope: !75)
!78 = !DILocation(line: 64, column: 1, scope: !74)
!79 = !DILocation(line: 68, column: 24, scope: !23)
!80 = !DILocation(line: 68, column: 3, scope: !23)
!81 = !DILocation(line: 70, column: 1, scope: !23)
!82 = !DILocation(line: 69, column: 3, scope: !23)
!83 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 65, type: !84, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !92)
!84 = !DISubroutineType(types: !85)
!85 = !{null, !86, !86, !90, !91}
!86 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !87)
!87 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !88)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !18)
!90 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !18, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !35, size: 64)
!92 = !{!93, !94, !95, !96, !97, !98, !98, !99, !100, !101, !102, !103, !99}
!93 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !83, type: !86, flags: DIFlagArtificial)
!94 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !83, type: !86, flags: DIFlagArtificial)
!95 = !DILocalVariable(name: "len", arg: 3, scope: !83, file: !1, line: 57, type: !90)
!96 = !DILocalVariable(name: "a", arg: 4, scope: !83, file: !1, line: 58, type: !91)
!97 = !DILocalVariable(name: ".omp.iv", scope: !83, type: !18, flags: DIFlagArtificial)
!98 = !DILocalVariable(name: ".capture_expr.", scope: !83, type: !18, flags: DIFlagArtificial)
!99 = !DILocalVariable(name: "i", scope: !83, type: !18, flags: DIFlagArtificial)
!100 = !DILocalVariable(name: ".omp.lb", scope: !83, type: !18, flags: DIFlagArtificial)
!101 = !DILocalVariable(name: ".omp.ub", scope: !83, type: !18, flags: DIFlagArtificial)
!102 = !DILocalVariable(name: ".omp.stride", scope: !83, type: !18, flags: DIFlagArtificial)
!103 = !DILocalVariable(name: ".omp.is_last", scope: !83, type: !18, flags: DIFlagArtificial)
!104 = !DILocation(line: 0, scope: !83)
!105 = !DILocation(line: 57, column: 7, scope: !83)
!106 = !DILocation(line: 58, column: 7, scope: !83)
!107 = !DILocation(line: 65, column: 3, scope: !83)
!108 = !DILocation(line: 65, column: 14, scope: !83)
!109 = !DILocation(line: 65, column: 17, scope: !83)
!110 = !DILocation(line: 65, column: 20, scope: !83)
!111 = !DILocation(line: 65, column: 8, scope: !83)
!112 = !DILocation(line: 66, column: 14, scope: !83)
!113 = !DILocation(line: 66, column: 12, scope: !83)
!114 = !DILocation(line: 66, column: 16, scope: !83)
!115 = !DILocation(line: 66, column: 7, scope: !83)
!116 = !DILocation(line: 66, column: 8, scope: !83)
!117 = !DILocation(line: 66, column: 5, scope: !83)
!118 = !DILocation(line: 66, column: 11, scope: !83)
!119 = !DILocation(line: 64, column: 1, scope: !83)
!120 = distinct !{!120, !119, !121}
!121 = !DILocation(line: 64, column: 39, scope: !83)
!122 = !DILocation(line: 66, column: 17, scope: !83)
!123 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 65, type: !84, scopeLine: 65, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !124)
!124 = !{!125, !126, !127, !128}
!125 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !123, type: !86, flags: DIFlagArtificial)
!126 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !123, type: !86, flags: DIFlagArtificial)
!127 = !DILocalVariable(name: "len", arg: 3, scope: !123, type: !90, flags: DIFlagArtificial)
!128 = !DILocalVariable(name: "a", arg: 4, scope: !123, type: !91, flags: DIFlagArtificial)
!129 = !DILocation(line: 0, scope: !123)
!130 = !DILocation(line: 65, column: 3, scope: !123)
!131 = !{!132}
!132 = !{i64 2, i64 -1, i64 -1, i1 true}
