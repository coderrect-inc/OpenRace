; ModuleID = 'integration/dataracebench/DRB170-nestedloops-orig-no.c'
source_filename = "integration/dataracebench/DRB170-nestedloops-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [68 x i8] c";integration/dataracebench/DRB170-nestedloops-orig-no.c;main;26;3;;\00", align 1
@2 = private unnamed_addr constant [69 x i8] c";integration/dataracebench/DRB170-nestedloops-orig-no.c;main;26;48;;\00", align 1
@3 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8

; Function Attrs: nounwind uwtable
define dso_local i32 @main() #0 !dbg !7 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %m = alloca i32, align 4
  %tmp1 = alloca double, align 8
  %a = alloca [12 x [12 x [12 x double]]], align 16
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32 0, i32* %retval, align 4
  %2 = bitcast i32* %i to i8*, !dbg !22
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #4, !dbg !22
  call void @llvm.dbg.declare(metadata i32* %i, metadata !12, metadata !DIExpression()), !dbg !23
  %3 = bitcast i32* %j to i8*, !dbg !22
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #4, !dbg !22
  call void @llvm.dbg.declare(metadata i32* %j, metadata !13, metadata !DIExpression()), !dbg !24
  %4 = bitcast i32* %k to i8*, !dbg !22
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #4, !dbg !22
  call void @llvm.dbg.declare(metadata i32* %k, metadata !14, metadata !DIExpression()), !dbg !25
  %5 = bitcast i32* %m to i8*, !dbg !22
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #4, !dbg !22
  call void @llvm.dbg.declare(metadata i32* %m, metadata !15, metadata !DIExpression()), !dbg !26
  %6 = bitcast double* %tmp1 to i8*, !dbg !27
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %6) #4, !dbg !27
  call void @llvm.dbg.declare(metadata double* %tmp1, metadata !16, metadata !DIExpression()), !dbg !28
  %7 = bitcast [12 x [12 x [12 x double]]]* %a to i8*, !dbg !29
  call void @llvm.lifetime.start.p0i8(i64 13824, i8* %7) #4, !dbg !29
  call void @llvm.dbg.declare(metadata [12 x [12 x [12 x double]]]* %a, metadata !18, metadata !DIExpression()), !dbg !30
  store i32 3, i32* %m, align 4, !dbg !31, !tbaa !32
  %8 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !36
  store i8* getelementptr inbounds ([68 x i8], [68 x i8]* @1, i32 0, i32 0), i8** %8, align 8, !dbg !36, !tbaa !37
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 2, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, [12 x [12 x [12 x double]]]*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %m, [12 x [12 x [12 x double]]]* %a), !dbg !36
  %9 = bitcast [12 x [12 x [12 x double]]]* %a to i8*, !dbg !40
  call void @llvm.lifetime.end.p0i8(i64 13824, i8* %9) #4, !dbg !40
  %10 = bitcast double* %tmp1 to i8*, !dbg !40
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %10) #4, !dbg !40
  %11 = bitcast i32* %m to i8*, !dbg !40
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %11) #4, !dbg !40
  %12 = bitcast i32* %k to i8*, !dbg !40
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %12) #4, !dbg !40
  %13 = bitcast i32* %j to i8*, !dbg !40
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %13) #4, !dbg !40
  %14 = bitcast i32* %i to i8*, !dbg !40
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %14) #4, !dbg !40
  ret i32 0, !dbg !41
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %m, [12 x [12 x [12 x double]]]* dereferenceable(13824) %a) #3 !dbg !42 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %m.addr = alloca i32*, align 8
  %a.addr = alloca [12 x [12 x [12 x double]]]*, align 8
  %.omp.iv = alloca i32, align 4
  %tmp = alloca i32, align 4
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %tmp1 = alloca double, align 8
  %i = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !65
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !52, metadata !DIExpression()), !dbg !66
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !65
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !53, metadata !DIExpression()), !dbg !66
  store i32* %m, i32** %m.addr, align 8, !tbaa !65
  call void @llvm.dbg.declare(metadata i32** %m.addr, metadata !54, metadata !DIExpression()), !dbg !67
  store [12 x [12 x [12 x double]]]* %a, [12 x [12 x [12 x double]]]** %a.addr, align 8, !tbaa !65
  call void @llvm.dbg.declare(metadata [12 x [12 x [12 x double]]]** %a.addr, metadata !55, metadata !DIExpression()), !dbg !68
  %2 = load i32*, i32** %m.addr, align 8, !dbg !69, !tbaa !65
  %3 = load [12 x [12 x [12 x double]]]*, [12 x [12 x [12 x double]]]** %a.addr, align 8, !dbg !69, !tbaa !65
  %4 = bitcast i32* %.omp.iv to i8*, !dbg !69
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #4, !dbg !69
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !56, metadata !DIExpression()), !dbg !66
  %5 = bitcast i32* %.omp.lb to i8*, !dbg !69
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #4, !dbg !69
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !57, metadata !DIExpression()), !dbg !66
  store i32 0, i32* %.omp.lb, align 4, !dbg !70, !tbaa !32
  %6 = bitcast i32* %.omp.ub to i8*, !dbg !69
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #4, !dbg !69
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !58, metadata !DIExpression()), !dbg !66
  store i32 11, i32* %.omp.ub, align 4, !dbg !70, !tbaa !32
  %7 = bitcast i32* %.omp.stride to i8*, !dbg !69
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #4, !dbg !69
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !59, metadata !DIExpression()), !dbg !66
  store i32 1, i32* %.omp.stride, align 4, !dbg !70, !tbaa !32
  %8 = bitcast i32* %.omp.is_last to i8*, !dbg !69
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #4, !dbg !69
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !60, metadata !DIExpression()), !dbg !66
  store i32 0, i32* %.omp.is_last, align 4, !dbg !70, !tbaa !32
  %9 = bitcast i32* %j to i8*, !dbg !69
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #4, !dbg !69
  call void @llvm.dbg.declare(metadata i32* %j, metadata !61, metadata !DIExpression()), !dbg !66
  %10 = bitcast i32* %k to i8*, !dbg !69
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #4, !dbg !69
  call void @llvm.dbg.declare(metadata i32* %k, metadata !62, metadata !DIExpression()), !dbg !66
  %11 = bitcast double* %tmp1 to i8*, !dbg !69
  call void @llvm.lifetime.start.p0i8(i64 8, i8* %11) #4, !dbg !69
  call void @llvm.dbg.declare(metadata double* %tmp1, metadata !63, metadata !DIExpression()), !dbg !66
  %12 = bitcast i32* %i to i8*, !dbg !69
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #4, !dbg !69
  call void @llvm.dbg.declare(metadata i32* %i, metadata !64, metadata !DIExpression()), !dbg !66
  %13 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !69
  store i8* getelementptr inbounds ([68 x i8], [68 x i8]* @1, i32 0, i32 0), i8** %13, align 8, !dbg !69, !tbaa !37
  %14 = load i32*, i32** %.global_tid..addr, align 8, !dbg !69
  %15 = load i32, i32* %14, align 4, !dbg !69, !tbaa !32
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %15, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !69
  %16 = load i32, i32* %.omp.ub, align 4, !dbg !70, !tbaa !32
  %cmp = icmp sgt i32 %16, 11, !dbg !70
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !70

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !70

cond.false:                                       ; preds = %entry
  %17 = load i32, i32* %.omp.ub, align 4, !dbg !70, !tbaa !32
  br label %cond.end, !dbg !70

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 11, %cond.true ], [ %17, %cond.false ], !dbg !70
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !70, !tbaa !32
  %18 = load i32, i32* %.omp.lb, align 4, !dbg !70, !tbaa !32
  store i32 %18, i32* %.omp.iv, align 4, !dbg !70, !tbaa !32
  br label %omp.inner.for.cond, !dbg !69

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %19 = load i32, i32* %.omp.iv, align 4, !dbg !70, !tbaa !32
  %20 = load i32, i32* %.omp.ub, align 4, !dbg !70, !tbaa !32
  %cmp1 = icmp sle i32 %19, %20, !dbg !69
  br i1 %cmp1, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !69

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !69

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %21 = load i32, i32* %.omp.iv, align 4, !dbg !70, !tbaa !32
  %mul = mul nsw i32 %21, 1, !dbg !71
  %add = add nsw i32 0, %mul, !dbg !71
  store i32 %add, i32* %i, align 4, !dbg !71, !tbaa !32
  store i32 0, i32* %j, align 4, !dbg !72, !tbaa !32
  br label %for.cond, !dbg !75

for.cond:                                         ; preds = %for.inc11, %omp.inner.for.body
  %22 = load i32, i32* %j, align 4, !dbg !76, !tbaa !32
  %cmp2 = icmp slt i32 %22, 12, !dbg !78
  br i1 %cmp2, label %for.body, label %for.end13, !dbg !79

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %k, align 4, !dbg !80, !tbaa !32
  br label %for.cond3, !dbg !83

for.cond3:                                        ; preds = %for.inc, %for.body
  %23 = load i32, i32* %k, align 4, !dbg !84, !tbaa !32
  %cmp4 = icmp slt i32 %23, 12, !dbg !86
  br i1 %cmp4, label %for.body5, label %for.end, !dbg !87

for.body5:                                        ; preds = %for.cond3
  %24 = load i32, i32* %2, align 4, !dbg !88, !tbaa !32
  %conv = sitofp i32 %24 to double, !dbg !88
  %div = fdiv double 6.000000e+00, %conv, !dbg !90
  store double %div, double* %tmp1, align 8, !dbg !91, !tbaa !92
  %25 = load double, double* %tmp1, align 8, !dbg !94, !tbaa !92
  %add6 = fadd double %25, 4.000000e+00, !dbg !95
  %26 = load i32, i32* %i, align 4, !dbg !96, !tbaa !32
  %idxprom = sext i32 %26 to i64, !dbg !97
  %arrayidx = getelementptr inbounds [12 x [12 x [12 x double]]], [12 x [12 x [12 x double]]]* %3, i64 0, i64 %idxprom, !dbg !97
  %27 = load i32, i32* %j, align 4, !dbg !98, !tbaa !32
  %idxprom7 = sext i32 %27 to i64, !dbg !97
  %arrayidx8 = getelementptr inbounds [12 x [12 x double]], [12 x [12 x double]]* %arrayidx, i64 0, i64 %idxprom7, !dbg !97
  %28 = load i32, i32* %k, align 4, !dbg !99, !tbaa !32
  %idxprom9 = sext i32 %28 to i64, !dbg !97
  %arrayidx10 = getelementptr inbounds [12 x double], [12 x double]* %arrayidx8, i64 0, i64 %idxprom9, !dbg !97
  store double %add6, double* %arrayidx10, align 8, !dbg !100, !tbaa !92
  br label %for.inc, !dbg !101

for.inc:                                          ; preds = %for.body5
  %29 = load i32, i32* %k, align 4, !dbg !102, !tbaa !32
  %inc = add nsw i32 %29, 1, !dbg !102
  store i32 %inc, i32* %k, align 4, !dbg !102, !tbaa !32
  br label %for.cond3, !dbg !103, !llvm.loop !104

for.end:                                          ; preds = %for.cond3
  br label %for.inc11, !dbg !106

for.inc11:                                        ; preds = %for.end
  %30 = load i32, i32* %j, align 4, !dbg !107, !tbaa !32
  %inc12 = add nsw i32 %30, 1, !dbg !107
  store i32 %inc12, i32* %j, align 4, !dbg !107, !tbaa !32
  br label %for.cond, !dbg !108, !llvm.loop !109

for.end13:                                        ; preds = %for.cond
  br label %omp.body.continue, !dbg !111

omp.body.continue:                                ; preds = %for.end13
  br label %omp.inner.for.inc, !dbg !112

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %31 = load i32, i32* %.omp.iv, align 4, !dbg !70, !tbaa !32
  %add14 = add nsw i32 %31, 1, !dbg !69
  store i32 %add14, i32* %.omp.iv, align 4, !dbg !69, !tbaa !32
  br label %omp.inner.for.cond, !dbg !112, !llvm.loop !113

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !112

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %32 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !112
  store i8* getelementptr inbounds ([69 x i8], [69 x i8]* @2, i32 0, i32 0), i8** %32, align 8, !dbg !112, !tbaa !37
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %15), !dbg !112
  %33 = bitcast i32* %i to i8*, !dbg !112
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %33) #4, !dbg !112
  %34 = bitcast double* %tmp1 to i8*, !dbg !112
  call void @llvm.lifetime.end.p0i8(i64 8, i8* %34) #4, !dbg !112
  %35 = bitcast i32* %k to i8*, !dbg !112
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %35) #4, !dbg !112
  %36 = bitcast i32* %j to i8*, !dbg !112
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %36) #4, !dbg !112
  %37 = bitcast i32* %.omp.is_last to i8*, !dbg !112
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %37) #4, !dbg !112
  %38 = bitcast i32* %.omp.stride to i8*, !dbg !112
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %38) #4, !dbg !112
  %39 = bitcast i32* %.omp.ub to i8*, !dbg !112
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %39) #4, !dbg !112
  %40 = bitcast i32* %.omp.lb to i8*, !dbg !112
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %40) #4, !dbg !112
  %41 = bitcast i32* %.omp.iv to i8*, !dbg !112
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %41) #4, !dbg !112
  ret void, !dbg !115
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %m, [12 x [12 x [12 x double]]]* dereferenceable(13824) %a) #3 !dbg !116 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %m.addr = alloca i32*, align 8
  %a.addr = alloca [12 x [12 x [12 x double]]]*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !65
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !118, metadata !DIExpression()), !dbg !122
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !65
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !119, metadata !DIExpression()), !dbg !122
  store i32* %m, i32** %m.addr, align 8, !tbaa !65
  call void @llvm.dbg.declare(metadata i32** %m.addr, metadata !120, metadata !DIExpression()), !dbg !122
  store [12 x [12 x [12 x double]]]* %a, [12 x [12 x [12 x double]]]** %a.addr, align 8, !tbaa !65
  call void @llvm.dbg.declare(metadata [12 x [12 x [12 x double]]]** %a.addr, metadata !121, metadata !DIExpression()), !dbg !122
  %0 = load i32*, i32** %m.addr, align 8, !dbg !123, !tbaa !65
  %1 = load [12 x [12 x [12 x double]]]*, [12 x [12 x [12 x double]]]** %a.addr, align 8, !dbg !123, !tbaa !65
  %2 = load i32*, i32** %.global_tid..addr, align 8, !dbg !123, !tbaa !65
  %3 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !123, !tbaa !65
  %4 = load i32*, i32** %m.addr, align 8, !dbg !123, !tbaa !65
  %5 = load [12 x [12 x [12 x double]]]*, [12 x [12 x [12 x double]]]** %a.addr, align 8, !dbg !123, !tbaa !65
  call void @.omp_outlined._debug__(i32* %2, i32* %3, i32* %4, [12 x [12 x [12 x double]]]* %5) #4, !dbg !123
  ret void, !dbg !123
}

declare !callback !124 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "integration/dataracebench/DRB170-nestedloops-orig-no.c", directory: "/home/brad/Code/OpenRace/tests/data")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.1 "}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 18, type: !8, scopeLine: 18, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !11)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !{!12, !13, !14, !15, !16, !18}
!12 = !DILocalVariable(name: "i", scope: !7, file: !1, line: 19, type: !10)
!13 = !DILocalVariable(name: "j", scope: !7, file: !1, line: 19, type: !10)
!14 = !DILocalVariable(name: "k", scope: !7, file: !1, line: 19, type: !10)
!15 = !DILocalVariable(name: "m", scope: !7, file: !1, line: 19, type: !10)
!16 = !DILocalVariable(name: "tmp1", scope: !7, file: !1, line: 20, type: !17)
!17 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!18 = !DILocalVariable(name: "a", scope: !7, file: !1, line: 22, type: !19)
!19 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 110592, elements: !20)
!20 = !{!21, !21, !21}
!21 = !DISubrange(count: 12)
!22 = !DILocation(line: 19, column: 3, scope: !7)
!23 = !DILocation(line: 19, column: 7, scope: !7)
!24 = !DILocation(line: 19, column: 9, scope: !7)
!25 = !DILocation(line: 19, column: 11, scope: !7)
!26 = !DILocation(line: 19, column: 13, scope: !7)
!27 = !DILocation(line: 20, column: 3, scope: !7)
!28 = !DILocation(line: 20, column: 10, scope: !7)
!29 = !DILocation(line: 22, column: 3, scope: !7)
!30 = !DILocation(line: 22, column: 10, scope: !7)
!31 = !DILocation(line: 24, column: 5, scope: !7)
!32 = !{!33, !33, i64 0}
!33 = !{!"int", !34, i64 0}
!34 = !{!"omnipotent char", !35, i64 0}
!35 = !{!"Simple C/C++ TBAA"}
!36 = !DILocation(line: 26, column: 3, scope: !7)
!37 = !{!38, !39, i64 16}
!38 = !{!"ident_t", !33, i64 0, !33, i64 4, !33, i64 8, !33, i64 12, !39, i64 16}
!39 = !{!"any pointer", !34, i64 0}
!40 = !DILocation(line: 37, column: 1, scope: !7)
!41 = !DILocation(line: 36, column: 3, scope: !7)
!42 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 27, type: !43, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !51)
!43 = !DISubroutineType(types: !44)
!44 = !{null, !45, !45, !49, !50}
!45 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!46 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !47)
!47 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !48, size: 64)
!48 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!49 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !10, size: 64)
!50 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !19, size: 64)
!51 = !{!52, !53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64}
!52 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !42, type: !45, flags: DIFlagArtificial)
!53 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !42, type: !45, flags: DIFlagArtificial)
!54 = !DILocalVariable(name: "m", arg: 3, scope: !42, file: !1, line: 19, type: !49)
!55 = !DILocalVariable(name: "a", arg: 4, scope: !42, file: !1, line: 22, type: !50)
!56 = !DILocalVariable(name: ".omp.iv", scope: !42, type: !10, flags: DIFlagArtificial)
!57 = !DILocalVariable(name: ".omp.lb", scope: !42, type: !10, flags: DIFlagArtificial)
!58 = !DILocalVariable(name: ".omp.ub", scope: !42, type: !10, flags: DIFlagArtificial)
!59 = !DILocalVariable(name: ".omp.stride", scope: !42, type: !10, flags: DIFlagArtificial)
!60 = !DILocalVariable(name: ".omp.is_last", scope: !42, type: !10, flags: DIFlagArtificial)
!61 = !DILocalVariable(name: "j", scope: !42, type: !10, flags: DIFlagArtificial)
!62 = !DILocalVariable(name: "k", scope: !42, type: !10, flags: DIFlagArtificial)
!63 = !DILocalVariable(name: "tmp1", scope: !42, type: !17, flags: DIFlagArtificial)
!64 = !DILocalVariable(name: "i", scope: !42, type: !10, flags: DIFlagArtificial)
!65 = !{!39, !39, i64 0}
!66 = !DILocation(line: 0, scope: !42)
!67 = !DILocation(line: 19, column: 13, scope: !42)
!68 = !DILocation(line: 22, column: 10, scope: !42)
!69 = !DILocation(line: 27, column: 3, scope: !42)
!70 = !DILocation(line: 27, column: 8, scope: !42)
!71 = !DILocation(line: 27, column: 23, scope: !42)
!72 = !DILocation(line: 28, column: 12, scope: !73)
!73 = distinct !DILexicalBlock(scope: !74, file: !1, line: 28, column: 5)
!74 = distinct !DILexicalBlock(scope: !42, file: !1, line: 27, column: 28)
!75 = !DILocation(line: 28, column: 10, scope: !73)
!76 = !DILocation(line: 28, column: 17, scope: !77)
!77 = distinct !DILexicalBlock(scope: !73, file: !1, line: 28, column: 5)
!78 = !DILocation(line: 28, column: 19, scope: !77)
!79 = !DILocation(line: 28, column: 5, scope: !73)
!80 = !DILocation(line: 29, column: 14, scope: !81)
!81 = distinct !DILexicalBlock(scope: !82, file: !1, line: 29, column: 7)
!82 = distinct !DILexicalBlock(scope: !77, file: !1, line: 28, column: 30)
!83 = !DILocation(line: 29, column: 12, scope: !81)
!84 = !DILocation(line: 29, column: 19, scope: !85)
!85 = distinct !DILexicalBlock(scope: !81, file: !1, line: 29, column: 7)
!86 = !DILocation(line: 29, column: 21, scope: !85)
!87 = !DILocation(line: 29, column: 7, scope: !81)
!88 = !DILocation(line: 30, column: 20, scope: !89)
!89 = distinct !DILexicalBlock(scope: !85, file: !1, line: 29, column: 32)
!90 = !DILocation(line: 30, column: 19, scope: !89)
!91 = !DILocation(line: 30, column: 14, scope: !89)
!92 = !{!93, !93, i64 0}
!93 = !{!"double", !34, i64 0}
!94 = !DILocation(line: 31, column: 22, scope: !89)
!95 = !DILocation(line: 31, column: 26, scope: !89)
!96 = !DILocation(line: 31, column: 11, scope: !89)
!97 = !DILocation(line: 31, column: 9, scope: !89)
!98 = !DILocation(line: 31, column: 14, scope: !89)
!99 = !DILocation(line: 31, column: 17, scope: !89)
!100 = !DILocation(line: 31, column: 20, scope: !89)
!101 = !DILocation(line: 32, column: 7, scope: !89)
!102 = !DILocation(line: 29, column: 28, scope: !85)
!103 = !DILocation(line: 29, column: 7, scope: !85)
!104 = distinct !{!104, !87, !105}
!105 = !DILocation(line: 32, column: 7, scope: !81)
!106 = !DILocation(line: 33, column: 5, scope: !82)
!107 = !DILocation(line: 28, column: 26, scope: !77)
!108 = !DILocation(line: 28, column: 5, scope: !77)
!109 = distinct !{!109, !79, !110}
!110 = !DILocation(line: 33, column: 5, scope: !73)
!111 = !DILocation(line: 34, column: 3, scope: !74)
!112 = !DILocation(line: 26, column: 3, scope: !42)
!113 = distinct !{!113, !112, !114}
!114 = !DILocation(line: 26, column: 48, scope: !42)
!115 = !DILocation(line: 34, column: 3, scope: !42)
!116 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 27, type: !43, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !117)
!117 = !{!118, !119, !120, !121}
!118 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !116, type: !45, flags: DIFlagArtificial)
!119 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !116, type: !45, flags: DIFlagArtificial)
!120 = !DILocalVariable(name: "m", arg: 3, scope: !116, type: !49, flags: DIFlagArtificial)
!121 = !DILocalVariable(name: "a", arg: 4, scope: !116, type: !50, flags: DIFlagArtificial)
!122 = !DILocation(line: 0, scope: !116)
!123 = !DILocation(line: 27, column: 3, scope: !116)
!124 = !{!125}
!125 = !{i64 2, i64 -1, i64 -1, i1 true}
