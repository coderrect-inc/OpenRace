; ModuleID = 'integration/openmp/ordered-yes.c'
source_filename = "integration/openmp/ordered-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [59 x i8] c";integration/openmp/ordered-yes.c;ordered_race_test;13;3;;\00", align 1
@2 = private unnamed_addr constant [59 x i8] c";integration/openmp/ordered-yes.c;ordered_race_test;19;9;;\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @ordered_race_test() #0 !dbg !7 {
entry:
  %i = alloca i32, align 4
  %sum = alloca i32, align 4
  %fail_condition = alloca i32, align 4
  %a = alloca [100 x i32], align 16
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  %2 = bitcast i32* %i to i8*, !dbg !19
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #5, !dbg !19
  call void @llvm.dbg.declare(metadata i32* %i, metadata !11, metadata !DIExpression()), !dbg !20
  %3 = bitcast i32* %sum to i8*, !dbg !19
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #5, !dbg !19
  call void @llvm.dbg.declare(metadata i32* %sum, metadata !13, metadata !DIExpression()), !dbg !21
  %4 = bitcast i32* %fail_condition to i8*, !dbg !19
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #5, !dbg !19
  call void @llvm.dbg.declare(metadata i32* %fail_condition, metadata !14, metadata !DIExpression()), !dbg !22
  store i32 0, i32* %fail_condition, align 4, !dbg !22, !tbaa !23
  %5 = bitcast [100 x i32]* %a to i8*, !dbg !27
  call void @llvm.lifetime.start.p0i8(i64 400, i8* %5) #5, !dbg !27
  call void @llvm.dbg.declare(metadata [100 x i32]* %a, metadata !15, metadata !DIExpression()), !dbg !28
  store i32 1, i32* %i, align 4, !dbg !29, !tbaa !23
  br label %for.cond, !dbg !31

for.cond:                                         ; preds = %for.inc, %entry
  %6 = load i32, i32* %i, align 4, !dbg !32, !tbaa !23
  %cmp = icmp slt i32 %6, 100, !dbg !34
  br i1 %cmp, label %for.body, label %for.end, !dbg !35

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %i, align 4, !dbg !36, !tbaa !23
  %8 = load i32, i32* %i, align 4, !dbg !38, !tbaa !23
  %idxprom = sext i32 %8 to i64, !dbg !39
  %arrayidx = getelementptr inbounds [100 x i32], [100 x i32]* %a, i64 0, i64 %idxprom, !dbg !39
  store i32 %7, i32* %arrayidx, align 4, !dbg !40, !tbaa !23
  br label %for.inc, !dbg !41

for.inc:                                          ; preds = %for.body
  %9 = load i32, i32* %i, align 4, !dbg !42, !tbaa !23
  %inc = add nsw i32 %9, 1, !dbg !42
  store i32 %inc, i32* %i, align 4, !dbg !42, !tbaa !23
  br label %for.cond, !dbg !43, !llvm.loop !44

for.end:                                          ; preds = %for.cond
  %10 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !46
  store i8* getelementptr inbounds ([59 x i8], [59 x i8]* @1, i32 0, i32 0), i8** %10, align 8, !dbg !46, !tbaa !47
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 3, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, [100 x i32]*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %fail_condition, [100 x i32]* %a, i32* %sum), !dbg !46
  %11 = load i32, i32* %sum, align 4, !dbg !50, !tbaa !23
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %11), !dbg !51
  %12 = bitcast [100 x i32]* %a to i8*, !dbg !52
  call void @llvm.lifetime.end.p0i8(i64 400, i8* %12) #5, !dbg !52
  %13 = bitcast i32* %fail_condition to i8*, !dbg !52
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %13) #5, !dbg !52
  %14 = bitcast i32* %sum to i8*, !dbg !52
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %14) #5, !dbg !52
  %15 = bitcast i32* %i to i8*, !dbg !52
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %15) #5, !dbg !52
  ret void, !dbg !52
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %fail_condition, [100 x i32]* dereferenceable(400) %a, i32* dereferenceable(4) %sum) #3 !dbg !53 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %fail_condition.addr = alloca i32*, align 8
  %a.addr = alloca [100 x i32]*, align 8
  %sum.addr = alloca i32*, align 8
  %.omp.iv = alloca i32, align 4
  %tmp = alloca i32, align 4
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %i = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !74
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !63, metadata !DIExpression()), !dbg !75
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !74
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !64, metadata !DIExpression()), !dbg !75
  store i32* %fail_condition, i32** %fail_condition.addr, align 8, !tbaa !74
  call void @llvm.dbg.declare(metadata i32** %fail_condition.addr, metadata !65, metadata !DIExpression()), !dbg !76
  store [100 x i32]* %a, [100 x i32]** %a.addr, align 8, !tbaa !74
  call void @llvm.dbg.declare(metadata [100 x i32]** %a.addr, metadata !66, metadata !DIExpression()), !dbg !77
  store i32* %sum, i32** %sum.addr, align 8, !tbaa !74
  call void @llvm.dbg.declare(metadata i32** %sum.addr, metadata !67, metadata !DIExpression()), !dbg !78
  %2 = load i32*, i32** %fail_condition.addr, align 8, !dbg !79, !tbaa !74
  %3 = load [100 x i32]*, [100 x i32]** %a.addr, align 8, !dbg !79, !tbaa !74
  %4 = load i32*, i32** %sum.addr, align 8, !dbg !79, !tbaa !74
  %5 = bitcast i32* %.omp.iv to i8*, !dbg !79
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #5, !dbg !79
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !68, metadata !DIExpression()), !dbg !75
  %6 = bitcast i32* %.omp.lb to i8*, !dbg !79
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #5, !dbg !79
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !69, metadata !DIExpression()), !dbg !75
  store i32 0, i32* %.omp.lb, align 4, !dbg !80, !tbaa !23
  %7 = bitcast i32* %.omp.ub to i8*, !dbg !79
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #5, !dbg !79
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !70, metadata !DIExpression()), !dbg !75
  store i32 97, i32* %.omp.ub, align 4, !dbg !80, !tbaa !23
  %8 = bitcast i32* %.omp.stride to i8*, !dbg !79
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #5, !dbg !79
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !71, metadata !DIExpression()), !dbg !75
  store i32 1, i32* %.omp.stride, align 4, !dbg !80, !tbaa !23
  %9 = bitcast i32* %.omp.is_last to i8*, !dbg !79
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #5, !dbg !79
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !72, metadata !DIExpression()), !dbg !75
  store i32 0, i32* %.omp.is_last, align 4, !dbg !80, !tbaa !23
  %10 = bitcast i32* %i to i8*, !dbg !79
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #5, !dbg !79
  call void @llvm.dbg.declare(metadata i32* %i, metadata !73, metadata !DIExpression()), !dbg !75
  %11 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !79
  store i8* getelementptr inbounds ([59 x i8], [59 x i8]* @1, i32 0, i32 0), i8** %11, align 8, !dbg !79, !tbaa !47
  %12 = load i32*, i32** %.global_tid..addr, align 8, !dbg !79
  %13 = load i32, i32* %12, align 4, !dbg !79, !tbaa !23
  call void @__kmpc_dispatch_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %13, i32 67, i32 0, i32 97, i32 1, i32 1), !dbg !79
  br label %omp.dispatch.cond, !dbg !79

omp.dispatch.cond:                                ; preds = %omp.dispatch.inc, %entry
  %14 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !79
  store i8* getelementptr inbounds ([59 x i8], [59 x i8]* @1, i32 0, i32 0), i8** %14, align 8, !dbg !79, !tbaa !47
  %15 = call i32 @__kmpc_dispatch_next_4(%struct.ident_t* %.kmpc_loc.addr, i32 %13, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride), !dbg !79
  %tobool = icmp ne i32 %15, 0, !dbg !79
  br i1 %tobool, label %omp.dispatch.body, label %omp.dispatch.cleanup, !dbg !79

omp.dispatch.cleanup:                             ; preds = %omp.dispatch.cond
  br label %omp.dispatch.end, !dbg !79

omp.dispatch.body:                                ; preds = %omp.dispatch.cond
  %16 = load i32, i32* %.omp.lb, align 4, !dbg !80, !tbaa !23
  store i32 %16, i32* %.omp.iv, align 4, !dbg !80, !tbaa !23
  br label %omp.inner.for.cond, !dbg !79

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %omp.dispatch.body
  %17 = load i32, i32* %.omp.iv, align 4, !dbg !80, !tbaa !23
  %18 = load i32, i32* %.omp.ub, align 4, !dbg !80, !tbaa !23
  %cmp = icmp sle i32 %17, %18, !dbg !79
  br i1 %cmp, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !79

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !79

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %19 = load i32, i32* %.omp.iv, align 4, !dbg !80, !tbaa !23
  %mul = mul nsw i32 %19, 1, !dbg !81
  %add = add nsw i32 1, %mul, !dbg !81
  store i32 %add, i32* %i, align 4, !dbg !81, !tbaa !23
  %20 = load i32, i32* %2, align 4, !dbg !82, !tbaa !23
  %cmp1 = icmp sge i32 %20, 10000, !dbg !85
  br i1 %cmp1, label %if.then, label %if.end, !dbg !86

if.then:                                          ; preds = %omp.inner.for.body
  br label %omp.body.continue, !dbg !87

if.end:                                           ; preds = %omp.inner.for.body
  %21 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !89
  store i8* getelementptr inbounds ([59 x i8], [59 x i8]* @2, i32 0, i32 0), i8** %21, align 8, !dbg !89, !tbaa !47
  call void @__kmpc_ordered(%struct.ident_t* %.kmpc_loc.addr, i32 %13), !dbg !89
  %22 = load i32, i32* %i, align 4, !dbg !90, !tbaa !23
  %idxprom = sext i32 %22 to i64, !dbg !93
  %arrayidx = getelementptr inbounds [100 x i32], [100 x i32]* %3, i64 0, i64 %idxprom, !dbg !93
  %23 = load i32, i32* %arrayidx, align 4, !dbg !93, !tbaa !23
  %add2 = add nsw i32 %23, 1, !dbg !94
  %24 = load i32, i32* %i, align 4, !dbg !95, !tbaa !23
  %idxprom3 = sext i32 %24 to i64, !dbg !96
  %arrayidx4 = getelementptr inbounds [100 x i32], [100 x i32]* %3, i64 0, i64 %idxprom3, !dbg !96
  store i32 %add2, i32* %arrayidx4, align 4, !dbg !97, !tbaa !23
  %25 = load i32, i32* %4, align 4, !dbg !98, !tbaa !23
  %26 = load i32, i32* %i, align 4, !dbg !99, !tbaa !23
  %add5 = add nsw i32 %26, 1, !dbg !100
  %idxprom6 = sext i32 %add5 to i64, !dbg !101
  %arrayidx7 = getelementptr inbounds [100 x i32], [100 x i32]* %3, i64 0, i64 %idxprom6, !dbg !101
  %27 = load i32, i32* %arrayidx7, align 4, !dbg !101, !tbaa !23
  %add8 = add nsw i32 %25, %27, !dbg !102
  store i32 %add8, i32* %4, align 4, !dbg !103, !tbaa !23
  %28 = load i32, i32* %4, align 4, !dbg !104, !tbaa !23
  %cmp9 = icmp sgt i32 %28, 2000, !dbg !106
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !107

if.then10:                                        ; preds = %if.end
  %29 = load i32, i32* %2, align 4, !dbg !108, !tbaa !23
  %inc = add nsw i32 %29, 1, !dbg !108
  store i32 %inc, i32* %2, align 4, !dbg !108, !tbaa !23
  br label %if.end11, !dbg !110

if.end11:                                         ; preds = %if.then10, %if.end
  call void @__kmpc_end_ordered(%struct.ident_t* %.kmpc_loc.addr, i32 %13), !dbg !111
  br label %omp.body.continue, !dbg !112

omp.body.continue:                                ; preds = %if.end11, %if.then
  br label %omp.inner.for.inc, !dbg !113

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %30 = load i32, i32* %.omp.iv, align 4, !dbg !80, !tbaa !23
  %add12 = add nsw i32 %30, 1, !dbg !79
  store i32 %add12, i32* %.omp.iv, align 4, !dbg !79, !tbaa !23
  %31 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !113
  store i8* getelementptr inbounds ([59 x i8], [59 x i8]* @1, i32 0, i32 0), i8** %31, align 8, !dbg !113, !tbaa !47
  call void @__kmpc_dispatch_fini_4(%struct.ident_t* %.kmpc_loc.addr, i32 %13), !dbg !113
  br label %omp.inner.for.cond, !dbg !113, !llvm.loop !114

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.dispatch.inc, !dbg !113

omp.dispatch.inc:                                 ; preds = %omp.inner.for.end
  br label %omp.dispatch.cond, !dbg !113, !llvm.loop !116

omp.dispatch.end:                                 ; preds = %omp.dispatch.cleanup
  %32 = bitcast i32* %i to i8*, !dbg !113
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %32) #5, !dbg !113
  %33 = bitcast i32* %.omp.is_last to i8*, !dbg !113
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %33) #5, !dbg !113
  %34 = bitcast i32* %.omp.stride to i8*, !dbg !113
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %34) #5, !dbg !113
  %35 = bitcast i32* %.omp.ub to i8*, !dbg !113
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %35) #5, !dbg !113
  %36 = bitcast i32* %.omp.lb to i8*, !dbg !113
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %36) #5, !dbg !113
  %37 = bitcast i32* %.omp.iv to i8*, !dbg !113
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %37) #5, !dbg !113
  ret void, !dbg !117
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local void @__kmpc_dispatch_init_4(%struct.ident_t*, i32, i32, i32, i32, i32, i32)

declare dso_local i32 @__kmpc_dispatch_next_4(%struct.ident_t*, i32, i32*, i32*, i32*, i32*)

declare dso_local void @__kmpc_end_ordered(%struct.ident_t*, i32)

declare dso_local void @__kmpc_ordered(%struct.ident_t*, i32)

declare dso_local void @__kmpc_dispatch_fini_4(%struct.ident_t*, i32)

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %fail_condition, [100 x i32]* dereferenceable(400) %a, i32* dereferenceable(4) %sum) #3 !dbg !118 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %fail_condition.addr = alloca i32*, align 8
  %a.addr = alloca [100 x i32]*, align 8
  %sum.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !74
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !120, metadata !DIExpression()), !dbg !125
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !74
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !121, metadata !DIExpression()), !dbg !125
  store i32* %fail_condition, i32** %fail_condition.addr, align 8, !tbaa !74
  call void @llvm.dbg.declare(metadata i32** %fail_condition.addr, metadata !122, metadata !DIExpression()), !dbg !125
  store [100 x i32]* %a, [100 x i32]** %a.addr, align 8, !tbaa !74
  call void @llvm.dbg.declare(metadata [100 x i32]** %a.addr, metadata !123, metadata !DIExpression()), !dbg !125
  store i32* %sum, i32** %sum.addr, align 8, !tbaa !74
  call void @llvm.dbg.declare(metadata i32** %sum.addr, metadata !124, metadata !DIExpression()), !dbg !125
  %0 = load i32*, i32** %fail_condition.addr, align 8, !dbg !126, !tbaa !74
  %1 = load [100 x i32]*, [100 x i32]** %a.addr, align 8, !dbg !126, !tbaa !74
  %2 = load i32*, i32** %sum.addr, align 8, !dbg !126, !tbaa !74
  %3 = load i32*, i32** %.global_tid..addr, align 8, !dbg !126, !tbaa !74
  %4 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !126, !tbaa !74
  %5 = load i32*, i32** %fail_condition.addr, align 8, !dbg !126, !tbaa !74
  %6 = load [100 x i32]*, [100 x i32]** %a.addr, align 8, !dbg !126, !tbaa !74
  %7 = load i32*, i32** %sum.addr, align 8, !dbg !126, !tbaa !74
  call void @.omp_outlined._debug__(i32* %3, i32* %4, i32* %5, [100 x i32]* %6, i32* %7) #5, !dbg !126
  ret void, !dbg !126
}

declare !callback !127 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

declare dso_local i32 @printf(i8*, ...) #4

; Function Attrs: nounwind uwtable
define dso_local i32 @main() #0 !dbg !129 {
entry:
  call void @ordered_race_test(), !dbg !132
  ret i32 0, !dbg !133
}

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.1 (git@github.com:coderrect-inc/classic-flang-llvm-project.git 385cb14c62f7038a201227dbe865453e88b40fe5)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "integration/openmp/ordered-yes.c", directory: "/home/rohan/OpenRace/tests/data")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.1 (git@github.com:coderrect-inc/classic-flang-llvm-project.git 385cb14c62f7038a201227dbe865453e88b40fe5)"}
!7 = distinct !DISubprogram(name: "ordered_race_test", scope: !1, file: !1, line: 5, type: !8, scopeLine: 5, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !10)
!8 = !DISubroutineType(types: !9)
!9 = !{null}
!10 = !{!11, !13, !14, !15}
!11 = !DILocalVariable(name: "i", scope: !7, file: !1, line: 6, type: !12)
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !DILocalVariable(name: "sum", scope: !7, file: !1, line: 6, type: !12)
!14 = !DILocalVariable(name: "fail_condition", scope: !7, file: !1, line: 6, type: !12)
!15 = !DILocalVariable(name: "a", scope: !7, file: !1, line: 7, type: !16)
!16 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 3200, elements: !17)
!17 = !{!18}
!18 = !DISubrange(count: 100)
!19 = !DILocation(line: 6, column: 3, scope: !7)
!20 = !DILocation(line: 6, column: 7, scope: !7)
!21 = !DILocation(line: 6, column: 10, scope: !7)
!22 = !DILocation(line: 6, column: 15, scope: !7)
!23 = !{!24, !24, i64 0}
!24 = !{!"int", !25, i64 0}
!25 = !{!"omnipotent char", !26, i64 0}
!26 = !{!"Simple C/C++ TBAA"}
!27 = !DILocation(line: 7, column: 3, scope: !7)
!28 = !DILocation(line: 7, column: 7, scope: !7)
!29 = !DILocation(line: 9, column: 10, scope: !30)
!30 = distinct !DILexicalBlock(scope: !7, file: !1, line: 9, column: 3)
!31 = !DILocation(line: 9, column: 8, scope: !30)
!32 = !DILocation(line: 9, column: 15, scope: !33)
!33 = distinct !DILexicalBlock(scope: !30, file: !1, line: 9, column: 3)
!34 = !DILocation(line: 9, column: 17, scope: !33)
!35 = !DILocation(line: 9, column: 3, scope: !30)
!36 = !DILocation(line: 10, column: 14, scope: !37)
!37 = distinct !DILexicalBlock(scope: !33, file: !1, line: 9, column: 29)
!38 = !DILocation(line: 10, column: 9, scope: !37)
!39 = !DILocation(line: 10, column: 7, scope: !37)
!40 = !DILocation(line: 10, column: 12, scope: !37)
!41 = !DILocation(line: 11, column: 3, scope: !37)
!42 = !DILocation(line: 9, column: 25, scope: !33)
!43 = !DILocation(line: 9, column: 3, scope: !33)
!44 = distinct !{!44, !35, !45}
!45 = !DILocation(line: 11, column: 3, scope: !30)
!46 = !DILocation(line: 13, column: 3, scope: !7)
!47 = !{!48, !49, i64 16}
!48 = !{!"ident_t", !24, i64 0, !24, i64 4, !24, i64 8, !24, i64 12, !49, i64 16}
!49 = !{!"any pointer", !25, i64 0}
!50 = !DILocation(line: 27, column: 22, scope: !7)
!51 = !DILocation(line: 27, column: 7, scope: !7)
!52 = !DILocation(line: 28, column: 1, scope: !7)
!53 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 14, type: !54, scopeLine: 14, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !62)
!54 = !DISubroutineType(types: !55)
!55 = !{null, !56, !56, !60, !61, !60}
!56 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !57)
!57 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !58)
!58 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !59, size: 64)
!59 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!60 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !12, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !16, size: 64)
!62 = !{!63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73}
!63 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !53, type: !56, flags: DIFlagArtificial)
!64 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !53, type: !56, flags: DIFlagArtificial)
!65 = !DILocalVariable(name: "fail_condition", arg: 3, scope: !53, file: !1, line: 6, type: !60)
!66 = !DILocalVariable(name: "a", arg: 4, scope: !53, file: !1, line: 7, type: !61)
!67 = !DILocalVariable(name: "sum", arg: 5, scope: !53, file: !1, line: 6, type: !60)
!68 = !DILocalVariable(name: ".omp.iv", scope: !53, type: !12, flags: DIFlagArtificial)
!69 = !DILocalVariable(name: ".omp.lb", scope: !53, type: !12, flags: DIFlagArtificial)
!70 = !DILocalVariable(name: ".omp.ub", scope: !53, type: !12, flags: DIFlagArtificial)
!71 = !DILocalVariable(name: ".omp.stride", scope: !53, type: !12, flags: DIFlagArtificial)
!72 = !DILocalVariable(name: ".omp.is_last", scope: !53, type: !12, flags: DIFlagArtificial)
!73 = !DILocalVariable(name: "i", scope: !53, type: !12, flags: DIFlagArtificial)
!74 = !{!49, !49, i64 0}
!75 = !DILocation(line: 0, scope: !53)
!76 = !DILocation(line: 6, column: 15, scope: !53)
!77 = !DILocation(line: 7, column: 7, scope: !53)
!78 = !DILocation(line: 6, column: 10, scope: !53)
!79 = !DILocation(line: 14, column: 7, scope: !53)
!80 = !DILocation(line: 14, column: 12, scope: !53)
!81 = !DILocation(line: 14, column: 27, scope: !53)
!82 = !DILocation(line: 15, column: 13, scope: !83)
!83 = distinct !DILexicalBlock(scope: !84, file: !1, line: 15, column: 13)
!84 = distinct !DILexicalBlock(scope: !53, file: !1, line: 14, column: 32)
!85 = !DILocation(line: 15, column: 28, scope: !83)
!86 = !DILocation(line: 15, column: 13, scope: !84)
!87 = !DILocation(line: 16, column: 13, scope: !88)
!88 = distinct !DILexicalBlock(scope: !83, file: !1, line: 15, column: 38)
!89 = !DILocation(line: 19, column: 9, scope: !84)
!90 = !DILocation(line: 21, column: 20, scope: !91)
!91 = distinct !DILexicalBlock(scope: !92, file: !1, line: 20, column: 9)
!92 = distinct !DILexicalBlock(scope: !84, file: !1, line: 19, column: 9)
!93 = !DILocation(line: 21, column: 18, scope: !91)
!94 = !DILocation(line: 21, column: 23, scope: !91)
!95 = !DILocation(line: 21, column: 13, scope: !91)
!96 = !DILocation(line: 21, column: 11, scope: !91)
!97 = !DILocation(line: 21, column: 16, scope: !91)
!98 = !DILocation(line: 22, column: 17, scope: !91)
!99 = !DILocation(line: 22, column: 25, scope: !91)
!100 = !DILocation(line: 22, column: 27, scope: !91)
!101 = !DILocation(line: 22, column: 23, scope: !91)
!102 = !DILocation(line: 22, column: 21, scope: !91)
!103 = !DILocation(line: 22, column: 15, scope: !91)
!104 = !DILocation(line: 23, column: 14, scope: !105)
!105 = distinct !DILexicalBlock(scope: !91, file: !1, line: 23, column: 14)
!106 = !DILocation(line: 23, column: 18, scope: !105)
!107 = !DILocation(line: 23, column: 14, scope: !91)
!108 = !DILocation(line: 23, column: 41, scope: !109)
!109 = distinct !DILexicalBlock(scope: !105, file: !1, line: 23, column: 26)
!110 = !DILocation(line: 23, column: 44, scope: !109)
!111 = !DILocation(line: 24, column: 9, scope: !91)
!112 = !DILocation(line: 25, column: 7, scope: !84)
!113 = !DILocation(line: 13, column: 3, scope: !53)
!114 = distinct !{!114, !113, !115}
!115 = !DILocation(line: 13, column: 76, scope: !53)
!116 = distinct !{!116, !113, !115}
!117 = !DILocation(line: 25, column: 7, scope: !53)
!118 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 14, type: !54, scopeLine: 14, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !119)
!119 = !{!120, !121, !122, !123, !124}
!120 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !118, type: !56, flags: DIFlagArtificial)
!121 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !118, type: !56, flags: DIFlagArtificial)
!122 = !DILocalVariable(name: "fail_condition", arg: 3, scope: !118, type: !60, flags: DIFlagArtificial)
!123 = !DILocalVariable(name: "a", arg: 4, scope: !118, type: !61, flags: DIFlagArtificial)
!124 = !DILocalVariable(name: "sum", arg: 5, scope: !118, type: !60, flags: DIFlagArtificial)
!125 = !DILocation(line: 0, scope: !118)
!126 = !DILocation(line: 14, column: 7, scope: !118)
!127 = !{!128}
!128 = !{i64 2, i64 -1, i64 -1, i1 true}
!129 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 30, type: !130, scopeLine: 30, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !2)
!130 = !DISubroutineType(types: !131)
!131 = !{!12}
!132 = !DILocation(line: 31, column: 3, scope: !129)
!133 = !DILocation(line: 32, column: 1, scope: !129)
