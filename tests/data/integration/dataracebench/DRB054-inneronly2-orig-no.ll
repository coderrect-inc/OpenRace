; ModuleID = 'integration/dataracebench/DRB054-inneronly2-orig-no.c'
source_filename = "integration/dataracebench/DRB054-inneronly2-orig-no.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ident_t = type { i32, i32, i32, i32, i8* }

@.str = private unnamed_addr constant [23 x i8] c";unknown;unknown;0;0;;\00", align 1
@0 = private unnamed_addr global %struct.ident_t { i32 0, i32 514, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8
@1 = private unnamed_addr constant [67 x i8] c";integration/dataracebench/DRB054-inneronly2-orig-no.c;main;62;1;;\00", align 1
@2 = private unnamed_addr constant [68 x i8] c";integration/dataracebench/DRB054-inneronly2-orig-no.c;main;62;25;;\00", align 1
@3 = private unnamed_addr global %struct.ident_t { i32 0, i32 2, i32 0, i32 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0) }, align 8

; Function Attrs: nounwind uwtable
define dso_local i32 @main() #0 !dbg !9 {
entry:
  %retval = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %n = alloca i32, align 4
  %m = alloca i32, align 4
  %saved_stack = alloca i8*, align 8
  %__vla_expr0 = alloca i64, align 8
  %__vla_expr1 = alloca i64, align 8
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32 0, i32* %retval, align 4
  %2 = bitcast i32* %i to i8*, !dbg !26
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %2) #3, !dbg !26
  call void @llvm.dbg.declare(metadata i32* %i, metadata !14, metadata !DIExpression()), !dbg !27
  %3 = bitcast i32* %j to i8*, !dbg !26
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %3) #3, !dbg !26
  call void @llvm.dbg.declare(metadata i32* %j, metadata !15, metadata !DIExpression()), !dbg !28
  %4 = bitcast i32* %n to i8*, !dbg !29
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %4) #3, !dbg !29
  call void @llvm.dbg.declare(metadata i32* %n, metadata !16, metadata !DIExpression()), !dbg !30
  store i32 100, i32* %n, align 4, !dbg !30, !tbaa !31
  %5 = bitcast i32* %m to i8*, !dbg !29
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %5) #3, !dbg !29
  call void @llvm.dbg.declare(metadata i32* %m, metadata !17, metadata !DIExpression()), !dbg !35
  store i32 100, i32* %m, align 4, !dbg !35, !tbaa !31
  %6 = load i32, i32* %n, align 4, !dbg !36, !tbaa !31
  %7 = zext i32 %6 to i64, !dbg !37
  %8 = load i32, i32* %m, align 4, !dbg !38, !tbaa !31
  %9 = zext i32 %8 to i64, !dbg !37
  %10 = call i8* @llvm.stacksave(), !dbg !37
  store i8* %10, i8** %saved_stack, align 8, !dbg !37
  %11 = mul nuw i64 %7, %9, !dbg !37
  %vla = alloca double, i64 %11, align 16, !dbg !37
  store i64 %7, i64* %__vla_expr0, align 8, !dbg !37
  store i64 %9, i64* %__vla_expr1, align 8, !dbg !37
  call void @llvm.dbg.declare(metadata i64* %__vla_expr0, metadata !18, metadata !DIExpression()), !dbg !39
  call void @llvm.dbg.declare(metadata i64* %__vla_expr1, metadata !20, metadata !DIExpression()), !dbg !39
  call void @llvm.dbg.declare(metadata double* %vla, metadata !21, metadata !DIExpression()), !dbg !40
  store i32 0, i32* %i, align 4, !dbg !41, !tbaa !31
  br label %for.cond, !dbg !43

for.cond:                                         ; preds = %for.inc6, %entry
  %12 = load i32, i32* %i, align 4, !dbg !44, !tbaa !31
  %13 = load i32, i32* %n, align 4, !dbg !46, !tbaa !31
  %cmp = icmp slt i32 %12, %13, !dbg !47
  br i1 %cmp, label %for.body, label %for.end8, !dbg !48

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4, !dbg !49, !tbaa !31
  br label %for.cond1, !dbg !51

for.cond1:                                        ; preds = %for.inc, %for.body
  %14 = load i32, i32* %j, align 4, !dbg !52, !tbaa !31
  %15 = load i32, i32* %n, align 4, !dbg !54, !tbaa !31
  %cmp2 = icmp slt i32 %14, %15, !dbg !55
  br i1 %cmp2, label %for.body3, label %for.end, !dbg !56

for.body3:                                        ; preds = %for.cond1
  %16 = load i32, i32* %i, align 4, !dbg !57, !tbaa !31
  %17 = load i32, i32* %j, align 4, !dbg !58, !tbaa !31
  %mul = mul nsw i32 %16, %17, !dbg !59
  %conv = sitofp i32 %mul to double, !dbg !60
  %18 = load i32, i32* %i, align 4, !dbg !61, !tbaa !31
  %idxprom = sext i32 %18 to i64, !dbg !62
  %19 = mul nsw i64 %idxprom, %9, !dbg !62
  %arrayidx = getelementptr inbounds double, double* %vla, i64 %19, !dbg !62
  %20 = load i32, i32* %j, align 4, !dbg !63, !tbaa !31
  %idxprom4 = sext i32 %20 to i64, !dbg !62
  %arrayidx5 = getelementptr inbounds double, double* %arrayidx, i64 %idxprom4, !dbg !62
  store double %conv, double* %arrayidx5, align 8, !dbg !64, !tbaa !65
  br label %for.inc, !dbg !62

for.inc:                                          ; preds = %for.body3
  %21 = load i32, i32* %j, align 4, !dbg !67, !tbaa !31
  %inc = add nsw i32 %21, 1, !dbg !67
  store i32 %inc, i32* %j, align 4, !dbg !67, !tbaa !31
  br label %for.cond1, !dbg !68, !llvm.loop !69

for.end:                                          ; preds = %for.cond1
  br label %for.inc6, !dbg !70

for.inc6:                                         ; preds = %for.end
  %22 = load i32, i32* %i, align 4, !dbg !71, !tbaa !31
  %inc7 = add nsw i32 %22, 1, !dbg !71
  store i32 %inc7, i32* %i, align 4, !dbg !71, !tbaa !31
  br label %for.cond, !dbg !72, !llvm.loop !73

for.end8:                                         ; preds = %for.cond
  store i32 1, i32* %i, align 4, !dbg !75, !tbaa !31
  br label %for.cond9, !dbg !77

for.cond9:                                        ; preds = %for.inc13, %for.end8
  %23 = load i32, i32* %i, align 4, !dbg !78, !tbaa !31
  %24 = load i32, i32* %n, align 4, !dbg !80, !tbaa !31
  %cmp10 = icmp slt i32 %23, %24, !dbg !81
  br i1 %cmp10, label %for.body12, label %for.end15, !dbg !82

for.body12:                                       ; preds = %for.cond9
  %25 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !83
  store i8* getelementptr inbounds ([67 x i8], [67 x i8]* @1, i32 0, i32 0), i8** %25, align 8, !dbg !83, !tbaa !84
  call void (%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...) @__kmpc_fork_call(%struct.ident_t* %.kmpc_loc.addr, i32 5, void (i32*, i32*, ...)* bitcast (void (i32*, i32*, i32*, i64, i64, double*, i32*)* @.omp_outlined. to void (i32*, i32*, ...)*), i32* %m, i64 %7, i64 %9, double* %vla, i32* %i), !dbg !83
  br label %for.inc13, !dbg !87

for.inc13:                                        ; preds = %for.body12
  %26 = load i32, i32* %i, align 4, !dbg !89, !tbaa !31
  %inc14 = add nsw i32 %26, 1, !dbg !89
  store i32 %inc14, i32* %i, align 4, !dbg !89, !tbaa !31
  br label %for.cond9, !dbg !90, !llvm.loop !91

for.end15:                                        ; preds = %for.cond9
  store i32 0, i32* %retval, align 4, !dbg !93
  %27 = load i8*, i8** %saved_stack, align 8, !dbg !94
  call void @llvm.stackrestore(i8* %27), !dbg !94
  %28 = bitcast i32* %m to i8*, !dbg !94
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %28) #3, !dbg !94
  %29 = bitcast i32* %n to i8*, !dbg !94
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %29) #3, !dbg !94
  %30 = bitcast i32* %j to i8*, !dbg !94
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %30) #3, !dbg !94
  %31 = bitcast i32* %i to i8*, !dbg !94
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %31) #3, !dbg !94
  %32 = load i32, i32* %retval, align 4, !dbg !94
  ret i32 %32, !dbg !94
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined._debug__(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %m, i64 %vla, i64 %vla1, double* dereferenceable(8) %b, i32* dereferenceable(4) %i) #4 !dbg !95 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %m.addr = alloca i32*, align 8
  %vla.addr = alloca i64, align 8
  %vla.addr2 = alloca i64, align 8
  %b.addr = alloca double*, align 8
  %i.addr = alloca i32*, align 8
  %.omp.iv = alloca i32, align 4
  %tmp = alloca i32, align 4
  %.capture_expr. = alloca i32, align 4
  %.capture_expr.3 = alloca i32, align 4
  %j = alloca i32, align 4
  %.omp.lb = alloca i32, align 4
  %.omp.ub = alloca i32, align 4
  %.omp.stride = alloca i32, align 4
  %.omp.is_last = alloca i32, align 4
  %j6 = alloca i32, align 4
  %.kmpc_loc.addr = alloca %struct.ident_t, align 8
  %0 = bitcast %struct.ident_t* %.kmpc_loc.addr to i8*
  %1 = bitcast %struct.ident_t* @0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %0, i8* align 8 %1, i64 24, i1 false)
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !119
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !105, metadata !DIExpression()), !dbg !120
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !119
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !106, metadata !DIExpression()), !dbg !120
  store i32* %m, i32** %m.addr, align 8, !tbaa !119
  call void @llvm.dbg.declare(metadata i32** %m.addr, metadata !107, metadata !DIExpression()), !dbg !121
  store i64 %vla, i64* %vla.addr, align 8, !tbaa !122
  call void @llvm.dbg.declare(metadata i64* %vla.addr, metadata !108, metadata !DIExpression()), !dbg !120
  store i64 %vla1, i64* %vla.addr2, align 8, !tbaa !122
  call void @llvm.dbg.declare(metadata i64* %vla.addr2, metadata !109, metadata !DIExpression()), !dbg !120
  store double* %b, double** %b.addr, align 8, !tbaa !119
  call void @llvm.dbg.declare(metadata double** %b.addr, metadata !110, metadata !DIExpression()), !dbg !124
  store i32* %i, i32** %i.addr, align 8, !tbaa !119
  call void @llvm.dbg.declare(metadata i32** %i.addr, metadata !111, metadata !DIExpression()), !dbg !125
  %2 = load i32*, i32** %m.addr, align 8, !dbg !126, !tbaa !119
  %3 = load i64, i64* %vla.addr, align 8, !dbg !126, !tbaa !122
  %4 = load i64, i64* %vla.addr2, align 8, !dbg !126, !tbaa !122
  %5 = load double*, double** %b.addr, align 8, !dbg !126, !tbaa !119
  %6 = load i32*, i32** %i.addr, align 8, !dbg !126, !tbaa !119
  %7 = bitcast i32* %.omp.iv to i8*, !dbg !126
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %7) #3, !dbg !126
  call void @llvm.dbg.declare(metadata i32* %.omp.iv, metadata !112, metadata !DIExpression()), !dbg !120
  %8 = bitcast i32* %.capture_expr. to i8*, !dbg !126
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %8) #3, !dbg !126
  call void @llvm.dbg.declare(metadata i32* %.capture_expr., metadata !113, metadata !DIExpression()), !dbg !120
  %9 = load i32, i32* %2, align 4, !dbg !127, !tbaa !31
  store i32 %9, i32* %.capture_expr., align 4, !dbg !127, !tbaa !31
  %10 = bitcast i32* %.capture_expr.3 to i8*, !dbg !126
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %10) #3, !dbg !126
  call void @llvm.dbg.declare(metadata i32* %.capture_expr.3, metadata !113, metadata !DIExpression()), !dbg !120
  %11 = load i32, i32* %.capture_expr., align 4, !dbg !127, !tbaa !31
  %sub = sub nsw i32 %11, 1, !dbg !126
  %sub4 = sub nsw i32 %sub, 1, !dbg !126
  %add = add nsw i32 %sub4, 1, !dbg !126
  %div = sdiv i32 %add, 1, !dbg !126
  %sub5 = sub nsw i32 %div, 1, !dbg !126
  store i32 %sub5, i32* %.capture_expr.3, align 4, !dbg !126, !tbaa !31
  %12 = bitcast i32* %j to i8*, !dbg !126
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %12) #3, !dbg !126
  call void @llvm.dbg.declare(metadata i32* %j, metadata !114, metadata !DIExpression()), !dbg !120
  store i32 1, i32* %j, align 4, !dbg !128, !tbaa !31
  %13 = bitcast i32* %j to i8*, !dbg !126
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %13) #3, !dbg !126
  %14 = load i32, i32* %.capture_expr., align 4, !dbg !127, !tbaa !31
  %cmp = icmp slt i32 1, %14, !dbg !126
  br i1 %cmp, label %omp.precond.then, label %omp.precond.end, !dbg !126

omp.precond.then:                                 ; preds = %entry
  %15 = bitcast i32* %.omp.lb to i8*, !dbg !126
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %15) #3, !dbg !126
  call void @llvm.dbg.declare(metadata i32* %.omp.lb, metadata !115, metadata !DIExpression()), !dbg !120
  store i32 0, i32* %.omp.lb, align 4, !dbg !129, !tbaa !31
  %16 = bitcast i32* %.omp.ub to i8*, !dbg !126
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %16) #3, !dbg !126
  call void @llvm.dbg.declare(metadata i32* %.omp.ub, metadata !116, metadata !DIExpression()), !dbg !120
  %17 = load i32, i32* %.capture_expr.3, align 4, !dbg !126, !tbaa !31
  store i32 %17, i32* %.omp.ub, align 4, !dbg !129, !tbaa !31
  %18 = bitcast i32* %.omp.stride to i8*, !dbg !126
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %18) #3, !dbg !126
  call void @llvm.dbg.declare(metadata i32* %.omp.stride, metadata !117, metadata !DIExpression()), !dbg !120
  store i32 1, i32* %.omp.stride, align 4, !dbg !129, !tbaa !31
  %19 = bitcast i32* %.omp.is_last to i8*, !dbg !126
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %19) #3, !dbg !126
  call void @llvm.dbg.declare(metadata i32* %.omp.is_last, metadata !118, metadata !DIExpression()), !dbg !120
  store i32 0, i32* %.omp.is_last, align 4, !dbg !129, !tbaa !31
  %20 = bitcast i32* %j6 to i8*, !dbg !126
  call void @llvm.lifetime.start.p0i8(i64 4, i8* %20) #3, !dbg !126
  call void @llvm.dbg.declare(metadata i32* %j6, metadata !114, metadata !DIExpression()), !dbg !120
  %21 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !126
  store i8* getelementptr inbounds ([67 x i8], [67 x i8]* @1, i32 0, i32 0), i8** %21, align 8, !dbg !126, !tbaa !84
  %22 = load i32*, i32** %.global_tid..addr, align 8, !dbg !126
  %23 = load i32, i32* %22, align 4, !dbg !126, !tbaa !31
  call void @__kmpc_for_static_init_4(%struct.ident_t* %.kmpc_loc.addr, i32 %23, i32 34, i32* %.omp.is_last, i32* %.omp.lb, i32* %.omp.ub, i32* %.omp.stride, i32 1, i32 1), !dbg !126
  %24 = load i32, i32* %.omp.ub, align 4, !dbg !129, !tbaa !31
  %25 = load i32, i32* %.capture_expr.3, align 4, !dbg !126, !tbaa !31
  %cmp7 = icmp sgt i32 %24, %25, !dbg !129
  br i1 %cmp7, label %cond.true, label %cond.false, !dbg !129

cond.true:                                        ; preds = %omp.precond.then
  %26 = load i32, i32* %.capture_expr.3, align 4, !dbg !126, !tbaa !31
  br label %cond.end, !dbg !129

cond.false:                                       ; preds = %omp.precond.then
  %27 = load i32, i32* %.omp.ub, align 4, !dbg !129, !tbaa !31
  br label %cond.end, !dbg !129

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %26, %cond.true ], [ %27, %cond.false ], !dbg !129
  store i32 %cond, i32* %.omp.ub, align 4, !dbg !129, !tbaa !31
  %28 = load i32, i32* %.omp.lb, align 4, !dbg !129, !tbaa !31
  store i32 %28, i32* %.omp.iv, align 4, !dbg !129, !tbaa !31
  br label %omp.inner.for.cond, !dbg !126

omp.inner.for.cond:                               ; preds = %omp.inner.for.inc, %cond.end
  %29 = load i32, i32* %.omp.iv, align 4, !dbg !129, !tbaa !31
  %30 = load i32, i32* %.omp.ub, align 4, !dbg !129, !tbaa !31
  %cmp8 = icmp sle i32 %29, %30, !dbg !126
  br i1 %cmp8, label %omp.inner.for.body, label %omp.inner.for.cond.cleanup, !dbg !126

omp.inner.for.cond.cleanup:                       ; preds = %omp.inner.for.cond
  br label %omp.inner.for.end, !dbg !126

omp.inner.for.body:                               ; preds = %omp.inner.for.cond
  %31 = load i32, i32* %.omp.iv, align 4, !dbg !129, !tbaa !31
  %mul = mul nsw i32 %31, 1, !dbg !128
  %add9 = add nsw i32 1, %mul, !dbg !128
  store i32 %add9, i32* %j6, align 4, !dbg !128, !tbaa !31
  %32 = load i32, i32* %6, align 4, !dbg !130, !tbaa !31
  %sub10 = sub nsw i32 %32, 1, !dbg !131
  %idxprom = sext i32 %sub10 to i64, !dbg !132
  %33 = mul nsw i64 %idxprom, %4, !dbg !132
  %arrayidx = getelementptr inbounds double, double* %5, i64 %33, !dbg !132
  %34 = load i32, i32* %j6, align 4, !dbg !133, !tbaa !31
  %sub11 = sub nsw i32 %34, 1, !dbg !134
  %idxprom12 = sext i32 %sub11 to i64, !dbg !132
  %arrayidx13 = getelementptr inbounds double, double* %arrayidx, i64 %idxprom12, !dbg !132
  %35 = load double, double* %arrayidx13, align 8, !dbg !132, !tbaa !65
  %36 = load i32, i32* %6, align 4, !dbg !135, !tbaa !31
  %idxprom14 = sext i32 %36 to i64, !dbg !136
  %37 = mul nsw i64 %idxprom14, %4, !dbg !136
  %arrayidx15 = getelementptr inbounds double, double* %5, i64 %37, !dbg !136
  %38 = load i32, i32* %j6, align 4, !dbg !137, !tbaa !31
  %idxprom16 = sext i32 %38 to i64, !dbg !136
  %arrayidx17 = getelementptr inbounds double, double* %arrayidx15, i64 %idxprom16, !dbg !136
  store double %35, double* %arrayidx17, align 8, !dbg !138, !tbaa !65
  br label %omp.body.continue, !dbg !136

omp.body.continue:                                ; preds = %omp.inner.for.body
  br label %omp.inner.for.inc, !dbg !139

omp.inner.for.inc:                                ; preds = %omp.body.continue
  %39 = load i32, i32* %.omp.iv, align 4, !dbg !129, !tbaa !31
  %add18 = add nsw i32 %39, 1, !dbg !126
  store i32 %add18, i32* %.omp.iv, align 4, !dbg !126, !tbaa !31
  br label %omp.inner.for.cond, !dbg !139, !llvm.loop !140

omp.inner.for.end:                                ; preds = %omp.inner.for.cond.cleanup
  br label %omp.loop.exit, !dbg !139

omp.loop.exit:                                    ; preds = %omp.inner.for.end
  %40 = getelementptr inbounds %struct.ident_t, %struct.ident_t* %.kmpc_loc.addr, i32 0, i32 4, !dbg !139
  store i8* getelementptr inbounds ([68 x i8], [68 x i8]* @2, i32 0, i32 0), i8** %40, align 8, !dbg !139, !tbaa !84
  %41 = load i32*, i32** %.global_tid..addr, align 8, !dbg !139
  %42 = load i32, i32* %41, align 4, !dbg !139, !tbaa !31
  call void @__kmpc_for_static_fini(%struct.ident_t* %.kmpc_loc.addr, i32 %42), !dbg !139
  %43 = bitcast i32* %j6 to i8*, !dbg !139
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %43) #3, !dbg !139
  %44 = bitcast i32* %.omp.is_last to i8*, !dbg !139
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %44) #3, !dbg !139
  %45 = bitcast i32* %.omp.stride to i8*, !dbg !139
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %45) #3, !dbg !139
  %46 = bitcast i32* %.omp.ub to i8*, !dbg !139
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %46) #3, !dbg !139
  %47 = bitcast i32* %.omp.lb to i8*, !dbg !139
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %47) #3, !dbg !139
  br label %omp.precond.end, !dbg !139

omp.precond.end:                                  ; preds = %omp.loop.exit, %entry
  %48 = bitcast i32* %.capture_expr.3 to i8*, !dbg !139
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %48) #3, !dbg !139
  %49 = bitcast i32* %.capture_expr. to i8*, !dbg !139
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %49) #3, !dbg !139
  %50 = bitcast i32* %.omp.iv to i8*, !dbg !139
  call void @llvm.lifetime.end.p0i8(i64 4, i8* %50) #3, !dbg !139
  ret void, !dbg !142
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local void @__kmpc_for_static_init_4(%struct.ident_t*, i32, i32, i32*, i32*, i32*, i32*, i32, i32)

declare dso_local void @__kmpc_for_static_fini(%struct.ident_t*, i32)

; Function Attrs: norecurse nounwind uwtable
define internal void @.omp_outlined.(i32* noalias %.global_tid., i32* noalias %.bound_tid., i32* dereferenceable(4) %m, i64 %vla, i64 %vla1, double* dereferenceable(8) %b, i32* dereferenceable(4) %i) #4 !dbg !143 {
entry:
  %.global_tid..addr = alloca i32*, align 8
  %.bound_tid..addr = alloca i32*, align 8
  %m.addr = alloca i32*, align 8
  %vla.addr = alloca i64, align 8
  %vla.addr2 = alloca i64, align 8
  %b.addr = alloca double*, align 8
  %i.addr = alloca i32*, align 8
  store i32* %.global_tid., i32** %.global_tid..addr, align 8, !tbaa !119
  call void @llvm.dbg.declare(metadata i32** %.global_tid..addr, metadata !145, metadata !DIExpression()), !dbg !152
  store i32* %.bound_tid., i32** %.bound_tid..addr, align 8, !tbaa !119
  call void @llvm.dbg.declare(metadata i32** %.bound_tid..addr, metadata !146, metadata !DIExpression()), !dbg !152
  store i32* %m, i32** %m.addr, align 8, !tbaa !119
  call void @llvm.dbg.declare(metadata i32** %m.addr, metadata !147, metadata !DIExpression()), !dbg !152
  store i64 %vla, i64* %vla.addr, align 8, !tbaa !122
  call void @llvm.dbg.declare(metadata i64* %vla.addr, metadata !148, metadata !DIExpression()), !dbg !152
  store i64 %vla1, i64* %vla.addr2, align 8, !tbaa !122
  call void @llvm.dbg.declare(metadata i64* %vla.addr2, metadata !149, metadata !DIExpression()), !dbg !152
  store double* %b, double** %b.addr, align 8, !tbaa !119
  call void @llvm.dbg.declare(metadata double** %b.addr, metadata !150, metadata !DIExpression()), !dbg !152
  store i32* %i, i32** %i.addr, align 8, !tbaa !119
  call void @llvm.dbg.declare(metadata i32** %i.addr, metadata !151, metadata !DIExpression()), !dbg !152
  %0 = load i32*, i32** %m.addr, align 8, !dbg !153, !tbaa !119
  %1 = load i64, i64* %vla.addr, align 8, !dbg !153, !tbaa !122
  %2 = load i64, i64* %vla.addr2, align 8, !dbg !153, !tbaa !122
  %3 = load double*, double** %b.addr, align 8, !dbg !153, !tbaa !119
  %4 = load i32*, i32** %i.addr, align 8, !dbg !153, !tbaa !119
  %5 = load i32*, i32** %.global_tid..addr, align 8, !dbg !153, !tbaa !119
  %6 = load i32*, i32** %.bound_tid..addr, align 8, !dbg !153, !tbaa !119
  %7 = load i32*, i32** %m.addr, align 8, !dbg !153, !tbaa !119
  %8 = load double*, double** %b.addr, align 8, !dbg !153, !tbaa !119
  %9 = load i32*, i32** %i.addr, align 8, !dbg !153, !tbaa !119
  call void @.omp_outlined._debug__(i32* %5, i32* %6, i32* %7, i64 %1, i64 %2, double* %8, i32* %9) #3, !dbg !153
  ret void, !dbg !153
}

declare !callback !154 dso_local void @__kmpc_fork_call(%struct.ident_t*, i32, void (i32*, i32*, ...)*, ...)

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

attributes #0 = { nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }
attributes #4 = { norecurse nounwind uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 10.0.1 ", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !3, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "integration/dataracebench/DRB054-inneronly2-orig-no.c", directory: "/home/brad/Code/OpenRace/tests/data")
!2 = !{}
!3 = !{!4}
!4 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!5 = !{i32 7, !"Dwarf Version", i32 4}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 4}
!8 = !{!"clang version 10.0.1 "}
!9 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 51, type: !10, scopeLine: 52, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !13)
!10 = !DISubroutineType(types: !11)
!11 = !{!12}
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !{!14, !15, !16, !17, !18, !20, !21}
!14 = !DILocalVariable(name: "i", scope: !9, file: !1, line: 53, type: !12)
!15 = !DILocalVariable(name: "j", scope: !9, file: !1, line: 53, type: !12)
!16 = !DILocalVariable(name: "n", scope: !9, file: !1, line: 54, type: !12)
!17 = !DILocalVariable(name: "m", scope: !9, file: !1, line: 54, type: !12)
!18 = !DILocalVariable(name: "__vla_expr0", scope: !9, type: !19, flags: DIFlagArtificial)
!19 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!20 = !DILocalVariable(name: "__vla_expr1", scope: !9, type: !19, flags: DIFlagArtificial)
!21 = !DILocalVariable(name: "b", scope: !9, file: !1, line: 55, type: !22)
!22 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, elements: !23)
!23 = !{!24, !25}
!24 = !DISubrange(count: !18)
!25 = !DISubrange(count: !20)
!26 = !DILocation(line: 53, column: 3, scope: !9)
!27 = !DILocation(line: 53, column: 7, scope: !9)
!28 = !DILocation(line: 53, column: 9, scope: !9)
!29 = !DILocation(line: 54, column: 3, scope: !9)
!30 = !DILocation(line: 54, column: 7, scope: !9)
!31 = !{!32, !32, i64 0}
!32 = !{!"int", !33, i64 0}
!33 = !{!"omnipotent char", !34, i64 0}
!34 = !{!"Simple C/C++ TBAA"}
!35 = !DILocation(line: 54, column: 14, scope: !9)
!36 = !DILocation(line: 55, column: 12, scope: !9)
!37 = !DILocation(line: 55, column: 3, scope: !9)
!38 = !DILocation(line: 55, column: 15, scope: !9)
!39 = !DILocation(line: 0, scope: !9)
!40 = !DILocation(line: 55, column: 10, scope: !9)
!41 = !DILocation(line: 57, column: 8, scope: !42)
!42 = distinct !DILexicalBlock(scope: !9, file: !1, line: 57, column: 3)
!43 = !DILocation(line: 57, column: 7, scope: !42)
!44 = !DILocation(line: 57, column: 11, scope: !45)
!45 = distinct !DILexicalBlock(scope: !42, file: !1, line: 57, column: 3)
!46 = !DILocation(line: 57, column: 13, scope: !45)
!47 = !DILocation(line: 57, column: 12, scope: !45)
!48 = !DILocation(line: 57, column: 3, scope: !42)
!49 = !DILocation(line: 58, column: 10, scope: !50)
!50 = distinct !DILexicalBlock(scope: !45, file: !1, line: 58, column: 5)
!51 = !DILocation(line: 58, column: 9, scope: !50)
!52 = !DILocation(line: 58, column: 13, scope: !53)
!53 = distinct !DILexicalBlock(scope: !50, file: !1, line: 58, column: 5)
!54 = !DILocation(line: 58, column: 15, scope: !53)
!55 = !DILocation(line: 58, column: 14, scope: !53)
!56 = !DILocation(line: 58, column: 5, scope: !50)
!57 = !DILocation(line: 59, column: 24, scope: !53)
!58 = !DILocation(line: 59, column: 26, scope: !53)
!59 = !DILocation(line: 59, column: 25, scope: !53)
!60 = !DILocation(line: 59, column: 15, scope: !53)
!61 = !DILocation(line: 59, column: 9, scope: !53)
!62 = !DILocation(line: 59, column: 7, scope: !53)
!63 = !DILocation(line: 59, column: 12, scope: !53)
!64 = !DILocation(line: 59, column: 14, scope: !53)
!65 = !{!66, !66, i64 0}
!66 = !{!"double", !33, i64 0}
!67 = !DILocation(line: 58, column: 19, scope: !53)
!68 = !DILocation(line: 58, column: 5, scope: !53)
!69 = distinct !{!69, !56, !70}
!70 = !DILocation(line: 59, column: 27, scope: !50)
!71 = !DILocation(line: 57, column: 17, scope: !45)
!72 = !DILocation(line: 57, column: 3, scope: !45)
!73 = distinct !{!73, !48, !74}
!74 = !DILocation(line: 59, column: 27, scope: !42)
!75 = !DILocation(line: 61, column: 9, scope: !76)
!76 = distinct !DILexicalBlock(scope: !9, file: !1, line: 61, column: 3)
!77 = !DILocation(line: 61, column: 8, scope: !76)
!78 = !DILocation(line: 61, column: 12, scope: !79)
!79 = distinct !DILexicalBlock(scope: !76, file: !1, line: 61, column: 3)
!80 = !DILocation(line: 61, column: 14, scope: !79)
!81 = !DILocation(line: 61, column: 13, scope: !79)
!82 = !DILocation(line: 61, column: 3, scope: !76)
!83 = !DILocation(line: 62, column: 1, scope: !79)
!84 = !{!85, !86, i64 16}
!85 = !{!"ident_t", !32, i64 0, !32, i64 4, !32, i64 8, !32, i64 12, !86, i64 16}
!86 = !{!"any pointer", !33, i64 0}
!87 = !DILocation(line: 62, column: 25, scope: !88)
!88 = distinct !DILexicalBlock(scope: !79, file: !1, line: 62, column: 1)
!89 = !DILocation(line: 61, column: 17, scope: !79)
!90 = !DILocation(line: 61, column: 3, scope: !79)
!91 = distinct !{!91, !82, !92}
!92 = !DILocation(line: 62, column: 25, scope: !76)
!93 = !DILocation(line: 65, column: 3, scope: !9)
!94 = !DILocation(line: 66, column: 1, scope: !9)
!95 = distinct !DISubprogram(name: ".omp_outlined._debug__", scope: !1, file: !1, line: 63, type: !96, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !104)
!96 = !DISubroutineType(types: !97)
!97 = !{null, !98, !98, !102, !19, !19, !103, !102}
!98 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !99)
!99 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !100)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !12)
!102 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !12, size: 64)
!103 = !DIDerivedType(tag: DW_TAG_reference_type, baseType: !4, size: 64)
!104 = !{!105, !106, !107, !108, !109, !110, !111, !112, !113, !113, !114, !115, !116, !117, !118, !114}
!105 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !95, type: !98, flags: DIFlagArtificial)
!106 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !95, type: !98, flags: DIFlagArtificial)
!107 = !DILocalVariable(name: "m", arg: 3, scope: !95, file: !1, line: 54, type: !102)
!108 = !DILocalVariable(name: "vla", arg: 4, scope: !95, type: !19, flags: DIFlagArtificial)
!109 = !DILocalVariable(name: "vla", arg: 5, scope: !95, type: !19, flags: DIFlagArtificial)
!110 = !DILocalVariable(name: "b", arg: 6, scope: !95, file: !1, line: 55, type: !103)
!111 = !DILocalVariable(name: "i", arg: 7, scope: !95, file: !1, line: 53, type: !102)
!112 = !DILocalVariable(name: ".omp.iv", scope: !95, type: !12, flags: DIFlagArtificial)
!113 = !DILocalVariable(name: ".capture_expr.", scope: !95, type: !12, flags: DIFlagArtificial)
!114 = !DILocalVariable(name: "j", scope: !95, type: !12, flags: DIFlagArtificial)
!115 = !DILocalVariable(name: ".omp.lb", scope: !95, type: !12, flags: DIFlagArtificial)
!116 = !DILocalVariable(name: ".omp.ub", scope: !95, type: !12, flags: DIFlagArtificial)
!117 = !DILocalVariable(name: ".omp.stride", scope: !95, type: !12, flags: DIFlagArtificial)
!118 = !DILocalVariable(name: ".omp.is_last", scope: !95, type: !12, flags: DIFlagArtificial)
!119 = !{!86, !86, i64 0}
!120 = !DILocation(line: 0, scope: !95)
!121 = !DILocation(line: 54, column: 14, scope: !95)
!122 = !{!123, !123, i64 0}
!123 = !{!"long", !33, i64 0}
!124 = !DILocation(line: 55, column: 10, scope: !95)
!125 = !DILocation(line: 53, column: 7, scope: !95)
!126 = !DILocation(line: 63, column: 5, scope: !95)
!127 = !DILocation(line: 63, column: 16, scope: !95)
!128 = !DILocation(line: 63, column: 18, scope: !95)
!129 = !DILocation(line: 63, column: 10, scope: !95)
!130 = !DILocation(line: 64, column: 17, scope: !95)
!131 = !DILocation(line: 64, column: 18, scope: !95)
!132 = !DILocation(line: 64, column: 15, scope: !95)
!133 = !DILocation(line: 64, column: 22, scope: !95)
!134 = !DILocation(line: 64, column: 23, scope: !95)
!135 = !DILocation(line: 64, column: 9, scope: !95)
!136 = !DILocation(line: 64, column: 7, scope: !95)
!137 = !DILocation(line: 64, column: 12, scope: !95)
!138 = !DILocation(line: 64, column: 14, scope: !95)
!139 = !DILocation(line: 62, column: 1, scope: !95)
!140 = distinct !{!140, !139, !141}
!141 = !DILocation(line: 62, column: 25, scope: !95)
!142 = !DILocation(line: 64, column: 25, scope: !95)
!143 = distinct !DISubprogram(name: ".omp_outlined.", scope: !1, file: !1, line: 63, type: !96, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !144)
!144 = !{!145, !146, !147, !148, !149, !150, !151}
!145 = !DILocalVariable(name: ".global_tid.", arg: 1, scope: !143, type: !98, flags: DIFlagArtificial)
!146 = !DILocalVariable(name: ".bound_tid.", arg: 2, scope: !143, type: !98, flags: DIFlagArtificial)
!147 = !DILocalVariable(name: "m", arg: 3, scope: !143, type: !102, flags: DIFlagArtificial)
!148 = !DILocalVariable(name: "vla", arg: 4, scope: !143, type: !19, flags: DIFlagArtificial)
!149 = !DILocalVariable(name: "vla", arg: 5, scope: !143, type: !19, flags: DIFlagArtificial)
!150 = !DILocalVariable(name: "b", arg: 6, scope: !143, type: !103, flags: DIFlagArtificial)
!151 = !DILocalVariable(name: "i", arg: 7, scope: !143, type: !102, flags: DIFlagArtificial)
!152 = !DILocation(line: 0, scope: !143)
!153 = !DILocation(line: 63, column: 5, scope: !143)
!154 = !{!155}
!155 = !{i64 2, i64 -1, i64 -1, i1 true}
