; ModuleID = 'integration/dataracebench/DRB071-targetparallelfor-orig-no.c'
source_filename = "integration/dataracebench/DRB071-targetparallelfor-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [74 x i8] c";integration/dataracebench/DRB071-targetparallelfor-orig-no.c;main;60;1;;\00", align 1
@2 = private unnamed_addr constant [75 x i8] c";integration/dataracebench/DRB071-targetparallelfor-orig-no.c;main;60;25;;\00", align 1
@3 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 %argc, i8** %argv) #0 !dbg !7 {
entry:
  %retval = alloca i32, align 4
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %i = alloca i32, align 4
  %len = alloca i32, align 4
  %saved_stack = alloca i8*, align 8
  %__vla_expr0 = alloca i64, align 8
  %len.casted = alloca i64, align 8
  store i32 0, i32* %retval, align 4
  store i32 %argc, i32* %argc.addr, align 4, !tbaa !25
  call void @llvm.dbg.declare(metadata i32* %argc.addr, metadata !15, metadata !DIExpression()), !dbg !29
  store i8** %argv, i8*** %argv.addr, align 8, !tbaa !30
  call void @llvm.dbg.declare(metadata i8*** %argv.addr, metadata !16, metadata !DIExpression()), !dbg !32
  %0 = bitcast i32* %i to i8*, !dbg !33
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %0) #3, !dbg !33
  call void @llvm.dbg.declare(metadata i32* %i, metadata !17, metadata !DIExpression()), !dbg !34
  %1 = bitcast i32* %len to i8*, !dbg !35
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %1) #3, !dbg !35
  call void @llvm.dbg.declare(metadata i32* %len, metadata !18, metadata !DIExpression()), !dbg !36
  store i32 1000, i32* %len, align 4, !dbg !36, !tbaa !25
  %2 = load i32, i32* %len, align 4, !dbg !37, !tbaa !25
  %3 = zext i32 %2 to i64, !dbg !38
  %4 = call i8* @llvm.stacksave(), !dbg !38
  store i8* %4, i8** %saved_stack, align 8, !dbg !38
  %vla = alloca i32, i64 %3, align 16, !dbg !38
  store i64 %3, i64* %__vla_expr0, align 8, !dbg !38
  call void @llvm.dbg.declare(metadata i64* %__vla_expr0, metadata !19, metadata !DIExpression()), !dbg !39
  call void @llvm.dbg.declare(metadata i32* %vla, metadata !21, metadata !DIExpression()), !dbg !40
  store i32 0, i32* %i, align 4, !dbg !41, !tbaa !25
  br label %for.cond, !dbg !43

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %i, align 4, !dbg !44, !tbaa !25
  %6 = load i32, i32* %len, align 4, !dbg !46, !tbaa !25
  %cmp = icmp slt i32 %5, %6, !dbg !47
  br i1 %cmp, label %for.body, label %for.end, !dbg !48

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4, !dbg !49, !tbaa !25
  %8 = load i32, i32* %i, align 4, !dbg !50, !tbaa !25
  %idxprom = sext i32 %8 to i64, !dbg !51
  %arrayidx = getelementptr inbounds i32, i32* %vla, i64 %idxprom, !dbg !51
  store i32 %7, i32* %arrayidx, align 4, !dbg !52, !tbaa !25
  br label %for.inc, !dbg !51

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4, !dbg !53, !tbaa !25
  %inc = add nsw i32 %9, 1, !dbg !53
  store i32 %inc, i32* %i, align 4, !dbg !53, !tbaa !25
  br label %for.cond, !dbg !54, !llvm.loop !55

for.end:                                          ; preds = %for.cond
  %10 = load i32, i32* %len, align 4, !dbg !57, !tbaa !25
  %conv = bitcast i64* %len.casted to i32*, !dbg !57
  store i32 %10, i32* %conv, align 4, !dbg !57, !tbaa !25
  %11 = load i64, i64* %len.casted, align 8, !dbg !57, !tbaa !58
  call void @__omp_offloading_1030a_2160908_main_l59(i64 %11, i64 %3, i32* %vla) #3, !dbg !60
  store i32 0, i32* %retval, align 4, !dbg !62
  %12 = load i8*, i8** %saved_stack, align 8, !dbg !63
  call void @llvm.stackrestore(i8* %12), !dbg !63
  %13 = bitcast i32* %len to i8*, !dbg !63
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %13) #3, !dbg !63
  %14 = bitcast i32* %i to i8*, !dbg !63
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %14) #3, !dbg !63
  %15 = load i32, i32* %retval, align 4, !dbg !63
  ret i32 %15, !dbg !63
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

; Function Attrs: norecurse nounwind uwtable
define internal void @__omp_offloading_1030a_2160908_main_l59_debug__(i32 %len, i64 %vla, i32* dereferenceable(4) %a) #4 !dbg !64 {
entry:
  %len.addr = alloca i32, align 4
  %vla.addr = alloca i64, align 8
  %a.addr = alloca i32*, align 8
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32 %len, i32* %len.addr, align 4, !tbaa !25
  call void @llvm.dbg.declare(metadata i32* %len.addr, metadata !69, metadata !DIExpression()), !dbg !72
  store i64 %vla, i64* %vla.addr, align 8, !tbaa !58
  call void @llvm.dbg.declare(metadata i64* %vla.addr, metadata !70, metadata !DIExpression()), !dbg !73
  store i32* %a, i32** %a.addr, align 8, !tbaa !30
  call void @llvm.dbg.declare(metadata i32** %a.addr, metadata !71, metadata !DIExpression()), !dbg !74
  %2 = load i64, i64* %vla.addr, align 8, !dbg !75, !tbaa !58
  %3 = load i32*, i32** %a.addr, align 8, !dbg !75, !tbaa !30
  %4 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !75
  store i8* getelementptr inbounds ([74 x i8], [74 x i8]* @1, i32 0, i32 0), i8** %4, align 8, !dbg !75, !tbaa !76
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i64, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %len.addr, i64 %2, i32* %3), !dbg !75
  ret void, !dbg !78
}

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %len, i64 %vla, i32* dereferenceable(4) %a) #4 !dbg !79 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %vla.addr = alloca i64, align 8
  %a.addr = alloca i32*, align 8
  %.omp.iv = alloca i32, align 4
  %tmp = alloca i32, align 4
  %.capture_expr. = alloca i32, align 4
  %.capture_expr.1 = alloca i32, align 4
  %i = alloca i32, align 4
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %i4 = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !30
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !87, metadata !DIExpression()), !dbg !99
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !30
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !88, metadata !DIExpression()), !dbg !99
  store i32* %len, i32** %len.addr, align 8, !tbaa !30
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !89, metadata !DIExpression()), !dbg !100
  store i64 %vla, i64* %vla.addr, align 8, !tbaa !58
  call void @llvm.dbg.declare(metadata i64* %vla.addr, metadata !90, metadata !DIExpression()), !dbg !99
  store i32* %a, i32** %a.addr, align 8, !tbaa !30
  call void @llvm.dbg.declare(metadata i32** %a.addr, metadata !91, metadata !DIExpression()), !dbg !101
  %2 = load i32*, i32** %len.addr, align 8, !dbg !102, !tbaa !30
  %3 = load i64, i64* %vla.addr, align 8, !dbg !102, !tbaa !58
  %4 = load i32*, i32** %a.addr, align 8, !dbg !102, !tbaa !30
  %5 = bitcast i32* %.omp.iv to i8*, !dbg !102
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #3, !dbg !102
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !92, metadata !DIExpression()), !dbg !99
  %6 = bitcast i32* %.capture_expr. to i8*, !dbg !102
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #3, !dbg !102
  call void @llvm.dbg.declare(metadata i32* %.capture_expr., metadata !93, metadata !DIExpression()), !dbg !99
  %7 = load i32, i32* %2, align 4, !dbg !103, !tbaa !25
  store i32 %7, i32* %.capture_expr., align 4, !dbg !103, !tbaa !25
  %8 = bitcast i32* %.capture_expr.1 to i8*, !dbg !102
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #3, !dbg !102
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.1, metadata !93, metadata !DIExpression()), !dbg !99
  %9 = load i32, i32* %.capture_expr., align 4, !dbg !103, !tbaa !25
  %sub = sub nsw i32 %9, 0, !dbg !102
  %sub2 = sub nsw i32 %sub, 1, !dbg !102
  %add = add nsw i32 %sub2, 1, !dbg !102
  %div = sdiv i32 %add, 1, !dbg !102
  %sub3 = sub nsw i32 %div, 1, !dbg !102
  store i32 %sub3, i32* %.capture_expr.1, align 4, !dbg !102, !tbaa !25
  %10 = bitcast i32* %i to i8*, !dbg !102
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #3, !dbg !102
  call void @llvm.dbg.declare(metadata i32* %i, metadata !94, metadata !DIExpression()), !dbg !99
  store i32 0, i32* %i, align 4, !dbg !104, !tbaa !25
  %11 = bitcast i32* %i to i8*, !dbg !102
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %11) #3, !dbg !102
  %12 = load i32, i32* %.capture_expr., align 4, !dbg !103, !tbaa !25
  %cmp = icmp slt i32 0, %12, !dbg !102
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end, !dbg !102

omp.precond.then:                                 ; preds = %entry
  %13 = bitcast i32* %.omp.lb to i8*, !dbg !102
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %13) #3, !dbg !102
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !95, metadata !DIExpression()), !dbg !99
  store i32 0, i32* %.omp.lb, align 4, !dbg !105, !tbaa !25
  %14 = bitcast i32* %.omp.ub to i8*, !dbg !102
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %14) #3, !dbg !102
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !96, metadata !DIExpression()), !dbg !99
  %15 = load i32, i32* %.capture_expr.1, align 4, !dbg !102, !tbaa !25
  store i32 %15, i32* %.omp.ub, align 4, !dbg !105, !tbaa !25
  %16 = bitcast i32* %.omp.stride to i8*, !dbg !102
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %16) #3, !dbg !102
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !97, metadata !DIExpression()), !dbg !99
  store i32 1, i32* %.omp.stride, align 4, !dbg !105, !tbaa !25
  %17 = bitcast i32* %.omp.is_last to i8*, !dbg !102
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %17) #3, !dbg !102
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !98, metadata !DIExpression()), !dbg !99
  store i32 0, i32* %.omp.is_last, align 4, !dbg !105, !tbaa !25
  %18 = bitcast i32* %i4 to i8*, !dbg !102
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %18) #3, !dbg !102
  call void @llvm.dbg.declare(metadata i32* %i4, metadata !94, metadata !DIExpression()), !dbg !99
  %19 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !102
  store i8* getelementptr inbounds ([74 x i8], [74 x i8]* @1, i32 0, i32 0), i8** %19, align 8, !dbg !102, !tbaa !76
  %20 = load i32*, i32** %.global_tid..addr, align 8, !dbg !102
  %21 = load i32, i32* %20, align 4, !dbg !102, !tbaa !25
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %21, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !102
  %22 = load i32, i32* %.omp.ub, align 4, !dbg !105, !tbaa !25
  %23 = load i32, i32* %.capture_expr.1, align 4, !dbg !102, !tbaa !25
  %cmp5 = icmp sgt i32 %22, %23, !dbg !105
  br i1 %cmp5, label %cond.true, label %cond.false, !dbg !105

cond.true:                                        ; preds = %omp.precond.then
  %24 = load i32, i32* %.capture_expr.1, align 4, !dbg !102, !tbaa !25
  br label %cond.end, !dbg !105

cond.false:                                       ; preds = %omp.precond.then
  %25 = load i32, i32* %.omp.ub, align 4, !dbg !105, !tbaa !25
  br label %cond.end, !dbg !105

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %24, %cond.true ], [ %25, %cond.false ], !dbg !105
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !105, !tbaa !25
  %26 = load i32, i32* %.omp.lb, align 4, !dbg !105, !tbaa !25
  store i32 %26, i32* %.omp.iv, align 4, !dbg !105, !tbaa !25
  br label %omp.inner.for.cond, !dbg !102

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %27 = load i32, i32* %.omp.iv, align 4, !dbg !105, !tbaa !25
  %28 = load i32, i32* %.omp.ub, align 4, !dbg !105, !tbaa !25
  %cmp6 = icmp sle i32 %27, %28, !dbg !102
  br i1 %cmp6, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !102

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !102

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %29 = load i32, i32* %.omp.iv, align 4, !dbg !105, !tbaa !25
  %mul = mul nsw i32 %29, 1, !dbg !104
  %add7 = add nsw i32 0, %mul, !dbg !104
  store i32 %add7, i32* %i4, align 4, !dbg !104, !tbaa !25
  %30 = load i32, i32* %i4, align 4, !dbg !106, !tbaa !25
  %idxprom = sext i32 %30 to i64, !dbg !107
  %arrayidx = getelementptr inbounds i32, i32* %4, i64 %idxprom, !dbg !107
  %31 = load i32, i32* %arrayidx, align 4, !dbg !107, !tbaa !25
  %add8 = add nsw i32 %31, 1, !dbg !108
  %32 = load i32, i32* %i4, align 4, !dbg !109, !tbaa !25
  %idxprom9 = sext i32 %32 to i64, !dbg !110
  %arrayidx10 = getelementptr inbounds i32, i32* %4, i64 %idxprom9, !dbg !110
  store i32 %add8, i32* %arrayidx10, align 4, !dbg !111, !tbaa !25
  br label %omp.body.continue, !dbg !110

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !112

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %33 = load i32, i32* %.omp.iv, align 4, !dbg !105, !tbaa !25
  %add11 = add nsw i32 %33, 1, !dbg !102
  store i32 %add11, i32* %.omp.iv, align 4, !dbg !102, !tbaa !25
  br label %omp.inner.for.cond, !dbg !112, !llvm.loop !113

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !112

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %34 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !112
  store i8* getelementptr inbounds ([75 x i8], [75 x i8]* @2, i32 0, i32 0), i8** %34, align 8, !dbg !112, !tbaa !76
  %35 = load i32*, i32** %.global_tid..addr, align 8, !dbg !112
  %36 = load i32, i32* %35, align 4, !dbg !112, !tbaa !25
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %36), !dbg !112
  %37 = bitcast i32* %i4 to i8*, !dbg !112
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %37) #3, !dbg !112
  %38 = bitcast i32* %.omp.is_last to i8*, !dbg !112
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %38) #3, !dbg !112
  %39 = bitcast i32* %.omp.stride to i8*, !dbg !112
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %39) #3, !dbg !112
  %40 = bitcast i32* %.omp.ub to i8*, !dbg !112
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %40) #3, !dbg !112
  %41 = bitcast i32* %.omp.lb to i8*, !dbg !112
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %41) #3, !dbg !112
  br label %omp.precond.end, !dbg !112

omp.precond.end:                                  ; preds = %omp.loop.exit, %entry
  %42 = bitcast i32* %.capture_expr.1 to i8*, !dbg !112
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %42) #3, !dbg !112
  %43 = bitcast i32* %.capture_expr. to i8*, !dbg !112
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %43) #3, !dbg !112
  %44 = bitcast i32* %.omp.iv to i8*, !dbg !112
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %44) #3, !dbg !112
  ret void, !dbg !115
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %len, i64 %vla, i32* dereferenceable(4) %a) #4 !dbg !116 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %len.addr = alloca i32*, align 8
  %vla.addr = alloca i64, align 8
  %a.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !30
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !118, metadata !DIExpression()), !dbg !123
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !30
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !119, metadata !DIExpression()), !dbg !123
  store i32* %len, i32** %len.addr, align 8, !tbaa !30
  call void @llvm.dbg.declare(metadata i32** %len.addr, metadata !120, metadata !DIExpression()), !dbg !123
  store i64 %vla, i64* %vla.addr, align 8, !tbaa !58
  call void @llvm.dbg.declare(metadata i64* %vla.addr, metadata !121, metadata !DIExpression()), !dbg !123
  store i32* %a, i32** %a.addr, align 8, !tbaa !30
  call void @llvm.dbg.declare(metadata i32** %a.addr, metadata !122, metadata !DIExpression()), !dbg !123
  %0 = load i32*, i32** %len.addr, align 8, !dbg !124, !tbaa !30
  %1 = load i64, i64* %vla.addr, align 8, !dbg !124, !tbaa !58
  %2 = load i32*, i32** %a.addr, align 8, !dbg !124, !tbaa !30
  %3 = load i32*, i32** %.global_tid..addr, align 8, !dbg !124, !tbaa !30
  %4 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !124, !tbaa !30
  %5 = load i32*, i32** %len.addr, align 8, !dbg !124, !tbaa !30
  %6 = load i32*, i32** %a.addr, align 8, !dbg !124, !tbaa !30
  call void @.omp_outlined._debug__(i32* %3, i32* %4, i32* %5, i64 %1, i32* %6) #3, !dbg !124
  ret void, !dbg !124
}

declare !callback !125 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

; Function Attrs: norecurse nounwind uwtable
define internal void @__omp_offloading_1030a_2160908_main_l59(i64 %len, i64 %vla, i32* dereferenceable(4) %a) #4 !dbg !127 {
entry:
  %len.addr = alloca i64, align 8
  %vla.addr = alloca i64, align 8
  %a.addr = alloca i32*, align 8
  store i64 %len, i64* %len.addr, align 8, !tbaa !58
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !131, metadata !DIExpression()), !dbg !134
  store i64 %vla, i64* %vla.addr, align 8, !tbaa !58
  call void @llvm.dbg.declare(metadata i64* %vla.addr, metadata !132, metadata !DIExpression()), !dbg !134
  store i32* %a, i32** %a.addr, align 8, !tbaa !30
  call void @llvm.dbg.declare(metadata i32** %a.addr, metadata !133, metadata !DIExpression()), !dbg !134
  %conv = bitcast i64* %len.addr to i32*, !dbg !135
  %0 = load i64, i64* %vla.addr, align 8, !dbg !135, !tbaa !58
  %1 = load i32*, i32** %a.addr, align 8, !dbg !135, !tbaa !30
  %2 = load i32, i32* %conv, align 8, !dbg !135, !tbaa !25
  %3 = load i32*, i32** %a.addr, align 8, !dbg !135, !tbaa !30
  call void @__omp_offloading_1030a_2160908_main_l59_debug__(i32 %2, i64 %0, i32* %3) #3, !dbg !135
  ret void, !dbg !135
}

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { nounwind }
attributes #4 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "integration/dataracebench/DRB071-targetparallelfor-orig-no.c", directory: "/home/brad/Code/OpenRace/tests/data")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.1 "}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 50, type: !8, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !14)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !10, !11}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !12, size: 64)
!12 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!13 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!14 = !{!15, !16, !17, !18, !19, !21}
!15 = !DILocalVariable(name: "argc", arg: 1, scope: !7, file: !1, line: 50, type: !10)
!16 = !DILocalVariable(name: "argv", arg: 2, scope: !7, file: !1, line: 50, type: !11)
!17 = !DILocalVariable(name: "i", scope: !7, file: !1, line: 52, type: !10)
!18 = !DILocalVariable(name: "len", scope: !7, file: !1, line: 53, type: !10)
!19 = !DILocalVariable(name: "__vla_expr0", scope: !7, type: !20, flags: DIFlagArtificial)
!20 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!21 = !DILocalVariable(name: "a", scope: !7, file: !1, line: 54, type: !22)
!22 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, elements: !23)
!23 = !{!24}
!24 = !DISubrange(count: !19)
!25 = !{!26, !26, i64 0}
!26 = !{!"int", !27, i64 0}
!27 = !{!"omnipotent char", !28, i64 0}
!28 = !{!"Simple C/C++ TBAA"}
!29 = !DILocation(line: 50, column: 14, scope: !7)
!30 = !{!31, !31, i64 0}
!31 = !{!"any pointer", !27, i64 0}
!32 = !DILocation(line: 50, column: 26, scope: !7)
!33 = !DILocation(line: 52, column: 3, scope: !7)
!34 = !DILocation(line: 52, column: 7, scope: !7)
!35 = !DILocation(line: 53, column: 3, scope: !7)
!36 = !DILocation(line: 53, column: 7, scope: !7)
!37 = !DILocation(line: 54, column: 9, scope: !7)
!38 = !DILocation(line: 54, column: 3, scope: !7)
!39 = !DILocation(line: 0, scope: !7)
!40 = !DILocation(line: 54, column: 7, scope: !7)
!41 = !DILocation(line: 56, column: 9, scope: !42)
!42 = distinct !DILexicalBlock(scope: !7, file: !1, line: 56, column: 3)
!43 = !DILocation(line: 56, column: 8, scope: !42)
!44 = !DILocation(line: 56, column: 13, scope: !45)
!45 = distinct !DILexicalBlock(scope: !42, file: !1, line: 56, column: 3)
!46 = !DILocation(line: 56, column: 15, scope: !45)
!47 = !DILocation(line: 56, column: 14, scope: !45)
!48 = !DILocation(line: 56, column: 3, scope: !42)
!49 = !DILocation(line: 57, column: 11, scope: !45)
!50 = !DILocation(line: 57, column: 7, scope: !45)
!51 = !DILocation(line: 57, column: 5, scope: !45)
!52 = !DILocation(line: 57, column: 9, scope: !45)
!53 = !DILocation(line: 56, column: 21, scope: !45)
!54 = !DILocation(line: 56, column: 3, scope: !45)
!55 = distinct !{!55, !48, !56}
!56 = !DILocation(line: 57, column: 11, scope: !42)
!57 = !DILocation(line: 59, column: 1, scope: !7)
!58 = !{!59, !59, i64 0}
!59 = !{!"long", !27, i64 0}
!60 = !DILocation(line: 59, column: 1, scope: !61)
!61 = distinct !DILexicalBlock(scope: !7, file: !1, line: 59, column: 1)
!62 = !DILocation(line: 64, column: 3, scope: !7)
!63 = !DILocation(line: 65, column: 1, scope: !7)
!64 = distinct !DISubprogram(name: "__omp_offloading_1030a_2160908_main_l59_debug__", scope: !1, file: !1, line: 60, type: !65, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !68)
!65 = !DISubroutineType(types: !66)
!66 = !{null, !10, !20, !67}
!67 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !10, size: 64)
!68 = !{!69, !70, !71}
!69 = !DILocalVariable(name: "len", arg: 1, scope: !64, file: !1, line: 53, type: !10)
!70 = !DILocalVariable(name: "vla", arg: 2, scope: !64, type: !20, flags: DIFlagArtificial)
!71 = !DILocalVariable(name: "a", arg: 3, scope: !64, file: !1, line: 54, type: !67)
!72 = !DILocation(line: 53, column: 7, scope: !64)
!73 = !DILocation(line: 0, scope: !64)
!74 = !DILocation(line: 54, column: 7, scope: !64)
!75 = !DILocation(line: 60, column: 1, scope: !64)
!76 = !{!77, !31, i64 16}
!77 = !{!"ident_t", !26, i64 0, !26, i64 4, !26, i64 8, !26, i64 12, !31, i64 16}
!78 = !DILocation(line: 60, column: 25, scope: !64)
!79 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 61, type: !80, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !86)
!80 = !DISubroutineType(types: !81)
!81 = !{null, !82, !82, !67, !20, !67}
!82 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !83)
!83 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !84)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!86 = !{!87, !88, !89, !90, !91, !92, !93, !93, !94, !95, !96, !97, !98, !94}
!87 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !79, type: !82, flags: DIFlagArtificial)
!88 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !79, type: !82, flags: DIFlagArtificial)
!89 = !DILocalVariable(name: "len", arg: 3, scope: !79, file: !1, line: 53, type: !67)
!90 = !DILocalVariable(name: "vla", arg: 4, scope: !79, type: !20, flags: DIFlagArtificial)
!91 = !DILocalVariable(name: "a", arg: 5, scope: !79, file: !1, line: 54, type: !67)
!92 = !DILocalVariable(name: ".omp.iv", scope: !79, type: !10, flags: DIFlagArtificial)
!93 = !DILocalVariable(name: ".capture_expr.", scope: !79, type: !10, flags: DIFlagArtificial)
!94 = !DILocalVariable(name: "i", scope: !79, type: !10, flags: DIFlagArtificial)
!95 = !DILocalVariable(name: ".omp.lb", scope: !79, type: !10, flags: DIFlagArtificial)
!96 = !DILocalVariable(name: ".omp.ub", scope: !79, type: !10, flags: DIFlagArtificial)
!97 = !DILocalVariable(name: ".omp.stride", scope: !79, type: !10, flags: DIFlagArtificial)
!98 = !DILocalVariable(name: ".omp.is_last", scope: !79, type: !10, flags: DIFlagArtificial)
!99 = !DILocation(line: 0, scope: !79)
!100 = !DILocation(line: 53, column: 7, scope: !79)
!101 = !DILocation(line: 54, column: 7, scope: !79)
!102 = !DILocation(line: 61, column: 3, scope: !79)
!103 = !DILocation(line: 61, column: 15, scope: !79)
!104 = !DILocation(line: 61, column: 19, scope: !79)
!105 = !DILocation(line: 61, column: 8, scope: !79)
!106 = !DILocation(line: 62, column: 12, scope: !79)
!107 = !DILocation(line: 62, column: 10, scope: !79)
!108 = !DILocation(line: 62, column: 14, scope: !79)
!109 = !DILocation(line: 62, column: 7, scope: !79)
!110 = !DILocation(line: 62, column: 5, scope: !79)
!111 = !DILocation(line: 62, column: 9, scope: !79)
!112 = !DILocation(line: 60, column: 1, scope: !79)
!113 = distinct !{!113, !112, !114}
!114 = !DILocation(line: 60, column: 25, scope: !79)
!115 = !DILocation(line: 62, column: 15, scope: !79)
!116 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 61, type: !80, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !117)
!117 = !{!118, !119, !120, !121, !122}
!118 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !116, type: !82, flags: DIFlagArtificial)
!119 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !116, type: !82, flags: DIFlagArtificial)
!120 = !DILocalVariable(name: "len", arg: 3, scope: !116, type: !67, flags: DIFlagArtificial)
!121 = !DILocalVariable(name: "vla", arg: 4, scope: !116, type: !20, flags: DIFlagArtificial)
!122 = !DILocalVariable(name: "a", arg: 5, scope: !116, type: !67, flags: DIFlagArtificial)
!123 = !DILocation(line: 0, scope: !116)
!124 = !DILocation(line: 61, column: 3, scope: !116)
!125 = !{!126}
!126 = !{i64 2, i64 -1, i64 -1, i1 true}
!127 = distinct !DISubprogram(name: "__omp_offloading_1030a_2160908_main_l59", scope: !1, file: !1, line: 60, type: !128, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !130)
!128 = !DISubroutineType(types: !129)
!129 = !{null, !20, !20, !67}
!130 = !{!131, !132, !133}
!131 = !DILocalVariable(name: "len", arg: 1, scope: !127, type: !20, flags: DIFlagArtificial)
!132 = !DILocalVariable(name: "vla", arg: 2, scope: !127, type: !20, flags: DIFlagArtificial)
!133 = !DILocalVariable(name: "a", arg: 3, scope: !127, type: !67, flags: DIFlagArtificial)
!134 = !DILocation(line: 0, scope: !127)
!135 = !DILocation(line: 60, column: 1, scope: !127)
