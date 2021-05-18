; ModuleID = 'integration/dataracebench/DRB018-plusplus-orig-yes.c'
source_filename = "integration/dataracebench/DRB018-plusplus-orig-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@input = common dso_local global [1000 x i32] zeroinitializer, align 16, !dbg !0
@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [66 x i8] c";integration/dataracebench/DRB018-plusplus-orig-yes.c;main;69;1;;\00", align 1
@output = common dso_local global [1000 x i32] zeroinitializer, align 16, !dbg !6
@2 = private unnamed_addr constant [67 x i8] c";integration/dataracebench/DRB018-plusplus-orig-yes.c;main;69;25;;\00", align 1
@3 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"output[500]=%d\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main() #0 !dbg !16 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %inLen = alloca i32, align 4
  %outLen = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32 0, i32* %retval, align 4
  %2 = bitcast i32* %i to i8*, !dbg !23
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #5, !dbg !23
  call void @llvm.dbg.declare(metadata i32* %i, metadata !20, metadata !DIExpression()), !dbg !24
  %3 = bitcast i32* %inLen to i8*, !dbg !25
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #5, !dbg !25
  call void @llvm.dbg.declare(metadata i32* %inLen, metadata !21, metadata !DIExpression()), !dbg !26
  store i32 1000, i32* %inLen, align 4, !dbg !26, !tbaa !27
  %4 = bitcast i32* %outLen to i8*, !dbg !31
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #5, !dbg !31
  call void @llvm.dbg.declare(metadata i32* %outLen, metadata !22, metadata !DIExpression()), !dbg !32
  store i32 0, i32* %outLen, align 4, !dbg !32, !tbaa !27
  store i32 0, i32* %i, align 4, !dbg !33, !tbaa !27
  br label %for.cond, !dbg !35

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %i, align 4, !dbg !36, !tbaa !27
  %6 = load i32, i32* %inLen, align 4, !dbg !38, !tbaa !27
  %cmp = icmp slt i32 %5, %6, !dbg !39
  br i1 %cmp, label %for.body, label %for.end, !dbg !40

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4, !dbg !41, !tbaa !27
  %8 = load i32, i32* %i, align 4, !dbg !42, !tbaa !27
  %idxprom = sext i32 %8 to i64, !dbg !43
  %arrayidx = getelementptr inbounds [1000 x i32], [1000 x i32]* @input, i64 0, i64 %idxprom, !dbg !43
  store i32 %7, i32* %arrayidx, align 4, !dbg !44, !tbaa !27
  br label %for.inc, !dbg !43

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4, !dbg !45, !tbaa !27
  %inc = add nsw i32 %9, 1, !dbg !45
  store i32 %inc, i32* %i, align 4, !dbg !45, !tbaa !27
  br label %for.cond, !dbg !46, !llvm.loop !47

for.end:                                          ; preds = %for.cond
  %10 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !49
  store i8* getelementptr inbounds ([66 x i8], [66 x i8]* @1, i32 0, i32 0), i8** %10, align 8, !dbg !49, !tbaa !50
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 2, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %inLen, i32* %outLen), !dbg !49
  %11 = load i32, i32* getelementptr inbounds ([1000 x i32], [1000 x i32]* @output, i64 0, i64 500), align 16, !dbg !53, !tbaa !27
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %11), !dbg !54
  %12 = bitcast i32* %outLen to i8*, !dbg !55
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %12) #5, !dbg !55
  %13 = bitcast i32* %inLen to i8*, !dbg !55
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %13) #5, !dbg !55
  %14 = bitcast i32* %i to i8*, !dbg !55
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %14) #5, !dbg !55
  ret i32 0, !dbg !56
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %inLen, i32* dereferenceable(4) %outLen) #3 !dbg !57 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %inLen.addr = alloca i32*, align 8
  %outLen.addr = alloca i32*, align 8
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
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !77
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !66, metadata !DIExpression()), !dbg !78
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !77
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !67, metadata !DIExpression()), !dbg !78
  store i32* %inLen, i32** %inLen.addr, align 8, !tbaa !77
  call void @llvm.dbg.declare(metadata i32** %inLen.addr, metadata !68, metadata !DIExpression()), !dbg !79
  store i32* %outLen, i32** %outLen.addr, align 8, !tbaa !77
  call void @llvm.dbg.declare(metadata i32** %outLen.addr, metadata !69, metadata !DIExpression()), !dbg !80
  %2 = load i32*, i32** %inLen.addr, align 8, !dbg !81, !tbaa !77
  %3 = load i32*, i32** %outLen.addr, align 8, !dbg !81, !tbaa !77
  %4 = bitcast i32* %.omp.iv to i8*, !dbg !81
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #5, !dbg !81
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !70, metadata !DIExpression()), !dbg !78
  %5 = bitcast i32* %.capture_expr. to i8*, !dbg !81
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #5, !dbg !81
  call void @llvm.dbg.declare(metadata i32* %.capture_expr., metadata !71, metadata !DIExpression()), !dbg !78
  %6 = load i32, i32* %2, align 4, !dbg !82, !tbaa !27
  store i32 %6, i32* %.capture_expr., align 4, !dbg !82, !tbaa !27
  %7 = bitcast i32* %.capture_expr.1 to i8*, !dbg !81
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #5, !dbg !81
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.1, metadata !71, metadata !DIExpression()), !dbg !78
  %8 = load i32, i32* %.capture_expr., align 4, !dbg !82, !tbaa !27
  %sub = sub nsw i32 %8, 0, !dbg !81
  %sub2 = sub nsw i32 %sub, 1, !dbg !81
  %add = add nsw i32 %sub2, 1, !dbg !81
  %div = sdiv i32 %add, 1, !dbg !81
  %sub3 = sub nsw i32 %div, 1, !dbg !81
  store i32 %sub3, i32* %.capture_expr.1, align 4, !dbg !81, !tbaa !27
  %9 = bitcast i32* %i to i8*, !dbg !81
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #5, !dbg !81
  call void @llvm.dbg.declare(metadata i32* %i, metadata !72, metadata !DIExpression()), !dbg !78
  store i32 0, i32* %i, align 4, !dbg !83, !tbaa !27
  %10 = bitcast i32* %i to i8*, !dbg !81
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %10) #5, !dbg !81
  %11 = load i32, i32* %.capture_expr., align 4, !dbg !82, !tbaa !27
  %cmp = icmp slt i32 0, %11, !dbg !81
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end, !dbg !81

omp.precond.then:                                 ; preds = %entry
  %12 = bitcast i32* %.omp.lb to i8*, !dbg !81
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #5, !dbg !81
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !73, metadata !DIExpression()), !dbg !78
  store i32 0, i32* %.omp.lb, align 4, !dbg !84, !tbaa !27
  %13 = bitcast i32* %.omp.ub to i8*, !dbg !81
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %13) #5, !dbg !81
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !74, metadata !DIExpression()), !dbg !78
  %14 = load i32, i32* %.capture_expr.1, align 4, !dbg !81, !tbaa !27
  store i32 %14, i32* %.omp.ub, align 4, !dbg !84, !tbaa !27
  %15 = bitcast i32* %.omp.stride to i8*, !dbg !81
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %15) #5, !dbg !81
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !75, metadata !DIExpression()), !dbg !78
  store i32 1, i32* %.omp.stride, align 4, !dbg !84, !tbaa !27
  %16 = bitcast i32* %.omp.is_last to i8*, !dbg !81
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %16) #5, !dbg !81
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !76, metadata !DIExpression()), !dbg !78
  store i32 0, i32* %.omp.is_last, align 4, !dbg !84, !tbaa !27
  %17 = bitcast i32* %i4 to i8*, !dbg !81
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %17) #5, !dbg !81
  call void @llvm.dbg.declare(metadata i32* %i4, metadata !72, metadata !DIExpression()), !dbg !78
  %18 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !81
  store i8* getelementptr inbounds ([66 x i8], [66 x i8]* @1, i32 0, i32 0), i8** %18, align 8, !dbg !81, !tbaa !50
  %19 = load i32*, i32** %.global_tid..addr, align 8, !dbg !81
  %20 = load i32, i32* %19, align 4, !dbg !81, !tbaa !27
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %20, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !81
  %21 = load i32, i32* %.omp.ub, align 4, !dbg !84, !tbaa !27
  %22 = load i32, i32* %.capture_expr.1, align 4, !dbg !81, !tbaa !27
  %cmp5 = icmp sgt i32 %21, %22, !dbg !84
  br i1 %cmp5, label %cond.true, label %cond.false, !dbg !84

cond.true:                                        ; preds = %omp.precond.then
  %23 = load i32, i32* %.capture_expr.1, align 4, !dbg !81, !tbaa !27
  br label %cond.end, !dbg !84

cond.false:                                       ; preds = %omp.precond.then
  %24 = load i32, i32* %.omp.ub, align 4, !dbg !84, !tbaa !27
  br label %cond.end, !dbg !84

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %23, %cond.true ], [ %24, %cond.false ], !dbg !84
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !84, !tbaa !27
  %25 = load i32, i32* %.omp.lb, align 4, !dbg !84, !tbaa !27
  store i32 %25, i32* %.omp.iv, align 4, !dbg !84, !tbaa !27
  br label %omp.inner.for.cond, !dbg !81

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %26 = load i32, i32* %.omp.iv, align 4, !dbg !84, !tbaa !27
  %27 = load i32, i32* %.omp.ub, align 4, !dbg !84, !tbaa !27
  %cmp6 = icmp sle i32 %26, %27, !dbg !81
  br i1 %cmp6, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !81

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !81

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %28 = load i32, i32* %.omp.iv, align 4, !dbg !84, !tbaa !27
  %mul = mul nsw i32 %28, 1, !dbg !83
  %add7 = add nsw i32 0, %mul, !dbg !83
  store i32 %add7, i32* %i4, align 4, !dbg !83, !tbaa !27
  %29 = load i32, i32* %i4, align 4, !dbg !85, !tbaa !27
  %idxprom = sext i32 %29 to i64, !dbg !87
  %arrayidx = getelementptr inbounds [1000 x i32], [1000 x i32]* @input, i64 0, i64 %idxprom, !dbg !87
  %30 = load i32, i32* %arrayidx, align 4, !dbg !87, !tbaa !27
  %31 = load i32, i32* %3, align 4, !dbg !88, !tbaa !27
  %inc = add nsw i32 %31, 1, !dbg !88
  store i32 %inc, i32* %3, align 4, !dbg !88, !tbaa !27
  %idxprom8 = sext i32 %31 to i64, !dbg !89
  %arrayidx9 = getelementptr inbounds [1000 x i32], [1000 x i32]* @output, i64 0, i64 %idxprom8, !dbg !89
  store i32 %30, i32* %arrayidx9, align 4, !dbg !90, !tbaa !27
  br label %omp.body.continue, !dbg !91

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !92

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %32 = load i32, i32* %.omp.iv, align 4, !dbg !84, !tbaa !27
  %add10 = add nsw i32 %32, 1, !dbg !81
  store i32 %add10, i32* %.omp.iv, align 4, !dbg !81, !tbaa !27
  br label %omp.inner.for.cond, !dbg !92, !llvm.loop !93

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !92

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %33 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !92
  store i8* getelementptr inbounds ([67 x i8], [67 x i8]* @2, i32 0, i32 0), i8** %33, align 8, !dbg !92, !tbaa !50
  %34 = load i32*, i32** %.global_tid..addr, align 8, !dbg !92
  %35 = load i32, i32* %34, align 4, !dbg !92, !tbaa !27
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %35), !dbg !92
  %36 = bitcast i32* %i4 to i8*, !dbg !92
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %36) #5, !dbg !92
  %37 = bitcast i32* %.omp.is_last to i8*, !dbg !92
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %37) #5, !dbg !92
  %38 = bitcast i32* %.omp.stride to i8*, !dbg !92
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %38) #5, !dbg !92
  %39 = bitcast i32* %.omp.ub to i8*, !dbg !92
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %39) #5, !dbg !92
  %40 = bitcast i32* %.omp.lb to i8*, !dbg !92
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %40) #5, !dbg !92
  br label %omp.precond.end, !dbg !92

omp.precond.end:                                  ; preds = %omp.loop.exit, %entry
  %41 = bitcast i32* %.capture_expr.1 to i8*, !dbg !92
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %41) #5, !dbg !92
  %42 = bitcast i32* %.capture_expr. to i8*, !dbg !92
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %42) #5, !dbg !92
  %43 = bitcast i32* %.omp.iv to i8*, !dbg !92
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %43) #5, !dbg !92
  ret void, !dbg !95
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %inLen, i32* dereferenceable(4) %outLen) #3 !dbg !96 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %inLen.addr = alloca i32*, align 8
  %outLen.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !77
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !98, metadata !DIExpression()), !dbg !102
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !77
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !99, metadata !DIExpression()), !dbg !102
  store i32* %inLen, i32** %inLen.addr, align 8, !tbaa !77
  call void @llvm.dbg.declare(metadata i32** %inLen.addr, metadata !100, metadata !DIExpression()), !dbg !102
  store i32* %outLen, i32** %outLen.addr, align 8, !tbaa !77
  call void @llvm.dbg.declare(metadata i32** %outLen.addr, metadata !101, metadata !DIExpression()), !dbg !102
  %0 = load i32*, i32** %inLen.addr, align 8, !dbg !103, !tbaa !77
  %1 = load i32*, i32** %outLen.addr, align 8, !dbg !103, !tbaa !77
  %2 = load i32*, i32** %.global_tid..addr, align 8, !dbg !103, !tbaa !77
  %3 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !103, !tbaa !77
  %4 = load i32*, i32** %inLen.addr, align 8, !dbg !103, !tbaa !77
  %5 = load i32*, i32** %outLen.addr, align 8, !dbg !103, !tbaa !77
  call void @.omp_outlined._debug__(i32* %2, i32* %3, i32* %4, i32* %5) #5, !dbg !103
  ret void, !dbg !103
}

declare !callback !104 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

declare dso_local i32 @printf(i8*, ...) #4

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!12, !13, !14}
!llvm.ident = !{!15}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "input", scope: !2, file: !3, line: 57, type: !8, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 10.0.1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, globals: !5, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "integration/dataracebench/DRB018-plusplus-orig-yes.c", directory: "/home/brad/Code/OpenRace/tests/data")
!4 = !{}
!5 = !{!0, !6}
!6 = !DIGlobalVariableExpression(var: !7, expr: !DIExpression())
!7 = distinct !DIGlobalVariable(name: "output", scope: !2, file: !3, line: 58, type: !8, isLocal: false, isDefinition: true)
!8 = !DICompositeType(tag: DW_TAG_array_type, baseType: !9, size: 32000, elements: !10)
!9 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!10 = !{!11}
!11 = !DISubrange(count: 1000)
!12 = !{i32 7, !"Dwarf Version", i32 4}
!13 = !{i32 2, !"Debug Info Version", i32 3}
!14 = !{i32 1, !"wchar_size", i32 4}
!15 = !{!"clang version 10.0.1 "}
!16 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 60, type: !17, scopeLine: 61, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !19)
!17 = !DISubroutineType(types: !18)
!18 = !{!9}
!19 = !{!20, !21, !22}
!20 = !DILocalVariable(name: "i", scope: !16, file: !3, line: 62, type: !9)
!21 = !DILocalVariable(name: "inLen", scope: !16, file: !3, line: 63, type: !9)
!22 = !DILocalVariable(name: "outLen", scope: !16, file: !3, line: 64, type: !9)
!23 = !DILocation(line: 62, column: 3, scope: !16)
!24 = !DILocation(line: 62, column: 7, scope: !16)
!25 = !DILocation(line: 63, column: 3, scope: !16)
!26 = !DILocation(line: 63, column: 7, scope: !16)
!27 = !{!28, !28, i64 0}
!28 = !{!"int", !29, i64 0}
!29 = !{!"omnipotent char", !30, i64 0}
!30 = !{!"Simple C/C++ TBAA"}
!31 = !DILocation(line: 64, column: 3, scope: !16)
!32 = !DILocation(line: 64, column: 7, scope: !16)
!33 = !DILocation(line: 66, column: 9, scope: !34)
!34 = distinct !DILexicalBlock(scope: !16, file: !3, line: 66, column: 3)
!35 = !DILocation(line: 66, column: 8, scope: !34)
!36 = !DILocation(line: 66, column: 13, scope: !37)
!37 = distinct !DILexicalBlock(scope: !34, file: !3, line: 66, column: 3)
!38 = !DILocation(line: 66, column: 15, scope: !37)
!39 = !DILocation(line: 66, column: 14, scope: !37)
!40 = !DILocation(line: 66, column: 3, scope: !34)
!41 = !DILocation(line: 67, column: 15, scope: !37)
!42 = !DILocation(line: 67, column: 11, scope: !37)
!43 = !DILocation(line: 67, column: 5, scope: !37)
!44 = !DILocation(line: 67, column: 13, scope: !37)
!45 = !DILocation(line: 66, column: 22, scope: !37)
!46 = !DILocation(line: 66, column: 3, scope: !37)
!47 = distinct !{!47, !40, !48}
!48 = !DILocation(line: 67, column: 15, scope: !34)
!49 = !DILocation(line: 69, column: 1, scope: !16)
!50 = !{!51, !52, i64 16}
!51 = !{!"ident_t", !28, i64 0, !28, i64 4, !28, i64 8, !28, i64 12, !52, i64 16}
!52 = !{!"any pointer", !29, i64 0}
!53 = !DILocation(line: 75, column: 29, scope: !16)
!54 = !DILocation(line: 75, column: 3, scope: !16)
!55 = !DILocation(line: 78, column: 1, scope: !16)
!56 = !DILocation(line: 77, column: 3, scope: !16)
!57 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !3, file: !3, line: 70, type: !58, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !65)
!58 = !DISubroutineType(types: !59)
!59 = !{null, !60, !60, !64, !64}
!60 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !61)
!61 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !62)
!62 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!63 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !9)
!64 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !9, size: 64)
!65 = !{!66, !67, !68, !69, !70, !71, !71, !72, !73, !74, !75, !76, !72}
!66 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !57, type: !60, flags: DIFlagArtificial)
!67 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !57, type: !60, flags: DIFlagArtificial)
!68 = !DILocalVariable(name: "inLen", arg: 3, scope: !57, file: !3, line: 63, type: !64)
!69 = !DILocalVariable(name: "outLen", arg: 4, scope: !57, file: !3, line: 64, type: !64)
!70 = !DILocalVariable(name: ".omp.iv", scope: !57, type: !9, flags: DIFlagArtificial)
!71 = !DILocalVariable(name: ".capture_expr.", scope: !57, type: !9, flags: DIFlagArtificial)
!72 = !DILocalVariable(name: "i", scope: !57, type: !9, flags: DIFlagArtificial)
!73 = !DILocalVariable(name: ".omp.lb", scope: !57, type: !9, flags: DIFlagArtificial)
!74 = !DILocalVariable(name: ".omp.ub", scope: !57, type: !9, flags: DIFlagArtificial)
!75 = !DILocalVariable(name: ".omp.stride", scope: !57, type: !9, flags: DIFlagArtificial)
!76 = !DILocalVariable(name: ".omp.is_last", scope: !57, type: !9, flags: DIFlagArtificial)
!77 = !{!52, !52, i64 0}
!78 = !DILocation(line: 0, scope: !57)
!79 = !DILocation(line: 63, column: 7, scope: !57)
!80 = !DILocation(line: 64, column: 7, scope: !57)
!81 = !DILocation(line: 70, column: 3, scope: !57)
!82 = !DILocation(line: 70, column: 15, scope: !57)
!83 = !DILocation(line: 70, column: 22, scope: !57)
!84 = !DILocation(line: 70, column: 8, scope: !57)
!85 = !DILocation(line: 72, column: 30, scope: !86)
!86 = distinct !DILexicalBlock(scope: !57, file: !3, line: 71, column: 3)
!87 = !DILocation(line: 72, column: 24, scope: !86)
!88 = !DILocation(line: 72, column: 18, scope: !86)
!89 = !DILocation(line: 72, column: 5, scope: !86)
!90 = !DILocation(line: 72, column: 22, scope: !86)
!91 = !DILocation(line: 73, column: 3, scope: !86)
!92 = !DILocation(line: 69, column: 1, scope: !57)
!93 = distinct !{!93, !92, !94}
!94 = !DILocation(line: 69, column: 25, scope: !57)
!95 = !DILocation(line: 73, column: 3, scope: !57)
!96 = distinct !DISubprogram(name: ".omp_outlined.", scope: !3, file: !3, line: 70, type: !58, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !97)
!97 = !{!98, !99, !100, !101}
!98 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !96, type: !60, flags: DIFlagArtificial)
!99 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !96, type: !60, flags: DIFlagArtificial)
!100 = !DILocalVariable(name: "inLen", arg: 3, scope: !96, type: !64, flags: DIFlagArtificial)
!101 = !DILocalVariable(name: "outLen", arg: 4, scope: !96, type: !64, flags: DIFlagArtificial)
!102 = !DILocation(line: 0, scope: !96)
!103 = !DILocation(line: 70, column: 3, scope: !96)
!104 = !{!105}
!105 = !{i64 2, i64 -1, i64 -1, i1 true}
