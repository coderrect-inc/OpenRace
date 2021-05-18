; ModuleID = 'integration/dataracebench/DRB169-missingsyncwrite-orig-yes.c'
source_filename = "integration/dataracebench/DRB169-missingsyncwrite-orig-yes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [74 x i8] c";integration/dataracebench/DRB169-missingsyncwrite-orig-yes.c;main;34;3;;\00", align 1
@2 = private unnamed_addr constant [75 x i8] c";integration/dataracebench/DRB169-missingsyncwrite-orig-yes.c;main;34;56;;\00", align 1
@3 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@.str.1 = private unnamed_addr constant [4 x i8] c"%f \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main() #0 !dbg !7 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %r1 = alloca [8 x double], align 16
  %r = alloca [8 x [8 x [8 x double]]], align 16
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32 0, i32* %retval, align 4
  %2 = bitcast i32* %i to i8*, !dbg !23
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #5, !dbg !23
  call void @llvm.dbg.declare(metadata i32* %i, metadata !12, metadata !DIExpression()), !dbg !24
  %3 = bitcast i32* %j to i8*, !dbg !23
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #5, !dbg !23
  call void @llvm.dbg.declare(metadata i32* %j, metadata !13, metadata !DIExpression()), !dbg !25
  %4 = bitcast i32* %k to i8*, !dbg !23
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #5, !dbg !23
  call void @llvm.dbg.declare(metadata i32* %k, metadata !14, metadata !DIExpression()), !dbg !26
  %5 = bitcast [8 x double]* %r1 to i8*, !dbg !27
  call void @llvm.lifetime.start.p0i8(i64 64, i8* %5) #5, !dbg !27
  call void @llvm.dbg.declare(metadata [8 x double]* %r1, metadata !15, metadata !DIExpression()), !dbg !28
  %6 = bitcast [8 x [8 x [8 x double]]]* %r to i8*, !dbg !27
  call void @llvm.lifetime.start.p0i8(i64 4096, i8* %6) #5, !dbg !27
  call void @llvm.dbg.declare(metadata [8 x [8 x [8 x double]]]* %r, metadata !20, metadata !DIExpression()), !dbg !29
  store i32 0, i32* %i, align 4, !dbg !30, !tbaa !32
  br label %for.cond, !dbg !36

for.cond:                                         ; preds = %for.inc14, %entry
  %7 = load i32, i32* %i, align 4, !dbg !37, !tbaa !32
  %cmp = icmp slt i32 %7, 8, !dbg !39
  br i1 %cmp, label %for.body, label %for.end16, !dbg !40

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4, !dbg !41, !tbaa !32
  br label %for.cond1, !dbg !44

for.cond1:                                        ; preds = %for.inc11, %for.body
  %8 = load i32, i32* %j, align 4, !dbg !45, !tbaa !32
  %cmp2 = icmp slt i32 %8, 8, !dbg !47
  br i1 %cmp2, label %for.body3, label %for.end13, !dbg !48

for.body3:                                        ; preds = %for.cond1
  store i32 0, i32* %k, align 4, !dbg !49, !tbaa !32
  br label %for.cond4, !dbg !52

for.cond4:                                        ; preds = %for.inc, %for.body3
  %9 = load i32, i32* %k, align 4, !dbg !53, !tbaa !32
  %cmp5 = icmp slt i32 %9, 8, !dbg !55
  br i1 %cmp5, label %for.body6, label %for.end, !dbg !56

for.body6:                                        ; preds = %for.cond4
  %10 = load i32, i32* %i, align 4, !dbg !57, !tbaa !32
  %conv = sitofp i32 %10 to double, !dbg !57
  %11 = load i32, i32* %i, align 4, !dbg !59, !tbaa !32
  %idxprom = sext i32 %11 to i64, !dbg !60
  %arrayidx = getelementptr inbounds [8 x [8 x [8 x double]]], [8 x [8 x [8 x double]]]* %r, i64 0, i64 %idxprom, !dbg !60
  %12 = load i32, i32* %j, align 4, !dbg !61, !tbaa !32
  %idxprom7 = sext i32 %12 to i64, !dbg !60
  %arrayidx8 = getelementptr inbounds [8 x [8 x double]], [8 x [8 x double]]* %arrayidx, i64 0, i64 %idxprom7, !dbg !60
  %13 = load i32, i32* %k, align 4, !dbg !62, !tbaa !32
  %idxprom9 = sext i32 %13 to i64, !dbg !60
  %arrayidx10 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx8, i64 0, i64 %idxprom9, !dbg !60
  store double %conv, double* %arrayidx10, align 8, !dbg !63, !tbaa !64
  br label %for.inc, !dbg !66

for.inc:                                          ; preds = %for.body6
  %14 = load i32, i32* %k, align 4, !dbg !67, !tbaa !32
  %inc = add nsw i32 %14, 1, !dbg !67
  store i32 %inc, i32* %k, align 4, !dbg !67, !tbaa !32
  br label %for.cond4, !dbg !68, !llvm.loop !69

for.end:                                          ; preds = %for.cond4
  br label %for.inc11, !dbg !71

for.inc11:                                        ; preds = %for.end
  %15 = load i32, i32* %j, align 4, !dbg !72, !tbaa !32
  %inc12 = add nsw i32 %15, 1, !dbg !72
  store i32 %inc12, i32* %j, align 4, !dbg !72, !tbaa !32
  br label %for.cond1, !dbg !73, !llvm.loop !74

for.end13:                                        ; preds = %for.cond1
  br label %for.inc14, !dbg !76

for.inc14:                                        ; preds = %for.end13
  %16 = load i32, i32* %i, align 4, !dbg !77, !tbaa !32
  %inc15 = add nsw i32 %16, 1, !dbg !77
  store i32 %inc15, i32* %i, align 4, !dbg !77, !tbaa !32
  br label %for.cond, !dbg !78, !llvm.loop !79

for.end16:                                        ; preds = %for.cond
  %17 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !81
  store i8* getelementptr inbounds ([74 x i8], [74 x i8]* @1, i32 0, i32 0), i8** %17, align 8, !dbg !81, !tbaa !82
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 2, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, [8 x double]*, [8 x [8 x [8 x double]]]*)* @.omp_outlined. to void (i32*, i32*, ...)*), [8 x double]* %r1, [8 x [8 x [8 x double]]]* %r), !dbg !81
  store i32 0, i32* %k, align 4, !dbg !85, !tbaa !32
  br label %for.cond17, !dbg !87

for.cond17:                                       ; preds = %for.inc23, %for.end16
  %18 = load i32, i32* %k, align 4, !dbg !88, !tbaa !32
  %cmp18 = icmp slt i32 %18, 8, !dbg !90
  br i1 %cmp18, label %for.body20, label %for.end25, !dbg !91

for.body20:                                       ; preds = %for.cond17
  %19 = load i32, i32* %k, align 4, !dbg !92, !tbaa !32
  %idxprom21 = sext i32 %19 to i64, !dbg !93
  %arrayidx22 = getelementptr inbounds [8 x double], [8 x double]* %r1, i64 0, i64 %idxprom21, !dbg !93
  %20 = load double, double* %arrayidx22, align 8, !dbg !93, !tbaa !64
  %call = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), double %20), !dbg !94
  br label %for.inc23, !dbg !94

for.inc23:                                        ; preds = %for.body20
  %21 = load i32, i32* %k, align 4, !dbg !95, !tbaa !32
  %inc24 = add nsw i32 %21, 1, !dbg !95
  store i32 %inc24, i32* %k, align 4, !dbg !95, !tbaa !32
  br label %for.cond17, !dbg !96, !llvm.loop !97

for.end25:                                        ; preds = %for.cond17
  %call26 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0)), !dbg !99
  %22 = bitcast [8 x [8 x [8 x double]]]* %r to i8*, !dbg !100
  call void @llvm.lifetime.end.p0i8(i64 4096, i8* %22) #5, !dbg !100
  %23 = bitcast [8 x double]* %r1 to i8*, !dbg !100
  call void @llvm.lifetime.end.p0i8(i64 64, i8* %23) #5, !dbg !100
  %24 = bitcast i32* %k to i8*, !dbg !100
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %24) #5, !dbg !100
  %25 = bitcast i32* %j to i8*, !dbg !100
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %25) #5, !dbg !100
  %26 = bitcast i32* %i to i8*, !dbg !100
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %26) #5, !dbg !100
  ret i32 0, !dbg !101
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., [8 x double]* dereferenceable(64) %r1, [8 x [8 x [8 x double]]]* dereferenceable(4096) %r) #3 !dbg !102 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %r1.addr = alloca [8 x double]*, align 8
  %r.addr = alloca [8 x [8 x [8 x double]]]*, align 8
  %.omp.iv = alloca i32, align 4
  %tmp = alloca i32, align 4
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %j = alloca i32, align 4
  %k = alloca i32, align 4
  %i = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !124
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !112, metadata !DIExpression()), !dbg !125
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !124
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !113, metadata !DIExpression()), !dbg !125
  store [8 x double]* %r1, [8 x double]** %r1.addr, align 8, !tbaa !124
  call void @llvm.dbg.declare(metadata [8 x double]** %r1.addr, metadata !114, metadata !DIExpression()), !dbg !126
  store [8 x [8 x [8 x double]]]* %r, [8 x [8 x [8 x double]]]** %r.addr, align 8, !tbaa !124
  call void @llvm.dbg.declare(metadata [8 x [8 x [8 x double]]]** %r.addr, metadata !115, metadata !DIExpression()), !dbg !127
  %2 = load [8 x double]*, [8 x double]** %r1.addr, align 8, !dbg !128, !tbaa !124
  %3 = load [8 x [8 x [8 x double]]]*, [8 x [8 x [8 x double]]]** %r.addr, align 8, !dbg !128, !tbaa !124
  %4 = bitcast i32* %.omp.iv to i8*, !dbg !128
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #5, !dbg !128
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !116, metadata !DIExpression()), !dbg !125
  %5 = bitcast i32* %.omp.lb to i8*, !dbg !128
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #5, !dbg !128
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !117, metadata !DIExpression()), !dbg !125
  store i32 0, i32* %.omp.lb, align 4, !dbg !129, !tbaa !32
  %6 = bitcast i32* %.omp.ub to i8*, !dbg !128
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %6) #5, !dbg !128
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !118, metadata !DIExpression()), !dbg !125
  store i32 5, i32* %.omp.ub, align 4, !dbg !129, !tbaa !32
  %7 = bitcast i32* %.omp.stride to i8*, !dbg !128
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #5, !dbg !128
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !119, metadata !DIExpression()), !dbg !125
  store i32 1, i32* %.omp.stride, align 4, !dbg !129, !tbaa !32
  %8 = bitcast i32* %.omp.is_last to i8*, !dbg !128
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #5, !dbg !128
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !120, metadata !DIExpression()), !dbg !125
  store i32 0, i32* %.omp.is_last, align 4, !dbg !129, !tbaa !32
  %9 = bitcast i32* %j to i8*, !dbg !128
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %9) #5, !dbg !128
  call void @llvm.dbg.declare(metadata i32* %j, metadata !121, metadata !DIExpression()), !dbg !125
  %10 = bitcast i32* %k to i8*, !dbg !128
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #5, !dbg !128
  call void @llvm.dbg.declare(metadata i32* %k, metadata !122, metadata !DIExpression()), !dbg !125
  %11 = bitcast i32* %i to i8*, !dbg !128
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %11) #5, !dbg !128
  call void @llvm.dbg.declare(metadata i32* %i, metadata !123, metadata !DIExpression()), !dbg !125
  %12 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !128
  store i8* getelementptr inbounds ([74 x i8], [74 x i8]* @1, i32 0, i32 0), i8** %12, align 8, !dbg !128, !tbaa !82
  %13 = load i32*, i32** %.global_tid..addr, align 8, !dbg !128
  %14 = load i32, i32* %13, align 4, !dbg !128, !tbaa !32
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %14, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !128
  %15 = load i32, i32* %.omp.ub, align 4, !dbg !129, !tbaa !32
  %cmp = icmp sgt i32 %15, 5, !dbg !129
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !129

cond.true:                                        ; preds = %entry
  br label %cond.end, !dbg !129

cond.false:                                       ; preds = %entry
  %16 = load i32, i32* %.omp.ub, align 4, !dbg !129, !tbaa !32
  br label %cond.end, !dbg !129

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 5, %cond.true ], [ %16, %cond.false ], !dbg !129
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !129, !tbaa !32
  %17 = load i32, i32* %.omp.lb, align 4, !dbg !129, !tbaa !32
  store i32 %17, i32* %.omp.iv, align 4, !dbg !129, !tbaa !32
  br label %omp.inner.for.cond, !dbg !128

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %18 = load i32, i32* %.omp.iv, align 4, !dbg !129, !tbaa !32
  %19 = load i32, i32* %.omp.ub, align 4, !dbg !129, !tbaa !32
  %cmp1 = icmp sle i32 %18, %19, !dbg !128
  br i1 %cmp1, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !128

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !128

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %20 = load i32, i32* %.omp.iv, align 4, !dbg !129, !tbaa !32
  %mul = mul nsw i32 %20, 1, !dbg !130
  %add = add nsw i32 1, %mul, !dbg !130
  store i32 %add, i32* %i, align 4, !dbg !130, !tbaa !32
  store i32 1, i32* %j, align 4, !dbg !131, !tbaa !32
  br label %for.cond, !dbg !134

for.cond:                                         ; preds = %for.inc36, %omp.inner.for.body
  %21 = load i32, i32* %j, align 4, !dbg !135, !tbaa !32
  %cmp2 = icmp slt i32 %21, 7, !dbg !137
  br i1 %cmp2, label %for.body, label %for.end38, !dbg !138

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %k, align 4, !dbg !139, !tbaa !32
  br label %for.cond3, !dbg !142

for.cond3:                                        ; preds = %for.inc, %for.body
  %22 = load i32, i32* %k, align 4, !dbg !143, !tbaa !32
  %cmp4 = icmp slt i32 %22, 8, !dbg !145
  br i1 %cmp4, label %for.body5, label %for.end, !dbg !146

for.body5:                                        ; preds = %for.cond3
  %23 = load i32, i32* %i, align 4, !dbg !147, !tbaa !32
  %idxprom = sext i32 %23 to i64, !dbg !149
  %arrayidx = getelementptr inbounds [8 x [8 x [8 x double]]], [8 x [8 x [8 x double]]]* %3, i64 0, i64 %idxprom, !dbg !149
  %24 = load i32, i32* %j, align 4, !dbg !150, !tbaa !32
  %sub = sub nsw i32 %24, 1, !dbg !151
  %idxprom6 = sext i32 %sub to i64, !dbg !149
  %arrayidx7 = getelementptr inbounds [8 x [8 x double]], [8 x [8 x double]]* %arrayidx, i64 0, i64 %idxprom6, !dbg !149
  %25 = load i32, i32* %k, align 4, !dbg !152, !tbaa !32
  %idxprom8 = sext i32 %25 to i64, !dbg !149
  %arrayidx9 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx7, i64 0, i64 %idxprom8, !dbg !149
  %26 = load double, double* %arrayidx9, align 8, !dbg !149, !tbaa !64
  %27 = load i32, i32* %i, align 4, !dbg !153, !tbaa !32
  %idxprom10 = sext i32 %27 to i64, !dbg !154
  %arrayidx11 = getelementptr inbounds [8 x [8 x [8 x double]]], [8 x [8 x [8 x double]]]* %3, i64 0, i64 %idxprom10, !dbg !154
  %28 = load i32, i32* %j, align 4, !dbg !155, !tbaa !32
  %add12 = add nsw i32 %28, 1, !dbg !156
  %idxprom13 = sext i32 %add12 to i64, !dbg !154
  %arrayidx14 = getelementptr inbounds [8 x [8 x double]], [8 x [8 x double]]* %arrayidx11, i64 0, i64 %idxprom13, !dbg !154
  %29 = load i32, i32* %k, align 4, !dbg !157, !tbaa !32
  %idxprom15 = sext i32 %29 to i64, !dbg !154
  %arrayidx16 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx14, i64 0, i64 %idxprom15, !dbg !154
  %30 = load double, double* %arrayidx16, align 8, !dbg !154, !tbaa !64
  %add17 = fadd double %26, %30, !dbg !158
  %31 = load i32, i32* %i, align 4, !dbg !159, !tbaa !32
  %sub18 = sub nsw i32 %31, 1, !dbg !160
  %idxprom19 = sext i32 %sub18 to i64, !dbg !161
  %arrayidx20 = getelementptr inbounds [8 x [8 x [8 x double]]], [8 x [8 x [8 x double]]]* %3, i64 0, i64 %idxprom19, !dbg !161
  %32 = load i32, i32* %j, align 4, !dbg !162, !tbaa !32
  %idxprom21 = sext i32 %32 to i64, !dbg !161
  %arrayidx22 = getelementptr inbounds [8 x [8 x double]], [8 x [8 x double]]* %arrayidx20, i64 0, i64 %idxprom21, !dbg !161
  %33 = load i32, i32* %k, align 4, !dbg !163, !tbaa !32
  %idxprom23 = sext i32 %33 to i64, !dbg !161
  %arrayidx24 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx22, i64 0, i64 %idxprom23, !dbg !161
  %34 = load double, double* %arrayidx24, align 8, !dbg !161, !tbaa !64
  %add25 = fadd double %add17, %34, !dbg !164
  %35 = load i32, i32* %i, align 4, !dbg !165, !tbaa !32
  %add26 = add nsw i32 %35, 1, !dbg !166
  %idxprom27 = sext i32 %add26 to i64, !dbg !167
  %arrayidx28 = getelementptr inbounds [8 x [8 x [8 x double]]], [8 x [8 x [8 x double]]]* %3, i64 0, i64 %idxprom27, !dbg !167
  %36 = load i32, i32* %j, align 4, !dbg !168, !tbaa !32
  %idxprom29 = sext i32 %36 to i64, !dbg !167
  %arrayidx30 = getelementptr inbounds [8 x [8 x double]], [8 x [8 x double]]* %arrayidx28, i64 0, i64 %idxprom29, !dbg !167
  %37 = load i32, i32* %k, align 4, !dbg !169, !tbaa !32
  %idxprom31 = sext i32 %37 to i64, !dbg !167
  %arrayidx32 = getelementptr inbounds [8 x double], [8 x double]* %arrayidx30, i64 0, i64 %idxprom31, !dbg !167
  %38 = load double, double* %arrayidx32, align 8, !dbg !167, !tbaa !64
  %add33 = fadd double %add25, %38, !dbg !170
  %39 = load i32, i32* %k, align 4, !dbg !171, !tbaa !32
  %idxprom34 = sext i32 %39 to i64, !dbg !172
  %arrayidx35 = getelementptr inbounds [8 x double], [8 x double]* %2, i64 0, i64 %idxprom34, !dbg !172
  store double %add33, double* %arrayidx35, align 8, !dbg !173, !tbaa !64
  br label %for.inc, !dbg !174

for.inc:                                          ; preds = %for.body5
  %40 = load i32, i32* %k, align 4, !dbg !175, !tbaa !32
  %inc = add nsw i32 %40, 1, !dbg !175
  store i32 %inc, i32* %k, align 4, !dbg !175, !tbaa !32
  br label %for.cond3, !dbg !176, !llvm.loop !177

for.end:                                          ; preds = %for.cond3
  br label %for.inc36, !dbg !179

for.inc36:                                        ; preds = %for.end
  %41 = load i32, i32* %j, align 4, !dbg !180, !tbaa !32
  %inc37 = add nsw i32 %41, 1, !dbg !180
  store i32 %inc37, i32* %j, align 4, !dbg !180, !tbaa !32
  br label %for.cond, !dbg !181, !llvm.loop !182

for.end38:                                        ; preds = %for.cond
  br label %omp.body.continue, !dbg !184

omp.body.continue:                                ; preds = %for.end38
  br label %omp.inner.for.inc, !dbg !185

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %42 = load i32, i32* %.omp.iv, align 4, !dbg !129, !tbaa !32
  %add39 = add nsw i32 %42, 1, !dbg !128
  store i32 %add39, i32* %.omp.iv, align 4, !dbg !128, !tbaa !32
  br label %omp.inner.for.cond, !dbg !185, !llvm.loop !186

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !185

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %43 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !185
  store i8* getelementptr inbounds ([75 x i8], [75 x i8]* @2, i32 0, i32 0), i8** %43, align 8, !dbg !185, !tbaa !82
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %14), !dbg !185
  %44 = bitcast i32* %i to i8*, !dbg !185
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %44) #5, !dbg !185
  %45 = bitcast i32* %k to i8*, !dbg !185
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %45) #5, !dbg !185
  %46 = bitcast i32* %j to i8*, !dbg !185
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %46) #5, !dbg !185
  %47 = bitcast i32* %.omp.is_last to i8*, !dbg !185
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %47) #5, !dbg !185
  %48 = bitcast i32* %.omp.stride to i8*, !dbg !185
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %48) #5, !dbg !185
  %49 = bitcast i32* %.omp.ub to i8*, !dbg !185
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %49) #5, !dbg !185
  %50 = bitcast i32* %.omp.lb to i8*, !dbg !185
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %50) #5, !dbg !185
  %51 = bitcast i32* %.omp.iv to i8*, !dbg !185
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %51) #5, !dbg !185
  ret void, !dbg !188
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., [8 x double]* dereferenceable(64) %r1, [8 x [8 x [8 x double]]]* dereferenceable(4096) %r) #3 !dbg !189 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %r1.addr = alloca [8 x double]*, align 8
  %r.addr = alloca [8 x [8 x [8 x double]]]*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !124
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !191, metadata !DIExpression()), !dbg !195
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !124
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !192, metadata !DIExpression()), !dbg !195
  store [8 x double]* %r1, [8 x double]** %r1.addr, align 8, !tbaa !124
  call void @llvm.dbg.declare(metadata [8 x double]** %r1.addr, metadata !193, metadata !DIExpression()), !dbg !195
  store [8 x [8 x [8 x double]]]* %r, [8 x [8 x [8 x double]]]** %r.addr, align 8, !tbaa !124
  call void @llvm.dbg.declare(metadata [8 x [8 x [8 x double]]]** %r.addr, metadata !194, metadata !DIExpression()), !dbg !195
  %0 = load [8 x double]*, [8 x double]** %r1.addr, align 8, !dbg !196, !tbaa !124
  %1 = load [8 x [8 x [8 x double]]]*, [8 x [8 x [8 x double]]]** %r.addr, align 8, !dbg !196, !tbaa !124
  %2 = load i32*, i32** %.global_tid..addr, align 8, !dbg !196, !tbaa !124
  %3 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !196, !tbaa !124
  %4 = load [8 x double]*, [8 x double]** %r1.addr, align 8, !dbg !196, !tbaa !124
  %5 = load [8 x [8 x [8 x double]]]*, [8 x [8 x [8 x double]]]** %r.addr, align 8, !dbg !196, !tbaa !124
  call void @.omp_outlined._debug__(i32* %2, i32* %3, [8 x double]* %4, [8 x [8 x [8 x double]]]* %5) #5, !dbg !196
  ret void, !dbg !196
}

declare !callback !197 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

declare dso_local i32 @printf(i8*, ...) #4

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "integration/dataracebench/DRB169-missingsyncwrite-orig-yes.c", directory: "/home/brad/Code/OpenRace/tests/data")
!2 = !{}
!3 = !{i32 7, !"Dwarf Version", i32 4}
!4 = !{i32 2, !"Debug Info Version", i32 3}
!5 = !{i32 1, !"wchar_size", i32 4}
!6 = !{!"clang version 10.0.1 "}
!7 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 20, type: !8, scopeLine: 21, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !11)
!8 = !DISubroutineType(types: !9)
!9 = !{!10}
!10 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!11 = !{!12, !13, !14, !15, !20}
!12 = !DILocalVariable(name: "i", scope: !7, file: !1, line: 22, type: !10)
!13 = !DILocalVariable(name: "j", scope: !7, file: !1, line: 22, type: !10)
!14 = !DILocalVariable(name: "k", scope: !7, file: !1, line: 22, type: !10)
!15 = !DILocalVariable(name: "r1", scope: !7, file: !1, line: 23, type: !16)
!16 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 512, elements: !18)
!17 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!18 = !{!19}
!19 = !DISubrange(count: 8)
!20 = !DILocalVariable(name: "r", scope: !7, file: !1, line: 23, type: !21)
!21 = !DICompositeType(tag: DW_TAG_array_type, baseType: !17, size: 32768, elements: !22)
!22 = !{!19, !19, !19}
!23 = !DILocation(line: 22, column: 3, scope: !7)
!24 = !DILocation(line: 22, column: 7, scope: !7)
!25 = !DILocation(line: 22, column: 9, scope: !7)
!26 = !DILocation(line: 22, column: 11, scope: !7)
!27 = !DILocation(line: 23, column: 3, scope: !7)
!28 = !DILocation(line: 23, column: 10, scope: !7)
!29 = !DILocation(line: 23, column: 17, scope: !7)
!30 = !DILocation(line: 25, column: 10, scope: !31)
!31 = distinct !DILexicalBlock(scope: !7, file: !1, line: 25, column: 3)
!32 = !{!33, !33, i64 0}
!33 = !{!"int", !34, i64 0}
!34 = !{!"omnipotent char", !35, i64 0}
!35 = !{!"Simple C/C++ TBAA"}
!36 = !DILocation(line: 25, column: 8, scope: !31)
!37 = !DILocation(line: 25, column: 15, scope: !38)
!38 = distinct !DILexicalBlock(scope: !31, file: !1, line: 25, column: 3)
!39 = !DILocation(line: 25, column: 17, scope: !38)
!40 = !DILocation(line: 25, column: 3, scope: !31)
!41 = !DILocation(line: 26, column: 12, scope: !42)
!42 = distinct !DILexicalBlock(scope: !43, file: !1, line: 26, column: 5)
!43 = distinct !DILexicalBlock(scope: !38, file: !1, line: 25, column: 27)
!44 = !DILocation(line: 26, column: 10, scope: !42)
!45 = !DILocation(line: 26, column: 17, scope: !46)
!46 = distinct !DILexicalBlock(scope: !42, file: !1, line: 26, column: 5)
!47 = !DILocation(line: 26, column: 19, scope: !46)
!48 = !DILocation(line: 26, column: 5, scope: !42)
!49 = !DILocation(line: 27, column: 14, scope: !50)
!50 = distinct !DILexicalBlock(scope: !51, file: !1, line: 27, column: 7)
!51 = distinct !DILexicalBlock(scope: !46, file: !1, line: 26, column: 29)
!52 = !DILocation(line: 27, column: 12, scope: !50)
!53 = !DILocation(line: 27, column: 19, scope: !54)
!54 = distinct !DILexicalBlock(scope: !50, file: !1, line: 27, column: 7)
!55 = !DILocation(line: 27, column: 21, scope: !54)
!56 = !DILocation(line: 27, column: 7, scope: !50)
!57 = !DILocation(line: 28, column: 22, scope: !58)
!58 = distinct !DILexicalBlock(scope: !54, file: !1, line: 27, column: 31)
!59 = !DILocation(line: 28, column: 11, scope: !58)
!60 = !DILocation(line: 28, column: 9, scope: !58)
!61 = !DILocation(line: 28, column: 14, scope: !58)
!62 = !DILocation(line: 28, column: 17, scope: !58)
!63 = !DILocation(line: 28, column: 20, scope: !58)
!64 = !{!65, !65, i64 0}
!65 = !{!"double", !34, i64 0}
!66 = !DILocation(line: 29, column: 7, scope: !58)
!67 = !DILocation(line: 27, column: 27, scope: !54)
!68 = !DILocation(line: 27, column: 7, scope: !54)
!69 = distinct !{!69, !56, !70}
!70 = !DILocation(line: 29, column: 7, scope: !50)
!71 = !DILocation(line: 30, column: 5, scope: !51)
!72 = !DILocation(line: 26, column: 25, scope: !46)
!73 = !DILocation(line: 26, column: 5, scope: !46)
!74 = distinct !{!74, !48, !75}
!75 = !DILocation(line: 30, column: 5, scope: !42)
!76 = !DILocation(line: 31, column: 3, scope: !43)
!77 = !DILocation(line: 25, column: 23, scope: !38)
!78 = !DILocation(line: 25, column: 3, scope: !38)
!79 = distinct !{!79, !40, !80}
!80 = !DILocation(line: 31, column: 3, scope: !31)
!81 = !DILocation(line: 34, column: 3, scope: !7)
!82 = !{!83, !84, i64 16}
!83 = !{!"ident_t", !33, i64 0, !33, i64 4, !33, i64 8, !33, i64 12, !84, i64 16}
!84 = !{!"any pointer", !34, i64 0}
!85 = !DILocation(line: 43, column: 10, scope: !86)
!86 = distinct !DILexicalBlock(scope: !7, file: !1, line: 43, column: 3)
!87 = !DILocation(line: 43, column: 8, scope: !86)
!88 = !DILocation(line: 43, column: 15, scope: !89)
!89 = distinct !DILexicalBlock(scope: !86, file: !1, line: 43, column: 3)
!90 = !DILocation(line: 43, column: 17, scope: !89)
!91 = !DILocation(line: 43, column: 3, scope: !86)
!92 = !DILocation(line: 43, column: 43, scope: !89)
!93 = !DILocation(line: 43, column: 40, scope: !89)
!94 = !DILocation(line: 43, column: 27, scope: !89)
!95 = !DILocation(line: 43, column: 23, scope: !89)
!96 = !DILocation(line: 43, column: 3, scope: !89)
!97 = distinct !{!97, !91, !98}
!98 = !DILocation(line: 43, column: 45, scope: !86)
!99 = !DILocation(line: 45, column: 3, scope: !7)
!100 = !DILocation(line: 48, column: 1, scope: !7)
!101 = !DILocation(line: 47, column: 3, scope: !7)
!102 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 35, type: !103, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !111)
!103 = !DISubroutineType(types: !104)
!104 = !{null, !105, !105, !109, !110}
!105 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !106)
!106 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !107)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !10)
!109 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !16, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !21, size: 64)
!111 = !{!112, !113, !114, !115, !116, !117, !118, !119, !120, !121, !122, !123}
!112 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !102, type: !105, flags: DIFlagArtificial)
!113 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !102, type: !105, flags: DIFlagArtificial)
!114 = !DILocalVariable(name: "r1", arg: 3, scope: !102, file: !1, line: 23, type: !109)
!115 = !DILocalVariable(name: "r", arg: 4, scope: !102, file: !1, line: 23, type: !110)
!116 = !DILocalVariable(name: ".omp.iv", scope: !102, type: !10, flags: DIFlagArtificial)
!117 = !DILocalVariable(name: ".omp.lb", scope: !102, type: !10, flags: DIFlagArtificial)
!118 = !DILocalVariable(name: ".omp.ub", scope: !102, type: !10, flags: DIFlagArtificial)
!119 = !DILocalVariable(name: ".omp.stride", scope: !102, type: !10, flags: DIFlagArtificial)
!120 = !DILocalVariable(name: ".omp.is_last", scope: !102, type: !10, flags: DIFlagArtificial)
!121 = !DILocalVariable(name: "j", scope: !102, type: !10, flags: DIFlagArtificial)
!122 = !DILocalVariable(name: "k", scope: !102, type: !10, flags: DIFlagArtificial)
!123 = !DILocalVariable(name: "i", scope: !102, type: !10, flags: DIFlagArtificial)
!124 = !{!84, !84, i64 0}
!125 = !DILocation(line: 0, scope: !102)
!126 = !DILocation(line: 23, column: 10, scope: !102)
!127 = !DILocation(line: 23, column: 17, scope: !102)
!128 = !DILocation(line: 35, column: 3, scope: !102)
!129 = !DILocation(line: 35, column: 8, scope: !102)
!130 = !DILocation(line: 35, column: 24, scope: !102)
!131 = !DILocation(line: 36, column: 12, scope: !132)
!132 = distinct !DILexicalBlock(scope: !133, file: !1, line: 36, column: 5)
!133 = distinct !DILexicalBlock(scope: !102, file: !1, line: 35, column: 29)
!134 = !DILocation(line: 36, column: 10, scope: !132)
!135 = !DILocation(line: 36, column: 17, scope: !136)
!136 = distinct !DILexicalBlock(scope: !132, file: !1, line: 36, column: 5)
!137 = !DILocation(line: 36, column: 19, scope: !136)
!138 = !DILocation(line: 36, column: 5, scope: !132)
!139 = !DILocation(line: 37, column: 14, scope: !140)
!140 = distinct !DILexicalBlock(scope: !141, file: !1, line: 37, column: 7)
!141 = distinct !DILexicalBlock(scope: !136, file: !1, line: 36, column: 31)
!142 = !DILocation(line: 37, column: 12, scope: !140)
!143 = !DILocation(line: 37, column: 19, scope: !144)
!144 = distinct !DILexicalBlock(scope: !140, file: !1, line: 37, column: 7)
!145 = !DILocation(line: 37, column: 21, scope: !144)
!146 = !DILocation(line: 37, column: 7, scope: !140)
!147 = !DILocation(line: 38, column: 19, scope: !148)
!148 = distinct !DILexicalBlock(scope: !144, file: !1, line: 37, column: 31)
!149 = !DILocation(line: 38, column: 17, scope: !148)
!150 = !DILocation(line: 38, column: 22, scope: !148)
!151 = !DILocation(line: 38, column: 23, scope: !148)
!152 = !DILocation(line: 38, column: 27, scope: !148)
!153 = !DILocation(line: 38, column: 34, scope: !148)
!154 = !DILocation(line: 38, column: 32, scope: !148)
!155 = !DILocation(line: 38, column: 37, scope: !148)
!156 = !DILocation(line: 38, column: 38, scope: !148)
!157 = !DILocation(line: 38, column: 42, scope: !148)
!158 = !DILocation(line: 38, column: 30, scope: !148)
!159 = !DILocation(line: 38, column: 49, scope: !148)
!160 = !DILocation(line: 38, column: 50, scope: !148)
!161 = !DILocation(line: 38, column: 47, scope: !148)
!162 = !DILocation(line: 38, column: 54, scope: !148)
!163 = !DILocation(line: 38, column: 57, scope: !148)
!164 = !DILocation(line: 38, column: 45, scope: !148)
!165 = !DILocation(line: 38, column: 64, scope: !148)
!166 = !DILocation(line: 38, column: 65, scope: !148)
!167 = !DILocation(line: 38, column: 62, scope: !148)
!168 = !DILocation(line: 38, column: 69, scope: !148)
!169 = !DILocation(line: 38, column: 72, scope: !148)
!170 = !DILocation(line: 38, column: 60, scope: !148)
!171 = !DILocation(line: 38, column: 12, scope: !148)
!172 = !DILocation(line: 38, column: 9, scope: !148)
!173 = !DILocation(line: 38, column: 15, scope: !148)
!174 = !DILocation(line: 39, column: 7, scope: !148)
!175 = !DILocation(line: 37, column: 27, scope: !144)
!176 = !DILocation(line: 37, column: 7, scope: !144)
!177 = distinct !{!177, !146, !178}
!178 = !DILocation(line: 39, column: 7, scope: !140)
!179 = !DILocation(line: 40, column: 5, scope: !141)
!180 = !DILocation(line: 36, column: 27, scope: !136)
!181 = !DILocation(line: 36, column: 5, scope: !136)
!182 = distinct !{!182, !138, !183}
!183 = !DILocation(line: 40, column: 5, scope: !132)
!184 = !DILocation(line: 41, column: 3, scope: !133)
!185 = !DILocation(line: 34, column: 3, scope: !102)
!186 = distinct !{!186, !185, !187}
!187 = !DILocation(line: 34, column: 56, scope: !102)
!188 = !DILocation(line: 41, column: 3, scope: !102)
!189 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 35, type: !103, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !190)
!190 = !{!191, !192, !193, !194}
!191 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !189, type: !105, flags: DIFlagArtificial)
!192 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !189, type: !105, flags: DIFlagArtificial)
!193 = !DILocalVariable(name: "r1", arg: 3, scope: !189, type: !109, flags: DIFlagArtificial)
!194 = !DILocalVariable(name: "r", arg: 4, scope: !189, type: !110, flags: DIFlagArtificial)
!195 = !DILocation(line: 0, scope: !189)
!196 = !DILocation(line: 35, column: 3, scope: !189)
!197 = !{!198}
!198 = !{i64 2, i64 -1, i64 -1, i1 true}
